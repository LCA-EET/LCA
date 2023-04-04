// creator  : weidu (version 24900)
// argument : EDWINJ.DLG
// game     : .
// source   : ./override/EDWINJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~EDWINJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalTimerExpired("EdwinMae","GLOBAL")
!PartyHasItem("MISC4V")
Global("MaeVarExposed","GLOBAL",0)
Global("Complain","LOCALS",0)
~ THEN BEGIN 0 // from:
  SAY #6505 /* ~The incriminating documents in Mae'Var's room are beckoning... perhaps it's time to heed their call (or find another group with more sense of time).~ [EDWIN79] */
  IF ~~ THEN DO ~SetGlobal("Complain","LOCALS",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 234 even though they appear after this state */
~  PartyHasItem("MISC4V")
Global("MaeVarDocuments","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #6512 /* ~You've found the proper documents. Now you've only to gain a private discourse with Renal Bloodscalp! Yes, then the matter will be well in hand.~ [EDWIN80] */
  IF ~~ THEN DO ~SetGlobal("MaeVarDocuments","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #6513 /* ~No, these are not them! Continue your scouring. (I swear, I should have hired a team of monkeys for this.)~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #16 /* Triggers after states #: 4 5 6 9 10 15 37 162 170 234 236 237 238 239 even though they appear after this state */
~  Global("KillMae","GLOBAL",1)
GlobalTimerExpired("EdwinMae","GLOBAL")
!Dead("MaeVar")
~ THEN BEGIN 3 // from:
  SAY #6514 /* ~The time to slay the betrayer is upon us! We must be swift, else the Shadow Thieves mark us for death in Mae'Var's stead. This would be bad, understand?~ [EDWIN88] */
  IF ~~ THEN DO ~SetGlobal("KillMae","GLOBAL",2)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 234 238 even though they appear after this state */
~  AreaCheck("AR0800")
Global("EdwinTalkedAboutScroll","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #6515 /* ~I remember something of this place... There are soothsayers and conjurers that whisper in hushed tones about an artifact lost to antiquity... (but not so lost to a perceptive mage).~ [EDWIN81] */
  IF ~~ THEN DO ~SetGlobal("EdwinTalkedAboutScroll","GLOBAL",1)
SetGlobal("EdwinWantsScroll","GLOBAL",1)
~ GOTO 20
END

IF WEIGHT #6 /* Triggers after states #: 234 238 239 even though they appear after this state */
~  !Dead("Nevaziah")
GlobalGT("EdwinTalkedAboutScroll","GLOBAL",0)
GlobalTimerExpired("EdwinComplainAboutScroll","GLOBAL")
Global("EdwinComplainScroll","LOCALS",0)
~ THEN BEGIN 5 // from:
  SAY #6516 /* ~We must return to our delving in the graveyard. The Nether Scroll... think of it! (Yes, just think of it.) The written word of the creator races... (It should be mine.)~ [EDWIN82] */
  IF ~~ THEN DO ~SetGlobal("EdwinComplainScroll","LOCALS",1)
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 234 236 238 239 even though they appear after this state */
~  Dead("Nevaziah")
Global("EdwinWantsScroll","GLOBAL",1)
Global("FoundScroll","LOCALS",0)
~ THEN BEGIN 6 // from:
  SAY #6517 /* ~This is it. This must be it. This has to be it! The just and unjust alike will all fear the overwhelming power of Edwin Odesseiron and his Nether Scroll!~ [EDWIN83] */
  IF ~~ THEN REPLY #6520 /* ~Will you be using that scroll to help us?~ */ DO ~EraseJournalEntry(46839)
AddexperienceParty(11750)
SetGlobal("FoundScroll","LOCALS",1)
SetGlobal("ScrollStudy","LOCALS",1)
SetGlobal("ACH_THE_NETHER","GLOBAL",1)
~ SOLVED_JOURNAL #47740 /* ~Find the Nether Scroll for Edwin

We have found the Nether Scroll. Edwin intends to study it thoroughly.~ */ GOTO 7
  IF ~~ THEN REPLY #6525 /* ~We all found it, we all own it. It's party treasure, Edwin.~ */ DO ~EraseJournalEntry(46839)
AddexperienceParty(11750)
SetGlobal("FoundScroll","LOCALS",1)
SetGlobal("ScrollStudy","LOCALS",1)
SetGlobal("ACH_THE_NETHER","GLOBAL",1)
~ SOLVED_JOURNAL #47740 /* ~Find the Nether Scroll for Edwin

We have found the Nether Scroll. Edwin intends to study it thoroughly.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #6518 /* ~(Yes... yes this will be a great help.) Of course, I shall put it to the best use of the group. Mark my words. (Yes, mark them well.) But you'll not see the scroll... it's mine!~ */
  IF ~~ THEN DO ~SetGlobalTimer("EdwinScroll","GLOBAL",FOUR_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #6519 /* ~Touch the scroll, pull back a stump. (Head, limb, leg... your choice.) I will use this for the benefit of the group, I assure you. (Yes, I assure you of that.) But no one reads it but me.~ */
  IF ~~ THEN DO ~SetGlobalTimer("EdwinScroll","GLOBAL",TWO_DAYS)
~ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 234 236 237 238 239 even though they appear after this state */
~  GlobalTimerExpired("EdwinScroll","GLOBAL")
Global("ScrollStudy","LOCALS",1)
!AreaType(DUNGEON)
CombatCounter(0)
~ THEN BEGIN 9 // from:
  SAY #6879 /* ~Ahh HA! I understand it! Sorry to bother your petty concerns, but I have translated some of the Nether Scroll!~ */
  IF ~~ THEN DO ~SetGlobal("ScrollStudy","LOCALS",2)
SetGlobalTimer("EdwinScroll","GLOBAL",ONE_DAY)
AddXPObject("Edwin",50000)
ApplySpell(Myself,NETHER_SCROLL)
~ GOTO 22
END

IF WEIGHT #11 /* Triggers after states #: 234 236 237 238 239 even though they appear after this state */
~  !AreaCheck("AR3004")
!AreaCheck("AR3005")
!AreaCheck("AR3008")
!AreaCheck("AR3009")
!AreaCheck("OH6000")
!AreaCheck("OH6100")
!AreaCheck("OH6200")
Global("ScrollStudy","LOCALS",2)
~ THEN BEGIN 10 // from:
  SAY #6880 /* ~Hmmm... Another revelation in my... er... our Nether Scroll. A spell of transformation, both basic and sophisticated. It is not unlike the transformation of mage to lich... but it must be more... much more...~ [EDWIN85] */
  IF ~~ THEN DO ~SetGlobal("ScrollStudy","LOCALS",3)
~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #6885 /* ~I've prepared for this moment all my life, and lifetimes before! Be prepared to cower and flee! Nothing will stand in my way after this!~ */
  IF ~~ THEN REPLY #6886 /* ~Edwin, I'd suggest restraint. It's dangerous to meddle with magic that you know nothing about.~ */ GOTO 12
  IF ~~ THEN REPLY #6887 /* ~Go ahead, Edwin. A powerful mage is difficult to find, and of terrific benefit to all.~ */ GOTO 13
  IF ~~ THEN REPLY #6893 /* ~Lose the scroll, Edwin. Evil begets evil and can only lead to ruin and despair.~ */ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #6894 /* ~I'll wait no longer! I have studied enough! This will be mine! Life eternal and unlimited power!~ */
  IF ~~ THEN DO ~SetGlobal("AfterChange","LOCALS",1)
SetGlobalTimer("EdwinComplain","GLOBAL",ONE_MINUTE)
MakeUnselectable(5000)
ForceSpell(Myself,EDWIN_CHANGE)
Wait(3)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #6902 /* ~Wise advice, and I shall not totally forget you when you are as a bug before me. Now, to power!~ */
  IF ~~ THEN DO ~SetGlobal("AfterChange","LOCALS",1)
SetGlobalTimer("EdwinComplain","GLOBAL",ONE_MINUTE)
MakeUnselectable(5000)
ForceSpell(Myself,EDWIN_CHANGE)
Wait(3)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #6903 /* ~Coward! You and your frail morals will witness my rebirth, and then I shall repay your slander!~ */
  IF ~~ THEN DO ~SetGlobal("AfterChange","LOCALS",1)
SetGlobalTimer("EdwinComplain","GLOBAL",ONE_MINUTE)
MakeUnselectable(5000)
ForceSpell(Myself,EDWIN_CHANGE)
Wait(3)
~ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 234 236 237 238 239 even though they appear after this state */
~  Gender(Myself,FEMALE)
Global("AfterChange","LOCALS",1)
~ THEN BEGIN 15 // from:
  SAY #6921 /* ~This is bad.~ [EDWINW01] */
  IF ~~ THEN DO ~SetGlobal("AfterChange","LOCALS",2)
SetGlobalTimer("DegardanSpawn","GLOBAL",TWELVE_DAYS)
SetPlayerSound(Myself,61302,MORALE)
SetPlayerSound(Myself,61303,HAPPY)
SetPlayerSound(Myself,61304,UNHAPPY_ANNOYED)
SetPlayerSound(Myself,61305,UNHAPPY_SERIOUS)
SetPlayerSound(Myself,61306,UNHAPPY_BREAKING_POINT)
SetPlayerSound(Myself,61307,LEADER)
SetPlayerSound(Myself,61308,TIRED)
SetPlayerSound(Myself,61309,BORED)
SetPlayerSound(Myself,61310,BATTLE_CRY1)
SetPlayerSound(Myself,61311,BATTLE_CRY2)
SetPlayerSound(Myself,61312,BATTLE_CRY3)
SetPlayerSound(Myself,61313,DAMAGE)
SetPlayerSound(Myself,61314,DYING)
SetPlayerSound(Myself,61315,HURT)
SetPlayerSound(Myself,61316,AREA_FOREST)
SetPlayerSound(Myself,61317,AREA_CITY)
SetPlayerSound(Myself,61318,AREA_DUNGEON)
SetPlayerSound(Myself,61319,AREA_DAY)
SetPlayerSound(Myself,61321,AREA_NIGHT)
SetPlayerSound(Myself,61322,SELECT_COMMON1)
SetPlayerSound(Myself,61323,SELECT_COMMON2)
SetPlayerSound(Myself,61324,SELECT_COMMON3)
SetPlayerSound(Myself,-1,SELECT_COMMON4)
SetPlayerSound(Myself,-1,SELECT_COMMON5)
SetPlayerSound(Myself,-1,SELECT_COMMON6)
SetPlayerSound(Myself,61325,SELECT_ACTION1)
SetPlayerSound(Myself,61326,SELECT_ACTION2)
SetPlayerSound(Myself,61327,SELECT_ACTION3)
SetPlayerSound(Myself,61328,SELECT_ACTION4)
SetPlayerSound(Myself,61329,SELECT_ACTION5)
SetPlayerSound(Myself,61330,SELECT_ACTION6)
SetPlayerSound(Myself,-1,SELECT_ACTION7)
SetPlayerSound(Myself,-1,SELECT_RARE1)
SetPlayerSound(Myself,-1,SELECT_RARE2)
SetPlayerSound(Myself,61331,CRITICAL_HIT)
SetPlayerSound(Myself,61332,CRITICAL_MISS)
SetPlayerSound(Myself,61333,TARGET_IMMUNE)
SetPlayerSound(Myself,61334,INVENTORY_FULL)
SetPlayerSound(Myself,61335,PICKED_POCKET)
SetPlayerSound(Myself,61336,HIDDEN_IN_SHADOWS)
SetPlayerSound(Myself,61337,SPELL_DISRUPTED)
SetPlayerSound(Myself,61338,SET_A_TRAP)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 37.0
  SAY #7465 /* ~My metamorphosis was troubling, but now I am restored. Now it is time for proper payment of the witnesses to my shame. Now it's time for you to die.~ */
  IF ~~ THEN DO ~SetPlayerSound(Myself,3966,MORALE)
SetPlayerSound(Myself,3968,HAPPY)
SetPlayerSound(Myself,3969,UNHAPPY_ANNOYED)
SetPlayerSound(Myself,3970,UNHAPPY_SERIOUS)
SetPlayerSound(Myself,3971,UNHAPPY_BREAKING_POINT)
SetPlayerSound(Myself,3972,LEADER)
SetPlayerSound(Myself,3973,TIRED)
SetPlayerSound(Myself,3974,BORED)
SetPlayerSound(Myself,3967,BATTLE_CRY1)
SetPlayerSound(Myself,30694,BATTLE_CRY2)
SetPlayerSound(Myself,30706,BATTLE_CRY3)
SetPlayerSound(Myself,5350,DAMAGE)
SetPlayerSound(Myself,5351,DYING)
SetPlayerSound(Myself,3975,HURT)
SetPlayerSound(Myself,5345,AREA_FOREST)
SetPlayerSound(Myself,5346,AREA_CITY)
SetPlayerSound(Myself,5347,AREA_DUNGEON)
SetPlayerSound(Myself,5348,AREA_DAY)
SetPlayerSound(Myself,5349,AREA_NIGHT)
SetPlayerSound(Myself,3976,SELECT_COMMON1)
SetPlayerSound(Myself,3977,SELECT_COMMON2)
SetPlayerSound(Myself,3978,SELECT_COMMON3)
SetPlayerSound(Myself,30709,SELECT_COMMON4)
SetPlayerSound(Myself,30710,SELECT_COMMON5)
SetPlayerSound(Myself,30711,SELECT_COMMON6)
SetPlayerSound(Myself,30712,SELECT_ACTION1)
SetPlayerSound(Myself,30713,SELECT_ACTION2)
SetPlayerSound(Myself,30714,SELECT_ACTION3)
SetPlayerSound(Myself,30715,SELECT_ACTION4)
SetPlayerSound(Myself,3984,SELECT_ACTION5)
SetPlayerSound(Myself,3985,SELECT_ACTION6)
SetPlayerSound(Myself,3986,SELECT_ACTION7)
SetPlayerSound(Myself,30716,SELECT_RARE1)
SetPlayerSound(Myself,30717,SELECT_RARE2)
SetPlayerSound(Myself,30718,CRITICAL_HIT)
SetPlayerSound(Myself,30719,CRITICAL_MISS)
SetPlayerSound(Myself,30720,TARGET_IMMUNE)
SetPlayerSound(Myself,30721,INVENTORY_FULL)
SetPlayerSound(Myself,30722,PICKED_POCKET)
SetPlayerSound(Myself,30723,HIDDEN_IN_SHADOWS)
SetPlayerSound(Myself,30724,SPELL_DISRUPTED)
SetPlayerSound(Myself,30725,SET_A_TRAP)
~ EXTERN ~DEGARD~ 10
END

IF ~~ THEN BEGIN 17 // from:
  SAY #7467 /* ~Once you might have been a daunting foe, but no longer. I am more than able to deal with the likes of you!~ */
  IF ~~ THEN DO ~EraseJournalEntry(46840)
SetGlobal("TalkedDegardan","GLOBAL",3)
ActionOverride("degard",Enemy())
~ SOLVED_JOURNAL #47742 /* ~Edwin is being hunted by the Red Wizards?

A Red Wizard by the name of Degardan managed to turn Edwin back into a man... which should forestall his complaints at least temporarily. Edwin turned on the mage, naturally, as soon as he was exposed. Why the Red Wizards are hunting Edwin remains a mystery.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #14252 /* ~I AM a wizard, rotten child. Another word from you and you'll see just how truly irate a wizard can get. (Rodents. Rodents everywhere I turn! Bah!)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #14494 /* ~Yes, indeed. Speak once more against those with enough intelligence to grind you into salt and I'll instill a bit more respect in you, fool.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 4.0
  SAY #18416 /* ~I've heard rumors and done a little reading on the subject... Many have muttered the name in frustration... the Nether Scroll.~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #18418 /* ~I had an "intense" chat with a diviner that swore it was in Athkatla, buried among the nobles. If I... If we found it, we would be formidable indeed. The lower tombs, perhaps?~ */
  IF ~~ THEN DO ~SetGlobal("EdwinTalkedAboutScroll","GLOBAL",2)
SetGlobalTimer("EdwinComplainAboutScroll","GLOBAL",TWO_DAYS)
~ UNSOLVED_JOURNAL #46839 /* ~Find the Nether Scroll for Edwin

Edwin remembered a tale about something called "the Nether Scroll," possibly hidden in one of the tombs in the Graveyard District of Athkatla.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 9.0
  SAY #18423 /* ~(Hmm... ancient magic at my fingertips, and more yet to decipher. It has been a good day.) What are you staring at? I've had my say; back to your little quest, or whatever!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #22379 /* ~You're speaking of me, you insolent woman! Watch your tongue, or I'll scorch it off for you! (Miserable peasants... the common Thayan wouldn't speak like this!)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY #25785 /* ~And I think it is a shame that useless morons such as yourself, who forget that they should not speak, are not eradicated from the gene pool upon sight!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #25801 /* ~Not bad intuition, halfling. Flawed and incorrect... but overall quite respectable. (The insult deserves a fireball, but it would only prove her right! Bah!)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #25812 /* ~A commendable statement, child, but... no, no! Back, back! (Somebody get this... thing... off of me! It's... hugging... me...)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #25821 /* ~Oh, do shut up, girl! (Miserable, pissant child!)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #27672 /* ~I wouldn't have to plow into you if you kept your eyes out of the clouds and on the path you're walking, you filthy zealot!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #28663 /* ~I'm practically tempted to test that theory, you snide little fool.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #28976 /* ~They are all true, I assure you. But you are a peasant of insignificant stock, so begone with your commoner filth, woman!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #29649 /* ~Say "run" one more time, you half-witted blind excuse for vermin, and I will have both your legs end at charred little stumps!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #30092 /* ~I am not your servant, and you can find your own way home... or perhaps I turn you into a frog and throw you in the pond, eh? Then that can be your home, brat!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #33256 /* ~Enough of this banal prattle! I wish the Nether Scroll, you senile lich! If you cannot profit from its power, then I shall! Give it to me at once!~ */
  IF ~~ THEN DO ~SetGlobal("EdwinWantsScroll","GLOBAL",1)
~ EXTERN ~NEVAZIAH~ 14
END

IF ~~ THEN BEGIN 34 // from:
  SAY #33259 /* ~No! NO! I will not allow you to destroy such an invaluable artifact! You are a fool, lich! And I will have the scroll if I must destroy you first!~ */
  IF ~~ THEN EXTERN ~NEVAZIAH~ 16
END

IF ~~ THEN BEGIN 35 // from:
  SAY #38844 /* ~No one would dare to cheat me, fool. Now, out of my sight before I demonstrate what I do to those who cross me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #39357 /* ~Bah! Must we listen to such sniveling?! It sickens the stomach!~ */
  IF ~~ THEN EXTERN ~HENDAK~ 37
END

IF WEIGHT #13 /* Triggers after states #: 234 236 237 238 239 even though they appear after this state */
~  Gender(Myself,MALE)
Global("TalkedDegardan","GLOBAL",2)
~ THEN BEGIN 37 // from:
  SAY #39759 /* ~Cured! Cured of my wretched condition! Degardan, I owe you my health, wealth, and well-being. I am reborn!~ [EDWIN87] */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 38 // from:
  SAY #44114 /* ~This fool is not thinking for himself. A stronger mind has dominated his. Look at his eyes.~ */
  IF ~~ THEN EXTERN ~PPCOWLED~ 2
END

IF ~~ THEN BEGIN 39 // from:
  SAY #47084 /* ~The end? The end of what?! Bah! Useless premonitions! Why do I even bother asking such unshaped talent?!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #47207 /* ~Comment on the shape of my face again, brat, and you'll quickly discover just how mean I can be! (Observant little urchin, isn't he?)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #48473 /* ~Grow up, girl! Must we endure your mewling every time you confront human nature? (Hmm, I have to wonder what she'll be like in twenty years. Maybe with my help...)~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 179
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 349
END

IF ~~ THEN BEGIN 42 // from:
  SAY #48510 /* ~We have no patience for riddles, sewer filth! If you know something of a special blade, you will tell us now!~ */
  IF ~~ THEN EXTERN ~SEWERM1~ 24
END

IF ~~ THEN BEGIN 43 // from:
  SAY #48540 /* ~You... you want us to fight a dragon?! You moronic fool! I'll not follow you into an idiotic death! Be eaten by the reptile, for all I care!~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #48555 /* ~Do as the dragon suggests, <CHARNAME>! Nothing is served by attacking this beast! What is the saying...? Ah... discretion is the better part of valor!~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Minsc")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 124
  IF ~  !IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 183
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 98
END

IF ~~ THEN BEGIN 45 // from:
  SAY #48558 /* ~Do not address me in such a manner, fool! I am only concerned with our lives in the presence of an ancient force that you could NEVER understand! Bah!~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 98
END

IF ~~ THEN BEGIN 46 // from:
  SAY #48586 /* ~For once, I agree with the addled ranger. I dislike being manipulated and would be interested in Lord Jierdan's reasons, though I care nothing about a rescue.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 57
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 98
END

IF ~~ THEN BEGIN 47 // from:
  SAY #48591 /* ~Do not be a fool, <CHARNAME>. These mages will hold you to a commitment regardless of what they want! We do not need them or their machinations!~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~TOLGER~ 2
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 360
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 46
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 218
END

IF ~~ THEN BEGIN 48 // from:
  SAY #48594 /* ~Pfeh! If you believe any of that, I have a bridge in Anauroch I'd like to sell you. Do not trust him, I say!~ */
  IF ~  !IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~TOLGER~ 6
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 62
END

IF ~~ THEN BEGIN 49 // from:
  SAY #48607 /* ~Finally, dealings with the Cowled Wizards are over! (Although I would have liked to have seen exactly what they were going to use the ranger for.)~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 233
  IF ~  Dead("valygar")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 99
END

IF ~~ THEN BEGIN 50 // from:
  SAY #48610 /* ~Ah, yes, the mystery is finally solved. Yes, the Cowled Wizards would stop at nothing to get inside that sphere. I sympathize with their stand, of course.~ */
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 109
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 127
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 100
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~VALYGAR~ 9
END

IF ~~ THEN BEGIN 51 // from:
  SAY #48629 /* ~You'd better know what you're doing, <CHARNAME>. You just pit us against the Cowled Wizards. The Cowled Wizards! Bah!~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Cernd")
OR(2)
!Global("HiredByCowled","GLOBAL",1)
!IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 362
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 104
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 93
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Cernd")
Global("HiredByCowled","GLOBAL",1)
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 221
END

IF ~~ THEN BEGIN 52 // from:
  SAY #48642 /* ~Hold fast, boy. You'll warm to the job in the end. Misery is a fine subject of study.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #48648 /* ~MUST you keep handing out gold coins like they grow on trees?! We will be swarmed! (And besides, <PRO_HESHE> could always give them to ME!)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY #48692 /* ~If that is the limit of your imagination when it comes to magic, fool, then it is no wonder your countrymen are idiotic enough to outlaw it!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #48735 /* ~Ye-eeessss. If you value your hide, you'll forget me quickly and completely. (Blast! So the fireball DID miss him!)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #48877 /* ~Are you insane? Now we lower ourselves to becoming... enforcers! Bah! My knowledge is not best used collecting the debts of others... for free!~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 196
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 123
END

IF ~~ THEN BEGIN 57 // from:
  SAY #48893 /* ~And while you are thinking, you can also imagine what I will gain by turning you in. Guard! Do you ignore this?!~ */
  IF ~~ THEN EXTERN ~ARNMAN08~ 0
END

IF ~~ THEN BEGIN 58 // from:
  SAY #48937 /* ~Excellent! An open invitation to fling spells at paladins, former or not! (With luck, I can convince <CHARNAME> to let me play with one!)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #48955 /* ~Oh yes... we've braved monsters, Flaming Fist, Sarevok's assorted minions, only to fall to a sneak-thief with an over-fondness for flesh. Excellent deduction.~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 54
END

IF ~~ THEN BEGIN 60 // from:
  SAY #48973 /* ~Madness! The single-minded nature of the Rashemi, but with even less sense!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #17 /* Triggers after states #: 162 170 234 236 237 238 239 even though they appear after this state */
~  AreaCheck("AR0502")
Global("EnteredTanner2","AR0502",0)
~ THEN BEGIN 61 // from:
  SAY #48977 /* ~Ah, yes! The tanner's workshop. What a wonderful display these entrails make. Hmph. I wonder what the exact nature of his "work" is. This should be interesting...~ */
  IF ~~ THEN DO ~SetGlobal("EnteredTanner2","AR0502",1)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #49194 /* ~I shall be sure to cry you a river just as soon as I start caring.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY #49231 /* ~If that comment was for me, I suggest you rethink it before I have you begging at my feet for mercy. (Hmph! "Mealy-faced"! I am as vital as I ever was!)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #49285 /* ~Finally: the Shadowmaster. This is real power we're going to meet now, <CHARNAME>, so you'd best reign in your temperamental nature. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #49297 /* ~Played like a flute! By the Harpers, no less! If I must kill, it will be for my own ends! (But I never liked that necro or his halfling anyway, so whatever.)~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 213
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 112
END

IF ~~ THEN BEGIN 66 // from:
  SAY #49354 /* ~No doubt the fool has been ground to dust if he was caught. Bring an urn. The look on Xzar's face will be priceless when we return with Montaron's ashes. HA!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY #49401 /* ~Do you take us for hapless fools? All the power and influence that the Harpers obtain while they perform this "service" is merely coincidental?~ */
  IF ~~ THEN EXTERN ~MERONIA~ 2
END

IF ~~ THEN BEGIN 68 // from:
  SAY #49418 /* ~Control your boasts of Harper schemes, boy, lest you encounter someone who was on the receiving end of them and, say, decides to strip the flesh from your bones.~ */
  IF ~~ THEN EXTERN ~PACE~ 6
END

IF ~~ THEN BEGIN 69 // from:
  SAY #49555 /* ~I tire of this whining! If it makes this all the faster, I will leave myself and you can take the child! I will fare better than her, surely.~ */
  IF ~~ THEN EXTERN ~IMOEN2~ 23
END

IF ~~ THEN BEGIN 70 // from:
  SAY #49567 /* ~You must be a mad<PRO_MANWOMAN>! Mae'Var is as good as dead anyway! Let us go earn the reward ourselves!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #49613 /* ~Oho! The Harpers open their doors at last! I wonder what Harper secrets we might be able to pry out from under their noses while we are within, eh?~ */
  IF ~  !IsValidForPartyDialogue("HaerDalis")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 82
END

IF ~~ THEN BEGIN 72 // from:
  SAY #49620 /* ~Er... ahh... you must have me mistaken for someone else, wench, I...~ */
  IF ~~ THEN EXTERN ~SBWENCH~ 7
END

IF ~~ THEN BEGIN 73 // from:
  SAY #49622 /* ~Ah... the name is Edwin, I assure you, and...~ */
  IF ~~ THEN EXTERN ~SBWENCH~ 8
END

IF ~~ THEN BEGIN 74 // from:
  SAY #49625 /* ~ENOUGH! Begone, wench, BEGONE! I spent one night in your chambers, and that is ALL... Speak of it again, and I shall burn the flesh from your bones! Gaaaah!~ */
  IF ~~ THEN EXTERN ~SBWENCH~ 9
END

IF ~~ THEN BEGIN 75 // from:
  SAY #49626 /* ~Grrr... (One more word, one more word and I shall kill them ALL! Oh, yes, I think I'm in just the right mood for it! One... more... word...)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #49779 /* ~Well, it is about time! It is almost too much, this creeping about graveyards at night, waiting on this wench's every word! Bah!~ */
  IF ~~ THEN EXTERN ~BODHI~ 4
END

IF ~~ THEN BEGIN 77 // from:
  SAY #49816 /* ~Is this all that we are to be used for now? Some minor errand? Ah, yes, what a blow it shall be against the Shadow Thieves! Bah! Let us get this over with!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #49857 /* ~So, we're off to kill the Shadowmaster, one of the most powerful men in this city? It might be interesting. Just do not screw it up, <CHARNAME>!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #49870 /* ~We don't have time for this, <CHARNAME>! What business is it of ours if this fool allows himself to be buried alive? Bah! Are we the city guard?~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Anomen")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 133
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 224
END

IF ~~ THEN BEGIN 80 // from:
  SAY #49899 /* ~Wait, <CHARNAME>! There is no reason that we cannot ransom this lady off ourselves, yes? There is no reason we cannot profit from this!~ */
  IF ~~ THEN EXTERN ~ELGEA~ 13
END

IF ~~ THEN BEGIN 81 // from:
  SAY #49910 /* ~Excellent! We will take advantage of another's plot! What delicious irony! (I should have a greater share of the ransom for thinking of it, in fact.)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #49962 /* ~Not a thing, unless you have an objection to my vomiting all over your rosy-hued robes, priest.~ */
  IF ~~ THEN EXTERN ~ACOLYTE2~ 2
END

IF ~~ THEN BEGIN 83 // from:
  SAY #50000 /* ~I would deal with you here, fool, but it would draw the Cowled Wizards' attention. Count yourself lucky and be gone from my sight!~ */
  IF ~~ THEN DO ~ActionOverride("Postul6",RunAwayFrom("Edwin",120))
~ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #50078 /* ~Eh? A beholder is behind this? I have heard of their power—great power indeed—but I have never heard of one without its eyes.~ */
  IF ~~ THEN EXTERN ~GAAL~ 9
END

IF ~~ THEN BEGIN 85 // from:
  SAY #50110 /* ~If only there were a way to enslave the little pissant's mind, this would be SO much easier. I've half a mind to seal his mouth permanently!~ */
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 87
  IF ~  !IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 105
END

IF ~~ THEN BEGIN 86 // from:
  SAY #50128 /* ~So we have come all this way only to find that this item is practically USELESS?! Bah! The device's effect on the beholder had better be worth it!~ */
  IF ~  !IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 131
END

IF ~~ THEN BEGIN 87 // from:
  SAY #50201 /* ~Ah, and we can all see how effective their restrictions on magic are, fool. Is there a single building not harboring some mage, or a Cowled Wizard? Idiots.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #50241 /* ~What is this? Charity? From a dark elf? Are you going soft on me, my lascivious onyx priestess, hmmm?~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 79
END

IF ~~ THEN BEGIN 89 // from:
  SAY #50255 /* ~So you say, drow. I suggest you drink more of the poison that makes up your black heart and forget such nonsense in the future.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 90 // from:
  SAY #50305 /* ~Are you referring to me? Watch who you address with overfamiliarity, commoner wench, lest I slap you to the ground and keep you there!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 91 // from:
  SAY #50365 /* ~What do you mistake me for, you stupid woman? Some low-bred, filthy servant? Perhaps polymorphing you into a blind toadstool would improve your perception!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #50422 /* ~Hahaha! Crude... but effective. With such a point, you could bludgeon any fool into senselessness and feel justified... my kind of philosophy.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 93 // from:
  SAY #50673 /* ~Wonderful. The cat is dead, and now we'll have lots of mad little mice running about. <CHARNAME>, give those lunatics a purpose or we're all in trouble.~ */
  IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutSceneEx("Cut41m",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 94 // from:
  SAY #55193 /* ~Excellent! A well-fought victory over a powerful wizard! Now let us plunder whatever secrets he must possess! He surely has a mother lode of magic at his disposal, oh yes!~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 95 // from:
  SAY #55214 /* ~Eh? Oh, the Nine Hells, is it? Hmph. Yes, I felt your infernal power tugging at me, but I was coming here anyway. There might be profit yet by remaining at your side. We'll see.~ [EDWIN90] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("LCCORWIN")
!Global("CorwinHell","GLOBAL",1)
~ THEN DO ~SetGlobal("CorwinHell","GLOBAL",1)
~ EXTERN ~LCCORWIJ~ 30
END

IF ~~ THEN BEGIN 96 // from:
  SAY #55283 /* ~Hold on, creature. Tell me... did this drow wizard summon you to guard the chest or what's *in* the chest?~ */
  IF ~~ THEN EXTERN ~SAHBEH01~ 33
END

IF ~~ THEN BEGIN 97 // from:
  SAY #55300 /* ~Hah! As a wizard, I can tell you that the drow would never wish that. There is no point in guarding an empty chest, beholder.~ */
  IF ~~ THEN EXTERN ~SAHBEH01~ 39
END

IF ~~ THEN BEGIN 98 // from:
  SAY #55654 /* ~It would seem more a place to house those that prove too powerful for their own good. Useful... from a certain perspective.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 7
END

IF ~~ THEN BEGIN 99 // from:
  SAY #55666 /* ~Pretties, you say? Do you mean... gems? Have you any faculties left? Can you remember?~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 18
END

IF ~~ THEN BEGIN 100 // from:
  SAY #55678 /* ~Ah yes, Tiax. All the subtleties of a fireball in a teapot. Pity he's here. Let's move on, shall we?~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 23
END

IF ~~ THEN BEGIN 101 // from:
  SAY #55688 /* ~Bah! Fine! Leave us! As if we care what your reputation might be! I've half a mind to turn you into a slug and show you what I do with lackeys who fail me!~ */
  IF ~~ THEN EXTERN ~PPSAEM~ 34
END

IF ~~ THEN BEGIN 102 // from:
  SAY #55699 /* ~We almost had the information we needed! The assassin could have waited ten seconds, and we couldn't have cared less! Innkeep! What do you know of this man's death?~ */
  IF ~~ THEN EXTERN ~PPINN01~ 6
END

IF ~~ THEN BEGIN 103 // from:
  SAY #55710 /* ~We are not in the habit of performing public services. The fact that we rescued the girl deserves compensation, don't you agree?~ */
  IF ~~ THEN EXTERN ~PIRMUR09~ 18
END

IF ~~ THEN BEGIN 104 // from:
  SAY #55716 /* ~And here we go 'round the mulberry bush. Yes, yes, keep your pitiful ramblings to yourself.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 105 // from:
  SAY #55741 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from:
  SAY #55745 /* ~We have no need of support from mad wizards! We have enough magic... let us attack Irenicus now!~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 129
END

IF ~~ THEN BEGIN 107 // from:
  SAY #55758 /* ~Okay, that does it. I'm all for just leaving both gnomes here when we go. Who's with me on that?~ */
  IF ~  !IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~PPTIAX~ 13
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 125
END

IF ~~ THEN BEGIN 108 // from:
  SAY #55761 /* ~Hmph. That's putting it mildly. (Godhood should be solely reserved for those with the proper destiny and mental endurance. Me, for instance!)~ */
  IF ~~ THEN EXTERN ~PPSAEM2~ 12
END

IF ~~ THEN BEGIN 109 // from:
  SAY #55780 /* ~I'm beginning to hope so.~ */
  IF ~~ THEN EXTERN ~JANJ~ 158
END

IF ~~ THEN BEGIN 110 // from:
  SAY #55810 /* ~It is a weakness on her part. A superior mind could handle such a gift. ~ */
  IF ~  !IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 133
  IF ~  !IsValidForPartyDialogue("VICONIA")
IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 463
END

IF ~~ THEN BEGIN 111 // from:
  SAY #55814 /* ~(Sigh. It's aggravation like this that will eventually cause me to fireball the entire party as they sleep. Yes indeed, everyone peaceful and quiet and then FOOM!) ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #55820 /* ~Then you can start by addressing us now, tadpole-thing. How did we get here? (If it can speak at all. Such creatures are known more for the taste of their legs...)~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 6
END

IF ~~ THEN BEGIN 113 // from:
  SAY #55855 /* ~Hmph. Ah, that is our goal, you know: to allow the tadpoles to resume their dominant role in the world. (Idiot! Sekolah should have gifted them with a brain!)~ */
  IF ~~ THEN EXTERN ~SAHPR4~ 5
END

IF ~~ THEN BEGIN 114 // from:
  SAY #55879 /* ~A HA! I shall treasure this moment. The proud drow, humbled by a keen-eyed duergar. ~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 81
END

IF ~~ THEN BEGIN 115 // from:
  SAY #55894 /* ~Ah, a denizen of the lower planes to unleash upon the elves. The use of the eggs begins to make sense. Why Irenicus would involve himself remains a mystery.~ */
  IF ~~ THEN EXTERN ~UDPHAE01~ 138
END

IF ~~ THEN BEGIN 116 // from:
  SAY #55943 /* ~Good! And I expect the best of treatment for your drow masters. It is what we deserve.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #55944 /* ~No-oooo! Aerie! AERIE!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #55952 /* ~A bold statement, if you can back it up. But we've power to spare here, fools! (A fireball down the dwarf's gullet should instill some respect, I think!)~ */
  IF ~~ THEN EXTERN ~C6CATTI1~ 0
END

IF ~~ THEN BEGIN 119 // from:
  SAY #55953 /* ~Interesting. To risk so much for exploration, he must have been seeking something very valuable indeed.~ */
  IF ~  !IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~UDDUER02~ 13
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 137
END

IF ~~ THEN BEGIN 120 // from:
  SAY #56044 /* ~Speak for yourself, do-gooder. If the Shadow Thieves can assist us against such a powerful vampire, I'd happily dance in the mud.~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 210
END

IF ~~ THEN BEGIN 121 // from:
  SAY #56061 /* ~Bah! We've no time to run around your city, concerning ourselves with your moronic people! Let them save themselves! We are here for the wizard!~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~SUDEMIN~ 35
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 28
END

IF ~~ THEN BEGIN 122 // from:
  SAY #56071 /* ~Well done, Korgan. You fit the role of drow very well indeed.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 147
END

IF ~~ THEN BEGIN 123 // from:
  SAY #56084 /* ~You heard her. Pretentious attitudes for everyone. Care to model yours, Jaheira? Just so we get it right?~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 481
END

IF ~~ THEN BEGIN 124 // from:
  SAY #56094 /* ~More and more, I enjoy the fear we wield down here.~ */
  IF ~  !IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("NALIA")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 157
  IF ~  IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~NALIAJ~ 286
END

IF ~~ THEN BEGIN 125 // from:
  SAY #56097 /* ~Yes, well, we're all aware of *your* views, Nalia.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 126 // from:
  SAY #56107 /* ~Power is on our side, sorcerer! You cannot hope to defeat us in this final reckoning! Your end is near at hand—wail if you must!~ [EDWIN89] */
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
END

IF ~~ THEN BEGIN 127 // from:
  SAY #56122 /* ~Oh, I don't know. She has a certain... charm.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 153
END

IF ~~ THEN BEGIN 128 // from:
  SAY #56153 /* ~Just as long as we are not targets while you... while... We're targets, aren't we?! That's what this is about; we fight while you sit there going "OHM" or some such!~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 17
END

IF ~~ THEN BEGIN 129 // from:
  SAY #56166 /* ~And they just strolled on by? Pardon me, madam, but you are no svirfneblin begging for help. Did you not sense their... despotic nature?~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 17
END

IF ~~ THEN BEGIN 130 // from:
  SAY #56232 /* ~Yes, well, he's provoked himself right into a fireball when next we meet. ~ */
  IF ~~ THEN EXTERN ~SUDEMIN~ 12
END

IF ~~ THEN BEGIN 131 // from:
  SAY #56430 /* ~Eh? The tanner from Athkatla has come here? Once again, it seems there is more to him than there first appeared. Come, boy... do you know where you were taken?~ */
  IF ~~ THEN EXTERN ~TRSKIN02~ 20
END

IF ~~ THEN BEGIN 132 // from:
  SAY #56440 /* ~Bah! Tales of Umar are nonsense, I can assure you. Nor does it sound like the work of ogres. We should check the cabin, if anywhere, <CHARNAME>.~ */
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~UHMAY01~ 19
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 291
  IF ~  !IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 171
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 170
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 228
END

IF ~~ THEN BEGIN 133 // from:
  SAY #56448 /* ~Hmm... I'd say this man has been rendered magically mindless. A zombie servant... how useful. (I can think of several others who could use similar treatment!)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 134 // from:
  SAY #56463 /* ~I disagree with you completely, although I'm sure you will ignore me. Bah! It's my finding that vengeance feels ever so much better than nobility.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 177
END

IF ~~ THEN BEGIN 135 // from:
  SAY #56475 /* ~Hah! Cuckoldry is punishable by imprisonment in this place, I hear. In Thay, it would be death. The wench should consider herself lucky!~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 22
END

IF ~~ THEN BEGIN 136 // from:
  SAY #56486 /* ~You do not fool us, pretty wench. It is obvious you want this gem, and if you do, you'll pay handsomely. Come now, how much is it truly worth to you?~ */
  IF ~~ THEN EXTERN ~RAELIS~ 4
END

IF ~~ THEN BEGIN 137 // from:
  SAY #56502 /* ~Obviously, the gnome's family is as insane as he is. The Hidden, is it? Sounds like some poor excuse for a theatrical title. Let us ignore these morons!~ */
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Anomen")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 294
  IF ~  !IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 286
END

IF ~~ THEN BEGIN 138 // from:
  SAY #56506 /* ~What is this?! Gith! Githyanki, in fact! Why would the Hidden have these creatures as enemies?!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #56530 /* ~We come as your rescuers, and you spit venom? I don't know about <CHARNAME>, but I don't like your attitude. I'd like to see you squirm for once, I think.~ */
  IF ~~ THEN EXTERN ~DELCIA~ 13
END

IF ~~ THEN BEGIN 140 // from:
  SAY #56883 /* ~Finally, something tangible, though they had better be worth the enormous expense. I might have bought better if <CHARNAME> had not paid you.~ */
  IF ~  !IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~ARAN~ 52
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 201
  IF ~  IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~AERIEJ~ 179
END

IF ~~ THEN BEGIN 141 // from:
  SAY #56888 /* ~Would someone *please* get this disgusting hairball out of my sight? (And his hamster.)~ */
  IF ~~ THEN EXTERN ~ARAN~ 52
END

IF ~~ THEN BEGIN 142 // from:
  SAY #56893 /* ~What color is the sky in your world, little girl? (Gods! Such ignorance of common sense.)~ */
  IF ~~ THEN EXTERN ~ARAN~ 52
END

IF ~~ THEN BEGIN 143 // from:
  SAY #57196 /* ~You cannot do this to us! We shall find you and have our revenge for this, gnat! (A fireball down his throat... yesssss, or maybe two!)~ */
  IF ~~ THEN EXTERN ~JARLAXLE~ 39
END

IF ~~ THEN BEGIN 144 // from:
  SAY #57389 /* ~Hmph, better to throw coins in the sea. It would prove as effective as the money you've spent here. (Ten gold say don't make it ten feet past the gate...)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #57696 /* ~Oh wonderful, now you are weakening in this darkest of moments! I knew I should have partnered with stronger party members. ~ */
  IF ~~ THEN REPLY #57698 /* ~Thank you for your concern, but I am not dead yet. Just... feeling strange.~ */ GOTO 146
  IF ~~ THEN REPLY #57699 /* ~Shut up! I will rest if I need to, and I don't need you chattering in the background.~ */ GOTO 147
  IF ~~ THEN REPLY #57700 /* ~And I should have a mage who is less of a snob, but this is no time for name-calling.~ */ GOTO 148
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #57701 /* ~I suppose having your soul ripped out will do that, but it's no excuse. We need to at least get me to safety. Then you can rest.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 147 // from: 145.1
  SAY #57702 /* ~*mutter* Should have left the lot of you when we were in Athkatla. Instead, I'm in an asylum with a soul-tearing lunatic and his vampire-on-a-leash.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 148 // from: 145.2
  SAY #57703 /* ~Rip <PRO_HISHER> soul out, and <PRO_HESHE>'s still quick with the insults. (Strong and resolute, but still a monkey.)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #57704 /* ~Okay, I'll put up with incompetence, insults, and all manner of foolishness, but I have to draw the line at transformations into dead gods of murder!~ */
  IF ~~ THEN REPLY #57705 /* ~If you don't mind, I'm having a bit of a crisis here!~ */ GOTO 150
  IF ~~ THEN REPLY #57706 /* ~That was me? I felt like I was watching it all from above...~ */ GOTO 153
  IF ~~ THEN REPLY #57707 /* ~Lord of Murder... It was so powerful...~ */ GOTO 154
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY #57708 /* ~I don't blame you, manifesting Bhaal and all. I wouldn't get used to that. You'll probably lose your mind to the void long before you can control it.~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 154.0 153.0 150.0
  SAY #57709 /* ~That's just a guess on my part, but accessing the avatar of a dead god cannot be good. Seems like having your soul taken has resulted in more than anyone could see.~ */
  IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY #57710 /* ~I'll be keeping an eye on you, <CHARNAME>. Best that you keep an eye on yourself as well.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 153 // from: 149.1
  SAY #57711 /* ~No, you were right here in the middle of it. You'll forgive me if I don't enjoy having the very essence of death in the party. Probably lose your mind to it, too.~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 154 // from: 149.2
  SAY #57712 /* ~I would not get used to it. As powerful as you think you might be, you'll probably lose your mind along with your stolen soul. ~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 155 // from:
  SAY #57900 /* ~This deal just gets better and better. We march to our doom while they stay here.~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 46
END

IF ~~ THEN BEGIN 156 // from:
  SAY #58153 /* ~Poor little Nalia. Not quite the troubled ne'er-do-wells you want to coddle? Perhaps we'll find some poor beggar with his cat caught in a tree somewhere.~ */
  IF ~~ THEN EXTERN ~NALIAJ~ 312
END

IF ~~ THEN BEGIN 157 // from:
  SAY #58154 /* ~It is the tone of nobility, woman. You share it as well, but you would rather slum with your lessers. Just as long as they are "needy."~ */
  IF ~~ THEN EXTERN ~NALIAJ~ 313
END

IF ~~ THEN BEGIN 158 // from:
  SAY #58156 /* ~Now I must babysit Aran's runaways? This grows tiresome.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #58190 /* ~Let me be the first to express concerns about going somewhere designed to hold mages. I do not like this.~ */
  IF ~  !IsValidForPartyDialogue("KORGAN")
~ THEN REPLY #58201 /* ~We will do what we must, Edwin.~ */ EXTERN ~ARAN~ 41
  IF ~  !IsValidForPartyDialogue("KORGAN")
~ THEN REPLY #58202 /* ~You will follow where I lead.~ */ EXTERN ~ARAN~ 41
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 185
END

IF ~~ THEN BEGIN 160 // from:
  SAY #58200 /* ~And where do you suppose I should be going? You have a nose that seems to sniff out the path of power, and I will wrest what portion of it I wish until I am sated. (And then, perhaps, we see what becomes of *you*!)~ */
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
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
END

IF ~~ THEN BEGIN 161 // from:
  SAY #58750 /* ~Rest assured, a Red Wizard lets no debt go unpaid, and you, Yoshimo, have just earned more pain than you thought possible. ~ */
  IF ~  !IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~YOSHJ~ 114
  IF ~  IsValidForPartyDialogue("MAZZY")
~ THEN EXTERN ~MAZZYJ~ 201
  IF ~  IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
~ THEN EXTERN ~JANJ~ 182
  IF ~  IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
~ THEN EXTERN ~VALYGARJ~ 119
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
~ THEN EXTERN ~HAERDAJ~ 150
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
~ THEN EXTERN ~CERNDJ~ 137
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
~ THEN EXTERN ~MINSCJ~ 211
END

IF WEIGHT #14 /* Triggers after states #: 234 236 237 238 239 even though they appear after this state */
~  Dead("degard")
!Global("TalkedDegardan","GLOBAL",4)
~ THEN BEGIN 162 // from:
  SAY #61093 /* ~Hah! And he thought himself a capable spellcaster! Perhaps those fools will think twice now before they send another of their goons to bellow hollow threats!~ */
  IF ~~ THEN REPLY #61094 /* ~Everything not well between you and the Red Wizards, Edwin?~ */ DO ~SetGlobal("TalkedDegardan","GLOBAL",4)
~ GOTO 163
  IF ~~ THEN REPLY #61095 /* ~So what exactly did you do to anger the Thayans?~ */ DO ~SetGlobal("TalkedDegardan","GLOBAL",4)
~ GOTO 163
  IF ~~ THEN REPLY #61096 /* ~So! You're nothing better than a rogue and a liar! Not even a Red Wizard, I see!~ */ DO ~SetGlobal("TalkedDegardan","GLOBAL",4)
~ GOTO 165
  IF ~~ THEN REPLY #61097 /* ~All right, all right, let's just go.~ */ DO ~SetGlobal("TalkedDegardan","GLOBAL",4)
~ GOTO 166
END

IF ~~ THEN BEGIN 163 // from: 162.1 162.0
  SAY #61098 /* ~Hmph. Let's just say that not every colleague is pleased with my disposition and I have been on an... extended leave from my compatriots in Thay.~ */
  IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 164 // from: 163.0
  SAY #61099 /* ~Not that it's any of your business! Being saddled with the company of monkeys should be enough self-punishment for anyone! But enough! Let us away!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 165 // from: 162.2
  SAY #61100 /* ~I am a Red Wizard, fool, and my difficulties with my colleagues are but a momentary obstacle! Continue to mock me, and you'll be speaking from a charred stump!~ */
  IF ~~ THEN REPLY #61102 /* ~Fine, fine. Let's just move on, then.~ */ GOTO 166
  IF ~~ THEN REPLY #61103 /* ~You've given me enough grief, wizard! Leave... and take your attitude with you.~ */ GOTO 167
  IF ~  OR(2)
!AreaType(CITY)
!AreaType(OUTDOOR)
~ THEN REPLY #61104 /* ~You've threatened me once too often, Edwin!~ */ GOTO 168
  IF ~  AreaType(CITY)
AreaType(OUTDOOR)
~ THEN REPLY #61108 /* ~You've threatened me once too often, Edwin!~ */ GOTO 169
END

IF ~~ THEN BEGIN 166 // from: 165.0 162.3
  SAY #61101 /* ~So be it. I've had enough banal chitchat of late to last me several lifetimes.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 167 // from: 165.1
  SAY #61105 /* ~As you would have it, foolish little <PRO_MANWOMAN>! There are a thousand other uses for my skills besides wasting them on such as you!~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0406",1045,523,S)
~ EXIT
END

IF ~~ THEN BEGIN 168 // from: 165.2
  SAY #61106 /* ~Not often enough, it seems!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 169 // from: 165.3
  SAY #61107 /* ~Not often enough, it seems! But I'll not waste another moment with you here! A million other exploits await elsewhere!~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 234 236 237 238 239 even though they appear after this state */
~  Gender(Myself,FEMALE)
Global("EdwinWoman","LOCALS",0)
~ THEN BEGIN 170 // from:
  SAY #61477 /* ~This is blasphemy! An outrage against nature and order! I must redouble my efforts to cancel the hideous and deforming nature of this Nether scourge!~ */
  IF ~~ THEN DO ~SetGlobal("EdwinWoman","LOCALS",1)
~ GOTO 171
END

IF ~~ THEN BEGIN 171 // from: 170.0
  SAY #61478 /* ~What?! Nothing! This is shameful and revolting! What are you pie-eyed vagrants gawking at? Staring at me with a plebeian vandal's charm! This is beyond treachery!~ */
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #61480 /* ~He he he. Looks like you're in some trouble. And by the way, nice rack.~ */ DO ~MakeUnselectable(0)
~ GOTO 172
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #61484 /* ~Hah! Looks like you're in some trouble now, wizard! I must admit, though, you've gained a fair shape.~ */ DO ~MakeUnselectable(0)
~ GOTO 172
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #61481 /* ~Edwin! Edwin! Calm down, calm down. We'll find a way to get you back to your original, not-quite-as-pleasing-to-the-eye shape.~ */ DO ~MakeUnselectable(0)
~ GOTO 173
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #61485 /* ~Edwin! Edwin! Calm down, calm down. We'll find a way to get you back to your original form.~ */ DO ~MakeUnselectable(0)
~ GOTO 173
  IF ~~ THEN REPLY #61482 /* ~If you're a woman, you've no place amongst us.~ */ DO ~MakeUnselectable(0)
~ GOTO 174
END

IF ~~ THEN BEGIN 172 // from: 171.1 171.0
  SAY #61483 /* ~What?! How dare you, scoundrel! Gawking at my mantle! (Hey, they aren't that bad come to think of it... Wait a moment. What happened to my... Oh no. No. NO!)~ */
  IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 173 // from: 174.1 171.3 171.2
  SAY #61486 /* ~You must find a way to cure this malignant ill! I would eternally grateful and bestow untold riches upon you and your kind.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 174 // from: 171.4
  SAY #61487 /* ~No! No! My moment of greatest need! I plead you remain! I beg of you! Sweet merciful warriors! Virtuous crusaders! Clever cutpurses! Please!~ */
  IF ~~ THEN REPLY #61488 /* ~Get lost... and stay lost.~ */ GOTO 175
  IF ~~ THEN REPLY #61489 /* ~All right then, stay with us. That was fun watching you beg though.~ */ GOTO 173
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #61490 /* ~I'll not coax sparks from carved sticks or farts from stones! My strange magics will free you from the surly bonds of earthly servitude!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 176 // from:
  SAY #61491 /* ~Traitors! Traitorous filth! Of all the low-down, double-dealing, twisted, and perverted betrayals! I WILL MAKE YOU PAY! DO YOU HEAR ME?! I WILL MAKE YOU PAY!~ */
  IF ~~ THEN DO ~SetGlobal("TurnedInEdwin","GLOBAL",1)
LeaveParty()
Enemy()
~ EXTERN ~DEGARD~ 6
END

IF ~~ THEN BEGIN 177 // from:
  SAY #61492 /* ~What? I've no idea of what you are talking about. (What is this fool babbling to me for?)~ */
  IF ~~ THEN EXTERN ~DEGARD~ 8
END

IF ~~ THEN BEGIN 178 // from:
  SAY #61493 /* ~Er... I am no Edwin, as you claim. I know him not. He sounds like a worthy mage of distinction, and I am probably weaker having not made his acquaintance.~ */
  IF ~~ THEN GOTO 181
END

IF ~~ THEN BEGIN 179 // from:
  SAY #61494 /* ~I am NOT! Uh, I mean, bah! Get out of my sight, you rotten urchin, before I fry you where you stand!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 180 // from: 172.0
  SAY #61495 /* ~Woman or not, my spellthrowing is unparallelled and will bring the wrath of cleansing hellfire upon you should the mood move me!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 181 // from: 178.0
  SAY #61496 /* ~My name is... Celisa of Waterdeep. Yes, daughter of... Kur... Kurdall Al... Ale... Kurdall Aleconnor, a wealthy mead-maker and owner of a chain of festhalls.~ */
  IF ~~ THEN GOTO 182
END

IF ~~ THEN BEGIN 182 // from: 181.0
  SAY #61497 /* ~No Edwin in our midst, I'm most sorry to say. Only Celisa Aleconnor. You'd best be off to capture this Edwin. He sounds like a formidable foe.~ */
  IF ~~ THEN EXTERN ~DEGARD~ 9
END

IF ~~ THEN BEGIN 183 // from:
  SAY #61498 /* ~Why... I'm just fine, you—(aargh! hold your tongue, fool!) Begone, you slithering eel!~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 16
END

IF ~~ THEN BEGIN 184 // from:
  SAY #61499 /* ~I said begone! Can you not understand the simplest of Common, you lumbering piece of filth?!~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 17
END

IF ~~ THEN BEGIN 185 // from:
  SAY #61500 /* ~My, but you are a flatterer! (Gah!) I mean... stop it, get lost! A fireball in your gullet would dampen your mood, lizard!~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 18
END

IF ~~ THEN BEGIN 186 // from:
  SAY #61501 /* ~GAAAAAHHHH! (Pig!) NOW YOU DIE!~ */
  IF ~~ THEN DO ~SpellNoDec("salvanas",WIZARD_MAGIC_MISSILE)
~ EXIT
END

IF ~~ THEN BEGIN 187 // from:
  SAY #61502 /* ~Really? That is the nicest... Gah! Begone, wench! (Although I always did think this robe fit rather well...)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #70537 /* ~Oh, why yes, THANK YOU for your gracious forgiveness for our GRIEVOUS error. (Let's see... one good fireball... no, make that two... plus a horrid wilting spell, yes, yes...)~ */
  IF ~~ THEN DO ~SetGlobal("KnightsInKeep","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 189 // from:
  SAY #70415 /* ~Give an ape a few spells, and he thinks himself worthy to experiment with every legendary artifact he stumbles over! (Had I been the one to find the marvelous machine, rest assured the results would have been far different.)~ */
  IF ~~ THEN EXTERN ~GORAPR~ 11
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 123
END

IF ~~ THEN BEGIN 190 // from:
  SAY #70515 /* ~*Now* she has a bad feeling. I see the Bhaal blood within her has suddenly gifted the brat with the miraculous powers of precognition. Let us be careful, friends, now that we have her warning!~ */
  IF ~~ THEN EXTERN ~IMOEN2J~ 44
END

IF ~~ THEN BEGIN 191 // from:
  SAY #78872 /* ~Gladly. What a terrible joke.~ */
  IF ~~ THEN REPLY #78873 /* ~I said forget it.~ */ EXTERN ~OHRHERAT~ 2
END

IF ~~ THEN BEGIN 192 // from:
  SAY #79525 /* ~The monkey's half right. I have traveled far and endured much in your company of chimps, <CHARNAME>, but it'll be some time before I enjoy anything remotely resembling ecstasy, I suspect.~ */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 11
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 228
END

IF ~~ THEN BEGIN 193 // from:
  SAY #80735 /* ~A monkey and a bear! I seem to recall seeing this act on street corner in Thay.~ */
  IF ~~ THEN EXTERN ~WILSON~ 15
END

IF ~~ THEN BEGIN 194 // from:
  SAY #74524 /* ~You don't seriously intend to let this wretched monkey get away talking to us like that, do you?~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #18 /* Triggers after states #: 234 236 237 238 239 even though they appear after this state */
~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 195 // from:
  SAY #75708 /* ~You monkeys are enjoying this, aren't you? Watching a civilized man struggle... I was not made for trees!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 2
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 15
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 502
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 410
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 128
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 252
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 208
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 234
  IF ~  IsValidForPartyDialogue("keldorn")
~ THEN EXTERN ~KELDORJ~ 265
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 192
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 539
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN EXTERN ~IMOEN2J~ 55
  IF ~  IsValidForPartyDialogue("haerdalis")
~ THEN EXTERN ~HAERDAJ~ 161
END

IF ~~ THEN BEGIN 196 // from:
  SAY #74713 /* ~Stand aside and let us through, you greasy baboon.~ */
  IF ~~ THEN EXTERN ~OHDBBRO~ 2
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 162
END

IF ~~ THEN BEGIN 197 // from:
  SAY #74713 /* ~Stand aside and let us through, you greasy baboon.~ */
  IF ~~ THEN EXTERN ~AERIEJ~ 224
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 164
  IF ~  IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIEJ~ 226
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 163
END

IF ~~ THEN BEGIN 198 // from:
  SAY #74806 /* ~The half-orc makes my skin crawl, but it's got a point.~ */
  IF ~~ THEN EXTERN ~OHDBRIDE~ 0
END

IF ~~ THEN BEGIN 199 // from:
  SAY #74806 /* ~The half-orc makes my skin crawl, but it's got a point.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 538
END

IF ~~ THEN BEGIN 200 // from:
  SAY #74848 /* ~Spoken like someone who's never actually experienced the myriad charms of barrel'd monkeys.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 318
END

IF ~~ THEN BEGIN 201 // from:
  SAY #74858 /* ~And why not? It's not as though this lot could smell worse.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 320
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 242
  IF ~  IsValidForPartyDialogue("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 60
END

IF WEIGHT #19 /* Triggers after states #: 234 236 237 238 239 even though they appear after this state */
~  Global("OHN_EDWIN_LEAVE","LOCALS",1)
~ THEN BEGIN 202 // from:
  SAY #88466 /* ~This is an insult. If you accept this miserable excuse for a practitioner of the arcane arts into your party, you will endure an incalculable loss—my departure.~ */
  IF ~~ THEN REPLY #88467 /* ~Truly, Edwin? After all we've been through together?~ */ DO ~SetGlobal("OHN_EDWIN_LEAVE","LOCALS",0)
~ GOTO 203
  IF ~~ THEN REPLY #88468 /* ~Very well. I've traveled with you long enough.~ */ DO ~SetGlobal("OHN_EDWIN_LEAVE","LOCALS",0)
~ GOTO 204
  IF ~~ THEN REPLY #88469 /* ~Then you give me no choice. Neera, I need Edwin more than I need you.~ */ DO ~SetGlobal("OHN_EDWIN_LEAVE","LOCALS",0)
~ EXTERN ~NEERAJ~ 533
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY #88470 /* ~Truly, <CHARNAME>. Your pitiful attempt to manipulate my emotions is foolish, ineffectual, and near insulting. Nostalgia has no sway over one who can bend even time to his will.~ */
  IF ~~ THEN REPLY #88471 /* ~Then I suppose this is farewell, Edwin.~ */ GOTO 204
  IF ~~ THEN REPLY #88472 /* ~So be it. Edwin has given me an ultimatum, Neera. I have decided that he will remain.~ */ EXTERN ~NEERAJ~ 533
END

IF ~~ THEN BEGIN 204 // from: 203.0 202.1
  SAY #88473 /* ~Bah! When this woman's wild magic turns your little group into a colony of ants, be grateful if I am not nearby to stomp on you.~ */
  IF ~~ THEN GOTO 206
END

IF WEIGHT #20 /* Triggers after states #: 234 236 237 238 239 even though they appear after this state */
~  Global("OHN_EDWIN_RWE","LOCALS",1)
~ THEN BEGIN 205 // from:
  SAY #90730 /* ~No, no, no! No more, <CHARNAME>! I can stand no more! This is as far as I go!~ */
  IF ~~ THEN REPLY #90731 /* ~What? You can't leave now, Edwin.~ */ DO ~SetGlobal("OHN_EDWIN_RWE","LOCALS",0)
~ GOTO 208
  IF ~~ THEN REPLY #90732 /* ~Don't even THINK of walking away from me, mage.~ */ DO ~SetGlobal("OHN_EDWIN_RWE","LOCALS",0)
~ GOTO 207
  IF ~~ THEN REPLY #90733 /* ~Fine. I don't need you at the moment anyway.~ */ DO ~SetGlobal("OHN_EDWIN_RWE","LOCALS",0)
~ GOTO 206
END

IF ~~ THEN BEGIN 206 // from: 208.0 205.2 204.0
  SAY #90734 /* ~You may find me at the Copper Coronet... if you are fortunate enough to survive this foolish affair.~ */
  IF ~  HasItem("EDWINKEY",Myself)
~ THEN DO ~GiveItem("EDWINKEY",Player1)
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
EscapeAreaMove("AR0406",689,1127,S)
~ EXIT
  IF ~  !HasItem("EDWINKEY",Myself)
~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
EscapeAreaMove("AR0406",689,1127,S)
~ EXIT
END

IF ~~ THEN BEGIN 207 // from: 205.1
  SAY #90735 /* ~Don't even THINK of trying to stop me. But you don't think, do you? Thinking's so very difficult for you!~ */
  IF ~~ THEN GOTO 208
END

IF ~~ THEN BEGIN 208 // from: 207.0 205.0
  SAY #90736 /* ~Don't tell me what I can and cannot do, you wretched baboon! I journey with you only so long as you serve my purposes. My purposes do not include attacking other Thayans or enacting some reckless girl's post-adolescent revenge fantasy! Goodbye!~ */
  IF ~~ THEN GOTO 206
END

IF ~~ THEN BEGIN 209 // from:
  SAY #272514 /* ~Yes? What is it that you want? (Can't this cretin see that I am busy?)~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 13
END

IF ~~ THEN BEGIN 210 // from:
  SAY #272516 /* ~Oh.. *Ahem* Yes Captain, thank you. You are quite skilled as well. (That was unexpected  - what is she after?)~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 14
END

IF ~~ THEN BEGIN 211 // from:
  SAY #272518 /* ~When I do what, Captain? (She is clearly infatuated with you. Patience, Odesseiron. You must not be seen as desparate.)~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 15
END

IF ~~ THEN BEGIN 212 // from:
  SAY #272520 /* ~Yes, Schael. Please continue with your story.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 213 // from:
  SAY #67879 /* ~What? Why are you looking at me? Take the power already. Isn't that what you came here for? (I didn't follow this insufferable monkey around to see all its divinity lost! What would I get out of that?!)~ [EDWI2513] */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 139
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 377
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
~ THEN EXTERN ~ANOMENJ~ 376
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
END

IF ~~ THEN BEGIN 214 // from:
  SAY #70387 /* ~<CHARNAME>, no doubt there are numerous items of powerful magic within this cache, lifted from the simian brutes that have overrun the town. (Though I will not be so foolish as to take my hand from my own valuables while we are here!)~ */
  IF ~~ THEN EXTERN ~AMCARRAS~ 13
END

IF ~~ THEN BEGIN 215 // from:
  SAY #70415 /* ~Give an ape a few spells, and he thinks himself worthy to experiment with every legendary artifact he stumbles over! (Had I been the one to find the marvelous machine, rest assured the results would have been far different.)~ */
  IF ~~ THEN EXTERN ~GORAPR~ 11
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 149
END

IF ~~ THEN BEGIN 216 // from:
  SAY #70444 /* ~Oh, it is *you* again. Well, I suppose it holds true that a good villain never knows how to die properly the first couple of times, yes?~ */
  IF ~  True()
~ THEN EXTERN ~SAREV25A~ 68
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 265
END

IF ~~ THEN BEGIN 217 // from:
  SAY #70492 /* ~Okay, okay, so the monkey has his collar. Can we go now?!~ */
  IF ~  True()
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 215
END

IF ~~ THEN BEGIN 218 // from:
  SAY #70515 /* ~*Now* she has a bad feeling. I see the Bhaal blood within her has suddenly gifted the brat with the miraculous powers of precognition. Let us be careful, friends, now that we have her warning!~ */
  IF ~~ THEN EXTERN ~IMOEN2J~ 166
END

IF ~~ THEN BEGIN 219 // from:
  SAY #70537 /* ~Oh, why yes, THANK YOU for your gracious forgiveness for our GRIEVOUS error. (Let's see... one good fireball... no, make that two... plus a horrid wilting spell, yes, yes...)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 220 // from:
  SAY #70557 /* ~The old hag smells like dirty laundry! Bah! Why must we always trudge through filth to reach the diamond?! Anyhow... through all that stench, she's got power. Nothing I would touch, but power nevertheless.~ */
  IF ~~ THEN EXTERN ~HGNYA01~ 7
END

IF ~~ THEN BEGIN 221 // from:
  SAY #71400 /* ~Complain, complain, complain. It's so hard to find good help these days.~ */
  IF ~~ THEN EXTERN ~SARWAI01~ 1
END

IF ~~ THEN BEGIN 222 // from:
  SAY #71452 /* ~At last, this simian <PRO_MANWOMAN> who claims to lead us is showing the type of ruthlessness I can respect! (Though <CHARNAME>'s callous disregard for others could prove my own undoing if I am not careful...) ~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 265
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 466
END

IF ~~ THEN BEGIN 223 // from:
  SAY #71625 /* ~What? That is it? No mention of how I could squash the pathetic Elminster with a wave of my little finger? Bah! Writers! (Although striking fear with my name is good, yes, yes, very good...)~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 224 // from:
  SAY #72447 /* ~Oh, sure... everybody blames the mage. (It must be envy that makes these inferiors resent us so.)~ */
  IF ~~ THEN EXTERN ~SARKIS01~ 26
END

IF ~~ THEN BEGIN 225 // from:
  SAY #72448 /* ~Out of professional courtesy, I must insist we slay the countess rather than my fellow mage. (Although killing the wizard could lead to the acquisition of several powerful magic items...)~ */
  IF ~~ THEN EXTERN ~SARKIS01~ 34
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 320
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 221
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 607
  IF ~  IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",MASK_GOOD)
~ THEN EXTERN ~ANOMENJ~ 402
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 158
END

IF ~~ THEN BEGIN 226 // from:
  SAY #72572 /* ~We are not running a courier service, <CHARNAME>. Let us restore these petrified lackeys to do this fetch-and-retrieve errand for us.~ */
  IF ~~ THEN EXTERN ~BAZEYE01~ 27
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 339
END

IF WEIGHT #21 /* Triggers after states #: 234 236 237 238 239 even though they appear after this state */
~  Global("OHD_homeagain","OH5400",1)
~ THEN BEGIN 227 // from:
  SAY #92232 /* ~You chimps should count yourself lucky Edwin Odesseiron was there to help you through Lunia.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_homeagain","OH5400",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 231
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 163
  IF ~  IsValidForPartyDialogue("nalia")
~ THEN EXTERN ~NALIAJ~ 340
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 224
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 279
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 279
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 614
END

IF ~~ THEN BEGIN 228 // from:
  SAY #92186 /* ~You want to fight those things? You're going to get us killed, you gibbering baboon!~ */
  IF ~~ THEN EXTERN ~OHDDIXTH~ 0
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 543
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 483
END

IF ~~ THEN BEGIN 229 // from:
  SAY #92112 /* ~You want to fight those things? You're going to get us killed, you gibbering baboon!~ */
  IF ~~ THEN EXTERN ~OHDDIXTH~ 6
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 544
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 484
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 280
  IF ~  IsValidForPartyDialogue("haerdalis")
~ THEN EXTERN ~HAERDAJ~ 186
END

IF ~~ THEN BEGIN 230 // from:
  SAY #86173 /* ~A powerful undead can control others. It would seem this Korkorran is part of the infamous overmind of liches that Larloch controls.~ */
  IF ~~ THEN EXTERN ~OHHKORK~ 49
END

IF WEIGHT #22 /* Triggers after states #: 234 236 237 238 239 even though they appear after this state */
~  Global("OHN_EDWIN_LEAVE","LOCALS",1)
~ THEN BEGIN 231 // from:
  SAY #88466 /* ~This is an insult. If you accept this miserable excuse for a practitioner of the arcane arts into your party, you will endure an incalculable loss—my departure.~ */
  IF ~~ THEN REPLY #88467 /* ~Truly, Edwin? After all we've been through together?~ */ DO ~SetGlobal("OHN_EDWIN_LEAVE","LOCALS",0)
~ GOTO 232
  IF ~~ THEN REPLY #88468 /* ~Very well. I've traveled with you long enough.~ */ DO ~SetGlobal("OHN_EDWIN_LEAVE","LOCALS",0)
~ GOTO 233
  IF ~~ THEN REPLY #88469 /* ~Then you give me no choice. Neera, I need Edwin more than I need you.~ */ DO ~SetGlobal("OHN_EDWIN_LEAVE","LOCALS",0)
~ EXTERN ~NEERAJ~ 704
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #88470 /* ~Truly, <CHARNAME>. Your pitiful attempt to manipulate my emotions is foolish, ineffectual, and near insulting. Nostalgia has no sway over one who can bend even time to his will.~ */
  IF ~~ THEN REPLY #88471 /* ~Then I suppose this is farewell, Edwin.~ */ GOTO 233
  IF ~~ THEN REPLY #88472 /* ~So be it. Edwin has given me an ultimatum, Neera. I have decided that he will remain.~ */ EXTERN ~NEERAJ~ 704
END

IF ~~ THEN BEGIN 233 // from: 232.0 231.1
  SAY #88473 /* ~Bah! When this woman's wild magic turns your little group into a colony of ants, be grateful if I am not nearby to stomp on you.~ */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR4500",2552,1445,SW)
~ EXIT
  IF ~  AreaCheck("AR4500")
~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
MoveToPointNoInterrupt([2552.1445])
Face(SW)
~ EXIT
END

IF WEIGHT #1 ~  Dead("Dynaheir")
Global("DynaheirDeath","GLOBAL",0)
Global("BeenInPartyTogether","GLOBAL",0)
Global("EdwinReward","GLOBAL",1)
Global("bd_accepted_edwin_quest","GLOBAL",1)
OR(3)
Global("KickDynaheirOut","GLOBAL",1)
Global("FindDynaheir","GLOBAL",2)
NextTriggerObject("dynaheir")
NumTimesTalkedTo(0)
~ THEN BEGIN 234 // from:
  SAY #216738 /* ~So the witch Dynaheir is dead! I would have thought her more formidable to be so far from her homeland. Why then was she here? Her demise is not the checkmate I had hoped for, merely the check. What? What do you want?! (Oh yes, the matter of payment, although I begin to doubt whether their input was all that vital. Still, something for their trouble is in order, if only to appease them.) As we never fixed a price, your payment shall be one year of my services as a wizard. I am sure you agree that my guidance will be far more valuable than any monetary sum.~ */
  IF ~~ THEN REPLY #216739 /* ~I suppose that shall suffice, though it's a dirty switch you've pulled.~ */ DO ~SetGlobal("DynaheirDeath","GLOBAL",1)
EraseJournalEntry(227031)
EraseJournalEntry(227171)
EraseJournalEntry(227274)
EraseJournalEntry(227275)
~ SOLVED_JOURNAL #227033 /* ~Edwin and Dynaheir
Dynaheir is dead, as Edwin wished her to be. Success of a sort, I suppose.~ */ EXIT
  IF ~~ THEN REPLY #216740 /* ~Not to sleight your abilities, but I would rather have my payment in coin.~ */ DO ~SetGlobal("DynaheirDeath","GLOBAL",1)
~ GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.1
  SAY #216741 /* ~(Their desires lack vision and originality.) If simple coin be all you wish, perhaps I would rather travel with more "adventurous" adventurers. Take what I have, and remember your choice when it is long since spent.~ */
  IF ~~ THEN DO ~SetGlobal("FindDynaheir","GLOBAL",2)
EraseJournalEntry(227031)
EraseJournalEntry(227171)
EraseJournalEntry(227274)
EraseJournalEntry(227275)
GiveGoldForce(500)
LeaveParty()
EscapeArea()
~ SOLVED_JOURNAL #227033 /* ~Edwin and Dynaheir
Dynaheir is dead, as Edwin wished her to be. Success of a sort, I suppose.~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 238 239 even though they appear after this state */
~  HappinessLT(Myself,-290)
~ THEN BEGIN 236 // from:
  SAY #216742 /* ~You would cast me out as though I were a servant? (They will all pay for their insolence!)~ */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 238 239 even though they appear after this state */
~  False()
~ THEN BEGIN 237 // from:
  SAY #216743 /* ~You would have me leave the group? I agree to do so, but only as it serves my purposes for the time being. (I will wait here, but I am not a patient man.)~ */
  IF ~~ THEN DO ~LeaveParty()
SetDialogue("EDWINP_")
~ EXIT
END

IF WEIGHT #3 ~  GlobalTimerExpired("Edwin","GLOBAL")
Global("FindDynaheir","GLOBAL",0)
!Dead("Dynaheir")
~ THEN BEGIN 238 // from:
  SAY #217218 /* ~I have hired you for a purpose and expect results. If the witch is not found and dealt with soon I shall be forced to sever our relationship (gladly, I should think).~ */
  IF ~~ THEN DO ~SetGlobalTimer("Edwin","GLOBAL",SIX_DAYS)
SetGlobal("FindDynaheir","GLOBAL",1)
~ EXIT
END

IF WEIGHT #5 ~  GlobalTimerExpired("Edwin","GLOBAL")
Global("FindDynaheir","GLOBAL",1)
!Dead("Dynaheir")
~ THEN BEGIN 239 // from:
  SAY #217220 /* ~(If they'll not do the deed, then our deal is forfeit!) You have taken too long and wasted my time. I shall find more active lackeys to do my bidding. Good Riddance!~ */
  IF ~~ THEN DO ~SetGlobal("FindDynaheir","GLOBAL",2)
EraseJournalEntry(227274)
EraseJournalEntry(227031)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 240 // from:
  SAY #210682 /* ~Why do you stay the killing blow?! Kill her!~ */
  IF ~~ THEN EXTERN ~DYNAHE~ 8
END

IF ~~ THEN BEGIN 241 // from:
  SAY #210683 /* ~Listen not to the witch's lies! We had a deal!~ */
  IF ~~ THEN EXTERN ~DYNAHE~ 9
END

IF ~~ THEN BEGIN 242 // from:
  SAY #210684 /* ~Wise, if cowardly. Begone, that the witch and I may settle our differences! (Now she is mine to be sure!) You'll have little protection now, witch!~ */
  IF ~~ THEN EXTERN ~DYNAHE~ 19
END

IF ~~ THEN BEGIN 243 // from:
  SAY #210685 /* ~(Her power is nothing without the will to use it!) Step from behind your excuses and let us end this here!~ */
  IF ~~ THEN EXTERN ~DYNAHE~ 14
END

IF ~~ THEN BEGIN 244 // from:
  SAY #210686 /* ~Nothing changes with the distance! You are Wychlaran of Rashemen, I am a wizard of Thay! That you are here means I must be as well!~ */
  IF ~~ THEN EXTERN ~DYNAHE~ 15
END

IF ~~ THEN BEGIN 245 // from:
  SAY #210687 /* ~(I'll not suffer her insults!) Die as you should!~ */
  IF ~~ THEN DO ~ActionOverride("Dynaheir",DialogueInterrupt(FALSE))
EraseJournalEntry(227171)
EraseJournalEntry(227274)
EraseJournalEntry(227275)
EraseJournalEntry(227031)
LeaveParty()
ChangeAIScript("",DEFAULT)
SetDialogue("EDWIN_")
ActionOverride("dynaheir",SetDialogue("dynahe"))
SetGlobal("Handle_it_yourselves","GLOBAL",1)
SetGlobal("Edwinfight2","GLOBAL",1)
~ SOLVED_JOURNAL #227034 /* ~Edwin and Dynaheir
I have severed my alliance with Edwin, as I do not wish his kind of influence within my party.~ */ EXIT
  IF ~  InParty("Minsc")
~ THEN DO ~ActionOverride("Dynaheir",DialogueInterrupt(FALSE))
EraseJournalEntry(227171)
EraseJournalEntry(227274)
EraseJournalEntry(227275)
EraseJournalEntry(227031)
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",ChangeAIScript("",DEFAULT))
ActionOverride("Minsc",SetDialogue("minsc"))
LeaveParty()
SetDialogue("EDWIN_")
ActionOverride("dynaheir",SetDialogue("dynahe"))
SetGlobal("Handle_it_yourselves","GLOBAL",1)
SetGlobal("minsc_with_dynaheir","GLOBAL",1)
SetGlobal("Edwinfight2","GLOBAL",1)
~ JOURNAL #227034 /* ~Edwin and Dynaheir
I have severed my alliance with Edwin, as I do not wish his kind of influence within my party.~ */ EXIT
END

IF ~~ THEN BEGIN 246 // from:
  SAY #210688 /* ~(If they'll not do the deed, then our deal is forfeit!) You side with the witch then you will die with her! Beware my return!~ */
  IF ~~ THEN DO ~SetGlobal("EdwinAbandoned","GLOBAL",1)
SetGlobalTimer("EdwinReturn","GLOBAL",TEN_DAYS)
EraseJournalEntry(227031)
LeaveParty()
EscapeArea()
~ SOLVED_JOURNAL #227034 /* ~Edwin and Dynaheir
I have severed my alliance with Edwin, as I do not wish his kind of influence within my party.~ */ EXIT
END

IF ~~ THEN BEGIN 247 // from:
  SAY #228162 /* ~Hold a moment! Ekandor? Is that you?! Why do you pursue such a disreputable-looking woman?~ [NEA6A] */
  IF ~~ THEN EXTERN ~NEEKANDO~ 1
END

IF ~~ THEN BEGIN 248 // from:
  SAY #228163 /* ~Fallen in?! If anything, I have uplifted these uncouth louts with my mere presence! They serve me, not the other way around! And what use is this girl?~ [NEA6C] */
  IF ~~ THEN EXTERN ~NEEKANDO~ 2
END

IF ~~ THEN BEGIN 249 // from:
  SAY #228164 /* ~Ehm, <CHARNAME>, perhaps it would be best if we let Ekandor have this person. While his intellect towers over yours, among my former colleagues he is not the most, shall we say "stable"?~ [NEA6F] */
  IF ~~ THEN EXTERN ~NEEKANDO~ 3
END

IF ~~ THEN BEGIN 250 // from:
  SAY #228165 /* ~You would dare attack a fellow Wizard of Thay? Stand down before I smite you and deliver your charred remains to your superiors. In Ekandor's, er, absence, I outrank you all!~ [NEA18] */
  IF ~~ THEN EXTERN ~NETHAY01~ 1
END

IF ~~ THEN BEGIN 251 // from:
  SAY #228166 /* ~I cannot abide this foolishness! It was one thing to fend off my fellow Red Wizards, but I will not aid this woman when she is the target of my own brethren! If you give shelter to this urchin, I will take my leave of you.~ [NEB8] */
  IF ~~ THEN EXTERN ~NEERA_~ 14
END

IF ~~ THEN BEGIN 252 // from:
  SAY #228167 /* ~Fine! See how far she gets you! Your wailing over my absence will be heard throughout the realms!~ [NEB10] */
  IF ~  False()
~ THEN DO ~LeaveParty()
SetGlobalTimer("NEERATIMER","GLOBAL",ONE_DAY)
AddJournalEntry(231609,INFO)
SetGlobal("NEERAPARTY","GLOBAL",1)
ActionOverride("NEERA",DestroySelf())
CreateCreatureObjectOffset("NEERA",Player1,[0.0])
ActionOverride("NEERA",JoinPartyOverride())
~ EXIT
  IF ~  False()
XPLT(Player1,39999)
~ THEN DO ~LeaveParty()
SetGlobalTimer("NEERATIMER","GLOBAL",ONE_DAY)
AddJournalEntry(231609,INFO)
SetGlobal("NEERAPARTY","GLOBAL",1)
ActionOverride("NEERA",DestroySelf())
CreateCreatureObjectOffset("NEERA",Player1,[0.0])
ActionOverride("NEERA",JoinPartyOverride())
~ EXIT
  IF ~  False()
XPLT(Player1,10000)
~ THEN DO ~LeaveParty()
SetGlobalTimer("NEERATIMER","GLOBAL",ONE_DAY)
AddJournalEntry(231609,INFO)
SetGlobal("NEERAPARTY","GLOBAL",1)
ActionOverride("NEERA",DestroySelf())
CreateCreatureObjectOffset("NEERA",Player1,[0.0])
ActionOverride("NEERA",JoinPartyOverride())
~ EXIT
  IF ~~ THEN DO ~LeaveParty()
AddJournalEntry(231609,INFO)
SetGlobalTimer("NEERATIMER","GLOBAL",ONE_DAY)
SetGlobal("NEERAPARTY","GLOBAL",1)
ActionOverride("NEERA",JoinParty())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 253 // from:
  SAY #228334 /* ~Oh, boo hoo, you orcish brute. So your friends tired of playing with you. Do you have to bore the rest of us with your pathetic tale?~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1139
END

IF ~~ THEN BEGIN 254 // from:
  SAY #228335 /* ~What a surprise! A half-orc threatens violence on a man of intellect. (I must look into fashioning some manner of slave collar for this beast. He could prove a useful attack dog.)~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1140
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 7
END

IF ~~ THEN BEGIN 255 // from:
  SAY #230403 /* ~Of course I will overthrow you underdeveloped primates... when the time is right.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1186
END

IF ~~ THEN BEGIN 256 // from:
  SAY #230550 /* ~You can't be serious. I speak ill of all of you in equal—~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1237
END

IF ~~ THEN BEGIN 257 // from:
  SAY #230403 /* ~Of course I will overthrow you underdeveloped primates... when the time is right.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1277
END

IF ~~ THEN BEGIN 258 // from:
  SAY #230550 /* ~You can't be serious. I speak ill of all of you in equal—~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1328
END

IF ~~ THEN BEGIN 259 // from:
  SAY #231921 /* ~Excuse me if I chortle, drow. I doubt you would rank within the top five spellcasters within your own bed!~ */
  IF ~~ THEN EXTERN ~BAELOTH~ 22
END

IF ~~ THEN BEGIN 260 // from:
  SAY #231923 /* ~What?! That quick wit will last you only so long, dark one. (If we elect to bring him with us, I shall see that I am rewarded handsomely for his head.)~ */
  IF ~  !InParty("TIAX")
~ THEN EXTERN ~BAELOTH~ 23
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 10
END

IF ~~ THEN BEGIN 261 // from:
  SAY #246065 /* ~Wonderful. Another chimp to add to the menagerie.~ */
  IF ~~ THEN EXTERN ~BDCHILD~ 2
END

IF ~~ THEN BEGIN 262 // from:
  SAY #246199 /* ~Another doppelganger. Am I the only one who hates these things?~ */
  IF ~~ THEN DO ~AddJournalEntry(259574,QUEST_DONE)
ActionOverride("bdimoedo",ChangeAnimation("bddoppgr"))
~ EXIT
END

IF ~~ THEN BEGIN 263 // from:
  SAY #243178 /* ~Idiot! Isn't it obvious? A wind howls next to a babbling brook, shaking the leaves of a nearby tree.~ [BD43178] */
  IF ~~ THEN DO ~SetGlobal("bd_menhir_riddle_won","global",1)
~ EXTERN ~BDMENHI2~ 2
END

IF ~~ THEN BEGIN 264 // from:
  SAY #235652 /* ~Caelar's hounds challenge us at last—if anyone can translate their chittering words, do so.~ [BD35652] */
  IF ~~ THEN EXTERN ~BDIVANN~ 0
  IF ~  IsValidForPartyDialogue("MKhiin")
~ THEN EXTERN ~BDMKHIIJ~ 0
  IF ~  IsValidForPartyDialogue("Safana")
~ THEN EXTERN ~SAFANJ~ 51
END

IF ~~ THEN BEGIN 265 // from:
  SAY #235694 /* ~A trap? I think not. Look around. The "Shining Lady" has many strengths, but subtlety is not among them.~ [BD35694] */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 30
END

IF ~~ THEN BEGIN 266 // from:
  SAY #269574 /* ~There are few who'd like to see Caelar's light snuffed out more than I, but you're a fool if you think it might happen this day. Her advisor, Hephernaan, and the mage Oloneiros are with her. Their magic is proof against all but the most powerful spells.~ [BD69574] */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 33
END

IF ~~ THEN BEGIN 267 // from:
  SAY #264770 /* ~There are few who'd like to see Caelar's light snuffed out more than I, but you're a fool if you think it might happen this night. Her advisor, Hephernaan, and the mage Oloneiros are with her. Their magic is proof against all but the most powerful spells.~ [BD64770] */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 33
END

IF ~~ THEN BEGIN 268 // from:
  SAY #235751 /* ~Words will fail her when she kneels before me, begging for mercy. (And from Odesseiron she will receive none!)~ */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 38
END

IF ~~ THEN BEGIN 269 // from:
  SAY #242271 /* ~Quite the opposite. The wise seek to curry the favor of the powerful.~ [BD42271] */
  IF ~~ THEN EXTERN ~DYNAHJ~ 76
END

IF ~~ THEN BEGIN 270 // from:
  SAY #242273 /* ~The wise had best mind their tongue, or it'll be torn from their filthy mouths! Who is this Rashemi scum? I'll not tolerate her presence!~ */
  IF ~~ THEN REPLY #242274 /* ~And I'll not tolerate yours, Edwin. Calm yourself, but do it elsewhere—the camp if you must.~ */ GOTO 271
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY #242275 /* ~Edwin's staying with me. Anyone who has a problem with that can wait for me back at the camp.~ */ EXTERN ~MINSCJ~ 351
  IF ~  !IsValidForPartyDialogue("MINSC")
!Global("chapter","global",8)
~ THEN REPLY #242275 /* ~Edwin's staying with me. Anyone who has a problem with that can wait for me back at the camp.~ */ EXTERN ~DYNAHJ~ 77
  IF ~  !IsValidForPartyDialogue("MINSC")
Global("chapter","global",8)
~ THEN REPLY #242275 /* ~Edwin's staying with me. Anyone who has a problem with that can wait for me back at the camp.~ */ DO ~AddJournalEntry(259651,INFO)
EraseJournalEntry(259652)
~ EXTERN ~DYNAHJ~ 77
END

IF ~~ THEN BEGIN 271 // from: 270.0
  SAY #242276 /* ~You cast the noble Edwin Odesseiron aside for this... this WITCH? So be it. When your senses return, you shall find me in your camp, enjoying more civilized company.~ [BD42276] */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
  IF ~  Global("chapter","global",8)
~ THEN DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)
AddJournalEntry(259652,INFO)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 272 // from:
  SAY #242280 /* ~And what do those who lay with rodents get, I wonder?~ [BD42280] */
  IF ~~ THEN EXTERN ~MINSCJ~ 353
END

IF ~~ THEN BEGIN 273 // from:
  SAY #242282 /* ~Hm. I suppose a rodent would have some wisdom to share with a Rashemi savage.~ */
  IF ~~ THEN REPLY #242283 /* ~Silence, you two. We've enough to worry about without fighting amongst ourselves. Edwin, leave us.~ */ GOTO 274
  IF ~~ THEN REPLY #242284 /* ~Anyone who has a problem with Edwin can wait back at camp.~ */ EXTERN ~MINSCJ~ 354
END

IF ~~ THEN BEGIN 274 // from: 273.0
  SAY #242285 /* ~You cast the noble Edwin Odesseiron aside for this... this... THIS? So be it. When your senses return, you shall find me in your camp, enjoying more civilized company.~ [BD42285] */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
  IF ~  Global("chapter","global",8)
~ THEN DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)
AddJournalEntry(259652,INFO)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
END

IF WEIGHT #23 ~  Global("bd_edwin_join","global",2)
OR(2)
IsValidForPartyDialogue("DYNAHEIR")
IsValidForPartyDialogue("MINSC")
~ THEN BEGIN 275 // from:
  SAY #242287 /* ~What is this? You cannot seriously ask a Thayan of my rank, a Red Wizard of the highest order, to work alongside Rashemi scum!~ [BD42287] */
  IF ~~ THEN REPLY #242288 /* ~Neither do I. Leave us, Edwin, and head to the camp.~ */ GOTO 276
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
!IsValidForPartyDialogue("MINSC")
!Global("chapter","global",8)
~ THEN REPLY #242289 /* ~Forgive me, Dynaheir. We need all the help we can get to face what lies ahead. ~ */ EXTERN ~DYNAHJ~ 78
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
!IsValidForPartyDialogue("MINSC")
Global("chapter","global",8)
~ THEN REPLY #242289 /* ~Forgive me, Dynaheir. We need all the help we can get to face what lies ahead. ~ */ DO ~AddJournalEntry(259651,INFO)
EraseJournalEntry(259652)
~ EXTERN ~DYNAHJ~ 78
  IF ~  !IsValidForPartyDialogue("DYNAHEIR")
IsValidForPartyDialogue("MINSC")
~ THEN REPLY #242290 /* ~Forgive me, Minsc... and Boo. We need all the help we can get to face what lies ahead.~ */ EXTERN ~MINSCJ~ 355
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
IsValidForPartyDialogue("MINSC")
!Global("chapter","global",8)
~ THEN REPLY #242291 /* ~Forgive me, Dynaheir, Minsc... and Boo. We need all the help we can get to face what lies ahead.~ */ EXTERN ~DYNAHJ~ 78
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
IsValidForPartyDialogue("MINSC")
Global("chapter","global",8)
~ THEN REPLY #242291 /* ~Forgive me, Dynaheir, Minsc... and Boo. We need all the help we can get to face what lies ahead.~ */ DO ~AddJournalEntry(259651,INFO)
EraseJournalEntry(259652)
~ EXTERN ~DYNAHJ~ 78
  IF ~~ THEN REPLY #242292 /* ~I am giving the orders. If you won't follow them, then leave and fend for yourself. ~ */ GOTO 276
END

IF ~~ THEN BEGIN 276 // from: 275.6 275.0
  SAY #242293 /* ~You cast Edwin Odesseiron aside for this... this WITCH? So be it. When your senses return, you shall find me at the camp, enjoying more civilized company.~ [BD42293] */
  IF ~~ THEN DO ~SetGlobal("bd_edwin_join","global",1)
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
  IF ~  Global("chapter","global",8)
~ THEN DO ~SetGlobal("bd_edwin_join","global",1)
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)
AddJournalEntry(259652,INFO)
EraseJournalEntry(259651)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 277 // from:
  SAY #243508 /* ~We meet again, Vichand.~ [BD43508] */
  IF ~~ THEN EXTERN ~BDVICHAN~ 6
END

IF ~~ THEN BEGIN 278 // from:
  SAY #243516 /* ~Y-yes... crusaders. (That will do for now. The cretin will never figure out the truth.)~ */
  IF ~~ THEN EXTERN ~BDVICHAN~ 7
END

IF ~~ THEN BEGIN 279 // from:
  SAY #243547 /* ~Your end is nigh, traitor!~ [BD43547] */
  IF ~~ THEN DO ~ChangeSpecifics("bdvichan",HOSTILES3)
ActionOverride("bdvichan",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 280 // from:
  SAY #243518 /* ~There will be no gold for you, betrayer—just the cold embrace of your well-deserved demise!~ [BD43518] */
  IF ~~ THEN DO ~ChangeSpecifics("bdvichan",HOSTILES3)
ActionOverride("bdvichan",Enemy())
~ EXIT
END

IF WEIGHT #24 ~  Global("BD_DIE_VICHAND","LOCALS",0)
AreaCheck("BD2000")
Global("bd_vichand_talk","bd2000",1)
!Dead("vichand")
Global("bd_edwin_talk","global",3)
~ THEN BEGIN 281 // from:
  SAY #243540 /* ~He was right there! That backstabbing, betraying CHARLATAN. I could have had my revenge!~ [BD43540] */
  IF ~~ THEN REPLY #240466 /* ~If you attack Vichand in camp, we all die. You'll have your vengeance soon, I promise.~ */ GOTO 282
  IF ~~ THEN REPLY #240467 /* ~Your revenge is not my concern. Don't endanger me and you won't endanger our partnership.~ */ GOTO 282
  IF ~~ THEN REPLY #240468 /* ~Then let's do it. Let's kill him now.~ */ GOTO 283
END

IF ~~ THEN BEGIN 282 // from: 281.1 281.0
  SAY #240469 /* ~Much as it PAINS me, I see the logic in your words. His day will come... oh yes. And soon.~ [BD40469] */
  IF ~~ THEN DO ~SetGlobal("bd_vichand_talk","bd2000",2)
~ UNSOLVED_JOURNAL #243538 /* ~Edwin's Tale of Woe

We will defeat Vichand when the time is right.

I encountered the Red Wizard, Vichand, in the crusader camp. Edwin craves vengeance on the man and intends to kill him at the first opportunity. If I meet Vichand in combat, Edwin will be profoundly grateful. Or as grateful as he ever gets.~ */ EXIT
END

IF ~~ THEN BEGIN 283 // from: 281.2
  SAY #240470 /* ~YES. You hear that, Vichand? WE COME FOR YOU!~ [BD40470] */
  IF ~~ THEN DO ~SetGlobal("bd_vichand_talk","bd2000",2)
ChangeSpecifics("bdvichan",HOSTILES3)
ActionOverride("bdvichan",Enemy())
~ EXIT
END

IF WEIGHT #25 ~  Global("BD_DIE_VICHAND","LOCALS",2)
~ THEN BEGIN 284 // from:
  SAY #265732 /* ~It is not often that an Odesserion gives thanks to an ally, but you were instrumental in helping me achieve my revenge. (Not instrumental, that's TOO important. Utilitarian, perhaps.)~ [BD65732] */
  IF ~~ THEN REPLY #265735 /* ~Thanks, Edwin. I was glad to help.~ */ GOTO 285
  IF ~~ THEN REPLY #265736 /* ~It was more a coincidence than anything, but you're welcome.~ */ GOTO 285
  IF ~~ THEN REPLY #265737 /* ~I did what I did for my own benefit, not yours.~ */ GOTO 285
END

IF ~~ THEN BEGIN 285 // from: 284.2 284.1 284.0
  SAY #265733 /* ~I wished to make note of your assistance, whatever your motives. An Odesserion always rewards faithful service. This item reminds me of my days in Thay. I give it to you now. ~ */
  IF ~~ THEN REPLY #265738 /* ~I'm touched. Thank you.~ */ DO ~GiveItemCreate("BDROBE05",Player1,0,0,0)
~ GOTO 286
  IF ~~ THEN REPLY #265739 /* ~And someone like me always accepts any valuable items I'm offered.~ */ DO ~GiveItemCreate("BDROBE05",Player1,0,0,0)
~ GOTO 286
  IF ~~ THEN REPLY #265740 /* ~It's wise of you to recognize my contributions.~ */ DO ~GiveItemCreate("BDROBE05",Player1,0,0,0)
~ GOTO 286
END

IF ~~ THEN BEGIN 286 // from: 285.2 285.1 285.0
  SAY #265734 /* ~Enough sentimentality! (It's enough to turn one's stomach!) We shall press on.~ [BD65734] */
  IF ~~ THEN DO ~SetGlobal("BD_DIE_VICHAND","LOCALS",3)
~ EXIT
END

IF ~~ THEN BEGIN 287 // from:
  SAY #243620 /* ~If I can cross Vichand any way, I bless myself every way.~ */
  IF ~~ THEN DO ~SetGlobal("BD_SDD200","GLOBAL",3)
SetGlobal("BD2100GL","GLOBAL",3)
SetGlobal("bd_sdd200_edwin","bd2100",1)
StartCutSceneMode()
ClearAllActions()
StartCutSceneEx("bdcutgl4",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 288 // from:
  SAY #243623 /* ~No! Do not finish that spell—~ */
  IF ~~ THEN GOTO 289
END

IF ~~ THEN BEGIN 289 // from: 288.0
  SAY #243624 /* ~Blast. This will be most unpleasant.~ */
  IF ~  OR(3)
!Global("bd_sdd200_wynan","global",0)
!See("BDBF1")
Dead("BDBF1")
~ THEN EXTERN ~BDWYNAN~ 22
  IF ~  Global("bd_sdd200_wynan","global",0)
See("BDBF1")
!Dead("BDBF1")
~ THEN EXTERN ~BDBF1~ 2
END

IF ~~ THEN BEGIN 290 // from:
  SAY #243627 /* ~Vichand built a defense mechanism into the spellstone for instances such as this! Canceling the leech field releases a negative energy wraith!~ */
  IF ~~ THEN DO ~AddXPObject(Player1,3000)
AddXPObject(Player2,3000)
AddXPObject(Player3,3000)
AddXPObject(Player4,3000)
AddXPObject(Player5,3000)
AddXPObject(Player6,3000)
AddJournalEntry(261739,QUEST_DONE)
~ EXIT
END

IF ~~ THEN BEGIN 291 // from:
  SAY #243442 /* ~I have seen these sigils before... I was working on such a design for Caelar before we, er, parted company. The hand behind this magic is that snake, Vichand!~ */
  IF ~~ THEN EXTERN ~BDBF2~ 2
END

IF ~~ THEN BEGIN 292 // from:
  SAY #243451 /* ~The longer this is left unchecked, the worse it will get. The field will grow, in size and intensity. Soon all within this fort will be dead or dying. To stop it, we will need the original spellscroll Vichand used to enchant the rock.~ */
  IF ~~ THEN EXTERN ~BDBF2~ 3
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN EXTERN ~BDKHALID~ 74
END

IF ~~ THEN BEGIN 293 // from:
  SAY #246583 /* ~Feel free to test your theory, but please, do us the courtesy of waiting until there are no others of worth nearby.~ [BD46583] */
  IF ~~ THEN EXTERN ~BDELANDR~ 2
END

IF ~~ THEN BEGIN 294 // from:
  SAY #246716 /* ~Don't tell me you simians have never seen a feyr before? (Of course they haven't, Edwin. Why would you even ask?)~ [BD46716] */
  IF ~~ THEN GOTO 295
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN EXTERN ~BDCORWIJ~ 54
END

IF ~~ THEN BEGIN 295 // from: 294.0
  SAY #246718 /* ~A feyr is the inevitable consequence of a surfeit of magical energy combined with the unchecked fear of, say, a fort full of monkeys hiding in their own filth, trying to avoid an overwhelming force that seeks to destroy them. This is only the first. If circumstances don't change, there will be others.~ [BD46718] */
  IF ~~ THEN EXTERN ~BDTHARAN~ 1
  IF ~  IsValidForPartyDialogue("MKHIIN")
~ THEN EXTERN ~BDMKHIIJ~ 13
END

IF WEIGHT #26 ~  AreaCheck("BD0114")
Global("BD_POINT6","BD0114",1)
~ THEN BEGIN 296 // from:
  SAY #247211 /* ~What idiocy have you simians gotten me mixed up in now? (Why do I ask? They know nothing, at least nothing of value...) ~ */
  IF ~~ THEN DO ~SetGlobal("BD_POINT6","BD0114",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1257
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN EXTERN ~BDCORWIJ~ 63
  IF ~  IsValidForPartyDialogue("GLINT")
~ THEN EXTERN ~BDGLINTJ~ 57
END

IF WEIGHT #27 ~  AreaCheck("BD0114")
Global("BD_POINT6","BD0114",1)
~ THEN BEGIN 297 // from:
  SAY #247212 /* ~That sound... That is no spider.~ [BD47212] */
  IF ~~ THEN DO ~SetGlobal("BD_POINT6","BD0114",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN EXTERN ~BDCORWIJ~ 63
  IF ~  IsValidForPartyDialogue("GLINT")
~ THEN EXTERN ~BDGLINTJ~ 57
END

IF WEIGHT #28 ~  AreaCheck("BD0114")
Global("BD_POINT6","BD0114",1)
~ THEN BEGIN 298 // from:
  SAY #247213 /* ~Anyone else think it's about time we got the hells out of here? ~ */
  IF ~~ THEN DO ~SetGlobal("BD_POINT6","BD0114",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("GLINT")
~ THEN EXTERN ~BDGLINTJ~ 57
END

IF WEIGHT #29 ~  AreaCheck("BD0114")
Global("BD_POINT6","BD0114",1)
~ THEN BEGIN 299 // from:
  SAY #247208 /* ~I like you, <CHARNAME>. You always visit such interesting places.~ [BD47208] */
  IF ~~ THEN DO ~SetGlobal("BD_POINT6","BD0114",2)
~ EXIT
END

IF WEIGHT #30 ~  Dead("BDYMORI")
AreaCheck("BD2000")
Global("KNOW_VELSHAROON","GLOBAL",0)
NearLocation(Myself,4089,408,10)
~ THEN BEGIN 300 // from:
  SAY #250066 /* ~Oh, this is delightful. Yes! Truly delightful.~ [BD50066] */
  IF ~~ THEN REPLY #250067 /* ~What is it, Edwin?~ */ GOTO 301
  IF ~~ THEN REPLY #250068 /* ~I don't find little delightful about the undead.~ */ GOTO 301
  IF ~~ THEN REPLY #250069 /* ~Explain yourself, mage.~ */ GOTO 301
END

IF ~~ THEN BEGIN 301 // from: 300.2 300.1 300.0
  SAY #250070 /* ~The symbols carved into this sacrifice's flesh are signs of Velsharoon, Lord of the Forsaken! Someone put these bodies to good use. The dead man didn't raise them. There is a necromancer here, among the Bridgefortians. This is too, too good.~ [BD50070] */
  IF ~~ THEN DO ~SetGlobal("KNOW_VELSHAROON","GLOBAL",1)
~ UNSOLVED_JOURNAL #250534 /* ~Tender of the Dead

I should return to Bridgefort and speak with Junia.

I found Ymori's body mutilated as part of some sort of dark ritual in the woods. When I examined his body, undead rose from the ground. It seems a cleric of Velsharoon, Lord of the Forsaken Crypt, laid a trap for me and used Ymori's body as bait. I should talk to Junia again.~ */ EXIT
END

IF WEIGHT #31 ~  Global("bd_edwin_reputation_warning","GLOBAL",1)
~ THEN BEGIN 302 // from:
  SAY #260592 /* ~I would have a word with you, <CHARNAME>.~ [BD60592] */
  IF ~~ THEN REPLY #260593 /* ~Of course, Edwin. What can I do for you?~ */ DO ~SetGlobal("bd_edwin_reputation_warning","GLOBAL",2)
~ GOTO 304
  IF ~~ THEN REPLY #260594 /* ~Just one? That would be a pleasant change of pace.~ */ DO ~SetGlobal("bd_edwin_reputation_warning","GLOBAL",2)
~ GOTO 303
  IF ~~ THEN REPLY #260595 /* ~I know what you're going to say, Edwin. We spend too much time living up to the expectations of others, and not enough in service to our own goals.~ */ DO ~SetGlobal("bd_edwin_reputation_warning","GLOBAL",2)
~ GOTO 305
  IF ~~ THEN REPLY #260596 /* ~Do it quickly, then.~ */ DO ~SetGlobal("bd_edwin_reputation_warning","GLOBAL",2)
~ GOTO 304
END

IF ~~ THEN BEGIN 303 // from: 302.1
  SAY #260597 /* ~The monkey thinks it's clever. That is adorable. Consider your head patted. Now let us get on with this.~ */
  IF ~~ THEN GOTO 304
END

IF ~~ THEN BEGIN 304 // from: 305.0 303.0 302.3 302.0
  SAY #260598 /* ~I mislike the path our little band is walking. The glory of Thay and my—I mean, OUR power... These are the things that matter. You neglect them. Do not think that has gone unnoticed. I will not tolerate it much longer.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 305 // from: 302.2
  SAY #260599 /* ~You are perceptive, <CHARNAME>. Far more perceptive than these other monkeys. What you say is true.~ */
  IF ~~ THEN GOTO 304
END

IF WEIGHT #32 ~  GlobalLT("bd_edwin_talk","global",3)
OR(3)
AreaCheck("bd1000")
AreaCheck("bd2000")
AreaCheck("bd7100")
~ THEN BEGIN 306 // from:
  SAY #242231 /* ~I would speak with you. It is a matter of import and cannot wait. It concerns Caelar and her... betrayal. When first we spoke of her, I let anger twist my words.~ [BD42231] */
  IF ~~ THEN REPLY #242232 /* ~Can it wait, Edwin? I have much on my mind at the moment.~ */ GOTO 322
  IF ~~ THEN REPLY #242233 /* ~You've changed your mind about confronting her?~ */ DO ~SetGlobal("bd_edwin_talk","global",3)
~ GOTO 309
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #242234 /* ~How exactly did she betray you?~ */ DO ~SetGlobal("bd_edwin_talk","global",3)
~ GOTO 308
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #242234 /* ~How exactly did she betray you?~ */ DO ~SetGlobal("bd_edwin_talk","global",3)
~ GOTO 307
  IF ~~ THEN REPLY #242235 /* ~Cling to that fury, Edwin. Cultivate your rage. It will serve us well when we face the Shining Lady.~ */ DO ~SetGlobal("bd_edwin_talk","global",3)
~ GOTO 319
END

IF ~~ THEN BEGIN 307 // from: 306.3
  SAY #242236 /* ~This is not something I care to discuss.~ */
  IF ~~ THEN GOTO 309
END

IF ~~ THEN BEGIN 308 // from: 306.2
  SAY #242237 /* ~The betrayal... was not hers. She acted as her nature demanded. The truth of the story begins with three other Red Wizards—Rowena, Ahdzekharrin, and Vichand.~ */
  IF ~~ THEN GOTO 310
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 529
END

IF ~~ THEN BEGIN 309 // from: 319.0 318.0 317.0 316.0 314.2 307.0 306.1
  SAY #242238 /* ~We should give careful consideration to our course. Caelar's power is great, and it grows with every passing hour.~ */
  IF ~~ THEN REPLY #242239 /* ~That's all the more reason to confront her at the earliest possible opportunity.~ */ GOTO 321
  IF ~~ THEN REPLY #242240 /* ~I really don't have time for this right now, Edwin.~ */ GOTO 322
  IF ~~ THEN REPLY #242241 /* ~You would have us turn back? Flee to Baldur's Gate with our tails between our legs?~ */ GOTO 320
END

IF ~~ THEN BEGIN 310 // from: 308.0
  SAY #242242 /* ~Some weeks past, we received word that Caelar Argent sought magicians to bolster her crusade. We had little interest in the patchwork theology she espouses, but she was willing to pay handsomely for our talents.~ */
  IF ~~ THEN GOTO 311
END

IF ~~ THEN BEGIN 311 // from: 310.0
  SAY #242243 /* ~We journeyed to Dragonspear and met the Shining Lady, experiencing her fabled charisma firsthand. Vichand and Ahdzekharrin joined her on the spot.~ */
  IF ~~ THEN DO ~AddJournalEntry(259646,QUEST)
~ GOTO 312
END

IF ~~ THEN BEGIN 312 // from: 311.0
  SAY #242244 /* ~I and Rowena were not so easily cowed. When Rowena refused to kneel before Caelar without appropriate expiation for such an indignity, she was killed by one of her lieutenants.~ */
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #242245 /* ~You stood up for your friend, I assume? You avenged her?~ */ EXTERN ~VICONIJ~ 530
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN REPLY #242245 /* ~You stood up for your friend, I assume? You avenged her?~ */ GOTO 313
  IF ~~ THEN REPLY #242246 /* ~And you ran like a beaten dog.~ */ GOTO 314
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN REPLY #242247 /* ~You seek to avenge your fallen friend.~ */ EXTERN ~RASAADJ~ 1248
  IF ~  !IsValidForPartyDialogue("RASAAD")
~ THEN REPLY #242247 /* ~You seek to avenge your fallen friend.~ */ GOTO 316
END

IF ~~ THEN BEGIN 313 // from: 312.1
  SAY #242248 /* ~Eh, not precisely...~ */
  IF ~~ THEN GOTO 315
END

IF ~~ THEN BEGIN 314 // from: 315.2 312.2
  SAY #242249 /* ~Beaten dogs cower, stay. A wise beast feigns allegiance when the enemy's sword is at their throat, then leaves when the enemy's gaze is turned.~ */
  IF ~~ THEN REPLY #242250 /* ~Thank you for telling me your story, my friend.~ */ GOTO 318
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN REPLY #242251 /* ~When challenged, you chose the coward's road. I am not surprised.~ */ EXTERN ~SAFANJ~ 50
  IF ~  !IsValidForPartyDialogue("SAFANA")
~ THEN REPLY #242251 /* ~When challenged, you chose the coward's road. I am not surprised.~ */ GOTO 309
  IF ~~ THEN REPLY #242252 /* ~A wise man keeps his head and chooses to fight another day.~ */ GOTO 317
END

IF ~~ THEN BEGIN 315 // from: 313.0
  SAY #242253 /* ~It would be more accurate to say I knelt before the witch, then fled Dragonspear at the earliest opportunity.~ */
  IF ~~ THEN REPLY #242254 /* ~Thank you for telling me your story, my friend.~ */ GOTO 318
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN REPLY #242255 /* ~You ran like a whipped dog, is what you're saying.~ */ EXTERN ~SAFANJ~ 50
  IF ~  !IsValidForPartyDialogue("SAFANA")
~ THEN REPLY #242255 /* ~You ran like a whipped dog, is what you're saying.~ */ GOTO 314
  IF ~~ THEN REPLY #242256 /* ~You may be a coward, Odesseiron—but you're no fool.~ */ GOTO 317
END

IF ~~ THEN BEGIN 316 // from: 312.4
  SAY #242257 /* ~What—? I mean—yes, of course I would see Rowena avenged. Do not question the honor of Odesseiron.~ */
  IF ~~ THEN GOTO 309
END

IF ~~ THEN BEGIN 317 // from: 315.3 314.3
  SAY #242258 /* ~The Thayan people are masters of survival. Red Wizards doubly so. But what we do now runs counter to that primal instinct.~ */
  IF ~~ THEN GOTO 309
END

IF ~~ THEN BEGIN 318 // from: 315.0 314.0
  SAY #242259 /* ~I have told it to you for a reason. We Thayans gauge our enemy, test their strength, retreating if need be, but always, always we are ready to strike.~ */
  IF ~~ THEN GOTO 309
END

IF ~~ THEN BEGIN 319 // from: 306.4
  SAY #242260 /* ~Few know anger as I do, <CHARNAME>. Yet it makes fools of those who bend to it.~ */
  IF ~~ THEN GOTO 309
END

IF ~~ THEN BEGIN 320 // from: 309.2
  SAY #242261 /* ~As Alveus Malcanter said, "The wise general does not lead from the front of the army." Think on it.~ [BD42261] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 321 // from: 309.0
  SAY #242263 /* ~Indeed. But you need not be the hammer that falls, only the one holding it—be mindful of not making the most valuable piece the most vulnerable, and while I am loathe to admit it, you are the strongest piece we have on this game board.~ [BD42263] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 322 // from: 309.1 306.0
  SAY #242264 /* ~It can wait. But not for long.~ [BD42264] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 323 // from:
  SAY #247483 /* ~You would waste my time listening to these monkeys exchange their excreta? (Why do I ally myself with this fool again?)~ */
  IF ~~ THEN EXTERN ~BDLEOPAS~ 4
END

IF ~~ THEN BEGIN 324 // from:
  SAY #247665 /* ~It thinks itself capable of thought! Isn't that adorable?~ */
  IF ~~ THEN EXTERN ~BDRAVOC~ 6
END

IF ~~ THEN BEGIN 325 // from:
  SAY #262132 /* ~Your chosen path reeks of death and worse! You would linger here why? For spite? Do as you will, then—I'll not tolerate this stench a moment longer.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 671
END

IF ~~ THEN BEGIN 326 // from:
  SAY #262133 /* ~It's a fungoid, you thick-witted clod.~ */
  IF ~  !IsValidForPartyDialogue("CORWIN")
~ THEN EXTERN ~BDMYCELD~ 11
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN EXTERN ~BDCORWIJ~ 119
END

IF ~~ THEN BEGIN 327 // from:
  SAY #240057 /* ~Familiar magic. This is the hoard of that treacherous swine, Vichand! (Vengeance is at hand...)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 328 // from:
  SAY #240069 /* ~"Master" Vichand, is it now?~ */
  IF ~~ THEN EXTERN ~BDBSENT1~ 5
END

IF ~~ THEN BEGIN 329 // from:
  SAY #240075 /* ~I'll push off, you monkey-faced worm!~ */
  IF ~~ THEN DO ~ChangeSpecifics("BDBSENT1",HOSTILES3)
ActionOverride("BDBSENT1",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 330 // from:
  SAY #242753 /* ~The foundation upon which the Shining Lady has built her crusade. A confident voice, a few minor illusions, the monkeys eat it up.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1255
END

IF ~~ THEN BEGIN 331 // from:
  SAY #236017 /* ~Useless to YOU, perhaps. But not to the keenly probing eyes of the Red Wizard... ~ */
  IF ~~ THEN EXTERN ~NEERAJ~ 889
END

IF ~~ THEN BEGIN 332 // from:
  SAY #237015 /* ~Oh yes, the Grand Dukes of Baldur's Gate, those unimpeachable founts of all that is truthful and honorable. (And she calls the crusaders mindless!)~ [BD37015] */
  IF ~~ THEN EXTERN ~BDBARGHE~ 50
END

IF ~~ THEN BEGIN 333 // from:
  SAY #234900 /* ~Oh yes, the Grand Dukes of Baldur's Gate, those unimpeachable founts of all that is truthful and honorable. (And he calls the crusaders mindless!)~ [BD34900] */
  IF ~~ THEN EXTERN ~BDBARGHE~ 50
END

IF ~~ THEN BEGIN 334 // from:
  SAY #265116 /* ~You monkeys run this way and that. The astute ignore the feces-flinging and pursues their own goals using the best means available.~ */
  IF ~~ THEN EXTERN ~BDFFMERC~ 2
END

IF ~~ THEN BEGIN 335 // from:
  SAY #245045 /* ~Mmmm, let me think. Of course, it's so obvious! The answer is BEES!~ [BD45045] */
  IF ~~ THEN EXTERN ~BDVIDYAD~ 10
END

IF ~~ THEN BEGIN 336 // from:
  SAY #250180 /* ~Clearly, nothing good awaits us beyond this threshold. Is this so difficult to grasp?~ [BD50180] */
  IF ~~ THEN EXTERN ~BDHALATA~ 16
END

IF ~~ THEN BEGIN 337 // from:
  SAY #251278 /* ~Must I waste my time on children's games?~ */
  IF ~~ THEN EXTERN ~BDTRISTI~ 15
END

IF ~~ THEN BEGIN 338 // from:
  SAY #237896 /* ~Feh. A trite excuse for your own selfishness—something that, in truth, needs no rationalization. You sound like a Harper.~ [BD37896] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut39",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 691
END

IF ~~ THEN BEGIN 339 // from:
  SAY #264959 /* ~Red Wizard...? 'Tis Ahdzekharrin, that treacherous ditch-weasel! If he had any time to prepare the incantation, you monkeys should forget the gate and start banging your heads against the walls—it'll get you the same result.~ [BD64959] */
  IF ~~ THEN EXTERN ~BDSTONEH~ 41
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN EXTERN ~BDCORWIJ~ 170
END

IF ~~ THEN BEGIN 340 // from:
  SAY #238212 /* ~What would you have us do, you scaly chimp? Free these monsters? Tell me again why you tolerate this creature's presence, <CHARNAME>?~ */
  IF ~~ THEN EXTERN ~BDMORRUK~ 0
END

IF ~~ THEN BEGIN 341 // from:
  SAY #261336 /* ~And be quick about it, you simpering primate!~ */
  IF ~~ THEN EXTERN ~BDHELDMO~ 4
END

IF ~~ THEN BEGIN 342 // from:
  SAY #238539 /* ~Such obvious deception will fool no one, not even the monkeys outside. Anyone with the slightest sensitivity can feel the infernal power of the First Hell radiating out from this place.~ */
  IF ~~ THEN EXTERN ~BDDELANC~ 76
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 693
END

IF ~~ THEN BEGIN 343 // from:
  SAY #238749 /* ~It's been too long since I traversed the infernal planes... Good times. Good times.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 344 // from:
  SAY #239817 /* ~You are wise to hold the mystic might of Odesseiron in such esteem. And you, devil—you would eat me? Thay's greatest son Edwin Odesseiron is too spicy a dish, even for you. Can a devil choke unto death? Try me and find out.~ [BD39817] */
  IF ~  RandomNum(4,1)
~ THEN EXTERN ~BDTHRIX~ 38
  IF ~  RandomNum(4,2)
~ THEN EXTERN ~BDTHRIX~ 39
  IF ~  RandomNum(4,3)
~ THEN EXTERN ~BDTHRIX~ 40
  IF ~  RandomNum(4,4)
~ THEN EXTERN ~BDTHRIX~ 41
  IF ~  !Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)
~ THEN EXTERN ~BDTHRIX~ 114
END

IF ~~ THEN BEGIN 345 // from:
  SAY #238999 /* ~Avernus is a suitable home for a she-devil such as yourself.~ [BD38999] */
  IF ~~ THEN EXTERN ~SAFANJ~ 116
END

IF ~~ THEN BEGIN 346 // from:
  SAY #239002 /* ~What are you talking about, you wretched chimp? You seriously expect me to accept this, this, this—THIS? (Where are the words when you need them, Odesseiron?)~ [BD39002] */
  IF ~~ THEN GOTO 347
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY #239003 /* ~No! Odesseiron will not be tossed aside like so many banana peels!~ [BD39003] */
  IF ~~ THEN DO ~SetGlobal("bd_thrix_won","global",1)
~ EXTERN ~BDTHRIX~ 140
END

IF WEIGHT #33 ~  Global("BD_Sacrifice_Edwin","bd4500",1)
GlobalLT("bd_plot","global",550)
~ THEN BEGIN 348 // from:
  SAY #239044 /* ~A lesser man might resent you for serving him up to a devil, <CHARNAME>. But I know you would never have allowed that horned baboon to consume the savory Thayan flesh of the Odesseirons.~ [BD39044] */
  IF ~  !Global("bd_thrix_mark_edwin","global",1)
~ THEN REPLY #239045 /* ~I am glad you're not a lesser man. ~ */ DO ~SetGlobal("BD_Sacrifice_Edwin","bd4500",3)
~ GOTO 349
  IF ~  Global("bd_thrix_mark_edwin","global",1)
~ THEN REPLY #239045 /* ~I am glad you're not a lesser man. ~ */ DO ~SetGlobal("BD_Sacrifice_Edwin","bd4500",3)
~ GOTO 353
  IF ~  !Global("bd_thrix_mark_edwin","global",1)
~ THEN REPLY #239046 /* ~You're right, of course, Edwin. Now never speak of your savory Thayan flesh again, please. ~ */ DO ~SetGlobal("BD_Sacrifice_Edwin","bd4500",3)
~ GOTO 350
  IF ~  Global("bd_thrix_mark_edwin","global",1)
~ THEN REPLY #239046 /* ~You're right, of course, Edwin. Now never speak of your savory Thayan flesh again, please. ~ */ DO ~SetGlobal("BD_Sacrifice_Edwin","bd4500",3)
~ GOTO 353
  IF ~  !Global("bd_thrix_mark_edwin","global",1)
NumInPartyAliveGT(2)
~ THEN REPLY #239047 /* ~If it suits you to believe that, go ahead. I care not.~ */ DO ~SetGlobal("BD_Sacrifice_Edwin","bd4500",3)
~ GOTO 351
  IF ~  Global("bd_thrix_mark_edwin","global",1)
NumInPartyAliveGT(2)
~ THEN REPLY #239047 /* ~If it suits you to believe that, go ahead. I care not.~ */ DO ~SetGlobal("BD_Sacrifice_Edwin","bd4500",3)
~ GOTO 353
  IF ~  !Global("bd_thrix_mark_edwin","global",1)
NumInPartyAlive(2)
~ THEN REPLY #239047 /* ~If it suits you to believe that, go ahead. I care not.~ */ DO ~SetGlobal("BD_Sacrifice_Edwin","bd4500",3)
~ GOTO 352
  IF ~  Global("bd_thrix_mark_edwin","global",1)
NumInPartyAlive(2)
~ THEN REPLY #239047 /* ~If it suits you to believe that, go ahead. I care not.~ */ DO ~SetGlobal("BD_Sacrifice_Edwin","bd4500",3)
~ GOTO 353
END

IF ~~ THEN BEGIN 349 // from: 348.0
  SAY #239048 /* ~And so you should be.~ [BD39048] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 350 // from: 348.2
  SAY #239049 /* ~As you wish. (You don't know what you're missing.)~ [BD39049] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 351 // from: 348.4
  SAY #239050 /* ~Of course, of course. You must maintain the facade of indifference for these other monkeys' sake. Yours is a devious mind. I like it.~ [BD39050] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 352 // from: 348.6
  SAY #239051 /* ~It is wise of you to retain this facade of indifference. We cannot know who may watch us from afar, but it's best they do not suspect my true value to you.~ [BD39051] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 353 // from: 348.7 348.5 348.3 348.1
  SAY #269991 /* ~No mere devil can challenge the might of a Red Wizard of Thay! Should you be at my side when this foolish fiend comes for me, you shall see how easily I crush him!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 354 // from:
  SAY #239331 /* ~Thus ends another chapter in the great tale of Edwin Odesseiron.~ [BD39331] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 355 // from:
  SAY #239400 /* ~You cretinous baboon! We had the world ready to kneel before us and kiss our feet, and you go and do this? You've ruined everything!~ [BD39400] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 356 // from:
  SAY #253279 /* ~This feral child has a problem with me? That is rich.~ */
  IF ~~ THEN EXTERN ~NEERAJ~ 1100
END

IF ~~ THEN BEGIN 357 // from:
  SAY #253291 /* ~Oh, please. Tell me you don't think this—this pointy-eared marmoset's ramblings are worthy of your consideration, <CHARNAME>. ~ */
  IF ~~ THEN REPLY #253292 /* ~Consideration, perhaps. But my decisions are my own.~ */ EXTERN ~NEERAJ~ 1104
  IF ~~ THEN REPLY #253293 /* ~It sounds like it's her or you, Edwin. And her I can actually trust.~ */ GOTO 358
  IF ~~ THEN REPLY #253294 /* ~I've given it the consideration it deserves. This is where we part ways, Neera.~ */ EXTERN ~NEERAJ~ 1105
END

IF ~~ THEN BEGIN 358 // from: 357.1
  SAY #253295 /* ~You choose this wild simpleton over a Red Wizard of Thay?~ */
  IF ~~ THEN GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 358.0
  SAY #253296 /* ~A grave mistake, <CHARNAME>. One you WILL regret. (Oh yes, <PRO_HESHE> will.)~ */
  IF ~~ THEN EXTERN ~NEERAJ~ 1102
END

IF ~~ THEN BEGIN 360 // from:
  SAY #253303 /* ~You have chosen wisely, <CHARNAME>. (Feh, they are truly a gorilla among chimpanzees, aren't they? Yes, they are...)~ */
  IF ~~ THEN EXTERN ~NEERAJ~ 1105
END

IF ~~ THEN BEGIN 361 // from:
  SAY #240250 /* ~The gnome speaks of sahuagin, a vicious aquatic race. (Not as vicious as a Red Wizard surrounded by imbeciles, though!)~ */
  IF ~~ THEN EXTERN ~BDLADLE~ 10
END

IF ~~ THEN BEGIN 362 // from:
  SAY #241515 /* ~You need to ask? This monkey is mad, it is obvious.~ */
  IF ~~ THEN EXTERN ~BDFERRUS~ 25
END

IF ~~ THEN BEGIN 363 // from:
  SAY #256477 /* ~A few more monkeys dead makes little difference.~ */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 143
END

IF ~~ THEN BEGIN 364 // from:
  SAY #250206 /* ~The monk is right. We should find cover, that we may watch what happens without fear of discovery.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 1369
END

IF ~~ THEN BEGIN 365 // from:
  SAY #256731 /* ~Most intriguing. Describe the operation in as much detail as you can recall.~ [BD56731] */
  IF ~~ THEN EXTERN ~NEERAJ~ 1126
END

IF ~~ THEN BEGIN 366 // from:
  SAY #256733 /* ~The Red Wizard's mind is the mightiest of fortresses. Its walls must be strong to contain the limitless power we wield. Now, ghost. Tell me of your death. Spare none of the details, especially the gory ones.~ [BD56733] */
  IF ~~ THEN EXTERN ~NEERAJ~ 1127
END

IF ~~ THEN BEGIN 367 // from:
  SAY #256743 /* ~Do not be so proud. Should the Red Wizards ever truly want you, you will fall like wheat beneath the scythe.~ [BD56743] */
  IF ~~ THEN EXTERN ~BDADOY~ 7
END

IF ~~ THEN BEGIN 368 // from:
  SAY #256758 /* ~Sacrificed for the advancement of Thayan magic. A painful death, perhaps, but suffered for the most worthy of causes.~ [BD56758] */
  IF ~~ THEN EXTERN ~NEERAJ~ 1134
END

IF ~~ THEN BEGIN 369 // from:
  SAY #256767 /* ~I beg to differ. But there will be a better time for this argument.~ [BD56767] */
  IF ~~ THEN EXTERN ~NEERAJ~ 1136
END

IF ~~ THEN BEGIN 370 // from:
  SAY #260122 /* ~Stop playing the fool. That's not what they mean, and you KNOW that's not what they mean.~ [BD60122] */
  IF ~~ THEN EXTERN ~BDMURS~ 8
END

IF ~~ THEN BEGIN 371 // from:
  SAY #248044 /* ~It's obvious this weakling is no soldier. I've eaten chickens with thicker legs than his. He seems moderately intelligent, though. Get him into mage training. He may be of use some day.~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",1)
SetGlobal("bd_sdd301_garrold_skill","global",1)
~ EXTERN ~BDGARROL~ 3
END

IF ~~ THEN BEGIN 372 // from:
  SAY #248402 /* ~Do not think of them as sick, but as motivated buyers. Only a fool would pass up such an opportunity for profit.~ */
  IF ~~ THEN EXTERN ~BDDOSIA~ 25
END

IF ~~ THEN BEGIN 373 // from:
  SAY #258552 /* ~I might read such a volume. I've a passing interest in the ways lesser men and women satisfy their... gods.~ */
  IF ~~ THEN EXTERN ~BDHYRETH~ 15
END

IF ~~ THEN BEGIN 374 // from:
  SAY #263813 /* ~After we leave this place, we go to face the Shining Lady, Caelar Argent. Perhaps you could assist us in this?~ */
  IF ~~ THEN EXTERN ~BDCOLDH~ 33
END

IF ~~ THEN BEGIN 375 // from:
  SAY #266641 /* ~You do not know the "Shining Lady" as I do, woman. We are in no position to turn allies away, however distasteful you may find them—not if we wish to prevail.~ */
  IF ~~ THEN GOTO 376
END

IF ~~ THEN BEGIN 376 // from: 375.0
  SAY #266642 /* ~You have my thanks, Master Coldhearth. We will meet again when my path crosses once more with the "Shining Lady."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 377 // from:
  SAY #263824 /* ~Really? *sigh* The lich seeks five amulets held by his former colleagues, the dwarven clerics of the Talhund Order of Dumathoin's Secret Gleam. If I can be bothered to remember this, you should be able to manage the same.~ [BD63824] */
  IF ~~ THEN EXTERN ~BDCOLDH~ 17
END
