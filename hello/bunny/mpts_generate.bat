setlocal
set f1=bunny1280.mp4
set f2=422.mxf
if not "%1" == "" set f1=%1
if not "%2" == "" set f2=%2
ffmpeg -i %f1% -i %f2% ^
        -map 0:0 -map 0:1 -map 1:0 -map 1:1 ^
        -program program_num=1:title=hires:st=0:st=1 ^
        -program program_num=2:title=lores:st=2:st=3 ^
        -c:v copy -c:a aac ^
        out-mpts.ts
