@echo off
adb disconnect
cls
echo.
echo First of all u need to set the scrcpy folder location in user Path variable 
echo.
echo And .exe file name should be scrcpy.exe if it is not then rename it
echo.
echo Intially u need usb to setup scrcpy for both wired and wirelessly also until the cmd says remove USB cable
echo.
set /p answer1= Want wireless connection (Y/N)? :
if %answer1%==y  goto wireless

if %answer1%==n  (echo Ok! U choosed for wired connection
echo.
pause
goto wired)

pause 
cls
exit


:wireless
@echo off
FOR /F "tokens=9 delims= " %%a in ('adb shell ip route') do (
	set ip=%%a
)
adb tcpip 5555
set ipwithport=%ip%:5555
adb connect %ipwithport%
echo.
pause
cls
set /p answer2= Want to start scrcpy (Y/N)? :
echo.
if %answer2%==y (echo.
echo remove USB cable 
echo.
pause
scrcpy)
if %answer2%==n exit
pause
cmd /k
echo.
pause
cls
cmd /k

:wired
cls
adb disconnect
scrcpy
pause
cls
cmd /k
