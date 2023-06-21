BEGIN ~LCTIANNA~

IF ~
	Global("LCA_TiannaGoodBye", "GLOBAL", 2)
~ THEN BEGIN LCA_TiannaGoodBye
	SAY @53 /* ~Thank you, <CHARNAME>.~ */
	
	IF ~~ THEN REPLY @57 
	DO ~
		ReputationInc(1)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		EraseJournalEntry(@45)
		EraseJournalEntry(@46)
		EraseJournalEntry(@70)
		AddexperienceParty(100000)
		EscapeArea()
	~
	EXIT
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	GOTO LCA_GoodByeRomance
END

IF ~
	Global("LCA_TiannaIntroduction", "GLOBAL", 1)
~ THEN BEGIN LCA_TiannaIntroduction
	SAY @0 /* ~Schael!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_TiannaIntroduction", "GLOBAL", 2)
		SetGlobal("LCA_TalkedToTianna", "GLOBAL", 1)
	~
	EXTERN LCCORWIJ LCA_CorwinTiannaChain
END

IF ~
	IsValidForPartyDialogue("LCCORWIN")
	!IsGabber("LCCORWIN")
	!IsGabber(Player1)
~ THEN BEGIN LCA_WantTalkToPCorSchael
	SAY @44 /* ~Can I speak to Schael? Or <CHARNAME>?~ */
	IF ~~ THEN EXIT
END

IF ~
	Global("LCA_TiannaIntroduction", "GLOBAL", 2)
	!Global("LCA_HelpTianna", "GLOBAL", 1)
	OR(2)
		IsGabber("LCCORWIN")
		IsGabber(Player1)
~ THEN BEGIN LCA_IntroWontHelp
	SAY @33 /* ~Have you reconsidered? Will you help me out of this mess I've gotten into?~ */
	
	IF ~~ THEN REPLY @34 /* ~I'm afraid you'll have to dig yourself out of this hole.~*/
	EXIT
	
	IF ~~ THEN REPLY @31 /* ~Fine - tell me where this Jasper fellow is. I'll see if I can persuade him to forgive your debt.~ */
	GOTO LCA_HelpTianna
END

IF ~
	Global("LCA_TiannaIntroduction", "GLOBAL", 2)
	Global("LCA_HelpTianna", "GLOBAL", 1)
	IsGabber(Player1)
~ THEN BEGIN LCA_IntroWillHelp
	SAY @35 /* ~Hi! Were you able to talk to Jasper about resolving my debt?~*/
	
	IF ~
		!Global("LCA_TiannaDebtResolved", "GLOBAL", 1)
	~ THEN REPLY @36 /* ~No, not yet.~*/
	GOTO LCA_HelpEnd
	
	IF ~
		OR(2)
			Global("LCA_TiannaDebtResolved", "GLOBAL", 1)
			Dead("LCJASPER")
	~ THEN REPLY @38 /* ~Yes. You won't have to worry about Jasper any more.~ */
	GOTO LCA_DebtResolved
END

IF ~
	Global("LCA_TiannaIntroduction", "GLOBAL", 2)
	Global("LCA_HelpTianna", "GLOBAL", 1)
	IsGabber("LCCORWIN")
~ THEN BEGIN LCA_IntroWillHelp
	SAY @35 /* ~Hi! Were you able to talk to Jasper about resolving my debt?~*/
	
	IF ~
		!Global("LCA_TiannaDebtResolved", "GLOBAL", 1)
	~ THEN EXTERN LCCORWIJ LCA_NotYetTianna
	
	IF ~
		OR(2)
			Global("LCA_TiannaDebtResolved", "GLOBAL", 1)
			Dead("LCJASPER")
	~ THEN EXTERN LCCORWIJ LCA_TiannaDebtResolvedCorwinChain
END

