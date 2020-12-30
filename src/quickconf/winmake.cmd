@echo off
javac *.java
copy *.class ..\..\bin > nul
del /F/Q/S *.class > nul