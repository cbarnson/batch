REM File   : addupdate.cmd
REM Created: 2019-01-30
REM Author : Cody Barnson

REM This is a shortcut to quickly add everything (-A flag), commit and push
REM Usage #1: addupdate
REM Usage #2: addupdate 'commit message'

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
