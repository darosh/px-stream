#!/usr/bin/env node

import fs from 'fs';
import path from 'path';
import { glob } from 'glob';
import * as rules from './maxpat-lint-rules.js';

const DEFAULT_CONFIG = {
  rules: {
    "validate-structure": "error",
    "require-fileversion": "warn",
    "require-appversion": "warn",
    "check-window-bounds": ["warn", {
      "min-size": [100, 100],
      "max-size": [2000, 1500]
    }],
    "require-snap-to-grid": "warn",
    "require-snap-to-pixel": "warn",
    "require-default-grid-size": ["warn", [8, 8]],
    "require-show-grid": "off",
    "require-snap-to-object-off": "warn",
    "require-open-in-presentation": "warn",
    "check-missing-objects": "error",
    "check-deprecated-objects": ["warn", [
      "gate~", "switch~", "scope~", "poly~", "drunk"
    ]],
    "check-duplicate-object-types": "off",
    "check-position-rounding": ["warn", {
      "patching-precision": [8.0, 8.0],
      "presentation-precision": [1.0, 1.0]
    }],
    "check-negative-coordinates": "warn",
    "validate-connections": "error",
    "check-disconnected-objects": ["warn", [
      "comment", "panel", "bpatcher", "p", "loadbang", "inlet", "outlet"
    ]],
    "check-print-connections": "warn",
    "check-local-sends": "warn",
    "global-send-receive": ["warn", [
      "master-volume", "tempo", "transport", "midi-in", "midi-out"
    ]],
    "global-dict": ["warn", [
      "settings", "presets", "user-data", "project-config"
    ]],
    "global-value": ["warn", [
      "project-tempo", "master-gain", "sample-rate", "buffer-size"
    ]],
    "naming-send-receive": ["warn", "^[a-zA-Z][a-zA-Z0-9_-]*$"],
    "naming-patcher": ["warn", "^[a-zA-Z][a-zA-Z0-9_-]*$"],
    "naming-dict": ["warn", "^[a-zA-Z][a-zA-Z0-9_-]*$"],
    "naming-value": ["warn", "^[a-zA-Z][a-zA-Z0-9_-]*$"],
    "check-ui-sizing": ["warn", {
      "min-width": 10,
      "min-height": 10
    }],
    "require-ui-annotation": ["warn", [
      "slider", "dial", "button", "toggle", "number",
      "live.dial", "live.slider", "live.button",
      "live.toggle", "live.menu", "live.tab"
    ]],
    "check-ui-hint-usage": ["warn", [
      "slider", "dial", "button", "toggle", "number",
      "live.dial", "live.slider", "live.button",
      "live.toggle", "live.menu", "live.tab"
    ]],
    "check-generic-names": ["warn", [
      "\\[\\d+\\]$", "^(live\\.)?\\w+$", "^untitled", "^(slider|dial|button)\\d*$"
    ]],
    "list-ui-elements": ["info", [
      "slider", "dial", "button", "toggle", "number",
      "live.dial", "live.slider", "live.button",
      "live.toggle", "live.menu", "live.tab"
    ]],
    "check-annotation-consistency": "warn",
    "check-performance-issues": ["warn", {
      "metro-min-interval": 10,
      "performance-objects": ["metro", "drunk", "random", "line~", "curve~"]
    }],
    "check-feedback-loops": "warn"
  }
};

class MaxpatLint {
  constructor() {
    this.config = null;
    this.files = [];
    this.results = [];
  }

  async loadConfig(configPath = null) {
    const configFiles = [
      configPath,
      'maxpat-lint.conf.json5',
      'maxpat-lint.conf.json',
      '.maxpat-lint.conf.json5',
      '.maxpat-lint.conf.json'
    ].filter(Boolean);

    for (const file of configFiles) {
      try {
        if (fs.existsSync(file)) {
          const content = fs.readFileSync(file, 'utf8');
          // Simple JSON5 parsing - remove comments and trailing commas
          const cleanContent = content
            .replace(/\/\/.*$/gm, '')
            .replace(/\/\*[\s\S]*?\*\//g, '')
            .replace(/,(\s*[}\]])/g, '$1');

          const userConfig = JSON.parse(cleanContent);
          this.config = this.mergeConfig(DEFAULT_CONFIG, userConfig);
          console.log(`📁 Loaded config from ${file}`);
          return;
        }
      } catch (error) {
        console.error(`❌ Error loading config from ${file}: ${error.message}`);
        process.exit(1);
      }
    }

