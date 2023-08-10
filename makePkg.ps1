Remove-Item -LiteralPath "LCA" -Force -Recurse
Remove-Item "LoveConquersAll_EET.zip" -Force
Remove-Item "Setup-LCA.exe" -Force

Copy-Item -Path "2DA" -Destination "LCA\2DA" -Recurse
Copy-Item -Path "ARE" -Destination "LCA\ARE" -Recurse
Copy-Item -Path "BAF" -Destination "LCA\BAF" -Recurse
Copy-Item -Path "BAM" -Destination "LCA\BAM" -Recurse
Copy-Item -Path "BMP" -Destination "LCA\BMP" -Recurse
Copy-Item -Path "CRE" -Destination "LCA\CRE" -Recurse
Copy-Item -Path "D" -Destination "LCA\D" -Recurse
Copy-Item -Path "ITM" -Destination "LCA\ITM" -Recurse
Copy-Item -Path "MOS" -Destination "LCA\MOS" -Recurse
Copy-Item -Path "STO" -Destination "LCA\STO" -Recurse
Copy-Item -Path "TIS" -Destination "LCA\TIS" -Recurse
Copy-Item -Path "TRA" -Destination "LCA\TRA" -Recurse
Copy-Item -Path "WAV" -Destination "LCA\WAV" -Recurse
Copy-Item -Path "SPL" -Destination "LCA\SPL" -Recurse
Copy-Item -Path "LCA.TP2" -Destination "LCA"
Copy-Item -Path "LICENSE.md" -Destination "LCA"

Copy-Item -Path "weidu.exe" -Destination "Setup-LCA.exe"

Compress-Archive -Path "LCA" -DestinationPath "LoveConquersAll_EET.zip"
Compress-Archive -Path "setup-LCA.exe" -Update -DestinationPath "LoveConquersAll_EET.zip"
Compress-Archive -Path "User Guide.pdf" -Update "LoveConquersAll_EET.zip"

Remove-Item -LiteralPath "LCA" -Force -Recurse

Get-FileHash LoveConquersAll_EET.zip -Algorithm SHA256 > SHA256.txt
