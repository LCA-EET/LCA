// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BARSLIM.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BARSLIM.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA294~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Leave this place! Ungh! There be green slimes rising... rising from the cellars! Flee while you—*gasp*—still can.~ #19616 */
  IF ~~ THEN DO ~ActionOverride("MTWSLIM",EscapeArea())
ActionOverride("MTWSLIM2",EscapeArea())
ActionOverride("MTWSLIM3",EscapeArea())
~ EXIT
END
