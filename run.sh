#!/bin/bash
if [ ! -d "node_modules" ] || [ ! "$(ls -qAL node_modules 2>/dev/null)" ]; then
  echo "Node modules not installed. Installing..."
  if [ -f "yarn.lock" ]; then
    yarn install
  else
    npm install
  fi
fi

echo "Starting your app..."

if [ "$NODE_ENV" == "development" ]; then
  npm run develop
else
  npm run build
  npm run start
fi