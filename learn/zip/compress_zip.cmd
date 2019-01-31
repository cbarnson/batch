@ECHO OFF
SETLOCAL

REM Run to create a zip containing all the files in folder (or file, up to you)

REM Sample usage:
REM > scripts\compress_zip.cmd archive\snapshot-20190130192323.272000-420

IF "%1"=="" GOTO SYNTAX
IF "%1"=="/?" GOTO SYNTAX

IF "%2"=="" GOTO SETUP
SET out="%2"

:SETUP
SET in="%1"
SET out="%1.zip"
SET D=%~dp0

CScript %d%zip.vbs %in% %out%

GOTO EOF
:SYNTAX
ECHO "Usage: compress_zip.cmd <input> <output>"
ECHO "Must have at least one argument"
:EOF
ENDLOCAL