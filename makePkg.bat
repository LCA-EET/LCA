rmdir /s /q LCA

mkdir LCA
mkdir LCA\2DA
mkdir LCA\ARE
mkdir LCA\BAF
mkdir LCA\BAM
mkdir LCA\BMP
mkdir LCA\CRE
mkdir LCA\D
mkdir LCA\ITM
mkdir LCA\MOS
mkdir LCA\STO
mkdir LCA\TIS
mkdir LCA\TRA
mkdir LCA\WAV

xcopy 2DA\ LCA\2DA
xcopy ARE\ LCA\ARE
xcopy BAF\ LCA\BAF
xcopy BAM\ LCA\BAM
xcopy BMP\ LCA\BMP
xcopy CRE\ LCA\CRE
xcopy D\ LCA\D
xcopy ITM\ LCA\ITM
xcopy MOS\ LCA\MOS
xcopy STO\ LCA\STO
xcopy TIS\ LCA\TIS
xcopy /s TRA\ LCA\TRA
xcopy WAV\ LCA\WAV
xcopy LCA.TP2 LCA
xcopy README.md LCA
xcopy weidu.exe LCA