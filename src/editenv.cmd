REM File   : editenv.cmd
REM Created: 2019-01-30
REM Author : Cody Barnson

REM This will open up your environment variables window when run from command prompt
REM Note: Since you open env variables from the shell, any modifications to you env
REM settings will revert once the session ends.  So if you need to permanently change
REM your env, open it via start > type "environ..." and launch it that way

@echo off
rundll32 sysdm.cpl,EditEnvironmentVariables