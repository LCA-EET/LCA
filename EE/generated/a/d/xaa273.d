// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PROST7.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PROST7.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA273~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~ 'Ere, fool! Step back a bit! You're crowding me.~ #8307 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I don't much care if you're happy to see me, as long as that's a pouch of coins.~ #8308 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~Don't ye go messin' wit' these other hedge dollies. They don't know the business like I do.~ #8309 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(2)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Hey! Don't be scarin' away the marks, ye dirty cully<GIRLBOY>s!~ #8310 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~Guards! Ye fools have let thieves into our midst!~ #8311 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @6 /* ~Guards! Quickly! Murder!~ #8312 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 6 // from:
  SAY @7 /* ~All I can tell you, lover, is to watch for Slythe and Krystin. They're crazy.~ #8313 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @8 /* ~Get near me again and I'll have your nethers on a platter!~ #9099 */
  IF ~~ THEN EXIT
END
