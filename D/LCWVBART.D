BEGIN ~LCWVBART~

IF ~
	Global("LCA_RefugeeQuestComplete", "GLOBAL", 1)
	Global("LCA_MaxFriendly_Corwin", "GLOBAL", 1)
	IsGabber("LCCORWIN")
~ THEN BEGIN LCA_WinstonGuilty_Corwin
	SAY @75 /* ~Nice to see you again, Captain. What can I get you?~ */
	
	IF ~~ THEN
	EXTERN LCCORWIJ CorwinWinstonGuiltyChain //OK
END

IF ~
	Global("LCA_RefugeeQuestComplete", "GLOBAL", 1)
	Global("LCA_MaxFriendly_Charname", "GLOBAL", 1)
	InPartySlot(LastTalkedToBy,0)
~ THEN BEGIN LCA_WinstonGuilty
	SAY @68 /*~<CHARNAME> - What can I get ya?~ */
	
	IF ~~ THEN REPLY @69 /* ~Listen, Max. I wanted to let you know that Virgil's been arrested. He confessed that Winston and his company were selling refugees as slaves.~ */
	GOTO LCA_WinstonGuilty2 //OK
END

IF ~~ THEN BEGIN LCA_WinstonGuilty2
	SAY @70 /* ~That's... that's a damn shame. How could they do such a thing?~*/
	
	IF ~~ THEN REPLY @71 /* ~Virgil said that Winston was overwhelmed by the number of refugees, and resorted to contacting slavers in different cities. The authorities know you weren't involved.~*/
	GOTO LCA_WinstonGuilty3 //OK
END

IF ~~ THEN BEGIN LCA_WinstonGuilty3
	SAY @72 /* ~Thanks, for the heads up. I better start looking for another job... I hear the Blushing Mermaid is hiring...~ */
	
	IF ~~ THEN REPLY @73 /* ~Take care of yourself, Max.~ */
	GOTO LCA_WinstonGuilty4 //OK
END

IF ~~ THEN BEGIN LCA_WinstonGuilty4
	SAY @74 /* ~You too.~ */
	
	IF ~~ THEN
	DO ~
		EscapeAreaObject("Ext613a")
	~
	EXIT
END

IF ~  
	NumTimesTalkedTo(0)
	InPartySlot(LastTalkedToBy,0)
~ THEN BEGIN LCA_GreetCharname // from:
	SAY @4 /* ~Hey there, mate. Don't recognize you, which is strange, considering I know everyone here at Winston Ventures. Why don't you tell me who you are?~ */
	
	IF ~~ THEN REPLY @7 /* ~I'm <CHARNAME>. Who're you?~ */ 
	GOTO LCA_WelcomeCharname //OK
	
	IF ~~ THEN REPLY @5 /* ~None of your business.~ */ 
	GOTO LCA_NoneOfYourBusiness //OK
END

