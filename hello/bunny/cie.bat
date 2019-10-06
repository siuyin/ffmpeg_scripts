setlocal
set f=bunny.mov
if not "%1" == "" set f=%1
ffplay -f lavfi ^
"movie=%f%:streams=dv+da[vid][out1]; ^
  [vid]split[v1][v2]; ^
  [v1]ciescope=system=rec709[scope]; ^
  [v2][scope]overlay[out0] "
