// creator  : weidu (version 24900)
// argument : MARIA.DLG
// game     : .
// source   : ./override/MARIA.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~MARIA~

IF ~~ THEN BEGIN 0 // from:
  SAY #9226 /* ~Of course, dears. Go on back to the sitting room while your father and I talk.~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut19c",FALSE)
~ EXIT
END

IF ~  Global("Leona","GLOBAL",1)
Global("KeldornEstate","GLOBAL",0)
Detect("Keldorn")
InParty("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
~ THEN BEGIN 1 // from:
  SAY #9227 /* ~So who are these? Heathen you converted in Calimport, traveling pilgrims you stumbled across in Saradush?~ [MARIAX02] */
  IF ~~ THEN DO ~SetGlobal("KeldornEstate","GLOBAL",1)
~ EXTERN ~KELDORJ~ 18
END

IF ~~ THEN BEGIN 2 // from:
  SAY #9235 /* ~I don't care, Keldorn! It has been two months since you were here last, and then it was barely for a day! Not even enough to leave your scent about this place...~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 19
END

IF ~~ THEN BEGIN 3 // from: 21.0
  SAY #9239 /* ~What about me? What about my heart, Keldorn? What... if I don't love you anymore?~ [MARIAX08] */
  IF ~~ THEN EXTERN ~KELDORJ~ 20
END

IF ~~ THEN BEGIN 4 // from:
  SAY #9251 /* ~I... I've been seeing another man... The children and the servants already know... He—he took the girls out to the circus twice... oh, Keldorn...~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 21
END

IF ~~ THEN BEGIN 5 // from:
  SAY #9258 /* ~William—Sir William of Thorpe... I beg of you, don't hurt him, Keldorn. If I can't have you, at least let me have something!~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~KELDORJ~ 22
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 283
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 135
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 497
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 175
END

IF ~~ THEN BEGIN 6 // from:
  SAY #9304 /* ~What if the girls can't live without a father anymore? What if I can't live without a husband?~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 84
END

IF ~~ THEN BEGIN 7 // from:
  SAY #9306 /* ~I know, I know, and I love you in the same fashion, with all my heart...~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 28
END

IF ~  Global("LadyMaria","GLOBAL",3)
Detect("Keldorn")
InParty("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
~ THEN BEGIN 8 // from:
  SAY #10268 /* ~You live. Am I to read from such a fact that Sir William now lies dead?~ [MARIAX06] */
  IF ~~ THEN DO ~SetGlobal("LadyMaria","GLOBAL",5)
~ EXTERN ~KELDORJ~ 44
END

IF ~~ THEN BEGIN 9 // from:
  SAY #10391 /* ~But did not your honor dictate—~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 45
END

IF ~~ THEN BEGIN 10 // from:
  SAY #9669 /* ~...Thank you, Keldorn. My love. So... So you will stay?~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 46
END

IF ~~ THEN BEGIN 11 // from:
  SAY #10397 /* ~Thank you, <CHARNAME>. I... I know you were not to blame for his long absence.~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 47
END

IF ~~ THEN BEGIN 12 // from:
  SAY #10400 /* ~And when <CHARNAME>'s friend is found...?~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 49
END

IF ~~ THEN BEGIN 13 // from:
  SAY #10417 /* ~I... I understand. He is honor-bound to serve you until your quest is done. And when it is, Keldorn, will you take another?~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 50
END

IF ~~ THEN BEGIN 14 // from:
  SAY #10429 /* ~It does.~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 51
END

IF ~  Global("KeldornEstate","GLOBAL",0)
OR(2)
!InParty("Keldorn")
!Detect("Keldorn")
~ THEN BEGIN 15 // from:
  SAY #30251 /* ~Who are you?! What are you doing prowling about my home?! ~ */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("KeldornEstate","GLOBAL",0)
GlobalLT("LadyMaria","GLOBAL",5)
!Detect("Keldorn")
~ THEN BEGIN 16 // from:
  SAY #30254 /* ~*sob* You are... the companion of my husband? *sob* Away with you! Away! You do nothing but take him further from my side! Oh, I am doomed!~ */
  IF ~~ THEN EXIT
END

IF ~  Global("LadyMaria","GLOBAL",5)
!InParty("Keldorn")
!Detect("Keldorn")
~ THEN BEGIN 17 // from:
  SAY #30255 /* ~I welcome you into my home, my <LADYLORD>. Is my husband not with you? Ah, it matters not. You may stay here as long as you wish, of course.~ */
  IF ~~ THEN EXIT
END

IF ~  Dead("Keldorn")
Global("KeldornEstate","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY #30257 /* ~*sob* You? You have killed my husband, have you not? Oh, be away from me! Leave a widow in peace!~ */
  IF ~~ THEN EXIT
END

IF ~  Global("LadyMaria","GLOBAL",5)
InParty("Keldorn")
Detect("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
~ THEN BEGIN 19 // from:
  SAY #30258 /* ~I welcome you to your home once again, my husband. Hopefully, your final quest shall not take you away from me for long.~ [MARIAX07] */
  IF ~~ THEN EXTERN ~KELDORJ~ 75
END

IF ~  InParty("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
OR(2)
Global("LadyMaria","GLOBAL",1)
Global("LadyMaria","GLOBAL",2)
~ THEN BEGIN 20 // from:
  SAY #37031 /* ~*sob* Please, my husband! Try to understand!~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 80
END

IF ~~ THEN BEGIN 21 // from:
  SAY #37125 /* ~Would you? Would you really? The guild house is right here in the city, but even then I never see you. It's always Radiant Heart this, Radiant Heart that!~ */
  IF ~~ THEN GOTO 3
END

IF ~  OR(3)
!InParty("Keldorn")
!Detect("Keldorn")
StateCheck("Keldorn",STATE_SLEEPING)
Global("LadyMaria","GLOBAL",5)
~ THEN BEGIN 22 // from:
  SAY #37978 /* ~I thank you for bringing my family closer together. Please, hurry with your quest that my husband might come home.~ */
  IF ~~ THEN EXIT
END
