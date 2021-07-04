#!/bin/sh

b="pal75bars" # pal100bars, smptebars, smptehdbars
if [ "$1" != "" ] ;then b=$1; fi
#ffplay -f lavfi "sine=frequency=1000:sample_rate=48000[out1];smptebars=size=1280x720[out0]"
ffplay -loglevel quiet -f lavfi "sine=frequency=1000:sample_rate=48000[out1];$b=size=1280x720[out0]" 
