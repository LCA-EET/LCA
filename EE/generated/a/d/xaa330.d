// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BELAND.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BELAND.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA330~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  Global("BelandEntranceFee","GLOBAL",0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Welcome all to the Hall of Wonders. A mere gold piece secures entry to the most curious collection of machination inspirations on all Abeir-Toril. The craft displayed within is truly a sight to see, and the gold raised goes to needed supplies, that future wonders will be wrought.~ #2516 */
  IF ~~ THEN REPLY @2 /* ~I am afraid I cannot pay the suggested donation.~ #2524 */ GOTO 3
  IF ~~ THEN REPLY @3 /* ~I'll not pay to enter a building open to the public!~ #2525 */ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY @4 /* ~A mere pittance to pay for a day's entertainment.~ #2526 */ DO ~TakePartyGold(1)
~ GOTO 7
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  Global("BelandEntranceFee","GLOBAL",0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @5 /* ~Good on you, friend. Come inside the Hall of Wonders, but please remember the 1 gold donation. It provides sponsorship for those that craft the curious wonders inspired by Gond. This patronage supports the... not immediately salable works produced.~ #2517 */
  IF ~~ THEN REPLY @2 /* ~I am afraid I cannot pay the suggested donation.~ #2527 */ GOTO 8
  IF ~~ THEN REPLY @3 /* ~I'll not pay to enter a building open to the public!~ #2528 */ GOTO 5
  IF ~  PartyGoldGT(0)
~ THEN REPLY @4 /* ~A mere pittance to pay for a day's entertainment.~ #2529 */ DO ~TakePartyGold(1)
~ GOTO 7
END

IF WEIGHT #3 /* Triggers after states #: 10 even though they appear after this state */
~  Global("BelandEntranceFee","GLOBAL",0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 2 // from:
  SAY @6 /* ~1 gold, no talking, and please wipe your feet. The Hall of Wonders is open to all, but touch nothing while herein. We wish to preserve the condition of our exhibits that we might have example for our craftsmen to copy. Duplicates of many items are available by long-term request, for more than you are likely to have in a lifetime.~ #2518 */
  IF ~~ THEN REPLY @2 /* ~I am afraid I cannot pay the suggested donation.~ #2530 */ GOTO 5
  IF ~~ THEN REPLY @3 /* ~I'll not pay to enter a building open to the public!~ #2531 */ GOTO 5
  IF ~  PartyGoldGT(0)
~ THEN REPLY @4 /* ~A mere pittance to pay for a day's entertainment.~ #2532 */ DO ~TakePartyGold(1)
~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 8.0 0.0
  SAY @7 /* ~It's but a small matter to momentarily lapse the entry fee, though if ye can soon afford a coin or two in the future, we'd sorely appreciate it.~ #2519 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 4 // from:
  SAY @8 /* ~Oh, do reconsider! You'll not find these items anywhere else in Faerûn. It would be a shame to miss them, would it not?~ #2520 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 2.0 1.1
  SAY @9 /* ~You are welcome to return when you have the coin, but I cannot permit your entry now. My apologies.~ #2521 */
  IF ~~ THEN DO ~ActionOverride(Player1,LeaveAreaLUAPanic("AR0600","",[1306.2473],SW))
ActionOverride(Player1,LeaveAreaLUA("AR0600","",[1306.2473],SW))
ActionOverride(Player1,SetMasterArea("AR0130"))
ActionOverride(Player2,LeaveAreaLUA("AR0600","",[1306.2473],SW))
ActionOverride(Player3,LeaveAreaLUA("AR0600","",[1306.2473],SW))
ActionOverride(Player4,LeaveAreaLUA("AR0600","",[1306.2473],SW))
ActionOverride(Player5,LeaveAreaLUA("AR0600","",[1306.2473],SW))
ActionOverride(Player6,LeaveAreaLUA("AR0600","",[1306.2473],SW))
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @10 /* ~You cannot enter without payment, so please don't make this difficult. I'd rather not call the hall guards, they've ever so much to attend to.~ #2522 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.2 3.0 2.2 1.2 0.2
  SAY @11 /* ~Please enter, and enjoy the works within. Gondsman Brathlen will offer insights on a number of items, but his time is limited and the tour will not be extensive. Enjoy.~ #2523 */
  IF ~~ THEN DO ~SetGlobal("BelandEntranceFee","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.0 0.1
  SAY @8 /* ~Oh, do reconsider! You'll not find these items anywhere else in Faerûn. It would be a shame to miss them, would it not?~ #2533 */
  IF ~~ THEN REPLY @2 /* ~I am afraid I cannot pay the suggested donation.~ #2536 */ GOTO 3
  IF ~~ THEN REPLY @3 /* ~I'll not pay to enter a building open to the public!~ #2537 */ GOTO 9
  IF ~  PartyGoldGT(0)
~ THEN REPLY @4 /* ~A mere pittance to pay for a day's entertainment.~ #2538 */ DO ~TakePartyGold(1)
~ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @12 /* ~I'm sorry you feel that way.~ #6249 */
  IF ~~ THEN DO ~ActionOverride(Player1,LeaveAreaLUAPanic("AR0600","",[1306.2473],SW))
ActionOverride(Player1,LeaveAreaLUA("AR0600","",[1306.2473],SW))
ActionOverride(Player1,SetMasterArea("AR0130"))
ActionOverride(Player2,LeaveAreaLUA("AR0600","",[1306.2473],SW))
ActionOverride(Player3,LeaveAreaLUA("AR0600","",[1306.2473],SW))
ActionOverride(Player4,LeaveAreaLUA("AR0600","",[1306.2473],SW))
ActionOverride(Player5,LeaveAreaLUA("AR0600","",[1306.2473],SW))
ActionOverride(Player6,LeaveAreaLUA("AR0600","",[1306.2473],SW))
~ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 10 // from:
  SAY @13 /* ~Since all of you are friends, you can freely explore the museum! I hope you enjoy your stay.~ #6250 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~  Global("BelandEntranceFee","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY @14 /* ~Hello again. I hope you have been enjoying yourself.~ #6251 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @15 /* ~Get out or be thrown out!~ #9301 */
  IF ~~ THEN EXIT
END
