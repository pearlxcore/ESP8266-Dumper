@echo off
color 0A
echo.
echo +++++++++++++++++++++++++++++++++++++++++++
echo ++       Flash Dumper for ESP8266        ++
echo ++        twitter.com/pearlxcore         ++
echo +++++++++++++++++++++++++++++++++++++++++++
echo.
echo.
set /p name=Enter output binary name : 
echo.
echo.
set /p COM=Enter COM port : 
echo.
echo.
esptool.py --baud 115200 --port %COM% read_flash 0 4194304 %name%.bin