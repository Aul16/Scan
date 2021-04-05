@echo off
for /l %%v in (0,1,100) do (
	echo Testing 192.168.86.%%v
	ping -a -n 1 -l 2 -i 2 192.168.1.%%v >> %%v.txt
	echo DONE
)

for /F "tokens=1,2* delims=: " %%A in ('find /C "Impossible" *.txt') DO (
   if %%C GTR 0 (
      del /s %%B

   )else (
   echo 192.168.1.%%~nB)
)
pause