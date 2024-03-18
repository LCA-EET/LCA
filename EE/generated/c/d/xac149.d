// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDLEOPAS.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDLEOPAS.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC149~

IF ~  Global("bd_trial_plot","bd4000",0)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~All right, listen up. You all know we've got a problem here. I don't like problems, and I'm not going to let this one interfere with our duties any more than it has already. Valis here has accused Corinth of crimes against the Lady.~ [BD47458] #47458 */
  IF ~~ THEN EXTERN ~XAC152~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Who the hell are you?~ #47468 */
  IF ~~ THEN REPLY @3 /* ~A lowly servant of Caelar, as are we all. It seemed to me you could perhaps use a little assistance in resolving the issue at hand.~ #47469 */ GOTO 5
  IF ~  IsValidForPartyDialogue("Safana")
~ THEN REPLY @4 /* ~I am <CHARNAME>, hero of Baldur's Gate.~ #47470 */ EXTERN ~BDSAFANJ~ 66
  IF ~  !IsValidForPartyDialogue("Safana")
~ THEN REPLY @4 /* ~I am <CHARNAME>, hero of Baldur's Gate.~ #47470 */ GOTO 7
  IF ~~ THEN REPLY @5 /* ~A neutral party. Seems like you might be able to use one.~ #47471 */ GOTO 5
  IF ~  IsValidForPartyDialogue("Glint")
Gender(Player1,MALE)
CheckStatLT(Player1,10,INT)
~ THEN REPLY @6 /* ~You don't recognize Hephernaan, vizier of Caelar? Are our soldiers truly this stupid?~ #47472 */ EXTERN ~BDGLINTJ~ 60
  IF ~  IsValidForPartyDialogue("Glint")
Gender(Player1,FEMALE)
CheckStatLT(Player1,8,INT)
~ THEN REPLY @6 /* ~You don't recognize Hephernaan, vizier of Caelar? Are our soldiers truly this stupid?~ #47472 */ EXTERN ~BDGLINTJ~ 60
  IF ~  !IsValidForPartyDialogue("Glint")
Gender(Player1,MALE)
CheckStatLT(Player1,10,INT)
~ THEN REPLY @6 /* ~You don't recognize Hephernaan, vizier of Caelar? Are our soldiers truly this stupid?~ #47472 */ GOTO 6
  IF ~  !IsValidForPartyDialogue("Glint")
Gender(Player1,FEMALE)
CheckStatLT(Player1,8,INT)
~ THEN REPLY @6 /* ~You don't recognize Hephernaan, vizier of Caelar? Are our soldiers truly this stupid?~ #47472 */ GOTO 6
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN REPLY @7 /* ~Who am I? I'm closer to Caelar than you are, I'll tell you that much. Watch your tone.~ #47473 */ EXTERN ~BDDORNJ~ 15
  IF ~  !IsValidForPartyDialogue("Dorn")
CheckStatGT(Player1,13,STR)
~ THEN REPLY @7 /* ~Who am I? I'm closer to Caelar than you are, I'll tell you that much. Watch your tone.~ #47473 */ GOTO 3
  IF ~  !IsValidForPartyDialogue("Dorn")
CheckStatLT(Player1,14,STR)
~ THEN REPLY @7 /* ~Who am I? I'm closer to Caelar than you are, I'll tell you that much. Watch your tone.~ #47473 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.10
  SAY @8 /* ~Close to Caelar, you say? If it's true, you surely have more important things to attend to than a minor squabble in the lower ranks. I suggest you be about it. Now.~ #47477 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.9
  SAY @9 /* ~Forgive me, <PRO_SIRMAAM>. I didn't realize.~ #47478 */
  IF ~  IsValidForPartyDialogue("Safana")
~ THEN REPLY @10 /* ~What's going on here?~ #47479 */ EXTERN ~BDSAFANJ~ 67
  IF ~  !IsValidForPartyDialogue("Safana")
~ THEN REPLY @10 /* ~What's going on here?~ #47479 */ GOTO 4
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN REPLY @11 /* ~Water under the bridge, my good man. Think nothing of it. So what's the situation here?~ #47480 */ EXTERN ~BDEDWINJ~ 62
  IF ~  !IsValidForPartyDialogue("Edwin")
