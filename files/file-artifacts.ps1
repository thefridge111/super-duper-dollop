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

Function CreateScheduledFlag {
    param (
        [switch][Parameter(Mandatory=$false)] $random,
        [switch][Parameter(Mandatory=$false)] $atStart,
        [string][Parameter(Mandatory=$false)] $frequency,
        [string][Parameter(Mandatory=$false)] $atTime,
        [string][Parameter(Mandatory)] $name,
        [string][Parameter(Mandatory)] $userName,
        [string][Parameter(Mandatory)] $taskToExecute
    )
    if ($atStart) {
        $Time = New-ScheduledTaskTrigger -AtStartup
    } elseif ($random) {
        $Time = New-ScheduledTaskTrigger -RepetitionInterval "01:00" -RandomDelay "00:20"
    } elseif ($frequency -gt 0) {
        $Time = New-ScheduledTaskTrigger -RepetitionInterval $frequency
    } elseif ($atTime -ne "") {
        $Time = New-ScheduledTaskTrigger -At $atTime
    } else {
        $Time = New-ScheduledTaskTrigger -At 12:00 -Once
    }

    $task = New-ScheduledTaskAction -Execute $taskToExecute
    Register-ScheduledTask -TaskName $name -Trigger $Time -User $userName -Action $task
}

CopyFlag -flagName "flag1.ps1" -destBaseDir "C:\" -destDirName "Temp" -destName "game.exe"
CopyFlag -flagName "flag2.ps1" -destBaseDir  "C:\Users\" -destDirName  "YankeeTwoTwo" -destName "explore.exe"

CreateScheduledFlag -name "svchast.ext" -username "Administrator" -taskToExecute "C:\Users\YankeeTwoTwo\explore.exe" -atStart