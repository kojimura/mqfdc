@echo off

rem Simplify all MQ FDC files in a specified folder
rem usage: mqfdfc full-path (if no argument then look currect directory)

set TARGETDIR=
if not "%~1"=="" (
 set TARGETDIR=%1\
)

for /f "usebackq" %%i in (`dir /B %TARGETDIR%*.FDC`) do (
  mqfdc < %TARGETDIR%%%i
)

