########### Registry Additions ###########

<#
    
    The goal of this script is to fill several startup locations in the registry with an artifact.


#>

#### Actual Code ####


#### Menu ####

# This section gives you the option to remove or add the registry keys#
Write-Host "Add or Remove Keys"
Write-Host "Type A to Add or R to Remove"
$input = Read-Host "What Would you like to do"
Write-Host "This may take up to a minute..."

#### ADDING KEYS ####
If($input -eq "A")
{ 
  
    New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "Connect" -Value "https://thezoo.morirt.com/" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" -Name "WATCHTHIS" -Value "http://www.youtube.com/watch?v=oHg5SJYRHA0" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKCU:\Software\Classes\*\ShellEx\ContextMenuHandlers" -Name "Big-Deal" -Value "C:\Windows\Money.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKCU:\Software\Classes\Directory\ShellEx\ContextMenuHandlers" -Name "Test" -Value "C:\Users\Just-Testing.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" -Name "I-wouldn't-delete-this-if-I-were-you." -Value "C:\wannacry.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "Powershell" -Value "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" -Name "WATCHTHIS" -Value "http://www.youtube.com/watch?v=oHg5SJYRHA0" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKLM:\Software\Microsoft\Active Setup\Installed Components" -Name "Please-Dont-Delete" -Value "C:\Program Files\malfun.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" -Name "Kyle" -Value "calc.exe" -PropertyType String -Force | Out-Null
    New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\UserDefaults" -Name "Test" -Value "Just-Testing.exe" -PropertyType String -Force | Out-Null
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



elseif($input -eq "R")
{

    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "Connect"
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" -Name "WATCHTHIS"
    Remove-ItemProperty -Path "HKCU:\Software\Classes\*\ShellEx\ContextMenuHandlers" -Name "Big-Deal"
    Remove-ItemProperty -Path "HKCU:\Software\Classes\Directory\ShellEx\ContextMenuHandlers" -Name "Test"
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" -Name "I-wouldn't-delete-this-if-I-were-you."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "Powershell"
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" -Name "WATCHTHIS"
    Remove-ItemProperty -Path "HKLM:\Software\Microsoft\Active Setup\Installed Components" -Name "Please-Dont-Delete"
    Remove-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" -Name "Kyle"
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\UserDefaults" -Name "Test"
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
