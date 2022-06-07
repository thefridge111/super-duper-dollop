$Time = New-ScheduledTaskTrigger -At 12:00 -Once
$User = "Contoso\Administrator"
$PS = New-ScheduledTaskAction -Execute "PowerShell.exe"
Register-ScheduledTask -TaskName "SoftwareScan" -Trigger $Time -User $User -Action $PS