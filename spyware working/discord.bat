@echo off

rem Run scans  
wmic csproduct get name,identifyingnumber > hardware.txt
systeminfo > os.txt
ipconfig /all > network.txt
tasklist /v > processes.txt
wmic product get name,version > software.txt
net user > users.txt
net localgroup >> users.txt

rem Create Scans folder
md C:\Scans 2>nul 

rem Move scans to folder
move *.txt C:\Scans

timeout /t 2
goto collect