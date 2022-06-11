$action = New-ScheduledTaskAction -Execute "C:\Windows\accnt-service.exe"
$trigger = New-ScheduledTaskTrigger -AtStartup
$principal = New-ScheduledTaskPrincipal -UserId "Administrator"

Register-ScheduledTask -TaskName "accnt-service" -Action $action -Principal $principal -Trigger $trigger

# Unregister-ScheduledTask -TaskName "accnt-service"
