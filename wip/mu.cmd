:: MU.bat (Move Up)
:: Move All or Specified Files Up One Level
::
@ECHO OFF

If "%1" == "" GOTO MOVE-ALL
If NOT "%1" == "" GOTO MOVE-SPEC

:MOVE-ALL
MOVE /-Y *.* ..
GOTO END

:MOVE-SPEC
FOR %%F IN (%1 %2 %3 %4 %5 %6 %7 %8 %9) DO MOVE /-Y %%F ..

:END
ECHO. 