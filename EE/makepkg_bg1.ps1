$basePath = "LoveConquersAll_EE_BG1"
$tp2Name = "LCA"
$modPath = $basePath + "/" + $tp2Name 
$archive = $basePath + ".zip"
$exePath = "setup-" + $tp2Name + ".exe"
$testDir = "F:\Baldur's Gate EET\00766\"
$folders = @(
'bg1',
'common',
'tra'
)

Remove-Item -LiteralPath $modPath -Force -Recurse

foreach($folder in $folders){
	Copy-Item -Path $folder -Destination ($modPath + "/" + $folder) -Recurse
}

Copy-Item -Path ($tp2Name + ".tp2") -Destination $modPath 

Copy-Item -Path $modPath -Destination $testDir -Recurse