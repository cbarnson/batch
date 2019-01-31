@echo off
setlocal enabledelayedexpansion enableextensions

set myPath=C:\Somewhere\Somewhere\SomeFile.txt
call :file_name_from_path result !myPath!
echo %result%
goto :eof

:file_name_from_path <resultVar> <pathVar>
(
    set "%~1=%~nx2"
    exit /b
)

:eof
endlocal