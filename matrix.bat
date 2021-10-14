@echo off
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b

mode con:lines=1
::tenemos que pulsar {F11}

SET TempVBSFile=%temp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{F11}"                            >>"%TempVBSFile%"
CSCRIPT //nologo "%TempVBSFile%"

color 02
:start
for /l %%x in (1, 1, 5) do call:start1
rundll32.exe user32.dll,SetCursorPos
goto start

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