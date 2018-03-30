#!/bin/sh

chars=$(cat ../common.txt | fold -w1 | sort | uniq)

for c in $chars; do
	node tts.js "$c" > "./svg/$c.svg"
done
