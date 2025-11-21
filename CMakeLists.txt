cmake_minimum_required(VERSION 3.10)
project(MultiObjectTracker)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(SOURCES
    src/main.cpp
    src/sensor-simulator/sensor.cpp
    src/track-fuser/fuser.cpp
)
add_executable(${PROJECT_NAME} ${SOURCES})

# Include directories
target_include_directories(${PROJECT_NAME} PRIVATE
    ${PROJECT_SOURCE_DIR}/include
    /usr/include/eigen3
)

# -----------------------------
# Test executable
# -----------------------------
add_executable(tests tests/test_main.cpp)

target_include_directories(tests PRIVATE
    ${PROJECT_SOURCE_DIR}/include
    /usr/include/gtest
)

target_link_libraries(tests PRIVATE gtest gtest_main pthread)

enable_testing()
add_test(NAME AllTests COMMAND tests)
