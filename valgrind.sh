#!/bin/bash

echo "Memory Leak Checking..."

BUILD_TYPE=${1:-Release}
BUILD_DIR="./build/$BUILD_TYPE"
PROJECT_ROOT=${1:-$(pwd)}
PROJECT_NAME=${2:-$(grep -Po '(?<=project\().*(?=\))' "$PROJECT_ROOT/CMakeLists.txt")}


valgrind --leak-check=full $BUILD_DIR/$PROJECT_NAME


echo "Memory Leak Check Completed!"