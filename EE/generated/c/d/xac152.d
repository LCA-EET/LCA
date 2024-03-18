// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDCORINT.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDCORINT.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC152~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~She lies!~ #47460 */
  IF ~~ THEN EXTERN ~XAC153~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Lies, all of it. Delton, you can't believe her...! All of you, you know me—you know I would never betray the Lady!~ [BD47492] #47492 */
  IF ~~ THEN REPLY @3 /* ~Tell us your side of the story, then.~ #47493 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~I don't know that, or you, for that matter. But I pride myself on keeping an open mind. Tell us what happened at Innisfall.~ #47494 */ GOTO 2
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN REPLY @5 /* ~I've heard enough. I'll listen to no more of this.~ #47495 */ EXTERN ~BDDORNJ~ 16
  IF ~  !IsValidForPartyDialogue("Dorn")
~ THEN REPLY @5 /* ~I've heard enough. I'll listen to no more of this.~ #47495 */ EXTERN ~XAC149~ 11
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @6 /* ~The people of Innisfall fled before us, it's true. I saw the rider who warned them of our coming from where I hid in the brush. He was a farmer, working the fields a few miles from town. He saw the battalion approach and warned his fellows. That is the beginning and the end of the story.~ #47497 */
  IF ~~ THEN EXTERN ~XAC153~ 3
END

IF ~  Global("bd_trial_plot","bd4000",7)
Dead("bdvalis")
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 3 // from:
  SAY @7 /* ~Forgive me, Valis. I never wanted this.~ #47516 */
  IF ~~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",8)
~ EXTERN ~XAC149~ 13
END

