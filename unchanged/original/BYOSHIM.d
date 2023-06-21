// creator  : weidu (version 24900)
// argument : BYOSHIM.DLG
// game     : .
// source   : ./override/BYOSHIM.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BYOSHIM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #18 /* Triggers after states #: 3 7 11 24 39 48 54 56 59 61 64 69 71 74 76 87 92 95 even though they appear after this state */
~  InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("CDYoshimoAerieBanter","LOCALS",2)
~ THEN BEGIN 0 // from:
  SAY #2631 /* ~Amidst tears and laughter, an angel rises! Hail, Aerie, and welcome back.~ */
  IF ~~ THEN DO ~SetGlobal("CDYoshimoAerieBanter","LOCALS",3)
~ EXTERN ~BAERIE~ 17
END

IF ~~ THEN BEGIN 1 // from:
  SAY #2635 /* ~No apologies from so fair a blossom. We were fools to let you fall.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 18
END

IF ~~ THEN BEGIN 2 // from:
  SAY #2637 /* ~As you wish, lass.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  InParty("Mazzy")
HPLT("Mazzy",20)
!StateCheck("Mazzy",STATE_SLEEPING)
CombatCounter(0)
Global("BYoshimo1","LOCALS",0)
~ THEN BEGIN 3 // from:
  SAY #5022 /* ~Brave halfling lass! With the scurrying of little feet, you throw yourself into the fray. It is so cute to see the little ones fight. Like a fearless samurai you are, Mazzy.~ [YOSHIM44] */
  IF ~~ THEN DO ~SetGlobal("BYoshimo1","LOCALS",1)
~ EXTERN ~BMAZZY~ 77
END

IF ~~ THEN BEGIN 4 // from:
  SAY #5023 /* ~I cannot help it! You are like a miniature prophet of doom.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 78
END

IF ~~ THEN BEGIN 5 // from:
  SAY #5024 /* ~I meant no offense, Mazzy. You should be flattered! I don't think you're ugly...~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 79
END

IF ~~ THEN BEGIN 6 // from:
  SAY #5025 /* ~Yes, mistress.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 80
END

IF WEIGHT #17 /* Triggers after states #: 11 24 39 48 54 56 59 61 64 69 71 74 76 87 92 95 even though they appear after this state */
~  InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("BYoshimo2","LOCALS",0)
AreaType(DUNGEON)
~ THEN BEGIN 7 // from:
  SAY #5031 /* ~Young lovely, you must be wary here... any traps we encounter, it is up to us to find and disarm them before they bring harm to the rest of the party.~ [YOSHIM45] */
  IF ~~ THEN DO ~SetGlobal("BYoshimo2","LOCALS",1)
~ EXTERN ~BNALIA~ 22
END

IF ~~ THEN BEGIN 8 // from:
  SAY #5032 /* ~But I have seen many traps intricate enough to fool even the most able. I remember one I encountered long ago... it worked as a pressure plate via springs set into wood.~ */
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 9 // from:
  SAY #5033 /* ~I cannot bear to have you angry with me. I just do not want to see you hurt. A friend can do no less.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 24
END

IF ~~ THEN BEGIN 10 // from:
  SAY #5034 /* ~You will not, Nalia... I have confidence in you!~ */
  IF ~~ THEN EXTERN ~BNALIA~ 25
END

IF WEIGHT #3 /* Triggers after states #: 71 74 even though they appear after this state */
~  See(Player1)
GlobalTimerExpired("YoshimoTalksPC","GLOBAL")
!StateCheck(Player1,STATE_SLEEPING)
Global("BYoshimo3","LOCALS",0)
~ THEN BEGIN 11 // from:
  SAY #5040 /* ~Tell me, how did you get into adventuring? It is a dangerous business, as you well know. Any one of us could die without even a moment's notice.~ [YOSHIM58] */
  IF ~~ THEN REPLY #5041 /* ~I did not so much get into adventuring as it was forced upon me. ~ */ DO ~SetGlobal("BYoshimo3","LOCALS",1)
