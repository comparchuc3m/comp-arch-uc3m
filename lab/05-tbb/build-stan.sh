#!/bin/sh
#SBATCH --job-name=build-stan
#SBATCH --output=./logs/build-stan.txt

set -Eeu pipefail
export LD_LIBRARY_PATH="/opt/gcc-14/lib64${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
cmake --preset default -B build/stan
cmake --build build/stan --preset gcc-release --config Release --target all --parallel
