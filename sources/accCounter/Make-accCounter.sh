#!/bin/bash

echo "Building accCounter.acc"
pgc++ -DUSE_ATOMIC -std=c++11 -acc -ta=multicore,nvidia:cc35 -Minfo=accel accCounter.cpp -o accCounter_w_atomic

echo "Building accCounter.seq"
pgc++ -std=c++11 -acc -ta=multicore,nvidia:cc35 -Minfo=accel accCounter.cpp -o accCounter_no_atomic

#echo "Building accCounter no instructions at all"
#pgc++ -std=c++11 -acc -Minfo=all accCounter-seq.cpp -o accCounter_seq
