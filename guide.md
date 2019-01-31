# Guidelines

## Comment style (REM/::)

Prefer `REM`! `::` is a blank label. `REM` is a _command_ that does nothing.

`::` has a known problem inside blocks under special circumstances, in which it is (incorrectly) parsed as a drive letter. For example, the following code will fail in a file called `test.bat`:

```bat
REM Bad, this fails
@ECHO OFF
FOR /F "xyz=" %%A IN ('type c:\users\%username%\desktop\test.bat') DO (
    ::echo hello>c:\users\%username%\desktop\test.txt
)
PAUSE

REM Good, this works
@ECHO OFF
FOR /F "xyz=" %%A IN ('type c:\users\%username%\desktop\test.bat') DO (
    REM echo hello>c:\users\%username%\desktop\test.txt
)
PAUSE
```
