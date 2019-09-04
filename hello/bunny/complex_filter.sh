#!/bin/sh
ffmpeg -i bunny.mov \
	-filter_complex \
	"[0:v]scale=720:720,
	boxblur=luma_radius=min(h\,w)/20:luma_power=1:\
		chroma_radius=min(cw\,ch)/20:chroma_power=1[bg];
	[0:v]scale=720:720:force_original_aspect_ratio=\
		decrease[fg];
	[bg][fg]overlay=(W-w)/2:(H-h)/2[outv]" \
		-map [outv] -map 0:a? \
	bunnyComplexBlur.mp4
