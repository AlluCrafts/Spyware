@echo off
set "folder=C:\Scans" 

:menu
echo ========= Scan Results =========
echo 1. View hardware
echo 2. View OS  
echo 3. View network 
echo 4. View processes
echo 5. View software
echo 6. View users

set /p choice=
if %choice%==1 type "%folder%\hardware.txt" 
if %choice%==2 type "%folder%\os.txt"
if %choice%==3 type "%folder%\network.txt"
if %choice%==4 type "%folder%\processes.txt"
if %choice%==5 type "%folder%\software.txt"
if %choice%==6 type "%folder%\users.txt"

goto menu