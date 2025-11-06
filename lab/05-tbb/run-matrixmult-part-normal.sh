#!/bin/sh
#SBATCH --job-name=matrixmult-part-normal
#SBATCH --output=./logs/matrixmult-part-normal.txt

set -Eeu pipefail
export LD_LIBRARY_PATH="/opt/gcc-14/lib64${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
build/normal/05-matrixmult-part/Release/matrixmultpart
