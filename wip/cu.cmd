:: CU.bat (Copy Up)
:: Copy All or Specified Files Up One Level
::
@ECHO OFF

If "%1" == "" GOTO COPY-ALL
If NOT "%1" == "" GOTO COPY-SPEC

:COPY-ALL
COPY *.* .. /-Y
GOTO END

:COPY-SPEC
FOR %%F IN (%1 %2 %3 %4 %5 %6 %7 %8 %9) DO COPY %%F .. /-Y .

:END
ECHO. 