# CreateScheduledFlag -atTime "10:00" -name "cyber" -username "Administrator" -taskToExecute "cmd"

$action = New-ScheduledTaskAction -Execute "cmd"
$trigger = New-ScheduledTaskTrigger -At "10:00" -Daily
$principal = New-ScheduledTaskPrincipal -UserId "Administrator"

Register-ScheduledTask -TaskName "cyber" -Action $action -Principal $principal -Trigger $trigger
Disable-ScheduledTask -TaskName "cyber"

# Unregister-ScheduledTask -TaskName "cyber"
