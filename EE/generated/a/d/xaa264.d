// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MERC0706.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MERC0706.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA264~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~A fine and lovely day to ye! Would you be interested in any of my fine odds and ends? I have endeavored to keep prices reasonable even in spite of the shortages of late.~ #15763 */
  IF ~~ THEN REPLY @2 /* ~I have no need of your trinkets. Good day.~ #15764 */ EXIT
  IF ~~ THEN REPLY @3 /* ~Let's see what you have for offer.~ #15765 */ DO ~StartStore("xaa131",LastTalkedToBy(Myself))
~ EXIT
END
