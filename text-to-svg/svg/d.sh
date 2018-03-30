#!/bin/sh

svg=$(ls *.svg)

for s in $svg; do
	c=$(md5sum $s | cut -b 1)
	mv $s $c
done
