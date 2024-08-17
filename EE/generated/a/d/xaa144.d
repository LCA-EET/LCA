// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BRIELB.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BRIELB.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA144~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 15 even though they appear after this state */
~  InParty("Coran")
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Coran! So you've come back to the city, coward. What brought you back? Are you looking for another girl to seduce with your deceitful promises? Perhaps you'd care to know that you have a daughter.~ #1529 */
  IF ~~ THEN EXTERN ~CORANJ~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Surprised that your fling had its consequences? My husband was none too pleased when my daughter turned out to be a half-elf. Yago went into a fury, nearly killed me in fact. If you care to remember, Yago was a mage of some power, power enough to curse our child to an early death. Little Namara won't live to see her first birthday. He's gloated to me that he possesses the reverse to the spell, but he won't give it to me. Since you're her father, Coran, you're going to find Yago and YOU ARE going to get the reverse of the spell from him.~ #1530 */
  IF ~~ THEN DO ~SetGlobal("bd_briel_coran","GLOBAL",1)
~ EXTERN ~CORANJ~ 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~Yago has been spending his nights at the Low Lantern. It's just another despicable whorehouse disguised as something classier. Yago has been spending all of his time there since he left me. He's rented out a room somewhere on the ship. Just find his spellbook and bring it to me. I should be able to reverse the curse if I had the formula.~ #1531 */
  IF ~~ THEN EXTERN ~CORANJ~ 3
END

IF WEIGHT #2 /* Triggers after states #: 15 even though they appear after this state */
~  !InParty("Coran")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Travelers! Could you wait for a while so I might talk with you? I am Brielbara, a mage of minor power. I have heard that a group fitting your description were hiring themselves out as mercenaries. Is that true?~ #1532 */
  IF ~~ THEN REPLY @5 /* ~No, we're not mercenaries. We just carry weapons and kill things for the joy of the experience.~ #1544 */ GOTO 4
  IF ~~ THEN REPLY @6 /* ~Yes, we're available for hire, why are you interested?~ #1545 */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7 /* ~I apologize for bothering you, I most desperately needed the help of a strong band of warriors. I'll have to keep searching.~ #1533 */
  IF ~~ THEN REPLY @8 /* ~Wait! We can help you out. What do you need us for?~ #1546 */ GOTO 5
  IF ~~ THEN REPLY @9 /* ~Bye.~ #1547 */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 3.1
  SAY @10 /* ~I wish to hire you. I'll pay you 200 gold, not much for heroic adventurers, but all that I have. An evil mage has laid a curse upon my only child, Namara. She is slowly wasting away and, without help, she'll die. The mage who did this is named Yago, and I'm sure that he possesses the remedy to the curse. Would you track him down for me, please?~ #1534 */
  IF ~~ THEN REPLY @11 /* ~Sorry, we don't like messing with powerful mages.~ #1548 */ EXIT
  IF ~~ THEN REPLY @12 /* ~Of course.~ #1549 */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @13 /* ~He's been staying at a place called the Low Lantern. It's the playground for the wicked and depraved, a ship where prostitutes ply their trade. All I want you to do is find him and take his spellbook. I have enough magical skill to reverse the curse if I had the formula for his spell.~ #1535 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @14 /* ~When you're finished, come meet me at the Splurging Sturgeon Inn. I'll be there for the next few days.~ #1536 */
  IF ~~ THEN DO ~SetGlobal("BrielbaraMove","GLOBAL",1)
EscapeAreaObject("Door0103")
~ UNSOLVED_JOURNAL @15 /* ~Brielbara's Baby
We've accepted a quest from a woman named Brielbara, who wants us to find a man named Yago. Yago has cursed Brielbara's daughter to die, and we are to help Brielbara undo this curse by obtaining Yago's spellbook. We can find Yago at the Low Lantern; we are to meet Brielbara at the Splurging Sturgeon when we are done.~ #26898 */ EXIT
  IF ~  Global("bd_briel_coran","GLOBAL",1)
