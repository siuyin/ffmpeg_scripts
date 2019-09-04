#!/bin/sh
# -vf video filter graph
# crop to 4/3 aspect
ffmpeg -i bunny.mov \
	-vf "crop='iw*3/4':ih, \
	scale=640:480" \
	bunnyCrop480.mp4
