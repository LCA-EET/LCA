Remove-Item -LiteralPath "LoveConquersAll_EET/LCA" -Force -Recurse
Remove-Item "LoveConquersAll_EET.zip" -Force
Remove-Item "setup-LCA.exe" -Force

Copy-Item -Path "2DA" -Destination "LoveConquersAll_EET/LCA/2DA" -Recurse
Copy-Item -Path "ARE" -Destination "LoveConquersAll_EET/LCA/ARE" -Recurse
Copy-Item -Path "BAF" -Destination "LoveConquersAll_EET/LCA/BAF" -Recurse
Copy-Item -Path "BAM" -Destination "LoveConquersAll_EET/LCA/BAM" -Recurse
Copy-Item -Path "BMP" -Destination "LoveConquersAll_EET/LCA/BMP" -Recurse
Copy-Item -Path "CRE" -Destination "LoveConquersAll_EET/LCA/CRE" -Recurse
Copy-Item -Path "D" -Destination "LoveConquersAll_EET/LCA/D" -Recurse
Copy-Item -Path "ITM" -Destination "LoveConquersAll_EET/LCA/ITM" -Recurse
Copy-Item -Path "MOS" -Destination "LoveConquersAll_EET/LCA/MOS" -Recurse
Copy-Item -Path "STO" -Destination "LoveConquersAll_EET/LCA/STO" -Recurse
Copy-Item -Path "TIS" -Destination "LoveConquersAll_EET/LCA/TIS" -Recurse
Copy-Item -Path "TRA" -Destination "LoveConquersAll_EET/LCA/TRA" -Recurse
Copy-Item -Path "WAV" -Destination "LoveConquersAll_EET/LCA/WAV" -Recurse
Copy-Item -Path "SPL" -Destination "LoveConquersAll_EET/LCA/SPL" -Recurse
Copy-Item -Path "LCA.TP2" -Destination "LoveConquersAll_EET/LCA"
Copy-Item -Path "LICENSE.md" -Destination "LoveConquersAll_EET/LCA"

Copy-Item -Path "weidu.exe" -Destination "LoveConquersAll_EET/setup-LCA.exe"
Copy-Item -Path "User Guide.pdf" -Destination "LoveConquersAll_EET/User Guide.pdf"
Copy-Item -Path "Release Notes.md" -Destination "LoveConquersAll_EET/Release Notes.md"

$7zipPath = "$env:ProgramFiles/7-Zip/7z.exe"

if (-not (Test-Path -Path $7zipPath -PathType Leaf)) {
	$7zipPath = "F:/Program Files/7-Zip/7z.exe"
}

Set-Alias Start-SevenZip $7zipPath

$Source = "./LoveConquersAll_EET/*"
$Target = "./LoveConquersAll_EET.zip"

Start-SevenZip a -mx=9 $Target $Source

Remove-Item -LiteralPath "LoveConquersAll_EET" -Force -Recurse
Get-FileHash LoveConquersAll_EET.zip -Algorithm SHA256 > SHA256.txt

Copy-Item -Path "LoveConquersAll_EET.zip" -Destination "\\192.168.1.88\smbuser\Home\Installers\LoveConquersAll_EET.zip"