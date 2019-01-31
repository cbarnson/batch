@ECHO OFF
SETLOCAL

IF "%1"=="" GOTO SYNTAX
IF "%1"=="/?" GOTO SYNTAX

echo %%~1               =      %~1
echo %%~f1              =      %~f1
echo %%~d1              =      %~d1
echo %%~p1              =      %~p1
echo %%~n1              =      %~n1
echo %%~x1              =      %~x1
echo %%~s1              =      %~s1
echo %%~a1              =      %~a1
echo %%~t1              =      %~t1
echo %%~z1              =      %~z1
echo %%~$PATHATH:1      =      %~$PATHATH:1
echo %%~dp1             =      %~dp1
echo %%~nx1             =      %~nx1
echo %%~dp$PATH:1       =      %~dp$PATH:1
echo %%~ftza1           =      %~ftza1

GOTO EOF
:SYNTAX
ECHO "Usage: echo_params.cmd <file.txt>"
:EOF
ENDLOCAL

REM output (> echo_params.cmd echo_params.cmd):
REM %~1               =      echo_params.cmd
REM %~f1              =      C:\Users\cbarn\source\project_home\batch\echo_params.cmd
REM %~d1              =      C:
REM %~p1              =      \Users\cbarn\source\project_home\batch\
REM %~n1              =      echo_params
REM %~x1              =      .cmd
REM %~s1              =      C:\Users\cbarn\source\PROJEC~1\batch\ECHO_P~1.CMD
REM %~a1              =      --a--------
REM %~t1              =      2019-01-30 08:39 PM
REM %~z1              =      728
REM %~$PATHATH:1      =
REM %~dp1             =      C:\Users\cbarn\source\project_home\batch\
REM %~nx1             =      echo_params.cmd
REM %~dp$PATH:1       =      C:\Users\cbarn\source\project_home\batch\
REM %~ftza1           =      --a-------- 2019-01-30 08:39 PM 728 C:\Users\cbarn\source\project_home\batch\echo_params.cmd