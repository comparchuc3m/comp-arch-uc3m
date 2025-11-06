#!/bin/sh
#SBATCH --job-name=build-normal
#SBATCH --output=./logs/build-normal.txt

set -Eeu pipefail
export LD_LIBRARY_PATH="/opt/gcc-14/lib64${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
cmake --preset default -B build/normal
cmake --build build/normal --preset gcc-release --config Release --target all --parallel
