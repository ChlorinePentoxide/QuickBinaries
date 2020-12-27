@echo off
echo QuickBinaries Custom Build System
echo Version 0.1-alpha10, General Public License v3.0
echo Copyright(C) 2020, ChlorinePentoxide
echo+
echo Setting environment variables ...
set QUICK_OUT=%cd%\out\windows
set QUICK_LIB=%cd%\lib
echo Getting latest Quick source code ...
call git clone https://github.com/ChlorinePentoxide/Quick.git --quiet
echo Compiling Quick ...
mkdir lib
cd Quick
call mvn -q package
echo Copying libraries ...
copy target\* ..\lib\ > nul
cd ..
del /F/Q/S Quick > nul
rmdir /Q/S Quick
mkdir out
cd out
mkdir windows
cd ..
cd src
call winmake.cmd
cd ..
cd %QUICK_OUT%
mkdir lib 
copy ..\..\lib\* .\lib\ > nul

echo Writing wrappers for qhs ...
rem for qhs utilty
copy ..\..\src\cmdtmp\*.cmd . > nul
rename cmdtmp.cmd qhs.cmd > nul
powershell -Command "(gc qhs.cmd) -replace '<fn>', 'qhs.jar' | Out-File -encoding ASCII qhs.cmd"

cd ..\..
del /F/Q/S lib > nul
rmdir /Q/S lib
echo Compilation finished.
echo Binaries can be found in %QUICK_OUT%
echo Cleaning up ...
set QUICK_OUT=
set QUICK_LIB=
echo Done.
pause > nul