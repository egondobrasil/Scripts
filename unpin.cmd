@echo off
:: Close Windows Explorer to unlock taskbar files
taskkill /f /im explorer.exe

:: Delete all pinned application shortcut files
del /f /q "%appdata%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\*"

:: Clear the Registry key that stores taskbar layouts
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /f

:: Relaunch Windows Explorer to apply changes
start explorer.exe
