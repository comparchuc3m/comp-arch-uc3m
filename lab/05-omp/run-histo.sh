!/bin/sh

. /etc/profile
module avail
module load gcc/12.1.0
perf stat build/imgtool/imgtool histogram in/sabatini.bmp sabatini-seq.hst
