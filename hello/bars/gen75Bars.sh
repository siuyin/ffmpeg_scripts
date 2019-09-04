#!/bin/sh
# generate 2 seconds of bars at 25fps
ffmpeg -f lavfi -i yuvtestsrc=duration=2:size=1920x1080:rate=25 pal75bars.mp4
