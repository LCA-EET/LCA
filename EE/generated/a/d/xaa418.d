// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRONM2.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRONM2.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA418~

IF ~  StateCheck(Myself,STATE_CHARMED)
CheckStatGT(Myself,24,GOLD)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Good friend, why don't you take these 25 gold pieces and run along? Have some fun.~ #7657 */
  IF ~~ THEN DO ~GivePartyGold(25)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~What are the likes of you doing in the dining chambers? Dismiss yourselves immediately before I have you thrown out.~ #7654 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(1)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~I don't understand why you insist on smelling up the room. All of you should go and bathe.~ #7655 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(2)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Get away from me! I wouldn't trust you as far as I can spit!~ #9206 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 4 // from:
  SAY @5 /* ~Stop bothering me, you ill-mannered lout.~ #7656 */
  IF ~~ THEN EXIT
END
