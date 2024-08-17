// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBL11.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBL11.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA229~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hello. You look like the gambling type. Why don't you try your luck at my table? Come on! Be a sport.~ #7489 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~  True()
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Don't be shy now. You should try your luck here at this table; it seems that Tymora smiles on everyone who's come here before.~ #7490 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  StateCheck(Myself,STATE_CHARMED)
CheckStatGT(Myself,9,GOLD)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Here friend; if you don't have the money, take this 10 gold.~ #7491 */
  IF ~~ THEN DO ~GivePartyGold(10)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~Get out of my sight! I'll do nothing for you!~ #9145 */
  IF ~~ THEN EXIT
END
