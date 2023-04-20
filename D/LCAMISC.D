//Changes to miscellaneous dialogs (SoA / ToB)
//Generally, this file will contain modifications less than 100 lines long. Modifications 100 lines or longer will typically have their own file.
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-12-10: Initial Commit

*/

EXTEND_BOTTOM PPIRENI2 3
	IF ~
		IsValidForPartyDialog("LCCORWIN")
	~ THEN GOTO LCA_PPIRENI2_3_CHAIN
END

ADD_TRANS_TRIGGER BDIMOEN 89
~
	GlobalLT("LCA_CorwinContinue", "GLOBAL", 1)
~
DO 2 3

EXTEND_BOTTOM BDIMOEN 89
	IF ~
		Global("bd_player_exiled","global",1)
		GlobalGT("LCA_CorwinContinue", "GLOBAL", 0)
	~ THEN REPLY #239700 /* ~You and me both.~ */ 
	DO ~
		SetGlobal("bd_plot","global",665)
	~ 
	GOTO LCA_CorwinLetter
  
	IF ~
		Global("bd_player_exiled","global",1)
		GlobalGT("LCA_CorwinContinue", "GLOBAL", 0)
	~ THEN REPLY #239701 /* ~You should never have doubted I would find a way to freedom. I never did.~ */ 
	DO ~
		SetGlobal("bd_plot","global",665)
	~ 
	GOTO LCA_CorwinLetter
END

APPEND BDIMOEN
	IF ~~ THEN BEGIN LCA_CorwinLetter
		SAY @209 /* ~Oh! Before I forget — Captain Corwin came to see me. She asked that I give you this letter.~ */
		
		IF ~
			Global("LCA_CorwinContinue", "GLOBAL", 2)
		~ THEN 
		DO ~
			GiveItemCreate("LTRSCH", LastTalkedToBy(Myself),0,0,0)
			GiveItemCreate("LCAMULET", LastTalkedToBy(Myself),0,0,0)
			SetGlobal("LCA_GaveCorwinLetter", "GLOBAL", 2)
		~
		GOTO LCA_GiveLetter_Schael
		
		IF ~
			Global("LCA_CorwinContinue", "GLOBAL", 1)
		~ THEN 
		DO ~
			GiveItemCreate("LTRCOR", LastTalkedToBy(Myself),0,0,0)
			SetGlobal("LCA_GaveCorwinLetter", "GLOBAL", 1)
		~
		GOTO LCA_GiveLetter_Corwin
	END
	
	IF ~~ THEN BEGIN LCA_GiveLetter_Schael
		SAY @212 /* She said that she's sorry she couldn't see you, but that you'd understand once you've read the letter. */
		
		IF ~~ THEN REPLY @210 /* ~Thank you, Imoen. (Read the letter now).~ */
		EXTERN PLAYER1 LCA_ReadCorwinLetter
		
		IF ~~ THEN REPLY @211 /* Thank you, Imoen. (Read the letter later).~ */
		GOTO 92
	END
	
	IF ~~ THEN BEGIN LCA_GiveLetter_Corwin
		SAY @212 /* She said that she's sorry she couldn't see you, but that you'd understand once you've read the letter. */
		
		IF ~~ THEN REPLY @210 /* ~Thank you, Imoen. (Read the letter now).~ */
		EXTERN PLAYER1 LCA_ReadCorwinLetter
		
		IF ~~ THEN REPLY @211 /* Thank you, Imoen. (Read the letter later).~ */
		GOTO 92
	END
END

