cmake_minimum_required(VERSION 3.23)
project(04_omp_sol)

set(CMAKE_CXX_STANDARD 20)
add_compile_options(-Wall -Wextra -Werror -pedantic -pedantic-errors)

find_package(OpenMP REQUIRED)

add_executable(piseq piseq.cpp)

add_executable(pipar pipar.cpp)
target_link_libraries(pipar OpenMP::OpenMP_CXX)
