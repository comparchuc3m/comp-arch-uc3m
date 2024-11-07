#!/bin/sh
OMP_NUM_THREADS=1 perf stat build-stan/imgtool/imgtool par_grayscale in/sabatini.bmp sabatini-gpar.bmp
OMP_NUM_THREADS=2 perf stat build-stan/imgtool/imgtool par_grayscale in/sabatini.bmp sabatini-gpar.bmp
OMP_NUM_THREADS=4 perf stat build-stan/imgtool/imgtool par_grayscale in/sabatini.bmp sabatini-gpar.bmp
OMP_NUM_THREADS=8 perf stat build-stan/imgtool/imgtool par_grayscale in/sabatini.bmp sabatini-gpar.bmp
OMP_NUM_THREADS=16 perf stat build-stan/imgtool/imgtool par_grayscale in/sabatini.bmp sabatini-gpar.bmp
OMP_NUM_THREADS=32 perf stat build-stan/imgtool/imgtool par_grayscale in/sabatini.bmp sabatini-gpar.bmp
perf stat build-stan/imgtool/imgtool par_grayscale in/sabatini.bmp sabatini-gpar.bmp

