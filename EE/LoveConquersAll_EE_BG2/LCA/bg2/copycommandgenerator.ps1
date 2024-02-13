$basePath = "%MOD_FOLDER%/bg2/"
$outPath = "copyCommands.txt"

$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition

$folders = Get-ChildItem -Directory $scriptPath
$outString = ""
$folderName = ""
foreach($folder in $folders){
	$files = Get-ChildItem -Recurse $folder
	if($folder -ne $folderName){
		if($folderName -ne ""){
			$outString += "//}"
			$outString += [Environment]::NewLine
		}
		$foldername = $folder
		$outString += "//{ " + $foldername  
		$outString += [Environment]::NewLine
	}
	
	foreach($file in $files){
		$outString += "`tCOPY ~" + $basePath + $folder + "/" + $file + "~ ~override~"  
		$outString += [Environment]::NewLine
	}
}
Out-File -FilePath $outPath -InputObject $outString