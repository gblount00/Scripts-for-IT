@echo off
Title Wifi Reset
Color 47
Mode con  lines=50
chcp 65001 >nul

:menu
cls
call :logo
echo .........................................................
echo Press 1-4 to select a task or press escape to exit
echo .........................................................
echo 1) - run cmd commands (quick fix)
echo 2) - delete properties folder (wlansvc) (admin required)
echo 3) - Run cmd and Delete properties folder (admin required)
echo 4) - run all and restart (admin required) (recommended)
set /p answer=Please select a number: 
if "%answer%"=="1" goto 1
if "%answer%"=="2" goto 2
if "%answer%"=="3" goto 3
if "%answer%"=="4" goto 4
exit /b

:1
ipconfig /release
ipconfig /flushdns
netsh int ip Reset
ipconfig /renew
cls
echo wifi reset complete
pause
goto :menu

:2
hello world 2
pause
goto :menu

:3
hello world 3
pause
goto :menu


:4
echo hello world4
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
echo 	██╗    ██╗██╗███████╗██╗    ██████╗ ███████╗███████╗███████╗████████╗                
echo 	██║    ██║██║██╔════╝██║    ██╔══██╗██╔════╝██╔════╝██╔════╝╚══██╔══╝                
echo 	██║ █╗ ██║██║█████╗  ██║    ██████╔╝█████╗  ███████╗█████╗     ██║                   
echo 	██║███╗██║██║██╔══╝  ██║    ██╔══██╗██╔══╝  ╚════██║██╔══╝     ██║                   
echo 	╚███╔███╔╝██║██║     ██║    ██║  ██║███████╗███████║███████╗   ██║                   
echo 	 ╚══╝╚══╝ ╚═╝╚═╝     ╚═╝    ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝   ╚═╝                   
exit /b 