EXTEND_BOTTOM FORTHE 9
	IF ~~ THEN 
	DO ~
		GiveGoldForce(200)
		SetGlobal("LCA_HelpedForthel_BG1", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

EXTEND_BOTTOM FORTHE 11
	IF ~~ THEN 
	DO ~
		GiveGoldForce(200)
		SetGlobal("LCA_HelpedForthel_BG1", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

EXTEND_BOTTOM BDCORWIJ 318
	IF ~~ THEN REPLY @202 /* ~Corwin, these are beautiful. This Neoma... you must be very special to her.~ */
	GOTO LCA_Neoma
END

EXTEND_BOTTOM BDCORWIJ 319
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinGaveEarrings", "GLOBAL", 1)
		AddJournalEntry(@207, INFO)
	~
	EXIT
END

EXTEND_BOTTOM BDCORWIJ 320
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_CorwinGaveEarrings", "GLOBAL", 1)
		AddJournalEntry(@207, INFO)
	~
	EXIT
END

APPEND BDCORWIJ
	IF ~~ THEN LCA_Neoma
		SAY @203 /*  ~We're good friends. Sometimes, a little more than that...~ */
	
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @204 /* ~I see. I'm sure Voghiln will appreciate the thought.~*/ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @204 /* ~I'm certain Voghiln will appreciate the thought.~ */ 
		EXTERN ~BDVOGHIJ~ 170
  
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY #252321 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY #252321 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ 
		EXTERN ~BDVOGHIJ~ 170
		
		IF ~~ THEN REPLY @205 /* ~Lucky her.~ */
		GOTO LCA_Neoma2
	END
	
	IF ~~ THEN LCA_Neoma2
		SAY @206 /* ~Sorry? I didn't catch that.~ */
		
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @208 /* ~It was nothing. I'm sure Voghiln will appreciate your kindness.~*/ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @208 /* ~It was nothing. I'm sure Voghiln will appreciate your kindness.~ */ 
		EXTERN ~BDVOGHIJ~ 170
  
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY #252321 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY #252321 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ 
		EXTERN ~BDVOGHIJ~ 170
	END
END

EXTEND_BOTTOM BAERIE 112
	IF ~
		GlobalGT("bd_asha_duel", "global", 0)
		!GlobalGT("LCA_Banter_CorwinAerie", "GLOBAL", 5)
	~ THEN REPLY @196 /* ~I've met one of your kind before.~ */
	GOTO LCA_Ashatiel
	
	IF ~
		GlobalGT("LCA_Banter_CorwinAerie", "GLOBAL", 5)
	~ THEN REPLY @199 /* ~Schael's already told you of my experience with Ashatiel. Could you tell me more about your people? Your society?~ */
	GOTO 114
	
	IF ~
		GlobalGT("LCA_Banter_CorwinAerie", "GLOBAL", 5)
	~ THEN REPLY @201 /* ~Schael's already told you of my experience with Ashatiel. We really should get moving.~ */
	GOTO 116
END

APPEND BAERIE
	IF ~~ THEN BEGIN LCA_Ashatiel
		SAY @197 /* ~R-really? When? What were they l-like?~ */
		
		IF ~~ THEN REPLY @198 /* ~It was during the Dragonspear campaign. Aerie... I'm sorry. I'd rather not talk about it.~ */
		GOTO 116
		
		IF ~~ THEN REPLY @200 /* ~It doesn't matter. Could you tell me more about your people? Your society?~ */
		GOTO 114
	END
END

ADD_TRANS_TRIGGER BDBENCE 85
~
	!Global("LCA_Override", "GLOBAL", 1)
~

EXTEND_BOTTOM BDBENCE 85
	IF ~
		Global("LCA_Override", "GLOBAL", 1)
	~ THEN 
	DO ~
		SetGlobal("bd_plot","global",650)
		ActionOverride("bdschae2", SetDialog("LCBDSCH2"))
		SetDialog("LCBDBENC")
		ActionOverride("bdschae2", StartDialog("LCBDSCH2", Player1))
	~
	EXIT
END


EXTEND_BOTTOM SAREV25A 10
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN 
	EXTERN LCCORWIJ LCA_SAREV_10
END

EXTEND_BOTTOM SAREV25A 48
	IF ~~ THEN REPLY @183 /* ~I was already on my way to Saradush before I was dragged here.~ */
	GOTO 49
END

APPEND MAZZYJ
	IF ~~ THEN BEGIN LCA_MazzyWonCompetition
		SAY @184 /* ~Thank you, Schael. You're one of the toughest competitors I've faced.~ */
		
		IF ~~ THEN REPLY @185 /* ~You both performed well. I'm glad to have such skilled companions at my side.~  */
		GOTO LCA_MazzyWonCompetition2
	END
	
	IF ~
		Global("LCA_TM_ArcheryChallenge", "GLOBAL", 2)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN BEGIN LCA_Trademeet_Competition_SchaelWon
		SAY @186 /* ~Schael, congratulations on your victory. That was quite the performance.~ */
	
		IF ~~ THEN 
		EXTERN LCCORWIB LCA_CorwinWonCompetition
	END
END
//RBALDU

ADD_STATE_TRIGGER RBALDU 5
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER RBALDU 14
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~
APPEND DORNJ
	IF ~~ THEN BEGIN LCA_CorwinDornConflictChainEnd
		SAY @193 /* ~Laughable, woman. Stand in my way, and your neck will snap as easily as a tree in the midst of a hurricane.~ */
		
		IF ~~ THEN REPLY @194 /* ~That's enough. Dorn, I don't know what you think exists between us, but I love Schael and nothing is going to change that.~  */
		GOTO LCA_ChooseCorwin
		
		IF ~~ THEN REPLY @195 /* ~Stop it, Dorn. You know my affections lie with you.~ */
		EXTERN LCCORWIJ LCA_ChooseDorn
	END

END

APPEND RBALDU
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		!AreaCheck("BG0614")
		!AreaCheck("BG0134")
	~ THEN BEGIN LCA0
		SAY @178 /* ~The Duke's have proclaimed that <CHARNAME> was innocent after all. Word is <PRO_HESHE> may be coming back to the city. That would be something, wouldn't it?~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA1
		SAY @179 /* ~Been hearing that there's trouble brewing far to the southeast. Fire giants are said to be laying siege to a city... Saradush, I think it was.~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA2
		SAY @180 /* ~Lord Winston did a great job in clearing out the refugees from Caelar's crusade, don't you think?~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA3
		SAY @181 /* ~You didn't hear it from me, but there's word that Duke Silvershield's daughter hasn't fully recovered from her ordeal.~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		!AreaCheck("BG0614")
		!AreaCheck("BG0134")
	~ THEN BEGIN LCA4
		SAY @182 /* ~Word is that <CHARNAME>, the hero of Baldur's Gate, is romantically involved with an officer of the Flaming Fist.~*/
		IF ~~ THEN EXIT
	END
END


//NALIAJ
APPEND NALIAJ
	IF ~~ THEN BEGIN LCA_RefuseMeatballs
		SAY @176 /* ~I'll not take part in such decadance while there are poor people starving not 50 paces from this estate.~ */
		
		IF ~~ THEN EXTERN LCCOOK LCA_NaliaRefused
	END
END
//HOUSG3
ADD_STATE_TRIGGER HOUSG3 0
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER HOUSG3 1
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

APPEND HOUSG3
	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(2,1)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		!Global("LCA_TalkedToSkie", "GLOBAL", 1)
	~ THEN BEGIN LCA_PlayerGreeting
		SAY @174 /* ~<CHARNAME> - Lady Silvershield is expecting you.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~
		IsGabber("LCCORWIN")
		!TimeOfDay(NIGHT)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA_CorwinGreeting1
		SAY @171 /* ~Good day, officer.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		IsGabber("LCCORWIN")
		TimeOfDay(NIGHT)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA_CorwinGreeting2
		SAY @172 /* ~Good evening, officer.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA_DefaultGreeting
		SAY @173 /* ~Behave yourselves - you are in the home of Duke Entar Silvershield.~*/
		
		IF ~~ THEN EXIT
	END
	
	
END

//SERVA2
ADD_STATE_TRIGGER SERVA2 0
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER SERVA2 11
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

APPEND SERVA2
	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(3,1)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA_PlayerGreeting
		SAY @168 /* ~Oh, it's you, the hero. Entar Silvershield's daughter told us you may be stopping by.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(3,2)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA_PlayerGreeting2
		SAY @169 /* ~I'm just a servant.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(3,3)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA_PlayerGreeting3
		SAY @170 /* ~Not to be rude, but I need to get back to work.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		IsGabber("LCCORWIN")
		!TimeOfDay(NIGHT)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA_CorwinGreeting1
		SAY @171 /* ~Good day, officer.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		IsGabber("LCCORWIN")
		TimeOfDay(NIGHT)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA_CorwinGreeting2
		SAY @172 /* ~Good evening, officer.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		RandomNum(2,1)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA_Greeting1
		SAY @169 /* ~I'm just a servant.~ */
		
		IF ~~ THEN EXIT
	END

	IF ~
		RandomNum(2,2)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA_Greeting2
		SAY @170 /* ~Not to be rude, but I need to get back to work.~*/
		
		IF ~~ THEN EXIT
	END
END

//LOBAR
ADD_STATE_TRIGGER LOBAR 7
~
	!IsGabber("LCCORWIN")
~

ADD_STATE_TRIGGER LOBAR 0
~
	!IsGabber("LCCORWIN")
~

ADD_STATE_TRIGGER LOBAR 8
~
	!IsGabber("LCCORWIN")
~

EXTEND_BOTTOM LOBAR 0
	IF ~
		IsValidForPartyDialog("LCCORWIN")
		!Global("LCA_CorwinLobarTianna", "GLOBAL", 1)
		!Global("LCA_TalkedToTianna", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("LCA_CorwinLobarTianna", "GLOBAL", 1)
	~
	EXTERN LCCORWIJ LCA_CorwinLobar
END

APPEND LOBAR
	IF ~
		IsGabber("LCCORWIN")
		Global("LCA_CorwinLobar", "GLOBAL", 1)
	~ THEN BEGIN LCA_CorwinGreeting2
		SAY @163 /* ~Hello again, officer. How can the Low Lantern be of assistance?~ */
		
		IF ~~ THEN REPLY @164 /* ~I don't need anything at the moment.~ */
		EXIT
		
		IF ~
			Global("LCA_BGSlaverPlot", "GLOBAL", 1)
			!Global("LCA_AskedLobarSlaver", "GLOBAL", 1)
		~ THEN REPLY @156 /* ~We're investigating reports of slaver activity in Baldur's Gate. Are you aware of any refugees having been sold into servitude?~ */
		DO ~
			SetGlobal("LCA_AskedLobarSlaver", "GLOBAL", 1)
		~
		GOTO LCA_SlaverInvestigation
		
		IF ~
			!Global("LCA_CorwinLobarTianna", "GLOBAL", 1)
			!Global("LCA_TalkedToTianna", "GLOBAL", 1)
		~ THEN REPLY @160 /* ~Is Tianna working?~ */
		DO ~
			SetGlobal("LCA_CorwinLobarTianna", "GLOBAL", 1)
		~
		GOTO LCA_LobarTianna
	END
	
	IF ~
		IsGabber("LCCORWIN")
		!Global("LCA_CorwinLobar", "GLOBAL", 1)
	~ THEN BEGIN LCA_CorwinGreeting
		SAY @155 /*  ~Greetings officer, and welcome to the Low Lantern. Are you here for business, or for pleasure? Perhaps a little of both?~  */
		
		IF ~
			Global("LCA_BGSlaverPlot", "GLOBAL", 1)
			!Global("LCA_AskedLobarSlaver", "GLOBAL", 1)
		~ THEN REPLY @156 /* ~We're investigating reports of slaver activity in Baldur's Gate. Are you aware of any refugees having been sold into servitude?~ */
		DO ~
			SetGlobal("LCA_CorwinLobar", "GLOBAL", 1)
			SetGlobal("LCA_AskedLobarSlaver", "GLOBAL", 1)
		~
		GOTO LCA_SlaverInvestigation
		
		IF ~
			!Global("LCA_CorwinLobarTianna", "GLOBAL", 1)
			!Global("LCA_TalkedToTianna", "GLOBAL", 1)
		~ THEN REPLY @160 /* ~Is Tianna working?~ */
		DO ~
			SetGlobal("LCA_CorwinLobar", "GLOBAL", 1)
			SetGlobal("LCA_CorwinLobarTianna", "GLOBAL", 1)
		~
		GOTO LCA_LobarTianna
	
	END
	
	IF ~~ THEN BEGIN LCA_LobarTianna
		SAY @161 /* ~Ah, yes. She's downstairs. Shall I tell her to expect you?~ */
		
		IF ~~ THEN
		EXTERN LCCORWIJ LCA_CorwinLobarTiannaEnd
	END
	
	IF ~~ THEN BEGIN LCA_SlaverInvestigation
		SAY @157 /* ~No, I don't know anything about that. All of the workers here are of their own volition, I assure you.~ */
		
		IF ~~ THEN REPLY @158
		GOTO LCA_SlaverInvestigation2
	END
	
	IF ~~ THEN BEGIN LCA_SlaverInvestigation2
		SAY @159 /* ~Not at all. We run a.. ah.. reputable establishment.~  */
		
		IF ~~ THEN EXIT
		
		IF ~
			!Global("LCA_CorwinLobarTianna", "GLOBAL", 1)
			!Global("LCA_TalkedToTianna", "GLOBAL", 1)
		~ THEN REPLY @160 /* ~Is Tianna working?~ */
		DO ~
			SetGlobal("LCA_CorwinLobarTianna", "GLOBAL", 1)
		~
		GOTO LCA_LobarTianna
	END
END



//NOBW9
ADD_STATE_TRIGGER NOBW9 6
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

ADD_TRANS_TRIGGER NOBW9 0
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~
DO 3

EXTEND_BOTTOM NOBW9 0
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN REPLY @153 /* ~We've just returned after a long adventure in Amn.~*/
	GOTO LCA1
END

APPEND NOBW9
	IF ~
		StateCheck(Myself,STATE_CHARMED)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA0
		SAY @152 /* ~I've heard quite a bit about what's been going on around town. There are rumors that <CHARNAME> will return, now that <PRO_HISHER> innocence has been established.~ */
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN LCA1
		SAY @154 /* ~Adventurers! So you must be in the business of fighting dreadful beasts and such things. All of you must be so very brave to take up such a profession.~*/
		
		IF ~~ THEN EXIT
	END
END

//BART0133
ADD_STATE_TRIGGER BART0133 0
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

APPEND BART0133
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA0
		SAY @149 /* ~Business has been slow since the refugees left. If you've need of anything, don't hesitate to ask.~  */
		
		 IF ~~ THEN REPLY @150 /* ~It's been a long journey back from Amn. What do you have to ease our spirits?~ */ 
		 DO ~
			StartStore("tav0133",LastTalkedToBy(Myself))
		~ EXIT
  
		IF ~~ THEN REPLY @151 /* ~I need nothing at the moment, though your offer is appreciated.~ */ 
		EXIT
	END
END


//PROST3
ADD_STATE_TRIGGER PROST3 2
~
	InMyArea("YAGO")
~

APPEND PROST3
	IF ~
		!Dead("YAGO")
		!InMyArea("YAGO")
		StateCheck(Myself,STATE_CHARMED)
	~ THEN BEGIN LCA0
		SAY @147 /* ~I haven't seen one of our old regulars, Yago, in some time. I wonder how he's doing?~ */
		
		IF ~~ THEN EXIT
	END
	
	IF ~
		Dead("YAGO")
		!InMyArea("YAGO")
		StateCheck(Myself,STATE_CHARMED)
	~ THEN BEGIN LCA1
		SAY @148 /* ~It's a shame what happened to Yago. Can't say I'm surprised though.~ */
		
		IF ~~ THEN EXIT
	END
END



//DILLAR
ADD_STATE_TRIGGER DILLAR 7
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

EXTEND_BOTTOM DILLAR 0
	IF ~
		Global("LCA_HelpTianna", "GLOBAL", 1)
		!Global("LCA_AskedAboutJasper", "LOCALS", 1)
		!Dead("LCJASPER")
		!Global("LCA_TiannaDebtResolved", "GLOBAL", 1)
	~ THEN REPLY @165 /* ~I'm looking for a man named Jasper. I was told that he's here - do you know where I can find him?~ */
	GOTO LCA_Jasper
END

APPEND DILLAR
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA0 // from:
		SAY @146 /* ~Please, all of my girls are available for friends of mine, so long as they behave themselves.~ */
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("LCA_HelpTianna", "GLOBAL", 1)
		!Global("LCA_AskedAboutJasper", "LOCALS", 1)
		!Dead("LCJASPER")
		!Global("LCA_TiannaDebtResolved", "GLOBAL", 1)
	~ THEN BEGIN LCA_AskAboutJasper
		SAY @167 /* ~Can I help you?~ */
		IF ~~ THEN REPLY @165 /* ~I'm looking for a man named Jasper. I was told that he's here - do you know where I can find him?~ */
		GOTO LCA_Jasper
	END
	
	IF ~~ THEN BEGIN LCA_Jasper
		SAY @166 /* ~Jasper, yes. He and his girls are set up to the southwest. He wears a bright green coat, you can't miss him.~ */
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_AskedAboutJasper", "LOCALS", 1)
		~
		EXIT
	END
END

//PROST8
ADD_STATE_TRIGGER PROST8 3
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

APPEND PROST8
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA0 // from:
		SAY @145 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END

//PROST7
ADD_STATE_TRIGGER PROST7 6
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

APPEND PROST7
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA0 // from:
		SAY @145 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END

//PROST6
ADD_STATE_TRIGGER PROST6 2
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

APPEND PROST6
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA0 // from:
		SAY @145 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END

//PROST5
ADD_STATE_TRIGGER PROST5 4
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

APPEND PROST5
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA0 // from:
		SAY @145 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END

//KERRAC
EXTEND_BOTTOM KERRAC 3
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_MetKerrac", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

EXTEND_BOTTOM KERRAC 4
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_MetKerrac", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

EXTEND_BOTTOM KERRAC 5
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_MetKerrac", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

EXTEND_BOTTOM KERRAC 6
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_MetKerrac", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

//KESHEE
ADD_TRANS_TRIGGER KESHEE 2
~
	!Dead("HAISH2")
~

EXTEND_BOTTOM KESHEE 2
	IF ~~ THEN REPLY @134 /* ~I found out what happened to Balduran... or his ship and crew, anyway.~*/
	GOTO LCA0
END

APPEND KESHEE
	IF ~~ THEN BEGIN LCA0
		SAY @135 /* ~Oh, is that so?~*/
		
		IF ~~ THEN REPLY @136 /* ~Yes. (Tell him the story of the wolfwere island.)~ */
		GOTO LCA1
	END
	
	IF ~~ THEN BEGIN LCA1
		SAY @137 /* ~Har har... you mean to tell me Balduran and his men were transformed into beasts? That's a tall tale if I ever heard one.~*/
		
		IF ~
			PartyHasItem("BOOK87")
		~ THEN REPLY @138 /* ~It's true. Look, here's his logbook.~ */
		GOTO LCA_LogBook
		
		IF ~
			!PartyHasItem("BOOK87")
		~ THEN REPLY @142 /* ~It's true.~*/
		GOTO LCA_NoEvidence
	END

	IF ~~ THEN BEGIN LCA_NoEvidence
		SAY @143 /* ~Oh sure, hah! Thanks for the laughs, friend. You have quite the imagination. I'll let you be on your way.~*/
		
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN LCA_LogBook
		SAY @139 /* ~Let me see that... it seems to be... wow.~*/
		
		= @140 /* ~I can hardly believe it! Did you find out what happpened to Balduran himself?~*/
		
		IF ~~ THEN REPLY @141 /* ~Unfortunately no, none of the people on the island could offer any explanation as to what happened to him.~*/
		GOTO LCA_LogBook_End
	
	END
	
	IF ~~ THEN BEGIN LCA_LogBook_End
		SAY @144 /*  ~Tis a shame, then. Thank you for telling me the story. I'm going to go tell all me buddies how <CHARNAME> and his band of adventurers found what happened to Balduran's ship and crew.~*/
		
		IF ~~ THEN
		DO ~
			ReputationInc(2)
			AddExperienceParty(20000)
			EscapeArea()
		~
		EXIT
	END
END

//THIEFM
ADD_STATE_TRIGGER THIEFM 3
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

APPEND THIEFM
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		RandomNum(5,3)
	~ THEN BEGIN LCA3
		SAY @133 /* @133 = ~Never had such easy pickings as those refugees, I tell ya. It's a shame they're all gone.~*/
		IF ~~ THEN EXIT
	END
END

//MERLEA
ADD_STATE_TRIGGER MERLEA 0
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~
4 5 6

APPEND MERLEA
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,1)
	~ THEN BEGIN LCA0
		SAY @124 /* ~Leave me be, I've business to attend to.~ */
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,2)
		!AreaCheck("BG0128")
		!Dead("Aldeth")
	~ THEN BEGIN LCA1
		SAY @125 /* ~If you're seeking Aldeth, he's upstairs.~*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,2)
	~ THEN BEGIN LCA2
		SAY @126 /* ~Grain futures are lower, with the bandit activity down and all.~  */
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,3)
	~ THEN BEGIN LCA3
		SAY @127 /* ~With the refugee crisis finally dealt with, the strain on the city's economy should lessen.~*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,4)
	~ THEN BEGIN LCA4
		SAY @128 /* ~Lumber futures are up, no doubt because of the new construction east of the city.~*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,5)
	~ THEN BEGIN LCA5
		SAY @129 /* ~The value of my holdings has doubled since the fall of the Iron Throne.~
	*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,6)
	~ THEN BEGIN LCA6
		SAY @130 /* ~Welcome to the Merchant's League. May your stay be a profitable one.~
	*/
		IF ~~ THEN
		EXIT
	END
