@echo off
SETLOCAL
Set "_var=first"

REM Output: first
REM The value of %_var% was read into memory BEFORE the Set command which changes it
Set "_var=second" & Echo %_var%

endlocal