IF ~~ THEN BEGIN LCA_DebtResolved
	SAY @39 /* ~Oh, thank you! Thank you so much! How did you convince him to forgive my debt?~ */
	
	IF ~
		Dead("LCJASPER")
	~ THEN REPLY @40 /* ~The same way I solve nearly all problems. I killed him.~*/
	GOTO LCA_KilledJasper //OK
	
	IF ~
		Global("LCA_PaidJasperFull", "GLOBAL", 1)
	~ THEN REPLY @47 /* ~I paid off the debt. It was a lot more than the 700 gold you claimed.~*/
	GOTO LCA_PaidJasper //OK
	
	IF ~
		Global("LCA_PaidJasperPartial", "GLOBAL", 1)
	~ THEN REPLY @49 /* ~I paid off the debt. It was a lot more than the 700 gold you claimed.~*/
	GOTO LCA_PaidJasper //OK
	
	IF ~
		!Dead("LCJASPER")
		!Global("LCA_PaidJasperFull", "GLOBAL", 1)
		!Global("LCA_PaidJasperPartial", "GLOBAL", 1)
	~ THEN REPLY @50 /* ~I made him an offer he couldn't refuse.~ */
	GOTO LCA_ScaredJasper
END

IF ~~ THEN BEGIN LCA_ScaredJasper
	SAY @51 /* ~Oh, I - I see... you didn't hurt him, right?~*/
	
	IF ~~ THEN REPLY @52 /* ~No, he's fine. He won't bother you again, that's for sure.~ */
	GOTO LCA_PaidJasper
	
	IF ~~ THEN REPLY @64 /* ~He wet himself and ran away when I told him what would happen if he didn't forgive your debt. He won't ever bother you again.~*/
	GOTO LCA_PaidJasper
END

IF ~~ THEN BEGIN LCA_PaidJasper
	SAY @48 /* ~Thank you so much!~*/
	
	IF ~~ THEN REPLY @59 /*  ~You're welcome.~ */
	GOTO LCA_TiannaLeave //OK
	
	IF ~~ THEN REPLY @60 /* ~I hope you've learned an important lesson.~ */
	GOTO LCA_TiannaLeave //OK
	
	IF ~
		InMyArea("LCCORWIN")
		IsValidForPartyDialogue("LCCORWIN")
	~
	EXTERN LCCORWIJ LCA_CorwinTiannaGoodbyeChain
END

IF ~~ THEN BEGIN LCA_TiannaLeave
	SAY @58 /* ~I've been doing a lot of thinking and... I don't think this city is a good fit for me. I'm going to take my mom south to Beregost, and try for a fresh start over there.~ */
	
	= @62 /* ~Please, give Schael my regards.~*/
	
	IF ~~ THEN REPLY @63 /* ~I will. Good-bye, Tianna.~*/
	DO ~
		ReputationInc(1)
		EraseJournalEntry(@45)
		EraseJournalEntry(@46)
		EraseJournalEntry(@70)
		AddJournalEntry(@80, QUEST_DONE)
		AddexperienceParty(100000)
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_KilledJasper
	SAY @41 /* ~You WHAT? Oh - oh n-no. I need to get out of the city. His associates will think that I had him killed.. oh... my..~ */
	IF ~~ THEN
	DO ~
		EraseJournalEntry(@45)
		EraseJournalEntry(@46)
		EraseJournalEntry(@70)
		AddJournalEntry(@82, QUEST_DONE)
		AddexperienceParty(25000)
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_GoodBye
	SAY @53 /* ~Thank you, <CHARNAME>.~ */
	
	IF ~~ THEN REPLY @57 
	DO ~
		ReputationInc(1)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		EraseJournalEntry(@45)
		EraseJournalEntry(@46)
		EraseJournalEntry(@70)
		AddJournalEntry(@81, QUEST_DONE)
		AddexperienceParty(100000)
		EscapeArea()
	~
	EXIT
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	GOTO LCA_GoodByeRomance
END

