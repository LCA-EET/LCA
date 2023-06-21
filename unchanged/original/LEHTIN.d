// creator  : weidu (version 24900)
// argument : LEHTIN.DLG
// game     : .
// source   : ./override/LEHTIN.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~LEHTIN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #16110 /* ~Well... (Hurrrm...) Hello to you. I don't recall seeing your face in here before. Strangers aren't exactly welcome in these parts.~ [LEHTIN02] */
  IF ~~ THEN REPLY #16111 /* ~Then let's not remain strangers. I am <GABBER>.~ */ GOTO 1
  IF ~~ THEN REPLY #16112 /* ~Isn't that odd for an inn? Strangers must come through here all the time.~ */ GOTO 2
  IF ~~ THEN REPLY #16113 /* ~I have a terrible amount of coin to dispense with. I can always do so elsewhere.~ */ GOTO 3
  IF ~~ THEN REPLY #16114 /* ~I'd like to see what services you have to offer. Either that or I could leave.~ */ GOTO 4
  IF ~~ THEN REPLY #16117 /* ~I'll not stay where I'm not welcome. Excuse me.~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 14.1 0.0
  SAY #16118 /* ~(Hurrm.) Yes. Well. I am Lehtinan. Proprietor of the Copper Coronet, if you will. (Hurrm.) Welcome.~ */
  IF ~~ THEN REPLY #16125 /* ~Perhaps I could see what services you have available?~ */ GOTO 6
  IF ~  Global("KnowSlaves","GLOBAL",1)
~ THEN REPLY #16126 /* ~I've heard of slaves being moved about the slums at night... some to this tavern. Do you know anything about that?~ */ GOTO 7
  IF ~~ THEN REPLY #16127 /* ~I'm looking to dispose of some coin. Any ideas on how to spend it?~ */ GOTO 3
  IF ~~ THEN REPLY #16128 /* ~I'll be on my way, thanks.~ */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 14.2 0.1
  SAY #16121 /* ~It is an odd time. (Hurrrm.) Strangers can be... dangerous. If one is not careful. (Hurrrm.) You wish something?~ */
  IF ~~ THEN REPLY #16131 /* ~Perhaps I could see what services you have available?~ */ GOTO 6
  IF ~  Global("KnowSlaves","GLOBAL",1)
~ THEN REPLY #16132 /* ~I've heard of slaves being moved about the slums at night... some to this tavern. Do you know anything about that?~ */ GOTO 7
  IF ~~ THEN REPLY #16133 /* ~I'm looking to dispose of some coin. Any ideas on how to spend it?~ */ GOTO 3
  IF ~~ THEN REPLY #16134 /* ~I'll be on my way, thanks.~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 7.1 2.2 1.2 0.2
  SAY #16122 /* ~(Hurrm.) Coin is... always... welcome. You will find the Copper Coronet able to fulfill your needs, whether drink, rest, or other sorts... of entertainment. (Hurrrm.)~ */
  IF ~~ THEN REPLY #16135 /* ~Drink and rest sound fine. Let me see what you have available.~ */ GOTO 6
  IF ~~ THEN REPLY #16136 /* ~Other sorts of entertainment? What are you talking about?~ */ GOTO 8
  IF ~~ THEN REPLY #16137 /* ~I'll pass.~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #16123 /* ~You do not have to leave, stranger. (Hurrm.) Not yet. But if you wish to purchase something, you must speak to Bernard. He... handles my transactions. (Hurrm.)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 14.7 11.4 8.7 7.2 3.2 2.3 1.3 0.4
  SAY #16124 /* ~Of course. (Hurrm.) I would expect... nothing less.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 14.0 8.6 3.0 2.0 1.0
  SAY #16129 /* ~The Copper Coronet aims to please. (Hurrrrrrm.) But you must speak to Bernard if you wish to purchase something.~ [LEHTIN06] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 14.3 2.1 1.1
  SAY #16130 /* ~(Hurrrm.) I do not know what you speak of. I know nothing of slaves.~ */
  IF ~~ THEN REPLY #16139 /* ~Are you certain? You know nothing of slaves.~ */ DO ~SetGlobal("LehtinanWarning","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #16140 /* ~Perhaps some coin would loosen your tongue.~ */ GOTO 3
  IF ~~ THEN REPLY #16141 /* ~All right, then. I'll leave it be. For now.~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #16138 /* ~Ohhh... one is always able to provide entertainment. (Hurrm.) Things like companionship, perhaps, or gambling on battles, and other things.~ [LEHTIN08] */
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
Global("LehtinanWarning","GLOBAL",0)
~ THEN REPLY #16143 /* ~Companionship? That sounds interesting. Tell me more.~ */ GOTO 17
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
Global("LehtinanWarning","GLOBAL",0)
~ THEN REPLY #16144 /* ~I've never had anything against gambling. What do you know about that?~ */ GOTO 17
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
Global("LehtinanWarning","GLOBAL",0)
~ THEN REPLY #16145 /* ~What sorts of... other things are you referring to? I'm interested.~ */ GOTO 17
  IF ~  OR(2)
