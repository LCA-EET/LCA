// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDDAMARR.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDDAMARR.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC156~

IF ~  Global("bd_damarr_plot","locals",0)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Ho, there. I am Damarr. ~ #47724 */
  IF ~~ THEN REPLY @2 /* ~I am <CHARNAME>. Pleased to make your acquaintance.~ #47725 */ DO ~SetGlobal("bd_damarr_plot","locals",1)
~ GOTO 1
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
~ THEN REPLY @3 /* ~Good to know you, Damarr. I'm investigating the charges against Corinth.~ #47726 */ DO ~SetGlobal("bd_damarr_plot","locals",1)
~ GOTO 2
  IF ~~ THEN REPLY @4 /* ~And I am leaving.~ #47727 */ DO ~SetGlobal("bd_damarr_plot","locals",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~Seriously? <CHARNAME>? You know you share a name with the hero of Baldur's Gate, right?~ #47728 */
  IF ~~ THEN REPLY @6 /* ~I am aware of it.~ #47729 */ GOTO 2
  IF ~~ THEN REPLY @7 /* ~Painfully so. I loathe that <PRO_MANWOMAN>, <PRO_HESHE>'s made my life a living nightmare.~ #47730 */ GOTO 2
  IF ~~ THEN REPLY @8 /* ~This is not a conversation I care to have.~ #47731 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0 0.1
  SAY @9 /* ~I see. What can I help you with?~ #47733 */
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
~ THEN REPLY @10 /* ~What can you tell me about Valis and Corinth?~ #47734 */ GOTO 4
  IF ~~ THEN REPLY @11 /* ~Nothing at the moment.~ #47735 */ GOTO 3
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
~ THEN REPLY @12 /* ~Do you think Corinth warned Innisfall about the crusade?~ #47736 */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 11.1 9.2 7.2 2.1 1.2 0.2
  SAY @13 /* ~Nice talking to you.~ #47748 */
  IF ~~ THEN EXIT
  IF ~  Global("bd_damarr_plot","locals",2)
~ THEN DO ~SetGlobal("bd_damarr_plot","locals",3)
~ UNSOLVED_JOURNAL @14 /* ~The Trial

I should continue to investigate Corinth's actions, then return to Leopas when I have the truth.

I have spoken with the crusader Damarr regarding Corinth's alleged actions at Innisfall. While she has few doubts that he did what Valis accuses him of, she feels the punishment a guilty verdict will inevitably bring outweighs the severity of the crime.~ #58720 */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 9.1 2.0
  SAY @15 /* ~All right, here's how it is. It's no secret Corinth isn't as... committed to Caelar's cause as some of us. Certainly not the way Valis is. Could he have warned Innisfall about the crusade coming?~ #47749 */
  IF ~~ THEN DO ~SetGlobal("bd_damarr_plot","locals",2)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 2.2
  SAY @16 /* ~It's possible. It's definitely possible. But—it's not like we lost people taking Innisfall. It's not SO great a crime that he deserves to die—assuming he even did anything, which I don't think you can assume.~ #47750 */
  IF ~~ THEN REPLY @17 /* ~Would Valis lie to frame Corinth? She obviously holds him in contempt.~ #47751 */ GOTO 6
  IF ~~ THEN REPLY @18 /* ~I'm not assuming anything. Belief is not enough for me—I have to KNOW what's true and what isn't.~ #47752 */ GOTO 6
  IF ~~ THEN REPLY @19 /* ~I assume nothing.~ #47753 */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2 5.1 5.0
  SAY @20 /* ~Valis has no love for Corinth. I don't know how far she'd go to see him dead. And we are talking about Corinth's life and death here. If he's found guilty of betraying Caelar, he'll be heading to Avernus before any of us do.~ #47754 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @21 /* ~I've seen enough death myself. I don't like Corinth, but I don't dislike him so much that I'd see him die, not for what he's accused of.~ #47760 */
  IF ~~ THEN REPLY @22 /* ~Thank you, Damarr. You've been very helpful.~ #47761 */ GOTO 8
  IF ~~ THEN REPLY @23 /* ~You've given me a lot to think about.~ #47762 */ GOTO 8
  IF ~~ THEN REPLY @24 /* ~I've had enough of this. Perhaps we shall speak more of it another time. For now, however, I will take my leave.~ #47763 */ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.0
  SAY @25 /* ~I try. Take care of yourself. Caelar's enemies are all around us. We are safe in her light, but... well, we could always be a little safer, you know? ~ #47764 */
  IF ~~ THEN DO ~SetGlobal("bd_damarr_plot","locals",3)
~ UNSOLVED_JOURNAL @14 /* ~The Trial

I should continue to investigate Corinth's actions, then return to Leopas when I have the truth.

I have spoken with the crusader Damarr regarding Corinth's alleged actions at Innisfall. While she has few doubts that he did what Valis accuses him of, she feels the punishment a guilty verdict will inevitably bring outweighs the severity of the crime.~ #58720 */ EXIT
END

IF ~  GlobalGT("bd_damarr_plot","locals",0)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 9 // from:
  SAY @26 /* ~Back for more? ~ #47765 */
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
IsValidForPartyDialogue("Safana")
~ THEN REPLY @27 /* ~I would speak to you about Valis and Corinth.~ #47766 */ EXTERN ~BDSAFANJ~ 69
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
!IsValidForPartyDialogue("Safana")
~ THEN REPLY @27 /* ~I would speak to you about Valis and Corinth.~ #47766 */ GOTO 4
  IF ~~ THEN REPLY @28 /* ~No, I'm really not.~ #47767 */ GOTO 3
  IF ~  IsValidForPartyDialogue("Viconia")
Gender(Player1,MALE)
~ THEN REPLY @29 /* ~You have more to give?~ #47769 */ EXTERN ~BDVICONJ~ 16
  IF ~  OR(2)
!IsValidForPartyDialogue("Viconia")
Gender(Player1,FEMALE)
~ THEN REPLY @29 /* ~You have more to give?~ #47769 */ GOTO 17
  IF ~~ THEN REPLY @30 /* ~Yes. You seem very reasonable for a crusader.~ #47770 */ GOTO 11
  IF ~~ THEN REPLY @31 /* ~I've nothing more to say to you.~ #47771 */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.6
  SAY @32 /* ~A pity. I enjoyed our time together. Fare thee well.~ #47772 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.5
  SAY @33 /* ~No more reasonable than you, surely?~ #47775 */
  IF ~~ THEN REPLY @34 /* ~I sometimes have... doubts, about Caelar's goals. Not their righteousness, necessarily, but whether they're actually achievable.~ #47776 */ GOTO 12
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
~ THEN REPLY @35 /* ~Much more reasonable than that, I'd hope. Excuse me, I've got to go figure this thing with Valis and Corinth out.~ #47777 */ GOTO 3
  IF ~  IsValidForPartyDialogue("Glint")
~ THEN REPLY @36 /* ~Far more reasonable than me. Believe me, you have no idea how insane I really am.~ #47779 */ EXTERN ~BDGLINTJ~ 64
  IF ~  !IsValidForPartyDialogue("Glint")
~ THEN REPLY @36 /* ~Far more reasonable than me. Believe me, you have no idea how insane I really am.~ #47779 */ GOTO 12
  IF ~~ THEN REPLY @37 /* ~I am here for my own benefit. In that, I seem to be a minority. Most of our fellows seem more than willing to die for the Shining Lady.~ #47780 */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.4 11.3 11.0
  SAY @38 /* ~It's all right. Not all of us are blinded by Caelar's light. Most are, it's true. You don't march into a Hell if you don't BELIEVE, no matter how much you're being paid.~ #47782 */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @39 /* ~But I've been here a month. Haven't gone to Avernus yet. When the time comes... Well, we'll see how many truly follow Caelar then. If it happens.~ #47787 */
  IF ~  IsValidForPartyDialogue("Corwin")
~ THEN REPLY @40 /* ~Take care of yourself, Damarr. There are dark times ahead.~ #47788 */ EXTERN ~BDCORWIJ~ 77
  IF ~  !IsValidForPartyDialogue("Corwin")
~ THEN REPLY @40 /* ~Take care of yourself, Damarr. There are dark times ahead.~ #47788 */ GOTO 15
  IF ~~ THEN REPLY @41 /* ~I hope she's right and all this is in service to the greater good.~ #47789 */ GOTO 16
  IF ~~ THEN REPLY @42 /* ~I can't imagine it'll be much longer before we know what's happening. For myself, I will focus on survival.~ #47790 */ GOTO 16
END

IF ~~ THEN BEGIN 14 // from:
  SAY @43 /* ~No harm in a little flirting. It's what comes later that can be dangerous. I'll leave you to your business now. Take care.~ #47794 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @44 /* ~And better days beyond them. We just have to survive long enough to enjoy them. It was good talking with you. Perhaps we can do it again sometime.~ #47795 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.3 13.2
  SAY @45 /* ~You and me both. Take care of yourself. Perhaps we'll talk again when this is all over.~ #47796 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.4
  SAY @46 /* ~Nothing you've not heard many times before, I'm sure. Nice talking to you. Take care.~ #47797 */
  IF ~~ THEN EXIT
END
