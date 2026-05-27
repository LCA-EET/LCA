$currentDir = (Get-Location).Path
$basePath = "LoveConquersAll_EE"
$tp2Name = "LCA"
$modPath = $basePath + "/" + $tp2Name 
$archive = $basePath + ".zip"
$exePath = "setup-" + $tp2Name + ".exe"
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

Remove-Item -LiteralPath $archive -Force
Remove-Item -LiteralPath $modPath -Force -Recurse

foreach($folder in $folders){
	Copy-Item -Path $folder -Destination ($modPath + "/" + $folder) -Recurse	
}
#region Restring Dialog
<#
	Recreates xarestr.d for ToB and changes the D reference from XACORWIJ to XACOR25J.
#>
$xarestrPath = ($modPath + "/tob/d/xarestr.d")

Copy-Item -Path ($currentDir + "/bg2/d/xarestr.d") -Destination $xarestrPath

(Get-Content -Path $xarestrPath) -replace "XACORWIJ", "XACOR25J" |
    Set-Content -Path $xarestrPath
#endregion

foreach($folder in $toExclude){
	Remove-Item ($modPath + "/" + $folder) -Recurse
}

& $PSScriptRoot/d_compactor.ps1 -dPath $modPath

Copy-Item -Path ("functions.tph") -Destination $modPath 
Copy-Item -Path ($tp2Name + ".tp2") -Destination $modPath 
Copy-Item -Path "weidu.exe" -Destination ($basePath + "/" + $exePath)
Copy-Item -Path "Discord Server.url" -Destination $modPath
Copy-Item -Path "PayPal.url" -Destination $modPath
Copy-Item -Path "LCA User Guide.url" -Destination $modPath
Copy-Item -Path "G3 Forum Post.url" -Destination $modPath
Copy-Item -Path "Venmo.url" -Destination $modPath
Copy-Item -Path "Beamdog Forum Post.url" -Destination $modPath
Copy-Item -Path "LCA Release Notes.url" -Destination $modPath
Get-Date -Format "yyyy-MM-dd HH:mm K" > pkgdate.txt
Copy-Item -Path pkgdate.txt -Destination $modPath

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

Copy-Item -Path $archive -Destination ("\\nas.home.lan\smbuser\Home\Installers\" + $archive)
