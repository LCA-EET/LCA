// creator  : weidu (version 24900)
// argument : YOSHIMO.DLG
// game     : .
// source   : ./override/YOSHIMO.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~YOSHIMO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 14 21 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2716 /* ~So, there is sanity in all this madness. If you are not in league with the evil that dwells in this unholy place, Yoshimo begs your assistance. ~ [YOSHIM01] */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
~ THEN REPLY #2719 /* ~Who calls? Excuse my mistrust, but this is quite a hellish mess I'm into here.~ */ GOTO 1
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
~ THEN REPLY #2720 /* ~Assistance you shall get. What ails you, friend?~ */ GOTO 47
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
~ THEN REPLY #2721 /* ~Stay back, fiend! I'll not fall for such childish tricks.~ */ GOTO 2
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 498
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 190
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2722 /* ~I share your sentiments. I have seen much here that has disturbed me. I myself am a warrior with no evil intentions. Please, I would welcome any assistance you might offer.~ */
  IF ~~ THEN REPLY #2723 /* ~Then assistance you shall get, Yoshimo. What ails you, friend?~ */ GOTO 47
  IF ~~ THEN REPLY #2724 /* ~I don't believe you. Stay back if you wish to live.~ */ GOTO 2
  IF ~~ THEN REPLY #2725 /* ~How did you come to be here?~ */ GOTO 39
END

IF ~~ THEN BEGIN 2 // from: 8.1 3.1 1.1 0.2
  SAY #2730 /* ~I am no fiend! I am Yoshimo! You know, Yoshimo?~ */
  IF ~~ THEN REPLY #2731 /* ~Sorry, I've never heard of you.~ */ GOTO 6
  IF ~~ THEN REPLY #2732 /* ~THE Yoshimo? Feared by all?~ */ GOTO 7
  IF ~~ THEN REPLY #2733 /* ~In that case, how did you come to be here?~ */ GOTO 39
END

IF ~~ THEN BEGIN 3 // from: 40.0
  SAY #2734 /* ~I do not know how long I was there before awaking.~ */
  IF ~~ THEN REPLY #2736 /* ~Do you think that we are in Athkatla?~ */ GOTO 42
  IF ~~ THEN REPLY #2737 /* ~How do I know that you aren't some sort of fiend here to lure me into a trap? ~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 47.1 9.2 8.0
  SAY #2738 /* ~I do not know a way to escape this place. Perhaps we could search for this exit together.~ */
  IF ~~ THEN REPLY #25310 /* ~I would welcome another companion, but I have a few questions first.~ */ GOTO 9
  IF ~~ THEN REPLY #25312 /* ~I do not think that it would be wise. I'll be better off navigating this place without you.~ */ GOTO 11
  IF ~~ THEN REPLY #25313 /* ~I would be pleased to have you join me.~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 41.0
  SAY #2741 /* ~Perhaps then Yoshimo's predicament won't seem so funny!~ */
  IF ~~ THEN REPLY #2742 /* ~Stay calm, I was only trying to lighten the mood. How did you come to be here?~ */ GOTO 39
  IF ~~ THEN REPLY #2743 /* ~I'm leaving now. Good luck surviving this place.~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 2.0
  SAY #2744 /* ~You must be new to Amn, or at least Athkatla.~ */
  IF ~  !IsValidForPartyDialogue("IMOEN2")
~ THEN REPLY #2745 /* ~As far as I know, I've never been to Amn. Do you think that we are in Athkatla?~ */ GOTO 42
  IF ~  !IsValidForPartyDialogue("IMOEN2")