IF ~~ THEN BEGIN LCA_GoodByeRomance
	SAY @54 /* ~(She pulls you aside.)~  */
	= @55 /* ~I'm glad you and Schael are together. Take care of her. Give her the life she deserves. I wish I did.~*/
	
	IF ~~ THEN REPLY @56 /* ~Thank you for the kind words, Tianna. I will - she's a very special woman.~ */
	DO ~
		ReputationInc(1)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		EraseJournalEntry(@45)
		EraseJournalEntry(@46)
		EraseJournalEntry(@70)
		AddJournalEntry(@80, QUEST_DONE)
		AddexperienceParty(100000)
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_HelpEnd
	SAY @37 /* ~Oh, I see. Please see him soon, I don't have enough money to make the next payment on the debt.~*/
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinTiannaChainEnd
	SAY @20 /* ~Schael, I'm trying to change, I really am. I was telling the truth about my mother... she was sick, and since you left I had no one to turn to...~ */
	
	= @21 /* ~I have no way to pay back my debt waiting tables.~ */
	
	IF ~~ THEN REPLY @22 /* ~Tell me, where is this Jasper? Perhaps I can talk him into forgiving your debt.~ */
	GOTO LCA_HelpTianna
	
	IF ~~ THEN REPLY @23 /* ~I'm afraid there's nothing I can do.~ */
	GOTO LCA_WontHelp //OK
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		InMyArea("LCCORWIN")
	~ THEN REPLY @24 /* ~Schael, what do you think? Do you believe her story?~*/
	GOTO LCA_SchaelBelievesTianna //OK
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		InMyArea("LCCORWIN")
	~ THEN REPLY @25 /* ~My love, what do you think? Do you believe her story?~ */
	GOTO LCA_SchaelBelievesTianna //OK
	
	IF ~
		!InMyArea(Player1)
	~ THEN EXTERN LCCORWIJ LCA_CorwinWillHelpTianna

END

IF ~~ THEN BEGIN LCA_SchaelBelievesTianna
	SAY @27 /* ~She's lied to me before, but this time I think she's telling truth. I'd like for us to help her, but it's your decision.~ */
	
	IF ~~ THEN REPLY @28 /* ~Very well. Tianna - tell me, where is this Jasper fellow? Perhaps I can talk him into forgiving your debt.~ */
	GOTO LCA_HelpTianna
	
	IF ~~ THEN REPLY @23 /* ~I'm afraid it's not my problem.~*/
	GOTO LCA_WontHelp
END

IF ~~ THEN BEGIN LCA_WontHelp
	SAY @29 /* ~Please, I really need your help. (She begins to weep.) I have no way to pay him back.~ */

	IF ~~ THEN REPLY @30 /* ~Get a grip, woman! Like I said, it's not my problem.~ */
	GOTO LCA_StillWontHelp
	
	IF ~~ THEN REPLY @31 /* ~Fine - tell me where this Jasper fellow is. I'll see if I can persuade him to forgive your debt.~*/
	GOTO LCA_HelpTianna //OK
END

IF ~~ THEN BEGIN LCA_StillWontHelp
	SAY @32 /* ~I *sob* u-understand. Please, if you reconsider, come and *sob* see me.~ */
	
	IF ~~ THEN 
	DO ~
		AddJournalEntry(@79, QUEST)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_HelpTianna
	SAY @26 /* ~Oh, thank you! You can find Jasper in the Undercellar. I really appreciate your help.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_HelpTianna", "GLOBAL", 1)
		AddJournalEntry(@45,QUEST)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinHelpTianna
	SAY @26 /* ~Oh, thank you! You can find Jasper in the Undercellar. I really appreciate your help.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_HelpTianna", "GLOBAL", 1)
		AddJournalEntry(@70,QUEST)
	~
	EXIT
END

IF ~
	True()
~ THEN BEGIN LCA_TiannaDefault
	SAY @65 /* ~Hi! Can I get you a drink?~ */
	
	IF ~~ THEN REPLY @66 /* ~I'm fine, thanks.~*/
	EXIT
	
	IF ~~ THEN REPLY @67 /* ~Sure - what do you have?~ */
	DO ~
		StartStore("tav0133", LastTalkedToBy(Myself))
	~
	EXIT

END

IF ~~ THEN BEGIN LCA_HugSchael
	SAY @76 /* ~(They share an embrace.)~*/
	= @77 /* ~You too, Schael.~*/
	
	IF ~~ THEN
	DO ~
		ReputationInc(1)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		EraseJournalEntry(@45)
		EraseJournalEntry(@46)
		EraseJournalEntry(@70)
		AddexperienceParty(100000)
		EscapeArea()
	~
	EXIT
	
	IF ~
		InMyArea(Player1)
	~ THEN
	DO ~
		SetGlobal("LCA_TiannaGoodBye", "GLOBAL", 1)
	~
	EXIT
END

