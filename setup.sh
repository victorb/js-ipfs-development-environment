#! /bin/bash

set -e

echo "## Initializing submodules"
git submodule init

echo "## Updating submodules"
git submodule update

echo "## Installing lerna"
npm install

echo "## Bootstrap modules"
./node_modules/.bin/lerna bootstrap
