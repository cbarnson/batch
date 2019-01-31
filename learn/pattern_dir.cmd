@ECHO OFF
SETLOCAL

REM IF "%1"=="" GOTO:SYNTAX
IF "%1"=="/?" GOTO:SYNTAX

PUSHD %BACKUPDIRECTORY%
FOR %%A in (*.cmd) do CALL :Subroutine %%A
POPD
GOTO:EOF

:Subroutine
echo %~n1
REM do something...

GOTO:EOF
:SYNTAX
ECHO "Usage: pattern_dir.cmd"
:EOF
ENDLOCAL

REM output:
REM default_opt_param
REM if_exist
REM modifiers
REM pattern_dir
REM variable_substring