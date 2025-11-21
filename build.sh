#!/bin/bash

PROJECT_ROOT=${1:-$(pwd)}
BUILD_TYPE=${2:-Release}
BUILD_DIR="$PROJECT_ROOT/build/$BUILD_TYPE"

echo "Project root: $PROJECT_ROOT"
echo "Build type: $BUILD_TYPE"
echo "Build directory: $BUILD_DIR"

# Create build directory
mkdir -p "$BUILD_DIR"

# Run CMake to configure
cmake -S "$PROJECT_ROOT" -B "$BUILD_DIR" \
      -DCMAKE_BUILD_TYPE="$BUILD_TYPE" \
      -DCMAKE_CXX_COMPILER=/usr/bin/g++ \
      -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

# Build
cmake --build "$BUILD_DIR" -- -j$(nproc)

echo "Build complete."
