BEGIN ~XAWVBART~

IF ~
	Global("XA_LC_RefugeeQuestComplete", "GLOBAL", 1)
	Global("XA_LC_MaxFriendly_Corwin", "GLOBAL", 1)
	IsGabber("XACORWIN")
~ THEN BEGIN XA_WinstonGuilty_Corwin
	SAY @75 /* ~Nice to see you again, Captain. What can I get you?~ */
	
	IF ~~ THEN
	EXTERN XACORWIJ CorwinWinstonGuiltyChain //OK
END

IF ~
	Global("XA_LC_RefugeeQuestComplete", "GLOBAL", 1)
	Global("XA_LC_MaxFriendly_Charname", "GLOBAL", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_WinstonGuilty
	SAY @68 /*~<CHARNAME> - What can I get ya?~ */
	
	IF ~~ THEN REPLY @69 /* ~Listen, Max. I wanted to let you know that Virgil's been arrested. He confessed that Winston and his company were selling refugees as slaves.~ */
	GOTO XA_WinstonGuilty2 //OK
END

IF ~~ THEN BEGIN XA_WinstonGuilty2
	SAY @70 /* ~That's... that's a damn shame. How could they do such a thing?~*/
	
	IF ~~ THEN REPLY @71 /* ~Virgil said that Winston was overwhelmed by the number of refugees, and resorted to contacting slavers in different cities. The authorities know you weren't involved.~*/
	GOTO XA_WinstonGuilty3 //OK
END

IF ~~ THEN BEGIN XA_WinstonGuilty3
	SAY @72 /* ~Thanks, for the heads up. I better start looking for another job... I hear the Blushing Mermaid is hiring...~ */
	
	IF ~~ THEN REPLY @73 /* ~Take care of yourself, Max.~ */
	GOTO XA_WinstonGuilty4 //OK
END

IF ~~ THEN BEGIN XA_WinstonGuilty4
	SAY @74 /* ~You too.~ */
	
	IF ~~ THEN
	DO ~
		EscapeAreaObject("Ext613a")
	~
	EXIT
END

IF ~  
	NumTimesTalkedTo(0)
	IsGabber(Player1)
~ THEN BEGIN XA_GreetCharname // from:
	SAY @4 /* ~Hey there, mate. Don't recognize you, which is strange, considering I know everyone here at Winston Ventures. Why don't you tell me who you are?~ */
	
	IF ~~ THEN REPLY @7 /* ~I'm <CHARNAME>. Who're you?~ */ 
	GOTO XA_WelcomeCharname //OK
	
	IF ~~ THEN REPLY @5 /* ~None of your business.~ */ 
	GOTO XA_NoneOfYourBusiness //OK
END

IF ~
	IsGabber("XACORWIN")
	TimeOfDay(NIGHT)
	!Global("XA_LC_CorwinMetMax", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinGreet_Night
	SAY @27 /*~Evenin' officer.~*/
	
	IF ~~ THEN	
	DO ~
		SetGlobal("XA_LC_CorwinMetMax", "GLOBAL", 1)
	~
	GOTO XA_CorwinGreet //OK
END

IF ~
	IsGabber("XACORWIN")
	!TimeOfDay(NIGHT)
	!Global("XA_LC_CorwinMetMax", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinGreet_Day
	SAY @28 /*~Good day, officer.~*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinMetMax", "GLOBAL", 1)
	~
	GOTO XA_CorwinGreet //OK
END

IF ~
	IsGabber("XACORWIN")
	Global("XA_LC_CorwinMetMax", "GLOBAL", 1)
~ THEN BEGIN XA_AlreadySpokeToCorwin
	SAY @51 /*~Always a pleasure to see you, Captain. What can I get for you?~*/
	
	IF ~~ THEN EXTERN XACORWIJ CorwinWantsNothingChain //OK
	
	IF ~
		!Global("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("XAMANFST")
		!Global("XA_LC_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
	~	
	EXTERN XACORWIJ CorwinBartenderSlaverChain_DoesntKnowName //OK
	
	IF ~
		!Global("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("XAMANFST")
		Global("XA_LC_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
	~	
	EXTERN XACORWIJ CorwinBartenderSlaverChain_KnowsName //OK
END

IF ~~ THEN BEGIN XA_CorwinGreet
	SAY @29 /* ~It's good to see a new face around here... Can I get you anything?~ */
	
	IF ~
		!Global("XA_LC_CorwinWVDrink", "GLOBAL", 1)
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinWVDrink", "GLOBAL", 1)
	~
	EXTERN XACORWIJ CorwinBartenderDrinkChain //OK
END

IF ~
	True()
~ THEN BEGIN 0
	SAY @0 /* ~What can I get 'ya?~ */
	
	IF ~
		!Global("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("XAMANFST")
	~ THEN REPLY @79 /* ~Listen. I have reason to believe that Winston, or someone in his company, is involved in slaver activity.~  */
	DO ~
		SetGlobal("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
	~
	GOTO XA_SlaverQuestioning //OK
	
	IF ~
		!Global("XA_LC_AskBartender_Winston", "GLOBAL", 1)
	~ THEN REPLY @1 /* ~Information. Tell me about Lord Winston and this company.~ */
	DO ~
		SetGlobal("XA_LC_AskBartender_Winston", "GLOBAL", 1)
	~
	GOTO XA_AskBartender_Winston //OK

	IF ~~ THEN REPLY @2 /* ~What have you got?~ */
	DO ~
		StartStore("XAWVBAR", LastTalkedToBy(Myself))
	~
	EXIT
END

IF ~~ THEN BEGIN XA_AskBartender_Winston
	SAY @13 /* ~Winston's a nice guy, as far as nobles go, anyway. The company has offices in Cormir, Sembia, Waterdeep, and here obviously. He deals in commodities trading and futures, and lately, refugee resettlement. ~ */
	
	IF ~~ THEN REPLY @14 /* ~How does a commodities trader end up getting involved with refugees?~ */
	GOTO XA_AskBartender_Winston2 //OK
END

IF ~~ THEN BEGIN XA_AskBartender_Winston2
	SAY @15 /* ~The Dukes wanted the refugees gone. As I understand, they offered Winston a license to operate in the city, if he agreed to resolve the refugee crisis.~ */
	=@16 /*~Fast forward a few months later, and the refugees are gone, and both Winston and the Dukes are happy.~*/
	IF ~~ THEN REPLY @76 /* ~I see. And where is Winston now?~ */
	GOTO XA_AskBartender_Winston3 //OK
END

IF ~~ THEN BEGIN XA_AskBartender_Winston3
	SAY @77 /*~Oh, he's away from the city on business. If you need something, speak to Virgil. He's in the library in the next room.~*/
	
	IF ~~ THEN REPLY @78 /* ~Thanks.~ */
	EXIT
	
	IF ~
		!Global("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("XAMANFST")
	~ THEN REPLY @79 /* ~Listen. I have reason to believe that Winston, or someone in his company, is involved in slaver activity.~  */
	DO ~
		SetGlobal("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
	~
	GOTO XA_SlaverQuestioning //OK
END

IF ~~ THEN BEGIN XA_WelcomeCharname
	SAY @8 /* ~<CHARNAME>! Well I'll be, it's the hero of Baldur's Gate! I'm Max, here, have a drink on the house.~ */
	
	IF ~~ THEN REPLY @9 /* ~Thanks.~ */
	DO ~
		SetGlobal("XA_LC_MaxFriendly_Charname", "GLOBAL", 1)
	~
	GOTO XA_WelcomeCharname2 //OK
END

IF ~~ THEN BEGIN XA_WelcomeCharname2
	SAY @11 /* ~Don't mention it. So, what brings you here?~ */
	
	IF ~
		!Global("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("XAMANFST")
	~ THEN REPLY @20 /* ~Listen, Max. I have reason to believe that Winston, or someone in his company, is involved in slaver activity.~  */
	DO ~
		SetGlobal("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
	~
	GOTO XA_SlaverQuestioning //OK
	
	IF ~~ THEN REPLY @12 /* ~Well, last time I was here it was under some very different circumstances. Why don't you tell me about Lord Winston and his company?~ */
	DO ~
		SetGlobal("XA_LC_AskBartender_Winston", "GLOBAL", 1)
	~
	GOTO XA_WelcomeCharname3 //OK
	
END

IF ~~ THEN BEGIN XA_WelcomeCharname3
	SAY @13 /* ~Winston's a nice guy, as far as nobles go, anyway. The company has offices in Cormir, Sembia, Waterdeep, and here obviously. He deals in commodities trading and futures, and lately, refugee resettlement. ~ */
	
	IF ~~ THEN REPLY @14 /* ~How does a commodities trader end up getting involved with refugees?~ */
	GOTO XA_WelcomeCharname4 //OK
END

IF ~~ THEN BEGIN XA_WelcomeCharname4
	SAY @15 /* ~The Dukes wanted the refugees gone. As I understand, they offered Winston a license to operate in the city, if he agreed to resolve the refugee crisis.~ */
	
	= @16 /* ~Fast forward a few months later, and the refugees are gone, and both Winston and the Dukes are happy.~ */
	
	IF ~~ THEN REPLY @17 /* ~I see. Thanks for the information, Max.~ */
	GOTO XA_WelcomeCharnameEnd //OK
	
	IF ~
		!Global("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("XAMANFST")
	~ THEN REPLY @20 /* ~Listen, Max. I have reason to believe that Winston, or someone in his company, is involved in slaver activity.~  */
	DO ~
		SetGlobal("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
	~
	GOTO XA_SlaverQuestioning //OK
END


IF ~~ THEN BEGIN XA_WelcomeCharnameEnd 
	SAY @19 /* ~Of course. If there's anything else you need, just ask.~ */
	
	IF ~~ THEN EXIT
	
	IF ~
		!Global("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("XAMANFST")
	~ THEN REPLY @20 /* ~Listen, Max. I have reason to believe that Winston, or someone in his company, is involved in slaver activity.~  */
	DO ~
		SetGlobal("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
	~
	GOTO XA_SlaverQuestioning //OK
END
IF ~~ THEN BEGIN XA_NoneOfYourBusiness
	SAY @6 /* ~Suit yourself. What can I get for 'ya?~ */
	
	IF ~
		PartyHasItem("XAMANFST")
		!Global("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
	~ THEN REPLY @65 /* ~I've reason to suspect that this company is involved in slaver activity.~ */
	DO ~
		SetGlobal("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
	~
	GOTO XA_SlaverQuestioning //OK
	
	IF ~
		!Global("XA_LC_AskBartender_Winston", "GLOBAL", 1)
	~ THEN REPLY @1 /* ~Information. Tell me about Lord Winston and this company.~ */
	GOTO XA_AskBartender_Winston

	IF ~~ THEN REPLY @2 /* ~What have you got?~ */
	DO ~
		StartStore("XAWVBAR", LastTalkedToBy(Myself))
	~
	EXIT
END

IF ~~ THEN BEGIN XA_SlaverQuestioning
	SAY @66 /* ~Really? Why do you think that?~ */
	
	IF ~ 
		Global("XA_LC_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN REPLY @23 /* ~While in Athkatla, we freed a girl named Tina Bennett. She was being held captive in a slaver stockade.~*/
	GOTO XA_SlaverQuestioning2_KnowName //OK
	
	IF ~
		Global("XA_LC_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN REPLY @62 /* ~While in Athkatla, we learned that the children of the refugees from Caelar's crusade were being sold as slaves. We asked the harbor master what he knew, and he told us that Winston and his company had sent refugees to cities up and down the coast, including Athkatla.~*/
	GOTO XA_SlaverQuestioning2_DoesntKnowName //OK
END

IF ~~ THEN BEGIN XA_SlaverQuestioning2_DoesntKnowName 
	SAY @64 /* ~I'm sure there's been some kind of misunderstanding. Speak to Virgil, he'll be able to help you. He's in the library, in the next room over.~*/
	
	IF ~~ THEN EXIT	
END

IF ~~ THEN BEGIN XA_SlaverQuestioning2_KnowName
	SAY @24 /* ~Tina Bennett.. dimples, blonde hair, about yea high? I remember her! Sweet kid... her mom said that they were going on a voyage to a new home in Athkatla. You're saying that they were sold into slavery instead?~*/
	
	IF ~~ THEN REPLY @25 /* ~That's right.~ */
	GOTO XA_SlaverQuestioning3_KnowName //OK
	
END

IF ~~ THEN BEGIN XA_SlaverQuestioning3_KnowName
	SAY @67 /* ~I don't know what to say... Go and speak with Virgil, he's in the library in the next room. Lord Winston is away on business, and Virgil is running things in his absence.~ */
	
	= @58 /* ~Also... I shouldn't be telling you this, but I know Winston keeps a separate ledger than the 'official' one...~*/
	= @59 /* ~If you ask Virgil about it, he will deny it. You should check Winston's office, on the fourth floor.~*/
	IF ~~ THEN REPLY @60 /* ~Thanks for the help.~*/
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinBartenderSwitch //OK
	SAY @42 /* ~I see... and did you? I mean, did you get the one responsible?~ */
	
	IF ~
		Global("XA_LC__CorwinRomanceActive", "GLOBAL", 2)
	~ THEN EXTERN XACORWIJ XA_CorwinBartenderEnd_Romance //OK
	
	IF ~
		!Global("XA_LC__CorwinRomanceActive", "GLOBAL", 2)
	~ THEN EXTERN XACORWIJ XA_CorwinBartenderEnd //OK
	
END
IF ~~ THEN XA_CorwinManifestSwitch_Romance
	SAY @49 /* ~Enjoy your drink, you've certainly earned it. If you need anything else, let me know.~*/
	
	IF ~~ THEN EXIT
	
	IF ~
		!Global("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("XAMANFST")
		!Global("XA_LC_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
	~	
	EXTERN XACORWIJ CorwinBartenderSlaverChain_DoesntKnowName //OK
	
	IF ~
		!Global("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("XAMANFST")
		Global("XA_LC_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
	~	
	EXTERN XACORWIJ CorwinBartenderSlaverChain_KnowsName //OK
END

IF ~~ THEN XA_CorwinManifestSwitch_NonRomance
	SAY @38 /* ~Good to hear. Well, I'm sure you're glad to be home. Let me know if you need anything else.~ */
	
	IF ~~ THEN EXIT
	
	IF ~
		!Global("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("XAMANFST")
		!Global("XA_LC_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
	~	
	EXTERN XACORWIJ CorwinBartenderSlaverChain_DoesntKnowName //OK
	
	IF ~
		!Global("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("XAMANFST")
		Global("XA_LC_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_AskedBartenderManifest", "GLOBAL", 1)
	~	
	EXTERN XACORWIJ CorwinBartenderSlaverChain_KnowsName //OK
END

CHAIN XACORWIJ XA_CorwinBartenderEnd
	@43 /*~We did, yes.~*/
	== XAWVBART
	@38 /*~Good to hear. Well, I'm sure you're glad to be home. Let me know if you need anything else.~ */
	== XACORWIJ
	@50 /*~Thanks, Max.~*/
END XAWVBART XA_CorwinManifestSwitch_NonRomance //OK

CHAIN XACORWIJ XA_CorwinBartenderEnd_Romance
	@43 /* ~We did, yes.~ */
	== XAWVBART
	@44 /* ~Good to hear. You know, that sounds a lot like what happened to <CHARNAME>, the hero of Baldur's Gate... they said <PRO_HESHE>'d killed the Duke's daughter, then they said <PRO_HESHE> was framed, and that <PRO_HESHE> helped restore...~ */
	=@45 /* ~Wait... the one you said you helped in Amn... that was <CHARNAME>, wasn't it?~*/
	== XACORWIJ
	@46 /*~(She smiles.)~*/
	=@47 /* ~The one and only.~*/
	== XAWVBART
	@48 /* ~Wow! Well, I'm very glad that things worked out... for the both of you.~*/
END XAWVBART XA_CorwinManifestSwitch_Romance //OK

CHAIN XACORWIJ CorwinBartenderOneDrinkChain
	@30 /* ~One drink was enough. Thanks.~ */
END

CHAIN XACORWIJ CorwinBartenderDrinkChain
	@31 /* ~I'll have the Berduskan dark wine.~*/
	DO ~
		SetGlobal("XA_LC_MaxFriendly_Coriwn", "GLOBAL", 1)
	~
	== XAWVBART
	@32 /* ~Mm, good choice. Here you are.~*/
	== XACORWIJ
	@33 /* ~Thanks. What do I owe you?~*/
	== XAWVBART
	@34 /* ~First drink's on me. The name's Max - nice to meet you.~*/ 
	== XACORWIJ
	@35 /* ~I'm Captain Schael Corwin. It's good to meet you too.~*/
	== XAWVBART
	@36 /* ~So Captain, what brings you here? I didn't know officers were allowed to drink while on duty.~*/
	== XACORWIJ
	@37 /*~I'm not on duty. I just got back from a long stint in Amn.~ */
	== XAWVBART
	@36 /* ~Amn? The Fist sends officers that far south?~ */
	== XACORWIJ
	IF ~
		Global("XA_LC__CorwinRomanceActive", "GLOBAL", 2)
	~ 
	@41 /* ~~Normally, they don't. The <PRO_MANWOMAN> I love was exiled to Amn after being framed for a crime they didn't commit. They needed my help to bring the one responsible to justice.~*/
	== XACORWIJ
	IF ~
		!Global("XA_LC__CorwinRomanceActive", "GLOBAL", 2)
	~ 
	@37 /* ~Normally, they don't. It was a special assignment on behalf of the Dukes...~ */
END XAWVBART XA_CorwinBartenderSwitch //OK

CHAIN XACORWIJ CorwinBartenderSlaverChain_DoesntKnowName
	@20 /* ~Listen, Max. I have reason to believe that Winston, or someone in his company, is involved in slaver activity.~  */
	== XAWVBART
	@21 /* ~Really? I doubt that... why do you think they're involved?~*/
	== XACORWIJ
	@62 /* ~While in Athkatla, we learned that the children of the refugees from Caelar's crusade were being sold as slaves. We asked the harbor master what he knew, and he told us that Winston and his company had sent refugees to cities up and down the coast, including Athkatla.~*/
	= @63 /* ~We recovered this shipping manifest belonging to Winston, but have no way to decode it.~*/
	== XAWVBART
	@64 /*~I'm sure there's been some kind of misunderstanding. Speak to Virgil, he'll be able to help you. He's usually in the library, in the next room over.~*/
	== XACORWIJ
	@60 /*~Thanks for the help.~*/
END

CHAIN XACORWIJ CorwinBartenderSlaverChain_KnowsName
	@20 /* ~Listen, Max. I have reason to believe that Winston, or someone in his company, is involved in slaver activity.~  */
	== XAWVBART
	@21 /* ~Really? I doubt that... why do you think they're involved?~*/
	== XACORWIJ
	@23 /* ~While in Athkatla, we freed a girl named Tina Bennett. She was being held captive in a slaver stockade. She - ~ */
	== XAWVBART
	@24 /* ~Tina Bennett.. dimples, blonde hair, about yea high? I remember her! Her mom said that they were going on a voyage to a new home in Athkatla. You're saying that they were sold into slavery instead?~ */
	== XACORWIJ
	@25 /* ~That's right.~ */
	== XAWVBART
	@26 /* ~I don't know what to say...~  */
	== XACORWIJ
	@54 /*~Do you know anything that could help with our investigation?~*/
	== XAWVBART
	@55 /*~Only that you should speak to Virgil. Lord Winston is away on business, and Virgil is running things in his absence.~*/
	=@58 /*~Also... I shouldn't be telling you this, but I know Winston keeps a separate ledger than the 'official' one...~*/
	=@59 /*~If you ask Virgil about it, he will deny it. You should check Winston's office, on the fourth floor.~*/
	== XACORWIJ
	@60 /*~Thanks for the help.~*/
	== XAWVBART
	@61 /*~Anytime... I just hope you're wrong about Winston.~*/
END

CHAIN XACORWIJ CorwinWantsNothingChain
	@52 /*~Nothing right now, Max.~*/
	== XAWVBART
	@53 /*~Suit yourself. Let me know if you need anything.~*/
END

CHAIN XACORWIJ CorwinWinstonGuiltyChain //OK
	@69 /* ~Listen, Max. I wanted to let you know that Virgil's been arrested. He confessed that Winston and his company were selling refugees as slaves.~*/
	== XAWVBART
	@70 /*~That's... that's a damn shame. How could they do such a thing?~*/
	== XACORWIJ
	@71 /*~Virgil said that Winston was overwhelmed by the number of refugees, and resorted to contacting slavers in different cities. The authorities know you weren't involved.~*/
	== XAWVBART
	@72 /*~Thanks, for the heads up. I better start looking for another job... I hear the Blushing Mermaid is hiring...~*/
	== XACORWIJ
	@73 /*~Take care of yourself, Max.~*/
	== XAWVBART
	@74 /*~You too.~ */
	DO ~
		EscapeAreaObject("Ext613a")
	~
END