// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART10.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART10.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA359~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I don't recognize ya. Are you new to the Merchants' League? Well, it matters little, I don't have anything ta drink. My masters haven't ordered any new booze to replace our last stock. Kinda thoughtless of 'em, but then, they've been acting weird for a little while now.~ #7711 */
  IF ~~ THEN EXIT
END
