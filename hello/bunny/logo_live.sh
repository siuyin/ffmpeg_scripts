#!/bin/sh
f="bunny.mov"
l="/home/siuyin/consulting/logo_transparent.png"
if [ "$1" != "" ]; then f=$1; fi
if [ "$2" != "" ]; then l=$2; fi
#ffmpeg -i "$f" -i "$l" -lavfi "overlay=x=main_w/2" bunny_logo.mp4
ffplay -f lavfi "movie=$f:streams=dv+da[bg][aud];
  movie=$l[logo];
  [logo]scale=w=iw/2:h=ih/2[logos];
  [bg][logos]overlay[out0],[aud]acopy[out1]"
