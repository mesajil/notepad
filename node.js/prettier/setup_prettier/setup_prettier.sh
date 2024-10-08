#!/bin/bash

# Install Prettier as a development dependency
npm i -D prettier

# Create the .prettierrc file with the specified configuration
echo '{
  "arrowParens": "avoid",
  "bracketSameLine": true,
  "bracketSpacing": true,
  "singleQuote": true,
  "jsxSingleQuote": true,
  "trailingComma": "all",
  "tabWidth": 2,
  "semi": false,
  "printWidth": 120
}' > .prettierrc

# Create the .prettierignore file with the specified rules
echo "build
dist
package-lock.json
node_modules" > .prettierignore

# Modify package.json to add the format script
if [ -f package.json ]; then
  npx json -I -f package.json -e 'this.scripts=this.scripts||{};this.scripts.format="prettier --write ."'
else
  echo '{
  "scripts": {
    "format": "prettier --write ."
  }
}' > package.json
fi
