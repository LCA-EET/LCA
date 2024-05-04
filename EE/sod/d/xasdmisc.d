//{ BDCAELAR
	ADD_TRANS_ACTION BDCAELAR
	BEGIN 87 END
	BEGIN 0 END
	~
		SetGlobal("XA_LC_CaelarAliveInAvernus","GLOBAL",1)
	~
//}

//{ BDROHMA
	ADD_TRANS_ACTION BDROHMA
	BEGIN 0 END
	BEGIN 0 1 2 3 END
	~
		SetGlobal("XA_LC_MetRohma", "GLOBAL", 1)
	~
//}

//{ BDSCHAEL
	ADD_TRANS_ACTION BDSCHAEL
	BEGIN 184 186 187 END
	BEGIN 0 END
	~
		SetGlobal("XA_LC_StoppedNobles", "GLOBAL", 1)
	~
//}
	
//{ BDBELT
	ADD_TRANS_ACTION BDBELT
	BEGIN 0 1 END
	BEGIN 0 END
	~
		SetGlobal("XA_LC_Trial","GLOBAL",1)
	~
//}

//{ BDIMOEN
ADD_STATE_TRIGGER BDIMOEN 129
~
	Global("bd_player_exiled","global",0)
~
	
EXTEND_BOTTOM BDIMOEN 89 /* OK */
	IF ~
		Global("bd_player_exiled","global",1)
		GlobalGT("XA_LC_CorwinContinue", "GLOBAL", 0)
	~ GOTO XA_CorwinLetter
END

APPEND BDIMOEN
	IF ~
		Global("XA_LC_SoDLetterDebug", "GLOBAL", 1)
	~ THEN BEGIN XA_LC_LetterDebug
		SAY @47 /* ~Letter Debug.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_SoDLetterDebug", "GLOBAL", 0)
		~
		GOTO XA_CorwinLetter 
	END
	IF ~  
		AreaCheck("bd6100")
		GlobalLT("bd_plot","global",675)
		Global("bd_player_exiled","global",1)
	~ THEN BEGIN XA_EntarTrail // from:
		SAY @0 /* ~I'm pretty sure that Entar's men aren't on our trail. Can we take a break, just for a minute?~ */
		
		COPY_TRANS BDIMOEN 129
	END

	IF ~~ THEN BEGIN XA_CorwinLetter
		SAY @1 /* ~Oh! Before I forget — Captain Corwin came to see me. She asked that I give you this letter.~ */
		
		IF ~
			Global("XA_LC_CorwinContinue", "GLOBAL", 2)
		~ THEN 
		DO ~
			GiveItemCreate("XALTRSCH", LastTalkedToBy(Myself),0,0,0)
			GiveItemCreate("XAAMULET", LastTalkedToBy(Myself),0,0,0)
			SetGlobal("XA_LC_GaveCorwinLetter", "GLOBAL", 2)
		~
		GOTO XA_GiveLetter
		
		IF ~
			Global("XA_LC_CorwinContinue", "GLOBAL", 1)
		~ THEN 
		DO ~
			GiveItemCreate("XALTRCOR", LastTalkedToBy(Myself),0,0,0)
			SetGlobal("XA_LC_GaveCorwinLetter", "GLOBAL", 1)
		~
		GOTO XA_GiveLetter
	END
	
	IF ~~ THEN BEGIN XA_GiveLetter
		SAY @2 /* She said that she's sorry she couldn't see you, but that you'd understand once you've read the letter. */
		
		IF ~
			Global("XA_LC_CorwinContinue", "GLOBAL", 2)
		~ THEN REPLY @3 /* ~Thank you, Imoen. (Read the letter now).~ */
		DO ~
			SetGlobal("XA_LC_ReadCorwinLetter", "GLOBAL", 1)
			ActionOverride(Player1, CreateCreature("XASCHLTR", [-1.-1], S))
		~
		EXIT
		
		IF ~
			Global("XA_LC_CorwinContinue", "GLOBAL", 1)
		~ THEN REPLY @3 /* ~Thank you, Imoen. (Read the letter now).~ */
		DO ~
			SetGlobal("XA_LC_ReadCorwinLetter", "GLOBAL", 1)
			ActionOverride(Player1, CreateCreature("XACORLTR", [-1.-1], S))
		~
		EXIT
		
		IF ~  
			Global("bd_player_exiled","global",1)
		~ THEN REPLY @4 /* ~Imoen! How did you know where to find me?~ */ 
		DO ~
			SetGlobal("bd_plot","global",665)
		~ 
		GOTO 91
		
		IF ~~ THEN REPLY @5 /* ~You should never have doubted I would find a way to freedom. I never did.~ */ 
		DO ~
			SetGlobal("bd_plot","global",665)
		~ GOTO 92
  
		IF ~  
			Global("bd_player_exiled","global",1)
		~ THEN REPLY @6 /* ~I thought I was leaving the city in secret.~ */ 
		DO ~
			SetGlobal("bd_plot","global",665)
		~ GOTO 91
	END
