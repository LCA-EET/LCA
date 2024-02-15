// creator  : F:\BGModding - LCA\Game\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDIMOEN.DLG
// game     : F:\BGModding - LCA\Game\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDIMOEN.DLG
// dialog   : F:\BGModding - LCA\Game\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XA1024~

IF ~  Global("bd_plot","global",2)
AreaCheck("bd0120")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Well, here we are in a creepy ol' tomb again. The last of Sarevok's followers are down here, according to the Flaming Fist. All you gotta do is find their leader and bring her to justice.~ [BD63941] #63941 */
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @2 /* ~What do we know of our prey?~ #63943 */ DO ~SetGlobal("bd_dynaheir_response","LOCALS",1)
~ EXTERN ~BDDYNAHJ~ 3
  IF ~  !IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @2 /* ~What do we know of our prey?~ #63943 */ GOTO 2
  IF ~~ THEN REPLY @3 /* ~I'd have an easier time of it if you came with me, Imoen.~ #63942 */ DO ~SetGlobal("BD_RESPONSE_SWITCH","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY @4 /* ~Sounds simple enough. Let's get to it.~ #63944 */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 2.0 0.2
  SAY @5 /* ~I really want to! I wouldn't be much help, though. Ever since I asked Duke Jannath to teach me how to sling spells, she's had me cooped up in the stuffy ol' library, studying boring books about the Weave. She only let me come down here after I promised to bring her any arcane scrolls or tomes I could find.~ [BD63945] #63945 */
  IF ~  Global("bd_dynaheir_response","LOCALS",0)
IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @6 /* ~That's unfortunate, but it's probably best to do as Duke Jannath says. Tell me what we know of those we hunt.~ #63946 */ EXTERN ~BDDYNAHJ~ 3
  IF ~  OR(2)
Global("bd_dynaheir_response","LOCALS",1)
!IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @6 /* ~That's unfortunate, but it's probably best to do as Duke Jannath says. Tell me what we know of those we hunt.~ #63946 */ GOTO 2
  IF ~~ THEN REPLY @7 /* ~I'm ready to get started.~ #63947 */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1 0.1
  SAY @8 /* ~They're mostly mercenaries, led by a wizard named Korlasz—this is her family's tomb. She aided Sarevok, and the Grand Dukes want her dead or alive. We'd better be careful.~ [BD63948] #63948 */
  IF ~  Global("BD_RESPONSE_SWITCH","LOCALS",0)
~ THEN REPLY @9 /* ~We? Will you be joining me?~ #63949 */ DO ~SetGlobal("BD_RESPONSE_SWITCH","LOCALS",1)
~ GOTO 1
  IF ~  Global("BD_RESPONSE_SWITCH","LOCALS",1)
~ THEN REPLY @9 /* ~We? Will you be joining me?~ #63949 */ GOTO 3
  IF ~~ THEN REPLY @10 /* ~Let's get to it, then.~ #63950 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @11 /* ~Want to, but won't. My head's so muddled with spells right now I can barely get my boots on. I'd only cause problems for you down here.~ [BD64855] #64855 */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0 2.2 1.2 0.3
  SAY @12 /* ~I'll follow behind you with these Flaming Fists. If you need help with anything, just ask and I'll do what I can.~ [BD63951] #63951 */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @13 /* ~There's a healer here too. Talk to her if you need any bandaging. She also knows all about fighting undead.~ [BD63952] #63952 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @14 /* ~Tymora shine on you, <CHARNAME>! Not that you'll need it.~ [BD70127] #70127 */
  IF ~~ THEN DO ~ActionOverride("cutspy",DestroySelf())
SetGlobal("bd_plot","global",10)
SetGlobal("BDSH_Imoen_Floor","GLOBAL",1)
AddJournalEntry(56379,QUEST)
~ EXIT
END

IF ~  AreaCheck("bd0130")
Global("BD_Talk1","LOCALS",1)
~ THEN BEGIN 7 // from:
  SAY @15 /* ~We've reached the catacombs. Watch your step—there are bound to be traps. I wouldn't be surprised if there are more undead too; tombs like this are usually full of wandering ol' bones.~ [BD64833] #64833 */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @16 /* ~If you need some advice on dealing with undead, the Flaming Fist healer might be able to help. She's a priestess of Lathander and knows a lot about how to deal with restless spirits.~ [BD64834] #64834 */
  IF ~~ THEN DO ~SetGlobal("BD_Talk1","LOCALS",2)
SetGlobal("BD_IMOEN_TRAPS","GLOBAL",1)
~ EXIT
END

IF ~  Global("bd_plot","global",10)
OR(2)
AreaCheck("bd0120")
AreaCheck("bd0130")
~ THEN BEGIN 9 // from:
  SAY @17 /* ~Heya, how are things going?~ [BD63958] #63958 */
  IF ~  Global("BD_SAREVOK_SWORD","GLOBAL",1)
~ THEN REPLY @18 /* ~The sentry that spoke to me mentioned a "sword" that was "already gone."~ #65048 */ DO ~SetGlobal("BD_SAREVOK_SWORD","GLOBAL",2)
~ GOTO 10
  IF ~  AreaCheck("BD0120")
Global("BDSH_Imoen_Room","BD0120",0)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #63959 */ GOTO 14
  IF ~  AreaCheck("BD0120")
Global("BDSH_Imoen_Room","BD0120",1)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #63959 */ GOTO 15
  IF ~  AreaCheck("BD0120")
Global("BDSH_Imoen_Room","BD0120",2)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #63959 */ GOTO 16
  IF ~  AreaCheck("BD0130")
Global("BDSH_Imoen_Room","BD0130",1)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #63959 */ GOTO 17
  IF ~  AreaCheck("BD0130")
Global("BDSH_Imoen_Room","BD0130",2)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #63959 */ GOTO 18
  IF ~  AreaCheck("BD0130")
Global("BDSH_Imoen_Room","BD0130",3)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #63959 */ GOTO 20
  IF ~  AreaCheck("BD0130")
Global("BDSH_Imoen_Room","BD0130",4)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #63959 */ GOTO 19
  IF ~  AreaCheck("BD0130")
Global("BDSH_Imoen_Room","BD0130",5)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #63959 */ GOTO 21
  IF ~~ THEN REPLY @20 /* ~I'm more concerned about you. How have you been doing these last few weeks?~ #63960 */ GOTO 22
  IF ~~ THEN REPLY @21 /* ~I require healing.~ #63961 */ GOTO 13
  IF ~~ THEN REPLY @22 /* ~Well enough. Let's continue on.~ #63962 */ GOTO 28
END

IF ~~ THEN BEGIN 10 // from: 12.0 9.0
  SAY @23 /* ~I kinda saw a note on Duke Jannath's desk—it fell on the floor, and I, I just picked it up, honest! It said someone broke into the palace and took Sarevok's sword. Could that be it?~ [BD65063] #65063 */
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @24 /* ~Perhaps. But why would she be interested in it?~ #65064 */ EXTERN ~BDDYNAHJ~ 4
  IF ~  !IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @24 /* ~Perhaps. But why would she be interested in it?~ #65064 */ GOTO 11
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @25 /* ~That might explain why the sentry thought I'd come after the sword. It was in my half-brother's hand the last time I saw it.~ #65065 */ EXTERN ~BDDYNAHJ~ 4
  IF ~  !IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @25 /* ~That might explain why the sentry thought I'd come after the sword. It was in my half-brother's hand the last time I saw it.~ #65065 */ GOTO 11
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @26 /* ~He said it was "gone," though.~ #65066 */ EXTERN ~BDDYNAHJ~ 4
  IF ~  !IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @26 /* ~He said it was "gone," though.~ #65066 */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.5 10.3 10.1
  SAY @27 /* ~I don't know why Korlasz would take the sword, but if it's "gone," she must have given it to someone else. Maybe we can find a record or shipping log in her chambers.~ [BD65068] #65068 */
  IF ~~ THEN REPLY @28 /* ~It's worth looking into.~ #65069 */ GOTO 28
  IF ~~ THEN REPLY @29 /* ~We'll not find answers staring at this dusty floor. Let's keep moving.~ #65070 */ GOTO 28
  IF ~~ THEN REPLY @30 /* ~All I care about is completing the mission and getting out of here.~ #65071 */ GOTO 28
END

IF ~~ THEN BEGIN 12 // from: 21.0 20.0 19.0 18.0 17.0 16.0 15.0 14.0 13.0
  SAY @31 /* ~Sure, what's on your mind?~ [BD65072] #65072 */
  IF ~  Global("BD_SAREVOK_SWORD","GLOBAL",1)
~ THEN REPLY @32 /* ~I'm thinking about what that sentry said. About the "sword" being "gone."~ #65049 */ DO ~SetGlobal("BD_SAREVOK_SWORD","GLOBAL",2)
~ GOTO 10
  IF ~  AreaCheck("BD0120")
Global("BDSH_Imoen_Room","BD0120",0)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #65050 */ GOTO 14
  IF ~  AreaCheck("BD0120")
Global("BDSH_Imoen_Room","BD0120",1)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #65050 */ GOTO 15
  IF ~  AreaCheck("BD0120")
Global("BDSH_Imoen_Room","BD0120",2)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #65050 */ GOTO 16
  IF ~  AreaCheck("BD0130")
Global("BDSH_Imoen_Room","BD0130",1)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #65050 */ GOTO 17
  IF ~  AreaCheck("BD0130")
Global("BDSH_Imoen_Room","BD0130",2)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #65050 */ GOTO 18
  IF ~  AreaCheck("BD0130")
Global("BDSH_Imoen_Room","BD0130",3)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #65050 */ GOTO 20
  IF ~  AreaCheck("BD0130")
Global("BDSH_Imoen_Room","BD0130",4)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #65050 */ GOTO 19
  IF ~  AreaCheck("BD0130")
Global("BDSH_Imoen_Room","BD0130",5)
~ THEN REPLY @19 /* ~What can you tell me about this place?~ #65050 */ GOTO 21
  IF ~~ THEN REPLY @33 /* ~How have you been doing these last few weeks?~ #65051 */ GOTO 22
  IF ~~ THEN REPLY @21 /* ~I require healing.~ #65052 */ GOTO 13
  IF ~~ THEN REPLY @34 /* ~Nothing right now. Let's continue on.~ #65053 */ GOTO 28
END

IF ~~ THEN BEGIN 13 // from: 12.10 9.10
  SAY @35 /* ~No surprise there. Talk to the Flaming Fist healer and she'll patch you right up.~ [BD63963] #63963 */
  IF ~~ THEN REPLY @36 /* ~I have another question for you.~ #65054 */ GOTO 12
  IF ~~ THEN REPLY @37 /* ~Let's continue on.~ #65055 */ GOTO 28
END

IF ~~ THEN BEGIN 14 // from: 12.1 9.1
  SAY @38 /* ~The dukes said this whole place is the Korlasz family tomb. All her wizard ancestors are buried here, so be sure to keep an eye out for traps and other nasty things.~ [BD63964] #63964 */
  IF ~~ THEN REPLY @36 /* ~I have another question for you.~ #65054 */ GOTO 12
  IF ~~ THEN REPLY @37 /* ~Let's continue on.~ #65055 */ GOTO 28
END

IF ~~ THEN BEGIN 15 // from: 12.2 9.2
  SAY @39 /* ~Looks like someone was playing cards here, but they left in a hurry. Probably because we showed up. It's nice to know we've built up a reputation!~ [BD63965] #63965 */
  IF ~~ THEN REPLY @36 /* ~I have another question for you.~ #65054 */ GOTO 12
  IF ~~ THEN REPLY @37 /* ~Let's continue on.~ #65055 */ GOTO 28
END

IF ~~ THEN BEGIN 16 // from: 12.3 9.3
  SAY @40 /* ~This must be one of Korlasz's ancestor's tombs. Creepy. We should look for a way down to the lower level. I bet that's where Korlasz is.~ [BD63966] #63966 */
  IF ~~ THEN REPLY @36 /* ~I have another question for you.~ #65054 */ GOTO 12
  IF ~~ THEN REPLY @37 /* ~Let's continue on.~ #65055 */ GOTO 28
END

IF ~~ THEN BEGIN 17 // from: 12.4 9.4
  SAY @41 /* ~These tombs are older than Winthrop! Be careful disturbing them. Old wizard ghosts are notorious for leaving traps all over the place.~ [BD63967] #63967 */
  IF ~~ THEN REPLY @36 /* ~I have another question for you.~ #65054 */ GOTO 12
  IF ~~ THEN REPLY @37 /* ~Let's continue on.~ #65055 */ GOTO 28
END

IF ~~ THEN BEGIN 18 // from: 12.5 9.5
  SAY @42 /* ~On the floor... that's the symbol of Bhaal! Seems like some of Korlasz's ancestors worshiped him. I could've happily gone the rest of my life without seeing THAT symbol again.~ [BD63968] #63968 */
  IF ~~ THEN REPLY @36 /* ~I have another question for you.~ #65054 */ GOTO 12
  IF ~~ THEN REPLY @37 /* ~Let's continue on.~ #65055 */ GOTO 28
END

IF ~~ THEN BEGIN 19 // from: 12.7 9.7
  SAY @43 /* ~That symbol on the ground, I recognize it. It's the mark of Bane, god of tyrants. He was killed in the Time of Troubles like your, uh... like Bhaal was.~ [BD63969] #63969 */
  IF ~~ THEN REPLY @36 /* ~I have another question for you.~ #65054 */ GOTO 12
  IF ~~ THEN REPLY @37 /* ~Let's continue on.~ #65055 */ GOTO 28
END

IF ~~ THEN BEGIN 20 // from: 12.6 9.6
  SAY @44 /* ~These braziers are strange. They're obviously magical. I wonder why they're different colors? Hm. Maybe we'll figure out what they're for as we go along.~ [BD63970] #63970 */
  IF ~~ THEN REPLY @36 /* ~I have another question for you.~ #65054 */ GOTO 12
  IF ~~ THEN REPLY @37 /* ~Let's continue on.~ #65055 */ GOTO 28
END

IF ~~ THEN BEGIN 21 // from: 12.8 9.8
  SAY @45 /* ~I recognize this one. The symbol on the ground is the dead god Myrkul's. He was god of the dead—makes sense Korlasz's ancestors would have his mark here. It looks like they worshipped the Dead Three as a group, rather than individual deities.~ [BD63971] #63971 */
  IF ~~ THEN REPLY @36 /* ~I have another question for you.~ #65054 */ GOTO 12
  IF ~~ THEN REPLY @37 /* ~Let's continue on.~ #65055 */ GOTO 28
END

IF ~~ THEN BEGIN 22 // from: 12.9 9.9
  SAY @46 /* ~It's strange having these new arcane powers. Back in Candlekeep, I never dreamed I might be a spellslinger like Gorion some day. Life sure has taken us to unexpected places. You more than me, I guess.~ [BD63972] #63972 */
  IF ~~ THEN REPLY @47 /* ~What made you decide to study magic?~ #64789 */ GOTO 23
  IF ~~ THEN REPLY @48 /* ~I hope you make a better mage than you did a thief.~ #64790 */ GOTO 25
  IF ~~ THEN REPLY @49 /* ~Let's keep moving.~ #64791 */ GOTO 28
END

IF ~~ THEN BEGIN 23 // from: 25.0 22.0
  SAY @50 /* ~It seemed practical. After all the weird places we've been, I thought it would help if I knew a couple spells and could figure out what the magical gadgets we find are for.~ [BD64792] #64792 */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @51 /* ~Then... well, I had a knack for it. Magic. I like studying my spells and remembering how Gorion would do the same back in our Candlekeep days. Feels like I still have a connection with him, you know?~ [BD64793] #64793 */
  IF ~  Class(Player1,MAGE_ALL)
~ THEN REPLY @52 /* ~It's good to have another mage at my side. I don't think there's anything that could stop us now.~ #64794 */ GOTO 26
  IF ~~ THEN REPLY @53 /* ~I know. I miss him too. It's nice to know he's still having an influence on our lives.~ #64795 */ GOTO 26
  IF ~~ THEN REPLY @54 /* ~You always cared too much about what Gorion thought. Put the past in the past.~ #64796 */ GOTO 27
  IF ~~ THEN REPLY @49 /* ~Let's keep moving.~ #64797 */ GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 22.1
  SAY @55 /* ~Hey now! Dusty ol' tombs sure make you grumpy. Let's keep moving.~ [BD64798] #64798 */
  IF ~~ THEN REPLY @56 /* ~Wait. I actually do want to know what led you to study magic.~ #64799 */ GOTO 23
  IF ~~ THEN REPLY @57 /* ~Agreed.~ #64800 */ GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 24.1 24.0
  SAY @58 /* ~You have a point. We can talk more about this later. For now, we should keep moving.~ [BD64801] #64801 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY @59 /* ~You're a real sourpuss sometimes. We can talk more about this later. For now, we should keep moving.~ [BD64802] #64802 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.1 24.3 22.2 21.1 20.1 19.1 18.1 17.1 16.1 15.1 14.1 13.1 12.11 11.2 11.1 11.0 9.11
  SAY @60 /* ~We'll follow behind you. I've got your back.~ [BD63973] #63973 */
  IF ~~ THEN EXIT
END

IF ~  OR(2)
Dead("bdkorlas")
Global("BD_KORLASZ_SURRENDER","GLOBAL",1)
AreaCheck("bd0130")
~ THEN BEGIN 29 // from:
  SAY @61 /* ~You did it! I knew you would. I wish I could've helped you out, but my magic still needs some work. A lot of work.~ [BD64517] #64517 */
  IF ~  PartyHasItem("BDSHBHR")
~ THEN REPLY @62 /* ~You said Duke Jannath wanted you to look for papers or books, right? I found these in Korlasz's room.~ #64519 */ GOTO 31
  IF ~~ THEN REPLY @63 /* ~The important thing is we've triumphed—you and I are safe.~ #64518 */ GOTO 30
  IF ~~ THEN REPLY @64 /* ~Your help wasn't needed.~ #64520 */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.2 29.1
  SAY @65 /* ~I suppose so. Are you ready to leave now? This place gives me the shivers.~ [BD64521] #64521 */
  IF ~~ THEN REPLY @66 /* ~I am.~ #64522 */ GOTO 32
  IF ~  PartyHasItem("BDSHBHR")
~ THEN REPLY @67 /* ~Duke Jannath wanted you to look for papers or books, right? I found these in Korlasz's chamber.~ #64523 */ GOTO 31
  IF ~~ THEN REPLY @68 /* ~Not yet. I want to look around.~ #64524 */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.1 29.0
  SAY @69 /* ~This is exactly the sort of thing I was looking for. Thanks. I'll tell Duke Jannath you found these when we get back to the palace.~ [BD64525] #64525 */
  IF ~~ THEN DO ~TakePartyItem("BDSHBHR")
~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0 30.2 30.0
  SAY @70 /* ~The Flaming Fists and I are gonna head back upstairs using the rope we found. It's just south of here—takes you right up to the entrance. We'll meet you there when you're ready to leave.~ [BD64526] #64526 */
  IF ~~ THEN DO ~AddXPObject(Player1,5000)
AddXPObject(Player2,5000)
AddXPObject(Player3,5000)
AddXPObject(Player4,5000)
AddXPObject(Player5,5000)
AddXPObject(Player6,5000)
SetGlobal("BDSH_Imoen_Floor","GLOBAL",3)
SetGlobal("BDSH_Rope","GLOBAL",1)
ActionOverride("BDFF1000",EscapeAreaObject("Tranbd0120rope"))
ActionOverride("BDFF1001",EscapeAreaObject("Tranbd0120rope"))
ActionOverride("BDFF1002",EscapeAreaObject("Tranbd0120rope"))
EscapeAreaObject("Tranbd0120rope")
~ EXIT
END

IF ~  Global("bd_Imoen_farewell","bd0120",0)
OR(2)
Dead("bdkorlas")
Global("BD_KORLASZ_SURRENDER","GLOBAL",1)
AreaCheck("bd0120")
~ THEN BEGIN 33 // from:
  SAY @71 /* ~I guess this is it. We've done what we came to do. Time to head back to the palace for a well-earned rest, don't you think?~ [BD64144] #64144 */
  IF ~~ THEN REPLY @72 /* ~Not quite yet. There's more I have to do in this tomb.~ #64145 */ GOTO 34
  IF ~  PartyHasItem("BDSHBHR")
~ THEN REPLY @73 /* ~Duke Jannath sent you here seeking magical papers or books, did she not? I found these in Korlasz's room.~ #70436 */ GOTO 36
  IF ~~ THEN REPLY @74 /* ~Yes. Let's return to the Ducal Palace.~ #64146 */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 37.0 33.0
  SAY @75 /* ~Just tell me when you're ready to leave.~ [BD64147] #64147 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 37.1 33.2
  SAY @76 /* ~Thank you, gods, it's done!~ [BD64148] #64148 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",40)
SetGlobal("bd_Imoen_farewell","bd0120",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 36 // from: 33.1
  SAY @69 /* ~This is exactly the sort of thing I was looking for. Thanks. I'll tell Duke Jannath you found these when we get back to the palace.~ [BD64525] #64525 */
  IF ~~ THEN DO ~TakePartyItem("BDSHBHR")
~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @77 /* ~So can we go now?~ #70437 */
  IF ~~ THEN REPLY @72 /* ~Not quite yet. There's more I have to do in this tomb.~ #64145 */ GOTO 34
  IF ~~ THEN REPLY @74 /* ~Yes. Let's return to the Ducal Palace.~ #64146 */ GOTO 35
END

IF ~  False()
Global("bd_door05_hint","bd0120",2)
GlobalLT("bd_plot","global",20)
AreaCheck("bd0120")
~ THEN BEGIN 38 // from:
  SAY @78 /* ~The others are getting anxious. We need to deal with Korlasz quickly. Is that door locked?~ #59687 */
  IF ~~ THEN DO ~SetGlobal("bd_door05_hint","bd0120",3)
~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @79 /* ~I bet one of Korlasz's cronies had a key on them. Look around for it.~ #59688 */
  IF ~~ THEN EXIT
END

IF ~  False()
Global("bd_plot","global",5)
~ THEN BEGIN 40 // from:
  SAY @80 /* ~<CHARNAME>? Are you all right? ~ #45923 */
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY @81 /* ~I'm fine, Imoen. You mustn't worry about me so much.~ #45927 */ DO ~SetGlobal("bd_plot","global",10)
~ EXTERN ~BDMINSCJ~ 5
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN REPLY @81 /* ~I'm fine, Imoen. You mustn't worry about me so much.~ #45927 */ DO ~SetGlobal("bd_plot","global",10)
~ EXTERN ~BDFF1000~ 14
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY @82 /* ~I'll be better once this night's business is done.~ #60682 */ DO ~SetGlobal("bd_plot","global",10)
~ EXTERN ~BDMINSCJ~ 5
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN REPLY @82 /* ~I'll be better once this night's business is done.~ #60682 */ DO ~SetGlobal("bd_plot","global",10)
~ EXTERN ~BDFF1000~ 14
  IF ~  IsValidForPartyDialogue("FALDORN")
~ THEN REPLY @83 /* ~I'm better than all right. I'm the gods damned hero of Baldur's Gate.~ #45925 */ DO ~SetGlobal("bd_plot","global",10)
~ EXTERN ~BDFALDOJ~ 0
  IF ~  !IsValidForPartyDialogue("FALDORN")
~ THEN REPLY @83 /* ~I'm better than all right. I'm the gods damned hero of Baldur's Gate.~ #45925 */ DO ~SetGlobal("bd_plot","global",10)
~ GOTO 41
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY @84 /* ~I'm fine. Do not question me again.~ #45929 */ DO ~SetGlobal("bd_plot","global",10)
~ EXTERN ~BDVICONJ~ 0
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY @84 /* ~I'm fine. Do not question me again.~ #45929 */ DO ~SetGlobal("bd_plot","global",10)
~ GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 40.5
  SAY @85 /* ~You're never going to get tired of people calling you that, are you?~ #57706 */
  IF ~~ THEN EXTERN ~BDFF1000~ 15
END

IF ~~ THEN BEGIN 42 // from: 40.7
  SAY @86 /* ~All right, all right, I get the message!~ #52921 */
  IF ~~ THEN EXTERN ~BDFF1000~ 14
END

IF ~~ THEN BEGIN 43 // from:
  SAY @87 /* ~I'll stay here with the Flaming Fist and make sure no one escapes while you take care of the mage.~ #57709 */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Montaron")
~ THEN EXTERN ~BDMONTAJ~ 0
  IF ~  InMyArea("bdtutor")
Global("SOD_fromimport","global",0)
~ THEN EXTERN ~BDTUTOR~ 0
END

IF ~  GlobalGT("bd_plot","global",9)
GlobalLT("bd_plot","global",29)
!Dead("bdkorlas")
AreaCheck("bd0120")
~ THEN BEGIN 44 // from:
  SAY @88 /* ~You go, take care of this Korlasz. I'll be here with the Fist when you return. Take care of yourself, <CHARNAME>.~ #45978 */
  IF ~~ THEN EXIT
END

IF ~  False()
Dead("bdkorlas")
GlobalLT("bd_plot","global",35)
Global("bd_fists_saw_dopple","bd0120",1)
AreaCheck("bd0120")
~ THEN BEGIN 45 // from:
  SAY @89 /* ~Was that another doppelganger?~ #59605 */
  IF ~~ THEN REPLY @90 /* ~The vile creature used your form to get me to lower my guard. A good trick, though not good enough.~ #59606 */ DO ~SetGlobal("bd_plot","global",35)
~ EXTERN ~BDFF1000~ 19
  IF ~~ THEN REPLY @91 /* ~Now it's another dead doppelganger.~ #59607 */ DO ~SetGlobal("bd_plot","global",35)
~ EXTERN ~BDFF1000~ 19
  IF ~~ THEN REPLY @92 /* ~What it was matters not. It's no longer a threat.~ #59608 */ DO ~SetGlobal("bd_plot","global",35)
~ EXTERN ~BDFF1000~ 19
END

IF ~  Global("bd_Imoen_farewell","bd0120",1)
AreaCheck("bd0120")
~ THEN BEGIN 46 // from: 35.0
  SAY @93 /* ~It's over, <CHARNAME>. It's finally over. Sarevok's allies are all dead or awaiting the noose. What will you do now?~ [BD46240] #46240 */
  IF ~~ THEN REPLY @94 /* ~Whatever the city and the Sword Coast require of me.~ #46241 */ GOTO 48
  IF ~  OR(2)
Class(Player1,PALADIN_ALL)
Class(Player1,CLERIC_ALL)
~ THEN REPLY @95 /* ~That is for the gods to decide.~ #60710 */ GOTO 51
  IF ~~ THEN REPLY @96 /* ~First I'm going to sleep for a week. Then another week. Then a month. After that, I'll probably have a nap.~ #46242 */ GOTO 48
  IF ~  Race(Player1,GNOME)
~ THEN REPLY @97 /* ~I'm going to Waterdeep!~ #46243 */ GOTO 47
  IF ~~ THEN REPLY @98 /* ~What I have always done: Seek new ways to expand my power.~ #46244 */ GOTO 51
END

IF ~~ THEN BEGIN 47 // from: 46.3
  SAY @99 /* ~Really?~ [BD46245] #46245 */
  IF ~~ THEN REPLY @100 /* ~No, not really. I don't know what I'm going to do. Do you?~ #46246 */ GOTO 49
  IF ~~ THEN REPLY @101 /* ~Why not?~ #46247 */ GOTO 50
END

IF ~~ THEN BEGIN 48 // from: 51.0 49.0 46.2 46.0
  SAY @102 /* ~I'm glad you're all right, <CHARNAME>. I worry about you.~ [BD46248] #46248 */
  IF ~~ THEN REPLY @103 /* ~I worry about you too. If I were to lose you... I don't know what I'd do.~ #46249 */ GOTO 54
  IF ~~ THEN REPLY @104 /* ~I'm glad I'm all right, too. I also worry about me.~ #46250 */ GOTO 52
  IF ~~ THEN REPLY @105 /* ~You waste time and energy with needless concern. I can take care of myself.~ #46251 */ GOTO 53
END

IF ~~ THEN BEGIN 49 // from: 50.0 47.0
  SAY @106 /* ~I'm going to keep studying magic with Duke Jannath. I'm starting to get—well, not good at it—but better than I was.~ [BD46252] #46252 */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 50 // from: 47.1
  SAY @107 /* ~Why not, indeed? Though that'd mean we have to part.~ [BD46253] #46253 */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 51 // from: 46.4 46.1
  SAY @108 /* ~You sure are a ray of sunshine, aren't you?~ [BD46254] #46254 */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 52 // from: 48.1
  SAY @109 /* ~Can't you take anything seriously?~ [BD46255] #46255 */
  IF ~~ THEN REPLY @110 /* ~Perhaps, though I hope I never have to.~ #46256 */ GOTO 53
  IF ~~ THEN REPLY @111 /* ~Why on Toril would I want to?~ #46257 */ GOTO 53
  IF ~~ THEN REPLY @112 /* ~This is a world of absurdity. There is nothing in it worth taking seriously, and if there were, it's not something I'd care to encounter.~ #46258 */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.2 52.1 52.0 48.2
  SAY @113 /* ~I don't know why I talk to you sometimes. I really don't.~ [BD46259] #46259 */
  IF ~~ THEN DO ~SetGlobal("bd_Imoen_farewell","bd0120",2)
AddJournalEntry(69028,QUEST_DONE)
SetCutSceneLite(TRUE)
StartCutSceneEx("bdcut00z",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 48.0
  SAY @114 /* ~Let's never find out, all right?~ [BD46260] #46260 */
  IF ~~ THEN DO ~SetGlobal("bd_Imoen_farewell","bd0120",2)
AddJournalEntry(69028,QUEST_DONE)
SetCutSceneLite(TRUE)
StartCutSceneEx("bdcut00z",FALSE)
~ EXIT
END

IF ~  Global("bd_001_plot","bd0103",0)
~ THEN BEGIN 55 // from:
  SAY @115 /* ~Heya! <CHARNAME>, you awake? It's me, Imoen.~ [BD34086] #34086 */
  IF ~~ THEN REPLY @116 /* ~What is it? Is everything all right?~ #34087 */ DO ~SetGlobal("bd_001_plot","bd0103",1)
~ GOTO 57
  IF ~~ THEN REPLY @117 /* ~I'm awake now...~ #34089 */ DO ~SetGlobal("bd_001_plot","bd0103",1)
~ GOTO 58
  IF ~~ THEN REPLY @118 /* ~I know who you are. No, I'm not awake.~ #34090 */ DO ~SetGlobal("bd_001_plot","bd0103",1)
~ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.2
  SAY @119 /* ~Then I guess I'll talk to you in your sleep.~ [BD34091] #34091 */
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 55.0
  SAY @120 /* ~I don't know. That's the problem.~ [BD34092] #34092 */
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY @121 /* ~Good. I need to talk about what's going on.~ [BD60711] #60711 */
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0 57.0 56.0
  SAY @122 /* ~Maybe I'm just jumpy because of what's been going on in the city. There's SO many people here running from that "crusade" in the north. I thought I heard noises outside my room. I was worried something was happening...~ [BD34094] #34094 */
  IF ~~ THEN REPLY @123 /* ~We've been through much of late—but we've prevailed. We can't fall victim to fear now.~ #60712 */ GOTO 62
  IF ~~ THEN REPLY @124 /* ~We're in the Ducal Palace. If something bad happens, this is about the safest place we can be.~ #34096 */ GOTO 61
  IF ~~ THEN REPLY @125 /* ~Noises? What kind of noises?~ #34098 */ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.2
  SAY @126 /* ~Footsteps, maybe. Muttering. It was probably just a servant. Hells. Now I feel silly.~ [BD34099] #34099 */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 59.1
  SAY @127 /* ~Yeesh, why do I even bother trying to talk to you?~ [BD34104] #34104 */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 62 // from: 59.0
  SAY @128 /* ~You're right. I know you're right. I just— Oh, I don't know. Hells. I just feel silly.~ [BD60713] #60713 */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0 61.0 60.0
  SAY @129 /* ~Wait, there it is again. Did you hear that...?~ [BD64509] #64509 */
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY @130 /* ~I'm gonna go check it out.~ [BD64510] #64510 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut01",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY @131 /* ~Isn't it a little late to be cleaning a bedchamber? Or really, really early?~ #60715 */
  IF ~~ THEN EXTERN ~BDFKSER1~ 3
END

IF ~  Global("bd_001_plot","bd0103",1)
~ THEN BEGIN 66 // from:
  SAY @132 /* ~Keep back! I'm warning you, come any closer and I'll... I'll...~ [BD64915] #64915 */
  IF ~~ THEN DO ~SetGlobal("bd_001_plot","bd0103",2)
~ EXTERN ~BDFKSER1~ 0
END

IF ~  Global("BD_MDD007","BD0103",1)
~ THEN BEGIN 67 // from:
  SAY @133 /* ~I... Oh, you're back. Sorry if I don't seem excited to see you. Poison really takes a toll...~ [BD35301] #35301 */
  IF ~~ THEN REPLY @134 /* ~Imoen. It's good to see you up and about. How are you doing?~ #35302 */ DO ~SetGlobal("BD_MDD007","BD0103",2)
~ GOTO 74
  IF ~~ THEN REPLY @135 /* ~What was that man in the hood doing here?~ #55721 */ DO ~SetGlobal("BD_MDD007","BD0103",2)
~ GOTO 68
  IF ~~ THEN REPLY @136 /* ~You look well, Imoen. Are you ready to pay Caelar back?~ #35304 */ DO ~SetGlobal("BD_MDD007","BD0103",2)
~ GOTO 76
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY @137 /* ~You don't know him? He said he was a friend of yours. We've known some pretty strange characters, so I didn't think it was weird to have someone pop in looking for you.~ [BD55722] #55722 */
  IF ~~ THEN REPLY @138 /* ~I don't know who he is—he's certainly no friend of mine.~ #55723 */ GOTO 69
  IF ~~ THEN REPLY @139 /* ~Eh. It's a mystery for another <DAYNIGHTALL>. How are you?~ #55725 */ GOTO 74
  IF ~~ THEN REPLY @140 /* ~I have no friends, just allies and tools.~ #55726 */ GOTO 71
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY @141 /* ~Forget about him.~ [BD64857] #64857 */
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY @142 /* ~We need to talk about your going to battle the crusade. I know you think you have to do this, but I am telling you you don't. Not only do you not have to do it, you shouldn't.~ [BD55731] #55731 */
  IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 71 // from: 68.2
  SAY @143 /* ~Gee, thanks. Actually, I'm kind of glad you said that—it'll make what I have to say a little easier.~ [BD66750] #66750 */
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY @144 /* ~I wanted to talk to you about going to battle the crusade. I can't do it, <CHARNAME>. I can't go with you.~ [BD55732] #55732 */
  IF ~~ THEN REPLY @145 /* ~I don't want you to. You'll be safer here.~ #55743 */ GOTO 80
  IF ~  Global("bd_liia_trains_immy","global",1)
~ THEN REPLY @146 /* ~Liia Jannath told me you're neither the thief you were nor the mage you will be at the moment. Best you remain here.~ #55744 */ GOTO 73
  IF ~~ THEN REPLY @147 /* ~Good. I'd not have had you anyway. You'd only slow me down.~ #55745 */ GOTO 87
  IF ~~ THEN REPLY @148 /* ~Can't go with me? What nonsense is this?~ #55746 */ GOTO 86
END

IF ~~ THEN BEGIN 73 // from: 72.1
  SAY @149 /* ~It's true—I wouldn't be much help out there. But it's not just that I can't—I don't want you to go, either.~ [BD55747] #55747 */
  IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 74 // from: 68.1 67.0
  SAY @150 /* ~Oh, I've been in worse shape. You know the kind of scrapes I get into! But never mind that for the moment.~ [BD35305] #35305 */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY @151 /* ~We need to talk about you going to Dragonspear Castle. Don't do it. Don't go.~ [BD66751] #66751 */
  IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 76 // from: 67.2
  SAY @152 /* ~Nope, I'm not. We shouldn't go north and take on this crusade, <CHARNAME>. It's—it's a bad idea.~ [BD35313] #35313 */
  IF ~~ THEN REPLY @153 /* ~I've got to, Imoen. Caelar clearly won't let us live in peace.~ #35314 */ GOTO 77
  IF ~~ THEN REPLY @154 /* ~You'd rather we wait for the crusade to attack us again?~ #35315 */ GOTO 83
  IF ~~ THEN REPLY @155 /* ~What nonsense is this?~ #35316 */ GOTO 78
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY @156 /* ~If she has her way, she won't let you live at all!~ [BD35317] #35317 */
  IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 83.0 77.0 76.2 75.0 73.0 70.0
  SAY @157 /* ~I'm healing, but you need to heal too. Not just from fighting Sarevok—those are just cuts and scars—but in coming to terms with... you know. What you are. Let someone else take care of the "Shining Lady." Please.~ [BD35318] #35318 */
  IF ~~ THEN REPLY @158 /* ~Would that I could. But Caelar has forced my hand.~ #35320 */ GOTO 79
  IF ~~ THEN REPLY @159 /* ~The city needs me. What would you have me do?~ #35321 */ GOTO 82
  IF ~~ THEN REPLY @160 /* ~Caelar and her crusade must never be allowed to attack us again.~ #35322 */ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.2 78.0
  SAY @161 /* ~I knew you'd say that. I'm... I'm sorry. I can't go with you.~ [BD35323] #35323 */
  IF ~~ THEN REPLY @145 /* ~I don't want you to. You'll be safer here.~ #35324 */ GOTO 80
  IF ~  Global("bd_liia_trains_immy","global",1)
~ THEN REPLY @146 /* ~Liia Jannath told me you're neither the thief you were nor the mage you will be at the moment. Best you remain here.~ #55748 */ GOTO 81
  IF ~~ THEN REPLY @147 /* ~Good. I'd not have had you anyway. You'd only slow me down.~ #35325 */ GOTO 87
  IF ~~ THEN REPLY @148 /* ~Can't go with me? What nonsense is this?~ #35326 */ GOTO 86
END

IF ~~ THEN BEGIN 80 // from: 86.0 79.0 72.0
  SAY @162 /* ~Well, so would you, silly! But that doesn't matter, does it? I know that look in your eyes. I'm just wasting my breath.~ [BD35327] #35327 */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 81 // from: 79.1
  SAY @163 /* ~Stay here with me. Leave Caelar to the Flaming Fist. Dealing with people like her is their job—let them do it. But you won't, will you? I know that look in your eyes. I'm wasting my breath.~ [BD55749] #55749 */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 82 // from: 78.1
  SAY @164 /* ~I'd have you tell the city to take a long walk off a short pier, that's what I'd have you do. But you won't, will you? I know that look in your eyes. I'm wasting my breath.~ [BD35330] #35330 */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 76.1
  SAY @165 /* ~I'd rather you stay away from the deranged person trying to kill you, rather than charge right into her spear.~ [BD35332] #35332 */
  IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 84 // from: 88.0 87.0 82.0 81.0 80.0
  SAY @166 /* ~Promise me you'll be careful. All right? I don't know what I'd do if... We've just lost too many people, you know?~ [BD35333] #35333 */
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY @167 /* ~I'm gonna leave now. Take care of yourself, <CHARNAME>.~ [BD35339] #35339 */
  IF ~~ THEN DO ~AddJournalEntry(56391,INFO)
EscapeAreaObject("TranBD0100b")
~ EXIT
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN DO ~AddJournalEntry(56392,INFO)
EscapeAreaObject("TranBD0100b")
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 79.3 72.3
  SAY @168 /* ~You're the closest thing I have to family, <CHARNAME>. I love you. You know that. But after Sarevok... I need things to be... quiet, just for a little while.~ [BD35341] #35341 */
  IF ~~ THEN REPLY @169 /* ~I understand. I'm glad you're not coming, in a way. You'll be safer here.~ #35344 */ GOTO 80
  IF ~~ THEN REPLY @170 /* ~But... we're adventurers...~ #35345 */ GOTO 88
  IF ~~ THEN REPLY @171 /* ~I thought you were made of sterner stuff, Imoen. If this is truly how you feel, then it's best you don't accompany us. I wouldn't want you dragging us down.~ #35350 */ GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.2 79.2 72.2
  SAY @172 /* ~Gods! You can really be mean sometimes, you know that?~ [BD35347] #35347 */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 88 // from: 86.1
  SAY @173 /* ~I'll be back on my feet soon, I'm sure of it. I'm the one who ran away from Candlekeep to help you out, remember? I just need a little more time to rest and work with the Weave.~ [BD35348] #35348 */
  IF ~~ THEN GOTO 84
END

IF ~  AreaCheck("bd6200")
GlobalLT("bd_plot","global",665)
~ THEN BEGIN 89 // from:
  SAY @174 /* ~You made it! That's great, I was—I was scared you wouldn't.~ [BD39698] #39698 */
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @175 /* ~It is good to see you again, Imoen.~ #39699 */ DO ~SetGlobal("bd_plot","global",665)
~ GOTO 90
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @176 /* ~Imoen! How did you know where to find me?~ #69868 */ DO ~SetGlobal("bd_plot","global",665)
~ GOTO 91
  IF ~~ THEN REPLY @177 /* ~You and me both.~ #39700 */ DO ~SetGlobal("bd_plot","global",665)
~ GOTO 92
  IF ~~ THEN REPLY @178 /* ~You should never have doubted I would find a way to freedom. I never did.~ #39701 */ DO ~SetGlobal("bd_plot","global",665)
~ GOTO 92
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @179 /* ~I thought I was leaving the city in secret.~ #69869 */ DO ~SetGlobal("bd_plot","global",665)
~ GOTO 91
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY @180 /* ~I wanted to visit you in jail, but they wouldn't even let me through the door. I thought you were done for.~ [BD39702] #39702 */
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 89.4 89.1
  SAY @181 /* ~Duke Jannath told me what was happening. She offered to send a messenger if I wanted to keep training with her, but I... no. I wouldn't do that to you.~ #69870 */
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 91.0 90.0 89.3 89.2
  SAY @182 /* ~I'm so sorry, <CHARNAME>. I should never have let you go to Dragonspear without me.~ [BD39703] #39703 */
  IF ~  !Global("bd_meet_canon_party","bd6200",0)
Global("bd_player_exiled","global",0)
~ THEN REPLY @183 /* ~I missed you too. More than you know.~ #39704 */ GOTO 94
  IF ~  Global("bd_meet_canon_party","bd6200",0)
Global("bd_player_exiled","global",0)
~ THEN REPLY @183 /* ~I missed you too. More than you know.~ #39704 */ GOTO 95
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @183 /* ~I missed you too. More than you know.~ #39704 */ GOTO 96
  IF ~~ THEN REPLY @184 /* ~I'm glad you weren't there, Imoen. Some of the things I saw will haunt me the rest of my days.~ #39705 */ GOTO 93
  IF ~  !Global("bd_meet_canon_party","bd6200",0)
Global("bd_player_exiled","global",0)
~ THEN REPLY @185 /* ~You make it sound as though you could stop me.~ #39706 */ GOTO 97
  IF ~  Global("bd_meet_canon_party","bd6200",0)
Global("bd_player_exiled","global",0)
~ THEN REPLY @185 /* ~You make it sound as though you could stop me.~ #39706 */ GOTO 98
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY @185 /* ~You make it sound as though you could stop me.~ #39706 */ GOTO 96
END

IF ~~ THEN BEGIN 93 // from: 92.3
  SAY @186 /* ~But if I'd been there, maybe, I don't know—maybe things would've been different.~ [BD39707] #39707 */
  IF ~~ THEN GOTO 94
  IF ~  Global("bd_player_exiled","global",1)
~ THEN GOTO 96
END

IF ~~ THEN BEGIN 94 // from: 93.0 92.0
  SAY @187 /* ~Well, we're together again now, and that's the way it's going to stay. I'm not letting you out of my sight ever again. Come on, let's get a move on. It's only a matter of time before the Flaming Fist figures out where you are.~ [BD39708] #39708 */
  IF ~~ THEN DO ~AddJournalEntry(59864,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 95 // from: 92.1
  SAY @187 /* ~Well, we're together again now, and that's the way it's going to stay. I'm not letting you out of my sight ever again. Come on, let's get a move on. It's only a matter of time before the Flaming Fist figures out where you are.~ [BD39708] #39708 */
  IF ~  NumInParty(6)
~ THEN REPLY @188 /* ~Before we go any further, I need to thank you, Imoen. If you hadn't arranged my escape, I'd still be languishing in that cell.~ #62569 */ DO ~SetGlobal("bd_plot","global",670)
AddJournalEntry(59864,INFO)
~ GOTO 105
  IF ~  NumInPartyLT(6)
~ THEN REPLY @188 /* ~Before we go any further, I need to thank you, Imoen. If you hadn't arranged my escape, I'd still be languishing in that cell.~ #62569 */ DO ~SetGlobal("bd_plot","global",670)
AddJournalEntry(59864,INFO)
JoinParty()
~ GOTO 105
  IF ~  NumInParty(6)
~ THEN REPLY @189 /* ~Agreed. Let's waste no more time in this place.~ #39721 */ DO ~SetGlobal("bd_plot","global",670)
AddJournalEntry(59864,INFO)
~ GOTO 106
  IF ~  NumInPartyLT(6)
~ THEN REPLY @189 /* ~Agreed. Let's waste no more time in this place.~ #39721 */ DO ~SetGlobal("bd_plot","global",670)
AddJournalEntry(59864,INFO)
JoinParty()
~ GOTO 106
END

IF ~~ THEN BEGIN 96 // from: 93.1 92.6 92.2
  SAY @190 /* ~Well, we're together again now, and that's the way it's going to stay. I'm not letting you out of my sight ever again. Come on. The sooner we're away from here, the better.~ #69871 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",670)
AddJournalEntry(69872,INFO)
~ EXIT
  IF ~  Global("bd_meet_canon_party","bd6200",0)
NumInPartyLT(6)
~ THEN DO ~SetGlobal("bd_plot","global",670)
AddJournalEntry(69872,INFO)
JoinParty()
~ EXIT
  IF ~  Global("bd_meet_canon_party","bd6200",1)
~ THEN DO ~AddJournalEntry(69872,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 92.4
  SAY @191 /* ~Boy, <CHARNAME>! Do you have to take every little thing as a personal affront? Come on, let's get a move on. It's only a matter of time before the Flaming Fist figures out where you are.~ [BD39710] #39710 */
  IF ~~ THEN DO ~AddJournalEntry(59864,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 92.5
  SAY @191 /* ~Boy, <CHARNAME>! Do you have to take every little thing as a personal affront? Come on, let's get a move on. It's only a matter of time before the Flaming Fist figures out where you are.~ [BD39710] #39710 */
  IF ~  NumInParty(6)
~ THEN REPLY @188 /* ~Before we go any further, I need to thank you, Imoen. If you hadn't arranged my escape, I'd still be languishing in that cell.~ #62569 */ DO ~SetGlobal("bd_plot","global",670)
AddJournalEntry(59864,INFO)
~ GOTO 105
  IF ~  NumInPartyLT(6)
~ THEN REPLY @188 /* ~Before we go any further, I need to thank you, Imoen. If you hadn't arranged my escape, I'd still be languishing in that cell.~ #62569 */ DO ~SetGlobal("bd_plot","global",670)
AddJournalEntry(59864,INFO)
JoinParty()
~ GOTO 105
  IF ~  NumInParty(6)
~ THEN REPLY @189 /* ~Agreed. Let's waste no more time in this place.~ #39721 */ DO ~SetGlobal("bd_plot","global",670)
AddJournalEntry(59864,INFO)
~ GOTO 106
  IF ~  NumInPartyLT(6)
~ THEN REPLY @189 /* ~Agreed. Let's waste no more time in this place.~ #39721 */ DO ~SetGlobal("bd_plot","global",670)
AddJournalEntry(59864,INFO)
JoinParty()
~ GOTO 106
END

IF ~  AreaCheck("bd6200")
GlobalLT("bd_plot","global",670)
~ THEN BEGIN 99 // from:
  SAY @192 /* ~Heya, everyone! I got 'em!~ [BD39741] #39741 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",670)
~ GOTO 100
  IF ~  Global("bd_player_exiled","global",1)
~ THEN DO ~SetGlobal("bd_plot","global",670)
~ GOTO 101
  IF ~  Global("bd_player_exiled","global",0)
!Dead("KHALID")
InMyArea("KHALID")
!InParty("KHALID")
~ THEN DO ~SetGlobal("bd_plot","global",670)
~ EXTERN ~BDKHALID~ 104
  IF ~  Global("bd_player_exiled","global",1)
!Dead("KHALID")
InMyArea("KHALID")
!InParty("KHALID")
~ THEN DO ~SetGlobal("bd_plot","global",670)
~ EXTERN ~BDKHALID~ 105
  IF ~  Global("bd_player_exiled","global",0)
!Dead("JAHEIRA")
InMyArea("JAHEIRA")
!InParty("JAHEIRA")
~ THEN DO ~SetGlobal("bd_plot","global",670)
~ EXTERN ~BDJAHEIR~ 50
  IF ~  Global("bd_player_exiled","global",1)
!Dead("JAHEIRA")
InMyArea("JAHEIRA")
!InParty("JAHEIRA")
~ THEN DO ~SetGlobal("bd_plot","global",670)
~ EXTERN ~BDJAHEIR~ 51
  IF ~  Global("bd_player_exiled","global",0)
!Dead("DYNAHEIR")
InMyArea("DYNAHEIR")
!InParty("DYNAHEIR")
~ THEN DO ~SetGlobal("bd_plot","global",670)
~ EXTERN ~BDDYNAHE~ 44
  IF ~  Global("bd_player_exiled","global",1)
!Dead("DYNAHEIR")
InMyArea("DYNAHEIR")
!InParty("DYNAHEIR")
~ THEN DO ~SetGlobal("bd_plot","global",670)
~ EXTERN ~BDDYNAHE~ 46
  IF ~  !Dead("MINSC")
InMyArea("MINSC")
!InParty("MINSC")
~ THEN DO ~SetGlobal("bd_plot","global",670)
~ EXTERN ~BDMINSC~ 48
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY @193 /* ~Could we maybe talk about this someplace, you know—far away from here?~ [BD39717] #39717 */
  IF ~  !Dead("DYNAHEIR")
InMyArea("DYNAHEIR")
!InParty("DYNAHEIR")
GlobalGT("bd_canon_party_size","bd6200",2)
~ THEN REPLY @194 /* ~Before we do that, I need to thank you, all of you, for, if not believing in me, at least supporting me in my hour of need. Especially you, Imoen. If you hadn't arranged my escape, I'd still be languishing in that cell.~ #39718 */ EXTERN ~BDDYNAHE~ 47
  IF ~  OR(3)
Dead("DYNAHEIR")
!InMyArea("DYNAHEIR")
InParty("DYNAHEIR")
GlobalGT("bd_canon_party_size","bd6200",2)
~ THEN REPLY @194 /* ~Before we do that, I need to thank you, all of you, for, if not believing in me, at least supporting me in my hour of need. Especially you, Imoen. If you hadn't arranged my escape, I'd still be languishing in that cell.~ #39718 */ GOTO 105
  IF ~  Global("bd_canon_party_size","bd6200",2)
~ THEN REPLY @195 /* ~Before we do that, I need to thank both of you for believing in me. Especially you, Imoen. If you hadn't arranged my escape, I'd still be languishing in that cell.~ #39719 */ GOTO 105
  IF ~  !Dead("JAHEIRA")
InMyArea("JAHEIRA")
!InParty("JAHEIRA")
~ THEN REPLY @196 /* ~You go to all the effort to have me sprung me from the Fist's headquarters, and you don't include transportation in the plan? Bad form, Imoen. Bad form.~ #39720 */ EXTERN ~BDJAHEIR~ 52
  IF ~  OR(3)
Dead("JAHEIRA")
!InMyArea("JAHEIRA")
InParty("JAHEIRA")
~ THEN REPLY @196 /* ~You go to all the effort to have me sprung me from the Fist's headquarters, and you don't include transportation in the plan? Bad form, Imoen. Bad form.~ #39720 */ GOTO 105
  IF ~  GlobalGT("bd_canon_party_size","bd6200",1)
~ THEN REPLY @197 /* ~These are the people you gathered to help me escape the Fist?~ #68987 */ GOTO 109
  IF ~~ THEN REPLY @189 /* ~Agreed. Let's waste no more time in this place.~ #39721 */ GOTO 106
END

IF ~~ THEN BEGIN 101 // from: 99.1
  SAY @193 /* ~Could we maybe talk about this someplace, you know—far away from here?~ [BD39717] #69876 */
  IF ~  GlobalGT("bd_canon_party_size","bd6200",2)
~ THEN REPLY @198 /* ~Before we do that, I need to thank you, all of you, for joining me in my hour of need.~ #69877 */ GOTO 102
  IF ~  Global("bd_canon_party_size","bd6200",2)
~ THEN REPLY @199 /* ~Before we do that, I need to thank both of you, for joining me in my hour of need.~ #69878 */ GOTO 102
  IF ~  GlobalGT("bd_canon_party_size","bd6200",2)
GlobalGT("bd_epilogue_new_face","bd6200",1)
~ THEN REPLY @200 /* ~Forgive me, Imoen. Some of these are not the faces I expected to see upon my release.~ #69879 */ GOTO 104
  IF ~  GlobalGT("bd_canon_party_size","bd6200",2)
Global("bd_epilogue_new_face","bd6200",1)
~ THEN REPLY @201 /* ~Before we go, I am well-acquainted with most of our friends here, but there's at least one face here I did not expect to see.~ #69880 */ GOTO 104
  IF ~~ THEN REPLY @202 /* ~As far away as possible. Let's go.~ #69881 */ GOTO 106
  IF ~~ THEN REPLY @203 /* ~We shall leave at the time of my choosing.~ #69882 */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 104.0 101.1 101.0
  SAY @204 /* ~The Council of Four might not be willing to stand by you, but I always will. Now let's get some distance between you and Duke Silvershield, all right?~ #69883 */
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 103 // from: 101.5
  SAY @205 /* ~If you hadn't just gotten out of a cell you'd have an argument on your hands. Fine. You lead, I'll follow.~ #69884 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 104 // from: 101.3 101.2
  SAY @206 /* ~It may have looked different from your cell, but you have more friends than you knew.~ #69885 */
  IF ~~ THEN REPLY @207 /* ~And I appreciate every one.~ #69886 */ GOTO 102
  IF ~  Global("bd_safana_party_epilogue","global",1)
~ THEN REPLY @208 /* ~I had hoped Safana would rise to the occasion.~ #68998 */ GOTO 110
  IF ~  Global("bd_viconia_party_epilogue","global",1)
~ THEN REPLY @209 /* ~I wish I could say I'm surprised Viconia abandoned me.~ #68999 */ GOTO 111
  IF ~  Global("bd_voghiln_party_epilogue","global",1)
~ THEN REPLY @210 /* ~And at least one fewer. Where's Voghiln? Passed out on a tavern floor, most like.~ #69887 */ GOTO 112
  IF ~  Global("bd_baeloth_party_epilogue","global",1)
~ THEN REPLY @211 /* ~Baeloth talks big, but I'm not surprised he isn't here now.~ #69001 */ GOTO 111
  IF ~  Global("bd_mkhiin_party_epilogue","global",1)
~ THEN REPLY @212 /* ~It's just as well M'Khiin isn't here. A goblin amongst us would surely attract attention.~ #69888 */ GOTO 113
  IF ~  Global("bd_glint_party_epilogue","global",1)
~ THEN REPLY @213 /* ~Glint's easily distracted, but I can't believe he'd leave me to my fate.~ #69003 */ GOTO 114
  IF ~  Global("bd_rasaad_party_epilogue","global",1)
~ THEN REPLY @214 /* ~I know Rasaad has other concerns, but he couldn't be persuaded to help?~ #69004 */ GOTO 115
  IF ~  Global("bd_dorn_party_epilogue","global",1)
~ THEN REPLY @215 /* ~Dorn is undoubtedly preoccupied doing his patron's bidding.~ #69005 */ GOTO 116
  IF ~  Global("bd_neera_party_epilogue","global",1)
~ THEN REPLY @216 /* ~What of Neera? You couldn't find her?~ #69006 */ GOTO 117
  IF ~  Global("bd_edwin_party_epilogue","global",1)
~ THEN REPLY @217 /* ~It would have been too much to hope Edwin Odesseiron would find it in his heart to aid me under circumstances dark as these.~ #69007 */ GOTO 118
END

IF ~~ THEN BEGIN 105 // from: 107.0 100.4 100.2 100.1 98.1 98.0 95.1 95.0
  SAY @218 /* ~You think I got you out? No, no, no. A message came to the Ducal Palace, telling me where and when to meet you. I thought it was some scheme of yours.~ [BD39726] #39726 */
  IF ~  !Dead("DYNAHEIR")
InMyArea("DYNAHEIR")
!InParty("DYNAHEIR")
~ THEN REPLY @219 /* ~Most strange. And not a little disturbing.~ #39727 */ EXTERN ~BDDYNAHE~ 48
  IF ~  OR(3)
Dead("DYNAHEIR")
!InMyArea("DYNAHEIR")
InParty("DYNAHEIR")
~ THEN REPLY @219 /* ~Most strange. And not a little disturbing.~ #39727 */ GOTO 108
  IF ~  !Dead("JAHEIRA")
InMyArea("JAHEIRA")
!InParty("JAHEIRA")
~ THEN REPLY @220 /* ~I WISH I had such foresight.~ #39728 */ EXTERN ~BDJAHEIR~ 53
  IF ~  OR(3)
Dead("JAHEIRA")
!InMyArea("JAHEIRA")
InParty("JAHEIRA")
~ THEN REPLY @220 /* ~I WISH I had such foresight.~ #39728 */ GOTO 108
  IF ~  !Dead("MINSC")
InMyArea("MINSC")
!InParty("MINSC")
~ THEN REPLY @221 /* ~Someone is manipulating me. When I find out who, they'll regret it.~ #39729 */ EXTERN ~BDMINSC~ 50
  IF ~  OR(3)
Dead("MINSC")
!InMyArea("MINSC")
InParty("MINSC")
~ THEN REPLY @221 /* ~Someone is manipulating me. When I find out who, they'll regret it.~ #39729 */ GOTO 108
END

IF ~~ THEN BEGIN 106 // from: 119.3 119.0 102.0 101.4 100.6 98.3 98.2 95.3 95.2
  SAY @222 /* ~Forward!~ [BD39730] #39730 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY @223 /* ~Wait. Wait, wait, wait.~ [BD39732] #39732 */
  IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 108 // from: 105.5 105.3 105.1
  SAY @224 /* ~We can figure this out later. For now, we need to just keep moving. Forward!~ [BD39737] #39737 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 109 // from: 121.4 100.5
  SAY @225 /* ~Of the people I could find who'd actually help, they're the ones I actually believed WOULD help. No offense, but some of your friends are, well... less than reliable.~ #68996 */
  IF ~  !Dead("JAHEIRA")
InMyArea("JAHEIRA")
!InParty("JAHEIRA")
~ THEN REPLY @226 /* ~I'll take what help I can get right now.~ #68997 */ EXTERN ~BDJAHEIR~ 54
  IF ~  OR(3)
Dead("JAHEIRA")
!InMyArea("JAHEIRA")
InParty("JAHEIRA")
!Dead("KHALID")
InMyArea("KHALID")
!InParty("KHALID")
~ THEN REPLY @226 /* ~I'll take what help I can get right now.~ #68997 */ EXTERN ~BDKHALID~ 108
  IF ~  OR(3)
Dead("JAHEIRA")
!InMyArea("JAHEIRA")
InParty("JAHEIRA")
OR(3)
Dead("KHALID")
!InMyArea("KHALID")
InParty("KHALID")
!Dead("DYNAHEIR")
InMyArea("DYNAHEIR")
!InParty("DYNAHEIR")
~ THEN REPLY @226 /* ~I'll take what help I can get right now.~ #68997 */ EXTERN ~BDDYNAHE~ 49
  IF ~  OR(3)
Dead("JAHEIRA")
!InMyArea("JAHEIRA")
InParty("JAHEIRA")
OR(3)
Dead("KHALID")
!InMyArea("KHALID")
InParty("KHALID")
OR(3)
Dead("DYNAHEIR")
!InMyArea("DYNAHEIR")
InParty("DYNAHEIR")
!Dead("MINSC")
InMyArea("MINSC")
!InParty("MINSC")
~ THEN REPLY @226 /* ~I'll take what help I can get right now.~ #68997 */ EXTERN ~BDMINSC~ 52
  IF ~  OR(3)
Dead("JAHEIRA")
!InMyArea("JAHEIRA")
InParty("JAHEIRA")
OR(3)
Dead("KHALID")
!InMyArea("KHALID")
InParty("KHALID")
OR(3)
Dead("DYNAHEIR")
!InMyArea("DYNAHEIR")
InParty("DYNAHEIR")
OR(3)
Dead("MINSC")
!InMyArea("MINSC")
InParty("MINSC")
~ THEN REPLY @226 /* ~I'll take what help I can get right now.~ #68997 */ GOTO 119
  IF ~  Global("bd_safana_party_epilogue","global",1)
~ THEN REPLY @208 /* ~I had hoped Safana would rise to the occasion.~ #68998 */ GOTO 110
  IF ~  Global("bd_viconia_party_epilogue","global",1)
~ THEN REPLY @209 /* ~I wish I could say I'm surprised Viconia abandoned me.~ #68999 */ GOTO 111
  IF ~  Global("bd_voghiln_party_epilogue","global",1)
~ THEN REPLY @227 /* ~I can't believe Voghiln would pass up a chance to take part in an epic escape of this nature.~ #69000 */ GOTO 112
  IF ~  Global("bd_baeloth_party_epilogue","global",1)
~ THEN REPLY @211 /* ~Baeloth talks big, but I'm not surprised he isn't here now.~ #69001 */ GOTO 111
  IF ~  Global("bd_mkhiin_party_epilogue","global",1)
~ THEN REPLY @228 /* ~It's just as well M'Khiin isn't involved. A goblin amongst us would surely attract attention.~ #69002 */ GOTO 113
  IF ~  Global("bd_glint_party_epilogue","global",1)
~ THEN REPLY @213 /* ~Glint's easily distracted, but I can't believe he'd leave me to my fate.~ #69003 */ GOTO 114
  IF ~  Global("bd_rasaad_party_epilogue","global",1)
~ THEN REPLY @214 /* ~I know Rasaad has other concerns, but he couldn't be persuaded to help?~ #69004 */ GOTO 115
  IF ~  Global("bd_dorn_party_epilogue","global",1)
~ THEN REPLY @215 /* ~Dorn is undoubtedly preoccupied doing his patron's bidding.~ #69005 */ GOTO 116
  IF ~  Global("bd_neera_party_epilogue","global",1)
~ THEN REPLY @216 /* ~What of Neera? You couldn't find her?~ #69006 */ GOTO 117
  IF ~  Global("bd_edwin_party_epilogue","global",1)
~ THEN REPLY @217 /* ~It would have been too much to hope Edwin Odesseiron would find it in his heart to aid me under circumstances dark as these.~ #69007 */ GOTO 118
END

IF ~~ THEN BEGIN 110 // from: 109.5 104.1
  SAY @229 /* ~Ah. I won't tell you how clothed she was when I found her with that elf in the mask, then.~ #69008 */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 111 // from: 109.8 109.6 104.4 104.2
  SAY @230 /* ~Drow. They're fickle. What can you do?~ #69009 */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 112 // from: 109.7 104.3
  SAY @231 /* ~Vog-who now? Oh wait, you mean the Luskan lech. Yeah, he actually got ahold of me. It, uh, it didn't turn out well. Sorry about that.~ #69010 */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 113 // from: 109.9 104.5
  SAY @232 /* ~I wanted to ask you about that. Hanging around with a goblin—I can tell you that didn't help your reputation when people heard what happened to Skie Silvershield.~ #69011 */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 114 // from: 109.10 104.6
  SAY @233 /* ~Uh... who's this you're talking about now? Glint? Never heard of him.~ #69012 */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 115 // from: 109.11 104.7
  SAY @234 /* ~Rasaad... Something strange is going on there. I talked to some Selûnites and they said he'd left the order? Doesn't sound right, but that's what they said. I couldn't find him.~ #69013 */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 116 // from: 109.12 104.8
  SAY @235 /* ~Probably. He can do whatever he wants, so long as he does it far away from me. That half-orc gives me the creeps.~ #69014 */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 117 // from: 109.13 104.9
  SAY @236 /* ~No, I couldn't, and honestly, I'm not sure I'd want her here anyway. She's nice enough, but things are wild enough right now without having her magic thrown into the mix.~ #69015 */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 118 // from: 109.14 104.10
  SAY @237 /* ~That's what I figured.~ #69016 */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 118.0 117.0 116.0 115.0 114.0 113.0 112.0 111.0 110.0 109.4
  SAY @238 /* ~The important thing is, you aren't alone. I'm going to get you out of this. I should never have let you get into it in the first place. Let's move.~ #69017 */
  IF ~  Global("bd_player_exiled","global",1)
~ THEN GOTO 106
  IF ~  Global("bd_player_exiled","global",0)
!Dead("DYNAHEIR")
InMyArea("DYNAHEIR")
!InParty("DYNAHEIR")
~ THEN REPLY @239 /* ~We don't have time to waste. Imoen, when you plotted my escape, did you arrange for transportation?~ #39751 */ EXTERN ~BDDYNAHE~ 52
  IF ~  Global("bd_player_exiled","global",0)
OR(3)
Dead("DYNAHEIR")
!InMyArea("DYNAHEIR")
InParty("DYNAHEIR")
~ THEN REPLY @239 /* ~We don't have time to waste. Imoen, when you plotted my escape, did you arrange for transportation?~ #39751 */ GOTO 124
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY @189 /* ~Agreed. Let's waste no more time in this place.~ #39721 */ GOTO 106
END

IF ~  False()
AreaCheck("bd6200")
GlobalLT("bd_plot","global",670)
Alignment(Player1,MASK_EVIL)
~ THEN BEGIN 120 // from:
  SAY @192 /* ~Heya, everyone! I got 'em!~ [BD39741] #39741 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",670)
~ GOTO 121
  IF ~  NumInPartyLT(6)
~ THEN DO ~SetGlobal("bd_plot","global",670)
JoinParty()
~ GOTO 121
  IF ~  NumInParty(1)
!Dead("KHALID")
InMyArea("KHALID")
~ THEN DO ~SetGlobal("bd_plot","global",670)
JoinParty()
~ EXTERN ~BDKHALID~ 110
  IF ~  NumInParty(1)
!Dead("JAHEIRA")
InMyArea("JAHEIRA")
~ THEN DO ~SetGlobal("bd_plot","global",670)
JoinParty()
~ EXTERN ~BDJAHEIR~ 55
  IF ~  NumInParty(1)
!Dead("DYNAHEIR")
InMyArea("DYNAHEIR")
~ THEN DO ~SetGlobal("bd_plot","global",670)
JoinParty()
~ EXTERN ~BDDYNAHE~ 50
  IF ~  NumInParty(1)
!Dead("MINSC")
InMyArea("MINSC")
~ THEN DO ~SetGlobal("bd_plot","global",670)
JoinParty()
~ EXTERN ~BDMINSC~ 54
END

IF ~~ THEN BEGIN 121 // from: 120.1 120.0
  SAY @240 /* ~Can we talk about this somewhere, you know, far away from here? Please?~ [BD39748] #39748 */
  IF ~  NumInPartyAliveGT(2)
~ THEN REPLY @241 /* ~Before we go, I must speak. I have done terrible things in my time, I'll not deny it. Killing Skie Silvershield is not one of them. Whether you believe that or not, I thank you all for being here. Especially you, Imoen.~ #39749 */ GOTO 122
  IF ~  NumInPartyAlive(2)
~ THEN REPLY @242 /* ~Before we go, I must speak. I have done terrible things in my time, I'll not deny it. Killing Skie Silvershield is not one of them. Whether you believe that or not, I thank you both for being here. Especially you, Imoen.~ #39750 */ GOTO 122
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN REPLY @239 /* ~We don't have time to waste. Imoen, when you plotted my escape, did you arrange for transportation?~ #39751 */ EXTERN ~BDDYNAHJ~ 119
  IF ~  !IsValidForPartyDialogue("DYNAHEIR")
~ THEN REPLY @239 /* ~We don't have time to waste. Imoen, when you plotted my escape, did you arrange for transportation?~ #39751 */ GOTO 124
  IF ~  NumInPartyAliveGT(2)
~ THEN REPLY @197 /* ~These are the people you gathered to help me escape the Fist?~ #68987 */ GOTO 109
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN REPLY @243 /* ~You can believe what you will. You have abetted my escape. The Fist won't look kindly on that.~ #39752 */ EXTERN ~BDJAHEIJ~ 69
  IF ~  !IsValidForPartyDialogue("JAHEIRA")
~ THEN REPLY @243 /* ~You can believe what you will. You have abetted my escape. The Fist won't look kindly on that.~ #39752 */ GOTO 125
END

IF ~~ THEN BEGIN 122 // from: 121.1 121.0
  SAY @244 /* ~Me? Why me?~ [BD39753] #39753 */
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN REPLY @245 /* ~For arranging my escape, of course.~ #39754 */ EXTERN ~BDDYNAHJ~ 119
  IF ~  !IsValidForPartyDialogue("DYNAHEIR")
~ THEN REPLY @245 /* ~For arranging my escape, of course.~ #39754 */ GOTO 124
  IF ~~ THEN REPLY @246 /* ~You nearly died because of me. Yet you remain steadfast in supporting me, organizing my escape from the Fist. I don't deserve to have you in my life, but I'm grateful you are.~ #39755 */ GOTO 124
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN REPLY @247 /* ~You sent my liberator to see me free, did you not?~ #39756 */ EXTERN ~BDKHALIJ~ 50
  IF ~  !IsValidForPartyDialogue("KHALID")
~ THEN REPLY @247 /* ~You sent my liberator to see me free, did you not?~ #39756 */ GOTO 123
END

IF ~~ THEN BEGIN 123 // from: 124.0 122.4
  SAY @248 /* ~No. A message came to the Ducal Palace, telling me where and when to meet you. I figured it was some scheme of yours.~ [BD39758] #39758 */
  IF ~~ THEN REPLY @249 /* ~Strange. And more than a little disturbing.~ #39759 */ GOTO 127
  IF ~  !Dead("DYNAHEIR")
InMyArea("DYNAHEIR")
!InParty("DYNAHEIR")
~ THEN REPLY @220 /* ~I WISH I had such foresight.~ #39760 */ EXTERN ~BDDYNAHE~ 53
  IF ~  OR(3)
Dead("DYNAHEIR")
!InMyArea("DYNAHEIR")
InParty("DYNAHEIR")
~ THEN REPLY @220 /* ~I WISH I had such foresight.~ #39760 */ GOTO 127
  IF ~~ THEN REPLY @250 /* ~Who sent you this message?~ #39761 */ GOTO 128
  IF ~~ THEN REPLY @251 /* ~I am being manipulated. When I learn who's behind this, they'll regret it.~ #39762 */ GOTO 127
END

IF ~~ THEN BEGIN 124 // from: 125.2 122.2 122.1 121.3 119.2
  SAY @252 /* ~Wait, you think I set up your breakout?~ [BD39763] #39763 */
  IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 125 // from: 121.6
  SAY @253 /* ~I don't want them to help because they have to. I want them to help because they want to.~ [BD39765] #39765 */
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY @254 /* ~That is too much to ask from those who see what they think they've seen. In time, I will prove my innocence. For now, we must away from here.~ #39766 */ EXTERN ~BDMINSCJ~ 108
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN REPLY @254 /* ~That is too much to ask from those who see what they think they've seen. In time, I will prove my innocence. For now, we must away from here.~ #39766 */ GOTO 126
  IF ~~ THEN REPLY @255 /* ~I'll take their help however I can get it. Did you arrange for transportation when you planned my escape?~ #39767 */ GOTO 124
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN REPLY @256 /* ~I've neither the time nor the inclination to make my case here. They will see their error eventually.~ #39768 */ EXTERN ~BDJAHEIJ~ 70
  IF ~  !IsValidForPartyDialogue("JAHEIRA")
~ THEN REPLY @256 /* ~I've neither the time nor the inclination to make my case here. They will see their error eventually.~ #39768 */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.4 125.1
  SAY @257 /* ~All right. Let's get going.~ [BD39771] #39771 */
  IF ~~ THEN DO ~StartCutSceneMode()
SetCutSceneLite(TRUE)
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 127 // from: 128.0 123.4 123.2 123.0
  SAY @258 /* ~We can figure this out later. The Fist will come looking for us soon. We should get out of here before they do.~ [BD39774] #39774 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 128 // from: 123.3
  SAY @259 /* ~I thought you did. Who else would know what you were planning? This WAS your plan, right?~ [BD39778] #39778 */
  IF ~~ THEN GOTO 127
  IF ~  !Dead("JAHEIRA")
InMyArea("JAHEIRA")
!InParty("JAHEIRA")
~ THEN EXTERN ~BDJAHEIR~ 56
END

IF ~  AreaCheck("bd6100")
GlobalLT("bd_plot","global",675)
~ THEN BEGIN 129 // from:
  SAY @260 /* ~I'm pretty sure the Flaming Fist isn't on our trail. Can we take a break, just for a minute?~ [BD39779] #39779 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",675)
DestroyItem("imoenhp1")
~ EXIT
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN DO ~SetGlobal("bd_plot","global",675)
DestroyItem("imoenhp1")
~ EXTERN ~BDKHALIJ~ 52
END

IF ~~ THEN BEGIN 130 // from:
  SAY @261 /* ~I'm glad we're back together, <CHARNAME>. I was afraid I'd lost you.~ [BD39785] #39785 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 131 // from:
  SAY @262 /* ~C'mon, then. Show us what you've got.~ #39803 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY @263 /* ~What's going on? Fingers're tingly.~ #39804 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 133 // from:
  SAY @264 /* ~Ow. That's gotta hurt. Why doesn't that hurt?~ #39805 */
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY @265 /* ~Aw, hells. This is no good.~ #39806 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 135 // from:
  SAY @266 /* ~That should be easy. A lot of people say there isn't much thinking going on in there to begin with.~ [BD63921] #63921 */
  IF ~~ THEN EXTERN ~XA1005~ 35
END

IF ~~ THEN BEGIN 136 // from:
  SAY @267 /* ~Forgive me, Duke Jannath. It's just—it's hard. My best friend is charging into a dragon's mouth, and I'm just—sitting here, thinking about magic and stuff.~ [BD63923] #63923 */
  IF ~~ THEN EXTERN ~XA1005~ 36
END

IF ~~ THEN BEGIN 137 // from:
  SAY @268 /* ~I made a mistake. I should never have let them go face Caelar without me.~ [BD63925] #63925 */
  IF ~~ THEN EXTERN ~XA1005~ 37
END

IF ~~ THEN BEGIN 138 // from:
  SAY @269 /* ~You're right. I know you're right.~ [BD63927] #63927 */
  IF ~~ THEN GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY @270 /* ~All right, what am I supposed to do again?~ [BD63928] #63928 */
  IF ~~ THEN EXTERN ~XA1005~ 38
END

IF ~~ THEN BEGIN 140 // from:
  SAY @271 /* ~Clear my mind. Right. I can do that. Clearing my mind. Clearing my mind. Mind being cleared. Clear. Mind. Cleared mind. Cleeearrrrr miiiiind.~ [BD63930] #63930 */
  IF ~~ THEN DO ~AddJournalEntry(64436,INFO)
StartCutSceneMode()
StartCutSceneEx("bdscry02",FALSE)
~ EXIT
END

IF ~  GlobalGT("bd_joined","locals",0)
!InParty(Myself)
~ THEN BEGIN 141 // from:
  SAY @272 /* ~Well, we're together again now, and that's the way it's going to stay. I'm not letting you out of my sight ever again.~ #69021 */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
JoinParty()
~ EXIT
END
