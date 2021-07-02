#!/bin/sh
#ffplay -f lavfi -i "amovie=bunny.mov,ebur128=video=1:meter=18 [out0][out1]"
# ffplay -f lavfi -i "movie=bunny.mov:streams='a\:0',ebur128=video=1:meter=18 [out0][out1]"
# play audio stream 0
# By default, it logs a message at a frequency of 10Hz with the Momentary loudness (identified by M), Short-term loudness (S), Integrated loudness (I) and Loudness Range (LRA).
f="bunny.mov"
t=-23
if [ "$1" != "" ] ;then f=$1; fi
if [ "$2" != "" ] ;then t=$2; fi
ffplay -f lavfi \
	"movie=$f:streams=dv+da[vid][aud]; 
	[vid]copy[bg]; 
	[aud]ebur128=video=1:meter=18:target=$t[fg][out1]; 
	[fg]format=rgba,colorchannelmixer=aa=0.7[fgt];
	[bg][fgt] overlay [out0]"
