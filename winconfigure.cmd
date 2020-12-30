@echo off
echo QuickBinaries Custom Build System
echo Version 0.1-alpha10, General Public License v3.0
echo Copyright(C) 2020, ChlorinePentoxide

rem Default configure flags
set QUICK_GET_SOURCE=1
set QUICK_BUILD_SOURCE=1
set QUICK_LIBQUICK_RUN_TESTS=1
set QUICK_BIN_RUN_TESTS=1
set QUICK_GLOBAL_SOURCE=%cd%\src\

cd bin
call winconfigure.cmd %*

pause > nul