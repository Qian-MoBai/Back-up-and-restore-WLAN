@echo off
title BackupWLAN
cd /d "%~dp0"
md BackupWLAN
netsh wlan show profile
netsh wlan export profile folder=.\BackupWLAN key=clear
cd BackupWLAN
echo when the backup is complete press any key to exit
pause > nul