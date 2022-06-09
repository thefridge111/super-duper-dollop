# CreateScheduledFlag -frequency "00:30" -name "search" -username "Administrator" -taskToExecute "explorer"

$action = New-ScheduledTaskAction -Execute "explorer"
$trigger = New-ScheduledTaskTrigger -RepetitionInterval "00:30" -At "14:00" -Once
$principal = New-ScheduledTaskPrincipal -UserId "Administrator"

Register-ScheduledTask -TaskName "search" -Action $action -Principal $principal -Trigger $trigger

# Unregister-ScheduledTask -TaskName "search"