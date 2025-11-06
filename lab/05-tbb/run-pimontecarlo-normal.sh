#!/bin/sh
#SBATCH --job-name=pimontecarlo-normal
#SBATCH --output=./logs/pimontecarlo-normal.txt

set -Eeu pipefail
export LD_LIBRARY_PATH="/opt/gcc-14/lib64${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
build/normal/04-pimontecarlo/Release/pimontecarlo