END
//}


//{ BDCORWIJ
ADD_TRANS_ACTION BDCORWIJ
BEGIN 186 END
BEGIN 0 1 2 3 END
~
	SetGlobal("XA_LC_SacrificeCorwin","GLOBAL",1)
~

ADD_TRANS_ACTION BDCORWIJ
BEGIN 280 END
BEGIN 0 END
~
	SetGlobal("XA_LC_HappyEnding","GLOBAL",1)
~

ADD_TRANS_ACTION BDCORWIJ
BEGIN 319 320 END
BEGIN 0 END
~
	SetGlobal("XA_LC_GaveEarrings", "GLOBAL", 1)
	AddJournalEntry(@45, INFO)
~

ADD_TRANS_ACTION BDCORWIJ 
BEGIN 235 END
BEGIN 0 1 3 END
~
	SetGlobal("XA_LC_ToldTruthBhaal", "GLOBAL", 1)
~

ADD_TRANS_ACTION BDCORWIJ  
BEGIN 245 END
BEGIN 0 1 END
~
	SetGlobal("XA_LC_ToldTruthBhaal", "GLOBAL", 1)
~

ALTER_TRANS BDCORWIJ
BEGIN 297 END
BEGIN 0 1 END
BEGIN
	"EPILOGUE"
	~GOTO XA_Kiss~
END
	
EXTEND_BOTTOM BDCORWIJ 318  /* OK */
	IF ~~ THEN REPLY @7 /* ~Corwin, these are beautiful. This Neoma... you must be very special to her.~ */
	GOTO XA_Neoma
END

