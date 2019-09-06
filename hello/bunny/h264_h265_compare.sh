#!/bin/sh
f="bunny.mov"
t="9.08"
if [ "$1" != "" ] ;then f=$1; fi
ffmpeg -ss "$t" -accurate_seek  -i "$f"  -frames:v 50 -c:v libx264 out264.mp4
ffmpeg -ss "$t" -accurate_seek  -i "$f"  -frames:v 50 -c:v libx265 out265.mp4
echo "2 second clips encoded for h264 and h265 in out264.mp4 and out265.mp4 respectively"
