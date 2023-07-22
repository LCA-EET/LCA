BEGIN ~XABENCE2~

IF ~
	GlobalLT("XA_BenceCaelar", "GLOBAL", 1)
~ THEN BEGIN XA_BenceCaelar
	SAY @0 /*~Where the hells am I!? <CHARNAME>?~*/
	
	IF ~~ THEN REPLY @1 /*~Corporal Duncan, allow me to present Caelar Argent, leader of the crusade. I summoned you here to take her into custody.~*/
	DO ~
		SetGlobal("XA_BenceCaelar", "GLOBAL", 1)
	~
	GOTO XA_CaelarArrestChain
END

IF ~~ THEN BEGIN XA_OffToJail2
	SAY @6 /*~Very good. It's time, Caelar.~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@9, INFO)
		StartCutSceneMode()
		StartCutScene("XACAEBYE")
	~
	EXIT
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN
	DO ~
		AddJournalEntry(@9, INFO)
		SetGlobal("XA_CorwinCaelarJail", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XACAEBYE")
	~
	EXIT
END

CHAIN XABENCE2 XA_CaelarArrestChain
	@2 /* ~Hmph. She looks to be in bad shape. She'll need some time to recover before she can stand trial. Very well.~*/
	= @3 /*~Caelar Argent! You are under arrest for the crimes of insurrection, murder, and the incitement of violence against the Grand Dukes. Do you understand the charges levied against you?~*/
	== XACAELAR
	@4 /*~I do.~*/
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	@7 /*~Take her away, Corporal.~*/
	== XABENCE2
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	@8 /*~Yes, Major.~*/
END XACAELAR XA_OffToJail