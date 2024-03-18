// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDDREON.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDDREON.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC172~

IF ~  GlobalLT("bd_plot","global",400)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I don't talk to recruits. ~ #51178 */
  IF ~~ THEN REPLY @2 /* ~But I—~ #51179 */ GOTO 2
  IF ~  !HasItemEquiped("bdchan03",LastTalkedToBy)
HasItem("bdring04",Myself)
Global("bd_ring_fence","global",1)
~ THEN REPLY @3 /* ~I've a number of reports here requiring your personal seal, sir.~ #58805 */ GOTO 1
  IF ~  HasItemEquiped("bdchan03",LastTalkedToBy)
HasItem("bdring04",Myself)
Global("bd_ring_fence","global",1)
~ THEN REPLY @3 /* ~I've a number of reports here requiring your personal seal, sir.~ #58805 */ GOTO 3
  IF ~  Global("bd_sallo_plot","bd4000",2)
PartyHasItem("BDMISC28")
~ THEN REPLY @4 /* ~I'm here to deliver the morning report, sir.~ #51461 */ GOTO 5
  IF ~  Global("bd_sallo_plot","bd4000",2)
PartyHasItem("BDMISC28")
PartyHasItem("BDMISC30")
~ THEN REPLY @5 /* ~And I wouldn't ask you to, sir. I'm just here to give you the morning report and your wine.~ #51462 */ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6 /* ~I definitely don't speak to recruits out of uniform. You're an embarrassment to the crusade, looking like that. Dismissed.~ #60260 */
  IF ~~ THEN EXIT
  IF ~  Global("bd_sallo_plot_wrong_name","GLOBAL",1)
