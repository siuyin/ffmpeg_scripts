#!/bin/sh
# -vf video filter graph
# scale=720:720 output is 720x720
# force_original_aspect_ratio by shrinking and padding, centered with back backgroud.
ffmpeg -i bunny.mov \
	-vf "scale=640:480:force_original_aspect_ratio=decrease,pad=640:480:(ow-iw)/2:(oh-ih)/2:black" \
	bunny720black.mp4