~ THEN REPLY #2746 /* ~Your ego outdoes your accomplishments, it would seem. How did you come to be here?~ */ GOTO 39
  IF ~  IsValidForPartyDialogue("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 135
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #2747 /* ~At last, an admirer! I do not know a way to escape this place. Perhaps we could search for this exit together. ~ */
  IF ~~ THEN REPLY #2727 /* ~I would welcome another companion, but I have a few questions first.~ */ GOTO 9
  IF ~~ THEN REPLY #2729 /* ~I do not think that it would be wise. I'll be better off navigating this place without you.~ */ GOTO 11
  IF ~~ THEN REPLY #25305 /* ~I would be pleased to have you join me.~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 42.0
  SAY #2751 /* ~If it was the former, this place could be anywhere. If it was the latter, then I don't imagine that I could have traveled very far without noticing.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN REPLY #2752 /* ~What do you propose to do now?~ */ GOTO 4
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN REPLY #2754 /* ~How do I know that you aren't some sort of fiend here to lull me into insensibility?~ */ GOTO 2
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 191
END

IF ~~ THEN BEGIN 9 // from: 13.0 7.0 4.0
  SAY #2755 /* ~What do you need to know?~ */
  IF ~~ THEN REPLY #2756 /* ~I'm not sure if I should trust you. I will take my leave of you now.~ */ GOTO 11
  IF ~~ THEN REPLY #2757 /* ~How did you get here?~ */ GOTO 39
  IF ~~ THEN REPLY #2758 /* ~What aid do you need?~ */ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 43.0 11.0
  SAY #2759 /* ~If you are ever in Athkatla and need some assistance, I reside at the Copper Coronet, an inn of some renown. First, however, a warning...~ */
  IF ~~ THEN DO ~SetGlobal("MetYoshimo","GLOBAL",1)
~ SOLVED_JOURNAL #48001 /* ~Yoshimo escapes the dungeon on his own

I met a thief in this dark place who named himself Yoshimo. I didn't trust him enough to take him with me, but he did say that if I get out of this dungeon (as does he), that I should try and find him, perhaps at the closest tavern. ~ */ GOTO 51
END

IF ~~ THEN BEGIN 11 // from: 9.0 7.1 5.1 4.1
  SAY #2761 /* ~I shall survive by taking the wise path. Go ahead and forge the trail. I will follow your path once I have rested a bit.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 12 // from: 13.2 7.2 4.2
  SAY #2762 /* ~I shall be happy to lend my blade to your cause. There are two things that I have discovered about this place that may help us escape.~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 13 // from:
  SAY #2763 /* ~You have changed your mind? Shall we draw our blades with a common purpose?~ */
  IF ~~ THEN REPLY #2764 /* ~I would welcome another companion, but I have a few questions first.~ */ GOTO 9
  IF ~~ THEN REPLY #2765 /* ~I do not think that it would be wise. I'll be better off navigating this place without you.~ */ GOTO 43
  IF ~~ THEN REPLY #2753 /* ~We shall! Welcome to my party!~ */ GOTO 12
END

IF WEIGHT #1 /* Triggers after states #: 21 even though they appear after this state */
~  Global("MetYoshimo","GLOBAL",1)
~ THEN BEGIN 14 // from:
  SAY #2766 /* ~Ah, my desperate, imprisoned friends! You are still alive and enjoying Athkatla's bounty, I see.~ [YOSHIM62] */
  IF ~~ THEN REPLY #2767 /* ~It is good to know that you've escaped that place, Yoshimo.~ */ GOTO 15
  IF ~~ THEN REPLY #2768 /* ~I am no friend of yours. Leave me be.~ */ GOTO 16
  IF ~~ THEN REPLY #2769 /* ~I'm sorry, I have no time to talk with you.~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #2770 /* ~I agree. Welcome to the Copper Coronet, my home here in Athkatla. What can Yoshimo offer you? Information? Contacts? Equipment? Perhaps you would like me to join you?~ */
  IF ~~ THEN REPLY #2771 /* ~Information. Have you heard any rumors?~ */ GOTO 18
  IF ~~ THEN REPLY #2772 /* ~Where might I get equipment for a reasonable price?~ */ GOTO 19
  IF ~~ THEN REPLY #2773 /* ~You read my mind, it seems. Come, join my party.~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 21.1 14.1
  SAY #2775 /* ~There is no need to hurt Yoshimo's delicate feelings. You have dishonored me before these drunkards, thieves, and gamblers. I may never live this down.~ */
  IF ~~ THEN DO ~SetGlobal("DishonorYoshimo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 19.2 18.2 14.2
  SAY #2776 /* ~Come back and see me when you have more time.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 22.0 19.0 15.0
  SAY #2777 /* ~I know of nothing specific here. I would talk to others in this place... adventure always finds its way here. The docks is also an interesting place to find work.~ */
  IF ~~ THEN REPLY #2780 /* ~Interesting. Where might I get equipment for a reasonable price?~ */ GOTO 19
  IF ~~ THEN REPLY #2781 /* ~I would like you to join my party.~ */ GOTO 20
  IF ~~ THEN REPLY #2782 /* ~That is all that I need at present. ~ */ GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 22.1 18.0 15.1
  SAY #2783 /* ~The barkeep's name is Bernard. He will sell you high-quality equipment at a reasonable price. If you have the time, though, I would suggest the Adventure Mart in the promenade.~ */
  IF ~~ THEN REPLY #2784 /* ~Excellent. What rumors have you heard?~ */ GOTO 18
  IF ~~ THEN REPLY #2785 /* ~I would like you to join my party.~ */ GOTO 20
  IF ~~ THEN REPLY #2786 /* ~That is all that I need at present. ~ */ GOTO 17
END

IF ~~ THEN BEGIN 20 // from: 22.2 19.1 18.1 15.2
  SAY #2788 /* ~I would be honored to wield my sword for you.~ */
  IF ~~ THEN DO ~SetGlobalTimer("YoshimoTalksPC","GLOBAL",FIVE_DAYS)
JoinParty()
~ EXIT
END

IF WEIGHT #0 ~  Global("DishonorYoshimo","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #2789 /* ~Oh, taker of my honor, do not return to torment me further. Unless you have come to take back your cruel words, I ask you to leave now.~ [YOSHIM61] */
  IF ~~ THEN REPLY #2790 /* ~I have returned to apologize.~ */ GOTO 44
  IF ~~ THEN REPLY #2791 /* ~I will leave.~ */ GOTO 16
END

IF ~~ THEN BEGIN 22 // from: 44.0
  SAY #2792 /* ~Welcome to the Copper Coronet, my home here in Athkatla. What can Yoshimo offer you? Information? Contacts? Equipment? Perhaps you would like me to join you?~ */
  IF ~~ THEN REPLY #2793 /* ~Information. Have you heard any rumors?~ */ GOTO 18
  IF ~~ THEN REPLY #2794 /* ~Where might I get equipment for a reasonable price?~ */ GOTO 19
  IF ~~ THEN REPLY #2795 /* ~Join me, join me, by all means. I could use the help, to be honest.~ */ GOTO 20
END

IF ~~ THEN BEGIN 23 // from:
  SAY #4292 /* ~<CHARNAME>, it is good to see you again. ~ */
  IF ~~ THEN REPLY #4294 /* ~What happened to you, Yoshimo? You look injured. Did you kill the nymph to escape?~ */ GOTO 24
  IF ~~ THEN REPLY #4297 /* ~How did you escape the nymph? It was my impression that you didn't wish leave her side...~ */ GOTO 25
  IF ~~ THEN REPLY #4299 /* ~I do not wish to speak with you, Yoshimo. ~ */ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #4300 /* ~NO! I did not kill her! ~ */
  IF ~~ THEN REPLY #4301 /* ~Stay calm, old friend. It was merely a question.~ */ GOTO 27
  IF ~~ THEN REPLY #4306 /* ~How were you wounded if not in a fight?~ */ GOTO 28
  IF ~~ THEN REPLY #4308 /* ~I do not believe you.~ */ GOTO 29
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #4310 /* ~She, uh, released me from bondage. I am a free man again and ready to rejoin your party.~ */
  IF ~~ THEN REPLY #4322 /* ~I would be happy to have you join me.~ */ GOTO 30
  IF ~~ THEN REPLY #4324 /* ~How were you wounded?~ */ GOTO 28
  IF ~~ THEN REPLY #4328 /* ~I do not believe you.~ */ GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY #4343 /* ~Please, <CHARNAME>, do not be angry with me. The nymph enchanted me, but she has since freed me. I am a free man again and ready to rejoin your party.~ */
  IF ~~ THEN REPLY #4345 /* ~I would be happy to have you join me.~ */ GOTO 30
  IF ~~ THEN REPLY #4347 /* ~How were you wounded?~ */ GOTO 28
  IF ~~ THEN REPLY #4348 /* ~I do not believe you.~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #4349 /* ~I did not hurt the nymph! She released me from the fairy circle. I am a free man again and ready to join your party.~ */
  IF ~~ THEN REPLY #4351 /* ~I would be happy to have you join me.~ */ GOTO 30
  IF ~~ THEN REPLY #4353 /* ~How were you wounded?~ */ GOTO 28
  IF ~~ THEN REPLY #4357 /* ~I do not believe you.~ */ GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 29.1 27.1 26.1 25.1 24.1
  SAY #4358 /* ~After the nymph released me, I ran to catch up with you and had a little run-in with a worg. The worg wounded me.~ */
  IF ~~ THEN REPLY #4359 /* ~You've found us now. Would you like to join my party again?~ */ GOTO 30
  IF ~~ THEN REPLY #4360 /* ~I do not believe you.~ */ GOTO 29
  IF ~~ THEN REPLY #4361 /* ~I don't have a place in my party for you. I may have one at a later time.~ */ GOTO 31
END

IF ~~ THEN BEGIN 29 // from: 28.1 27.2 26.2 25.2 24.2
  SAY #4362 /* ~It is the truth! I would not harm that innocent nymph! She released me from the fairy circle so that I could rejoin my companions. You must believe me!~ */
  IF ~~ THEN REPLY #4363 /* ~I would be happy to have you join me.~ */ GOTO 30
  IF ~~ THEN REPLY #4364 /* ~How were you wounded?~ */ GOTO 28
  IF ~~ THEN REPLY #4365 /* ~I think you killed the nymph to escape. I do not know why you would do that, but I am certain that you did.~ */ GOTO 45
END

IF ~~ THEN BEGIN 30 // from: 29.0 28.0 27.0 26.0 25.0
  SAY #4366 /* ~I am pleased to travel with you again.~ */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.2
  SAY #4367 /* ~I am very sorry to hear that. You shall find me in Athkatla should you need me. I will be staying at the Copper Coronet. Travel safely, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetInterrupt(FALSE)
DialogueInterrupt(FALSE)
MoveToPointNoInterrupt([426.2909])
DialogueInterrupt(TRUE)
SetInterrupt(TRUE)
MoveGlobal("AR0406",Myself,[1368.1922])
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 45.0
  SAY #4368 /* ~When you have thought about this and realized your error, you will find me at the Copper Coronet in Athkatla. I will now take my leave of you.~ */
  IF ~~ THEN DO ~SetInterrupt(FALSE)
DialogueInterrupt(FALSE)
MoveToPointNoInterrupt([426.2909])
DialogueInterrupt(TRUE)
SetInterrupt(TRUE)
MoveGlobal("AR0406",Myself,[1368.1922])
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 46.0 38.0
  SAY #14191 /* ~The wands are locked onto the pedestals, and you would do well to search out the keys and take down the wands before walking through the hall. Again I say, farewell!~ */
  IF ~~ THEN DO ~SetInterrupt(FALSE)
DialogueInterrupt(FALSE)
MoveToPointNoInterrupt([426.2909])
DialogueInterrupt(TRUE)
SetInterrupt(TRUE)
MoveGlobal("AR0406",Myself,[1368.1922])
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 48.0
  SAY #18889 /* ~These little beasties keep coming in through the portals. Perhaps if the portals are destroyed, one could defeat the beasts that have already come through.~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 49.0
  SAY #18900 /* ~These little beasties keep coming in through the portals. Perhaps if the portals are destroyed, one could defeat the beasts that have already come through.~ */
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 36 // from: 50.0
  SAY #18902 /* ~I have noticed that each wand is locked into the pedestal and could be removed if one had the proper key. I know not where these keys are. Let us begin!~ */
  IF ~~ THEN DO ~SetGlobalTimer("YoshimoTalksPC","GLOBAL",FIVE_DAYS)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 51.0
  SAY #2740 /* ~These little beasties keep coming in through the portals. Perhaps if the portals are destroyed, one could defeat the beasts that have already come through.~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 38 // from: 34.0
  SAY #20021 /* ~Shortly beyond that chamber, there is a hallway that contains several wands mounted in pedestals. They blast all that walk before them.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 39 // from: 47.0 9.1 6.1 5.0 2.2 1.2
  SAY #20022 /* ~It is actually quite uh... embarrassing. My profession does not leave itself open to those who are not wary, yet somehow I was caught unaware.~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #20023 /* ~I came to Athkatla years ago from Kara-Tur to seek my fortune. At some point, I went to bed in my room at the Copper Coronet, and I awoke in a strange room with a very sore head.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 41 // from: 47.2
  SAY #20024 /* ~Maybe you should try to face the perils of this place alone!~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 42 // from: 6.0 3.0
  SAY #20025 /* ~I am unsure. I may have been drugged when I was brought here. I may have been unconscious... either way, I do not know how long.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 43 // from: 13.1
  SAY #20030 /* ~If that is how you wish it to be, then go ahead and forge the trail. I will follow your path once I have rested a bit.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 44 // from: 21.0
  SAY #20055 /* ~I see respect in the blurry eyes of the drunkards. I accept.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 45 // from: 29.2
  SAY #20058 /* ~You do not know what happened! I must leave now before my anger rises any more.~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 46 // from: 37.0
  SAY #20067 /* ~One more thing... you will find a wide hall before too long that contains several wands mounted on pedestals. If you walk before these wands, you may be killed.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 47 // from: 1.0 0.1
  SAY #20072 /* ~I am not sure how I came to be here... like you, I suspect. I have been trying to find my way out, but I was wounded in my attempt to do so.~ */
  IF ~~ THEN REPLY #25300 /* ~Tell me, how did you come to be trapped here? ~ */ GOTO 39
  IF ~~ THEN REPLY #25302 /* ~Do you know a way out of this place?~ */ GOTO 4
  IF ~~ THEN REPLY #25303 /* ~I care little for a warrior who cannot take care of himself in battle.~ */ GOTO 41
END

IF ~~ THEN BEGIN 48 // from:
  SAY #20074 /* ~In the next chamber beyond the one in which we stand, four portals lie. Each of these portals releases a little cackling fiend which tries to kill me.~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 49 // from: 12.0
  SAY #20082 /* ~In the next chamber beyond the one in which we stand, four portals lie. Each of these portals releases a little cackling fiend which tries to kill me.~ */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 50 // from: 35.0
  SAY #20090 /* ~Shortly beyond that chamber, there is a hallway that contains several wands mounted in pedestals. They blast all that walk before them.~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 51 // from: 10.0
  SAY #20103 /* ~In the next chamber, there are four portals. Each of these portals releases little cackling fiends which try to kill me.~ */
  IF ~~ THEN GOTO 37
END
