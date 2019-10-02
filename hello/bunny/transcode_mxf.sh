#!/bin/sh
f="bunny.mov"
if [ "$1" != "" ] ;then f=$1; fi
ffmpeg -i $f -c:v mpeg2video -b:v 50000k -c:a pcm_s16le -r 25 bunny.mxf
