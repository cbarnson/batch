@echo off
setlocal

REM count to 5 storing the results in a variable
REM alternative way to write this is by calling a subroutine,
REM this breaks out of the loop it does not need Delayed Expansion
set _tst=0
FOR /l %%G in (1,1,5) Do (call :sub %%G)
echo Total = %_tst%
goto :eof

:sub
echo [%1] & set /a _tst+=1
goto :eof

REM Output:
REM [1]
REM [2]
REM [3]
REM [4]
REM [5]
REM Total = 5