BEGIN ~LCHARBOR~

IF ~
	Global("LCA_HarborGreeting", "GLOBAL", 1)
	!GlobalTimerExpired("LCA_ManifestsTimer", "GLOBAL")	
	Global("LCA_AskedAboutManifests", "GLOBAL", 1)
	!Global("LCA_HandedOverManifests", "GLOBAL", 1)
~ THEN BEGIN LCA_WaitingOnManifests1
	SAY @17 /* ~I need some more time for those manifests. Give me an hour, I should have them ready for you by then.~ */
	IF ~~ THEN 
	EXIT
END

IF ~
	Global("LCA_HarborGreeting", "GLOBAL", 1)
	GlobalTimerExpired("LCA_ManifestsTimer", "GLOBAL")	
	Global("LCA_AskedAboutManifests", "GLOBAL", 1)
	!Global("LCA_HandedOverManifests", "GLOBAL", 1)
~ THEN BEGIN LCA_WaitingOnManifests2
	SAY @18 /* ~Ah good. Here are the manifests you requested.~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@36, QUEST)
		SetGlobal("LCA_HandedOverManifests", "GLOBAL", 1)
		GiveItemCreate("LCMANFST",LastTalkedToBy(Myself),1,0,0)
	~
	GOTO LCA_HandedOverManifests
END

IF ~~ THEN BEGIN LCA_WaitingOnManifests3
	SAY @32 /* ~I hope you're able to do some good with them.~ */
	
	IF ~~ THEN REPLY @24 /* ~What is this? These manifests are gibberish!~ */
	
	DO ~
		SetGlobal("LCA_HandedOverManifests", "GLOBAL", 1)
	~
	GOTO LCA_HandedOverManifests
END

IF ~~ THEN BEGIN LCA_HandedOverManifests
	SAY @25 /* ~Aye, they may look like gibberish, but it's because they're encoded.~ */
	
	IF ~~ THEN REPLY @26 /* ~Encoded? How do I decode them?~ */
	GOTO LCA_HandedOverManifests2
END

IF ~~ THEN BEGIN LCA_HandedOverManifests2
	SAY @27 /* ~I haven't the slightest idea. Maybe someone in the Thieves' Guild will know?~ */
	
	IF ~~ THEN REPLY @28 /* ~Perhaps. Thanks for your help.~ */
	DO ~
		AddJournalEntry(@29, INFO)
	~
	EXIT
END

IF ~
	Global("LCA_HarborGreeting", "GLOBAL", 1)
	Global("LCA_BGSlaverPlot", "GLOBAL", 1)
	Global("LCA_RefugeeQuestComplete", "GLOBAL", 1)
	!Global("LCA_ToldHMSlaverDone", "GLOBAL", 1)
~ THEN BEGIN LCA_TellHMSlaverDone
	SAY @20 /* ~Hello again - were you able to figure out sold those kids to the slavers?~ */
	
	IF ~~ THEN REPLY @33 /* ~We did. Lord Winston and his company were responsible. He'll be arrested as soon as he returns to the city.~*/
	GOTO LCA_WinstonGuilty
END
IF ~
	Global("LCA_HarborGreeting", "GLOBAL", 1)
	Global("LCA_BGSlaverPlot", "GLOBAL", 1)
	!Global("LCA_RefugeeQuestComplete", "GLOBAL", 1)
~ THEN BEGIN LCA_HarborGreting3
	SAY @20 /* ~Hello again - were you able to figure out sold those kids to the slavers?~ */
	
	IF ~~ THEN REPLY @21 /* ~No, not yet.~ */
	EXIT
END

IF ~~ THEN BEGIN LCA_WinstonGuilty
	SAY @34 /* ~I see... good on ye then. Slavery is a filthy business and those that take part should be punished, I say.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_ToldHMSlaverDone", "GLOBAL", 1)
		ReputationInc(1)
	~
	EXIT
END

IF ~
	Global("LCA_HarborGreeting", "GLOBAL", 1)
	Global("LCA_RefugeeQuestComplete", "GLOBAL", 1)
	Global("LCA_ToldHMSlaverDone", "GLOBAL", 1)
~ THEN BEGIN LCA_HarborGreting4
	SAY @15 /* ~Good to see you again.~ */
	IF ~~ THEN 
	EXIT
END

IF ~
	!Global("LCA_HarborGreeting", "GLOBAL", 1)
	OR(2)
		!IsGabber("LCCORWIN")
		!Global("LCA_BGSlaverPlot", "GLOBAL", 1)
~ THEN BEGIN LCA_HarborGreting1
	SAY @30 /* ~Good to see you again!~*/
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_HarborGreeting", "GLOBAL", 1)
	~
	GOTO LCA_HarborGreeting2
