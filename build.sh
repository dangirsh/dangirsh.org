#!/usr/bin/env bash
set -e

echo "Building site generator with Cabal..."
cd generator
# Set C++ include path for macOS SDK to fix digest package compilation
if [[ "$OSTYPE" == "darwin"* ]]; then
  export CPLUS_INCLUDE_PATH="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1:$CPLUS_INCLUDE_PATH"
fi
cabal build
GEN_BIN=$(cabal list-bin site)
cp "$GEN_BIN" ../site-generator
cd ..

echo "Generating site..."
cd site
LANG=en_US.UTF-8 ../site-generator build
cd ..

echo "Build complete! Site output is in site/_site/"
