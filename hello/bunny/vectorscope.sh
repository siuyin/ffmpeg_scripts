#/bin/sh
# g: graticule
# m: mode
# b: bgopacity (background opacity)
# o: opacity (graticule opacity)
# format is the pixel format of the vectorscope overlay.
# for formats list: ffmpeg -pix_fmt | less
#ffplay -i bunny.mov -vf "format=yuva444p9,split=2[m][v],[v]vectorscope=b=0.5:m=color3:g=green[v],[m][v]overlay=x=W-w:y=H-h"
f="bunny.mov"
if [ "$1" != "" ] ;then f=$1; fi
ffplay -i $f -vf "format=yuv444p9,split=2[m][v],[v]vectorscope=b=0.1:o=1.0:m=color3:g=color[v],[m][v]overlay=x=W-w:y=H-h"
