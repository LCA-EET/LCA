// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BRANDI.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BRANDI.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA358~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #7 /* Triggers after states #: 7 12 13 14 15 16 17 even though they appear after this state */
~  Global("TalkToBrandilar","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hold! I'm Brandilar, commander of the household guard. As the commander of security here, I must ask you a question: I've known Aldeth since he was a kid, and I don't recognize you from no place. Who are you really?~ #1084 */
  IF ~~ THEN REPLY @3 /* ~We're his childhood friends. You don't think we're lying, do you?~ #1236 */ DO ~SetGlobal("TalkToBrandilar","GLOBAL",2)
~ UNSOLVED_JOURNAL @2 /* ~Investigating the Merchants' League Estate
A man named Brandilar commands the guards of the Merchants' League Estate.~ #26823 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~If you must know, we've been hired to investigate Aldeth's partners. They seem to be trying to run the business into the ground.~ #1237 */ DO ~SetGlobal("TalkToBrandilar","GLOBAL",2)
~ UNSOLVED_JOURNAL @2 /* ~Investigating the Merchants' League Estate
A man named Brandilar commands the guards of the Merchants' League Estate.~ #26823 */ GOTO 4
END

IF WEIGHT #8 /* Triggers after states #: 7 12 13 14 15 16 17 even though they appear after this state */
~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY @5 /* ~Hold! I'm commander Brandilar, I lead the household guard. You must be the people Aldeth brought back with him, his so-called "childhood friends." That likely story might have hoodwinked some of the others, but I've known Aldeth since he was a kid, and none of you ring any bells.~ #1085 */
  IF ~~ THEN REPLY @6 /* ~That's 'cause we're all older now.~ #1238 */ UNSOLVED_JOURNAL @2 /* ~Investigating the Merchants' League Estate
A man named Brandilar commands the guards of the Merchants' League Estate.~ #26823 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~Don't you know, Aldeth has hired us on to investigate his partners? They've been acting strangely of late.~ #1239 */ UNSOLVED_JOURNAL @2 /* ~Investigating the Merchants' League Estate
A man named Brandilar commands the guards of the Merchants' League Estate.~ #26823 */ GOTO 4
END

IF WEIGHT #9 /* Triggers after states #: 7 12 13 14 15 16 17 even though they appear after this state */
~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY @8 /* ~You there! I don't care if you're the guests of Aldeth, you just make sure you don't cause any trouble while you're here. I'm commander Brandilar, leader of the household guard. If a problem arises, you better be sure I'll hear of it.~ #1086 */
  IF ~~ THEN UNSOLVED_JOURNAL @2 /* ~Investigating the Merchants' League Estate
A man named Brandilar commands the guards of the Merchants' League Estate.~ #26823 */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 0.0
  SAY @9 /* ~I don't like liars, but I'll give you another chance. Perhaps you're suspicious of me, but I've known Aldeth much longer than you have. Now who are you?~ #1087 */
  IF ~~ THEN REPLY @10 /* ~We're his long-lost brothers and sisters.~ #1240 */ GOTO 5
  IF ~~ THEN REPLY @11 /* ~Okay, you've cracked our disguise, we're actually investigators hired on to learn as much as possible about Aldeth's business partners. He seems to think that they've gone mad.~ #1241 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 1.1 0.1
  SAY @12 /* ~I'm glad you've been honest with me. To tell you the truth, I've been somewhat suspicious of my other employers as well. They haven't been themselves, and they seem to have a completely callous outlook on the future of their business. I'd almost have to say that Irlentree and Zorl aren't who they say they are, or they've had their minds taken over, or some other rot. Unfortunately, there's nothing I can do because they're my employers. I might be able to turn a blind eye if you were to investigate what they've been doing. If you can find some hard proof that exposes what's been happening, I might be able to do something about this whole mess. What do you say?~ #1088 */
  IF ~~ THEN REPLY @14 /* ~Sure, we might as well work together.~ #1242 */ UNSOLVED_JOURNAL @13 /* ~Investigating the Merchants' League Estate
Brandilar, the commander of the Merchants' League Estate's guards, is suspicious of Zorl and Irlentree, two of the organization's leaders.~ #26824 */ GOTO 6
  IF ~~ THEN REPLY @15 /* ~We only work for Aldeth.~ #1243 */ DO ~SetGlobal("BrandilarDenied","GLOBAL",1)
~ UNSOLVED_JOURNAL @13 /* ~Investigating the Merchants' League Estate
Brandilar, the commander of the Merchants' League Estate's guards, is suspicious of Zorl and Irlentree, two of the organization's leaders.~ #26824 */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 3.0
  SAY @16 /* ~If you're going to be this way, then there is nothing more to talk about.~ #1089 */
  IF ~~ THEN DO ~SetGlobal("LiedBrandilar","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY @17 /* ~If you find anything, come back and see me immediately.~ #1090 */
  IF ~~ THEN DO ~SetGlobal("HelpBrandilar","GLOBAL",1)
~ UNSOLVED_JOURNAL @18 /* ~Investigating the Merchants' League Estate
I should report any suspicious findings about Zorl and Irlentree to Brandilar.~ #26825 */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 12 even though they appear after this state */
~  Global("HelpBrandilar","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY @19 /* ~How has your investigation fared? Have you found anything that may be of use?~ #1091 */
  IF ~~ THEN REPLY @20 /* ~No such luck just yet.~ #1244 */ GOTO 8
  IF ~~ THEN REPLY @21 /* ~We've heard and seen quite a few things, but we haven't found any hard evidence.~ #1245 */ GOTO 9
  IF ~  OR(3)
PartyHasItem("scrl2o")
PartyHasItem("scrl2p")
PartyHasItem("scrl2q")
~ THEN REPLY @22 /* ~We found some documents that you might find very interesting.~ #1246 */ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @23 /* ~That's unfortunate.~ #1092 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @24 /* ~Well, keep trying.~ #1093 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @25 /* ~Show me what you've found.~ #1094 */
  IF ~~ THEN REPLY @26 /* ~Sorry, only Aldeth gets to see this stuff.~ #1247 */ EXIT
  IF ~~ THEN REPLY @27 /* ~Here, take a look.~ #1248 */ DO ~TakePartyItem("scrl2o")
TakePartyItem("scrl2p")
TakePartyItem("scrl2q")
~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @28 /* ~This is exactly what I need. Irlentree and Zorl are obviously doppelgangers! I want you to track down and kill every one of those monstrous shapeshifters.~ #1095 */
  IF ~~ THEN DO ~SetGlobal("HelpBrandilar","GLOBAL",2)
SetGlobal("ZorlDopple","GLOBAL",1)
SetGlobal("AldethMove","GLOBAL",3)
~ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 12 // from:
  SAY @29 /* ~I am commander of the Merchants' League Estate household guard. I have noticed that my employers, Irlentree and Zorl, have been acting very strangely recently.~ #6062 */
  IF ~~ THEN UNSOLVED_JOURNAL @13 /* ~Investigating the Merchants' League Estate
Brandilar, the commander of the Merchants' League Estate's guards, is suspicious of Zorl and Irlentree, two of the organization's leaders.~ #26824 */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 15 16 17 even though they appear after this state */
~  Global("HelpBrandilar","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY @30 /* ~It is good to see you all again. I'm very busy at the moment, so perhaps we can talk later.~ #6065 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 15 16 17 even though they appear after this state */
~  GlobalGT("LiedBrandilar","GLOBAL",0)
~ THEN BEGIN 14 // from:
  SAY @31 /* ~Lost your chance with me, you did! Get lost!~ #8949 */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 16 17 even though they appear after this state */
~  Global("HelpBrandilar","GLOBAL",2)
GlobalLT("AldethDopple","GLOBAL",16)
~ THEN BEGIN 15 // from:
  SAY @32 /* ~There are still more doppelgangers. We won't be safe until you've killed them all.~ #935 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  GlobalGT("AldethDopple","GLOBAL",15)
Global("HelpBrandilar","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY @33 /* ~You've done very well! I'm glad to have worked with such as you. Aldeth should have your reward, if he hasn't already given it to you.~ #951 */
  IF ~~ THEN DO ~SetGlobal("HelpBrandilar","GLOBAL",3)
~ EXIT
END

IF WEIGHT #2 ~  GlobalGT("AldethDopple","GLOBAL",15)
Global("HelpBrandilar","GLOBAL",2)
OR(2)
GlobalGT("LiedBrandilar","GLOBAL",0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 17 // from:
  SAY @34 /* ~Surprisingly, you've done very well! Aldeth should have your reward, if he hasn't already given it to you.~ #32196 */
  IF ~~ THEN DO ~SetGlobal("HelpBrandilar","GLOBAL",3)
~ EXIT
END
