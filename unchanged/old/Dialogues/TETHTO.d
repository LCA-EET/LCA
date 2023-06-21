// creator  : weidu (version 24900)
// argument : TETHTO.DLG
// game     : .
// source   : ./override/TETHTO.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~TETHTO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Chapter","GLOBAL",6)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I am pleased to see thee again. Hast thou come to collect the inheritance from your father? He left thee several items, all of which are within his old room. Please forgive my abrupt nature, but much requires my attention this day. It is important that we later speak of your foster father, but not now. Meet me in the outer grounds later today.~ #200009 */
  IF ~~ THEN UNSOLVED_JOURNAL @2 /* ~Gorion's Effects
Gorion has left some items for me in his chambers.~ #227475 */ EXIT
END

IF WEIGHT #1 ~  Global("IronThroneMurder","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY @3 /* ~Surrender to the guard, young one. Thou wouldst only make it worse for thyself.~ #200010 */
  IF ~~ THEN REPLY @4 /* ~Why do you ask us to surrender? We have done nothing wrong. Sorry, we can't surrender.~ #207231 */ GOTO 7
  IF ~~ THEN REPLY @5 /* ~I surrender. Take me to your prison.~ #207232 */ DO ~SetGlobal("TethtorilTalk","GLOBAL",4)
SetGlobalTimer("Ulraunt","GLOBAL",FOUR_MINUTES)
~ EXIT
END

IF WEIGHT #2 ~  Global("Arrested","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY @6 /* ~Hello, young one. I am sorry to see thee in such terrible circumstances. I know thee well enough to see that you have been falsely accused. Tomorrow Ulraunt will most likely sentence thee to be sent to Baldur's Gate. There, thou wouldst receive the death penalty for these actions. I know that Gorion would not want to see his only child killed a scant few weeks after his own death. 'Tis as a favor to his memory that I will help thee escape. Make thy way through the catacombs beneath the library, but disturb them not. I have your possessions with me. You must take them and go with haste.~ #200011 */
  IF ~~ THEN REPLY @7 /* ~Do you know anyone by the name of Koveras?~ #200013 */ GOTO 3
  IF ~~ THEN REPLY @8 /* ~Thank you for helping us.~ #200014 */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @9 /* ~I know of no one named Koveras, but Koveras is the reverse of Sarevok, a young man who accompanied the leaders of the Iron Throne when they first came. I know not where he has gone.~ #200012 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 8 even though they appear after this state */
~  Global("Chapter","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 4 // from:
  SAY @10 /* ~Gorion has been looking for thee, young one.~ #200015 */
  IF ~~ THEN DO ~SetGlobalTimer("Tethtoril","GLOBAL",TWO_TURNS)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 8 even though they appear after this state */
~  Global("Chapter","GLOBAL",0)
NumTimesTalkedTo(1)
~ THEN BEGIN 5 // from:
  SAY @11 /* ~Go to Gorion and listen well, for without knowledge, life is a mere shadow of death.~ #200090 */
  IF ~~ THEN DO ~SetGlobalTimer("Tethtoril","GLOBAL",FOUR_TURNS)
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 8 even though they appear after this state */
~  Global("Chapter","GLOBAL",0)
NumTimesTalkedToGT(1)
~ THEN BEGIN 6 // from:
  SAY @12 /* ~Thou wouldst do well to stop avoiding your foster father, he needs to speak with thee urgently.~ #200264 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY @13 /* ~You only make things harder on yourself, child.~ #207233 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("TalkedToTethtoril","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY @14 /* ~Firebead has sent you to me, hasn't he? Very well, return this scroll to him, but then you must hurry and speak with Gorion. He is waiting for you on the steps of the central library. I assure you, child, it is a matter of greatest urgency.~ #216027 */
  IF ~~ THEN DO ~SetInterrupt(FALSE)
//GiveItem("LCSTDAG",LastTalkedToBy)
GiveItem("SCRL75",LastTalkedToBy)
//GiveItem("SHLD04A",LastTalkedToBy)
//GiveItem("MISC2H",LastTalkedToBy)
//GiveItem("AMUL01.itm",LastTalkedToBy)
AddJournalEntry(232885,QUEST)
SetGlobal("TalkedToTethtoril","GLOBAL",2)
SetGlobalTimer("Tethtoril","GLOBAL",TWO_TURNS)
SetInterrupt(TRUE)
~ EXIT
END
