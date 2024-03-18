// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NILA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NILA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA388~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hello there. Trying to escape the party too, hmm? I simply find these functions utterly boring, but mother would never let me miss one. I don't like that Sarevok either. There's something about him... not right. Sounds like quite the ruckus out there, but it's still all so boring.~ #8246 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Oh! You startled me. Hiding from that boring party too, hmm? Me too. I barely even knew Duke Eltan, and there is just something not... right about that Sarevok. Wait— You don't look like the other guests. YOU SNUCK IN! HA! That is SO funny! Better go quick, though. The guard will have you quartered for being here.~ #8247 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~Oh no, you're just asking for trouble now. Everything in here is trapped for sure. It might be funny if you got away with it, but if you don't you'll be hung out to dry like the servants do the laundry.~ #8248 */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @4 /* ~I DID warn you, didn't I? Better go quick now!~ #8249 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~What are you— What are you doing? OH! You're a THIEF, aren't you?! That is SO funny! Mother would have an absolute fit to know you were here. Here, let me get this.~ #8250 */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @6 /* ~There. I TOLD them this lock was broken but they never listen to me. Go ahead and take it. This will probably cause quite the stir, but I really don't care. Anything to get talk off that awful Sarevok fellow. Better go now. Don't want them finding you here.~ #8251 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @7 /* ~Ah! Guards! Mother!~ #8252 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN BEGIN 7 // from:
  SAY @8 /* ~You're still here? Fun's fun, but you should go quickly now.~ #8253 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 8 // from:
  SAY @9 /* ~That party still going on? It's a wonder they haven't all fallen asleep where they stand.~ #8254 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 9 // from:
  SAY @10 /* ~I'd give you a tour of the place, friend, but I really would rather just stay here out of the way. The boring fops out there would snag me in a second, and I'd be forced to listen as they prattle on. You are welcome to stay though.~ #9148 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY @11 /* ~I'll not speak a word after what you did!~ #9149 */
  IF ~~ THEN EXIT
END
