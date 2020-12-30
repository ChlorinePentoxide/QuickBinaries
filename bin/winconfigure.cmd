@echo off
echo Compiling boot binaries ...
set QCURRENT=%cd%
cd %QUICK_GLOBAL_SOURCE%
cd quickconf
call winmake.cmd
cd %QCURRENT%
set QCURRENT=
java QC %*
if exist qc0.cmd call qc0.cmd
exit