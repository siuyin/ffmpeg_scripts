#!/bin/sh
ffmpeg -f concat -i bunny.edl.txt -c copy bunny-edited.mp4
