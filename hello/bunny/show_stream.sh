#!/bin/sh
ffprobe -show_format -show_streams  -of json bunny.mov |less