Global("LehtinanWarning","GLOBAL",1)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY #16146 /* ~Companionship? That sounds interesting. Tell me more.~ */ GOTO 11
  IF ~  OR(2)
Global("LehtinanWarning","GLOBAL",1)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY #16147 /* ~I've never had anything against gambling. What do you know about that?~ */ GOTO 11
  IF ~  OR(2)
Global("LehtinanWarning","GLOBAL",1)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY #16148 /* ~What sorts of... other things are you referring to? I'm interested.~ */ GOTO 11
  IF ~~ THEN REPLY #16149 /* ~I see. No, I'd rather see what regular services you have available.~ */ GOTO 6
  IF ~~ THEN REPLY #16151 /* ~None of these things interest me.~ */ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #16142 /* ~People come and go from the Coronet all the time. (Hurrm.) I have no need to acquire slaves. (Hurrm.) I trust that will be all; I have... other things to attend to.~ */
  IF ~  Global("Backroom","GLOBAL",0)
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 34
  IF ~  !IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 165
  IF ~  True()
~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 17.0
  SAY #16152 /* ~Go over to the fellow by the door on the far wall and tell him I said to let you in. Talk to Frankie or perhaps Madame Nin if you wish to... partake. And enjoy. (Hurrm.)~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Korgan")
~ THEN DO ~SetGlobal("Backroom","GLOBAL",1)
Unlock("DOOR17")
Unlock("DOOR25")
~ UNSOLVED_JOURNAL #34114 /* ~Investigate activities in the Copper Coronet's rooms

The proprietor of the Copper Coronet has given me permission to enter the "back rooms" of his inn. I wonder what sort of secret and illegal services the man is offering back there...~ */ EXIT
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Jaheira")
~ THEN DO ~SetGlobal("Backroom","GLOBAL",1)
Unlock("DOOR17")
Unlock("DOOR25")
~ UNSOLVED_JOURNAL #34114 /* ~Investigate activities in the Copper Coronet's rooms

The proprietor of the Copper Coronet has given me permission to enter the "back rooms" of his inn. I wonder what sort of secret and illegal services the man is offering back there...~ */ EXTERN ~JAHEIRAJ~ 324
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN DO ~SetGlobal("Backroom","GLOBAL",1)
Unlock("DOOR17")
Unlock("DOOR25")
~ UNSOLVED_JOURNAL #34114 /* ~Investigate activities in the Copper Coronet's rooms

The proprietor of the Copper Coronet has given me permission to enter the "back rooms" of his inn. I wonder what sort of secret and illegal services the man is offering back there...~ */ EXTERN ~KORGANJ~ 49
END

IF ~~ THEN BEGIN 11 // from: 8.5 8.4 8.3
  SAY #16154 /* ~(Hurrrm.) Nay. Why should I trust you? You look like trouble. I've no need for trouble here.~ */
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)
~ THEN REPLY #16155 /* ~I will not trouble you. You have no need to worry.~ */ GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy,12,CHR)
~ THEN REPLY #16164 /* ~I will not trouble you. You have no need to worry.~ */ GOTO 13
  IF ~  PartyGoldGT(49)
~ THEN REPLY #16157 /* ~Perhaps 50 gold pieces will improve my appearance?~ */ DO ~TakePartyGold(50)
~ GOTO 12
  IF ~  PartyGoldGT(199)
