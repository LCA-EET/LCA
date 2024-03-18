// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDRAVOC.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDRAVOC.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC154~

IF ~  Global("bd_ravoc_plot","locals",0)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You lookin' at me? Stop it. I don't like bein' looked at.~ #47648 */
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
IsValidForPartyDialogue("Safana")
~ THEN REPLY @2 /* ~I saw you listening to Leopas earlier. I thought you might be able to offer some insight on this conflict between Valis and Corinth.~ #47649 */ DO ~SetGlobal("bd_ravoc_plot","locals",1)
~ EXTERN ~BDSAFANJ~ 68
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
!IsValidForPartyDialogue("Safana")
~ THEN REPLY @2 /* ~I saw you listening to Leopas earlier. I thought you might be able to offer some insight on this conflict between Valis and Corinth.~ #47649 */ DO ~SetGlobal("bd_ravoc_plot","locals",1)
~ GOTO 1
  IF ~  Global("bd_deneld_plot","bd4000",2)
Global("bd_deneld_ravoc","bd4000",0)
~ THEN REPLY @3 /* ~Why did you join the crusade, then? I imagine there are many people looking at you here.~ #49033 */ DO ~SetGlobal("bd_deneld_ravoc","bd4000",1)
SetGlobal("bd_ravoc_plot","locals",1)
~ GOTO 12
  IF ~~ THEN REPLY @4 /* ~Pray forgive me. I'll leave you alone.~ #47650 */ DO ~SetGlobal("bd_ravoc_plot","locals",1)
