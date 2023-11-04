#!/bin/sh

. /etc/profile
module avail
module load gcc/12.1.0
perf stat build/imgtool/imgtool grayscale in/sabatini.bmp sabatini-gseq.bmp