CHAIN 
	IF ~~ THEN LCCORWIJ LCA_TiannaDebtResolvedCorwinChain
		@38 /* ~Yes. You won't have to worry about Jasper any more.~*/
		== LCTIANNA
		@39 /* ~Oh, thank you! Thank you so much! How did you convince him to forgive my debt?~*/
		== LCCORWIJ
		IF ~
			Dead("LCJASPER")
		~
		@72 /* ~It's better that you don't ask.~*/
		== LCCORWIJ
		IF ~
			!Dead("LCJASPER")
			Global("LCA_ScaredJasperAway", "GLOBAL", 1)
		~
		@73 /* ~<CHARNAME> told Jasper that <PRO_HESHE>'d hand him his innards on a platter if he didn't forgive the debt.~ */
		== LCCORWIJ
		IF ~
			!Dead("LCJASPER")
			!Global("LCA_ScaredJasperAway", "GLOBAL", 1)
		~
		@71 /* ~<CHARNAME> was generous enough to pay it off on your behalf.~*/
		== LCTIANNA
		IF ~
			Dead("LCJASPER")
		~
		@74 /* ~Oh, I - I see..~ */
		== LCTIANNA
		IF ~
			!Dead("LCJASPER")
		~
		@48 /* ~Thank you so much!~*/
		== LCCORWIJ
		@78 /* ~I hope you learned something from this Tianna. Next time, you might not be so lucky.~*/
		== LCTIANNA
		@58 /* ~I've been doing a lot of thinking and... I don't think this city is a good fit for me. I'm going to take my mom south to Beregost, and try for a fresh start over there.~ */
		== LCCORWIJ
		@75 /* ~That's a good decision. Take care of yourself, Tianna.~*/
END LCTIANNA LCA_HugSchael

CHAIN 
	IF ~~ THEN LCCORWIJ LCA_CorwinTiannaChain
		@1 /* ~Tianna... It's been a while.~*/
		== LCTIANNA
		@2 /* ~How are you? I'd heard that you were on assignment in Amn.~*/
		== LCCORWIJ
		@3 /* ~I'm fine. We just returned today.~*/
		== LCTIANNA
		@4 /* ~Schael, I.. I wanted to apologize, for the way things ended between us.~*/
		== LCCORWIJ
		@5 /* ~You mean for stealing from my family, and for calling my daughter a liar?~*/
		== LCTIANNA
		@6 /* ~Yes... I'm sorry. I needed the money, but I shouldn't have done what I did.~*/
		== LCCORWIJ
		@7 /* ~If you needed money you should have just asked.~*/
		== LCTIANNA
		IF ~
			InMyArea(Player1)
		~
		@8 /* ~Y-you're right. Who did you bring with you? D-do you need any refreshments?~ */
		== LCCORWIJ
		IF ~
			InMyArea(Player1)
			Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~
		@11 /* ~Tianna, this is <CHARNAME>, the hero of Baldur's Gate and the Sword Coast and... the <PRO_MANWOMAN> that I love.~ */
		== LCCORWIJ
		IF ~
			InMyArea(Player1)
			!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~
		@12 /* ~Tianna, this is <CHARNAME>, the hero of Baldur's Gate and the Sword Coast.~ */
		== LCTIANNA
		IF ~
			InMyArea(Player1)
		~
		@9 /* ~The <CHARNAME>? Wow, what an honor it is to meet you.~*/
		== LCTIANNA
		IF ~
			InMyArea(Player1)
			Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~
		@13 /* ~So you and Schael are... t-that's great. I'm happy for you.~ */
		== LCTIANNA
		@14 /* ~Listen, I know you have no reason to help me, but - ~*/
		== LCCORWIJ
		@15 /*~Here it comes.~ */
		== LCTIANNA
		@16 /* ~Could you l-lend me some money? My mother was sick and... I needed to borrow money to pay for her treatment. She's better now, thankfully, but I have no way of paying the lender back.~ */
		== LCCORWIJ
		@17 /* ~How much do you owe, and to whom?~ */
		== LCTIANNA
		@18 /* ~I still owe 700 gold, t-to Jasper. */
		== LCCORWIJ
		@19 /* ~That lousy pimp!? Gods, Tianna. You'll never change. Don't you know what he'll do to you if you can't pay? He'll make you work your debt off on your back and on your knees!~ */
END LCTIANNA LCA_CorwinTiannaChainEnd