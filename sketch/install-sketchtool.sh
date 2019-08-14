#!/usr/bin/env bash

# This script should be run via curl:
#   sh -c "$(curl -fsSL https://raw.githubusercontent.com/rezafaizarahman/scripts/master/sketch/install-sketchtool.sh)"
# or wget:
#   sh -c "$(wget -qO- https://raw.githubusercontent.com/rezafaizarahman/scripts/master/sketch/install-sketchtool.sh)"

mkdir temp
cd temp
curl -L -o sketch.zip http://www.sketchapp.com/download/sketch.zip
unzip -q sketch.zip
cd Sketch.app/Contents/Resources/sketchtool/
sh ./install.sh
cd ../../../../../
rm -Rf temp
alias sketchtool="/Applications/Sketch.app/Contents/Resources/sketchtool/bin/sketchtool"
echo "sketchtool is now installed"