~ THEN REPLY @11 /* ~Water under the bridge, my good man. Think nothing of it. So what's the situation here?~ #47480 */ GOTO 4
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN REPLY @12 /* ~You didn't think. Now tell me: What in the Nine Hells is going on here?~ #47481 */ EXTERN ~BDVICONJ~ 15
  IF ~  !IsValidForPartyDialogue("Viconia")
~ THEN REPLY @12 /* ~You didn't think. Now tell me: What in the Nine Hells is going on here?~ #47481 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.5 3.3 3.1
  SAY @13 /* ~I'll let those involved speak for themselves. Valis. Tell us a story.~ #47485 */
  IF ~~ THEN EXTERN ~XAC153~ 1
END

IF ~~ THEN BEGIN 5 // from: 1.3 1.0
  SAY @14 /* ~Perhaps we could at that. I'll let those involved speak for themselves. Valis. Tell us a story.~ #47486 */
  IF ~~ THEN EXTERN ~XAC153~ 1
END

IF ~~ THEN BEGIN 6 // from: 1.7 1.6
  SAY @15 /* ~I would recognize Revered Brother Hephernaan easily enough, stranger. I see nothing of him in you. Someone, please, kill this idiot.~ #47487 */
  IF ~~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",6)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY @16 /* ~Well, of course the hero of Baldur's Gate would wander into our camp. Why wouldn't <PRO_HESHE>? Someone, please, kill this idiot.~ #47489 */
  IF ~~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",6)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY @17 /* ~Hold, Valis! Whether Corinth is guilty or not, I won't have my people striking one another down.~ #47500 */
  IF ~~ THEN REPLY @18 /* ~I believe I can help you. Let me speak with your followers. I will find the truth.~ #47501 */ GOTO 10
  IF ~~ THEN REPLY @19 /* ~ 'Tis a thorny situation, to be sure. Perhaps I can help. Let me talk with them individually and see if I can determine the truth of the matter.~ #47502 */ GOTO 10
  IF ~~ THEN REPLY @20 /* ~One of your soldiers accuses another of treachery. Let them resolve it as soldiers do. Trial by combat.~ #47503 */ GOTO 9
  IF ~~ THEN REPLY @21 /* ~I don't see how I can help here. Good luck resolving the situation.~ #62573 */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 11.2 8.2
  SAY @22 /* ~A distasteful practice, but perhaps the most efficient option available to us. So be it. Valis, Corinth—settle this.~ #47504 */
  IF ~~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",7)
ActionOverride("bdcorint",DialogueInterrupt(FALSE))
ActionOverride("bdvalis",DialogueInterrupt(FALSE))
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 11.0 8.1 8.0
  SAY @23 /* ~I'm happy not to have to deal with this nonsense. Talk to Valis and Corinth, and their colleagues round the camp. Ravoc, Delton, and Damarr have all voiced an opinion. Once you gather the evidence, let me know your conclusions.~ [BD47508] #47508 */
  IF ~~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",1)
ActionOverride("bdvalis",SaveLocation("LOCALS","bd_default_loc",[1455.2420]))
ActionOverride("bddelton",SaveLocation("LOCALS","bd_default_loc",[1340.2205]))
ActionOverride("bdravoc",SaveLocation("LOCALS","bd_default_loc",[1145.1965]))
ActionOverride("bdcorint",SaveLocation("LOCALS","bd_default_loc",[950.1950]))
ActionOverride("bdvalis",SetGlobal("bd_retreat","locals",1))
ActionOverride("bddelton",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdravoc",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdcorint",SetGlobal("bd_retreat","locals",1))
~ UNSOLVED_JOURNAL @24 /* ~The Trial

I should talk to Valis, Corinth, and other crusaders around the camp to determine if Corinth betrayed the crusade.

I seem to have gotten myself embroiled in a bit of intrigue in the crusaders' camp. One ranger, Valis, accuses another, Corinth, of betrayal. It falls to me to determine the truth of the matter. I should talk to Valis and Corinth as well as crusaders Ravoc, Damarr, and Delton.~ #58714 */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY @25 /* ~Have you any idea how I should deal with this?~ #47509 */
  IF ~~ THEN REPLY @19 /* ~ 'Tis a thorny situation, to be sure. Perhaps I can help. Let me talk with them individually and see if I can determine the truth of the matter.~ #47510 */ GOTO 10
  IF ~~ THEN REPLY @26 /* ~I wish I did. I don't envy you, my friend. Good luck seeing this to a satisfactory end.~ #47511 */ GOTO 12
  IF ~~ THEN REPLY @27 /* ~One of your soldiers accuses another. Let them resolve the issues as soldiers do—in combat.~ #47512 */ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 11.1 8.3
  SAY @28 /* ~I'll admit I hoped for better from you, though I know not why. Very well, it's my problem to solve and I will. Go in light.~ #47513 */
  IF ~~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",1)
