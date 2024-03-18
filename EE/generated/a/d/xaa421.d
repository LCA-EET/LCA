// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRONM3.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\IRONM3.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA421~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Ahhh look, some newcomers. I assume that the lot of you has just arrived with new supplies from Ordulin. If you're looking for Rieltar or Brunos, look no further. Both of them have traveled to Candlekeep on important business.~ #7658 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Could you please stop bothering me?~ #7659 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedTo(2)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~If you need someone to speak with, talk to Larnos in the side room.~ #7660 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
CheckStatGT(Myself,24,GOLD)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Good friend, why don't you take these 25 gold pieces and run along? Have some fun.~ #7661 */
  IF ~~ THEN DO ~GivePartyGold(25)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~You're not welcome here! Get out or be thrown out!~ #9209 */
  IF ~~ THEN EXIT
END
