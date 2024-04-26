// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PROST3.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\PROST3.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA336~

IF ~  Gender(LastTalkedToBy,MALE)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Sorry, milord, but my services have been reserved for the eve.~ #8233 */
  IF ~~ THEN EXIT
END

IF ~  Gender(LastTalkedToBy,FEMALE)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Ooo, darling, you're probably looking for Schvantz. He's hanging out around here somewhere.~ #8234 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~A little while ago, darling, a man named Yago started renting out a room here every night. He became quite the regular. Lately though, he's become somewhat prone to violence. He's some sort of mage, so no one wants to deal with him. You're a great hero, darling. Why don't you take care of him?~ #8235 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~You'll get nothing from me!~ #9103 */
  IF ~~ THEN EXIT
END