END

IF ~
	IsGabber("LCCORWIN")
	Global("LCA_BGSlaverPlot", "GLOBAL", 1)
~ THEN BEGIN LCA_HarborGreeting1Corwin
	SAY @31 /*  ~Captain! Good to see you again. It's been a while.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_HarborGreeting", "GLOBAL", 1)
	~
	EXTERN LCCORWIJ LCA_HarborCorwin
END

IF ~~ THEN BEGIN LCA_HarborGreeting2
	SAY @1 /* ~What can I do for ya?~ */
	
	IF ~
		!Global("LCA_BGSlaverPlot", "GLOBAL", 1)
	~ THEN REPLY @35 /* ~Nothing right now.~ */
	EXIT
	
	IF ~
		Global("LCA_BGSlaverPlot", "GLOBAL", 1)
	~ THEN REPLY @3 /* ~While in Athkatla, we learned that a number of children were being sold as slaves.~ */
	GOTO LCA_RefugeeSlavery
END

IF ~~ THEN BEGIN LCA_RefugeeSlavery
	SAY @4 /* ~Aye, the slave trade is a terrible thing.~ */
	
	IF ~~ THEN REPLY @5 /* ~It is. What's even more concerning is that these children were refugees of Caelar's crusade. They claimed to have been shipped from here. Do you know anything about that?~ */
	GOTO LCA_RefugeeSlavery2
END

IF ~~ THEN BEGIN LCA_RefugeeSlavery2
	SAY @6 /* ~Shipped from Baldur's Gate, you say? No, I don't know anything about it. We do periodic inspections of cargo on behalf of the city authorities, but we haven't come across any children.~ */
	
	=@7 /* ~Now, wait a minute... A couple months back, there was a program started by some upstart noble to resettle refugees. He claimed to have connections in other cities that he used to find families willing to host them.~*/
	
	=@8 /* ~He chartered a number of ships from this dock, to places like Athkatla, Waterdeep, and others.~*/
	
	IF ~
		!Global("LCA_AskedAboutName", "GLOBAL", 1)
	~ THEN REPLY @9 /* ~What is his name? Where is he now?~ */
	DO ~
		SetGlobal("LCA_AskedAboutName", "GLOBAL", 1)
	~
	GOTO LCA_AskName
	
	IF ~
		!Global("LCA_AskedAboutManifests", "GLOBAL", 1)
	~ THEN REPLY @11 /* ~Do you have any shipping manifests?~  */
	DO ~
		SetGlobal("LCA_AskedAboutManifests", "GLOBAL", 1)
		SetGlobalTimer("LCA_ManifestsTimer", "GLOBAL", ONE_HOUR)
	~
	GOTO LCA_AskAboutManifests
END

IF ~~ THEN BEGIN LCA_AskAboutManifests
	SAY @16 /* ~Yes, I'll need some time to locate them. Give me an hour, I should have them ready for you by then.~*/
	
	IF ~
		!Global("LCA_AskedAboutName", "GLOBAL", 1)
	~ THEN REPLY @9 /* ~What is his name? Where is he now?~ */
	DO ~
		SetGlobal("LCA_AskedAboutName", "GLOBAL", 1)
	~
	GOTO LCA_AskName
	
	IF ~
		Global("LCA_AskedAboutName", "GLOBAL", 1)
	~
	THEN REPLY @12 /* ~Is there anything else you can tell me?~ */
	GOTO LCA_EndRefugeeQuestioning
END

IF ~~ THEN BEGIN LCA_AskName
	SAY @10 /* ~I don't remember his name, but I know he and his company have set up shop in the old Iron Throne headquarters.~ */
	
	IF ~
		!Global("LCA_AskedAboutManifests", "GLOBAL", 1)
	~ THEN REPLY @11 /* ~Do you have any shipping manifests?~  */
	DO ~
		SetGlobal("LCA_AskedAboutManifests", "GLOBAL", 1)
		SetGlobalTimer("LCA_ManifestsTimer", "GLOBAL", ONE_HOUR)
	~
	GOTO LCA_AskAboutManifests
	
	IF ~
		Global("LCA_AskedAboutManifests", "GLOBAL", 1)
	~
	THEN REPLY @12 /* ~Is there anything else you can tell me?~ */
	GOTO LCA_EndRefugeeQuestioning
END

IF ~~ THEN BEGIN LCA_EndRefugeeQuestioning
	SAY @13 /* ~No, there's nothing else.~ */
	
	IF ~~ THEN REPLY @14 /* ~~Thanks for your help. I'll come back in an hour to pick up those manifests.~ */
	EXIT	
END