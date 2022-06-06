$systemInfo = Get-ComputerInfo
$networkInfo = Get-NetIPConfiguration -All

New-Item -Path "C:\Temp" -Name "details.zip" -ItemType "file" 
Add-Content -Path "C:\Temp\details.zip" -Value $systemInfo
Add-Content -Path "C:\Temp\details.zip" -Value $networkInfo
