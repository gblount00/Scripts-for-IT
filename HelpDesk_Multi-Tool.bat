@echo off
title Help Desk Multi Tool
Mode con lines=25 cols=90
chcp 65001 >nul
color 0f

:menu 
cls
call :logo
echo(
echo(
echo(
echo 	1) Active Directory
echo 	2) DHCP
echo 	3) SCCM
echo 	4) NinjaOne
echo 	5) Avaya users
echo 	6) Avaya Voicemail
echo 	7) Adobe Admin Center
echo 	8) Intune
echo 	9) 365 admin center
echo(
set /p program=Please select a program:_
if %program%==1 goto 1
if %program%==2 goto 2
if %program%==3 goto 3
if %program%==4 goto 4
if %program%==5 goto 5
if %program%==6 goto 6
if %program%==7 goto 7
if %program%==8 goto 8
if %program%==9 goto 9
if %program%==10 goto 10
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

:6
start "edge.exe" "https://10.17.11.18/#/splash?state=https:%2F%2F10.17.11.18%2F"
goto :menu 

:7
start "edge.exe" "https://adminconsole.adobe.com/378DE09F56E821AA7F000101@AdobeOrg/overview"
goto :menu 

:8
start "edge.exe" "https://intune.microsoft.com/?feature.tokencaching=true&feature.internalgraphapiversion=true#home"
goto :menu 

:9
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







