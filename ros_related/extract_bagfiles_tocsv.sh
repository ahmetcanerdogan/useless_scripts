#!/bin/bash

file="$1"

for filename in $file*; do
mkdir -p ${filename::-4}/
for topic in `rostopic list -b $filename` ;
do rostopic echo -p -b $filename $topic > ${filename::-4}/${topic//\//_}.csv ;
echo "Iterating " $file
done
done
