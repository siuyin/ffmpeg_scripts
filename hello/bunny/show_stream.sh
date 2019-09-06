#!/bin/sh
f="bunny.mov"
if [ "$1" != "" ]; then f=$1; fi
ffprobe -show_programs -show_format -show_streams  -of json "$f" |less
