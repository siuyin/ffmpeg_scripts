#!/bin/sh
f="bunny.mov"
if [ "$1" != "" ] ;then f=$1; fi
ffplay -f lavfi "amovie=$f:streams=dv+da[out0][aud];[aud]ladspa=f=zita-reverbs:p=zita-reverb-amb:c=c0=0.1|c3=5[out1]"