ActionOverride("bdvalis",SaveLocation("LOCALS","bd_default_loc",[1455.2420]))
ActionOverride("bddelton",SaveLocation("LOCALS","bd_default_loc",[1340.2205]))
ActionOverride("bdravoc",SaveLocation("LOCALS","bd_default_loc",[1145.1965]))
ActionOverride("bdcorint",SaveLocation("LOCALS","bd_default_loc",[950.1950]))
ActionOverride("bdvalis",SetGlobal("bd_retreat","locals",1))
ActionOverride("bddelton",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdravoc",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdcorint",SetGlobal("bd_retreat","locals",1))
~ UNSOLVED_JOURNAL @24 /* ~The Trial

I should talk to Valis, Corinth, and other crusaders around the camp to determine if Corinth betrayed the crusade.

I seem to have gotten myself embroiled in a bit of intrigue in the crusaders' camp. One ranger, Valis, accuses another, Corinth, of betrayal. It falls to me to determine the truth of the matter. I should talk to Valis and Corinth as well as crusaders Ravoc, Damarr, and Delton.~ #58714 */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY @29 /* ~All right, the show's over. Get back to work, all of you.~ #47514 */
  IF ~~ THEN DO ~ActionOverride("bdvalis",EscapeAreaObject("courtyard"))
ActionOverride("bdcorint",EscapeAreaObject("crusader_camp"))
~ SOLVED_JOURNAL @30 /* ~The Trial 

I've finished with this pack of crusaders and their trial.

I found myself embroiled in some intrigue in the crusader camp. One ranger accused another of betrayal. I convinced their commander to resolve the issue via trial by combat. Now there's one less crusader between me and their Shining Lady.~ #58715 */ EXIT
END

IF ~  Global("bd_trial_plot","bd4000",8)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 14 // from:
  SAY @29 /* ~All right, the show's over. Get back to work, all of you.~ #47514 */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 15 // from:
  SAY @31 /* ~Ah, it's you. Have you reached any conclusion regarding my quarreling rangers? ~ #47517 */
  IF ~  Global("bd_trial_plot","bd4000",2)
OR(2)
GlobalGT("bd_corinth_plot","bd4000",0)
GlobalGT("bd_valis_plot","bd4000",0)
~ THEN REPLY @32 /* ~I have made a determination.~ #47518 */ GOTO 19
  IF ~  IsValidForPartyDialogue("Rasaad")
~ THEN REPLY @33 /* ~Not yet, I'm afraid.~ #47519 */ EXTERN ~BDRASAAJ~ 30
  IF ~  !IsValidForPartyDialogue("Rasaad")
~ THEN REPLY @33 /* ~Not yet, I'm afraid.~ #47519 */ GOTO 16
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN REPLY @34 /* ~Conclusion regarding who?~ #47520 */ EXTERN ~BDJAHEIJ~ 21
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN REPLY @34 /* ~Conclusion regarding who?~ #47520 */ GOTO 17
  IF ~~ THEN REPLY @35 /* ~If I had, I'd have told you.~ #47521 */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 17.4 17.2 15.5 15.2
  SAY @36 /* ~When you have some answers, let me know. I would see this dealt with sooner than later, if possible.~ #47522 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.4
  SAY @37 /* ~You were to seek out the truth of Valis's accusation of betrayal by Corinth. Don't tell me you forgot.~ #47523 */
  IF ~~ THEN REPLY @38 /* ~No, not at all. The light of truth cannot be denied.~ #47524 */ GOTO 18
  IF ~  IsValidForPartyDialogue("Glint")
