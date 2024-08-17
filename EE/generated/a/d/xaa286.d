// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHOP03.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHOP03.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA286~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You are welcome to peruse the goods I have on display, provided you have the gold to buy them.~ #15377 */
  IF ~~ THEN REPLY @2 /* ~I've gold enough, but have you anything worth buying?~ #15378 */ DO ~StartStore("xaa148",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~I'm not interested in your trinkets today.~ #15379 */ EXIT
END
