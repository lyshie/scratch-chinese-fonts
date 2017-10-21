#!/bin/sh

chars=$(cat common.txt | fold -w1 | sort | uniq)

for c in $chars; do
    convert -background none -fill red -font /usr/share/fonts/google-noto-cjk/NotoSerifCJK-Regular.ttc -pointsize 64 label:"$c" "$c.png"
done
