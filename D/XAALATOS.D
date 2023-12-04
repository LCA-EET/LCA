BEGIN ~XAALATOS~

IF ~
	//!InPartySlot(LastTalkedToBy, 0)
	!IsGabber(Player1)
	!IsGabber("XACORWIN")
~ THEN BEGIN XA_WantsToTalkToPlayer
	SAY @21 /* ~Welcome, friend! Please relax, and keep your weapons at your sides.~*/
	IF ~~ THEN EXIT
END

IF ~
	IsGabber("XACORWIN")
	!Global("XA_TalkedToAlatos", "GLOBAL", 1)
	Global("XA_ReturnToBG", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinAlatosIntro
	SAY @22 /* ~It's been a while, Captain. Though it's always a pleasure to see you, I can't say that I've missed you barging in here to arrest my thieves.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_TalkedToAlatos", "GLOBAL", 1)
	~
	GOTO XA_CorwinAlatos
END

IF ~
	IsGabber("XACORWIN")
	Global("XA_TalkedToAlatos", "GLOBAL", 1)
	Global("XA_ReturnToBG", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinAlatos
	SAY @23 /* ~What can I do for you and the Flaming Fist?~ */
	
	IF ~~ THEN 
	EXTERN XACORWIJ XA_AlatosNothing
	
	IF ~
		PartyHasItem("XAMANFST")
		Global("XA_BGSlaverPlot", "GLOBAL", 1)
		Global("XA_AskedAlatosAboutSlavers", "GLOBAL", 1)
		!Global("XA_AskedAlatosAboutManifests", "GLOBAL", 1)
	~ THEN
	EXTERN XACORWIJ XA_CorwinAlatosChainManifests	
	
	IF ~
		Global("XA_BGSlaverPlot", "GLOBAL", 1)
		!Global("XA_AskedAlatosAboutSlavers", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_AskedAlatosAboutSlavers", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_CorwinAlatosChainSlavers	
END
	


IF ~
	!Global("XA_TalkedToAlatos", "GLOBAL", 1)
	Global("XA_ReturnToBG", "GLOBAL", 1)
	//InPartySlot(LastTalkedToBy, 0)
	IsGabber(Player1)
~ THEN BEGIN XAA0
	SAY @0 /* ~Ah, <CHARNAME>. It's good to see you again.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_TalkedToAlatos", "GLOBAL", 1)
		SetNumTimesTalkedTo(1)
	~
	GOTO XAA0B
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN GOTO XAA0A
END

IF ~~ THEN BEGIN XAA0A
	SAY @1 /* ~...And you as well, Captain. Though I can't say I've missed having you barge in here to arrest my thieves.~ */

	IF ~~ THEN
	DO ~
		SetGlobal("XA_TalkedToAlatos", "GLOBAL", 1)
	~
	GOTO XAA0B
END

IF ~
	Global("XA_TalkedToAlatos", "GLOBAL", 1)
	Global("XA_ReturnToBG", "GLOBAL", 1)
	//InPartySlot(LastTalkedToBy, 0)
	IsGabber(Player1)
~ THEN BEGIN XAA0B
	SAY @2 /* ~I take it this isn't a social visit. What can the Shadow Thieves do for you?~ */
	
	IF ~~ THEN REPLY @3 /* ~Nothing, for now.~ */
	EXIT
	
	IF ~
		PartyHasItem("XALEDGER")
		PartyHasItem("XAMANFST")
		Global("XA_BGSlaverPlot", "GLOBAL", 1)
		Global("XA_AskedAlatosAboutSlavers", "GLOBAL", 1)
		Global("XA_AskedAlatosAboutManifests", "GLOBAL", 1)
		!Global("XA_AskedAlatosAboutLedger", "GLOBAL", 1)
	~ THEN REPLY @26 /* ~We recovered a ledger from Winston Ventures' headquarters. It seems to contain the cipher key needed to decode the shipping manifest that we found earlier. Can you help?~ */
	DO ~
		SetGlobal("XA_AskedAlatosAboutLedger", "GLOBAL", 1)
	~
	GOTO XA_AskAboutLedger
	
	IF ~
		PartyHasItem("XAMANFST")
		Global("XA_BGSlaverPlot", "GLOBAL", 1)
		Global("XA_AskedAlatosAboutSlavers", "GLOBAL", 1)
		!Global("XA_AskedAlatosAboutManifests", "GLOBAL", 1)
	~ THEN REPLY @4 /* ~The harbor master handed over some shipping manifests. I need your help to decipher them.~ */
	DO ~
		SetGlobal("XA_AskedAlatosAboutManifests", "GLOBAL", 1)
	~
	GOTO XA_AskAboutManifest
	
	IF ~
		Global("XA_BGSlaverPlot", "GLOBAL", 1)
		!Global("XA_AskedAlatosAboutSlavers", "GLOBAL", 1)
	~ THEN REPLY @5 /*~During our time in Athkatla, we learned that some of the refugees from Caelar's crusade were sold as slaves from Baldur's Gate. Do you know anything about this?~*/
	DO ~
		SetGlobal("XA_AskedAlatosAboutSlavers", "GLOBAL", 1)
	~
	GOTO XA_AskAboutSlavery
END

IF ~~ THEN BEGIN XA_AskAboutLedger
	SAY @27 /* ~Let me see that.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_AskedAlatosAboutLedger", "GLOBAL", 1)
		SetGlobal("XA_DecodedManifest", "GLOBAL", 1)
	~
	GOTO XA_AskAboutLedger2
END

IF ~~ THEN BEGIN XA_AskAboutLedger2
	SAY @28 /* ~Yes, I think we'll be able to decode the manifest using the key provided. Give us a few minutes...~ */
	
	IF ~~ THEN
	DO ~
		TakePartyItem("XAMANFST")
		FadeToColor([30.0],0)
		Wait(3)
		FadeFromColor([30.0],0)
	~
	GOTO XA_AskAboutLedger3
END

IF ~~ THEN BEGIN XA_AskAboutLedger3
	SAY @29 /* ~Here you are. ~ */
	
	IF ~
		!Global("XA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		GiveItemCreate("XAMANFS2", Player1, 1,0,0)
	~
	GOTO XA_AskAboutLedger4
	
	IF ~
		Global("XA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		GiveItemCreate("XAMANFS3", Player1, 1,0,0)
	~
	GOTO XA_AskAboutLedger4
END

IF ~~ THEN BEGIN XA_AskAboutLedger4
	SAY @31 /* ~Hopefully it's what you're looking for.~  */
	
	IF ~~ THEN REPLY @30 /* ~Thanks for the help.~*/
	DO ~
		AddJournalEntry(@37, QUEST)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_AskAboutSlavery
	SAY @6 /* ~I know that the Shadow Thieves are not responsible. We got out of the slave trade a long time ago. The juice, as they say, is not always worth the squeeze.*/
	
	IF ~~ THEN REPLY @7 /* ~I see.~ */
	GOTO XA_AskAboutSlavery2
	
	IF ~~ THEN REPLY @8 /* ~Is that all you can give me?~*/
	GOTO XA_AskAboutSlavery2
END


IF ~~ THEN BEGIN XA_AskAboutSlavery2
	SAY @9 /* ~Listen. There are only three ways into and out of the city: Wyrm's Crossing, the tunnels beneath the Flaming Fist headquarters, and the docks.~ */
	
	IF ~~ THEN 
	GOTO XA_AskAboutSlavery2A
	
	IF ~
		Global("XA_SoDAnxiety", "GLOBAL", 0)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		IsValidForPartyDialogue("XACORWIN")
	~ THEN 
	DO ~
		SetGlobal("XA_SoDAnxiety", "GLOBAL", 1)
		SetGlobalTimer("XA_SoDAnxietyTimer", "GLOBAL", ONE_ROUND)
		SetGlobal("XA_SoDAnxietyAlatos", "GLOBAL", 1)
	~
	GOTO XA_AskAboutSlavery2A
END

IF ~~ THEN BEGIN XA_AskAboutSlavery2A
	SAY @10 /* ~Wyrm's Crossing and the Flaming Fist headquarters are too heavily guarded to move slaves through. If I were you, I'd speak to the Harbor Master.~ */
	
	= @37 /* ~If I were you, I'd speak to the Harbor Master.~ */
	
	IF ~
		!PartyHasItem("XAMANFST")
	~ THEN REPLY @11 /* ~Makes sense. Thanks for the help.~ */
	DO ~
		SetGlobal("XA_AskedAlatosAboutSlavers", "GLOBAL", 1)
	~
	EXIT
	
	IF ~
		PartyHasItem("XAMANFST")
	~ THEN REPLY @12 /* ~I did speak to him. He handed over these shipping manifests, but they appear to be encoded.~ */
	GOTO XA_AskAboutManifest
END

IF ~~ THEN BEGIN XA_AskAboutManifest
	SAY @13 /* ~Let me take a look at those. Hmm. Yes, these are encoded. You won't be able to break the code unless you have the cipher key, and the encoding device.~ */
	
	= @14 /* ~The good news is I recognize the type of device used to generate the encoding. The bad news is that without the cipher key, you won't be able to decode the manifests.~ */
	
	IF ~~ THEN REPLY @15 /* ~Interesting... how many other people or organizations use such devices?~ */
	DO ~
		AddJournalEntry(@38, QUEST)
	~	
	GOTO XA_AskAboutManifest2
END

IF ~~ THEN BEGIN XA_AskAboutManifest2
	SAY @16 /* ~Many. They're more common than you may think. Not long ago, we sold a batch of older models to that new outfit based out of the old Iron Throne building.~ */
	
	IF ~~ THEN REPLY @17 /* ~So, we need to find the cipher key and the machine to decode the message?~ */
	DO ~
		SetGlobal("XA_AskedAlatosAboutManifests", "GLOBAL", 1)
	~
	GOTO XA_AskAboutManifest3
END

IF ~~ THEN BEGIN XA_AskAboutManifest3
	SAY @18 /* ~Tell you what - if you can bring me the cipher key, I'll decode the manifests for you using our machine here. Consider it a thank you for all you've done for the city.~ */
	
	IF ~
		PartyHasItem("XALEDGER")
	~ THEN REPLY @26 /* ~We recovered a ledger from Winston Ventures' headquarters. It seems to contain the cipher key needed to decode the shipping manifest that we found earlier. Can you help?~*/
	GOTO XA_AskAboutLedger
	
	IF ~
		!PartyHasItem("XALEDGER")
	~ THEN REPLY @19 /* ~Thanks for the help. We'll return once we find the cipher key.~ */
	EXIT
END
IF ~
	Global("XA_TalkedToAlatos", "GLOBAL", 1)
	Global("XA_ReturnToBG", "GLOBAL", 1)
~ THEN BEGIN XAA1
	SAY @20 /* ~Ah, you've returned. How can the Shadow Thieves be of assistance?~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_CorwinAlatosChainManifestsEnd
	SAY @25 /* ~Tell you what - if you can bring me the cipher key, I'll decode the manifests for you using our machine here.~ */
	
	IF ~
		!Dead("Aran")
	~ THEN 
	DO ~
		AddJournalEntry(@38, QUEST)
	~
	GOTO XA_CorwinAlatosChainManifestsEnd2A
	
	IF ~
		Dead("Aran")
	~ THEN 
	DO ~
		AddJournalEntry(@38, QUEST)
	~
	GOTO XA_CorwinAlatosChainManifestsEnd2B
END

IF ~~ THEN BEGIN XA_CorwinAlatosChainManifestsEnd2A
	SAY @35 /* ~Consider it a thank you for all <CHARNAME> has done for this city, and for helping our chapter in Athkatla.~ */
	
	IF ~~ THEN
	EXTERN XACORWIJ XA_ThankAlatos2
	
	IF ~
		PartyHasItem("XALEDGER")
		Global("XA_BGSlaverPlot", "GLOBAL", 1)
		Global("XA_AskedAlatosAboutSlavers", "GLOBAL", 1)
		Global("XA_AskedAlatosAboutManifests", "GLOBAL", 1)
		!Global("XA_AskedAlatosAboutLedger", "GLOBAL", 1)
	~ THEN
	EXTERN XACORWIJ XA_CorwinAlatosChainLedger
END

IF ~~ THEN BEGIN XA_CorwinAlatosChainManifestsEnd2B
	SAY @36 /* ~Consider it a thank you for all <CHARNAME> has done for this city.~ */
	
	IF ~~ THEN
	EXTERN XACORWIJ XA_ThankAlatos2
	
	IF ~
		PartyHasItem("XALEDGER")
		Global("XA_BGSlaverPlot", "GLOBAL", 1)
		Global("XA_AskedAlatosAboutSlavers", "GLOBAL", 1)
		Global("XA_AskedAlatosAboutManifests", "GLOBAL", 1)
		!Global("XA_AskedAlatosAboutLedger", "GLOBAL", 1)
	~ THEN
	EXTERN XACORWIJ XA_CorwinAlatosChainLedger
END

IF ~~ THEN BEGIN XA_CorwinAlatosChainSlaversEnd
	SAY @10 /* ~Wyrm's Crossing and the Flaming Fist headquarters are too heavily guarded to move slaves through.~ */

	IF ~~ THEN 
	GOTO XA_CorwinAlatosChainSlaversEnd2
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_SoDAnxiety", "GLOBAL", 0)
	~ THEN 
	DO ~
		SetGlobal("XA_SoDAnxiety", "GLOBAL", 1)
		SetGlobal("XA_SoDAnxietyAlatos", "GLOBAL", 1)
		SetGlobalTimer("XA_SoDAnxietyTimer", "GLOBAL", ONE_ROUND)
	~
	GOTO XA_CorwinAlatosChainSlaversEnd2
END

IF ~~ THEN BEGIN XA_CorwinAlatosChainSlaversEnd2
	SAY @37 /* ~If I were you, I'd speak to the Harbor Master.~ */
	
	IF ~~ THEN
	EXTERN XACORWIJ XA_ThankAlatos1
	
	IF ~
		PartyHasItem("XAMANFST")
		Global("XA_BGSlaverPlot", "GLOBAL", 1)
		Global("XA_AskedAlatosAboutSlavers", "GLOBAL", 1)
		!Global("XA_AskedAlatosAboutManifests", "GLOBAL", 1)
	~ THEN
	EXTERN XACORWIJ XA_CorwinAlatosChainManifests
END

IF ~~ THEN BEGIN XA_CorwinAlatosChainLedgerEnd
	SAY @29 /* ~Here you are.~ */
	
	IF ~
		!Global("XA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		GiveItemCreate("XAMANFS2", "XACORWIN", 1,0,0)
	~
	GOTO XA_CorwinAlatosChainLedgerEnd2
	
	IF ~
		Global("XA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		GiveItemCreate("XAMANFS3", "XACORWIN", 1,0,0)
	~
	GOTO XA_CorwinAlatosChainLedgerEnd2
END

IF ~~ THEN BEGIN XA_CorwinAlatosChainLedgerEnd2
	SAY @33 /* ~Hopefully it's what you're looking for.~  */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@37, QUEST)
	~
	EXTERN XACORWIJ XA_ThankAlatos3
END

CHAIN
	IF ~~ THEN XACORWIJ XA_CorwinAlatosChainManifests	
		@24 /* ~We've spoken to the Harbor Master. He handed over these shipping manifests, but they appear to be encoded.~ */	
		DO ~
			SetGlobal("XA_AskedAlatosAboutManifests", "GLOBAL", 1)
		~
		== XAALATOS
		@13 /* ~Let me take a look at those. Hmm. Yes, these are encoded. You won't be able to break the code unless you have the cipher key, and the encoding device.~ */
		= @14 /* ~The good news is I recognize the type of device used to generate the encoding. The bad news is that without the cipher key, you won't be able to decode the manifests.~*/
		== XACORWIJ
		@15 /* ~Interesting... how many other people or organizations use such devices?~*/
		== XAALATOS
		@16 /* ~Many. They're more common than you may think. Not long ago, we sold a batch of older models to that new outfit based out of the old Iron Throne building.~*/
		== XACORWIJ
		@17 /* ~So, we need to find the cipher key and the machine to decode the message?~*/
		
END XAALATOS XA_CorwinAlatosChainManifestsEnd

CHAIN
	IF ~~ THEN XACORWIJ XA_CorwinAlatosChainSlavers
		@5 /* ~During our time in Athkatla, we learned that some of the refugees from Caelar's crusade were sold as slaves from Baldur's Gate. Do you know anything about this?~*/	
		DO ~
			SetGlobal("XA_AskedAlatosAboutSlavers", "GLOBAL", 1)
		~
		== XAALATOS
		@6 /* ~I know that the Shadow Thieves are not responsible. We got out of the slave trade a long time ago. The juice, as they say, is not always worth the squeeze.~ */
		== XACORWIJ
		@8 /* ~Is that all you can give me?~ */
		== XAALATOS
		@9 /* ~Listen. There are only three ways into and out of the city: Wyrm's Crossing, the tunnels beneath the Flaming Fist headquarters, and the docks.~ */
END XAALATOS XA_CorwinAlatosChainSlaversEnd

CHAIN 
	IF ~~ THEN XACORWIJ XA_CorwinAlatosChainLedger
		@32 /* ~We recovered a ledger from Winston Ventures' headquarters. It seems to contain the cipher key needed to decode the shipping manifest that we found earlier. Your assistance is needed in decoding it.~ */
		DO ~
			SetGlobal("XA_AskedAlatosAboutLedger", "GLOBAL", 1)
			SetGlobal("XA_DecodedManifest", "GLOBAL", 1)
		~
		== XAALATOS
		@27 /* ~Let me see that.~ */
		= @28 /* ~Yes, I think we'll be able to decode the manifest using the key provided. Give us a few minutes...~ */
		DO ~
			TakePartyItem("XAMANFST")
			FadeToColor([30.0],0)
			Wait(3)
			FadeFromColor([30.0],0)
		~
END XAALATOS XA_CorwinAlatosChainLedgerEnd