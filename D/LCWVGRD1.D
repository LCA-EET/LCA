BEGIN ~LCWVGRD1~

IF ~
	Global("LCA_GuardGetLost", "GLOBAL", 1)
	!IsGabber("LCCORWIN")
~ THEN BEGIN LCA_GetLost2
	SAY @14 /* ~As I told you earlier - if you've no business with Winston Ventures, then please leave.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	!Global("LCA_GuardIntroduction", "GLOBAL", 1)
	!IsGabber("LCCORWIN")
~ THEN BEGIN LCA_Greeting
	SAY @0 /*  ~Welcome to Winston Ventures. Please state your business.~ */
	
	IF ~~ THEN REPLY @1 /* ~Winston what? Isn't this the Iron Throne building?~*/
	DO ~
		SetGlobal("LCA_GuardIntroduction", "GLOBAL", 1)
	~
	GOTO LCA_IronThrone
	
	IF ~~ THEN REPLY @5 /* ~Just looking around.~*/
	DO ~
		SetGlobal("LCA_GuardIntroduction", "GLOBAL", 1)
	~
	GOTO LCA_GetLost
	
	IF ~
		Global("LCA_BGSlaverPlot", "GLOBAL", 1)
		PartyHasItem("LCMANFST")
		!Global("LCA_RefugeeQuestComplete", "GLOBAL", 1)
	~ THEN REPLY @6 /* ~We're looking into reports of slaver activity in Baldur's Gate. We found some encoded shipping manifests that may shed some light on the investigation.~*/
	DO ~
		SetGlobal("LCA_GuardIntroduction", "GLOBAL", 1)
	~
	GOTO LCA_SlaverQuestion
END

IF ~~ THEN BEGIN LCA_SlaverQuestion
	SAY @7 /* ~Go and speak with Virgil on the third floor. He'll be able to help you with that manifest.~*/
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_GetLost
	SAY @9 /* ~If you've no business here, then I kindly ask that you leave. Good day.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_GuardGetLost", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_IronThrone
	SAY @2 /* ~It was, until Lord Winston moved his company to this tower, shortly after the start of Caelar Argent's crusade.~*/
	
	IF ~~ THEN REPLY @3 /* ~I see. Where is this Lord Winston?~ */
	GOTO LCA_Winston
END

IF ~~ THEN BEGIN LCA_Winston
	SAY @4 /* ~Lord Winston is away on business. Virgil, his assistant, is running things in his stead. You can find him on the third floor.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	!Global("LCA_GuardIntroduction", "GLOBAL", 1)
	IsGabber("LCCORWIN")
	!TimeOfDay(NIGHT)
~ THEN BEGIN LCA_CorwinGreeting
	SAY @10 /* ~Good day, officer.~ */
	
	IF ~~ THEN
	GOTO LCA_CorwinGreetingChain
	IF ~
		Global("LCA_BGSlaverPlot", "GLOBAL", 1)
		PartyHasItem("LCMANFST")
		!Global("LCA_RefugeeQuestComplete", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("LCA_GuardIntroduction", "GLOBAL", 1)
	~
	GOTO LCA_CorwinGreetingSlaverChain
END

IF ~
	!Global("LCA_GuardIntroduction", "GLOBAL", 1)
	IsGabber("LCCORWIN")
	TimeOfDay(NIGHT)
~ THEN BEGIN LCA_CorwinGreeting
	SAY @11 /* ~Good evening, officer.~ */
	
	IF ~~ THEN
	GOTO LCA_CorwinGreetingChain
	IF ~
		Global("LCA_BGSlaverPlot", "GLOBAL", 1)
		!Global("LCA_RefugeeQuestComplete", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("LCA_GuardIntroduction", "GLOBAL", 1)
	~
	GOTO LCA_CorwinGreetingSlaverChain
END

IF ~
	IsGabber("LCCORWIN")
	TimeOfDay(NIGHT)
~ THEN LCA_NightGreeting
	SAY @11 /* ~Good evening, officer.~*/
	IF ~~ THEN EXIT
END

IF ~
	IsGabber("LCCORWIN")
	!TimeOfDay(NIGHT)
~ THEN LCA_NightGreeting
	SAY @10 /* ~Good day, officer.~*/
	IF ~~ THEN EXIT
END

IF ~
	True()
~ THEN LCA_Default
	SAY @15 /* ~I'm watching you. Don't try anything.~ */
	IF ~~ THEN
	EXIT
END

CHAIN LCWVGRD1 LCA_CorwinGreetingChain
	@12 /* ~Do you require assistance?~  */
	== LCCORWIJ
	@13 /* ~Not at this time.~ */
EXIT

CHAIN LCWVGRD1 LCA_CorwinGreetingSlaverChain
	@12 /* ~Do you require assistance?~  */
	== LCCORWIJ
	@6 /* ~We're looking into reports of slaver activity in Baldur's Gate. We found some encoded shipping manifests that may shed some light on the investigation.~ */
	== LCWVGRD1
	@7 /* ~Go and speak with Virgil on the third floor. He'll be able to help you with that manifest.~ */
	== LCCORWIJ
	@8 /* ~Thank you.~*/
EXIT
