@ECHO OFF
SETLOCAL

REM allow a user to supply an application path via the third parameter,
REM and defaulting it if it's missing

REM  beware the IF syntax. The line spacing makes a difference

IF dummy==dummy%3 (
SET APPLICATIONPATH="C:\Program Files\MyApp\"
) ELSE (
SET APPLICATIONPATH = %3
)

:DONE
ENDLOCAL