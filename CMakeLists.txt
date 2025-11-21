cmake_minimum_required(VERSION 4.1)
project(MultiObjectTracker)

set(CMAKE_CXX_STANDARD 17)

set(SOURCES
    src/main.cpp
    src/sensor-simulator/sensor.cpp
    src/track-fuser/fuser.cpp
)

add_executable(${PROJECT_NAME} ${SOURCES})

target_include_directories(${PROJECT_NAME} PRIVATE
    ${PROJECT_SOURCE_DIR}/src/include
    ${PROJECT_SOURCE_DIR}/lib/eigen-5.0.0/Eigen
)

# -----------------------
# Test executable
# -----------------------
add_executable(tests tests/test_main.cpp)

# Include directories for tests
target_include_directories(tests PRIVATE
    ${PROJECT_SOURCE_DIR}/src/include
    ${PROJECT_SOURCE_DIR}/lib/mingw-w64-x86_64-gtest-1.17.0-1/mingw64/include
)


# For simple GoogleTest tests, link libgtest.a and libgtest_main.a.
target_link_libraries(tests PRIVATE
    ${PROJECT_SOURCE_DIR}/lib/mingw-w64-x86_64-gtest-1.17.0-1/mingw64/lib/libgtest.a
    ${PROJECT_SOURCE_DIR}/lib/mingw-w64-x86_64-gtest-1.17.0-1/mingw64/lib/libgtest_main.a
)

enable_testing()
add_test(NAME AllTests COMMAND tests)

