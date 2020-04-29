#!/bin/bash

echo 'make clean:'
make clean

echo 'make > make.out 2>make.err'
make > make.out 2>make.err

echo 'Running ./gol 4000 2000 50 > gol.out 2> gol.err on host (multicore)'
export PGI_ACC_TIME=1
export ACC_DEVICE_TYPE=host
./gol 4000 2000 50 > gol.out 2> gol.err

echo 'Profiling the tool pgprof --cpu-profiling on ./gol 4000 2000 50 > prof.out 2> prof.err'
export PGI_ACC_TIME=0
pgprof --cpu-profiling on ./gol 4000 2000 50 > prof.out 2> prof.err
