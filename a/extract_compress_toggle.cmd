@ECHO OFF
SETLOCAL

IF "%1"=="/?" GOTO SYNTAX

SET D=".\b"
SET SEVENZIP_EXE="C:\Program Files\7-Zip\7z.exe"

IF EXIST "%D%\*.zip" GOTO EXTRACT_FILES
GOTO COMPRESS_DIRS

:COMPRESS_DIRS
cd /d %~dp0
for /d %%a in (%D%\*.*) do (
    %SEVENZIP_EXE% a "%D%\%%~nxa.zip" "%D%\%%~nxa"
)
for /d %%a in (%D%\*) do (
    RMDIR /S /Q "%D%\%%~nxa"
)
exit /b
GOTO EOF

:EXTRACT_FILES
cd /d %~dp0
for %%a in (%D%\*.zip) do (
    %SEVENZIP_EXE% x "%D%\%%~nxa" -o"%D%"
)
DEL /Q %D%\*.zip
exit /b

GOTO EOF
:SYNTAX
ECHO "Usage: extract_compress_toggle.cmd"
:EOF
ENDLOCAL
