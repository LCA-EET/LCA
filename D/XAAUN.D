BEGIN ~XAAUN~

IF ~
	Global("XA_SummonAun", "GLOBAL", 2)
~ THEN BEGIN XA_CaelarAunReunite
	SAY @0 /* ~<CHARNAME>? What's th— Caelar! Is it really you!?~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_SummonAun", "GLOBAL", 3)
	~
	EXTERN XACAELAB XA_CaelarAunReuniteChain
END

IF ~
	GlobalLT("XA_AunCaelar", "GLOBAL", 1)
~ THEN BEGIN XA_AunCaelar
	SAY @0 /*~<CHARNAME>? What's th— Caelar!~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_AunCaelar", "GLOBAL", 1)
	~
	EXTERN XACAELA2 XA_AunCaelarChain
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN
	DO ~
		SetGlobal("XA_AunCaelar", "GLOBAL", 1)
		SetGlobal("XA_CorwinCaelarHome", "GLOBAL", 1)
	~
	EXTERN XACAELA2 XA_AunCaelarChain
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

IF ~~ THEN BEGIN XA_CaelarAunReuniteChain_End
	SAY @22 /*~Please make sure my niece returns to me.~*/
	
	IF ~~ THEN REPLY @23 /*~I will. When this is over, she will need your love and support, Aun.~*/
	GOTO XA_AunHelp
	
	IF ~~ THEN REPLY @24 /*~It'll be dangerous, but with Caelar's aid we'll be victorious. Afterwards, you'll need to help her recover from her ordeal.~*/
	GOTO XA_AunHelp
END

IF ~~ THEN BEGIN XA_AunHelp
	SAY @8 /* ~Indeed. It's been a struggle at times for me as well, but together we'll ovecome the trauma inflicted upon us.~*/
	
	IF ~~ THEN REPLY @9 /*~The gate will take you home. Farewell.~*/
	GOTO XA_AunByeChain
END

CHAIN XACAELA2 XA_AunCaelarChain
	@1 /*~(They share a warm embrace.)~*/
	== XAAUN
	@2 /*~In Lathander's name... what happened? Who did this to you?~*/
	== XACAELA2
	@3 /*~I... I'm not ready to talk about it, uncle. One day, I will be. But not today.~ */
	== XAAUN
	@4 /*~I understand all too well...~*/
	== XACAELA2
	@5 /*~What matters is that I'm finally free from that horrible place, thanks to <CHARNAME>.~*/
END XAAUN XA_AunCaelarChainEnd

CHAIN XAAUN XA_AunCaelarFarewell
	@10 /*~Walk in the light, <CHARNAME>.~*/
	== XACAELA2
	@11 /*~Goodbye... and thank you.~  */
	DO ~
		AddJournalEntry(@13, INFO)
		SetGlobal("XA_CaelarHome", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XACAEBYE")
	~
EXIT

CHAIN XACAELAB XA_CaelarAunReuniteChain
	@15 /*~Uncle Aun!~ */
	= @1 /* ~(They share an emotional embrace.)~ */
	== XAAUN
	@14 /* ~In Lathander's name... how? What happened to you?~*/
	== XACAELAB
	@3 /* ~I... I'm not ready to talk about it, uncle. One day, I will be. But not today.~ */
	= @5 /* ~What matters is that I'm free from that horrible place, thanks to <CHARNAME>.~*/
	== XAAUN
	@6 /*~<CHARNAME> — words will never adequately express my gratitude.~*/
	= @19 /*~(He turns to his niece.)~*/
	= @16 /*~Come, child. Let's go home.~*/
	== XACAELAB
	@17 /*~Not yet, uncle Aun. <CHARNAME> needs my help to combat a great evil that threatens our entire world... a group of Bhaalspawn called 'The Five.'~*/
	== XAAUN
	@18 /*~The Five... the Order has heard rumors of trouble brewing in the East. But Caelar... you've suffered enough, and this isn't your fight. Come home with me.~*/
	== XACAELAB
	@20 /*~No. I need to do this. Not just because I owe <CHARNAME> my life, but because I must begin to make amends for the harm caused by my crusade.~*/
	== XAAUN
	@21 /*~I see... Very well. <CHARNAME>...~*/
END XAAUN XA_CaelarAunReuniteChain_End

CHAIN XAAUN XA_AunByeChain
	@25 /*~Thank you, <CHARNAME>. Be careful, Caelar.~*/
	== XACAELAB
	@26 /*~I will, uncle.~*/
	= @27 /*~(They share a warm embrace.)~ */
	== XACAELAB
	@28 /*~Walk in the light of the Morninglord.~*/
	DO ~
		SetGlobalTimer("XA_CaelarThanks", "GLOBAL", ONE_ROUND)
		StartCutSceneMode()
		StartCutScene("XACAEBYE")
	~
END