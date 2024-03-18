// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDDELTON.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDDELTON.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC155~

IF ~  Global("bd_delton_plot","bd4000",0)
GlobalLT("bd_plot","global",400)
IsValidForPartyDialogue("mkhiin")
Global("bd_delton_mkhiin","locals",0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~A goblin! Everyone, beware, there's a goblin loose in the camp!~ #47683 */
  IF ~~ THEN DO ~SetGlobal("bd_delton_mkhiin","locals",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2 /* ~Wait! Wait. The crusade embraces all who would walk in light. Drow, orcs, goblins. Gnomes. Damn it, Delton, you're better than this! Be a better person. For Caelar. Do it for the Shining Lady. Yes.~ #47684 */
  IF ~~ THEN GOTO 2
END

IF ~  Global("bd_delton_plot","bd4000",0)
GlobalLT("bd_plot","global",400)
OR(2)
!IsValidForPartyDialogue("mkhiin")
Global("bd_delton_mkhiin","locals",1)
~ THEN BEGIN 2 // from: 1.0
  SAY @3 /* ~He didn't do it, you know. I don't believe he did it. Corinth wouldn't be so foolish as to betray us. ~ #47686 */
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",10)
~ THEN REPLY @4 /* ~You believe Valis lies when she claims Corinth warned Innisfall of the crusade's arrival?~ #47687 */ DO ~SetGlobal("bd_delton_plot","bd4000",1)
~ GOTO 5
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",10)
IsValidForPartyDialogue("rasaad")
~ THEN REPLY @5 /* ~Slow down there. Who is this Corinth you speak of?~ #47688 */ DO ~SetGlobal("bd_delton_plot","bd4000",1)
~ EXTERN ~BDRASAAJ~ 31
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",10)
!IsValidForPartyDialogue("rasaad")
~ THEN REPLY @5 /* ~Slow down there. Who is this Corinth you speak of?~ #47688 */ DO ~SetGlobal("bd_delton_plot","bd4000",1)
~ GOTO 3
  IF ~  Global("bd_trial_plot","bd4000",0)
~ THEN REPLY @6 /* ~Who are you talking about?~ #47690 */ GOTO 4
  IF ~~ THEN REPLY @7 /* ~Good to know. Nice talking to you. I'll be on my way now.~ #47689 */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 12.2 2.2
  SAY @8 /* ~You aren't here to talk to me about Corinth? I thought Commander Leopas had you looking into Valis's claims—which aren't true. I don't think they're true, anyway. I just don't.~ #47692 */
  IF ~~ THEN REPLY @9 /* ~You think Valis is lying?~ #47693 */ GOTO 5
  IF ~~ THEN REPLY @10 /* ~Ah, yes. I remember now.~ #47694 */ GOTO 6
  IF ~~ THEN REPLY @11 /* ~Your opinion on the matter—on any matter—means nothing to me. Fare you well.~ #47695 */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY @12 /* ~You don't know? Of course you don't; you couldn't or you wouldn't have asked. You should talk to Leopas, yes. He knows all about it.~ #47685 */
  IF ~~ THEN EXIT
  IF ~  Global("bd_start_trial_quest","locals",0)
~ THEN DO ~SetGlobal("bd_start_trial_quest","locals",1)
~ UNSOLVED_JOURNAL @13 /* ~The Trial

A gnome suggested I speak to Leopas about someone named Corinth.~ #58718 */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 2.0
  SAY @14 /* ~Didn't say that, didn't say that. Just saying she's not telling the truth for some reason. Don't know why. Maybe even she doesn't know why.~ #47696 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 16.0 5.0 3.1
  SAY @15 /* ~Look, Corinth isn't the most steadfast guy around; I know that. I know that. He's in this for the money, not the mission. But he's in it, see? He's in it. So he's got—had, so he had family in Innisfall. That doesn't prove anything.~ #47697 */
  IF ~~ THEN REPLY @16 /* ~Corinth has family in Innisfall?~ #47698 */ DO ~SetGlobal("bd_trial_plot","bd4000",2)
SetGlobal("bd_delton_plot","bd4000",2)
~ GOTO 8
  IF ~~ THEN REPLY @17 /* ~Indeed it doesn't. You have my thanks. We may speak again.~ #47699 */ DO ~SetGlobal("bd_trial_plot","bd4000",2)
SetGlobal("bd_delton_plot","bd4000",2)
~ GOTO 7
  IF ~~ THEN REPLY @18 /* ~Cease your prattling, you gibbering wretch! I don't want to hear it!~ #47700 */ DO ~SetGlobal("bd_trial_plot","bd4000",2)
SetGlobal("bd_delton_plot","bd4000",2)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 15.0 12.4 11.0 9.2 9.1 8.2 6.2 6.1 3.2 2.4
  SAY @19 /* ~Yeah, all right, may Caelar's light guide you always and like that.~ #47701 */
  IF ~~ THEN EXIT
  IF ~  Global("bd_delton_journal","locals",0)
GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",10)
~ THEN DO ~SetGlobal("bd_delton_journal","locals",1)
~ UNSOLVED_JOURNAL @20 /* ~The Trial

I discussed the matter of Valis's accusations against Corinth with the gnome wizard Delton. He was rather insistent that Corinth is innocent.~ #58719 */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY @21 /* ~Corinth has family in Innisfall? Where'd you hear that?~ #47702 */
  IF ~~ THEN REPLY @22 /* ~You said it just now.~ #47703 */ GOTO 9
  IF ~~ THEN REPLY @23 /* ~You hadn't heard about that? Everyone's talking about it.~ #47704 */ GOTO 10
  IF ~~ THEN REPLY @24 /* ~This is ridiculous. I'll not waste any more time on you.~ #47705 */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 10.0 8.0
  SAY @25 /* ~Well, yeah, he had family in Innisfall. And Innisfall managed to, you know, run like the hells just a few minutes before the crusade arrived. That doesn't prove anything. Nothing, that's what it proves. What I'm saying, if you listen to me, what I'm saying is, Corinth isn't gonna turn on the crusade. He just isn't. FACT. ~ #47706 */
  IF ~~ THEN REPLY @26 /* ~You've been most helpful. Thank you.~ #47707 */ GOTO 11
  IF ~~ THEN REPLY @27 /* ~I believe you. Now if you'll excuse me, I'll be on my way.~ #47708 */ GOTO 7
  IF ~~ THEN REPLY @28 /* ~Are you finished talking? Because I assure you, I am done listening.~ #47709 */ GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @29 /* ~They are? Really? Huh.~ #47710 */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY @30 /* ~He wouldn't turn on us. He wouldn't. Uh, what...?~ #47711 */
  IF ~~ THEN GOTO 7
END

IF ~  GlobalGT("bd_delton_plot","bd4000",0)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 12 // from:
  SAY @31 /* ~Hm? What? Oh! It's you. He didn't do it. ~ #47712 */
  IF ~  GlobalLT("bd_trial_plot","bd4000",5)
~ THEN REPLY @32 /* ~Yes, you mentioned that earlier. It was most helpful.~ #47713 */ GOTO 13
  IF ~  GlobalLT("bd_trial_plot","bd4000",5)
IsValidForPartyDialogue("Rasaad")
~ THEN REPLY @33 /* ~Who didn't do what?~ #47714 */ EXTERN ~BDRASAAJ~ 31
  IF ~  GlobalLT("bd_trial_plot","bd4000",5)
!IsValidForPartyDialogue("Rasaad")
~ THEN REPLY @33 /* ~Who didn't do what?~ #47714 */ GOTO 3
  IF ~  GlobalLT("bd_trial_plot","bd4000",5)
~ THEN REPLY @34 /* ~I'm afraid he did.~ #47715 */ GOTO 16
  IF ~~ THEN REPLY @35 /* ~No. We are not going to go through this again.~ #47716 */ GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @36 /* ~So you're gonna tell Leopas Corinth is innocent? ~ #47717 */
  IF ~~ THEN REPLY @37 /* ~I'll tell him the truth.~ #47718 */ GOTO 14
  IF ~~ THEN REPLY @38 /* ~I haven't decided yet.~ #47719 */ GOTO 15
  IF ~~ THEN REPLY @39 /* ~Corinth isn't innocent.~ #47720 */ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @40 /* ~Yeah, sure, sure. The truth. That should work. Good. I'll see you later, then.~ #47721 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @41 /* ~Fair enough, fair enough, yeah, that's fair. Good. I'll see you later then, right? Good.~ #47722 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 16 // from: 13.2 12.3
  SAY @42 /* ~Aw, naw, naw, no, you think he did it? Betrayed the crusade? No. Uh-uh. Not him. He's not that stupid.~ #47723 */
  IF ~~ THEN GOTO 6
END
