BEGIN ~XAWVGRD1~

IF ~
	Global("XA_LC_GuardGetLost", "GLOBAL", 1)
	!IsGabber("XACORWIN")
~ THEN BEGIN XA_GetLost2
	SAY @14 /* ~As I told you earlier - if you've no business with Winston Ventures, then please leave.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	!Global("XA_LC_GuardIntroduction", "GLOBAL", 1)
	!IsGabber("XACORWIN")
~ THEN BEGIN XA_Greeting
	SAY @0 /*  ~Welcome to Winston Ventures. Please state your business.~ */
	
	IF ~~ THEN REPLY @1 /* ~Winston what? Isn't this the Iron Throne building?~*/
	DO ~
		SetGlobal("XA_LC_GuardIntroduction", "GLOBAL", 1)
	~
	GOTO XA_IronThrone
	
	IF ~~ THEN REPLY @5 /* ~Just looking around.~*/
	DO ~
		SetGlobal("XA_LC_GuardIntroduction", "GLOBAL", 1)
	~
	GOTO XA_GetLost
	
	IF ~
		Global("XA_LC_BGSlaverPlot", "GLOBAL", 1)
		PartyHasItem("XAMANFST")
		!Global("XA_LC_RefugeeQuestComplete", "GLOBAL", 1)
	~ THEN REPLY @6 /* ~We're looking into reports of slaver activity in Baldur's Gate. We found some encoded shipping manifests that may shed some light on the investigation.~*/
	DO ~
		SetGlobal("XA_LC_GuardIntroduction", "GLOBAL", 1)
	~
	GOTO XA_SlaverQuestion
END

IF ~~ THEN BEGIN XA_SlaverQuestion
	SAY @7 /* ~Go and speak with Virgil on the third floor. He'll be able to help you with that manifest.~*/
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_GetLost
	SAY @9 /* ~If you've no business here, then I kindly ask that you leave. Good day.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_GuardGetLost", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_IronThrone
	SAY @2 /* ~It was, until Lord Winston moved his company to this tower, shortly after the start of Caelar Argent's crusade.~*/
	
	IF ~~ THEN REPLY @3 /* ~I see. Where is this Lord Winston?~ */
	GOTO XA_Winston
END

IF ~~ THEN BEGIN XA_Winston
	SAY @4 /* ~Lord Winston is away on business. Virgil, his assistant, is running things in his stead. You can find him on the third floor.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	!Global("XA_LC_GuardIntroduction", "GLOBAL", 1)
	IsGabber("XACORWIN")
	!TimeOfDay(NIGHT)
~ THEN BEGIN XA_CorwinGreeting
	SAY @10 /* ~Good day, officer.~ */
	
	IF ~~ THEN
	GOTO XA_CorwinGreetingChain
	IF ~
		Global("XA_LC_BGSlaverPlot", "GLOBAL", 1)
		PartyHasItem("XAMANFST")
		!Global("XA_LC_RefugeeQuestComplete", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_GuardIntroduction", "GLOBAL", 1)
	~
	GOTO XA_CorwinGreetingSlaverChain
END

IF ~
	!Global("XA_LC_GuardIntroduction", "GLOBAL", 1)
	IsGabber("XACORWIN")
	TimeOfDay(NIGHT)
~ THEN BEGIN XA_CorwinGreeting
	SAY @11 /* ~Good evening, officer.~ */
	
	IF ~~ THEN
	GOTO XA_CorwinGreetingChain
	IF ~
		Global("XA_LC_BGSlaverPlot", "GLOBAL", 1)
		!Global("XA_LC_RefugeeQuestComplete", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_GuardIntroduction", "GLOBAL", 1)
	~
	GOTO XA_CorwinGreetingSlaverChain
END

IF ~
	IsGabber("XACORWIN")
	TimeOfDay(NIGHT)
~ THEN XA_NightGreeting
	SAY @11 /* ~Good evening, officer.~*/
	IF ~~ THEN EXIT
END

IF ~
	IsGabber("XACORWIN")
	!TimeOfDay(NIGHT)
~ THEN XA_NightGreeting
	SAY @10 /* ~Good day, officer.~*/
	IF ~~ THEN EXIT
END

IF ~
	True()
~ THEN XA_Default
	SAY @15 /* ~I'm watching you. Don't try anything.~ */
	IF ~~ THEN
	EXIT
END

CHAIN XAWVGRD1 XA_CorwinGreetingChain
	@12 /* ~Do you require assistance?~  */
	== XACORWIJ
	@13 /* ~Not at this time.~ */
EXIT

CHAIN XAWVGRD1 XA_CorwinGreetingSlaverChain
	@12 /* ~Do you require assistance?~  */
	== XACORWIJ
	@6 /* ~We're looking into reports of slaver activity in Baldur's Gate. We found some encoded shipping manifests that may shed some light on the investigation.~ */
	== XAWVGRD1
	@7 /* ~Go and speak with Virgil on the third floor. He'll be able to help you with that manifest.~ */
	== XACORWIJ
	@8 /* ~Thank you.~*/
EXIT