END

//BRIELB
ADD_STATE_TRIGGER BRIELB 3
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

APPEND BRIELB
	IF WEIGHT #2 /* Triggers after states #: 15 even though they appear after this state */
	~  !InParty("Coran")
		NumTimesTalkedTo(0)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA_Greeting // from:
		SAY @121 /* ~Oh my! You're the hero of Baldur's Gate - please, I need your help!~*/
		IF ~~ THEN REPLY @122 /* ~We've just returned from a long journey, and we're tired.~ */ 
		GOTO 4
		IF ~~ THEN REPLY @123 /* ~What is it?~ */ 
		GOTO 5
	END
END

APPEND VICONIJ
	IF ~~ THEN BEGIN LCA_AskDiviner
		SAY @120 /* ~No. I already know what is in store for me, and there is nothing I can do to escape it.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_ViconiaAskedDiviner", "GLOBAL", 1)
		~
		EXTERN LCDIVINE LCA_AskAway
	END
END

APPEND ANOMENJ
	IF ~~ THEN BEGIN LCA_AskDiviner
		SAY @115 /* ~No. Let us not waste any of our time and money on this charlatan.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_AnomenAskedDiviner", "GLOBAL", 1)
		~
		EXTERN LCDIVINE LCA_AskAway
	END
	
	IF ~~ THEN BEGIN BCorwinAnomen1A
		SAY @187 /* ~A mother's place is at home with her child, not on the battlefield.~ */
	
		= @188 /* ~You're a poor example of a parent.~ */
		
		IF ~~ THEN REPLY @189 /* ~You're out of line Anomen. Knock it off.~ */
		EXTERN LCCORWIB BCorwinAnomen1B
		
		IF ~~ THEN REPLY @190 /* ~(Remain silent)~ */
		EXTERN LCCORWIB BCorwinAnomen1B
		
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~ THEN REPLY @191 /* ~You know little of what you speak. Captain Corwin is a fine mother.~ */
		EXTERN LCCORWIB BCorwinAnomen1B
		
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~ THEN REPLY @192 /* ~You know little of what you speak. Major Corwin is a fine mother.~ */
		EXTERN LCCORWIB BCorwinAnomen1B
	END
