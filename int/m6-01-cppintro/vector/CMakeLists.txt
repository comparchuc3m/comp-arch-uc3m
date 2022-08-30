cmake_minimum_required(VERSION 3.23)
project(vector)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
add_compile_options(-Wall -Wextra -Werror -pedantic -pedantic-errors)

add_executable(vec1 vec1.cpp)
add_executable(vec2 vec2.cpp)
add_executable(vec3 vec3.cpp)
add_executable(marks marks.cpp)
add_executable(unique unique.cpp)
