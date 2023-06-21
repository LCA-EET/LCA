// creator  : weidu (version 24900)
// argument : GIRL2.DLG
// game     : .
// source   : ./override/GIRL2.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~GIRL2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17693 /* ~*gasp* My... my thanks to you, kind <PRO_SIRMAAM>, for saving our lives. That monster surely would have killed us!~ */
  IF ~~ THEN REPLY #17694 /* ~True enough. You are free now, so I suggest you flee while you can.~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #17695 /* ~Y-yes, <PRO_SIRMAAM>. I don't know where we will go. Scornubel is so far away... But anything is better than fighting just so those evil men can laugh at us!~ */
  IF ~~ THEN REPLY #17696 /* ~Why did the slavers have so many children here?~ */ GOTO 2
  IF ~  PartyGoldGT(99)
~ THEN REPLY #17697 /* ~Here, child. Here is 100 gold pieces... see if that can't get you and some of these other children back to where you came from.~ */ DO ~TakePartyGold(100)
~ GOTO 3
  IF ~~ THEN REPLY #17699 /* ~Never mind that, child, just run!~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #17700 /* ~I'm, I'm not sure. I think one of them said that the merchant in Calimport didn't want us anymore. We were worthless, they said. I—I think they would have killed us all if you hadn't saved us!~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #17703 /* ~Well, here is 100 gold pieces, child. Perhaps that will enable some of you to return to your homes.~ */ DO ~TakePartyGold(100)
~ GOTO 3
  IF ~~ THEN REPLY #17704 /* ~I see. Well, you are free now, so run while you can!~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.1
  SAY #17701 /* ~Oh! Oh, you are too kind, <PRO_SIRMAAM>. This—this just might get some of us back home. Thank you, truly.~ */
  IF ~~ THEN REPLY #17705 /* ~Indeed. You are free now... go, while you can!~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1 1.2
  SAY #17702 /* ~O-okay! Thank you again, <PRO_SIRMAAM>! I am sure the Lady of Joy will smile on you!~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Jaheira")
~ THEN DO ~SetGlobal("FreeSlaves","GLOBAL",1)
AddexperienceParty(3500)
ReputationInc(1)
EscapeArea()
~ EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN DO ~SetGlobal("FreeSlaves","GLOBAL",1)
AddexperienceParty(3500)
ReputationInc(1)
EscapeArea()
~ EXTERN ~AERIEJ~ 53
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN DO ~SetGlobal("FreeSlaves","GLOBAL",1)
AddexperienceParty(3500)
ReputationInc(1)
EscapeArea()
~ EXTERN ~ANOMENJ~ 179
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Jaheira")
~ THEN DO ~SetGlobal("FreeSlaves","GLOBAL",1)
AddexperienceParty(3500)
ReputationInc(1)
EscapeArea()
~ EXTERN ~JAHEIRAJ~ 349
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #48460 /* ~O-okay! Thank you again, <PRO_SIRMAAM>! I am sure the Lady of Joy will smile on you!~ */
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Korgan")
~ THEN DO ~SetGlobal("FreeSlaves","GLOBAL",1)
AddexperienceParty(3500)
ReputationInc(1)
EscapeArea()
~ EXIT
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN DO ~SetGlobal("FreeSlaves","GLOBAL",1)
AddexperienceParty(3500)
ReputationInc(1)
EscapeArea()
~ EXTERN ~NALIAJ~ 226
  IF ~  !IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Yoshimo")
~ THEN DO ~SetGlobal("FreeSlaves","GLOBAL",1)
AddexperienceParty(3500)
ReputationInc(1)
EscapeArea()
~ EXTERN ~YOSHJ~ 38
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Korgan")
~ THEN DO ~SetGlobal("FreeSlaves","GLOBAL",1)
AddexperienceParty(3500)
ReputationInc(1)
EscapeArea()
~ EXTERN ~KORGANJ~ 57
END
