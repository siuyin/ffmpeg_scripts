#!/bin/sh
f="bunny.mov"
if [ "$1" != "" ]; then f=$1; fi
echo $f >loudness_report.txt
ffmpeg -hide_banner -i "$f"  -af "ebur128" -f null - 2>&1|grep -A15 Integrated >> loudness_report.txt
echo loudness_report.txt generated.

