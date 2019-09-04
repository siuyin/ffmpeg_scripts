#!/bin/sh
v4l2-ctl --list-devices

echo "Capabilities of /dev/video0:"
ffmpeg -hide_banner -f v4l2 -list_formats all -i /dev/video0
