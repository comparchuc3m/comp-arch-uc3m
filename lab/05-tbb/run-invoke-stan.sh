#!/bin/sh
#SBATCH --job-name=invoke-stan
#SBATCH --output=./logs/invoke-stan.txt

set -Eeu pipefail
export LD_LIBRARY_PATH="/opt/gcc-14/lib64${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
build/stan/01-invoke/Release/invoke
