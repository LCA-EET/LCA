// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDDSSEN.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDDSSEN.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC131~

IF ~  Global("bd_sentry_pass","bd4000",0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Halt! Friend or foe? ~ #44044 */
  IF ~~ THEN REPLY @2 /* ~How can I know that? We've not even met yet.~ #44046 */ DO ~SetGlobal("bd_sentry_pass","bd4000",1)
~ GOTO 2
  IF ~  PartyHasItem("BDMISC04")
~ THEN REPLY @3 /* ~I hold in my hand the seal of Caelar Argent. What do you think?~ #44047 */ DO ~SetGlobal("bd_sentry_pass","bd4000",1)
~ GOTO 4
  IF ~  HasItemEquiped("bdchan03",Player1)
~ THEN REPLY @4 /* ~You don't recognize crusade livery when you see it?~ #58827 */ DO ~SetGlobal("bd_sentry_pass","bd4000",1)
~ GOTO 8
  IF ~  OR(2)
Class(Player1,FIGHTER_ALL)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY @5 /* ~I'm a good friend to have and a foe you really don't want.~ #44048 */ DO ~SetGlobal("bd_sentry_pass","bd4000",1)
~ GOTO 1
  IF ~  !Class(Player1,FIGHTER_ALL)
CheckStatLT(Player1,15,CHR)
~ THEN REPLY @5 /* ~I'm a good friend to have and a foe you really don't want.~ #44048 */ DO ~SetGlobal("bd_sentry_pass","bd4000",1)
~ GOTO 2
  IF ~~ THEN REPLY @6 /* ~A passerby, nothing more. I shall leave you.~ #60183 */ DO ~SetGlobal("bd_sentry_pass","bd4000",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.3
  SAY @7 /* ~Threats mean little to we who stand in the light of the Caelar. What business have you here?~ #44049 */
  IF ~~ THEN REPLY @8 /* ~I seek entry to Dragonspear.~ #44050 */ GOTO 2
  IF ~~ THEN REPLY @9 /* ~I must speak with Caelar Argent on matters of grave import.~ #58561 */ GOTO 2
  IF ~~ THEN REPLY @10 /* ~I was merely passing by, and will continue to do so if it's all the same to you. Farewell.~ #44052 */ GOTO 6
END

IF ~  Global("bd_sentry_pass","bd4000",1)
~ THEN BEGIN 2 // from: 1.1 1.0 0.4 0.0
  SAY @11 /* ~None but those who walk in the Shining Lady's light may pass through here. Do you carry Caelar's seal?~ #44054 */
  IF ~~ THEN REPLY @12 /* ~I do not—not yet. I would fight under her banner—I understand her crusade welcomes new recruits?~ #44055 */ GOTO 3
  IF ~  Class(Player1,BARD_ALL)
~ THEN REPLY @13 /* ~Have no fears, my friend. I too walk in the light. I was a lost soul, bereft of hope, when she found me. She raised me up. I was transformed. Now I want nothing but to serve her in whatever fashion she sees fit.~ #44056 */ GOTO 4
  IF ~  PartyHasItem("BDMISC04")
~ THEN REPLY @14 /* ~I do. I carry it with me at all times. See it here?~ #44057 */ GOTO 4
  IF ~  HasItemEquiped("bdchan03",Player1)
~ THEN REPLY @15 /* ~No, but as you can see I wear Caelar's colors. I am one of you.~ #58828 */ GOTO 8
  IF ~~ THEN REPLY @16 /* ~Stand aside. I must speak with Caelar Argent on matters of grave import.~ #58562 */ GOTO 9
  IF ~~ THEN REPLY @17 /* ~Stand aside or I'll snuff your light out as surely as I will your heretic mistress's!~ #44058 */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @18 /* ~The Shining Lady embraces all who claim her cause as their own—but I cannot allow you entry. You'd not be the first of our foes to attempt to enter the castle in the guise of the faithful.~ #65491 */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 7.0 2.2 2.1 0.1
  SAY @19 /* ~Forgive me, my <PRO_LADYLORD>. I did not know you were one of the faithful. Please, pass. May Caelar's light shine upon you always.~ #44060 */
  IF ~~ THEN DO ~SetGlobal("bd_sentry_pass","bd4000",4)
AddJournalEntry(59787,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 11.6 11.4 11.1 10.4 10.2 10.0 9.3 3.0 2.5
  SAY @20 /* ~Without the seal of Caelar, you shall not pass. Begone!~ #44067 */
  IF ~~ THEN EXIT
  IF ~  Global("bd_sentry_journal","locals",0)
~ THEN DO ~SetGlobal("bd_sentry_journal","locals",1)
AddJournalEntry(59786,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 0.5
  SAY @21 /* ~Be on your way, then.~ #58829 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.0
  SAY @22 /* ~You are a servant of the Lady, then?~ #58564 */
  IF ~  PartyHasItem("BDMISC04")
~ THEN REPLY @23 /* ~Of course. See here, I have Caelar's seal.~ #58565 */ GOTO 4
  IF ~  !IsValidForPartyDialogue("safana")
~ THEN REPLY @24 /* ~I'd hardly be standing here talking to you if I weren't, would I?~ #58566 */ GOTO 9
  IF ~  IsValidForPartyDialogue("safana")
~ THEN REPLY @24 /* ~I'd hardly be standing here talking to you if I weren't, would I?~ #58566 */ EXTERN ~BDSAFANJ~ 92
  IF ~  Class(Player1,BARD_ALL)
~ THEN REPLY @25 /* ~No, I'm with the coalition. I just thought I'd wander over here and take a tour of Dragonspear Castle. OF COURSE I'm with the crusade! And I must speak with Caelar immediately. Let me pass now.~ #58567 */ GOTO 10
  IF ~  !IsValidForPartyDialogue("rasaad")
~ THEN REPLY @26 /* ~Don't ask foolish questions.~ #58568 */ GOTO 9
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN REPLY @26 /* ~Don't ask foolish questions.~ #58568 */ EXTERN ~BDRASAAJ~ 39
END

IF ~~ THEN BEGIN 8 // from: 2.3 0.2
  SAY @27 /* ~I recognize your uniform, but not your face. You'd not be the first of our foes to attempt to enter the castle in the guise of the faithful.~ #58831 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 7.4 7.1 2.4
  SAY @28 /* ~You'll not pass through here without Caelar's seal. Tell me more of your business here.~ #58570 */
  IF ~~ THEN REPLY @29 /* ~I bring a message of great import for the Shining Lady. ~ #58571 */ GOTO 10
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY @30 /* ~The enemy plans to attack us—soon. I've acquired vital intelligence regarding their strategy that I must relay to Caelar.~ #58572 */ GOTO 11
  IF ~  CheckStatLT(Player1,17,CHR)
~ THEN REPLY @30 /* ~The enemy plans to attack us—soon. I've acquired vital intelligence regarding their strategy that I must relay to Caelar.~ #58572 */ GOTO 10
  IF ~~ THEN REPLY @31 /* ~My business is no business of yours. Let me pass, or suffer the consequences.~ #58573 */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 9.2 9.0 7.3
  SAY @32 /* ~Tell me what you would have Caelar know. I'll see to it she is told.~ #58574 */
  IF ~~ THEN REPLY @33 /* ~With respect, this is sensitive information, for the Shining Lady's ears alone.~ #58575 */ GOTO 5
  IF ~  !IsValidForPartyDialogue("glint")
CheckStatGT(Player1,15,CHR)
~ THEN REPLY @34 /* ~Tell a simple guard the details of the plan to attack Dragonspear? Do you think me mad?~ #58576 */ GOTO 11
  IF ~  !IsValidForPartyDialogue("glint")
CheckStatLT(Player1,16,CHR)
~ THEN REPLY @34 /* ~Tell a simple guard the details of the plan to attack Dragonspear? Do you think me mad?~ #58576 */ GOTO 5
  IF ~  IsValidForPartyDialogue("glint")
~ THEN REPLY @34 /* ~Tell a simple guard the details of the plan to attack Dragonspear? Do you think me mad?~ #58576 */ EXTERN ~BDGLINTJ~ 94
  IF ~~ THEN REPLY @35 /* ~You would have me entrust a guard with vital intelligence? Unacceptable.~ #58577 */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.1 9.1
  SAY @36 /* ~If our enemies had the courage to attack, they'd have done it while Caelar was ranging about the Troll Claws.~ #58578 */
  IF ~  !IsValidForPartyDialogue("rasaad")
OR(2)
CheckStatGT(Player1,17,STR)
CheckStatGT(Player1,17,CON)
~ THEN REPLY @37 /* ~Do you see how battle-weary I am? Do you see my scars and my old wounds? I am a soldier. A crusader. I know more of these matters than you think and I must speak of them to Caelar.~ #58579 */ GOTO 12
  IF ~  !IsValidForPartyDialogue("rasaad")
CheckStatLT(Player1,18,STR)
CheckStatLT(Player1,18,CON)
~ THEN REPLY @37 /* ~Do you see how battle-weary I am? Do you see my scars and my old wounds? I am a soldier. A crusader. I know more of these matters than you think and I must speak of them to Caelar.~ #58579 */ GOTO 5
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN REPLY @37 /* ~Do you see how battle-weary I am? Do you see my scars and my old wounds? I am a soldier. A crusader. I know more of these matters than you think and I must speak of them to Caelar.~ #58579 */ EXTERN ~BDRASAAJ~ 39
  IF ~  CheckStatGT(Player1,17,CHR)
~ THEN REPLY @38 /* ~Things have changed. They believe they've acquired a strategic advantage. Fortunately, the gods smiled upon me—I know their scheme. I must tell Caelar, and soon.~ #58580 */ GOTO 12
  IF ~  CheckStatLT(Player1,18,CHR)
~ THEN REPLY @38 /* ~Things have changed. They believe they've acquired a strategic advantage. Fortunately, the gods smiled upon me—I know their scheme. I must tell Caelar, and soon.~ #58580 */ GOTO 5
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY @39 /* ~Our enemies have the hero of Baldur's Gate with them now—<PRO_HESHE> is closer than you can imagine. Let me pass that I might tell the Shining Lady of the threat.~ #58581 */ GOTO 12
  IF ~  CheckStatLT(Player1,17,CHR)
~ THEN REPLY @39 /* ~Our enemies have the hero of Baldur's Gate with them now—<PRO_HESHE> is closer than you can imagine. Let me pass that I might tell the Shining Lady of the threat.~ #58581 */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 11.5 11.3 11.0
  SAY @40 /* ~Hrm. Here, take this seal. It will let you pass freely. The Lady's quarters are in the castle's western tower. Go to her, quickly, before the disbelievers rally their forces.~ #58583 */
  IF ~~ THEN DO ~SetGlobal("bd_sentry_pass","bd4000",3)
AddJournalEntry(59787,QUEST_DONE)
GiveItemCreate("BDMISC04",LastTalkedToBy(Myself),1,0,0)
~ EXIT
END

IF ~  GlobalGT("bd_sentry_pass","bd4000",2)
~ THEN BEGIN 13 // from:
  SAY @41 /* ~May Caelar's light shine upon you always.~ #70438 */
  IF ~~ THEN EXIT
END

IF ~  Global("bd_sentry_pass","bd4000",3)
~ THEN BEGIN 14 // from:
  SAY @42 /* ~Did you get through to the Shining Lady?~ #58610 */
  IF ~~ THEN REPLY @43 /* ~I didn't, but I did have words with some of our people within. She will receive my message, I'm sure of it.~ #58611 */ DO ~SetGlobal("bd_sentry_pass","bd4000",4)
~ GOTO 15
  IF ~~ THEN REPLY @44 /* ~I did. She is well aware of what is coming.~ #58612 */ DO ~SetGlobal("bd_sentry_pass","bd4000",4)
~ GOTO 15
  IF ~~ THEN REPLY @45 /* ~Unfortunately, no. But I will in the end, I can promise you that.~ #58613 */ DO ~SetGlobal("bd_sentry_pass","bd4000",4)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.2 14.1 14.0
  SAY @46 /* ~May she continue to smile upon you, friend.~ #58614 */
  IF ~~ THEN EXIT
END
