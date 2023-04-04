BEGIN ~LCGIRL2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
	SAY @0 /* ~*gasp* My... my thanks to you, kind <PRO_SIRMAAM>, for saving our lives. That monster surely would have killed us!~  */
	
	IF ~~ THEN REPLY @1 /* ~True enough. You are free now, so I suggest you flee while you can.~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
	SAY @2 /* ~Y-yes, <PRO_SIRMAAM> but... our homes were destroyed during the crusade. I and many of the others here fled with our families to Baldur's Gate, but then they sent us here... I guess anything is better than fighting just so those evil men can laugh at us!~ */
	IF ~~ THEN REPLY @17 /* ~Why did the slavers have so many children here?~ */ 
	DO ~
		SetGlobal("LCA_BGSlaverPlot", "GLOBAL", 1)
		AddJournalEntry(@14, INFO)
	~
	GOTO 2
  
	IF ~  
		PartyGoldGT(99)
	~ THEN REPLY @4 /* ~Here, child. Here is 100 gold pieces... see if that can't get you and some of these other children back to safety.~ */ 
	DO ~
		SetGlobal("LCA_BGSlaverPlot", "GLOBAL", 1)
		AddJournalEntry(@14, INFO)
		TakePartyGold(100)
	~ 
	GOTO 3
  
	IF ~~ THEN REPLY @5 /* ~Never mind that, child, just run!~ */ 
	DO ~
		SetGlobal("LCA_BGSlaverPlot", "GLOBAL", 1)
		AddJournalEntry(@14, INFO)
	~
	GOTO 4
  
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ 
	THEN 
	DO ~
		SetGlobal("LCA_BGSlaverPlot", "GLOBAL", 1)
		AddJournalEntry(@14, INFO)
	~
	EXTERN LCCORWIJ LCA_SlaveGirl
END

IF ~~ THEN BEGIN LCA_SlaveGirl2
	SAY @12 /* ~Yes ma'am, they told us they had found a new place for us to live, but when we got here, they separated us from our parents and threw us in these cages.~ */
	
	= @13 /* ~I don't know who it was that put us on the ships.. just that he was some wealthy noble. I don't even know *sob* if my parents are still alive.~ */
	
	IF ~~ THEN EXTERN LCCORWIJ LCA_SlaveGirl5
	
	IF ~
		PartyGoldGT(99)
	~ THEN EXTERN LCCORWIJ LCA_SlaveGirl3
END

IF ~~ THEN BEGIN LCA_SlaveGirl4
	SAY @15 /* ~T-thank you! This might get some of us to safety...~ */
	
	IF ~~ THEN 
	DO ~
		TakePartyGold(100)
	~
	EXTERN LCCORWIJ LCA_SlaveGirl5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6 /* ~I'm, I'm not sure. I think one of them said that they were having trouble finding buyers for us. We were worthless, they said. I—I think they would have killed us all if you hadn't saved us!~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY @7 /* Well, here is 100 gold pieces, child. Perhaps that will enable some of you to make it to safety.~ */ DO ~TakePartyGold(100)
~ GOTO 3
  IF ~~ THEN REPLY @8 /* ~I see. Well, you are free now, so run while you can!~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.1
  SAY @9 /* ~Oh! Oh, you are too kind, <PRO_SIRMAAM>. This—this just might help us find a new home. Thank you, truly.~  */
  IF ~~ THEN REPLY @18 /* ~Indeed. You are free now... go, while you can!~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1 1.2
  SAY @16 /* ~O-okay! Thank you again! I am sure the Lady of Joy will smile on you!~  */
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
  SAY @16 /* ~O-okay! Thank you again! I am sure the Lady of Joy will smile on you!~ */
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
