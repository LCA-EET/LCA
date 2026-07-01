$weiduApps		= @("weidu.exe", "weidu_linux")
$weiduExts		= @(".exe", "")
$weiduArchives 	= @("_win", "_linux")

$basePath = "LCA"
$tp2Name = "LCA"
$modPath = $basePath + "/" + $tp2Name 
$exePath = "setup-" + $tp2Name
$folders = @(
'assistant',
'bg1',
'bg2',
'compat',
'cre_scripts',
'generated/a',
'generated/c',
'generated/d',
'generated/f',
'generated/g',
'generated/h',
'ogg',
'rbg',
'sod',
'tob',
'tra'
)

$toExclude = @(
	'generated/a/dlg',
	'generated/a/tra',
	'generated/a/songsList.txt',
	'generated/c/songsList.txt',
	'generated/d/songsList.txt',
	'generated/f/songsList.txt',
	'generated/g/songsList.txt'
)

foreach($weiduArchive in $weiduArchives){
	Remove-Item -LiteralPath ($basePath + $weiduArchive + ".zip") -Force
}

Remove-Item -LiteralPath $basePath -Force -Recurse

foreach($folder in $folders){
	Copy-Item -Path $folder -Destination ($modPath + "/" + $folder) -Recurse	
}

& $PSScriptRoot/d_compactor.ps1 -dPath $modPath

#region Restring Dialog
	#Recreates xarestr.d for ToB and changes the D reference from XACORWIJ to XACOR25J.
	$xarestrPath = ($modPath + "/tob/d/xarestr.d")

	Copy-Item -Path ($currentDir + "/bg2/d/xarestr.d") -Destination $xarestrPath

	(Get-Content -Path $xarestrPath) -replace "XACORWIJ", "XACOR25J" |
		Set-Content -Path $xarestrPath
#endregion

foreach($folder in $toExclude){
	Remove-Item ($modPath + "/" + $folder) -Recurse
}

Copy-Item -Path ($tp2Name + ".tp2") -Destination $modPath 
Copy-Item -Path "functions.tph" -Destination ($modPath + "/functions.tph")
Copy-Item -Path "LCA User Guide.url" -Destination ($modPath + "/LCA User Guide.url")
Copy-Item -Path "Discord Server.url" -Destination ($modPath + "/Discord Server.url")
Copy-Item -Path "Venmo.url" -Destination ($modPath + "/Venmo.url")
Copy-Item -Path "PayPal.url" -Destination ($modPath + "/PayPal.url")
Copy-Item -Path "G3 Forum Post.url" -Destination $modPath
Copy-Item -Path "Beamdog Forum Post.url" -Destination $modPath
Copy-Item -Path "release notes.md" -Destination ($modPath + "/Release Notes.md")

for ($i = 0; $i -lt $weiduApps.Length; $i++) {
	if($i -gt 0){
		Write-Output "Deleting " ($basePath + "/" + $exePath + $weiduExts[$i-1])
		Remove-Item -LiteralPath ($basePath + "/" + $exePath + $weiduExts[$i-1])
	}
    Copy-Item -Path $weiduApps[$i] -Destination ($basePath + "/" + $exePath + $weiduExts[$i])
	
	$7zipPath = "$env:ProgramFiles/7-Zip/7z.exe"

	if (-not (Test-Path -Path $7zipPath -PathType Leaf)) {
		$7zipPath = "F:/Program Files/7-Zip/7z.exe"
	}

	Set-Alias Start-SevenZip $7zipPath

	$archive = $basePath + $weiduArchives[$i] + ".zip"
	$Source = "./" + $basePath + "/*"
	$Target = "./" + $archive

	Start-SevenZip a -mx=9 $Target $Source

	#Remove-Item -LiteralPath $basePath -Force -Recurse
	#Get-FileHash $archive -Algorithm SHA256 > SHA256.txt

	Copy-Item -Path $archive -Destination ("\\nas.home.lan\smbuser\Home\Installers\" + $archive)
}

Remove-Item -LiteralPath $basePath -Force -Recurse

