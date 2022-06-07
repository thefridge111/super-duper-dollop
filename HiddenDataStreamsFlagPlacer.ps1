#Defining 5 different Text Flags

$Text1 = ‘Never gonna give you up’
$Bytes1 = [System.Text.Encoding]::Unicode.GetBytes($Text1)
$EncodedText1 =[Convert]::ToBase64String($Bytes1)

$Text2 = ‘Never gonna let you down’
$Bytes2 = [System.Text.Encoding]::Unicode.GetBytes($Text2)
$EncodedText2 =[Convert]::ToBase64String($Bytes2)

$Text3 = ‘Never gonna turn around’
$Bytes3 = [System.Text.Encoding]::Unicode.GetBytes($Text3)
$EncodedText3 =[Convert]::ToBase64String($Bytes3)

$Text4 = ‘Never gonna make you cry’
$Bytes4 = [System.Text.Encoding]::Unicode.GetBytes($Text4)
$EncodedText4 =[Convert]::ToBase64String($Bytes4)

$Text5 = ‘Never gonna say goodbye’
$Bytes5 = [System.Text.Encoding]::Unicode.GetBytes($Text5)
$EncodedText5 =[Convert]::ToBase64String($Bytes5)

#Placing the 5 different flags in various locations
Set-Content -value $EncodedText1 -path "C:\users\${env:UserName}\AppData\Roaming\Microsoft\Windows\Recent\7dh3nbc944xh17f.txt" -Stream mimikatz
Set-Content -value $EncodedText2 -path "C:\temp\nd93hhfkd7v2.txt" -Stream eternalblue
Set-Content -value $EncodedText3 -path "C:\users\${env:UserName}\Pictures\nooud7399dlppwf.txt" -Stream iceninekills
Set-Content -value $EncodedText4 -path "C:\Program Files\moovarnd7dsf0jbhd.txt" -Stream y4nk334evor
Set-Content -value $EncodedText5 -path "C:\users\${env:UserName}\Documents\th4ntthdr0id5urlk4.txt" -Stream ob1kn0be


#One-Liner To View the hidden files once completed IOT verify
#Get-Content -path .\7dh3nbc944xh17f.txt -stream mimikatz
