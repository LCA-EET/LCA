// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SAREVO.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SAREVO.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA100~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hello, I assume you're the new guests. I'm Koveras, a purveyor of knowledge like yourselves. I've been searching for you since I arrived. I have vital knowledge I wish to impart to you somewhere private. Are you willing to listen?~ #1643 */
  IF ~~ THEN REPLY @2 /* ~We don't need any knowledge, we know everything.~ #1648 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Sure, where can we go to talk?~ #1649 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Ah, okay. I'll leave you to yourselves.~ #1644 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~Just follow me.~ #1645 */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY @6 /* ~Aren't you coming?~ #1646 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY @7 /* ~I used to work with your father Gorion. I ran messages for him to his Harper friends in Waterdeep. I am saddened to hear about his death, but that is why I am here. He wanted you to have his old family ring and what limited gold he possessed. I assume you already know of the Iron Throne presence here in Candlekeep. I cannot help you deal with them as I must report this to my masters up north. I know Gorion would be proud to see you continuing his work. I must leave now, perhaps we will soon meet again.~ #1647 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @8 /* ~I am honored to be here before such a respected assemblage of noblemen. I accept my new position with full awareness to my new responsibilities, and I will have many of them.~ #2313 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @9 /* ~I would first like to address many of the questions that had been asked earlier. The rumors about Amn's mobilization for war are entirely true, as is the involvement of their Zhentarim cohorts. But do not worry, we are not bereft of a defense. Although the recent Zhentish attempt at depriving us of the most valuable war resource, iron, has weakened us, it has not crippled us. When my father was most recently murdered, I inherited his control over the western branch of the Iron Throne. They have a great deal of stockpiled iron, enough for all of our needs. I will give this to the city to do with as you will. Unfortunately, our greatest military commander lies on his deathbed, a grievous blow to this city. To ensure that the Flaming Fist is well led, I will be assuming control of the mercenary regiment, with permission from its current steward, Angelo.~ #2314 */
  IF ~~ THEN EXTERN ~BELT~ 5
END

IF ~~ THEN BEGIN 7 // from:
  SAY @10 /* ~Instead of waiting for the war to come to us, we will take it to them. With the Flaming Fist, we should be able to easily take the town of Nashkel and then quickly fortify the mountain pass through the Cloud Peaks. What?! Who dares to interrupt?!~ #2315 */
  IF ~~ THEN DO ~EraseJournalEntry(@11)
EraseJournalEntry(@12)
SetGlobal("NobleDopple","GLOBAL",1)
TriggerActivation("Door0200",FALSE)
TriggerActivation("Door0109a",FALSE)
TriggerActivation("Door0109b",FALSE)
TriggerActivation("Door0111",FALSE)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  Dead("Liia")
Dead("Belt")
AreaCheck("AR0108")
!Global("SarevokBehavior","GLOBAL",3)
~ THEN BEGIN 8 // from:
  SAY @13 /* ~The Grand Dukes are dead, killed by assassins in our midst. Look there! The killers accused of murdering the leaders of the Iron Throne! They must be part of the plot. I don't want them alive! Kill them! Kill them all! You have FAILED, <CHARNAME>!~ #2316 */
  IF ~~ THEN DO ~SetGlobalTimerRandom("EndGame","GLOBAL",ONE_MINUTE,THREE_MINUTES)
