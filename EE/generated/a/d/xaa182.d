// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART12.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART12.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA182~

IF ~  RandomNum(3,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I help run a clean establishment here. Don't go messin' it up. So, would you like a drink?~ #13996 */
  IF ~~ THEN REPLY @2 /* ~Yes.~ #15051 */ DO ~StartStore("xaa113",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No.~ #15052 */ EXIT
END

IF ~  RandomNum(3,2)
~ THEN BEGIN 1 // from:
  SAY @4 /* ~Whatever your poison, you're sure to find it somewhere in Baldur's Gate. So, would you like a drink?~ #13997 */
  IF ~~ THEN REPLY @2 /* ~Yes.~ #15053 */ DO ~StartStore("xaa113",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No.~ #15054 */ EXIT
END

IF ~  RandomNum(3,3)
~ THEN BEGIN 2 // from:
  SAY @5 /* ~If you've complaints about the service, there's a wall out back that'll be glad to hear 'em. So, would you like a drink?~ #13998 */
  IF ~~ THEN REPLY @2 /* ~Yes.~ #15055 */ DO ~StartStore("xaa113",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No.~ #15056 */ EXIT
END
