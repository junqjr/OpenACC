#!/bin/bash

echo 'make clean:'
make clean

echo 'make > make.out 2>make.err'
make > make.out 2>make.err

echo 'Running ./gol 4000 2000 50 > gol.out 2> gol.err'
export PGI_ACC_TIME=1
./gol 4000 2000 50 > gol.out 2> gol.err

#echo 'Profiling the tool pgprof --cpu-profiling on ./gol 4000 2000 50 > prof.out 2> prof.err'
echo 'Profiling the tool pgprof ./gol 4000 2000 50 > prof.out 2> prof.err'
export PGI_ACC_TIME=0
pgprof ./gol 4000 2000 50 > prof.out 2> prof.err
