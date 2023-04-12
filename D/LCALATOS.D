BEGIN ~LCALATOS~

IF ~
	!InPartySlot(LastTalkedToBy, 0)
	!Name("LCCORWIN", LastTalkedToBy)
~ THEN BEGIN LCA_WantsToTalkToPlayer
	SAY @21 /* ~Welcome, friend! Please relax, and keep your weapons at your sides.~*/
	IF ~~ THEN EXIT
END

IF ~
	Name("LCCORWIN", LastTalkedToBy)
	!Global("LCA_TalkedToAlatos", "GLOBAL", 1)
	Global("LCA_ReturnToBG", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinAlatosIntro
	SAY @22 /* ~It's been a while, Captain. Though it's always a pleasure to see you, I can't say that I've missed you barging in here to arrest my thieves.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_TalkedToAlatos", "GLOBAL", 1)
	~
	GOTO LCA_CorwinAlatos
END

IF ~
	Name("LCCORWIN", LastTalkedToBy)
	Global("LCA_TalkedToAlatos", "GLOBAL", 1)
	Global("LCA_ReturnToBG", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinAlatos
	SAY @23 /* ~What can I do for you and the Flaming Fist?~ */
	
	IF ~~ THEN 
	EXTERN LCCORWIJ LCA_AlatosNothing
	
	IF ~
		PartyHasItem("LCMANFST")
		Global("LCA_BGSlaverPlot", "GLOBAL", 1)
		Global("LCA_AskedAlatosAboutSlavers", "GLOBAL", 1)
		!Global("LCA_AskedAlatosAboutManifests", "GLOBAL", 1)
	~ THEN
	EXTERN LCCORWIJ LCA_CorwinAlatosChainManifests	
	
	IF ~
		Global("LCA_BGSlaverPlot", "GLOBAL", 1)
		!Global("LCA_AskedAlatosAboutSlavers", "GLOBAL", 1)
	~ THEN
	EXTERN LCCORWIJ LCA_CorwinAlatosChainSlavers	
END
	


IF ~
	!Global("LCA_TalkedToAlatos", "GLOBAL", 1)
	Global("LCA_ReturnToBG", "GLOBAL", 1)
	InPartySlot(LastTalkedToBy, 0)
~ THEN BEGIN LCA0
	SAY @0 /* ~Ah, <CHARNAME>. It's good to see you again.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_TalkedToAlatos", "GLOBAL", 1)
		SetNumTimesTalkedTo(1)
	~
	GOTO LCA0B
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN GOTO LCA0A
END

IF ~~ THEN BEGIN LCA0A
	SAY @1 /* ~...And you as well, Captain. Though I can't say I've missed having you barge in here to arrest my thieves.~ */

	IF ~~ THEN
	DO ~
		SetGlobal("LCA_TalkedToAlatos", "GLOBAL", 1)
	~
	GOTO LCA0B
END

IF ~
	Global("LCA_TalkedToAlatos", "GLOBAL", 1)
	Global("LCA_ReturnToBG", "GLOBAL", 1)
	InPartySlot(LastTalkedToBy, 0)
~ THEN BEGIN LCA0B
	SAY @2 /* ~I take it this isn't a social visit. What can the Shadow Thieves do for you?~ */
	
	IF ~~ THEN REPLY @3 /* ~Nothing, for now.~ */
	EXIT
	
	IF ~
		PartyHasItem("LCLEDGER")
		PartyHasItem("LCMANFST")
		Global("LCA_BGSlaverPlot", "GLOBAL", 1)
		Global("LCA_AskedAlatosAboutSlavers", "GLOBAL", 1)
		Global("LCA_AskedAlatosAboutManifests", "GLOBAL", 1)
		!Global("LCA_AskedAlatosAboutLedger", "GLOBAL", 1)
	~ THEN REPLY @26 /* ~We recovered a ledger from Winston Ventures' headquarters. It seems to contain the cipher key needed to decode the shipping manifest that we found earlier. Can you help?~ */
	GOTO LCA_AskAboutLedger
	
	IF ~
		PartyHasItem("LCMANFST")
		Global("LCA_BGSlaverPlot", "GLOBAL", 1)
		Global("LCA_AskedAlatosAboutSlavers", "GLOBAL", 1)
		!Global("LCA_AskedAlatosAboutManifests", "GLOBAL", 1)
	~ THEN REPLY @4 /* ~The harbor master handed over some shipping manifests. I need your help to decipher them.~ */
	GOTO LCA_AskAboutManifest
	
	IF ~
		Global("LCA_BGSlaverPlot", "GLOBAL", 1)
		!Global("LCA_AskedAlatosAboutSlavers", "GLOBAL", 1)
	~ THEN REPLY @5 /*~During our time in Athkatla, we learned that some of the refugees from Caelar's crusade were sold as slaves from Baldur's Gate. Do you know anything about this?~*/
	GOTO LCA_AskAboutSlavery
END

IF ~~ THEN BEGIN LCA_AskAboutLedger
	SAY @27 /* ~Let me see that.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_AskedAlatosAboutLedger", "GLOBAL", 1)
		SetGlobal("LCA_DecodedManifest", "GLOBAL", 1)
	~
	GOTO LCA_AskAboutLedger2
END

IF ~~ THEN BEGIN LCA_AskAboutLedger2
	SAY @28 /* ~Yes, I think we'll be able to decode the manifest using the key provided. Give us a few minutes...~ */
	
	IF ~~ THEN
	DO ~
		TakePartyItem("LCMANFST")
		FadeToColor([30.0],0)
		Wait(3)
		FadeFromColor([30.0],0)
	~
	GOTO LCA_AskAboutLedger3
END

IF ~~ THEN BEGIN LCA_AskAboutLedger3
	SAY @29 /* ~Here you are. ~ */
	
	IF ~
		!Global("LCA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		GiveItemCreate("LCMANFS2", Player1, 1,0,0)
	~
	GOTO LCA_AskAboutLedger4
	
	IF ~
		Global("LCA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		GiveItemCreate("LCMANFS3", Player1, 1,0,0)
	~
	GOTO LCA_AskAboutLedger4
END

IF ~~ THEN BEGIN LCA_AskAboutLedger4
	SAY @31 /* ~Hopefully it's what you're looking for.~  */
	
	IF ~~ THEN REPLY @30 /* ~Thanks for the help.~*/
	DO ~
		AddJournalEntry(@37, QUEST)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_AskAboutSlavery
	SAY @6 /* ~I know that the Shadow Thieves are not responsible. We got out of the slave trade a long time ago. The juice, as they say, is not always worth the squeeze.*/
	
	IF ~~ THEN REPLY @7 /* ~I see.~ */
	GOTO LCA_AskAboutSlavery2
	
	IF ~~ THEN REPLY @8 /* ~Is that all you can give me?~*/
	GOTO LCA_AskAboutSlavery2
END


IF ~~ THEN BEGIN LCA_AskAboutSlavery2
	SAY @9 /* ~Listen. There are only three ways into and out of the city: Wyrm's Crossing, the tunnels beneath the Flaming Fist headquarters, and the docks.~ */
	
	IF ~~ THEN 
	GOTO LCA_AskAboutSlavery2A
	
	IF ~
		Global("bd_player_exiled","global",0)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN 
	DO ~
		SetGlobal("LCA_TunnelAnxiety", "GLOBAL", 1)
		SetGlobalTimer("LCA_TunnelAnxietyTimer", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_AskAboutSlavery2A
END

IF ~~ THEN BEGIN LCA_AskAboutSlavery2A
	SAY @10 /* ~Wyrm's Crossing and the Flaming Fist headquarters are too heavily guarded to move slaves through. If I were you, I'd speak to the Harbor Master.~ */
	
	= @37 /* ~If I were you, I'd speak to the Harbor Master.~ */
	
	IF ~
		!PartyHasItem("LCMANFST")
	~ THEN REPLY @11 /* ~Makes sense. Thanks for the help.~ */
	DO ~
		SetGlobal("LCA_AskedAlatosAboutSlavers", "GLOBAL", 1)
	~
	EXIT
	
	IF ~
		PartyHasItem("LCMANFST")
	~ THEN REPLY @12 /* ~I did speak to him. He handed over these shipping manifests, but they appear to be encoded.~ */
	GOTO LCA_AskAboutManifest
END

IF ~~ THEN BEGIN LCA_AskAboutManifest
	SAY @13 /* ~Let me take a look at those. Hmm. Yes, these are encoded. You won't be able to break the code unless you have the cipher key, and the encoding device.~ */
	
	= @14 /* ~The good news is I recognize the type of device used to generate the encoding. The bad news is that without the cipher key, you won't be able to decode the manifests.~ */
	
	IF ~~ THEN REPLY @15 /* ~Interesting... how many other people or organizations use such devices?~ */
	DO ~
		AddJournalEntry(@38, QUEST)
	~	
	GOTO LCA_AskAboutManifest2
END

IF ~~ THEN BEGIN LCA_AskAboutManifest2
	SAY @16 /* ~Many. They're more common than you may think. Not long ago, we sold a batch of older models to that new outfit based out of the old Iron Throne building.~ */
	
	IF ~~ THEN REPLY @17 /* ~So, we need to find the cipher key and the machine to decode the message?~ */
	DO ~
		SetGlobal("LCA_AskedAlatosAboutManifests", "GLOBAL", 1)
	~
	GOTO LCA_AskAboutManifest3
END

IF ~~ THEN BEGIN LCA_AskAboutManifest3
	SAY @18 /* ~Tell you what - if you can bring me the cipher key, I'll decode the manifests for you using our machine here. Consider it a thank you for all you've done for the city.~ */
	
	IF ~
		PartyHasItem("LCLEDGER")
	~ THEN REPLY @26 /* ~We recovered a ledger from Winston Ventures' headquarters. It seems to contain the cipher key needed to decode the shipping manifest that we found earlier. Can you help?~*/
	GOTO LCA_AskAboutLedger
	
	IF ~
		!PartyHasItem("LCLEDGER")
	~ THEN REPLY @19 /* ~Thanks for the help. We'll return once we find the cipher key.~ */
	EXIT
END
IF ~
	Global("LCA_TalkedToAlatos", "GLOBAL", 1)
	Global("LCA_ReturnToBG", "GLOBAL", 1)
~ THEN BEGIN LCA1
	SAY @20 /* ~Ah, you've returned. How can the Shadow Thieves be of assistance?~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_CorwinAlatosChainManifestsEnd
	SAY @25 /* ~Tell you what - if you can bring me the cipher key, I'll decode the manifests for you using our machine here.~ */
	
	IF ~
		!Dead("Aran")
	~ THEN 
	DO ~
		AddJournalEntry(@38, QUEST)
	~
	GOTO LCA_CorwinAlatosChainManifestsEnd2A
	
	IF ~
		Dead("Aran")
	~ THEN 
	DO ~
		AddJournalEntry(@38, QUEST)
	~
	GOTO LCA_CorwinAlatosChainManifestsEnd2B
END

IF ~~ THEN BEGIN LCA_CorwinAlatosChainManifestsEnd2A
	SAY @35 /* ~Consider it a thank you for all <CHARNAME> has done for this city, and for helping our chapter in Athkatla.~ */
	
	IF ~~ THEN
	EXTERN LCCORWIJ LCA_ThankAlatos2
	
	IF ~
		PartyHasItem("LCLEDGER")
		Global("LCA_BGSlaverPlot", "GLOBAL", 1)
		Global("LCA_AskedAlatosAboutSlavers", "GLOBAL", 1)
		Global("LCA_AskedAlatosAboutManifests", "GLOBAL", 1)
		!Global("LCA_AskedAlatosAboutLedger", "GLOBAL", 1)
	~ THEN
	EXTERN LCCORWIJ LCA_CorwinAlatosChainLedger
END

IF ~~ THEN BEGIN LCA_CorwinAlatosChainManifestsEnd2B
	SAY @36 /* ~Consider it a thank you for all <CHARNAME> has done for this city.~ */
	
	IF ~~ THEN
	EXTERN LCCORWIJ LCA_ThankAlatos2
	
	IF ~
		PartyHasItem("LCLEDGER")
		Global("LCA_BGSlaverPlot", "GLOBAL", 1)
		Global("LCA_AskedAlatosAboutSlavers", "GLOBAL", 1)
		Global("LCA_AskedAlatosAboutManifests", "GLOBAL", 1)
		!Global("LCA_AskedAlatosAboutLedger", "GLOBAL", 1)
	~ THEN
	EXTERN LCCORWIJ LCA_CorwinAlatosChainLedger
END

IF ~~ THEN BEGIN LCA_CorwinAlatosChainSlaversEnd
	SAY @10 /* ~Wyrm's Crossing and the Flaming Fist headquarters are too heavily guarded to move slaves through.~ */

	IF ~~ THEN 
	GOTO LCA_CorwinAlatosChainSlaversEnd2
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		Global("bd_player_exiled","global",0)
	~ THEN 
	DO ~
		SetGlobal("LCA_TunnelAnxiety", "GLOBAL", 1)
		SetGlobalTimer("LCA_TunnelAnxietyTimer", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_CorwinAlatosChainSlaversEnd2
END

IF ~~ THEN BEGIN LCA_CorwinAlatosChainSlaversEnd2
	SAY @37 /* ~If I were you, I'd speak to the Harbor Master.~ */
	
	IF ~~ THEN
	EXTERN LCCORWIJ LCA_ThankAlatos1
	
	IF ~
		PartyHasItem("LCMANFST")
		Global("LCA_BGSlaverPlot", "GLOBAL", 1)
		Global("LCA_AskedAlatosAboutSlavers", "GLOBAL", 1)
		!Global("LCA_AskedAlatosAboutManifests", "GLOBAL", 1)
	~ THEN
	EXTERN LCCORWIJ LCA_CorwinAlatosChainManifests
END

IF ~~ THEN BEGIN LCA_CorwinAlatosChainLedgerEnd
	SAY @29 /* ~Here you are.~ */
	
	IF ~
		!Global("LCA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		GiveItemCreate("LCMANFS2", "LCCORWIN", 1,0,0)
	~
	GOTO LCA_CorwinAlatosChainLedgerEnd2
	
	IF ~
		Global("LCA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		GiveItemCreate("LCMANFS3", "LCCORWIN", 1,0,0)
	~
	GOTO LCA_CorwinAlatosChainLedgerEnd2
END

IF ~~ THEN BEGIN LCA_CorwinAlatosChainLedgerEnd2
	SAY @33 /* ~Hopefully it's what you're looking for.~  */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@37, QUEST)
	~
	EXTERN LCCORWIJ LCA_ThankAlatos3
END

CHAIN
	IF ~~ THEN LCCORWIJ LCA_CorwinAlatosChainManifests	
		@24 /* ~We've spoken to the Harbor Master. He handed over these shipping manifests, but they appear to be encoded.~ */	
		DO ~
			SetGlobal("LCA_AskedAlatosAboutManifests", "GLOBAL", 1)
		~
		== LCALATOS
		@13 /* ~Let me take a look at those. Hmm. Yes, these are encoded. You won't be able to break the code unless you have the cipher key, and the encoding device.~ */
		= @14 /* ~The good news is I recognize the type of device used to generate the encoding. The bad news is that without the cipher key, you won't be able to decode the manifests.~*/
		== LCCORWIJ
		@15 /* ~Interesting... how many other people or organizations use such devices?~*/
		== LCALATOS
		@9 /* ~Many. They're more common than you may think. Not long ago, we sold a batch of older models to that new outfit based out of the old Iron Throne building.~*/
		== LCCORWIJ
		@17 /* ~So, we need to find the cipher key and the machine to decode the message?~*/
		
END LCALATOS LCA_CorwinAlatosChainManifestsEnd

CHAIN
	IF ~~ THEN LCCORWIJ LCA_CorwinAlatosChainSlavers
		@5 /* ~During our time in Athkatla, we learned that some of the refugees from Caelar's crusade were sold as slaves from Baldur's Gate. Do you know anything about this?~*/	
		DO ~
			SetGlobal("LCA_AskedAlatosAboutSlavers", "GLOBAL", 1)
		~
		== LCALATOS
		@6 /* ~I know that the Shadow Thieves are not responsible. We got out of the slave trade a long time ago. The juice, as they say, is not always worth the squeeze.~ */
		== LCCORWIJ
		@8 /* ~Is that all you can give me?~ */
		== LCALATOS
		@9 /* ~Listen. There are only three ways into and out of the city: Wyrm's Crossing, the tunnels beneath the Flaming Fist headquarters, and the docks.~ */
END LCALATOS LCA_CorwinAlatosChainSlaversEnd

CHAIN 
	IF ~~ THEN LCCORWIJ LCA_CorwinAlatosChainLedger
		@32 /* ~We recovered a ledger from Winston Ventures' headquarters. It seems to contain the cipher key needed to decode the shipping manifest that we found earlier. Your assistance is needed in decoding it.~ */
		DO ~
			SetGlobal("LCA_AskedAlatosAboutLedger", "GLOBAL", 1)
			SetGlobal("LCA_DecodedManifest", "GLOBAL", 1)
		~
		== LCALATOS
		@27 /* ~Let me see that.~ */
		= @28 /* ~Yes, I think we'll be able to decode the manifest using the key provided. Give us a few minutes...~ */
		DO ~
			TakePartyItem("LCMANFST")
			FadeToColor([30.0],0)
			Wait(3)
			FadeFromColor([30.0],0)
		~
END LCALATOS LCA_CorwinAlatosChainLedgerEnd