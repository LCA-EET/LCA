// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HARBOR.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HARBOR.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA218~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 9 11 12 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hey there, what can I do for ya?~ #7712 */
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @2 /* ~We've been investigating some of the weird goings-on of Baldur's Gate, and we thought that the Harbor Master must know a great deal, what with the comings and goings of the merchant ships.~ #7722 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We wanted to charter a ship.~ #7723 */ GOTO 6
  IF ~~ THEN REPLY @4 /* ~We're sorry to have bothered you.~ #7724 */ GOTO 5
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @2 /* ~We've been investigating some of the weird goings-on of Baldur's Gate, and we thought that the Harbor Master must know a great deal, what with the comings and goings of the merchant ships.~ #7725 */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~Ya. As the Harbor Master, I'm privy to a lot of what's going on. What's it that ya want ta know?~ #7713 */
  IF ~~ THEN REPLY @6 /* ~Tell us what you know about the iron shortage.~ #7726 */ GOTO 2
  IF ~~ THEN REPLY @7 /* ~Do you know much about the Iron Throne?~ #7727 */ GOTO 3
  IF ~~ THEN REPLY @8 /* ~Tell us whatever you might think is interesting.~ #7728 */ GOTO 4
  IF ~~ THEN REPLY @9 /* ~Actually, we have to get going.~ #7729 */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @10 /* ~The iron shortage, eh? Well, there's not much to tell. With the Nashkel mines basically shut down, and bandits making it impossible to ship overland, iron's become rare. Recently though, the Iron Throne's been shipping in iron through their merchant fleet. It's really strange, 'cause their main competitors aren't doing the same. They're just lettin' the Throne hog the whole market.~ #7714 */
  IF ~~ THEN UNSOLVED_JOURNAL @11 /* ~Investigating the Iron Throne
According to the Harbor Master, the Iron Throne has been shipping iron into the city via its merchant fleet.~ #27136 */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @12 /* ~The Iron Throne's been making some major moves in the city. They've been making inroads in all sorts of markets, though the most noticeable would be iron. Their competitors just sit there and take it. It's really weird.~ #7715 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 0.3
  SAY @13 /* ~I'm not here to entertain people. I'm gonna have to ask ya to leave so I can get some work done now.~ #7716 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 0.2
  SAY @14 /* ~Nice talkin' to ya guys.~ #7717 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @15 /* ~Ya wanna charter a ship, do ya? Well, where is it that ya wanna go?~ #7718 */
  IF ~~ THEN REPLY @16 /* ~Waterdeep would be a fine destination.~ #7730 */ GOTO 7
  IF ~~ THEN REPLY @17 /* ~I've always wanted to see Calimport.~ #7731 */ GOTO 8
  IF ~~ THEN REPLY @18 /* ~The Moonshae Isles.~ #7732 */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @19 /* ~Usually there's a ship going to Waterdeep every couple days, but with all the troubles in the Sea of Swords, travel's kinda dropped off. It'll be a couple weeks 'fore something comes in.~ #7719 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 6.1
  SAY @20 /* ~No ships headed there at the moment. If one comes in, I'll tell the captain someone's interested.~ #7720 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 12 even though they appear after this state */
~  PartyHasItem("MISC55")
~ THEN BEGIN 9 // from:
  SAY @21 /* ~By the Bitch Queen's breath! That's Duke Eltan ya have with you. He's looking in a bad way. Leave him here with me; I'll make sure he's all right. You're the people who've been working fer Scar and Eltan against the Iron Throne. Well, I'm sure you have much to do, so you should a get a move on it. Don't worry about Eltan, I'll keep good care of him. I've got to get him to a safe place, so good luck.~ #7721 */
  IF ~  !Global("TalkedToPang","GLOBAL",1)
~ THEN DO ~DialogueInterrupt(FALSE)
EraseJournalEntry(@23)
EraseJournalEntry(@24)
EraseJournalEntry(@25)
EraseJournalEntry(@26)
EraseJournalEntry(@27)
EraseJournalEntry(@28)
EraseJournalEntry(@29)
EraseJournalEntry(@30)
EraseJournalEntry(@31)
EraseJournalEntry(@32)
EraseJournalEntry(@33)
EraseJournalEntry(@34)
EraseJournalEntry(@35)
AddJournalEntry(31467,QUEST)
SetGlobal("EltanMove","GLOBAL",1)
SetGlobal("BroughtEltan","GLOBAL",1)
TakePartyItem("MISC55")
DestroyItem("MISC55")
AddexperienceParty(2500)
MoveToPoint([431.171])
CreateCreatureImpassable("DELTAN2",[449.121],SE)
ChangeAIScript("SHOUT",OVERRIDE)
ActionOverride("eltan2",ChangeAIScript("SHOUT",OVERRIDE))
Wait(1)
MoveToPoint([461.197])
Face(S)
DialogueInterrupt(TRUE)
~ SOLVED_JOURNAL @22 /* ~Duke Eltan's Illness
I took the defenseless Duke Eltan to the Harbor Master, who promised to keep him safe.~ #27146 */ EXIT
  IF ~  Global("TalkedToPang","GLOBAL",1)
~ THEN DO ~DialogueInterrupt(FALSE)
EraseJournalEntry(@23)
EraseJournalEntry(@24)
EraseJournalEntry(@25)
EraseJournalEntry(@26)
EraseJournalEntry(@27)
EraseJournalEntry(@28)
EraseJournalEntry(@29)
EraseJournalEntry(@30)
EraseJournalEntry(@31)
EraseJournalEntry(@32)
EraseJournalEntry(@33)
EraseJournalEntry(@34)
EraseJournalEntry(@35)
SetGlobal("EltanMove","GLOBAL",1)
SetGlobal("BroughtEltan","GLOBAL",1)
TakePartyItem("MISC55")
DestroyItem("MISC55")
AddexperienceParty(2500)
MoveToPoint([431.171])
CreateCreatureImpassable("DELTAN2",[449.121],SE)
ChangeAIScript("SHOUT",OVERRIDE)
ActionOverride("eltan2",ChangeAIScript("SHOUT",OVERRIDE))
Wait(1)
MoveToPoint([461.197])
Face(S)
DialogueInterrupt(TRUE)
~ SOLVED_JOURNAL @22 /* ~Duke Eltan's Illness
I took the defenseless Duke Eltan to the Harbor Master, who promised to keep him safe.~ #27146 */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 11 12 even though they appear after this state */
~  Global("BroughtEltan","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY @36 /* ~I'm really busy now, so I'm gonna have to ask ya ta come back some time later.~ #7733 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 12 even though they appear after this state */
~  Global("BroughtEltan","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY @37 /* ~You guys shouldn't be hanging 'round here. Ya might bring attention to Duke Eltan.~ #7734 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 12 // from:
  SAY @38 /* ~Well, friend, ya might be interested ta know that there's been quite a few Iron Throne ships coming to dock these past few weeks. They've been stockpiling something, and if I guess right, that something is iron.~ #7735 */
  IF ~~ THEN UNSOLVED_JOURNAL @39 /* ~Investigating the Iron Throne
When we charmed the Harbor Master, he told us that there were quite a few Iron Throne merchant ships coming into port these past few weeks. He thinks that the ships were carrying iron.~ #27147 */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY @40 /* ~You've made no friends here! Get off my docks!~ #9266 */
  IF ~~ THEN EXIT
END
