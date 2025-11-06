#!/bin/sh
#SBATCH --job-name=picalc-normal
#SBATCH --output=./logs/picalc-normal.txt

set -Eeu pipefail
export LD_LIBRARY_PATH="/opt/gcc-14/lib64${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
build/normal/03-picalc/Release/picalc
