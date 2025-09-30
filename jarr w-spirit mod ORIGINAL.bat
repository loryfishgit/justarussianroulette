@echo off
cls
title JARR v1 for Windows / Unix WSL cmd
echo Just a russian roulette
echo.
echo Spinner: What's your name?
set /p a=You: 
echo Huh, are you ready to die, %a%?
echo ----------------------------
echo 1. Yup!
echo 2. Nope...
echo.
set /p b=

if "%b%"=="1" goto startroulette
if "%b%"=="2" goto nop

:startroulette
cls
echo So are you ready to die...
echo Let's start!
pause
cls
echo Choosing...
timeout /t 1 /nobreak >NUL

set /a rand=%RANDOM% %% 2

if %rand%==0 (
    goto sht
) else (
    goto sfe
)

:sht
title you are not safe
cls
echo.
echo.            
echo.                                                             
echo                              SPIRIT 	                  
echo.                                                            
echo.
echo.            
echo.
echo.
echo                                O    O
echo                        \_______________/
echo.
echo     WE SEE YOU. YOU ARE NOT SAFE. HIDE HIDE HIDE HIDE.
echo.
start warn.vbs
pause
exit



echo.
pause
exit

:sfe
echo *click* You survived...
pause
goto startroulette

:nop
echo Spinner: *shoot*
timeout /t 3 /nobreak >NUL
exit
