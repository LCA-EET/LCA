// creator  : weidu (version 24900)
// argument : KELDORJ.DLG
// game     : .
// source   : ./override/KELDORJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~KELDORJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("KeldornEstate","LOCALS",1)
AreaCheck("ar1000")
~ THEN BEGIN 0 // from:
  SAY #8702 /* ~Oh, to taste the airs of home... It has been a long time since I have passed this way.~ [KELDOR85] */
  IF ~~ THEN REPLY #9076 /* ~Home? But I thought you maintained your quarters at the Radiant Heart.~ */ DO ~SetGlobal("KeldornEstate","LOCALS",2)
SetGlobalTimer("KeldornHome","GLOBAL",FOUR_DAYS)
SetGlobal("KeldornComplain","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY #9077 /* ~I didn't know this was where you grew up, Keldorn. Which house was yours?~ */ DO ~SetGlobal("KeldornEstate","LOCALS",2)
SetGlobalTimer("KeldornHome","GLOBAL",FOUR_DAYS)
SetGlobal("KeldornComplain","LOCALS",1)
~ GOTO 4
  IF ~~ THEN REPLY #9079 /* ~Yes, yes, very moving. Come, we have no time to dawdle over childhood memories.~ */ DO ~SetGlobal("KeldornEstate","LOCALS",2)
SetGlobalTimer("KeldornHome","GLOBAL",FOUR_DAYS)
SetGlobal("KeldornComplain","LOCALS",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9082 /* ~My attendance at the Order is... it is oft required, but my servants maintain an estate in this district, and it is there that I visit my wife and daughters... Would you like to come? I shall introduce you.~ */
  IF ~~ THEN REPLY #9090 /* ~No thanks, Keldorn. It is not my place to intrude upon your personal life.~ */ GOTO 2
  IF ~~ THEN REPLY #9092 /* ~I would like that.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 5.0 4.0 1.0
  SAY #9093 /* ~It is hardly an intrusion. They will be pleased to meet you and, as I said, it has been far too long since last I saw them.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #48002 /* ~Keldorn wishes to visit his wife and family

Apparently, Keldorn maintains a mansion of his own in the Government District here in Athkatla and has asked that we visit the place so that he may introduce me to his family.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 5.1 4.1 1.1
  SAY #9096 /* ~Very well. I shall point it out to you as we pass its gates. As I said, it has been far too long since last I walked these streets.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #48002 /* ~Keldorn wishes to visit his wife and family

Apparently, Keldorn maintains a mansion of his own in the Government District here in Athkatla and has asked that we visit the place so that he may introduce me to his family.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY #9098 /* ~I was born in Esmeltaran, but Athkatla has long been my home. My tasks for the church too often keep me away, but my estate is in this district, along with my wife and daughters. Would you like to come? I could introduce you.~ */
  IF ~~ THEN REPLY #9116 /* ~No thanks, Keldorn. It is not my place to intrude upon your personal life.~ */ GOTO 2
  IF ~~ THEN REPLY #9118 /* ~I would like that.~ */ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 0.2
  SAY #9124 /* ~Nonsense. My estate is in this district, along with my wife and daughters. I am sure they would love to meet you. Come, and I shall make the necessary introductions.~ */
  IF ~~ THEN REPLY #9125 /* ~No thanks, Keldorn. It is not my place to intrude upon your personal life.~ */ GOTO 2
  IF ~~ THEN REPLY #9126 /* ~I would like that.~ */ GOTO 3
END

IF WEIGHT #11 /* Triggers after states #: 11 12 15 23 29 41 43 85 87 135 even though they appear after this state */
~  Global("KeldornComplain","LOCALS",1)
GlobalTimerExpired("KeldornHome","GLOBAL")
~ THEN BEGIN 6 // from:
  SAY #9127 /* ~Forgive me, but it... it has been near a season since I last saw my family. May we not take some time out of our current schedule and check that they are well?~ */
  IF ~~ THEN REPLY #9131 /* ~You have my leave to go. Where shall I find you again when you are done?~ */ GOTO 7
  IF ~~ THEN REPLY #9135 /* ~Then let us visit your estate and see this family you have kept so secret.~ */ GOTO 8
  IF ~~ THEN REPLY #9140 /* ~In time, Keldorn. In time. But for the time being, we have more important things to do.~ */ GOTO 9
  IF ~~ THEN REPLY #9142 /* ~Do not try my patience in this matter. We must rescue Imoen. Your family will wait. ~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9148 /* ~Thank you, m'<LADYLORD>. You may find me at my quarters in the Radiant Heart guild house when I am done.~ */
  IF ~~ THEN DO ~SetGlobal("KeldornLeave","GLOBAL",1)
SetGlobal("KeldornComplain","LOCALS",3)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
SetGlobalTimer("KeldornGuild","GLOBAL",ONE_DAY)
EscapeArea()
~ UNSOLVED_JOURNAL #48003 /* ~Keldorn wishes to visit his wife and family

After being reminded of his home in Athkatla, Keldorn has apparently found himself eager to return there. It seems he has not seen his family in quite some time. I told him I could not go with him, so Keldorn has left on his own. He bid me to find him at the headquarters of the Radiant Heart when he is done.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #668 /* ~Thank you, m'<LADYLORD>. Let us make haste then to the Government District, and I will point out my estate to you when we pass its gates.~ */
  IF ~~ THEN DO ~SetGlobal("KeldornComplain","LOCALS",2)
SetGlobalTimer("KeldornHome","GLOBAL",THREE_DAYS)
~ UNSOLVED_JOURNAL #34660 /* ~Keldorn wishes to visit his wife and family

Keldorn has become anxious to return to his estate in Athkatla... apparently, he has not seen his family in over a season. I have agreed to go with him. His estate can be found in the Government District, and Keldorn will point it out when we pass.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.3 6.2
  SAY #674 /* ~Yes, m'<LADYLORD>, but I cannot stay away forever. This long absence preys upon my conscience even as we speak.~ */
  IF ~~ THEN DO ~SetGlobal("KeldornComplain","LOCALS",2)
SetGlobalTimer("KeldornHome","GLOBAL",THREE_DAYS)
~ UNSOLVED_JOURNAL #34661 /* ~Keldorn wishes to visit his wife and family

Keldorn has become anxious to visit his estate and family in the Government District of Athkatla. I get the feeling that if I do not go with him soon, he will decide to go by himself.~ */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 11 12 15 23 29 41 43 85 87 135 even though they appear after this state */
~  GlobalTimerExpired("KeldornHome","GLOBAL")
Global("KeldornComplain","LOCALS",2)
~ THEN BEGIN 10 // from:
  SAY #9174 /* ~I mean no dishonor to you, but I must visit my family. I fear I serve two masters here and must insult the one to appease the other... When all of this has passed, you will be able to find me at the Order. Is that all right?~ */
  IF ~~ THEN DO ~SetGlobal("KeldornComplain","LOCALS",3)
SetGlobal("KeldornLeave","GLOBAL",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
SetGlobalTimer("KeldornGuild","GLOBAL",TWO_DAYS)
EscapeArea()
~ UNSOLVED_JOURNAL #48003 /* ~Keldorn wishes to visit his wife and family

After being reminded of his home in Athkatla, Keldorn has apparently found himself eager to return there. It seems he has not seen his family in quite some time. I told him I could not go with him, so Keldorn has left on his own. He bid me to find him at the headquarters of the Radiant Heart when he is done.~ */ EXIT
END

IF WEIGHT #1 ~  Global("KeldornPassesHouse","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #9178 /* ~Ah, here at long last is... my estate. The servants have tended to it well this past while.~ [KELDOR88] */
  IF ~~ THEN DO ~SetGlobal("KeldornPassesHouse","GLOBAL",2)
~ EXIT
END

IF WEIGHT #2 ~  See("Peony")
!Dead("Peony")
Global("TalkedPeony","LOCALS",0)
!Global("MariaFight","LOCALS",2)
~ THEN BEGIN 12 // from:
  SAY #9181 /* ~Ah, Peony, you have done a fine job with the flowers out front. Where is your mistress?~ */
  IF ~~ THEN DO ~SetGlobal("TalkedPeony","LOCALS",1)
~ EXTERN ~PEONY~ 0
END

IF ~~ THEN BEGIN 13 // from:
  SAY #9207 /* ~And it has been as long since I have seen my Lady. Come, girl, is Maria about?~ */
  IF ~~ THEN EXTERN ~PEONY~ 1
END

IF ~~ THEN BEGIN 14 // from:
  SAY #9213 /* ~If you could, Peony. And the girls, too.~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut19b",FALSE)
~ EXIT
END

IF WEIGHT #3 ~  Global("TalkedMaria","LOCALS",0)
Global("TalkedPeony","LOCALS",1)
~ THEN BEGIN 15 // from:
  SAY #9220 /* ~Ah, my sweet Vesper. How is your schoolwork coming? The priests are still kind to you for my sake?~ [KELDOR89] */
  IF ~~ THEN DO ~SetGlobal("TalkedMaria","LOCALS",1)
~ EXTERN ~VESPER~ 0
END

IF ~~ THEN BEGIN 16 // from:
  SAY #9222 /* ~...Good, good, that's good to hear. And Leona, the boys are letting you play with them now? They're not teasing you anymore?~ */
  IF ~~ THEN EXTERN ~LEONA~ 0
END

IF ~~ THEN BEGIN 17 // from:
  SAY #9224 /* ~Good, good, that's good...~ */
  IF ~~ THEN EXTERN ~LEONA~ 1
END

IF ~~ THEN BEGIN 18 // from:
  SAY #9231 /* ~Maria, this is <CHARNAME>. We are searching for <PRO_HISHER> childhood companion, who—~ */
  IF ~~ THEN EXTERN ~MARIA~ 2
END

IF ~~ THEN BEGIN 19 // from:
  SAY #9237 /* ~The work of the Order must be done, Maria. You know if I had my choice, I would be here.~ */
  IF ~~ THEN EXTERN ~MARIA~ 21
END

IF ~~ THEN BEGIN 20 // from:
  SAY #9247 /* ~Maria!~ [KELDOR91] */
  IF ~~ THEN EXTERN ~MARIA~ 6
END

IF ~~ THEN BEGIN 21 // from:
  SAY #9257 /* ~You... You what? What is his name?!~ */
  IF ~~ THEN EXTERN ~MARIA~ 5
END

IF ~~ THEN BEGIN 22 // from:
  SAY #9263 /* ~...Go—go to your daughters. To look at you right now, Maria... To look at you is to go mad.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("Cut19d",FALSE)
~ EXIT
END

IF WEIGHT #4 ~  Global("MariaFight","LOCALS",1)
~ THEN BEGIN 23 // from:
  SAY #9266 /* ~Curse the dictates of honor! ...Oh, the very gods demand that I bring this case before the courts. Sir William shall be hung and the love of my entire life imprisoned. There is no other outcome.~ [KELDOR92] */
  IF ~~ THEN REPLY #9277 /* ~Even in your grief, you show wisdom. Let us make our way to the courts.~ */ DO ~SetGlobal("MariaFight","LOCALS",2)
~ GOTO 24
  IF ~~ THEN REPLY #9280 /* ~Perhaps you should talk with her.~ */ DO ~SetGlobal("MariaFight","LOCALS",2)
~ GOTO 81
  IF ~~ THEN REPLY #9281 /* ~I say kill the bastard. Who is he, anyway?~ */ DO ~SetGlobal("MariaFight","LOCALS",2)
~ GOTO 82
  IF ~~ THEN REPLY #9298 /* ~Perhaps you should confront Sir William about the matter.~ */ DO ~SetGlobal("MariaFight","LOCALS",2)
~ GOTO 82
END

IF ~~ THEN BEGIN 24 // from: 25.0 23.0
  SAY #9299 /* ~No, no. This is a task I must face alone. Oh, I am already so weary, but I know I shall not rest until the deed is done... Meet me back at my Order in three hours and, if the gods are willing, this nightmare shall all be over.~ */
  IF ~~ THEN DO ~SetGlobal("LadyMaria","GLOBAL",1)
SetGlobal("KeldornLeave","GLOBAL",2)
SetGlobal("WilliamDead","GLOBAL",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
SetGlobalTimer("KeldornGuild","GLOBAL",THREE_HOURS)
EscapeArea()
~ UNSOLVED_JOURNAL #34662 /* ~Keldorn wishes to visit his wife and family

Keldorn's wife has betrayed him by spending her time with another man... a crime that can only be answered by imprisonment. Keldorn wishes to handle the grave task alone... he will return to the Most Noble Order of the Radiant Heart building in three hours or so, and I can meet him there then.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 81.0
  SAY #9300 /* ~I would become a blood-soaked beast and damn my soul to the Abyss. You mean well... but it is not an option.~ */
  IF ~~ THEN REPLY #9301 /* ~Then we must give testimony to the courts. Come, I shall be at your side.~ */ GOTO 24
  IF ~~ THEN REPLY #9302 /* ~Then let us bestow some justice. He has challenged your honor. There must be a reprisal.~ */ GOTO 82
END

IF ~~ THEN BEGIN 26 // from: 83.0
  SAY #9303 /* ~Come, I know of him, and he is often at the Mithrest in Waukeen's Promenade... Let us go and see what sense we can make of this.~ */
  IF ~~ THEN DO ~SetGlobal("LadyMaria","GLOBAL",2)
~ UNSOLVED_JOURNAL #34663 /* ~Keldorn wishes to visit his wife and family

Keldorn is full of grief at discovering that his wife has been spending time with another man. He cannot talk to her... but he can join me in tracking down this Sir William of Thorpe and confronting him. Keldorn said that Sir William frequents the Mithrest, an inn in Waukeen's Promenade.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 84.0
  SAY #9305 /* ~I love you like I love the church, but the church is the harsher taskmaster... We knew that when we married.~ */
  IF ~~ THEN EXTERN ~MARIA~ 7
END

IF ~~ THEN BEGIN 28 // from:
  SAY #9307 /* ~Then if we have love, Maria, what could ever come between us?~ */
  IF ~~ THEN EXTERN ~MARIA~ 4
END

IF WEIGHT #5 ~  Global("LadyMaria","GLOBAL",2)
GlobalTimerExpired("FindWilliam","GLOBAL")
~ THEN BEGIN 29 // from:
  SAY #9716 /* ~A day has passed, and still we have not confronted Sir William about his crimes. <CHARNAME>, we must make haste to the Mithrest in the Promenade District. I cannot live like this for long.~ [KELDOR93] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30 // from: 86.0
  SAY #9773 /* ~If I am not there in two days' time, then I am dead at Sir William's hand. I pray you feel the blessings of the gods as much as I have felt their curse... Goodbye, my friend.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
SetGlobal("WilliamDead","GLOBAL",1)
SetGlobalTimer("KeldornGuildWilliam","GLOBAL",ONE_DAY)
EscapeArea()
~ UNSOLVED_JOURNAL #34664 /* ~Keldorn wishes to visit his wife and family

Keldorn has left the party to seek out Sir William on his own. He said that if he is not at the Most Noble Order of the Radiant Heart within two days' time... then he is likely dead. Either way, I should look for him there then.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #9793 /* ~May I presume, then, that you know why I am here?~ */
  IF ~~ THEN EXTERN ~WILLIA~ 1
END

IF ~~ THEN BEGIN 32 // from:
  SAY #9802 /* ~M'lady Maria has but one husband, and it is I... As for Vesper and Leona, how dare you defile them with your presence!~ */
  IF ~~ THEN EXTERN ~WILLIA~ 2
END

IF ~~ THEN BEGIN 33 // from:
  SAY #9807 /* ~So says the viper who will sleep in my bed, running his wretched fingers through the spun gold that is her hair? What do you wish, Sir William? To have a child that is not even yours?~ */
  IF ~~ THEN EXTERN ~WILLIA~ 3
END

IF ~~ THEN BEGIN 34 // from:
  SAY #9831 /* ~What am I to do with you? You show no remorse, yet at the same time, you are so devoid of malice. What am I to do at all?~ */
  IF ~~ THEN EXTERN ~WILLIA~ 4
END

IF ~~ THEN BEGIN 35 // from:
  SAY #9853 /* ~Are you asking for my forgiveness?~ */
  IF ~~ THEN EXTERN ~WILLIA~ 5
END

IF ~~ THEN BEGIN 36 // from:
  SAY #9875 /* ~I once believed that with age would come wisdom, but every day I seem to doubt it more... Much as it pains me to admit it, Sir William is right. It is time I spoke with my wife.~ */
  IF ~~ THEN REPLY #9962 /* ~You can't just let him talk you out of it like that! We came here ready for a fight.~ */ DO ~SetGlobal("LadyMaria","GLOBAL",3)
~ GOTO 37
  IF ~~ THEN REPLY #9988 /* ~Such things are private matters. I will look for you at the guild house when you are done.~ */ DO ~AddexperienceParty(15500)
~ GOTO 38
  IF ~~ THEN REPLY #10060 /* ~Then let us make our way to your estate and bring some closure to this turmoil.~ */ GOTO 39
  IF ~~ THEN REPLY #10097 /* ~Spend some time and remind each other how to love. I release you from my service.~ */ DO ~AddexperienceParty(15500)
~ GOTO 40
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #10094 /* ~Nay, honor lies in admitting when you are wrong. Whatever Sir William here might have committed, 'tis not my right to judge him until such time that my own affairs are set aright.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #34666 /* ~Keldorn wishes to visit his wife and family

Regardless of how I might feel about the matter, Keldorn has obviously decided to set affairs right with his wife... and not take retribution against Sir William. I suppose he will want to return to his estate to speak with her soon.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #10093 /* ~Perhaps you are right. On my honor, I shall await you there in three days' time.~ */
  IF ~~ THEN DO ~SetGlobal("KeldornFamilyGone","GLOBAL",1)
SetGlobal("KeldornLeave","GLOBAL",4)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
SetGlobalTimer("KeldornGuild","GLOBAL",THREE_DAYS)
SetGlobal("KeldornSpawnGuild","GLOBAL",0)
EscapeArea()
~ UNSOLVED_JOURNAL #34665 /* ~Keldorn wishes to visit his wife and family

Keldorn has left the party to reconcile with his wife. He said he would return to the Most Noble Order of the Radiant Heart after he was finished, perhaps after three days or so. I will look for him there then.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.2
  SAY #10098 /* ~Thank you for both your understanding and your friendship, m'<PRO_LADYLORD>. Come... let us be off to my estate so that I may meet with Maria and put this behind me.~ */
  IF ~~ THEN DO ~SetGlobal("LadyMaria","GLOBAL",3)
~ UNSOLVED_JOURNAL #34667 /* ~Keldorn wishes to visit his wife and family

Keldorn has decided to reconcile with his wife, blaming himself for the situation which has developed between them. He wishes to return to his estate as soon as possible so that he might speak to her.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.3
  SAY #10100 /* ~Thank you for both your understanding and your friendship, m'<PRO_LADYLORD>. Your heart is kind and your soul is true. I shall not forget it.~ */
  IF ~~ THEN DO ~EraseJournalEntry(34660)
EraseJournalEntry(34661)
EraseJournalEntry(34662)
EraseJournalEntry(34663)
EraseJournalEntry(34664)
EraseJournalEntry(34665)
EraseJournalEntry(34666)
EraseJournalEntry(34667)
EraseJournalEntry(48002)
EraseJournalEntry(48003)
SetGlobal("KeldornFamilyGone","GLOBAL",1)
SetGlobal("KeldornLeave","GLOBAL",4)
SetGlobal("KeldornSpawnEstateTimer","GLOBAL",1)
SetGlobal("KeldornSpawnEstate","GLOBAL",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ SOLVED_JOURNAL #48012 /* ~Keldorn returns to his wife and family

After discovering that his wife had taken up with another man during his long absences, Keldorn has come to the conclusion that he is to blame... and I have urged him to leave my companionship and attempt a reconciliation with her. I wonder if I shall see him again?~ */ EXIT
END

IF WEIGHT #6 ~  Global("LadyMaria","GLOBAL",3)
~ THEN BEGIN 41 // from:
  SAY #10111 /* ~I pray you have not forgotten my intention to reconcile with my Lady Maria. 'Tis not a duty I care to postpone for long.~ [KELDOR94] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 87.0
  SAY #10164 /* ~Once I have settled things with my Lady Maria, I shall await you at my guild house. ~ */
  IF ~~ THEN DO ~SetGlobal("KeldornLeave","GLOBAL",4)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
SetGlobalTimer("KeldornGuild","GLOBAL",THREE_DAYS)
EscapeArea()
~ UNSOLVED_JOURNAL #34665 /* ~Keldorn wishes to visit his wife and family

Keldorn has left the party to reconcile with his wife. He said he would return to the Most Noble Order of the Radiant Heart after he was finished, perhaps after three days or so. I will look for him there then.~ */ EXIT
END

IF WEIGHT #7 ~  Global("WilliamAttacked","GLOBAL",1)
~ THEN BEGIN 43 // from:
  SAY #10276 /* ~Oh, my friends, I warned you that this strange viper's soul is now guarded by my honor. In attacking him, you have attacked me, and I fear I have no choice but to defend.~ [KELDOR95] */
  IF ~~ THEN DO ~EraseJournalEntry(34660)
EraseJournalEntry(34661)
EraseJournalEntry(34662)
EraseJournalEntry(34663)
EraseJournalEntry(34664)
EraseJournalEntry(34665)
EraseJournalEntry(34666)
EraseJournalEntry(34667)
EraseJournalEntry(48002)
EraseJournalEntry(48003)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
Enemy()
~ SOLVED_JOURNAL #48013 /* ~Keldorn dies defending Sir William

Keldorn's odd sense of justice and honor forced him to defend Sir William, the very man whom his own wife has been betraying him with. Now, the Lady Maria is not only an adulteress, but a widow as well.~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #10383 /* ~Nay, my love. We both yet live, and perhaps each of us more fully than before.~ [KELDOR90] */
  IF ~~ THEN EXTERN ~MARIA~ 9
END

IF ~~ THEN BEGIN 45 // from:
  SAY #10389 /* ~To love you is honor enough for any man, Maria.~ */
  IF ~~ THEN EXTERN ~MARIA~ 10
END

IF ~~ THEN BEGIN 46 // from:
  SAY #10392 /* ~<CHARNAME>?~ */
  IF ~~ THEN REPLY #10393 /* ~I wouldn't dare to stand in the way of love. I release you from my service.~ */ DO ~AddexperienceParty(15500)
~ EXTERN ~MARIA~ 11
  IF ~~ THEN REPLY #10395 /* ~Okay, okay, you have a day, but after that, I'm going to need your help.~ */ DO ~AddexperienceParty(15500)
~ GOTO 48
  IF ~~ THEN REPLY #10396 /* ~My task must not go unfinished. Please, Keldorn, serve until we save Imoen.~ */ DO ~AddexperienceParty(15500)
~ EXTERN ~MARIA~ 13
END

IF ~~ THEN BEGIN 47 // from:
  SAY #10398 /* ~Vesper, Leona, come... I hear that they are holding a circus in the promenade.~ */
  IF ~~ THEN DO ~EraseJournalEntry(34660)
EraseJournalEntry(34661)
EraseJournalEntry(34662)
EraseJournalEntry(34663)
EraseJournalEntry(34664)
EraseJournalEntry(34665)
EraseJournalEntry(34666)
EraseJournalEntry(34667)
EraseJournalEntry(48002)
EraseJournalEntry(48003)
SetGlobal("KeldornLeave","GLOBAL",5)
SetGlobal("LadyMaria","GLOBAL",5)
SetGlobal("KeldornSpawnEstate","GLOBAL",1)
SetGlobal("KeldornFamilyGone","GLOBAL",1)
SetGlobalTimer("KeldornSpawnEstateTimer","GLOBAL",ONE_DAY)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ SOLVED_JOURNAL #48014 /* ~Keldorn returns to his wife and family

After discovering that his wife, Maria, had taken up with another man during his long absences, Keldorn came to the conclusion that he was to blame and sought a reconciliation with her. I chose not to stand in the way of the knight leaving my company and instead spending time repairing his relationship with his family.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.1
  SAY #10399 /* ~A day is more than we have had in years, <CHARNAME>. It's not perfect, but it's a start.~ */
  IF ~~ THEN EXTERN ~MARIA~ 12
END

IF ~~ THEN BEGIN 49 // from:
  SAY #10416 /* ~It shall be my final quest. In fact, I shall submit my resignation to the Order this very week... <CHARNAME>, you know where to find me tomorrow... right here at my estate.~ */
  IF ~~ THEN DO ~EraseJournalEntry(34660)
EraseJournalEntry(34661)
EraseJournalEntry(34662)
EraseJournalEntry(34663)
EraseJournalEntry(34664)
EraseJournalEntry(34665)
EraseJournalEntry(34666)
EraseJournalEntry(34667)
EraseJournalEntry(48002)
EraseJournalEntry(48003)
SetGlobal("KeldornLeave","GLOBAL",5)
SetGlobal("LadyMaria","GLOBAL",5)
SetGlobal("KeldornSpawnEstate","GLOBAL",1)
SetGlobal("KeldornFamilyGone","GLOBAL",1)
SetGlobalTimer("KeldornSpawnEstateTimer","GLOBAL",ONE_DAY)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ SOLVED_JOURNAL #48015 /* ~Keldorn returns to his wife and family

After discovering that his wife, Maria, had taken up with another man during his long absences, Keldorn decided that it was he who was at fault... and sought a reconciliation. Keldorn promised to resign from the Order, and I urged him to spend a day with his family, rebuilding their relationship... after which Keldorn told me that I could find him at his estate once again.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #10428 /* ~Nay. It shall be my final quest; you have my word. When I am done it, I shall submit my resignation to the Order and... and come home. Does that please you, m'lady?~ */
  IF ~~ THEN EXTERN ~MARIA~ 14
END

IF ~~ THEN BEGIN 51 // from:
  SAY #10430 /* ~As it pleases me. I shall return soon, with all the passion of my pent-up heart unleashed. Until then, may the gods bless you and... and give my greetings to Sir William when you see him.~ */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #10437 /* ~Come, <CHARNAME>, there be little time for idleness. I hear you have an old friend that needs some rescuing...~ */
  IF ~~ THEN DO ~EraseJournalEntry(34660)
EraseJournalEntry(34661)
EraseJournalEntry(34662)
EraseJournalEntry(34663)
EraseJournalEntry(34664)
EraseJournalEntry(34665)
EraseJournalEntry(34666)
EraseJournalEntry(34667)
EraseJournalEntry(48002)
EraseJournalEntry(48003)
SetGlobal("LadyMaria","GLOBAL",5)
~ SOLVED_JOURNAL #48016 /* ~Keldorn returns to his wife and family

After discovering that his wife, Maria, had taken up with another man during his long absences, Keldorn came to the decision that it was he who was to blame. He has reconciled with his wife, promising that his mission with me shall be his last and that after he returns, he shall resign from the Order... a promise which she has accepted.~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #14234 /* ~I am a paladin of the Most Noble Order of the Radiant Heart, child. Keep your heart pure and strong, and you may grow to be worthy of the same honor.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY #14555 /* ~I am, my lady. A knight with the force of arms, and a paladin with the force of wisdom. Guardian of the righteous and herald of glory.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #14995 /* ~Things go as well as can be expected, my lord. Thank you for your kind words.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #15430 /* ~I'll not take part in such base sport. Nor do I approve of your wagering.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #16972 /* ~We must free these men. Slavery is unconscionable and evil, and we must do what we can to stop it!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #20010 /* ~I've always appreciated the halflings for their honesty and good sense, my lady. My stature makes me no greater than you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #21404 /* ~I can barely tolerate the vileness of this place, never mind your existence. You'll quit your tongue when you so much as look in my direction, worm!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #21781 /* ~That is because I am not a thief! I... I am here merely to assist <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #22371 /* ~Would that I could, my lady, would that I could.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #25470 /* ~How dare you speak of my wife! How do you know of this? HOW?!~ */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 63 // from:
  SAY #25598 /* ~I must always strive to look my best and represent the order, my lady.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #25667 /* ~My wife is... well enough, Lord Sterk. Good day.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #25791 /* ~While I agree with your sentiment, my lady, I truly doubt that it is ever so simple a matter as that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #27126 /* ~Gravediggers! You dare to disturb the rest of the dead on consecrated ground! You shall pay for this blasphemy!~ */
  IF ~~ THEN EXTERN ~STEIN~ 5
END

IF ~~ THEN BEGIN 67 // from:
  SAY #27646 /* ~Duty and need takes me often away from the simple service and contemplation of the Vigilant One, good sir.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #27852 /* ~It has been a struggle of duty and honor, good friend... but the gods have treated me well, nevertheless, I think.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #27856 /* ~I... I see. She is well?~ */
  IF ~~ THEN EXTERN ~TIRLANA~ 5
END

IF ~~ THEN BEGIN 70 // from:
  SAY #28484 /* ~Aye, I have heard of such. The priests of Helm in New Waterdeep object strenuously... although I hear nothing has changed.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #29526 /* ~Is that so? I trust her lessons are still proceeding well, then. That is good to see.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #29544 /* ~You will keep your waspish tongue to yourself, woman, as well as your unfounded gossip!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #29626 /* ~Er... ah... my lady! I... I am a married man!~ */
  IF ~~ THEN EXTERN ~ORIONA~ 6
END

IF ~~ THEN BEGIN 74 // from:
  SAY #29630 /* ~That is quite enough of that! I... ah... I have urgent business elsewhere. Excuse me, my lady.~ */
  IF ~~ THEN DO ~RunAwayFrom("Oriona",25)
~ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #30260 /* ~That is my wish as well, my love. Soon.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #30267 /* ~Please do not scorn me, child. I am only doing as I must.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #30269 /* ~I intend to work things out with your mother, child. Please... wait but a short while.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #36941 /* ~And hello to you, my youngest daughter. I trust all is well?~ */
  IF ~~ THEN EXTERN ~VESPER~ 7
END

IF ~~ THEN BEGIN 79 // from:
  SAY #36944 /* ~I am not sure yet, my sweet. I must speak to your mother.~ */
  IF ~~ THEN EXTERN ~LEONA~ 10
END

IF ~~ THEN BEGIN 80 // from:
  SAY #37033 /* ~<CHARNAME>, I cannot do this! I must be away from my wife lest I go mad! Please, I must be away!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 81 // from: 23.1
  SAY #37122 /* ~Seeing her face would drive me to madness, <CHARNAME>. To be in her presence right now is to abandon every virtue I've ever held sacred.~ */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 82 // from: 25.1 23.3 23.2
  SAY #37123 /* ~Sir William of Thorpe... He's a foreign noble establishing trade here in Athkatla. He was a good man—at least I always thought so until... until now.~ */
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #37124 /* ~Oh, <CHARNAME>, nothing is clear to me anymore...~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 84 // from:
  SAY #37126 /* ~You do not love me anymore? ...I... I have always loved you, and I always shall. However well I hide it, every day I spend without you is a day that's lost forever.~ */
  IF ~~ THEN GOTO 27
END

IF WEIGHT #8 ~  Global("LadyMaria","GLOBAL",2)
GlobalTimerExpired("FindWilliam","GLOBAL")
~ THEN BEGIN 85 // from:
  SAY #37127 /* ~You have planted a seed in my brain, and already its roots course through every aspect of my flesh. If you will not go with me to seek out Sir William, then I shall go myself!~ [KELDOR96] */
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #37128 /* ~If you have need of me, I shall be seeking the solace of my Order at the guild house.~ */
  IF ~~ THEN GOTO 30
END

IF WEIGHT #9 ~  Global("LadyMaria","GLOBAL",3)
~ THEN BEGIN 87 // from:
  SAY #37129 /* ~Forgive me. I have no choice but to leave your side for a small time. These wounds of the heart can wait no longer for love's attention.~ [KELDOR97] */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 88 // from:
  SAY #38751 /* ~"The measure of our hearts is taken by the kindness we show to the least of our brethren." Aye, 'tis truly so.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #38759 /* ~You would question even a kindness, Lady Nalia? Truly, you should think on your words more carefully.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 90 // from:
  SAY #38933 /* ~The fact that the city barely patrols this area is offensive enough, but the lack of honor in the guards that do... accepting money to overlook offenses, completely reprehensible!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 91 // from:
  SAY #38937 /* ~I cannot stand idly while such a travesty unfolds before my eyes. Justice is demanded, and in Torm's name, it shall be delivered!~ */
  IF ~~ THEN DO ~Attack("SlumsMugger2")
ActionOverride("Minsc",Attack("SlumsMugger4"))
ActionOverride("Mazzy",Attack("SlumsMugger4"))
~ EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #38940 /* ~I'll not abide such obvious deceit from you, filth! Such an affront to humanity can only be answered with steel!~ */
  IF ~~ THEN DO ~Attack("Slaver4")
~ EXIT
END

IF ~~ THEN BEGIN 93 // from:
  SAY #38942 /* ~Such dealings will not go on without response! And you... you vile excuse for a guard... your blind eyes shall be the first put out! <CHARNAME>! Take the others!~ */
  IF ~~ THEN DO ~Attack("SlamnG01")
ActionOverride("Minsc",Attack("SlumsSlaver2"))
~ EXIT
END

IF ~~ THEN BEGIN 94 // from:
  SAY #39278 /* ~Have you no compassion for the weak, Anomen? I find this course of action most dishonorable... it leaves a dark taste in my mouth.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 163
END

IF ~~ THEN BEGIN 95 // from:
  SAY #39284 /* ~Aye... giving these destitute men their freedom is only the right thing to do. Are you sure we should not trust them?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #39375 /* ~Your base appetite will be your downfall, dwarf. You have no honor for one of your kind... I am surprised and dismayed.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 50
END

IF ~~ THEN BEGIN 97 // from:
  SAY #40390 /* ~I've heard of this man, <CHARNAME>... he be a good and honorable priest, even if he possesses a fierce and loud nature. I would see no reason to refuse him.~ */
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 170
  IF ~  !IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~KPDOMO01~ 65
END

IF ~~ THEN BEGIN 98 // from:
  SAY #47075 /* ~I, for one, do not like to ponder overmuch the possibilities that the future may hold for me. But I shall heed your words, lady.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #48472 /* ~Aye, lass. It is a terrible thing to ponder. But have we not done our part in ending this base tyranny? Cling to that, if you can.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 179
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 349
END

IF ~~ THEN BEGIN 100 // from:
  SAY #48539 /* ~We stand together against the greatest foe of all, my friend! Come, then, dragon! With my last breath, if need be, I shall defy you!~ */
  IF ~  OR(2)
!IsValidForPartyDialogue("Edwin")
CheckStatGT(Player1,8,CHR)
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
CheckStatLT(Player1,9,CHR)
~ THEN EXTERN ~EDWINJ~ 43
END

IF ~~ THEN BEGIN 101 // from:
  SAY #48552 /* ~We... we cannot let it end like this, can we? This is a foul beast of legend... surely we will not let it get away with its manipulations! Too many have suffered at its whim!~ */
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Minsc")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 44
  IF ~  !IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 43
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 44
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 98
END

IF ~~ THEN BEGIN 102 // from:
  SAY #48560 /* ~Yes... I think you are correct, <CHARNAME>. Their appearances are bloodied, but I believe we gaze upon slain members of my own Order before us.~ */
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #48561 /* ~One of them I recognize as a knight who ranged far up the Sword Coast... by the name of Ajantis. What a wicked deed this is that we have been tricked into performing.~ */
  IF ~~ THEN EXTERN ~GARREN~ 2
END

IF ~~ THEN BEGIN 104 // from:
  SAY #48564 /* ~<CHARNAME>, you should think on this for a moment. This is the only one who can attest to our innocence. I doubt the Order will believe our story without his aid. ~ */
  IF ~~ THEN REPLY #48565 /* ~You have a point, Keldorn. I will hear this man out.~ */ EXTERN ~GARREN~ 3
  IF ~~ THEN REPLY #48566 /* ~Should I wish to hear your opinion, I will ask for it.~ */ GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.1
  SAY #48567 /* ~I have never known you to be pointlessly rude, <CHARNAME>, so I shall be brief. The Order will be relentless in their search, and without someplace to hide, we WILL be found.~ */
  IF ~~ THEN REPLY #48568 /* ~I know what I'm doing, Keldorn.~ */ EXTERN ~GARREN~ 4
  IF ~~ THEN REPLY #48569 /* ~Very well, I will hear this man out.~ */ EXTERN ~GARREN~ 3
END

IF ~~ THEN BEGIN 106 // from:
  SAY #48584 /* ~We would be most appreciative of any aid you could render, Garren Windspear.~ */
  IF ~~ THEN EXTERN ~GARREN~ 23
END

IF ~~ THEN BEGIN 107 // from:
  SAY #48597 /* ~Are we to stoop to hunting for bounties now, <CHARNAME>? Even if we do not murder this man, would turning him over to the Cowled Wizards be any less of a sentence?!~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~TOLGER~ 19
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 125
  IF ~  !IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 361
END

IF ~~ THEN BEGIN 108 // from:
  SAY #48601 /* ~I am disappointed that you take such a step, <CHARNAME>. I believe the Cowled Wizards to be the fiends in this plot. I cannot, in conscience, remain with you any longer.~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Aerie")
!CheckStatLT(Player1,13,CHR)
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ EXTERN ~TOLGER~ 37
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~MAZZYJ~ 126
  IF ~  !IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Aerie")
CheckStatLT(Player1,13,CHR)
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~AERIEJ~ 58
END

IF ~~ THEN BEGIN 109 // from:
  SAY #48613 /* ~This news leaves me even more ill at ease than before. I cannot, in truth, contemplate the murder of an innocent simply to further the plans of these wizards.~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~VALYGAR~ 9
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 127
  IF ~  !IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 100
END

IF ~~ THEN BEGIN 110 // from:
  SAY #48616 /* ~This is a ranger, <CHARNAME>, and therefore a man of honor. I believe we can trust what he says. And I become even less convinced that obeying the wizards is possible.~ */
  IF ~~ THEN EXTERN ~VALYGAR~ 2
END

IF ~~ THEN BEGIN 111 // from:
  SAY #48619 /* ~I... I cannot stand with you in this, <CHARNAME>! Many good things you have done indeed, but this act I cannot condone. Forgive me, but I must leave you...~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Aerie")
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0903",1731,1146,S)
~ EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0903",1731,1146,S)
~ EXTERN ~ANOMENJ~ 185
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0903",1731,1146,S)
~ EXTERN ~MAZZYJ~ 129
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Minsc")
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0903",1731,1146,S)
~ EXTERN ~MINSCJ~ 102
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Aerie")
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0903",1731,1146,S)
~ EXTERN ~AERIEJ~ 61
END

IF ~~ THEN BEGIN 112 // from:
  SAY #48620 /* ~You... you would kill this man? At the request of wizards far less honorable than he? I was obviously mistaken to follow you, but no longer! This man I shall defend!~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Aerie")
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
Enemy()
~ EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~ANOMENJ~ 185
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~MAZZYJ~ 130
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~MINSCJ~ 103
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Aerie")
ReactionGT(Player1,10)
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~AERIEJ~ 61
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Aerie")
ReactionLT(Player1,11)
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~AERIEJ~ 60
END

IF ~~ THEN BEGIN 113 // from:
  SAY #48635 /* ~I am not certain I would find your wares palatable regardless. I suspect they are ill-got in origin.~ */
  IF ~~ THEN EXTERN ~ARLED~ 6
END

IF ~~ THEN BEGIN 114 // from:
  SAY #48657 /* ~Best you hope that I never spy you at your trade, thief. I am here of necessity, but I shall not be blind.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 115 // from:
  SAY #48665 /* ~I most assuredly am not! This partnering is by necessity alone!~ */
  IF ~~ THEN EXTERN ~ARNMAN04~ 1
END

IF ~~ THEN BEGIN 116 // from:
  SAY #48674 /* ~A despicable ruse, abusing the charity of others. Vile in every respect.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #48699 /* ~Indeed. It is a dark place in need of some cleansing light.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #48704 /* ~I beg your pardon? I would gather up every vagrant and criminal in the city if I could, dear woman. Would that the world could be changed so easily.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 119 // from:
  SAY #48721 /* ~The honor is mine, Guardian. Helm holds a special place in the hearts of all who join the Order.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 120 // from:
  SAY #48737 /* ~You would if you had need of our aid, little one. We protect the weak and bring justice to the wicked. You would do well to remember that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 121 // from:
  SAY #48753 /* ~*sigh* Really, <CHARNAME>... is there not a more legitimate place for you to make your purchases?~ */
  IF ~~ THEN DO ~StartStore("bshop01",Player1)
~ EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #48830 /* ~They are well, although I fear I do not see them enough. Duty calls, as it ever does, my lady.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 123 // from:
  SAY #48879 /* ~Nothing is wrong about helping one obtain justice. No doubt this "Dennis" thinks himself strong enough to ignore the debt he has incurred. Come, let us follow.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 124 // from:
  SAY #48884 /* ~I do not support this Vittorio's actions, but I cannot stand by and watch him hurt. If we do not look for this... this gong... then we must stop the captain from exacting vengeance.~ */
  IF ~~ THEN EXTERN ~LOUTCAPT~ 19
END

IF ~~ THEN BEGIN 125 // from:
  SAY #48887 /* ~You are a filthy, evil wench, drow. I say let you die, and better yet on the end of my sword. <CHARNAME> allows you to remain, but I say you shall do so silently if at all!~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 197
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 110
END

IF ~~ THEN BEGIN 126 // from:
  SAY #48900 /* ~No! I cannot stand by and watch this man Vittorio be murdered in front of my eyes for nothing more than a debt! I must intervene!~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
~ THEN DO ~Attack("Dennis")
~ EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN DO ~Attack("Dennis")
~ EXTERN ~MINSCJ~ 108
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN DO ~Attack("Dennis")
~ EXTERN ~VALYGARJ~ 55
END

IF ~~ THEN BEGIN 127 // from:
  SAY #48908 /* ~Save your ridicule. I for one will not lament the refusal of stolen property. On another day, I would demand it all returned, but... but our greater cause must be considered.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 128 // from:
  SAY #48911 /* ~Hmm. It may be a bit far afield to retrieve this gong, but I'm willing to pledge my sword against a troll any day. The death of such evil is a service, no matter the quest.~ */
  IF ~  !IsValidForPartyDialogue("HaerDalis")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 76
END

IF ~~ THEN BEGIN 129 // from:
  SAY #48918 /* ~Despicable creature! <CHARNAME>, walking about this place requires more restraint than any paladin should be forced to bear.~ */
  IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 130 // from:
  SAY #48919 /* ~Aye. It grieves all of us that good men could come to such a pass... but the seed of corruption lies in us all. We must remain vigilant always in our struggle against it.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~KAYL2~ 25
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 200
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 140
END

IF ~~ THEN BEGIN 131 // from: 129.0
  SAY #48920 /* ~I do swear, if it were not for our overall cause, I should have to act. I shall make a point of coming here on my own in future.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #48939 /* ~Fallen or not, these men are former comrades of mine. I pity where their life's journey has taken them. This shall not be a pleasant task.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 133 // from:
  SAY #48942 /* ~Justice has reached you, Sir Anarg. I pity what you have become... It is time for this to end!~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
~ THEN DO ~Attack("kaypala")
~ EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN DO ~Attack("kaypala")
~ EXTERN ~ANOMENJ~ 201
END

IF ~~ THEN BEGIN 134 // from:
  SAY #48964 /* ~You'll find I am more than able to deflect the wrath of your mad faith, Cyricist!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 ~  PartyHasItem("misc5m")
See(Player1)
Global("FoundAegis","GLOBAL",0)
~ THEN BEGIN 135 // from:
  SAY #48985 /* ~Ah, yes. *sigh* The body of the unfortunate inspector. We must bring his body to the authorities when we can. The government building in the Government District would have someone who can... take him from us.~ */
  IF ~~ THEN DO ~SetGlobal("FoundAegis","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 136 // from:
  SAY #49205 /* ~This will not come to pass in my presence. This young woman is not to be bought and sold like chattel. ~ */
  IF ~~ THEN EXTERN ~DHARLOT2~ 2
END

IF ~~ THEN BEGIN 137 // from:
  SAY #49209 /* ~Life is too harsh for the little ones. I have come to learn this in my years.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 138 // from:
  SAY #49238 /* ~There is a bit of justice in that act, Yoshimo, but such legerdemain is beneath the act of heroes. Restrict your thievery in the future to those who deserve such.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #49245 /* ~While such a dastard likely deserved whatever death he received, <CHARNAME>, it is good to see compassion holds a place within you.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 209
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 58
END

IF ~~ THEN BEGIN 140 // from:
  SAY #49247 /* ~<CHARNAME> is taking a chance by <PRO_HISHER> action... but compassion must be granted to even the least of our brethren. Would you not have the Order take a chance on you, hm?~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 210
END

IF ~~ THEN BEGIN 141 // from:
  SAY #49274 /* ~This man has placed us in contact with the Shadow Thieves, after all. Were the life of your friend not at stake, I would not tolerate it for a moment.~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 61
  IF ~  !IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 385
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 212
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 64
END

IF ~~ THEN BEGIN 142 // from:
  SAY #49340 /* ~The poisoned man was a Harper? It is an organization that does good, <CHARNAME>, despite what you might hear. I would not brook any attempt by this cretin to subvert them.~ */
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 62
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~LYROS~ 30
END

IF ~~ THEN BEGIN 143 // from:
  SAY #49371 /* ~I will not take part in any attempt to rob from the temple of Lathander, <CHARNAME>. If you feel you must continue, then it is your task alone. Perhaps we shall meet again.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0903",644,501,S)
~ EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0903",1731,1146,S)
~ EXTERN ~ANOMENJ~ 215
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0903",1731,1146,S)
~ EXTERN ~MAZZYJ~ 144
END

IF ~~ THEN BEGIN 144 // from:
  SAY #49496 /* ~I dislike this role of assassin, <CHARNAME>. To name a Cowled Wizard an innocent, however, would be laughably naive. Let us proceed with the task, if you are determined.~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 70
END

IF ~~ THEN BEGIN 145 // from:
  SAY #49511 /* ~I hope that the treacherous Red Wizard will only be joining us for a short time. I am sure we will come to odds eventually... sooner if he continues to spout his blasphemies.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 146 // from:
  SAY #49536 /* ~Bah! Let us begone from here, my friends. We do not need the kind of "work" these fiends would offer, nor do I think I could stand the association.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 90
END

IF ~~ THEN BEGIN 147 // from:
  SAY #49559 /* ~No. If you must abandon someone here, then it shall be me. I may perish or I may not, but I would fare better alone than this young woman.~ */
  IF ~~ THEN EXTERN ~IMOEN2~ 23
END

IF ~~ THEN BEGIN 148 // from:
  SAY #49561 /* ~So we go to investigate this other guild, do we? And what will we be required to do there? Steal? Murder? I do not care for where this seems to be heading, <CHARNAME>.~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 73
END

IF ~~ THEN BEGIN 149 // from:
  SAY #49576 /* ~So you now become a Shadow Thief yourself, <CHARNAME>. I shall watch your actions ever the more closely, then... beware, for I will tolerate nothing that I consider evil.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~RENAL~ 77
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 218
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 74
END

IF ~~ THEN BEGIN 150 // from:
  SAY #49589 /* ~Well, I for one cannot leave this man to die. Either we take him to find the aid he seeks, or I shall seek to do so on my own.~ */
  IF ~~ THEN REPLY #49590 /* ~Fine. If that's what you want to do, go ahead.~ */ GOTO 151
  IF ~~ THEN REPLY #49591 /* ~We've got more important things to do, Keldorn. Forget him.~ */ GOTO 152
  IF ~~ THEN REPLY #49592 /* ~Very well... we'll bring him to where he wants to go, then, if you're so insistent.~ */ EXTERN ~RENFELD~ 6
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #49593 /* ~I am disappointed in you, <CHARNAME>. I must do as I must, however. Seek me again after I am done, if you wish, at the Order's headquarters.~ */
  IF ~~ THEN DO ~ActionOverride("renfeld",DestroySelf())
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0903",644,501,S)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 150.1
  SAY #49594 /* ~I do not have a more important task than to protect the helpless. I will seek aid for this man on my own. Once I am done, you may seek me out at the Order's headquarters.~ */
  IF ~~ THEN DO ~ActionOverride("renfeld",DestroySelf())
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0903",644,501,S)
~ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #49775 /* ~Beware, <CHARNAME>! I sense much that is unnatural and evil within this creature! Do not parley with her... it will lead only to ill!~ */
  IF ~~ THEN EXTERN ~BODHI~ 2
END

IF ~~ THEN BEGIN 154 // from:
  SAY #49781 /* ~No. Do not deal with this creature, <CHARNAME>. If you do, I will not be a party to it. This is all I will say on the matter.~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~BODHI~ 130
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
END

IF ~~ THEN BEGIN 155 // from:
  SAY #49804 /* ~You have made your decision, I see. I will not consort with evil, <CHARNAME>, nor with those who would do so. Farewell.~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
MoveToPoint([1012.327])
EscapeArea()
~ EXTERN ~BODHI~ 121
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
MoveToPoint([1012.327])
EscapeArea()
~ EXTERN ~MAZZYJ~ 150
END

IF ~~ THEN BEGIN 156 // from:
  SAY #49810 /* ~Aye, and when that day comes, demon, we shall be there waiting for you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #49817 /* ~It is just as well. I sense a terrible evil within that creature and much prefer to see her gone. What is it about you, <CHARNAME>, that attracts such attentions?~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 223
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 59
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 90
END

IF ~~ THEN BEGIN 158 // from:
  SAY #49873 /* ~This is the perfect opportunity for us to aid a good cause where the city guard has not the chance, <CHARNAME>. Surely you would not allow such evil activity to continue?~ */
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Valygar")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 120
  IF ~  !IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 63
END

IF ~~ THEN BEGIN 159 // from:
  SAY #49884 /* ~You lie worse than ever, gnome. Surely they did not do such a thing.~ */
  IF ~~ THEN EXTERN ~JANJ~ 122
END

IF ~~ THEN BEGIN 160 // from:
  SAY #49904 /* ~Forgive my friend's rudeness, my lady. I shall free your from your bonds, and you are certainly free to go. I trust you have suffered no injury?~ */
  IF ~~ THEN EXTERN ~ELGEA~ 14
END

IF ~~ THEN BEGIN 161 // from:
  SAY #49952 /* ~Only a fool would prostrate himself before a god that would turn nature to his own purposes. Nature has no evil of its own—only the soul of your barren god has that honor.~ */
  IF ~~ THEN EXTERN ~ACOLYTE1~ 2
END

IF ~~ THEN BEGIN 162 // from:
  SAY #50063 /* ~It is good to see such a worthy <PRO_MANWOMAN> join the ranks of a righteous league. You will serve them well, <CHARNAME>.~ */
  IF ~~ THEN REPLY #50064 /* ~Before I go to Acolyte Byron, Oisig, may I ask you a question?~ */ EXTERN ~BHOISIG~ 50
END

IF ~~ THEN BEGIN 163 // from:
  SAY #50092 /* ~I knew we could not trust such a fiend! To arms, friends! We must not allow the beholder to gain use from the relic—ever!~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN DO ~Attack("Gaal")
~ EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN DO ~Attack("Gaal")
~ EXTERN ~MINSCJ~ 138
END

IF ~~ THEN BEGIN 164 // from:
  SAY #50094 /* ~It is too late, ghoul! Your master is dead, and you shall join him soon enough! Your evil cult is at an end!~ */
  IF ~~ THEN DO ~Attack("Gaal")
~ EXIT
END

IF ~~ THEN BEGIN 165 // from:
  SAY #50099 /* ~Wait, <CHARNAME>! Stay your wrath for a moment. You there... how can we believe your words? Why are you here if you are no longer part of this cult?~ */
  IF ~~ THEN EXTERN ~SASSAR~ 4
END

IF ~~ THEN BEGIN 166 // from:
  SAY #50104 /* ~I have sworn to deal with this cult, <CHARNAME>, and I will not forgo my promise... especially now that I am aware of its true nature. We must stop this creature, we must!~ */
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Minsc")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 86
  IF ~  !IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 139
END

IF ~~ THEN BEGIN 167 // from:
  SAY #50113 /* ~I do not like the sound of this. It has a distinct ring of dishonesty about it. No matter how rude the artist may have been, we should be honest with him, don't you think?~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~SCJERLIA~ 13
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 241
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 155
END

IF ~~ THEN BEGIN 168 // from:
  SAY #50116 /* ~Ha! So it appears it works out for the best after all. The artist rejected the material, but the alloy has been accepted on its own merits. I can live with that, certainly.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 169 // from:
  SAY #50119 /* ~Sir Sarles... I am sorry that my companion has not told you sooner. But we were not able to obtain exactly what you requested. This illithium is an alloy; it is not pure.~ */
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 170 // from: 169.0
  SAY #50120 /* ~I apologize, <CHARNAME>, but I cannot partake in a lie. Even to this man, for a small reason... I simply cannot. We... we tried our best, Sir Sarles.~ */
  IF ~~ THEN EXTERN ~SCSARLES~ 30
END

IF ~~ THEN BEGIN 171 // from:
  SAY #50145 /* ~For shame, gnome. Oghma is a sober god and not at all like you describe. One should respect even those one does not worship, and not make them the butt of jokes.~ */
  IF ~~ THEN EXTERN ~JANJ~ 133
END

IF ~~ THEN BEGIN 172 // from:
  SAY #50181 /* ~How sad to see a government that no longer serves its people. It is all some form of delusion, this "service"... the council rules as they will, and everyone knows this.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 173 // from:
  SAY #50187 /* ~That such bribery would be the norm is despicable... worse yet that you perpetrate it, gnome. How are the poor to get justice in such an environment?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #50224 /* ~Guardsman! I am Sir Keldorn of the Most Noble Order of the Radiant Heart. This man is destitute, and you would imprison him for this? I will not stand for this!~ */
  IF ~~ THEN EXTERN ~GGUARD01~ 5
END

IF ~~ THEN BEGIN 175 // from:
  SAY #50347 /* ~I am a knight, but not in the manner you suggest. I strive to uphold not only the law but protect the helpless and innocent... in an army, it is the nation that is most important.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 176 // from:
  SAY #50400 /* ~Or perhaps THIS is it, sir. Perhaps a thief attempted to steal it from you. Regardless, it is now back in your hands once again... as it should be.~ */
  IF ~~ THEN EXTERN ~GNOBLEM2~ 8
END

IF ~~ THEN BEGIN 177 // from:
  SAY #50412 /* ~Regardless of your debate, I will not allow the weak to be preyed upon. Call your man back, sir, or I shall be forced to intervene!~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN DO ~Attack("gphil03")
~ EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN DO ~Attack("gphil03")
~ EXTERN ~MINSCJ~ 144
END

IF ~~ THEN BEGIN 178 // from:
  SAY #50526 /* ~A drow elf? Here? One must wonder what plot the dark ones have in store. It appears justice is about to be laid... may its black and evil heart char into powder!~ */
  IF ~~ THEN EXTERN ~VICONI~ 8
END

IF ~~ THEN BEGIN 179 // from:
  SAY #50560 /* ~And justice is done. If all evil could meet such a fate, perhaps right would be restored to this world. I have pledged myself to such a cause, in Torm's name.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 180 // from:
  SAY #50563 /* ~Do not listen to the drow, <CHARNAME>. You have saved her, but you are not responsible for her. She is evil, I tell you! There is no place for her among us!~ */
  IF ~~ THEN EXTERN ~VICONI~ 21
END

IF ~~ THEN BEGIN 181 // from:
  SAY #50565 /* ~Silence, witch! Do not take her amongst us, <CHARNAME>! It will lead only to evil! I will not have it!~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~VICONI~ 25
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 431
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 114
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 249
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 147
END

IF ~~ THEN BEGIN 182 // from:
  SAY #51482 /* ~But... the deep gnomes are not evil! Why must this be done?!~ */
  IF ~~ THEN EXTERN ~UDPHAE01~ 62
END

IF ~~ THEN BEGIN 183 // from:
  SAY #52283 /* ~A terrible waste of life, to train one's charges so. <CHARNAME>, let us be away from this place before I spoil your quest by slaying each and every last foul thief I see here.~ */
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 266
  IF ~  !IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 88
END

IF ~~ THEN BEGIN 184 // from:
  SAY #52286 /* ~Not all of us are as focused on coin as <CHARNAME>, miss. Come, now... tell us what we are facing here so that we may plan for a proper assault.~ */
  IF ~~ THEN EXTERN ~NALIAJ~ 149
END

IF ~~ THEN BEGIN 185 // from:
  SAY #52292 /* ~Consider yourself paid for your services, <CHARNAME>. I insist we help the young lady whether you like it or not. What is the problem, exactly, young lady?~ */
  IF ~~ THEN EXTERN ~NALIA~ 50
END

IF ~~ THEN BEGIN 186 // from:
  SAY #52297 /* ~Step carefully, <CHARNAME>. I hear your words, and I am not impressed. I will stand against you with my blade should you go through with what you speak of.~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~FIRKRA02~ 36
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 163
  IF ~  !IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 128
END

IF ~~ THEN BEGIN 187 // from:
  SAY #52310 /* ~Foul fiend! Your filthy god's blood shows itself to me at last! Truly I was meant to be here to stop you from continuing! Have at you!~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~FIRKRA02~ 37
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~MAZZYJ~ 164
END

IF ~~ THEN BEGIN 188 // from:
  SAY #55197 /* ~We have come a long way, <CHARNAME>, to reach this day. Much has been lost, but at last the wizard lies dead. A victory in the truest sense of the word.~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 189 // from:
  SAY #55218 /* ~A place where the evil dwell after death, this place. I followed your call, <CHARNAME>, only because my duty does not end with the end of my life. Let us finish this here, if we can.~ [KELDOR99] */
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 268
  IF ~  !IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 95
  IF ~  IsValidForPartyDialogue("LCCORWIN")
!Global("CorwinHell","GLOBAL",1)
~ THEN DO ~SetGlobal("CorwinHell","GLOBAL",1)
~ EXTERN ~LCCORWIJ~ 30
END

IF ~~ THEN BEGIN 190 // from:
  SAY #55657 /* ~A dangerous "gift," but is it despicable in nature or simply unfortunate circumstance? She is just a child.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 12
END

IF ~~ THEN BEGIN 191 // from:
  SAY #55690 /* ~Foul traitor! How dare you consort with such evil! And you offer us a lame apology for this?! You shall suffer the consequences, fool!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 192 // from:
  SAY #55701 /* ~Your enslavement of these men and women is over, foul wench! No longer will you profit over their sweat... it ends today!~ */
  IF ~~ THEN EXTERN ~PIRMUR01~ 4
END

IF ~~ THEN BEGIN 193 // from:
  SAY #55707 /* ~We need no reward, good sir. <CHARNAME>, however, needs to know a way into the asylum... Sanik was to tell us before he was killed.~ */
  IF ~~ THEN EXTERN ~PIRMUR09~ 0
END

IF ~~ THEN BEGIN 194 // from:
  SAY #55724 /* ~You cannot always help so directly, young Mazzy, despite your heart's best intentions. Not all diseases are of the flesh.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 195 // from:
  SAY #55807 /* ~Bah! Enough, gnome! The island will sink beneath us before you are finished your blather! Enough, I say!~ */
  IF ~~ THEN EXTERN ~JANJ~ 160
END

IF ~~ THEN BEGIN 196 // from:
  SAY #55824 /* ~Sekolah. I read of this "god" once. The Shark-Father, ruthless and devoid of compassion. So is all of his race. You are a tool, perhaps, and after that... a meal.~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 11
END

IF ~~ THEN BEGIN 197 // from:
  SAY #55828 /* ~Hmph. Such evil creatures to dare make such pronouncements. I would send them all to a watery grave with Tyr's blessing if I had my way.~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 37
END

IF ~~ THEN BEGIN 198 // from:
  SAY #55839 /* ~What do we care about the fate of these creatures? They are all evil. I say let them perish from their own foolishness if that is what fate decrees.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~SAHPR1~ 56
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 465
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 138
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 174
END

IF ~~ THEN BEGIN 199 // from:
  SAY #55841 /* ~Your words do not sway me, woman. I am not misjudging these creatures. I know. And it is no less a fate than they would plan for us, were circumstances different.~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 56
END

IF ~~ THEN BEGIN 200 // from:
  SAY #55891 /* ~I dislike this. There is no honor in acting as a foul drow would. Better to let them kill themselves than to take part in such intrigue.~ */
  IF ~~ THEN DO ~SetGlobal("udPhaTimerOn","GLOBAL",0)
StartCutSceneMode()
StartCutSceneEx("Cut44r",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 201 // from:
  SAY #55908 /* ~Vile fiend! You would sacrifice the children of a silver dragon and consort with a demon, no less! No, this will not be!~ */
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~UDDEMON~ 22
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~VALYGARJ~ 85
  IF ~  !IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~MAZZYJ~ 175
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
Alignment("Anomen",LAWFUL_GOOD)
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~ANOMENJ~ 271
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
IsValidForPartyDialogue("Jaheira")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~JAHEIRAJ~ 470
  IF ~  !IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~MINSCJ~ 170
END

IF ~~ THEN BEGIN 202 // from:
  SAY #55932 /* ~Die, black-hearted fiend. May all the Hells swallow you whole.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 203 // from:
  SAY #55940 /* ~It was my understanding that these gnomes were not evil, <CHARNAME>. Why must you always carve a path of blood? This is disgusting!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 204 // from:
  SAY #55947 /* ~You did such a thing, <CHARNAME>? This man is well known as a hero across the realms... what were you thinking? Do you never stop to consider your actions?~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~C6DRIZZ1~ 2
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 473
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 272
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 145
END

IF ~~ THEN BEGIN 205 // from:
  SAY #55962 /* ~This man is a ranger and a being of worth, <CHARNAME>! A hero that I will not aid you in destroying! I stand against you in this!~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Viconia")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXIT
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~MAZZYJ~ 177
  IF ~  !IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Jaheira")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~JAHEIRAJ~ 474
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~MINSCJ~ 172
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Viconia")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~VICONIJ~ 146
END

IF ~~ THEN BEGIN 206 // from:
  SAY #55998 /* ~Fighting alongside Drizzt? An excellent show! Now the forces of right shall truly prevail over evil!~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 150
END

IF ~~ THEN BEGIN 207 // from:
  SAY #56007 /* ~What is this? Drizzt Do'Urden? This is a hero, <CHARNAME>... a famous ranger from the Ten Towns, even if he is a drow. What a pleasant surprise.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~C6BRUEN1~ 8
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 476
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 118
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 139
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 173
END

IF ~~ THEN BEGIN 208 // from:
  SAY #56024 /* ~We will not need luck. We have faith and good intentions as our guides.~ */
  IF ~~ THEN EXTERN ~UDDUER03~ 14
END

IF ~~ THEN BEGIN 209 // from:
  SAY #56040 /* ~Ah. Here it comes. Why did we even come here, <CHARNAME>? Is it not bad enough that we must face such evil without dirtying ourselves in the process?~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~ARAN~ 86
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 144
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 167
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 120
END

IF ~~ THEN BEGIN 210 // from:
  SAY #56042 /* ~This coming from one who is already more soiled than the proverbial pig in the playpen does not exactly fill me with shock.~ */
  IF ~~ THEN EXTERN ~ARAN~ 86
END

IF ~~ THEN BEGIN 211 // from:
  SAY #56058 /* ~Yes, of course we shall help the elven people if we can. There will be no victory this day if the wizard manages to crush everything that exists of this place.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~SUDEMIN~ 35
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 121
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 28
END

IF ~~ THEN BEGIN 212 // from:
  SAY #56069 /* ~I realize we must act in keeping with our drow appearance, but I begin to think you enjoy it. ~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 147
END

IF ~~ THEN BEGIN 213 // from:
  SAY #56078 /* ~You would spill her blood after all that has happened here?! You are mad, <CHARNAME>, and evil! I will not permit this!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 214 // from:
  SAY #56103 /* ~Justice is on our side this day, and in Tyr's name, we shall be victorious once and for all!~ [KELDOR98] */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
END

IF ~~ THEN BEGIN 215 // from:
  SAY #56115 /* ~If you are in need, we will help. I could do no other.~ */
  IF ~~ THEN EXTERN ~UDSVIR03~ 8
END

IF ~~ THEN BEGIN 216 // from:
  SAY #56133 /* ~This will not come to pass. I will not allow you to murder those that were asking for our help. Who will follow the righteous path?!~ */
  IF ~~ THEN REPLY #56134 /* ~Stand down, Keldorn. I will not attack them.~ */ EXTERN ~UDSVIR03~ 26
  IF ~~ THEN REPLY #56135 /* ~Do as you must. I have given an order I expect obeyed!~ */ DO ~SetGlobal("SvirHostile","GLOBAL",1)
LeaveParty()
Enemy()
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Aerie",LeaveParty())
ActionOverride("Aerie",Enemy())
~ SOLVED_JOURNAL #57768 /* ~Svirfneblin village concerns

I spoke with Goldander Blackenrock, lord of the svirfneblin village. His pompous title revealed the shallow nature of his needs. He spoke of a means that I might enter the drow city: by enlisting the aid of Adalon, a powerful creature that holds court at the base of the great staircase. Goldander wanted me to first perform a service for his village, defeating some creature that they had unearthed, and he offered to grant me access to Adalon as a reward, giving me a glow stone or some such so that I could pass through the darkness that protects her lair. I cut out the middleman and killed the lot of them.~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from:
  SAY #56167 /* ~I beg your pardon, my lady, but could you do nothing to impede their progress? You must have sensed how corrupt they were.~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 17
END

IF ~~ THEN BEGIN 218 // from:
  SAY #56171 /* ~I must confess that I do not find that appealing.~ */
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~UDSILVER~ 26
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 164
END

IF ~~ THEN BEGIN 219 // from:
  SAY #56228 /* ~Indeed, he has made enemies of most everyone he has met. It is with relief that I say I have rarely seen his equal in evil. ~ */
  IF ~~ THEN EXTERN ~SUDEMIN~ 12
END

IF ~~ THEN BEGIN 220 // from:
  SAY #56421 /* ~This feels wrong, <CHARNAME>. To destroy the grove forever just to deal with what is wrong now... no. No, this cannot be. We must find another way.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("HaerDalis")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 162
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 130
END

IF ~~ THEN BEGIN 221 // from:
  SAY #56427 /* ~The foul murderer from Athkatla has made his way here? Then he must be stopped! By all that is holy, his disgusting ways cannot continue!~ */
  IF ~~ THEN EXTERN ~TRSKIN02~ 17
END

IF ~~ THEN BEGIN 222 // from:
  SAY #56431 /* ~Wait, <CHARNAME>! There... there is more here than it seems. I sense evil... dire evil all around! And especially from the old woman!~ */
  IF ~~ THEN EXTERN ~TRRAK01~ 3
END

IF ~~ THEN BEGIN 223 // from:
  SAY #56433 /* ~I offer my apologies, goodman mayor. Sometimes, <CHARNAME> does not act as <PRO_HESHE> should. You have paid <PRO_HIMHER> already, so we shall help as we can.~ */
  IF ~  Global("ministertoldkillings","GLOBAL",0)
~ THEN EXTERN ~UHMAY01~ 11
  IF ~  Global("ministertoldkillings","GLOBAL",1)
~ THEN EXTERN ~UHMAY01~ 22
END

IF ~~ THEN BEGIN 224 // from:
  SAY #56437 /* ~No, <CHARNAME>, we will not squeeze this poor man for whatever he has left. The armor is worth much, if coin is all you desire. My apologies, goodman mayor.~ */
  IF ~~ THEN EXTERN ~UHMAY01~ 142
END

IF ~~ THEN BEGIN 225 // from:
  SAY #56444 /* ~I sense no taint of these shadows within this noble halfling, <CHARNAME>, if that is what you fear. I shall not leave this one imprisoned.~ */
  IF ~~ THEN DO ~SetGlobal("MazzyFreed","GLOBAL",1)
~ EXTERN ~MAZZY~ 13
END

IF ~~ THEN BEGIN 226 // from:
  SAY #56452 /* ~These people do not seem in control of themselves. They are servants, urged on through magical control to throw themselves on our blades... a sad way to perish, to be sure.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 227 // from:
  SAY #56456 /* ~There is little to question here, Anomen. You must uphold the law and think of the Order. To do otherwise is to risk everything that you have striven towards for so long.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~ANOMENJ~ 52
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 493
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 188
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 165
END

IF ~~ THEN BEGIN 228 // from:
  SAY #56460 /* ~In the end, your actions are your own choice, Anomen. I pray that you will take the path that you know is the right one.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("Cut10b",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 229 // from:
  SAY #56462 /* ~I know it is difficult to accept, my friend, but this is the best path. The law does not always lead to justice, but the alternative is chaos. Saerk will pay in the end.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~ANOMENJ~ 177
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 134
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 94
END

IF ~~ THEN BEGIN 230 // from:
  SAY #56468 /* ~Anomen, no! What have you done?! You... you have slaughtered an innocent! By Torm, you cannot see the justice in *this*!~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 281
END

IF ~~ THEN BEGIN 231 // from:
  SAY #56488 /* ~What? You have already received your payment, <CHARNAME>! We should help these people as we have pledged to! There is no honor in such cowardice!~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~BOUNHA~ 6
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 167
  IF ~  !IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 176
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 284
END

IF ~~ THEN BEGIN 232 // from:
  SAY #56495 /* ~The lad has no honor and abuses his position. It is a foul deed, this... but if we are to help Lady Nalia, we must find proof of his misdeeds. There is no other way.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("cut39a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 233 // from:
  SAY #56518 /* ~I have no idea what you intend, <CHARNAME>, but I'll not allow it. Worry not, boy... this is obviously <CHARNAME>'s idea of some ill-timed jest, that is all.~ */
  IF ~~ THEN EXTERN ~DALESON~ 14
END

IF ~~ THEN BEGIN 234 // from:
  SAY #56527 /* ~You should strive to find more charity in your heart, my lady, but we are not here to argue with you. Go out the way we came, and I am sure you will find your way to safety.~ */
  IF ~~ THEN EXTERN ~DELCIA~ 10
END

IF ~~ THEN BEGIN 235 // from:
  SAY #56534 /* ~I assure you, my lady, that I am of as noble blood as you are... although I make no pretense that I am more worthy as a result. Sir Keldorn Firecam, at your service.~ */
  IF ~~ THEN EXTERN ~DELCIA~ 48
END

IF ~~ THEN BEGIN 236 // from:
  SAY #56750 /* ~These... these are humans! Children, even, kept as slaves by these fiends! An outrage!~ */
  IF ~~ THEN DO ~SetGlobal("KeldornOutrage","GLOBAL",1)
~ EXTERN ~DADROW3~ 10
END

IF ~~ THEN BEGIN 237 // from:
  SAY #56876 /* ~Your reputation is such that you should not let us wait to see results. I question your motives even now.~ */
  IF ~~ THEN EXTERN ~ARAN~ 50
END

IF ~~ THEN BEGIN 238 // from:
  SAY #57377 /* ~Of course <PRO_HESHE> will not do this. Take your people and go, as you can. Your freedom may be short, but it is in your hands. May Torm travel with you.~ */
  IF ~  Global("DrowSlavesFree","GLOBAL",1)
~ THEN EXTERN ~DASLAVE1~ 7
  IF ~  Global("DrowSlavesFree","GLOBAL",2)
~ THEN EXTERN ~DASLAVE1~ 8
END

IF ~~ THEN BEGIN 239 // from:
  SAY #57678 /* ~<CHARNAME>, do you require the healing light of Torm? You seem ill at ease.~ */
  IF ~~ THEN REPLY #57679 /* ~I do not think my injury is physical, Keldorn, but thank you regardless.~ */ GOTO 240
  IF ~~ THEN REPLY #57680 /* ~Save it, Keldorn. Your faith and light cannot help me now.~ */ GOTO 241
  IF ~~ THEN REPLY #57681 /* ~I will be all right in a moment. Save your talents for later. We will surely need them.~ */ GOTO 242
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY #57682 /* ~I will maintain watch if you need to rest. Such a spiritual injury may have unforeseen effects. Take great care in the coming hours.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 241 // from: 239.1
  SAY #57683 /* ~Such a pessimistic attitude will only reinforce whatever damage the ritual has done to you. Keep a brave face, <CHARNAME>. You are not beaten yet.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 242 // from: 239.2
  SAY #57684 /* ~Very well, though I worry for your health. There is no telling what effects such a catastrophic amputation will have.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 243 // from:
  SAY #57715 /* ~<CHARNAME>! If I did not know you, I would be drawing my sword even now! That was the avatar of Bhaal, Lord of Murder!~ */
  IF ~~ THEN GOTO 244
END

IF ~~ THEN BEGIN 244 // from: 243.0
  SAY #57716 /* ~By taking your soul, Irenicus has left you open to possession by the energies of a dead god! Not since the Time of Troubles have I felt such evil.~ */
  IF ~~ THEN GOTO 245
END

IF ~~ THEN BEGIN 245 // from: 244.0
  SAY #57717 /* ~Do not succumb again. Your mortal being will fade in the wake of such evil power. I will be forced to end your suffering if you... lose yourself.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 246 // from:
  SAY #58139 /* ~I shall never again say this, but I believe we should hurry to Aran's task. If our enemy is his enemy, we may best achieve our goal by helping this guild.~ */
  IF ~  !IsValidForPartyDialogue("ANOMEN")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~ANOMENJ~ 296
END

IF ~~ THEN BEGIN 247 // from:
  SAY #58140 /* ~And that would accomplish what? Death on a grand scale, and make our rescue of Imoen all the harder. Her life and well-being must come first.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 297
END

IF ~~ THEN BEGIN 248 // from:
  SAY #58230 /* ~The path of honor dictates that I see this through to the end, my friend... no matter what. I would not be able to lift my eyes were I to abandon you while such an evil remains unchecked. I could serve good no greater than by what I do now.~ */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 51
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
END

IF ~~ THEN BEGIN 249 // from:
  SAY #58516 /* ~<CHARNAME> is no fool, wizard... and neither is Valygar, nor I. You shall not have this man, for we shall fight to the last to prevent such an event!~ */
  IF ~~ THEN EXTERN ~TOLGER~ 81
END

IF ~~ THEN BEGIN 250 // from:
  SAY #58748 /* ~A betrayal from within our own company! There is no crime more condemned amongst the Order. To abandon your fellows...~ */
  IF ~  !IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~YOSHJ~ 114
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 190
  IF ~  IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~EDWINJ~ 161
  IF ~  IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MAZZYJ~ 201
  IF ~  IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~JANJ~ 182
  IF ~  IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~VALYGARJ~ 119
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~HAERDAJ~ 150
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~CERNDJ~ 137
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 211
END

IF ~~ THEN BEGIN 251 // from:
  SAY #59879 /* ~I am not the one you seek, Reynald de Chatillon. You are mistaken. I feel pity for one who has been reduced to pettiness and evil, no more.~ */
  IF ~~ THEN EXTERN ~KAYPAL02~ 25
END

IF ~~ THEN BEGIN 252 // from:
  SAY #70409 /* ~Odren and his followers deserve to die for this betrayal! Their actions are a disgrace to all who follow Helm's teachings!~ */
  IF ~~ THEN EXTERN ~GORAPP1~ 7
END

IF ~~ THEN BEGIN 253 // from:
  SAY #70500 /* ~There is... something here, <CHARNAME>. Something I cannot quite put a name to. It is unsettling, but I... I do not think it is evil.~ */
  IF ~~ THEN EXTERN ~GORDEMO~ 2
END

IF ~~ THEN BEGIN 254 // from:
  SAY #70554 /* ~Quiet the madness in your mind, elf. I can only imagine the horrors your eyes have seen... but I ask you to look closely at me. I am no demon, I swear by Torm's name.~ */
  IF ~~ THEN EXTERN ~GORMAD1~ 11
END

IF ~~ THEN BEGIN 255 // from:
  SAY #70532 /* ~You should be ashamed of your actions, priest! You knew what we would face all along!~ */
  IF ~~ THEN EXTERN ~GORODR1~ 35
END

IF ~~ THEN BEGIN 256 // from:
  SAY #70519 /* ~Unable? This must be a cause of concern, then, for the Watcher god is unforgiving to those who do not perform as he requires.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 8
END

IF ~~ THEN BEGIN 257 // from:
  SAY #70505 /* ~I have no wish to trick Odren despite what he may or may not have done. I suggest we speak to him, if nothing else, rather than... comply with this "thing."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 258 // from:
  SAY #80741 /* ~Cute, perhaps, but it's a wild beast. This is what is best for him. It cannot be trusted around normal people.~ */
  IF ~~ THEN EXTERN ~WILSON~ 16
  IF ~  IsValidForPartyDialogue("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 50
END

IF ~~ THEN BEGIN 259 // from:
  SAY #74536 /* ~Answer the question, blackguard. What are you doing here?~ */
  IF ~~ THEN EXTERN ~DORN~ 5
END

IF ~~ THEN BEGIN 260 // from:
  SAY #74545 /* ~He threatens the Order of the Radiant Heart! We cannot just leave.~ */
  IF ~~ THEN REPLY #74546 /* ~You're right. I'm sorry, Dorn, but whatever you've got planned, I won't allow it to happen.~ */ EXTERN ~DORN~ 7
  IF ~  !InParty("ANOMEN")
~ THEN REPLY #74547 /* ~Sure we can. Just do what I do.~ */ GOTO 261
  IF ~  InParty("ANOMEN")
~ THEN REPLY #74547 /* ~Sure we can. Just do what I do.~ */ EXTERN ~ANOMENJ~ 319
  IF ~  !InParty("ANOMEN")
~ THEN REPLY #74548 /* ~We can, and we will.~ */ GOTO 261
  IF ~  InParty("ANOMEN")
~ THEN REPLY #74548 /* ~We can, and we will.~ */ EXTERN ~ANOMENJ~ 319
END

IF ~~ THEN BEGIN 261 // from: 260.3 260.1
  SAY #74557 /* ~For Torm!~ */
  IF ~  !InParty("ANOMEN")
~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("KELDORN",Enemy())
~ EXIT
  IF ~  InParty("ANOMEN")
~ THEN DO ~ActionOverride("ANOMEN",LeaveParty())
ActionOverride("ANOMEN",SetLeavePartyDialogueFile())
ActionOverride("ANOMEN",ChangeAIScript("",DEFAULT))
ActionOverride("ANOMEN",Enemy())
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("KELDORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 262 // from:
  SAY #74558 /* ~You plan to attack a temple of the Radiant Heart, <CHARNAME>? You know I cannot let that stand.~ */
  IF ~~ THEN REPLY #74559 /* ~Keldorn, my friend, you need to lighten up. Don't you know a joke when you hear one?~ */ GOTO 264
  IF ~~ THEN REPLY #74560 /* ~Relax, Keldorn. It was a plan, barely that... 'twas but the first tiny inkling of a scheme, if not less, the barest sketch of the notion of the vague possibility of a plot. So this one doesn't come to fruition. I'll live. I've got others.~ */ GOTO 264
  IF ~~ THEN REPLY #74561 /* ~You can't let that stand? Then I can't let you stand. Draw your blade!~ */ DO ~ActionOverride("ANOMEN",LeaveParty())
ActionOverride("ANOMEN",SetLeavePartyDialogueFile())
ActionOverride("ANOMEN",ChangeAIScript("",DEFAULT))
ActionOverride("ANOMEN",Enemy())
LeaveParty()
ActionOverride("KELDORN",Enemy())
~ EXIT
END

IF WEIGHT #13 ~  Global("OHD_anomenkeldorninterject","GLOBAL",1)
~ THEN BEGIN 263 // from:
  SAY #74558 /* ~You plan to attack a temple of the Radiant Heart, <CHARNAME>? You know I cannot let that stand.~ */
  IF ~~ THEN REPLY #74559 /* ~Keldorn, my friend, you need to lighten up. Don't you know a joke when you hear one?~ */ DO ~SetGlobal("OHD_anomenkeldorninterject","GLOBAL",2)
~ GOTO 264
  IF ~~ THEN REPLY #74560 /* ~Relax, Keldorn. It was a plan, barely that... 'twas but the first tiny inkling of a scheme, if not less, the barest sketch of the notion of the vague possibility of a plot. So this one doesn't come to fruition. I'll live. I've got others.~ */ DO ~SetGlobal("OHD_anomenkeldorninterject","GLOBAL",2)
~ GOTO 264
  IF ~~ THEN REPLY #74561 /* ~You can't let that stand? Then I can't let you stand. Draw your blade!~ */ DO ~SetGlobal("OHD_anomenkeldorninterject","GLOBAL",2)
ActionOverride("ANOMEN",LeaveParty())
ActionOverride("ANOMEN",SetLeavePartyDialogueFile())
ActionOverride("ANOMEN",ChangeAIScript("",DEFAULT))
ActionOverride("ANOMEN",Enemy())
LeaveParty()
ActionOverride("KELDORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 264 // from: 263.1 263.0 262.1 262.0
  SAY #74562 /* ~You've a sharp wit, <CHARNAME>, but on this occasion you fail to amuse.~ */
  IF ~  !InParty("dorn")
~ THEN REPLY #74563 /* ~Forgive me, my friend. Let me make it up to you by dealing with this blackguard.~ */ EXTERN ~DORN~ 9
  IF ~  InParty("dorn")
~ THEN REPLY #74563 /* ~Forgive me, my friend. Let me make it up to you by dealing with this blackguard.~ */ EXTERN ~DORNJ~ 282
END

IF WEIGHT #14 ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 265 // from:
  SAY #75720 /* ~I'm too old to be climbing trees, <CHARNAME>.~ */
  IF ~  !IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
!IsValidForPartyDialogue("neera")
!IsValidForPartyDialogue("hexxat")
~ THEN REPLY #75721 /* ~Better to climb than fall from them, Keldorn.~ */ DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  !IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
!IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("hexxat")
~ THEN REPLY #75721 /* ~Better to climb than fall from them, Keldorn.~ */ EXTERN ~HEXXATJ~ 2
  IF ~  !IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
IsValidForPartyDialogue("neera")
~ THEN REPLY #75721 /* ~Better to climb than fall from them, Keldorn.~ */ EXTERN ~NEERAJ~ 15
  IF ~  !IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
IsValidForPartyDialogue("dorn")
~ THEN REPLY #75721 /* ~Better to climb than fall from them, Keldorn.~ */ EXTERN ~DORNJ~ 502
  IF ~  !IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
IsValidForPartyDialogue("viconia")
~ THEN REPLY #75721 /* ~Better to climb than fall from them, Keldorn.~ */ EXTERN ~VICONIJ~ 410
  IF ~  !IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
IsValidForPartyDialogue("valygar")
~ THEN REPLY #75721 /* ~Better to climb than fall from them, Keldorn.~ */ EXTERN ~VALYGARJ~ 128
  IF ~  !IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
IsValidForPartyDialogue("minsc")
~ THEN REPLY #75721 /* ~Better to climb than fall from them, Keldorn.~ */ EXTERN ~MINSCJ~ 252
  IF ~  !IsValidForPartyDialogue("korgan")
IsValidForPartyDialogue("mazzy")
~ THEN REPLY #75721 /* ~Better to climb than fall from them, Keldorn.~ */ EXTERN ~MAZZYJ~ 208
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN REPLY #75721 /* ~Better to climb than fall from them, Keldorn.~ */ EXTERN ~KORGANJ~ 234
END

IF WEIGHT #15 ~  Global("OHD_ritual_interjects","GLOBAL",1)
~ THEN BEGIN 266 // from:
  SAY #77505 /* ~The infernal stench of the Abyss is strong in this place.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_ritual_interjects","GLOBAL",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN EXTERN ~IMOEN2J~ 56
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 771
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 236
END

IF ~~ THEN BEGIN 267 // from:
  SAY #81037 /* ~The shadows of the unquiet dead! What madness have you brought us to this time, <CHARNAME>?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 268 // from:
  SAY #102471 /* ~You just saw this monster murder a woman in front of your eyes, and you invite her to join our ranks? No! I'll not allow it.~ */
  IF ~~ THEN EXTERN ~HEXXAT~ 3
END

IF WEIGHT #16 ~  Global("OHH_keldorntalks","GLOBAL",2)
~ THEN BEGIN 269 // from:
  SAY #86215 /* ~This is intolerable, <CHARNAME>. You cannot allow this undead thing to accompany us.~ */
  IF ~~ THEN REPLY #86226 /* ~You are right. Hexxat, it has been a pleasure to know you, but you must leave now.~ */ DO ~SetGlobal("OHH_keldorntalks","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 5
  IF ~~ THEN REPLY #86227 /* ~I realize she makes you uncomfortable, Keldorn. But I believe she has much to offer.~ */ DO ~SetGlobal("OHH_keldorntalks","GLOBAL",3)
~ GOTO 273
  IF ~~ THEN REPLY #86228 /* ~Hexxat is a woman, Keldorn. Show a little respect.~ */ DO ~SetGlobal("OHH_keldorntalks","GLOBAL",3)
~ GOTO 274
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #86229 /* ~I can and I will. If you don't like it, you may leave.~ */ DO ~SetGlobal("OHH_keldorntalks","GLOBAL",3)
~ GOTO 270
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #86229 /* ~I can and I will. If you don't like it, you may leave.~ */ DO ~SetGlobal("OHH_keldorntalks","GLOBAL",3)
~ GOTO 271
END

IF ~~ THEN BEGIN 270 // from: 277.0 276.2 273.3 273.0 269.3
  SAY #86216 /* ~I shall not suffer this monstrosity's presence!~ */
  IF ~~ THEN DO ~AddJournalEntry(95220,INFO)
LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack("hexxat")
~ EXIT
END

IF ~~ THEN BEGIN 271 // from: 276.3 276.0 273.4 273.1 269.4
  SAY #86217 /* ~I shall stay for the time being. But know this, <CHARNAME>—this situation cannot be continued for long.~ */
  IF ~~ THEN DO ~AddJournalEntry(95218,INFO)
SetGlobal("OHH_keldorntalks","GLOBAL",4)
SetGlobalTimer("OHH_keldorntalks_timer","GLOBAL",SEVEN_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 272 // from:
  SAY #86220 /* ~You've made the right decision. The gods do not look kindly on those who tolerate abominations.~ */
  IF ~~ THEN DO ~AddJournalEntry(95218,INFO)
SetGlobal("OHH_keldorntalks","GLOBAL",4)
SetGlobalTimer("OHH_keldorntalks_timer","GLOBAL",SEVEN_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 273 // from: 269.1
  SAY #86221 /* ~She offers naught but damnation. You flirt with your own destruction.~ */
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #86230 /* ~Hardly an unusual situation.~ */ GOTO 270
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #86230 /* ~Hardly an unusual situation.~ */ GOTO 271
  IF ~~ THEN REPLY #86231 /* ~Perhaps this time my destruction will go all the way. A <PRO_GIRLBOY> can only hang on so long.~ */ GOTO 276
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #86232 /* ~That is my decision.~ */ GOTO 270
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #86232 /* ~That is my decision.~ */ GOTO 271
END

IF ~~ THEN BEGIN 274 // from: 269.2
  SAY #86222 /* ~Respect for this abomination? Never. You flirt with damnation, <CHARNAME>! Be rid of her, before it is too late.~ */
  IF ~~ THEN REPLY #86233 /* ~If you insist on being rude, perhaps you should leave.~ */ GOTO 275
  IF ~~ THEN REPLY #86234 /* ~As you wish. Hexxat, I'm afraid my paladin here insists that you leave.~ */ EXTERN ~HEXXATJ~ 5
  IF ~~ THEN REPLY #86235 /* ~I'd sooner be rid of you, you pious sack of dung.~ */ GOTO 275
END

IF ~~ THEN BEGIN 275 // from: 274.2 274.0
  SAY #86223 /* ~You choose this vile aberration over me? So be it. But you are making a grave error, <CHARNAME>. I pray you turn from your path before it is too late.~ */
  IF ~~ THEN DO ~AddJournalEntry(95221,INFO)
LeaveParty()
SetGlobal("KickedOut","LOCALS",1)
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0903",644,501,S)
~ EXIT
END

IF ~~ THEN BEGIN 276 // from: 273.2
  SAY #86224 /* ~This is no joking matter!~ */
  IF ~~ THEN REPLY #86236 /* ~Just give her a chance, Keldorn. Do it for me.~ */ GOTO 271
  IF ~~ THEN REPLY #95216 /* ~You need to lighten up, Keldorn. So she's a vampire, so what? We've all got issues.~ */ GOTO 277
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #95217 /* ~Seriously, then: Hexxat stays. You can go or not, the choice is yours.~ */ GOTO 270
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #96517 /* ~I look forward to seeing what you do next.~ */ GOTO 271
END

IF ~~ THEN BEGIN 277 // from: 276.1
  SAY #86225 /* ~My only issue is with this vile creature you've chosen to accept as an ally.~ */
  IF ~~ THEN GOTO 270
END

IF WEIGHT #17 ~  Global("OHH_keldorntalks","GLOBAL",5)
~ THEN BEGIN 278 // from:
  SAY #95222 /* ~Enough! I'll suffer this vile aberration's presence no longer!~ */
  IF ~~ THEN REPLY #95234 /* ~I'm sorry to hear that.~ */ DO ~SetGlobal("OHH_keldorntalks","GLOBAL",6)
~ GOTO 279
  IF ~~ THEN REPLY #95235 /* ~Which vile aberration you're talking about specifically? There are so many...~ */ DO ~SetGlobal("OHH_keldorntalks","GLOBAL",6)
~ GOTO 279
  IF ~~ THEN REPLY #95236 /* ~Explain yourself, paladin.~ */ DO ~SetGlobal("OHH_keldorntalks","GLOBAL",6)
~ GOTO 279
END

IF ~~ THEN BEGIN 279 // from: 278.2 278.1 278.0
  SAY #95223 /* ~The vampire goes or I do, <CHARNAME>.~ */
  IF ~~ THEN REPLY #95237 /* ~Then I guess you'd better go, as I am well pleased with Hexxat's company.~ */ EXTERN ~HEXXATJ~ 8
  IF ~~ THEN REPLY #95238 /* ~As you wish. Hexxat, you're out of here.~ */ EXTERN ~HEXXATJ~ 6
  IF ~~ THEN REPLY #95239 /* ~Please don't do this, Keldorn. You know how I hate making decisions.~ */ GOTO 280
  IF ~~ THEN REPLY #95240 /* ~I do not respond well to ultimatums, Keldorn.~ */ GOTO 280
END

IF ~~ THEN BEGIN 280 // from: 279.3 279.2
  SAY #95224 /* ~You've left me no other alternative.~ */
  IF ~~ THEN REPLY #95241 /* ~And you've done the same. I'm afraid this is where we part ways.~ */ GOTO 285
  IF ~~ THEN REPLY #95242 /* ~Very well. I'm sorry, Hexxat—the paladin has left me with no choice. You will have to leave.~ */ EXTERN ~HEXXATJ~ 6
  IF ~~ THEN REPLY #95243 /* ~Then here is my answer, you judgmental sack of rotted onions—die!~ */ GOTO 281
END

IF ~~ THEN BEGIN 281 // from: 280.2
  SAY #95225 /* ~You first!~ */
  IF ~~ THEN DO ~AddJournalEntry(95250,INFO)
LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack("hexxat")
~ EXIT
END

IF ~~ THEN BEGIN 282 // from:
  SAY #95228 /* ~You've made the right choice. Creatures such as her invite naught but misery.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 283 // from:
  SAY #95230 /* ~A beautiful face cannot hide the stink of your corrupted spirit, vampire!~ */
  IF ~~ THEN EXTERN ~HEXXATJ~ 9
END

IF ~~ THEN BEGIN 284 // from:
  SAY #95232 /* ~What you need is annihilation, and I'll happily supply it!~ */
  IF ~~ THEN DO ~AddJournalEntry(95250,INFO)
LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack("hexxat")
~ EXIT
END

IF ~~ THEN BEGIN 285 // from: 280.0
  SAY #95233 /* ~By siding with that thing, you invite your own destruction. I'll not be a party to it. Farewell.~ */
  IF ~~ THEN DO ~AddJournalEntry(95248,INFO)
LeaveParty()
SetGlobal("KickedOut","LOCALS",1)
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0903",644,501,S)
~ EXIT
END

IF WEIGHT #18 ~  Global("OHH_keldornfight","GLOBAL",2)
~ THEN BEGIN 286 // from:
  SAY #99455 /* ~Torm be praised! Justice has been done. The vampire's victims are avenged.~ */
  IF ~~ THEN REPLY #99456 /* ~Praise Torm!~ */ DO ~SetGlobal("OHH_keldornfight","GLOBAL",3)
ChangeAIScript("",GENERAL)
ChangeAIScript("",SPECIFICS)
~ EXIT
  IF ~~ THEN REPLY #99457 /* ~Great. Can we get on with our lives now?~ */ DO ~SetGlobal("OHH_keldornfight","GLOBAL",3)
ChangeAIScript("",GENERAL)
ChangeAIScript("",SPECIFICS)
~ EXIT
  IF ~~ THEN REPLY #99458 /* ~Yes, and I'm sure they rest easier because of it. Let's get out of here.~ */ DO ~SetGlobal("OHH_keldornfight","GLOBAL",3)
ChangeAIScript("",GENERAL)
ChangeAIScript("",SPECIFICS)
~ EXIT
END

IF ~~ THEN BEGIN 287 // from:
  SAY #87845 /* ~Seeing you like this fills me with grief, Neera. I will do everything in my power to help.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 132
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN EXTERN ~DORNJ~ 828
  IF ~  IsValidForPartyDialogue("MAZZY")
~ THEN EXTERN ~MAZZYJ~ 210
END

IF ~~ THEN BEGIN 288 // from:
  SAY #93409 /* ~Treachery is a terrible thing, but the treachery of one to whom you have given your heart!—that is something more terrible than words can convey. Telana's burden is a heavy one.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Neera")
~ THEN EXTERN ~NEERAJ~ 58
END

IF ~~ THEN BEGIN 289 // from:
  SAY #90281 /* ~We must do this. However small it may seem, it is the world to her. It may be the only thing she has left of her mother.~ */
  IF ~~ THEN DO ~AddJournalEntry(94465,QUEST)
~ EXIT
  IF ~  IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~ANOMENJ~ 351
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 429
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 258
END

IF ~~ THEN BEGIN 290 // from:
  SAY #93254 /* ~We should not free these slaves until we are sure they can escape safely. I'd rather not kill the mercenaries, either. Many doubtless deserve death, but some may not.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 98
END

IF ~~ THEN BEGIN 291 // from:
  SAY #272423 /* ~Of course Captain. How can I help you?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 25
END

IF ~~ THEN BEGIN 292 // from:
  SAY #272526 /* ~Yes, two daughters. I love them dearly.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 26
END

IF ~~ THEN BEGIN 293 // from:
  SAY #272426 /* ~That's something I've struggled with as well, Captain. There is no right answer. What is most important is that your daughter understands that you love her, and that at times it is necessary for you to be apart from her to perform your duties to the .. Flaming Fist, is it?~ */
  IF ~~ THEN GOTO 294
END

IF ~~ THEN BEGIN 294 // from: 293.0
  SAY #272427 /* ~Who is helping to raise your child while you are on this assignment?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 28
END

IF ~~ THEN BEGIN 295 // from:
  SAY #272429 /* ~And where is your husband? Is he not helping to raise her?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 29
END

IF ~~ THEN BEGIN 296 // from:
  SAY #272431 /* ~I see... it's important, Captain, for a child's father, or a father figure, to be a part of a child's life.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 30
END

IF ~~ THEN BEGIN 297 // from:
  SAY #272434 /* ~Any time, Captain Corwin. Let us hope that we are both able to return to our families soon.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 298 // from:
  SAY #272423 /* ~Of course Captain. How can I help you?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 33
END

IF ~~ THEN BEGIN 299 // from:
  SAY #272526 /* ~Yes, two daughters. I love them dearly.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 34
END

IF ~~ THEN BEGIN 300 // from:
  SAY #272426 /* ~That's something I've struggled with as well, Captain. There is no right answer. What is most important is that your daughter understands that you love her, and that at times it is necessary for you to be apart from her to perform your duties to the .. Flaming Fist, is it?~ */
  IF ~~ THEN GOTO 301
END

IF ~~ THEN BEGIN 301 // from: 300.0
  SAY #272427 /* ~Who is helping to raise your child while you are on this assignment?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 36
END

IF ~~ THEN BEGIN 302 // from:
  SAY #272429 /* ~And where is your husband? Is he not helping to raise her?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 37
END

IF ~~ THEN BEGIN 303 // from:
  SAY #272431 /* ~I see... it's important, Captain, for a child's father, or a father figure, to be a part of a child's life.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 38
END

IF ~~ THEN BEGIN 304 // from:
  SAY #272434 /* ~Any time, Captain Corwin. Let us hope that we are both able to return to our families soon.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 305 // from:
  SAY #67874 /* ~To become a power that would walk the planes at will... I cannot imagine facing such a choice myself, <CHARNAME>, and I do not envy you the task.~ [KELD2515] */
  IF ~~ THEN GOTO 306
END

IF ~~ THEN BEGIN 306 // from: 305.0
  SAY #67875 /* ~Were the choice my own, however... I would not leave behind my beloved Maria and both my children forever; I could not endure it. And the thought of dealing with the evil taint as you do... No, it would not be for me.~ [KELD2516] */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 139
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 376
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 442
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 274
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 574
  IF ~  IsValidForPartyDialogue("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 138
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 375
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 440
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 272
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 572
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 153
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 2
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 3
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 261
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 327
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 168
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 212
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 143
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 211
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 213
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 255
END

IF ~~ THEN BEGIN 307 // from:
  SAY #70381 /* ~I sympathize with this man, but his daughter did break the law.~ */
  IF ~~ THEN EXTERN ~AMMAYOR~ 6
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 330
END

IF ~~ THEN BEGIN 308 // from:
  SAY #70386 /* ~I know our mission is of great importance, <CHARNAME>, but I do not approve of dealing with these... criminals.~ */
  IF ~~ THEN EXTERN ~AMCARRAS~ 13
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 214
END

IF ~~ THEN BEGIN 309 // from:
  SAY #70409 /* ~Odren and his followers deserve to die for this betrayal! Their actions are a disgrace to all who follow Helm's teachings!~ */
  IF ~~ THEN EXTERN ~GORAPP1~ 7
END

IF ~~ THEN BEGIN 310 // from:
  SAY #70482 /* ~You... you bring such an animal amongst us without any sort of restraint? I am... uncomfortable with such an arrangement. How can you trust this man?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 311 // from:
  SAY #70500 /* ~There is... something here, <CHARNAME>. Something I cannot quite put a name to. It is unsettling, but I... I do not think it is evil.~ */
  IF ~~ THEN EXTERN ~GORDEMO~ 2
END

IF ~~ THEN BEGIN 312 // from:
  SAY #70505 /* ~I have no wish to trick Odren despite what he may or may not have done. I suggest we speak to him, if nothing else, rather than... comply with this "thing."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 313 // from:
  SAY #70519 /* ~Unable? This must be a cause of concern, then, for the Watcher god is unforgiving to those who do not perform as he requires.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 8
END

IF ~~ THEN BEGIN 314 // from:
  SAY #70532 /* ~You should be ashamed of your actions, priest! You knew what we would face all along!~ */
  IF ~~ THEN EXTERN ~GORODR1~ 35
END

IF ~~ THEN BEGIN 315 // from:
  SAY #70554 /* ~Quiet the madness in your mind, elf. I can only imagine the horrors your eyes have seen... but I ask you to look closely at me. I am no demon, I swear by Torm's name.~ */
  IF ~~ THEN EXTERN ~GORMAD1~ 11
END

IF ~~ THEN BEGIN 316 // from:
  SAY #71311 /* ~Bodies in the streets... young women hawking sin... what type of town is this?~ */
  IF ~~ THEN EXTERN ~SARPRO01~ 2
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 181
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 337
END

IF ~~ THEN BEGIN 317 // from:
  SAY #71445 /* ~<CHARNAME>! I have long suspected you were an evil blight upon the earth... this confirms it! Your villainy shall not go unpunished!~ */
  IF ~  True()
~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~KORGANJ~ 265
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~VICONIJ~ 466
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~EDWINJ~ 222
END

IF ~~ THEN BEGIN 318 // from:
  SAY #71633 /* ~A statue?! They wouldn't do such an absurd thing, would they? I am no hero to deserve such lauds. Come, <CHARNAME>... let us leave this writer to his fictions.~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 319 // from:
  SAY #72365 /* ~<CHARNAME>! I have long suspected you were an evil blight upon the earth... this confirms it! All who stand for what is right and true, join me in defending this innocent woman against <CHARNAME>'s vile attack!~ */
  IF ~~ THEN DO ~ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 320 // from:
  SAY #72465 /* ~The words of this foul cretin are an affront to my very ears! <CHARNAME>, surely you cannot tolerate this villain and his unscrupulous offers!~ */
  IF ~~ THEN REPLY #72466 /* ~Settle down, Keldorn. This will all turn out okay.~ */ GOTO 321
  IF ~~ THEN REPLY #72467 /* ~The last thing I need is a lecture from a washed-up old geezer like you!~ */ GOTO 322
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #72468 /* ~You have earned my trust through our shared deeds, <CHARNAME>. Therefore, I shall exercise patience in this matter.~ */
  IF ~~ THEN EXTERN ~SARKIS01~ 34
END

IF ~~ THEN BEGIN 322 // from: 320.1
  SAY #72469 /* ~You are nothing but a cur! <CHARNAME>, the <PRO_LADYLORD> of all that is rotten and vile! My honor demands that I leave your company at once!~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~SARKIS01~ 34
END

IF ~~ THEN BEGIN 323 // from:
  SAY #72570 /* ~Kobolds spread like vermin, <CHARNAME>. Even though it may be beneath us, we should stamp out their nest.~ */
  IF ~~ THEN EXTERN ~BAZEYE01~ 13
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 274
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 268
END
