@echo off

setlocal

pushd %~dp0\..
@REM cmake --preset win32-ninja-debug || goto :exit
@REM cmake --build --preset win32-ninja-debug --target testbed || goto :exit
cmake --workflow --preset project_name-debug

goto :exit

:exit
popd
endlocal

if %errorlevel% NEQ 0 exit /b %errorlevel%
