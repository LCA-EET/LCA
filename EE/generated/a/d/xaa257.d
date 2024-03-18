// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\VARCI.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\VARCI.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA257~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~P-please, might I have your ear a moment?~ #12615 */
  IF ~~ THEN DO ~SetGlobalTimer("Varci","GLOBAL",TEN_DAYS)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2 /* ~My name is Varci, and I have heard you sometimes help those in need, f-for a fee of course. Please, would you meet with my guardian at his house? My guardian will reveal the nature of the job once we arrive. Please, it's a matter of death or life.~ #12616 */
  IF ~~ THEN REPLY @3 /* ~Prove your intention. I want gold up front before I take a step your direction.~ #12617 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~Lead on young one, I will follow.~ #12618 */ GOTO 5
  IF ~~ THEN REPLY @5 /* ~Waste not my time, child! Begone!~ #12619 */ GOTO 4
  IF ~~ THEN REPLY @6 /* ~I'll not move a muscle without knowing your intent. What do you require of me?~ #12620 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 6.3 3.2 1.3
  SAY @7 /* ~It is to my shame that I must ask your help at all. Please don't make me announce my folly in public. Unseen ears can divine our words, and our cause be lost if it become known. My guardian will tell you once we arrive at his home. He is a Lord Priest of Tymora, and will ensure secrecy.~ #12621 */
  IF ~~ THEN REPLY @3 /* ~Prove your intention. I want gold up front before I take a step your direction.~ #12635 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~Lead on young one, I will follow.~ #12636 */ GOTO 5
  IF ~~ THEN REPLY @5 /* ~Waste not my time, child! Begone!~ #12637 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 6.0 2.0 1.0
  SAY @8 /* ~I have naught to offer now, but my guardian will arrange payment of a handsome fee I am sure. Please, you'll have to trust my good intent.~ #12622 */
  IF ~~ THEN REPLY @4 /* ~Lead on young one, I will follow.~ #12638 */ GOTO 5
  IF ~~ THEN REPLY @5 /* ~Waste not my time, child! Begone!~ #12639 */ GOTO 4
  IF ~~ THEN REPLY @6 /* ~I'll not move a muscle without knowing your intent. What do you require of me?~ #12640 */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 6.2 3.1 2.2 1.2
  SAY @9 /* ~I see. I have been misinformed about you. I had hoped to avoid a known mercenary group, but now I have little choice. I will bother you no further.~ #12623 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.1 3.0 2.1 1.1
  SAY @10 /* ~Oh, excellent! I may yet repair the damage I have caused. This way. I'll show you to the house where my master is staying.~ #12624 */
  IF ~~ THEN DO ~SetGlobal("HelpVarci","GLOBAL",1)
MoveToPoint([900.717])
OpenDoor("DOOR0617")
DestroySelf()
~ EXIT
END

IF WEIGHT #1 ~  Global("HelpVarci","GLOBAL",0)
!GlobalTimerExpired("Varci","GLOBAL")
Global("TremainMove","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY @11 /* ~There is yet time to help me, if you so choose.~ #12627 */
  IF ~~ THEN REPLY @3 /* ~Prove your intention. I want gold up front before I take a step your direction.~ #12641 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~Lead on young one, I will follow.~ #12642 */ GOTO 5
  IF ~~ THEN REPLY @5 /* ~Waste not my time, child! Begone!~ #12643 */ GOTO 4
  IF ~~ THEN REPLY @6 /* ~I'll not move a muscle without knowing your intent. What do you require of me?~ #12644 */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from:
  SAY @12 /* ~Your thoughts know as I do, and there be no denying it. We need outside help to fix what's done, and talk among the alleys say this group may be as effective as any we could hope for.~ #12629 */
  IF ~~ THEN EXTERN ~TREMAI~ 2
END

IF ~~ THEN BEGIN 8 // from:
  SAY @13 /* ~We thought it would be exciting, causing a little mischief amidst Umberlee's underlings, only it wasn't that much fun when we were caught. We both ran. I got away. Casson didn't. They killed him as we sought to escape.~ #12630 */
  IF ~~ THEN EXTERN ~TREMAI~ 3
END

IF WEIGHT #3 /* Triggers after states #: 11 even though they appear after this state */
~  Global("HelpTremain","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY @14 /* ~I realize that our meeting didn't go exceptionally well, but please reconsider. If you were to deliver Casson's body here within the ten days, I am sure the original offer would still stand. I implore you, there is no other solution for him or us.~ #12632 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 11 even though they appear after this state */
~  Global("TremainMove","GLOBAL",5)
~ THEN BEGIN 10 // from:
  SAY @15 /* ~Please pay Tremain no mind, we have risked much only to have failed. Though our deal was not completed, and you not paid, we respect that you tried nonetheless. I shall spread the word among the clergy that you are to be extended every hospitality. As much as Tremain has tried to keep this private, a number of his brethren know and sympathize with his plight. They will look kindly on you if needs be. Goodbye.~ #12633 */
  IF ~~ THEN DO ~EraseJournalEntry(@17)
EraseJournalEntry(@18)
EraseJournalEntry(@19)
EraseJournalEntry(@20)
EraseJournalEntry(@21)
EscapeAreaObject("Door0600")
~ SOLVED_JOURNAL @16 /* ~Tremain's Son
I was too late to rescue Tremain's son, unfortunately.~ #27503 */ EXIT
END

IF WEIGHT #2 ~  Global("TremainMove","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY @22 /* ~I've your payment here. Tsk, it will be some time before Casson and I get a night out again. It is good to have him back among the living, though I take some small pleasure in the trouble he's in for what we did. You'll notice I've not sat down since you've known me. Sometimes "Our Lady Who Smiles" downright laughs out loud. Look to us if you need aid in the future. Many a Tymoran will look favorably on you now. Good day.~ #12634 */
  IF ~~ THEN DO ~EraseJournalEntry(@17)
EraseJournalEntry(@18)
EraseJournalEntry(@19)
EraseJournalEntry(@20)
SetGlobal("TremainMove","GLOBAL",4)
EraseJournalEntry(@21)
GiveGoldForce(2000)
GiveItemCreate("SHLD07",LastTalkedToBy(Myself),0,0,0)
AddexperienceParty(5000)
EscapeAreaObject("Door0600")
~ SOLVED_JOURNAL @23 /* ~Tremain's Son
Tremain was delighted that we recovered Casson from the Temple of Umberlee in time to revive his life, but then he let the boy have it for his mischief.~ #27504 */ EXIT
END
