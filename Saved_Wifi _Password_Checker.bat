@echo off
echo Hello im displaying all the networks that you connect before.Please chose and copy one of the network name.
timeout /t 10
netsh wlan show profile | findstr /c:"All User Profile"
set /p name=Please paste the network name: 
netsh wlan show profile %name% key=clear | findstr /C:"Key Content"
pause