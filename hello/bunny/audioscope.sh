#!/bin/sh
# audio vectorscope
# draw: dot|line
f="bunny.mov"
if [ "$1" != "" ] ;then f=$1; fi
ffplay -f lavfi "amovie=$f, asplit [a][out1];
             [a] avectorscope=draw=line:size=800x800 [out0]"
