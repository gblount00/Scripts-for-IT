@echo off
title Help Desk Multi Tool
Mode con lines=20 cols=90
chcp 65001 >nul
color 0f

:: main menu
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
cls
goto :menu
exit /b

:: runs Active Directory
:1 
start dsa.msc "C:\Windows\system32" 
goto :menu

:: runs DHCP
:2
start dhcpmgmt.msc "C:\Windows\system32"
goto :menu

:: runs SCCM
:3
start "" "C:\Program Files (x86)\Microsoft Endpoint Manager\AdminConsole\bin\Microsoft.ConfigurationManagement.exe"
goto :menu

:: Original website redacted
:4
start "edge.exe" "google.com"
goto :menu

:: Original website redacted
:5
start "edge.exe" "google.com"
goto :menu 

:: Original website redacted
:a
start "edge.exe" "google.com"
goto :menu 

:: opens adobe admin center in edge
:b
start "edge.exe" "https://adminconsole.adobe.com/"
goto :menu 

:: opens entra id in edge
:c
start "edge.exe" "https://entra.microsoft.com/?culture=en-us&country=us#home"
goto :menu 


:: opens intune in edge
:d
start "edge.exe" "https://intune.microsoft.com/"
goto :menu 

::opens 365 admin center in edge
:e
start "edge.exe" "https://admin.microsoft.com/AdminPortal/home#/homepage"
goto :menu 

:: like the ascii art? you can make one at this website: https://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=VALO.ACC%0A
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







