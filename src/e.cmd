REM File   : e.cmd
REM Created: 2019-01-30
REM Author : Cody Barnson

REM Launch emacs (if installed)
REM Usage #1: e file.txt
REM Usage #2: e file1.txt file2.txt file3.txt

:: Open emacs in separate process
@start /b cmd /c "%USERPROFILE%\emacs\bin\runemacs.exe" %*