~ THEN REPLY @39 /* ~Right. Find out what happened with Corinth and Valis—I'm on the job.~ #47525 */ EXTERN ~BDGLINTJ~ 61
  IF ~  !IsValidForPartyDialogue("Glint")
~ THEN REPLY @39 /* ~Right. Find out what happened with Corinth and Valis—I'm on the job.~ #47525 */ GOTO 16
  IF ~  IsValidForPartyDialogue("Rasaad")
~ THEN REPLY @40 /* ~I haven't forgotten.~ #47526 */ EXTERN ~BDRASAAJ~ 30
  IF ~  !IsValidForPartyDialogue("Rasaad")
~ THEN REPLY @40 /* ~I haven't forgotten.~ #47526 */ GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @41 /* ~If you say so. When you have some answers, let me know. I would see this dealt with sooner than later, if possible.~ #47527 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0
  SAY @42 /* ~Glad to hear it. ATTEND ME, EVERYONE! VALIS! CORINTH! Get over here!~ [BD47531] #47531 */
  IF ~~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",5)
SetCutSceneLite(TRUE)
MoveViewPoint([1060.2380],INSTANT)
ClearAllActions()
PlaySound("ALARM1")
Wait(2)
ActionOverride("bdvalis",MoveToPoint([1015.2405]))
ActionOverride("bddelton",MoveToPoint([1130.2370]))
ActionOverride("bdravoc",MoveToPoint([1080.2300]))
ActionOverride("bdcorint",MoveToPoint([980.2355]))
Wait(6)
StartDialogNoSet(Player1)
~ EXIT
END

IF ~  Global("bd_trial_plot","bd4000",5)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 20 // from:
  SAY @43 /* ~Let's hear it then. Did Corinth betray the crusade? Or is Valis bearing false witness against her fellow ranger? ~ #47849 */
  IF ~~ THEN REPLY @44 /* ~In truth, I cannot say. The available evidence points to Corinth's guilt, but it's hardly compelling enough to justify a man's death.~ #47850 */ GOTO 29
  IF ~  !Class(Player1,BARD_ALL)
~ THEN REPLY @45 /* ~Corinth did as Valis says. He warned Innisfall of our arrival, letting them evade the Shining Lady's grasp.~ #47851 */ EXTERN ~XAC152~ 21
  IF ~  !Class(Player1,BARD_ALL)
~ THEN REPLY @46 /* ~I've talked to enough people to know Valis cannot be trusted. Corinth is innocent.~ #47852 */ EXTERN ~XAC153~ 24
  IF ~  Class(Player1,BARD_ALL)
~ THEN REPLY @47 /* ~I've given this a lot of thought. Hey, who's kidding who—I've lost sleep over it. But after careful examination of the facts, it's clear to me that Corinth is innocent of the crimes Valis accuses him of.~ #47853 */ EXTERN ~XAC153~ 24
  IF ~  Class(Player1,BARD_ALL)
~ THEN REPLY @48 /* ~This hasn't been an easy task for me. Hells, who's kidding who? I've lost weight over it. But the truth is clear. Corinth betrayed his fellows at Innisfall.~ #47854 */ EXTERN ~XAC152~ 21
  IF ~  !Class(Player1,BARD_ALL)
~ THEN REPLY @49 /* ~They are both guilty.~ #47855 */ GOTO 26
  IF ~  Class(Player1,BARD_ALL)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY @50 /* ~Both are guilty. They conspired to allow the people of Innisfall to escape. It was only after Corinth threatened to expose them that Valis turned on him, doing as he would have done to her before he had the chance.~ #47856 */ GOTO 28
  IF ~  Class(Player1,BARD_ALL)
CheckStatLT(Player1,16,CHR)
~ THEN REPLY @50 /* ~Both are guilty. They conspired to allow the people of Innisfall to escape. It was only after Corinth threatened to expose them that Valis turned on him, doing as he would have done to her before he had the chance.~ #47856 */ GOTO 27
END

