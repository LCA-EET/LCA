BEGIN ~XABENCE~

IF ~~ THEN BEGIN XA_StartDebrief01
	SAY @15 /* ~Yes, sir.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_DukesDebriefed", "GLOBAL", 2)
		StartCutSceneMode()
		StartCutScene("XADEBR01")
	~
	EXIT
END
IF ~
	Global("XA_BenceWyrm", "GLOBAL", 2)
~ THEN BEGIN XA_BenceWyrm_0
	SAY @0 /* ~It is good to see the both of you. As Marshal Nederlok said, I will come and get you when it is time to see the Dukes.~*/
	
	IF ~~ THEN REPLY @1 /* ~Bence... I wish I could say that I'm glad to see you, but I'm not.~ */
	DO ~
		SetGlobal("XA_BenceWyrm", "GLOBAL", 3)
		SetGlobal("XA_ReturnToBG", "GLOBAL", 1)
	~
	GOTO XA_BenceWyrm_1
	
	IF ~~ THEN REPLY @2 /* ~Last I recall, you wanted me dead, Bence. I trust this is no longer the case?~ */
	DO ~
		SetGlobal("XA_BenceWyrm", "GLOBAL", 3)
		SetGlobal("XA_ReturnToBG", "GLOBAL", 1)
	~
	GOTO XA_BenceWyrm_1
END

IF ~~ THEN BEGIN XA_BenceWyrm_1
	SAY @3 /* ~If you're looking for an apology, you won't get one. We were only following the evidence. I'm glad however that your innocence was established.~ */
	
	IF ~
		Global("XA_SkieModActive", "GLOBAL",1)
	~ THEN 
	DO ~
		SetGlobalTimer("XA_DukeDebriefTimer","GLOBAL", ONE_HOUR)
	~
	GOTO XA_DebriefTomorrow
	
	IF ~
		!Global("XA_SkieModActive", "GLOBAL",1)
	~ THEN 
	DO ~
		SetGlobalTimer("XA_DukeDebriefTimer","GLOBAL", ONE_HOUR)
	~
	EXTERN XACORWIJ XA_BenceWyrm_2
END

IF ~~ THEN BEGIN XA_BenceWyrm_3
	SAY @4 /* ~I am well, Captain, as is Skie. She has ... changed in some ways since her ordeal, but I suppose it is to be expected.~ */
	
	IF ~~ THEN 
	EXTERN XACORWIJ XA_BenceWyrm_4
END

IF ~~ THEN BEGIN XA_BenceWyrm_5
	SAY @5 /* ~She's no longer the care-free, impulsive, foolish -- forgive me. I am speaking out of turn.~ */
	
	= @6 /* ~You'll see when you meet her. She's with the Dukes, and she'll be present during the debrief.~ */
	
	IF ~~ THEN 
	EXTERN XACORWIJ XA_BenceWyrm_6
END

IF ~
	Global("XA_BenceDukeDebrief", "GLOBAL", 1)
	GlobalLT("XA_ExtensionNeeded", "GLOBAL", 1)
~ THEN BEGIN XA_TimeToSeeTheDukes
	SAY @10 /* ~<CHARNAME>, it's time. I will escort you to the Ducal Palace for your debriefing.~ */
	
	IF ~~ THEN REPLY @11 /* ~Fine. Let's go.~ */
	DO ~
		SetGlobal("XA_BenceDukeDebrief", "GLOBAL", 2)
	~
	GOTO XA_StartDukeDebriefing
	
	IF ~~ THEN REPLY @12 /* ~Can I have a little more time before we begin?~ */
	DO ~
		SetGlobalTimer("XA_DukeDebriefOneHourTimer", "GLOBAL", ONE_HOUR)
		SetGlobal("XA_ExtensionNeeded", "GLOBAL", 1)
	~
	GOTO XA_OneMoreHour
END

IF ~~ THEN BEGIN XA_StartDukeDebriefing
	SAY @16 /* ~This way.~*/
	IF ~~ THEN
	DO ~
		SetGlobal("XA_DukesDebriefed", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XADEBREF")
	~
	EXIT
END

IF ~
	Global("XA_ExtensionNeeded", "GLOBAL", 1)
	!Global("XA_DukesDebriefed", "GLOBAL", 1)
	!AreaCheck("BG0900")
~ THEN BEGIN XA_BenceWyrm
	SAY @7 /* ~Are you ready to begin the debriefing?~ */

	IF ~~ THEN REPLY @8 /* ~Yes. Let's go.~ */
	DO ~
		SetGlobal("XA_ExtensionNeeded", "GLOBAL", 2)
	~
	GOTO XA_StartDukeDebriefing	
END

IF ~~ THEN BEGIN XA_OneMoreHour
	SAY @13 /* ~Ugh... fine. One more hour. I'll accompany you until it's time.~ */

	IF ~~ THEN EXIT
END

IF ~
	!Global("XA_DukesFullyDebriefed", "GLOBAL", 1)
~ THEN BEGIN XA_DebriefTomorrow
	SAY @17 /* ~I'll come and get you when it's time for the debriefing. In the meantime, take some time to enjoy the city. I'm sure you've missed it.~ */
	
	IF ~~ THEN
	EXIT
END
