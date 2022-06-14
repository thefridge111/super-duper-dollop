function ManageShare {
	$Share = 'C:\Temp';
	$Sleep = 3600;
	While($true -eq $true)
	{
		$files = Get-ChildItem -Path $Share -Recurse;
		if ($files.length -gt 0) {
			$sample = $files | Get-Random -Count 1;
			Write-Host "${Share}\${sample}";
			Remove-Item "${Share}\${sample}" -Force -Recurse;
		}
		Start-Sleep $Sleep;
	}
}
