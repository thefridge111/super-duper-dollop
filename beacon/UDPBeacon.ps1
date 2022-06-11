[int] $Port = 20000 
$IP = "127.0.0.1" 
$Address = [system.net.IPAddress]::Parse($IP) 
$End = New-Object System.Net.IPEndPoint $address, $port 
$Saddrf   = [System.Net.Sockets.AddressFamily]::InterNetwork 
$Stype    = [System.Net.Sockets.SocketType]::Dgram 
$Ptype    = [System.Net.Sockets.ProtocolType]::UDP 
$Sock     = New-Object System.Net.Sockets.Socket $saddrf, $stype, $ptype 
$Sock.TTL = 26 


while ($true -eq $true) {
    $Enc     = [System.Text.Encoding]::ASCII;
    $Message = Get-LocalUser | Where-Object { $_.Enabled } | Select-Object -Property Name;

    foreach ($m in $Message) {
        $Buffer  = $Enc.GetBytes([string]$m);

        # Send the buffer 
        Write-Host($m)
        Write-Host($Buffer)
        $Sock.SendTo($Buffer, $end) 
    }
    Start-Sleep 300
}