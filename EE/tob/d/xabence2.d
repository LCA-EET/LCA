BEGIN ~XABENCE2~

IF ~
	GlobalLT("XA_LC_BenceCaelar", "GLOBAL", 1)
~ THEN BEGIN XA_BenceCaelar
	SAY @0 /*~Where the hells am I!? <CHARNAME>?~*/
	
	IF ~~ THEN REPLY @1 /*~Corporal Duncan, allow me to present Caelar Argent, leader of the crusade. I summoned you here to take her into custody.~*/
	DO ~
		SetGlobal("XA_LC_BenceCaelar", "GLOBAL", 1)
	~
	GOTO XA_CaelarArrestChain
END

IF ~~ THEN BEGIN XA_OffToJail2
	SAY @6 /*~Very good. It's time, Caelar.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_CaelarJail", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XACAEBYE")
	~
	EXIT
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_CaelarJail", "GLOBAL", 1)
		SetGlobal("XA_LC_CorwinCaelarJail", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XACAEBYE")
	~
	EXIT
END

CHAIN XABENCE2 XA_CaelarArrestChain
	@2 /* ~Hmph. She looks to be in bad shape. She'll need some time to recover before she can stand trial. Very well.~*/
	= @3 /*~Caelar Argent! You are under arrest for the crimes of insurrection, murder, and the incitement of violence against the Grand Dukes. Do you understand the charges levied against you?~*/
	== XACAELA2
	@4 /*~I do.~*/
	== XACOR25J
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	@7 /*~Take her away, Corporal.~*/
	== XABENCE2
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	@8 /*~Yes, Major.~*/
END XACAELA2 XA_OffToJail