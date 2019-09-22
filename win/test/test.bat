@echo off

rem test script
rem run from Windows command prompt.
rem test.bat

set IN1="C:\home\data\AMQ5264.0.FDC"
set IN2=C:\home\data\
set OUT1=test1.out
set OUT2=test2.out
set OUT3=test3.out

echo ----- Unit Test: mqfdc.c : one file : c ----- > %OUT1%
echo %date% %time% ..\mqfdc.c %IN1% >> %OUT1%
mqfdc < %IN1% >> %OUT1%

echo ----- Combined Test: mqfdc_win.bat : all files : calling c ----- > %OUT2%
echo %date% %time% ..\mqfdc_win.bat %IN2% >> %OUT2%
call mqfdc_win.bat %IN2% >> %OUT2%

echo ----- Combined Test: mqfdc.ps1 : all files : powershell ----- > %OUT3%
echo %date% %time% ..\mqfdc.ps1 %IN2% >> %OUT3%
powershell -ExecutionPolicy RemoteSigned -File ..\mqfdc.ps1 %IN2% >> %OUT3%