    this.config = DEFAULT_CONFIG;
    console.log('📁 Using default configuration');
  }

  mergeConfig(defaultConfig, userConfig) {
    return {
      rules: { ...defaultConfig.rules, ...userConfig.rules }
    };
  }

  async discoverFiles(patterns) {
    const allFiles = [];

    for (const pattern of patterns) {
      try {
        // Check if it's a direct file
        if (fs.existsSync(pattern) && fs.statSync(pattern).isFile()) {
          if (pattern.endsWith('.maxpat')) {
            allFiles.push(pattern);
          }
          continue;
        }

        // Check if it's a directory
        if (fs.existsSync(pattern) && fs.statSync(pattern).isDirectory()) {
          const dirFiles = await glob('**/*.maxpat', { cwd: pattern });
          allFiles.push(...dirFiles.map(file => path.join(pattern, file)));
          continue;
        }

        // Treat as glob pattern
        const globFiles = await glob(pattern);
        allFiles.push(...globFiles.filter(file => file.endsWith('.maxpat')));
      } catch (error) {
        console.error(`❌ Error processing pattern ${pattern}: ${error.message}`);
      }
    }

    return [...new Set(allFiles)]; // Remove duplicates
  }

  async loadFiles(filePaths) {
    this.files = [];

    for (const filePath of filePaths) {
      try {
        const content = fs.readFileSync(filePath, 'utf8');
        const parsed = JSON.parse(content);

        this.files.push({
          name: filePath,
          content: parsed
        });
      } catch (error) {
        this.results.push({
          rule: 'file-parsing',
          results: [{
            file: filePath,
            level: 'error',
            message: `Failed to parse file: ${error.message}`,
            line: null,
            column: null
          }]
        });
      }
    }

    console.log(`📄 Loaded ${this.files.length} patch files`);
  }

  getRuleName(configRuleName) {
    return configRuleName.replace(/-/g, '_');
  }

  getRuleConfig(ruleName) {
    const ruleConfig = this.config.rules[ruleName];
    if (!ruleConfig) return null;

    // Handle different config formats
    if (typeof ruleConfig === 'string') {
      return [ruleConfig, null];
    }

    if (Array.isArray(ruleConfig)) {
      return [ruleConfig[0], ruleConfig[1] || null];
    }

    return [ruleConfig, null];
  }

  async executeRules() {
    this.results = [];
    
    // console.log(this.config)

    for (const [configRuleName, ruleConfig] of Object.entries(this.config.rules)) {
      // console.log(configRuleName)
      
      const [level, config] = this.getRuleConfig(configRuleName);

      if (level === 'off') continue;

      const ruleName = this.getRuleName(configRuleName);

      if (typeof rules[ruleName] !== 'function') {
        console.warn(`⚠️  Rule '${ruleName}' not implemented, skipping`);
        continue;
      }

      try {
        const result = rules[ruleName]([level, config], this.files);
        if (result && result.results && result.results.length > 0) {
          this.results.push(result);
        }
      } catch (error) {
        console.error(`❌ Error executing rule '${ruleName}': ${error.message}`);
      }
    }
  }

  aggregateResultsByFile() {
    const fileResults = {};

    for (const ruleResult of this.results) {
      for (const result of ruleResult.results) {
        if (!fileResults[result.file]) {
          fileResults[result.file] = {
            file: result.file,
            errors: [],
            warnings: [],
            info: [],
            tables: []
          };
        }

        const category = result.level === 'error' ? 'errors' :
          result.level === 'warn' ? 'warnings' : 'info';

        fileResults[result.file][category].push({
          rule: ruleResult.rule,
          message: result.message,
          line: result.line,
          column: result.column,
          details: result.details
        });
      }

      // Handle table data
      if (ruleResult.table) {
        for (const file of this.files) {
          if (!fileResults[file.name]) {
            fileResults[file.name] = {
              file: file.name,
              errors: [], warnings: [], info: [], tables: []
            };
          }

          fileResults[file.name].tables.push({
            rule: ruleResult.rule,
            title: ruleResult.table.title,
            headers: ruleResult.table.headers,
            rows: ruleResult.table.rows.filter(row => row.file === file.name)
          });
        }
      }
    }

    return fileResults;
  }

  printResults(fileResults) {
    let totalErrors = 0;
    let totalWarnings = 0;
    let totalInfo = 0;

    for (const [fileName, results] of Object.entries(fileResults)) {
      console.log(`\n📄 ${fileName}`);

      if (results.errors.length > 0) {
        console.log(`\n❌ Errors (${results.errors.length}):`);
        results.errors.forEach(error => {
          const location = error.line ? `:${error.line}${error.column ? `:${error.column}` : ''}` : '';
          console.log(`  • ${error.message} ${location}`);
          if (error.details) {
            console.log(`    ${JSON.stringify(error.details, null, 2).replace(/\n/g, '\n    ')}`);
          }
        });
        totalErrors += results.errors.length;
      }

      if (results.warnings.length > 0) {
        console.log(`\n⚠️  Warnings (${results.warnings.length}):`);
        results.warnings.forEach(warning => {
          const location = warning.line ? `:${warning.line}${warning.column ? `:${warning.column}` : ''}` : '';
          console.log(`  • ${warning.message} ${location}`);
          if (warning.details) {
            console.log(`    ${JSON.stringify(warning.details, null, 2).replace(/\n/g, '\n    ')}`);
          }
        });
        totalWarnings += results.warnings.length;
      }

      if (results.info.length > 0) {
        console.log(`\nℹ️  Info (${results.info.length}):`);
        results.info.forEach(info => {
          const location = info.line ? `:${info.line}${info.column ? `:${info.column}` : ''}` : '';
          console.log(`  • ${info.message} ${location}`);
        });
        totalInfo += results.info.length;
      }

      // Print tables
      if (results.tables.length > 0) {
        results.tables.forEach(table => {
          if (table.rows.length > 0) {
            console.log(`\n📊 ${table.title}:`);
            this.printTable(table.headers, table.rows);
          }
        });
      }

      if (results.errors.length === 0 && results.warnings.length === 0 &&
        results.info.length === 0 && results.tables.length === 0) {
        console.log('\n✅ No issues found!');
      }
    }

    console.log(`\n📊 Summary: ${totalErrors} errors, ${totalWarnings} warnings, ${totalInfo} info`);
    return totalErrors > 0 ? 1 : 0;
  }

  printTable(headers, rows) {
    if (rows.length === 0) return;

    // Calculate column widths
    const widths = headers.map((header, i) =>
      Math.max(header.length, ...rows.map(row => String(row[i] || '').length))
    );

    // Print header
    const headerRow = headers.map((header, i) => header.padEnd(widths[i])).join(' | ');
    console.log(`  ${headerRow}`);
    console.log(`  ${widths.map(w => '-'.repeat(w)).join('-+-')}`);

    // Print rows
    rows.forEach(row => {
      const formattedRow = headers.map((_, i) => String(row[i] || '').padEnd(widths[i])).join(' | ');
      console.log(`  ${formattedRow}`);
    });
  }

  async run(args) {
    if (args.length === 0 || args.includes('--help')) {
      this.printHelp();
      return 0;
    }

    // Parse arguments
    const configIndex = args.findIndex(arg => arg === '--config');
    const configPath = configIndex >= 0 ? args[configIndex + 1] : null;
    const patterns = args.filter((arg, i) =>
      arg !== '--config' && (configIndex < 0 || i !== configIndex + 1)
    );

    if (patterns.length === 0) {
      console.error('❌ No files or patterns specified');
      return 1;
    }

    await this.loadConfig(configPath);

    const filePaths = await this.discoverFiles(patterns);
    if (filePaths.length === 0) {
      console.error('❌ No .maxpat files found');
      return 1;
    }

    await this.loadFiles(filePaths);
    await this.executeRules();

    const fileResults = this.aggregateResultsByFile();
    return this.printResults(fileResults);
  }

  printHelp() {
    console.log(`
Max/MSP Patch Linter

Usage:
  node executor.js <files/patterns...> [--config <config-file>]

Arguments:
  files/patterns    .maxpat files, directories, or glob patterns to lint

Options:
  --config <file>   Path to configuration file
  --help           Show this help message

Examples:
  node maxpat-lint.js patch.maxpat
  node maxpat-lint.js *.maxpat
  node maxpat-lint.js ./patches/
  node maxpat-lint.js **/*.maxpat --config custom-config.json5
    `);
  }
}

// Main execution
async function main() {
  const linter = new MaxpatLint();
  const exitCode = await linter.run(process.argv.slice(2));
  process.exit(exitCode);
}

if (import.meta.url === `file://${process.argv[1]}`) {
  main().catch(console.error);
}
