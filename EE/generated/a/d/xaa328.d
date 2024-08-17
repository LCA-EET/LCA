// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PGOND.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PGOND.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA328~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Welcome to the High House of Wonders. I hope you have come to venerate Gond, the Inspiration Divine! If there is anything you need of me, all you need but do is ask. Otherwise you are free to worship the Wonderbringer to your heart's content.~ #7478 */
  IF ~~ THEN REPLY @2 /* ~What services do you provide here?~ #15345 */ DO ~StartStore("xaa135",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~We have no need of anything at the moment.~ #15347 */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @4 /* ~May the Wonderbringer guide your way!~ #7479 */
  IF ~~ THEN EXIT
END
