CreateScheduledFlag -atTime "10:00" -name "cyber" -username "Administrator" -taskToExecute "cmd"

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