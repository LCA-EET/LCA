// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDNEDERL.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDNEDERL.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC103~

IF ~  GlobalLT("bd_plot","global",301)
IsValidForPartyDialogue("CORWIN")
AreaCheck("bd3000")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Captain Corwin. Good to see you.~ [BD37434] #37434 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",301)
SaveLocation("LOCALS","bd_default_loc",[885.1475])
SetGlobal("bd_retreat","locals",1)
~ EXTERN ~BDCORWIJ~ 137
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~And this must be the so-called hero of Baldur's Gate I've heard so much about.~ [BD37436] #37436 */
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN REPLY @3 /* ~The Grand Dukes have accorded me that honor. Given the sacrifices all the people of Baldur's Gate made during the iron crisis, I'm not completely comfortable with it.~ #37437 */ EXTERN ~BDDORNJ~ 36
  IF ~  !IsValidForPartyDialogue("DORN")
~ THEN REPLY @3 /* ~The Grand Dukes have accorded me that honor. Given the sacrifices all the people of Baldur's Gate made during the iron crisis, I'm not completely comfortable with it.~ #37437 */ GOTO 2
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN REPLY @4 /* ~That's what they call me. What the nice ones call me, at any rate. ~ #37438 */ EXTERN ~BDSAFANJ~ 86
  IF ~  !IsValidForPartyDialogue("SAFANA")
~ THEN REPLY @4 /* ~That's what they call me. What the nice ones call me, at any rate. ~ #37438 */ GOTO 2
  IF ~~ THEN REPLY @5 /* ~Where is Caelar? I would see this matter finished. ~ #37439 */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.3 1.1
  SAY @6 /* ~I'm afraid you'll not find a warm reception here. Word of what happened at Boareskyr Bridge is getting around. Many—too many—see you as Sarevok's heir apparent.~ [BD37441] #37441 */
  IF ~~ THEN REPLY @7 /* ~I look forward to proving them wrong. ~ #37442 */ GOTO 7
  IF ~~ THEN REPLY @8 /* ~Of course they do. Why wouldn't they? I only risked my life to save the Sword Coast from his diabolical machinations.~ #37443 */ GOTO 3
  IF ~~ THEN REPLY @9 /* ~What they believe is of no consequence. But if they raise a hand against me, may the gods have mercy upon them. I won't.~ #37444 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2 2.1
  SAY @10 /* ~If anyone gives you trouble, report it to me. I'll take care of it.~ [BD37445] #37445 */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 7.0 6.0 3.0
  SAY @11 /* ~Go get settled in now. When you're ready, come see me and the other commanders at the large tent south of here.~ [BD37446] #37446 */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 138
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @12 /* ~You and me both. For the moment, she's safe behind Dragonspear's walls. I've been arguing for a full assault for days. The Waterdhavian commander, Torsin de Lancie, has been holding us back—and using you as an excuse.~ [BD37448] #37448 */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 139
END

IF ~~ THEN BEGIN 6 // from:
  SAY @13 /* ~His claim is that he doesn't want to push into Dragonspear until reinforcements arrive. Now that you are here... Well, he'll probably think of another excuse not to act. He's good at that.~ [BD37450] #37450 */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.0
  SAY @14 /* ~Glad to hear it.~ [BD37452] #37452 */
  IF ~~ THEN GOTO 4
  IF ~  IsValidForPartyDialogue("mkhiin")
~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @15 /* ~Is—is that a goblin?~ [BD37455] #37455 */
  IF ~~ THEN REPLY @16 /* ~Her name is M'Khiin. She's with me. Is that a problem?~ #37456 */ DO ~SetGlobal("bd_nederlok_mkhiin","bd3000",1)
~ GOTO 9
  IF ~~ THEN REPLY @17 /* ~A goblin? WHERE? WHERE? Oh, you're talking about M'Khiin? Yeah, a goblin. She's with me. ~ #37457 */ DO ~SetGlobal("bd_nederlok_mkhiin","bd3000",1)
~ GOTO 10
  IF ~~ THEN REPLY @18 /* ~That is M'Khiin. Any who interfere with her will answer to me. Am I understood? ~ #37458 */ DO ~SetGlobal("bd_nederlok_mkhiin","bd3000",1)
~ EXTERN ~BDCORWIJ~ 140
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @19 /* ~It's not like to win you any friends, let's put it that way. I'll spread the word, but for her sake and your own, it'd be best if you kept a low profile.~ [BD37459] #37459 */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 94
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @20 /* ~The gossips' tongues will fall off before tomorrow dawns. Do what you can to keep a low profile—for all your sakes.~ [BD37461] #37461 */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 94
END

IF ~  GlobalLT("bd_plot","global",301)
!IsValidForPartyDialogue("CORWIN")
AreaCheck("bd3000")
~ THEN BEGIN 11 // from:
  SAY @21 /* ~Finally, you're here.~ [BD37463] #37463 */
  IF ~~ THEN REPLY @22 /* ~Good <DAYNIGHTALL> to you, sir. I am <CHARNAME>.~ #60300 */ DO ~SetGlobal("bd_plot","global",301)
