@echo off
rem -------------------------------------------------------------------------
rem Author: David Anderle                                                   \
rem Github: https://github.com/Andergonan/                                  \
rem LICENSE: https://github.com/Andergonan/GodTerminal/blob/main/LICENSE    \
rem Program name: GodTerminal                                               \
rem File name: GT.bat                                                       \
rem -------------------------------------------------------------------------

rem login
:login_username
cls
title GT: Login
color 0B
echo Username
echo.
set /p user_name=GT: 
if %user_name% == admin goto login_password
echo %date% / %time% / %user_name% >> Log_wrong_login.txt
goto wrong_username

:login_password
cls
title GT: Login
color 0B
echo Password
echo.
set /p password=GT: 
if %password%% == admin goto accept
echo %date% / %time% / %user_name%>> Log_wrong_login.txt
goto wrong_password

rem chybove hlaseni pro %user_name%
:wrong_username
cls
title GT: ERROR - Wrong username
color 0C
echo - Spatne zadane uzivatelske jmeno! 
echo.
set /p =- Zkuste to znovu [ENTER]
goto login_username

rem chybove hlaseni pro %password%
:wrong_password
cls
title GT: ERROR - Wrong password
color 0C
echo - Spatne zadane heslo!  
echo.
set /p =- Zkuste to znovu [ENTER]
goto login_username

rem totalni kravina pro efekt/graficke vyzobrazeni prihlasovani a nasledne presmerovani do hlavni nabidky.
:accept
cls
title GT: %user_name%
color 0A
echo Probiha nacitani...
ping -n 1.5 localhost >nul
echo Vyckejte prosim..
ping -n 1.5 localhost >nul
echo Nacitam hlavni nabidku.
ping -n 1.5 localhost >nul
echo %time% / %date%...
ping -n 1.5 localhost >nul
echo Vitejte %user_name%!
echo %date% / %time% / %user_name% se prihlasil >> GT_Log.txt
ping -n 1.5 localhost >nul
goto main_menu

rem ---------------ostatni funkce (main_menu)---------------

rem main_menu: vyber [e] - ukonci program
:exit
cls
title GT: Exit
color 0D
echo BYE!
echo %date% / %time% / %user_name% se odhlasil >> GT_Log.txt
ping -n 2 localhost >nul
exit

rem main_menu: vyber [l] - zobrazi log
:log
cls
title GT: Log
type GT_Log.txt
echo %date% / %time% / %user_name% si zobrazil Log >> GT_Log.txt
pause
goto main_menu

rem --------------------------------------------------------

