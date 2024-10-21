@echo off
title Help Desk Multi Tool
Mode con lines=20 cols=90
chcp 65001 >nul
color 0f

:menu 
cls
call :logo
echo(
echo(
echo(
echo 		1) Active Directory                 a) Avaya Voicemail
echo 		2) DHCP                             b) Adobe Admin Center
echo 		3) SCCM                             c) Entra ID
echo 		4) NinjaOne                         d) Intune 
echo 		5) Avaya users                      e) 365 admin center
echo(
@echo off
set /p program=.%program%               Please select a program:
if %program%==1 goto 1
if %program%==2 goto 2
if %program%==3 goto 3
if %program%==4 goto 4
if %program%==5 goto 5
if /i %program%==a goto a
if /i %program%==b goto b
if /i %program%==d goto d
if /i %program%==e goto e
if /i %program%==c goto c
goto :menu
exit /b

:1 
start dsa.msc "C:\Windows\system32" 
goto :menu


:2
start dhcpmgmt.msc "C:\Windows\system32"
goto :menu

:3
start "" "C:\Program Files (x86)\Microsoft Endpoint Manager\AdminConsole\bin\Microsoft.ConfigurationManagement.exe"
goto :menu

:4
start "edge.exe" "https://app.ninjarmm.com/#/systemDashboard/overview"
goto :menu

:5
start "edge.exe" "https://10.17.11.40/network-login/"
goto :menu 

:a
start "edge.exe" "https://10.17.11.18/#/splash?state=https:%2F%2F10.17.11.18%2F"
goto :menu 

:b
start "edge.exe" "https://adminconsole.adobe.com/378DE09F56E821AA7F000101@AdobeOrg/overview"
goto :menu 

:c
start "edge.exe" "https://entra.microsoft.com/?culture=en-us&country=us#home"
goto :menu 

:d
start "edge.exe" "https://intune.microsoft.com/?feature.tokencaching=true&feature.internalgraphapiversion=true#home"
goto :menu 

:e
start "edge.exe" "https://admin.microsoft.com/AdminPortal/home#/homepage"
goto :menu 


:logo
echo(
echo(
echo 	███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗     
echo 	████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo 	██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo 	██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo 	██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo 	╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo(
echo(







