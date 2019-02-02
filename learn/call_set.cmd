 @Echo off
 SETLOCAL

REM CALL can also be used to run any internal command (SET, ECHO etc) with the exception of FOR and IF
REM CALL will expand any variables passed on the same line

REM This is undocumented behaviour, in fact whenever CALL is run without a
REM : prefix, it will always search disk for a batch file/executable called
REM command before running the internal command

 set _server=frodo
 set _var=_server
 CALL SET _result=%%%_var%%%
 echo %_result%

 endlocal