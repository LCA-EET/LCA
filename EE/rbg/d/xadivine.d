BEGIN ~XADIVINE~

IF ~
	Global("XA_AskedDiviner", "GLOBAL", 1)
~ THEN BEGIN XA_AlreadyAsked
	SAY @24 /* ~I'm sorry, but I won't have the strength to do another such reading until tomorrow.~  */
	IF ~~ THEN EXIT
END

IF ~
	!IsGabber(Player1)
~ THEN BEGIN XA_TalkToPlayer
	SAY @25 /* ~I will speak with <CHARNAME>, the hero of this city.~ */
	IF ~~ THEN EXIT
END

IF ~
	IsGabber(Player1)
	!Global("XA_DivinerGreeting", "GLOBAL", 1)
~ THEN BEGIN XA_Greeting
	SAY @0 /* Ah. You've returned. Welcome.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_DivinerGreeting", "GLOBAL", 1)
	~
	GOTO XA_Greeting2
END

IF ~
	Global("XA_DivinerGreeting", "GLOBAL", 1)
	!Global("XA_AskedDiviner", "GLOBAL", 1)
~ THEN BEGIN XA_Greeting2
	SAY @7 /* ~You wish to hear the arcane knowledge of Haspur? It will cost you 100 gold for the answers to your questions no matter how small. Choose wisely, as I only have the strength to perform the diviniation once per day. ~*/
	
	IF ~
		PartyGoldGT(99)
	~ THEN REPLY @28 /* ~Here's the money. You better be for real.~*/
	DO ~
		TakePartyGold(100)
	~
	GOTO XA_AskAway
	
	IF ~
		PartyGoldLT(100)
	~ THEN REPLY @29 /* ~I don't have the time or money to waste on this nonsense.~*/
	EXIT

	IF ~~ THEN REPLY @6 /* ~100 gold? Last time I was here, you charged half that amount!~ */
	GOTO XA_PriceComplain
	
END

IF ~~ THEN BEGIN XA_AskAway
	SAY @43 /* ~What is it that you wish to know?~ */

	IF ~
		IsValidForPartyDialog("XACORWIN")
	~ THEN REPLY @1 /* ~Schael? Do you have a question you'd like to ask?~ */ 
	EXTERN XACORWIJ XA_AskDiviner
	
	IF ~
		IsValidForPartyDialog("IMOEN2")
		!Global("XA_ImoenAskedDiviner", "GLOBAL", 1)
	~ THEN REPLY @2 /* ~Imoen? Do you have a question you'd like to ask?~*/
	EXTERN IMOEN2J XA_AskDiviner

	IF ~
		IsValidForPartyDialog("Valygar")
	~ THEN REPLY @3 /* ~Valygar? Do you have a question you'd like to ask?~*/
	EXTERN VALYGARJ XA_AskDiviner
	
	IF ~
		IsValidForPartyDialog("AERIE")
	~ THEN REPLY @4 /* ~Aerie? Do you have a question you'd like to ask?~ */
	EXTERN AERIEJ XA_AskDiviner
	
	IF ~
		IsValidForPartyDialog("JAHEIRA")
		!Global("XA_JaheiraAskedDiviner", "GLOBAL", 1)
	~ THEN REPLY @5 /* ~Jaheira? Do you have a question you'd like to ask?~*/
	EXTERN JAHEIRAJ XA_AskDiviner
	
	IF ~
		IsValidForPartyDialog("ANOMEN")
		!Global("XA_AnomenAskedDiviner", "GLOBAL", 1)
	~ THEN REPLY @42 /* ~Anomen? Do you have a question you'd like to ask?~ */
	EXTERN ANOMENJ XA_AskDiviner
	
	IF ~
		IsValidForPartyDialog("NALIA")
		!Global("XA_NaliaAskedDiviner", "GLOBAL", 1)
	~ THEN REPLY @15 /* ~Nalia? Do you have a question you'd like to ask?~ */
	EXTERN NALIAJ XA_AskDiviner
	
	IF ~
		IsValidForPartyDialog("VICONIA")
		!Global("XA_ViconiaAskedDiviner", "GLOBAL", 1)
	~ THEN REPLY @27 /* ~Viconia? Do you have a question you'd like to ask?~ */
	EXTERN VICONIJ XA_AskDiviner
	
	IF ~~ THEN REPLY @50 /* ~I have a question.~*/
	GOTO XA_PlayerQuestion

END

