// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDBENCE.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDBENCE.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAD104~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~Bridgefort was under siege by the crusade. The accused led an attack, driving Caelar's forces off.~ [BD69761] #69761 */
  IF ~~ THEN DO ~IncrementGlobal("bd_trial_hero","bd0035",1)
IncrementGlobal("bd_trial_evil","bd0035",-1)
~ GOTO 2
  IF ~  Gender(Player1,FEMALE)
~ THEN DO ~IncrementGlobal("bd_trial_hero","bd0035",1)
IncrementGlobal("bd_trial_evil","bd0035",-1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Bridgefort was under siege by the crusade. The accused lowered the fort's drawbridge, delivering Caelar's forces an easy victory.~ [BD69762] #69762 */
  IF ~~ THEN DO ~IncrementGlobal("bd_trial_hero","bd0035",-1)
IncrementGlobal("bd_trial_evil","bd0035",1)
~ GOTO 2
  IF ~  Gender(Player1,FEMALE)
~ THEN DO ~IncrementGlobal("bd_trial_hero","bd0035",-1)
IncrementGlobal("bd_trial_evil","bd0035",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 0.0
  SAY @3 /* ~After that, he collapsed while crossing Boareskyr Bridge. The symbol of Bhaal, Lord of Murder, seared itself into the stones around him.~ [BD69763] #69763 */
  IF ~~ THEN EXTERN ~BDCOMM90~ 0
END

IF ~~ THEN BEGIN 3 // from: 1.1 0.1
  SAY @4 /* ~After that, she collapsed while crossing Boareskyr Bridge. The symbol of Bhaal, Lord of Murder, seared itself into the stones around her.~ [BD70368] #70368 */
  IF ~~ THEN EXTERN ~BDCOMM90~ 0
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~He collapsed while crossing Boareskyr Bridge. The symbol of Bhaal, Lord of Murder, seared itself into the stones around him.~ [BD70422] #70422 */
  IF ~~ THEN EXTERN ~BDCOMM90~ 0
END

IF ~~ THEN BEGIN 5 // from:
  SAY @6 /* ~She collapsed while crossing Boareskyr Bridge. The symbol of Bhaal, Lord of Murder, seared itself into the stones around her.~ [BD70423] #70423 */
  IF ~~ THEN EXTERN ~BDCOMM90~ 0
END

IF ~  Global("bd_plot","global",590)
~ THEN BEGIN 6 // from:
  SAY @7 /* ~What have you done, <CHARNAME>? WHAT HAVE YOU DONE?~ [BD39373] #39373 */
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY @8 /* ~There was a monster—it attacked me!~ #39374 */ DO ~SetGlobal("bd_plot","global",591)
~ GOTO 7
  IF ~  Gender(Player1,MALE)
~ THEN REPLY @8 /* ~There was a monster—it attacked me!~ #39374 */ DO ~SetGlobal("bd_plot","global",591)
~ GOTO 8
  IF ~~ THEN REPLY @9 /* ~I—I don't know.~ #39375 */ DO ~SetGlobal("bd_plot","global",591)
~ GOTO 9
  IF ~~ THEN REPLY @10 /* ~That seems obvious. The better question is why I might have done it.~ #39376 */ DO ~SetGlobal("bd_plot","global",591)
~ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @11 /* ~There's only one monster here—the one that stood on Boareskyr Bridge, a skull scorched into the stone around her. The one covered in Skie Silvershield's blood.~ [BD39377] #39377 */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @12 /* ~There's only one monster here—the one that stood on Boareskyr Bridge, a skull scorched into the stone around him. The one covered in Skie Silvershield's blood.~ [BD41068] #41068 */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 6.3 6.2
  SAY @13 /* ~You killed the daughter of a Grand Duke of Baldur's Gate. Gods help you—no one else will be able to.~ [BD39378] #39378 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut60b",TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 7.0
  SAY @14 /* ~May the gods help you. No one else will.~ [BD39379] #39379 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut60b",TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY @15 /* ~Damn it! How could you let this happen?~ [BD35905] #35905 */
  IF ~~ THEN REPLY @16 /* ~Save your disapproval for another time. We need to move on to Boareskyr Bridge.~ #35906 */ EXTERN ~BDCORWIN~ 17
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN REPLY @17 /* ~LET this happen? Well, forgive me, sir—if I had your gift for soothsaying, this tragedy might have been avoided, but alas, I am forced to deal with things as they occur, not before.~ #35907 */ EXTERN ~BDDYNAHJ~ 63
  IF ~  !IsValidForPartyDialogue("DYNAHEIR")
~ THEN REPLY @17 /* ~LET this happen? Well, forgive me, sir—if I had your gift for soothsaying, this tragedy might have been avoided, but alas, I am forced to deal with things as they occur, not before.~ #35907 */ EXTERN ~BDCORWIN~ 19
  IF ~~ THEN REPLY @18 /* ~Mind your tongue, Corporal, or you'll lose it—along with the rest of your head.~ #35909 */ EXTERN ~BDCORWIN~ 15
END

IF ~~ THEN BEGIN 12 // from:
  SAY @19 /* ~Are you sure of that, Captain? We let this "hero" go off on their own, and the next thing you know, we've lost our way across the Winding Water.~ [BD35911] #35911 */
  IF ~~ THEN EXTERN ~BDCORWIN~ 16
END

IF ~~ THEN BEGIN 13 // from:
  SAY @20 /* ~Are you sure of that, Captain? We let this "hero" go off on their own, and the next thing you know, we've lost our way across the Winding Water.~ [BD56399] #56399 */
  IF ~~ THEN EXTERN ~BDCORWIN~ 16
END

IF ~~ THEN BEGIN 14 // from:
  SAY @21 /* ~Yes, Captain.~ [BD35934] #35934 */
  IF ~~ THEN EXTERN ~BDCORWIN~ 20
END

IF ~  AreaCheck("bd1000")
!GlobalLT("bd_plot","global",170)
~ THEN BEGIN 15 // from:
  SAY @22 /* ~We heard an explosion. What's going on?~ [BD35936] #35936 */
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN REPLY @23 /* ~The crusade brought the bridge down.~ #36701 */ DO ~SetGlobal("bd_plot","global",175)
~ EXTERN ~BDCORWIJ~ 45
  IF ~  !IsValidForPartyDialogue("corwin")
~ THEN REPLY @23 /* ~The crusade brought the bridge down.~ #36701 */ DO ~SetGlobal("bd_plot","global",175)
~ GOTO 16
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN REPLY @24 /* ~Something exploded, that's what happened. We'll need to cross the Winding Water over Boareskyr Bridge.~ #43902 */ DO ~SetGlobal("bd_plot","global",175)
~ EXTERN ~BDCORWIJ~ 45
  IF ~  !IsValidForPartyDialogue("corwin")
~ THEN REPLY @24 /* ~Something exploded, that's what happened. We'll need to cross the Winding Water over Boareskyr Bridge.~ #43902 */ DO ~SetGlobal("bd_plot","global",175)
~ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @25 /* ~What?~ [BD35938] #35938 */
  IF ~~ THEN REPLY @26 /* ~We need to get to Bridgefort. If Caelar destroys Boareskyr Bridge too, we'll be of little use to our friends at Dragonspear Castle.~ #35939 */ GOTO 18
  IF ~~ THEN REPLY @27 /* ~Are you deaf, Corporal? ~ #35940 */ GOTO 17
  IF ~~ THEN REPLY @28 /* ~Strike camp. We leave for Bridgefort immediately.~ #35941 */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @29 /* ~If we don't cross here, we'll have to use Boareskyr Bridge.~ [BD35944] #35944 */
  IF ~~ THEN GOTO 18
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN EXTERN ~BDSAFANJ~ 41
END

IF ~~ THEN BEGIN 18 // from: 17.0 16.2 16.0 15.3
  SAY @30 /* ~It'll take us some time to break camp and scout the best way for the troops to take. Meet us at Bridgefort when you're ready. I'll mark the directions on your map if you don't know the way.~ [BD36703] #36703 */
  IF ~~ THEN DO ~AddJournalEntry(66861,QUEST_DONE)
AddJournalEntry(66862,QUEST)
ActionOverride("bdbence",EscapeAreaObject("ff_camp"))
~ EXIT
END

IF ~  GlobalLT("BD_plot","global",201)
AreaCheck("bd7100")
~ THEN BEGIN 19 // from:
  SAY @31 /* ~The word on the road is that Caelar's followers have taken Boareskyr Bridge and surrounded Bridgefort. We'll not cross the Winding Water until they're dealt with.~ [BD42301] #42301 */
  IF ~~ THEN DO ~SetGlobal("BD_plot","global",201)
SetGlobal("bd_sddskie","BD7100",1)
SetGlobal("bd_no_assist","locals",1)
SetGlobal("bd_no_combat","locals",1)
SetGlobal("bd_retreat","locals",1)
SaveLocation("LOCALS","bd_default_loc",[246.3478])
~ GOTO 20
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN DO ~SetGlobal("BD_plot","global",201)
SetGlobal("bd_sddskie","BD7100",1)
SetGlobal("bd_no_assist","locals",1)
SetGlobal("bd_no_combat","locals",1)
SetGlobal("bd_retreat","locals",1)
SaveLocation("LOCALS","bd_default_loc",[246.3478])
~ EXTERN ~BDCORWIJ~ 47
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @32 /* ~Trolls we can handle. It's the crusade that worries me. We should make contact with those in Bridgefort—if there are any left.~ [BD42303] #42303 */
  IF ~  Detect("corwin")
!InParty("corwin")
!Dead("corwin")
~ THEN REPLY @33 /* ~I'll scout to the north. Perhaps I can find a way to reach the fort's defenders.~ #42304 */ EXTERN ~BDCORWIN~ 21
  IF ~  OR(3)
!Detect("corwin")
InParty("corwin")
Dead("corwin")
~ THEN REPLY @33 /* ~I'll scout to the north. Perhaps I can find a way to reach the fort's defenders.~ #42304 */ GOTO 21
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN REPLY @34 /* ~I'd rather investigate the crusader camp and evaluate our enemy.~ #42305 */ EXTERN ~BDCORWIJ~ 48
  IF ~  !IsValidForPartyDialogue("CORWIN")
~ THEN REPLY @34 /* ~I'd rather investigate the crusader camp and evaluate our enemy.~ #42305 */ GOTO 21
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN REPLY @35 /* ~We should be pressing on instead of making camp.~ #42306 */ EXTERN ~BDCORWIJ~ 49
  IF ~  !IsValidForPartyDialogue("CORWIN")
~ THEN REPLY @35 /* ~We should be pressing on instead of making camp.~ #42306 */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 20.3 20.1
  SAY @36 /* ~Be prudent in your ranging. One of our scouts stumbled onto a troll cave to the northwest—she barely made it back alive.~ [BD42308] #42308 */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @37 /* ~You might do well to grab some fire arrows from Belegarm before you move too far from the camp.~ #66661 */
  IF ~~ THEN DO ~AddJournalEntry(59708,QUEST)
DialogueInterrupt(FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.5
  SAY @38 /* ~Baldur's Gate has enough martyrs. I'll not give it more sending exhausted soldiers against the enemy.~ [BD42312] #42312 */
  IF ~~ THEN DO ~AddJournalEntry(59708,QUEST)
DialogueInterrupt(FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY @39 /* ~They won't be doing it alone. Listen up, everyone! Grab your weapons and move out! THE BATTLE OF BRIDGEFORT HAS BEGUN!~ #36745 */
  IF ~~ THEN DO ~ActionOverride("cutspy",DestroySelf())
EscapeArea()
~ EXIT
END

IF ~  Global("bd_plot","global",293)
~ THEN BEGIN 25 // from:
  SAY @40 /* ~I'll give credit where it's due. You did well here today, <CHARNAME>. It was a bloody business that would have been bloodier still were it not for you.~ [BD42391] #42391 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",294)
~ EXTERN ~BDSKIE~ 33
END

IF ~~ THEN BEGIN 26 // from:
  SAY @41 /* ~If you could see your way clear to not encourage insubordination in the ranks, I'd appreciate it.~ [BD65100] #65100 */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 27 // from:
  SAY @42 /* ~Thank you, Captain.~ [BD65101] #65101 */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 28 // from:
  SAY @43 /* ~Thank you for that, <CHARNAME>. Perhaps now I'll get some peace.~ [BD65102] #65102 */
  IF ~~ THEN EXTERN ~BDSKIE~ 36
END

IF ~~ THEN BEGIN 29 // from:
  SAY @44 /* ~...No. I didn't say anything, recruit.~ [BD65104] #65104 */
  IF ~~ THEN GOTO 30
  IF ~  !Global("bd_bridgefort_saved","GLOBAL",1)
~ THEN GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0 27.0 26.0
  SAY @45 /* ~We've done well here, <CHARNAME>. Hopefully, our luck holds until we reach Dragonspear.~ [BD65105] #65105 */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY @46 /* ~I'm not happy with the way things played out at Bridgefort, <CHARNAME>. But what's done is done. We need to get back on the road to Dragonspear.~ [BD65106] #65106 */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0 30.0
  SAY @47 /* ~Lead the way across the bridge. The rest of us will follow.~ [BD65107] #65107 */
  IF ~~ THEN DO ~AddJournalEntry(65108,QUEST)
CreateCreature("bdffmerc",[1380.1925],NW)
OpenDoor("Bridge_Barrels")
ActionOverride("bdskie",EscapeAreaObject("Crusade_camp_exit"))
EscapeAreaObject("Crusade_camp_exit")
~ EXIT
END

IF ~  Global("bd_plot","global",310)
Global("bd_skie_plot","global",0)
IsValidForPartyDialogue("CORWIN")
AreaCheck("bd3000")
~ THEN BEGIN 33 // from:
  SAY @48 /* ~Captain Corwin! Thank the gods!~ [BD37575] #37575 */
  IF ~~ THEN DO ~SetGlobal("bd_skie_plot","global",1)
~ EXTERN ~BDCORWIJ~ 145
END

IF ~~ THEN BEGIN 34 // from:
  SAY @49 /* ~It's Skie Silvershield. She's left the camp.~ [BD37577] #37577 */
  IF ~~ THEN REPLY @50 /* ~Do you know where she went? ~ #37578 */ GOTO 35
  IF ~  IsValidForPartyDialogue("GLINT")
~ THEN REPLY @51 /* ~Well, of course she did. Why wouldn't she? The camp's the only safe, secure, place in the area. Why would she want that? Gods!~ #37579 */ EXTERN ~BDGLINTJ~ 90
  IF ~  !IsValidForPartyDialogue("GLINT")
~ THEN REPLY @51 /* ~Well, of course she did. Why wouldn't she? The camp's the only safe, secure, place in the area. Why would she want that? Gods!~ #37579 */ GOTO 35
  IF ~  IsValidForPartyDialogue("VOGHILN")
~ THEN REPLY @52 /* ~No great loss. ~ #37580 */ EXTERN ~BDVOGHIJ~ 26
  IF ~  !IsValidForPartyDialogue("VOGHILN")
~ THEN REPLY @52 /* ~No great loss. ~ #37580 */ EXTERN ~BDCORWIJ~ 146
END

IF ~~ THEN BEGIN 35 // from: 34.2 34.0
  SAY @53 /* ~She was last seen heading towards Dragonspear Castle. Alone.~ [BD37582] #37582 */
  IF ~~ THEN REPLY @54 /* ~Leave this to me. I'll find and return her before she stumbles into Caelar's grasp.~ #37583 */ GOTO 37
  IF ~~ THEN REPLY @55 /* ~And the guards just let her go? ~ #37584 */ EXTERN ~BDCORWIJ~ 147
  IF ~~ THEN REPLY @56 /* ~She walks right into the clutches of the crusade. Good. Let them endure her endless nattering. ~ #37585 */ EXTERN ~BDCORWIJ~ 148
END

IF ~~ THEN BEGIN 36 // from:
  SAY @57 /* ~That's what the guards tell me. Bring her back safely, <CHARNAME>—if the crusade takes his daughter, Entar Silvershield will have all our heads.~ [BD37593] #37593 */
  IF ~~ THEN DO ~AddJournalEntry(59783,QUEST)
EscapeAreaObject("crusaderbase")
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.0
  SAY @58 /* ~Bring her back safely, <CHARNAME>—if the crusade takes his daughter, Entar Silvershield will have all of our heads.~ [BD37594] #37594 */
  IF ~~ THEN DO ~AddJournalEntry(59783,QUEST)
EscapeAreaObject("crusaderbase")
~ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY @59 /* ~So the guards say. Bring her back safely, <CHARNAME>. Please.~ [BD37602] #37602 */
  IF ~~ THEN DO ~AddJournalEntry(59783,QUEST)
EscapeAreaObject("crusaderbase")
~ EXIT
END

IF ~  Global("bd_plot","global",310)
Global("bd_skie_plot","global",0)
!IsValidForPartyDialogue("CORWIN")
AreaCheck("bd3000")
~ THEN BEGIN 39 // from:
  SAY @60 /* ~<CHARNAME>, am I glad to see you. I know we've had our differences, but I need your help. Skie Silvershield's left the camp.~ [BD37610] #37610 */
  IF ~~ THEN REPLY @50 /* ~Do you know where she went? ~ #37611 */ DO ~SetGlobal("bd_skie_plot","global",1)
~ GOTO 41
  IF ~  IsValidForPartyDialogue("GLINT")
~ THEN REPLY @51 /* ~Well, of course she did. Why wouldn't she? The camp's the only safe, secure, place in the area. Why would she want that? Gods!~ #37612 */ DO ~SetGlobal("bd_skie_plot","global",1)
~ EXTERN ~BDGLINTJ~ 91
  IF ~  !IsValidForPartyDialogue("GLINT")
~ THEN REPLY @51 /* ~Well, of course she did. Why wouldn't she? The camp's the only safe, secure, place in the area. Why would she want that? Gods!~ #37612 */ DO ~SetGlobal("bd_skie_plot","global",1)
~ GOTO 41
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN REPLY @52 /* ~No great loss. ~ #37613 */ DO ~SetGlobal("bd_skie_plot","global",1)
~ EXTERN ~BDRASAAJ~ 38
  IF ~  !IsValidForPartyDialogue("RASAAD")
~ THEN REPLY @52 /* ~No great loss. ~ #37613 */ DO ~SetGlobal("bd_skie_plot","global",1)
~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.4
  SAY @61 /* ~Do you want to be the one to tell Duke Silvershield that? Because I don't.~ [BD37614] #37614 */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0 39.2 39.0
  SAY @62 /* ~Perimeter guards said she headed in the direction of Dragonspear Castle.~ [BD37615] #37615 */
  IF ~~ THEN REPLY @54 /* ~Leave this to me. I'll find and return her before she stumbles into Caelar's grasp.~ #37616 */ GOTO 43
  IF ~~ THEN REPLY @63 /* ~And they just let her go?~ #37617 */ GOTO 42
  IF ~~ THEN REPLY @56 /* ~She walks right into the clutches of the crusade. Good. Let them endure her endless nattering. ~ #37618 */ GOTO 44
END

IF ~~ THEN BEGIN 42 // from: 44.0 41.1
  SAY @64 /* ~As far as they know, she's just another Fist.~ [BD37622] #37622 */
  IF ~~ THEN REPLY @65 /* ~I'll get her back. She was heading towards Dragonspear, you say? ~ #37623 */ GOTO 45
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN REPLY @66 /* ~She knows of my presence here. If that information should fall into the crusade's hands... Very well. I'll retrieve the witless cow. ~ #37624 */ EXTERN ~BDKHALIJ~ 35
  IF ~  !IsValidForPartyDialogue("KHALID")
~ THEN REPLY @66 /* ~She knows of my presence here. If that information should fall into the crusade's hands... Very well. I'll retrieve the witless cow. ~ #37624 */ GOTO 46
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY @67 /* ~Bring her back safely, <CHARNAME>—if the crusade takes Skie, her father will have all our heads.~ [BD37625] #37625 */
  IF ~~ THEN DO ~AddJournalEntry(59783,QUEST)
EscapeAreaObject("crusaderbase")
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 41.2
  SAY @68 /* ~They're more likely to kill her on sight.~ [BD37628] #37628 */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 45 // from: 42.0
  SAY @69 /* ~So the guards say. Bring her back safely, <CHARNAME>. And try not to attract attention. If word gets out about this—well, I'd rather word not get out about this. Now, go quickly.~ [BD37629] #37629 */
  IF ~~ THEN DO ~AddJournalEntry(59783,QUEST)
EscapeAreaObject("crusaderbase")
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 42.2
  SAY @70 /* ~Try not to attract attention. If word gets out about this—well, I'd rather word not get out about this. Now go quickly.~ [BD37630] #37630 */
  IF ~~ THEN DO ~AddJournalEntry(59783,QUEST)
EscapeAreaObject("crusaderbase")
~ EXIT
END

IF ~  Global("bd_plot","global",312)
AreaCheck("bd3000")
~ THEN BEGIN 47 // from:
  SAY @71 /* ~<CHARNAME>. What in the hells are you doing here?~ [BD44130] #44130 */
  IF ~~ THEN REPLY @72 /* ~Where would you have me be, Corporal Duncan?~ #44131 */ DO ~SetGlobal("bd_plot","global",315)
~ GOTO 48
  IF ~~ THEN REPLY @73 /* ~I'll not be here long. I need some supplies before I begin searching for the caverns that supposedly got run beneath Dragonspear.~ #44132 */ DO ~SetGlobal("bd_plot","global",315)
~ GOTO 51
  IF ~~ THEN REPLY @74 /* ~Who in the hells are you to address me in such a manner?~ #44133 */ DO ~SetGlobal("bd_plot","global",315)
~ GOTO 52
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @75 /* ~I'd have you be doing what you were told to do where you were told to do it—beneath Dragonspear.~ [BD44134] #44134 */
  IF ~~ THEN REPLY @76 /* ~I require some supplies before I embark on my journey.~ #44135 */ GOTO 51
  IF ~~ THEN REPLY @77 /* ~Right, the caverns... Forgot about that. I'll go take care of them right now.~ #44136 */ GOTO 51
  IF ~~ THEN REPLY @78 /* ~De Lancie and the others have no authority over me. I do not jump and run at their beck and call.~ #44137 */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 52.2 48.2
  SAY @79 /* ~You're here because the dukes thought you would help the effort. If you can't be bothered, you might as well go back to the Gate.~ [BD44138] #44138 */
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY @80 /* ~"Hero," my ass...~ [BD44139] #44139 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 52.0 48.1 48.0 47.1
  SAY @81 /* ~Well, be quick about it. The sooner this siege is over, the sooner I get back to Baldur's Gate and my family. And that can't happen soon enough.~ [BD44140] #44140 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 47.2
  SAY @82 /* ~Why aren't you in the caverns underneath Dragonspear? You know, where the commanders told you to go?~ [BD44141] #44141 */
  IF ~~ THEN REPLY @76 /* ~I require some supplies before I embark on my journey.~ #44142 */ GOTO 51
  IF ~~ THEN REPLY @83 /* ~Where they ASKED me to go, you mean? I plan to leave shortly.~ #44143 */ GOTO 53
  IF ~~ THEN REPLY @84 /* ~Nederlok and the others have no authority over me. I do not jump and run at their beck and call.~ #44144 */ GOTO 49
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY @85 /* ~See that you do. The sooner the siege ends, the sooner I see my family again. And that can't happen soon enough.~ [BD44145] #44145 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY @86 /* ~You're not in command to make assumptions on how we should proceed, <CHARNAME>. These are the peaceful negotiations, protected by the rules of wartime parley, and I suggest you do not compromise the situation.~ #70544 */
  IF ~~ THEN EXTERN ~BDCAELAR~ 39
END

IF ~  Global("bd_plot","global",395)
AreaCheck("bd3000")
~ THEN BEGIN 55 // from:
  SAY @87 /* ~The crusade attacks! The northern edge of the camp's aflame!~ [BD60308] #60308 */
  IF ~~ THEN REPLY @88 /* ~Where do you need me?~ #60309 */ GOTO 56
  IF ~~ THEN REPLY @89 /* ~I'm taking suggestions for my next move, if anyone has some.~ #60310 */ GOTO 56
  IF ~~ THEN REPLY @90 /* ~At last. To Dragonspear! Let us take the battle to the Shining Lady and finish this.~ #60311 */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.2 55.1 55.0
  SAY @91 /* ~Head south to the fire pit. The commanders gather there. Andrus can instruct you further.~ [BD60313] #60313 */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY @92 /* ~<CHARNAME>. I know we've had our disagreements, but—luck to you.~ [BD60314] #60314 */
  IF ~~ THEN REPLY @93 /* ~And to you, Corporal Duncan.~ #60315 */ GOTO 59
  IF ~~ THEN REPLY @94 /* ~Thanks, but I'm still not going to hug you.~ #60316 */ GOTO 58
  IF ~~ THEN REPLY @95 /* ~Only fools and weaklings rely on luck. I am neither.~ #60317 */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY @96 /* ~Why do I bother...? Go, help Andrus, and if the gods be willing, I'll see you on the other side of this.~ [BD60318] #60318 */
  IF ~~ THEN DO ~AddJournalEntry(66744,QUEST)
CreateCreature("bdwtr52",[1555.40],S)
ActionOverride("bdwtr52",SetGlobal("bd_prebattle","locals",2))
DisplayStringHead("bdwtr52",@97)
ActionOverride("bdwtr52",EscapeAreaObject("Crusaderbase"))
EscapeAreaObject("ncp_exit")
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.2 57.0
  SAY @98 /* ~Find Andrus, fast as you can. And take care.~ [BD60319] #60319 */
  IF ~~ THEN DO ~AddJournalEntry(66744,QUEST)
CreateCreature("bdwtr52",[1555.40],S)
ActionOverride("bdwtr52",SetGlobal("bd_prebattle","locals",2))
DisplayStringHead("bdwtr52",@97)
ActionOverride("bdwtr52",EscapeAreaObject("Crusaderbase"))
EscapeAreaObject("ncp_exit")
~ EXIT
END

IF ~  AreaCheck("bd4000")
Global("bd_plot","global",440)
~ THEN BEGIN 60 // from:
  SAY @99 /* ~Nice work, hero. I'm starting to see why the Grand Dukes wanted you here.~ [BD44193] #44193 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY @100 /* ~Many soldiers gave their lives to stop you, Caelar. Their sacrifices are the ones that matter.~ [BD66599] #66599 */
  IF ~~ THEN EXTERN ~BDCAELAR~ 51
END

IF ~~ THEN BEGIN 62 // from:
  SAY @101 /* ~Gods help us all, they've opened the portal to the Nine Hells! Out, everyone! Get out and get the vault door locked NOW!~ [BD38478] #38478 */
  IF ~~ THEN EXTERN ~BDFFSOL1~ 0
END

IF ~~ THEN BEGIN 63 // from:
  SAY @102 /* ~Leave them. There's no time—we have to secure the vault immediately! Devils could flood this place any second!~ [BD38480] #38480 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("bdcut45b",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY @103 /* ~Is that all you've got for the savior of Dragonspear? You can do better than that! Three cheers for the hero of Baldur's Gate!~ [BD39367] #39367 */
  IF ~~ THEN DO ~PlaySound("AMBDWWON")
~ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY @104 /* ~I'll admit I had my doubts about you, <CHARNAME>, but you proved yourself more than worthy as an ally. I'm honored to have fought beside you.~ #65812 */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY @105 /* ~Now if you'll excuse me, I need to go check on Skie. With Caelar defeated, there will likely be some revelry, and she can be... overly celebratory, if you grasp my meaning.~ #65813 */
  IF ~~ THEN DO ~SoundActivate("SS_Soldier",TRUE)
EscapeArea()
~ EXIT
  IF ~  IsValidForPartyDialogue("mkhiin")
~ THEN EXTERN ~BDMKHIIJ~ 116
END

IF ~  Global("bd_plot","global",591)
!ReputationLT(Player1,10)
~ THEN BEGIN 67 // from:
  SAY @106 /* ~You know what I've got to do, <CHARNAME>.~ [BD44320] #44320 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",592)
~ GOTO 68
END

IF ~  Global("bd_plot","global",591)
ReputationLT(Player1,10)
~ THEN BEGIN 68 // from: 67.0
  SAY @107 /* ~In the name of the Council of Four, you are under arrest for the murder of Skie Silvershield. You will return to Baldur's Gate to be tried for your crime.~ [BD44321] #44321 */
  IF ~~ THEN REPLY @108 /* ~You and I have had our issues, Corporal Duncan, but you cannot believe I did this thing—can you?~ #44322 */ DO ~SetGlobal("bd_plot","global",592)
~ GOTO 70
  IF ~~ THEN REPLY @109 /* ~This isn't what it appears to be. I don't know what's going on, but I didn't do this. I couldn't have.~ #44323 */ DO ~SetGlobal("bd_plot","global",592)
~ GOTO 71
  IF ~~ THEN REPLY @110 /* ~I've slain hundreds—thousands!—of people on the dukes' behalf. They never had a problem with it before.~ #44324 */ DO ~SetGlobal("bd_plot","global",592)
~ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.2
  SAY @111 /* ~You never slew one of their children before!~ [BD44325] #44325 */
  IF ~~ THEN REPLY @112 /* ~I didn't kill Skie—I COULDN'T have...~ #44326 */ GOTO 71
  IF ~~ THEN REPLY @113 /* ~And I haven't started slaying them now! Stop for a moment and think, Duncan—what possible reason could I have for committing such a crime?~ #44327 */ GOTO 70
  IF ~~ THEN REPLY @114 /* ~And so the Council's hypocrisy is exposed.~ #44328 */ GOTO 72
END

IF ~~ THEN BEGIN 70 // from: 69.1 68.0
  SAY @115 /* ~What would you have me believe, <CHARNAME>? An innocent girl lies dead at your feet; your hands are red with her blood? I will do what I must.~ [BD61429] #61429 */
  IF ~~ THEN DO ~StartCutSceneMode()
AddJournalEntry(59855,INFO)
AddJournalEntry(59856,QUEST_DONE)
StartCutSceneEx("bdcut61",TRUE)
~ EXIT
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN EXTERN ~BDCORWIJ~ 203
END

IF ~~ THEN BEGIN 71 // from: 69.0 68.1
  SAY @116 /* ~I wish I could believe that.~ [BD44329] #44329 */
  IF ~~ THEN DO ~StartCutSceneMode()
AddJournalEntry(59855,INFO)
AddJournalEntry(59856,QUEST_DONE)
StartCutSceneEx("bdcut61",TRUE)
~ EXIT
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN EXTERN ~BDCORWIJ~ 203
END

IF ~~ THEN BEGIN 72 // from: 69.2
  SAY @117 /* ~The Grand Dukes do what they can to better the lives of their people, but they are human still. There's no hypocrisy in wanting retribution for the death of one's child.~ [BD44331] #44331 */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY @118 /* ~Come along, <CHARNAME>.~ [BD44332] #44332 */
  IF ~~ THEN DO ~StartCutSceneMode()
AddJournalEntry(59855,INFO)
AddJournalEntry(59856,QUEST_DONE)
StartCutSceneEx("bdcut61",TRUE)
~ EXIT
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN EXTERN ~BDCORWIJ~ 203
END

IF ~  AreaCheck("bd0104")
Global("chapter","global",13)
GlobalLT("bd_plot","global",605)
~ THEN BEGIN 74 // from:
  SAY @119 /* ~This is it, "hero." Journey's end, or near enough, at any rate. Silvershield won't rest till you breathe your last.~ [BD39476] #39476 */
  IF ~~ THEN REPLY @120 /* ~You can't believe I did this, Duncan. I DIDN'T kill Skie.~ #39477 */ DO ~SetGlobal("bd_plot","global",605)
~ GOTO 75
  IF ~~ THEN REPLY @121 /* ~You think this is the end? Well, perhaps you're right. It'd be a relief if it were.~ #39478 */ DO ~SetGlobal("bd_plot","global",605)
~ GOTO 82
  IF ~~ THEN REPLY @122 /* ~Then he'd best get used to being tired.~ #39479 */ DO ~SetGlobal("bd_plot","global",605)
~ GOTO 78
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY @123 /* ~Tell it to the magistrate, <CHARNAME>. I was there. I SAW you covered in her blood.~ [BD39480] #39480 */
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 77.0
  SAY @124 /* ~Clerics have been trying to revive Skie from the moment we found her body, but her soul is gone, destroyed by some foul magic. Bhaal's stink lingers over the whole thing. YOUR stink.~ [BD39484] #39484 */
  IF ~  OR(2)
Alignment(Player1,MASK_LCNEUTRAL)
Alignment(Player1,MASK_GOOD)
~ THEN REPLY @125 /* ~I regret her loss more than you can imagine.~ #39485 */ GOTO 79
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN REPLY @125 /* ~I regret her loss more than you can imagine.~ #39485 */ GOTO 83
  IF ~  OR(2)
Alignment(Player1,MASK_LCNEUTRAL)
Alignment(Player1,MASK_GOOD)
~ THEN REPLY @126 /* ~You do me a disservice, Duncan. After everything I sacrificed in the name of this city, how could you believe me capable of this heinous crime?~ #39486 */ GOTO 79
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN REPLY @126 /* ~You do me a disservice, Duncan. After everything I sacrificed in the name of this city, how could you believe me capable of this heinous crime?~ #39486 */ GOTO 81
  IF ~~ THEN REPLY @127 /* ~Believe what you will, dog. Your opinion means nothing.~ #39487 */ GOTO 78
END

IF ~~ THEN BEGIN 77 // from: 82.0 75.0
  SAY @128 /* ~I didn't love Skie Silvershield, and I'm not so foolish as to think she loved me. But I did like her. She deserved better than what she got from you.~ [BD65495] #65495 */
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 78 // from: 76.4 74.2
  SAY @129 /* ~That sort of bravado might have served the hero of Baldur's Gate well, <CHARNAME>. But we both know you are no hero. It will gain you nothing now.~ [BD65496] #65496 */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 79 // from: 76.2 76.0
  SAY @130 /* ~You had me fooled, <CHARNAME>. I'll admit it now, though it pains me to do so. Like so many here in Baldur's Gate, it seemed to me you truly were a hero, in thought, word, and deed.~ [BD65497] #65497 */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY @131 /* ~I should have known better. There are no heroes, not in this world. You've taught me a valuable lesson, one I'll not forget soon.~ [BD65498] #65498 */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 81 // from: 76.3
  SAY @132 /* ~You've only yourself to blame, fiend. I watched you closely, the weeks we traveled together. I saw you court darkness and sow the seeds of fear and despair in those around you. Now you will reap the harvest of your own iniquity.~ [BD65499] #65499 */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 82 // from: 74.1
  SAY @133 /* ~You don't get relief, <CHARNAME>. Not after what you did.~ [BD65500] #65500 */
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 83 // from: 76.1
  SAY @134 /* ~After everything you've done, you expect me to believe that? You must truly think me a fool.~ [BD65501] #65501 */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.0 81.0 80.0 78.0
  SAY @135 /* ~There was so much I thought I had to say to you. But all those words on the tip of my tongue, the lofty speech I rehearsed every spare second since we left Dragonspear—they're gone. So I'll just say this, then: I'll enjoy watching you die. And I'll not be alone in that.~ [BD39488] #39488 */
  IF ~~ THEN DO ~AddJournalEntry(59857,INFO)
ActionOverride("bdfistcc",EscapeAreaMove("bd0104",830,660,SE))
ActionOverride("bdfistce",EscapeAreaMove("bd0104",735,745,SE))
EscapeArea()
~ EXIT
END

IF ~  AreaCheck("bd6000")
Global("bd_no_corwin","bd6000",0)
GlobalLT("bd_plot","global",650)
~ THEN BEGIN 85 // from:
  SAY @136 /* ~Wrong turn, <CHARNAME>.~ [BD65151] #65151 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",650)
~ EXTERN ~BDSCHAE2~ 39
END

IF ~~ THEN BEGIN 86 // from:
  SAY @137 /* ~Innocence, HAH! We were THERE, <CHARNAME>. You can't lie to us.~ [BD65156] #65156 */
  IF ~~ THEN EXTERN ~BDSCHAE2~ 46
END

IF ~~ THEN BEGIN 87 // from:
  SAY @138 /* ~You've earned your fate. We were fools to bring the child of Bhaal amongst us. Skie Silvershield paid for it with her life. You will pay with yours.~ [BD65157] #65157 */
  IF ~~ THEN EXTERN ~BDSCHAE2~ 46
END

IF ~~ THEN BEGIN 88 // from:
  SAY @139 /* ~Captain, what are you doing...?~ [BD65164] #65164 */
  IF ~~ THEN EXTERN ~BDSCHAE2~ 57
END

IF ~~ THEN BEGIN 89 // from:
  SAY @140 /* ~No! Stop them—keep them from the tunnel's end!~ [BD65166] #65166 */
  IF ~~ THEN DO ~ChangeSpecifics("bdschae2",ALLIES)
ChangeEnemyAlly("bdschae2",GOODBUTBLUE)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from:
  SAY @141 /* ~You heard the captain. Take them!~ [BD65167] #65167 */
  IF ~~ THEN DO ~ActionOverride("bdschae2",Enemy())
ChangeSpecifics("bdschae2",CRUSADERS)
~ EXIT
END

IF ~~ THEN BEGIN 91 // from:
  SAY @142 /* ~No—no! It's not enough. She has to die! Die in the name of Skie Silvershield! Kill her!~ [BD39675] #39675 */
  IF ~~ THEN DO ~SetGlobal("bd_mdd1725_ot","bd6000",1)
~ EXTERN ~BDSCHAE2~ 61
END

IF ~~ THEN BEGIN 92 // from:
  SAY @143 /* ~No—no! It's not enough. He has to die! Die in the name of Skie Silvershield! Kill him!~ [BD37554] #37554 */
  IF ~~ THEN DO ~SetGlobal("bd_mdd1725_ot","bd6000",1)
~ EXTERN ~BDSCHAE2~ 61
END

IF ~  AreaCheck("bd6000")
Global("bd_no_corwin","bd6000",1)
GlobalLT("bd_plot","global",650)
~ THEN BEGIN 93 // from:
  SAY @144 /* ~It's over, <CHARNAME>. Come away from the edge of the falls. You'll find nothing but death beyond them.~ [BD39681] #39681 */
  IF ~~ THEN REPLY @145 /* ~You've got to let me go, Duncan. I know who murdered Skie now. I need to find him.~ #39682 */ DO ~SetGlobal("bd_plot","global",650)
~ GOTO 98
  IF ~~ THEN REPLY @146 /* ~Skie Silvershield is dead, much as I'd wish it otherwise. Are you really so eager to join her?~ #39683 */ DO ~SetGlobal("bd_plot","global",650)
~ GOTO 98
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY @147 /* ~And that is worse than what awaits me on this side of it?~ #39684 */ DO ~SetGlobal("bd_plot","global",650)
~ GOTO 94
  IF ~  !Gender(Player1,FEMALE)
~ THEN REPLY @147 /* ~And that is worse than what awaits me on this side of it?~ #39684 */ DO ~SetGlobal("bd_plot","global",650)
~ GOTO 95
END

IF ~~ THEN BEGIN 94 // from: 93.2
  SAY @148 /* ~No. But on this side, you die at MY hand. Cut her down! For Grand Duke Silvershield and the Flaming Fist!~ [BD39685] #39685 */
  IF ~~ THEN DO ~AddJournalEntry(59863,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 95 // from: 93.3
  SAY @149 /* ~No. But on this side, you die at MY hand. Cut him down! For Grand Duke Silvershield and the Flaming Fist!~ [BD70460] #70460 */
  IF ~~ THEN DO ~AddJournalEntry(59863,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 96 // from: 98.0
  SAY @150 /* ~As it pleases you, so long as you DO die. Take her! Death to the enemies of Baldur's Gate!~ [BD39687] #39687 */
  IF ~~ THEN DO ~AddJournalEntry(59863,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 98.1
  SAY @151 /* ~As it pleases you, so long as you DO die. Take him! Death to the enemies of Baldur's Gate!~ [BD70461] #70461 */
  IF ~~ THEN DO ~AddJournalEntry(59863,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 93.1 93.0
  SAY @152 /* ~This is about more than a girl now. Half the city wants you drawn and quartered; the other is ready to revolt on your behalf. Baldur's Gate survived Sarevok, the iron crisis, and Caelar's crusade... I'll not let it fall on your account.~ [BD39689] #39689 */
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY @153 /* ~I would die for this city—I nearly have more times than I care to count. But I won't die for a crime I didn't commit.~ #39690 */ GOTO 96
  IF ~  !Gender(Player1,FEMALE)
~ THEN REPLY @153 /* ~I would die for this city—I nearly have more times than I care to count. But I won't die for a crime I didn't commit.~ #39690 */ GOTO 97
  IF ~~ THEN REPLY @154 /* ~The city's bigger than any one <PRO_MANWOMAN>. It will survive this. So will I.~ #39691 */ GOTO 99
  IF ~  !Gender(Player1,FEMALE)
~ THEN REPLY @155 /* ~You'll not live long enough to see what happens either way, fool.~ #39692 */ GOTO 100
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY @155 /* ~You'll not live long enough to see what happens either way, fool.~ #39692 */ GOTO 101
END

IF ~~ THEN BEGIN 99 // from: 98.2
  SAY @156 /* ~You're half right.~ [BD39693] #39693 */
  IF ~~ THEN DO ~AddJournalEntry(59863,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 98.3
  SAY @157 /* ~We'll see about that soon enough! Cut him down! Let him feel the wrath of the Flaming Fist!~ [BD39696] #39696 */
  IF ~~ THEN DO ~AddJournalEntry(59863,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 101 // from: 98.4
  SAY @158 /* ~We'll see about that soon enough! Cut her down! Let her feel the wrath of the Flaming Fist!~ [BD70443] #70443 */
  IF ~~ THEN DO ~AddJournalEntry(59863,QUEST)
~ EXIT
END

IF ~  Global("bd_plot","global",480)
AreaCheck("bd4300")
~ THEN BEGIN 102 // from:
  SAY @159 /* ~It's nearly over, <CHARNAME>. Caelar retreated into this vault. There's no way out. Our mage reports a strange magical aura behind the door—we've got to be careful. Are you ready for the final battle?~ [BD38471] #38471 */
  IF ~  See("bdandrus")
!Dead("bdandrus")
~ THEN REPLY @160 /* ~What sort of magical aura?~ #65606 */ DO ~SetGlobal("bd_plot","global",485)
~ EXTERN ~BDANDRUS~ 0
  IF ~  OR(2)
!See("bdandrus")
Dead("bdandrus")
See("bdffmage")
!Dead("bdffmage")
~ THEN REPLY @160 /* ~What sort of magical aura?~ #65606 */ DO ~SetGlobal("bd_plot","global",485)
~ EXTERN ~BDFFMAGE~ 0
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN REPLY @161 /* ~I'll be the one leading the battle, Corporal. Follow me. We're going in.~ #65607 */ DO ~SetGlobal("bd_plot","global",485)
~ EXTERN ~BDCORWIJ~ 180
  IF ~  !IsValidForPartyDialogue("corwin")
~ THEN REPLY @161 /* ~I'll be the one leading the battle, Corporal. Follow me. We're going in.~ #65607 */ DO ~SetGlobal("bd_plot","global",485)
~ GOTO 103
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN REPLY @162 /* ~It would be best if you took the lead on this. Head inside, Duncan, and I'll follow.~ #65608 */ DO ~SetGlobal("bd_plot","global",485)
~ EXTERN ~BDCORWIJ~ 180
  IF ~  !IsValidForPartyDialogue("corwin")
~ THEN REPLY @162 /* ~It would be best if you took the lead on this. Head inside, Duncan, and I'll follow.~ #65608 */ DO ~SetGlobal("bd_plot","global",485)
~ GOTO 103
  IF ~~ THEN REPLY @163 /* ~I need more time to prepare. I'll return when I'm ready.~ #65609 */ DO ~SetGlobal("bd_plot","global",485)
~ GOTO 104
END

IF ~~ THEN BEGIN 103 // from: 105.3 105.1 102.5 102.3
  SAY @164 /* ~Well said. Open the door, soldiers! The Shining Lady's crusade ends now!~ [BD65610] #65610 */
  IF ~~ THEN DO ~StartCutSceneMode()
ActionOverride("bdcutid2",DestroySelf())
CreateCreature("bdcutid2",[1.1],S)
StartCutSceneEx("bdcut45",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 104 // from: 105.4 102.6
  SAY @165 /* ~Hurry, <CHARNAME>. The longer she's able to prepare for us, the harder the battle will be.~ [BD65611] #65611 */
  IF ~~ THEN EXIT
  IF ~  Global("bd_mdd1290_journal","locals",0)
~ THEN DO ~SetGlobal("bd_mdd1290_journal","locals",1)
AddJournalEntry(65620,QUEST)
~ EXIT
END

IF ~  Global("bd_plot","global",485)
Global("bd_bence_attacked","locals",0)
~ THEN BEGIN 105 // from:
  SAY @166 /* ~What do you say then, <CHARNAME>? Are you ready for this final battle?~ [BD65614] #65614 */
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN REPLY @161 /* ~I'll be the one leading the battle, Corporal. Follow me. We're going in.~ #65615 */ EXTERN ~BDCORWIJ~ 180
  IF ~  !IsValidForPartyDialogue("corwin")
~ THEN REPLY @161 /* ~I'll be the one leading the battle, Corporal. Follow me. We're going in.~ #65615 */ GOTO 103
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN REPLY @167 /* ~Ready? No. But it needs to happen, regardless.~ #65616 */ EXTERN ~BDCORWIJ~ 180
  IF ~  !IsValidForPartyDialogue("corwin")
~ THEN REPLY @167 /* ~Ready? No. But it needs to happen, regardless.~ #65616 */ GOTO 103
  IF ~~ THEN REPLY @163 /* ~I need more time to prepare. I'll return when I'm ready.~ #65617 */ GOTO 104
END

IF ~  Global("bd_plot","global",485)
Global("bd_bence_attacked","locals",1)
~ THEN BEGIN 106 // from:
  SAY @168 /* ~You want to go in? Say the word. Soldiers! Follow the hero! The time to face Caelar has come.~ [BD65618] #65618 */
  IF ~~ THEN DO ~StartCutSceneMode()
ActionOverride("bdcutid2",DestroySelf())
CreateCreature("bdcutid2",[1.1],S)
StartCutSceneEx("bdcut45",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY @169 /* ~It's Corporal Duncan, Fist. Why aren't you doing drills with the rest of your squad?~ #69927 */
  IF ~~ THEN EXTERN ~BDSKIE~ 85
END

IF ~~ THEN BEGIN 108 // from:
  SAY @170 /* ~You have my thanks, <CHARNAME>. Come on, Goldbuckler. Let's get you back to the drills.~ #70052 */
  IF ~~ THEN DO ~ActionOverride("bdskie",EscapeAreaObject("ff_camp"))
EscapeAreaObject("ff_camp")
~ EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY @171 /* ~I'm handling this, <CHARNAME>. Be about your business, and stay out of mine.~ #69929 */
  IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 109.0
  SAY @172 /* ~Skie, listen to me, please. I know you don't like the drills, but they're important. When things get bad, the skills you could be learning now could save your life.~ #69930 */
  IF ~~ THEN DO ~SetGlobal("bd_sddskie","BD7100",6)
ActionOverride("bdskie",DialogueInterrupt(FALSE))
DialogueInterrupt(FALSE)
~ EXIT
END
