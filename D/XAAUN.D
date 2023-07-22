BEGIN ~XAAUN~

IF ~
	GlobalLT("XA_AunCaelar", "GLOBAL", 1)
~ THEN BEGIN XA_AunCaelar
	SAY @0 /*~<CHARNAME>? What's th— Caelar!~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_AunCaelar", "GLOBAL", 1)
	~
	EXTERN XACAELAR XA_AunCaelarChain
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN
	DO ~
		SetGlobal("XA_AunCaelar", "GLOBAL", 1)
		SetGlobal("XA_CorwinCaelarHome", "GLOBAL", 1)
	~
	EXTERN XACAELAR XA_AunCaelarChain
END

IF ~~ THEN BEGIN XA_AunCaelarChainEnd
	SAY @6 /*~<CHARNAME> — words cannot adequately express my gratitude.~*/
	
	IF ~~ THEN REPLY @7 /* ~You can thank me by taking Caelar home, and helping her recover from her ordeal.~ */
	GOTO XA_HelpRecover
	
	IF ~~ THEN REPLY @12 /* ~She will need your love and support, Aun.~ */
	GOTO XA_HelpRecover
END

IF ~~ THEN BEGIN XA_HelpRecover
	SAY @8 /*~Indeed. It's been a struggle at times for me as well, but together we'll ovecome the trauma inflicted upon us.~*/
	
	IF ~~ THEN REPLY @9 /* ~The gate will take you home. Farewell.~ */
	GOTO XA_AunCaelarFarewell
END

CHAIN XACAELAR XA_AunCaelarChain
	@1 /*~(They share a warm embrace.)~*/
	== XAAUN
	@2 /*~In Lathander's name... what happened? Who did this to you?~*/
	== XACAELAR
	@3 /*~I... I'm not ready to talk about it, uncle. One day, I will be. But not today.~ */
	== XAAUN
	@4 /*~I understand all too well...~*/
	== XACAELAR
	@5 /*~What matters is that I'm finally free from that horrible place, thanks to <CHARNAME>.~*/
END XAAUN XA_AunCaelarChainEnd

CHAIN XAAUN XA_AunCaelarFarewell
	@10 /*~Walk in the light, <CHARNAME>.~*/
	== XACAELAR
	@11 /*~Goodbye... and thank you.~  */
	DO ~
		AddJournalEntry(@13, INFO)
		SetGlobal("XA_CaelarHome", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XACAEBYE")
	~
EXIT