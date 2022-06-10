# super-duper-dollop
Collection of scripts to plant flags on a windows system

## Contents
- [Blackjack](./blackjack/) - Scripts to start named pipes for [server](./blackjack/BlackjackDealer.ps1) and [client](./blackjack/BlackJackplayer.ps1)
- [File artifacts](./files/) - Script and resources to plant powershell scripts onto target machine
- [Scheduled Tasks](./scheduledTasks/) - Scripts to start a variety of scheduled tasks
- [Clear All Event Logs](./ClearAllEventLogs.ps1) - Script to clears all logs on target system
- [Hidden Data Streams](./HiddenDataStreamsFlagPlacer.ps1) - Script to create alternate data streams
- [Registry Keys](./Registry.ps1) - Adds registry keys for a variety of threats
- [TimeStomp](./TimeStompFiles.ps1) - 'TimeStomps' a number of files 
- [Share](./OldShare.ps1) - Script that provides different options to manipulate a share drive
- [Fake Backup files](./CreateDummyStorage.ps1) - Creates a number of random files to simulate backups
- [Delete Random Files](./ManageShare.psm1) - Deletes a random file out of specified directory

## How to Use
The entire repository will be needed on the specific host to run. This is as a result of the utility functions required by some of the scripts. 

In all cases the scripts can be invoked the usual way via `.\<script_name>`. The exception to this are planting the file artifacts. In this case one needs to run the [file-artifacts.ps1](./files/file-artifacts.ps1) script to plant the desired files on the system: `.\files\file-artifacts.ps1`.

To make sending these over Cobalt Strike beacons easier we recommend turning the entirety of the script files into a single line via `cat` and `awk` using pipes:
- `cat <file_name> | awk '{print}' ORS='" '` -> This will output the string to STDOUT __Not recommended for long files__ 
- `cat <file_name> | awk '{print}' ORS='" ' > command.txt` -> Does the same as described above but pipes output into a file called `command.txt` for easier GUI work. 