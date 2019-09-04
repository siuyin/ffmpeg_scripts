#!/bin/sh
# c components bit-map 1: Y, 2: Y Pb, 7: Y Pb Pr
# y line select
# o scope trace opacity
# tw scope trace width
ffplay -i bunny.mov  -vf oscilloscope=c=1:tw=0.9:y=545/1080:o=0.5
