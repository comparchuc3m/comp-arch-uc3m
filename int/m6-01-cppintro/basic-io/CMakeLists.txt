cmake_minimum_required(VERSION 3.23)
project(basic_io)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
add_compile_options(-Wall -Wextra -Werror -pedantic -pedantic-errors)

add_executable(hello1 hello1.cpp)
add_executable(hello2 hello2.cpp)
