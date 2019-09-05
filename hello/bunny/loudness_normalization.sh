#!/bin/sh
#ffplay -f lavfi -i "amovie=bunny.mov,ebur128=video=1:meter=18 [out0][out1]"
# ffplay -f lavfi -i "movie=bunny.mov:streams='a\:0',ebur128=video=1:meter=18 [out0][out1]"
# play audio stream 0
f="bunny.mov"
if [ "$1" != "" ] ;then f=$1; fi
ffplay -f lavfi "amovie=$f:streams=dv+da[out0][aud];[aud]loudnorm=I=-23,ebur128[out1]" -autoexit
