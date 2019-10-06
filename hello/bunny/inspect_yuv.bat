setlocal
set f=bunny.mov
set p=y
if not "%1" == "" set f=%1
if not "%2" == "" set p=%2
ffplay  -f lavfi "movie=%f%,extractplanes=%p%"  -autoexit
