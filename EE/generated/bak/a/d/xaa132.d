// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FATMBA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FATMBA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA132~

IF ~  RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I'm not fat, I'm big-boned! Enormously boned, actually. Fantastically huge bones the likes of which have never before been seen on creatures without a trunk or a blowhole.~ #13983 */
  IF ~~ THEN EXIT
END

IF ~  False()
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I wish I could help you friend, but I've not been able to collect my thoughts since I missed breakfast this morning. Practically wasting away, I am.~ #13984 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(4,2)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Away with you, or the guard will have you boiled in oil! Or perhaps... fricasseed in oil... with a lovely salmon, white wine sauce and those little bread sticks that are just sooo good. Yum.~ #13985 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(4,3)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~There's a thin person inside me just screaming to get out. Serves him right, though. Shouldn't have stood so close to the buffet.~ #13986 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(4,4)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~Oh, this iron shortage is TERRIBLE! If it weren't for SILVERware I don't know how I'd survive.~ #13988 */
  IF ~~ THEN EXIT
END
