@Echo Off
 Setlocal EnableDelayedExpansion

REM  In most cases, it is faster to do this with EnableDelayedExpansion rather than call set
 Set _server=frodo
 Set _var=_server
 Set _result=!%_var%!
 Echo %_result%

 endlocal