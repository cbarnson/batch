@echo off
SETLOCAL EnableDelayedExpansion

set "var1=first"
set "var2=second"

REM we can swap the value of two variables in one line (works both with and without EnableDelayedExpansion)
Set "var1=%var2%" & set "var2=%var1%"
echo %var1%
echo %var2%

endlocal