@echo off
Title Wifi Reset
Mode con lines=25 cols=85
chcp 65001 >nul
Color 47

:menu
cls
call :Logo
echo 	......................................................... 
echo 		     Press 1 or 2 to select a task 
echo 	......................................................... 
echo 	1) - run cmd commands (quick fix) 
echo 	2) - run all, delete folder and restart (admin required) (recommended) 
echo 	Please select a number:
set /p answer= 
if "%answer%"=="1" goto 1 
if "%answer%"=="2" goto 2 
goto:menu
exit /b

:1
ipconfig /release 
ipconfig /flushdns 
netsh int ip Reset 
ipconfig /renew 
cls
echo ---------------------Reset Complete---------------------------
echo(
echo 	ipconfig /release complete
echo 	ipconfig /flushdns complete
echo 	netsh int ip reset complete
echo 	ipconfig /renew complete
echo(
echo Please try to connect to wifi again (make sure connect automatically is unchecked)
pause
goto :menu

:2
Del C:\Windows\wlansvc\Policies\PolE6F5.tmp
Rd C:\Windows\wlansvc\Policies
ipconfig /release 
ipconfig /flushdns
netsh int ip Reset
ipconfig /renew
cls
echo ---------------------Reset Complete---------------------------
echo(
echo 	ipconfig /release complete
echo 	ipconfig /flushdns complete
echo 	netsh int ip reset complete
echo 	ipconfig /renew complete
echo 	C:\Windows\wlansvc\Policies Deleted
echo 	Press any key to continue to restart
pause
call :PopupForRestart
goto :menu


:PopupForRestart
:: Create a VBScript to show a popup with Restart options
echo Set objShell = CreateObject("WScript.Shell") > "%temp%\restartpopup.vbs"
echo answer = objShell.Popup("A restart is required. Do you want to restart now?", 0, "Restart Required", 1 + 32) >> "%temp%\restartpopup.vbs"
echo If answer = 1 Then >> "%temp%\restartpopup.vbs"
echo objShell.Run "shutdown -r -t 0" >> "%temp%\restartpopup.vbs"
echo End If >> "%temp%\restartpopup.vbs"

:: Run the VBScript
cscript //nologo "%temp%\restartpopup.vbs"

:: Clean up the temporary file
del "%temp%\restartpopup.vbs"

exit /b

:Logo
echo(
echo(
echo 	██╗    ██╗██╗███████╗██╗    ██████╗ ███████╗███████╗███████╗████████╗
echo 	██║    ██║██║██╔════╝██║    ██╔══██╗██╔════╝██╔════╝██╔════╝╚══██╔══╝
echo 	██║ █╗ ██║██║█████╗  ██║    ██████╔╝█████╗  ███████╗█████╗     ██║
echo 	██║███╗██║██║██╔══╝  ██║    ██╔══██╗██╔══╝  ╚════██║██╔══╝     ██║
echo 	╚███╔███╔╝██║██║     ██║    ██║  ██║███████╗███████║███████╗   ██║
echo  	 ╚══╝╚══╝ ╚═╝╚═╝     ╚═╝    ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝   ╚═╝
echo(
echo(

