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
'corwinscripts',
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

Remove-Item -LiteralPath $modPath -Force -Recurse

foreach($folder in $folders){
	Copy-Item -Path $folder -Destination ($modPath + "/" + $folder) -Recurse
}

Copy-Item -Path ($tp2Name + ".tp2") -Destination $modPath 
Copy-Item -Path "weidu.exe" -Destination ($basePath + "/" + $exePath)
Copy-Item -Path "Release Notes.md" -Destination ($basePath + "/Release Notes.md")
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