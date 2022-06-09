########### Registry Additions ###########

<#
    
    The goal of this script is to fill several startup locations in the registry with an artifact.


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
        #### Checking If The Keys Are Present ####
           # Doesn't Work #
           <#
            Write-Host "Loading...."
            Start-Sleep 1
            Write-Host "..."
            Start-Sleep 1
            
                $CuRun = Get-ItemProperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Powershell"
                $CuRunOnce = Get-ItemProperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce\WATCHTHIS"
                $CuRunServices = Get-ItemProperty "HKCU:\Software\Classes\*\ShellEx\ContextMenuHandlers\Big-Deal"
                $CuRunServicesOnce = Get-ItemProperty "HKCU:\Software\Classes\Directory\ShellEx\ContextMenuHandlers\Test"
                $CuWindows = Get-ItemProperty "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Windows\I-wouldn't-delete-this-if-I-were-you."
                $wannacry = Get-ItemProperty "HKCU\Software\WanaCrypt0r\wd\qeriuwjhrf"
                $HkRun = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Powershell"
                $HkRun = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce\WATCHTHIS"
                $HkRun = Get-ItemProperty "HKLM:\Software\Microsoft\Active Setup\Installed Components\Please-Dont-Delete"
                $HkRun = Get-ItemProperty "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Common Startup\Kyle"
                $HkRun = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\UserDefaults\Test"
                Write-Host "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Powershell = $CuRun"
                Write-Host "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce\WATCHTHIS = $CuRunOnce"
                Write-Host "HKCU:\Software\Classes\*\ShellEx\ContextMenuHandlers\Big-Deal = $CuRunServices"
                Write-Host "HKCU:\Software\Classes\Directory\ShellEx\ContextMenuHandlers\Test = $CuRunServicesOnce"
                Write-Host "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Windows\I-wouldn't-delete-this-if-I-were-you. = $CuWindows"
                Write-Host "HKCU\Software\WanaCrypt0r\wd\qeriuwjhrf = $wannacry"
                Write-Host "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\powershell = $HKRUN"
                Write-Host "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce\WATCHTHIS = $HKRUNONCE"
                Write-Host "HKLM:\Software\Microsoft\Active Setup\Installed Components\Please-Dont-Delete = $HKRUNSERV"
                Write-Host "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Common Startup\Kyle = $HKRUNSERVONCE"
                Write-Host "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\UserDefaults\Test = $HKWinlogon"


                Read-Host
                
                #>
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
        #### Checking If The Keys Are Present ####
           # Doesn't Work #
           <#
            Write-Host "Loading...."
            Start-Sleep 1
            Write-Host "..."
            Start-Sleep 1
                $CuRun = Get-ItemProperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Powershell"
                $CuRunOnce = Get-ItemProperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce\WATCHTHIS"
                $CuRunServices = Get-ItemProperty "HKCU:\Software\Classes\*\ShellEx\ContextMenuHandlers\Big-Deal"
                $CuRunServicesOnce = Get-ItemProperty "HKCU:\Software\Classes\Directory\ShellEx\ContextMenuHandlers\Test"
                $CuWindows = Get-ItemProperty "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Windows\I-wouldn't-delete-this-if-I-were-you."
                $wannacry = Get-ItemProperty "HKCU\Software\WanaCrypt0r\wd\qeriuwjhrf"
                $HkRun = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Powershell"
                $HkRun = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce\WATCHTHIS"
                $HkRun = Get-ItemProperty "HKLM:\Software\Microsoft\Active Setup\Installed Components\Please-Dont-Delete"
                $HkRun = Get-ItemProperty "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Common Startup\Kyle"
                $HkRun = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\UserDefaults\Test"
                Write-Host "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Powershell = $CuRun"
                Write-Host "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce\WATCHTHIS = $CuRunOnce"
                Write-Host "HKCU:\Software\Classes\*\ShellEx\ContextMenuHandlers\Big-Deal = $CuRunServices"
                Write-Host "HKCU:\Software\Classes\Directory\ShellEx\ContextMenuHandlers\Test = $CuRunServicesOnce"
                Write-Host "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Windows\I-wouldn't-delete-this-if-I-were-you. = $CuWindows"
                Write-Host "HKCU\Software\WanaCrypt0r\wd\qeriuwjhrf = $wannacry"
                Write-Host "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\powershell = $HKRUN"
                Write-Host "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce\WATCHTHIS = $HKRUNONCE"
                Write-Host "HKLM:\Software\Microsoft\Active Setup\Installed Components\Please-Dont-Delete = $HKRUNSERV"
                Write-Host "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Common Startup\Kyle = $HKRUNSERVONCE"
                Write-Host "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\UserDefaults\Test = $HKWinlogon"

                Read-Host
                #>
}


Else
{
Write-Host "Invalid Input"
}


<#
[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]
[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce]
[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices]
[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce]
[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Userinit]

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]
[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunOnce]
[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunServices]
[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce]
[HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Windows]
#>
