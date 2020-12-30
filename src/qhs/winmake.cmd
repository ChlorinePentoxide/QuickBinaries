@echo off
echo Compiling qhs (Quick Hashing Utility) ...
call javac -cp ".;%QUICK_LIB%\*" *.java
mkdir META-INF > nul
echo "Main-Class: Main" > META-INF/MANIFEST.MF
call jar -cf "%QUICK_OUT%\qhs.jar" META-INF/MANIFEST.MF *.class
del /F/Q/S META-INF > nul
rmdir /Q/S META-INF
del /F/Q/S *.class > nul
