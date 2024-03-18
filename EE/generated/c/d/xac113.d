// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDBARGHE.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDBARGHE.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC113~

IF ~  Global("bd_barghest_plot","global",0)
Global("bd_barghest_battle","locals",0)
Global("bd_enemy_gone_hostile","bd2000",1)
AreaCheck("bd2000")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Who are you who would challenge Caelar? ~ #42780 */
  IF ~~ THEN REPLY @2 /* ~I am <CHARNAME>.~ #42781 */ DO ~SetGlobal("bd_barghest_battle","locals",1)
~ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Who am I? I am the Flaming Fist. I am Baldur's Gate. I am the heir of Bhaal. I am <CHARNAME>!~ #42782 */ DO ~SetGlobal("bd_barghest_battle","locals",1)
~ GOTO 5
  IF ~~ THEN REPLY @4 /* ~You don't need my name. You'll not live long enough to use it.~ #42783 */ DO ~SetGlobal("bd_barghest_battle","locals",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~Truly? This is excellent news. I've never killed a god's child before. I shall make your blood a gift to my lady.~ #42785 */
  IF ~~ THEN REPLY @6 /* ~You'll try, fiend.~ #42786 */ GOTO 2
  IF ~~ THEN REPLY @7 /* ~Really? Your lady's into some strange stuff, friend...~ #42787 */ GOTO 4
  IF ~~ THEN REPLY @8 /* ~You'll choke on yours first, fiend.~ #42788 */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 6.0 3.0 1.0
  SAY @9 /* ~Die! Die for those who are lost! Die that they may be found again!~ #42789 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @10 /* ~I survived two wars of Dragonspear. I faced the legions of the Nine Hells, and still I stand before you. Do you truly think yourself a match for me?~ #42790 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @11 /* ~Insulting the Shining Lady will be your last mistake.~ #42791 */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 0.1
  SAY @12 /* ~Die, villain!~ #42792 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @13 /* ~You should never have left Baldur's Gate, <PRO_SONDAUGHTER> of Bhaal. But I'm glad you did.~ #42793 */
  IF ~~ THEN GOTO 2
END

IF ~  Global("bd_enlightment_plot","bd2000",2)
GlobalLT("bd_plot","global",240)
Global("bd_enlightment","locals",6)
~ THEN BEGIN 7 // from:
  SAY @14 /* ~It is time. Hormorn?~ #42745 */
  IF ~~ THEN DO ~SetGlobal("bd_enlightment_plot","bd2000",3)
SetGlobal("bd_pc_knows_about_enlightenment","bd2000",1)
SetGlobal("BD_PC_KNOWS_HORMORN","global",1)
~ EXTERN ~BDHORMOR~ 0
END

IF ~  OR(2)
Global("bd_enlightment_plot","bd2000",3)
Global("bd_enlightment_plot","bd2000",4)
GlobalLT("bd_plot","global",240)
~ THEN BEGIN 8 // from:
  SAY @15 /* ~Thank you, Hormorn, and thank you, servants of the Shining Lady. Return to your tasks, secure in the knowledge that we have the favor of the gods. ~ #42751 */
  IF ~~ THEN DO ~SetGlobal("bd_enlightment_plot","bd2000",5)
~ EXIT
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN DO ~SetGlobal("bd_enlightment_plot","bd2000",5)
~ EXTERN ~BDCORWIJ~ 118
END

IF ~  GlobalLT("bd_bridgefort_plot","global",6)
Global("bd_barghest_plot","global",0)
AreaCheck("bd2000")
~ THEN BEGIN 9 // from:
  SAY @16 /* ~You there. What are you up to? ~ #42575 */
  IF ~~ THEN REPLY @17 /* ~Nothing, sir.~ #42576 */ DO ~SetGlobal("bd_barghest_plot","global",1)
~ GOTO 10
  IF ~~ THEN REPLY @18 /* ~I've been tasked with delivering a message to one of our people at the gate, sir.~ #42577 */ DO ~SetGlobal("bd_barghest_plot","global",1)
~ GOTO 13
  IF ~  Global("bd_know_munsch_cordell","global",1)
~ THEN REPLY @19 /* ~I'm looking for a man named Munsch. He's an assistant to General Cordell.~ #42578 */ DO ~SetGlobal("bd_barghest_plot","global",1)
~ GOTO 13
  IF ~~ THEN REPLY @20 /* ~That's no business of yours.~ #42579 */ DO ~SetGlobal("bd_barghest_plot","global",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 10 // from: 27.0 9.0
  SAY @21 /* ~Idle hands do our enemies' work. You have the look of a seasoned combatant. Go assist Lieutenant Kharm in training those less fortunate than yourselves. I would have them survive the coming trials if possible. ~ #42580 */
  IF ~~ THEN REPLY @22 /* ~Breaking Bridgefort won't be so big a trial, will it?~ #42581 */ DO ~SetGlobal("bd_pc_knows_kharm","global",1)
~ GOTO 11
  IF ~~ THEN REPLY @23 /* ~I'll do what I can for them.~ #42582 */ DO ~SetGlobal("bd_pc_knows_kharm","global",1)
~ GOTO 13
  IF ~~ THEN REPLY @24 /* ~They'll need more than I can provide to do that.~ #42583 */ DO ~SetGlobal("bd_pc_knows_kharm","global",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @25 /* ~I speak of what comes after—when we achieve our glorious purpose. ~ #42584 */
  IF ~~ THEN REPLY @26 /* ~Of course, my lord. Bridgefort is but a small stone in the path we walk to achieve our final goals.~ #42585 */ GOTO 18
  IF ~~ THEN REPLY @27 /* ~Oh, right. Our glorious purpose. Um, what is that again?~ #42586 */ GOTO 12
  IF ~~ THEN REPLY @28 /* ~Caelar will lead us to victory.~ #42587 */ GOTO 20
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @29 /* ~When the time is right, you will learn. Come to the bonfire tonight for your indoctrination.~ #42588 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 19.0 17.0 16.2 16.0 15.0 14.4 10.1 9.2 9.1
  SAY @30 /* ~Well, be about your business, then.~ #42589 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY @31 /* ~Not my business? Tell me, who is your superior officer? I would have words with them about the attitude of their subordinates.~ #42591 */
  IF ~  GlobalGT("bd_munsch_plot","global",1)
~ THEN REPLY @32 /* ~Delgar Munsch.~ #42592 */ GOTO 21
  IF ~  Global("bd_know_munsch_cordell","global",1)
~ THEN REPLY @33 /* ~I report to Colonel Cordell.~ #42593 */ GOTO 21
  IF ~  Global("bd_pc_knows_barghest","global",1)
~ THEN REPLY @34 /* ~The Barghest.~ #42594 */ GOTO 23
  IF ~  Global("BD_PC_KNOWS_HORMORN","global",1)
~ THEN REPLY @35 /* ~I serve Hormorn.~ #42595 */ GOTO 16
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY @36 /* ~I serve Caelar, as do we all.~ #42596 */ GOTO 13
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY @36 /* ~I serve Caelar, as do we all.~ #42596 */ GOTO 15
  IF ~~ THEN REPLY @37 /* ~I am honored to serve Lieutenant Kindt.~ #42597 */ GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 14.5
  SAY @38 /* ~That is true, and none are more devoted to her cause than I. But it is Caelar's will that all in this camp answer to me. When next we meet, be sure to show the proper respect.~ #42598 */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 16 // from: 14.3
  SAY @39 /* ~You don't wear the robes of the Revered.~ #42599 */
  IF ~~ THEN REPLY @40 /* ~Not all of us do.~ #42600 */ GOTO 13
  IF ~~ THEN REPLY @41 /* ~Hormorn's business took me somewhere the robes would not be welcome.~ #42601 */ GOTO 17
  IF ~~ THEN REPLY @42 /* ~That doesn't alter the fact that I answer to Hormorn.~ #42602 */ GOTO 13
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @43 /* ~Really? I'll have to speak with the Revered Brother about this...~ #42603 */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 18 // from: 11.0
  SAY @44 /* ~Well said. Be about your business, then.~ #42604 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.2
  SAY @45 /* ~And they will have it. The gods smile upon us. Even so, we have a duty to train those who need it for the task at hand.~ #42605 */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 11.2
  SAY @46 /* ~A general is only as strong as his—or her—soldiers. Go help Kharm.~ #42606 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 14.1 14.0
  SAY @47 /* ~Next time you speak to a superior officer, show them the respect they're due. Now be about your business.~ #42607 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.6
  SAY @48 /* ~There is no Lieutenant Kindt in this camp. Die, heretic!~ #42608 */
  IF ~~ THEN DO ~SetGlobal("bd_enemy_gone_hostile","bd2000",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.2
  SAY @49 /* ~You lie well. But not well enough!~ #42609 */
  IF ~~ THEN DO ~SetGlobal("bd_enemy_gone_hostile","bd2000",1)
Enemy()
~ EXIT
END

IF ~  GlobalLT("bd_bridgefort_plot","global",6)
Global("bd_barghest_plot","global",1)
AreaCheck("bd2000")
~ THEN BEGIN 24 // from:
  SAY @50 /* ~I told you to be about your business. ~ #42610 */
  IF ~~ THEN REPLY @51 /* ~At once, sir.~ #42611 */ GOTO 25
  IF ~~ THEN REPLY @52 /* ~You did tell me to do that, and so I did it.~ #42612 */ GOTO 27
  IF ~~ THEN REPLY @53 /* ~And so I will be, when I choose.~ #42613 */ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @54 /* ~If you had done as I said at once, I would not have had to say it twice. Do not make me repeat myself again.~ #42614 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.2
  SAY @55 /* ~This is a place for soldiers, not jesters. Now do as I command.~ #42615 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY @56 /* ~And now you have nothing to do? Here, in a camp laying siege to an enemy fort? I don't believe it.~ #42616 */
  IF ~~ THEN GOTO 10
END

IF ~  Global("bd_bridgefort_plot","global",6)
~ THEN BEGIN 28 // from:
  SAY @57 /* ~I am the Barghest. I have the honor of leading the Blinding White battalion. Who speaks for Bridgefort?~ [BD36855] #36855 */
  IF ~~ THEN REPLY @58 /* ~I, <CHARNAME>, speak for the fort!~ #36856 */ DO ~SetGlobal("bd_bridgefort_plot","global",10)
SetGlobal("bd_charname_revealed","global",1)
SetGlobal("bd_barghest_plot","global",1)
~ EXTERN ~BDOLONEI~ 5
  IF ~  IsValidForPartyDialogue("khalid")
~ THEN REPLY @59 /* ~Go ahead, Khalid. You can do this.~ #36857 */ DO ~SetGlobal("bd_bridgefort_plot","global",10)
SetGlobal("bd_barghest_plot","global",1)
~ EXTERN ~BDKHALIJ~ 28
  IF ~~ THEN REPLY @60 /* ~My name is of no consequence. What matters is that I speak for the fort.~ #36858 */ DO ~SetGlobal("bd_bridgefort_plot","global",10)
SetGlobal("bd_barghest_plot","global",1)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.2
  SAY @61 /* ~I am told you wish to surrender?~ [BD36860] #36860 */
  IF ~~ THEN REPLY @62 /* ~We'd consider it... under the right terms. Bridgefort's defenders have suffered enough. Let them go and the fort and all within it shall be yours.~ #36862 */ GOTO 31
  IF ~~ THEN REPLY @63 /* ~I'm afraid you were misinformed. I summoned you to give YOU a chance to surrender.~ #36863 */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 31.5 29.1
  SAY @64 /* ~You disappoint me. But after these past weeks, you do not surprise me. Crusaders, take up your weapons and strike, now, for our Lady!~ [BD36867] #36867 */
  IF ~~ THEN DO ~ActionOverride("cutspy",DestroySelf())
ActionOverride("bdvichan",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdhormor",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdolonei",SetGlobal("bd_retreat","locals",1))
SetGlobal("bd_retreat","locals",1)
~ EXTERN ~BDBFORT2~ 2
  IF ~  IsValidForPartyDialogue("khalid")
~ THEN DO ~ActionOverride("cutspy",DestroySelf())
ActionOverride("bdvichan",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdhormor",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdolonei",SetGlobal("bd_retreat","locals",1))
SetGlobal("bd_retreat","locals",1)
~ EXTERN ~BDKHALIJ~ 30
END

IF ~~ THEN BEGIN 31 // from: 36.1 35.2 29.0
  SAY @65 /* ~That is acceptable. Leave your weapons and supplies within the fort and then lower the drawbridge. My troops will not hinder you.~ [BD36868] #36868 */
  IF ~  Global("bd_charname_revealed","global",0)
NumInPartyGT(1)
~ THEN REPLY @66 /* ~The defenders will leave all their supplies behind, but I and a small party of my choosing will hold onto our weapons to ensure the defenders' safety.~ #36869 */ GOTO 37
  IF ~  Global("bd_charname_revealed","global",1)
NumInPartyGT(1)
~ THEN REPLY @66 /* ~The defenders will leave all their supplies behind, but I and a small party of my choosing will hold onto our weapons to ensure the defenders' safety.~ #36869 */ GOTO 32
  IF ~  Global("bd_charname_revealed","global",0)
NumInParty(1)
~ THEN REPLY @67 /* ~The defenders will leave all their supplies behind, but I will keep mine. I intend to ensure the defenders' safety.~ #65944 */ GOTO 37
  IF ~  Global("bd_charname_revealed","global",1)
NumInParty(1)
~ THEN REPLY @67 /* ~The defenders will leave all their supplies behind, but I will keep mine. I intend to ensure the defenders' safety.~ #65944 */ GOTO 32
  IF ~  IsValidForPartyDialogue("khalid")
~ THEN REPLY @68 /* ~Khalid, you've been fighting these people for weeks. Can we trust them to spare your people if they lay down their arms?~ #36870 */ EXTERN ~BDKHALIJ~ 27
  IF ~~ THEN REPLY @69 /* ~Hah! Coward! There will be no surrender, crusader. The time has come for battle!~ #36871 */ GOTO 30
END

IF ~~ THEN BEGIN 32 // from: 31.3 31.1
  SAY @70 /* ~Do so and no harm will come to you or your followers. I swear it on my lady's honor.~ [BD36882] #36882 */
  IF ~~ THEN EXTERN ~BDOLONEI~ 7
END

IF ~~ THEN BEGIN 33 // from:
  SAY @71 /* ~The Shining Lady told me to take Bridgefort's supplies. This arrangement is offering us exactly that.~ [BD36884] #36884 */
  IF ~~ THEN EXTERN ~BDOLONEI~ 8
END

IF ~~ THEN BEGIN 34 // from:
  SAY @72 /* ~It's already done, Oloneiros. If you've a problem with it, take it up with Caelar when we return to Dragonspear. For now, however, I am in command, and you WILL obey me.~ [BD36886] #36886 */
  IF ~~ THEN EXTERN ~BDOLONEI~ 9
END

IF ~~ THEN BEGIN 35 // from:
  SAY @73 /* ~You're hardly in a position to negotiate.~ [BD36912] #36912 */
  IF ~~ THEN REPLY @74 /* ~Be strong, Khalid.~ #36913 */ EXTERN ~BDKHALIJ~ 29
  IF ~~ THEN REPLY @75 /* ~Perhaps he isn't, Barghest—but I am. And I'll not allow you to cut these people down.~ #36914 */ GOTO 36
  IF ~~ THEN REPLY @76 /* ~This isn't a negotiation, Barghest! Those are our terms, take them or leave them.~ #36915 */ GOTO 31
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY @77 /* ~Who is it that speaks to me now? Whose hubris is so great that they believe they can deny Caelar Argent's will?~ [BD36916] #36916 */
  IF ~~ THEN REPLY @78 /* ~I am <CHARNAME>, slayer of Sarevok and hero of Baldur's Gate. And I say you will let these people go, or lose a score of crusaders for each life of ours you take!~ #36917 */ DO ~SetGlobal("bd_charname_revealed","global",1)
~ EXTERN ~BDOLONEI~ 6
  IF ~~ THEN REPLY @79 /* ~My name is unimportant. Do we have a deal or not?~ #36918 */ GOTO 31
END

IF ~~ THEN BEGIN 37 // from: 31.2 31.0
  SAY @80 /* ~No member of the Blinding White will harm any who leave the area immediately. On my honor and Caelar's, I swear it.~ [BD36922] #36922 */
  IF ~~ THEN DO ~ActionOverride("cutspy",DestroySelf())
~ EXTERN ~BDBFORT2~ 1
END

IF ~~ THEN BEGIN 38 // from:
  SAY @81 /* ~I swore on my and Caelar's honor <PRO_HESHE> would walk free. And so it will be.~ #36989 */
  IF ~~ THEN EXTERN ~BDOLONEI~ 11
END

IF ~  Global("bd_bridgefort_plot","global",12)
~ THEN BEGIN 39 // from:
  SAY @82 /* ~The mage did not belong to the Blinding White. If I believed her capable of such treachery, I'd never have let her near you.~ #36992 */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY @83 /* ~The terms remain the same, <CHARNAME>. Leave this place and we'll not attempt to stop you.~ #36993 */
  IF ~~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",13)
AddJournalEntry(59768,QUEST)
~ EXIT
END

IF ~  Global("bd_bridgefort_plot","global",13)
Global("bd_charname_revealed","global",1)
~ THEN BEGIN 41 // from:
  SAY @84 /* ~I cannot allow you to return to Bridgefort, <CHARNAME>. Leave now, while you're still able.~ #36994 */
  IF ~~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",15)
~ EXIT
END

IF ~  Global("bd_bridgefort_plot","global",11)
~ THEN BEGIN 42 // from:
  SAY @85 /* ~Go. Now. Don't look back.~ #36996 */
  IF ~~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",13)
~ EXIT
  IF ~  !Dead("bdhormor")
~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",13)
~ EXTERN ~BDHORMOR~ 4
  IF ~  !Dead("bdolonei")
Global("bd_charname_revealed","global",1)
~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",12)
~ EXTERN ~BDOLONEI~ 10
END

IF ~  Global("bd_bridgefort_plot","global",13)
Global("bd_charname_revealed","global",0)
~ THEN BEGIN 43 // from:
  SAY @86 /* ~Is there a problem?~ #37001 */
  IF ~~ THEN REPLY @87 /* ~Not a problem, more a question. You are clearly a man of honor, yet you serve Caelar.~ #37002 */ GOTO 46
  IF ~~ THEN REPLY @88 /* ~No, no problem. I just wanted to take a moment to ensure I never forget what happened here today.~ #37003 */ GOTO 45
  IF ~~ THEN REPLY @89 /* ~Yes. You're not dead. That's a problem.~ #37004 */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.2
  SAY @90 /* ~I gave you a chance. You should have taken it. Now you will pay the price!~ #37005 */
  IF ~~ THEN DO ~SetGlobal("bd_enemy_gone_hostile","bd2000",1)
SetGlobal("bd_bf_attack","global",10)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.1
  SAY @91 /* ~The moment has passed. Begone.~ #37006 */
  IF ~~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",15)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.0
  SAY @92 /* ~This surprises you?~ #37007 */
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN REPLY @93 /* ~Word of the crusade's atrocities has spread throughout the Sword Coast.~ #37008 */ EXTERN ~BDSAFANJ~ 77
  IF ~  !IsValidForPartyDialogue("SAFANA")
~ THEN REPLY @93 /* ~Word of the crusade's atrocities has spread throughout the Sword Coast.~ #37008 */ GOTO 47
  IF ~  IsValidForPartyDialogue("EDWIN")
Gender(Player1,FEMALE)
~ THEN REPLY @94 /* ~The dukes of Baldur's Gate painted your movement as mindless zealots, ready to do anything to achieve your goals.~ #37009 */ EXTERN ~BDEDWINJ~ 71
  IF ~  IsValidForPartyDialogue("EDWIN")
Gender(Player1,MALE)
~ THEN REPLY @94 /* ~The dukes of Baldur's Gate painted your movement as mindless zealots, ready to do anything to achieve your goals.~ #37009 */ EXTERN ~BDEDWINJ~ 72
  IF ~  !IsValidForPartyDialogue("EDWIN")
~ THEN REPLY @94 /* ~The dukes of Baldur's Gate painted your movement as mindless zealots, ready to do anything to achieve your goals.~ #37009 */ GOTO 50
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN REPLY @95 /* ~Caelar's crusade cannot stand against the forces arrayed against her. Her crusade will not end well for her followers. It's not too late for you to join the winning side.~ #37010 */ EXTERN ~BDCORWIJ~ 125
  IF ~  !IsValidForPartyDialogue("CORWIN")
~ THEN REPLY @95 /* ~Caelar's crusade cannot stand against the forces arrayed against her. Her crusade will not end well for her followers. It's not too late for you to join the winning side.~ #37010 */ GOTO 53
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY @96 /* ~Innocence is the first casualty of any war. We do what we must to ensure success.~ #37012 */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @97 /* ~I am not an honorable man in spite of Caelar. I am an honorable man BECAUSE of her.~ #37013 */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @98 /* ~Tell that to those who speak of the crusade's "atrocities." Now go.~ #37014 */
  IF ~~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",15)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 46.4
  SAY @99 /* ~You spread propaganda in service to those unworthy of their stations—people who feel their power threatened by Caelar's light.~ #37016 */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY @100 /* ~You call me an honorable man, and it is true... now. But understand: I am not honorable in spite of the Shining Lady. I am honorable BECAUSE of her. Tell that to those who dismiss us as mindless puppets. Now go.~ #37017 */
  IF ~~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",15)
~ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY @101 /* ~You would have me turn my back on Caelar's light?~ #37020 */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0 46.6
  SAY @102 /* ~I swore you would have safe passage, and so you will. Anyone else who suggested what you just did would already be dead. Now go, before I forget the Lady's teachings and strike you down. GO!~ #37021 */
  IF ~~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",15)
~ EXIT
END

IF ~  Global("bd_bridgefort_plot","global",21)
~ THEN BEGIN 54 // from:
  SAY @103 /* ~There was a time I would have killed you all. Slaughtered every one down to the smallest child. Not even the rats of Bridgefort would have survived to see another day, were I what I once was. You owe your lives to one person.~ #37176 */
  IF ~~ THEN DO ~SetGlobal("bd_sabotaged_drawbridge","GLOBAL",1)
SetGlobal("bd_bridgefort_plot","global",22)
SetGlobalTimer("bd_barghest_timer","bd2000",FOUR_ROUNDS)
SetGlobal("bd_barghest_plot","global",1)
~ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY @104 /* ~Caelar Argent. The Shining Lady. The woman who looked upon me and saw not the monster I was, but the man I could be. I did not deserve that belief. I did not deserve her mercy, yet she gave it, freely and without hesitation. And as she had mercy upon me, so I will have it upon you. ~ #37177 */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY @105 /* ~Once we are done with this place, the Blinding White battalion returns to Dragonspear Castle. If you do as you are told, you will come with us. If you do otherwise, you will die.~ #37179 */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY @106 /* ~When we reach Dragonspear, you will experience the Enlightenment. You will be reborn as I was. And on that day, we will stride forth together, as friends and allies, part of Caelar's righteous crusade. Have you any questions?~ #37181 */
  IF ~  !Dead("BDVICHAN")
~ THEN REPLY @107 /* ~I have a question. What gives you the right to do what you've done? How do you justify the evil done in Caelar's name?~ #37182 */ EXTERN ~BDVICHAN~ 39
  IF ~  Dead("BDVICHAN")
~ THEN REPLY @107 /* ~I have a question. What gives you the right to do what you've done? How do you justify the evil done in Caelar's name?~ #37182 */ GOTO 66
  IF ~  !Dead("BDKHARM")
Global("bd_sdd271_kharms_orders","global",2)
~ THEN REPLY @108 /* ~I've got one. Why am I among these others? I lowered the drawbridge and let you in per Lieutenant Kharm's instructions.~ #37183 */ DO ~ReputationInc(-2)
~ GOTO 58
  IF ~  OR(2)
Dead("BDKHARM")
GlobalLT("bd_sdd271_kharms_orders","global",2)
~ THEN REPLY @109 /* ~I do have one, now that you mention it. I lowered the drawbridge. Why am I still among this rabble?~ #37184 */ GOTO 71
  IF ~~ THEN REPLY @110 /* ~Yes. Why did your Shining Lady try to have me assassinated in Baldur's Gate?~ #37185 */ GOTO 69
END

IF ~~ THEN BEGIN 58 // from: 67.0 57.2
  SAY @111 /* ~Kharm. Is this true?~ #37186 */
  IF ~~ THEN EXTERN ~BDKHARM~ 22
END

IF ~~ THEN BEGIN 59 // from:
  SAY @112 /* ~What is your name?~ #37188 */
  IF ~~ THEN REPLY @2 /* ~I am <CHARNAME>.~ #37189 */ GOTO 60
  IF ~  Global("bd_told_kharm_im_charname","bd2000",0)
Gender(Player1,MALE)
~ THEN REPLY @113 /* ~My name is Liam Ensler.~ #37190 */ GOTO 61
  IF ~  Global("bd_told_kharm_im_charname","bd2000",0)
Gender(Player1,FEMALE)
~ THEN REPLY @114 /* ~I am called Ensler. Liann Ensler.~ #37191 */ GOTO 61
  IF ~  Dead("BDOLONEI")
~ THEN REPLY @115 /* ~You can call me death. That is what I bring you and your fiendish mistress!~ #37192 */ GOTO 68
  IF ~  !Dead("BDOLONEI")
~ THEN REPLY @115 /* ~You can call me death. That is what I bring you and your fiendish mistress!~ #37192 */ EXTERN ~BDOLONEI~ 13
END

IF ~~ THEN BEGIN 60 // from: 71.2 67.4 59.0
  SAY @116 /* ~I know that name...~ #37193 */
  IF ~~ THEN GOTO 70
  IF ~  !Dead("BDOLONEI")
~ THEN EXTERN ~BDOLONEI~ 12
END

IF ~~ THEN BEGIN 61 // from: 59.2 59.1
  SAY @117 /* ~Step forward, Ensler.~ #37195 */
  IF ~~ THEN GOTO 62
  IF ~  NumInPartyAlive(1)
~ THEN GOTO 63
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY @118 /* ~You've done a service for the crusade, but you don't strike me as a crusader. I know my troops, and you... you stand apart. Why have you done this?~ #37196 */
  IF ~~ THEN REPLY @119 /* ~I wanted to ensure the safety of the people in Bridgefort. This way, no one has to die.~ #37197 */ GOTO 64
  IF ~~ THEN REPLY @120 /* ~My motives are my own.~ #65949 */ GOTO 64
  IF ~~ THEN REPLY @121 /* ~I'm the hero of Baldur's Gate, and saving lives is what heroes do.~ #65950 */ GOTO 70
  IF ~  Dead("BDOLONEI")
~ THEN REPLY @122 /* ~I wanted you in a vulnerable position so I could strike you down!~ #37198 */ GOTO 68
  IF ~  !Dead("BDOLONEI")
~ THEN REPLY @122 /* ~I wanted you in a vulnerable position so I could strike you down!~ #37198 */ EXTERN ~BDOLONEI~ 13
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY @123 /* ~You've done a service for the crusade, but you don't strike me as a crusader. I know my troops and you... you stand apart. Why have you done this?~ #37199 */
  IF ~~ THEN REPLY @119 /* ~I wanted to ensure the safety of the people in Bridgefort. This way, no one has to die.~ #37200 */ GOTO 64
  IF ~~ THEN REPLY @120 /* ~My motives are my own.~ #65951 */ GOTO 64
  IF ~~ THEN REPLY @121 /* ~I'm the hero of Baldur's Gate, and saving lives is what heroes do.~ #65952 */ GOTO 70
  IF ~  Dead("BDOLONEI")
~ THEN REPLY @122 /* ~I wanted you in a vulnerable position so I could strike you down!~ #37201 */ GOTO 68
  IF ~  !Dead("BDOLONEI")
~ THEN REPLY @122 /* ~I wanted you in a vulnerable position so I could strike you down!~ #37201 */ EXTERN ~BDOLONEI~ 13
END

IF ~~ THEN BEGIN 64 // from: 63.1 63.0 62.1 62.0
  SAY @124 /* ~In recognition of the service you've done the crusade, I shall let you live. Go, now, before I change my mind.~ #37202 */
  IF ~~ THEN DO ~AddJournalEntry(58038,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY @125 /* ~Stand down, Vichand. I'll deal with this.~ #37205 */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0 57.1
  SAY @126 /* ~You speak of the evils done in Caelar's name. I tell you war is an evil thing—but a necessary one. We do what we do for a greater good. The Shining Lady's cause is righteous. The gods themselves smile upon her. You'll see this for yourself, at Dragonspear.~ #37206 */
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY @127 /* ~Have you any more questions?~ #37208 */
  IF ~  !Dead("BDKHARM")
Global("bd_sdd271_kharms_orders","global",2)
~ THEN REPLY @128 /* ~I do. Why am I among this rabble? I serve the Shining Lady—I lowered the drawbridge and let you in, as Lieutenant Kharm requested.~ #37209 */ GOTO 58
  IF ~  OR(2)
Dead("BDKHARM")
GlobalLT("bd_sdd271_kharms_orders","global",2)
~ THEN REPLY @129 /* ~I do have one more, actually. I lowered the drawbridge. I am the reason you were able to take Bridgefort. Why am I made to stand beside these heretics?~ #59531 */ GOTO 71
  IF ~  Dead("BDOLONEI")
~ THEN REPLY @130 /* ~Yes. It's a riddle a wise man living in a Cloud Peak cavern once asked me: What is the sound of one Barghest dying?~ #37211 */ GOTO 68
  IF ~  !Dead("BDOLONEI")
~ THEN REPLY @130 /* ~Yes. It's a riddle a wise man living in a Cloud Peak cavern once asked me: What is the sound of one Barghest dying?~ #37211 */ EXTERN ~BDOLONEI~ 13
  IF ~~ THEN REPLY @131 /* ~Just one: Have you heard of a <PRO_MANWOMAN> named <CHARNAME> before?~ #37212 */ GOTO 60
END

IF ~~ THEN BEGIN 68 // from: 67.2 63.3 62.3 59.3
  SAY @132 /* ~Your insolent tongue has cost you more than you can imagine. It has cost you a place in the light—and your life!~ #37218 */
  IF ~~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",24)
SetGlobal("bd_bf_attack","global",10)
AddJournalEntry(58037,QUEST_DONE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 69 // from: 57.4
  SAY @133 /* ~I know nothing of this. But if what you say is true—if the Lady truly does wish you dead—I will oblige her. Your end is upon you, heretic!~ #37219 */
  IF ~~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",24)
SetGlobal("bd_bf_attack","global",10)
AddJournalEntry(58037,QUEST_DONE)
Enemy()
~ EXIT
  IF ~  !Dead("bdolonei")
See("bdolonei")
~ THEN EXTERN ~BDOLONEI~ 12
END

IF ~~ THEN BEGIN 70 // from: 63.2 62.2 60.0
  SAY @134 /* ~Wait. You are the hero of Baldur's Gate? This is wonderful! You've stood in the Blinding Lady's way too long, <CHARNAME>. Now, you will die.~ #37224 */
  IF ~~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",24)
SetGlobal("bd_bf_attack","global",10)
AddJournalEntry(58037,QUEST_DONE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 71 // from: 67.1 57.3
  SAY @135 /* ~You claim you're the one who let the drawbridge down?~ #37225 */
  IF ~  NumInPartyAliveGT(1)
~ THEN REPLY @136 /* ~I do. And I expect to be rewarded for it.~ #37226 */ GOTO 72
  IF ~  NumInPartyAlive(1)
~ THEN REPLY @136 /* ~I do. And I expect to be rewarded for it.~ #37226 */ GOTO 73
  IF ~~ THEN REPLY @137 /* ~I do. I'm <CHARNAME> and I do not lie.~ #37227 */ GOTO 60
  IF ~~ THEN REPLY @138 /* ~You doubt me?~ #37228 */ GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY @139 /* ~Here is your reward, then: Take your people and leave this place now. And thank the gods I'm not the man I once was, or you'd not be leaving here at all.~ #37229 */
  IF ~~ THEN DO ~AddJournalEntry(58038,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 73 // from: 71.1
  SAY @140 /* ~Here is your reward, then: Leave this place now. And thank the gods I'm not the man I once was, or you'd not be leaving here at all.~ #37230 */
  IF ~~ THEN DO ~AddJournalEntry(58038,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 71.3
  SAY @141 /* ~No. There's a darkness in you. I can see it in your eyes. You are capable of... many things. There is no place for you in Caelar's crusade. Go, now.~ #37231 */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY @142 /* ~Go, before I wipe you off the face of Toril!~ #37232 */
  IF ~~ THEN DO ~AddJournalEntry(58038,QUEST_DONE)
~ EXIT
END

IF ~  Global("bd_bridgefort_plot","global",22)
AreaCheck("bd2000")
~ THEN BEGIN 76 // from:
  SAY @143 /* ~Why are you still here? Go.~ #37233 */
  IF ~~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",23)
~ EXIT
END

IF ~  Global("bd_bridgefort_plot","global",23)
~ THEN BEGIN 77 // from:
  SAY @144 /* ~I told you to go. I'll not tell you again.~ #37234 */
  IF ~~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",25)
~ EXIT
END

IF ~  Global("bd_bridgefort_plot","global",25)
~ THEN BEGIN 78 // from:
  SAY @145 /* ~The Shining Lady tells us to be patient. Forgive me, Caelar—my patience is at an end. And so is your life!~ #37235 */
  IF ~~ THEN DO ~SetGlobal("bd_bridgefort_plot","global",24)
SetGlobal("bd_bf_attack","global",10)
AddJournalEntry(58037,QUEST_DONE)
Enemy()
~ EXIT
END
