@ECHO OFF
Setlocal EnableDelayedExpansion
for /f %%G in ("abc") do ( set _demo=%%G & echo !_demo!)

:DONE
ENDLOCAL
REM output:
REM abc