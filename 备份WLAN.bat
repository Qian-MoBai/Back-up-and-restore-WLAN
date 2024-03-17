@echo off
title WLAN备份
cd /d "%~dp0"
md WLAN备份
netsh wlan show profile
netsh wlan export profile folder=.\WLAN备份 key=clear
cd WLAN备份
echo 备份完成，正在生成zip文件……
cd ..
:: 使用7za命令
7za a 备份还原WLAN.zip ./WLAN备份 ./还原WLAN.bat
echo 已生成zip文件，按任意键退出……
pause > nul