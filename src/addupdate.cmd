@ECHO OFF

SETLOCAL

IF "%~1" == "" GOTO default
set commitMsg="%*"
goto git

:default
set commitMsg="update"

:git
git add -A && git commit -m "%commitMsg%" && git push

ENDLOCAL
