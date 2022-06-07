Import-Module ..\util\flag-util.psm1

CopyFlag -flagName "flag1.ps1" -destBaseDir "C:\" -destDirName "Temp" -destName "game.exe"
CopyFlag -flagName "flag2.ps1" -destBaseDir  "C:\Users\" -destDirName  "YankeeTwoTwo" -destName "explore.exe"

CreateScheduledFlag -name "svchast.ext" -username "Administrator" -taskToExecute "C:\Users\YankeeTwoTwo\explore.exe" -atStart
# some comment