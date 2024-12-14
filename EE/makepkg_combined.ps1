$basePath = "LoveConquersAll_EE"
$tp2Name = "LCA"
$modPath = $basePath + "/" + $tp2Name 
$archive = $basePath + ".zip"
$exePath = "setup-" + $tp2Name + ".exe"
$testDir = "F:\Baldur's Gate EE\00783\"
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

Remove-Item -LiteralPath $archive -Force
Remove-Item -LiteralPath $modPath -Force -Recurse

foreach($folder in $folders){
	Copy-Item -Path $folder -Destination ($modPath + "/" + $folder) -Recurse	
}

foreach($folder in $toExclude){
	Remove-Item ($modPath + "/" + $folder) -Recurse
}

& $PSScriptRoot/d_compactor.ps1 -dPath $modPath

Copy-Item -Path ("functions.tph") -Destination $modPath 
Copy-Item -Path ($tp2Name + ".tp2") -Destination $modPath 
Copy-Item -Path "weidu.exe" -Destination ($basePath + "/" + $exePath)
Copy-Item -Path "Discord Server.url" -Destination ($basePath + "/Discord Server.url")
Copy-Item -Path "PayPal.url" -Destination ($basePath + "/PayPal.url")
Copy-Item -Path "LCA User Guide.url" -Destination ($basePath + "/LCA User Guide.url")
Copy-Item -Path "G3 Forum Post.url" -Destination ($basePath + "/G3 Forum Post.url")
Copy-Item -Path "Venmo.url" -Destination ($basePath + "/Venmo.url")
Copy-Item -Path "Beamdog Forum Post.url" -Destination ($basePath + "/Beamdog Forum Post.url")
Copy-Item -Path "LCA Release Notes.url" -Destination ($basePath + "/LCA Release Notes.url")
#Copy-Item -Path "Release Notes.md" -Destination ($basePath + "/Release_Notes_LCA.md")
#Copy-Item -Path "../User Guide.pdf" -Destination ($basePath + "/User Guide.pdf")
#Remove-Item -LiteralPath ($testDir + $tp2Name) -Force -Recurse

#Copy-Item -Path $modPath -Destination $testDir -Recurse

#Remove-Item -LiteralPath $basePath -Force -Recurse


$7zipPath = "$env:ProgramFiles/7-Zip/7z.exe"

if (-not (Test-Path -Path $7zipPath -PathType Leaf)) {
	$7zipPath = "F:/Program Files/7-Zip/7z.exe"
}

Set-Alias Start-SevenZip $7zipPath

$Source = "./" + $basePath + "/*"
$Target = "./" + $archive

Start-SevenZip a -mx=9 $Target $Source

Remove-Item -LiteralPath $basePath -Force -Recurse
Get-FileHash $archive -Algorithm SHA256 > SHA256.txt

Copy-Item -Path $archive -Destination ("\\192.168.1.88\smbuser\Home\Installers\" + $archive)