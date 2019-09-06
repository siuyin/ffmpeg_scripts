#!/bin/sh
f="bunny.mov"
p="y"
if [ "$1" != "" ] ;then f=$1; fi
if [ "$2" != "" ] ;then p=$2; fi
ffplay  -f lavfi "movie=$f,extractplanes=$p"  -autoexit
