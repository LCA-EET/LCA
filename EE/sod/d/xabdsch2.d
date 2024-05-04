APPEND BDSCHAE2
	IF ~~ THEN BEGIN XA_18_0
		SAY @0 /* ~You're right... I haven't given up, love, and I won't. Imoen and I will continue to advocate for your innocence. There are others, too, who feel that execution is not the right answer — not after all you've done for the city.~ */
		
		IF ~~ THEN 
		GOTO XA_Advocate
	END
	
	IF ~~ THEN BEGIN XA_18_1
		SAY @14 /* ~I do love you, and I want you to know that Imoen and I won't stop advocating your innocence. There are others, too, who feel that execution is not the right answer — not after all you've done for the city.~ */
		
		IF ~~ THEN 
		GOTO XA_Advocate
	END
	
	IF ~~ THEN BEGIN XA_18_2
		SAY @15 /* ~I can't. Not yet.~*/
		
		IF ~~ THEN REPLY @16 /* ~What do you mean?~ */
		GOTO XA_ImoenAndCorwin
	END
	
	IF ~~ THEN BEGIN XA_ImoenAndCorwin
		SAY @24 /* ~<CHARNAME>, listen to me. I need you to know that Imoen and I haven't stopped advocating your innocence. There are others, too, who feel that execution is not the right answer — not after all you've done for the city.~ */
		
		IF ~~ THEN 
		GOTO XA_Advocate
	END
	
	IF ~~ THEN BEGIN XA_Advocate
		SAY @1 /* ~It's a long shot but we... we may able to convince certain council members that exile is an option.~ */
		
		IF ~~ THEN REPLY @2 /* ~Exile from the city... Schael, there must be another way.~ */
		GOTO XA_Gallows
		
		IF ~~ THEN REPLY @3 /* ~Which council members? Certainly not Entar.~ */
		GOTO XA_CouncilMembers
		
		IF ~
			Global("bd_corwin_romanceactive","global",2)
		~ THEN REPLY @4 /* ~You don't sound very confident.~ */
		GOTO XA_LongShot_Romance
		
		IF ~
			!Global("bd_corwin_romanceactive","global",2)
		~ THEN REPLY @4 /* ~You don't sound very confident.~ */
		GOTO XA_LongShot_NonRomance
	END
	
	IF ~~ THEN BEGIN XA_LongShot_Romance
		SAY @5 /* ~Like I said, it's a long shot... but I have to try. I have to.~ */
		
		IF ~~ THEN REPLY @6 /* ~I appreciate your help, Schael... You mentioned certain council members... who are you pleading with? Certainly not Entar.~ */
		GOTO XA_CouncilMembers
		
		IF ~~ THEN REPLY @7 /* ~But exile from the city? Schael, there has to be another way.~*/
		GOTO XA_Gallows
	END
	
	IF ~~ THEN BEGIN XA_LongShot_NonRomance
		SAY @18 /* ~Like I said, it's a long shot. I won't stop trying, though. You wouldn't if our roles were reversed.~ */
		
		IF ~~ THEN REPLY @19 /* ~I appreciate your help, Corwin... You mentioned certain council members... who are you pleading with? Certainly not Entar.~ */
		GOTO XA_CouncilMembers
		
		IF ~~ THEN REPLY @20 /* ~But exile from the city? Corwin, there has to be another way.~*/
		GOTO XA_Gallows
	END
	
	IF ~~ THEN BEGIN XA_CouncilMembers
		SAY @13 /* ~Duke Jannath, and especially Duke Belt, have been receptive. Duke Eltan is on the fence. He acknowledges the good you've done, but he's against the idea of giving you or anyone else special treatment... and exile, as bad as it is, is normally considered a severe enough punishment for murder.~*/
		
		IF ~
			Global("bd_corwin_romanceactive","global",2)
		~ THEN REPLY @7 /* ~But exile from the city? Schael, there has to be another way.~*/
		GOTO XA_Gallows
		
		IF ~
			!Global("bd_corwin_romanceactive","global",2)
		~ THEN REPLY @20 /* ~But exile from the city? Corwin, there has to be another way.~*/
		GOTO XA_Gallows
	END
	
	IF ~~ THEN BEGIN XA_Gallows
		SAY @8 /* ~It's better than the gallows, or worse, whatever Entar has planned for you. Once you're safely away from the city, you'll have the time you need to find some way to prove your innocence.~  */
		
		IF ~
			Global("bd_corwin_romanceactive","global",2)
		~ THEN 
		GOTO XA_Together
		
		IF ~
			!Global("bd_corwin_romanceactive","global",2)
		~ THEN REPLY @21 /* ~So long as I have friends like you, I have hope.~*/
		GOTO XA_Farewell_NonRomance
		
		IF ~
			!Global("bd_corwin_romanceactive","global",2)
		~ THEN REPLY @22 /* ~You're right... I appreciate all that you and Imoen have done. Thank you.~*/
		GOTO XA_Farewell_NonRomance
	END
	
	IF ~~ THEN BEGIN XA_Together
		SAY @9 /* ~Maybe then, dear, we can finally be together.~ */
		
		IF ~~ THEN REPLY @10 /* ~We will be, my love. I swear it.~*/
		GOTO XA_Farewell //OK
		
		IF ~~ THEN REPLY @11 /* ~I hope so, Schael. Gods willing, I hope so.~ */
		GOTO XA_Farewell //OK
	END
	
	IF ~~ THEN BEGIN XA_Farewell
		SAY @12 /* ~I need to go now, <CHARNAME>. I know this is as hard for you as it is for me... Farewell.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_Journal_CellVisit", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinContinue","GLOBAL",2) /* continue romance into BG2 */
			SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 2) /* continue romance into BG2 */
			EscapeArea()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_Farewell_NonRomance
		SAY @23 /* ~I need to go now, <CHARNAME>... Hang in there, my friend.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_Journal_CellVisit", "GLOBAL", 2)
			SetGlobal("XA_LC_CorwinContinue","GLOBAL",1) /* continue friendship into BG2 */
			EscapeArea()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_Farewell_Monster
		SAY @27 /* ~Gods help me. How could I have missed this? How did I never see you for the monster you are?~ [BD54619]  */
		= @28 /* ~Farewell, <CHARNAME>. I hope you're able to find some peace before the end.~*/
		
		IF ~~ THEN DO 
		~
			SetGlobal("bd_corwin_romanceactive","global",3)
			EscapeArea()
		~ 
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_ToldTruth
		SAY @30 /* ~It has to stop. It HAS to. And that won't happen until you answer for Skie. Now get on your knees, hands behind your head. Do it.~ [BD39669] */
		
		COPY_TRANS BDSCHAE2 54
		
		IF ~~ THEN REPLY @31 /* ~You're making a terrible mistake! The Hooded Man is the killer, not me. Help me find him and we can restore Skie, together.~*/
		EXTERN BDBENCE XA_HoodedMan
	END
	
	IF ~~ THEN BEGIN XA_FinalWarning
		SAY @32 /* ~Enough! Hands behind your head and get down on your knees. This is your final warning.~*/
		
		IF ~
			Global("bd_corwin_romanceactive","global",2)
		~ THEN REPLY @38/* ~Schael, if you shoot me, you'll become a murderer yourself!~*/
		GOTO XA_Murderer
		
		IF ~
			!Global("bd_corwin_romanceactive","global",2)
		~ THEN REPLY @33/* ~Corwin, if you shoot me, you'll become a murderer yourself!~*/
		GOTO XA_Murderer
		
		COPY_TRANS BDSCHAE2 49
	END
	
	IF ~~ THEN BEGIN XA_Murderer
		SAY @34 /* ~(For a brief moment, her expression changes to one of shock. You know her well enough to tell that she's unnerved.)~ */
		
		IF ~~ THEN REPLY @35 /* ~We've trusted each other with our lives in the past. I need you to trust me now. If I can recover the dagger, Skie can be restored — but I can't do that if I'm dead!~ */
		GOTO XA_Tremble
		
		IF ~~ THEN REPLY @36 /* ~Stop me if you must, but in doing so you'll allow Skie's murderer to get away with his crime.~  */
		GOTO XA_Tremble
		
		IF ~
			Global("bd_corwin_romanceactive","global",2)
		~ 
		THEN REPLY @37 /* ~My love, I'll prove my innocence to you, and to the city — I swear it. I just need you to give me a chance.~ */
		GOTO XA_Tremble
	END
	
	IF ~~ THEN BEGIN XA_Tremble
		SAY @39 /* ~I...~ */
		
		IF ~
			Global("bd_corwin_romanceactive","global",2)
		~ THEN GOTO XA_Tremble_Romance
		
		IF ~
			!Global("bd_corwin_romanceactive","global",2)
		~ THEN GOTO XA_Tremble_NonRomance

	END
	
	IF ~~ THEN BEGIN XA_Tremble_Romance
		SAY @40 /*~(Her hands begin to tremble, and you think you see tears welling in her eyes.)~*/
		
		IF ~~ THEN REPLY @41 /* ~Or, are you fine with living the rest of your life knowing that you killed an innocent <PRO_MANWOMAN>? If you are, then you're no better than Sarevok!~ */
		GOTO XA_LowerWeapon_Romance
		
		IF ~~ THEN REPLY @42 /*~Please, Schael!~ */
		GOTO XA_LowerWeapon_Romance
	END
	
	IF ~~ THEN BEGIN XA_Tremble_NonRomance
		SAY @46 /*~(Her hands begin to tremble.)~*/
		
		IF ~~ THEN REPLY @41 /* ~Or, are you fine with living the rest of your life knowing that you killed an innocent <PRO_MANWOMAN>? If you are, then you're no better than Sarevok!~ */
		GOTO XA_LowerWeapon_NonRomance
		
		IF ~~ THEN REPLY @44 /*~Please, Corwin!~ */
		GOTO XA_LowerWeapon_NonRomance
	END
	
	
	IF ~~ THEN BEGIN XA_LowerWeapon_Romance
		SAY @43 /* ~(She lowers her bow, and looks down at the ground. You hear what sounds like ... sobbing?)~ */
		
		IF ~~ THEN 
		EXTERN BDBENCE XA_WhatIsSheDoing
	END
	
	IF ~~ THEN BEGIN XA_LowerWeapon_NonRomance
		SAY @45 /* ~(She lowers her bow, and looks down to the ground.)~ */
		
		IF ~~ THEN 
		EXTERN BDBENCE XA_WhatIsSheDoing
	END
	
	IF ~~ THEN BEGIN XA_LostNerve
		SAY @47 /*  ~No... I can't...~*/
		
		IF ~
			Gender(Player1, MALE)
		~ THEN 
		EXTERN BDBENCE XA_KillThem_Male
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN 
		EXTERN BDBENCE XA_KillThem_Female
	END	
	
	IF ~~ THEN BEGIN XA_Run
		SAY @48 /*~No! Gods damn it Duncan!~ */
		
		= @49 /*~Run, <CHARNAME>! The cavern beyond the falls will get you out of the city. Jump!~ [BD65168]*/
		
		IF ~
			Global("bd_corwin_romanceactive","global",2)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_Journal_Escape", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinContinue", "GLOBAL", 2) // continue romance
			SetGlobal("bd_MDD1725_corwin","global",1)
			ChangeSpecifics("bdschae2",NEUTRALS)
		~
		EXIT
		
		IF ~
			!Global("bd_corwin_romanceactive","global",2)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_Journal_Escape", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinContinue", "GLOBAL", 1) // continue friendship
			SetGlobal("bd_MDD1725_corwin","global",1)
			ChangeSpecifics("bdschae2",NEUTRALS)
		~
		EXIT
	END
