########### Registry Additions ###########

<#
    
    The goal of this script is to fill several startup locations in the registry with an artifact.
    If a registry key is not present it is okay, whatever registry keys are present will still populate. Ignore any errors that occur if "The path is does not exist", or something similar.
    This script must be ran as administrator. If an error like "Requested registry access is not allowed" occurs, that means you are not running this script with the proper permissions.

#>

#### Actual Code ####


#### Menu ####

# This section gives you the option to remove or add the registry keys#
Write-Host "Add or Remove Keys"
Write-Host "Type A to Add or R to Remove"
$option = Read-Host "What Would you like to do"
Write-Host "This may take up to a minute..."

#### ADDING KEYS ####
If($option -eq "A")
{ 
  
    New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "wincom32" -Value "C:\Program Files\Common Files\Services\wincom32.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" -Name "W32MixorQ@mm" -Value "C:\Program Files\Common Files\Services\w32MixorQamm.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKCU:\Software\Classes\*\ShellEx\ContextMenuHandlers" -Name "Slammer" -Value "C:\ProgramData\sqlslammer.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKCU:\Software\Classes\Directory\ShellEx\ContextMenuHandlers" -Name "ILOVEYOU" -Value "C:\Windows\System32\luvya.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" -Name "WannaCry" -Value "C:\wanacry.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "MRxCls" -Value "C:\Windows\MRxCls.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnce" -Name "MRxNet" -Value "C:\Windows\MRxNet.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKLM:\Software\Microsoft\Active Setup\Installed Components" -Name "w32.Assarm" -Value "C:\Windows\System32\Fun.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" -Name "W32.Assarm" -Value "C:\Windows\System32\SVIQ.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\UserDefaults" -Name "W32.Assarm" -Value "C:\Windows\System32\WinSit.exe" -PropertyType String -Force | Out-Null
       
}




#### REMOVING KEYS ####



elseif($option -eq "R")
{

    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "wincom32"
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" -Name "W32MixorQ@mm"
    Remove-ItemProperty -Path "HKCU:\Software\Classes\*\ShellEx\ContextMenuHandlers" -Name "Slammer"
    Remove-ItemProperty -Path "HKCU:\Software\Classes\Directory\ShellEx\ContextMenuHandlers" -Name "ILOVEYOU"
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" -Name "WannaCry"
    Remove-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "MRxCls"
    Remove-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnce" -Name "MRxNet"
    Remove-ItemProperty -Path "HKLM:\Software\Microsoft\Active Setup\Installed Components" -Name "w32.Assarm"
    Remove-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" -Name "W32.Assarm"
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\UserDefaults" -Name "W32.Assarm"

}


Else
{
Write-Host "Invalid Input"
}