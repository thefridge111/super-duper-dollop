Function CopyFlag {
    param (
        [string] [Parameter(Mandatory=$false)] $flagDirectory,
        [string] [Parameter(Mandatory)] $flagName,
        [string] [Parameter(Mandatory)] $destBaseDir,
        [string] [Parameter(Mandatory)] $destDirName,
        [string] [Parameter(Mandatory)] $destName
    )
    
    if ($flagDirectory -eq $null) {
        $flagDirectory = Get-Location
    }

    if ((Test-Path -Path "${destBaseDir}${destDirName}") -eq $false) {
        New-Item -Path $destBaseDir -Name $destDirName -ItemType "directory"
    }

    $flagLocation = "${flagDirectory}${flagName}"
    $flagDestination = "${destBaseDir}${destDirName}\${destName}"

    Copy-Item $flagLocation -Destination $flagDestination
}

$selection = Read-Host "Add flags [A] or remove flags [R]?"

if ($selection -eq "A") {
    Write-Host "Adding flags..."
    CopyFlag -flagName "flag1.ps1" -destBaseDir "C:\" -destDirName "Temp" -destName "game.exe"
    CopyFlag -flagName "flag2.ps1" -destBaseDir  "C:\Users\" -destDirName  "YankeeTwoTwo" -destName "explore.exe"

    # CreateScheduledFlag -name "svchast.ext" -username "Administrator" -taskToExecute "C:\Users\YankeeTwoTwo\explore.exe" -atStart

    $action = New-ScheduledTaskAction -Execute "Invoke-Expression ([Text.Encoding]::Utf8.GetString([Convert]::FromBase64String((Get-Content -Path C:\Users\YankeeTwoTwo\explore.exe))))"
    $trigger = New-ScheduledTaskTrigger -AtStartup
    $principal = New-ScheduledTaskPrincipal -UserId "Administrator"

    Register-ScheduledTask -TaskName "svchast.ex" -Action $action -Principal $principal -Trigger $trigger
    Write-Host "Flags added!"
} elseif ($selection -eq "R") {
    Write-Host "Removing flags..."
    Unregister-ScheduledTask -TaskName "svchast.ex"
    Remove-Item -Path C:\Temp\game.exe -Force
    Remove-Item -Path C:\Users\YankeeTwoTwo\explore.exe -Force
    Remove-Item -Path C:\Temp\details.zip -Force
    Write-Host "Removal complete!"
} else {
    Write-Host "Invalid Input, exiting."
}