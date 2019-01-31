@ECHO OFF
SETLOCAL

IF "%1"=="" GOTO SYNTAX
IF "%1"=="/?" GOTO SYNTAX

set FTPADDRESS=ftp.myserver.com
set SITEBACKUPFILE=FileToTransfer.zip

set /p FTPUSERNAME=Enter FTP User Name:
set /p FTPPASSWORD=Enter FTP Password:
CLS
> script.ftp USER
>>script.ftp ECHO %FTPUSERNAME%
>>script.ftp ECHO %FTPPASSWORD%
>>script.ftp ECHO binary
>>script.ftp ECHO prompt n
REM  Use put instead of get to upload the file
>>script.ftp ECHO get %SITEBACKUPFILE%
>>script.ftp ECHO bye
FTP -v -s:script.ftp %FTPADDRESS%
TYPE NUL >script.ftp
DEL script.ftp

GOTO EOF
:SYNTAX
ECHO "Usage: call_ftp_scripts.cmd"
:EOF
ENDLOCAL