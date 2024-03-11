// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDFISTCC.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDFISTCC.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAD147~

IF ~  AreaCheck("bd0104")
Global("bd_player_exiled","global",1)
RandomNum(2,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Your deeds will catch up with you soon enough.~ [BD69842] #69842 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd0104")
Global("bd_player_exiled","global",1)
RandomNum(2,2)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Get out of here, spawn of Bhaal. City's got troubles enough without you.~ [BD69844] #69844 */
  IF ~~ THEN EXIT
END
