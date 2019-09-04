#!/bin/sh
ffmpeg -hide_banner \
	-f v4l2 -input_format mjpeg -i /dev/video0 \
	-f pulse -i default \
	-c:v copy -c:a pcm_s16le -t 5 junkc.mov
