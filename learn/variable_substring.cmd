@ECHO OFF
SETLOCAL

REM https://ss64.com/nt/syntax-substring.html
SET VAR="quoted string"

REM Output: "quoted string"
echo %VAR%

REM Output: quoted string
echo %VAR:~1,-1%


:DONE
ENDLOCAL