IF ~~ THEN BEGIN XA_PlayerQuestion
	SAY @51 /*  ~(Haspur waits in silence.)~ */
	
	IF ~ 
		Global("XA_BGSlaverPlot", "GLOBAL", 1)
		GlobalLT("XA_VirgilInCustody", "GLOBAL", 1)
	~ THEN REPLY @36 /* ~Who is responsible for the slaver activity in Baldur's Gate?~*/
	GOTO XA_Slavers
	
	IF ~~ THEN REPLY @13 /* ~Do I have a future? I mean here, in this city?~*/
	GOTO XA_FutureRomance
	
	IF ~~ THEN REPLY @44 /* ~Will Bhaal return?~ */
	GOTO XA_WillBhaalReturn
	
	IF ~~ THEN REPLY @52 /* ~Irenicus - is he gone, for good?~ */
	GOTO XA_IrenicusGone
	
	IF ~~ THEN REPLY @60 /* ~What are next week's winning lottery numbers?~ */
	DO ~
		SetGlobal("XA_WonLottery", "GLOBAL", 1)
	~
	GOTO XA_LottoNumbers
	
	IF ~
		Global("XA_LC_CaelarAliveInAvernus","GLOBAL",1)
	~ THEN REPLY @54 /* ~Does Caelar Argent still live?~ */
	GOTO XA_Caelar

	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @18 /* ~Do Schael and I have a future together?~ */
	GOTO XA_FutureRomance
	
	IF ~
		Global("AerieRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @22 /* ~Do Aerie and I have a future together?~ */
	GOTO XA_FutureRomance
	
	IF ~
		Global("JaheiraRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @58 /* ~Do Jaheira and I have a future together?~ */
	GOTO XA_FutureRomance
	
	IF ~
		Global("ViconiaRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @23 /* ~Do Viconia and I have a future together?~ */
	GOTO XA_FutureRomance
	
	IF ~
		Global("NeeraRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @56 /* ~Do Neera and I have a future together?~ */
	GOTO XA_FutureRomance
	
	IF ~
		Global("AnomenRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @57 /* ~Do Anomen and I have a future together?~ */
	GOTO XA_FutureRomance
	
	IF ~
		Global("RasaadRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @59 /* ~Do Rasaad and I have a future together?~ */
	GOTO XA_FutureRomance
END

IF ~~ THEN BEGIN XA_Caelar
	SAY @55 /* ~She remains trapped in Avernus, but yes, she is alive.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_Journal_Haspur_Caelar", "GLOBAL", 1)
	~
	GOTO XA_AlreadyAsked
END
IF ~~ THEN BEGIN XA_LottoNumbers
	SAY @61 /* ~4, 8, 15, 16, 23 and 42.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_Haspur_Lotto", "GLOBAL", 1)
	~
	GOTO XA_AlreadyAsked
END

IF ~~ THEN BEGIN XA_FutureRomance
	SAY @20 /* ~Yes - if you desire it.~ */
	
	IF ~~ THEN REPLY @21 /* ~What do you mean?~ */
	GOTO XA_BigDecision
END

IF ~~ THEN BEGIN XA_BigDecision
	SAY @14 /* ~Soon, you will have a decision to make. A momentous decision, that will affect the fate of this world, and beyond.~ */
	
	IF ~~ THEN REPLY @16 /* ~Could you explain more?~ */
	GOTO XA_BigDecision2
END

IF ~~ THEN XA_BigDecision2
	SAY @17 /* ~I see two possible futures for you. In one, you enjoy love, friendship, and belonging. In the other, you wield unimaginable power, but at the cost of having to abandon everything and everyone you've ever loved. You will need to choose.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_Journal_Haspur_Decide", "GLOBAL", 1)
	~
	GOTO XA_AlreadyAsked
END
IF ~~ THEN BEGIN XA_IrenicusGone
	SAY @52 /* ~Yes. The Shattered One will not trouble you or anyone else ever again.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_Haspur_Irenicus", "GLOBAL", 1)
	~
	GOTO XA_AlreadyAsked	
END

IF ~~ THEN BEGIN XA_WillBhaalReturn
	SAY @45 /* ~(A long silence ensues.)~ */
	= @46 /* ~In spite of his machinations, no, Bhaal will not return. But his power will.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_Haspur_Bhaal", "GLOBAL", 1)
	~
	GOTO XA_AlreadyAsked
END

IF ~~ THEN BEGIN XA_Slavers
	SAY @37 /* ~Lord Winston and his company are responsible. They have been selling refugees as slaves, under the guise of moving them to new homes in other cities.~ */
	IF ~~ THEN REPLY @38 /* ~I see.~ */
	DO ~
		SetGlobal("XA_LC_Journal_Haspur_Slaves", "GLOBAL", 1)
		SetGlobal("XA_AskedDivinerAboutSlaves", "GLOBAL", 1)
	~
	GOTO XA_AlreadyAsked
END

IF ~~ THEN BEGIN XA_PriceComplain
	SAY @8 /* ~You can blame inflation and the influx of refugees. Prices everywhere have skyrocketed, and I still need to eat.~ */
	
	= @30 /* ~Now - will you ask, or will you leave?~*/
	
	IF ~
		PartyGoldGT(99)
	~ THEN REPLY @28 /* ~Here's the money. You better be for real.~*/
	DO ~
		TakePartyGold(100)
	~
	GOTO XA_AskAway

	IF ~~ THEN REPLY @29 /* ~I don't have the time or money to waste on this nonsense.~ */
	EXIT
END