IF ~~ THEN BEGIN 21 // from:
  SAY @51 /* ~Kill her!~ #47858 */
  IF ~~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",10)
SetGlobal("bd_trial_kill","bd4000",1)
ChangeSpecifics("bdvalis",HOSTILES4)
ActionOverride("bdvalis",Enemy())
~ EXIT
END

IF ~  Global("bd_trial_plot","bd4000",11)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 22 // from:
  SAY @52 /* ~A regrettable but necessary end to this grim business. There is a lesson here, friends. Learn it well. I'll not tolerate traitors in our ranks. Go, reflect on what you've seen and prepare to see more of it. Soon, we will face our enemies.~ [BD47859] #47859 */
  IF ~~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",12)
AddexperienceParty(4000)
~ SOLVED_JOURNAL @53 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. I do not know if I did the right thing. I hope I did.~ #58721 */ EXIT
  IF ~  Alignment(Player1,MASK_GENEUTRAL)
~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",12)
AddexperienceParty(4000)
~ SOLVED_JOURNAL @54 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. Did I do the right thing? In truth, I care little. Though I took some enjoyment from playing the role of one, ultimately, crusaders are my enemies.~ #58722 */ EXIT
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",12)
AddexperienceParty(4000)
~ SOLVED_JOURNAL @55 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. I took no little pleasure in pitting the fools one against the other.~ #58723 */ EXIT
  IF ~  Global("bd_trial_kill","bd4000",2)
~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",12)
AddexperienceParty(4000)
~ GOTO 24
  IF ~  Global("bd_trial_kill","bd4000",1)
~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",12)
AddexperienceParty(4000)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.4
  SAY @56 /* ~You have done me and the crusade a service ferreting out Valis's lies. All that she possessed is yours now.~ #47860 */
  IF ~~ THEN SOLVED_JOURNAL @53 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. I do not know if I did the right thing. I hope I did.~ #58721 */ EXIT
  IF ~  Alignment(Player1,MASK_GENEUTRAL)
~ THEN SOLVED_JOURNAL @54 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. Did I do the right thing? In truth, I care little. Though I took some enjoyment from playing the role of one, ultimately, crusaders are my enemies.~ #58722 */ EXIT
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN SOLVED_JOURNAL @55 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. I took no little pleasure in pitting the fools one against the other.~ #58723 */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.3
  SAY @57 /* ~You have done me a service. Thank you. As a reward, all that Corinth possessed is now yours.~ #47861 */
  IF ~~ THEN DO ~ActionOverride("bdvalis",EscapeAreaObject("courtyard"))
~ SOLVED_JOURNAL @53 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. I do not know if I did the right thing. I hope I did.~ #58721 */ EXIT
  IF ~  Alignment(Player1,MASK_GENEUTRAL)
~ THEN DO ~ActionOverride("bdvalis",EscapeAreaObject("courtyard"))
~ SOLVED_JOURNAL @54 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. Did I do the right thing? In truth, I care little. Though I took some enjoyment from playing the role of one, ultimately, crusaders are my enemies.~ #58722 */ EXIT
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN DO ~ActionOverride("bdvalis",EscapeAreaObject("courtyard"))
~ SOLVED_JOURNAL @55 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. I took no little pleasure in pitting the fools one against the other.~ #58723 */ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY @58 /* ~Slay the traitor.~ #47864 */
  IF ~~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",10)
