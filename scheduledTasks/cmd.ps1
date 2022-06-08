Import-Module ..\util\flag-util.psm1

CreateScheduledFlag -atTime "10:00" -name "cyber" -username "Administrator" -taskToExecute "cmd"