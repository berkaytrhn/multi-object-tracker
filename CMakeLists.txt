cmake_minimum_required(VERSION 4.1)
project(MultiObjectTracker)

set(CMAKE_CXX_STANDARD 17)


add_executable(tracker main.cpp)

set(SOURCES
    src/main.cpp
    src/sensor-simulator/sensor.cpp
    src/track-fuser/fuser.cpp
)
add_executable(${PROJECT_NAME} ${SOURCES})

target_include_directories(${PROJECT_NAME} PRIVATE ${PROJECT_SOURCE_DIR}/include)
include_directories(${CMAKE_SOURCE_DIR}/../libs/eigen-5.0.0/Eigen)