Global("bd_spoke_with_dreon","GLOBAL",0)
~ THEN DO ~SetGlobal("bd_spoke_with_dreon","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 4.5 4.3 4.1 4.0 3.2 0.0
  SAY @7 /* ~Dismissed.~ #51181 */
  IF ~~ THEN EXIT
  IF ~  Global("bd_sallo_plot_wrong_name","GLOBAL",1)
Global("bd_spoke_with_dreon","GLOBAL",0)
~ THEN DO ~SetGlobal("bd_spoke_with_dreon","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @8 /* ~I don't have time for this. A number of reports, you say?~ #51185 */
  IF ~~ THEN REPLY @9 /* ~Stacks, sir. If you like, I could borrow your ring and mark them all for you. ~ #51186 */ GOTO 4
  IF ~~ THEN REPLY @10 /* ~I know you're a busy man. Why don't you lend me your ring and I'll mark them for you?~ #51187 */ GOTO 4
  IF ~~ THEN REPLY @11 /* ~It's not pressing. I'll come back later.~ #51188 */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0
  SAY @12 /* ~Yes, fine. Here, take it. I'll need it back by end of day.~ #51189 */
  IF ~~ THEN REPLY @13 /* ~I understand. Thank you.~ #51190 */ DO ~AddJournalEntry(60262,QUEST)
SetGlobal("bd_ring_fence","global",2)
GiveItem("bdring04",LastTalkedToBy(Myself))
~ GOTO 2
  IF ~  !IsValidForPartyDialogue("rasaad")
Alignment(Player1,MASK_LAWFUL)
~ THEN REPLY @14 /* ~You have my word.~ #51191 */ DO ~AddJournalEntry(60262,QUEST)
SetGlobal("bd_ring_fence","global",2)
GiveItem("bdring04",LastTalkedToBy(Myself))
ReputationInc(-1)
~ GOTO 2
  IF ~  IsValidForPartyDialogue("rasaad")
Alignment(Player1,MASK_LAWFUL)
~ THEN REPLY @14 /* ~You have my word.~ #51191 */ DO ~AddJournalEntry(60262,QUEST)
SetGlobal("bd_ring_fence","global",2)
GiveItem("bdring04",LastTalkedToBy(Myself))
ReputationInc(-1)
~ EXTERN ~BDRASAAJ~ 33
  IF ~  !IsValidForPartyDialogue("rasaad")
!Alignment(Player1,MASK_LAWFUL)
~ THEN REPLY @14 /* ~You have my word.~ #51191 */ DO ~AddJournalEntry(60262,QUEST)
SetGlobal("bd_ring_fence","global",2)
GiveItem("bdring04",LastTalkedToBy(Myself))
~ GOTO 2
  IF ~  IsValidForPartyDialogue("rasaad")
!Alignment(Player1,MASK_LAWFUL)
~ THEN REPLY @14 /* ~You have my word.~ #51191 */ DO ~AddJournalEntry(60262,QUEST)
SetGlobal("bd_ring_fence","global",2)
GiveItem("bdring04",LastTalkedToBy(Myself))
~ EXTERN ~BDRASAAJ~ 33
  IF ~~ THEN REPLY @15 /* ~I'll be careful with it.~ #51192 */ DO ~AddJournalEntry(60262,QUEST)
SetGlobal("bd_ring_fence","global",2)
GiveItem("bdring04",LastTalkedToBy(Myself))
~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY @16 /* ~You are? Where's Sallo?~ #61234 */
  IF ~~ THEN REPLY @17 /* ~I'd rather not say, sir.~ #61235 */ GOTO 10
  IF ~~ THEN REPLY @18 /* ~I'm afraid he's ill.~ #61236 */ GOTO 10
  IF ~  Class(Player1,BARD_ALL)
~ THEN REPLY @19 /* ~The Flaming Fist caught him outside the castle walls last night. I understand he put up a good fight, killing half a score before succumbing to their superior numbers. He will be missed.~ #61237 */ GOTO 7
  IF ~~ THEN REPLY @20 /* ~Sleeping off a very good night, by the looks of it.~ #61238 */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 11.0 10.2
  SAY @21 /* ~You say you have the morning report. What about my wine?~ #61239 */
  IF ~  PartyHasItem("BDMISC30")
~ THEN REPLY @22 /* ~It's here, sir.~ #61240 */ GOTO 14
  IF ~~ THEN REPLY @23 /* ~I'll get it right away.~ #61241 */ GOTO 13
  IF ~~ THEN REPLY @24 /* ~What about it?~ #62102 */ GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @25 /* ~Sallo did that? Huh. There was more to the drunkard than I realized. Do you have my wine?~ #61242 */
  IF ~  PartyHasItem("BDMISC30")
~ THEN REPLY @22 /* ~It's here, sir.~ #51465 */ GOTO 14
  IF ~~ THEN REPLY @23 /* ~I'll get it right away.~ #51466 */ GOTO 13
  IF ~~ THEN REPLY @24 /* ~What about it?~ #62102 */ GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 0.4
  SAY @16 /* ~You are? Where's Sallo?~ #61243 */
  IF ~~ THEN REPLY @17 /* ~I'd rather not say, sir.~ #61244 */ GOTO 10
  IF ~~ THEN REPLY @18 /* ~I'm afraid he's ill.~ #61245 */ GOTO 10
  IF ~  Class(Player1,BARD_ALL)
~ THEN REPLY @19 /* ~The Flaming Fist caught him outside the castle walls last night. I understand he put up a good fight, killing half a score before succumbing to their superior numbers. He will be missed.~ #61246 */ GOTO 9
  IF ~~ THEN REPLY @20 /* ~Sleeping off a very good night, by the looks of it.~ #61247 */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 8.2
  SAY @26 /* ~You don't say... Huh. There was more to him than I realized. Give me that wineskin. Let's have us a toast to our fallen friend.~ #61248 */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 8.1 8.0 5.1 5.0
  SAY @27 /* ~The tosspot went and got drunk again, didn't he?~ #61249 */
  IF ~~ THEN REPLY @28 /* ~I'm afraid so, sir.~ #61250 */ GOTO 11
  IF ~~ THEN REPLY @29 /* ~I couldn't say for sure. He was too unconscious for me to tell.~ #61251 */ GOTO 11
  IF ~  !PartyHasItem("BDMISC30")
~ THEN REPLY @30 /* ~I don't ask questions, sir. I just do as I'm told.~ #61252 */ GOTO 6
  IF ~  PartyHasItem("BDMISC30")
~ THEN REPLY @30 /* ~I don't ask questions, sir. I just do as I'm told.~ #61252 */ GOTO 14
  IF ~  !PartyHasItem("BDMISC30")
~ THEN REPLY @31 /* ~Do you want the report or not?~ #61253 */ GOTO 16
  IF ~  PartyHasItem("BDMISC30")
~ THEN REPLY @31 /* ~Do you want the report or not?~ #61253 */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.0 5.3
  SAY @32 /* ~That wretched sot. Mark my words, recruit, there's no place in the crusade for that kind of weakness. As soon as I finish drink—I mean, reading the report, Sallo and I are going to have a conversation about this, you can believe that.~ #61254 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY @32 /* ~That wretched sot. Mark my words, recruit, there's no place in the crusade for that kind of weakness. As soon as I finish drink—I mean, reading the report, Sallo and I are going to have a conversation about this, you can believe that.~ #61255 */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 17.2 17.1 7.2 7.1 6.2 6.1
  SAY @33 /* ~Don't just stand there. I'm parched. Fetch me my wine and be quick about it!~ #61256 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 17.0 12.0 10.3 7.0 6.0
  SAY @34 /* ~Let's see the report—and the wineskin, please. Good. All right, recruit. You're dismissed.~ #61257 */
  IF ~~ THEN DO ~SetGlobal("bd_sallo_plot","bd4000",3)
TakePartyItem("BDMISC28")
TakePartyItem("BDMISC30")
AddJournalEntry(61299,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.0
  SAY @35 /* ~He was a good man, Sallo. All right, you've done your job. Dismissed.~ #61258 */
  IF ~~ THEN DO ~SetGlobal("bd_sallo_plot","bd4000",3)
TakePartyItem("BDMISC28")
TakePartyItem("BDMISC30")
AddJournalEntry(61299,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.4
  SAY @36 /* ~Damn the report, I want my wine! Go, get it now!~ #61260 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.5
  SAY @37 /* ~What I want is my thrice-damned wine.~ #62103 */
  IF ~~ THEN REPLY @38 /* ~Very well, then. Here it is.~ #62104 */ GOTO 14
  IF ~~ THEN REPLY @39 /* ~Oh. I'll go find you some wine then, shall I?~ #62105 */ GOTO 13
  IF ~~ THEN REPLY @40 /* ~I'll get you some right away, sir.~ #62106 */ GOTO 13
END
