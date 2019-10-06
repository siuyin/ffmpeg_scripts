setlocal
set f=bunny.mov
set t=9.08
if not "%1" == "" set f=%1
ffmpeg -ss %t% -accurate_seek  -i %f%  -frames:v 50 -c:v libx264 out264.mp4
ffmpeg -ss %t% -accurate_seek  -i %f%  -frames:v 50 -c:v libx265 out265.mp4
