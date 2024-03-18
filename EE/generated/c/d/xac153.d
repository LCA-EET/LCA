// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDVALIS.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDVALIS.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC153~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~You call me a liar, you traitorous pig? You dare?~ #47461 */
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN REPLY @2 /* ~Can I be of assistance here?~ #47462 */ EXTERN ~BDJAHEIJ~ 20
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN REPLY @2 /* ~Can I be of assistance here?~ #47462 */ EXTERN ~XAC149~ 1
  IF ~  IsValidForPartyDialogue("Voghiln")
~ THEN REPLY @3 /* ~He did call you a liar. I heard him.~ #47463 */ EXTERN ~BDVOGHIJ~ 10
  IF ~  !IsValidForPartyDialogue("Voghiln")
~ THEN REPLY @3 /* ~He did call you a liar. I heard him.~ #47463 */ EXTERN ~XAC149~ 1
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @4 /* ~There's only one way to resolve this. Trial by combat!~ #47464 */ EXTERN ~BDDYNAHJ~ 97
  IF ~  !IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @4 /* ~There's only one way to resolve this. Trial by combat!~ #47464 */ EXTERN ~XAC149~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @5 /* ~I'm no bard—it's no tale of thrilling adventure I will tell, but it is the truth. Before we were assigned here, Corinth and I served as scouts to the Blinding White battalion. He did the job well enough—until we came to the hamlet of Innisfall.~ [BD47490] #47490 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6 /* ~There, he broke cover, warning the inhabitants of our coming. They took what provisions they had and fled before our forces arrived. The gods alone know how many he cost the Lady's light, never mind the supplies and weapons we lost due to his betrayal.~ #47491 */
  IF ~~ THEN EXTERN ~XAC152~ 1
END

IF ~~ THEN BEGIN 3 // from:
  SAY @7 /* ~Deceiver! I'll cleave your head from your shoulders!~ #47498 */
  IF ~~ THEN EXTERN ~XAC149~ 8
END

IF ~  Global("bd_trial_plot","bd4000",7)
Dead("bdcorint")
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 4 // from:
  SAY @8 /* ~Hah! The light of truth is my shield and my sword and they have struck the traitor down!~ #47515 */
  IF ~~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",8)
~ EXTERN ~XAC149~ 13
END

