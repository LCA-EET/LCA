// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PROST5.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PROST5.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA289~

IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Off with ye! I'm waiting on a gentleman caller and I don't need you here spookin' him. He's... sensitive.~ #8279 */
  IF ~~ THEN EXIT
END

IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Gender(LastTalkedToBy,MALE)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Mmmmm, hello there. Why don't you come back on a night when my schedule is clear? We'll talk... business.~ #8280 */
  IF ~~ THEN EXIT
END

IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Gender(LastTalkedToBy,FEMALE)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Ooooo, hello honey. Why don't you come back on a night when my schedule is less crowded? We'll talk... business. I've been thinking of branching out into other service markets. You'd make a... mmmm... wonderful test audience.~ #8281 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~I told ye I was busy! Now leave!~ #8282 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~All I can tell you, lover, is to watch for Slythe and Krystin. They're crazy.~ #8283 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @6 /* ~Get near me again and I'll have your nethers on a platter!~ #9101 */
  IF ~~ THEN EXIT
END
