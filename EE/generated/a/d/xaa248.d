// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MTOB2.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MTOB2.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA248~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hey, there, friend. So what 'ave you come to the Low Lantern for? Gamblin' or festin'?~ #7503 */
  IF ~~ THEN REPLY @2 /* ~We've come to try our luck in the gambling pits. We just hope Tymora smiles down at us.~ #7508 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We'd heard a lot about what goes on here, and just thought we'd have a look for ourselves.~ #7509 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~None of your concern.~ #7510 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~Ha ha. Tymora's not been kind to me this night, hopefully she'll be nicer to you.~ #7504 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~They're a sumptuous lot. There's a brunette named Tyla; I'd swear she was the goddess of love. It's too bad that's she's out of town now, I really miss her company.~ #7505 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @7 /* ~No need to get all ruffled up.~ #7506 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 5 even though they appear after this state */
~  !StateCheck(Myself,STATE_CHARMED)
CheckStatGT(Myself,0,GOLD)
~ THEN BEGIN 4 // from:
  SAY @8 /* ~Hope ye're havin' a great <DAYNIGHTALL>. I sure am.~ #7507 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  StateCheck(Myself,STATE_CHARMED)
CheckStatGT(Myself,0,GOLD)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~I've been doing rather badly in my gambling, so how 'bout I give you this gold piece ta start off yer night. Hopefully Tymora's luck will be with you.~ #7511 */
  IF ~~ THEN DO ~GivePartyGold(1)
~ EXIT
END

IF WEIGHT #3 ~  True()
~ THEN BEGIN 6 // from:
  SAY @10 /* ~Get out of my sight! I'll do nothing for you!~ #9180 */
  IF ~~ THEN EXIT
END
