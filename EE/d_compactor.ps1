param([string]$dPath="d") 
Get-ChildItem $dPath -Filter *.d | Foreach-Object {
	$output = ""
    foreach($line in [System.IO.File]::ReadLines($_.FullName))
	{
		$index = $line.IndexOf("/")
		if($index -gt -1){
			$append = $line.Substring(0, $index) + " "
		}
		else{
			$append = $line + " "
		}
		$append = $append.replace("`t", " ")
		$output += $append
	}
	while ($output.contains("  ")){
		$output = $output.replace("  ", " ")
	}
	$output | Out-File -FilePath $_.FullName -Encoding ASCII
}