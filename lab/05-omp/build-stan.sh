#!/bin/sh
cmake -S . -B build-stan -DCMAKE_BUILD_TYPE=Release
cmake --build build-stan -j 8
