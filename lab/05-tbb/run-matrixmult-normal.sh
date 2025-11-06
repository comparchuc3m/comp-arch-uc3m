#!/bin/sh
#SBATCH --job-name=matrixmult-normal
#SBATCH --output=./logs/matrixmult-normal.txt

set -Eeu pipefail
export LD_LIBRARY_PATH="/opt/gcc-14/lib64${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
build/normal/02-matrixmult/Release/matrixmult
