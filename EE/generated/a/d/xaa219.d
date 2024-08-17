// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SAILAL.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SAILAL.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA219~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Aye, mate, bend yer ear fer a secon'... Whaddaya call a fish wit' no eyes?~ #19639 */
  IF ~~ THEN REPLY @2 /* ~I don't know...~ #19640 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3 /* ~Fssshhh! Har, har, har, ye're a landlubber if e'er I saw one, mate!~ #19641 */
  IF ~~ THEN EXIT
END
