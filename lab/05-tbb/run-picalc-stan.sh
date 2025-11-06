#!/bin/sh
#SBATCH --job-name=picalc-stan
#SBATCH --output=./logs/picalc-stan.txt

set -Eeu pipefail
export LD_LIBRARY_PATH="/opt/gcc-14/lib64${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
build/stan/03-picalc/Release/picalc
