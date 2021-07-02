#!/bin/sh
# c components bit-map 1: Y, 2: Y Pb, 7: Y Pb Pr
# y line select
# o scope trace opacity
# tw scope trace width
f="bunny.mov"
y=545
if [ "$1" != "" ] ;then f=$1; fi
if [ "$2" != "" ] ;then y=$2; fi
ffplay -i $f  -vf oscilloscope=c=1:tw=0.9:y=$y/1080:o=0.5
