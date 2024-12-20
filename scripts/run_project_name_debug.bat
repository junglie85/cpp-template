@echo off

setlocal

pushd %~dp0\..
call scripts\build_project_name_debug.bat || goto :exit
call build\win32-ninja-debug\project_name\project_name.exe %* || goto :exit

goto :exit

:exit
popd
endlocal

if %errorlevel% NEQ 0 exit /b %errorlevel%
