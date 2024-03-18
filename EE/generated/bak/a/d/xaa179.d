// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SERWEN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SERWEN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA179~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~ 'Ere there, what do ye need to be bothering me for? I've work to do.~ #8325 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Ye drop another careless hand near me and I swears you'll lose it! Order up at the bar.~ #8326 */
  IF ~~ THEN EXIT
END

IF ~  Global("SpokeToAreana","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~ 'Ere there, what do ye need to be bothering me for? I've work to do. Bastard Cyrdemac tips the glass like a fish, he does. Fool smuggler must spend half his coin here.~ #8328 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~I hear so much stuff each day it's hard to remember any of it later on.~ #8329 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~Get away, you nobbish plonker!~ #9086 */
  IF ~~ THEN EXIT
END