IF ~  Global("bd_corinth_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 4 // from:
  SAY @8 /* ~What do you want?~ [BD47532] #47532 */
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
IsValidForPartyDialogue("Dorn")
~ THEN REPLY @9 /* ~Nothing but the truth. What happened at Innisfall?~ #47533 */ DO ~SetGlobal("bd_corinth_plot","bd4000",1)
~ EXTERN ~BDDORNJ~ 17
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
!IsValidForPartyDialogue("Dorn")
~ THEN REPLY @9 /* ~Nothing but the truth. What happened at Innisfall?~ #47533 */ DO ~SetGlobal("bd_corinth_plot","bd4000",1)
~ GOTO 5
  IF ~  Global("bd_trial_plot","bd4000",2)
~ THEN REPLY @10 /* ~You know what I want. I understand you had family in Innisfall.~ #47534 */ DO ~SetGlobal("bd_corinth_plot","bd4000",1)
~ GOTO 6
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
IsValidForPartyDialogue("Khalid")
~ THEN REPLY @11 /* ~What have you got?~ #47535 */ DO ~SetGlobal("bd_corinth_plot","bd4000",1)
~ EXTERN ~BDKHALIJ~ 22
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
!IsValidForPartyDialogue("Khalid")
~ THEN REPLY @11 /* ~What have you got?~ #47535 */ DO ~SetGlobal("bd_corinth_plot","bd4000",1)
~ GOTO 5
  IF ~~ THEN REPLY @12 /* ~From you? Nothing.~ #47536 */ GOTO 16
END

IF ~~ THEN BEGIN 5 // from: 7.5 7.3 7.1 6.4 6.3 6.1 4.4 4.1
  SAY @13 /* ~I've nothing to say to you. You've already made your mind up, I know it. They all have.~ #47540 */
  IF ~~ THEN REPLY @14 /* ~I'm not one of them, Corinth. I've made no decisions yet.~ #47541 */ GOTO 12
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN REPLY @15 /* ~What in the Nine Hells are you talking about?~ #47542 */ EXTERN ~BDJAHEIJ~ 22
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN REPLY @15 /* ~What in the Nine Hells are you talking about?~ #47542 */ GOTO 11
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN REPLY @16 /* ~Admit your guilt and I will spare you further suffering.~ #47543 */ EXTERN ~BDDORNJ~ 18
  IF ~  !IsValidForPartyDialogue("Dorn")
CheckStatGT(Player1,17,CHR)
~ THEN REPLY @16 /* ~Admit your guilt and I will spare you further suffering.~ #47543 */ GOTO 8
  IF ~  !IsValidForPartyDialogue("Dorn")
!CheckStatGT(Player1,17,CHR)
~ THEN REPLY @16 /* ~Admit your guilt and I will spare you further suffering.~ #47543 */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 18.1 4.2
  SAY @17 /* ~And if I did?~ #47546 */
  IF ~  Alignment(Player1,MASK_GOOD)
OR(2)
Class(Player1,PALADIN)
Class(Player1,CLERIC_ALL)
~ THEN REPLY @18 /* ~It's only natural you'd want to spare them a confrontation with the crusade.~ #47547 */ GOTO 7
  IF ~  OR(2)
!Alignment(Player1,MASK_GOOD)
!Class(Player1,PALADIN)
OR(2)
!Alignment(Player1,MASK_GOOD)
!Class(Player1,CLERIC_ALL)
~ THEN REPLY @18 /* ~It's only natural you'd want to spare them a confrontation with the crusade.~ #47547 */ GOTO 5
  IF ~  Alignment(Player1,MASK_GOOD)
OR(2)
Class(Player1,PALADIN)
Class(Player1,CLERIC_ALL)
~ THEN REPLY @19 /* ~This isn't something I care to speculate upon.~ #47548 */ GOTO 7
  IF ~  OR(2)
!Alignment(Player1,MASK_GOOD)
!Class(Player1,PALADIN)
OR(2)
!Alignment(Player1,MASK_GOOD)
!Class(Player1,CLERIC_ALL)
~ THEN REPLY @19 /* ~This isn't something I care to speculate upon.~ #47548 */ GOTO 5
  IF ~~ THEN REPLY @20 /* ~You try to make a question out of something you know for a fact. Did you have family in Innisfall or not?~ #47549 */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 6.2 6.0
  SAY @21 /* ~I—I believe in Caelar. She is the light. My family lost many in the Dragonspear Wars... ~ #47550 */
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN REPLY @22 /* ~Seeing food and valuables stripped from one's family would be a terrible burden to bear, even if you knew it to be for a noble cause.~ #47551 */ EXTERN ~BDMINSCJ~ 62
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN REPLY @22 /* ~Seeing food and valuables stripped from one's family would be a terrible burden to bear, even if you knew it to be for a noble cause.~ #47551 */ GOTO 5
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY @23 /* ~I can sense the weariness in your voice. You tire of keeping secrets. Tell me what happened in Innisfall.~ #47552 */ GOTO 8
  IF ~  CheckStatLT(Player1,17,CHR)
~ THEN REPLY @23 /* ~I can sense the weariness in your voice. You tire of keeping secrets. Tell me what happened in Innisfall.~ #47552 */ GOTO 5
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY @24 /* ~They could have lost more if they stayed in Innisfall and tried to resist us.~ #47553 */ GOTO 8
  IF ~  CheckStatLT(Player1,17,CHR)
~ THEN REPLY @24 /* ~They could have lost more if they stayed in Innisfall and tried to resist us.~ #47553 */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 12.2 7.4 7.2 5.4
  SAY @25 /* ~Ah, gods help me...! I have betrayed my friends, my fellows in arms... I have betrayed the Lady! I did as Valis said—I warned Innisfall of the crusade's approach. I could not stand to see my family deprived.~ #47555 */
  IF ~~ THEN REPLY @26 /* ~You were protecting your loved ones, Corinth. There is no sin in this.~ #47556 */ DO ~SetGlobal("bd_trial_plot","bd4000",2)
~ GOTO 9
  IF ~~ THEN REPLY @27 /* ~I have no family of my own, yet I know how you must feel. You did what you believed was right. You could do nothing else.~ #47557 */ DO ~SetGlobal("bd_trial_plot","bd4000",2)
~ GOTO 9
  IF ~~ THEN REPLY @28 /* ~And so you betrayed Caelar.~ #47558 */ DO ~SetGlobal("bd_trial_plot","bd4000",2)
~ GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.0
  SAY @29 /* ~I doubt Leopas will see it that way. Valis certainly doesn't. ~ #47559 */
  IF ~~ THEN REPLY @30 /* ~Be strong, Corinth. You will survive this, I promise.~ #47560 */ GOTO 10
  IF ~~ THEN REPLY @31 /* ~I'll deal with them, don't you worry about that.~ #47561 */ GOTO 10
  IF ~~ THEN REPLY @32 /* ~Nor should they. You betrayed them.~ #47562 */ GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 14.1 14.0 9.1 9.0
  SAY @33 /* ~Bless you, <PRO_SIRMAAM>. Thank you and bless you, for my life and my family's alike.~ #47563 */
  IF ~~ THEN DO ~SetGlobal("bd_corinth_plot","bd4000",3)
~ UNSOLVED_JOURNAL @34 /* ~The Trial

I should continue to investigate Corinth's actions, then return to Leopas when I have the truth.

The ranger Corinth alerted the hamlet of Innisfall, costing the crusade recruits and supplies. His commander, Leopas, waits for me to declare Corinth innocent or guilty. This could get tricky...~ #58790 */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 18.4 18.2 18.0 12.3 12.1 5.5 5.2
  SAY @35 /* ~Leave me alone! Please, just—just let me be.~ #47564 */
  IF ~~ THEN EXIT
  IF ~  Global("bd_corinth_journal","locals",0)
~ THEN DO ~SetGlobal("bd_corinth_journal","locals",1)
~ UNSOLVED_JOURNAL @36 /* ~The Trial

I should continue to investigate Corinth's actions, then return to Leopas when I have the truth.

I had a talk with the ranger Corinth, who is accused by the crusader Valis of betraying them in the hamlet of Innisfall. For one who was so quick to protest his innocence, he seemed very reluctant to speak to me.~ #58789 */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0
  SAY @37 /* ~I did nothing wrong. You have to believe that. I did nothing wrong.~ #47565 */
  IF ~~ THEN REPLY @38 /* ~Fear not, Corinth. I believe you.~ #47566 */ GOTO 13
  IF ~~ THEN REPLY @39 /* ~Well, go ahead then. Convince me.~ #47567 */ GOTO 11
  IF ~  CheckStatGT(Player1,17,CHR)
~ THEN REPLY @40 /* ~Right and wrong have nothing to do with it. Did you betray your mistress or didn't you?~ #47568 */ GOTO 8
  IF ~  CheckStatLT(Player1,18,CHR)
~ THEN REPLY @40 /* ~Right and wrong have nothing to do with it. Did you betray your mistress or didn't you?~ #47568 */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @41 /* ~Then tell Leopas, please—preferably before that infernal Valis puts an arrow in my neck. Now I have things I need to do. Good <DAYNIGHTALL> to you.~ #47569 */
  IF ~~ THEN DO ~SetGlobal("bd_corinth_plot","bd4000",2)
~ UNSOLVED_JOURNAL @36 /* ~The Trial

I should continue to investigate Corinth's actions, then return to Leopas when I have the truth.

I had a talk with the ranger Corinth, who is accused by the crusader Valis of betraying them in the hamlet of Innisfall. For one who was so quick to protest his innocence, he seemed very reluctant to speak to me.~ #58789 */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY @42 /* ~I did. I didn't want to, you have to believe me. But I did. Please, my <PRO_LADYLORD>, you can't tell Leopas. He'll have my head, or worse, let Valis off her leash to do to me as she will.~ #47570 */
  IF ~~ THEN REPLY @43 /* ~I won't let that happen.~ #47571 */ GOTO 10
  IF ~~ THEN REPLY @44 /* ~Calm yourself, my friend. I'll not give you up to these jackals.~ #47572 */ GOTO 10
  IF ~~ THEN REPLY @45 /* ~Perhaps we can come to some arrangement. What is my silence worth to you?~ #47573 */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY @46 /* ~What? I—I have little to offer, my <PRO_LADYLORD>. My armor, my sword, my bow and a quiver of arrows. A handful of gold, nothing more. ~ #47574 */
  IF ~~ THEN REPLY @47 /* ~Hand it over. All of it.~ #47575 */ DO ~SetGlobal("bd_corinth_gave_bow","locals",1)
GiveItem("bdbow02",LastTalkedToBy(Myself))
GiveItem("leat10",LastTalkedToBy(Myself))
GiveItem("sw1h07",LastTalkedToBy(Myself))
GiveItem("arow02",LastTalkedToBy(Myself))
GivePartyGold(50)
~ GOTO 17
  IF ~~ THEN REPLY @48 /* ~That's all? It will have to do.~ #47576 */ DO ~SetGlobal("bd_corinth_gave_bow","locals",1)
GiveItem("bdbow02",LastTalkedToBy(Myself))
GiveItem("leat10",LastTalkedToBy(Myself))
GiveItem("sw1h07",LastTalkedToBy(Myself))
GiveItem("arow02",LastTalkedToBy(Myself))
GivePartyGold(50)
~ GOTO 17
  IF ~~ THEN REPLY @49 /* ~Not enough.~ #47577 */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 4.5
  SAY @50 /* ~Be off with you, then.~ #47582 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.2 15.1 15.0 9.2
  SAY @51 /* ~Please, my <PRO_LADYLORD>—I have a family, a wife and two daughters. Don't tell Leopas of this. I beg you.~ #47586 */
  IF ~~ THEN DO ~SetGlobal("bd_corinth_plot","bd4000",3)
~ UNSOLVED_JOURNAL @34 /* ~The Trial

I should continue to investigate Corinth's actions, then return to Leopas when I have the truth.

The ranger Corinth alerted the hamlet of Innisfall, costing the crusade recruits and supplies. His commander, Leopas, waits for me to declare Corinth innocent or guilty. This could get tricky...~ #58790 */ EXIT
END

IF ~  Global("bd_corinth_plot","bd4000",1)
GlobalLT("bd_trial_plot","bd4000",5)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 18 // from:
  SAY @52 /* ~Please, please, why won't you leave me alone?~ [BD47587] #47587 */
  IF ~~ THEN REPLY @53 /* ~I can't do that, Corinth. Not until I know the truth.~ #47588 */ GOTO 11
  IF ~  Global("bd_trial_plot","bd4000",2)
~ THEN REPLY @54 /* ~I understand you had family in Innisfall. Is that true?~ #47589 */ GOTO 6
  IF ~~ THEN REPLY @55 /* ~I enjoy watching you squirm.~ #47590 */ GOTO 11
  IF ~  IsValidForPartyDialogue("Glint")
~ THEN REPLY @56 /* ~I know you betrayed the crusade, Corinth. Confess your sins, you worthless maggot!~ #47591 */ EXTERN ~BDGLINTJ~ 62
  IF ~  !IsValidForPartyDialogue("Glint")
~ THEN REPLY @56 /* ~I know you betrayed the crusade, Corinth. Confess your sins, you worthless maggot!~ #47591 */ GOTO 11
END

IF ~  GlobalGT("bd_corinth_plot","bd4000",1)
GlobalLT("bd_trial_plot","bd4000",5)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 19 // from:
  SAY @57 /* ~Have you spoken to Leopas yet?~ [BD47592] #47592 */
  IF ~~ THEN REPLY @58 /* ~No, not yet.~ #47593 */ GOTO 20
  IF ~~ THEN REPLY @59 /* ~I haven't really had the chance to talk with him, no.~ #47594 */ GOTO 20
  IF ~~ THEN REPLY @60 /* ~You would know if I had, believe me.~ #47595 */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.2 19.1 19.0
  SAY @61 /* ~This waiting is driving me mad! I would see this done, the sooner the better. ~ #47596 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY @62 /* ~I didn't, I swear I didn't!~ #47862 */
  IF ~~ THEN EXTERN ~XAC153~ 25
END

IF ~~ THEN BEGIN 22 // from: 24.3 23.2
  SAY @63 /* ~There is much I'd say to you, but I'll not deny the one who saved my life a request as simple as that. Farewell.~ [BD47885] #47885 */
  IF ~~ THEN DO ~EscapeAreaObject("crusader_camp")
~ EXIT
END

IF ~  GlobalGT("bd_trial_plot","bd4000",11)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 23 // from:
  SAY @64 /* ~It seems I owe you my life. I'm—I'm not really sure how much that's worth, these days.~ #47886 */
  IF ~~ THEN REPLY @65 /* ~All life has value, Corinth. You have to believe that.~ #47887 */ GOTO 24
  IF ~~ THEN REPLY @66 /* ~Then make it worth something. Do what you must do to find meaning in your actions.~ #47888 */ GOTO 25
  IF ~~ THEN REPLY @67 /* ~It means little enough to me. Begone.~ #47889 */ GOTO 22
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @68 /* ~I thought I could manage this. Fight for Caelar, for the greater good. That was what I wanted to do. Her cause is righteous. I believe in her, but... Some of the things I've seen in her service... Some of the things I've done... ~ #47890 */
  IF ~~ THEN REPLY @69 /* ~You don't need to do this, Corinth. You may not be able to stop the crusade, but no one can make you be a part of it.~ #47891 */ GOTO 26
  IF ~~ THEN REPLY @70 /* ~We do what we must to survive.~ #47892 */ GOTO 25
  IF ~~ THEN REPLY @71 /* ~War is father to many an atrocity.~ #47893 */ GOTO 25
  IF ~~ THEN REPLY @72 /* ~What have you done, really? I'll tell you: nothing. You know nothing of the true horrors this world has to offer. Begone; I'll hear no more of this pitiful whining.~ #47894 */ GOTO 22
END

IF ~~ THEN BEGIN 25 // from: 24.2 24.1 23.1
  SAY @73 /* ~No one's ever accused me of being a proud man. But I've never felt like this, never felt ashamed before. I hope Caelar succeeds. I hope the souls of the dead are restored. But I can't be a part of it. Not anymore.~ #47895 */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0 24.0
  SAY @74 /* ~First chance I get, I'm leaving this place. Running may not seem very noble, but it's the best I can do. This is all—it's too much. It's too big for the likes of me.~ #47896 */
  IF ~~ THEN DO ~EscapeAreaObject("crusader_camp")
~ EXIT
  IF ~  Global("bd_corinth_plot","bd4000",3)
~ THEN DO ~ReputationInc(1)
EscapeAreaObject("crusader_camp")
~ EXIT
  IF ~  Global("bd_corinth_gave_bow","locals",0)
~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.2
  SAY @75 /* ~My father gave me this bow. I'd like you to have it. Please. It's all I have to offer you as thanks for helping me. I don't deserve to carry it. I won't need it where I'm going anyway. Farewell.~ #47897 */
  IF ~~ THEN DO ~GiveItem("bdbow02",LastTalkedToBy(Myself))
EscapeAreaObject("crusader_camp")
~ EXIT
  IF ~  Global("bd_corinth_plot","bd4000",3)
~ THEN DO ~ReputationInc(1)
GiveItem("bdbow02",LastTalkedToBy(Myself))
EscapeAreaObject("crusader_camp")
~ EXIT
END
