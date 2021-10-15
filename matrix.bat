@echo off
:: abrimos la terminal en tamaño maximizado y ponemos una línea de buffer, lo cual elimina la scrollbar
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
mode con:lines=1

:: se autopulsa {F11}, lo cual muestra pantalla completa
SET TempVBSFile=%temp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{F11}"                            >>"%TempVBSFile%"
CSCRIPT //nologo "%TempVBSFile%"

:: ponemos las letras en verde
:: ejecutamos el método start que se ejecuta infinitas veces
:: start llama 5 veces a start1 y oculta el puntero abajo a la derecha
color 02
:start
for /l %%x in (1, 1, 5) do call:start1
rundll32.exe user32.dll,SetCursorPos
goto start

:: start1 llama al resto de métodos, que sacan números aleatorios según la estructura especificada
:start1
call:start11
call:start12
call:start11
call:start13
call:start14

:start11
echo %random% %random% %random% %random%   %random% %random% %random%   %random% %random%   %random% %random% %random% %random% %random% %random% %random%   %random% %random% %random%   %random% %random%   %random% %random% %random%

:start12
echo %random% %random% %random% %random% %random% %random% %random%   %random% %random% %random%   %random% %random%   %random% %random% %random%

:start13
echo %random% %random%   %random% %random% %random%   %random% %random% %random% %random% %random% %random%   %random% %random% %random%   %random% %random%   %random% %random% %random%

:start14
echo %random% %random% %random% %random% %random% %random% %random%
