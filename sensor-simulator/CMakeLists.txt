cmake_minimum_required(VERSION 4.1)
project(SensorSimulator)

set(CMAKE_CXX_STANDARD 17)


add_executable(sensor sensor.cpp)


include_directories(${CMAKE_SOURCE_DIR}/../libs/eigen-5.0.0/Eigen)

