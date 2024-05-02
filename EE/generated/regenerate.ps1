Remove-Item "imported_assets.txt"
Remove-Item "traIndex.txt"
Remove-Item "combined.tra"
New-Item "imported_assets.txt"
./generate_a.bat
./generate_c.bat
./generate_d.bat
./generate_f.bat
./generate_g.bat