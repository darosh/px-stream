import { defineConfig } from 'eslint/config'
import maxpat from 'eslint-plugin-maxpat'

export default defineConfig([{
  files: ['*.maxpat'],
  plugins: { maxpat },
  extends: ['maxpat/recommended'],
  rules: {}
}])