~ THEN DO ~AddJournalEntry(26897,INFO)
SetGlobal("BrielbaraMove","GLOBAL",1)
EscapeAreaObject("Door0103")
~ UNSOLVED_JOURNAL @15 /* ~Brielbara's Baby
We've accepted a quest from a woman named Brielbara, who wants us to find a man named Yago. Yago has cursed Brielbara's daughter to die, and we are to help Brielbara undo this curse by obtaining Yago's spellbook. We can find Yago at the Low Lantern; we are to meet Brielbara at the Splurging Sturgeon when we are done.~ #26898 */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 15 even though they appear after this state */
~  Global("BrielbaraMove","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY @16 /* ~Tell me, did you get the reversal for the curse?~ #1537 */
  IF ~~ THEN REPLY @17 /* ~No, we failed.~ #1550 */ GOTO 9
  IF ~  PartyHasItem("BOOK70")
~ THEN REPLY @18 /* ~Yes, we have it right here.~ #1551 */ DO ~EraseJournalEntry(@15)
TakePartyItem("BOOK70")
AddexperienceParty(1000)
ReputationInc(1)
SetGlobal("BrielbaraMove","GLOBAL",2)
SetGlobal("HelpBrielbara","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @19 /* ~Go back and get it, please. It's my daughter's life!~ #1538 */
  IF ~~ THEN REPLY @20 /* ~Sorry, we don't have time to try again.~ #1552 */ GOTO 11
  IF ~~ THEN REPLY @21 /* ~We'll try again, should we meet you back here again?~ #1553 */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @22 /* ~Yes, I'll be waiting here.~ #1539 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY @23 /* ~You spineless bastards, get out of my sight. I would curse you if I had the magic... but I have it not. *sob*~ #1540 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY @24 /* ~Thank you, thank you so very much. I owe you everything. If there is anything I can do for you, just name it.~ #1541 */
  IF ~  !InParty("Coran")
~ THEN REPLY @26 /* ~We'd just like to be paid.~ #1554 */ DO ~GivePartyGold(200)
EscapeAreaObject("Door0103")
~ SOLVED_JOURNAL @25 /* ~Brielbara's Baby
Brielbara now has Yago's spellbook and can lift the curse on her baby.~ #26902 */ EXIT
  IF ~  !InParty("Coran")
~ THEN REPLY @27 /* ~Just remember us for the future.~ #1555 */ DO ~EscapeAreaObject("Door0103")
~ SOLVED_JOURNAL @25 /* ~Brielbara's Baby
Brielbara now has Yago's spellbook and can lift the curse on her baby.~ #26902 */ EXIT
  IF ~  InParty("Coran")
~ THEN REPLY @26 /* ~We'd just like to be paid.~ #956 */ DO ~GivePartyGold(200)
~ GOTO 13
  IF ~  InParty("Coran")
~ THEN REPLY @27 /* ~Just remember us for the future.~ #957 */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.3 12.2
  SAY @28 /* ~What about you Coran? Are you planning on leaving again? Not even trying to be a father...~ #1542 */
  IF ~~ THEN EXTERN ~CORANJ~ 4
END

IF ~~ THEN BEGIN 14 // from:
  SAY @29 /* ~Maybe someday you'll grow a spine, elf!~ #1543 */
  IF ~~ THEN DO ~EscapeAreaObject("Door0103")
~ SOLVED_JOURNAL @25 /* ~Brielbara's Baby
Brielbara now has Yago's spellbook and can lift the curse on her baby.~ #26902 */ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 15 // from:
  SAY @30 /* ~All I know is that Yago has cursed my child, and she'll die without any help! I know that there has been a lot of talk around the city about the Iron Throne.~ #6068 */
  IF ~~ THEN DO ~AddJournalEntry(26901,INFO)
~ EXIT
END

IF WEIGHT #4 ~  Global("HelpBrielbara","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY @31 /* ~I must thank you again for the service you have done.~ #6069 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY @32 /* ~I'll not speak a word after what you did!~ #8950 */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  Global("HelpBrielbara","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY @33 /* ~Leave me be!~ #17234 */
  IF ~~ THEN EXIT
END
