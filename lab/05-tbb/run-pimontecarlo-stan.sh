#!/bin/sh
#SBATCH --job-name=pimontecarlo-stan
#SBATCH --output=./logs/pimontecarlo-stan.txt

set -Eeu pipefail
export LD_LIBRARY_PATH="/opt/gcc-14/lib64${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
build/stan/04-pimontecarlo/Release/pimontecarlo
