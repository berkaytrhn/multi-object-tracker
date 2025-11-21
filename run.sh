#!/bin/bash

BUILD_TYPE=${1:-Release}
BUILD_DIR="./build/$BUILD_TYPE"

# experimental, auto detect project name if second parameter not given
PROJECT_ROOT=${1:-$(pwd)}
PROJECT_NAME=${2:-$(grep -Po '(?<=project\().*(?=\))' "$PROJECT_ROOT/CMakeLists.txt")}

EXECUTABLE="$BUILD_DIR/$PROJECT_NAME"

if [ ! -f "$EXECUTABLE" ]; then
    echo "Executable not found! Run build.sh first."
    exit 1
fi

echo "Running $EXECUTABLE..."
"$EXECUTABLE"
