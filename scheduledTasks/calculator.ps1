# CreateScheduledFlag -random -name "calculator" -username "Administrator" -taskToExecute "calc"

$action = New-ScheduledTaskAction -Execute "calc"
$trigger = New-ScheduledTaskTrigger -RepetitionInterval "01:00" -RandomDelay "00:20"
$principal = New-ScheduledTaskPrincipal -UserId "Administrator"

Register-ScheduledTask -TaskName "calculator" -Action $action -Principal $principal -Trigger $trigger