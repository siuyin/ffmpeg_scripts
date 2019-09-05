#!/bin/sh
ffplay -f lavfi "sine=frequency=1000:sample_rate=48000[out1];smptebars=size=1280x720[out0]"
