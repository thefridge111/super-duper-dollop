function CopyFlag {
    param (
        [string] [Parameter(Mandatory=$false)] $flagDirectory,
        [string] [Parameter(Mandatory)] $flagName,
        [string] [Parameter(Mandatory)] $destBaseDir,
        [string] [Parameter(Mandatory)] $destDirName,
        [string] [Parameter(Mandatory)] $destName
    )
    
    if ($flagDirectory -eq $null) {
        $flagDirectory = Get-Location
    }

    if ((Test-Path -Path "${destBaseDir}${destDirName}") -eq $false) {
        New-Item -Path $destBaseDir -Name $destDirName -ItemType "directory"
    }

    $flagLocation = "${flagDirectory}${flagName}"
    $flagDestination = "${destBaseDir}${destDirName}\${destName}"

    Copy-Item $flagLocation -Destination $flagDestination
}