rem main menu
:main_menu
cls
title GT: Main menu
color 0B
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
ping -n 1 localhost >nul
echo MMMMMMMMMMMMMMMMMMMMMMMMMMNNmmddhhyyyhhhddmmNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
ping -n 1 localhost >nul
echo MMMMMMMMMMMMMMMMMMMMNmhs+:-.`              `..-//////////////////////////////////////////////oMMMMMM
ping -n 1 localhost >nul
echo MMMMMMMMMMMMMMMMNho:.                                                                        +MMMMMM
ping -n 1 localhost >nul
echo MMMMMMMMMMMMMms:`          ``.-://++++//:-.``      -/`                                       mMMMMMM
ping -n 1 localhost >nul
echo MMMMMMMMMMMh/`         `:oydNMMMMMMMMMMMMMMNdyo/.-yMMmyyyyyyyyyyyyyo           `yyyyyyyyyyyyhMMMMMMM
ping -n 1 localhost >nul
echo MMMMMMMMMh-          :yNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM+           +MMMMMMMMMMMMMMMMMMMM
ping -n 1 localhost >nul
echo MMMMMMMN/          :dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN`           mMMMMMMMMMMMMMMMMMMMM
ping -n 1 localhost >nul
echo MMMMMMN-          +MMMMMMMMMMMMyyyyyyyyyyyyyyyyyydMMMMMMMMMMMMMMMMs           :MMMMMMMMMMMMMMMMMMMMM
ping -n 1 localhost >nul
echo MMMMMM/          .MMMMMMMMMMMMd                  yMMMMMMMMMMMMMMMM.           hMMMMMMMMMMMMMMMMMMMMM
ping -n 1 localhost >nul
echo MMMMMM           :MMMMMMMMMMMMy/////.           .MMMMMMMMMMMMMMMMh           .MMMMMMMMMMMMMMMMMMMMMM
ping -n 1 localhost >nul
echo MMMMMM`           dMMMMMMMMMMMMMMMMM.           sMMMMMMMMMMMMMMMM:           sMMMMMMMMMMMMMMMMMMMMMM'
ping -n 1 localhost >nul
echo MMMMMMo           `sNMMMMMMMMMMMMMMy           `NMMMMMMMMMMMMMMMm           `NMMMMMMMMMMMMMMMMMMMMMM
ping -n 1 localhost >nul
echo MMMMMMMo            .ohNMMMMMMMMMMN-           oMMMMMMMMMMMMMMMM+           +MMMMMMMMMMMMMMMMMMMMMMM
ping -n 1 localhost >nul
echo MMMMMMMMd/             `-+osyyyys+.           `NMMMMMMMMMMMMMMMN`           mMMMMMMMMMMMMMMMMMMMMMMM
ping -n 1 localhost >nul
echo MMMMMMMMMMmo:`                                +MMMMMMMMMMMMMMMMs           :MMMMMMMMMMMMMMMMMMMMMMMM
ping -n 1 localhost >nul
echo MMMMMMMMMMMMNNho/:.``               `.--:/oshdNMMMMMMMMMMMMMMMMyooooooooooodMMMMMMMMMMMMMMMMMMMMMMMM
ping -n 1 localhost >nul
echo MMMMMMMMMMMMMMMMMNNNmmdhhhyyyyhhddmmmNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
ping -n 1 localhost >nul
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
ping -n 1 localhost >nul                                                                   version: 0.0.4
echo.
echo                                            -Hlavni menu-
echo.
echo                                Cisteni disku [1] / Zkopirovat data [2]
echo                           Programy a funkce [3] / Windows update [4]
echo.
ping -n 1 localhost >nul
echo                                                                                  - Rychle instalace [d]
ping -n 1 localhost >nul
echo                                                                                 - Nastaveni site [n]
ping -n 1 localhost >nul
echo                                                                                - Terminal [/wcmd]
ping -n 1 localhost >nul
echo                                                                               - Otevrit log [l]
ping -n 1 localhost >nul
echo                                                                              - exit [e]
set /p select=GT: 
if %select% == 1 goto disk_cleaner
if %select% == 2 goto copy_menu
if %select% == 3 goto appwiz
if %select% == 4 goto windows_update
if %select% == d goto Fast_Download/Install
if %select% == n goto network_settings
if %select% == /wcmd goto start_cmd
if %select% == l goto log
if %select% == e goto exit
goto main_menu

rem --------------------------------------------------------

rem main_menu: vyber [1] - spusti windows aplikaci cleanmgr.exe s vysokou prioritou procesoru
:disk_cleaner
cls
title GT: Cisteni disku
color 0A
start /high cleanmgr.exe
echo - cleanmgr.exe [Launched]
echo.
echo %date% / %time% / %user_name% / Cisteni disku [Launched]>> GT_Log.txt
echo -----------------------------------
set /p =GT - Zpet do hlavni nabidky [ENTER]
goto main_menu

rem main_menu: vyber [2] - utvori zalohu zvolene jednotky (lze prevest data na druhou jednotku)
:copy_menu
cls
title GT: Kopirovani dat
color 0A
echo Zadejte jmeno disku
set /p d_name=: 
echo Zadejte jmeno USB:
set /p usb_name=: 
echo                                                               - Potvrdit [accept]
echo                                                               - Zadat udaje znovu [r]
echo                                                               - Zpet do hlavni nabidky [m]
set /p select=GT: 
if %select% == accept goto copy
if %select% == r goto copy_menu
if %select% == m goto main_menu
goto copy_menu
:copy
echo %date% / %time% / %user_name% /  Kopirovani disku %d_name% na %usb_name% [Started]>> GT_Log.txt
xcopy /S %d_name%:\  %usb_name%:\zaloha_disku_%d_name%_%username%_[%date%]\
echo %date% / %time% / %user_name% /  Utvorena koipe disku %d_name% na %usb_name% [Completed]>> GT_Log.txt
echo.
echo Data uspesne zkopirovana!
echo.
echo.
echo --------------------------------------------------------------------------------------------------
ping -n 1 localhost >nul
echo                                                               - Zpet do hlavni nabidky [m]
ping -n 1 localhost >nul
set /p select=GT: 
if %select% == m goto main_menu
goto copy_menu

rem main_menu: vyber [3] - spusti "Programy a funkce"
:appwiz
cls
title GT: Programy a funkce
color 0A
appwiz.cpl
echo Programy a funkce [Launched]
echo.
echo %date% / %time% / %user_name% / Programy a funkce [Launched]>> GT_Log.txt
echo -----------------------------------
set /p =GT - Zpet do hlavni nabidky [ENTER]
goto main_menu

rem main_menu: vyber [4] - spusti "Windows Update"
:windows_update
cls
title GT: Windows Update
color 0A
control.exe /name Microsoft.WindowsUpdate
echo Windows Update [Launched]
echo.
echo %date% / %time% / %user_name% / Windows Update [Launched]>> GT_Log.txt
echo -----------------------------------
set /p =GT - Zpet do hlavni nabidky [ENTER]
goto main_menu

rem main_menu: vyber [n] - nastaveni site
:network_settings
title GT: network_settings
cls
color 0B
echo - Nacist nastveni routeru [routset]
echo - Ipconfig [ip]
echo - Hostname [hname]
echo - Terminal [wcmd]
echo - Zobrazit hesla ulozenych siti [showme]
echo.
echo                                                               - Zpet do hlavni nabidky [m]
set /p select_network_setting=/
if %select_network_setting% == routset goto router_setting
if %select_network_setting% == ip goto ip_ipconfig
if %select_network_setting% == hname goto hname_hostname
if %select_network_setting% == wcmd goto start_cmd
if %select_network_setting% == showme goto start_netprofiles
if %select_network_setting% == m goto main_menu
goto network_settings

rem network_settings: vyber [routset] - presmerovani na Default Gateway
:router_setting
echo %date% / %time% / %user_name% / %select_network_setting% [Used]>> GT_Log.txt
cls
title GT: Router Setting
color 0A
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "Default"') do set ip=%%b
set ip=%ip:~1%
echo.
echo  Default Gateway: %ip%
echo.
echo Oteviram stranku...
echo %date% / %time% / %user_name% / Default Gateway [Loaded]>> GT_Log.txt
explorer http://%ip%
echo.
echo.
echo --------------------------------------------------------------------------------------------------
ping -n 1 localhost >nul
echo                                                               - Zpet k nastaveni site [n]
ping -n 1 localhost >nul
echo                                                               - Zpet do hlavni nabidky [m]
ping -n 1 localhost >nul
set /p select=GT: 
if %select% == n goto network_settings
if %select% == m goto main_menu
goto network_settings

rem network_settings: vyber [ip] - nacteni prikazu "ipconfig"
:ip_ipconfig
cls
title GT: Command_ipconfig
color 0A
ipconfig
echo %date% / %time% / %user_name% / Ipconfig [Used]>> GT_Log.txt
echo.
echo.
echo --------------------------------------------------------------------------------------------------
ping -n 1 localhost >nul
echo                                                               - Zpet k nastaveni site [n]
ping -n 1 localhost >nul
echo                                                               - Zpet do hlavni nabidky [m]
ping -n 1 localhost >nul
echo.
set /p select=GT: 
if %select% == n goto network_settings
if %select% == m goto main_menu
goto network_settings

rem network_settings: vyber [hname] - nacteni prikazu "hostname"
:hname_hostname
cls
title GT: Command_hostname
color 0A
hostname
echo %date% / %time% / %user_name% / hostname [Used]>> GT_Log.txt
echo.
echo.
echo --------------------------------------------------------------------------------------------------
ping -n 1 localhost >nul
echo                                                               - Zpet k nastaveni site [n]
ping -n 1 localhost >nul
echo                                                               - Zpet do hlavni nabidky [m]
ping -n 1 localhost >nul
set /p select=GT: 
if %select% == n goto network_settings
if %select% == m goto main_menu
goto network_settings

rem network_settings: vyber [showme] - nacteni prikazu "netsh"
:start_netprofiles
cls
title GT: Networks profiles
color 0A
echo %date% / %time% / %user_name% / Netsh [Used]>> GT_Log.txt
netsh wlan show profile
echo.
set /p key=Nazev site: 
netsh wlan show profile %key% key=clear
echo.
echo.
echo --------------------------------------------------------------------------------------------------
ping -n 1 localhost >nul
echo                                                               - Zpet k nastaveni site [n]
ping -n 1 localhost >nul
echo                                                               - Zpet do hlavni nabidky [m]
ping -n 1 localhost >nul
set /p select=GT: 
if %select% == n goto network_settings
if %select% == m goto main_menu
goto network_settings

rem main_menu: vyber [d] - download menu - skrze nej lze stahovat definovane aplikce z webu a spustit jejich instalaci 
:Fast_Download/Install
cls
title GT: Fast_Download/Install
color 0B
echo - Stahnout: CCleaner [1]
echo - Stahnout: Malwerbytes [2]
echo - Stahnout: Avira [3]
echo - Stahnout: TeamViewer [4]
echo - Stahnout: Browser [5]
echo - Stahnout: LibreOffice [6]
echo - Odstranit instalacni soubory [clean]
ping -n 1 localhost >nul
echo                                                               - Zpet do hlavni nabidky [m]
set /p select=GT: 
if %select% == 1 goto DICCleaner
if %select% == 2 goto DIMalwerbytes
if %select% == 3 goto DIAvira
if %select% == 4 goto DITeamViewer
if %select% == 5 goto BrowsersMenu
if %select% == 6 goto DILibreOffice
if %select% == clean goto clean
if %select% == m goto main_menu
goto Fast_Download/Install

rem aplikace stahovane pres download menu
:DICCleaner
cls
title GT: Fast_Download/Install - CCleaner
color 0A
echo - Pockejte prosim, probiha stahovani CCleaner...
echo %date% / %time% / %user_name% / Stahovani CCleaner [Started]>> GT_Log.txt
powershell -Command "Invoke-WebRequest https://download.ccleaner.com/ccsetup580.exe -Outfile ccsetup580.exe"
echo - CCleaner byl stazen!
echo %date% / %time% / %user_name% / Stahovani CCleaner [Completed]>> GT_Log.txt
cls
echo - Probiha instalace...
echo %date% / %time% / %user_name% / Instalace CCleaner [Started]>> GT_Log.txt
start ccsetup580.exe
echo %date% / %time% / %user_name% / Instalace CCleaner [Completed]>> GT_Log.txt
goto InstallFinished

:DIMalwerbytes
title GT: Fast_Download/Install - Malwerbytes
cls
color 0A
echo - Pockejte prosim, probiha stahovani Malwerbytes...
echo %date% / %time% / %user_name% / Stahovani Malwerbytes [Started]>> GT_Log.txt
powershell -Command "Invoke-WebRequest https://downloads.malwarebytes.com/file/mb-windows -Outfile MBSetup.exe"
echo - Malwerbytes byl stazen!
echo %date% / %time% / %user_name% / Stahovani Malwerbytes [Completed]>> GT_Log.txt
cls
echo - Probiha instalace...
echo %date% / %time% / %user_name% / Instalace Malwerbytes [Started]>> GT_Log.txt
start MBSetup.exe
echo %date% / %time% / %user_name% / Instalace Malwerbytes [Completed]>> GT_Log.txt
goto InstallFinished

:DIAvira
title GT: Fast_Download/Install - Avira
cls
color 0A
echo - Pockejte prosim, probiha stahovani Avira...
echo %date% / %time% / %user_name% / Stahovani Avira [Started]>> GT_Log.txt
powershell -Command "Invoke-WebRequest https://package.avira.com/download/spotlight-windows-bootstrapper/avira_en_sptl1_416861061-1622632716__phpws-spotlight-release.exe -Outfile avira_en_sptl1_416861061-1622632716__phpws-spotlight-release.exe"
echo - Avira byla stazena!
echo %date% / %time% / %user_name% / Stahovani Avira [Completed]>> GT_Log.txt
cls
echo - Probiha instalace...
echo %date% / %time% / %user_name% / Instalace Avira [Started]>> GT_Log.txt
start avira_en_sptl1_416861061-1622632716__phpws-spotlight-release.exe
echo %date% / %time% / %user_name% / Instalace Avira [Completed]>> GT_Log.txt
goto InstallFinished

:DITeamViewer
title GT: Fast_Download/Install - TeamViewer
cls
color 0A
echo - Pockejte prosim, probiha stahovani TeamViewer...
echo %date% / %time% / %user_name% / Stahovani TeamViewer [Started]>> GT_Log.txt
powershell -Command "Invoke-WebRequest https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe -Outfile TeamViewer_Setup_x64.exe"
echo - TeamViewer byl stazen!
echo %date% / %time% / %user_name% / Stahovani TeamViewer [Completed]>> GT_Log.txt
cls
echo - Probiha instalace...
echo %date% / %time% / %user_name% / Instalace TeamViewer [Started]>> GT_Log.txt
start TeamViewer_Setup_x64.exe
echo %date% / %time% / %user_name% / Instalace TeamViewer [Completed]>> GT_Log.txt
goto InstallFinished

rem vyciti instalacni soubory definovanych aplikaci z Fast_Download/Install 
:clean
title GT: Fast_Download/Install - Cleaning
cls
color 0A
echo Počkete prosim, probiha mazani soubru...
echo hledam a mazu: avira_en_sptl1_416861061-1622632716__phpws-spotlight-release.exe
del avira_en_sptl1_416861061-1622632716__phpws-spotlight-release.exe
echo hledam a mazu: MBSetup.exe
del MBSetup.exe
echo hledam a mazu: ccsetup580.exe
del ccsetup580.exe
echo hledam a mazu: TeamViewer_Setup_x64.exe
del TeamViewer_Setup_x64.exe
echo %date% / %time% / %user_name% / Probehlo cisteni instalacnich souboru FID>> GT_Log.txt
echo ------------------------
echo Soubory uspesne smazany!
echo.
ping -n 1 localhost >nul
echo                                                               - Zpet k rychlym instalacim [d]
ping -n 1 localhost >nul
echo                                                               - Zpet do hlavni nabidky [m]
ping -n 1 localhost >nul
echo --------------------------------------------------------------------------------------------------
set /p select=GT: 
if %select% == d goto Fast_Download/Install
if %select% == m goto main_menu
goto main_menu

rem menu se zobrazi po dokonceni instalace
:InstallFinished
title GT: Install Finished
color 0A
echo.
ping -n 1 localhost >nul
echo                                                               - Zpet k rychlym instalacim [d]
ping -n 1 localhost >nul
echo                                                               - Zpet do hlavni nabidky [m]
ping -n 1 localhost >nul
echo --------------------------------------------------------------------------------------------------
set /p select=GT: 
if %select% == d goto Fast_Download/Install
if %select% == m goto main_menu
goto InstallFinished

rem spusti prikazovy radek
:start_cmd
cls
title GT: Terminal
color 0A
start cmd.exe
echo %date% / %time% / %user_name% CMD [Launched]>> GT_Log.txt
echo CMD [Launched]
ping -n 1 localhost >nul
echo.
ping -n 1 localhost >nul
echo --------------------------------------------------------------------------------------------------
ping -n 1 localhost >nul
echo                                                               - Zpet [z]
ping -n 1 localhost >nul
set /p %select%=GT: 
if %select% == z goto main_menu
if %select% == n goto network_settings
goto main_menu
