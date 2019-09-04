#!/bin/sh
ffmpeg -hide_banner \
	-f v4l2 -input_format yuyv422 -i /dev/video0 \
	-f pulse  -i default \
        -f mxf -vcodec libx264  -acodec copy -r 30000/1001 -t 5 junkc.mxf
