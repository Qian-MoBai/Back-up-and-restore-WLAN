@echo off
title BackupWLAN
cd /d "%~dp0"
md BackupWLAN
netsh wlan show profile
netsh wlan export profile folder=.\BackupWLAN key=clear
echo "the WLAN has been backed up"
echo "generate a zip file¡­¡­"
7za a -tzip BackupWLAN.zip BackupWLAN RestoreWLAN.bat
echo "press any key to exit"
pause > nul