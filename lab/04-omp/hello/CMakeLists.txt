cmake_minimum_required(VERSION 3.20)
project(hello
        LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
add_compile_options(-Wall -Wextra -Werror -pedantic -pedantic-errors)

find_package(OpenMP REQUIRED)

add_executable(exseq exseq.cpp)
add_executable(expar expar.cpp)
target_link_libraries(expar PUBLIC OpenMP::OpenMP_CXX)
