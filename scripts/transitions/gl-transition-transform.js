import { program } from "commander";
import fs from "fs";
import path from "path";
import transform from "./transform.js";
import stringify from 'json-stringify-pretty-compact'

// FIXME later if needed, can do more commands, like per file transforming
program
  .version("0.0.1")
  .option("-d, --glsl-dir <dir>", "a folder containing *.glsl files")
  .option(
    "-o, --json-out <jsonOutputFile>",
    "a JSON file to save with all transitions",
    "-"
  )
  .parse(process.argv);

const { glslDir, jsonOut } = program.opts();

if (!glslDir || !jsonOut) {
  program.outputHelp();
  process.exit(1);
}

const ms = (n) => (n < 1 ? n.toFixed(2) : Math.round(n)) + "ms";

const files = fs.readdirSync(glslDir).filter(n => n.match(/^.*\.glsl$/));
const transitions = [];
console.error(files.length + " transitions to transform...");
console.error("");
files.forEach(filename => {
  const fullPath = path.join(glslDir, filename);
  const glsl = fs.readFileSync(fullPath, "utf-8");
  const result = transform(filename, glsl, fullPath);
  if (result.errors.length > 0) {
    console.error(` ✕ ${result.data.transition.name}`);
    console.error("");
    result.errors.forEach(e => {
      console.error(`   ${e.message}`);
    });
    console.error("");
  } else {
    console.log(
      ` ✔︎ ${result.data.transition.name}`
    );
    transitions.push({
      ...result.data.transition
    });
  }
  return result;
});
console.error("");
if (transitions.length === files.length) {
  // all pass!
  const json = stringify(transitions);
  
  if (jsonOut === "-") {
    console.log(json);
  } else {
    fs.writeFileSync(jsonOut, json);
  }
  console.error(transitions.length + " transitions exported in " + jsonOut);
  process.exit(0);
} else {
  console.error(
    files.length -
      transitions.length +
      " transitions have failed to pass validation."
  );
  process.exit(1);
}