END

ALTER_TRANS BDSCHAE2
	BEGIN 0 END
	BEGIN 1 END
	BEGIN
		"EPILOGUE"
		~GOTO XA_18_2~
	END
	
ALTER_TRANS BDSCHAE2
	BEGIN 0 END
	BEGIN 2 END
	BEGIN
		"EPILOGUE"
		~GOTO XA_ImoenAndCorwin~
	END

ALTER_TRANS BDSCHAE2
	BEGIN 1 END // State 1
	BEGIN 3 END // Transition 3
	BEGIN
		"EPILOGUE"
		~GOTO XA_ImoenAndCorwin~
	END
	
ALTER_TRANS BDSCHAE2
	BEGIN 1 END // State 1
	BEGIN 4 END // Transition 4
	BEGIN
		"EPILOGUE"
		~GOTO XA_Farewell_Monster~
	END

ALTER_TRANS BDSCHAE2
	BEGIN 18 END
	BEGIN 0 END
	BEGIN
		"EPILOGUE"
		~GOTO XA_18_0~
	END
	
ALTER_TRANS BDSCHAE2
	BEGIN 18 END
	BEGIN 1 END
	BEGIN
		"EPILOGUE"
		~GOTO XA_18_1~
	END
	
ALTER_TRANS BDSCHAE2
	BEGIN 18 END
	BEGIN 2 END
	BEGIN
		"EPILOGUE"
		~GOTO XA_18_2~
	END
	
