@echo off
:: Change registry value to show file extensions
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f

:: Refresh File Explorer to apply changes immediately
taskkill /f /im explorer.exe
start explorer.exe
