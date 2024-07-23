BEGIN ~XAHARBOR~

IF ~
	Global("XA_LC_HMCutscene", "GLOBAL", 4)
~ THEN BEGIN XA_HM_CutsceneDone
	SAY @36 /* ~Here they are. The shipping manifests for Winston Ventures for the period you mentioned.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_HMCutscene", "GLOBAL", 5)
		SetGlobal("XA_LC_HandedOverManifests", "GLOBAL", 1)
		GiveItemCreate("XAMANFST",LastTalkedToBy(Myself),1,0,0)
		SetGlobal("XA_LC_Journal_SlaveHarbor", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_HarborCorwinChainEnd
END


IF ~
	Global("XA_LC_HarborGreeting", "GLOBAL", 1)
	!GlobalTimerExpired("XA_LC_ManifestsTimer", "GLOBAL")	
	Global("XA_LC_AskedAboutManifests", "GLOBAL", 1)
	!Global("XA_LC_HandedOverManifests", "GLOBAL", 1)
~ THEN BEGIN XA_WaitingOnManifests1
	SAY @17 /* ~I need some more time for those manifests. Give me an hour, I should have them ready for you by then.~ */
	IF ~~ THEN 
	EXIT
END

IF ~
	Global("XA_LC_HarborGreeting", "GLOBAL", 1)
	GlobalTimerExpired("XA_LC_ManifestsTimer", "GLOBAL")	
	Global("XA_LC_AskedAboutManifests", "GLOBAL", 1)
	!Global("XA_LC_HandedOverManifests", "GLOBAL", 1)
~ THEN BEGIN XA_WaitingOnManifests2
	SAY @18 /* ~Ah good. Here are the manifests you requested.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_SlaveHarbor", "GLOBAL", 1)
		SetGlobal("XA_LC_HandedOverManifests", "GLOBAL", 1)
		GiveItemCreate("XAMANFST",LastTalkedToBy(Myself),1,0,0)
	~
	GOTO XA_HandedOverManifests
END

IF ~~ THEN BEGIN XA_WaitingOnManifests3
	SAY @32 /* ~I hope you're able to do some good with them.~ */
	
	IF ~~ THEN REPLY @24 /* ~What is this? These manifests are gibberish!~ */
	
	DO ~
		SetGlobal("XA_LC_HandedOverManifests", "GLOBAL", 1)
	~
	GOTO XA_HandedOverManifests
END

IF ~~ THEN BEGIN XA_HandedOverManifests
	SAY @25 /* ~Aye, they may look like gibberish, but it's because they're encoded.~ */
	
	IF ~~ THEN REPLY @26 /* ~Encoded? How do I decode them?~ */
	GOTO XA_HandedOverManifests2
END

IF ~~ THEN BEGIN XA_HandedOverManifests2
	SAY @27 /* ~I haven't the slightest idea. Maybe someone in the Thieves' Guild will know?~ */
	
	IF ~~ THEN REPLY @28 /* ~Perhaps. Thanks for your help.~ */
	DO ~
		SetGlobal("XA_LC_Journal_SlaveHarbor", "GLOBAL", 2)
	~
	EXIT
END

IF ~
	Global("XA_LC_HarborGreeting", "GLOBAL", 1)
	Global("XA_LC_BGSlaverPlot", "GLOBAL", 1)
	Global("XA_LC_RefugeeQuestComplete", "GLOBAL", 1)
	!Global("XA_LC_ToldHMSlaverDone", "GLOBAL", 1)
~ THEN BEGIN XA_TellHMSlaverDone
	SAY @20 /* ~Hello again - were you able to figure out sold those kids to the slavers?~ */
	
	IF ~~ THEN REPLY @33 /* ~We did. Lord Winston and his company were responsible. He'll be arrested as soon as he returns to the city.~*/
	GOTO XA_WinstonGuilty
END
IF ~
	Global("XA_LC_HarborGreeting", "GLOBAL", 1)
	Global("XA_LC_BGSlaverPlot", "GLOBAL", 1)
	!Global("XA_LC_RefugeeQuestComplete", "GLOBAL", 1)
~ THEN BEGIN XA_HarborGreting3
	SAY @20 /* ~Hello again - were you able to figure out sold those kids to the slavers?~ */
	
	IF ~~ THEN REPLY @21 /* ~No, not yet.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_WinstonGuilty
	SAY @34 /* ~I see... good on ye then. Slavery is a filthy business and those that take part should be punished, I say.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_ToldHMSlaverDone", "GLOBAL", 1)
		ReputationInc(1)
	~
	EXIT
END

IF ~
	Global("XA_LC_HarborGreeting", "GLOBAL", 1)
	Global("XA_LC_RefugeeQuestComplete", "GLOBAL", 1)
	Global("XA_LC_ToldHMSlaverDone", "GLOBAL", 1)
~ THEN BEGIN XA_HarborGreting4
	SAY @15 /* ~Good to see you again.~ */
	IF ~~ THEN 
	EXIT
