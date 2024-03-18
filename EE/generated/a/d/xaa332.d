// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FLAMGATE.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FLAMGATE.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA332~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Oh my, hello there. I haven't seen a face in… forever! I suppose it makes sense given that this gate is no longer to be used for passage—I've been given strict orders to keep it that way. It's probably best you be on your way.~ #32159 */
  IF ~~ THEN EXIT
END
