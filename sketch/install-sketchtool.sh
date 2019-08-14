#!/usr/bin/env bash

# This script should be run via curl:
#   sh -c "$(curl -fsSL https://raw.githubusercontent.com/rezafaizarahman/scripts/master/sketch/install-sketchtool.sh)"
# or wget:
#   sh -c "$(wget -qO- https://raw.githubusercontent.com/rezafaizarahman/scripts/master/sketch/install-sketchtool.sh)"

mkdir temp
cd temp
curl -L -o sketch.zip http://www.sketchapp.com/download/sketch.zip
unzip -q sketch.zip
cp -r Sketch.app /Applications/
alias sketchtool="/Applications/Sketch.app/Contents/Resources/sketchtool/bin/sketchtool"
cd ../
rm -Rf temp
echo Installed `sketchtool --version`