#!/bin/sh
#-vf "format=nv12,hwupload,scale=1280:-1" \
ffmpeg -hwaccel vaapi -vaapi_device /dev/dri/renderD128 -hwaccel_output_format vaapi \
       	-i bunny.mov \
	-c:v hevc_vaapi \
        bunny-hevc.mp4
