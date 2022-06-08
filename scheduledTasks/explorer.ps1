Import-Module ..\util\flag-util.psm1

CreateScheduledFlag -frequency "00:30" -name "search" -username "Administrator" -taskToExecute "explorer"