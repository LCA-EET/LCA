// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDDENELD.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDDENELD.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC170~

IF ~  Global("bd_deneld_plot","bd4000",0)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I don't recognize your face, recruit. Are you new? There are so many newcomers to the cause these days I can't keep track of them all. That's a good thing.~ [BD48936] #48936 */
  IF ~~ THEN DO ~SetGlobal("bd_deneld_plot","bd4000",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2 /* ~I'm Deneld, the morale officer of this camp. What's your name?~ [BD48938] #48938 */
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN REPLY @3 /* ~I'm <CHARNAME>.~ #48939 */ EXTERN ~BDJAHEIJ~ 89
  IF ~  !IsValidForPartyDialogue("jaheira")
~ THEN REPLY @3 /* ~I'm <CHARNAME>.~ #48939 */ GOTO 2
  IF ~  HasItemEquiped("bdchan03",LastTalkedToBy(Myself))
!Global("bd_sallo_plot_wrong_name","GLOBAL",1)
Global("bd_sallo_plot","bd4000",1)
~ THEN REPLY @4 /* ~I am in hurry, sir. I need the morning report.~ #58799 */ GOTO 32
  IF ~  !HasItemEquiped("bdchan03",LastTalkedToBy(Myself))
!Global("bd_sallo_plot_wrong_name","GLOBAL",1)
Global("bd_sallo_plot","bd4000",1)
~ THEN REPLY @4 /* ~I am in hurry, sir. I need the morning report.~ #58799 */ GOTO 29
  IF ~  Global("bd_sallo_plot_wrong_name","GLOBAL",1)
Global("bd_sallo_plot","bd4000",1)
~ THEN REPLY @4 /* ~I am in hurry, sir. I need the morning report.~ #58799 */ GOTO 36
  IF ~  Global("BD_FOEHAMMER_BLESSING","GLOBAL",1)
HasItem("BDMISC19",Myself)
~ THEN REPLY @5 /* ~Just a fellow servant of Caelar. I'm searching for a stone shard about so big.~ #58800 */ GOTO 39
  IF ~~ THEN REPLY @6 /* ~You can call me Ensler.~ #48940 */ GOTO 6
  IF ~~ THEN REPLY @7 /* ~I left my old name behind when I joined the crusade.~ #48941 */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @8 /* ~<CHARNAME>, is it? I've heard that name before...~ [BD48943] #48943 */
  IF ~~ THEN REPLY @9 /* ~I get that a lot. I share the name of a famous general or something.~ #48944 */ GOTO 3
  IF ~~ THEN REPLY @10 /* ~I'm also known as the hero of Baldur's Gate.~ #48945 */ GOTO 5
  IF ~~ THEN REPLY @11 /* ~We've never met.~ #48946 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 10.0 4.0 2.2 2.0
  SAY @12 /* ~Well, never mind that. Let me ask you about the crusade. What do you know about our mission here?~ [BD48947] #48947 */
  IF ~~ THEN REPLY @13 /* ~It has something to do with marching into the Nine Hells and killing fiends, doesn't it?~ #48948 */ GOTO 8
  IF ~~ THEN REPLY @14 /* ~I know we follow the Shining Lady Caelar. She guides us in whatever we do.~ #48949 */ GOTO 8
  IF ~~ THEN REPLY @15 /* ~It let me escape from my old life. That's all I need to know.~ #48950 */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.7
  SAY @16 /* ~Excellent. Sacrificing a name is a small but moving tribute to Caelar's grace. Would that more recruits displayed such devotion to the Lady.~ [BD48951] #48951 */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @17 /* ~Wait... it's—it's you. It's YOU. INTRUDER!~ [BD48955] #48955 */
  IF ~~ THEN DO ~SetGlobal("BD_Proud_of_Yourself","GLOBAL",1)
SetGlobal("bd_dsc_hostile","bd4000",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.6
  SAY @18 /* ~Well met, Ensler. Let me ask you something. What do you know about our mission here?~ [BD48961] #48961 */
  IF ~~ THEN REPLY @13 /* ~It has something to do with marching into the Nine Hells and killing fiends, doesn't it?~ #48962 */ GOTO 8
  IF ~~ THEN REPLY @14 /* ~I know we follow the Shining Lady Caelar. She guides us in whatever we do.~ #48963 */ GOTO 8
  IF ~  CheckStatLT(Player1,10,CHR)
~ THEN REPLY @19 /* ~Sweet bugger all.~ #58792 */ GOTO 7
  IF ~~ THEN REPLY @15 /* ~It let me escape from my old life. That's all I need to know.~ #48964 */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.2
  SAY @20 /* ~I envy you, Ensler. I truly do. You have so much to learn. Speak to some of the others in the camp. Learn what you can from your fellows in arms.~ [BD58791] #58791 */
  IF ~~ THEN GOTO 9
  IF ~  IsValidForPartyDialogue("khalid")
~ THEN EXTERN ~BDKHALIJ~ 85
END

IF ~~ THEN BEGIN 8 // from: 6.3 6.1 6.0 3.2 3.1 3.0
  SAY @21 /* ~Well, that's a start. There's a great deal more you can learn about the crusade, though. Why don't you speak to some of the other crusaders in camp?~ [BD48965] #48965 */
  IF ~~ THEN GOTO 9
  IF ~  IsValidForPartyDialogue("khalid")
~ THEN EXTERN ~BDKHALIJ~ 85
END

IF ~~ THEN BEGIN 9 // from: 8.0 7.0
  SAY @22 /* ~After you've talked to some of the others, return here and demonstrate your new knowledge. I'll present you with a token signifying your understanding of our glorious cause. Sound good? Of course it does! See you soon.~ [BD48968] #48968 */
  IF ~~ THEN DO ~SetGlobal("bd_deneld_plot","bd4000",2)
~ UNSOLVED_JOURNAL @23 /* ~Understanding the Crusade

I can speak to the crusaders around camp to learn more about the crusade.

Morale Officer Deneld has asked me to speak to some of the crusaders in camp, then return to him and demonstrate my knowledge. This might be a good chance to get into the heads of my enemies.~ #58807 */ EXIT
END

IF ~  GlobalGT("bd_deneld_plot","bd4000",0)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 10 // from:
  SAY @24 /* ~Ah, the new recruit returns. Is there something you require?~ #58801 */
  IF ~  Global("bd_deneld_plot","bd4000",1)
~ THEN REPLY @25 /* ~Do I look new to you?~ #58802 */ GOTO 3
  IF ~  Global("bd_deneld_plot","bd4000",2)
~ THEN REPLY @26 /* ~I want to discuss what I have learned about our cause.~ #58803 */ GOTO 12
  IF ~  HasItemEquiped("bdchan03",LastTalkedToBy(Myself))
!Global("bd_sallo_plot_wrong_name","GLOBAL",1)
Global("bd_sallo_plot","bd4000",1)
~ THEN REPLY @27 /* ~Yes, sir. I'm here for the morning report.~ #51435 */ GOTO 32
  IF ~  !HasItemEquiped("bdchan03",LastTalkedToBy(Myself))
!Global("bd_sallo_plot_wrong_name","GLOBAL",1)
Global("bd_sallo_plot","bd4000",1)
~ THEN REPLY @27 /* ~Yes, sir. I'm here for the morning report.~ #51435 */ GOTO 29
  IF ~  Global("bd_sallo_plot_wrong_name","GLOBAL",1)
Global("bd_sallo_plot","bd4000",1)
~ THEN REPLY @27 /* ~Yes, sir. I'm here for the morning report.~ #51435 */ GOTO 36
  IF ~  Global("BD_FOEHAMMER_BLESSING","GLOBAL",1)
HasItem("BDMISC19",Myself)
~ THEN REPLY @28 /* ~New, but already working hard. I'm searching for a stone shard about so big.~ #51538 */ GOTO 39
  IF ~~ THEN REPLY @29 /* ~No, not at the moment. I will return to my duties.~ #58804 */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 25.3 25.0 14.2 14.0 10.6
  SAY @30 /* ~For the glory of the crusade, recruit. ~ #48972 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @31 /* ~In that case, let the testing begin.~ [BD48977] #48977 */
  IF ~~ THEN GOTO 13
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~BDVICONJ~ 135
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @32 /* ~Answer me this: Why? Why does the crusade exist?~ [BD48979] #48979 */
  IF ~  Global("bd_deneld_ravoc","bd4000",1)
~ THEN REPLY @33 /* ~Devils are evil creatures, monstrous jailers of mortal souls. The crusade will rid existence of their wickedness and free all the trapped souls of the Hells.~ #48980 */ GOTO 16
  IF ~  Class(Player1,PALADIN)
!Kit(Player1,Blackguard)
~ THEN REPLY @34 /* ~Crusades rise to remedy injustices that cannot be addressed by other means. Caelar seeks to repair the damage the Hells have wreaked upon this land.~ #48981 */ GOTO 17
  IF ~  CheckStatGT(Player1,15,WIS)
~ THEN REPLY @35 /* ~A crusade's nature is to set right a terrible wrong. The Shining Lady seeks nothing less than freedom for the innocent souls trapped in the Nine Hells.~ #48982 */ GOTO 17
  IF ~~ THEN REPLY @36 /* ~The Shining Lady called to us. We answered.~ #48983 */ GOTO 14
  IF ~~ THEN REPLY @37 /* ~No one had anything better to do, I imagine.~ #48984 */ GOTO 15
  IF ~~ THEN REPLY @38 /* ~To fight fiends and find glory in battle!~ #48985 */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 21.5 21.3 18.6 18.3 13.5 13.3
  SAY @39 /* ~That is true... but it's not the answer I sought. You still have much to learn.~ [BD48986] #48986 */
  IF ~~ THEN REPLY @40 /* ~I'll do better next time.~ #48987 */ GOTO 11
  IF ~~ THEN REPLY @41 /* ~What are you talking about? There's nothing wrong with my answer.~ #48988 */ GOTO 25
  IF ~~ THEN REPLY @42 /* ~This interrogation grows tiresome.~ #48989 */ GOTO 11
END

IF ~~ THEN BEGIN 15 // from: 21.4 18.5 18.4 13.4
  SAY @43 /* ~You're not the first to hide fear and uncertainty behind weak humor. Talk to more of your fellow toilers in light—see if you can find reassurance in what they tell you.~ [BD48990] #48990 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY @44 /* ~Excellent. A perfect answer to my question.~ [BD48991] #48991 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 13.2 13.1
  SAY @45 /* ~A unique interpretation of the crusade, one which shows a deep understanding of the Shining Lady's cause.~ [BD48992] #48992 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 16.0
  SAY @46 /* ~My next question is this: How will the crusade achieve victory?~ [BD48993] #48993 */
  IF ~  OR(2)
Global("bd_deneld_sindret","bd4000",1)
Global("bd_deneld_tristian","bd4000",1)
~ THEN REPLY @47 /* ~Faith ensures the crusade's ultimate success. Our personal faith strengthens us; Caelar's faith will protect us when we descend into the Nine Hells.~ #48994 */ GOTO 19
  IF ~  Class(Player1,BARD_ALL)
~ THEN REPLY @48 /* ~Caelar raises her followers' spirits and gives them hope where before there was nothing but hopelessness. In doing so, she makes the weakest of her crusaders strong, ensuring success.~ #48995 */ GOTO 20
  IF ~  CheckStatGT(Player1,15,INT)
~ THEN REPLY @49 /* ~Logic says we would be destroyed the moment we breach the Nine Hells. Caelar is a holy warrior. Her faith is our shield against the inferno.~ #48996 */ GOTO 20
  IF ~  Class(Player1,FIGHTER_ALL)
~ THEN REPLY @50 /* ~Strength of numbers will bring us victory.~ #48997 */ GOTO 14
  IF ~~ THEN REPLY @51 /* ~To be honest, I think we'll probably fail.~ #48998 */ GOTO 15
  IF ~~ THEN REPLY @52 /* ~Yeah, that's my question too.~ #58798 */ GOTO 15
  IF ~~ THEN REPLY @53 /* ~If we believe hard enough, we can do anything.~ #48999 */ GOTO 14
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @54 /* ~You have learned Caelar's lessons well, my friend. I'm impressed.~ [BD49000] #49000 */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 18.2 18.1
  SAY @55 /* ~Not the answer I expected, but I can't fault your thinking.~ [BD49001] #49001 */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 19.0
  SAY @56 /* ~Now for the final question. What is the heart of the crusade?~ [BD49002] #49002 */
  IF ~  Global("bd_deneld_zare","bd4000",1)
~ THEN REPLY @57 /* ~Caelar Argent is the crusade's heart and soul. Her faith and purity inspire all who follow her. Without the Shining Lady, the crusade would crumble.~ #49003 */ GOTO 23
  IF ~  Class(Player1,FIGHTER_ALL)
~ THEN REPLY @58 /* ~A powerful leader's importance to a movement such as ours can't be understated. Without a strong commander at its head, an army falls apart. Caelar is the heart of the crusade—I can see no other answer to the question.~ #49004 */ GOTO 22
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY @59 /* ~We may have different reasons for being here, but all crusaders are united by the Shining Lady. She is what draws us together.~ #49005 */ GOTO 22
  IF ~~ THEN REPLY @60 /* ~The desire to do good in this world.~ #49006 */ GOTO 14
  IF ~~ THEN REPLY @61 /* ~Is it stupidity? I'm going to go with stupidity.~ #49007 */ GOTO 15
  IF ~~ THEN REPLY @62 /* ~Righteousness born of virtue.~ #49008 */ GOTO 14
END

IF ~~ THEN BEGIN 22 // from: 21.2 21.1
  SAY @63 /* ~You show impressive insight into the light that guides us.~ [BD49010] #49010 */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 21.0
  SAY @64 /* ~Well done! You truly understand the many and varied facets of our movement. I applaud you.~ [BD49011] #49011 */
  IF ~  IsValidForPartyDialogue("safana")
~ THEN REPLY @65 /* ~It was a pleasure to learn about our glorious crusade.~ #49012 */ EXTERN ~BDSAFANJ~ 211
  IF ~  !IsValidForPartyDialogue("safana")
~ THEN REPLY @65 /* ~It was a pleasure to learn about our glorious crusade.~ #49012 */ GOTO 24
  IF ~~ THEN REPLY @66 /* ~And I get a reward now, right? I distinctly remember you mentioning a reward.~ #49013 */ GOTO 24
  IF ~~ THEN REPLY @67 /* ~If there's nothing more, I must move on.~ #49014 */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.3 23.2 23.1
  SAY @68 /* ~Accept from me this ring to mark your commitment to our cause. It will help protect you in battle. Now go forth, and bring Caelar's glory to this world!~ [BD49016] #49016 */
  IF ~~ THEN DO ~SetGlobal("bd_deneld_plot","bd4000",3)
GiveItem("bdring03",LastTalkedToBy(Myself))
AddexperienceParty(2000)
~ SOLVED_JOURNAL @69 /* ~Understanding the Crusade

I've answered Deneld's questions to his satisfaction.

Morale Officer Deneld was pleased with my understanding of the crusade and its motivations. I feel I've gained a better understanding of my enemies.~ #58808 */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 14.1
  SAY @70 /* ~Though your answer was technically accurate, it lacks the depth I'm looking for here. You can do better.~ [BD49017] #49017 */
  IF ~~ THEN REPLY @71 /* ~I'll try.~ #49018 */ GOTO 11
  IF ~  IsValidForPartyDialogue("safana")
~ THEN REPLY @72 /* ~Why do YOU get to say what the truth is about the crusade? My answer's as good as any you could give.~ #49019 */ EXTERN ~BDSAFANJ~ 212
  IF ~  !IsValidForPartyDialogue("safana")
~ THEN REPLY @72 /* ~Why do YOU get to say what the truth is about the crusade? My answer's as good as any you could give.~ #49019 */ GOTO 26
  IF ~~ THEN REPLY @73 /* ~If I've the time—and the inclination—I may return.~ #49020 */ GOTO 11
END

IF ~~ THEN BEGIN 26 // from: 25.2
  SAY @74 /* ~You question my worth? I'm one of Caelar's most trusted lieutenants. Surely you learned of me when you joined the crusade.~ [BD49022] #49022 */
  IF ~~ THEN REPLY @75 /* ~Of course. I just—got a little worked up. I care about the crusade so much. It's embarrassing to be told my view of it is wrong.~ #49023 */ GOTO 27
  IF ~~ THEN REPLY @76 /* ~All I've learned is you're an overbearing blowhard who holds himself in far too high a regard. No wonder the crusade is such a mess.~ #49024 */ GOTO 28
  IF ~~ THEN REPLY @77 /* ~I misspoke. My apologies.~ #49025 */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.2 26.0
  SAY @78 /* ~I understand. Calm yourself. Continue speaking to the other crusaders. In time, you will learn what you need to know.~ [BD49026] #49026 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY @79 /* ~Your words reveal your true intentions. Crusaders! To me! THE ENEMY IS AMONG US!~ [BD49027] #49027 */
  IF ~~ THEN DO ~SetGlobal("bd_dsc_hostile","bd4000",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 10.3 1.3
  SAY @80 /* ~Whoa, whoa, whoa! Slow down there. What's this now? Why aren't you in uniform? You can't go about official crusade business looking like that.~ [BD51439] #51439 */
  IF ~~ THEN REPLY @81 /* ~Apologies, sir. I'll return when I'm properly dressed.~ #51440 */ GOTO 30
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY @82 /* ~There's a cloth shortage right now, thanks to the accursed besiegers. We new recruits have to forgo uniforms for now.~ #51441 */ GOTO 32
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY @83 /* ~The commander needs that report NOW, sir. I don't have time to shine my boots.~ #51442 */ GOTO 32
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY @83 /* ~The commander needs that report NOW, sir. I don't have time to shine my boots.~ #51442 */ GOTO 30
  IF ~  Class(Player1,FIGHTER_ALL)
~ THEN REPLY @84 /* ~And you can't go about official crusade business without teeth. Give me the report.~ #58793 */ GOTO 31
  IF ~~ THEN REPLY @85 /* ~You'll look far worse than I do if you don't hand that report over.~ #51443 */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 36.4 36.3 29.3 29.0
  SAY @86 /* ~There's always time for procedure, recruit. Dismissed!~ [BD51444] #51444 */
  IF ~~ THEN DO ~AddJournalEntry(61298,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 36.2 29.5 29.4
  SAY @87 /* ~That's how you speak to a superior officer? Crusaders, come here! This fool needs to learn some discipline!~ [BD51445] #51445 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.2 29.1 10.2 1.2
  SAY @88 /* ~I see. Thank you for the update, recruit. I have the report here. Who sent you to retrieve it?~ [BD51446] #51446 */
  IF ~  CheckStatGT(Player1,14,INT)
~ THEN REPLY @89 /* ~It was Commander Dreon, sir. I'm to bring him the report as well as a drink to start the day.~ #51449 */ GOTO 35
  IF ~~ THEN REPLY @90 /* ~Commander Deneld.~ #51448 */ GOTO 34
  IF ~~ THEN REPLY @91 /* ~Commander Dorwin.~ #51450 */ GOTO 33
  IF ~  !CheckStatGT(Player1,14,INT)
~ THEN REPLY @92 /* ~Commander Dreon.~ #51451 */ GOTO 35
  IF ~~ THEN REPLY @93 /* ~Commander Dargon.~ #51452 */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 34.3 34.0 32.4 32.2
  SAY @94 /* ~Hmm... I don't know the name, but I suppose that's what comes of being part of a vital and growing movement. Still, I can't just hand the report over to a recruit I've never met for an officer I don't know. Dismissed.~ [BD51453] #51453 */
  IF ~~ THEN DO ~SetGlobal("bd_sallo_plot_wrong_name","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY @95 /* ~I'M Deneld, and I certainly didn't ask you to retrieve this report from myself.~ [BD51454] #51454 */
  IF ~~ THEN REPLY @96 /* ~My mistake. I meant Commander Dorwin.~ #51455 */ GOTO 33
  IF ~  CheckStatGT(Player1,14,INT)
~ THEN REPLY @97 /* ~I meant to say Commander Dreon, sir. I'm to bring him the report as well as a drink to start the day.~ #51456 */ GOTO 35
  IF ~~ THEN REPLY @98 /* ~I misspoke. It's Commander Dreon.~ #51457 */ GOTO 35
  IF ~~ THEN REPLY @99 /* ~Apologies, it was actually Commander Dargon.~ #51458 */ GOTO 33
END

IF ~~ THEN BEGIN 35 // from: 36.0 34.2 34.1 32.3 32.0
  SAY @100 /* ~Dreon, you say? Good man. Disciplined. I like him. Here's the report. On your way now!~ [BD51459] #51459 */
  IF ~~ THEN DO ~SetGlobal("bd_sallo_plot","bd4000",2)
GiveItemCreate("BDMISC28",Player1,0,0,0)
AddJournalEntry(61297,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 10.4 1.4
  SAY @101 /* ~The report again, eh? Tell me, have you learned your commander's name yet?~ [BD62094] #62094 */
  IF ~  OR(2)
Global("bd_spoke_with_dreon","GLOBAL",1)
CheckStatGT(Player1,11,INT)
~ THEN REPLY @102 /* ~It's Dreon, sir. Commander Dreon.~ #62095 */ GOTO 35
  IF ~  Class(Player1,BARD_ALL)
~ THEN REPLY @103 /* ~Damn the commander's name and damn you, sir, if you would impede the Shining Lady's progress with your inconsequential pettifogging. Give me the bloody report!~ #62096 */ GOTO 37
  IF ~  Class(Player1,FIGHTER_ALL)
~ THEN REPLY @104 /* ~Have you learned to walk with broken legs? Give me the report, now, or you'll have your first lesson very, very soon.~ #62097 */ GOTO 31
  IF ~  !Class(Player1,BARD_ALL)
!Class(Player1,FIGHTER_ALL)
~ THEN REPLY @105 /* ~I don't have time for this nonsense. I'm going to ask nicely one more time: Give me the report.~ #62098 */ GOTO 30
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY @106 /* ~I'm working on it, sir, but I'd be very grateful if you could give me the report. My commander will give me a good hiding if I don't bring it to him, whatever his name is.~ #62099 */ GOTO 30
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY @106 /* ~I'm working on it, sir, but I'd be very grateful if you could give me the report. My commander will give me a good hiding if I don't bring it to him, whatever his name is.~ #62099 */ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY @107 /* ~Well spoken, crusader. It's a rare and gratifying thing to hear someone speak of the Lady with such passion. That's the sort of spirit we could use more of. Here's the report. Take it and tell your commander Deneld says they've got a good soldier serving them in you.~ [BD62100] #62100 */
  IF ~~ THEN DO ~SetGlobal("bd_sallo_plot","bd4000",2)
GiveItemCreate("BDMISC28",Player1,0,0,0)
AddJournalEntry(61297,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.5
  SAY @108 /* ~Oh... very well. Proper procedure is very important, but the work is more important still. Here's the report. But next time I see you, you better know the name of not just your commander but all your fellows, you understand? Dismissed.~ #62101 */
  IF ~~ THEN DO ~SetGlobal("bd_sallo_plot","bd4000",2)
GiveItemCreate("BDMISC28",Player1,0,0,0)
AddJournalEntry(61297,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 10.5 1.5
  SAY @109 /* ~A stone shard? Whatever for? ~ #51542 */
  IF ~~ THEN REPLY @110 /* ~I'm trying to restore a stone icon of Tempus.~ #51543 */ GOTO 42
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY @111 /* ~It's classified. A special mission from one of the high-ups.~ #51544 */ GOTO 40
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY @111 /* ~It's classified. A special mission from one of the high-ups.~ #51544 */ GOTO 41
  IF ~~ THEN REPLY @112 /* ~None of your business.~ #51545 */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY @113 /* ~Really? Intriguing... Yes, now that you mention it, I believe I did happen upon the shard you seek. Here it is—I trust you will let those who assigned you this mission know of my cooperation? Good fortune to you for its successful completion.~ #51546 */
  IF ~~ THEN DO ~GiveItem("BDMISC19",LastTalkedToBy)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.3 39.2
  SAY @114 /* ~Watch yourself—I'll not stand for insubordination. I suppose you're trying to reconstruct that icon I saw those other recruits messing around with.~ #51547 */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 44.1 41.0 39.0
  SAY @115 /* ~I don't approve of recruits trying to directly curry the gods' favor. Caelar is our spiritual leader.~ #51548 */
  IF ~  CheckStatGT(Player1,12,INT)
~ THEN REPLY @116 /* ~Faerûn is a land of many gods. More divine power supporting us can only be a good thing. Surely you can see that.~ #51549 */ GOTO 43
  IF ~  CheckStatLT(Player1,13,INT)
~ THEN REPLY @116 /* ~Faerûn is a land of many gods. More divine power supporting us can only be a good thing. Surely you can see that.~ #51549 */ GOTO 44
  IF ~  Class(Player1,CLERIC_ALL)
~ THEN REPLY @117 /* ~I am a holy <PRO_MANWOMAN>. I understand your devotion to Caelar, but only a fool turns their back on the gods.~ #51550 */ GOTO 43
  IF ~  CheckStatGT(Player1,12,STR)
~ THEN REPLY @118 /* ~Tempus is a god of strength. It's best for all of us if to curry his favor however we can.~ #51551 */ GOTO 43
  IF ~  CheckStatLT(Player1,13,STR)
~ THEN REPLY @118 /* ~Tempus is a god of strength. It's best for all of us if to curry his favor however we can.~ #51551 */ GOTO 44
  IF ~  CheckStatGT(Player1,12,CHR)
~ THEN REPLY @119 /* ~I understand your doubts, but we need recruit morale to stay high. Trust me, no harm will come from giving me the shard.~ #51552 */ GOTO 43
  IF ~  CheckStatLT(Player1,13,CHR)
~ THEN REPLY @119 /* ~I understand your doubts, but we need recruit morale to stay high. Trust me, no harm will come from giving me the shard.~ #51552 */ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 42.5 42.3 42.2 42.0
  SAY @120 /* ~There's something to what you say, I can't deny it. Here, take the shard and go forth to do the Shining Lady's work.~ #51553 */
  IF ~~ THEN DO ~GiveItem("BDMISC19",LastTalkedToBy)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.6 42.4 42.1
  SAY @121 /* ~I think not. The shard stays in my pocket.~ #51554 */
  IF ~  IsValidForPartyDialogue("safana")
Gender(Player1,MALE)
~ THEN REPLY @122 /* ~Explain your reasoning again?~ #51555 */ EXTERN ~BDSAFANJ~ 216
  IF ~  OR(2)
!IsValidForPartyDialogue("safana")
!Gender(Player1,MALE)
~ THEN REPLY @122 /* ~Explain your reasoning again?~ #51555 */ GOTO 42
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN REPLY @123 /* ~I can see you'll not be swayed by anything I might say but for what it's worth, you're making a mistake. Luck to you.~ #58794 */ EXTERN ~BDDORNJ~ 30
  IF ~  !IsValidForPartyDialogue("dorn")
~ THEN REPLY @123 /* ~I can see you'll not be swayed by anything I might say but for what it's worth, you're making a mistake. Luck to you.~ #58794 */ GOTO 45
  IF ~~ THEN REPLY @124 /* ~Goodbye, then.~ #51556 */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.4 44.3
  SAY @125 /* ~Go forth, for the crusade! ~ #51557 */
  IF ~~ THEN EXIT
END
