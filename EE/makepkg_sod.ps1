$basePath = "LoveConquersAll_EE_SoD"
$tp2Name = "LCA"
$modPath = $basePath + "/" + $tp2Name 
$archive = $basePath + ".zip"
$exePath = "setup-" + $tp2Name + ".exe"
$testDir = "F:\Baldur's Gate EET\00806\"
$folders = @(
'assistant',
'sod',
'tra'
)

Remove-Item -LiteralPath $modPath -Force -Recurse

foreach($folder in $folders){
	Copy-Item -Path $folder -Destination ($modPath + "/" + $folder) -Recurse
}

Copy-Item -Path ($tp2Name + ".tp2") -Destination $modPath 

Remove-Item -LiteralPath ($testDir + $tp2Name) -Force -Recurse

Copy-Item -Path $modPath -Destination $testDir -Recurse