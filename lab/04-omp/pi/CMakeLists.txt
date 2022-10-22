cmake_minimum_required(VERSION 3.20)
project(pi)

set(CMAKE_CXX_STANDARD 20)
add_compile_options(-Wall -Wextra -Werror -pedantic -pedantic-errors)

find_package(OpenMP REQUIRED)

add_executable(piseq piseq.cpp)
target_link_libraries(piseq -static)

add_executable(piseqtime piseqtime.cpp)
target_link_libraries(piseqtime -static)

add_executable(pipar pipar.cpp)
target_link_libraries(pipar PUBLIC OpenMP::OpenMP_CXX)
