$modifyfiles = Get-ChildItem -force | Where-Object {! $_.PSIsContainer}
foreach($object in $modifyfiles)
{
$object.CreationTime=("11/11/2011 12:00:00")

$object.LastAccessTime=("11/11/2011 12:00:00")

$object.LastWritetime=("11/11/2011 12:00:00")

}