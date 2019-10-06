setlocal enableextensions
set f=bunny.mov
if not "%1" == "" set f=%1
ffplay -f lavfi "movie=%f%:streams=dv+da[vid][aud]; [vid]copy[bg]; [aud]ebur128=video=1:meter=18[fg][out1]; [fg]format=rgba,colorchannelmixer=aa=0.7[fgt]; [bg][fgt] overlay [out0]"
