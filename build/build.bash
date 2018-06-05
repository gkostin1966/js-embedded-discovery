#!/usr/bin/env bash

#set -x

# Save current working directory
pushd .

# Set working directory to project directory
cd "$(dirname "$0")"

# Tidy up from previous build
rm -rf ../target
mkdir ../target

# Build js

#cp /b /y ../src/javascript/idpselect_languages.js+../src/javascript/typeahead.js+../src/javascript/idpselect.js %TEMP%/idpselect.js
#java -jar yuicompressor-2.4.8.jar -o ../target/idpselect.js %TEMP%/idpselect.js
#del/q %TEMP%/idpselect.js

# minify CSS
#java -jar yuicompressor-2.4.8.jar --type css -o ../target/idpselect.css ../src/resources/idpselect.css

# Copy other files

cp ../LICENSE.txt ../target
cp ../doc/*.txt ../target
cp ../src/resources/index.html ../target
cp ../src/resources/blank.gif ../target
cp ../src/javascript/idpselect_config.js ../target

cp ../src/resources/idpselect.css ../target
cp ../src/javascript/json2.js ../target/
cp ../src/javascript/typeahead.js ../target
cp ../src/javascript/idpselect.js ../target
cp ../src/javascript/idpselect_languages.js ../target

mkdir ../target/nonminimised
cp ../src/resources/idpselect.css ../target/nonminimised
cp ../src/javascript/json2.js ../target/nonminimised
cp ../src/javascript/typeahead.js ../target/nonminimised
cp ../src/javascript/idpselect.js ../target/nonminimised
cp ../src/javascript/idpselect_languages.js ../target/nonminimised

# Zip it up

#cd ../target
#
#%JARCMD% cfM  %TEMP%/EDS.zip *
#cp %TEMP%/EDS.zip
#del/q  %TEMP%/EDS.zip
#gpg -a -s -b EDS.zip

# Restore working directory
popd
