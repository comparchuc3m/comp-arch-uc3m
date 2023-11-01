cmake_minimum_required(VERSION 3.23)
project(mandelbrot)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
add_compile_options(-Wall -Wextra -Werror -pedantic -pedantic-errors)

FIND_PACKAGE(Threads)

add_executable(mandel mandel.cpp)
add_executable(mandel-par mandel-par.cpp)
target_link_libraries(mandel-par Threads::Threads)
