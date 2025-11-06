#!/bin/sh
#SBATCH --job-name=invoke-normal
#SBATCH --output=./logs/invoke-normal.txt

set -Eeu pipefail
export LD_LIBRARY_PATH="/opt/gcc-14/lib64${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
build/normal/01-invoke/Release/invoke