END

APPEND JAHEIRAJ
	IF ~~ THEN BEGIN LCA_AskDiviner
		SAY @114 /* ~No. To know the future is unnatural and risks upsetting the balance.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_JaheiraAskedDiviner", "GLOBAL", 1)
		~
		EXTERN LCDIVINE LCA_AskAway
	END
END

APPEND IMOEN2J
	IF ~~ THEN BEGIN LCA_AskDiviner
		SAY @104 /* ~Thanks, but no. Knowing my future won't change it, and it will take away all of the surprise.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_ImoenAskedDiviner", "GLOBAL", 1)
		~
		EXTERN LCDIVINE LCA_AskAway
	END
END
//KENT
ADD_STATE_TRIGGER KENT 0
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

APPEND KENT
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		!Global("LCA_KentGreeting", "LOCALS", 1)
	~
	THEN BEGIN LCA0
		SAY @87 /* ~Captain, <CHARNAME>, welcome home.~ */
		
		IF ~~ THEN REPLY @88 /* ~Thank you, Kent. It's good to see you again.~ */
		DO ~
			SetGlobal("LCA_KentGreeting", "LOCALS", 1)
		~
		GOTO LCA1
	END
	
	IF ~
		Global("LCA_KentGreeting", "LOCALS", 1)
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA1
		SAY @86 /* ~Marshal Nederlok is in his office if you need to see him. First door on my right.~*/
		IF ~~ THEN REPLY @89 /* ~Understood.~ */
		EXIT
	END
END
 
//FLAMBG
ADD_STATE_TRIGGER FLAMBG 0
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~
5 6

APPEND FLAMBG
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		IsValidForPartyDialogue("LCCORWIN")
		RandomNum(2,1)
	~
	THEN BEGIN LCA0
		SAY @83 /* ~Nothing unusual to report, Captain.~ */
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		!Global("LCA_DukesDebriefed", "GLOBAL", 1)
	~
	THEN BEGIN LCA1
		SAY @85 /* ~Good day <CHARNAME>, Captain. If you are looking for Marshal Nederlok, he is in his office upstairs.~ */
		
		IF ~~ THEN EXIT
	END
	

END

//VALYGARJ
APPEND VALYGARJ
	IF ~~ THEN BEGIN LCA_WYRM_VALYGAR3
		SAY @82 /* ~It's good to meet you too, sir.~ */
		
		IF ~~ THEN
		EXTERN LCNEDERL LCA_WYRM_3
	END
END

//THIEFG
ADD_TRANS_TRIGGER THIEFG 0
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~
DO 1

EXTEND_BOTTOM THIEFG 0
	
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		!Global("LCA_ThiefAllowPass", "GLOBAL", 1)
	~ THEN REPLY @70 /* ~Ya, I know the password.~ */
	GOTO LCA0
	
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_ThiefAllowPass", "GLOBAL", 1)
	~ THEN EXTERN LCCORWIJ LCA_ThiefGuildEntry
	
	IF ~
		Global("LCA_ThiefAllowPass", "GLOBAL", 1)
	~ THEN GOTO LCA_MoveAlong
END

APPEND THIEFG
	IF ~~ THEN BEGIN LCA0 // from: 0.1
		SAY @69 /* ~Well, if you know the password, then spill it.~ */
		IF ~~ THEN REPLY #216655 /* ~Darkwell.~ */ GOTO LCA1
		IF ~~ THEN REPLY #216656 /* ~Ravenscar.~ */ GOTO LCA1
		IF ~~ THEN REPLY #216657 /* ~Mask.~ */ GOTO LCA1
		IF ~~ THEN REPLY #216658 /* ~Fafhrd.~ */ GOTO LCA2
		IF ~~ THEN REPLY #216659 /* ~Bodi.~ */ GOTO LCA1
		IF ~~ THEN REPLY #216660 /* ~Mercury.~ */ GOTO LCA1
		IF ~~ THEN REPLY #216661 /* ~Shadow.~ */ GOTO LCA1
	END
	
	IF ~~ THEN BEGIN LCA1
		SAY @68 /* ~Wrong answer. Git outta here 'fore ya get hurt. I might not be able to stop a buncha well-armed adventurers, but if you cause any trouble in the guild, don't be expecting to walk out in one piece.~ */
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN LCA2
		SAY @64 /* ~That's the old password, you idiot! Give me the new password!~ */
		
		IF ~
			//!IsGabber(Player1)
			!IsGabber(Player1)
		~ THEN REPLY @65 /* ~I um... don't know the password.~*/
		GOTO 1
		
		IF ~
			//IsGabber(Player1)
			IsGabber(Player1)
		~ THEN REPLY @65 /* ~I um... don't know the password.~*/
		GOTO LCA2A
	END
	
	IF ~~ THEN BEGIN LCA2A
		SAY @66 /* ~(You hear someone yelling from the next room: "Don't you recognize who that is? It's <CHARNAME>, the hero of Baldur's Gate! Let them pass!")~*/
		= @67 /* ~Oh.. right, it's you. Ya all can go in now.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_ThiefAllowPass", "GLOBAL", 1)
			SetGlobal("ThiefSecretQuestion","GLOBAL",1)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN LCA2B
		SAY @131 /* ~(You hear someone yelling from the next room: "It's been a while, Captain! Go ahead, let them through!")~ */
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_ThiefAllowPass", "GLOBAL", 1)
			SetGlobal("ThiefSecretQuestion","GLOBAL",1)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN LCA_MoveAlong
		SAY @132 /* ~Oh, it's you again. Well, what're you standin' round for? Go on through!~*/
		
		IF ~~ THEN
		EXIT
	END
