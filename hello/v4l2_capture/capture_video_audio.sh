#!/bin/sh
ffmpeg -hide_banner \
	-f v4l2 -input_format yuyv422 -i /dev/video0 \
	-f pulse -i default \
	-c:v copy -c:a pcm_s16le junk.mov
