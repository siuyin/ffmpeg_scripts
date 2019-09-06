#!/bin/sh
f1="bunny.mov"
f2="bunny1280.mp4"
if [ "$1" != "" ] ;then f1=$1; fi
if [ "$2" != "" ] ;then f2=$2; fi
ffmpeg -i "$f1" -i "$f2" \
	-map 0:0 -map 0:1 -map 1:0 -map 1:1 \
	-program program_num=1:title=hires:st=0:st=1 \
       	-program program_num=2:title=lores:st=2:st=3 \
	-c:v copy -c:a aac\
	out-mpts.ts
