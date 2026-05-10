@echo off
echo Scanning photos folder...
powershell -Command "Get-ChildItem photos -Name | Where-Object { $_ -match '\.(jpg|jpeg|png|webp|gif)$' } | ConvertTo-Json | Set-Content photos.json"
echo Done! photos.json updated.
pause
