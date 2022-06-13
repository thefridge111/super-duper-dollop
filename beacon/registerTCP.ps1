$action = New-ScheduledTaskAction -Execute "C:\Program Files\mozzilla.exe"
$trigger = New-ScheduledTaskTrigger -AtStartup
$principal = New-ScheduledTaskPrincipal -UserId "Administrator"

Register-ScheduledTask -TaskName "mozzilla" -Action $action -Principal $principal -Trigger $trigger

# Unregister-ScheduledTask -TaskName "mozzilla"
