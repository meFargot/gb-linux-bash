#!/bin/bash

for y in {2010..2017}
do
    mkdir $y
	for m in {01..12}
	do
	    mkdir ${y}/${m}
		for f in {001..003}
		do
		    echo "File $f" > ${y}/${m}/${f}.txt
		done
	done
done