SaveLocation("LOCALS","bd_default_loc",[885.1475])
SetGlobal("bd_retreat","locals",1)
~ GOTO 12
  IF ~~ THEN REPLY @23 /* ~I was just about to say the same thing. I'm <CHARNAME>. And you are? ~ #37464 */ DO ~SetGlobal("bd_plot","global",301)
SaveLocation("LOCALS","bd_default_loc",[885.1475])
SetGlobal("bd_retreat","locals",1)
~ GOTO 12
  IF ~~ THEN REPLY @24 /* ~No, no, please skip the formalities and go straight to complaining about trivialities.~ #37465 */ DO ~SetGlobal("bd_plot","global",301)
SaveLocation("LOCALS","bd_default_loc",[885.1475])
SetGlobal("bd_retreat","locals",1)
~ GOTO 13
  IF ~~ THEN REPLY @25 /* ~And what of it...? Would you have me apologize for the wait?~ #60301 */ DO ~SetGlobal("bd_plot","global",301)
SaveLocation("LOCALS","bd_default_loc",[885.1475])
SetGlobal("bd_retreat","locals",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 13.0 11.3 11.1 11.0
  SAY @26 /* ~I'm Kyrill Nederlok, marshal of the Burnt Stone cadre. I command the Flaming Fist contingent of the Dragonspear campaign.~ [BD37466] #37466 */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY @27 /* ~Good to meet you, Marshal. I'm sure you and your people haven't had it easy these past weeks. I hope our arrival will turn the tide somewhat.~ #37467 */ EXTERN ~BDVICONJ~ 26
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY @27 /* ~Good to meet you, Marshal. I'm sure you and your people haven't had it easy these past weeks. I hope our arrival will turn the tide somewhat.~ #37467 */ GOTO 14
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY @28 /* ~I'm glad for you.~ #37468 */ EXTERN ~BDMINSCJ~ 87
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN REPLY @28 /* ~I'm glad for you.~ #37468 */ GOTO 14
  IF ~~ THEN REPLY @5 /* ~Where is Caelar? I would see this matter finished. ~ #37469 */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY @29 /* ~And that would make YOU the so-called hero of Baldur's Gate. The stories of your glib tongue were no exaggeration.~ [BD37470] #37470 */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 12.3 12.1
  SAY @30 /* ~I should warn you—don't expect a warm reception here. Word of what happened at Boareskyr Bridge spread like wildfire. Many in this camp—too many—see you as Sarevok's heir apparent.~ [BD37477] #37477 */
  IF ~  IsValidForPartyDialogue("mkhiin")
~ THEN REPLY @31 /* ~No words will change their minds, but through my actions, they will know my heart.~ #37478 */ EXTERN ~BDMKHIIJ~ 95
  IF ~  !IsValidForPartyDialogue("mkhiin")
~ THEN REPLY @31 /* ~No words will change their minds, but through my actions, they will know my heart.~ #37478 */ GOTO 15
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN REPLY @32 /* ~Of course they do. Why wouldn't they? I only risked my life to save the entire Sword Coast from his diabolical machinations. ~ #37479 */ EXTERN ~BDDORNJ~ 37
  IF ~  !IsValidForPartyDialogue("dorn")
~ THEN REPLY @32 /* ~Of course they do. Why wouldn't they? I only risked my life to save the entire Sword Coast from his diabolical machinations. ~ #37479 */ GOTO 15
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN REPLY @33 /* ~What they believe is of no consequence. But if they raise a hand against me, may the gods have mercy upon them. I won't. ~ #37480 */ EXTERN ~BDDORNJ~ 38
  IF ~  !IsValidForPartyDialogue("DORN")
~ THEN REPLY @33 /* ~What they believe is of no consequence. But if they raise a hand against me, may the gods have mercy upon them. I won't. ~ #37480 */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.5 14.3 14.1
  SAY @34 /* ~If anyone gives you trouble, report it to me. I'll take care of it.~ [BD37483] #37483 */
  IF ~~ THEN GOTO 16
  IF ~  IsValidForPartyDialogue("MKHIIN")
~ THEN EXTERN ~BDMKHIIJ~ 96
END

IF ~~ THEN BEGIN 16 // from: 22.0 18.0 15.0
  SAY @35 /* ~Go get settled in now. After you've done that, come see me and the other city commanders at the large tent south of here.~ [BD37484] #37484 */
  IF ~~ THEN DO ~AddJournalEntry(59777,QUEST)
~ EXIT
  IF ~  IsValidForPartyDialogue("VOGHILN")
~ THEN DO ~AddJournalEntry(59777,QUEST)
~ EXTERN ~BDVOGHIJ~ 22
  IF ~  Global("bd_nederlok_mkhiin","bd3000",1)
~ THEN DO ~AddJournalEntry(59779,INFO)
AddJournalEntry(59777,QUEST)
~ EXIT
  IF ~  Global("bd_nederlok_mkhiin","bd3000",1)
IsValidForPartyDialogue("VOGHILN")
~ THEN DO ~AddJournalEntry(59779,INFO)
AddJournalEntry(59777,QUEST)
~ EXTERN ~BDVOGHIJ~ 22
END

IF ~~ THEN BEGIN 17 // from: 12.4
  SAY @36 /* ~You and me both. For the moment, she's safe behind Dragonspear's walls. I've been arguing for a full assault for days. The Waterdhavian commander, Torsin de Lancie, has been holding us back—and using you as an excuse.~ [BD37486] #37486 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @37 /* ~He's insisted on delaying any push into Dragonspear until reinforcements arrived. Now that you're here... Well, he'll probably think of some other excuse not to act. He has a talent for that.~ [BD37487] #37487 */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 19 // from:
  SAY @15 /* ~Is—is that a goblin?~ [BD37455] #37492 */
  IF ~~ THEN REPLY @38 /* ~Her name is M'Khiin. She's with me. Is that a problem? ~ #37493 */ DO ~SetGlobal("bd_nederlok_mkhiin","bd3000",1)
~ GOTO 20
  IF ~~ THEN REPLY @17 /* ~A goblin? WHERE? WHERE? Oh, you're talking about M'Khiin? Yeah, a goblin. She's with me. ~ #37494 */ DO ~SetGlobal("bd_nederlok_mkhiin","bd3000",1)
~ GOTO 21
  IF ~  IsValidForPartyDialogue("mkhiin")
~ THEN REPLY @18 /* ~That is M'Khiin. Any who interfere with her will answer to me. Am I understood? ~ #37495 */ DO ~SetGlobal("bd_nederlok_mkhiin","bd3000",1)
~ EXTERN ~BDMKHIIJ~ 98
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @39 /* ~It won't win you any friends, let's put it that way. I'll spread the word, but for her sake and your own, it'd be best for you to keep a low profile. ~ #37496 */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 97
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY @20 /* ~The gossips' tongues will fall off before tomorrow dawns. Do what you can to keep a low profile—for all your sakes.~ [BD37461] #37498 */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 97
END

IF ~~ THEN BEGIN 22 // from:
  SAY @40 /* ~I'll spread word to the troops to ask first and attack later should they encounter any goblins. But it'd best for all if she stayed close to your side. ~ #37500 */
  IF ~~ THEN GOTO 16
END

IF ~  GlobalLT("bd_plot","global",305)
!NearLocation(Myself,885,1475,5)
AreaCheck("bd3000")
~ THEN BEGIN 23 // from:
  SAY @11 /* ~Go get settled in now. When you're ready, come see me and the other commanders at the large tent south of here.~ [BD37446] #37446 */
  IF ~~ THEN EXIT
END

IF ~  GlobalLT("bd_plot","global",305)
NearLocation(Myself,885,1475,5)
AreaCheck("bd3000")
~ THEN BEGIN 24 // from:
  SAY @41 /* ~General Haither Stonehand, Torsin Cedric de Lancie, allow me to present the hero of Baldur's Gate.~ [BD37525] #37525 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",305)
~ EXTERN ~BDSTONEH~ 16
END

IF ~~ THEN BEGIN 25 // from:
  SAY @42 /* ~Excuse us, Torsin, general.~ [BD37528] #37528 */
  IF ~~ THEN DO ~SetGlobal("bd_explosives_plot","global",1)
AddJournalEntry(59780,QUEST)
AddJournalEntry(59781,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY @43 /* ~Everyone has a part to play here. The hero vanquished Sarevok. If they can do the same to Caelar, it's to everyone's advantage.~ [BD37902] #37902 */
  IF ~~ THEN EXTERN ~BDDELANC~ 6
END

IF ~~ THEN BEGIN 27 // from:
  SAY @44 /* ~That's assuming the information we have is accurate. Torture usually gets you answers, but it doesn't always get you the truth.~ [BD37538] #37538 */
  IF ~~ THEN REPLY @45 /* ~Torture? Tell me this isn't true. Are we so afraid of Caelar Argent, are our principles truly so weak that we stoop to such vile deeds?~ #60878 */ EXTERN ~BDDELANC~ 9
  IF ~~ THEN REPLY @46 /* ~I didn't come here to listen to others argue moral issues. What do you want of me?~ #60879 */ GOTO 28
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN REPLY @47 /* ~It gets you an enemy broken in body and spirit. That alone makes it a worthy pursuit.~ #60880 */ EXTERN ~BDDORNJ~ 41
  IF ~  !IsValidForPartyDialogue("DORN")
~ THEN REPLY @47 /* ~It gets you an enemy broken in body and spirit. That alone makes it a worthy pursuit.~ #60880 */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.3 27.1
  SAY @48 /* ~We have reason to believe Caelar Argent's top advisor, a priest named Hephernaan, is quartered in Dragonspear's basement. We know very little of Hephernaan, other than he apparently has Caelar's ear.~ [BD60891] #60891 */
  IF ~~ THEN EXTERN ~BDDELANC~ 11
END

IF ~~ THEN BEGIN 29 // from:
  SAY @49 /* ~That is what needs doing. Will you do it?~ [BD60901] #60901 */
  IF ~~ THEN REPLY @50 /* ~I'd be lying if I told you I wasn't... unsettled, knowing how you came by your intelligence. But the Shining Lady is the greater danger. She must be dealt with. I will do as you ask.~ #60902 */ EXTERN ~BDSTONEH~ 20
  IF ~~ THEN REPLY @51 /* ~You had me at "go spelunking to find a way to break into our enemy's stronghold to learn more about her and her advisors."~ #60903 */ EXTERN ~BDSTONEH~ 19
  IF ~~ THEN REPLY @52 /* ~There is little I wouldn't do to see Caelar's light snuffed out now and for all time.~ #60904 */ EXTERN ~BDSTONEH~ 20
END

IF ~  GlobalGT("bd_plot","global",304)
GlobalLT("bd_plot","global",350)
AreaCheck("bd3000")
~ THEN BEGIN 30 // from:
  SAY @53 /* ~<CHARNAME>, good to see you.~ [BD43960] #43960 */
  IF ~  GlobalGT("bd_skie_plot","global",9)
GlobalLT("bd_nederlok_skie","locals",2)
~ THEN REPLY @54 /* ~Skie's been located and returned safely to the camp, Marshal Nederlok.~ #60233 */ DO ~SetGlobal("bd_nederlok_skie","locals",2)
~ GOTO 38
  IF ~  Global("SDD303","GLOBAL",1)
~ THEN REPLY @55 /* ~I bring news, Marshal. I discovered evidence of a traitor in camp. I found these notes and traced them back to the spy.~ #58546 */ GOTO 63
  IF ~  Global("bd_nederlok_skie","locals",0)
GlobalLT("bd_skie_plot","global",5)
~ THEN REPLY @56 /* ~You as well, Marshal Nederlok.~ #43961 */ GOTO 32
  IF ~  OR(2)
!Global("bd_nederlok_skie","locals",0)
!GlobalLT("bd_skie_plot","global",5)
~ THEN REPLY @56 /* ~You as well, Marshal Nederlok.~ #43961 */ GOTO 31
  IF ~  Global("bd_nederlok_skie","locals",0)
GlobalLT("bd_skie_plot","global",5)
~ THEN REPLY @57 /* ~I wish I could return the compliment, but I have much to do and no time to waste on idle chatter.~ #43962 */ GOTO 32
  IF ~  OR(2)
!Global("bd_nederlok_skie","locals",0)
!GlobalLT("bd_skie_plot","global",5)
~ THEN REPLY @57 /* ~I wish I could return the compliment, but I have much to do and no time to waste on idle chatter.~ #43962 */ GOTO 31
  IF ~  Global("bd_nederlok_skie","locals",0)
GlobalLT("bd_skie_plot","global",5)
~ THEN REPLY @58 /* ~I beg your pardon, Marshal. I've no time to tarry.~ #43963 */ GOTO 32
  IF ~  OR(2)
!Global("bd_nederlok_skie","locals",0)
!GlobalLT("bd_skie_plot","global",5)
~ THEN REPLY @58 /* ~I beg your pardon, Marshal. I've no time to tarry.~ #43963 */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.7 30.5 30.3
  SAY @59 /* ~I know you have important business to take care of. Good luck with it.~ #43966 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.6 30.4 30.2
  SAY @60 /* ~Hold a minute, <CHARNAME>. I know you're in a hurry, but I have something important to ask you.~ [BD60234] #60234 */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @61 /* ~You know the daughter of Grand Duke Silvershield journeyed with the Flaming Fist from Baldur's Gate, yes? Do you know where I might find her?~ [BD43967] #43967 */
  IF ~  Global("bd_skie_plot","global",0)
!IsValidForPartyDialogue("MKHIIN")
~ THEN REPLY @62 /* ~She was with us when we arrived at the camp, this much I know. What happened to her after that, I couldn't say.~ #43968 */ GOTO 36
  IF ~  Global("bd_skie_plot","global",0)
IsValidForPartyDialogue("MKHIIN")
~ THEN REPLY @62 /* ~She was with us when we arrived at the camp, this much I know. What happened to her after that, I couldn't say.~ #43968 */ EXTERN ~BDMKHIIJ~ 100
  IF ~  Global("bd_skie_plot","global",0)
~ THEN REPLY @63 /* ~Just listen for an endless stream of complaints, and you shall find her.~ #43969 */ GOTO 34
  IF ~  !Global("bd_skie_plot","global",0)
~ THEN REPLY @64 /* ~Corporal Duncan said she was seen heading towards Dragonspear.~ #69641 */ GOTO 35
  IF ~  !IsValidForPartyDialogue("RASAAD")
~ THEN REPLY @65 /* ~I don't, and that is a most agreeable situation.~ #43970 */ GOTO 36
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN REPLY @65 /* ~I don't, and that is a most agreeable situation.~ #43970 */ EXTERN ~BDRASAAJ~ 37
END

IF ~~ THEN BEGIN 34 // from: 33.2
  SAY @66 /* ~I gather she's not endeared herself to you, or much of anyone in your troupe.~ [BD43971] #43971 */
  IF ~~ THEN GOTO 36
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN EXTERN ~BDDORNJ~ 44
END

IF ~~ THEN BEGIN 35 // from: 33.3
  SAY @67 /* ~What? That spoilt whelp...~ #69642 */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0 34.0 33.4 33.0
  SAY @68 /* ~If you see her, tell her to seek me out, please. It was one thing to torment her on the journey here, but if she were killed or fell into enemy hands, Duke Silvershield would be... displeased.~ [BD43973] #43973 */
  IF ~~ THEN GOTO 37
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN EXTERN ~BDSAFANJ~ 88
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @69 /* ~I'll leave you to your business now. Thanks.~ #43976 */
  IF ~~ THEN EXIT
  IF ~  Global("bd_nederlok_skie","locals",0)
~ THEN DO ~SetGlobal("bd_nederlok_skie","locals",1)
~ EXIT
  IF ~  Global("bd_nederlok_skie","locals",0)
Global("bd_skie_plot","global",0)
~ THEN DO ~SetGlobal("bd_nederlok_skie","locals",1)
AddJournalEntry(59782,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 30.0
  SAY @70 /* ~Thank the gods. I don't know what Duke Silvershield would have done if anything happened to his daughter. I appreciate you taking care of this, <CHARNAME>. Here's a small reward for your efforts.~ [BD60235] #60235 */
  IF ~~ THEN GOTO 39
  IF ~  Global("bd_skie_plot","global",10)
~ THEN GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @71 /* ~I've assigned Skie to join some of the other soldiers in filling sandbags. She'll be at it for days. That should keep her out of trouble for a while. I owe you my thanks.~ #69199 */
  IF ~~ THEN DO ~GiveGoldForce(800)
AddJournalEntry(69685,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY @72 /* ~I haven't seen Skie yet, but when I do, I'm going to set her to filling sandbags. That should keep her out of trouble for a while. I owe you my thanks.~ #69200 */
  IF ~~ THEN DO ~GiveGoldForce(800)
AddJournalEntry(69685,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY @73 /* ~She wants you, <CHARNAME>. She says she'll disband her army and surrender if you go with her. Sounds too good to be true, doesn't it?~ [BD38650] #38650 */
  IF ~~ THEN EXTERN ~XAC108~ 39
END

IF ~~ THEN BEGIN 42 // from:
  SAY @74 /* ~So be it. Everyone, back to camp. Prepare for an attack.~ [BD65126] #65126 */
  IF ~~ THEN EXTERN ~BDDELANC~ 48
END

IF ~~ THEN BEGIN 43 // from:
  SAY @75 /* ~You what?~ [BD65129] #65129 */
  IF ~~ THEN EXTERN ~BDSTONEH~ 35
END

IF ~~ THEN BEGIN 44 // from:
  SAY @76 /* ~Use your brains, both of you. We can't agree to this. The reports from Baldur's Gate said someone paid for the hero's blood on a sword. Now Caelar wants the hero under her control. I don't like it.~ [BD65122] #65122 */
  IF ~~ THEN EXTERN ~XAC108~ 42
  IF ~  IsValidForPartyDialogue("Dynaheir")
Gender(Player1,FEMALE)
~ THEN EXTERN ~BDDYNAHJ~ 104
  IF ~  IsValidForPartyDialogue("Dynaheir")
Gender(Player1,MALE)
~ THEN EXTERN ~BDDYNAHJ~ 105
END

IF ~~ THEN BEGIN 45 // from:
  SAY @77 /* ~What Caelar plans for the hero may be worse than loss of life. I understand your position, Stonehand, but you must see that cooperation could end in a bigger disaster than a battle.~ [BD38672] #38672 */
  IF ~~ THEN EXTERN ~BDDELANC~ 50
END

IF ~  Global("bd_plot","global",392)
AreaCheck("bd7300")
~ THEN BEGIN 46 // from:
  SAY @78 /* ~Let's get you back to the camp, <CHARNAME>. You're not safe here.~ [BD37869] #37869 */
  IF ~~ THEN REPLY @79 /* ~What could she want with me? ~ #37870 */ DO ~SetGlobal("bd_plot","global",393)
~ GOTO 47
  IF ~  !IsValidForPartyDialogue("GLINT")
~ THEN REPLY @80 /* ~I don't understand. Caelar tried to have me killed in Baldur's Gate. Now she tries to win me over? It makes no sense.~ #37871 */ DO ~SetGlobal("bd_plot","global",393)
~ GOTO 47
  IF ~  IsValidForPartyDialogue("GLINT")
~ THEN REPLY @80 /* ~I don't understand. Caelar tried to have me killed in Baldur's Gate. Now she tries to win me over? It makes no sense.~ #37871 */ DO ~SetGlobal("bd_plot","global",393)
~ EXTERN ~BDGLINTJ~ 100
  IF ~~ THEN REPLY @81 /* ~I'm as safe here as anywhere else in this wretched world. ~ #37872 */ DO ~SetGlobal("bd_plot","global",393)
~ GOTO 49
END

IF ~~ THEN BEGIN 47 // from: 46.1 46.0
  SAY @82 /* ~War rarely makes sense.~ [BD37881] #37881 */
  IF ~~ THEN EXTERN ~BDSTONEH~ 38
END

IF ~~ THEN BEGIN 48 // from:
  SAY @82 /* ~War rarely makes sense.~ [BD37881] #37893 */
  IF ~~ THEN EXTERN ~BDSTONEH~ 38
END

IF ~~ THEN BEGIN 49 // from: 46.3
  SAY @83 /* ~All right then, I'd feel better if we were back in the camp.~ [BD37894] #37894 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut39",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN EXTERN ~BDCORWIJ~ 166
END

IF ~  AreaCheck("bd3000")
Global("bd_plot","global",401)
~ THEN BEGIN 50 // from:
  SAY @84 /* ~Good work. We've still got fighting in the east and west, but the bulk of Caelar's forces have been routed.~ [BD38068] #38068 */
  IF ~  !IsValidForPartyDialogue("KHALID")
~ THEN REPLY @85 /* ~Glad to hear it. What now? ~ #38069 */ DO ~SetGlobal("bd_plot","global",402)
~ GOTO 51
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN REPLY @85 /* ~Glad to hear it. What now? ~ #38069 */ DO ~SetGlobal("bd_plot","global",402)
~ EXTERN ~BDKHALIJ~ 38
  IF ~~ THEN REPLY @86 /* ~Not a moment too soon. Arguably several minutes too late, but that's water under the bridge. ~ #38070 */ DO ~SetGlobal("bd_plot","global",402)
~ GOTO 51
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN REPLY @87 /* ~Save the compliments, Nederlok. Tell me what I want to hear: Tell me we're taking the battle to Caelar's door. ~ #38071 */ DO ~SetGlobal("bd_plot","global",402)
~ GOTO 51
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY @87 /* ~Save the compliments, Nederlok. Tell me what I want to hear: Tell me we're taking the battle to Caelar's door. ~ #38071 */ DO ~SetGlobal("bd_plot","global",402)
~ EXTERN ~BDMINSCJ~ 92
END

IF ~~ THEN BEGIN 51 // from: 50.3 50.2 50.0
  SAY @88 /* ~The crusade's falling back into Dragonspear. We'll never have a better chance of finishing this than we do now. Get what you need from the camp and rendezvous with the siege commanders at Dragonspear's gates.~ [BD38073] #38073 */
  IF ~~ THEN DO ~AddJournalEntry(66746,QUEST)
RemoveAreaFlag(NOTRAVEL)
EscapeAreaObject("npc_exit")
~ EXIT
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN DO ~RemoveAreaFlag(NOTRAVEL)
~ EXTERN ~BDCORWIJ~ 169
END

IF ~  AreaCheck("bd4000")
GlobalLT("bd_plot","global",440)
Global("bd_nederlok_plot","bd4000",1)
~ THEN BEGIN 52 // from:
  SAY @89 /* ~<CHARNAME>. You're still with us.~ #38291 */
  IF ~~ THEN REPLY @90 /* ~Of course. What's the situation?~ #38292 */ DO ~SetGlobal("bd_nederlok_plot","bd4000",2)
~ GOTO 55
  IF ~~ THEN REPLY @91 /* ~Surprised?~ #38293 */ DO ~SetGlobal("bd_nederlok_plot","bd4000",2)
~ GOTO 53
  IF ~~ THEN REPLY @92 /* ~For the moment.~ #38294 */ DO ~SetGlobal("bd_nederlok_plot","bd4000",2)
~ GOTO 58
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY @93 /* ~Pleased. You might be able to turn this around.~ #38295 */
  IF ~~ THEN REPLY @94 /* ~What do you need?~ #38296 */ GOTO 55
  IF ~~ THEN REPLY @95 /* ~Turn it around? I thought we were winning.~ #38297 */ GOTO 54
  IF ~~ THEN REPLY @96 /* ~Do you have any strategy beyond riding my coattails to victory?~ #38298 */ GOTO 60
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY @97 /* ~We've done well so far, but this may be as far as we go.~ #38299 */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 60.0 58.0 54.0 53.0 52.0
  SAY @98 /* ~We may be able to hold this section of the outer courtyard, but we can't get any farther. The crusade is like the tide—we're trying to stop it, but there are too many of them.~ [BD38300] #38300 */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY @99 /* ~If we're to get Caelar within the keep, someone needs to staunch the flow of troops from the camp so we can break down the inner courtyard doors.~ [BD38301] #38301 */
  IF ~~ THEN REPLY @100 /* ~I'll see what I can do.~ #38302 */ GOTO 57
  IF ~~ THEN REPLY @101 /* ~So you want me to risk my life fighting my way into the heart of the crusader camp? I guess I can do that. Death before boredom!~ #38303 */ GOTO 57
  IF ~~ THEN REPLY @102 /* ~Whoever's commanding the crusaders must fall.~ #38304 */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 56.1 56.0
  SAY @103 /* ~Tymora go with you.~ #38305 */
  IF ~~ THEN DO ~AddJournalEntry(59807,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 52.2
  SAY @104 /* ~Hopefully, you'll be with us a moment longer. I need your help.~ #38306 */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 59 // from: 56.2
  SAY @105 /* ~If they don't go down, we'll have to go back. We can't hold this position forever.~ #38307 */
  IF ~~ THEN DO ~AddJournalEntry(59807,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 53.2
  SAY @106 /* ~A couple, but I'm hoping I won't need them.~ #38308 */
  IF ~~ THEN GOTO 55
END

IF ~  AreaCheck("bd4000")
GlobalLT("bd_plot","global",440)
~ THEN BEGIN 61 // from:
  SAY @107 /* ~We need to do something to stop the crusaders coming out of their camp. They'll likely stop their attack if the camp commander falls, but reaching her will be a challenge.~ #38309 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4000")
GlobalLT("bd_plot","global",450)
~ THEN BEGIN 62 // from:
  SAY @103 /* ~Tymora go with you.~ #38305 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 63 // from: 30.1
  SAY @108 /* ~We have a spy among us? Do you know who?~ [BD50843] #50843 */
  IF ~  Dead("BDHELVDA")
Global("SDD303_BOTTLE","GLOBAL",2)
~ THEN REPLY @109 /* ~Private Helvdar. One of his potion bottles was found with an incriminating notebook.~ #50844 */ GOTO 64
  IF ~  Dead("BDSIMONE")
!Global("SDD303_PAPER","GLOBAL",0)
~ THEN REPLY @110 /* ~Warden Twoedged. Incriminating notes were found with a page from her cipher book.~ #50845 */ GOTO 64
  IF ~  Global("SDD303_ACCUSED_COL","GLOBAL",1)
~ THEN REPLY @111 /* ~Malden Col. When I confronted him, he confessed to everything and was arrested.~ #50846 */ GOTO 68
  IF ~  Global("sdd303_seal_found","bd3000",2)
~ THEN REPLY @112 /* ~Malden Col. I found this seal in his pocket.~ #67111 */ GOTO 64
  IF ~~ THEN REPLY @113 /* ~Not yet. I need to investigate further.~ #50848 */ GOTO 70
END

IF ~~ THEN BEGIN 64 // from: 63.3 63.1 63.0
  SAY @114 /* ~Where can I find the traitor?~ #50849 */
  IF ~~ THEN REPLY @116 /* ~I was forced to defend myself. The spy is dead.~ #50850 */ DO ~SetGlobal("SDD303","GLOBAL",2)
AddexperienceParty(6000)
~ SOLVED_JOURNAL @115 /* ~The Traitor

I've reported the traitor's name.

I went to Marshal Nederlok with my evidence regarding the traitor. He was upset that I took matters into my own hands but accepts the result of my investigation.~ #58643 */ GOTO 65
  IF ~~ THEN REPLY @117 /* ~Feeding worms.~ #50851 */ DO ~SetGlobal("SDD303","GLOBAL",2)
AddexperienceParty(6000)
~ SOLVED_JOURNAL @115 /* ~The Traitor

I've reported the traitor's name.

I went to Marshal Nederlok with my evidence regarding the traitor. He was upset that I took matters into my own hands but accepts the result of my investigation.~ #58643 */ GOTO 65
  IF ~~ THEN REPLY @118 /* ~Dead, at my hand. It needed to be done.~ #50852 */ DO ~SetGlobal("SDD303","GLOBAL",2)
AddexperienceParty(6000)
~ SOLVED_JOURNAL @115 /* ~The Traitor

I've reported the traitor's name.

I went to Marshal Nederlok with my evidence regarding the traitor. He was upset that I took matters into my own hands but accepts the result of my investigation.~ #58643 */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.2 64.1 64.0
  SAY @119 /* ~For now, I'll believe your evidence, but I want no more summary justice. Next time, consult me before you kill one of our own, understood?~ [BD50854] #50854 */
  IF ~~ THEN REPLY @120 /* ~Understood.~ #50855 */ GOTO 66
  IF ~~ THEN REPLY @121 /* ~You could show a little gratitude. I saved us all from treachery.~ #50856 */ GOTO 67
  IF ~~ THEN REPLY @122 /* ~I'll do what I feel is necessary, as always.~ #50857 */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 69.2 69.1 69.0 65.2 65.0
  SAY @123 /* ~Get out of here, then. Dismissed.~ #50858 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.1
  SAY @124 /* ~So you say. I hope you're right. You're dismissed.~ #50859 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from: 63.2
  SAY @125 /* ~Malden Col. I knew him well—or thought I did. We have to tighten our security. No one can be trusted anymore, not even our own forces.~ [BD50860] #50860 */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY @126 /* ~Thank you for bringing this to my attention. I can offer you this shortbow as a reward.~ #50865 */
  IF ~~ THEN REPLY @128 /* ~I need no reward. The traitor was dealt with—that is all that matters.~ #50866 */ DO ~SetGlobal("SDD303","GLOBAL",2)
ReputationInc(1)
AddexperienceParty(6000)
~ SOLVED_JOURNAL @127 /* ~The Traitor

I've reported the traitor's name.

I told Marshal Nederlok of Malden Col's treachery. He was upset at the thought of a traitor in camp but was glad I handled it. We have to be more careful going forward—no one can be trusted.~ #58644 */ GOTO 66
  IF ~~ THEN REPLY @129 /* ~It's appreciated. ~ #50867 */ DO ~SetGlobal("SDD303","GLOBAL",2)
GiveItemCreate("BDBOW03",LastTalkedToBy,0,0,0)
AddexperienceParty(6000)
~ SOLVED_JOURNAL @127 /* ~The Traitor

I've reported the traitor's name.

I told Marshal Nederlok of Malden Col's treachery. He was upset at the thought of a traitor in camp but was glad I handled it. We have to be more careful going forward—no one can be trusted.~ #58644 */ GOTO 66
  IF ~~ THEN REPLY @130 /* ~The only reward I want is Caelar Argent's head on a pike.~ #58547 */ DO ~SetGlobal("SDD303","GLOBAL",2)
AddexperienceParty(6000)
~ SOLVED_JOURNAL @127 /* ~The Traitor

I've reported the traitor's name.

I told Marshal Nederlok of Malden Col's treachery. He was upset at the thought of a traitor in camp but was glad I handled it. We have to be more careful going forward—no one can be trusted.~ #58644 */ GOTO 66
END

IF ~~ THEN BEGIN 70 // from: 63.4
  SAY @131 /* ~Well, get to it then, <PRO_MANWOMAN>.~ #50868 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd4100")
Global("bd_mdd1271","LOCALS",0)
~ THEN BEGIN 71 // from:
  SAY @132 /* ~Good to see you again, <CHARNAME>. We're holding the entrance to the tunnels and making sure any crusaders coming back this way are captured or killed.~ [BD65582] #65582 */
  IF ~~ THEN REPLY @133 /* ~What should I do?~ #65584 */ DO ~SetGlobal("bd_mdd1271","LOCALS",1)
~ GOTO 73
  IF ~~ THEN REPLY @134 /* ~Keep at it, then.~ #65585 */ DO ~SetGlobal("bd_mdd1271","LOCALS",1)
~ GOTO 73
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN REPLY @135 /* ~I've no time for this.~ #65586 */ DO ~SetGlobal("bd_mdd1271","LOCALS",1)
~ EXTERN ~BDCORWIJ~ 332
  IF ~  !IsValidForPartyDialogue("corwin")
~ THEN REPLY @135 /* ~I've no time for this.~ #65586 */ DO ~SetGlobal("bd_mdd1271","LOCALS",1)
~ GOTO 75
END

IF ~~ THEN BEGIN 72 // from: 75.1
  SAY @136 /* ~Gods damn it, the battle's not even won yet...! Officer Granz, take care of this, please.~ [BD65587] #65587 */
  IF ~~ THEN EXTERN ~BDFF1271~ 1
END

IF ~  AreaCheck("bd4100")
Global("bd_mdd1271_journal","bd4100",0)
~ THEN BEGIN 73 // from: 71.1 71.0
  SAY @137 /* ~Caelar's holed up beneath us in the basement. Bence Duncan's preparing to engage her. Head down the stairs and finish this.~ [BD65598] #65598 */
  IF ~~ THEN REPLY @138 /* ~I intend to. The coalition will prevail today.~ #65599 */ DO ~SetGlobal("bd_mdd1271_journal","bd4100",1)
AddJournalEntry(65604,QUEST)
~ GOTO 75
  IF ~~ THEN REPLY @139 /* ~What can you tell me about Caelar's position?~ #65600 */ DO ~SetGlobal("bd_mdd1271_journal","bd4100",1)
AddJournalEntry(65604,QUEST)
~ GOTO 74
  IF ~~ THEN REPLY @140 /* ~I will, in my own time and my own manner. Goodbye.~ #65601 */ DO ~SetGlobal("bd_mdd1271_journal","bd4100",1)
AddJournalEntry(65604,QUEST)
~ GOTO 75
END

IF ~~ THEN BEGIN 74 // from: 73.1
  SAY @141 /* ~All I know is that Duncan thinks he has her pinned. He could use your help.~ [BD65602] #65602 */
  IF ~~ THEN GOTO 75
END

IF ~  AreaCheck("bd4100")
~ THEN BEGIN 75 // from: 74.0 73.2 73.0 71.3
  SAY @142 /* ~You've more important things to do than stand around talking to me. Dismissed!~ [BD65603] #65603 */
  IF ~~ THEN EXIT
  IF ~  Global("bd_sdd1248_plot","global",2)
~ THEN REPLY @143 /* ~I discovered some soldiers taking advantage of their position. They're looting all the valuables they find on this level.~ #65583 */ GOTO 72
END
