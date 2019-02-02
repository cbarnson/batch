REM File   : cd_open_code.cmd
REM Created: 2019-01-30
REM Author : Cody Barnson

REM Example of how you can change directories to some fixed location, then open code/emacs/vim/etc from that directory

@ECHO OFF
SETLOCAL

REM Change directory to some target project folder you want to open code from
CD /D "c:\path\to\directory"
CMD /K code %D%

ENDLOCAL
