@echo off
title WLAN还原
cd WLAN备份
for %%i in (./*.xml) do (
	netsh wlan add profile "%%i"
)
set /p input=已还原WLAN，是否删除文件？（Y/n）
if /i %input%=="Y" goto yes
if /i %input%=="N" goto exit

:yes
cd ..
rmdir /s /q WLAN备份
echo 文件已删除
goto exit

:exit
echo 按任意键退出
pause > nul