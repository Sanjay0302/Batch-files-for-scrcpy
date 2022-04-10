@echo off 
echo deleting adb cache 
adb disconnect
adb kill-server
cls
echo No need to Connect any USB for this process, 
echo.
echo But mobile wifi and computer wifi should be connected to same Hotspot network.
echo.
echo Note that u can't use your mobile hotspot and connect computer wifi to it, instead u must connect both devices wifi to another Hotspot network.
echo.
pause
cls
echo Find IP adress in : About phone---status information---IPadress section
echo.
set /p IPADD= IP Address from about phone :
cls
echo Find Last five digit of IP port and Pairing code in : Devoloper's option---wireless debugging---Pairing code and port
echo.
echo For Example : If ip Port is %IPADD%:50550 then 50550 is the last five digit of IP port address
echo.
echo.
set /p IPPORT= Enter Last Five Digit of IP port :
adb pair %IPADD%:%IPPORT% 
echo.
set /p answer2= Are U able to connect successfully (Y/N)?:
if %answer2%==n (echo.
echo then restart the BAT file and Follow correct procedure.
echo.
pause
exit)
if %answer2%==y (cls
echo.
echo connecting via TCPIP 5555......
echo running adb connect %IPADD%.....
echo.
adb connect %IPADD% )

echo.
echo.
echo.
set /p answer3= Do u want to start scrcpy (Y/N)?:
if %answer3%==y (cls
scrcpy 
pause
exit)
echo.
if %answer3%==n (cls 
exit)



pause
cmd /k