IF ~  Global("bd_valis_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
GlobalLT("bd_plot","global",400)
IsValidForPartyDialogue("mkhiin")
Global("bd_valis_mkhiin","locals",0)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~A goblin, now? Bad enough we've scum like Corinth among us. This is too much.~ #47597 */
  IF ~~ THEN REPLY @10 /* ~M'Khiin is as much a believer in Caelar as I.~ #47598 */ DO ~SetGlobal("bd_valis_mkhiin","locals",1)
~ EXTERN ~BDMKHIIJ~ 72
  IF ~~ THEN REPLY @11 /* ~You have a problem with M'Khiin, my lady? ~ #47599 */ DO ~SetGlobal("bd_valis_mkhiin","locals",1)
~ EXTERN ~BDMKHIIJ~ 71
  IF ~~ THEN REPLY @12 /* ~I thought the crusade welcomed all who embraced Caelar's light.~ #47600 */ DO ~SetGlobal("bd_valis_mkhiin","locals",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY @13 /* ~Caelar's a bit too welcoming for my taste. What do you want?~ #47601 */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7 // from:
  SAY @14 /* ~The Shining Lady accepts all who share her vision. She is without guile—that is why we love her. But she must be protected from those who would abuse her generosity. Now what do you want?~ #47603 */
  IF ~~ THEN GOTO 9
END

IF ~  Global("bd_trial_plot","bd4000",0)
~ THEN BEGIN 8 // from:
  SAY @13 /* ~Caelar's a bit too welcoming for my taste. What do you want?~ #47601 */
  IF ~~ THEN EXIT
END

IF ~  Global("bd_valis_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
GlobalLT("bd_plot","global",400)
OR(2)
!IsValidForPartyDialogue("mkhiin")
Global("bd_valis_mkhiin","locals",1)
~ THEN BEGIN 9 // from: 7.0 6.0
  SAY @15 /* ~You've already heard what I have to say. There's not much I can add to it.~ [BD47605] #47605 */
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
~ THEN REPLY @16 /* ~You truly believe Corinth betrayed Caelar? That he warned the people of Innisfall of your coming?~ #47606 */ DO ~SetGlobal("bd_valis_plot","bd4000",1)
~ GOTO 11
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @17 /* ~Uh... What?~ #47607 */ DO ~SetGlobal("bd_valis_plot","bd4000",1)
~ EXTERN ~BDDYNAHJ~ 98
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
!IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @17 /* ~Uh... What?~ #47607 */ DO ~SetGlobal("bd_valis_plot","bd4000",1)
~ GOTO 10
  IF ~~ THEN REPLY @18 /* ~Then I shall leave you to your labors.~ #47608 */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY @19 /* ~You're here to talk to me about Corinth and Innisfall, right? To determine whether or not he did what I say he did. Which he did. We were to scout the hamlet and report back, but he did more.~ #47610 */
  IF ~  GlobalGT("bd_corinth_plot","bd4000",0)
~ THEN REPLY @20 /* ~I find it hard to believe. He seems as devoted to Caelar as any man I've met.~ #47611 */ GOTO 11
  IF ~~ THEN REPLY @21 /* ~Oh, right. That. What did he do again?~ #47612 */ GOTO 11
  IF ~~ THEN REPLY @22 /* ~You can shout your accusations to the heavens if you wish. Say them as often and as loudly as you want. That does nothing to prove their truth.~ #47613 */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.2 10.1 10.0 9.0
  SAY @23 /* ~I saw him enter the town. Not an hour later, it was empty. It's obvious what happened. Delton tells me Corinth has—HAD family in Innisfall. He clearly warned them of our approach. Those people could have discovered Caelar, and he stole it from them!~ [BD47615] #47615 */
  IF ~~ THEN REPLY @24 /* ~This is a serious crime you accuse Corinth of. I don't want to rush to judgment.~ #47616 */ DO ~SetGlobal("bd_trial_plot","bd4000",2)
~ GOTO 14
  IF ~  Global("bd_delton_plot","bd4000",0)
~ THEN REPLY @25 /* ~Who is this Delton?~ #47617 */ DO ~SetGlobal("bd_trial_plot","bd4000",2)
~ GOTO 12
  IF ~~ THEN REPLY @26 /* ~You paint a compelling picture, but I'm not convinced of his guilt. Not yet.~ #47618 */ DO ~SetGlobal("bd_trial_plot","bd4000",2)
~ GOTO 14
  IF ~~ THEN REPLY @27 /* ~A great loss, I'm sure.~ #47619 */ DO ~SetGlobal("bd_trial_plot","bd4000",2)
~ GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @28 /* ~A gnome, which tells you all you need know about him.~ #47620 */
  IF ~~ THEN GOTO 13
  IF ~  IsValidForPartyDialogue("Glint")
~ THEN EXTERN ~BDGLINTJ~ 63
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @29 /* ~I saw Delton lurking over on the other side of this fence. Go talk to him, he'll tell you. Corinth chose his family over the Shining Lady. He must pay for it.~ #47622 */
  IF ~~ THEN UNSOLVED_JOURNAL @30 /* ~The Trial

I should continue to investigate Corinth's actions, then return to Leopas when I have the truth.

The ranger Valis seems utterly convinced that her fellow crusader, Corinth, betrayed the cause. She has no hard evidence that I'm aware of, but she argues her case with such passion that she may not need any.~ #58716 */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2 11.0
  SAY @31 /* ~Well, stop wasting time with me, then. If you need anything more, I'll be right here. Go, do what you must to find the truth.~ #47626 */
  IF ~~ THEN UNSOLVED_JOURNAL @30 /* ~The Trial

I should continue to investigate Corinth's actions, then return to Leopas when I have the truth.

The ranger Valis seems utterly convinced that her fellow crusader, Corinth, betrayed the cause. She has no hard evidence that I'm aware of, but she argues her case with such passion that she may not need any.~ #58716 */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY @32 /* ~I don't like your tone. This is a serious matter. A traitor walks in our midst. It cannot be allowed to stand. Go, do what you were bid. Find the truth; then expose Corinth for what he is. If you need anything more, I'll be right here.~ #47627 */
  IF ~~ THEN UNSOLVED_JOURNAL @30 /* ~The Trial

I should continue to investigate Corinth's actions, then return to Leopas when I have the truth.

The ranger Valis seems utterly convinced that her fellow crusader, Corinth, betrayed the cause. She has no hard evidence that I'm aware of, but she argues her case with such passion that she may not need any.~ #58716 */ EXIT
END

IF ~  Global("bd_valis_plot","bd4000",1)
GlobalLT("bd_trial_plot","bd4000",5)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 16 // from:
  SAY @33 /* ~What word? Are you convinced of that dog Corinth's guilt yet?~ [BD47628] #47628 */
  IF ~  IsValidForPartyDialogue("Voghiln")
~ THEN REPLY @34 /* ~I'm still investigating the matter.~ #47629 */ EXTERN ~BDVOGHIJ~ 11
  IF ~  !IsValidForPartyDialogue("Voghiln")
~ THEN REPLY @34 /* ~I'm still investigating the matter.~ #47629 */ GOTO 18
  IF ~  GlobalGT("bd_delton_plot","bd4000",1)
~ THEN REPLY @35 /* ~I talked to Delton. Corinth had family in Innisfall.~ #47630 */ GOTO 20
  IF ~~ THEN REPLY @36 /* ~When I've made my decision, you will know of it, I assure you.~ #47631 */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from:
  SAY @37 /* ~You wouldn't be able to handle it, friend. And you—you're still "investigating"?~ #47633 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 16.1
  SAY @38 /* ~What's to investigate? He's guilty. GUILTY. There the story ends. Do your damn job. I want that traitorous swine gone. The crusade has enemies enough outside these walls, we don't need them within as well.~ #47634 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.3
  SAY @39 /* ~Well, step it up. I want that traitorous swine gone. The crusade has enemies enough outside these walls, we don't need them within as well.~ #47635 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.2
  SAY @40 /* ~Yes. "Had." He warned them of our coming. Those people could have discovered Caelar. The selfish pig stole that from them!~ #47636 */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @41 /* ~The crusade has enemies enough outside these walls, we don't need them within as well. Tell Leopas Corinth is guilty.~ #47637 */
  IF ~~ THEN REPLY @42 /* ~I will—when I'm convinced that he is, in fact, guilty.~ #47638 */ GOTO 22
  IF ~~ THEN REPLY @43 /* ~I will tell Leopas the truth.~ #47639 */ GOTO 23
  IF ~~ THEN REPLY @44 /* ~I do not answer to you, ranger. And I don't respond well to threats.~ #47640 */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.2 21.0
  SAY @45 /* ~My patience is wearing thin. I'll not abide a traitor in our ranks. I won't. Do the right thing, and do it soon, or I WILL do it for you.~ #47641 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY @46 /* ~Then we have no quarrel. Go, do your bloody job, already.~ #47643 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY @47 /* ~Deceiver! I'll see you dead for this, you and Corinth both!~ [BD47857] #47857 */
  IF ~~ THEN EXTERN ~XAC149~ 21
END

IF ~~ THEN BEGIN 25 // from:
  SAY @48 /* ~I knew it! Let justice be done!~ [BD47863] #47863 */
  IF ~~ THEN EXTERN ~XAC149~ 25
END
