// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDBELT.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDBELT.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAD100~

IF ~  AreaCheck("bd0035")
Global("bd_mdd1697_plot","global",0)
!Gender(Player1,FEMALE)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~...We've heard the testimony of those who traveled with the Flaming Fist expedition to Dragonspear Castle. Many told of how the accused was found in Dragonspear's main hall, with Skie Silvershield dead at his feet.~ [BD69759] #69759 */
  IF ~~ THEN DO ~StartCutSceneMode()
SetCutSceneLite(TRUE)
SetGlobal("bd_mdd1697_plot","global",5)
SmallWait(5)
ApplySpellRES("bdslow","bence_guard")
ApplySpellRES("bdslow","bdbence")
ActionOverride("bence_guard",MoveToPoint([746.729]))
SmallWait(5)
ActionOverride("bdbence",MoveToPoint([621.720]))
SmallWait(55)
ActionOverride("bence_guard",Face(SSW))
Face(E)
SmallWait(25)
Face(SSW)
ActionOverride("bdbence",Face(SW))
SmallWait(6)
StartDialogNoSet("Commoner_talk1")
~ EXIT
END

IF ~  AreaCheck("bd0035")
Global("bd_mdd1697_plot","global",0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~...We've heard the testimony of those who traveled with the Flaming Fist expedition to Dragonspear Castle. Many told of how the accused was found in Dragonspear's main hall, with Skie Silvershield dead at her feet.~ [BD70367] #70367 */
  IF ~~ THEN DO ~StartCutSceneMode()
SetCutSceneLite(TRUE)
SetGlobal("bd_mdd1697_plot","global",5)
SmallWait(5)
ApplySpellRES("bdslow","bence_guard")
ApplySpellRES("bdslow","bdbence")
ActionOverride("bence_guard",MoveToPoint([746.729]))
SmallWait(5)
ActionOverride("bdbence",MoveToPoint([621.720]))
SmallWait(55)
ActionOverride("bence_guard",Face(SSW))
Face(E)
SmallWait(25)
Face(SSW)
ActionOverride("bdbence",Face(SW))
SmallWait(6)
StartDialogNoSet("Commoner_talk1")
~ EXIT
END

IF ~  AreaCheck("bd0035")
Global("bd_mdd1697_plot","global",5)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Corporal Bence Duncan bore witness to a disturbing incident involving the accused at Boareskyr Bridge. He is here to share his recollections.~ [BD69760] #69760 */
  IF ~~ THEN DO ~SetGlobal("bd_mdd1697_plot","global",10)
~ EXTERN ~BDBENCE~ 4
  IF ~  Gender(Player1,FEMALE)
~ THEN DO ~SetGlobal("bd_mdd1697_plot","global",10)
~ EXTERN ~BDBENCE~ 5
  IF ~  Global("bd_bridgefort_sabotaged","GLOBAL",1)
~ THEN DO ~SetGlobal("bd_mdd1697_plot","global",10)
~ EXTERN ~BDBENCE~ 1
  IF ~  Global("bd_bridgefort_saved","GLOBAL",1)
~ THEN DO ~SetGlobal("bd_mdd1697_plot","global",10)
~ EXTERN ~BDBENCE~ 0
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~The accused has freely admitted his tainted heritage. His blood is no proof of guilt. But we cannot forget that Sarevok, a man who shared the same lineage, almost plunged our city into war.~ [BD69765] #69765 */
  IF ~~ THEN DO ~IncrementGlobal("bd_trial_hero","bd0035",-1)
IncrementGlobal("bd_trial_evil","bd0035",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~The accused has freely admitted her tainted heritage. Her blood is no proof of guilt. But we cannot forget that Sarevok, a man who shared the same lineage, almost plunged our city into war.~ [BD70369] #70369 */
  IF ~~ THEN DO ~IncrementGlobal("bd_trial_hero","bd0035",-1)
IncrementGlobal("bd_trial_evil","bd0035",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from:
  SAY @6 /* ~The mark of Bhaal does not in itself prove guilt. But it does cast a darker shadow of suspicion upon the accused. We cannot forget that Sarevok, another spawn of Bhaal, brought our city to the brink of war.~ [BD69766] #69766 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 4.0 3.0
  SAY @7 /* ~Thank you for your service, Corporal. You may go.~ [BD70370] #70370 */
  IF ~~ THEN DO ~SetCutSceneLite(TRUE)
ApplySpellRES("bdslow","bence_guard")
ApplySpellRES("bdslow","bdbence")
ActionOverride("bdbence",MoveToPoint([743.762]))
SmallWait(30)
ActionOverride("bence_guard",FaceObject("bdbence"))
ActionOverride("bdbence",Face(N))
SmallWait(15)
ActionOverride("bence_guard",MoveToPoint([1074.639]))
SmallWait(6)
ActionOverride("bdbence",MoveToPoint([1074.639]))
Face(SSW)
Wait(3)
FaceObject(Player1)
Wait(1)
StartDialogNoSet(Player1)
~ EXIT
END

IF ~  AreaCheck("bd0035")
Global("bd_mdd1697_plot","global",10)
~ THEN BEGIN 7 // from:
  SAY @8 /* ~As for you, <CHARNAME>...~ [BD70371] #70371 */
  IF ~~ THEN DO ~SetGlobal("bd_mdd1697_plot","global",15)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @9 /* ~Our diviners have presented evidence of your deeds since leaving Baldur's Gate, deeds that speak to your character.~ [BD69767] #69767 */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @10 /* ~Is there anything you wish to say in your defense?~ [BD69768] #69768 */
  IF ~~ THEN REPLY @11 /* ~I would never have killed Skie. All the evidence shows I am not a murderer.~ #69769 */ GOTO 10
  IF ~~ THEN REPLY @12 /* ~I can't remember what happened at the castle, but I'm certain I am no murderer. My character is my defense.~ #69770 */ GOTO 10
  IF ~~ THEN REPLY @13 /* ~I am no hero. I've done many terrible things in my life... and done them proudly. If I HAD killed Skie Silvershield, I would freely admit it.~ #69771 */ GOTO 10
  IF ~  OR(7)
Global("bd_madele","bd0035",1)
Global("bd_poison","bd0035",1)
Global("bd_illness","bd0035",1)
Global("bd_traitor","bd0035",1)
Global("bd_thrix","bd0035",1)
Global("bd_paladin","bd0035",1)
Global("bd_reputation","bd0035",1)
~ THEN REPLY @14 /* ~I do not know if I killed the woman. It's all a blur. But I do have something I want to say.~ #69772 */ GOTO 10
  IF ~~ THEN REPLY @15 /* ~I've nothing to say. I await your judgment.~ #69773 */ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 12.1 9.3 9.2 9.1 9.0
  SAY @16 /* ~Elaborate.~ #69774 */
  IF ~  Global("bd_madele","bd0035",1)
Global("bd_mdd420_morale","global",1)
~ THEN REPLY @17 /* ~When I met a former servant of Bhaal, I instructed her to atone for her crimes and do good in the world. I am not a slave to my father's will.~ #69775 */ DO ~IncrementGlobal("bd_trial_hero","bd0035",1)
IncrementGlobal("bd_trial_evil","bd0035",-1)
IncrementGlobal("bd_trial_case","bd0035",1)
SetGlobal("bd_madele","bd0035",2)
~ GOTO 11
  IF ~  Global("bd_madele","bd0035",1)
Global("bd_mdd420_morale","global",-1)
~ THEN REPLY @18 /* ~I had no qualms about releasing a former priestess of Bhaal into the world. I would admit at once if I committed murder.~ #69776 */ DO ~IncrementGlobal("bd_trial_hero","bd0035",-1)
IncrementGlobal("bd_trial_evil","bd0035",1)
IncrementGlobal("bd_trial_case","bd0035",1)
SetGlobal("bd_madele","bd0035",2)
~ GOTO 11
  IF ~  Global("bd_poison","bd0035",1)
Global("bd_MDD1001_morale","global",1)
~ THEN REPLY @19 /* ~I was asked to poison the crusaders' supplies at Dragonspear Castle but flatly refused. Poison and murder are a cowards' tools.~ #69777 */ DO ~IncrementGlobal("bd_trial_hero","bd0035",1)
IncrementGlobal("bd_trial_evil","bd0035",-1)
IncrementGlobal("bd_trial_case","bd0035",1)
SetGlobal("bd_poison","bd0035",2)
~ GOTO 11
  IF ~  Global("bd_poison","bd0035",1)
Global("bd_MDD1001_morale","global",-1)
~ THEN REPLY @20 /* ~I was given a special mission at Dragonspear Castle: Poison the crusaders' supplies. Any tool is a useful one in war. I agreed to the task. I don't hide my deeds.~ #69778 */ DO ~IncrementGlobal("bd_trial_hero","bd0035",-1)
IncrementGlobal("bd_trial_evil","bd0035",1)
IncrementGlobal("bd_trial_case","bd0035",1)
SetGlobal("bd_poison","bd0035",2)
~ GOTO 11
  IF ~  Global("bd_illness","bd0035",1)
Global("bd_sdd302_uncommon_cold","global",3)
~ THEN REPLY @21 /* ~When soldiers at the coalition camp fell ill, I could have recommended they be killed to prevent infection. Instead, I did all that I could to find a cure. I ask you, is this the act of a murderer?~ #69779 */ DO ~IncrementGlobal("bd_trial_hero","bd0035",1)
IncrementGlobal("bd_trial_evil","bd0035",-1)
IncrementGlobal("bd_trial_case","bd0035",1)
SetGlobal("bd_illness","bd0035",2)
~ GOTO 11
  IF ~  Global("bd_traitor","bd0035",1)
Global("SDD303_executed","global",1)
~ THEN REPLY @22 /* ~When I suspected a traitor at the coalition camp, I executed them immediately. I would tell you if I thought Skie needed to die.~ #69780 */ DO ~IncrementGlobal("bd_trial_hero","bd0035",-1)
IncrementGlobal("bd_trial_evil","bd0035",1)
IncrementGlobal("bd_trial_case","bd0035",1)
SetGlobal("bd_traitor","bd0035",2)
~ GOTO 11
  IF ~  Global("bd_thrix","bd0035",1)
Global("bd_thrix_sacrifice_self","global",1)
~ THEN REPLY @23 /* ~The pursuit of Caelar took me to the wastes of Avernus. A fiend offered to let me pass freely there—if I sacrificed one of my companions. I offered myself up instead.~ #69781 */ DO ~IncrementGlobal("bd_trial_hero","bd0035",1)
IncrementGlobal("bd_trial_evil","bd0035",-1)
IncrementGlobal("bd_trial_case","bd0035",1)
SetGlobal("bd_thrix","bd0035",2)
~ GOTO 11
  IF ~  Global("bd_thrix","bd0035",1)
Global("bd_thrix_sacrifice_companion","global",1)
~ THEN REPLY @24 /* ~In the Nine Hells' depths, I willingly sacrificed one of my companions for no reason other than to ease my passage. I admit it freely. Now ask yourselves: Why would I take responsibility for that sin—for all my sins—yet deny I slew the girl?~ #69782 */ DO ~IncrementGlobal("bd_trial_hero","bd0035",-1)
IncrementGlobal("bd_trial_evil","bd0035",1)
IncrementGlobal("bd_trial_case","bd0035",1)
SetGlobal("bd_thrix","bd0035",2)
~ GOTO 11
  IF ~  Global("bd_paladin","bd0035",1)
Class(Player1,PALADIN_ALL)
!Kit(Player1,Blackguard)
~ THEN REPLY @25 /* ~I am a paladin, a holy warrior. My god still blesses me with divine power. Were I guilty of this crime, that would not be the case.~ #69783 */ DO ~IncrementGlobal("bd_trial_hero","bd0035",1)
IncrementGlobal("bd_trial_evil","bd0035",-1)
IncrementGlobal("bd_trial_case","bd0035",1)
SetGlobal("bd_paladin","bd0035",2)
~ GOTO 11
  IF ~  Global("bd_paladin","bd0035",1)
Class(Player1,PALADIN_ALL)
Kit(Player1,Blackguard)
~ THEN REPLY @26 /* ~I serve the forces of darkness. I willingly declare it now, before you all. Had I committed this crime, I would admit it—revel in it, even.~ #69784 */ DO ~IncrementGlobal("bd_trial_hero","bd0035",-1)
IncrementGlobal("bd_trial_evil","bd0035",1)
IncrementGlobal("bd_trial_case","bd0035",1)
SetGlobal("bd_paladin","bd0035",2)
~ GOTO 11
  IF ~  Global("bd_reputation","bd0035",1)
ReputationGT(Player1,16)
~ THEN REPLY @27 /* ~My deeds are well known throughout the land. Many call me "hero." Surely that speaks to my character.~ #69785 */ DO ~IncrementGlobal("bd_trial_hero","bd0035",1)
IncrementGlobal("bd_trial_evil","bd0035",-1)
IncrementGlobal("bd_trial_case","bd0035",1)
SetGlobal("bd_reputation","bd0035",2)
~ GOTO 11
  IF ~  Global("bd_reputation","bd0035",1)
ReputationLT(Player1,6)
~ THEN REPLY @28 /* ~My deeds are notorious throughout the land. I embrace my reputation—why, then, would I deny murder?~ #69786 */ DO ~IncrementGlobal("bd_trial_hero","bd0035",-1)
IncrementGlobal("bd_trial_evil","bd0035",1)
IncrementGlobal("bd_trial_case","bd0035",1)
SetGlobal("bd_reputation","bd0035",2)
~ GOTO 11
  IF ~~ THEN REPLY @29 /* ~I've nothing else to say.~ #69787 */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.11 10.10 10.9 10.8 10.7 10.6 10.5 10.4 10.3 10.2 10.1 10.0
  SAY @30 /* ~So noted.~ [BD69788] #69788 */
  IF ~~ THEN GOTO 13
  IF ~  GlobalLT("bd_trial_case","bd0035",3)
~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @31 /* ~Is there anything more you would say in your defense?~ [BD69789] #69789 */
  IF ~~ THEN REPLY @32 /* ~No. I'm ready for your decision.~ #69790 */ GOTO 13
  IF ~  OR(7)
Global("bd_madele","bd0035",1)
Global("bd_poison","bd0035",1)
Global("bd_illness","bd0035",1)
Global("bd_traitor","bd0035",1)
Global("bd_thrix","bd0035",1)
Global("bd_paladin","bd0035",1)
Global("bd_reputation","bd0035",1)
~ THEN REPLY @33 /* ~Yes, there is.~ #69791 */ GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 12.0 11.0 10.12 9.4
  SAY @34 /* ~We've heard much evidence today, both for your character and against it. Now we—what is that commotion?~ [BD69792] #69792 */
  IF ~~ THEN DO ~StartCutSceneMode()
Face(E)
ActionOverride("bdentar",JumpToPoint([1045.704]))
SmallWait(10)
ActionOverride("bdentar",MoveToPoint([810.757]))
SmallWait(6)
ActionOverride("Entar Guard 1",MoveToPoint([860.722]))
ActionOverride("Entar Guard 2",MoveToPoint([872.767]))
SmallWait(5)
ActionOverride("bdff1697",MoveToPoint([748.761]))
SmallWait(15)
ActionOverride("bdff1697",FaceObject("bdentar"))
DisplayStringWait("bdentar",@35)
ActionOverride("bdff1697",StartDialogNoSet("bdentar"))
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY @36 /* ~You do not want to do this, Entar...~ [BD70374] #70374 */
  IF ~~ THEN EXTERN ~XAD102~ 1
END

IF ~~ THEN BEGIN 15 // from:
  SAY @37 /* ~This is not the time—~ [BD69798] #69798 */
  IF ~~ THEN EXTERN ~XAD102~ 3
END

IF ~  AreaCheck("bd0035")
Global("bd_mdd1697_plot","global",20)
~ THEN BEGIN 16 // from:
  SAY @38 /* ~A father's grief is an irrational thing. Let us return to the facts. <CHARNAME>, we've heard the evidence and your own defense. Have you anything else you wish to say?~ [BD69805] #69805 */
  IF ~~ THEN REPLY @39 /* ~If you have wizards divining the evidence, surely they can discover who murdered Skie?~ #69806 */ DO ~SetGlobal("bd_mdd1697_plot","global",30)
ActionOverride("bdentar",DestroySelf())
~ GOTO 17
  IF ~~ THEN REPLY @40 /* ~What is this "dagger" Duke Silvershield spoke of? What happened to Skie's soul?~ #69807 */ DO ~SetGlobal("bd_mdd1697_plot","global",30)
ActionOverride("bdentar",DestroySelf())
~ GOTO 18
  IF ~~ THEN REPLY @41 /* ~I doubt there's anything I can do to convince you of my innocence. Your mind is made up.~ #69808 */ DO ~SetGlobal("bd_mdd1697_plot","global",30)
ActionOverride("bdentar",DestroySelf())
~ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @42 /* ~A powerful force obscured divinations at the time of the murder. That in itself is highly suspicious and points to premeditation. However, we have learned one important fact.~ [BD69809] #69809 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 16.2 16.1
  SAY @43 /* ~Peering into the Weave, our diviners determined that Skie Silvershield's soul now languishes within an artifact called the Soultaker Dagger. All efforts to locate the dagger have amounted to naught.~ [BD69810] #69810 */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @44 /* ~While her essence is imprisoned thus, Skie can never be returned to life. If we had the Soultaker, she might possibly be restored, and confirm your innocence—if indeed you are innocent.~ [BD69811] #69811 */
  IF ~~ THEN EXTERN ~BDNOBL90~ 0
END

IF ~~ THEN BEGIN 20 // from:
  SAY @45 /* ~The Flaming Fist will take custody of the prisoner until a decision is reached. Take him away.~ [BD69813] #69813 */
  IF ~~ THEN DO ~AddJournalEntry(69816,QUEST)
AddJournalEntry(69817,INFO)
StartCutSceneMode()
StartCutSceneEx("bdcut62",FALSE)
~ EXIT
  IF ~  !GlobalLT("bd_trial_evil","bd0035",3)
~ THEN DO ~SetGlobal("bd_trial_Innocent","GLOBAL",1)
SetGlobal("bd_player_exiled","global",1)
AddJournalEntry(69815,QUEST)
AddJournalEntry(69817,INFO)
StartCutSceneMode()
StartCutSceneEx("bdcut62",FALSE)
~ EXIT
  IF ~  !GlobalLT("bd_trial_hero","bd0035",3)
~ THEN DO ~SetGlobal("bd_trial_Innocent","GLOBAL",1)
SetGlobal("bd_player_exiled","global",1)
AddJournalEntry(69814,QUEST)
AddJournalEntry(69817,INFO)
StartCutSceneMode()
StartCutSceneEx("bdcut62",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY @46 /* ~The Flaming Fist will take custody of the prisoner until a decision is reached. Take her away.~ [BD70377] #70377 */
  IF ~~ THEN DO ~AddJournalEntry(69816,QUEST)
AddJournalEntry(69817,INFO)
StartCutSceneMode()
StartCutSceneEx("bdcut62",FALSE)
~ EXIT
  IF ~  !GlobalLT("bd_trial_evil","bd0035",3)
~ THEN DO ~SetGlobal("bd_trial_Innocent","GLOBAL",1)
SetGlobal("bd_player_exiled","global",1)
AddJournalEntry(69815,QUEST)
AddJournalEntry(69817,INFO)
StartCutSceneMode()
StartCutSceneEx("bdcut62",FALSE)
~ EXIT
  IF ~  !GlobalLT("bd_trial_hero","bd0035",3)
~ THEN DO ~SetGlobal("bd_trial_Innocent","GLOBAL",1)
SetGlobal("bd_player_exiled","global",1)
AddJournalEntry(69814,QUEST)
AddJournalEntry(69817,INFO)
StartCutSceneMode()
StartCutSceneEx("bdcut62",FALSE)
~ EXIT
END

IF ~  AreaCheck("bd0104")
GlobalLT("bd_plot","global",620)
~ THEN BEGIN 22 // from:
  SAY @47 /* ~How are you, <CHARNAME>?~ [BD69820] #69820 */
  IF ~~ THEN REPLY @48 /* ~Duke Belt—it is good to see you. I have news. I know who slew Skie now.~ #69821 */ DO ~SetGlobal("bd_plot","global",620)
~ GOTO 30
  IF ~~ THEN REPLY @49 /* ~I'll be a damn sight better when I'm freed from this cell.~ #69822 */ DO ~SetGlobal("bd_plot","global",620)
~ GOTO 24
  IF ~~ THEN REPLY @50 /* ~Don't waste my time with idle conversation, Belt. I've no patience for it.~ #69823 */ DO ~SetGlobal("bd_plot","global",620)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 30.2 22.2
  SAY @51 /* ~As you wish.~ [BD69824] #69824 */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 24 // from: 31.0 30.1 22.1
  SAY @52 /* ~Were you anyone else, this would be a simple matter. For Entar, it is VERY simple—he wants your head. That will not change any time soon, certainly not while his daughter remains in her current state.~ [BD69825] #69825 */
  IF ~~ THEN DO ~SetGlobal("bd_sodep3","locals",1)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @53 /* ~But you are the slayer of Sarevok. The hero of Baldur's Gate. The champion of Dragonspear. Your service to the Sword Coast is beyond dispute.~ [BD69826] #69826 */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @54 /* ~Unfortunately, your heritage is now also beyond dispute. There can be no peace for a child of Bhaal. Those near you will inevitably suffer, as Skie did—that is your nature.~ [BD69827] #69827 */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @55 /* ~There are as many people in this city ready to fight and die for you as there are those baying for your blood. Baldur's Gate is in turmoil.~ [BD69828] #69828 */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 23.0
  SAY @56 /* ~After extensive deliberations, Eltan, Liia Jannath, and I have decided it would be best for all if you—and the darkness within you—left Baldur's Gate as quietly as possible.~ [BD69829] #69829 */
  IF ~~ THEN GOTO 32
  IF ~  Global("bd_sodep3","locals",0)
~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY @57 /* ~Grand Duke Silvershield disagrees. Strongly. When he learns you are gone, he will not rest until you are dead—certainly not while the Soultaker Dagger remains beyond his grasp. Be wary in your travels.~ [BD69830] #69830 */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 22.0
  SAY @58 /* ~You know the killer's name? You have proof?~ [BD69831] #69831 */
  IF ~~ THEN REPLY @59 /* ~I have neither his name nor proof of his crime, but you must find him nonetheless, if you would see justice served.~ #69832 */ GOTO 31
  IF ~~ THEN REPLY @60 /* ~Release me and I'll get you both.~ #69833 */ GOTO 24
  IF ~~ THEN REPLY @61 /* ~I can offer you nothing more than my word that I speak the truth. If that is insufficient, so be it. Say your piece and begone.~ #69834 */ GOTO 23
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @62 /* ~Justice is an ideal we must all strive for. But circumstances do not allow for the ideal. The Council of Four must bow to the practical.~ [BD69835] #69835 */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 32 // from: 29.0 28.0
  SAY @63 /* ~A guard will escort you out of the city. This is a poor reward for all you have done for us, I know, but it is the best we are allowed. Go someplace far from here, and do not return.~ [BD69836] #69836 */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @64 /* ~Fare thee well, <CHARNAME>.~ [BD69837] #69837 */
  IF ~~ THEN DO ~AddMapNoteColor([1189.812],@65,RED)
AddJournalEntry(69838,QUEST)
StartCutSceneMode()
StartCutSceneEx("bdcut64a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY @66 /* ~They were. Something has changed.~ [BD64716] #64716 */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @67 /* ~The crusade has disrupted trade all along the Sword Coast. Hundreds, thousands have been driven from their homes, their fields and storehouses ransacked.~ [BD64718] #64718 */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @68 /* ~Some weeks ago, we dispatched a hundred Flaming Fists to join with soldiers of Waterdeep and Daggerford and march on Caelar's stronghold—Dragonspear Castle.~ [BD66716] #66716 */
  IF ~~ THEN EXTERN ~XAD101~ 2
END

IF ~~ THEN BEGIN 37 // from:
  SAY @69 /* ~You may be satisfied to leave Caelar Argent alone. She seems unwilling to do you the same courtesy.~ [BD64724] #64724 */
  IF ~~ THEN EXTERN ~XAD101~ 5
END

IF ~~ THEN BEGIN 38 // from:
  SAY @70 /* ~Excellent. I knew our faith in you was not misplaced, <CHARNAME>.~ [BD64733] #64733 */
  IF ~~ THEN EXTERN ~XAD101~ 9
END

IF ~~ THEN BEGIN 39 // from:
  SAY @71 /* ~You need not go alone. The Fist shall back you—and more as well, if you wish.~ [BD64739] #64739 */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY @72 /* ~I know the whereabouts of your old allies—some of them, anyway. The captain here can escort you to them.~ [BD34317] #34317 */
  IF ~~ THEN REPLY @73 /* ~Captain Corwin? I can think of no better companion.~ #34318 */ EXTERN ~XAD144~ 22
  IF ~~ THEN REPLY @74 /* ~So we're headed to the nearest tavern, I presume?~ #34319 */ EXTERN ~XAD144~ 20
  IF ~~ THEN REPLY @75 /* ~As I've already had one attempt on my life this night, I will permit it.~ #57853 */ EXTERN ~XAD144~ 21
END

IF ~~ THEN BEGIN 41 // from:
  SAY @76 /* ~You're doing Baldur's Gate a great service, <CHARNAME>. We'll not forget it.~ [BD64741] #64741 */
  IF ~~ THEN DO ~SetGlobal("bd_plot_003","bd0102",2)
AddJournalEntry(56387,INFO)
AddJournalEntry(59617,QUEST)
AddJournalEntry(66701,QUEST_DONE)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("bdcut04",FALSE)
~ EXIT
END

IF ~  GlobalLT("BD_plot","global",55)
AreaCheck("bd0100")
~ THEN BEGIN 42 // from:
  SAY @77 /* ~Accept my apologies, <CHARNAME>. My intent was to keep you, and Imoen, safe. Caelar's assassins—indeed, ANY assassins—should never have been able to breach the palace.~ [BD55930] #55930 */
  IF ~  Global("SOD_fromimport","global",1)
~ THEN REPLY @78 /* ~These things happen. Speaking of happening, what in the hells happened to your voice?~ #55932 */ GOTO 47
  IF ~~ THEN REPLY @79 /* ~Where there's a will, there's a way. ~ #55931 */ GOTO 45
  IF ~~ THEN REPLY @80 /* ~What do we know of the killers' mistress? ~ #55933 */ GOTO 51
  IF ~  CheckStatGT(Player1,14,INT)
~ THEN REPLY @81 /* ~What matters now is their intent. Baldur's Gate's rulers were within these walls, yet they targeted me.~ #55934 */ GOTO 44
  IF ~~ THEN REPLY @82 /* ~This city has grown soft with my victories. The first casualty was vigilance.~ #55935 */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.4
  SAY @83 /* ~What happened to Imoen falls on my shoulders, and it is a harsh reminder indeed, but as you say—a necessary one. It is of little comfort now, but you have my word: I shall redouble my efforts to keep the city safe.~ #55936 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.3
  SAY @84 /* ~The same thought had occurred to me. Perhaps they believed they could slay all within the palace, and you were just one of many Caelar sought to eliminate.~ #55937 */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0 42.1
  SAY @85 /* ~By all accounts, the Shining Lady's will is iron, as are her followers'. She trusts too much in mercenaries, though—enough coin may turn that to our advantage.~ #55938 */
  IF ~~ THEN REPLY @86 /* ~Cut the head from the snake and its body will die. What do we know of Caelar Argent?~ #55939 */ GOTO 51
  IF ~~ THEN REPLY @87 /* ~I'm not sure people who rely on the Flaming Fist should look too closely at turning mercenaries against their paymasters...~ #55940 */ GOTO 56
  IF ~~ THEN REPLY @88 /* ~I am all the advantage you'll need. Caelar Argent attacked me, and she will die for it.~ #55941 */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 52.2 51.2 45.2
  SAY @89 /* ~Given your success with Sarevok, I'll not bet against you. We are fortunate you're on our side.~ #55942 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.0
  SAY @90 /* ~Ah, yes, you wouldn't know... An old "friend" from my adventuring days caught up to me shortly before the iron crisis began.~ #66720 */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @91 /* ~The Flaming Fist dealt with her, but not before she managed to place a curse upon me. Irritating, but not life-threatening. Even so, I'm glad to have my true voice restored.~ #55943 */
  IF ~~ THEN REPLY @92 /* ~I can imagine. What can you tell me of this Caelar Argent?~ #55944 */ GOTO 51
  IF ~~ THEN REPLY @93 /* ~As am I. I always thought it curious that a man of your reputation sounded so... petulant. ~ #55945 */ GOTO 49
  IF ~~ THEN REPLY @94 /* ~I'll take my leave now. I've much to do before the expedition departs.~ #55946 */ GOTO 55
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY @95 /* ~It didn't trouble me overly, though granted, something had obviously changed. In any event, it's resolved, thank the gods.~ #55947 */
  IF ~~ THEN REPLY @96 /* ~I've much to do and I'm sure you do as well. I'll take my leave.~ #55948 */ GOTO 55
  IF ~~ THEN REPLY @97 /* ~What can you tell me of this Caelar Argent?~ #55949 */ GOTO 51
  IF ~~ THEN REPLY @98 /* ~Enough talk. Neither of us have time to waste on trivialities.~ #55950 */ GOTO 55
END

IF ~~ THEN BEGIN 50 // from:
  SAY @99 /* ~Agreed. If you venture outside the palace, make sure to take Captain Corwin with you. I'd not see the hero of Baldur's Gate fall—certainly not before the situation with Caelar is resolved. ~ #55951 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 56.0 49.1 48.0 45.0 42.2
  SAY @100 /* ~I wish there were more to tell. Our scouts in the Troll Claws and High Moor have had little success tracking her movements. In the process, many of our people have gone missing, or worse—left our service to join her.~ #55952 */
  IF ~~ THEN REPLY @101 /* ~What could turn loyal soldiers against their own city?~ #55953 */ GOTO 52
  IF ~  OR(2)
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN_ALL)
~ THEN REPLY @102 /* ~A crusade implies a divine catalyst to Caelar's actions.~ #55954 */ GOTO 52
  IF ~~ THEN REPLY @103 /* ~All of them shall fall, as will their mistress.~ #55955 */ GOTO 46
END

IF ~~ THEN BEGIN 52 // from: 51.1 51.0
  SAY @104 /* ~Adherents of many faiths flock to her banner. What she hopes to accomplish is... vague. But that's done nothing to diminish her followers' devotion.~ #55956 */
  IF ~~ THEN REPLY @105 /* ~This is all we know of the woman who threatens us and all the Sword Coast?~ #55958 */ GOTO 53
  IF ~~ THEN REPLY @106 /* ~Zealots for followers, a hidden agenda, and no idea of her plans or strategy. If she means to wage war upon us, we're already losing. What more do we know?~ #55957 */ GOTO 53
  IF ~~ THEN REPLY @107 /* ~Enough steel and magic can end any crusade.~ #55959 */ GOTO 46
END

IF ~~ THEN BEGIN 53 // from: 52.1 52.0
  SAY @108 /* ~She first appeared on the High Moor with a handful of followers. Their ranks swelled alarmingly fast. Initially, their efforts were geared towards taking control of Dragonspear. Once the castle was seized, more flocked to her cause. Her army spread out in all directions—and now it has reached us.~ #55960 */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY @109 /* ~I hope you can end this threat. We will see about marshaling our own troops and preparing for another attack.~ #55961 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55 // from: 58.0 57.0 56.3 49.2 49.0 48.2
  SAY @110 /* ~You have my thanks. If you enter the city, take Captain Corwin—and be vigilant. I had hoped for peace in the wake of the iron crisis, but it seems that is denied us for the moment.~ #55962 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from: 45.1
  SAY @111 /* ~I understand the concern, but until we know more about the nature of the threat, all options must remain on the table. ~ #55963 */
  IF ~~ THEN REPLY @112 /* ~What do we know about Caelar? ~ #55964 */ GOTO 51
  IF ~  OR(12)
Class(Player1,FIGHTER)
Kit(Player1,BARBARIAN)
Class(Player1,RANGER)
Class(Player1,PALADIN)
Class(Player1,THIEF)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,MONK)
~ THEN REPLY @113 /* ~That's the nice thing about options—it costs little to consider them. It's actions that cause all the trouble.~ #55965 */ GOTO 57
  IF ~  OR(9)
Class(Player1,CLERIC)
Class(Player1,DRUID)
Class(Player1,MAGE)
Class(Player1,BARD)
Class(Player1,SORCERER)
Class(Player1,MAGE_THIEF)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)
Class(Player1,CLERIC_RANGER)
~ THEN REPLY @113 /* ~That's the nice thing about options—it costs little to consider them. It's actions that cause all the trouble.~ #55965 */ GOTO 58
  IF ~~ THEN REPLY @114 /* ~I already know what must be done. My path was set the moment Caelar attacked me.~ #55966 */ GOTO 55
END

IF ~~ THEN BEGIN 57 // from: 56.1
  SAY @115 /* ~Indeed, <CHARNAME>, a mind such as yours may prove stronger and sharper than any enemy blade. Continue walking the path you're on and you could someday be one of the Council of Four.~ #55967 */
  IF ~~ THEN REPLY @116 /* ~It is my honor to serve, however I am needed.~ #55968 */ GOTO 55
  IF ~~ THEN REPLY @117 /* ~You flatter me, sir. If I really had a strategic mind, I'd be halfway to Calimshan right now, not heading north to Dragonspear.~ #55969 */ GOTO 60
  IF ~~ THEN REPLY @118 /* ~I have set my sights higher than the walls of Baldur's Gate, Belt.~ #55970 */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 56.2
  SAY @119 /* ~You beard it with a quick wit, <CHARNAME>, but you have more to offer the city than magic and the occasional quip. Continue down the path you're on and you could someday be one of the Council of Four.~ #55971 */
  IF ~~ THEN REPLY @116 /* ~It is my honor to serve, however I am needed.~ #55972 */ GOTO 55
  IF ~~ THEN REPLY @120 /* ~You flatter me, sir. If I really had a strategic mind, I'd be halfway to Calimshan right now, not heading north to Dragonspear. ~ #55973 */ GOTO 60
  IF ~~ THEN REPLY @118 /* ~I have set my sights higher than the walls of Baldur's Gate, Belt.~ #55974 */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.2 57.2
  SAY @121 /* ~Ambitious as well, I see—perhaps Dragonspear will gain a new lord when Caelar Argent has been defeated? We shall see what the future holds.~ #55975 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.1 57.1
  SAY @122 /* ~The Shining Sea is lovely this time of year. If events continue in the direction they have been, I might just head south with you. But for now, my place is here—and Dragonspear is yours. Tymora bless your travels, and swift journey to you.~ #55976 */
  IF ~~ THEN EXIT
END

IF ~  Global("BD_plot","global",56)
Global("bd_final_speech","global",0)
~ THEN BEGIN 61 // from:
  SAY @123 /* ~Our prayers and hopes go with you. With your help, I'm sure we'll be able to stop the crusade before it grows any stronger.~ [BD64896] #64896 */
  IF ~~ THEN DO ~SetGlobal("bd_final_speech","global",1)
~ EXTERN ~XAD102~ 41
END

IF ~~ THEN BEGIN 62 // from:
  SAY @124 /* ~You'll have to travel by major roads—the contingent is too large to move swiftly overland. You'll cross the Winding Water at Coast Way Crossing; then it's a straight march to Dragonspear.~ #64901 */
  IF ~~ THEN EXTERN ~XAD102~ 42
END

IF ~~ THEN BEGIN 63 // from:
  SAY @125 /* ~May Tymora smile on you, <CHARNAME>. If anyone can end this threat to the city, it is you.~ #64908 */
  IF ~~ THEN EXTERN ~XAD102~ 43
END

IF ~  Global("BD_plot","global",56)
Global("bd_final_speech","global",1)
~ THEN BEGIN 64 // from:
  SAY @126 /* ~May Tymora smile on you. If anyone can end this threat to the city, it's you. Leave through the main doors when you're ready.~ #68874 */
  IF ~~ THEN EXIT
END
