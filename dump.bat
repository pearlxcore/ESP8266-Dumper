@echo off
color 0A
echo.
echo +++++++++++++++++++++++++++++++++++++++++++
echo ++       Flash Dumper for ESP8266        ++
echo ++        twitter.com/pearlxcore         ++
echo ++       twitter.com/kdwgamestore        ++
echo +++++++++++++++++++++++++++++++++++++++++++
echo.
echo.
set /p name=Enter output binary name [ex:firmware.bin] : 
echo.
echo.
set /p COM=Enter COM port [ex:COM3]: 
echo.
echo.
esptool.py --baud 115200 --port %COM% read_flash 0 4194304 %name%.bin