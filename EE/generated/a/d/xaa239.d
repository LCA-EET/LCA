// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART0720.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART0720.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA239~

IF ~  RandomNum(3,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Mind your manners with the patrons. Everybody is just here to relax. So, would you like a drink?~ #13993 */
  IF ~~ THEN REPLY @2 /* ~Yes.~ #15045 */ DO ~StartStore("xaa125",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No.~ #15046 */ EXIT
END

IF ~  RandomNum(3,2)
~ THEN BEGIN 1 // from:
  SAY @4 /* ~Careful you have too much of the drink. You don't want to be stumbling through Baldur's Gate without your wits in good order. So, would you like a drink?~ #13994 */
  IF ~~ THEN REPLY @2 /* ~Yes.~ #15047 */ DO ~StartStore("xaa125",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No.~ #15048 */ EXIT
END

IF ~  RandomNum(3,3)
~ THEN BEGIN 2 // from:
  SAY @5 /* ~As long as you're buying, you're welcome here. So, would you like a drink?~ #13995 */
  IF ~~ THEN REPLY @2 /* ~Yes.~ #15049 */ DO ~StartStore("xaa125",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~No.~ #15050 */ EXIT
END
