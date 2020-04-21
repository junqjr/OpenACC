#!/usr/bin/env bash
if [ ! -d movie ]
then
    mkdir movie
else
    rm -rf movie/*
fi
mv *.gray movie
cd movie
for file in *.gray
do
    name=$(basename $file .gray)
    convert -depth 8 -size ${1}x${2} $file ${name}.png
done

convert -delay 1x24 -loop 0 *.png movie.gif
