@echo off
SETLOCAL EnableDelayedExpansion
Set "_var=first"

REM Output: first second
REM The value of the !_var! variable is evaluated as late as possible while the %_var% variable works just as before.
Set "_var=second" & Echo %_var% !_var!


Set "var1=%var2%" & set "var2=%var1%"
echo %var1%
echo %var2%

endlocal