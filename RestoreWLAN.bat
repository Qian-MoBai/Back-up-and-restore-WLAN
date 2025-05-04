@echo off
title RestoreWLAN
cd BackupWLAN
for %%i in (./*.xml) do (
	netsh wlan add profile "%%i"
)
echo the WLAN has been restored press any key to exit
pause > nul