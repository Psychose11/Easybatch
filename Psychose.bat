@echo off




color 0a




goto start






:start

echo ::::::::::.  .::::::..-:.     ::-.  .,-:::::   ::   .:      ...      .::::::..,::::::  
echo  `;;;```.;;;;;;`    ` ';;.   ;;;;',;;;'````'  ,;;   ;;,  .;;;;;;;.  ;;;`    `;;;;''''  
echo   `]]nnn]]' '[==/[[[[,  '[[,[[['  [[[        ,[[[,,,[[[ ,[[     \[[,'[==/[[[[,[[cccc   
echo    $$$;;      '''    $    c$$z    $$$        z$$$sdf$$$ $$$,     $$$  '''    $$$,;:,   
echo    888o      88b    dP  ,8P,`     `88bo,__,o, 888   ,88o,888,_ _,88P 88b    dP888oo,__ 
echo    YMMMb      ,YMmMY,  mM,,         ,,UMMMMMP MMM    YMM   YMMMMMP   ,YMmMY; ;:;,YUMMM


echo.
echo.
echo Hack everything :) ;)
echo.
echo 1- Metasploit                                7- activation de windows(50 pourcent de reussite)
echo 2- Nmap                                      8- nouveau document texte
echo 3- Nouveau point d'acces                     9- cryptage de donnee
echo 4- Ping                                        
echo 5- ip addresse
echo 6- stoper le point d'acces
echo.

set choiceinput=
set /p choiceinput= entre ton choix :
if %choiceinput%==1 goto choix1
if %choiceinput%==2 goto choix2
if %choiceinput%==3 goto choix3
if %choiceinput%==4 goto choix4
if %choiceinput%==5 goto choix5
if %choiceinput%==6 goto choix6
if %choiceinput%==7 goto choix7
if %choiceinput%==8 goto choix8
if %choiceinput%==9 goto choix9

:choix1
cls
msfconsole

:choix2
cls
set adresse2=
set /p adresse2=entrer l'adresse ip cible
nmap -F -O -P -sU %adresse2%
echo.
pause 
cls
goto start

:choix3
cls 
netsh wlan set hostednetwork mode=allow ssid=de_aonaaaaaa key=1234568
netsh wlan start hostednetwork
echo.
pause
cls
goto start 


:choix4
cls
set adresse=
set /p adresse=entrer l'adresse ip cible :
echo.
ping -4 -n -3 %adresse%
echo.
pause
cls
goto start

:choix5
cls
ipconfig
echo.
pause
cls
goto start

:choix6
cls
netsh wlan stop hostednetwork
echo.
pause
cls
goto start

:choix7
cls
slmgr -rearm
echo.
pause
cls
goto start

:choix8
cls
notepad.exe
echo.
pause
cls
goto start
:choix9
echo copier votre fichier sur le bureau(retener votre mot de passe ;))
cls
py chiffrement.py
pause
cls
goto start

:exit
cls 
exit /B



