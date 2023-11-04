#!/bin/sh

. /etc/profile
module avail
module load gcc/12.1.0
cmake --version
cmake -S . -B build-stan -DCMAKE_BUILD_TYPE=Release
cmake --build build-stan -j 8
