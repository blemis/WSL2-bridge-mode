@ECHO OFF
REM change to your username
PowerShell.exe -NoProfile -Command "& {Start-Process PowerShell.exe -ArgumentList ' -ExecutionPolicy Bypass -File ""C:\Users\YOURNAME\Desktop\tweaknet.ps1"" ' -Verb RunAs}"