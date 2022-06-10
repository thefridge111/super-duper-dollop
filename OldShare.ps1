##### share.ps1 #####
<#
By: Cpl Cook, Remington
This script allows for a user to make changes to a share easily via cli.
In order to use this script you must have the following prerequisites.
1) Be on the same network that the share is being hosted on.
2) Know the network share location
3) Have access to the share

If the powershell execution policy is not set to bypass there are 2 options
1) Using an administrator account run the command:
        Set-ExecutionPolicy bypass
        When prompted press 'A' Then press enter.
2) Run the commands that are in this script one line at a time instead of trying to run the script as a whole.


#>
   
Write-Host "Welcome to Share.ps1"
Write-Host "Good Example: \\10.10.0.3\Share"
Write-Host "Bad Example: \\10.10.0.5"
Write-Host "Bad Example: 10.10.0.5\Share"
$Share = Read-Host -Prompt "What is the path of the share drive?" 
$Bool = "True"


While($Bool -eq "True")
{
#### Menu ####        

    Write-Host "A) List directory contents"
    Write-Host "B) Change Directory"
    Write-Host "C) Delete specific file"
    Write-Host "D) Collect specific file"
    Write-Host "E) Collect or Delete all files with a specific extension"
    Write-Host "F) Delete all files"
    Write-Host "G) Collect all files"
    Write-Host "H) Collect then delete all files"
    Write-Host "I) Delete Files over time"
    Write-Host "Q) Quit"
    Write-Host "Type the letter associated with what you want to do and then press enter"
    $Option = Read-Host
      
        
    #### Lists the contents of the $share variable ####
        if($Option -eq "A")
        {
            Get-ChildItem $Share

        }
    #### Changes the share variable to whatever the user sets it to ####
        elseif($Option -eq "B")
        {
            Write-Host "Current Directory: $Share"
            Write-Host "Example of how to change directory:"
            Write-Host ""
            Write-Host ""
            Write-Host "Type the full path to where you want to go to: C:\Temp\2018"
            pwd
            $Share = Read-Host -Prompt "Type the full path to where you want to go to"

        }
    #### Deletes a specific file from the $share directory or recursively delete a directory ####
        elseif($Option -eq "C")
        {
            clear
            Write-Host "Specific File Deletion"
            Write-Host "A) Directory"
            Write-Host "B) A Single File"
            $choice = Read-Host
            if($choice -eq "A")
            {
                Get-ChildItem $share
                $delete = read-host -prompt "Directory to be deleted"
                rm -Recurse -Force $Share\$delete
                clear
                Get-ChildItem $Share
            }
            elseif($choice -eq "B")
            {
                Get-ChildItem $share
                $delete = read-host -prompt "File to be deleted"
                rm -Force $Share\$delete
                clear
                Get-ChildItem $Share
            }
            else
            {
                Write-Host "Invalid input"
            }
        }

    #### Collect specific File ####                
        elseif($Option -eq "D")
        {
                mkdir C:\Collection -ErrorAction SilentlyContinue
                $file = Read-Host -Prompt "filename:"
                cp $Share\$file C:\Collection\$file
                Test-Path C:\Collection\$file
        }
#### Collects/Deletes files with a specific extension ####
        elseif($Option -eq "E")
        {
                clear
                Write-Host "A) Collect"
                Write-Host "B) Delete"
                $choice = Read-Host
                if($choice -eq "A")
                {
                    Get-ChildItem $share
                    Write-Host "do not put the dot in the extension"
                    Write-Host "Example:"
                    Write-Host "Extension: txt"
                    $collect = read-host -prompt "Extension"
                    mkdir C:\Collection -ErrorAction SilentlyContinue
                    cp -Force $share\*.$collect C:\Collection\
                    clear
                    Get-ChildItem $Share
                }
                elseif($choice -eq "B")
                {
                    Get-ChildItem $share
                    Write-Host "do not put the dot in the extension"
                    Write-Host "Example:"
                    Write-Host "Extension: txt"
                    $delete = read-host -prompt "Extension"
                    rm -Force $share\*.$delete
                    clear
                    Get-ChildItem $Share
                }
                else
                {
                    Write-Host "Invalid Input"
                }
        }

    #### Delete All Files ####
        elseif($Option -eq "F")
        {
            rm -Recurse $Share
            Test-Path $Share
            Read-Host -Prompt "Press enter to end"

        }

    #### Collect All Files ####
        elseif($Option -eq "G")
        {
            mkdir C:\Collection
            cp $Share\* C:\Collection
            ls C:\Collection
            Read-Host -Prompt "Press enter to end"
        }

    #### Collect All Files Then Delete All Files ####
        elseif($Option -eq "H")
        {
            mkdir C:\Collection
            cp $Share\* C:\Collection
            ls C:\Collection
            Read-Host -Prompt "Press enter to remove the files from the share. If you no longer want to delete all of the files press Ctl + C"
            rm -Recurse $Share
            Test-Path $Share
            Read-Host -Prompt "Press enter to end"
            
        }
 
    #### Delete Files Over Time  ####
        elseif($Option -eq "I")
        {
            Write-Host "WARNING: EXPERIMENTAL" -ForegroundColor Red
            Write-Host "Press Enter To Continue"
            Read-Host
            $Sleep = Read-Host -prompt "How long would you like to set your interval for in seconds"
            $Path = Test-Path $Share
            While($Path -eq "True")
            {
                #Get-ChildItem $Share | ForEach-Object {Remove-Item -LiteralPath $_.Name}
                #$Path = Test-Path $Share
                $files = Get-ChildItem -Path $Share -Recurse
                $Sample = $files | Get-Random -Count 1 | Remove-Item -Force -Recurse
                $Path = Test-Path $Share
                Start-Sleep $Sleep
            }
        }

    #### Quit ####
        elseif($Option -eq "Q")
        {
            Write-Host "Complete"
            Return

        }
        else
        {
            Write-Host "Invalid Input"

        }

}