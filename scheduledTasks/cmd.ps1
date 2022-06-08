# CreateScheduledFlag -atTime "10:00" -name "cyber" -username "Administrator" -taskToExecute "cmd"

$action = New-ScheduledTaskAction -Execute "cmd"
$trigger = New-ScheduledTaskTrigger -At "10:00"
$principal = "Administrator"
$settings = New-ScheduledTaskSettingsSet
$task = New-ScheduledTask -TaskName "cyber" -Action $action -Principal $principal -Trigger $trigger -Settings $settings
Register-ScheduledTask T1 -InputObject $task