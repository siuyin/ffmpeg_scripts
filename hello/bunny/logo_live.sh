#!/bin/sh
f="bunny.mov"
l="/home/siuyin/consulting/logo_transparent.png"
if [ "$1" != "" ]; then f=$1; fi
if [ "$2" != "" ]; then l=$2; fi
#ffmpeg -i "$f" -i "$l" -lavfi "overlay=x=main_w/2" bunny_logo.mp4
ffplay -f lavfi "movie=$f:streams=dv+da[bg][aud];
  movie=$l[logo];
  [logo]scale=w=iw/3:-1,format=rgba,colorchannelmixer=aa=0.5[logos];
  [bg][logos]overlay=x=0.975*W-w:y=0.05*H[out0],[aud]acopy[out1]"
