// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MCOOK2.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MCOOK2.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA177~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hey, you stays out of my kitchen! You'll mess up my art! Someday I'z gonna cook for da duke himself! Betcha there's less fistfights in the palace, so's you can enjoy a meal from start to finish.~ #8203 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~  True()
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Hey, clear out. I don't need you meat-heads roaming through my kitchen! *sigh* I wanna work somewhere where beer and blood aren't seasonings.~ #8204 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Bud, ya wanna hear a good joke? There were these three guys; one of 'em was a Cormyrian, another a Sembian... Hey! Where are ya going?~ #8205 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~I wouldn't trust you as far as I can spit!~ #9186 */
  IF ~~ THEN EXIT
END
