BEGIN ~LCBENCE~

IF ~~ THEN BEGIN LCA_StartDebrief01
	SAY @15 /* ~Yes, sir.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_DukesDebriefed", "GLOBAL", 2)
		StartCutSceneMode()
		StartCutScene("LCDEBR01")
	~
	EXIT
END
IF ~
	Global("LCA_BenceWyrm", "GLOBAL", 1)
~ THEN BEGIN LCA_BenceWyrm_0
	SAY @0 /* ~It is good to see the both of you. As Marshal Nederlok said, I will come and get you when it is time to see the Dukes.~*/
	
	IF ~~ THEN REPLY @1 /* ~Bence... I wish I could say that I'm glad to see you, but I'm not.~ */
	GOTO LCA_BenceWyrm_1
	
	IF ~~ THEN REPLY @2 /* ~Last I recall, you wanted me dead, Bence. I trust this is no longer the case?~ */
	GOTO LCA_BenceWyrm_1
END

IF ~~ THEN BEGIN LCA_BenceWyrm_1
	SAY @3 /* ~If you're looking for an apology, you won't get one. We were only following the evidence. I'm glad however that your innocence was established.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobalTimer("LCA_DukeDebriefTimer","GLOBAL", ONE_DAY)
	~
	EXTERN LCCORWIJ LCA_BenceWyrm_2
END

IF ~~ THEN BEGIN LCA_BenceWyrm_3
	SAY @4 /* ~I am well, Captain, as is Skie. She has ... changed in some ways since her ordeal, but I suppose it is to be expected.~ */
	
	IF ~~ THEN 
	EXTERN LCCORWIJ LCA_BenceWyrm_4
END

IF ~~ THEN BEGIN LCA_BenceWyrm_5
	SAY @5 /* ~She's no longer the care-free, impulsive, foolish -- forgive me. I am speaking out of turn.~ */
	
	= @6 /* ~You'll see when you meet her. She's with the Dukes, and she'll be present during the debrief.~ */
	
	IF ~~ THEN 
	EXTERN LCCORWIJ LCA_BenceWyrm_6
END

IF ~
	Global("LCA_BenceWyrm", "GLOBAL", 2)
	!Global("LCA_DukesDebriefed", "GLOBAL", 1)
	GlobalTimerExpired("LCA_DukeDebriefTimer", "GLOBAL")
~ THEN BEGIN LCA_TimeToSeeTheDukes
	SAY @10 /* ~<CHARNAME>, it's time. I will escort you to the Ducal Palace for your debriefing.~ */
	
	IF ~~ THEN REPLY @11 /* ~Fine. Let's go.~ */
	GOTO LCA_StartDukeDebriefing
	
	IF ~
		!Global("LCA_ExtensionNeeded", "GLOBAL", 1)
	~ THEN REPLY @12 /* ~Can I have a little more time before we begin?~ */
	DO ~
		SetGlobalTimer("LCA_DukeDebriefTimer", "GLOBAL", ONE_HOUR)
		SetGlobal("LCA_ExtensionNeeded", "GLOBAL", 1)
	~
	GOTO LCA_OneMoreHour
END

IF ~~ THEN BEGIN LCA_StartDukeDebriefing
	SAY @16 /* ~This way.~*/
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_DukesDebriefed", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("LCDEBREF")
	~
	EXIT
END

IF ~
	Global("LCA_BenceWyrm", "GLOBAL", 2)
	!Global("LCA_DukesDebriefed", "GLOBAL", 1)
	!AreaCheck("BG0900")
~ THEN BEGIN LCA_BenceWyrm
	SAY @7 /* ~Are you ready to begin the debriefing?~ */

	IF ~~ THEN REPLY @8 /* ~Yes. Let's go.~ */
	GOTO LCA_StartDukeDebriefing	
END

IF ~~ THEN BEGIN LCA_OneMoreHour
	SAY @13 /* ~Ugh... fine. One more hour. I'll accompany you until it's time.~ */

	IF ~~ THEN EXIT
END