SetGlobal("bd_trial_kill","bd4000",2)
ChangeSpecifics("bdcorint",HOSTILES4)
ActionOverride("bdcorint",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.5
  SAY @59 /* ~How is this possible? Explain yourself. ~ #47865 */
  IF ~  CheckStatGT(Player1,13,INT)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY @60 /* ~They conspired together to allow the people of Innisfall to escape. Only after Corinth threatened to reveal their crime did Valis turn on him, doing as he would have done to her before he had the chance.~ #47866 */ GOTO 28
  IF ~  CheckStatGT(Player1,13,INT)
CheckStatLT(Player1,16,CHR)
~ THEN REPLY @60 /* ~They conspired together to allow the people of Innisfall to escape. Only after Corinth threatened to reveal their crime did Valis turn on him, doing as he would have done to her before he had the chance.~ #47866 */ GOTO 27
  IF ~~ THEN REPLY @61 /* ~Oh, you want me to explain my decision? I thought you'd just, you know—accept it.~ #47867 */ GOTO 27
  IF ~  CheckStatGT(Player1,17,CHR)
~ THEN REPLY @62 /* ~I owe you no explanations. This is my judgment, accept it or don't.~ #47868 */ GOTO 28
  IF ~  CheckStatLT(Player1,18,CHR)
~ THEN REPLY @62 /* ~I owe you no explanations. This is my judgment, accept it or don't.~ #47868 */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.4 26.2 26.1 20.7
  SAY @63 /* ~You think this a joke? Get out of my sight, you repellent dullard! And thank Caelar for watching over you—were we anywhere but here, you'd pay dearly for wasting my time with such nonsense!~ #47869 */
  IF ~~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",15)
~ SOLVED_JOURNAL @53 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. I do not know if I did the right thing. I hope I did.~ #58721 */ EXIT
  IF ~  Alignment(Player1,MASK_GENEUTRAL)
~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",15)
~ SOLVED_JOURNAL @54 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. Did I do the right thing? In truth, I care little. Though I took some enjoyment from playing the role of one, ultimately, crusaders are my enemies.~ #58722 */ EXIT
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",15)
~ SOLVED_JOURNAL @55 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. I took no little pleasure in pitting the fools one against the other.~ #58723 */ EXIT
  IF ~  IsValidForPartyDialogue("Corwin")
~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",15)
~ EXTERN ~BDCORWIJ~ 79
  IF ~  IsValidForPartyDialogue("Mkhiin")
~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",15)
~ EXTERN ~BDMKHIIJ~ 73
END

IF ~~ THEN BEGIN 28 // from: 26.3 26.0 20.6
  SAY @64 /* ~I see. Very well. Both Corinth and Valis are guilty. Slay them, in Caelar's name!~ #47872 */
  IF ~~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",10)
SetGlobal("bd_trial_kill","bd4000",3)
ChangeSpecifics("bdvalis",HOSTILES4)
ActionOverride("bdvalis",Enemy())
ChangeSpecifics("bdcorint",HOSTILES4)
ActionOverride("bdcorint",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 20.0
  SAY @65 /* ~You've wasted my time. Thank Caelar for watching over you. In another place, at another time, I wouldn't hesitate to cut you down. Go, make yourself useful, if you can. I don't want to see you again.~ #47873 */
  IF ~~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",15)
~ SOLVED_JOURNAL @53 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. I do not know if I did the right thing. I hope I did.~ #58721 */ EXIT
  IF ~  Alignment(Player1,MASK_GENEUTRAL)
~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",15)
~ SOLVED_JOURNAL @54 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. Did I do the right thing? In truth, I care little. Though I took some enjoyment from playing the role of one, ultimately, crusaders are my enemies.~ #58722 */ EXIT
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",15)
~ SOLVED_JOURNAL @55 /* ~The Trial

I've finished with this pack of crusaders and their trial.

The conflict 'twixt the crusaders Valis and Corinth has been resolved. I took no little pleasure in pitting the fools one against the other.~ #58723 */ EXIT
  IF ~  IsValidForPartyDialogue("Mkhiin")
~ THEN DO ~SetGlobal("bd_trial_plot","bd4000",15)
~ EXTERN ~BDMKHIIJ~ 73
END

IF ~  Global("bd_trial_plot","bd4000",15)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 30 // from:
  SAY @66 /* ~I said I didn't want to see your face again. Begone.~ #47874 */
  IF ~~ THEN EXIT
END

IF ~  Global("bd_trial_plot","bd4000",12)
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 31 // from:
  SAY @52 /* ~A regrettable but necessary end to this grim business. There is a lesson here, friends. Learn it well. I'll not tolerate traitors in our ranks. Go, reflect on what you've seen and prepare to see more of it. Soon, we will face our enemies.~ [BD47859] #47859 */
  IF ~~ THEN EXIT
END
