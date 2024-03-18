// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RAMAZI.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RAMAZI.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA212~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Greetings to you and yours, my friend. Might I have your ear a moment?~ #2636 */
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @2 /* ~Certainly, good sir. What is your concern?~ #2637 */ GOTO 3
  IF ~~ THEN REPLY @3 /* ~I'm in no mood for idle chatter. Leave me be.~ #2638 */ GOTO 1
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @4 /* ~Say your piece and move along. My time is valuable.~ #2639 */ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @2 /* ~Certainly, good sir. What is your concern?~ #2679 */ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @2 /* ~Certainly, good sir. What is your concern?~ #2680 */ GOTO 5
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @4 /* ~Say your piece and move along. My time is valuable.~ #2681 */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 8.3 7.3 6.3 5.0 4.0 3.0 2.0 0.1
  SAY @5 /* ~As you wish. I'll trouble you no more.~ #2640 */
  IF ~~ THEN DO ~SetGlobal("HelpRamazith","GLOBAL",4)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 21 even though they appear after this state */
~  Global("HelpRamazith","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY @6 /* ~Changed your mind, have you? The offer be good till I find someone.~ #2641 */
  IF ~~ THEN REPLY @7 /* ~My position has not changed. It's a risk I do not wish to take.~ #2643 */ GOTO 1
  IF ~~ THEN REPLY @8 /* ~What is it I will be expected to do?~ #2646 */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY @9 /* ~I've a been watching you, but rest assured it no be in the bad evil eye way. You and your compatriots be so obviously... Well, I just say you no look like farmers or merchants. I've a service needing completion, and it require that which I think you have. I reward well, but the mission is dangerous and beyond what the law would technically allow. Interested, yes?~ #2642 */
  IF ~~ THEN REPLY @10 /* ~I've no desire to sully my good name in this town by crossing the law! Take your offer and leave!~ #2644 */ GOTO 1
  IF ~~ THEN REPLY @8 /* ~What is it I will be expected to do?~ #2645 */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.3 0.2
  SAY @11 /* ~You are mercenary, no? I can tell because you are battle-ugly with scars, yes? I have need of a stealthy, well-equipped group, to perform an act the guard would frown upon. I trust you are available and willing? I pay better than common blade-wage, but you need be discreet. I go on, yes?~ #2649 */
  IF ~~ THEN REPLY @10 /* ~I've no desire to sully my good name in this town by crossing the law! Take your offer and leave!~ #2666 */ GOTO 1
  IF ~~ THEN REPLY @8 /* ~What is it I will be expected to do?~ #2667 */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 0.5 0.4
  SAY @12 /* ~I would perhaps look to a mercenary guild for more professional help, but my time is limited, and you will have to do. I pay more than you're worth, so you listen well, no?~ #2650 */
  IF ~~ THEN REPLY @10 /* ~I've no desire to sully my good name in this town by crossing the law! Take your offer and leave!~ #2669 */ GOTO 1
  IF ~~ THEN REPLY @8 /* ~What is it I will be expected to do?~ #2670 */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1 4.1 3.1 2.1
  SAY @13 /* ~My proposition is thus: I would have you enter into the home of a colleague of mine and effect the release of a creature he has imprisoned there. Ragefast be his name, and he has in his possession one of the most beautiful and useful creatures in all of Faerûn. It's a nymph he captured some time ago, and I know not what laughable plans he has for her, but I am sure she be more... productive in my care. I not so rich as to be able to offer huge gold, but as competent wizard I do have the odd magical item of worth. Perhaps an enchanted item will serve your needs, no?~ #2651 */
  IF ~~ THEN REPLY @14 /* ~Why not do this yourself? You do not seem as powerless as your plea makes you sound.~ #2647 */ GOTO 7
  IF ~~ THEN REPLY @15 /* ~Your terms are acceptable. I agree.~ #2648 */ GOTO 9
  IF ~~ THEN REPLY @16 /* ~Your offer is interesting, but I would prefer if it were larger. It's quite the risk you wish me to take.~ #2668 */ GOTO 8
  IF ~~ THEN REPLY @17 /* ~Bah! This petty larceny is beneath me! I'll have none of it!~ #2678 */ GOTO 1
END

IF ~~ THEN BEGIN 7 // from: 8.2 7.2 6.0
  SAY @18 /* ~Indeed, I be proficient in that which is magical, but so is Ragefast. None know better how to defend against a wizard than another wizard. This require stealth and guile, or quick blade with muscle behind. You have; I lack. Simple, no?~ #2653 */
  IF ~~ THEN REPLY @19 /* ~Your offer is interesting, but I would prefer if it were larger. It is quite the risk you wish me to take.~ #2652 */ GOTO 8
  IF ~~ THEN REPLY @15 /* ~Your terms are acceptable. I agree.~ #2671 */ GOTO 9
  IF ~  False()
~ THEN REPLY @14 /* ~Why not do this yourself? You do not seem as powerless as your plea makes you sound.~ #2672 */ GOTO 7
  IF ~~ THEN REPLY @17 /* ~Bah! This petty larceny is beneath me! I'll have none of it!~ #2677 */ GOTO 1
END

IF ~~ THEN BEGIN 8 // from: 8.0 7.0 6.2
  SAY @20 /* ~Would that I did have magical items strewn about the place. Were it so, I could simply sell them and pay you gold. It is not as though they are cheap to come by. As it is, you must take the offer as is or not at all. I trust you understand, no?~ #2654 */
  IF ~  False()
~ THEN REPLY @16 /* ~Your offer is interesting, but I would prefer if it were larger. It's quite the risk you wish me to take.~ #2673 */ GOTO 8
  IF ~~ THEN REPLY @15 /* ~Your terms are acceptable. I agree.~ #2674 */ GOTO 9
  IF ~~ THEN REPLY @14 /* ~Why not do this yourself? You do not seem as powerless as your plea makes you sound.~ #2675 */ GOTO 7
  IF ~~ THEN REPLY @17 /* ~Bah! This petty larceny is beneath me! I'll have none of it!~ #2676 */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 8.1 7.1 6.1
  SAY @21 /* ~Most agreeable! Already you show intelligence needed to succeed! I give you directions to Ragefast's abode, and you take it from there, yes? You will find Ragefast's home northeast of the Hall of Wonders. We meet at my home when you complete your mission. Do not tarry, for I have many plans. Let not the guard see you with the nymph. They will surely question her presence. I will expect you soon.~ #2655 */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
SetGlobal("HelpRamazith","GLOBAL",1)
SetGlobal("ramami_move_indoors","AR0200",1)
~ UNSOLVED_JOURNAL @22 /* ~The Captive Nymph
A mage named Ragefast holds a nymph prisoner, and we have agreed to liberate her for the mage Ramazith. Ragefast awaits us at his home, just northeast of the Hall of Wonders.~ #26809 */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 11 13 16 21 22 even though they appear after this state */
~  Global("HelpRamazith","GLOBAL",1)
!PartyHasItem("MISC68")
~ THEN BEGIN 10 // from:
  SAY @23 /* ~I must insist that you do not tarry in my home, but rather go find Ragefast and acquire the captured nymph. We are of understanding, yes?~ #2656 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 even though they appear after this state */
~  Global("HelpRamazith","GLOBAL",1)
OR(2)
Dead("Abela")
Global("AbelaNotExists","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY @24 /* ~I see that you have returned, yes? You need not say that you have betrayed me, for I scry and spy! Certainly you are foolish to have come here after breaking our deal! I have many spells waiting for parts of nymph, and will be a long time looking for another. An expensive delay you have cost me, and compensation be from your hide! Come get me at the top, if you dare!~ #2657 */
  IF ~~ THEN DO ~EraseJournalEntry(@25)
EraseJournalEntry(@26)
EraseJournalEntry(@27)
EraseJournalEntry(@22)
EraseJournalEntry(@26)
Enemy()
ForceSpellPoint([169.147],QUICK_TELEPORT)
EscapeAreaMove("AR0138",169,147,SSE)
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 13 16 21 22 even though they appear after this state */
~  Global("HelpRamazith","GLOBAL",0)
OR(2)
Dead("Abela")
Global("AbelaNotExists","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY @28 /* ~You! A foolish turn to have broken into my home... Ahhh, I recognize you; I've heard of your... doings regarding Ragefast and that precious nymph of his! I had many plans for that creature, and to think I was even going to ask for your assistance. Regardless, you shall pay! Come get me at the top, if you dare!~ #2658 */
  IF ~~ THEN DO ~SetGlobal("HelpRamazith","GLOBAL",5)
Enemy()
ForceSpellPoint([169.147],QUICK_TELEPORT)
EscapeAreaMove("AR0138",169,147,SSE)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 21 even though they appear after this state */
~  Global("HelpRamazith","GLOBAL",1)
PartyHasItem("MISC68")
~ THEN BEGIN 13 // from:
  SAY @29 /* ~A profitable day for both our interests! A service of immense proportions you have served me!~ #2659 */
  IF ~~ THEN DO ~SetGlobal("RagefastDead","GLOBAL",1)
SetGlobal("HelpRamazith","GLOBAL",2)
TakePartyItem("MISC68")
DestroyItem("MISC68")
CreateCreature("ABELA",[376.228],SW)
ActionOverride("Abela",Wait(1))
ActionOverride("Abela",StartDialogNoSet([PC]))
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY @30 /* ~No, child, you need not worry your pretty little head. In but a tenday, you will no longer be here, or anywhere. I would have a word with your "liberators" a moment. Wait there, please.~ #2660 */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @31 /* ~A job done well in every respect, and no finer a specimen could I have wished for. By far, she is the most elusive spell component I have ever had to seek. Her body will yield a score of human control potions, as well as at least two or three items of "command"! I am assured wealth for this season and next at the very least, and I have you to thank. You please have this item and enjoy, yes. It is a good thing you do here today. Show yourselves out, I have much work to attend to.~ #2661 */
  IF ~~ THEN DO ~SetGlobalTimer("AbelaTenDaysMove","GLOBAL",TEN_DAYS)
GiveItem("BRAC02",LastTalkedToBy)
SetGlobalTimer("Ramazith","GLOBAL",THREE_MINUTES)
SetGlobal("HelpRamazith","GLOBAL",3)
EraseJournalEntry(@25)
EraseJournalEntry(@26)
EraseJournalEntry(@27)
EraseJournalEntry(@22)
~ SOLVED_JOURNAL @32 /* ~The Captive Nymph
What's the life of one captive nymph compared to more treasure for me? Ramazith has Abela, and I have his reward.~ #27385 */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 21 even though they appear after this state */
~  !Global("HelpRamazith","GLOBAL",6)
OR(2)
Global("HelpRamazith","GLOBAL",3)
GlobalTimerExpired("Ramazith","GLOBAL")
~ THEN BEGIN 16 // from:
  SAY @33 /* ~Why have you remained in my home?! Have I not paid as we agreed? I must have solitude, so I ask you again and you go, yes?~ #2662 */
  IF ~~ THEN REPLY @34 /* ~My apologies, Ramazith. I will disturb you no further.~ #2732 */ GOTO 20
  IF ~~ THEN REPLY @35 /* ~Am I to understand that you plan to dissect this creature?~ #2733 */ GOTO 18
  IF ~~ THEN REPLY @36 /* ~Your intentions are diabolical! Release Abela at once, or face my wrath!~ #2734 */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 18.1 16.2
  SAY @37 /* ~Oh, you have named it! How cute. No longer useful you are, and I'll not suffer your pining for your pet! Intruders in my home! Deadly self-defense! Come battle me at the top, if you dare!~ #2663 */
  IF ~~ THEN DO ~SetGlobal("RamazithMove","GLOBAL",3)
Enemy()
ForceSpellPoint([169.147],QUICK_TELEPORT)
ActionOverride("Abela",DestroySelf())
EscapeAreaMove("AR0138",169,147,SSE)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @38 /* ~Her beauty is priceless in the eyes, but bottled and powdered it is gold in my coffer!~ #2664 */
  IF ~~ THEN REPLY @34 /* ~My apologies, Ramazith. I will disturb you no further.~ #2736 */ JOURNAL @39 /* ~Ramazith plans to use the nymph Abela as spell components for many of his spells.~ #6572 */ GOTO 20
  IF ~~ THEN REPLY @36 /* ~Your intentions are diabolical! Release Abela at once, or face my wrath!~ #2737 */ JOURNAL @39 /* ~Ramazith plans to use the nymph Abela as spell components for many of his spells.~ #6572 */ GOTO 17
  IF ~~ THEN REPLY @40 /* ~You must realize that this is an abomination worse than keeping her caged! Do not do this!~ #2738 */ JOURNAL @39 /* ~Ramazith plans to use the nymph Abela as spell components for many of his spells.~ #6572 */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.2
  SAY @41 /* ~She is a resource to be tapped! If you would stand before me, it is you who will be stopped! The guard will see your charred and dead bodies as bandits in my home! Come find me at the top, if you dare!~ #2665 */
  IF ~~ THEN DO ~SetGlobal("RamazithMove","GLOBAL",3)
Enemy()
ForceSpellPoint([169.147],QUICK_TELEPORT)
ActionOverride("Abela",DestroySelf())
EscapeAreaMove("AR0138",169,147,SSE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0 16.0
  SAY @42 /* ~Be sure you do not. Good eve to you.~ #2735 */
  IF ~~ THEN DO ~SetGlobalTimer("Ramazith","GLOBAL",FOUR_MINUTES)
~ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 21 // from:
  SAY @43 /* ~I'm your best friend! It's a strange feeling being friends with such as you; after all, you're far beneath me in intellect and possess very few good mannerisms. I doubt I can tell you much that you would find useful; most of my work is far beyond your limited perceptions. I'm sorry that I could not be more useful as a friend.~ #6110 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  Global("HelpRamazith","GLOBAL",6)
~ THEN BEGIN 22 // from:
  SAY @44 /* ~So close was I to tapping her resources, but she proved brittle and as a result was of no further use; so now I must look for another. Maybe... no. I have no time to waste with you right now, so could you kindly be on your way?~ #6111 */
  IF ~~ THEN DO ~Enemy()
ForceSpellPoint([169.147],QUICK_TELEPORT)
EscapeAreaMove("AR0138",169,147,SSE)
~ EXIT
END