APPEND BDCORWIJ
	IF ~
		Global("XA_LC_ProficiencyTalk", "GLOBAL", 4)
	~ THEN BEGIN XA_ProficiencyTalk6
		SAY @8 /*~Not bad... You're a quick learner, <CHARNAME>.~ [XA100129]*/
		
		IF ~~ THEN REPLY @9 /* ~Well, it helps that you're an excellent instructor. The Fist is fortunate to have you.~ */
		DO ~
			SetGlobal("XA_LC_ProficiencyTalk", "GLOBAL", 5)
		~
		GOTO XA_ProficiencyTalk7
		
		IF ~~ THEN REPLY @10 /* ~I appreciate the help, Captain.~ */
		DO ~
			SetGlobal("XA_LC_ProficiencyTalk", "GLOBAL", 5)
		~
		GOTO XA_ProficiencyTalk7
	END

	IF ~~ THEN BEGIN XA_ProficiencyTalk7
		SAY @11  /* ~Come on. Time to head back to camp.~ */
		
		IF ~~ THEN REPLY @12  /* ~Right. Let's go.~ */
		DO ~
			ChangeStat(Player1, XP, 5000, ADD)
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXIT
		
		IF ~
			TimeOfDay(DAY)
		~ THEN REPLY @13  /* ~It's a beautiful day... must we head back so soon?~ */
		GOTO XA_ProficiencyTalk8
		
		IF ~
			!TimeOfDay(DAY)
		~ THEN REPLY @15  /* ~It's a beautiful evening... must we head back so soon?~*/
		GOTO XA_ProficiencyTalk8
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalk8
		SAY @14 /*~It is... but as much as I enjoy your company, duty calls. Time to go.~*/
		
		IF ~~ THEN
		DO ~
			ChangeStat(Player1, XP, 5000, ADD)
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXIT
	END

	IF ~
		Global("XA_LC_ProficiencyTalk", "GLOBAL", 3)
	~ THEN BEGIN XA_ProficiencyTalk4
		SAY @16 /*~(She takes hold of your hand and traces your palm line with her finger.)~*/
		
		= @17 /*~See this crease in your palm? You need to grip the bow so that all of the pressure is on the thumb side this line. Also, be sure that your palm is facing the target. Never grip the bow with your hand outstretched, otherwise your wrist will move when you pull the string.~*/
		
		= @18  /* ~Now, to grip the bow properly, open the palm of your hand and stretch your arm out in front of you. The thumb should be stretched away from the index, parallel to the ground, to form an L shape.~*/ 
		
		IF ~~ THEN REPLY @19 /* ~Like this?~ */
		GOTO XA_ProficiencyTalk4A
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalk4A
		SAY @20  /* ~Yes. Now, rotate your hand 45 degrees so that the L turns into a V shape. Yes, just like that. Take hold of the bow. Remember, keep all of the pressure between your thumb pad and your lifeline. Good.~  */
		
		= @21 /*~Lastly, your bow and draw arm should be level. If you need to adjust your aim upward or downward, do so by pivoting about your waist. Same thing if you wanted to aim a little to the left, or to the right. Turn your hips while keeping your arms steady. Just like that.~*/
		
		IF ~~ THEN REPLY @22 /*~I understand.~*/
		GOTO XA_ProficiencyTalk5
	END

	IF ~~ THEN BEGIN XA_ProficiencyTalk5
		SAY @23 /*~Good. Now try again.~*/
		
		IF ~~ THEN DO ~
			SetGlobal("XA_LC_ProficiencyTalk", "GLOBAL", 4)
			StartCutSceneMode()
			StartCutScene("XALBPRO2")
		~
		EXIT
	END

	IF ~
		Global("XA_LC_A_ProficiencyTalk", "GLOBAL", 1)
	~ THEN BEGIN XA_ProficiencyTalk
		SAY @24 /* ~<CHARNAME>. A word?~ */
		
		IF ~~ THEN REPLY @25 /*~Of course. What can I do for you, Captain?~*/
		DO ~
			SetGlobal("XA_LC_A_ProficiencyTalk", "GLOBAL", 2)
		~
		GOTO XA_ProficiencyTalk2
		
		IF ~~ THEN REPLY @26 /*~What is it?~*/
		DO ~
			SetGlobal("XA_LC_A_ProficiencyTalk", "GLOBAL", 2)
		~
		GOTO XA_ProficiencyTalk2
		
		IF ~~ THEN REPLY @27 /*~Another one? Can't you see that I'm busy?~*/
		DO ~
			SetGlobal("XA_LC_A_ProficiencyTalk", "GLOBAL", 2)
		~
		GOTO XA_ProficiencyTalkEnd
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalk2
		SAY @28 /*~I noticed you have a bit of skill with the longbow. How long have you been practicing?~*/
		
		IF ~~ THEN REPLY @29 /*~Not too long, why do you ask?~ */
		GOTO XA_ProficiencyTalk3
		
		IF ~~ THEN REPLY @30 /*~I've dabbled in archery since I was a child, but I didn't treat it as anything other than a hobby... that is, until my foster father was killed.~*/
		GOTO XA_ProficiencyTalk3
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalk3
		SAY @31 /*~I figured as much. Your draw and footwork look good, but your bow grip could use a little work. Mind if I give you a couple of pointers?~*/
		
		IF ~~ THEN REPLY @32 /*~Not at all.~*/
		GOTO XA_ProficiencyTalkCSStart
		
		IF ~~ THEN REPLY @33 /*~A free lesson from one as talented as yourself? How could I refuse?~*/
		GOTO XA_ProficiencyTalkCSStart
		
		IF ~
			Global("XA_LC_VaiBoost","GLOBAL",0)
		~ THEN REPLY @34 /*~Somehow, I don't think you'd do this for just anyone. Why me?~*/
		GOTO XA_ProficiencyTalkWhy
		
		IF ~
			GlobalGT("XA_LC_VaiBoost","GLOBAL",0)
		~ THEN REPLY @34 /*~Somehow, I don't think you'd do this for just anyone. Why me?~*/
		GOTO XA_ProficiencyTalkWhy_Vai
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalkWhy
		SAY @35 /*~Consider it a thank you for the care and concern you showed back in the Gate. The refugee crisis has been a strain on everyone, and every bit of help makes a difference.~*/
		
		IF ~~ THEN GOTO XA_ProficiencyTalkWhy_Besides
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalkWhy_Vai
		SAY @48 /*~Consider it a thank you for the care and concern you showed back in the Gate. The refugee crisis has been a strain on everyone, and every bit of help makes a difference. Plus, some months ago you helped Jessa — erm, one of my officers — with a bandit problem down in Beregost.~*/
		
		IF ~~ THEN REPLY @49 /* ~Ah, Officer Vai, yes? She said she'd put in a good word for me.~ */
		GOTO XA_ProficiencyTalkWhy_Vai2
		
		IF ~~ THEN REPLY @51 /* ~You needed bandits killed, and I needed money. I'd call that a win-win.~ */
		GOTO XA_ProficiencyTalkWhy_Vai2
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalkWhy_Vai2
		SAY @50 /*~That's right... your actions made a big difference. The coalition will need more of that kind of skill and initiative if we're to succeed against Caelar.~*/
		
		IF ~~ THEN GOTO XA_ProficiencyTalkWhy_Besides
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalkWhy_Besides
		SAY @36  /*~Besides, anything that can increase our chances of success is a worthwhile investment.~ [XA100130] */
		
		IF ~~ THEN REPLY @37 /*~Agreed. Let's get started.~*/
		GOTO XA_ProficiencyTalkCSStart
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalkCSStart
		SAY @38 /*~Excellent. I spotted a clearing a few hundred meters south of the camp. It's perfect for what I had in mind. Let's go.~*/
		
		IF ~~ THEN
		DO ~
			StartCutSceneMode()
			StartCutScene("XALBPROF")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_ProficiencyTalkEnd
		SAY @39 /*~Fair enough. I'll leave you to it, then.~*/
		
		IF ~~ THEN
		EXIT
	END

	IF ~~ THEN XA_Neoma
		SAY @40 /*  ~We're good friends. Sometimes, a little more than that...~ */
	
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @41 /* ~I see. I'm sure Voghiln will appreciate the thought.~*/ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @41 /* ~I'm certain Voghiln will appreciate the thought.~ */  
		EXTERN ~BDVOGHIJ~ 170
  
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @42 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */  
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @42/* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */  
		EXTERN ~BDVOGHIJ~ 170
		
		IF ~~ THEN REPLY @43 /* ~Lucky her.~ */ 
		GOTO XA_Neoma2
	END
	
	IF ~~ THEN XA_Neoma2
		SAY @44 /* ~Sorry? I didn't catch that.~ */
		
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @46 /* ~It was nothing. I'm sure Voghiln will appreciate your kindness.~*/ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @46 /* ~It was nothing. I'm sure Voghiln will appreciate your kindness.~ */ 
		EXTERN ~BDVOGHIJ~ 170
  
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @42 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @42 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ 
		EXTERN ~BDVOGHIJ~ 170
	END
END
//}
