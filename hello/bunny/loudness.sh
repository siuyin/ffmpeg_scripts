#!/bin/sh
#ffplay -f lavfi -i "amovie=bunny.mov,ebur128=video=1:meter=18 [out0][out1]"
# ffplay -f lavfi -i "movie=bunny.mov:streams='a\:0',ebur128=video=1:meter=18 [out0][out1]"
# play audio stream 0
ffplay -f lavfi \
	"movie=bunny.mov:streams=dv+da[vid][aud]; 
	[vid]copy[bg]; 
	[aud]ebur128=video=1:meter=18[fg][out1]; 
	[fg]format=rgba,colorchannelmixer=aa=0.5[fgt];
	[bg][fgt] overlay [out0]"