SetGlobal("SarevokBehavior","GLOBAL",3)
EraseJournalEntry(@14)
EraseJournalEntry(@15)
TriggerActivation("Door0200",FALSE)
TriggerActivation("Door0109a",FALSE)
TriggerActivation("Door0109b",FALSE)
TriggerActivation("Door0111",FALSE)
CreateCreature("ANGELO",[468.665],NE)
ActionOverride("Angelo",Enemy())
CreateCreature("FLAME",[941.714],NW)
CreateCreature("FLAME",[890.756],NW)
CreateCreature("FLAME",[606.185],S)
CreateCreature("FLAME",[576.199],S)
CreateCreature("FLAME",[411.675],NE)
CreateCreature("FLAME",[454.709],NE)
Shout(2)
Enemy()
AttackOneRound(NearestEnemyOf(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY @16 /* ~Those people are the ones wanted on multiple counts of murder: KILL them!~ #2317 */
  IF ~~ THEN EXTERN ~LIIA~ 7
END

IF ~~ THEN BEGIN 10 // from:
  SAY @17 /* ~You don't need to read that document, but since I know you're too stupid to take my advice, I'll just take your head.~ #2318 */
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",4)
TriggerActivation("Door0200",FALSE)
TriggerActivation("Door0109a",FALSE)
TriggerActivation("Door0109b",FALSE)
TriggerActivation("Door0111",FALSE)
SetGlobalTimer("SarevokRun","GLOBAL",TWO_MINUTES)
Shout(2)
Enemy()
AttackOneRound(NearestEnemyOf(Myself))
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalTimerExpired("SarevokRun","GLOBAL")
Global("SarevokBehavior","GLOBAL",4)
~ THEN BEGIN 11 // from:
  SAY @18 /* ~You and I aren't finished yet, <CHARNAME>. I'll kill you, just as I killed Gorion. The only way you'll ever live in peace is if you kill me first.~ [SAREV02] #2319 */
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",1)
ChangeAIScript("",OVERRIDE)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("EndCut01",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @19 /* ~You have come to your death, brother. You can't hide behind friends, this fight is between us. Our father would have wanted it this way, two sons of murder in a duel to the death. You are one of the strong; but then, we do share the same blood. Let us decide who is the stronger.~ #2320 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("SarevokBehavior","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY @20 /* ~You are indeed family. No other could have lived to oppose me in person. Of course, it will not matter in the end. Ultimately, I will prevail, and a new era will be born unto the realms.~ [SAREV01] #9304 */
  IF ~~ THEN REPLY @21 /* ~You are mad! What do you hope to gain by resurrecting a dead god?~ #9305 */ GOTO 14
  IF ~  Gender(LastTalkedToBy,MALE)
~ THEN REPLY @22 /* ~Your evil ways end here tonight! This god stays dead and you will join him!~ #9306 */ GOTO 15
  IF ~~ THEN REPLY @23 /* ~There must be another way, brother! We could rally, and fight this evil together!~ #9307 */ GOTO 17
  IF ~~ THEN REPLY @24 /* ~By what right do you claim ownership of this new era? What if I intend to take it from you?~ #9308 */ GOTO 18
  IF ~  Gender(LastTalkedToBy,FEMALE)
~ THEN REPLY @22 /* ~Your evil ways end here tonight! This god stays dead and you will join him!~ #9325 */ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @25 /* ~Father Bhaal is dead, but the slaughter I will orchestrate shall prove me to be his most worthy successor. It will raise his power from the ashes. The streets will run red with blood when my work is finished!~ [SAREV05] #9309 */
  IF ~~ THEN REPLY @26 /* ~Successor? Deities are not known for sharing their power willingly!~ #9311 */ GOTO 20
  IF ~  Gender(LastTalkedToBy,MALE)
~ THEN REPLY @27 /* ~You are worthy of nothing more than the death you will receive by my hand.~ #9312 */ GOTO 15
  IF ~~ THEN REPLY @28 /* ~And what if I can prove myself to be more deserving of such power?~ #9313 */ GOTO 18
  IF ~  Gender(LastTalkedToBy,FEMALE)
~ THEN REPLY @27 /* ~You are worthy of nothing more than the death you will receive by my hand.~ #9316 */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 17.1 14.1 13.1
  SAY @29 /* ~Yes, <PRO_BROTHERSISTER>! Bring your rage to bear, and we shall end this in a manner befitting our heritage! Face me! Face the new LORD OF MURDER! Angelo! Tazok! Reveal yourselves and let's finish this now!~ [SAREV12] #9310 */
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",3)
TriggerActivation("Door0123",FALSE)
ActionOverride("Galdor",Enemy())
ActionOverride("Semaj",Enemy())
ActionOverride("Tazok",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 17.2 14.3 13.4
  SAY @29 /* ~Yes, <PRO_BROTHERSISTER>! Bring your rage to bear, and we shall end this in a manner befitting our heritage! Face me! Face the new LORD OF MURDER! Angelo! Tazok! Reveal yourselves and let's finish this now!~ [SAREV12] #9314 */
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",3)
TriggerActivation("Door0123",FALSE)
ActionOverride("Galdor",Enemy())
ActionOverride("Semaj",Enemy())
ActionOverride("Tazok",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY @30 /* ~Do you not yet realize? There is no great evil to fight, save that within ourselves!~ #9315 */
  IF ~~ THEN REPLY @31 /* ~But I have heard the voices! I have felt the influence of his shadow! He is there!~ #9317 */ GOTO 19
  IF ~  Gender(LastTalkedToBy,MALE)
~ THEN REPLY @32 /* ~Your evil is all that concerns me now! You will not leave here alive!~ #9318 */ GOTO 15
  IF ~  Gender(LastTalkedToBy,FEMALE)
~ THEN REPLY @32 /* ~Your evil is all that concerns me now! You will not leave here alive!~ #9319 */ GOTO 16
  IF ~~ THEN REPLY @33 /* ~But together we could face such evil, regardless of its source. Together we could be stronger!~ #9320 */ GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 14.2 13.3
  SAY @34 /* ~You would seek to take my destiny? It is truly divine arrogance you display! You have not the skill or knowledge to steal this future! It was years in the making while you sat cloistered in a foolish library! Simple wars spill countless waves of blood and no godly wrath is raised. It is but my will that will shape the screams of the dying into the power I seek! You could no more assume my role than I could back away from it! It is fitting though that you should try, and an ample testament to our bloodline. Face me! Face the new LORD OF MURDER! Angelo! Tazok! Reveal yourselves and let's finish this now!~ [SAREV12] #9321 */
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",3)
TriggerActivation("Door0123",FALSE)
ActionOverride("Galdor",Enemy())
ActionOverride("Semaj",Enemy())
ActionOverride("Tazok",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY @35 /* ~You have heard nothing but your pathetic little mind trying to comprehend its own ability! Bhaal is dead, and his consciousness has long since wafted away on the celestial winds! I seek only his power, not his resurrection! You who would stop me will die here tonight! Face me! Face the new LORD OF MURDER! Angelo! Tazok! Reveal yourselves and let's finish this now!~ [SAREV12] #9322 */
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",3)
TriggerActivation("Door0123",FALSE)
ActionOverride("Galdor",Enemy())
ActionOverride("Semaj",Enemy())
ActionOverride("Tazok",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.0
  SAY @36 /* ~Fool! I do not wish to RESTORE his power, merely to RAISE it! With the divine blood that flows through these veins, I shall assume control over that which he so foolishly lost! I shall BECOME Bhaal. THAT... is the only acceptable outcome. All that is left is for us to end this in a manner... befitting our heritage. Face me! Face the new LORD OF MURDER! Angelo! Tazok! Reveal yourselves and let's finish this now!~ [SAREV12] #9323 */
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",3)
TriggerActivation("Door0123",FALSE)
ActionOverride("Galdor",Enemy())
ActionOverride("Semaj",Enemy())
ActionOverride("Tazok",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.3
  SAY @37 /* ~I cannot be stronger; I am strong now! It is you who are the weak one, you who destroyed your slayer within. I have TAMED mine and use him as I see fit! The god is dead, but his power is there, waiting for a will. That will is mine, and all others will fall by the wayside! Come and face your brother! Face me! Face the new LORD OF MURDER! Angelo! Tazok! Reveal yourselves and let's finish this now!~ [SAREV12] #9324 */
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",3)
TriggerActivation("Door0123",FALSE)
ActionOverride("Galdor",Enemy())
ActionOverride("Semaj",Enemy())
ActionOverride("Tazok",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY @38 /* ~You're perceptive for an old man. You know why I'm here. Hand over your ward and no one will be hurt. If you resist, it shall be a waste of your life.~ #2920 */
  IF ~~ THEN EXTERN ~GORION~ 4
END

IF ~~ THEN BEGIN 23 // from:
  SAY @39 /* ~I'm sorry that you feel that way, old man.~ #2984 */
  IF ~~ THEN EXTERN ~GORION~ 5
END

IF ~~ THEN BEGIN 24 // from:
  SAY @16 /* ~Those people are the ones wanted on multiple counts of murder: KILL them!~ #17334 */
  IF ~~ THEN EXTERN ~BELT~ 10
END

IF ~~ THEN BEGIN 25 // from:
  SAY @40 /* ~Accuse me of high treason! You will die for your insolence! Grand Dukes, let us make short work of these trespassers. Use your most powerful magics to strike them down!~ #11814 */
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",10)
Wait(1)
ActionOverride("Belt",ForceSpell(Player1,SAREVOK_STRIKE))
ActionOverride("Liia",ForceSpell(Player1,SAREVOK_STRIKE))
Wait(2)
Kill(Player1)
~ EXIT
END
