// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDSALLO.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDSALLO.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC173~

IF ~  Global("bd_sallo_plot","bd4000",0)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Ugggggh...~ #51408 */
  IF ~~ THEN EXTERN ~XAC174~ 0
END

IF ~  GlobalLT("bd_plot","global",400)
~ THEN BEGIN 1 // from:
  SAY @1 /* ~Ugggggh...~ #51408 */
  IF ~~ THEN EXIT
END
