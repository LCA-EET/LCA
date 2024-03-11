// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDSCHAEL.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDSCHAEL.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAD144~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 183 even though they appear after this state */
~  OR(5)
AreaCheck("bd0010")
AreaCheck("bd0020")
AreaCheck("bd0030")
AreaCheck("bd0040")
AreaCheck("bd0050")
Global("BD_NOT_RESTED","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Nobody's getting any rest out here. If you want to sleep, we should head back to the palace or find an inn. I'm sure they'd clear out a room for the hero of Baldur's Gate.~ #67286 */
  IF ~~ THEN DO ~SetGlobal("BD_NOT_RESTED","GLOBAL",2)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 183 even though they appear after this state */
~  GlobalLT("bd_001_plot","bd0103",4)
OR(3)
!Dead("bdgass1")
!Dead("bdgass2")
!Dead("bdgass3")
AreaCheck("bd0103")
~ THEN BEGIN 1 // from:
  SAY @2 /* ~<CHARNAME>, are you here? The palace is under attack, and— Oh, hells.~ [BD64595] #64595 */
  IF ~~ THEN EXTERN ~BDFKSER1~ 4
END

IF WEIGHT #3 /* Triggers after states #: 183 even though they appear after this state */
~  Global("bd_001_plot","bd0103",6)
Dead("bdgass1")
Dead("bdgass2")
Dead("bdgass3")
AreaCheck("bd0103")
~ THEN BEGIN 2 // from:
  SAY @3 /* ~You all right?~ [BD64597] #64597 */
  IF ~~ THEN REPLY @4 /* ~I'll live. But my friend Imoen requires aid.~ #64598 */ GOTO 6
  IF ~~ THEN REPLY @5 /* ~Who are you?~ #64599 */ GOTO 4
  IF ~~ THEN REPLY @6 /* ~Worry about that later. We've got to move, there may be more assassins about.~ #64600 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY @7 /* ~Are there any more up here?~ [BD64601] #64601 */
  IF ~~ THEN REPLY @8 /* ~Not that I know of.~ #64602 */ GOTO 4
  IF ~~ THEN REPLY @9 /* ~I don't care—My friend needs help!~ #64603 */ GOTO 6
  IF ~~ THEN REPLY @10 /* ~All lie dead at my hand.~ #64604 */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 6.0 3.0 2.1
  SAY @11 /* ~Forgive me—I'm Schael Corwin, captain, Flaming Fist. Enemy forces penetrated the palace—I tried to reach you before they did, but... well.~ [BD64605] #64605 */
  IF ~~ THEN REPLY @12 /* ~You did what you could, and I thank you for it. Is everyone else safe?~ #64606 */ GOTO 10
  IF ~~ THEN REPLY @13 /* ~My friend is hurt.~ #66702 */ GOTO 8
  IF ~~ THEN REPLY @14 /* ~I'd probably like to hear this story if my best friend wasn't dying.~ #64607 */ GOTO 8
  IF ~~ THEN REPLY @15 /* ~The Flaming Fist tradition of woeful incompetence is in good hands, I see.~ #64608 */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY @16 /* ~Looks like your friend's ready to join them.~ [BD64609] #64609 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 3.1 2.0
  SAY @17 /* ~A healer should be here soon.~ #64610 */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY @18 /* ~At least three Fists fell defending the palace this night—defending you. If you can't admire our skill, at least respect their sacrifice. Duke Eltan is assembling the Council in the main hall. You may wish to join them once your friend's been taken care of.~ [BD64611] #64611 */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
SetGlobal("bd_001_plot","bd0103",7)
AddJournalEntry(64565,QUEST)
CreateVisualEffect("spdimndr",[739.469])
SmallWait(4)
CreateVisualEffect("spdimndr",[916.479])
SmallWait(4)
CreateVisualEffect("spdimndr",[623.522])
Face(N)
Wait(3)
CreateCreature("bdliia",[739.469],S)
ActionOverride("bdliia",DialogueInterrupt(FALSE))
SmallWait(4)
CreateCreature("bdfistcc",[916.479],S)
ActionOverride("bdfistcc",SetDialogue("bdfist01"))
SmallWait(4)
CreateCreature("bdfistcd",[623.522],S)
ActionOverride("bdfistcd",SetDialogue("bdfist05"))
SmallWait(6)
ActionOverride("bdfistcd",MoveToPoint([520.544]))
ActionOverride("bdfistcc",MoveToPoint([903.629]))
Wait(1)
ActionOverride("bdfistcd",Face(SE))
Wait(1)
ActionOverride("bdfistcc",Face(NW))
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 4.1
  SAY @19 /* ~Fenster—the palace cleric—is working his way up, assisting the wounded as he goes. Your friend doesn't look TOO bad...~ [BD64612] #64612 */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @20 /* ~...No, best not to risk it. I'll find Fenster and get him up here.~ [BD64613] #64613 */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
SetGlobal("bd_001_plot","bd0103",7)
AddJournalEntry(64565,QUEST)
CreateVisualEffect("spdimndr",[739.469])
SmallWait(4)
CreateVisualEffect("spdimndr",[916.479])
SmallWait(4)
CreateVisualEffect("spdimndr",[623.522])
Face(N)
Wait(3)
CreateCreature("bdliia",[739.469],S)
ActionOverride("bdliia",DialogueInterrupt(FALSE))
SmallWait(4)
CreateCreature("bdfistcc",[916.479],S)
ActionOverride("bdfistcc",SetDialogue("bdfist01"))
SmallWait(4)
CreateCreature("bdfistcd",[623.522],S)
ActionOverride("bdfistcd",SetDialogue("bdfist05"))
SmallWait(6)
ActionOverride("bdfistcd",MoveToPoint([520.544]))
ActionOverride("bdfistcc",MoveToPoint([903.629]))
Wait(1)
ActionOverride("bdfistcd",Face(SE))
Wait(1)
ActionOverride("bdfistcc",Face(NW))
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.0
  SAY @21 /* ~I wish I knew. Duke Eltan has people trying to assemble the Council of Four in the main hall. You may want to join them once your friend's been taken care of.~ [BD64614] #64614 */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
SetGlobal("bd_001_plot","bd0103",7)
AddJournalEntry(64565,QUEST)
CreateVisualEffect("spdimndr",[739.469])
SmallWait(4)
CreateVisualEffect("spdimndr",[916.479])
SmallWait(4)
CreateVisualEffect("spdimndr",[623.522])
Face(N)
Wait(3)
CreateCreature("bdliia",[739.469],S)
ActionOverride("bdliia",DialogueInterrupt(FALSE))
SmallWait(4)
CreateCreature("bdfistcc",[916.479],S)
ActionOverride("bdfistcc",SetDialogue("bdfist01"))
SmallWait(4)
CreateCreature("bdfistcd",[623.522],S)
ActionOverride("bdfistcd",SetDialogue("bdfist05"))
SmallWait(6)
ActionOverride("bdfistcd",MoveToPoint([520.544]))
ActionOverride("bdfistcc",MoveToPoint([903.629]))
Wait(1)
ActionOverride("bdfistcd",Face(SE))
Wait(1)
ActionOverride("bdfistcc",Face(NW))
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY @22 /* ~Keep a civil tongue, <CHARNAME>. You speak to a member of the Council of Four.~ [BD64625] #64625 */
  IF ~~ THEN EXTERN ~XAD103~ 3
END

IF ~~ THEN BEGIN 12 // from:
  SAY @23 /* ~Of course, milady. I'll give you a moment to recover yourself, <CHARNAME>, and await you on the second floor.~ [BD64628] #64628 */
  IF ~~ THEN DO ~AddJournalEntry(64632,QUEST)
EscapeAreaObject("TranBD0100b")
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0100")
Dead("Assassin1")
Dead("Assassin2")
Dead("Assassin3")
~ THEN BEGIN 13 // from:
  SAY @24 /* ~Is that all of them?~ [BD64646] #64646 */
  IF ~~ THEN REPLY @25 /* ~I believe so.~ #64647 */ GOTO 14
  IF ~~ THEN REPLY @26 /* ~It doesn't matter. If there are more, they too will fall.~ #64648 */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.0
  SAY @27 /* ~The Council will want to know you're all right—we should get downstairs. Let's go.~ [BD64649] #64649 */
  IF ~~ THEN DO ~SetGlobal("bd_mdd001_corwin","GLOBAL",1)
EscapeAreaObject("TranBD0102b")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY @28 /* ~We need a healer—get Fenster in here!~ #34124 */
  IF ~~ THEN EXTERN ~BDSERV~ 1
END

IF ~~ THEN BEGIN 16 // from:
  SAY @29 /* ~Get Fenster in here!~ #59539 */
  IF ~~ THEN EXTERN ~BDSERV~ 1
END

IF WEIGHT #5 /* Triggers after states #: 183 even though they appear after this state */
~  Global("bd_plot_003","bd0102",0)
~ THEN BEGIN 17 // from:
  SAY @30 /* ~Thanks for the help upstairs.~ [BD64650] #64650 */
  IF ~~ THEN REPLY @31 /* ~You and the guards had things in hand; I didn't want to get in the way.~ #64651 */ DO ~SetGlobal("bd_plot_003","bd0102",1)
~ GOTO 18
  IF ~~ THEN REPLY @32 /* ~Consider it thanks in return for allowing assassins to breach our walls, wound my friend, and nearly kill me.~ #66715 */ DO ~SetGlobal("bd_plot_003","bd0102",1)
~ GOTO 19
  IF ~~ THEN REPLY @33 /* ~You serve the Flaming Fist, do you not? You can handle yourself—the fact you still stand is proof of it.~ #64652 */ DO ~SetGlobal("bd_plot_003","bd0102",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @34 /* ~Don't be surprised to find an arrow in your back next time you pull something like that.~ #64653 */
  IF ~~ THEN EXTERN ~XAD101~ 0
END

IF ~~ THEN BEGIN 19 // from: 17.2 17.1
  SAY @35 /* ~They call you the hero of Baldur's Gate. Try to act the part.~ #64654 */
  IF ~~ THEN EXTERN ~XAD101~ 0
END

IF ~~ THEN BEGIN 20 // from:
  SAY @36 /* ~A couple of them, if you'd like. I'll be at the main doors when you're ready to go.~ [BD64742] #64742 */
  IF ~~ THEN EXTERN ~XAD100~ 41
END

IF ~~ THEN BEGIN 21 // from:
  SAY @37 /* ~I'll do what I can to keep further assassination attempts to a minimum. When you're ready to go, let me know. I'll be at the main doors.~ [BD64743] #64743 */
  IF ~~ THEN EXTERN ~XAD100~ 41
END

IF ~~ THEN BEGIN 22 // from:
  SAY @38 /* ~Spoken like someone who barely knows me, but I'll take what compliments I can get and do what I can not to change your mind.~ [BD34332] #34332 */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @39 /* ~When you're ready to leave, <CHARNAME>, go to the palace's main doors. I'll await you there.~ [BD66717] #66717 */
  IF ~~ THEN EXTERN ~XAD100~ 41
END

IF WEIGHT #6 /* Triggers after states #: 183 even though they appear after this state */
~  False()
Global("bd_plot_003","bd0102",1)
~ THEN BEGIN 24 // from:
  SAY @40 /* ~Baldur's Gate awaits, <CHARNAME>.~ #37303 */
  IF ~~ THEN REPLY @41 /* ~I need a little time to prepare. Could you wait for me by the main door?~ #37305 */ GOTO 26
  IF ~  Global("BD_MET_OPHYLLIS","GLOBAL",0)
~ THEN REPLY @42 /* ~Let me fetch my gold, then we can leave.~ #57860 */ GOTO 27
  IF ~~ THEN REPLY @43 /* ~Then let us depart, it wouldn't be polite to keep the city waiting.~ #40869 */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.2
  SAY @44 /* ~Let's go, then. I know these streets well and I'll help you through whatever crowds we can't avoid. I'll follow you out.~ #40870 */
  IF ~~ THEN DO ~SetGlobal("bd_plot_003","bd0102",2)
MoveToPoint([400.655])
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.0
  SAY @45 /* ~Very well, I'll follow you out. Be quick, though. Time is in short supply.~ #37315 */
  IF ~~ THEN DO ~SetGlobal("bd_plot_003","bd0102",2)
MoveToPoint([400.655])
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY @46 /* ~The bursar Ophyllis has been holding it for you. You'll find him in the basement, more than likely in the vault.~ #57861 */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @47 /* ~I'll follow you out. Let's be quick; time is more precious than gold.~ #57862 */
  IF ~~ THEN DO ~SetGlobal("bd_plot_003","bd0102",2)
MoveToPoint([400.655])
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("bd0102")
Global("BD_LEFT_THE_PALACE","GLOBAL",0)
Global("bd_plot","global",52)
~ THEN BEGIN 29 // from:
  SAY @40 /* ~Baldur's Gate awaits, <CHARNAME>.~ #34340 */
  IF ~~ THEN REPLY @48 /* ~Apparently some former companions await me as well.~ #34341 */ DO ~SetGlobal("bd_spoken_to","bd0102",1)
~ GOTO 38
  IF ~  Global("BD_MET_OPHYLLIS","GLOBAL",0)
~ THEN REPLY @49 /* ~I'd like to get my gold before we leave.~ #58053 */ DO ~SetGlobal("bd_spoken_to","bd0102",1)
SetGlobal("bd_ophyllis_mentioned","locals",1)
~ GOTO 35
  IF ~~ THEN REPLY @50 /* ~And I am eager to walk her streets once more.~ #34342 */ DO ~SetGlobal("bd_spoken_to","bd0102",1)
~ GOTO 38
  IF ~~ THEN REPLY @51 /* ~It can keep waiting. I'm ready to head north immediately.~ #66830 */ DO ~SetGlobal("bd_spoken_to","bd0102",1)
~ GOTO 30
  IF ~  Global("bd_know_about_companions","locals",0)
~ THEN REPLY @52 /* ~Let's keep it waiting no longer.~ #34343 */ DO ~SetGlobal("bd_spoken_to","bd0102",1)
~ GOTO 38
  IF ~  Global("bd_know_about_companions","locals",1)
~ THEN REPLY @52 /* ~Let's keep it waiting no longer.~ #34343 */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 29.3
  SAY @53 /* ~Are you certain? You can recruit allies and procure equipment in the city. ~ #66831 */
  IF ~~ THEN REPLY @54 /* ~A good point. Tell me about the potential allies you've located.~ #66832 */ GOTO 38
  IF ~  Global("BD_MET_OPHYLLIS","GLOBAL",0)
~ THEN REPLY @55 /* ~Hmm... In that case, perhaps I'll fetch my gold and venture out into the city.~ #66833 */ DO ~SetGlobal("bd_ophyllis_mentioned","locals",1)
~ GOTO 35
  IF ~~ THEN REPLY @56 /* ~I'm positive. The sooner we leave, the better.~ #66834 */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.2
  SAY @57 /* ~Very well. We leave at first light, so get some rest upstairs. When you wake up, it will be time to leave.~ #66835 */
  IF ~~ THEN DO ~AddJournalEntry(66718,QUEST)
SetGlobal("BD_LEFT_THE_PALACE","GLOBAL",1)
SetGlobal("BD_plot","global",54)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 44.4 42.4 41.4 40.0 38.3 37.0 35.2 34.0
  SAY @58 /* ~Stay close. The streets are shoulder to shoulder with people. It's a cutpurse's dream out there—and an assassin's.~ #52662 */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 29.5
  SAY @59 /* ~Head out the door and I'll follow you. Let's go.~ #66725 */
  IF ~~ THEN DO ~AddJournalEntry(59624,INFO)
AddJournalEntry(59622,QUEST)
AddJournalEntry(66719,QUEST)
~ EXIT
  IF ~  Global("BD_MET_OPHYLLIS","GLOBAL",0)
Global("bd_ophyllis_mentioned","locals",1)
~ THEN DO ~AddJournalEntry(59624,INFO)
AddJournalEntry(59622,QUEST)
AddJournalEntry(66719,QUEST)
AddJournalEntry(59625,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 44.2 42.3 41.3 40.5 38.1 37.2 35.4
  SAY @60 /* ~You'll want to visit Sorcerous Sundries, then. I can get you there.~ #52918 */
  IF ~~ THEN REPLY @61 /* ~Let's be off, then.~ #66726 */ GOTO 32
  IF ~~ THEN REPLY @62 /* ~Tell me about the companions you located.~ #66727 */ GOTO 39
  IF ~  Global("BD_MET_OPHYLLIS","GLOBAL",0)
~ THEN REPLY @63 /* ~Where's my money? I collected a nice pile of gold on my adventures but I can't seem to find it.~ #66728 */ DO ~SetGlobal("bd_ophyllis_mentioned","locals",1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 44.3 42.2 41.2 40.4 38.2 34.2 30.1 29.1
  SAY @64 /* ~The ducal purser Ophyllis has been holding it for you. You'll find him in the basement, near the treasure room if not actually inside it. I'll be here when you return.~ #58054 */
  IF ~  Global("BD_MET_OPHYLLIS","GLOBAL",0)
~ THEN REPLY @65 /* ~Good. I'll be back after I speak with this Ophyllis.~ #69693 */ GOTO 36
  IF ~  Global("BD_MET_OPHYLLIS","GLOBAL",1)
~ THEN REPLY @66 /* ~I've already spoken to Ophyllis.~ #70116 */ GOTO 37
  IF ~~ THEN REPLY @67 /* ~Actually, forget the gold for now. Let's head out into the city.~ #66729 */ GOTO 32
  IF ~~ THEN REPLY @62 /* ~Tell me about the companions you located.~ #66730 */ GOTO 39
  IF ~~ THEN REPLY @68 /* ~I'll need to purchase some supplies.~ #66731 */ GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @69 /* ~As you wish.~ #69694 */
  IF ~~ THEN EXIT
  IF ~  Global("BD_MET_OPHYLLIS","GLOBAL",0)
Global("bd_ophyllis_mentioned","locals",1)
~ THEN DO ~AddJournalEntry(59625,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY @70 /* ~Then the matter's settled. What would you like to do now?~ #70117 */
  IF ~~ THEN REPLY @71 /* ~Let's go see the city.~ #70118 */ GOTO 32
  IF ~~ THEN REPLY @62 /* ~Tell me about the companions you located.~ #66730 */ GOTO 39
  IF ~~ THEN REPLY @68 /* ~I'll need to purchase some supplies.~ #66731 */ GOTO 34
END

IF ~~ THEN BEGIN 38 // from: 30.0 29.4 29.2 29.0
  SAY @72 /* ~The Flaming Fist tracked down a few of your known associates. Unfortunately, several were beyond our reach.~ #34345 */
  IF ~~ THEN REPLY @73 /* ~Which of my friends have you located?~ #58055 */ DO ~SetGlobal("bd_know_about_companions","locals",1)
~ GOTO 39
  IF ~~ THEN REPLY @74 /* ~We can discuss that later. Right now, I need supplies.~ #52919 */ DO ~SetGlobal("bd_know_about_companions","locals",1)
~ GOTO 34
  IF ~  Global("BD_MET_OPHYLLIS","GLOBAL",0)
~ THEN REPLY @75 /* ~What I'd really like to know is where all my gold went.~ #52666 */ DO ~SetGlobal("bd_ophyllis_mentioned","locals",1)
SetGlobal("bd_know_about_companions","locals",1)
~ GOTO 35
  IF ~~ THEN REPLY @76 /* ~I'm ready to leave now.~ #52664 */ DO ~SetGlobal("bd_know_about_companions","locals",1)
~ GOTO 32
END

IF ~~ THEN BEGIN 39 // from: 38.0 37.1 35.3 34.1
  SAY @77 /* ~There's a bard called Garrick and a pair of ne'er-do-wells named Safana and Coran. They're at the Elfsong Tavern. The witch Dynaheir and her bodyguard Minsc are staying at the Three Old Kegs...~ #40871 */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY @78 /* ~...A monk named Rasaad is currently working at the Iron Throne building—the Council made it a refuge for those fleeing Caelar. And we've got someone named Tiax locked up at the Flaming Fist headquarters.~ #40872 */
  IF ~~ THEN REPLY @79 /* ~Very well. I'm ready to leave.~ #58056 */ GOTO 32
  IF ~  OR(3)
Global("SOD_fromimport","global",1)
BeenInParty("khalid")
BeenInParty("jaheira")
~ THEN REPLY @80 /* ~Where are Khalid and Jaheira? Gorion wanted them to protect me.~ #34397 */ GOTO 41
  IF ~  OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("Neera")
~ THEN REPLY @81 /* ~You couldn't find Neera, the wild mage? She's hard to miss. Just look for the nearest burning... anything.~ #34398 */ GOTO 42
  IF ~  OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("Viconia")
~ THEN REPLY @82 /* ~You couldn't locate Viconia DeVir? I'm not surprised.~ #34399 */ GOTO 43
  IF ~  Global("BD_MET_OPHYLLIS","GLOBAL",0)
~ THEN REPLY @83 /* ~Where's all my money? I collected a nice bit of gold on my previous adventures.~ #66732 */ DO ~SetGlobal("bd_ophyllis_mentioned","locals",1)
~ GOTO 35
  IF ~~ THEN REPLY @68 /* ~I'll need to purchase some supplies.~ #66733 */ GOTO 34
END

IF ~~ THEN BEGIN 41 // from: 44.0 42.0 40.1
  SAY @84 /* ~Reports we've received put them up north, enjoying some time to themselves after the iron crisis.~ #34401 */
  IF ~  OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("Neera")
~ THEN REPLY @81 /* ~You couldn't find Neera, the wild mage? She's hard to miss. Just look for the nearest burning... anything.~ #58060 */ GOTO 42
  IF ~  OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("Viconia")
~ THEN REPLY @85 /* ~You couldn't locate Viconia DeVir? I guess that's no surprise.~ #58057 */ GOTO 43
  IF ~  Global("BD_MET_OPHYLLIS","GLOBAL",0)
~ THEN REPLY @83 /* ~Where's all my money? I collected a nice bit of gold on my previous adventures.~ #66734 */ DO ~SetGlobal("bd_ophyllis_mentioned","locals",1)
~ GOTO 35
  IF ~~ THEN REPLY @86 /* ~What I really need is supplies.~ #58058 */ GOTO 34
  IF ~~ THEN REPLY @76 /* ~I'm ready to leave now.~ #58059 */ GOTO 32
END

IF ~~ THEN BEGIN 42 // from: 44.1 41.0 40.2
  SAY @87 /* ~Hmm... We did receive some reports of unseasonal fires near Boareskyr Bridge... I can't recall hearing of anything similar recently.~ #34402 */
  IF ~  OR(3)
Global("SOD_fromimport","global",1)
BeenInParty("khalid")
BeenInParty("jaheira")
~ THEN REPLY @88 /* ~What of Khalid and Jaheira? They swore to protect me.~ #58061 */ GOTO 41
  IF ~  OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("Viconia")
~ THEN REPLY @82 /* ~You couldn't locate Viconia DeVir? I'm not surprised.~ #58062 */ GOTO 43
  IF ~  Global("BD_MET_OPHYLLIS","GLOBAL",0)
~ THEN REPLY @83 /* ~Where's all my money? I collected a nice bit of gold on my previous adventures.~ #66735 */ DO ~SetGlobal("bd_ophyllis_mentioned","locals",1)
~ GOTO 35
  IF ~~ THEN REPLY @86 /* ~What I really need is supplies.~ #58063 */ GOTO 34
  IF ~~ THEN REPLY @76 /* ~I'm ready to leave now.~ #58064 */ GOTO 32
END

IF ~~ THEN BEGIN 43 // from: 42.1 41.1 40.3
  SAY @89 /* ~We found the drow—and in the company of a duergar, no less. They've been hired on to the Dragonspear expedition. You'll see them in the morning, should you wish to speak to them.~ #66736 */
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY @90 /* ~Can't see why you would, though. I argued against their kind joining us, but these are desperate times.~ #34403 */
  IF ~  OR(3)
Global("SOD_fromimport","global",1)
BeenInParty("khalid")
BeenInParty("jaheira")
~ THEN REPLY @80 /* ~Where are Khalid and Jaheira? Gorion wanted them to protect me.~ #58065 */ GOTO 41
  IF ~  OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("Neera")
~ THEN REPLY @81 /* ~You couldn't find Neera, the wild mage? She's hard to miss. Just look for the nearest burning... anything.~ #58066 */ GOTO 42
  IF ~~ THEN REPLY @86 /* ~What I really need is supplies.~ #58067 */ GOTO 34
  IF ~  Global("BD_MET_OPHYLLIS","GLOBAL",0)
~ THEN REPLY @83 /* ~Where's all my money? I collected a nice bit of gold on my previous adventures.~ #66737 */ DO ~SetGlobal("bd_ophyllis_mentioned","locals",1)
~ GOTO 35
  IF ~~ THEN REPLY @76 /* ~I'm ready to leave now.~ #58068 */ GOTO 32
END

IF ~~ THEN BEGIN 45 // from:
  SAY @91 /* ~The city's awash in refugees, and the Fist is short-handed. We found who we could in the time we had. Come on, then, let's be about our business.~ #60725 */
  IF ~~ THEN DO ~AddJournalEntry(59624,INFO)
AddJournalEntry(59622,QUEST)
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 183 even though they appear after this state */
~  OR(4)
AreaCheck("bd0020")
AreaCheck("bd0030")
AreaCheck("bd0040")
AreaCheck("bd0050")
Global("bd_visited_three_areas","GLOBAL",3)
GlobalLT("bd_visited_three_npcs","GLOBAL",3)
~ THEN BEGIN 46 // from:
  SAY @92 /* ~I love this city as much as the next girl—probably more, really. But time is in short supply. We should think about returning to the Ducal Palace soon.~ [BD67277] #67277 */
  IF ~~ THEN REPLY @93 /* ~In due course. I've not been everywhere I want to go yet.~ #67278 */ GOTO 47
  IF ~~ THEN REPLY @94 /* ~As assassins attacked me in the Ducal Palace, I'm sure you can appreciate a certain reluctance on my part to return there.~ #67279 */ GOTO 49
  IF ~~ THEN REPLY @95 /* ~We'll return when I'm ready.~ #67280 */ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY @96 /* ~Who among us has? I'll escort you 'round the city as long as you want, but again, getting back to the palace is something we should do sooner than later. Let's go.~ #67281 */
  IF ~~ THEN DO ~SetGlobal("bd_visited_three_areas","GLOBAL",4)
AddJournalEntry(67285,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.2
  SAY @97 /* ~I never said we wouldn't—I just thought you might be ready now. If you're not, fine, but when you are, all I'm suggesting is that getting back to the palace is something best done sooner than later. Let's go.~ #67282 */
  IF ~~ THEN DO ~SetGlobal("bd_visited_three_areas","GLOBAL",4)
AddJournalEntry(67285,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.1
  SAY @98 /* ~I can understand that. But you need to understand that, regardless of what happened, you're still far safer there than you are exposed out here.~ #67283 */
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY @99 /* ~When you're satisfied you've done everything you're able to prepare for our journey, the Ducal Palace is where we want to be.~ #67284 */
  IF ~~ THEN DO ~SetGlobal("bd_visited_three_areas","GLOBAL",4)
AddJournalEntry(67285,QUEST)
~ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 183 even though they appear after this state */
~  Global("bd_visited_three_npcs","global",3)
OR(4)
AreaCheck("BD0020")
AreaCheck("BD0030")
AreaCheck("BD0040")
AreaCheck("BD0050")
~ THEN BEGIN 51 // from:
  SAY @100 /* ~You've a fair number of friends, <CHARNAME>, but we should head back to the Ducal Palace. You need to get some rest before we head out in the morning.~ [BD62638] #62638 */
  IF ~~ THEN REPLY @101 /* ~I'm not done in the city yet. I want to finish up a few things first.~ #62639 */ GOTO 52
  IF ~  Race(Player1,ELF)
~ THEN REPLY @102 /* ~I don't need rest in the same way other races do. All I require is a few hours of meditation.~ #62640 */ GOTO 52
  IF ~~ THEN REPLY @103 /* ~Good idea. I'll be returning to the palace shortly.~ #62641 */ GOTO 53
  IF ~~ THEN REPLY @104 /* ~Your suggestion is noted, Captain Corwin.~ #62642 */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.3 51.1 51.0
  SAY @105 /* ~As you like it. I'll stick with you until you decide to get back to the palace. ~ #62643 */
  IF ~~ THEN DO ~SetGlobal("bd_visited_three_npcs","global",4)
AddJournalEntry(69087,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.2
  SAY @106 /* ~I'll stay by you until we reach the palace, then.~ #62644 */
  IF ~~ THEN DO ~SetGlobal("bd_visited_three_npcs","global",4)
AddJournalEntry(69087,QUEST)
~ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0040")
NumTimesTalkedTo(0)
~ THEN BEGIN 54 // from:
  SAY @107 /* ~The Three Old Kegs isn't far from here. There's a pair of Rashemi travelers staying there. Duke Eltan thought you might speak with them.~ [BD64837] #64837 */
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0040")
Global("bd_minsc_followup","global",0)
~ THEN BEGIN 55 // from:
  SAY @108 /* ~Everything all right?~ #57277 */
  IF ~~ THEN REPLY @109 /* ~It's fine. Who am I supposed to be talking to here?~ #57278 */ GOTO 56
  IF ~  Global("BD_VISITED_BD0106","GLOBAL",0)
~ THEN REPLY @110 /* ~Aye, it will be when I get a drink inside me. Where is the Three Old Kegs?~ #57279 */ GOTO 57
  IF ~~ THEN REPLY @111 /* ~It would be better if you stopped trying to make small talk.~ #57280 */ GOTO 58
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY @112 /* ~The Grand Dukes thought you might want to talk with a ranger named Minsc or a magician named Dynaheir. They're in the Three Old Kegs.~ #57282 */
  IF ~~ THEN REPLY @113 /* ~And where is that?~ #57283 */ GOTO 57
  IF ~~ THEN REPLY @114 /* ~Who?~ #57284 */ GOTO 59
  IF ~~ THEN REPLY @115 /* ~I talk to whomever I wish, whenever and wherever I wish, Captain Corwin.~ #57285 */ GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0 55.1
  SAY @116 /* ~On the west side of the street, just beyond the barker. Stay close. If we get separated, it could take hours to find each other.~ #57286 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.2 55.2
  SAY @117 /* ~Fair enough. Keep your head down. If these people recognize you, we'll be mobbed. Assassins like mobs. ~ #57287 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from: 56.1
  SAY @118 /* ~A pair of Rashemi adventurers named Minsc and Dynaheir. They're staying at the Three Old Kegs, over on the west side of the street.~ #57288 */
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0040")
GlobalGT("bd_minsc_followup","global",1)
~ THEN BEGIN 60 // from:
  SAY @119 /* ~What would you like to do now? ~ #62138 */
  IF ~~ THEN REPLY @120 /* ~What I would like means little enough to Caelar, I fear. Let's keep moving. ~ #62139 */ GOTO 61
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @121 /* ~Tell me about these thieves at the Elfsong Tavern. ~ #62140 */ GOTO 62
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @122 /* ~There is a bard I was to speak with, isn't there? ~ #62141 */ GOTO 63
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @123 /* ~I was thinking of speaking to the cleric of Cyric locked up in the Flaming Fist's headquarters.~ #62142 */ GOTO 65
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @124 /* ~As I recall, Duke Eltan suggested I speak with someone at the Iron Throne building.~ #62143 */ GOTO 64
END

IF ~~ THEN BEGIN 61 // from: 65.0 64.0 63.1 63.0 62.0 60.0
  SAY @125 /* ~Good idea. Let's go. ~ #62144 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from: 65.1 64.1 63.3 60.1
  SAY @126 /* ~Coran and Safana. Not the kind of people I want joining us in this venture, but Duke Eltan seems to disagree. ~ #62145 */
  IF ~~ THEN REPLY @127 /* ~All right. Let's be on our way. ~ #62146 */ GOTO 61
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @128 /* ~What do you make of this man at the Iron Throne building? Is he worth speaking to? ~ #62147 */ GOTO 64
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @129 /* ~What do you think about the bard he suggested I contact? ~ #62148 */ GOTO 63
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @130 /* ~Tell me about the cleric held at the Flaming Fist headquarters. ~ #62149 */ GOTO 65
END

IF ~~ THEN BEGIN 63 // from: 65.3 64.2 62.2 60.2
  SAY @131 /* ~Garrick. He's become a regular at the Elfsong Tavern, which is odd. It's not a venue that welcomes most singers. ~ #62150 */
  IF ~  CheckStatGT(Player1,11,WIS)
~ THEN REPLY @132 /* ~That's the tavern which only allows the ghost to sing, yes? Well, that's Garrick's concern, not mine. Let's be on our way. ~ #62151 */ GOTO 61
  IF ~  CheckStatLT(Player1,12,WIS)
~ THEN REPLY @133 /* ~That is odd. But we've other matters to attend to. Let's keep moving. ~ #62152 */ GOTO 61
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @134 /* ~I gather the Iron Throne building is more welcoming now than it once was. Who was I to speak with there? ~ #62153 */ GOTO 64
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @135 /* ~I believe you mentioned some thieves I might try to recruit? ~ #62154 */ GOTO 62
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @136 /* ~What can you tell me about the cleric held in the Flaming Fist's headquarters? ~ #62155 */ GOTO 65
END

IF ~~ THEN BEGIN 64 // from: 65.2 63.2 62.1 60.4
  SAY @137 /* ~Rasaad yn Bashir. A monk of the Sun Soul order's Selûnite sect—a force to be reckoned with, they say. ~ #62156 */
  IF ~~ THEN REPLY @138 /* ~Let us be on our way. ~ #62157 */ GOTO 61
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @139 /* ~Maybe. What can you tell me of the thieves staying at the Elfsong Tavern? ~ #62158 */ GOTO 62
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @140 /* ~That would explain why Duke Eltan suggested I speak with him. He also thought I might reach out to a bard, did he not? ~ #62159 */ GOTO 63
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @141 /* ~Tell me what you know of this cleric the Flaming Fist holds that Eltan thought I might wish to meet. ~ #62160 */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.3 63.4 62.3 60.3
  SAY @142 /* ~Tiax? The man's a maniac. You don't seriously want to speak with him, do you? ~ #62161 */
  IF ~~ THEN REPLY @143 /* ~I'll not reject potential assistance out of hand. Come, let's be about our business. ~ #62162 */ GOTO 61
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @144 /* ~What I want seems of little concern to Caelar Argent. What can you tell me of these thieves staying at the Elfsong Tavern? ~ #62163 */ GOTO 62
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @128 /* ~What do you make of this man at the Iron Throne building? Is he worth speaking to? ~ #62164 */ GOTO 64
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @145 /* ~I've not decided yet. Tell me about the bard Eltan thought I might want to recruit. ~ #62165 */ GOTO 63
END

IF WEIGHT #13 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0020")
NumTimesTalkedTo(0)
~ THEN BEGIN 66 // from:
  SAY @146 /* ~We aren't far from the Elfsong Tavern. A few people you might want to speak with—Safana, Coran, and the bard Garrick—have been seen there recently. Or if you'd like to get some supplies for the journey to Dragonspear, we can go to Sorcerous Sundries.~ [BD64838] #64838 */
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0020")
Global("BD_VISITED_BD0109","GLOBAL",0)
~ THEN BEGIN 67 // from:
  SAY @147 /* ~Bloody hells. Caelar will have marched on Waterdeep by the time we get through this crowd.~ #57295 */
  IF ~~ THEN REPLY @148 /* ~What are we doing here again?~ #57296 */ GOTO 68
  IF ~~ THEN REPLY @149 /* ~The Elfsong Tavern's near here, is it not? There was someone I was to talk to there, wasn't I?~ #57297 */ GOTO 70
  IF ~  Global("BD_VISITED_BD0121","GLOBAL",0)
~ THEN REPLY @150 /* ~Is Sorcerous Sundries far from here?~ #57298 */ GOTO 71
  IF ~~ THEN REPLY @151 /* ~Talking about it won't get us through it any faster, Captain.~ #57299 */ GOTO 72
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY @152 /* ~If you need gear, I should be able to get us into Sorcerous Sundries ahead of the rest of the line. You can also visit the Elfsong Tavern. Three adventurers who might prove useful are staying there.~ #57300 */
  IF ~~ THEN REPLY @153 /* ~Tell me of these adventurers.~ #57301 */ GOTO 70
  IF ~~ THEN REPLY @154 /* ~Usefulness is relative. What do we really know of these "adventurers"? Who are they?~ #57302 */ GOTO 70
  IF ~~ THEN REPLY @155 /* ~I can handle myself. I need no help.~ #57303 */ GOTO 69
  IF ~~ THEN REPLY @156 /* ~Might, but don't.~ #57304 */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.3 68.2
  SAY @157 /* ~It was just a suggestion. Nobody's going to make the hero of Baldur's Gate take help <PRO_HESHE> doesn't want. But whatever you're going to do here, do it quickly. The sooner we're finished, the happier I'll be.~ #57305 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 70 // from: 68.1 68.0 67.1
  SAY @158 /* ~The bard, Garrick, and the ne'er-do-wells Safana and Coran. Waste of time, if you ask me. I wouldn't trust a single one of them with half a rusted copper, much less my life. Let's go.~ #57306 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from: 73.1 67.2
  SAY @159 /* ~Not far. Look for a long line. At one end of it you'll find the entrance to Sundries, at the other a bunch of people who'll hate us for skipping the line. Let's go.~ #57307 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from: 67.3
  SAY @160 /* ~True enough. Stay close to me. These streets are dangerous at the best of times, and these aren't those.~ #57308 */
  IF ~~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0020")
Global("BD_VISITED_BD0109","GLOBAL",1)
~ THEN BEGIN 73 // from:
  SAY @161 /* ~Where would you go now? ~ #62166 */
  IF ~~ THEN REPLY @162 /* ~Less talking, more walking, Captain. We've much to do. ~ #62167 */ GOTO 74
  IF ~  Global("BD_VISITED_BD0121","GLOBAL",0)
~ THEN REPLY @150 /* ~Is Sorcerous Sundries far from here?~ #57298 */ GOTO 71
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @163 /* ~What do you know about this cleric being held at the Flaming Fist headquarters? ~ #62168 */ GOTO 75
  IF ~  Global("bd_minsc_followup","global",0)
~ THEN REPLY @164 /* ~Tell me again of the pair of Rashemi adventurers lodging at the Three Old Kegs. ~ #62169 */ GOTO 76
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @124 /* ~As I recall, Duke Eltan suggested I speak with someone at the Iron Throne building.~ #62170 */ GOTO 77
END

IF ~~ THEN BEGIN 74 // from: 77.0 75.0 73.0
  SAY @165 /* ~Lead on. I'm right behind you. ~ #62171 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 75 // from: 77.1 76.2 73.2
  SAY @166 /* ~Tiax? You can't really want to speak to that maniac. ~ #62172 */
  IF ~~ THEN REPLY @167 /* ~We shall see. Let's be about our business. ~ #62173 */ GOTO 74
  IF ~  Global("bd_minsc_followup","global",0)
~ THEN REPLY @168 /* ~Perhaps. What about these adventurers from Rashemen? ~ #62174 */ GOTO 76
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @128 /* ~What do you make of this man at the Iron Throne building? Is he worth speaking to? ~ #62175 */ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 77.2 75.1 73.3
  SAY @169 /* ~They're an odd couple, to be sure—a wychlaran named Dynaheir and her bodyguard, Minsc. She might be useful. Him? Word is he has a good heart but is... let's call it unpredictable. ~ #62176 */
  IF ~~ THEN REPLY @170 /* ~All right, let's be about our business. ~ #62177 */ GOTO 95
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @171 /* ~There was a man at the Iron Throne building Eltan recommended I speak with, yes? ~ #62178 */ GOTO 77
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @172 /* ~As unpredictable as the cleric held in the Flaming Fist headquarters? ~ #62179 */ GOTO 75
END

IF ~~ THEN BEGIN 77 // from: 76.1 75.2 73.4
  SAY @137 /* ~Rasaad yn Bashir. A monk of the Sun Soul order's Selûnite sect—a force to be reckoned with, they say. ~ #62180 */
  IF ~~ THEN REPLY @173 /* ~Let us waste no more time with words. We've much to do. ~ #62181 */ GOTO 74
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @174 /* ~And the cleric held at the Flaming Fist headquarters? Is he also a force to be reckoned with? ~ #62182 */ GOTO 75
  IF ~  Global("bd_minsc_followup","GLOBAL",0)
~ THEN REPLY @175 /* ~I see. Tell me about the Rashemi adventurers staying at the Three Old Kegs. ~ #62183 */ GOTO 76
END

IF WEIGHT #16 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0030")
NumTimesTalkedTo(0)
~ THEN BEGIN 78 // from:
  SAY @176 /* ~We're almost to Flaming Fist headquarters. There's a cleric being held there Duke Eltan thinks you might want to speak to. Though why anyone would want to talk to a madman like Tiax is beyond me.~ [BD64839] #64839 */
  IF ~~ THEN EXIT
END

IF WEIGHT #17 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0030")
Global("BD_VISITED_BD0104","GLOBAL",0)
~ THEN BEGIN 79 // from:
  SAY @177 /* ~Dung, desperation, and impotent rage. That's the smell of Flaming Fist justice.~ #57316 */
  IF ~~ THEN REPLY @178 /* ~Why have you brought me to the Flaming Fist's headquarters?~ #57317 */ GOTO 80
  IF ~~ THEN REPLY @179 /* ~The smell of Tiax. I can't say I'm looking forward to seeing him.~ #57318 */ GOTO 82
  IF ~~ THEN REPLY @180 /* ~It's the smell of something, that's for sure. What's our purpose here?~ #57319 */ GOTO 80
  IF ~~ THEN REPLY @181 /* ~Let's not tarry here. The Flaming Fist's headquarters offers nothing I desire.~ #57320 */ GOTO 84
END

IF ~~ THEN BEGIN 80 // from: 79.2 79.0
  SAY @182 /* ~What? I thought you wanted to talk with Tiax.~ #57321 */
  IF ~~ THEN REPLY @183 /* ~Remind me who that is.~ #57322 */ GOTO 85
  IF ~~ THEN REPLY @184 /* ~Oh yes. The mad cleric of Cyric. I forgot about him. I'd like to keep forgetting about him.~ #57323 */ GOTO 81
  IF ~~ THEN REPLY @185 /* ~Tiax? Never heard of him.~ #57324 */ GOTO 83
  IF ~~ THEN REPLY @186 /* ~I've had my fill of talking this <DAYNIGHTALL>. Let's be away from here.~ #57325 */ GOTO 84
END

IF ~~ THEN BEGIN 81 // from: 80.1
  SAY @187 /* ~You and everyone guarding the cells. He's made no friends in the Flaming Fist, I'll tell you that much. Let's go.~ #57326 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from: 79.1
  SAY @188 /* ~If the rumors are true, you'll smell him first. Let's get inside. There's worse folk in the jail than there are out here, but at least inside they're behind bars.~ #57327 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.2
  SAY @189 /* ~You'll be hearing plenty if you choose to talk to him.~ #57328 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from: 80.3 79.3
  SAY @190 /* ~As you wish. Lead on, I'll be right behind you.~ #57329 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from: 80.0
  SAY @191 /* ~I'd tell you, but it'd ruin the surprise.~ #57330 */
  IF ~~ THEN REPLY @192 /* ~I've had more than enough surprises in my life. Please, tell me again of this Tiax.~ #57331 */ GOTO 87
  IF ~~ THEN REPLY @193 /* ~The last surprise I had nearly killed my best friend. Tell me about Tiax.~ #57332 */ GOTO 87
  IF ~~ THEN REPLY @194 /* ~A surprise, you say? I like your style, Corwin.~ #57333 */ GOTO 86
  IF ~~ THEN REPLY @195 /* ~I don't have time for your frivolities, Captain. Tell me what you know of this Tiax.~ #57334 */ GOTO 87
END

IF ~~ THEN BEGIN 86 // from: 85.2
  SAY @196 /* ~You're a <PRO_MANWOMAN> of exquisite, if dubious, taste, <CHARNAME>. Let's go.~ #57335 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 87 // from: 85.3 85.1 85.0
  SAY @197 /* ~He's a cleric of Cyric, and he's mad as a hare in a pack of worgs. Beyond that, there isn't much TO tell—which doesn't stop the loon from telling it to everyone he can, at great length. The council's offering amnesty to criminals willing to fight Caelar Argent. They think this Tiax might be useful, even with his... quirks.~ #57336 */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY @198 /* ~Let's get inside. There's worse in the jail than out here, but at least in there they're behind bars.~ #57338 */
  IF ~~ THEN EXIT
END

IF WEIGHT #18 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0030")
Global("BD_VISITED_BD0104","GLOBAL",1)
~ THEN BEGIN 89 // from:
  SAY @199 /* ~Where would you have us go now? ~ #62185 */
  IF ~~ THEN REPLY @200 /* ~Forward, Captain Corwin. Ever forward. ~ #62186 */ GOTO 90
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @121 /* ~Tell me about these thieves at the Elfsong Tavern. ~ #62187 */ GOTO 91
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @122 /* ~There is a bard I was to speak with, isn't there? ~ #62188 */ GOTO 93
  IF ~  Global("bd_minsc_followup","GLOBAL",0)
~ THEN REPLY @201 /* ~What can you tell me of the Rashemi adventurers, the ones at the Three Old Kegs? ~ #62189 */ GOTO 92
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @124 /* ~As I recall, Duke Eltan suggested I speak with someone at the Iron Throne building.~ #62190 */ GOTO 94
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY @202 /* ~I suppose that's preferable to the alternative. Let's go. ~ #62191 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 91 // from: 94.1 92.3 89.1
  SAY @126 /* ~Coran and Safana. Not the kind of people I want joining us in this venture, but Duke Eltan seems to disagree. ~ #62192 */
  IF ~~ THEN REPLY @127 /* ~All right. Let's be on our way. ~ #62193 */ GOTO 95
  IF ~  Global("bd_minsc_followup","GLOBAL",0)
~ THEN REPLY @168 /* ~Perhaps. What about these adventurers from Rashemen? ~ #62194 */ GOTO 92
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @128 /* ~What do you make of this man at the Iron Throne building? Is he worth speaking to? ~ #62195 */ GOTO 94
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @129 /* ~What do you think about the bard he suggested I contact? ~ #62196 */ GOTO 93
END

IF ~~ THEN BEGIN 92 // from: 94.3 93.2 91.1 89.3
  SAY @203 /* ~A wychlaran named Dynaheir and her bodyguard, Minsc. She might be useful, but I have my doubts about him. Word is he's taken a few too many blows to the head and it's made him... let's call it unpredictable. ~ #62197 */
  IF ~~ THEN REPLY @170 /* ~All right, let's be about our business. ~ #62198 */ GOTO 95
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @204 /* ~You mentioned something about a bard, did you not? ~ #62199 */ GOTO 93
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @171 /* ~There was a man at the Iron Throne building Eltan recommended I speak with, yes? ~ #62200 */ GOTO 94
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @205 /* ~What can you tell me of the thieves at the Elfsong Tavern? ~ #62201 */ GOTO 91
END

IF ~~ THEN BEGIN 93 // from: 94.2 92.1 91.3 89.2
  SAY @131 /* ~Garrick. He's become a regular at the Elfsong Tavern, which is odd. It's not a venue that welcomes most singers. ~ #62202 */
  IF ~  CheckStatGT(Player1,11,WIS)
~ THEN REPLY @132 /* ~That's the tavern which only allows the ghost to sing, yes? Well, that's Garrick's concern, not mine. Let's be on our way. ~ #62203 */ GOTO 95
  IF ~  CheckStatLT(Player1,12,WIS)
~ THEN REPLY @206 /* ~That is odd. But we've other matters to attend to. Follow me. ~ #62204 */ GOTO 95
  IF ~  Global("bd_minsc_followup","GLOBAL",0)
~ THEN REPLY @207 /* ~Tell me about the Rashemi adventurers staying at the Three Old Kegs. ~ #62205 */ GOTO 92
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @135 /* ~I believe you mentioned some thieves I might try to recruit? ~ #62206 */ GOTO 107
END

IF ~~ THEN BEGIN 94 // from: 92.2 91.2 89.4
  SAY @208 /* ~Rasaad yn Bashir. A monk of the Sun Soul order's Selûnite sect—a force to be reckoned with, they say.~ #62207 */
  IF ~~ THEN REPLY @138 /* ~Let us be on our way. ~ #62157 */ GOTO 95
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @139 /* ~Maybe. What can you tell me of the thieves staying at the Elfsong Tavern? ~ #62158 */ GOTO 91
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @140 /* ~That would explain why Duke Eltan suggested I speak with him. He also thought I might reach out to a bard, did he not? ~ #62159 */ GOTO 93
  IF ~  Global("bd_minsc_followup","GLOBAL",0)
~ THEN REPLY @175 /* ~I see. Tell me about the Rashemi adventurers staying at the Three Old Kegs. ~ #62183 */ GOTO 92
END

IF ~~ THEN BEGIN 95 // from: 94.0 93.1 93.0 92.0 91.0 76.0
  SAY @209 /* ~I'd like nothing better. Let's go. ~ #62208 */
  IF ~~ THEN EXIT
END

IF WEIGHT #19 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0050")
NumTimesTalkedTo(0)
~ THEN BEGIN 96 // from:
  SAY @210 /* ~We should reach the Iron Throne building soon. Eltan wanted you to speak with a Selûnite monk helping out there, name of Rasaad yn Bashir.~ [BD64840] #64840 */
  IF ~~ THEN EXIT
END

IF WEIGHT #20 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0050")
~ THEN BEGIN 97 // from:
  SAY @211 /* ~Gods, look at all these people. This is bad, <CHARNAME>. Bad for the Fist, bad for the Council... bad for the city.~ #57345 */
  IF ~  Global("BD_VISITED_BD0111","GLOBAL",1)
~ THEN EXIT
  IF ~  Global("BD_VISITED_BD0111","GLOBAL",0)
~ THEN REPLY @212 /* ~Caelar Argent has much to answer for.~ #57346 */ GOTO 101
  IF ~  Global("BD_VISITED_BD0111","GLOBAL",0)
~ THEN REPLY @213 /* ~Have some faith, Corwin. The city's survived worse than this. Now why have you brought me back to the Iron Throne building, of all places?~ #57347 */ GOTO 103
  IF ~  Global("BD_VISITED_BD0111","GLOBAL",0)
~ THEN REPLY @214 /* ~Is that—is that the headquarters of the Iron Throne? Why have you brought me here? This place holds bad memories for me.~ #57348 */ GOTO 98
  IF ~  Global("BD_VISITED_BD0111","GLOBAL",0)
~ THEN REPLY @215 /* ~We are near the Iron Throne building, are we not? I've not been here since I faced Sarevok—and I've no wish to visit it now.~ #57349 */ GOTO 99
END

IF ~~ THEN BEGIN 98 // from: 97.3
  SAY @216 /* ~That's not the only thing it holds.~ #57350 */
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 99 // from: 106.2 104.2 101.2 97.4
  SAY @217 /* ~You're in charge, for the moment at least. If you wish to go elsewhere, that's where we'll go. ~ #57351 */
  IF ~~ THEN REPLY @218 /* ~Follow me. ~ #62209 */ GOTO 100
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @121 /* ~Tell me about these thieves at the Elfsong Tavern. ~ #62210 */ GOTO 107
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @219 /* ~You mentioned something about a bard at the Elfsong Tavern, didn't you? ~ #62211 */ GOTO 109
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @220 /* ~What can you tell me about this cleric being held in the Flaming Fist headquarters? ~ #62212 */ GOTO 110
  IF ~  Global("bd_minsc_followup","GLOBAL",0)
~ THEN REPLY @201 /* ~What can you tell me of the Rashemi adventurers, the ones at the Three Old Kegs? ~ #62213 */ GOTO 108
END

IF ~~ THEN BEGIN 100 // from: 110.0 109.1 109.0 108.0 107.0 99.0
  SAY @221 /* ~Lead the way. ~ #62214 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from: 97.1
  SAY @222 /* ~And she will, but it won't happen this <DAYNIGHTALL>. In the meantime, we've business in the Iron Throne building.~ #57352 */
  IF ~~ THEN REPLY @223 /* ~What business could I possibly have in Sarevok's former seat of power?~ #57353 */ GOTO 103
  IF ~~ THEN REPLY @224 /* ~The Iron Throne building? Sarevok's Iron Throne building?~ #57354 */ GOTO 102
  IF ~~ THEN REPLY @225 /* ~I've not been to the Iron Throne building since I faced Sarevok—and I've no wish to visit it now.~ #57355 */ GOTO 99
END

IF ~~ THEN BEGIN 102 // from: 101.1
  SAY @226 /* ~Once, but no longer. After you felled Sarevok, the Council of Four took possession of all the Throne's holdings, including its headquarters. Now, this monument to greed and avarice shelters those most in need. Poetic, no? Duke Jannath's idea, I think.~ #57356 */
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 103 // from: 101.0 98.0 97.2
  SAY @227 /* ~The Iron Throne crumbled after you felled Sarevok. The Council of Four took possession of its holdings, including this place. Now, this monument to greed and avarice shelters those most in need. Poetic, no? Duke Jannath's idea, I think.~ #57357 */
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 102.0
  SAY @228 /* ~Holy men and women of a number of faiths run the operations here day to day. Among them is a monk, Rasaad yn Bashir. He's the one you're to speak with.~ #57358 */
  IF ~~ THEN REPLY @229 /* ~Ah, yes, my friend Rasaad. It's been too long since I saw him last. Let's go.~ #57359 */ GOTO 105
  IF ~~ THEN REPLY @230 /* ~Rasaad yn Bashir? I've not heard of this man.~ #57360 */ GOTO 106
  IF ~~ THEN REPLY @231 /* ~Bashir? I've heard the monk's tedious pieties before. I've no desire to repeat the experience.~ #57361 */ GOTO 99
END

IF ~~ THEN BEGIN 105 // from: 106.3 106.1 106.0 104.0
  SAY @232 /* ~He should be within the building. Lead on.~ #57362 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from: 104.1
  SAY @233 /* ~He's a Calishite monk, a worshipper of Selûne whose martial skill is matched only by his compassion, or so I'm told. A good man to have at your side in a battle, a good mind to have access to when devising strategy.~ #57363 */
  IF ~~ THEN REPLY @234 /* ~If he's everything you say, he'll be a welcome addition to our caravan.~ #57364 */ GOTO 105
  IF ~~ THEN REPLY @235 /* ~Sounds good to me. Let's go.~ #57365 */ GOTO 105
  IF ~~ THEN REPLY @236 /* ~Wow. He sounds positively dreadful. Let's go somewhere he's not, shall we?~ #57366 */ GOTO 99
  IF ~~ THEN REPLY @237 /* ~I'll be the judge of that.~ #57367 */ GOTO 105
END

IF ~~ THEN BEGIN 107 // from: 110.1 109.3 108.3 99.1 93.3
  SAY @126 /* ~Coran and Safana. Not the kind of people I want joining us in this venture, but Duke Eltan seems to disagree. ~ #62215 */
  IF ~~ THEN REPLY @127 /* ~All right. Let's be on our way. ~ #62216 */ GOTO 100
  IF ~  Global("bd_minsc_followup","GLOBAL",0)
~ THEN REPLY @168 /* ~Perhaps. What about these adventurers from Rashemen? ~ #62217 */ GOTO 108
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @238 /* ~I understand he thought the same of a cleric in the Flaming Fist headquarters. ~ #62218 */ GOTO 110
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @129 /* ~What do you think about the bard he suggested I contact? ~ #62219 */ GOTO 109
END

IF ~~ THEN BEGIN 108 // from: 110.3 109.2 107.1 99.4
  SAY @203 /* ~A wychlaran named Dynaheir and her bodyguard, Minsc. She might be useful, but I have my doubts about him. Word is he's taken a few too many blows to the head and it's made him... let's call it unpredictable. ~ #62220 */
  IF ~~ THEN REPLY @170 /* ~All right, let's be about our business. ~ #62221 */ GOTO 100
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @204 /* ~You mentioned something about a bard, did you not? ~ #62222 */ GOTO 109
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @239 /* ~As unpredictable as the cleric held at the Flaming Fist's headquarters? ~ #62223 */ GOTO 110
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @205 /* ~What can you tell me of the thieves at the Elfsong Tavern? ~ #62224 */ GOTO 107
END

IF ~~ THEN BEGIN 109 // from: 110.2 108.1 107.3 99.2
  SAY @131 /* ~Garrick. He's become a regular at the Elfsong Tavern, which is odd. It's not a venue that welcomes most singers. ~ #62225 */
  IF ~  CheckStatGT(Player1,11,WIS)
~ THEN REPLY @132 /* ~That's the tavern which only allows the ghost to sing, yes? Well, that's Garrick's concern, not mine. Let's be on our way. ~ #62226 */ GOTO 100
  IF ~  CheckStatLT(Player1,12,WIS)
~ THEN REPLY @206 /* ~That is odd. But we've other matters to attend to. Follow me. ~ #62227 */ GOTO 100
  IF ~  Global("bd_minsc_followup","GLOBAL",0)
~ THEN REPLY @207 /* ~Tell me about the Rashemi adventurers staying at the Three Old Kegs. ~ #62228 */ GOTO 108
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @135 /* ~I believe you mentioned some thieves I might try to recruit? ~ #62229 */ GOTO 107
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @240 /* ~I would know more of this cleric being held in the Flaming Fist headquarters. ~ #62230 */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 109.4 108.2 107.2 99.3
  SAY @241 /* ~Tiax? You really want to see that loon?~ [BD62231] #62231 */
  IF ~~ THEN REPLY @242 /* ~We can't afford to rule anything out at this point. Let us be on our way. ~ #62232 */ GOTO 100
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @139 /* ~Maybe. What can you tell me of the thieves staying at the Elfsong Tavern? ~ #62233 */ GOTO 107
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @243 /* ~Duke Eltan seems to think it worthwhile. He also suggested I contact a bard, did he not? ~ #62234 */ GOTO 109
  IF ~  Global("bd_minsc_followup","GLOBAL",0)
~ THEN REPLY @244 /* ~I'm considering it. Tell me about this pair of Rashemi adventurers at the Three Old Kegs. ~ #62235 */ GOTO 108
END

IF WEIGHT #21 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0010")
Global("bd_minsc_followup","GLOBAL",1)
Global("BD_Spoken_Garrick","GLOBAL",1)
Global("BD_Spoken_Safana","GLOBAL",1)
Global("BD_Spoken_Tiax","GLOBAL",1)
Global("BD_Spoken_Rasaad","GLOBAL",1)
~ THEN BEGIN 111 // from:
  SAY @245 /* ~Stay close. I don't want to lose you in the crowd.~ [BD57375] #57375 */
  IF ~~ THEN EXIT
END

IF WEIGHT #22 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0010")
~ THEN BEGIN 112 // from:
  SAY @246 /* ~Wherever we're going, let's get there fast. There's a fine line between a crowd and a mob, and I'd rather not be outside when it gets crossed. ~ #60943 */
  IF ~~ THEN REPLY @247 /* ~Where ARE we going? ~ #60944 */ GOTO 115
  IF ~~ THEN REPLY @248 /* ~You have no sense of adventure. ~ #60945 */ GOTO 114
  IF ~~ THEN REPLY @249 /* ~Show some backbone. You're a captain of the Flaming Fist. ~ #60946 */ GOTO 113
END

IF ~~ THEN BEGIN 113 // from: 112.2
  SAY @250 /* ~And I want to live long enough to become a colonel. Are we doing this or not? ~ #60947 */
  IF ~~ THEN REPLY @251 /* ~Where should we go? ~ #60948 */ GOTO 115
  IF ~~ THEN REPLY @252 /* ~We are. Follow me. ~ #60949 */ GOTO 118
  IF ~~ THEN REPLY @253 /* ~In truth, I'm not sure it's worth the effort. ~ #60950 */ GOTO 119
END

IF ~~ THEN BEGIN 114 // from: 112.1
  SAY @254 /* ~I had a sense of adventure once. Then I had some adventures. Now I just have sense. Where are we going? ~ #60951 */
  IF ~~ THEN REPLY @255 /* ~What do we have for options? ~ #60952 */ GOTO 115
  IF ~~ THEN REPLY @218 /* ~Follow me. ~ #60953 */ GOTO 118
  IF ~~ THEN REPLY @256 /* ~I haven't decided yet. ~ #60954 */ GOTO 119
END

IF ~~ THEN BEGIN 115 // from: 114.0 113.0 112.0
  SAY @257 /* ~You tell me. We are to acquire equipment and allies for the trip north. There's a couple of Rashemi adventurers we can talk to at the Three Old Kegs, that bard or the thieves at the Elfsong Tavern, or a monk at the Iron Throne building. Or we could just return to the palace.~ #60957 */
  IF ~~ THEN REPLY @258 /* ~All right, I know what I want to do. Follow me. ~ #60956 */ GOTO 118
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @259 /* ~Monk?~ #66856 */ GOTO 120
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @260 /* ~Tell me about these thieves. ~ #60958 */ GOTO 121
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @261 /* ~A bard, you say? ~ #60959 */ GOTO 123
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @262 /* ~You forgot the cleric being held in the Flaming Fist headquarters. ~ #60960 */ GOTO 116
  IF ~  Global("bd_minsc_followup","GLOBAL",0)
~ THEN REPLY @263 /* ~What can you tell me about the Rashemi pair? ~ #60961 */ GOTO 122
  IF ~~ THEN REPLY @264 /* ~I feel safer out here than in there. ~ #60962 */ GOTO 117
END

IF ~~ THEN BEGIN 116 // from: 123.5 122.2 121.2 120.3 115.4
  SAY @265 /* ~I hadn't, actually—I just hoped you had. You really want to see that loon? ~ #60963 */
  IF ~~ THEN REPLY @266 /* ~I don't want to rule anything out. But we're getting nothing accomplished lingering here. Follow me. ~ #60964 */ GOTO 118
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @267 /* ~Perhaps. Tell me about this monk at the Iron Throne building.~ #60965 */ GOTO 120
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @268 /* ~Maybe. What do you know about the thieves at the Elfsong Tavern? ~ #60966 */ GOTO 121
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @269 /* ~Duke Eltan seems to think I should. He also suggested I contact a bard of some sort, didn't he? ~ #60967 */ GOTO 123
  IF ~  Global("bd_minsc_followup","GLOBAL",0)
~ THEN REPLY @270 /* ~I'm considering it. Tell me about this pair of Rashemi adventurers. ~ #60968 */ GOTO 122
END

IF ~~ THEN BEGIN 117 // from: 115.6
  SAY @271 /* ~I can't fault you for that, given what's happened. But wherever we're going to go, let's go. ~ #60969 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 118 // from: 123.1 123.0 122.0 121.0 120.0 116.0 115.0 114.1 113.1
  SAY @272 /* ~You can count on that. Let's go. ~ #60970 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 119 // from: 114.2 113.2
  SAY @273 /* ~Well, do me a favor and make up your mind sooner than later. The crusade's wasting no time. We can't afford to, either. ~ #60971 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 120 // from: 123.2 122.3 121.5 121.4 116.1 115.1
  SAY @274 /* ~Rasaad yn Bashir. A Selûnite of the Sun Soul order. Slow to anger but quick to act when needs must, or so they say.~ #62538 */
  IF ~~ THEN REPLY @275 /* ~All right, I've made my decision. Stay by me. ~ #60973 */ GOTO 118
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @276 /* ~And the thieves? ~ #60974 */ GOTO 121
  IF ~  Global("bd_minsc_followup","GLOBAL",0)
~ THEN REPLY @277 /* ~Who are these adventurers from Rashemen you mentioned? ~ #60975 */ GOTO 122
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @278 /* ~I seem to recall someone mentioning a cleric at the Flaming Fist headquarters... Did you forget him?~ #60976 */ GOTO 116
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @279 /* ~And the bard Eltan suggested I contact? What do they say of him?~ #60977 */ GOTO 123
END

IF ~~ THEN BEGIN 121 // from: 123.4 122.4 120.1 116.2 115.2
  SAY @280 /* ~Coran and Safana. Not sure they're the sort of people we need in this venture, but Duke Eltan believed you might want them to join us. ~ #60978 */
  IF ~~ THEN REPLY @281 /* ~Well, we'll not learn anything useful standing here talking. Stick close to me. ~ #60979 */ GOTO 118
  IF ~  Global("bd_minsc_followup","GLOBAL",0)
~ THEN REPLY @168 /* ~Perhaps. What about these adventurers from Rashemen? ~ #60980 */ GOTO 122
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @282 /* ~I understand he thought the same of a cleric in the Flaming Fist headquarters. Don't tell me you forgot about him. ~ #60981 */ GOTO 116
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @129 /* ~What do you think about the bard he suggested I contact? ~ #60982 */ GOTO 123
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
OR(2)
!Class(Player1,PALADIN_ALL)
Kit(Player1,Blackguard)
~ THEN REPLY @283 /* ~A good thief can be a handy thing to have. What do you think of the monk, the one at the Iron Throne building? ~ #60983 */ GOTO 120
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
Class(Player1,PALADIN_ALL)
!Kit(Player1,Blackguard)
~ THEN REPLY @284 /* ~Thievery—a despicable practice. Let us speak no more of it. Tell me about the monk. ~ #60984 */ GOTO 120
END

IF ~~ THEN BEGIN 122 // from: 123.3 121.1 120.2 116.4 115.5
  SAY @203 /* ~A wychlaran named Dynaheir and her bodyguard, Minsc. She might be useful, but I have my doubts about him. Word is he's taken a few too many blows to the head and it's made him... let's call it unpredictable. ~ #60985 */
  IF ~~ THEN REPLY @285 /* ~All right, let's be about our business. You'll watch my back? ~ #60986 */ GOTO 118
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",0)
~ THEN REPLY @286 /* ~You mentioned a bard, I believe? ~ #60987 */ GOTO 123
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @287 /* ~Did you forget about the cleric at the Flaming Fist headquarters? ~ #60988 */ GOTO 116
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @288 /* ~I assume this monk at the Iron Throne building is less erratic? ~ #60989 */ GOTO 120
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @289 /* ~What can you tell me of the thieves at the Elfsong Tavern?~ #60990 */ GOTO 121
END

IF ~~ THEN BEGIN 123 // from: 122.1 121.3 120.4 116.3 115.3
  SAY @290 /* ~Garrick. He's become a regular at the Elfsong Tavern, which doesn't tell me much about his talent but does make me question his intelligence. It's not a venue that welcomes most singers.~ #60991 */
  IF ~  CheckStatGT(Player1,11,WIS)
~ THEN REPLY @291 /* ~That's the tavern which only allows the ghost to sing, yes? Well, that's Garrick's concern, not mine. Let's be about our business. Stay close to me and watch my back. ~ #60992 */ GOTO 118
  IF ~  CheckStatLT(Player1,12,WIS)
~ THEN REPLY @206 /* ~That is odd. But we've other matters to attend to. Follow me. ~ #60993 */ GOTO 118
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @292 /* ~The Iron Throne wasn't always welcoming to friendly monks, yet there's one there now, is there not? ~ #60994 */ GOTO 120
  IF ~  Global("bd_minsc_followup","GLOBAL",0)
~ THEN REPLY @207 /* ~Tell me about the Rashemi adventurers staying at the Three Old Kegs. ~ #60995 */ GOTO 122
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @293 /* ~You mentioned some thieves...? ~ #60996 */ GOTO 121
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @294 /* ~Are you trying to avoid the cleric at the Flaming Fist headquarters, or did you just forget about him? ~ #60997 */ GOTO 116
END

IF WEIGHT #23 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("bd0106")
Global("bd_drinks_corwin","global",1)
~ THEN BEGIN 124 // from:
  SAY @295 /* ~So. <CHARNAME>. The <PRO_MANWOMAN>. The myth. The hero of Baldur's Gate. Tell me about yourself.~ [BD35070] #35070 */
  IF ~  IsValidForPartyDialogue("Safana")
Gender(Player1,MALE)
~ THEN REPLY @296 /* ~I'd rather know about you.~ #35071 */ DO ~SetGlobal("bd_drinks_corwin","global",2)
~ EXTERN ~BDSAFANJ~ 17
  IF ~  IsValidForPartyDialogue("Safana")
Gender(Player1,FEMALE)
~ THEN REPLY @296 /* ~I'd rather know about you.~ #35071 */ DO ~SetGlobal("bd_drinks_corwin","global",2)
~ EXTERN ~BDSAFANJ~ 18
  IF ~  !IsValidForPartyDialogue("Safana")
~ THEN REPLY @296 /* ~I'd rather know about you.~ #35071 */ DO ~SetGlobal("bd_drinks_corwin","global",2)
~ GOTO 125
  IF ~~ THEN REPLY @297 /* ~Gods, we don't have nearly enough time for that. Forget me. Tell me about Caelar.~ #35072 */ DO ~SetGlobal("bd_drinks_corwin","global",2)
~ GOTO 133
  IF ~~ THEN REPLY @298 /* ~Everything you've heard about me? Absolutely true.~ #35073 */ DO ~SetGlobal("bd_drinks_corwin","global",2)
~ GOTO 137
  IF ~~ THEN REPLY @299 /* ~I don't talk about my past. Certainly not with strangers.~ #35074 */ DO ~SetGlobal("bd_drinks_corwin","global",2)
~ GOTO 142
END

IF ~~ THEN BEGIN 125 // from: 124.2
  SAY @300 /* ~What would you like to know?~ [BD35075] #35075 */
  IF ~~ THEN REPLY @301 /* ~How did you come to join the Flaming Fist?~ #35076 */ GOTO 128
  IF ~~ THEN REPLY @302 /* ~What's your sense of this Caelar Argent?~ #35077 */ GOTO 133
  IF ~~ THEN REPLY @303 /* ~Where you're planning to sleep tonight.~ #35078 */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.2
  SAY @304 /* ~Sleeping isn't on my agenda. Once I'm finished with you, I'll be spending what time I've got left preparing for the journey north.~ [BD35079] #35079 */
  IF ~~ THEN REPLY @305 /* ~There's much to do before we leave. Tell me, what are your thoughts on Caelar?~ #35080 */ GOTO 133
  IF ~~ THEN REPLY @306 /* ~You and the rest of the Flaming Fist. Tell me, how did you come to join Duke Eltan's army?~ #35081 */ GOTO 128
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN REPLY @307 /* ~If you need a break from the drudgery, you're welcome to come and not sleep in my chambers, if you know what I mean...~ #35082 */ EXTERN ~BDMINSCJ~ 14
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN REPLY @307 /* ~If you need a break from the drudgery, you're welcome to come and not sleep in my chambers, if you know what I mean...~ #35082 */ GOTO 127
  IF ~~ THEN REPLY @308 /* ~Let's not waste more time than necessary here, then.~ #35083 */ GOTO 132
END

IF ~~ THEN BEGIN 127 // from: 126.3
  SAY @309 /* ~It's best relationships in the Flaming Fist remain professional.~ [BD35084] #35084 */
  IF ~~ THEN REPLY @310 /* ~Indeed. So what do you make of Caelar?~ #35085 */ GOTO 133
  IF ~~ THEN REPLY @311 /* ~If you insist. How did you come to join the Fist, anyway?~ #35086 */ GOTO 128
  IF ~~ THEN REPLY @312 /* ~I'm not in the Fist. But I take your meaning—we'd best call it a night.~ #35087 */ GOTO 132
END

IF ~~ THEN BEGIN 128 // from: 141.1 137.2 136.1 127.1 126.1 125.0
  SAY @313 /* ~Ah, well, therein lies a tale, but it's a long one. My father, Audamar, was a Fist. You could say I followed in his footsteps.~ [BD35090] #35090 */
  IF ~~ THEN REPLY @314 /* ~Many children emulate their parents. Not me, thankfully. Say, what are your thoughts on Caelar?~ #35091 */ DO ~SetGlobal("bd_sdd006_aaa112","locals",1)
~ GOTO 133
  IF ~~ THEN REPLY @315 /* ~That's a curious way of putting things. You obviously followed in his footsteps since you enlisted.~ #35092 */ DO ~SetGlobal("bd_sdd006_aaa112","locals",1)
~ GOTO 129
  IF ~~ THEN REPLY @69 /* ~As you wish.~ #35093 */ DO ~SetGlobal("bd_sdd006_aaa112","locals",1)
~ GOTO 132
END

IF ~~ THEN BEGIN 129 // from: 128.1
  SAY @316 /* ~I did, eventually. But it took me a long time to recognize the value in my father's example. When I was younger, I ran a bit wild. It took a lot of strength and patience on my father's part to set me on the right path. Things would have been much different for me if he were a lesser man.~ [BD35094] #35094 */
  IF ~~ THEN REPLY @317 /* ~Sounds like Duke Entar could take a lesson from your father.~ #61796 */ GOTO 130
  IF ~~ THEN REPLY @318 /* ~A wild child, hm? Any stories you care to share?~ #61797 */ GOTO 131
  IF ~~ THEN REPLY @319 /* ~It's good to have people you can trust in your life. What are your thoughts on Caelar?~ #61798 */ GOTO 133
  IF ~~ THEN REPLY @320 /* ~Interesting. Well, we'd best call it a night.~ #61799 */ GOTO 132
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY @321 /* ~I wasn't so different from Skie Silvershield when I was her age—thought I deserved everything and didn't understand why I couldn't have it. With a little help from Tymora, she'll learn some lessons and grow into a good and decent person.~ [BD61800] #61800 */
  IF ~~ THEN REPLY @322 /* ~Time will tell. What are your thoughts on Caelar?~ #61801 */ GOTO 133
  IF ~~ THEN REPLY @323 /* ~I'm not as confident as you are, but stranger things have happened. What do you think of Caelar thus far?~ #61802 */ GOTO 133
  IF ~~ THEN REPLY @324 /* ~We can only hope. Well, we'd best call it a night.~ #61803 */ GOTO 132
END

IF ~~ THEN BEGIN 131 // from: 129.1
  SAY @325 /* ~Let's keep things professional—for now, at least. Drink up. We've things to do and precious little time in which to do them.~ [BD35095] #35095 */
  IF ~~ THEN DO ~AddJournalEntry(61624,INFO)
Face(NE)
~ EXIT
END

IF ~~ THEN BEGIN 132 // from: 141.2 137.3 136.3 136.2 136.0 130.2 129.3 128.2 127.2 126.4
  SAY @326 /* ~Drink up. We've things to do and not much time to do them in.~ [BD35097] #35097 */
  IF ~~ THEN DO ~AddJournalEntry(61624,INFO)
Face(NE)
~ EXIT
END

IF ~~ THEN BEGIN 133 // from: 141.0 137.1 130.1 130.0 129.2 128.0 127.0 126.0 125.1 124.3
  SAY @327 /* ~A charismatic leader. An acolyte of the Order of the Aster, once. She claims divine favor for herself and her forces—that's why so many flock to her banner. She'll be a formidable opponent.~ [BD35099] #35099 */
  IF ~~ THEN REPLY @328 /* ~A battle isn't inevitable.~ #35100 */ GOTO 134
  IF ~~ THEN REPLY @329 /* ~That she will. But why? What is she hoping to accomplish?~ #35101 */ GOTO 135
  IF ~~ THEN REPLY @330 /* ~You think this battle is unavoidable?~ #35102 */ GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.2 133.0
  SAY @331 /* ~She seems pretty determined to make it inevitable.~ [BD35104] #35104 */
  IF ~~ THEN REPLY @332 /* ~What is she trying to accomplish?~ #35105 */ GOTO 135
  IF ~~ THEN REPLY @333 /* ~Unfortunate, if true.~ #35106 */ GOTO 136
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN REPLY @334 /* ~And a glorious battle it will be.~ #35107 */ EXTERN ~BDMINSCJ~ 15
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN REPLY @334 /* ~And a glorious battle it will be.~ #35107 */ GOTO 136
END

IF ~~ THEN BEGIN 135 // from: 134.0 133.1
  SAY @335 /* ~We'll find out soon enough, I suspect, but what she wants is of little consequence. It's what she actually does that matters.~ [BD35109] #35109 */
  IF ~~ THEN GOTO 136
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN EXTERN ~BDDYNAHJ~ 25
END

IF ~~ THEN BEGIN 136 // from: 135.0 134.3 134.1
  SAY @336 /* ~Whether the battle's long or short, glorious or horrific, it's going to happen. Caelar's got to be stopped. She's driving people out of their homes, seizing their goods, forcing innocents into service... We can't let it go on.~ [BD35112] #35112 */
  IF ~~ THEN REPLY @337 /* ~We won't. I can promise you that.~ #35113 */ GOTO 132
  IF ~  Global("bd_sdd006_aaa112","locals",0)
~ THEN REPLY @338 /* ~We won't. With the combined forces of Waterdeep, Daggerford, and Baldur's Gate, victory is assured. So how did you come to join the Flaming Fist anyway?~ #35114 */ GOTO 128
  IF ~  Global("bd_sdd006_aaa112","locals",1)
~ THEN REPLY @339 /* ~We won't. With the combined forces of Waterdeep, Daggerford, and Baldur's Gate, our victory is certain.~ #69684 */ GOTO 132
  IF ~~ THEN REPLY @340 /* ~We'll soon find out what the future holds. In the meantime, we should get some rest.~ #61804 */ GOTO 132
END

IF ~~ THEN BEGIN 137 // from: 124.4
  SAY @341 /* ~ALL of it? Impressive...~ [BD35134] #35134 */
  IF ~~ THEN REPLY @342 /* ~Well, maybe not all of it.~ #35135 */ GOTO 138
  IF ~~ THEN REPLY @343 /* ~You have no idea. Now tell me what you know about Caelar.~ #35136 */ GOTO 133
  IF ~~ THEN REPLY @344 /* ~Now it's your turn to impress me. Tell me about yourself. How did you come to join the Flaming Fist?~ #61805 */ GOTO 128
  IF ~~ THEN REPLY @345 /* ~I'll leave you with that thought, Captain Corwin. We should turn in for the night.~ #35137 */ GOTO 132
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY @346 /* ~And modest too.~ [BD35153] #35153 */
  IF ~~ THEN REPLY @347 /* ~That surprises you?~ #35154 */ GOTO 140
  IF ~~ THEN REPLY @348 /* ~I've found other peoples' low expectations of me generally work to my advantage.~ #35155 */ GOTO 139
  IF ~~ THEN REPLY @349 /* ~Not modest. Merely realistic.~ #35156 */ GOTO 141
END

IF ~~ THEN BEGIN 139 // from: 138.1
  SAY @350 /* ~This must be a tough time for you, then.~ [BD35157] #35157 */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 140 // from: 138.0
  SAY @351 /* ~A little.~ [BD35159] #35159 */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 140.0 139.0 138.2
  SAY @352 /* ~After the iron crisis, the city adores you. When I told my daughter I might meet the hero of Baldur's Gate, she nearly fainted. That kind of deference would go to some peoples' heads. But not yours, it seems. That's good. We'll need level heads when it comes time to face the crusade.~ [BD35161] #35161 */
  IF ~~ THEN REPLY @353 /* ~I'll do my best to live up to your expectations. Speaking of the crusade, what do you think of this Caelar so far?~ #61806 */ GOTO 133
  IF ~~ THEN REPLY @354 /* ~I'll keep mine as level as I can. Tell me about yourself now, Captain. How did you come to join the Flaming Fist?~ #61807 */ GOTO 128
  IF ~~ THEN REPLY @355 /* ~Mine will be more level after a good night's sleep. We should turn in.~ #61808 */ GOTO 132
END

IF ~~ THEN BEGIN 142 // from: 124.5
  SAY @356 /* ~We've a long journey together ahead of us. I doubt we'll be strangers long. But it doesn't look like we're going to be friends, either. Nothing wrong with that. Probably best to keep things professional. Drink up and we'll go.~ [BD35163] #35163 */
  IF ~~ THEN DO ~AddJournalEntry(61624,INFO)
Face(NE)
~ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("bd0106")
Global("bd_drinks_corwin","global",2)
~ THEN BEGIN 143 // from:
  SAY @357 /* ~More wine? I'll not have any more myself, but you're decent enough company, for the most part.~ [BD39872] #39872 */
  IF ~~ THEN REPLY @358 /* ~For the most part?~ #39873 */ DO ~SetGlobal("bd_drinks_corwin","global",3)
~ GOTO 144
  IF ~~ THEN REPLY @359 /* ~Tempting, but no. I've too much to do before we head out.~ #39874 */ DO ~SetGlobal("bd_drinks_corwin","global",3)
~ GOTO 147
  IF ~~ THEN REPLY @360 /* ~I've had more than enough for the night.~ #39875 */ DO ~SetGlobal("bd_drinks_corwin","global",3)
~ GOTO 149
  IF ~  Global("bd_heard_seditious_talk","GLOBAL",1)
!Dead("bdmaxwel")
!Dead("bdtherto")
!Dead("bdaraya")
~ THEN REPLY @361 /* ~A plot against the Council of Four is being hatched upstairs.~ #44522 */ DO ~SetGlobal("bd_heard_seditious_talk","GLOBAL",2)
~ GOTO 181
  IF ~  Global("bd_heard_seditious_talk","GLOBAL",0)
PartyHasItem("bdscrl01")
!Dead("bdmaxwel")
!Dead("bdtherto")
!Dead("bdaraya")
~ THEN REPLY @362 /* ~I found this letter upstairs. It implicates three nobles in this inn of plotting against the dukes of Baldur's Gate.~ #44525 */ DO ~SetGlobal("bd_heard_seditious_talk","GLOBAL",3)
TakePartyItem("bdscrl01")
~ GOTO 184
  IF ~  PartyHasItem("bdscrl01")
Dead("bdmaxwel")
Dead("bdtherto")
Dead("bdaraya")
~ THEN REPLY @363 /* ~I slew three nobles upstairs. They were plotting against the city. Here, one of them was carrying this note.~ #44526 */ DO ~SetGlobal("bd_heard_seditious_talk","GLOBAL",2)
TakePartyItem("bdscrl01")
~ GOTO 185
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY @364 /* ~Take it as a compliment.~ [BD39876] #39876 */
  IF ~~ THEN REPLY @365 /* ~You are a woman of refinement and taste.~ #39877 */ GOTO 145
  IF ~~ THEN REPLY @366 /* ~Is that how it was intended?~ #39878 */ GOTO 148
  IF ~~ THEN REPLY @367 /* ~I don't think I will. I know a compliment when I hear one.~ #39879 */ GOTO 152
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY @368 /* ~You noticed. Good eye.~ [BD39880] #39880 */
  IF ~~ THEN REPLY @369 /* ~I'm noticing a lot of things about you.~ #39881 */ GOTO 146
  IF ~~ THEN REPLY @370 /* ~I've two eyes, actually, and they're better than good. I've been told they're spectacular.~ #39882 */ GOTO 150
  IF ~~ THEN REPLY @371 /* ~You seem pretty observant yourself. Tell me what you make of me.~ #39883 */ GOTO 153
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY @372 /* ~Don't look too hard. You might not like what you see.~ [BD39884] #39884 */
  IF ~~ THEN GOTO 147
  IF ~  IsValidForPartyDialogue("Safana")
Gender(Player1,MALE)
~ THEN EXTERN ~BDSAFANJ~ 20
END

IF ~~ THEN BEGIN 147 // from: 152.0 146.0 143.1
  SAY @373 /* ~Let me know when you want to leave, <CHARNAME>.~ [BD39885] #39885 */
  IF ~~ THEN DO ~Face(NE)
~ EXIT
END

IF ~~ THEN BEGIN 148 // from: 144.1
  SAY @374 /* ~Ask me no questions, I'll tell you no lies. I'll follow you out when you leave.~ [BD39886] #39886 */
  IF ~~ THEN DO ~Face(NE)
~ EXIT
END

IF ~~ THEN BEGIN 149 // from: 143.2
  SAY @375 /* ~As you wish. I'll follow you out when you leave.~ [BD39887] #39887 */
  IF ~~ THEN DO ~Face(NE)
~ EXIT
END

IF ~~ THEN BEGIN 150 // from: 145.1
  SAY @376 /* ~And how much had the person who told you that had to drink?~ [BD39888] #39888 */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY @377 /* ~Just joking. They're pretty good eyes, I'll give you that. Finish up what you need to do here and I'll follow you out when you leave.~ [BD39889] #39889 */
  IF ~~ THEN DO ~Face(NE)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 144.2
  SAY @378 /* ~Take it however you want then, but I should warn you, if you think that was insulting, our time together's going to be... uncomfortable.~ [BD39890] #39890 */
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 153 // from: 145.2
  SAY @379 /* ~I think I'll keep that to myself—for the moment. I'll be by the door. I'll follow you out when you go.~ [BD39891] #39891 */
  IF ~~ THEN DO ~Face(NE)
~ EXIT
END

IF WEIGHT #25 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0106")
OR(2)
InParty("Minsc")
InParty("Dynaheir")
Global("BD_CORWIN_COMMENTS","GLOBAL",0)
~ THEN BEGIN 154 // from:
  SAY @380 /* ~What have we here?~ [BD60998] #60998 */
  IF ~  IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @381 /* ~Captain Schael Corwin, allow me to introduce Dynaheir and Minsc of Rashemen. ~ #60999 */ EXTERN ~BDMINSCJ~ 132
  IF ~  IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @382 /* ~This is Minsc of Rashemen. ~ #61000 */ EXTERN ~BDMINSCJ~ 132
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @383 /* ~Captain Schael Corwin of the Flaming Fist, allow me to introduce Dynaheir, wychlaran of Rashemen. Take a few minutes, get acquainted. ~ #61001 */ GOTO 157
  IF ~~ THEN REPLY @384 /* ~You know exactly what we have here—you brought me here to get them. ~ #61002 */ GOTO 156
  IF ~~ THEN REPLY @385 /* ~You can meet them on your own time. I've more important things to do. ~ #61003 */ GOTO 156
END

IF ~~ THEN BEGIN 155 // from:
  SAY @386 /* ~It's a long way to Dragonspear, <CHARNAME>. Are you sure you want to bring the hamster along? ~ #61005 */
  IF ~~ THEN REPLY @387 /* ~I am sure Minsc will prove invaluable, as will Boo. ~ #61006 */ GOTO 156
  IF ~~ THEN REPLY @388 /* ~The hamster and the ranger are a package deal, I'm afraid. ~ #61007 */ GOTO 156
  IF ~~ THEN REPLY @389 /* ~You question me, Captain Corwin? Don't. ~ #61008 */ GOTO 156
END

IF ~~ THEN BEGIN 156 // from: 155.2 155.1 155.0 154.4 154.3
  SAY @390 /* ~All right, if that's the way you want it. I'll follow you out when you leave.~ #61009 */
  IF ~~ THEN DO ~SetGlobal("BD_CORWIN_COMMENTS","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from: 154.2
  SAY @391 /* ~Nice to meet you. I'll follow you out when you leave.~ #61018 */
  IF ~~ THEN DO ~SetGlobal("BD_CORWIN_COMMENTS","GLOBAL",1)
~ EXIT
END

IF WEIGHT #26 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("bd0106")
NumTimesTalkedTo(0)
~ THEN BEGIN 158 // from:
  SAY @392 /* ~I'll await you here until you're ready to go.~ [BD34427] #34427 */
  IF ~~ THEN REPLY @393 /* ~Very well.~ #52668 */ GOTO 159
  IF ~~ THEN REPLY @394 /* ~Where are Dynaheir and Minsc?~ #52669 */ GOTO 160
  IF ~~ THEN REPLY @395 /* ~Do you need a drink? I need a drink. Join me for a drink.~ #52670 */ GOTO 161
  IF ~~ THEN REPLY @396 /* ~Do that.~ #52671 */ GOTO 159
END

IF ~~ THEN BEGIN 159 // from: 160.0 158.3 158.0
  SAY @397 /* ~When you leave, don't move too far ahead of me. If I lose you in the crowd, Duke Eltan will have my head.~ #52672 */
  IF ~~ THEN DO ~AddJournalEntry(61578,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from: 158.1
  SAY @398 /* ~They've got a room on the third floor, or so I've been told.~ #52673 */
  IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 161 // from: 158.2
  SAY @399 /* ~I like the way you think. Let's go.~ #52674 */
  IF ~~ THEN DO ~SetGlobal("bd_drinks_corwin","global",1)
AddJournalEntry(61579,INFO)
StartCutSceneMode()
FaceObject("BDCHARRA")
ActionOverride(Player1,MoveToPoint([482.588]))
ActionOverride("BDCHARRA",MoveToPoint([408.593]))
ActionOverride("BDCHARRA",FaceObject("bdschael"))
ActionOverride(Player1,FaceObject("BDCHARRA"))
SmallWait(20)
DisplayStringHead("BDCHARRA",@400)
SmallWait(20)
DisplayStringHead(Myself,@401)
SmallWait(20)
DisplayStringHead("BDCHARRA",@402)
SmallWait(4)
ActionOverride("BDCHARRA",MoveToPoint([369.577]))
Wait(2)
ActionOverride("BDCHARRA",MoveToPoint([408.593]))
ActionOverride("BDCHARRA",FaceObject("bdschael"))
Wait(1)
ActionOverride(Player1,FaceObject("bdschael"))
FaceObject(Player1)
SmallWait(5)
EndCutSceneMode()
StartDialogNoSet(Player1)
~ EXIT
END

IF WEIGHT #27 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("bd0106")
NumTimesTalkedToGT(0)
~ THEN BEGIN 162 // from:
  SAY @403 /* ~Finished? I'm ready to head out when you are.~ [BD34701] #34701 */
  IF ~~ THEN REPLY @25 /* ~I believe so.~ #34702 */ GOTO 163
  IF ~  IsGabber(Player1)
GlobalGT("bd_minsc_followup","global",0)
!InParty("Minsc")
!InParty("Dynaheir")
Global("bd_drinks_corwin","global",0)
~ THEN REPLY @404 /* ~I'm finished with those two. But I could use a drink. How about you?~ #34703 */ GOTO 164
  IF ~  IsGabber(Player1)
OR(2)
InParty("Minsc")
InParty("Dynaheir")
Global("bd_drinks_corwin","global",0)
~ THEN REPLY @405 /* ~I got what I came for, but I could use a drink. How about you?~ #52675 */ GOTO 164
  IF ~  IsGabber(Player1)
Global("bd_drinks_corwin","global",0)
~ THEN REPLY @406 /* ~I need a drink. You?~ #52676 */ GOTO 164
  IF ~~ THEN REPLY @407 /* ~Someone tried to kill me tonight and I'm in a bar. Hells no, I'm not finished.~ #34704 */ GOTO 166
  IF ~~ THEN REPLY @408 /* ~When I'm finished, I'll tell you. Do not ask me again.~ #52677 */ GOTO 165
  IF ~  Global("bd_heard_seditious_talk","GLOBAL",1)
!Dead("bdmaxwel")
!Dead("bdtherto")
!Dead("bdaraya")
~ THEN REPLY @361 /* ~A plot against the Council of Four is being hatched upstairs.~ #44522 */ DO ~SetGlobal("bd_heard_seditious_talk","GLOBAL",2)
~ GOTO 181
  IF ~  Global("bd_heard_seditious_talk","GLOBAL",0)
PartyHasItem("bdscrl01")
!Dead("bdmaxwel")
!Dead("bdtherto")
!Dead("bdaraya")
~ THEN REPLY @362 /* ~I found this letter upstairs. It implicates three nobles in this inn of plotting against the dukes of Baldur's Gate.~ #44525 */ DO ~SetGlobal("bd_heard_seditious_talk","GLOBAL",3)
TakePartyItem("bdscrl01")
~ GOTO 184
  IF ~  PartyHasItem("bdscrl01")
Dead("bdmaxwel")
Dead("bdtherto")
Dead("bdaraya")
~ THEN REPLY @363 /* ~I slew three nobles upstairs. They were plotting against the city. Here, one of them was carrying this note.~ #44526 */ DO ~SetGlobal("bd_heard_seditious_talk","GLOBAL",2)
TakePartyItem("bdscrl01")
~ GOTO 185
END

IF ~~ THEN BEGIN 163 // from: 162.0
  SAY @409 /* ~I'll follow you out.~ #34711 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 164 // from: 162.3 162.2 162.1
  SAY @410 /* ~I... Sure. Why not?~ #34712 */
  IF ~~ THEN DO ~SetGlobal("bd_drinks_corwin","global",1)
AddJournalEntry(61579,INFO)
StartCutSceneMode()
FaceObject("BDCHARRA")
ActionOverride(Player1,MoveToPoint([482.588]))
ActionOverride("BDCHARRA",MoveToPoint([408.593]))
ActionOverride("BDCHARRA",FaceObject("bdschael"))
ActionOverride(Player1,FaceObject("BDCHARRA"))
SmallWait(20)
DisplayStringHead("BDCHARRA",@400)
SmallWait(20)
DisplayStringHead(Myself,@401)
SmallWait(20)
DisplayStringHead("BDCHARRA",@402)
SmallWait(4)
ActionOverride("BDCHARRA",MoveToPoint([369.577]))
Wait(2)
ActionOverride("BDCHARRA",MoveToPoint([408.593]))
ActionOverride("BDCHARRA",FaceObject("bdschael"))
Wait(1)
ActionOverride(Player1,FaceObject("bdschael"))
FaceObject(Player1)
SmallWait(5)
EndCutSceneMode()
StartDialogNoSet(Player1)
~ EXIT
END

IF ~~ THEN BEGIN 165 // from: 162.5
  SAY @411 /* ~That won't be a problem. The less I have to talk to you, the better, as far as I'm concerned. I'll follow you out when you're ready to leave.~ #34713 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 166 // from: 162.4
  SAY @412 /* ~When you are, you know where to find me. ~ #34714 */
  IF ~~ THEN EXIT
END

IF WEIGHT #28 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0121")
NumTimesTalkedTo(0)
~ THEN BEGIN 167 // from:
  SAY @413 /* ~All right. Get what you need. I'll cover the door.~ [BD54917] #54917 */
  IF ~~ THEN REPLY @414 /* ~Is that really necessary? ~ #54918 */ GOTO 168
  IF ~~ THEN REPLY @415 /* ~Good. I don't trust that door. It's shifty. Don't let it out of your sight, not for a second. ~ #54919 */ GOTO 172
  IF ~~ THEN REPLY @416 /* ~Very well. ~ #54920 */ GOTO 170
END

IF ~~ THEN BEGIN 168 // from: 167.0
  SAY @417 /* ~Maybe, maybe not. We don't know how many assassins Caelar sent after you, but if there are more I'm not going to make their job easy.~ #54921 */
  IF ~~ THEN REPLY @418 /* ~What of the patrons already here? While you watch the door, I'm exposed. ~ #54922 */ GOTO 174
  IF ~~ THEN REPLY @419 /* ~Those who go looking for trouble can usually find some.~ #54923 */ GOTO 169
  IF ~~ THEN REPLY @420 /* ~Any who raise their hand against me will fall before my wrath.~ #54924 */ GOTO 173
END

IF ~~ THEN BEGIN 169 // from: 168.1
  SAY @421 /* ~I'm not looking for trouble, but if it manages to find me I'll be ready. I'll follow you out when you leave.~ #54925 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 170 // from: 167.2
  SAY @422 /* ~Be careful. It's a fair bet someone's pocket is getting picked in here. Take care that it isn't yours. I'll follow you out when you go.~ #54926 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 171 // from:
  SAY @423 /* ~So I'll hold here. I'll follow you out when you're ready to leave.~ #54927 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 172 // from: 167.1
  SAY @424 /* ~Yes, you're very funny. Happy now? Then go, get what you need.~ #54928 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 173 // from: 168.2
  SAY @425 /* ~I'd rather they not get the chance to raise their hands at all. I'll follow you out when you leave.~ #54929 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 174 // from: 168.0
  SAY @426 /* ~Few knew we might come here, much less when. There's no way they could have an ambush prepared. Anyone who wants a shot at you will have to get past me first. Even so, we've no time to waste. Go get what you need, the sooner we leave here the happier I'll be.~ #54930 */
  IF ~~ THEN EXIT
END

IF WEIGHT #29 /* Triggers after states #: 183 even though they appear after this state */
~  AreaCheck("BD0121")
NumTimesTalkedToGT(0)
~ THEN BEGIN 175 // from:
  SAY @427 /* ~Got everything you need?~ [BD54931] #54931 */
  IF ~  Global("BD_FIRST","BD0121",0)
~ THEN REPLY @428 /* ~I have. ~ #54932 */ DO ~SetGlobal("BD_FIRST","BD0121",1)
~ GOTO 176
  IF ~  Global("BD_FIRST","BD0121",1)
~ THEN REPLY @428 /* ~I have. ~ #54932 */ GOTO 177
  IF ~~ THEN REPLY @429 /* ~Yes, but I want to look around a little while longer, if I may. ~ #54933 */ GOTO 179
  IF ~  Global("BD_SECOND","BD0121",0)
~ THEN REPLY @430 /* ~No. But what I seek I'll not find here. ~ #54934 */ DO ~SetGlobal("BD_SECOND","BD0121",1)
~ GOTO 180
  IF ~  Global("BD_SECOND","BD0121",1)
~ THEN REPLY @430 /* ~No. But what I seek I'll not find here. ~ #54934 */ GOTO 178
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY @431 /* ~Stay close to me out there. After what happened earlier, I don't want to lose you in the crowd. I'll follow you out the door.~ #54935 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 177 // from: 180.0 175.1
  SAY @432 /* ~Good. I'll follow you out.~ #54936 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 178 // from: 175.4
  SAY @433 /* ~If you say so. I'll follow you out.~ #54937 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 179 // from: 180.1 175.2
  SAY @434 /* ~I'm just the piper. You're the one who calls the tune. I'll follow you out once you leave.~ #54938 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 180 // from: 175.3
  SAY @435 /* ~You can't always get what you want. I try sometimes, and well, I've found that, on occasion, you get what you need. Do you want to go? ~ #54939 */
  IF ~~ THEN REPLY @436 /* ~Yes.~ #54940 */ GOTO 177
  IF ~~ THEN REPLY @437 /* ~I'm going to keep looking around awhile. ~ #54941 */ GOTO 179
END

IF ~~ THEN BEGIN 181 // from: 162.6 143.3
  SAY @438 /* ~These conspirators are upstairs right now? I'll summon help and take up position outside their door. You go back up and get them talking about this plot again.~ #44527 */
  IF ~~ THEN REPLY @439 /* ~I understand. I'll meet you upstairs.~ #44532 */ GOTO 182
  IF ~~ THEN REPLY @440 /* ~Very well—but make sure you and the others are ready to move as soon as the nobles reveal their plan.~ #44533 */ GOTO 182
  IF ~~ THEN REPLY @441 /* ~If I must.~ #44534 */ GOTO 182
END

IF ~~ THEN BEGIN 182 // from: 181.2 181.1 181.0
  SAY @442 /* ~I'll be there as soon as I can.~ #44535 */
  IF ~~ THEN DO ~AddJournalEntry(61608,QUEST)
SetGlobal("bd_alerted_corwin","GLOBAL",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("bd_alerted_corwin","GLOBAL",1)
AreaCheck("BD0106")
~ THEN BEGIN 183 // from:
  SAY @443 /* ~You head back upstairs. Remember: You have to get the nobles to talk about their treasonous activities.~ #44536 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 184 // from: 162.7 143.4
  SAY @444 /* ~Oh, gods damn it...! All right. I'll round up some Flaming Fist enforcers and arrest the traitors. Thanks for looking after the city's interests. It's appreciated.~ #44537 */
  IF ~~ THEN DO ~AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 185 // from: 162.8 143.5
  SAY @445 /* ~You should've come to me before taking matters into your own hands.~ #44539 */
  IF ~~ THEN REPLY @446 /* ~I understand. I'll take more care in the future.~ #44540 */ GOTO 186
  IF ~~ THEN REPLY @447 /* ~The nobles attacked me! I was only defending myself.~ #44541 */ GOTO 187
  IF ~~ THEN REPLY @448 /* ~I dispense my own justice.~ #44542 */ GOTO 186
END

IF ~~ THEN BEGIN 186 // from: 185.2 185.0
  SAY @449 /* ~At any rate, it's done now. I'll alert the Flaming Fists to come and make a proper investigation.~ #44543 */
  IF ~~ THEN DO ~AddexperienceParty(500)
ReputationInc(-1)
~ EXIT
END

IF ~~ THEN BEGIN 187 // from: 185.1
  SAY @450 /* ~Thanks for bringing this to my attention. I'll see that everything's taken care of.~ #44544 */
  IF ~~ THEN DO ~AddexperienceParty(500)
ReputationInc(1)
~ EXIT
END

IF WEIGHT #30 ~  AreaCheck("bd0108")
Global("bd_uncovered_seditious_plot","BD0108",2)
~ THEN BEGIN 188 // from:
  SAY @451 /* ~You scared them off. Subtlety isn't your strong suit, is it?~ [BD44570] #44570 */
  IF ~~ THEN REPLY @452 /* ~I'm sorry, I'm not very good at deception.~ #44571 */ GOTO 189
  IF ~~ THEN REPLY @453 /* ~This was your idea, not mine. Don't blame me if it didn't work.~ #44572 */ GOTO 189
  IF ~~ THEN REPLY @454 /* ~Save your scorn. You wouldn't have known about the plot at all were it not for me.~ #44573 */ GOTO 189
END

IF ~~ THEN BEGIN 189 // from: 188.2 188.1 188.0
  SAY @455 /* ~We've wasted enough time here. Come on, let's go.~ [BD44574] #44574 */
  IF ~~ THEN DO ~AddJournalEntry(61610,QUEST_DONE)
ActionOverride("bdtyle",EscapeArea())
ActionOverride("bdfistcc",EscapeArea())
EscapeArea()
~ EXIT
END

IF WEIGHT #31 ~  AreaCheck("bd0108")
Global("bd_uncovered_seditious_plot","BD0108",1)
~ THEN BEGIN 190 // from:
  SAY @456 /* ~By order of the Flaming Fist, you three are under arrest!~ [BD44575] #44575 */
  IF ~~ THEN EXTERN ~BDMAXWEL~ 13
END

IF ~~ THEN BEGIN 191 // from:
  SAY @457 /* ~Please stop with the flattery, <CHARNAME>. You'll make me blush.~ [BD44585] #44585 */
  IF ~~ THEN DO ~AddJournalEntry(61609,QUEST_DONE)
AddexperienceParty(750)
ActionOverride("bdtyle",DialogueInterrupt(FALSE))
ActionOverride("bdfistcc",DialogueInterrupt(FALSE))
ActionOverride("bdmaxwel",EscapeAreaMove("BD0104",1412,551,NWW))
ActionOverride("bdtherto",EscapeAreaMove("BD0104",1496,462,W))
ActionOverride("bdaraya",EscapeAreaMove("BD0104",1593,377,NWW))
ActionOverride("Safana",SetSequence(SEQ_AWAKE))
ActionOverride("Safana",SmallWait(6))
ActionOverride("Safana",JumpToPoint([588.216]))
ActionOverride("Safana",SetSequence(SEQ_READY))
ActionOverride("bdtyle",Wait(4))
ActionOverride("bdfistcc",Face(S))
ActionOverride("bdfistcc",Wait(3))
ActionOverride("bdtyle",EscapeArea())
ActionOverride("bdfistcc",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 192 // from:
  SAY @458 /* ~You did good work tonight, <CHARNAME>. Thank you.~ [BD44586] #44586 */
  IF ~~ THEN DO ~AddJournalEntry(61609,QUEST_DONE)
AddexperienceParty(750)
ActionOverride("bdtyle",DialogueInterrupt(FALSE))
ActionOverride("bdfistcc",DialogueInterrupt(FALSE))
ActionOverride("bdmaxwel",EscapeAreaMove("BD0104",1412,551,NWW))
ActionOverride("bdtherto",EscapeAreaMove("BD0104",1496,462,W))
ActionOverride("bdaraya",EscapeAreaMove("BD0104",1593,377,NWW))
ActionOverride("Safana",SetSequence(SEQ_AWAKE))
ActionOverride("Safana",SmallWait(6))
ActionOverride("Safana",JumpToPoint([588.216]))
ActionOverride("Safana",SetSequence(SEQ_READY))
ActionOverride("bdtyle",Wait(4))
ActionOverride("bdfistcc",Face(S))
ActionOverride("bdfistcc",Wait(3))
ActionOverride("bdtyle",EscapeArea())
ActionOverride("bdfistcc",EscapeArea())
EscapeArea()
~ EXIT
END

IF WEIGHT #32 ~  AreaCheck("BD0109")
IsValidForPartyDialogue("Safana")
Global("BD_CORWIN_SAFANA_COMMENTS","GLOBAL",0)
~ THEN BEGIN 193 // from:
  SAY @459 /* ~Well met, <CHARNAME>. And even more well met, my lady...? ~ #61019 */
  IF ~~ THEN REPLY @460 /* ~This is Safana. Safana, this is Captain Schael Corwin of the Flaming Fist. ~ #61020 */ GOTO 194
  IF ~~ THEN REPLY @461 /* ~Captain Schael Corwin of the Flaming Fist, meet Safana of no particular allegiance. ~ #61021 */ GOTO 194
  IF ~~ THEN REPLY @462 /* ~Captain Schael Corwin, Safana. I believe our business here is concluded, Corwin. ~ #61022 */ GOTO 196
END

IF ~~ THEN BEGIN 194 // from: 193.1 193.0
  SAY @463 /* ~Good to meet you, Safana. I look forward to working together. ~ #61023 */
  IF ~~ THEN EXTERN ~BDSAFANJ~ 242
END

IF ~~ THEN BEGIN 195 // from:
  SAY @464 /* ~Are you ready to move on, <CHARNAME>? ~ #61025 */
  IF ~~ THEN REPLY @465 /* ~I am. ~ #61026 */ GOTO 196
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @466 /* ~No, not yet. I would spend a little more time in the Elfsong yet. ~ #61027 */ EXTERN ~BDDYNAHJ~ 139
  IF ~  !IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY @466 /* ~No, not yet. I would spend a little more time in the Elfsong yet. ~ #61027 */ GOTO 197
  IF ~~ THEN REPLY @467 /* ~I'd not be standing here otherwise. ~ #61028 */ GOTO 196
END

IF ~~ THEN BEGIN 196 // from: 195.3 195.0 193.2
  SAY @468 /* ~Then let's go. Stay close to me, Safana. The streets aren't safe for anyone, especially not a woman of your beauty. ~ #61029 */
  IF ~~ THEN EXTERN ~BDSAFANJ~ 243
END

IF ~~ THEN BEGIN 197 // from: 195.2
  SAY @469 /* ~If you insist. I'll await you here. ~ #61032 */
  IF ~~ THEN DO ~SetGlobal("BD_CORWIN_SAFANA_COMMENTS","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 198 // from:
  SAY @470 /* ~Apparently, <PRO_HESHE> can't. When you do, <CHARNAME>, let me know. I'm not going anywhere, apparently. ~ #61033 */
  IF ~~ THEN DO ~SetGlobal("BD_CORWIN_SAFANA_COMMENTS","GLOBAL",1)
~ EXIT
END

IF WEIGHT #33 ~  AreaCheck("BD0109")
NumTimesTalkedTo(0)
~ THEN BEGIN 199 // from:
  SAY @471 /* ~Elfsong Tavern. Little pretentious for my taste. I'll wait for you here.~ [BD34428] #34428 */
  IF ~~ THEN REPLY @69 /* ~As you wish.~ #52726 */ GOTO 200
  IF ~~ THEN REPLY @472 /* ~Who am I here to find, again?~ #52727 */ DO ~SetGlobal("bd_garrick_info_journal","BD0109",1)
~ GOTO 202
  IF ~~ THEN REPLY @473 /* ~You're not much of a bodyguard, are you?~ #52728 */ GOTO 201
END

IF ~~ THEN BEGIN 200 // from: 207.0 206.0 203.0 199.0
  SAY @474 /* ~Call if you need me.~ #52729 */
  IF ~~ THEN EXIT
  IF ~  Global("bd_garrick_info_journal","BD0109",1)
~ THEN DO ~AddJournalEntry(61619,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 201 // from: 199.2
  SAY @475 /* ~I was told to get you where you wanted to go and I have. What you do now is your own business. If you need me, you know where to find me.~ #52730 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 202 // from: 199.1
  SAY @476 /* ~A bard named Garrick. Though why a bard would spend time here is beyond me. House rules discourage singing—at least by those of Garrick's ilk.~ #52731 */
  IF ~~ THEN GOTO 203
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY @477 /* ~There's also Safana and Coran, a pair of unsavory characters staying upstairs Belt thinks might be of use. Why he'd think that, I don't know, but it's not my place to argue with a Grand Duke.~ #52732 */
  IF ~~ THEN GOTO 200
END

IF WEIGHT #34 ~  AreaCheck("BD0109")
NumTimesTalkedToGT(0)
~ THEN BEGIN 204 // from:
  SAY @478 /* ~Done?~ #52733 */
  IF ~~ THEN REPLY @479 /* ~Done.~ #34430 */ GOTO 205
  IF ~  Global("BD_Spoken_Garrick","GLOBAL",1)
Global("BD_Spoken_Safana","GLOBAL",1)
~ THEN REPLY @480 /* ~I believe so. Garrick and Coran were unable to join me. I spoke to Safana upstairs.~ #34431 */ GOTO 208
  IF ~  !Global("BD_Spoken_Garrick","GLOBAL",1)
~ THEN REPLY @481 /* ~Who am I looking for here again? A bard, was it?~ #52739 */ GOTO 206
  IF ~  Global("BD_Spoken_Safana","GLOBAL",0)
~ THEN REPLY @482 /* ~Who exactly am I supposed to find here? A couple of thieves, is that right?~ #52740 */ GOTO 207
  IF ~~ THEN REPLY @483 /* ~Not quite yet. This place looks like it might yet provide some entertainment.~ #34432 */ GOTO 208
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY @484 /* ~Let's go.~ #52734 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 206 // from: 204.2
  SAY @485 /* ~Garrick. A pretty boy with an empty head, I've heard. Which would explain what he's doing in a place where he won't be allowed to perform.~ #52735 */
  IF ~~ THEN GOTO 200
END

IF ~~ THEN BEGIN 207 // from: 204.3
  SAY @486 /* ~Aye, a pair of cutpurses named Safana and Coran.~ #52736 */
  IF ~~ THEN GOTO 200
END

IF ~~ THEN BEGIN 208 // from: 204.4 204.1
  SAY @487 /* ~Well, when you are ready to go, just head out. I'll follow you.~ #52737 */
  IF ~~ THEN EXIT
END

IF WEIGHT #35 ~  AreaCheck("BD0104")
NumTimesTalkedTo(0)
Global("chapter","global",7)
~ THEN BEGIN 209 // from:
  SAY @488 /* ~Head down the hall, and keep on going through the central chamber into the wing opposite this one. Or just follow the ranting. Either one'll get you to the maniac. I'll wait for you here.~ #34538 */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Safana")
Gender(Player1,MALE)
~ THEN EXTERN ~BDSAFANJ~ 12
  IF ~  IsValidForPartyDialogue("Safana")
Gender(Player1,FEMALE)
~ THEN EXTERN ~BDSAFANJ~ 11
END

IF WEIGHT #36 ~  AreaCheck("BD0104")
NumTimesTalkedToGT(0)
Global("chapter","global",7)
~ THEN BEGIN 210 // from:
  SAY @489 /* ~Talk to the madman yet?~ #52767 */
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",1)
~ THEN REPLY @490 /* ~That's one way to put it.~ #52768 */ GOTO 211
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",1)
~ THEN REPLY @491 /* ~Less "talked" than "got bellowed at by."~ #52769 */ GOTO 216
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",1)
~ THEN REPLY @492 /* ~Yes. But I'd like to poke around here a bit more, if that's all right.~ #52770 */ GOTO 212
  IF ~~ THEN REPLY @493 /* ~I believe we're done here.~ #52771 */ GOTO 214
  IF ~  Global("BD_Spoken_Tiax","GLOBAL",0)
~ THEN REPLY @494 /* ~No, not yet.~ #52772 */ GOTO 215
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY @495 /* ~I won't ask. Don't need to—I could hear most of it from here. Shall we go?~ #52773 */
  IF ~~ THEN REPLY @496 /* ~Let's. The sooner I put this place behind me, the better.~ #52774 */ GOTO 213
  IF ~~ THEN REPLY @497 /* ~I'd like to look around here a bit more, if that's all right.~ #52775 */ GOTO 212
  IF ~~ THEN REPLY @498 /* ~Not quite yet.~ #52776 */ GOTO 215
END

IF ~~ THEN BEGIN 212 // from: 216.1 211.1 210.2
  SAY @499 /* ~You're an odd duck, <CHARNAME>. But suit yourself. I'll follow you out once you're done here.~ #52777 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 213 // from: 211.0
  SAY @500 /* ~It's no Ducal Palace, is it? Let's go.~ #52778 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 214 // from: 216.0 210.3
  SAY @484 /* ~Let's go.~ #52779 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 215 // from: 216.2 211.2 210.4
  SAY @501 /* ~Well, do what you're going to do. We've more useful places than this to be.~ #52780 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 216 // from: 210.1
  SAY @502 /* ~Yeah, I heard most of it. You ready to go?~ #52781 */
  IF ~~ THEN REPLY @503 /* ~I'm finished here.~ #52782 */ GOTO 214
  IF ~~ THEN REPLY @504 /* ~I'm going to poke around here a bit more first.~ #52783 */ GOTO 212
  IF ~~ THEN REPLY @498 /* ~Not quite yet.~ #52784 */ GOTO 215
END

IF WEIGHT #37 ~  AreaCheck("BD0111")
NumTimesTalkedTo(0)
~ THEN BEGIN 217 // from:
  SAY @505 /* ~The Iron Throne building doesn't look the same as the last time you were here, does it? The Council's using it to house refugees fleeing the crusade.~ [BD34573] #34573 */
  IF ~~ THEN REPLY @506 /* ~A noble gesture. ~ #52790 */ GOTO 218
  IF ~~ THEN REPLY @507 /* ~What am I looking for here?~ #52791 */ GOTO 220
  IF ~~ THEN REPLY @508 /* ~A waste of resources better spent preparing for battle with Caelar. ~ #52792 */ GOTO 221
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY @509 /* ~The Grand Dukes thought so. The day-to-day operations are handled by priests and monks of different faiths.~ #52793 */
  IF ~~ THEN GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 221.0 220.0 218.0
  SAY @510 /* ~I'll be here if you need me. Try not to get into any trouble. ~ #52794 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 220 // from: 217.1
  SAY @511 /* ~A Selûnite monk named Rasaad yn Bashir. He's helping care for the refugees.~ #52795 */
  IF ~~ THEN GOTO 219
END

IF ~~ THEN BEGIN 221 // from: 217.2
  SAY @512 /* ~The streets are crowded enough. If refugees staying here makes it easier for the Fist out there... well, this building has been put to worse uses.~ #52796 */
  IF ~~ THEN GOTO 219
END

IF WEIGHT #38 ~  AreaCheck("BD0111")
NumTimesTalkedToGT(0)
~ THEN BEGIN 222 // from:
  SAY @513 /* ~Done what you came to do? ~ #52797 */
  IF ~  GlobalGT("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @514 /* ~The monk has other things on his mind right now. He won't be joining us.~ #52798 */ GOTO 223
  IF ~  GlobalGT("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @515 /* ~Yes, but bide a time. I wish to see more of this place. ~ #52800 */ GOTO 224
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @516 /* ~Bide a time. I would see more of this place. ~ #52801 */ GOTO 224
  IF ~  Global("BD_Spoken_Rasaad","GLOBAL",0)
~ THEN REPLY @517 /* ~No, not yet. ~ #52802 */ GOTO 226
  IF ~~ THEN REPLY @518 /* ~I'm finished here. ~ #52803 */ GOTO 225
END

IF ~~ THEN BEGIN 223 // from: 222.0
  SAY @519 /* ~Sometimes things go your way, sometimes they don't. Such is life. ~ #52804 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 224 // from: 222.2 222.1
  SAY @520 /* ~Must be a lot of memories here for you. Take your time. If you need me, you know where to find me. ~ #52805 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 225 // from: 222.4
  SAY @521 /* ~Let's go. ~ #52806 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 226 // from: 222.3
  SAY @522 /* ~Take your time. It's not like I've a military expedition to coordinate or anything.~ #52807 */
  IF ~~ THEN EXIT
END

IF WEIGHT #39 ~  AreaCheck("BD0102")
Global("BD_CORWIN_GOODNIGHT","BD0102",0)
GlobalGT("BD_LEFT_THE_PALACE","GLOBAL",0)
~ THEN BEGIN 227 // from:
  SAY @523 /* ~Have you completed your preparations? Once we start marching north, there'll be no coming back to the city.~ #66836 */
  IF ~~ THEN REPLY @524 /* ~Yes. I'm ready to begin the march to Dragonspear.~ #66837 */ GOTO 228
  IF ~~ THEN REPLY @525 /* ~I need a few more things. I'm going to head out into the city.~ #66838 */ GOTO 229
  IF ~~ THEN REPLY @526 /* ~I'm not sure. I need to think about it.~ #66839 */ GOTO 229
END

IF ~~ THEN BEGIN 228 // from: 227.0
  SAY @527 /* ~All right, <CHARNAME>. I'll see you on the morrow. Word is your friend Imoen's mostly recovered from the crusader poison, if you want to speak with her. Just remember, once you go up to your room, I'll leave to begin preparing for the journey. You won't get another chance to head out into the city.~ [BD56199] #56199 */
  IF ~~ THEN DO ~SetGlobal("BD_plot","global",54)
SetGlobal("BD_CORWIN_GOODNIGHT","BD0102",1)
AddJournalEntry(66840,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 229 // from: 227.2 227.1
  SAY @528 /* ~All right. I'll be up a while yet—if you decide to go into the city, I'll join you. When you've done all you need to, go upstairs to your quarters and get some rest. We'll leave when you awake.~ #56204 */
  IF ~~ THEN DO ~SetGlobal("BD_plot","global",52)
~ EXIT
END

IF WEIGHT #40 ~  AreaCheck("BD0102")
Global("BD_CORWIN_GOODNIGHT","BD0102",1)
~ THEN BEGIN 230 // from:
  SAY @529 /* ~What do you need?~ #56206 */
  IF ~  GlobalGT("BD_LEFT_THE_PALACE","GLOBAL",1)
~ THEN REPLY @530 /* ~I'm heading back out.~ #56207 */ GOTO 232
  IF ~~ THEN REPLY @531 /* ~Not a thing. I'm fine. How are you doing?~ #56208 */ GOTO 235
  IF ~~ THEN REPLY @532 /* ~I'm going to get some rest.~ #56209 */ GOTO 231
  IF ~  GlobalGT("BD_LEFT_THE_PALACE","GLOBAL",1)
~ THEN REPLY @533 /* ~I need nothing from you, but I gather your precious Grand Dukes would probably be displeased were I to venture out unescorted.~ #56210 */ GOTO 232
  IF ~~ THEN REPLY @534 /* ~Right now, I need nothing.~ #56211 */ GOTO 236
END

IF ~~ THEN BEGIN 231 // from: 230.2
  SAY @535 /* ~Get some for me too. I'm going to be up all night getting things ready for the journey north, I can tell already. We'll be ready to leave the moment you wake up, so don't go up to your room until you're ready to leave the city.~ #56212 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 232 // from: 230.3 230.0
  SAY @536 /* ~You want to go out again? Why?~ #56213 */
  IF ~~ THEN REPLY @537 /* ~It's my last <DAYNIGHTALL> in Baldur's Gate for the immediate future, possibly forever. I would enjoy the city's sights, smells, and textures while I may. They'll be something to hold onto as we journey north.~ #56214 */ GOTO 233
  IF ~~ THEN REPLY @538 /* ~I feel like I missed something last time.~ #56215 */ GOTO 237
  IF ~~ THEN REPLY @539 /* ~You don't get to question me, Captain Corwin; you follow me, nothing more.~ #56216 */ GOTO 234
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY @540 /* ~I suppose I can understand that. I'll follow you out.~ #56217 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 234 // from: 232.2
  SAY @541 /* ~All right. If that's how you want this to be, that's how it'll be. I'll follow you out.~ #56218 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 235 // from: 230.1
  SAY @542 /* ~Well enough that the caravan will be ready when needed, not so well that I have time to spare chatting. Get some rest, <CHARNAME>. We leave the moment you awaken—if you've business left in the city, attend to it now.~ #56219 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 236 // from: 230.4
  SAY @543 /* ~Then do me a favor and stay out of my way. I've got a lot of work to do and not a lot of night left to do it in.~ #56220 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 237 // from: 232.1
  SAY @544 /* ~This will be your last night in the city, so you'd better make certain you've accomplished everything you want to. I'll follow you out.~ #56221 */
  IF ~~ THEN EXIT
END

IF WEIGHT #41 ~  False()
AreaCheck("bd0101")
GlobalLT("BD_plot","global",57)
~ THEN BEGIN 238 // from:
  SAY @545 /* ~So. Are you ready for this?~ #35374 */
  IF ~~ THEN REPLY @546 /* ~As ready as I can be. ~ #35375 */ DO ~SetGlobal("BD_plot","global",57)
~ GOTO 239
  IF ~~ THEN REPLY @547 /* ~No. You? ~ #35376 */ DO ~SetGlobal("BD_plot","global",57)
~ GOTO 240
  IF ~~ THEN REPLY @548 /* ~More than ready. ~ #35377 */ DO ~SetGlobal("BD_plot","global",57)
~ GOTO 241
END

IF ~~ THEN BEGIN 239 // from: 238.0
  SAY @549 /* ~Way to inspire confidence. ~ #35378 */
  IF ~~ THEN GOTO 242
END

IF ~~ THEN BEGIN 240 // from: 238.1
  SAY @550 /* ~I'll be ready when it counts. ~ #35379 */
  IF ~~ THEN GOTO 242
END

IF ~~ THEN BEGIN 241 // from: 238.2
  SAY @551 /* ~Heh. We'll see how long that lasts.~ #40876 */
  IF ~~ THEN GOTO 242
END

IF ~~ THEN BEGIN 242 // from: 241.0 240.0 239.0
  SAY @552 /* ~If you find you're short on anything, the half-elf by that carriage there is Quartermaster Belegarm. He'll help you out.~ #35381 */
  IF ~~ THEN GOTO 243
  IF ~  PartyGoldLT(500)
~ THEN GOTO 244
END

IF ~~ THEN BEGIN 243 // from: 244.0 242.0
  SAY @553 /* ~When you're ready to move out, speak to me.~ #35382 */
  IF ~~ THEN DO ~SetGlobal("bd_rohma_banter","bd0101",1)
AddJournalEntry(59632,QUEST)
MoveToPointNoInterrupt([865.625])
~ EXIT
END

IF ~~ THEN BEGIN 244 // from: 242.1
  SAY @554 /* ~Here's a few hundred gold to help you get what you need. Don't say Duke Eltan's never done anything for you.~ #40877 */
  IF ~~ THEN DO ~SetGlobalRandomPlus("random_gold","locals",1,500,0)
IncrementGlobal("random_gold","locals",300)
GivePartyGoldGlobal("random_gold","locals")
SetGlobal("bd_belegarm_plot","bd0101",1)
~ GOTO 243
END

IF WEIGHT #42 ~  Global("BD_plot","global",57)
GlobalGT("bd_rohma_banter","bd0101",6)
~ THEN BEGIN 245 // from:
  SAY @555 /* ~<CHARNAME>, there you are. The caravan's at the palace gate. We're ready to head to Dragonspear if you are.~ [BD35383] #35383 */
  IF ~~ THEN REPLY @556 /* ~Ready. ~ #35384 */ GOTO 247
  IF ~~ THEN REPLY @557 /* ~I'll never be ready. But it's time to go regardless.~ #35385 */ GOTO 247
  IF ~~ THEN REPLY @558 /* ~Not quite yet. ~ #35386 */ GOTO 246
END

IF ~~ THEN BEGIN 246 // from: 265.2 261.1 245.2
  SAY @559 /* ~As you wish.~ [BD35387] #35387 */
  IF ~~ THEN DO ~AddJournalEntry(67329,QUEST)
AddJournalEntry(59628,INFO)
~ EXIT
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN DO ~AddJournalEntry(67329,QUEST)
AddJournalEntry(59629,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 247 // from: 266.0 265.0 261.0 245.1 245.0
  SAY @560 /* ~Let's go! ~ #35552 */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",60)
SetGlobal("bd_no_retreat","locals",1)
AddJournalEntry(59633,QUEST_DONE)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("bdcut08",FALSE)
~ EXIT
END

IF WEIGHT #43 ~  GlobalLT("bd_rohma_banter","bd0101",7)
~ THEN BEGIN 248 // from:
  SAY @561 /* ~I'm going to miss you so much, Rohma.~ #60729 */
  IF ~~ THEN EXTERN ~BDROHMA~ 0
END

IF ~~ THEN BEGIN 249 // from:
  SAY @562 /* ~Give me a moment, <CHARNAME>?~ [BD35418] #35418 */
  IF ~~ THEN GOTO 264
END

IF ~~ THEN BEGIN 250 // from:
  SAY @563 /* ~<CHARNAME>, this is my daughter, Rohma. Rohma, this is <CHARNAME>.~ [BD35421] #35421 */
  IF ~~ THEN EXTERN ~BDROHMA~ 3
END

IF ~~ THEN BEGIN 251 // from:
  SAY @564 /* ~They'll do what they have to.~ [BD35426] #35426 */
  IF ~~ THEN EXTERN ~BDROHMA~ 4
END

IF ~~ THEN BEGIN 252 // from:
  SAY @565 /* ~Exactly like that.~ [BD35428] #35428 */
  IF ~~ THEN REPLY @566 /* ~Have no fear, Rohma. I'll make sure nothing happens to your mother.~ #35429 */ EXTERN ~BDROHMA~ 5
  IF ~~ THEN REPLY @567 /* ~Your mother's a tough lady. You're lucky to have her.~ #35430 */ EXTERN ~BDROHMA~ 13
  IF ~~ THEN REPLY @568 /* ~I'm going to go... anywhere else, while you finish up with... her. ~ #35431 */ GOTO 263
END

IF ~~ THEN BEGIN 253 // from:
  SAY @569 /* ~That's right. Now give me a hug, Rohma, and go to your grandfather. Mama's got to get going.~ [BD35433] #35433 */
  IF ~~ THEN DO ~AddJournalEntry(67329,QUEST)
AddJournalEntry(59628,INFO)
~ EXIT
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN DO ~AddJournalEntry(67329,QUEST)
AddJournalEntry(59629,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 254 // from:
  SAY @570 /* ~What they're saying is, they'll do what they have to.~ [BD35435] #35435 */
  IF ~~ THEN EXTERN ~BDROHMA~ 4
END

IF ~~ THEN BEGIN 255 // from:
  SAY @571 /* ~Just one. Feels like more than that sometimes.~ [BD35436] #35436 */
  IF ~~ THEN EXTERN ~BDROHMA~ 7
END

IF ~~ THEN BEGIN 256 // from:
  SAY @572 /* ~Well, you smell <CHARNAME> here? That's nauseating.~ [BD35441] #35441 */
  IF ~~ THEN REPLY @573 /* ~You're handier with a bow than a quip, Captain. In future, I'd leave the insults to those who are good at them.~ #35442 */ GOTO 262
  IF ~~ THEN REPLY @574 /* ~Well, now you're just TRYING to hurt my feelings...~ #35443 */ GOTO 257
  IF ~~ THEN REPLY @575 /* ~Yes. MOST amusing. ~ #35444 */ EXTERN ~BDROHMA~ 9
END

IF ~~ THEN BEGIN 257 // from: 256.1
  SAY @576 /* ~Not at all. That would imply some sort of effort on my part.~ [BD35448] #35448 */
  IF ~~ THEN EXTERN ~BDROHMA~ 11
END

IF ~~ THEN BEGIN 258 // from:
  SAY @577 /* ~No, They'll be NOTHING like that.~ [BD35450] #35450 */
  IF ~~ THEN EXTERN ~BDROHMA~ 12
END

IF ~~ THEN BEGIN 259 // from:
  SAY @578 /* ~I have to work, Rohma. You and Grampa need to eat.~ [BD35453] #35453 */
  IF ~~ THEN EXTERN ~BDROHMA~ 14
END

IF ~~ THEN BEGIN 260 // from:
  SAY @579 /* ~I know. I miss you too. Now give me a hug and go to your grandfather.~ [BD70128] #70128 */
  IF ~~ THEN GOTO 261
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY @580 /* ~<CHARNAME>, are you ready to leave the city?~ [BD35456] #35456 */
  IF ~~ THEN REPLY @581 /* ~I'm ready.~ #66761 */ GOTO 247
  IF ~~ THEN REPLY @582 /* ~I need to finish up a few things first.~ #66762 */ GOTO 246
END

IF ~~ THEN BEGIN 262 // from: 256.0
  SAY @583 /* ~Sorry, <CHARNAME>. You live with a five-year-old, sometimes you think like a five-year-old.~ [BD35457] #35457 */
  IF ~~ THEN EXTERN ~BDROHMA~ 10
END

IF ~~ THEN BEGIN 263 // from: 252.2
  SAY @584 /* ~All right. I'll be along in a moment.~ [BD35458] #35458 */
  IF ~~ THEN GOTO 264
END

IF ~~ THEN BEGIN 264 // from: 263.0 249.0
  SAY @585 /* ~You do what your grampa says while I'm gone, all right?~ [BD35459] #35459 */
  IF ~~ THEN EXTERN ~BDROHMA~ 15
END

IF ~~ THEN BEGIN 265 // from:
  SAY @586 /* ~Good. I love you, Rohma. <CHARNAME>, are you ready to leave?~ [BD35462] #35462 */
  IF ~~ THEN REPLY @581 /* ~I'm ready.~ #66763 */ GOTO 247
  IF ~~ THEN REPLY @587 /* ~Are you? Or have you more spawn to see us off?~ #66764 */ GOTO 266
  IF ~~ THEN REPLY @582 /* ~I need to finish up a few things first.~ #66765 */ GOTO 246
END

IF ~~ THEN BEGIN 266 // from: 265.1
  SAY @588 /* ~There's just the one of mine, but I'm sure we could find some street urchins to play with you if you'd like. No? Very well, then.~ [BD66766] #66766 */
  IF ~~ THEN GOTO 247
END

IF ~~ THEN BEGIN 267 // from:
  SAY @589 /* ~You question the hero of Baldur's Gate?~ #35559 */
  IF ~~ THEN REPLY @590 /* ~I can handle this, Captain Corwin.~ #35560 */ DO ~SetGlobal("bd_plot","global",61)
~ GOTO 268
  IF ~~ THEN REPLY @591 /* ~Ignore them, Corwin.~ #52705 */ DO ~ClearAllActions()
SetGlobal("bd_plot","global",62)
SetCutSceneLite(TRUE)
StartCutSceneEx("bdcut09b",FALSE)
~ EXIT
  IF ~~ THEN REPLY @592 /* ~They do. And I shall answer them.~ #35561 */ DO ~SetGlobal("bd_plot","global",61)
~ GOTO 268
END

IF ~~ THEN BEGIN 268 // from: 267.2 267.0
  SAY @593 /* ~That's a bad idea.~ #35562 */
  IF ~~ THEN REPLY @594 /* ~HEAR ME, people of Baldur's Gate! I know you suffered at Sarevok's hands! I know you fear what the future holds, with the heretic Caelar driving good people from their homes across the Sword Coast. I hear your cries for justice, and I swear to you, I shall end this threat to us all!~ #35563 */ DO ~SetGlobal("bd_hero","global",1)
~ GOTO 269
  IF ~~ THEN REPLY @595 /* ~You're probably right.~ #35564 */ DO ~ClearAllActions()
SetGlobal("bd_plot","global",62)
SetCutSceneLite(TRUE)
StartCutSceneEx("bdcut09b",FALSE)
~ EXIT
  IF ~~ THEN REPLY @596 /* ~HEAR ME, people of Baldur's Gate! I AM a Bhaalspawn, like my half-brother Sarevok before me. And I am your only shield against what comes, your only sword. Only one with the divine coursing through their veins could hope to thwart the child of a god, and only one can end the threat of Caelar Argent! Now stand aside, lest you feel my wrath!~ #35565 */ DO ~SetGlobal("bd_not_hero","global",1)
SetGlobal("bd_plot","global",63)
~ GOTO 270
END

IF ~~ THEN BEGIN 269 // from: 268.0
  SAY @597 /* ~Well done. Let's be on our way before some other wind turns the crowd against us.~ #35568 */
  IF ~~ THEN DO ~ClearAllActions()
SetCutSceneLite(TRUE)
StartCutSceneEx("bdcut09b",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 270 // from: 268.2
  SAY @598 /* ~Damn it, <CHARNAME>! What was that supposed to accomplish? ~ #35571 */
  IF ~~ THEN REPLY @599 /* ~Should I feed them lies like Caelar?~ #35572 */ GOTO 271
  IF ~~ THEN REPLY @600 /* ~It seemed like a good idea at the time... ~ #35573 */ GOTO 273
  IF ~~ THEN REPLY @601 /* ~They are afraid. Best they fear me more than anything else.~ #35574 */ GOTO 272
END

IF ~~ THEN BEGIN 271 // from: 270.0
  SAY @602 /* ~There is truth in that, I suppose. And you promise a better fate than Caelar does.~ #35575 */
  IF ~~ THEN DO ~ClearAllActions()
SetCutSceneLite(TRUE)
StartCutSceneEx("bdcut09b",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 272 // from: 270.2
  SAY @603 /* ~This lot may cower now, but tread carefully. Fear makes people unpredictable, and unpredictable people are dangerous.~ #35576 */
  IF ~~ THEN DO ~ClearAllActions()
SetCutSceneLite(TRUE)
StartCutSceneEx("bdcut09b",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 273 // from: 270.1
  SAY @604 /* ~Do us both a favor—try not to have any more good ideas, all right?~ #35577 */
  IF ~~ THEN DO ~ClearAllActions()
SetCutSceneLite(TRUE)
StartCutSceneEx("bdcut09b",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 274 // from:
  SAY @605 /* ~You aren't going to let them beat these kids, are you, <CHARNAME>? ~ #61058 */
  IF ~  CheckStatGT(Player1,15,STR)
~ THEN REPLY @606 /* ~Of course not. Begone, you sadistic lackwits! You've had your fun, now it's over. ~ #61059 */ EXTERN ~BDFFMAD1~ 4
  IF ~  CheckStatLT(Player1,16,STR)
~ THEN REPLY @606 /* ~Of course not. Begone, you sadistic lackwits! You've had your fun, now it's over. ~ #61059 */ EXTERN ~BDFFMAD2~ 2
  IF ~~ THEN REPLY @607 /* ~That's precisely what I intend to do. ~ #61060 */ EXTERN ~BDFFMAD1~ 2
  IF ~~ THEN REPLY @608 /* ~If I had more time to spare, I'd help them beat the spoilt brats. ~ #61061 */ EXTERN ~BDFFMAD1~ 2
END

IF ~~ THEN BEGIN 275 // from:
  SAY @609 /* ~If you're smart, you're the one who'll start showing respect. The hero of Baldur's Gate is talking to you. And I'll be doing more than talk if you don't keep a civil tongue. ~ #61152 */
  IF ~~ THEN EXTERN ~BDRIGGS~ 14
END

IF ~~ THEN BEGIN 276 // from:
  SAY @610 /* ~And the Flaming Fist serves the people. Return what you've stolen and I may not speak to your commanding officer about this breach of the public trust. ~ #61173 */
  IF ~~ THEN DO ~SetGlobal("BD_CORWIN_RIGGS_ASSISTANCE","BD0050",1)
~ EXTERN ~BDRIGGS~ 19
END