END

IF ~
	!Global("XA_LC_HarborGreeting", "GLOBAL", 1)
	OR(2)
		!IsGabber("XACORWIN")
		!Global("XA_LC_BGSlaverPlot", "GLOBAL", 1)
~ THEN BEGIN XA_HarborGreting1
	SAY @30 /* ~Good to see you again!~*/
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_HarborGreeting", "GLOBAL", 1)
	~
	GOTO XA_HarborGreeting2
END

IF ~
	IsGabber("XACORWIN")
	Global("XA_LC_BGSlaverPlot", "GLOBAL", 1)
~ THEN BEGIN XA_HarborGreeting1Corwin
	SAY @31 /*  ~Captain! Good to see you again. It's been a while.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_HarborGreeting", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_HarborCorwin
END

IF ~~ THEN BEGIN XA_HarborGreeting2
	SAY @1 /* ~What can I do for ya?~ */
	
	IF ~
		!Global("XA_LC_BGSlaverPlot", "GLOBAL", 1)
	~ THEN REPLY @35 /* ~Nothing right now.~ */
	EXIT
	
	IF ~
		Global("XA_LC_BGSlaverPlot", "GLOBAL", 1)
	~ THEN REPLY @3 /* ~While in Athkatla, we learned that a number of children were being sold as slaves.~ */
	GOTO XA_RefugeeSlavery
	
	IF ~
		IsValidForPartyDialog("XACORWIN")
	~ THEN
	EXTERN XACORWIJ XA_HarborCorwin
END

IF ~~ THEN BEGIN XA_RefugeeSlavery
	SAY @4 /* ~Aye, the slave trade is a terrible thing.~ */
	
	IF ~~ THEN REPLY @5 /* ~It is. What's even more concerning is that these children were refugees of Caelar's crusade. They claimed to have been shipped from here. Do you know anything about that?~ */
	GOTO XA_RefugeeSlavery2
END

IF ~~ THEN BEGIN XA_RefugeeSlavery2
	SAY @6 /* ~Shipped from Baldur's Gate, you say? No, I don't know anything about it. We do periodic inspections of cargo on behalf of the city authorities, but we haven't come across any children.~ */
	
	=@7 /* ~Now, wait a minute... A couple months back, there was a program started by some upstart noble to resettle refugees. He claimed to have connections in other cities that he used to find families willing to host them.~*/
	
	=@8 /* ~He chartered a number of ships from this dock, to places like Athkatla, Waterdeep, and others.~*/
	
	IF ~
		!Global("XA_LC_AskedAboutName", "GLOBAL", 1)
	~ THEN REPLY @9 /* ~What is his name? Where is he now?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutName", "GLOBAL", 1)
	~
	GOTO XA_AskName
	
	IF ~
		!Global("XA_LC_AskedAboutManifests", "GLOBAL", 1)
	~ THEN REPLY @11 /* ~Do you have any shipping manifests?~  */
	DO ~
		SetGlobal("XA_LC_AskedAboutManifests", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_ManifestsTimer", "GLOBAL", ONE_HOUR)
	~
	GOTO XA_AskAboutManifests
END

IF ~~ THEN BEGIN XA_AskAboutManifests
	SAY @16 /* ~Yes, I'll need some time to locate them. Give me an hour, I should have them ready for you by then.~*/
	
	IF ~
		!Global("XA_LC_AskedAboutName", "GLOBAL", 1)
	~ THEN REPLY @9 /* ~What is his name? Where is he now?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutName", "GLOBAL", 1)
	~
	GOTO XA_AskName
	
	IF ~
		Global("XA_LC_AskedAboutName", "GLOBAL", 1)
	~
	THEN REPLY @12 /* ~Is there anything else you can tell me?~ */
	GOTO XA_EndRefugeeQuestioning
END

IF ~~ THEN BEGIN XA_AskName
	SAY @10 /* ~I don't remember his name, but I know he and his company have set up shop in the old Iron Throne headquarters.~ */
	
	IF ~
		!Global("XA_LC_AskedAboutManifests", "GLOBAL", 1)
	~ THEN REPLY @11 /* ~Do you have any shipping manifests?~  */
	DO ~
		SetGlobal("XA_LC_AskedAboutManifests", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_ManifestsTimer", "GLOBAL", ONE_HOUR)
	~
	GOTO XA_AskAboutManifests
	
	IF ~
		Global("XA_LC_AskedAboutManifests", "GLOBAL", 1)
	~
	THEN REPLY @12 /* ~Is there anything else you can tell me?~ */
	GOTO XA_EndRefugeeQuestioning
END

IF ~~ THEN BEGIN XA_EndRefugeeQuestioning
	SAY @13 /* ~No, there's nothing else.~ */
	
	IF ~~ THEN REPLY @14 /* ~~Thanks for your help. I'll come back in an hour to pick up those manifests.~ */
	EXIT	
END