~ THEN REPLY #16162 /* ~Perhaps 200 gold pieces will improve my appearance?~ */ DO ~TakePartyGold(200)
~ GOTO 17
  IF ~~ THEN REPLY #16166 /* ~Fine. I'll be going, then.~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY #16167 /* ~It does not. (Hurrrm.) But it does allow you to remain. (Hurrrm.)~ */
  IF ~~ THEN DO ~SetGlobal("LehtinanWarning","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #16168 /* ~(Hurrrmm... hurrm.) Nay. I do not believe you. You stink of trouble. Begone.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 15 27 even though they appear after this state */
~  CombatCounter(0)
True()
~ THEN BEGIN 14 // from:
  SAY #16169 /* ~(Hurrrrm.) You are back. I see. You wish something else?~ */
  IF ~~ THEN REPLY #16171 /* ~Yes. Let me see what services you have available.~ */ GOTO 6
  IF ~~ THEN REPLY #16172 /* ~I didn't catch your name the first time. I am <GABBER>.~ */ GOTO 1
  IF ~~ THEN REPLY #16173 /* ~You are rather unfriendly for an innkeeper. Rather odd, I should think.~ */ GOTO 2
  IF ~  Global("KnowSlaves","GLOBAL",1)
~ THEN REPLY #16174 /* ~I've heard of slaves being moved about the slums at night... some to this tavern. Do you know anything about that?~ */ GOTO 7
  IF ~  Global("HendakTold","GLOBAL",1)
Global("SlavingJerk","GLOBAL",0)
!Dead("Hendak")
Global("tattle","AR0406",0)
~ THEN REPLY #50066 /* ~I happened to visit the slave pens, and a slave named Hendak is planning to escape. He had the audacity to ask me to help him.~ */ DO ~SetGlobal("tattle","AR0406",1)
~ GOTO 18
  IF ~  Global("SlavingJerk","GLOBAL",1)
Dead("Hendak")
Global("LehtinanPaid","GLOBAL",0)
~ THEN REPLY #50084 /* ~The deed is done. Hendak is dead, and the slaves are cowed.~ */ GOTO 23
  IF ~  Global("SlavingJerk","GLOBAL",1)
Dead("Hendak")
Global("LehtinanPaid","GLOBAL",1)
~ THEN REPLY #50087 /* ~The deed is done. Hendak is dead, and the slaves are cowed.~ */ GOTO 24
  IF ~~ THEN REPLY #16175 /* ~No, thanks. I'll be going.~ */ GOTO 5
END

IF WEIGHT #1 ~  !Dead("Hendak")
!StateCheck("Hendak",STATE_SLEEPING)
Global("HendakMove","AR0406",6)
~ THEN BEGIN 15 // from:
  SAY #17365 /* ~What?! Hendak? You ignorant, barbaric slave! You're behind all of this chaos, aren't you? I'll take it out of your hide!~ [LEHTIN07] */
  IF ~~ THEN EXTERN ~HENDAK~ 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY #17370 /* ~We shall see!~ [LEHTIN21] */
  IF ~~ THEN DO ~SetGlobal("HendakFight","AR0406",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.3 11.0 8.2 8.1 8.0
  SAY #30078 /* ~(Hurrrm... hurrrmmm.) Very well. You look like one who might... appreciate... such entertainments. There is more to my little place than meets the eye.~ */
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN GOTO 10
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 86
  IF ~  !IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 35
END

IF ~~ THEN BEGIN 18 // from: 14.4
  SAY #50067 /* ~Hendak? That ignorant barbarian slave! 'Tis a fine thing that you decided to tell me. If you're willing to go a step further, I'll reward you handsomely.~ */
  IF ~~ THEN REPLY #50068 /* ~A reward, you say? What would you have me do?~ */ GOTO 21
  IF ~~ THEN REPLY #50069 /* ~I've already performed a service for you. Pay me for the information, and I will hear your next request.~ */ GOTO 19
  IF ~~ THEN REPLY #50073 /* ~Thanks, but I'm not interested.~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #50070 /* ~(Hurrm...) Very well. You may have prevented a slave uprising, so I offer you this armor as thanks. The deal will become a fair bit sweeter if you finish the job.~ */
  IF ~~ THEN REPLY #50071 /* ~What would you have me do?~ */ DO ~GiveItemCreate("PLAT01",LastTalkedToBy,0,0,0)
SetGlobal("LehtinanPaid","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #50072 /* ~Thanks, but I'm not interested.~ */ DO ~GiveItemCreate("PLAT01",LastTalkedToBy,0,0,0)
SetGlobal("LehtinanPaid","GLOBAL",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 21.1 19.1 18.2
  SAY #50074 /* ~Fine. I'll have to have my soon-to-be-fired guards do it. Thanks again for the information. Enjoy your stay at the Copper Coronet.~ */
  IF ~~ THEN DO ~EraseJournalEntry(15705)
EraseJournalEntry(16553)
EraseJournalEntry(34114)
EraseJournalEntry(34118)
EraseJournalEntry(34119)
ActionOverride("Hendak",DestroySelf())
~ SOLVED_JOURNAL #10718 /* ~Investigate activities in the Copper Coronet's rooms

I informed Lehtinan, the owner of the Copper Coronet, of Hendak's desire to escape the slave pens and his attempt to acquire my help.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0 18.0
  SAY #50077 /* ~Go and execute Hendak for his audacity. (Hurrm...) I've got to set an example to ensure that this doesn't happen again. What do you say? Will you do it?~ */
  IF ~~ THEN REPLY #50079 /* ~Certainly. It would be my pleasure.~ */ GOTO 22
  IF ~~ THEN REPLY #50081 /* ~I'm not interested.~ */ GOTO 20
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #50082 /* ~(Hurrrmm...) Excellent. Here is the key to the cell. Punish the slave and return to me. You shall be well rewarded.~ */
  IF ~~ THEN DO ~SetGlobal("SlavingJerk","GLOBAL",1)
GiveItemCreate("MISC4Z",LastTalkedToBy,0,0,0)
~ UNSOLVED_JOURNAL #15705 /* ~Investigate activities in the Copper Coronet's rooms

Lehtinan, the innkeeper at the Copper Coronet, has hired me to kill Hendak, who tried to get my help to escape. He gave me a key to open up Hendak's cell. I am to return once the deed is done.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.5
  SAY #50086 /* ~Well done, my friend. You have done a great service for me. Allow me to offer you this reward.~ */
  IF ~~ THEN DO ~GiveItemCreate("PLAT01",LastTalkedToBy,0,0,0)
GiveItemCreate("SW1H03",LastTalkedToBy,0,0,0)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 14.6
  SAY #50089 /* ~Well done, my friend. You have done a great service for me. Allow me to offer you this reward.~ */
  IF ~~ THEN DO ~GiveItemCreate("SW1H03",LastTalkedToBy,0,0,0)
~ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #50090 /* ~Thanks again. Talk to Bernard when you wish to buy something, and you shall get a special discount. Enjoy your stay; you shall profit by your association with Lehtinan.~ */
  IF ~~ THEN DO ~EraseJournalEntry(15705)
EraseJournalEntry(16553)
EraseJournalEntry(34114)
EraseJournalEntry(34118)
EraseJournalEntry(34119)
ReputationInc(-1)
SetGlobal("SlavingJerk","GLOBAL",2)
SetGlobal("LehtinanCheap","GLOBAL",1)
~ SOLVED_JOURNAL #9979 /* ~Investigate activities in the Copper Coronet's rooms

After refusing to help Hendak in the Copper Coronet, I reported the incident to Lehtinan, the proprietor. He hired me to kill Hendak as an example, which I did. Part of Lehtinan's reward is cheaper prices from Bernard, his clerk.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.0
  SAY #50091 /* ~My thanks again for the service that you have done me. Enjoy the rest of your stay at the Copper Coronet. You shall surely profit by your association with me.~ */
  IF ~~ THEN DO ~SetGlobal("SlavingJerk","GLOBAL",2)
SetGlobal("LehtinanCheap","GLOBAL",1)
ReputationInc(-1)
EraseJournalEntry(15705)
EraseJournalEntry(16553)
EraseJournalEntry(34114)
EraseJournalEntry(34118)
EraseJournalEntry(34119)
~ SOLVED_JOURNAL #9979 /* ~Investigate activities in the Copper Coronet's rooms

After refusing to help Hendak in the Copper Coronet, I reported the incident to Lehtinan, the proprietor. He hired me to kill Hendak as an example, which I did. Part of Lehtinan's reward is cheaper prices from Bernard, his clerk.~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("HendakReleased","AR0406",1)
~ THEN BEGIN 27 // from:
  SAY #59545 /* ~You've ruined me, <CHARNAME>. With the slaves free, I'll lose most of my business, and with my debts, my life as well. The sight of you sickens me. Go.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #59548 /* ~~ */
  IF ~~ THEN EXIT
END