~ GOTO 2
  IF ~~ THEN REPLY @5 /* ~You think I care what you like, you wretched monster?~ #47651 */ DO ~SetGlobal("bd_ravoc_plot","locals",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 11.1 3.1 0.1
  SAY @6 /* ~Y'wanna know 'bout Corinth? Ravoc'll tell you 'bout Corinth. He hasn't seen no light. He doesn't believe in th' Lady. I seen him. I seen what he does.~ #47654 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 11.3 10.2 10.1 0.3
  SAY @7 /* ~Good. Don't like bein' looked at.~ #47658 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 11.4 0.4
  SAY @8 /* ~Y'don't watch your mouth, you're gonna care.~ #47659 */
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
IsValidForPartyDialogue("Safana")
~ THEN REPLY @9 /* ~Forgive me, friend. I meant no offense. I saw you with Leopas earlier. I hoped you might be able to shed some light on this squabble between Valis and Corinth.~ #47660 */ EXTERN ~BDSAFANJ~ 68
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
!IsValidForPartyDialogue("Safana")
~ THEN REPLY @9 /* ~Forgive me, friend. I meant no offense. I saw you with Leopas earlier. I hoped you might be able to shed some light on this squabble between Valis and Corinth.~ #47660 */ GOTO 1
  IF ~  Global("bd_deneld_plot","bd4000",2)
Global("bd_deneld_ravoc","bd4000",0)
~ THEN REPLY @10 /* ~Explain this to me, please. Why did you join the crusade if you want to be left alone?~ #49038 */ GOTO 12
  IF ~~ THEN REPLY @11 /* ~I've better things to do with my time than waste them on the likes of you.~ #47661 */ GOTO 5
  IF ~~ THEN REPLY @12 /* ~Come on then. Make me care.~ #47662 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.4
  SAY @13 /* ~Crush your skull and gnaw on your bones!~ #47663 */
  IF ~~ THEN DO ~ChangeSpecifics(Myself,IRON_THRONE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY @14 /* ~Yeah. 'S what I thought.~ #47664 */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~BDEDWINJ~ 63
END

IF ~~ THEN BEGIN 6 // from:
  SAY @15 /* ~Watch it, wizard. You're on thin ice.~ #47666 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY @16 /* ~Shouts Caelar's name loud as any, but shakes like a mouse when it's time t'do her work. Complains about how hard this life is for him. He's weak.~ #47668 */
  IF ~~ THEN REPLY @17 /* ~Do you believe he warned Innisfall of the crusade's coming?~ #47669 */ GOTO 8
  IF ~~ THEN REPLY @18 /* ~It does take a certain, let's say dogged determination, to pursue a life in service, doesn't it? Thank you, my friend. You've been very helpful.~ #47670 */ GOTO 9
  IF ~~ THEN REPLY @19 /* ~Agreed. I'll leave you now.~ #47671 */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @20 /* ~Corinth, turn on the crusade? He hasn't got the stones. He hasn't even got one stone. Useless. ~ #47672 */
  IF ~~ THEN REPLY @21 /* ~Thank you. You've been most helpful.~ #47673 */ GOTO 9
  IF ~~ THEN REPLY @22 /* ~No stones? Unfortunate. Thanks for the help, orc. Your insights have been invaluable.~ #47674 */ GOTO 9
  IF ~~ THEN REPLY @23 /* ~Don't discount him too quickly. Cowards have their uses. I'll leave you to your work now.~ #47675 */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.2 8.1 8.0 7.2 7.1
  SAY @24 /* ~Sure. Whatever. ~ #47676 */
  IF ~~ THEN EXIT
  IF ~  Global("bd_ravoc_plot","locals",1)
~ THEN DO ~SetGlobal("bd_ravoc_plot","locals",2)
~ UNSOLVED_JOURNAL @25 /* ~The Trial

I should continue to investigate Corinth's actions, then return to Leopas when I have the truth.

I had a conversation, if you could call it that, with the orc barbarian Ravoc regarding Valis's accusations against her fellow ranger, Corinth. He doesn't believe Corinth is guilty, if only because he thinks the man is a coward.~ #58717 */ EXIT
END

IF ~  GlobalGT("bd_ravoc_plot","locals",0)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 10 // from:
  SAY @26 /* ~You lookin' at me? You lookin' at me? I don't see no one else here. You must be lookin' at me.~ #47678 */
  IF ~~ THEN REPLY @27 /* ~I was, but only because I have a question for you.~ #47679 */ GOTO 11
  IF ~~ THEN REPLY @28 /* ~I actually was looking at you. Pray forgive me, my friend. I'll leave you alone.~ #47680 */ GOTO 2
  IF ~~ THEN REPLY @29 /* ~Was I looking at you? I don't think I was.~ #47681 */ GOTO 2
  IF ~~ THEN REPLY @30 /* ~You have a problem with that, orc?~ #47682 */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.3 10.0
  SAY @31 /* ~Stop it. I don't like bein' looked at.~ #47677 */
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
IsValidForPartyDialogue("safana")
~ THEN REPLY @2 /* ~I saw you listening to Leopas earlier. I thought you might be able to offer some insight on this conflict between Valis and Corinth.~ #47649 */ EXTERN ~BDSAFANJ~ 68
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
!IsValidForPartyDialogue("safana")
~ THEN REPLY @2 /* ~I saw you listening to Leopas earlier. I thought you might be able to offer some insight on this conflict between Valis and Corinth.~ #47649 */ GOTO 1
  IF ~  Global("bd_deneld_plot","bd4000",2)
Global("bd_deneld_ravoc","bd4000",0)
~ THEN REPLY @3 /* ~Why did you join the crusade, then? I imagine there are many people looking at you here.~ #49033 */ GOTO 12
  IF ~~ THEN REPLY @4 /* ~Pray forgive me. I'll leave you alone.~ #47650 */ GOTO 2
  IF ~~ THEN REPLY @5 /* ~You think I care what you like, you wretched monster?~ #47651 */ GOTO 3
END

IF ~~ THEN BEGIN 12 // from: 11.2 3.2 0.2
  SAY @32 /* ~Ravoc's fought devils before. Wants a chance to gnaw on their bones.~ #49043 */
  IF ~~ THEN REPLY @33 /* ~That's all? You're just looking for a good fight?~ #49044 */ GOTO 13
  IF ~~ THEN REPLY @34 /* ~What a deep and nuanced motivation. I need some time to digest all that information.~ #49045 */ GOTO 13
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN REPLY @35 /* ~So a monster wants the chance to kill other monsters?~ #49046 */ EXTERN ~BDDORNJ~ 152
  IF ~  !IsValidForPartyDialogue("dorn")
~ THEN REPLY @35 /* ~So a monster wants the chance to kill other monsters?~ #49046 */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.3 12.1 12.0
  SAY @36 /* ~Packs of fiends stalked the mountains not long ago. Portal opened in Ravoc's camp once. Red-winged killers spilled out. Tore our strongest apart without half thinking about it.~ #49048 */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @37 /* ~A score of us were lost taking down just three of 'em. Shaman said our dead didn't get to Gruumsh's realm. Their souls're trapped in the Hells below.~ #49058 */
  IF ~~ THEN REPLY @38 /* ~That's why you joined the crusade? Vengeance against the fiends?~ #49059 */ GOTO 15
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN REPLY @39 /* ~Even an orc doesn't deserve that fate.~ #49060 */ EXTERN ~BDDORNJ~ 153
  IF ~  !IsValidForPartyDialogue("dorn")
~ THEN REPLY @39 /* ~Even an orc doesn't deserve that fate.~ #49060 */ GOTO 15
  IF ~~ THEN REPLY @40 /* ~Get to the point.~ #49061 */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.3 14.2 14.0
  SAY @41 /* ~When Ravoc sees the Shining Lady's light, he knows time has come to free his brothers.~ #49062 */
  IF ~~ THEN REPLY @42 /* ~Thank you for telling me your story, Ravoc.~ #49063 */ GOTO 16
  IF ~~ THEN REPLY @43 /* ~That's... actually a pretty good reason to join the crusade. ~ #49064 */ GOTO 16
  IF ~~ THEN REPLY @44 /* ~Should we ever reach the Hells, you wouldn't last two minutes.~ #49065 */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.0
  SAY @45 /* ~Get outta here now. Don't like you lookin' at me.~ #49066 */
  IF ~~ THEN DO ~SetGlobal("bd_deneld_ravoc","bd4000",1)
~ UNSOLVED_JOURNAL @46 /* ~Understanding the Crusade

After I talk to a few people around camp regarding the crusade, I can return to Morale Officer Deneld.

At first, Ravoc seemed a violent warrior interested in naught but slaughter. But as I spoke to him, I realized he has personal reasons for following Caelar. Members of his tribe were killed by devils, their souls trapped in the Nine Hells. He seeks to free them.~ #58809 */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY @47 /* ~Ravoc'll kill every fiend he sees! Get outta my way.~ #49067 */
  IF ~~ THEN DO ~SetGlobal("bd_deneld_ravoc","bd4000",1)
~ UNSOLVED_JOURNAL @46 /* ~Understanding the Crusade

After I talk to a few people around camp regarding the crusade, I can return to Morale Officer Deneld.

At first, Ravoc seemed a violent warrior interested in naught but slaughter. But as I spoke to him, I realized he has personal reasons for following Caelar. Members of his tribe were killed by devils, their souls trapped in the Nine Hells. He seeks to free them.~ #58809 */ EXIT
END
