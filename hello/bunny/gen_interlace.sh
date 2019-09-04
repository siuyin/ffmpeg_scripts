#!/bin/sh
ffmpeg -i bunny.mov -vf tinterlace=interlacex2 -c:a copy bunny-interlace.mp4
