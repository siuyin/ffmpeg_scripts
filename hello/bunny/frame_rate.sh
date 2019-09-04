#!/bin/sh
# -vf video filter graph
# crop to 4/3 aspect
ffmpeg -i bunny.mov \
	-r 30000/1001 \
	bunny2997.mp4
