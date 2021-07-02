#!/bin/sh
# audio histogram
# draw: dot|line
f="bunny.mov"
if [ "$1" != "" ] ;then f=$1; fi
ffplay -f lavfi "amovie=$f, asplit [a][out1];
             [a] ahistogram=dmode=separate:size=800x800 [out0]"
