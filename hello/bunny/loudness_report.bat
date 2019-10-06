setlocal
set f=bunny.mov
if not "%1" == "" set f=%1
ffmpeg -hide_banner -i %f%  -af "ebur128" -f null -
