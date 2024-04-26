// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BANDITCY.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BANDITCY.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA266~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Get outta here ya morons! Does it look like we wanna talk to ya?~ #10089 */
  IF ~~ THEN EXIT
END
