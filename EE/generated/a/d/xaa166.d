// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART15.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART15.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA166~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I'll not turn away new faces when business has been so slow lately. If you've need of anything, don't hesitate to ask.~ #15365 */
  IF ~~ THEN REPLY @2 /* ~It's been a rough journey to get here. What do you have to ease our spirits?~ #15366 */ DO ~StartStore("xaa100",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~I need nothing at the moment, though your offer is appreciated.~ #15367 */ EXIT
END
