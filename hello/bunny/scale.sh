#!/bin/sh
# -vf video filter graph
# scale=n:-2 set height to be divisible by n (the width)
ffmpeg -i bunny.mov -c:v libx264 -c:a libmp3lame -vf "scale=1280:-2" bunny1280.mp4