~ GOTO 12
  IF ~~ THEN REPLY #5042 /* ~This is not something that I wish to discuss.~ */ DO ~SetGlobal("BYoshimo3","LOCALS",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #5043 /* ~Forced upon you? What do you mean?~ */
  IF ~~ THEN REPLY #5044 /* ~My stepfather was killed by a man who was looking to kill me. I was alone with no place to call home when I started on this road.~ */ GOTO 14
  IF ~~ THEN REPLY #5045 /* ~It's really none of your business.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 22.0 21.1 20.0 19.1 18.1 17.0 16.0 15.1 14.1 12.1 11.1
  SAY #5046 /* ~As you wish. I was merely curious.~ */
  IF ~~ THEN DO ~SetGlobal("PCYosh","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #5047 /* ~Tell me more about this man who killed your stepfather.~ */
  IF ~~ THEN REPLY #5048 /* ~Why do you want to know?~ */ GOTO 15
  IF ~~ THEN REPLY #5049 /* ~This is not something that I wish to discuss with you.~ */ GOTO 13
  IF ~~ THEN REPLY #5050 /* ~His name was Sarevok. He was obsessed with the power of our father and wished to kill me to prevent me from taking it.~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #5051 /* ~I always like to know about the people that I travel with.~ */
  IF ~~ THEN REPLY #5052 /* ~Very well. His name was Sarevok. He was obsessed with the power of our father and wished to kill me to prevent me from taking it.~ */ GOTO 16
  IF ~~ THEN REPLY #5053 /* ~This is not something that I wish to discuss with you.~ */ GOTO 13
  IF ~~ THEN REPLY #5054 /* ~There isn't much to say. I hunted him down and killed him. End of story.~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 17.1 15.0 14.2
  SAY #5055 /* ~Who was your father?~ */
  IF ~~ THEN REPLY #5056 /* ~It's really none of your business.~ */ GOTO 13
  IF ~~ THEN REPLY #5057 /* ~You wouldn't believe me if I told you.~ */ GOTO 18
  IF ~~ THEN REPLY #5058 /* ~Bhaal.~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY #5060 /* ~Is not the story a bit more involved than that?~ */
  IF ~~ THEN REPLY #5061 /* ~I don't see how the details pertain to you. Leave me be.~ */ GOTO 13
  IF ~~ THEN REPLY #5063 /* ~Very well. His name was Sarevok. He was obsessed with the power of our father and wished to kill me to prevent me from taking it.~ */ GOTO 16
  IF ~~ THEN REPLY #5064 /* ~That is all that is important to the tale.~ */ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #5065 /* ~I have seen many strange things here in this land. I have very little incredulity left in my mind.~ */
  IF ~~ THEN REPLY #5066 /* ~As you wish. My father is the dead god Bhaal. He had premonitions of death before the Time of Troubles and arranged to have children. Sarevok and myself were the only two that I know of.~ */ GOTO 19
  IF ~~ THEN REPLY #5067 /* ~I have no further details that I wish to depart.~ */ GOTO 13
END

IF ~~ THEN BEGIN 19 // from: 18.0 16.2
  SAY #5068 /* ~Bhaal? The god of murder?~ */
  IF ~~ THEN REPLY #5069 /* ~Yes.~ */ GOTO 21
  IF ~~ THEN REPLY #5070 /* ~I tire of this conversation. Perhaps another time.~ */ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY #5071 /* ~I am interested to hear more.~ */
  IF ~~ THEN REPLY #5072 /* ~I have no further details that I wish to depart.~ */ GOTO 13
  IF ~~ THEN REPLY #5073 /* ~As you wish. My father is the dead god Bhaal. He had premonitions of death before the Time of Troubles and arranged to have children. Sarevok and myself were the only two that I know of.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1 19.0
  SAY #5074 /* ~But there could be others? Other children of Bhaal?~ */
  IF ~~ THEN REPLY #5075 /* ~Why the sudden interest in Bhaal?~ */ GOTO 22
  IF ~~ THEN REPLY #5076 /* ~I tire of this conversation. Perhaps another time.~ */ GOTO 13
  IF ~~ THEN REPLY #5077 /* ~Yes, there could be others. No one but Bhaal knows how many. ~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #5078 /* ~It is an interesting story, and I wish to hear more.~ */
  IF ~~ THEN REPLY #5079 /* ~Well, you shall not. Leave me be.~ */ GOTO 13
  IF ~~ THEN REPLY #5080 /* ~Then, in answer to your question, yes. There could be other children of Bhaal. I know of none, personally.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1 21.2
  SAY #5081 /* ~This was very interesting. I shall have to think on it. Thank you.~ */
  IF ~~ THEN DO ~SetGlobal("PCYosh","LOCALS",1)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 71 74 even though they appear after this state */
~  Global("PCYosh","LOCALS",1)
GlobalTimerExpired("YoshimoTalksPC2","GLOBAL")
Global("BYoshimo4","LOCALS",0)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 24 // from:
  SAY #5082 /* ~Tell me, where did you spend your childhood?~ [YOSHIM59] */
  IF ~~ THEN REPLY #5084 /* ~In Candlekeep, a citadel to the north of Amn. ~ */ DO ~SetGlobalTimer("YoshimoTalksPC2","GLOBAL",TEN_DAYS)
SetGlobal("BYoshimo4","LOCALS",1)
~ GOTO 25
  IF ~~ THEN REPLY #5085 /* ~I don't feel like exchanging pleasantries today, Yoshimo. ~ */ DO ~SetGlobalTimer("YoshimoTalksPC2","GLOBAL",TEN_DAYS)
SetGlobal("BYoshimo4","LOCALS",1)
~ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #5086 /* ~What was it like growing up there with your stepfather... Gorion, was it?~ */
  IF ~~ THEN REPLY #5087 /* ~Yes, Gorion. It was a pleasant existence. I garnered much knowledge from the monks and scholars of the vast library housed within the citadel. Gorion was a good man who took me in when I was orphaned.~ */ GOTO 27
  IF ~~ THEN REPLY #5088 /* ~It is none of your affair.~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 28.1 27.2 25.1 24.1
  SAY #5089 /* ~I am sorry if I have been too personal. I was only curious about you and your story.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0
  SAY #5090 /* ~Gorion was a mage, was he not? A very powerful mage?~ */
  IF ~~ THEN REPLY #5091 /* ~Yes, he was. His magic kept Sarevok from killing me outside of Candlekeep. He sacrificed himself that I might live.~ */ GOTO 28
  IF ~~ THEN REPLY #5092 /* ~What does it matter? He is dead now.~ */ GOTO 29
  IF ~~ THEN REPLY #5093 /* ~It is none of your affair.~ */ GOTO 26
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #5094 /* ~That was very noble of him. Why was he your stepfather? What happened to your mother?~ */
  IF ~~ THEN REPLY #5095 /* ~I know not. She was slain or died when I was a wee child. I never knew her.~ */ GOTO 30
  IF ~~ THEN REPLY #5096 /* ~I don't feel like exchanging childhood stories today, Yoshimo. ~ */ GOTO 26
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #5097 /* ~I apologize for bringing up painful memories. It is unfortunate that this Sarevok found the need to kill you. I wonder why he feared you.~ */
  IF ~~ THEN REPLY #5098 /* ~He feared that I would try and take Bhaal's power for my own. He saw me as competition or at least a sacrifice to further his fiendish machinations. ~ */ GOTO 31
  IF ~~ THEN REPLY #5099 /* ~As do I, Yoshimo. The whole affair was a needless tragedy. Sarevok's evil intentions caused many to lose their lives.~ */ GOTO 32
  IF ~~ THEN REPLY #5100 /* ~I tire of this conversation. Let us continue our travels, Yoshimo.~ */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #5101 /* ~I am very sorry to hear that. What was Gorion's relationship to your mother? Why did he take you in?~ */
  IF ~~ THEN REPLY #5102 /* ~I never had a real opportunity to ask him. He was murdered unexpectedly. I suppose they were friends.~ */ GOTO 34
  IF ~~ THEN REPLY #5103 /* ~I tire of this conversation. Let us continue our travels, Yoshimo.~ */ GOTO 33
  IF ~~ THEN REPLY #5104 /* ~Where are you going with these inquiries? ~ */ GOTO 35
END

IF ~~ THEN BEGIN 31 // from: 29.0
  SAY #5105 /* ~Was he right to fear your competition?~ */
  IF ~~ THEN REPLY #5106 /* ~Yes, he was. If I could harness Bhaal's power, I would.~ */ GOTO 36
  IF ~~ THEN REPLY #5107 /* ~No, he was not. I have no desire to become like a dead god of murder. I have my own life to live and my own path to choose. Those fell powers can die with Bhaal.~ */ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 29.1
  SAY #5108 /* ~Was Sarevok correct in assuming that you were competition for him?~ */
  IF ~~ THEN REPLY #5109 /* ~Yes, he was. If I could harness Bhaal's power, I would.~ */ GOTO 36
  IF ~~ THEN REPLY #5110 /* ~No, he was not. I have no desire to become like a dead god of murder. I have my own life to live and my own path to choose. Those fell powers can die with Bhaal.~ */ GOTO 37
END

IF ~~ THEN BEGIN 33 // from: 36.1 35.1 34.1 30.1 29.2
  SAY #5111 /* ~As you wish, <CHARNAME>. Thank you for sharing your story with me.~ */
  IF ~~ THEN DO ~SetGlobal("PCYosh","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.0
  SAY #5112 /* ~Why else would a powerful mage take on such a responsibility? Maybe he saw power within you. Power that he thought should be watched.~ */
  IF ~~ THEN REPLY #5113 /* ~I do have a unique heritage. However, Gorion was too good of a man to see me as some sort of experiment. Bhaal is dead, and it is unlikely that his power lives on in his children.~ */ GOTO 38
  IF ~~ THEN REPLY #5114 /* ~I tire of this conversation. Let us continue our travels, Yoshimo.~ */ GOTO 33
END

IF ~~ THEN BEGIN 35 // from: 30.2
  SAY #5115 /* ~It merely seems odd that a powerful mage would take on such a responsibility. Maybe he saw power within you. Power that he thought should be watched.~ */
  IF ~~ THEN REPLY #5116 /* ~I do have a unique heritage. However, Gorion was too good of a man to see me as some sort of experiment. Bhaal is dead, and it is unlikely that his power lives on in his children.~ */ GOTO 38
  IF ~~ THEN REPLY #5117 /* ~I tire of this conversation. Let us continue our travels, Yoshimo.~ */ GOTO 33
END

IF ~~ THEN BEGIN 36 // from: 32.0 31.0
  SAY #5118 /* ~Would you? Can you not harness the powers?~ */
  IF ~~ THEN REPLY #5120 /* ~Not at present. It seems unlikely since Bhaal is dead and has no power.~ */ GOTO 38
  IF ~~ THEN REPLY #5121 /* ~I tire of this conversation. Let us continue our travels, Yoshimo.~ */ GOTO 33
END

IF ~~ THEN BEGIN 37 // from: 32.1 31.1
  SAY #5122 /* ~That would be best. You are an honorable person, <CHARNAME>. Let us continue our travels.~ */
  IF ~~ THEN DO ~SetGlobal("PCYosh","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.0 35.0 34.0
  SAY #5123 /* ~That is the general consensus amongst the clergy. Bhaal was once a powerful deity in Athkatla. Let us continue our travels.~ */
  IF ~~ THEN DO ~SetGlobal("PCYosh","LOCALS",2)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 71 74 even though they appear after this state */
~  Global("PCYosh","LOCALS",2)
Global("BYoshimo5","LOCALS",0)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN BEGIN 39 // from:
  SAY #5124 /* ~I have pondered what you have said about Bhaal. Could it not be that Bhaal intended to be reborn through his children?~ [YOSHIM60] */
  IF ~~ THEN REPLY #5125 /* ~It is certainly something that I've thought about. It may be true.~ */ DO ~SetGlobal("BYoshimo5","LOCALS",1)
~ GOTO 40
  IF ~~ THEN REPLY #5126 /* ~I think that to be impossible. He is dead.~ */ DO ~SetGlobal("BYoshimo5","LOCALS",1)
~ GOTO 41
  IF ~~ THEN REPLY #5127 /* ~I don't want to talk about this, Yoshimo.~ */ DO ~SetGlobal("BYoshimo5","LOCALS",1)
~ GOTO 42
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #5128 /* ~Does this not worry you? Is it something that you would welcome?~ */
  IF ~~ THEN REPLY #5129 /* ~I have no desire to inherit the fell power of that evil being. I will choose my own path. A very different path than that of murder.~ */ GOTO 43
  IF ~~ THEN REPLY #5130 /* ~I don't want to talk about this, Yoshimo.~ */ GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #5131 /* ~Perhaps his children retain a measure of his power. Do you?~ */
  IF ~~ THEN REPLY #5132 /* ~I have no desire to inherit the fell power of that evil being. I will choose my own path. A very different path than that of murder.~ */ GOTO 43
  IF ~~ THEN REPLY #5153 /* ~That is none of your business.~ */ GOTO 42
  IF ~~ THEN REPLY #5157 /* ~I don't want to talk about this, Yoshimo.~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 43.1 41.2 41.1 40.1 39.2
  SAY #5160 /* ~In my profession, Bhaal was once the foremost power. I cannot help but be curious.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0 40.0
  SAY #5168 /* ~But you do have special powers that come from your heritage, do you not?~ */
  IF ~~ THEN REPLY #5171 /* ~Minor powers only. Nothing even remotely godlike.~ */ GOTO 44
  IF ~~ THEN REPLY #5175 /* ~I tire of this conversation. We have things to accomplish. Let us travel onwards.~ */ GOTO 42
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #5179 /* ~I see. It is something of a curiosity to me. In my profession, Bhaal was once the foremost power. I cannot help but be curious.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #7485 /* ~Edwin, you've a manner that makes each of us feel beautiful and appreciated.~ [YOSHIM57] */
  IF ~~ THEN EXTERN ~BEDWIN~ 9
END

IF ~~ THEN BEGIN 46 // from:
  SAY #7486 /* ~That's only love, warmth, and candor for you and your red-robed ilk, Edwin.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 10
END

IF ~~ THEN BEGIN 47 // from:
  SAY #7487 /* ~Well, all pilgrimages must start somewhere, no? I look forward to the ruin... will be a delightful change from your company, Red Wizard.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 71 74 92 even though they appear after this state */
~  InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("BYoshimo6","LOCALS",0)
~ THEN BEGIN 48 // from:
  SAY #8411 /* ~Young Anomen, a samurai of the west, roaming in service of god and lord. Tell me something of your adventures.~ [YOSHIM46] */
  IF ~~ THEN DO ~SetGlobal("BYoshimo6","LOCALS",1)
~ EXTERN ~BANOMEN~ 31
END

IF ~~ THEN BEGIN 49 // from:
  SAY #8413 /* ~A tale of a foul beast slain, perhaps. A story of your jousts, if you wish.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 32
END

IF ~~ THEN BEGIN 50 // from:
  SAY #8429 /* ~Of course.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 581
END

IF ~~ THEN BEGIN 51 // from:
  SAY #8438 /* ~What happened?~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 34
END

IF ~~ THEN BEGIN 52 // from:
  SAY #8458 /* ~Your heroics saved the day.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 35
END

IF ~~ THEN BEGIN 53 // from:
  SAY #8532 /* ~Viconia, by this light, your eyes are a gorgeous shade of alizarin crimson, deep, mysterious and inviting. Has anyone ever told you that?~ */
  IF ~~ THEN EXTERN ~BVICONI~ 9
END

IF WEIGHT #8 /* Triggers after states #: 71 74 92 even though they appear after this state */
~  InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("BYoshimo7","LOCALS",0)
~ THEN BEGIN 54 // from:
  SAY #9130 /* ~Haer'Dalis, a ronin, a rogue. You have more freedom than most, and yet you remain as grumpy as a flea-bitten dog. Why so glum?~ [YOSHIM47] */
  IF ~~ THEN DO ~SetGlobal("BYoshimo7","LOCALS",1)
~ EXTERN ~BHAERDA~ 41
END

IF ~~ THEN BEGIN 55 // from:
  SAY #9136 /* ~No master have I, save my own conscience. I merely wish to know why life is such a burden to you.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 42
END

IF WEIGHT #9 /* Triggers after states #: 71 74 92 even though they appear after this state */
~  InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
Global("BYoshimo8","LOCALS",0)
~ THEN BEGIN 56 // from:
  SAY #9143 /* ~Friend Korgan, you are truly a paragon of dwarven ill humor. Can you find no joy in being alive? The smell of the morning dew and the feel of the free air?~ [YOSHIM48] */
  IF ~~ THEN DO ~SetGlobal("BYoshimo8","LOCALS",1)
~ EXTERN ~BKORGAN~ 86
END

IF ~~ THEN BEGIN 57 // from:
  SAY #9147 /* ~They could write a book about you. "Irritable Dwarven Responses," they'd call it. It would be a bestseller amongst the smelly-old-drunk market. What say you?~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 87
END

IF ~~ THEN BEGIN 58 // from:
  SAY #9150 /* ~Ho! Is it, now? How about "The Unbathed Adventurer: Travels with Korgan"?~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 88
END

IF WEIGHT #11 /* Triggers after states #: 71 74 87 92 even though they appear after this state */
~  InParty("Keldorn")
See("Keldorn")
!GlobalGT("LadyMaria","GLOBAL",0)
!StateCheck("Keldorn",STATE_SLEEPING)
Global("BYoshimo9","LOCALS",0)
~ THEN BEGIN 59 // from:
  SAY #9152 /* ~Most holy paladin, vengeance of the righteous gods, you are a married man, are you not? What of your family? I have never heard you speak of them.~ [YOSHIM49] */
  IF ~~ THEN DO ~SetGlobal("BYoshimo9","LOCALS",1)
~ EXTERN ~BKELDOR~ 38
END

IF ~~ THEN BEGIN 60 // from:
  SAY #9156 /* ~Are they? It is strange that you have not mentioned them before this.~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 39
END

IF WEIGHT #12 /* Triggers after states #: 71 74 87 92 even though they appear after this state */
~  InParty("HaerDalis")
See("HaerDalis")
AreaType(CITY)
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("BYoshimo10","LOCALS",0)
~ THEN BEGIN 61 // from:
  SAY #9186 /* ~Haer'Dalis, Haer'Dalis! You think too much and smile too little. Come, my bullywug! Come, my puss 'n boots! We are in Athkatla, the city of a million smiling faces!~ [YOSHIM50] */
  IF ~~ THEN DO ~SetGlobal("BYoshimo10","LOCALS",1)
~ EXTERN ~BHAERDA~ 43
END

IF ~~ THEN BEGIN 62 // from:
  SAY #9188 /* ~I have seen your fingers, and they are as fast as your tongue! What you don't want to buy, you can always steal!~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 44
END

IF ~~ THEN BEGIN 63 // from:
  SAY #9190 /* ~Silver? Or gold? We pluck it from every corpse we find and steal it from every chest that we encounter!~ */
  IF ~~ THEN GOTO 83
END

IF WEIGHT #14 /* Triggers after states #: 71 74 87 92 95 even though they appear after this state */
~  InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("BYoshimo11","LOCALS",0)
~ THEN BEGIN 64 // from:
  SAY #9208 /* ~Excuse me, good gnome. I have a question that I've been meaning to ask for some time. These flash bombs of yours...~ [YOSHIM51] */
  IF ~~ THEN DO ~SetGlobal("BYoshimo11","LOCALS",1)
~ EXTERN ~BJAN~ 94
END

IF ~~ THEN BEGIN 65 // from:
  SAY #9211 /* ~Of course. These "Bruiser Mates" that you construct... might I learn how to use them?~ */
  IF ~~ THEN EXTERN ~BJAN~ 95
END

IF ~~ THEN BEGIN 66 // from:
  SAY #9214 /* ~If one is not willing to take risks, then one is not much of an adventurer.~ */
  IF ~~ THEN EXTERN ~BJAN~ 96
END

IF ~~ THEN BEGIN 67 // from:
  SAY #9216 /* ~Mmm... perhaps I shall wait to perform such a feat. This... bomb... looks most unstable. I am surprised they do not explode in your pack, good gnome...~ */
  IF ~~ THEN EXTERN ~BJAN~ 97
END

IF ~~ THEN BEGIN 68 // from:
  SAY #9218 /* ~I meant no disparagement, Jan... but I think I'll leave the bombing to you for now.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 71 74 87 92 95 even though they appear after this state */
~  InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("BYoshimo12","LOCALS",0)
~ THEN BEGIN 69 // from:
  SAY #9253 /* ~Jan! I have heard that you are an inventor of sorts. Where do your interests lie in the field?~ [YOSHIM52] */
  IF ~~ THEN DO ~SetGlobal("BYoshimo12","LOCALS",1)
~ EXTERN ~BJAN~ 103
END

IF ~~ THEN BEGIN 70 // from:
  SAY #9259 /* ~Why, turnip peeling, for one.~ */
  IF ~~ THEN EXTERN ~BJAN~ 104
END

IF WEIGHT #1 ~  InParty("Minsc")
See("Minsc")
HPLT("Minsc",20)
!StateCheck("Minsc",STATE_SLEEPING)
CombatCounter(0)
Global("BYoshimo13","LOCALS",1)
~ THEN BEGIN 71 // from:
  SAY #9264 /* ~Why, Boo! What a fabulous job you did in battle! You went for the eyes as fast as any miniature giant space hamster that I've ever seen.~ [YOSHIM53] */
  IF ~~ THEN DO ~SetGlobal("BYoshimo13","LOCALS",2)
~ EXTERN ~BMINSC~ 80
END

IF ~~ THEN BEGIN 72 // from:
  SAY #9267 /* ~And a fine job it was. What a brave little hamster!~ */
  IF ~~ THEN EXTERN ~BMINSC~ 81
END

IF ~~ THEN BEGIN 73 // from:
  SAY #9273 /* ~Thank you, Boo.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 82
END

IF WEIGHT #2 ~  InParty("Edwin")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",STATE_SLEEPING)
Global("BYoshimo14","LOCALS",0)
~ THEN BEGIN 74 // from:
  SAY #9276 /* ~Tell me, Edwina, would you like me to let out the seams on your robe? I am quite handy with a needle. You do, after all, have more, ah... bulk... in the upper chest area.~ [YOSHIM54] */
  IF ~~ THEN DO ~SetGlobal("BYoshimo14","LOCALS",1)
~ EXTERN ~BEDWIN~ 105
END

IF ~~ THEN BEGIN 75 // from:
  SAY #9279 /* ~It was only an offer, m'lady. There is no cause for anger.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #16 /* Triggers after states #: 87 92 95 even though they appear after this state */
~  InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("BYoshimo15","LOCALS",0)
~ THEN BEGIN 76 // from:
  SAY #10866 /* ~A question to you, Keldorn: Do good knights ever find cause to sing bawdy songs and tell ribald tales around a campfire, or is dourness an inarguable tenet of the Order?~ [YOSHIM55] */
  IF ~~ THEN DO ~SetGlobal("BYoshimo15","LOCALS",1)
~ EXTERN ~BKELDOR~ 135
END

IF ~~ THEN BEGIN 77 // from:
  SAY #10895 /* ~You're not seriously going to sing it, are you?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 136
END

IF ~~ THEN BEGIN 78 // from:
  SAY #10907 /* ~"Though time went by and long I tried
to satisfy my lust,
no matter where I touched, 'twas not enough
to please my succubus."
Is that it?~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 57
END

IF ~~ THEN BEGIN 79 // from:
  SAY #10910 /* ~Well, I was doing a little theological reading of my own before I met up with <CHARNAME>. Found it in the margins...~ */
  IF ~~ THEN EXTERN ~BKELDOR~ 137
END

IF ~~ THEN BEGIN 80 // from:
  SAY #20265 /* ~If that is so, then I am glad. I am eager to please if you should want for anything.~ [YOSHIM56] */
  IF ~~ THEN EXTERN ~BJAHEIR~ 63
END

IF ~~ THEN BEGIN 81 // from:
  SAY #20269 /* ~Ahh, memories of the fallen are the sweetest, are they not? I will intrude no more.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 64
END

IF ~~ THEN BEGIN 82 // from: 8.0
  SAY #37629 /* ~To disarm it, you need to pull the wood back just enough to slip a dagger between the plate and the springs. It requires finesse and patience, my young one.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 23
END

IF ~~ THEN BEGIN 83 // from: 63.0
  SAY #37630 /* ~You are right, bard, I am twice rewarded: Once because I am richer in <CHARNAME>'s care, and twice because I am richer here than rotting in some prison of the damned.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 45
END

IF ~~ THEN BEGIN 84 // from:
  SAY #101979 /* ~It is for the best, I assure you. An... incident with a wealthy noblewoman and her husband hastened my departure.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 117
END

IF ~~ THEN BEGIN 85 // from:
  SAY #101981 /* ~A gentleman never tells, friend Rasaad.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 118
END

IF ~~ THEN BEGIN 86 // from:
  SAY #101983 /* ~Well then, I shall endeavor to be sufficiently entertaining!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 92 even though they appear after this state */
~  IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Hexxat")
CombatCounter(0)
See("Hexxat")
!AreaType(DUNGEON)
Global("OHH_yoshimo1","GLOBAL",0)
~ THEN BEGIN 87 // from:
  SAY #102264 /* ~Ah, my dark-skinned beauty, you must surely have a tale of ancient Mezro to while away the walking hours?~ */
  IF ~~ THEN DO ~SetGlobal("OHH_yoshimo1","GLOBAL",1)
~ EXTERN ~BHEXXAT~ 172
END

IF ~~ THEN BEGIN 88 // from:
  SAY #102266 /* ~Dark secrets, best forgotten?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 173
END

IF ~~ THEN BEGIN 89 // from:
  SAY #102268 /* ~But surely there is something we could learn from those long gone—lessons to remember them by?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 174
END

IF ~~ THEN BEGIN 90 // from:
  SAY #102271 /* ~She gathers her skirts around her, red and orange and gold, as she glides proudly over the horizon. Clouds scud past, bowing in respect, reflecting her glory back to the world. She is beautiful today—~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 176
END

IF ~~ THEN BEGIN 91 // from:
  SAY #102273 /* ~Very well.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("YOSHIMO")
CombatCounter(0)
See("YOSHIMO")
!AreaType(DUNGEON)
Global("OHN_yoshimo","GLOBAL",0)
~ THEN BEGIN 92 // from:
  SAY #88634 /* ~Tell me about yourself, Neera. Is your tale as wild as your magic?~ */
  IF ~~ THEN DO ~SetGlobal("OHN_yoshimo","GLOBAL",1)
~ EXTERN ~BNEERA~ 77
END

IF ~~ THEN BEGIN 93 // from:
  SAY #88636 /* ~I have never even heard of such a thing.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 78
END

IF ~~ THEN BEGIN 94 // from:
  SAY #88638 /* ~Fascinating. Great wonders lie on either end of the Golden Way. You have seen these korreds—perhaps even danced with them?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 79
END

IF WEIGHT #13 ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("YOSHIMO")
CombatCounter(0)
See("YOSHIMO")
!AreaType(DUNGEON)
Global("OHN_yoshimo","GLOBAL",1)
~ THEN BEGIN 95 // from:
  SAY #88640 /* ~Tell me of the High Forest, Neera. ~ */
  IF ~~ THEN DO ~SetGlobal("OHN_yoshimo","GLOBAL",2)
~ EXTERN ~BNEERA~ 80
END

IF ~~ THEN BEGIN 96 // from:
  SAY #88642 /* ~Ah, so is the magnificent nation of Shou Lung. Amn would be but a province there, Athkatla but a neighborhood in one of its great cities.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 81
END

IF ~~ THEN BEGIN 97 // from:
  SAY #88644 /* ~Seeing nature's checkerboard of dark and light is lovely indeed. Why did you leave?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 82
END

IF ~~ THEN BEGIN 98 // from:
  SAY #88646 /* ~Both of us accompany <CHARNAME> with heavy hearts. But come! There is much work to be done.~ */
  IF ~~ THEN EXIT
END
