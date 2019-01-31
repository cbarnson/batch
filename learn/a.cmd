@echo off
setlocal

REM count to 5 storing the results in a variable
REM The same script with EnableDelayedExpansion, gives the same final result but also displays the intermediate values

set _tst=0
FOR /l %%G in (1,1,5) Do (echo [%_tst%] & set /a _tst+=1)
echo Total = %_tst%

REM Output:
REM [0]
REM [0]
REM [0]
REM [0]
REM [0]
REM Total = 5


endlocal