ADD_TRANS_TRIGGER BDSCHAE2 0
~
	Global("bd_corwin_romanceactive","global",2)
~
DO 2

ADD_TRANS_TRIGGER BDSCHAE2 13
~
	Global("bd_player_exiled","global",0)
~
DO 0

ADD_TRANS_TRIGGER BDSCHAE2 1
~
	Global("bd_corwin_romanceactive","global",2)
~
DO 1

EXTEND_TOP BDSCHAE2 1
	IF ~
		!Global("bd_corwin_romanceactive","global",2)
		Global("bd_player_exiled","global",1)
	~ THEN REPLY #54615 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~*/
	GOTO XA_18_2
END

EXTEND_BOTTOM BDSCHAE2 48
	IF ~
		Global("XA_LC_ToldTruthBhaal", "GLOBAL", 1)
		!Alignment(Player1,MASK_EVIL)
	~ THEN REPLY @29 /* ~Do you seriously think so little of me? That I'd stoop to killing in cold blood? I admitted to you that I was a child of Bhaal — I could've lied to you about my heritage, but I didn't. Sarevok would lie to you. I won't.~*/ 
	GOTO XA_ToldTruth
END

REPLACE_STATE_TRIGGER BDSCHAE2 0
~
	AreaCheck("bd0104")
	Global("bd_jail_visitors","bd0104",2)
	Global("bd_player_exiled","global",1)
~

REPLACE_STATE_TRIGGER BDSCHAE2 25
~
	AreaCheck("bd0104")
	Global("bd_jail_visitors","bd0104",2)
	Global("bd_player_exiled","global",0)
~

EXTEND_BOTTOM BDSCHAE2 13
	IF ~
		Global("bd_player_exiled","global",1)
	~ THEN REPLY @17 /*  ~We can still have that, and more. Don't give up on us Schael. I haven't, and I never will.~ */
	GOTO XA_18_0
	
	IF ~
		Global("bd_player_exiled","global",1)
	~ THEN REPLY @25 /*  ~So long as you love me, I have hope.~ */
	GOTO XA_18_1
	
	IF ~
		Global("bd_player_exiled","global",1)
	~ THEN REPLY @26 /*  ~We can still be together... you need only release me from this cell.~*/
	GOTO XA_18_2 
END