IF ~
	IsGabber("LCCORWIN")
	TimeOfDay(NIGHT)
	!Global("LCA_CorwinMetMax", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinGreet_Night
	SAY @27 /*~Evenin' officer.~*/
	
	IF ~~ THEN	
	DO ~
		SetGlobal("LCA_CorwinMetMax", "GLOBAL", 1)
	~
	GOTO LCA_CorwinGreet //OK
END

IF ~
	IsGabber("LCCORWIN")
	!TimeOfDay(NIGHT)
	!Global("LCA_CorwinMetMax", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinGreet_Day
	SAY @28 /*~Good day, officer.~*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_CorwinMetMax", "GLOBAL", 1)
	~
	GOTO LCA_CorwinGreet //OK
END

IF ~
	IsGabber("LCCORWIN")
	Global("LCA_CorwinMetMax", "GLOBAL", 1)
~ THEN BEGIN LCA_AlreadySpokeToCorwin
	SAY @51 /*~Always a pleasure to see you, Captain. What can I get for you?~*/
	
	IF ~~ THEN EXTERN LCCORWIJ CorwinWantsNothingChain //OK
	
	IF ~
		!Global("LCA_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("LCMANFST")
		!Global("LCA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("LCA_AskedBartenderManifest", "GLOBAL", 1)
	~	
	EXTERN LCCORWIJ CorwinBartenderSlaverChain_DoesntKnowName //OK
	
	IF ~
		!Global("LCA_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("LCMANFST")
		Global("LCA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("LCA_AskedBartenderManifest", "GLOBAL", 1)
	~	
	EXTERN LCCORWIJ CorwinBartenderSlaverChain_KnowsName //OK
END

IF ~~ THEN BEGIN LCA_CorwinGreet
	SAY @29 /* ~It's good to see a new face around here... Can I get you anything?~ */
	
	IF ~
		!Global("LCA_CorwinWVDrink", "GLOBAL", 1)
	~ THEN 
	DO ~
		SetGlobal("LCA_CorwinWVDrink", "GLOBAL", 1)
	~
	EXTERN LCCORWIJ CorwinBartenderDrinkChain //OK
END

IF ~
	True()
~ THEN BEGIN 0
	SAY @0 /* ~What can I get 'ya?~ */
	
	IF ~
		!Global("LCA_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("LCMANFST")
	~ THEN REPLY @79 /* ~Listen. I have reason to believe that Winston, or someone in his company, is involved in slaver activity.~  */
	DO ~
		SetGlobal("LCA_AskedBartenderManifest", "GLOBAL", 1)
	~
	GOTO LCA_SlaverQuestioning //OK
	
	IF ~
		!Global("LCA_AskBartender_Winston", "GLOBAL", 1)
	~ THEN REPLY @1 /* ~Information. Tell me about Lord Winston and this company.~ */
	DO ~
		SetGlobal("LCA_AskBartender_Winston", "GLOBAL", 1)
	~
	GOTO LCA_AskBartender_Winston //OK

	IF ~~ THEN REPLY @2 /* ~What have you got?~ */
	DO ~
		StartStore("LCWVBAR", LastTalkedToBy(Myself))
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_AskBartender_Winston
	SAY @13 /* ~Winston's a nice guy, as far as nobles go, anyway. The company has offices in Cormir, Sembia, Waterdeep, and here obviously. He deals in commodities trading and futures, and lately, refugee resettlement. ~ */
	
	IF ~~ THEN REPLY @14 /* ~How does a commodities trader end up getting involved with refugees?~ */
	GOTO LCA_AskBartender_Winston2 //OK
END

IF ~~ THEN BEGIN LCA_AskBartender_Winston2
	SAY @15 /* ~The Dukes wanted the refugees gone. As I understand, they offered Winston a license to operate in the city, if he agreed to resolve the refugee crisis.~ */
	=@16 /*~Fast forward a few months later, and the refugees are gone, and both Winston and the Dukes are happy.~*/
	IF ~~ THEN REPLY @76 /* ~I see. And where is Winston now?~ */
	GOTO LCA_AskBartender_Winston3 //OK
END

IF ~~ THEN BEGIN LCA_AskBartender_Winston3
	SAY @77 /*~Oh, he's away from the city on business. If you need something, speak to Virgil. He's in the library in the next room.~*/
	
	IF ~~ THEN REPLY @78 /* ~Thanks.~ */
	EXIT
	
	IF ~
		!Global("LCA_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("LCMANFST")
	~ THEN REPLY @79 /* ~Listen. I have reason to believe that Winston, or someone in his company, is involved in slaver activity.~  */
	DO ~
		SetGlobal("LCA_AskedBartenderManifest", "GLOBAL", 1)
	~
	GOTO LCA_SlaverQuestioning //OK
END

IF ~~ THEN BEGIN LCA_WelcomeCharname
	SAY @8 /* ~<CHARNAME>! Well I'll be, it's the hero of Baldur's Gate! I'm Max, here, have a drink on the house.~ */
	
	IF ~~ THEN REPLY @9 /* ~Thanks.~ */
	DO ~
		SetGlobal("LCA_MaxFriendly_Charname", "GLOBAL", 1)
	~
	GOTO LCA_WelcomeCharname2 //OK
END

IF ~~ THEN BEGIN LCA_WelcomeCharname2
	SAY @11 /* ~Don't mention it. So, what brings you here?~ */
	
	IF ~
		!Global("LCA_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("LCMANFST")
	~ THEN REPLY @20 /* ~Listen, Max. I have reason to believe that Winston, or someone in his company, is involved in slaver activity.~  */
	DO ~
		SetGlobal("LCA_AskedBartenderManifest", "GLOBAL", 1)
	~
	GOTO LCA_SlaverQuestioning //OK
	
	IF ~~ THEN REPLY @12 /* ~Well, last time I was here it was under some very different circumstances. Why don't you tell me about Lord Winston and his company?~ */
	DO ~
		SetGlobal("LCA_AskBartender_Winston", "GLOBAL", 1)
	~
	GOTO LCA_WelcomeCharname3 //OK
	
END

IF ~~ THEN BEGIN LCA_WelcomeCharname3
	SAY @13 /* ~Winston's a nice guy, as far as nobles go, anyway. The company has offices in Cormir, Sembia, Waterdeep, and here obviously. He deals in commodities trading and futures, and lately, refugee resettlement. ~ */
	
	IF ~~ THEN REPLY @14 /* ~How does a commodities trader end up getting involved with refugees?~ */
	GOTO LCA_WelcomeCharname4 //OK
END

IF ~~ THEN BEGIN LCA_WelcomeCharname4
	SAY @15 /* ~The Dukes wanted the refugees gone. As I understand, they offered Winston a license to operate in the city, if he agreed to resolve the refugee crisis.~ */
	
	= @16 /* ~Fast forward a few months later, and the refugees are gone, and both Winston and the Dukes are happy.~ */
	
	IF ~~ THEN REPLY @17 /* ~I see. Thanks for the information, Max.~ */
	GOTO LCA_WelcomeCharnameEnd //OK
	
	IF ~
		!Global("LCA_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("LCMANFST")
	~ THEN REPLY @20 /* ~Listen, Max. I have reason to believe that Winston, or someone in his company, is involved in slaver activity.~  */
	DO ~
		SetGlobal("LCA_AskedBartenderManifest", "GLOBAL", 1)
	~
	GOTO LCA_SlaverQuestioning //OK
END


IF ~~ THEN BEGIN LCA_WelcomeCharnameEnd 
	SAY @19 /* ~Of course. If there's anything else you need, just ask.~ */
	
	IF ~~ THEN EXIT
	
	IF ~
		!Global("LCA_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("LCMANFST")
	~ THEN REPLY @20 /* ~Listen, Max. I have reason to believe that Winston, or someone in his company, is involved in slaver activity.~  */
	DO ~
		SetGlobal("LCA_AskedBartenderManifest", "GLOBAL", 1)
	~
	GOTO LCA_SlaverQuestioning //OK
END
IF ~~ THEN BEGIN LCA_NoneOfYourBusiness
	SAY @6 /* ~Suit yourself. What can I get for 'ya?~ */
	
	IF ~
		PartyHasItem("LCMANFST")
		!Global("LCA_AskedBartenderManifest", "GLOBAL", 1)
	~ THEN REPLY @65 /* ~I've reason to suspect that this company is involved in slaver activity.~ */
	DO ~
		SetGlobal("LCA_AskedBartenderManifest", "GLOBAL", 1)
	~
	GOTO LCA_SlaverQuestioning //OK
	
	IF ~
		!Global("LCA_AskBartender_Winston", "GLOBAL", 1)
	~ THEN REPLY @1 /* ~Information. Tell me about Lord Winston and this company.~ */
	GOTO LCA_AskBartender_Winston

	IF ~~ THEN REPLY @2 /* ~What have you got?~ */
	DO ~
		StartStore("LCWVBAR", LastTalkedToBy(Myself))
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_SlaverQuestioning
	SAY @66 /* ~Really? Why do you think that?~ */
	
	IF ~ 
		Global("LCA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN REPLY @23 /* ~While in Athkatla, we freed a girl named Tina Bennett. She was being held captive in a slaver stockade.~*/
	GOTO LCA_SlaverQuestioning2_KnowName //OK
	
	IF ~
		Global("LCA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN REPLY @62 /* ~While in Athkatla, we learned that the children of the refugees from Caelar's crusade were being sold as slaves. We asked the harbor master what he knew, and he told us that Winston and his company had sent refugees to cities up and down the coast, including Athkatla.~*/
	GOTO LCA_SlaverQuestioning2_DoesntKnowName //OK
END

IF ~~ THEN BEGIN LCA_SlaverQuestioning2_DoesntKnowName 
	SAY @64 /* ~I'm sure there's been some kind of misunderstanding. Speak to Virgil, he'll be able to help you. He's in the library, in the next room over.~*/
	
	IF ~~ THEN EXIT	
END

IF ~~ THEN BEGIN LCA_SlaverQuestioning2_KnowName
	SAY @24 /* ~Tina Bennett.. dimples, blonde hair, about yea high? I remember her! Sweet kid... her mom said that they were going on a voyage to a new home in Athkatla. You're saying that they were sold into slavery instead?~*/
	
	IF ~~ THEN REPLY @25 /* ~That's right.~ */
	GOTO LCA_SlaverQuestioning3_KnowName //OK
	
END

IF ~~ THEN BEGIN LCA_SlaverQuestioning3_KnowName
	SAY @67 /* ~I don't know what to say... Go and speak with Virgil, he's in the library in the next room. Lord Winston is away on business, and Virgil is running things in his absence.~ */
	
	= @58 /* ~Also... I shouldn't be telling you this, but I know Winston keeps a separate ledger than the 'official' one...~*/
	= @59 /* ~If you ask Virgil about it, he will deny it. You should check Winston's office, on the fourth floor.~*/
	IF ~~ THEN REPLY @60 /* ~Thanks for the help.~*/
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinBartenderSwitch //OK
	SAY @42 /* ~I see... and did you? I mean, did you get the one responsible?~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN EXTERN LCCORWIJ LCA_CorwinBartenderEnd_Romance //OK
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN EXTERN LCCORWIJ LCA_CorwinBartenderEnd //OK
	
END
IF ~~ THEN LCA_CorwinManifestSwitch_Romance
	SAY @49 /* ~Enjoy your drink, you've certainly earned it. If you need anything else, let me know.~*/
	
	IF ~~ THEN EXIT
	
	IF ~
		!Global("LCA_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("LCMANFST")
		!Global("LCA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("LCA_AskedBartenderManifest", "GLOBAL", 1)
	~	
	EXTERN LCCORWIJ CorwinBartenderSlaverChain_DoesntKnowName //OK
	
	IF ~
		!Global("LCA_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("LCMANFST")
		Global("LCA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("LCA_AskedBartenderManifest", "GLOBAL", 1)
	~	
	EXTERN LCCORWIJ CorwinBartenderSlaverChain_KnowsName //OK
END

IF ~~ THEN LCA_CorwinManifestSwitch_NonRomance
	SAY @38 /* ~Good to hear. Well, I'm sure you're glad to be home. Let me know if you need anything else.~ */
	
	IF ~~ THEN EXIT
	
	IF ~
		!Global("LCA_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("LCMANFST")
		!Global("LCA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("LCA_AskedBartenderManifest", "GLOBAL", 1)
	~	
	EXTERN LCCORWIJ CorwinBartenderSlaverChain_DoesntKnowName //OK
	
	IF ~
		!Global("LCA_AskedBartenderManifest", "GLOBAL", 1)
		PartyHasItem("LCMANFST")
		Global("LCA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("LCA_AskedBartenderManifest", "GLOBAL", 1)
	~	
	EXTERN LCCORWIJ CorwinBartenderSlaverChain_KnowsName //OK
END

CHAIN LCCORWIJ LCA_CorwinBartenderEnd
	@43 /*~We did, yes.~*/
	== LCWVBART
	@38 /*~Good to hear. Well, I'm sure you're glad to be home. Let me know if you need anything else.~ */
	== LCCORWIJ
	@50 /*~Thanks, Max.~*/
END LCWVBART LCA_CorwinManifestSwitch_NonRomance //OK

CHAIN LCCORWIJ LCA_CorwinBartenderEnd_Romance
	@43 /* ~We did, yes.~ */
	== LCWVBART
	@44 /* ~Good to hear. You know, that sounds a lot like what happened to <CHARNAME>, the hero of Baldur's Gate... they said <PRO_HESHE>'d killed the Duke's daughter, then they said <PRO_HESHE> was framed, and that <PRO_HESHE> helped restore...~ */
	=@45 /* ~Wait... the one you said you helped in Amn... that was <CHARNAME>, wasn't it?~*/
	== LCCORWIJ
	@46 /*~(She smiles.)~*/
	=@47 /* ~The one and only.~*/
	== LCWVBART
	@48 /* ~Wow! Well, I'm very glad that things worked out... for the both of you.~*/
END LCWVBART LCA_CorwinManifestSwitch_Romance //OK

CHAIN LCCORWIJ CorwinBartenderOneDrinkChain
	@30 /* ~One drink was enough. Thanks.~ */
END

CHAIN LCCORWIJ CorwinBartenderDrinkChain
	@31 /* ~I'll have the Berduskan dark wine.~*/
	DO ~
		SetGlobal("LCA_MaxFriendly_Coriwn", "GLOBAL", 1)
	~
	== LCWVBART
	@32 /* ~Mm, good choice. Here you are.~*/
	== LCCORWIJ
	@33 /* ~Thanks. What do I owe you?~*/
	== LCWVBART
	@34 /* ~First drink's on me. The name's Max - nice to meet you.~*/ 
	== LCCORWIJ
	@35 /* ~I'm Captain Schael Corwin. It's good to meet you too.~*/
	== LCWVBART
	@36 /* ~So Captain, what brings you here? I didn't know officers were allowed to drink while on duty.~*/
	== LCCORWIJ
	@37 /*~I'm not on duty. I just got back from a long stint in Amn.~ */
	== LCWVBART
	@36 /* ~Amn? The Fist sends officers that far south?~ */
	== LCCORWIJ
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	@41 /* ~~Normally, they don't. The <PRO_MANWOMAN> I love was exiled to Amn after being framed for a crime they didn't commit. They needed my help to bring the one responsible to justice.~*/
	== LCCORWIJ
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	@37 /* ~Normally, they don't. It was a special assignment on behalf of the Dukes...~ */
END LCWVBART LCA_CorwinBartenderSwitch //OK

CHAIN LCCORWIJ CorwinBartenderSlaverChain_DoesntKnowName
	@20 /* ~Listen, Max. I have reason to believe that Winston, or someone in his company, is involved in slaver activity.~  */
	== LCWVBART
	@21 /* ~Really? I doubt that... why do you think they're involved?~*/
	== LCCORWIJ
	@62 /* ~While in Athkatla, we learned that the children of the refugees from Caelar's crusade were being sold as slaves. We asked the harbor master what he knew, and he told us that Winston and his company had sent refugees to cities up and down the coast, including Athkatla.~*/
	= @63 /* ~We recovered this shipping manifest belonging to Winston, but have no way to decode it.~*/
	== LCWVBART
	@64 /*~I'm sure there's been some kind of misunderstanding. Speak to Virgil, he'll be able to help you. He's usually in the library, in the next room over.~*/
	== LCCORWIJ
	@60 /*~Thanks for the help.~*/
END

CHAIN LCCORWIJ CorwinBartenderSlaverChain_KnowsName
	@20 /* ~Listen, Max. I have reason to believe that Winston, or someone in his company, is involved in slaver activity.~  */
	== LCWVBART
	@21 /* ~Really? I doubt that... why do you think they're involved?~*/
	== LCCORWIJ
	@23 /* ~While in Athkatla, we freed a girl named Tina Bennett. She was being held captive in a slaver stockade. She - ~ */
	== LCWVBART
	@24 /* ~Tina Bennett.. dimples, blonde hair, about yea high? I remember her! Her mom said that they were going on a voyage to a new home in Athkatla. You're saying that they were sold into slavery instead?~ */
	== LCCORWIJ
	@25 /* ~That's right.~ */
	== LCWVBART
	@26 /* ~I don't know what to say...~  */
	== LCCORWIJ
	@54 /*~Do you know anything that could help with our investigation?~*/
	== LCWVBART
	@55 /*~Only that you should speak to Virgil. Lord Winston is away on business, and Virgil is running things in his absence.~*/
	=@58 /*~Also... I shouldn't be telling you this, but I know Winston keeps a separate ledger than the 'official' one...~*/
	=@59 /*~If you ask Virgil about it, he will deny it. You should check Winston's office, on the fourth floor.~*/
	== LCCORWIJ
	@60 /*~Thanks for the help.~*/
	== LCWVBART
	@61 /*~Anytime... I just hope you're wrong about Winston.~*/
END

CHAIN LCCORWIJ CorwinWantsNothingChain
	@52 /*~Nothing right now, Max.~*/
	== LCWVBART
	@53 /*~Suit yourself. Let me know if you need anything.~*/
END

CHAIN LCCORWIJ CorwinWinstonGuiltyChain //OK
	@69 /* ~Listen, Max. I wanted to let you know that Virgil's been arrested. He confessed that Winston and his company were selling refugees as slaves.~*/
	== LCWVBART
	@70 /*~That's... that's a damn shame. How could they do such a thing?~*/
	== LCCORWIJ
	@71 /*~Virgil said that Winston was overwhelmed by the number of refugees, and resorted to contacting slavers in different cities. The authorities know you weren't involved.~*/
	== LCWVBART
	@72 /*~Thanks, for the heads up. I better start looking for another job... I hear the Blushing Mermaid is hiring...~*/
	== LCCORWIJ
	@73 /*~Take care of yourself, Max.~*/
	== LCWVBART
	@74 /*~You too.~ */
	DO ~
		EscapeAreaObject("Ext613a")
	~
END