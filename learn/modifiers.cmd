@ECHO OFF
SETLOCAL

REM folder name and drive
REM echo %~dp0

REM %~I         - expands %I removing any surrounding quotes (")
REM %~fI        - expands %I to a fully qualified path name
REM %~dI        - expands %I to a drive letter only
REM %~pI        - expands %I to a path only
REM %~nI        - expands %I to a file name only
REM %~xI        - expands %I to a file extension only
REM %~sI        - expanded path contains short names only
REM %~aI        - expands %I to file attributes of file
REM %~tI        - expands %I to date/time of file
REM %~zI        - expands %I to size of file

REM The modifiers can be combined to get compound results:
REM %~dpI       - expands %I to a drive letter and path only
REM %~nxI       - expands %I to a file name and extension only
REM %~fsI       - expands %I to a full path name with short names only

:DONE
ENDLOCAL