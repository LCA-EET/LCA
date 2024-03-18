// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\TENYA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\TENYA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA102~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 29 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Stop! You are trespassing on my land-home! None come this way armed as you are. It was those horrible fishermen that hired you, wasn't it? Speak!~ #1146 */
  IF ~~ THEN REPLY @2 /* ~I know not of whom you speak, child.~ #1821 */ GOTO 1
  IF ~  !Global("HelpJebadoh","GLOBAL",0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @3 /* ~Uh, they did send me, but I wish only to know what is going on.~ #1822 */ GOTO 2
  IF ~  !Global("HelpJebadoh","GLOBAL",0)
~ THEN REPLY @4 /* ~It's true! They sent me to end your villainous deeds!~ #1823 */ GOTO 2
  IF ~  !Global("HelpJebadoh","GLOBAL",0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @5 /* ~Um, they did send me, but I wish only to know what is going on.~ #1824 */ GOTO 14
  IF ~  GlobalLT("bd_killed_farmers","GLOBAL",3)
PartyHasItem("MISC53")
~ THEN REPLY @6 /* ~Here is the bowl that was taken from your mother. Perhaps now she will rest.~ #1836 */ GOTO 11
  IF ~  Dead("Jebadoh")
Dead("Telman")
Dead("Sonner")
~ THEN GOTO 10
END

IF ~~ THEN BEGIN 1 // from: 15.3 0.0
  SAY @7 /* ~I've no quarrel with thee! Be sure this remains so and leave.~ #1147 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 15.1 15.0 0.2 0.1
  SAY @8 /* ~As cowardly as they are treacherous, hiring others to do what they could not! Tonight I shall put an end to all of this! The seas cry for vengeance!~ #1148 */
  IF ~~ THEN DO ~GiveItemCreate("minhp1","TENYA",0,0,0)
ActionOverride("TENYA",FillSlot(SLOT_AMULET))
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9 /* ~Liar! None would dare attack me of their own accord! You shall share the fate of your employers as the sea takes back what it's due!~ #1149 */
  IF ~~ THEN DO ~GiveItemCreate("minhp1","TENYA",0,0,0)
ActionOverride("TENYA",FillSlot(SLOT_AMULET))
Enemy()
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10 /* ~The power of Umberlee flows in my blood! I am the avenging Wave of Fury, the anger of the storm that beats the shore!~ #1150 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 29 even though they appear after this state */
~  Global("TenyaHit","GLOBAL",1)
~ THEN BEGIN 5 // from:
  SAY @11 /* ~Why do you do this? Don't you know what they've done? Sonner and the others, THEY are the EVIL ones! They killed my mother, and now you help them?! She only did her duty, collecting the offerings from those that would use the sea. They stole her elemental summoning bowl and tortured her for the words that make it work. Now they all misuse a gift from Umberlee to pillage the seas, and my mother's spirit can't rest until it is returned. I have more power than mother had. Umberlee gave me her anger, but I can't find the bowl. All I can do is hurt them till they give it back or die, but I'm so tired. I don't have mother's will, and the goddess is so demanding. Help me, please.~ #1152 */
  IF ~~ THEN REPLY @12 /* ~Shhh, child. I shall help as best I can.~ #1831 */ DO ~SetGlobal("TenyaHit","GLOBAL",2)
ChangeEnemyAlly(Myself,NEUTRAL)
ClearAllActions()
SetGlobal("TenyaStory","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY @21 /* ~I don't trust you OR Sonner's bunch.~ #1832 */ DO ~EraseJournalEntry(@14)
EraseJournalEntry(@15)
EraseJournalEntry(@16)
EraseJournalEntry(@17)
EraseJournalEntry(@18)
EraseJournalEntry(@19)
EraseJournalEntry(@13)
EraseJournalEntry(@20)
SetGlobal("TenyaHit","GLOBAL",2)
ChangeEnemyAlly(Myself,NEUTRAL)
ClearAllActions()
SetGlobal("TenyaStory","GLOBAL",1)
~ SOLVED_JOURNAL @13 /* ~The Fishermen and the Priestess
The "priestess" of Umberlee is no more than a child. She claims the fishermen killed her mother. I do not trust either side in this matter.~ #27445 */ GOTO 13
  IF ~~ THEN REPLY @22 /* ~You would say anything to save yourself. I'll not believe it!~ #1833 */ DO ~SetGlobal("TenyaHit","GLOBAL",2)
SetGlobal("TenyaStory","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 15.2 5.2
  SAY @23 /* ~Then you had best kill me now. All who malign Umberlee must be punished, and she will not let me stop!~ #1153 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY @24 /* ~Oh, thank you! The Sea Queen may yet be satisfied with the return of the bowl, but one way or another Sonner's group must no longer profit at her expense. It is probably being hidden in a shrine to another god. I don't know where the shrine is and couldn't go near even if I did, but Sonner may tell you... if you ask him with a blade. Go now, for Umberlee is seldom patient, and you are not yet on her good side.~ #1154 */
  IF ~~ THEN DO ~SetGlobal("HelpTenya","GLOBAL",1)
~ UNSOLVED_JOURNAL @19 /* ~The Fishermen and the Priestess
The "priestess" I was sent to kill is no more than a child of perhaps twelve years. She says the fishermen who hired me killed her mother. I shall go confront them on her behalf.~ #27444 */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 29 even though they appear after this state */
~  Global("HelpTenya","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY @25 /* ~You return. I trust you bear good news?~ #1155 */
  IF ~  Dead("Jebadoh")
Dead("Telman")
Dead("Sonner")
~ THEN REPLY @26 /* ~They are all dead, and will trouble you no more. Does this satisfy your need for vengeance?~ #1835 */ GOTO 10
  IF ~  GlobalLT("bd_killed_farmers","GLOBAL",3)
PartyHasItem("MISC53")
~ THEN REPLY @6 /* ~Here is the bowl that was taken from your mother. Perhaps now she will rest.~ #1836 */ GOTO 11
  IF ~~ THEN REPLY @27 /* ~I have not yet retrieved the bowl or dealt with Sonner.~ #1837 */ GOTO 9
  IF ~~ THEN REPLY @28 /* ~I have returned to finish what I started. Your evil ways must end!~ #1838 */ GOTO 12
  IF ~~ THEN REPLY @29 /* ~I'll have nothing more to do with any of you! I will be no one's tool.~ #1839 */ GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 8.2
  SAY @30 /* ~The Bitch Queen is not called so because of her patient nature. Quicken your step.~ #1156 */
  IF ~~ THEN UNSOLVED_JOURNAL @20 /* ~The Fishermen and the Priestess
I returned to Tenya without having carried out her wishes. She no longer seems quite the meek child. I feel it's best not to keep her waiting.~ #27446 */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 0.5
  SAY @31 /* ~I have no further need of vengeance. Umberlee is mother now, and she is well pleased. The blood spilled today will remind all of her mastery of the waters. Hopefully Talos will tire of these little games. You have been a most useful tool, and the Sea Queen shall reward you... in time.~ #1157 */
  IF ~~ THEN DO ~SetGlobal("HelpTenya","GLOBAL",2)
TakePartyItem("MISC53")
AddexperienceParty(1000)
SetGlobal("TalkedToTenya","GLOBAL",1)
ForceSpell(Myself,DRYAD_TELEPORT)
SetGlobal("HelpJebadoh","GLOBAL",3)
EraseJournalEntry(@14)
EraseJournalEntry(@15)
EraseJournalEntry(@16)
EraseJournalEntry(@17)
EraseJournalEntry(@18)
EraseJournalEntry(@19)
EraseJournalEntry(@13)
EraseJournalEntry(@20)
~ SOLVED_JOURNAL @32 /* ~The Fishermen and the Priestess
I have been promised a future reward for my role in vanquishing the fishermen aligned with Talos. Strange, though... I do not feel as though I have helped a child, so much as I have been the pawn of a spiteful god. Deities are not to be trifled with... they trifle back.~ #27471 */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 16.1 8.1 0.4
  SAY @33 /* ~Umberlee is mother now, and she is well pleased. She will deal with Sonner's group in time, and Talos will no doubt abandon them for their failure. If they are wise they will never set sail again, for the sea will take their worthless lives. I have no reward for you, but the Sea Queen remembers those that serve her well. You will be paid... in time.~ #1158 */
  IF ~~ THEN DO ~SetGlobal("HelpTenya","GLOBAL",2)
SetGlobal("TalkedToTenya","GLOBAL",1)
TakePartyItem("MISC53")
AddexperienceParty(2500)
SetGlobal("HelpJebadoh","GLOBAL",3)
EraseJournalEntry(@14)
EraseJournalEntry(@15)
EraseJournalEntry(@16)
EraseJournalEntry(@17)
EraseJournalEntry(@18)
EraseJournalEntry(@19)
EraseJournalEntry(@13)
EraseJournalEntry(@20)
ForceSpell(Myself,DRYAD_TELEPORT)
~ SOLVED_JOURNAL @32 /* ~The Fishermen and the Priestess
I have been promised a future reward for my role in vanquishing the fishermen aligned with Talos. Strange, though... I do not feel as though I have helped a child, so much as I have been the pawn of a spiteful god. Deities are not to be trifled with... they trifle back.~ #27471 */ EXIT
  IF ~  Global("bd_killed_farmers","GLOBAL",1)
~ THEN DO ~SetGlobal("HelpTenya","GLOBAL",2)
SetGlobal("TalkedToTenya","GLOBAL",1)
TakePartyItem("MISC53")
AddexperienceParty(2000)
SetGlobal("HelpJebadoh","GLOBAL",3)
EraseJournalEntry(@14)
EraseJournalEntry(@15)
EraseJournalEntry(@16)
EraseJournalEntry(@17)
EraseJournalEntry(@18)
EraseJournalEntry(@19)
EraseJournalEntry(@13)
EraseJournalEntry(@20)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("bd_killed_farmers","GLOBAL",2)
~ THEN DO ~SetGlobal("HelpTenya","GLOBAL",2)
SetGlobal("TalkedToTenya","GLOBAL",1)
TakePartyItem("MISC53")
AddexperienceParty(1500)
SetGlobal("HelpJebadoh","GLOBAL",3)
EraseJournalEntry(@14)
EraseJournalEntry(@15)
EraseJournalEntry(@16)
EraseJournalEntry(@17)
EraseJournalEntry(@18)
EraseJournalEntry(@19)
EraseJournalEntry(@13)
EraseJournalEntry(@20)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY @34 /* ~So be it! It's your own grave you dig, for Umberlee shall not be denied!~ #1159 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.4 5.1
  SAY @35 /* ~I shall deal with them myself then. It's no longer the time for subtlety!~ #1160 */
  IF ~~ THEN DO ~SetGlobal("TalkedToTenya","GLOBAL",1)
SetGlobal("KillFishermen","GLOBAL",1)
SetGlobal("HelpJebadoh","GLOBAL",3)
EraseJournalEntry(@14)
EraseJournalEntry(@15)
EraseJournalEntry(@16)
EraseJournalEntry(@17)
EraseJournalEntry(@18)
EraseJournalEntry(@19)
EraseJournalEntry(@13)
EraseJournalEntry(@20)
ForceSpell(Myself,DRYAD_TELEPORT)
~ SOLVED_JOURNAL @36 /* ~The Fishermen and the Priestess
I have refused to aid Tenya in her fanatical search for vengeance, though it appears she no longer wishes my help. I fear for the safety of all concerned, but I trust none of them.~ #27472 */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.3
  SAY @37 /* ~What goes on is none of your business! Leave now, lest you earn the same fate that they have!~ #1825 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 29 even though they appear after this state */
~  Global("HelpTenya","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY @38 /* ~You return?! I warn you once again to leave my home. If you do not, I must assume you are allied with my enemies!~ #1826 */
  IF ~  !Global("HelpJebadoh","GLOBAL",0)
Global("TenyaStory","GLOBAL",0)
~ THEN REPLY @39 /* ~They did send me, but I wish only to know what is going on.~ #1828 */ GOTO 2
  IF ~  !Global("HelpJebadoh","GLOBAL",0)
Global("TenyaStory","GLOBAL",0)
~ THEN REPLY @4 /* ~It's true! They sent me to end your villainous deeds!~ #1829 */ GOTO 2
  IF ~  !Global("HelpJebadoh","GLOBAL",0)
!Global("TenyaStory","GLOBAL",0)
~ THEN REPLY @4 /* ~It's true! They sent me to end your villainous deeds!~ #1829 */ GOTO 6
  IF ~~ THEN REPLY @40 /* ~I wish no enmity between us, and will not disturb you further.~ #1830 */ GOTO 1
END

IF ~~ THEN BEGIN 16 // from:
  SAY @41 /* ~Then stand you well outside the battle and leave me be! It is but money that makes this fight yours! A petty reason, by any account! Begone!~ #1834 */
  IF ~~ THEN EXIT
  IF ~  PartyHasItem("MISC53")
~ THEN REPLY @6 /* ~Here is the bowl that was taken from your mother. Perhaps now she will rest.~ #1836 */ GOTO 11
END

IF WEIGHT #5 /* Triggers after states #: 29 even though they appear after this state */
~  False()
~ THEN BEGIN 17 // from:
  SAY @42 /* ~Well. I should say the mother and I expected to see you again at some point, though it was certainly not to be so soon. I suppose it's to collect some sort of payment for your actions in Beregost, hm?~ #1840 */
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @43 /* ~I wish nothing of you, save the body of the fool that tried to break into your hallowed halls. I imagine the return of such an infidel is ample return for my services.~ #1846 */ GOTO 19
  IF ~  Dead("Jebadoh")
Dead("Sonner")
Dead("Telman")
~ THEN REPLY @44 /* ~I demand the payment I am due for helping your cause! You and your Umberlee would not have prevailed without my help, and 'twas said you would repay me in time!~ #1847 */ GOTO 20
  IF ~~ THEN REPLY @45 /* ~Please, I beg of you. I have but one wish and then I will go. There is a child who came here and was killed. I simply hope to obtain his body. Then I shall trouble you no more.~ #1848 */ GOTO 22
  IF ~  !Dead("Jebadoh")
!Dead("Sonner")
!Dead("Telman")
~ THEN REPLY @44 /* ~I demand the payment I am due for helping your cause! You and your Umberlee would not have prevailed without my help, and 'twas said you would repay me in time!~ #1849 */ GOTO 20
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @43 /* ~I wish nothing of you, save the body of the fool that tried to break into your hallowed halls. I imagine the return of such an infidel is ample return for my services.~ #1850 */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from:
  SAY @46 /* ~To what dishonor do we owe your violating our temple? Is it not you who served Umberlee in Beregost? Such a promising introduction to be followed by your breaking onto our sacred ground. State your purpose here!~ #1841 */
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @43 /* ~I wish nothing of you, save the body of the fool that tried to break into your hallowed halls. I imagine the return of such an infidel is ample return for my services.~ #1851 */ GOTO 19
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Dead("Jebadoh")
Dead("Sonner")
Dead("Telman")
~ THEN REPLY @44 /* ~I demand the payment I am due for helping your cause! You and your Umberlee would not have prevailed without my help, and 'twas said you would repay me in time!~ #1852 */ GOTO 21
  IF ~~ THEN REPLY @45 /* ~Please, I beg of you. I have but one wish and then I will go. There is a child who came here and was killed. I simply hope to obtain his body. Then I shall trouble you no more.~ #1853 */ GOTO 22
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @43 /* ~I wish nothing of you, save the body of the fool that tried to break into your hallowed halls. I imagine the return of such an infidel is ample return for my services.~ #1854 */ GOTO 20
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @44 /* ~I demand the payment I am due for helping your cause! You and your Umberlee would not have prevailed without my help, and 'twas said you would repay me in time!~ #1855 */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0 17.4 17.0
  SAY @47 /* ~You do not ask for much, do you? Very well, take the child and go. I warrant you will no doubt resurrect him, but the lesson is learned. Death changes one, especially one so young. I know of this like no other. GO! And never darken these halls again... unless summoned!~ #1842 */
  IF ~~ THEN DO ~SetGlobal("BOYBODY","GLOBAL",1)
GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
~ JOURNAL @48 /* ~Tremain's Son
I have retrieved the child's body from the Umberlee temple. It was a stroke of luck that Tenya was there, though I feel no better about being used before.~ #1827 */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.4 18.3 17.3 17.1
  SAY @49 /* ~Ha! Hahahaha. It's an interesting, and foolishly LARGE request from someone in your position. Umberlee neither required, nor sought your help. You were simply a toy for her amusement. Perhaps you can be such again? Since you did some service, needed or not, you have a small chance to leave. Here is the body you came for. If you can get to the front gate, you may leave. If you do not make it, you will join him. Even if you live, I trust I shall never see you again. Understand? Waveservants! You have heard the challenge! If they escape... you WILL die!~ #1843 */
  IF ~~ THEN DO ~SetGlobal("BOYBODY","GLOBAL",1)
GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
EscapeArea()
~ JOURNAL @50 /* ~Tremain's Son
It is Tenya who rules at the temple of Umberlee! Our past association has not softened her demeanor, and it does make me wonder how they would treat a stranger! At least I received the child's body.~ #6332 */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1
  SAY @51 /* ~I suppose such brash and disrespectful behavior is to be expected from such a bloodthirsty lot. Very well, you may have the body you came for. No doubt you will raise him, but he will have learned. By this time Umberlee herself may have had a chat with him. Oh, one other thing... NEVER come here again unless summoned.~ #1844 */
  IF ~~ THEN DO ~SetGlobal("BOYBODY","GLOBAL",1)
GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
~ JOURNAL @48 /* ~Tremain's Son
I have retrieved the child's body from the Umberlee temple. It was a stroke of luck that Tenya was there, though I feel no better about being used before.~ #1827 */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.2 17.2
  SAY @52 /* ~Pathetic. Whether true or not, it simply would not do for people to think Umberlee requires the assistance of such sniveling worms as yourselves. You seek the child? Here is the body. It is a simple game. You get as far as the front gate, you are worthy to have served the Water Queen and may take what you came for. If you do not get there, well, you shall be beyond worrying about it. Oh, and if you think our waveservants may just let you pass? ATTENTION! The Sea Queen demands a test! If these intruders live... the ranks will be CLEANSED!~ #1845 */
  IF ~~ THEN DO ~GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
Shout(1)
EscapeArea()
~ JOURNAL @50 /* ~Tremain's Son
It is Tenya who rules at the temple of Umberlee! Our past association has not softened her demeanor, and it does make me wonder how they would treat a stranger! At least I received the child's body.~ #6332 */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 29 even though they appear after this state */
~  False()
~ THEN BEGIN 23 // from:
  SAY @53 /* ~You! Is it nerve that brings thee here?! No, more likely stupidity. Was it not you who turned thy back on Umberlee's cause in Beregost? You have changed somewhat but it is you. I see with the mother's eyes! Your inaction was of little consequence, for the mother and I dealt well with all of them. Now you will join them!~ #1856 */
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @54 /* ~I meant no ill on you or your temple! Please, I beg of you! It is a mission of mercy I am on! I seek the body of a child killed here. The child's parent does miss him so!~ #1857 */ GOTO 24
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY @55 /* ~It was not my fight. Far be it from me to get in the path of your righteous fury. My purpose here now hath no more inconvenience than when we last met. You have the body of a child here. Your justice has been dealt, and now I have come to take him home.~ #1858 */ GOTO 26
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @54 /* ~I meant no ill on you or your temple! Please, I beg of you! It is a mission of mercy I am on! I seek the body of a child killed here. The child's parent does miss him so!~ #6333 */ GOTO 25
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY @55 /* ~It was not my fight. Far be it from me to get in the path of your righteous fury. My purpose here now hath no more inconvenience than when we last met. You have the body of a child here. Your justice has been dealt, and now I have come to take him home.~ #6334 */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @56 /* ~Cease your blubbering. It is an insult to show such pathos in the sight of Umberlee! Perhaps we should make ye prove your mettle, that we might forget this sickening display? The body you seek shall be at the front gate. Get there and it is yours to do with as you see fit. Of course my fellow waveservants will do their utmost to hinder your progress. It is sure to be an amusing diversion for the Sea Queen.~ #1859 */
  IF ~~ THEN DO ~Shout(1)
EscapeArea()
~ JOURNAL @57 /* ~Tremain's Son
It is the child priestess Tenya who appears to reign in the Temple of Umberlee. While I received the child's body, it was not without bloodshed. She turned on me, and I was forced to kill her.~ #6355 */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2
  SAY @58 /* ~Do they now? It is not unlike how a child would miss its parent I imagine... Take him and begone. Do not expect such charity in the future, and do not return to this place unless summoned!~ #1860 */
  IF ~~ THEN DO ~GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
~ JOURNAL @59 /* ~Tremain's Son
It is the child priestess Tenya who appears to reign in the Temple of Umberlee. While I received the child's body, our fleeting acquaintance did not benefit me, and I do not think I should return.~ #6354 */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY @60 /* ~Some sage words indeed. You know your place in things well. Appropriate behavior should not go unrewarded. Here be the body you seek. No doubt your intention is to resurrect the child? No matter. The lesson will have been learned. Do not return here unless summoned. You shall find the reception more chilling.~ #1861 */
  IF ~~ THEN DO ~GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
~ JOURNAL @59 /* ~Tremain's Son
It is the child priestess Tenya who appears to reign in the Temple of Umberlee. While I received the child's body, our fleeting acquaintance did not benefit me, and I do not think I should return.~ #6354 */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.3
  SAY @61 /* ~Do you not realize where you are? This is my very lair! This is the seat of Umberlee! You do not make demands here! Waveservants, dispose of this flotsam! I cannot stand the sight of them!~ #1862 */
  IF ~~ THEN DO ~Shout(1)
EscapeArea()
~ JOURNAL @57 /* ~Tremain's Son
It is the child priestess Tenya who appears to reign in the Temple of Umberlee. While I received the child's body, it was not without bloodshed. She turned on me, and I was forced to kill her.~ #6355 */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 29 even though they appear after this state */
~  False()
~ THEN BEGIN 28 // from:
  SAY @62 /* ~It has been decided you are to be safe here as need be. Umberlee hath no love for thee or thy cause, but hath an interest anyway. The inevitable chaos and turmoil that would follow a godly resurrection fall a touch too close to pleasing godly brethren like Talos. Anything that would amuse him is to be... discouraged. Come and go as you wish, but do not advertise the fact that you can.~ #6340 */
  IF ~~ THEN JOURNAL @63 /* ~The Temple of Umberlee has offered me sanctuary if required. I do not know which is more unnerving, that they have made the offer or that I might need to accept it.~ #6356 */ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 29 // from:
  SAY @64 /* ~New friends of mine! You may call me Tenya, and know that I am a priestess of Umberlee. For many weeks now I have searched for the relic that was stolen from my mother. The fishermen Telman, Jebadoh, and Sonner stole it when they became jealous of her power. I will soon have my revenge against these petty fishermen.~ #6925 */
  IF ~~ THEN EXIT
END