END

//FATMBA
ADD_STATE_TRIGGER FATMBA 4
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

APPEND FATMBA
	IF ~  
		RandomNum(4,4)
	~ THEN BEGIN LCA0 // from:
		SAY @63 /* ~You know, I had a fall the other day. No one laughed, but the ground was cracking up.~ */
		IF ~~ THEN 
		EXIT
	END
END


//MICK
ADD_STATE_TRIGGER MICK 0
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

APPEND MICK
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA0
		SAY @62 /* ~Speedy delivery, speedy delivery coming through. Must inform the Grand Dukes that <CHARNAME> and <PRO_HISHER> companions have arrived. Speedy delivery, coming through!~ */
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
END

//OGRELEAD
ADD_STATE_TRIGGER OGRELEAD 0
~
	!Global("LCA_ReturnToBG", "GLOBAL", 1)
~

APPEND OGRELEAD
	IF ~
		Global("LCA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN LCA0
		SAY @61 /* ~Little pink ones, you shall all die. The Five have offered 25,000 gold for the head of <CHARNAME>, and we shall have it.~ */
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
	
END

/* 
	End of SoA - Ask who wants to go to Baldur's Gate
*/

//SUELLE2
ADD_STATE_TRIGGER SUELLE2 0
~
	!Global("LCA_59AOverride", "GLOBAL", 1)
~

EXTEND_BOTTOM SUELLE2 0
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXTERN LCCORWIJ LCA_SUELLE2_0
END

EXTEND_BOTTOM SUELLE2 5
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXTERN LCCORWIJ LCA_SUELLE2_5
END

EXTEND_BOTTOM SUELLE2 8
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXTERN LCCORWIJ LCA_SUELLE2_8
END

EXTEND_BOTTOM SUELLE2 13
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN
	DO ~
		GiveItemCreate("AMUL27",Player1,1,0,0)  // Amulet of Seldarine
	~
	GOTO 15
END

EXTEND_BOTTOM SUELLE2 14
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN
	DO ~
		GiveItemCreate("AMUL27",Player1,1,0,0)  // Amulet of Seldarine
	~
	GOTO 15
END

EXTEND_BOTTOM SUELLE2 18
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		ReputationLT(Player1,10)
	~
	THEN 
	DO ~
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("LC100a",FALSE)
	~
	EXIT
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		ReputationGT(Player1,9)
	~
	THEN 
	DO ~
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("LC100b",FALSE)
	~
	EXIT
END

APPEND SUELLE2
	IF ~~ THEN BEGIN LCA_SUELLE2_0_D
		SAY @59 /* ~(She smiles as she looks at the two of you.)~ */
		= @60 /* ~She never once left your side. I cannot tell you how heartwarming it is to see love blossom in the aftermath of what transpired here.~ */
		
		IF ~  
			ReputationLT(Player1,10)
		~ 
		THEN GOTO 3
  
		IF ~  
			ReputationGT(Player1,9)
		~ 
		THEN GOTO 6
	END
	
END

//SUJON
EXTEND_BOTTOM SUJON 14
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	EXTERN LCCORWIJ LCA_SUJON_14
END

//UDSVIR03
ADD_TRANS_TRIGGER UDSVIR03 25
~
	!IsValidForPartyDialogue("LCCORWIN")
~
DO 0

EXTEND_BOTTOM UDSVIR03 25
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinStopSvirFight", "GLOBAL", 1)
	~ THEN REPLY @58 /* ~Saying that was a mistake, fool! I will kill you and take the stone! Forget your deal!~  */
	EXTERN LCCORWIJ LCA_Svir
END


//UDPHAE01
EXTEND_TOP ~UDPHAE01~ 106
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @57 /*  ~My companion, Schael.~ */
	GOTO 110
END

ADD_TRANS_TRIGGER ~UDPHAE01~ 136
~
	!IsValidForPartyDialogue("LCCORWIN")
~

EXTEND_BOTTOM ~UDPHAE01~ 136
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN EXTERN ~LCCORWIJ~ LCA68
END

//BODHIAMB
EXTEND_BOTTOM BODHIAMB 5
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		InParty("LCCORWIN")
	~ 
	THEN GOTO LCA0
END

ADD_TRANS_TRIGGER BODHIAMB 5
~
OR(2)
	!InParty("LCCORWIN")
	!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
~ 
DO 0

APPEND BODHIAMB
	IF ~~ THEN BEGIN LCA0
		SAY @54 /* ~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose.~ */
		
		IF ~~ THEN GOTO 6
		
		IF ~
			IsValidForPartyDialogue("LCCORWIN")
		~ THEN GOTO LCA1
	END
	
	IF ~~ THEN BEGIN LCA1
		SAY @55 /* ~Consider Captain Corwin here. How difficult will it be to lose her, and to know that you were responsible for her daugher growing up without a mother? Leave this place, and treasure what is left of your pathetic existence.~ */
		IF ~~ THEN
		EXTERN LCCORWIJ LCA83
	END
	
	IF ~~ THEN BEGIN LCA2
		SAY @56 /* ~Arrogant child. Very well - if it is death you seek, then I will not deny you!~  */
		IF ~~ THEN
		DO ~
			ClearAllActions()
			StartCutSceneMode()
			StartCutSceneEx("LCcs07",FALSE)
		~
		EXIT
	END
END

//SUDEMIN
ADD_TRANS_TRIGGER SUDEMIN 39
~
	!IsValidForPartyDialogue("LCCORWIN")
~
DO 0

EXTEND_BOTTOM SUDEMIN 39
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinStopDeminFight", "GLOBAL", 1)
	~ THEN REPLY @52 /* ~You asked for it, sister... time for you to die!~  */
	EXTERN LCCORWIJ LCA_Demin
END

APPEND SUDEMIN
	IF ~~ THEN BEGIN LCA_Demin3
		SAY @53 /* ~Thank you for talking some sense into your comrade. Let us focus on the task at hand.~ */
		IF ~~ THEN
		GOTO 41
	END
END

//MADAM
ADD_TRANS_TRIGGER MADAM 0
~
	//!IsGabber("LCCORWIN")
	!IsGabber("LCCORWIN")
~
DO 1 4

ADD_TRANS_TRIGGER MADAM 7
~
	//!IsGabber("LCCORWIN")
	!IsGabber("LCCORWIN")
~
DO 3 4

APPEND MADAM
	IF ~  
		IsGabber(Player1)
		Global("LCA_CorwinRomanceActive","GLOBAL",2)
		Global("MadamUpset","GLOBAL",0)
	~ THEN BEGIN LCA_CorwinMadam // from:
		SAY #39394 /* ~Greetings, my <LADYLORD>. I am Madame Nin, and I am here to ensure you are pleasantly accompanied. Are you interested in companionship, my <LADYLORD>?~ */
		IF ~  
			IsValidForPartyDialogue("LCCORWIN")
		~ THEN 
		EXTERN ~LCCORWIJ~ LCA_CorwinMadam2
		
		IF ~  
			!IsValidForPartyDialogue("LCCORWIN")
		~ THEN 
		GOTO 7
	END
	
	IF ~~ THEN BEGIN LCA_CorwinMadam3 // from:
		SAY #39396 /* ~I see. Perhaps you should reconsider where you are then... and remember not to bother other customers with your puerile attitude.~ */
		
		IF ~~ THEN
		EXIT
		
		IF ~
			Global("LCA_CorwinCanHaveSex", "GLOBAL", 1)
			!Global("LCA_CorwinHitOnPlayer", "GLOBAL", 1)
			GlobalLT("LCA_TimesHadSex", "GLOBAL", 1)
			Global("LCA_CorwinLoveBG2", "GLOBAL", 1) // only for romance that continues from SoD. 
		~ THEN 
		DO ~
			SetGlobal("LCA_CorwinHitOnPlayer", "GLOBAL", 1)
			SetGlobal("MadamUpset", "GLOBAL", 1)
		~
		EXTERN ~LCCORWIJ~ LCA27A
		
		IF ~
			Global("LCA_CorwinCanHaveSex", "GLOBAL", 1)
			!Global("LCA_CorwinHitOnPlayer", "GLOBAL", 1)
			GlobalLT("LCA_TimesHadSex", "GLOBAL", 1)
			!Global("LCA_CorwinLoveBG2", "GLOBAL", 1) // only for romance that continues from SoD. 
		~ THEN 
		DO ~
			SetGlobal("LCA_CorwinHitOnPlayer", "GLOBAL", 1)
			SetGlobal("MadamUpset", "GLOBAL", 1)
		~
		EXTERN ~LCCORWIJ~ LCA27
	END	
END

//HELLJON
EXTEND_BOTTOM HELLJON 7

	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~LCCORWIJ~ LCA_HELLJON_7A
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~LCCORWIJ~ LCA_HELLJON_7B
END

EXTEND_BOTTOM HELLJON 8
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~LCCORWIJ~ LCA_HELLJON_8A
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~LCCORWIJ~ LCA_HELLJON_8B
END

EXTEND_BOTTOM HELLJON 9
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~LCCORWIJ~ LCA_HELLJON_9A
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~LCCORWIJ~ LCA_HELLJON_9B
END

EXTEND_BOTTOM HELLJON 10
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~LCCORWIJ~ LCA_HELLJON_10A
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~LCCORWIJ~ LCA_HELLJON_10B
END

//NEB
EXTEND_BOTTOM NEB 2
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN EXTERN ~LCCORWIJ~ LCA_NEB_2
END

APPEND NEB
	IF ~~ THEN BEGIN LCA0
		SAY @50 /* ~You look familiar... Captain Corwin, yes? You had me arrested just before I could introduce myself to your sweet daughter.~ */
		= @51 /*  ~I don't know how you found me, but I promise that when I'm done with you, I'll be sure to pay her a visit. Die!~ */
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_NebFight", "GLOBAL", 1)
			Enemy()
		~
		EXIT
	END
END


//HAERDAJ
APPEND HAERDAJ
	IF ~~ THEN BEGIN LCA_CorwinWantsSex5B
		SAY @49 /* ~Bah, hardly. You should read some of my earlier work.~ */
		IF ~~ THEN
		EXTERN LCCORWIJ LCA29
	END
END

//GORODR1
EXTEND_BOTTOM GORODR1 17 //OK
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN EXTERN LCCORWIJ LCA_GORODR1_17_18
END

EXTEND_BOTTOM GORODR1 18 //OK
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN EXTERN LCCORWIJ LCA_GORODR1_17_18
END

EXTEND_BOTTOM GORODR1 34 //OK
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN EXTERN LCCORWIJ LCA_GORODR1_34_44
END

EXTEND_BOTTOM GORODR1 39 //OK	
	IF ~
		//GlobalLT("Chapter","GLOBAL",20)
		OR(15)
			IsValidForPartyDialogue("LCCORWIN")
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Anomen")
			IsValidForPartyDialogue("Imoen2")
			IsValidForPartyDialogue("Korgan")
			IsValidForPartyDialogue("Keldorn")
			IsValidForPartyDialogue("Nalia")
			IsValidForPartyDialogue("Minsc")
			IsValidForPartyDialogue("Jaheira")
			IsValidForPartyDialogue("Valygar")
			IsValidForPartyDialogue("Mazzy")
			IsValidForPartyDialogue("Viconia")
			IsValidForPartyDialogue("Dorn")
			IsValidForPartyDialogue("Cernd")
			IsValidForPartyDialogue("Edwin")
	~
	THEN REPLY @22 /* ~(You turn to your comrades.) What say you? Should the treacherous cowards live, or should they die?~ */
	
	EXTERN GORODR1 LCA_OdrenJudgeSOA
END

EXTEND_BOTTOM GORODR1 44 //OK
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN EXTERN LCCORWIJ LCA_GORODR1_34_44
END

APPEND GORODR1
	IF ~~ THEN BEGIN LCA_OdrenDecision 
		SAY @42 /* ~Please, I ask you once again to forgive us, <CHARNAME>.~ */
		
		IF ~
			GlobalGT("LCA_OdrenShouldDie", "GLOBAL", 0)
		~ THEN REPLY @43 /* ~Prepare to die, you treacherous cowards!~  */
		GOTO 45
		
		IF ~
			GlobalLT("LCA_OdrenShouldDie", "GLOBAL", 0)
		~ THEN REPLY @44 /* ~We've decided that you and your treacherous comrades will live. Get out of my sight!~  */
		GOTO 55
		
		IF ~
			GlobalLT("LCA_OdrenShouldDie", "GLOBAL", 0)
		~ THEN REPLY @45 /* ~We've decided that you and your treacherous comrades will live. Give us our reward, and get out of my sight!~  */
		DO ~
			GiveGoldForce(10000)
			AddXP2DA("PLOT01C")
		~ 
		GOTO 57
		
		IF ~
			Global("LCA_OdrenShouldDie", "GLOBAL", 0)
		~
		THEN GOTO LCA_OdrenDecisionDecidingVote
	END
	
	IF ~~ THEN BEGIN LCA_OdrenDecisionDecidingVote
		SAY @46 /* (Your group is evenly split - half believe the priests should be executed, and the other half want to show them mercy. You must cast the deciding vote.)~ */
		
		IF ~~ THEN REPLY @47 /* We've decided that you and your treacherous comrades will live. Get out of my sight!~  */
		GOTO 55
		
		IF ~~ THEN REPLY @48 /* We've decided that you and your treacherous comrades will live. Give us our reward, and get out of my sight!*/
		DO ~
			GiveGoldForce(10000)
			AddXP2DA("PLOT01C")
		~ 
		GOTO 57
		
		IF ~~ THEN REPLY @43 /* ~Prepare to die, you treacherous cowards!~ */
		GOTO 45
		
	END
END
// DEGARD
ADD_TRANS_TRIGGER DEGARD 4 //OK
~
	!IsValidForPartyDialogue("LCCORWIN")
~
DO 1
EXTEND_BOTTOM DEGARD 4 //OK
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN REPLY @21 /* ~If I should happen across this "Edwin," I'll be sure to seek you out and let you know where he is.~ */
	DO ~
		SetGlobalTimer("LCA_CorwinEdwinThayTimer", "GLOBAL", TWO_ROUNDS)
		SetGlobal("LCA_CorwinEdwinThay", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

// NALIAJ
APPEND NALIAJ
	IF ~~ THEN BEGIN LCA_CorwinStruckDelcia
		SAY @20 /* ~(She finally regains her composure) How DARE you! That's my aunt you just struck!~ */
		
		IF ~
			Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @17 /* ~I can't believe you did that, love.~ */
		EXTERN LCCORWIJ LCA_DelciaLeft2
		
		IF ~
			Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @19 /*  ~She definitely deserved it. Well done, love.~ */
		EXTERN LCCORWIJ LCA_DelciaLeft2
		
		IF ~
			!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @13 /* ~I can't believe you did that, Corwin.~ */
		EXTERN LCCORWIJ LCA_DelciaLeft2
		
		IF ~
			!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @18 /* ~She definitely deserved it. Well done, Captain.~ */
		EXTERN LCCORWIJ LCA_DelciaLeft2
	END
END

// KELDORJ

APPEND KELDORJ
	IF ~~ THEN BEGIN LCA_CorwinStruckDelcia
		SAY @12 /* ~That's... not how I would have handled the matter, Captain, but at least the Lady is out of harm's way.~ */
		
		IF ~
			Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @17 /* ~I can't believe you did that, love.~ */
		EXTERN LCCORWIJ LCA_DelciaLeft2
		
		IF ~
			Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @19 /*  ~She definitely deserved it. Well done, love.~ */
		EXTERN LCCORWIJ LCA_DelciaLeft2
		
		IF ~
			!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @13 /* ~I can't believe you did that, Corwin.~ */
		EXTERN LCCORWIJ LCA_DelciaLeft2
		
		IF ~
			!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @18 /* ~She definitely deserved it. Well done, Captain.~ */
		EXTERN LCCORWIJ LCA_DelciaLeft2
	END
END
// DELCIA

ADD_TRANS_TRIGGER DELCIA 11 //OK
~
	!IsValidForPartyDialogue("LCCORWIN")
~

ADD_TRANS_TRIGGER DELCIA 14 //OK
~
	!IsValidForPartyDialogue("LCCORWIN")
~

ADD_TRANS_TRIGGER DELCIA 21 //OK
~
	!IsValidForPartyDialogue("LCCORWIN")
~

ADD_TRANS_TRIGGER DELCIA 22 //OK
~
	!IsValidForPartyDialogue("LCCORWIN")
~

EXTEND_BOTTOM DELCIA 11 //OK
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN EXTERN LCCORWIJ LCA_CorwinDelciaA
END

EXTEND_BOTTOM DELCIA 14 //OK
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN EXTERN LCCORWIJ LCA_CorwinDelciaA
END

EXTEND_BOTTOM DELCIA 21 //OK
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN EXTERN LCCORWIJ LCA_CorwinDelciaA
END

EXTEND_BOTTOM DELCIA 22  //OK
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN EXTERN LCCORWIJ LCA_CorwinDelciaA
END

APPEND DELCIA
	IF ~~ THEN BEGIN LCA_CorwinLeave
		SAY @11 /* ~(She leaves in a hurry, with her hand covering the bruise on her face.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_DelciaEnd", "GLOBAL", 2)
			SetGlobal("DelceaMove","GLOBAL",1)
			ActionOverride("kpsold01",EscapeArea())
			SetGlobal("DelciaLeave","GLOBAL",1)
			EscapeAreaMove("AR1300",768,3310,N)
			Wait(3)
		~
		EXTERN LCCORWIJ LCA_DelciaLeft
	END
END
// C6DRIZZ1
EXTEND_BOTTOM C6DRIZZ1 1  //OK
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN EXTERN LCCORWIJ LCA_CorwinDrizz
END

APPEND C6DRIZZ1
	IF ~~ THEN BEGIN LCA_CorwinDrizz2
		SAY @14 /* ~A proposal? I will hear you out, <PRO_RACE>, but I will be wary. Speak, if you wish.~ */
		
		IF ~
			Global("WorkingForBodhi","GLOBAL",1)
		~ THEN REPLY @15 /* ~We seek to defeat a vampire in Athkatla too powerful to face alone. Will you help?~ */
		GOTO 32
		
		IF ~
			Global("WorkingForBodhi","GLOBAL",0)
		~ THEN REPLY @15 /* ~We seek to defeat a vampire in Athkatla too powerful to face alone. Will you help?~ */
		GOTO 33
		
		IF ~~ THEN REPLY @17 /* ~Never mind. We will be on my way.~ */ 
		GOTO 34
	END
END

// IMOEN2
EXTEND_BOTTOM IMOEN2 21 //OK
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN GOTO LCA_CorwinImoenReunite	
END

// INSPECT

ADD_TRANS_TRIGGER INSPECT 46 
~
	!IsValidForPartyDialogue("LCCORWIN")
~
DO 1

EXTEND_BOTTOM INSPECT 46
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		IsValidForPartyDialogue("Edwin")
	~
	THEN EXTERN EDWINJ LCA_EdwinFF1
END

// EDWINJ

APPEND EDWINJ
	IF ~~ THEN BEGIN LCA_EdwinFF1
		SAY @9 /* ~Oh yes... we've braved monsters, Flaming Fist --~ */
		IF ~~ THEN
		EXTERN LCCORWIJ LCA_EdwinFF2
	END
	
	IF ~~ THEN BEGIN LCA_EdwinFF3
		SAY @10 /* ~Ah, yes. As I was saying, we've braved monsters, Sarevok's assorted minions, and fanatical crusaders only to fall to a sneak-thief with an over-fondness for flesh. Excellent deduction.~ */
		IF ~  
			!IsValidForPartyDialogue("Yoshimo")
		~ THEN EXIT
  
		IF ~  
			IsValidForPartyDialogue("Yoshimo")
		~ THEN EXTERN ~YOSHJ~ 54
	END
END

// KORGANJ

EXTEND_BOTTOM KORGANJ 151 //OK
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN 
	EXTERN LCCORWIJ LCA_KORGANJ_151
END

// PIRMUR01

EXTEND_BOTTOM PIRMUR01 2
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN
	EXTERN LCCORWIJ LCA_PIRMUR01_2
END

// DELTOW01

APPEND DELTOW01
	IF WEIGHT #4 ~  
		IsValidForPartyDialogue("LCCORWIB")
		Global("InteractCorwin","LOCALS",0)
		RandomNum(3,2)
	~ THEN BEGIN LCA_InteractCorwin // from:
		SAY @7 /* ~A Flaming Fist officer, in Athkatla? You're very far from home! You looking for someone?~ */
		IF ~~ THEN 
		DO ~
			SetGlobal("InteractCorwin","LOCALS",1)
		~ 
		EXTERN ~LCCORWIJ~ LCA_InteractCorwin2
	END
	
	IF ~~ THEN BEGIN LCA_InteractCorwin3
		SAY @8 /* ~I bet it's those bastard mercenaries upstairs. They're a real rude bunch. Good hunting, young lady.~ */
		IF ~~ THEN
		EXIT
	END
END

// BPROST2

APPEND BPROST2
	IF WEIGHT #4 ~  
		Global("BProst2Corwin","LOCALS",0)
		IsValidForPartyDialogue("LCCORWIN")
		RandomNum(2,1)
	~ THEN BEGIN LCA_ProstCorwin // from:
		SAY @4 /* ~You there... I see you eying me, hon. You some kind of law officer or something?~ */
		= @5 /* ~Or are ye here for some action? I go both ways, ya know.~  */
		IF ~~ THEN 
		DO ~
			SetGlobal("BProst2Corwin","LOCALS",1)
		~ 
		EXTERN ~LCCORWIJ~ LCA_ProstCorwin2
	END
	
	IF ~~ THEN BEGIN LCA_ProstCorwin3
		SAY @6 /* ~Then what are ye lookin at? Get lost!~   */
		IF ~~ THEN
		EXIT
	END
END

// HAEGAN

ADD_TRANS_TRIGGER HAEGAN 0
~
	!IsValidForPartyDialogue("LCCORWIN")
~

EXTEND_BOTTOM HAEGAN 0
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	EXTERN LCCORWIJ LCA_HAEGAN_0_5
END

ADD_TRANS_TRIGGER HAEGAN 5
~
	!IsValidForPartyDialogue("LCCORWIN")
~

EXTEND_BOTTOM HAEGAN 5
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	EXTERN LCCORWIJ LCA_HAEGAN_0_5
END

// DHARLOT2

ADD_TRANS_TRIGGER DHARLOT2 0
~
	!IsValidForPartyDialogue("LCCORWIN")
~

EXTEND_BOTTOM DHARLOT2 0
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN LCCORWIJ LCA_DHARLOT2A

	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN LCCORWIJ LCA_DHARLOT2B
END

// FFCUST04

APPEND FFCUST04
	IF WEIGHT #4 ~  
		Global("IKFFCustomer4Corwin","GLOBAL",0)
		IsValidForPartyDialogue("LCCORWIN")
		RandomNum(2,1)
	~ THEN BEGIN 8 // from:
		SAY @3 /* ~Wow... a beauty like you, in a place like this? Are ye lookin for someone? Perhaps a nice, strong man to keep you warm at night, eh?~  */
		IF ~
			Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobal("IKFFCustomer4Corwin","GLOBAL",1)
		~ 
		EXTERN ~LCCORWIJ~ LCA_FFCUST04A
		
		IF ~
			!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobal("IKFFCustomer4Corwin","GLOBAL",1)
		~ 
		EXTERN ~LCCORWIJ~ LCA_FFCUST04B
	END
END

// DALESON.D

ADD_TRANS_TRIGGER DALESON 9
~
	!IsValidForPartyDialogue("LCCORWIN")
~
DO 3

ADD_TRANS_TRIGGER DALESON 10
~
	!IsValidForPartyDialogue("LCCORWIN")
~
DO 3

ADD_TRANS_TRIGGER DALESON 11
~
	!IsValidForPartyDialogue("LCCORWIN")
~
DO 3

EXTEND_BOTTOM DALESON 9
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN REPLY @0 /* ~I've all I need from you. How about you start running, and we see how far you get?~ */
	UNSOLVED_JOURNAL @1 /* ~The de'Arnise keep has been invaded

Daleson told me that there were about thirty trolls within the keep, and one very large one that seemed to be in charge. He also mentioned the yuan-ti that seem to be here as well, though he did not know their numbers.~ */
	EXTERN LCCORWIJ LCA_Daleson
END

EXTEND_BOTTOM DALESON 10
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN REPLY @0 /* ~I've all I need from you. How about you start running, and we see how far you get?~ */
	UNSOLVED_JOURNAL @2 /* ~The de'Arnise keep has been invaded

Daleson mentioned that Lord de'Arnise may still be alive, possibly in a dungeon that the man had boarded up long ago. Apparently he was caught trying to collect the pieces to a flail, the heads of which he kept apart throughout the keep, although Daleson didn't know why.~ */
	EXTERN LCCORWIJ LCA_Daleson
END

EXTEND_BOTTOM DALESON 11
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN REPLY @0 /* ~I've all I need from you. How about you start running, and we see how far you get?~ */
	EXTERN LCCORWIJ LCA_Daleson
END

CHAIN 
	IF ~~ THEN GORODR1 LCA_OdrenJudgeSOA
		@23 /* ~(Odren and his companions look at your party with hope in their eyes.)~ */
		
		== LCCORWIJ
		IF ~ 
			IsValidForPartyDialogue("LCCORWIN")
		~
		@24 /* ~They deserve to die. Not just for their treachery, but also for their cowardice. There's been so much death already, though... If you decide to spare them, I will understand.~ */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== MINSCJ
		IF ~
			IsValidForPartyDialogue("MINSC")
		~
		@29 /* ~(Minsc is engaged in an animated discussion with Boo about the circumstances of Odren's betrayal. You decide to treat this as a vote for life, not just because you don't have the time for this nonsense, but because Minsc is completely insane. It would be wrong, after all, to have a person's life be decided by an abject fool.)~ */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== KORGANJ
		IF ~
			IsValidForPartyDialogue("KORGAN")
		~
		@25 /* ~Death, I say. Me axe be waitin' to taste their squirrely innards.~ */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== AERIEJ
		IF ~
			IsValidForPartyDialogue("Aerie")
		~
		@30 /* ~I ... I know what they did was wrong... maybe they can learn from this and do some good? They can at least tell o-others not to judge you just because you are a Bhaalspawn. I think we should let them live.~ */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== JAHEIRAJ
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		@26 /* ~A great evil has been purged from this world. To restore balance, these warriors must be purged as well.~ */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== IMOEN2J
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		@32 /* ~We've experienced enough bloodshed for one lifetime. Let them go, <CHARNAME>.~*/
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("Valygar")
		~
		@27 /* ~These treacherous dogs deserve death. They've shown me nothing to indicate otherwise.~ */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== HAERDAJ
		IF ~
			IsValidForPartyDialogue("HaerDalis")
		~
		@34 /* ~Life, I say. Think of the songs the bards will sing! <CHARNAME>, the mighty! <CHARNAME>, the merciful!~   */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== DORNJ
		IF ~
			IsValidForPartyDialogue("Dorn")
		~
		@28 /* ~Few things please me more than to shed the blood of sanctimonious hypocrites. Death to them all!~ */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", 1)
		~
			
		== ANOMENJ
		IF ~
			IsValidForPartyDialogue("Anomen")
		~
		@35 /* ~They have betrayed not only us, but their god, and everything they believed in. Let us end their misery and put them to the sword.~ */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== MAZZYJ
		IF ~
			IsValidForPartyDialogue("Mazzy")
		~
		@36 /* ~We must choose life. Yes, they've wronged us, but what's done is done. What will killing these priests accomplish?~  */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== VICONIJ
		IF ~
			IsValidForPartyDialogue("Viconia")
		~
		@38 /* ~Helmites hunt my kind for sport on the surface. I welcome the opportunity to help even the score.~  */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== NALIAJ
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		@37 /* ~We must choose life. Yes, they've wronged us, but what's done is done. What will killing these priests accomplish?~  */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== CERNDJ
		IF ~
			IsValidForPartyDialogue("CERND")
		~
		@40 /* ~Their foolishness could have easily led to the world being utterly ravaged at the hands of Demogorgon. As much as it pains me to say it, death is the only fitting punishment for these scoundrels.~  */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== KELDORJ
		IF ~
			IsValidForPartyDialogue("Keldorn")
		~
		@39 /* ~Life, I say. My hope is for these priests to one day redeem themselves in the eyes of Helm, and they cannot do that if they are dead.~  */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== EDWINJ
		IF ~
			IsValidForPartyDialogue("Edwin")
		~
		@31 /* ~They must be punished! (Yes, severely!) Die, die, die, die, DIE!~ */
		DO ~
			IncrementGlobal("LCA_OdrenShouldDie", "GLOBAL", 1)
		~
END
++@41 GOTO LCA_OdrenDecision 

CHAIN
	IF ~~ THEN VALYGARJ LCA_AskDiviner
		@108 /* ~Yes. If I had children, would my family's curse be passed to them?~ */
		
		== LCDIVINE
		@105 /* ~You are not cursed. If you are referring to your blood's affinity for the magical arts, then yes, your children will possess the gift. That gift, that talent, can be nurtured or stifled. Support it and watch it blossom, or repress it and watch it wither and die.~ */
		
		== VALYGARJ
		@106 /* ~So, what you are saying is that it's my choice.~*/
		
		== LCDIVINE
		@107 /* ~Yes.~*/
END LCDIVINE LCA_AlreadyAsked

CHAIN
	IF ~~ THEN LCCORWIJ LCA_AskDiviner
		@109 /* ~Yes. Will my daugher understand why I need to be away from home so much?~ */
		
		== LCDIVINE
		@110 /* ~Your daughter already understands the reasons for your sacrifice. She is wiser than you give her credit for. She is as proud of you as you are of her.~ */
END LCDIVINE LCA_AlreadyAsked

CHAIN
	IF ~~ THEN AERIEJ LCA_AskDiviner
		@111 /* ~Yes - Is my m-mother still alive?~ */
		
		== LCDIVINE
		@112 /* ~Yes, and you will see her again.~ */
		
		== AERIEJ
		@113 /* ~Oh, I hope so... thank you.~ */
END LCDIVINE LCA_AlreadyAsked

CHAIN
	IF ~~ THEN NALIAJ LCA_AskDiviner
		@116 /* ~To this fraudster? No. How many poor people has this soothsayer swindled with his lies?~ */
		DO ~
			SetGlobal("LCA_NaliaAskedDiviner", "GLOBAL", 1)
		~
		== LCDIVINE
		@117 /* ~The only fraudster here is you, young lady.~ */
		
		== NALIAJ
		@118 /* ~I beg your pardon?~ */
		
		== LCDIVINE
		@119 /* ~Continue with your virtue signaling if it makes you feel better. Just know that it does nothing to improve the situation of those you claim to care about.~ */
END LCDIVINE LCA_AlreadyAsked



