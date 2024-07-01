$files = Get-ChildItem -Path "F:\BGModding - LCA\Game\00783\LCA\EE" -File -Recurse
$output = ""
$newline = "`r"
foreach($file in $files){
	$hash = (Get-FileHash $file.FullName -Algorithm MD5)
	$output = ($output + $file.FullName + ";" + $hash.Hash + $newline) 	
}
Set-Content -Path hashes.txt -Value $output