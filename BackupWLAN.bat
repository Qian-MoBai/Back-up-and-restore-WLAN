@echo off
title BackupWLAN
cd /d "%~dp0"
md BackupWLAN
netsh wlan show profile
netsh wlan export profile folder="%~dp0\BackupWLAN" key=clear
echo the WLAN has been backed up
echo generate a zip file
7za a -tzip BackupWLAN.zip BackupWLAN RestoreWLAN.bat
@REM delete the folder
rd  /s /q BackupWLAN
echo press any key to exit
pause > nul