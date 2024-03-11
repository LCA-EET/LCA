// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LOUISE.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LOUISE.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA397~

IF ~  NumTimesTalkedTo(0)
Global("TalkedToLaerta","GLOBAL",0)
!Dead("Laerta")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hi! I'm Louise. That's my twin sister, Laerta. We're nine.~ #15302 */
  IF ~~ THEN EXTERN ~XAA396~ 0
END

IF ~  True()
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Do you believe us about the bogeyman?~ #11785 */
  IF ~~ THEN EXIT
END
