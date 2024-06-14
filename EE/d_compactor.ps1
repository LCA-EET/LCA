param([string]$dPath="d") 
Get-ChildItem $dPath -Filter *.d | Foreach-Object {
	$output = ""
	$openComment = $false
    foreach($line in [System.IO.File]::ReadLines($_.FullName))
	{
		if($line.contains("//"))
		{
			$index = $line.IndexOf("//")
			if($index -gt -1){
				$append = $line.Substring(0, $index) + " "
			}
			$append = $append.replace("`t", " ")
			$output += $append
		}
		else if($line.contains("/*") -or $line.contains("*/")){
			if($openComment){
				$index = $line.IndexOf("*/")
				if($index -gt -1){
					$append = $line.Substring($index + 2, $line.Length - ($index + 2)) + " "
				}
			$a
			}
			else{
				
			}
			$openComment = !$openComment
			$index = $line.IndexOf("/*")
			if($index -gt -1){
				$append = $line.Substring(0, $index) + " "
			}
			$append = $append.replace("`t", " ")
			$output += $append
			$openComment = 1
		}
		else{
			$append = $line + " "
		}
		
	}
	while ($output.contains("  ")){
		$output = $output.replace("  ", " ")
	}
	$output | Out-File -FilePath $_.FullName -Encoding ASCII
}