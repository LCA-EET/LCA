BEGIN ~XACORWIB~

//{ Dialog J-83 - Romance Conflict - CC OK

IF ~
	Global("XA_LC_RomanceConflictTalk", "GLOBAL", 1)
	OR(8)
		Global("AerieRomanceActive","GLOBAL",2)
		Global("ViconiaRomanceActive","GLOBAL",2)
		Global("DornRomanceActive","GLOBAL",2)
		Global("NeeraRomanceActive","GLOBAL",2)
		Global("AnomenRomanceActive","GLOBAL",2)
		Global("JaheiraRomanceActive","GLOBAL",2)
		Global("HexxatRomanceActive","GLOBAL",2)
		Global("RasaadRomanceActive","GLOBAL",2)
~ THEN BEGIN XA_RomanceConflictTalk
	SAY @929 /*  ~<CHARNAME>. I think we need to have a talk.~ */
	
	IF ~~ THEN REPLY @930  /* ~What's on your mind, love?~*/
	DO ~
		SetGlobal("XA_LC_RomanceConflictTalk", "GLOBAL", 2)
	~
	GOTO XA_RomanceConflict2
	
	IF ~~ THEN REPLY @931 /* ~Sure — what is it?~*/
	DO ~
		SetGlobal("XA_LC_RomanceConflictTalk", "GLOBAL", 2)
	~
	GOTO XA_RomanceConflict2
END

IF ~~ THEN BEGIN XA_RomanceConflict2
	SAY @932 /* ~You made it clear to me, I thought, that you wanted us to be together.~ */
	
	IF ~
		Global("AerieRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Aerie
	
	IF ~
		Global("ViconiaRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Viconia
	
	IF ~
		Global("DornRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Dorn
	
	IF ~
		Global("NeeraRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Neera
	
	IF ~
		Global("AnomenRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Anomen
	
	IF ~
		Global("JaheiraRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Jaheira
	
	IF ~
		Global("HexxatRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Hexxat
	
	IF ~
		Global("RasaadRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Rasaad
END

//{ Aerie
IF ~~ THEN BEGIN XA_RomanceConflict_Aerie
	SAY @933 /* ~Why, then, are you spending so much time with Aerie? Do you have feelings for her? She's a sweet girl, and you shouldn't lead her on.~ */
	
	IF ~~ THEN REPLY @936 /* ~She's just a friend. You're the woman I love Schael, not her. I'll make it clear to her, in case it wasn't already.~ */
	DO ~
		SetGlobal("AerieRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @937 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_F
END
//}

//{ Neera
IF ~~ THEN BEGIN XA_RomanceConflict_Neera
	SAY @934 /* ~Why, then, are you spending so much time with Neera? Do you have feelings for her? She's a sweet girl, and you shouldn't lead her on.~ */
	
	IF ~~ THEN REPLY @936 /* ~She's just a friend. You're the woman I love Schael, not her. I'll make it clear to her, in case it wasn't already.~ */
	DO ~
		SetGlobal("NeeraRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @937 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_F
END
//}

//{ Jaheira
IF ~~ THEN BEGIN XA_RomanceConflict_Jaheira
	SAY @935 /* ~Why, then, are you spending so much time with Jaheira? Do you have feelings for her? She's been through a lot with the loss of her husband, and you shouldn't lead her on.~ */
	
	IF ~~ THEN REPLY @936 /* ~She's just a friend. You're the woman I love Schael, not her. I'll make it clear to her, in case it wasn't already.~ */
	DO ~
		SetGlobal("JaheiraRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @937 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_F
END
//}

//{ Rasaad
IF ~~ THEN BEGIN XA_RomanceConflict_Rasaad
	SAY @941 /* ~Why, then, are you spending so much time with Rasaad? Do you have feelings for him? You shouldn't lead him on.~ */
	
	IF ~~ THEN REPLY @942 /* ~He's just a friend. You're the one I love Schael, not him. I'll make it clear to him, in case it wasn't already.~ */
	DO ~
		SetGlobal("RasaadRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @943 /* ~I do love him. I'm sorry, Schael. I thought you and I had something, but I realize now that I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_M
END
//}

//{ Anomen
IF ~~ THEN BEGIN XA_RomanceConflict_Anomen
	SAY @944 /* ~Why, then, are you spending so much time with Anomen? Do you have feelings for that insufferable braggart? You shouldn't lead him on.~ */
	
	IF ~~ THEN REPLY @942 /* ~He's just a friend. You're the one I love Schael, not him. I'll make it clear to him, in case it wasn't already.~ */
	DO ~
		SetGlobal("AnomenRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @943 /* ~I do love him. I'm sorry, Schael. I thought you and I had something, but I realize now that I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_M
END
//}

//{ Hexxat
IF ~~ THEN BEGIN XA_RomanceConflict_Hexxat
	SAY @945 /* ~Why, then, are you spending so much time with Hexxat? Do you have feelings for that monster?~ */
	
	IF ~~ THEN REPLY @949 /* ~You're the one I love Schael, not her. I'll make it clear to her, in case it wasn't already.~*/
	DO ~
		SetGlobal("HexxatRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @937 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_Bad
END
//}

//{ Dorn
IF ~~ THEN BEGIN XA_RomanceConflict_Dorn
	SAY @947 /* ~Why, then, is Dorn spending so much time with you? Do you have feelings for that filthy blackguard?~  */
	
	IF ~~ THEN REPLY @948 /* ~You're the one I love Schael, not him. I'll make it clear to him, in case it wasn't already.~ */
	DO ~
		SetGlobal("DornRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @943 /* ~I do love him. I'm sorry, Schael. I thought you and I had something, but I realize now that I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_Bad
END
//}

//{ Viconia
IF ~~ THEN BEGIN XA_RomanceConflict_Viconia
	SAY @950 /* ~Why, then, is Viconia spending so much time with you? Do you have feelings for that wretched drow?~  */
	
	IF ~~ THEN REPLY @949 /* ~You're the one I love Schael, not her. I'll make it clear to her, in case it wasn't already.~*/
	DO ~
		SetGlobal("ViconiaRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @937 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now that I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_Bad2
END
//}

IF ~~ THEN BEGIN XA_RomanceConflict_EndCR_Bad
	SAY @946 /* ~Unbelievable! Irenicus must've done a number on your senses. There's no other explanation for you choosing that beast over me. As soon as this mission is over, we're through.~  */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_LeaveAfterSoA", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_RomanceConflict_EndCR_Bad2
	SAY @951 /* ~Unbelievable! Irenicus must've done a number on your senses. There's no other explanation for you choosing that ... that slut, over me. As soon as this mission is over, we're through.~   */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_LeaveAfterSoA", "GLOBAL", 1)
	~	
	EXIT
END



IF ~~ THEN BEGIN XA_RomanceConflict_Continue
	SAY @940 /* ~That's all I needed to hear. Let's go.~ [BD54525] */
	
	IF ~~ THEN 
	EXIT
END

IF ~~ THEN BEGIN XA_RomanceConflict_EndCR_F
	SAY @938 /* ~Fine. Be with her. I can't tell you how much this hurts... but I appreciate your honesty. Let's go.~ */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_RomanceConflict_EndCR_M
	SAY @939 /* ~Fine. Be with him. I can't tell you how much this hurts... but I appreciate your honesty. Let's go.~  */
	
	IF ~~ THEN EXIT
END

//}

//{ #region Corwin Rep Warning - Dialog J-27 - CC OK
IF ~
	Global("XA_LC_CorwinRepWarning", "GLOBAL", 2)
~ THEN BEGIN XA_RepComplain
	SAY @923 /* ~We need to talk.~ */
	IF ~~ THEN REPLY @925 /* ~What's on your mind?~ */
	DO ~
		SetGlobal("XA_LC_CorwinRepWarning", "GLOBAL", 3)
	~
	GOTO XA_RepComplain2
	
	IF ~~ THEN REPLY @927 /* Not now. */
	DO ~
		SetGlobal("XA_LC_CorwinRepWarning", "GLOBAL", 3)
	~
	GOTO XA_RepComplain2
END

IF ~~ THEN BEGIN XA_RepComplain2
	SAY @924 /* ~I don't like the way things are going. I didn't come all this way to help you in committing acts of evil. If things get much worse, you'll find yourself on your own. Let's go.~ */
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Corwin Left - Bad Reputation - Dialog J-28A - CC OK
IF ~
	Global("XA_LC_CorwinLeftPoorRep", "GLOBAL", 1)
	GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
	!AreaCheck("AR1002")
~ THEN BEGIN XA_LeftPoorRep_SoA_A
	SAY @926 /* ~I'm sorry. I can't be a part of this any longer. When you clean up your act, you can find me in the Athkatla magistrate.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinLeftPoorRep", "GLOBAL", 0)
		SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
		SetLeavePartyDialogFile()
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		EscapeAreaMove("AR1002",1033,563, SW)
	~
	EXIT
END  
//} #endregion

//{ #region Corwin Left - Bad Reputation - Dialog J-28C - CC OK
IF ~
	Global("XA_LC_CorwinLeftPoorRep", "GLOBAL", 1)
	GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
	AreaCheck("AR1002")
~ THEN BEGIN XA_LeftPoorRep_SoA_B
	SAY @928 /* ~I'm sorry. I can't be a part of this any longer. If you ever clean up your act, come and see me.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinLeftPoorRep", "GLOBAL", 0)
		SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
		SetLeavePartyDialogFile()
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
	~
	EXIT
END  
//}

//{ #region Corwin Left - Bad Reputation - Dialog J-28B - CC OK
IF ~
	Global("XA_LC_CorwinLeftPoorRep", "GLOBAL", 1)
	Global("XA_LC_EnteredToB", "GLOBAL", 1)
~ THEN BEGIN XA_LeftPoorRep_ToB
	SAY @928 /* ~I'm sorry. I can't be a part of this any longer. If you ever clean up your act, come and see me.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinLeftPoorRep", "GLOBAL", 0)
		SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
		
		SetLeavePartyDialogFile()
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		//EscapeArea()
	~
	EXIT
END  
//} #endregion

//{ Optional Banter 1A
IF ~
	Global("XA_LC_Banter_CorwinPlayerOpt1A", "GLOBAL", 1)
	!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
~
THEN BEGIN XA_OPT1AFriend
	SAY @922 /* ~(You notice Major Corwin staring into the distance, with sadness in her eyes.)~ */
	
	IF ~~ THEN REPLY @921 /* ~Major? Are you alright?~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1A", "GLOBAL", 2)
	~
	GOTO XA_OPT1Friend2 
	
	IF ~~ THEN REPLY @186 /* ~(Leave her be.)~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1A", "GLOBAL", 2)
	~
	EXIT
END

IF ~
	Global("XA_LC_Banter_CorwinPlayerOpt1A", "GLOBAL", 1)
	Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
~
THEN BEGIN XA_OPT1ARomance
	SAY @183 /* ~(You notice Schael staring into the distance, with sadness in her eyes.)~ */
	
	IF ~~ THEN REPLY @184 /* ~Love? Are you alright?~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1A", "GLOBAL", 2)
	~
	GOTO XA_OPT1Romance_2 //OK
	
	IF ~~ THEN REPLY @186 /* ~(Leave her be.)~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1A", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_OPT1ARomance_3
	SAY @769 /* ~Yes... You know, Rohma asks about you.~ */
	
	IF ~
		Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @780 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1ARomance4_GaveDoll //OK
	
	IF ~
		!Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @780 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1ARomance4_NoDoll //OK
	
	IF ~~ THEN REPLY @718 /* ~Of course she does. I am the *ahem* hero of Baldur's Gate, after all.~ */
	GOTO XA_OPT1ARomance_4 //OK
END

IF ~~ THEN BEGIN XA_OPT1ARomance_4
	SAY @783 /*  ~(She rolls her eyes)  */
	= @799 /* ~A little humility from time to time wouldn't hurt, you know.~*/
	
	IF ~
		Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1ARomance4_GaveDoll //OK
	
	IF ~
		!Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1ARomance4_NoDoll //OK
END

IF ~~ THEN BEGIN XA_OPT1ARomance4_NoDoll
	SAY @239 /* ~I think of the kindness that you showed Rohma, and how good you've been with me... ~ */

	= @240 /* And then I think of Beno, and how stupid I was to be with scum like that... you must think I'm a fool. */
	
	IF ~~ THEN REPLY @241 /* ~Schael, stop it. You're more than any <PRO_MANWOMAN> can hope for in this life, and a great mother to Rohma.~ */
	GOTO XA_OPT1ARomance4_NoDoll2 //OK
	
	IF ~~ THEN REPLY @242 /* ~Schael, I've never met anyone like you. I hope you understand how special you are. I do, and I know Rohma does.~ */
	GOTO XA_OPT1ARomance4_NoDoll2 //OK
	
	IF ~~ THEN REPLY @243 /*  ~Nonsense. Let go of the past, love. Focus on our future together — you, me, and Rohma.~  */
	GOTO XA_OPT1ARomance4_NoDoll2 //OK
	
END

IF ~~ THEN BEGIN XA_OPT1ARomance4_NoDoll2
	SAY @244 /* ~The care and interest you've shown for her is more than Beno ever did.~ */
	
	IF ~~ THEN 
	GOTO XA_OPT1ARomance4_NoDoll3 //OK
END

IF ~~ THEN BEGIN XA_OPT1ARomance4_GaveDoll
	SAY @802 /* ~She loves the teddy you bought for her. It's her favorite toy.~ */
	
	IF ~~ THEN REPLY @806 /* ~It was a simple gesture.. I didn't think it would mean that much to her.~ */
	GOTO XA_OPT1ARomance4_GaveDoll2 //OK
	
END

IF ~~ THEN BEGIN XA_OPT1ARomance4_GaveDoll2
	SAY @819 /*~That one small act of kindness was more than her father ever did for her.~*/
	
	IF ~~ THEN 
	GOTO XA_OPT1ARomance4_NoDoll3
END

IF ~~ THEN BEGIN XA_OPT1ARomance4_NoDoll3
	SAY @254 /* ~She deserves better.~ */
	
	IF ~~ THEN REPLY @255 /* ~She does. Listen, Schael - I don't know if I'd be a good step parent for Rohma. What I do know is that I'll do my best.~ */
	GOTO XA_OPT1ARomanceEnd //OK
	
	IF ~~ THEN REPLY @256 /* ~She does. Listen, Schael - I'm fully aware of the responsibilities and challenges of being a step parent, and I want you to know that I will welcome them.~ */
	GOTO XA_OPT1ARomanceEnd  //OK
END

IF ~~ THEN BEGIN XA_OPT1ARomanceEnd 
	SAY @594 /*  ~I know you will. You step up to challenges instead of running from them. That's one of the reasons that I love you, <CHARNAME>. ~ */
	= @596 /*~(She plants a kiss on your cheek.)~*/
	= @595 /*~We've work to do. Let's get moving.~*/
	IF ~~ THEN
	EXIT
END

//}

//{ Dialog J-62 - CC OK
IF ~
	Global("XA_LC_Banter_CorwinPlayer", "GLOBAL", 2)
	Global("XA_LC_CorwinContinue", "GLOBAL", 1) //Friend
	//play romance song
~
THEN BEGIN XA_SkieMessageDelivered_Friend
	SAY @646 /* ~<CHARNAME>, do you have a moment?~ */
	IF ~~ THEN REPLY @647 /* ~Of course Schael, what's on your mind?~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA31
	
	IF ~~ THEN REPLY @648 /* ~Not right now.~*/
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA31A
END
//}

IF ~~ THEN BEGIN XAA31A
	SAY @649 /* ~I know you have a lot on your mind, but surely, you can spare a minute.~*/
	
	IF ~~ THEN REPLY @650 /* ~Fine, what is it?~*/
	GOTO XAA31
	
	IF ~~ THEN REPLY @651 /* ~Like I said, I'm busy.~ */
	GOTO XAA31B
	
	IF ~~ THEN REPLY @652 /* ~Like I said, I'm busy.~ */
	GOTO XAA31
END

IF ~~ THEN BEGIN XAA31B
	SAY @653 /* ~Fine. Sorry to have bothered you.~*/
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -2)
	~
	EXIT
END

//{ Dialog J-63 - CC OK
IF ~
	Global("XA_LC_Banter_CorwinPlayer", "GLOBAL", 2)
	Global("XA_LC_CorwinContinue", "GLOBAL", 2) //Romance
	//play romance song
~
THEN BEGIN XA_SkieMessageDelivered_Romance
	SAY @654 /* ~My love, do you have a moment?~ */
	IF ~~ THEN REPLY @655 /* ~Of course dear, what's on your mind?~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA31
	
	IF ~~ THEN REPLY @648 /* ~Not right now.~*/
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA31A
END
//}
//{ Dialog J-60 - CC OK
IF ~
	Global("XA_LC_Banter_CorwinPlayer", "GLOBAL", 4)
	Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	// play romance song
~
THEN BEGIN XA_CorwinPlayerBant2A
	SAY @656 /*~Are you alright, hon? You've a look of concern about you.~ */
	
	IF ~~ THEN REPLY @657 /* ~Yes love, I am fine. I was just thinking about some of the places and people we've seen...~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	GOTO XAA48 //OK
	
	IF ~~ THEN REPLY @659 /* ~It's nothing... Let's go.~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
END

//}

//{ Dialog J-61 - CC OK
IF ~
	Global("XA_LC_Banter_CorwinPlayer", "GLOBAL", 4)
	!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
~
THEN BEGIN XA_CorwinPlayerBant2B
	SAY @661 /* ~<CHARNAME>, are you alright? You have a look of concern about you.~ */
	
	IF ~~ THEN REPLY @662 /* ~Yes Schael, I am fine. I was just thinking about some of the places and people we've seen...~ */ 
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	GOTO XAA48 //OK
	
	IF ~~ THEN REPLY @659 /* ~It's nothing... Let's go.~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
END
//}

IF ~~ THEN BEGIN XAA31
	SAY @663 /* ~Before I left Baldur's Gate, Skie approached me and asked that I give you a message.~ */
	= @664 /* ~She said that she wanted to thank you for releasing her from the dagger, and to apologize for her father's behaviour. You deserved far better than what happened to you.~ */
	
	IF ~~ THEN REPLY @665 /* ~There is no need for her to apologize for her father. She was not the one who tried to have me executed. I do appreciate the gesture, however. ~ */
	GOTO XAA32

	IF ~~ THEN REPLY @666 /* ~Thank you Schael, though I doubt I would have acted any differently if I were in Entar's shoes. That scoundrel Irenicus made sure that all of the evidence pointed to my guilt.~  */
	GOTO XAA33
END

IF ~~ THEN BEGIN XAA32
	SAY @667 /* ~Entar was completely convinced of your guilt, as were many others.~  */
	
	IF ~
		Global("XA_LC_CorwinContinue", "GLOBAL", 1) //friend
	~ 
	THEN REPLY @669 /* ~But not you. Schael, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO XAA34A
	
	IF ~
		Global("XA_LC_CorwinContinue", "GLOBAL", 2) //romance
	~ 
	THEN REPLY @670 /* ~But not you. My love, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO XAA34B	
END

IF ~~ THEN BEGIN XAA33
	SAY @668 /* ~Indeed. He had much of the city convinced of your guilt.~ */
	
	IF ~
		Global("XA_LC_CorwinContinue", "GLOBAL", 1) //friend
	~ 
	THEN REPLY @669 /* ~But not you. Schael, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO XAA34A
	
	IF ~
		Global("XA_LC_CorwinContinue", "GLOBAL", 2) //romance
	~ 
	THEN REPLY @670 /* ~But not you. My love, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO XAA34B	
END

IF ~~ THEN BEGIN XAA34A // friend
	SAY @671 /* ~It wasn't. I miss her everyday. But I need to be here, with you. Irenicus must be punished for the crimes he has committed.~ */
	
	IF ~~ THEN REPLY @672 /*  ~With your help, he will be, my friend. Let's go.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	EXIT
	
	IF ~~ THEN REPLY @673 /*  ~Schael... I... I didn't realize how much I needed you near me, until you were gone. Your being here, now, fills a void in my heart that I did not know was there. I would like for us to move past friendship, into a more serious relationship. I... am in love with you, Schael.~*/
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("XA_LC_CorwinLoveBG2", "GLOBAL", 1)
	~
	GOTO XAA35
END

IF ~~ THEN BEGIN XAA34B // romance
	SAY @671 /* ~It wasn't. I miss her everyday. But I need to be here, with you, dear. Irenicus must be punished for the crimes he has committed.~ */
	
	IF ~~ THEN REPLY @674 /*  ~He will be, my love. And when this is done, we will go back to Baldur's Gate and start our new life together, with Rohma.~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA36
END

IF ~~ THEN BEGIN XAA35
	SAY @675 /* ~(She stands in stunned silence, and takes a moment to gather herself.)~ */
	
	= @676 /*  ~<CHARNAME>, I missed you too, dearly... and I've been thinking about this for a long time. I also want us to be more to eachother than what we are now.~*/
	
	= @697 /* ~My... my heart broke when I read your letter. I keep thinking that if I'd left with you, you wouldn't have been captured, maybe Khalid and Dynaheir would still be alive, maybe —~ */
	
	IF ~~ THEN REPLY @698 /* ~Stop it, Schael. You can't blame yourself for what happened. There's nothing that you could have done to stop it; Irenicus set his trap perfectly. It's better that you were not with me when we were captured — I shudder to think what Irenicus would've done to you had you been captured as well.~*/
	GOTO XAAKiss
	
	IF ~~ THEN REPLY @699 /*  ~Schael, forget the past. What matters is that we are here together, now.~ */
	GOTO XAAKiss
END

IF ~~ THEN BEGIN XAAKiss
	SAY @708 /*~Come here...~ [xalc1170] */
	IF ~
		Global("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinLoveTOB", "GLOBAL", 1)
	~
	GOTO XAAKissChain
	
	IF ~
		GlobalLT("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinLoveBG2", "GLOBAL", 1)
	~
	GOTO XAAKissChain
END

IF ~~ THEN BEGIN XAA36
	SAY @709 /* ~I've been looking forward to that day... more than you know. Let's go, love.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXIT
END



IF ~~ THEN BEGIN XAA48
	SAY @711 /* ~What's on your mind?~ */
	
	IF ~
		GlobalLT("XA_LC_ReturnToBG", "GLOBAL", 1)
	~ THEN REPLY @712 /* ~Before I was exiled, I remember the city was still struggling with the refugee crisis. Have the Dukes had any success in resettling the refugees?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~
	GOTO XAA49
	
	IF ~~ THEN REPLY @713 /* ~We met some interesting people during the Dragonspear campaign. Remember that gnome, Glint? The goblin shaman, M'Khlin? The others, as well.~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
	~
	GOTO XAA50
	
	IF ~
		GlobalLT("XA_LC_BackToHell", "GLOBAL", 1)
	~ THEN REPLY @714 /* ~I've thought from time to time about the terror of what we experienced in Avernus. Do you think about that place?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutAvernus", "LOCALS", 1)
	~
	GOTO XAA51
	
	IF ~
		!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinEET", "GLOBAL", 1)
	~ THEN REPLY @715 /* ~I was thinking about the first time we met. Do you remember, love?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_CorwinEET
	
	IF ~
		!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinEET", "GLOBAL", 0)
	~ THEN REPLY @715 /* ~I was thinking about the first time we met. Do you remember, love?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_NoCorwinEET
	
	IF ~
		!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinEET", "GLOBAL", 1)
	~ THEN REPLY @728 /* ~I was thinking about the first time we met. Do you remember?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_CorwinEET
	
	IF ~
		!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinEET", "GLOBAL", 0)
	~ THEN REPLY @728 /* ~I was thinking about the first time we met. Do you remember?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_NoCorwinEET
END

IF ~~ THEN BEGIN XAA50
	SAY @279  /* ~Hah, how could anyone forget. I miss our colleagues from the coalition as well... even that prick de Lancie. Hopefully they're doing well.~ */
	
	IF ~
		OR(3)
			!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			!Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @280 /* ~Yes, I hope so too. I have a feeling we'll run into them again, sooner or later.~ */
	GOTO XAA48A //OK
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
		
	~ THEN REPLY @730 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @731 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA51
	SAY @866 /* ~I do, too. It's only natural, I suppose. It was a traumatic experience for all of us.~ */
	
	IF ~
		GlobalLT("XA_LC_CaelarAliveInAvernus","GLOBAL",1)
	~ THEN REPLY @867 /* ~Yes. I often wonder about Aun, Caelar's uncle. Do you think he is still alive, in Avernus?~ */
	GOTO XAA52 //OK
	
	IF ~
		Global("XA_LC_CaelarAliveInAvernus","GLOBAL",1)
		GlobalLT("XA_LC_CaelarRescue", "GLOBAL", 1)
	~ THEN REPLY @868 /* ~Yes. I often wonder about Caelar, and whether she is still alive, in Avernus.~ */
	GOTO XAA53 //OK
END

IF ~~ THEN BEGIN XAA52
	SAY @907 /* ~Perhaps he is. I'm grateful for his sacrifice. I can't imagine the heartbreak he felt watching his niece pledge her soul to a demon.~ */
	
	IF ~
		OR(3)
			!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			!Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @281  /* ~Indeed. I too am grateful.~ */
	GOTO XAA48A //OK
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @730 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @731 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA53
	SAY @906 /* ~Perhaps she is. But it doesn't matter. I don't think we'll need to worry about her ever again.~ */
	IF ~
		OR(3)
			!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			!Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @187 /* ~I hope you're right.~ */
	GOTO XAA48A //OK
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @730 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @731 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA54_NoCorwinEET
	SAY @908 /*  ~Of course. It was at the Ducal palace... we were under attack by assassins sent by the crusade.~ */
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @909 /* ~Even amidst the chaos of that night, I remember being capitvated by your beauty. I still am.~ */
	GOTO XAA55 //OK
	
	IF ~~ THEN REPLY @910 /* ~We defeated the assassins and left for Dragonspear the next morning.~ */
	GOTO XAA56 //OK
END

IF ~~ THEN BEGIN XAA54_CorwinEET
	SAY @911 /* ~Of course. It was at Wyrm's Crossing. Scar, rest his soul, introduced us. <CHARNAME>, the intrepid adventurer who had been battling bandits up and down the Sword Coast.~ */
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @912 /* ~And Captain Schael Corwin of the Flaming Fist, who was investigating the Iron Throne within the city. I remember being captivated by your beauty. I still am.~ */
	GOTO XAA55 //OK
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @914 /* ~And Captain Schael Corwin of the Flaming Fist, who was investigating the Iron Throne within the city.~ */
	GOTO XAA56 //OK
END

IF ~~ THEN BEGIN XAA55
	SAY @913 /* ~I'll take your words over roses, any day.~ */
	
	IF ~
		OR(3)
			!Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			!Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			!Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @915 /* ~(You share a warm embrace)~ */
	GOTO XAA48A	//OK
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @730 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @731 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA56
	SAY @919 /* ~The beginnings of a long and fruitful friendship, one that I hope will last well into the future.~ */
	
	IF ~
		OR(3)
			!Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			!Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			!Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @920 /* ~As do I, my friend.~ */
	GOTO XAA48A	//OK
	
	IF ~
		OR(3)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @731 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA57
	SAY @866 /* ~I do, too. It's only natural, I suppose. It was a traumatic experience for all of us.~ */
	= @916  /* ~You nearly sacrificed my soul to that damned demon.. what was its name? Thrax?~ */
	
	IF ~~ THEN REPLY @917 /* ~Thrix the Profane, if I remember correctly. Your soul was never in danger - I'd never let a demon like that outsmart me.~ */
	GOTO XAA58 //OK
END

IF ~~ THEN BEGIN XAA58
	SAY @918 /* ~Still, it was quite a gamble. Next time risk your own damned soul, or better yet, don't play such high stakes games with demons, got it?~ */
	
	IF ~
		GlobalLT("XA_LC_CaelarAliveInAvernus","GLOBAL",1)
	~ THEN REPLY @867 /* ~Yes. I often wonder about Aun, Caelar's uncle. Do you think he is still alive, in Avernus?~ */
	GOTO XAA52 //OK
	
	IF ~
		Global("XA_LC_CaelarAliveInAvernus","GLOBAL",1)
		GlobalLT("XA_LC_CaelarRescue", "GLOBAL", 1)
	~ THEN REPLY @868 /* ~Yes. I often wonder about Caelar, and whether she is still alive, in Avernus.~ */
	GOTO XAA53 //OK
END

IF ~~ THEN BEGIN XAA48A
	SAY @729 /* ~Anything else you'd like to discuss?~ */
	
	COPY_TRANS XACORWIB XAA48
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(4)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @730 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(4)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ 
	THEN REPLY @731 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA49
	SAY @732 /* ~Yes, at least those whose homes were not completely destroyed by the crusade. There are still many that need to be resettled.~ */
	= @733 /* ~There are plans to settle them just east of the city. Some ankheg nests will need to be cleared, but the city planners think it's a workable solution.~ */		
	IF ~
		OR(3)
			!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			!Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @735 /* ~It's good that at least some progress was made.~ */
	GOTO XAA48A //OK
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @730 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @731 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END 

//{ region: Dialog B-0
IF ~
	Global("OHD_corwinconflict","GLOBAL",2)
	IsValidForPartyDialogue("Dorn")
~ THEN BEGIN XA_CorwinDornConflict1
	SAY @658 /* ~Dorn - you seem to have taken a very strong interest in <CHARNAME>.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("OHD_corwinconflict","GLOBAL",3)
	~
	EXTERN BDORN XA_CorwinDornConflict2
END
//}

//{ Dialog B-1
	IF ~
		Global("XA_LC_CorwinAnomenTalk", "LOCALS", 1)
		IsValidForPartyDialogue("Anomen")
	~ THEN BEGIN BCorwinAnomen1A
		SAY @541 /* ~You've been glaring at me for the last hour Anomen. What is it?~ [XACORB20] */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinAnomenTalk", "LOCALS", 2)
			SetGlobal("XA_LC_Banter_CorwinAnomenEnd", "GLOBAL", 3)	
		~ 
		EXIT
		
		IF ~
			IsValidForPartyDialogue("Anomen")
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinAnomenTalk", "LOCALS", 2)
			SetGlobal("XA_LC_Banter_CorwinAnomenEnd", "GLOBAL", 3)	
		~ 
		EXTERN BANOMEN BCorwinAnomen1A
	END
//}

IF ~~ THEN BEGIN XA_CorwinDornConflict3
	SAY @660 /* ~But it is. If you even think to stand in the way of our relationship, I promise that you'll regret it.~ */
	
	IF ~~ THEN
	EXTERN BDORN XA_CorwinDornConflict4
END



IF ~~ THEN BEGIN XA_ChooseDorn
	SAY @470 /* ~To think I even considered the possibility of you and I being together. Madness. Be with Dorn, then. I want nothing more to do with you.~ [BD54533] */
	IF ~~ THEN
	DO ~
		SetGlobal("OHD_corwinconflict","GLOBAL",4)
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
		//SetPlayerSound(Myself,@865,SELECT_ACTION6)
	~
	EXIT
END



//{ region: Dialog B-3A
IF ~
	Global("XA_LC_TM_ArcheryChallenge", "GLOBAL", 2)
	!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	IsValidForPartyDialogue("Mazzy")
~ THEN BEGIN XA_Trademeet_Competition_MazzyWon
	SAY @549 /* ~Mazzy, congratulations on your victory. That was quite the performance.~ */
	
	IF ~~ THEN 
	EXTERN BMAZZY XA_MazzyWonCompetition
END
//}

//{ region Dialog B-4
IF ~
	Global("XA_LC_Banter_CorwinMazzy", "GLOBAL", 4)
	IsValidForPartyDialogue("Mazzy")
~ THEN BEGIN XA_Banter_CorwinMazzy2_Init
	SAY @528 /* ~Mazzy, I'm curious as to why you chose to specialize in the crossbow instead of the longbow.~ [XA100071]*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_Banter_CorwinMazzy", "GLOBAL", 5)
		SetGlobal("XA_LC_TM_ArcheryChallenge", "GLOBAL", 1)
	~
	EXTERN BMAZZY BCorwinMazzy2
END
//}

IF ~~ THEN BEGIN XA_CorwinWonCompetition
	SAY @555 /* ~Thanks, Mazzy. You're one of the toughest people I've competed against.~ */
	
	IF ~~ THEN REPLY @551 /* ~You both performed well. I'm glad to have such skilled companions at my side.~ */
	GOTO XAA77
	
	IF ~~ THEN REPLY @556 /* ~Schael, you were amazing.~  */
	GOTO XAA77
END

IF ~~ THEN BEGIN XAA77
	SAY @597 /* ~You know, I heard you cheering for me, love. It meant a lot.~ */
	
	= @598 /*~You don’t know how much I appreciate that.~ [XA100093]*/
	
	= @188 /* ~(You share a warm embrace.)~ */
	
	IF ~~ THEN REPLY @189 /* ~Let me see that trophy.~ */
	GOTO XAA78
END

IF ~~ THEN BEGIN XAA78
	SAY @192 /* ~(She hands it over.)~  */
	
	= @315 /* ~So, what do you think?~ */
	IF ~~ THEN REPLY @316 /* ~I think that you'll never cease to amaze me.~ */
	GOTO XAA79
	
	IF ~~ THEN REPLY @320 /* ~(Examine the trophy.)~ */
	GOTO XAA80
END

IF ~~ THEN BEGIN XAA79
	SAY @317 /* ~Hah, that much is obvious. What do you think about the *trophy*.~ */
	
	IF ~~ THEN REPLY @320 /* ~(Examine the trophy.)~ */
	GOTO XAA80
END

IF ~~ THEN BEGIN XAA80
	SAY @318 /* You examine the trophy — it's a figurine of an archer cast in gold, with a plaque beneath that states 'Schael Corwin - Winner - Trademeet Archery Competition'.*/
	
	IF ~~ THEN REPLY @321 /* ~Very nice. Your father will be proud.~*/
	GOTO XAA80A
	
	IF ~~ THEN REPLY @322 /* ~The figurine doesn't quite do you justice, dear.~ */
	GOTO XAA80B
END

IF ~~ THEN BEGIN XAA80A
	SAY @323  /* ~I think Rohma will appreciate it more... gods, I miss them...~*/
	
	IF ~~ THEN 
	GOTO XAA80C
END

IF ~~ THEN BEGIN XAA80C
	SAY @319  /* Well, that was an entertaining distraction, but it WAS a distraction. We have work to do. Let's go, love.*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_Journal_TMCorwin", "GLOBAL", 1)
		SetGlobal("XA_LC_TM_ArcheryChallenge", "GLOBAL", 3)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA80B
	SAY @326 /* ~(She lets out a hearty laugh.)~*/
	
	IF ~~ THEN 
	GOTO XAA80C
END

IF ~~ THEN BEGIN BCorwinMazzy2_End
	SAY @533 /* ~Is that so? Yes, I'm interested, so long as it's not too much of a diversion.~*/ 
	
	IF ~~ THEN REPLY @557 /* ~Mazzy, you said the competition is held in Trademeet?~ */
	EXTERN BMAZZY XA_TMSignup
END




//{ #region Met Rohma Interaction BG2 (Non-Romance) - Dialog J-40 - CC OK

/* Optional Interaction - Met Rohma */
IF ~
	Global("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 2)
	!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
~
THEN BEGIN XA_OPT1Friend
	SAY @736 /* ~(You notice Captain Corwin staring into the distance, with sadness in her eyes.)~ */
	
	IF ~~ THEN REPLY @738 /* ~Captain? Are you alright?~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	GOTO XA_OPT1Friend2 //OK
	
	IF ~~ THEN REPLY @739 /* ~(Leave her be.)~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_OPT1Friend2
	SAY @741 /* ~(She snaps to attention) ~ */
	
	= @743 /* <CHARNAME>, yes. Sorry - I was thinking about home.~ */
	
	IF ~~ THEN REPLY @778 /* ~About your daughter and father. I understand.~ */
	GOTO XA_OPT1Friend3 //OK
	
	IF ~~ THEN REPLY @779 /* ~No need to apologize. It must be difficult for you to be away from your family.~*/
	GOTO XA_OPT1Friend3 //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend3
	SAY @769 /* ~Yes... You know, Rohma asks about you.~ */
	
	IF ~
		Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @780 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1Friend4_GaveDoll //OK
	
	IF ~
		!Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @780 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1Friend4_NoDoll //OK
	
	IF ~~ THEN REPLY @781 /* ~Well of course she does. I am, as you know, the *ahem* hero of Baldur's Gate, and the champion of the Sword Coast to boot.~ */
	GOTO XA_OPT1Friend3C //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend3C
	SAY @783 /*  ~(She rolls her eyes)  */
	= @799 /* ~A little humility from time to time wouldn't hurt, you know. But yes, you did leave quite the impression on her.~ */
	
	IF ~
		Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1Friend4_GaveDoll //OK
	
	IF ~
		!Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1Friend4_NoDoll //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend4_GaveDoll
	SAY @802 /* ~She loves the doll you bought for her. It's her favorite toy.~ */
	
	IF ~~ THEN REPLY @806 /* ~It was a simple gesture.. I didn't think it would mean that much to her.~ */
	GOTO XA_OPT1Friend5 //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend4_NoDoll
	SAY @814 /* ~The kindness that you showed her is more than her father ever did... thank you, <CHARNAME>.~*/
	
	IF ~~ THEN
	GOTO XA_OPT1END //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend5
	SAY @819 /* ~That one act of kindness from you is more than her father ever did for her... thank you, <CHARNAME>.~*/

	IF ~~ THEN
	GOTO XA_OPT1END //OK
END

IF ~~ THEN BEGIN XA_OPT1END
	SAY  @820 /* ~Let's get moving.~ */
	
	IF ~~ THEN REPLY @821 /* ~Right.~ */
	EXIT
	
	IF ~
		!Global("AerieRomanceActive","GLOBAL",2)
		!Global("ViconiaRomanceActive","GLOBAL",2)
		!Global("DornRomanceActive","GLOBAL",2)
		!Global("NeeraRomanceActive","GLOBAL",2)
		!Global("AnomenRomanceActive","GLOBAL",2)
		!Global("JaheiraRomanceActive","GLOBAL",2)
		!Global("HexxatRomanceActive","GLOBAL",2)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @822 /* ~Capt — Schael, wait. There's something I need to tell you.~ */
	GOTO XA_OPT1END_InitRomance //OK
	
	IF ~
		!Global("AerieRomanceActive","GLOBAL",2)
		!Global("ViconiaRomanceActive","GLOBAL",2)
		!Global("DornRomanceActive","GLOBAL",2)
		!Global("NeeraRomanceActive","GLOBAL",2)
		!Global("AnomenRomanceActive","GLOBAL",2)
		!Global("JaheiraRomanceActive","GLOBAL",2)
		!Global("HexxatRomanceActive","GLOBAL",2)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @823 /* ~Maj — Schael, wait. There's something I need to tell you.~ */
	GOTO XA_OPT1END_InitRomance //OK
END

IF ~~ THEN BEGIN XA_KissEnd
	SAY @824 /* ~Let's go, love. We have work to do.~*/
	
	IF ~~ THEN REPLY @829 /*~Gladly, my dear.~*/
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_OPT1END_InitRomance
	SAY @878 /* ~Hm?~  */
	
	IF ~~ THEN REPLY @880 /* ~Ah... nevermind. Let's go.~ */
	GOTO XA_OPT1END_InitRomance_End //OK
	
	IF ~~ THEN REPLY @881 /* ~I want you to know that I greatly appreciate your friendship. And I don't want to do anything to jeopardize that. But...~  */
	GOTO XA_OPT1END_InitRomance2 //OK
END

IF ~~ THEN BEGIN XA_OPT1END_InitRomance2
	SAY @86 /* ~What is it? You can tell me.~ */
	
	IF ~~ THEN REPLY @880 /* ~Ah... nevermind. Let's go.~ */
	GOTO XA_OPT1END_InitRomance_End //OK
	
	IF ~~ THEN REPLY @673 /* ~Schael... I... I didn't realize how much I needed you near me, until you were gone. Your being here, now, fills a void in my heart that I didn't know was there. I'd like for us to move past friendship, into a more serious relationship. I... I'm in love with you, Schael.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	GOTO XAA35
END

IF ~~ THEN BEGIN XA_OPT1END_InitRomance_End
	SAY @155 /* ~(A look of disappointment flashes across her face.)~*/
	
	= @168 /* ~That... That's it? That's all you wanted to say?~ [XA100001] */
	
	= @175 /*~Fine. Let's go.~*/
	
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Met Corwin Interaction BG2 (Romance) - Dialog J-41 - CC OK
IF ~
	Global("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 2)
	Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	//play romance song
~
THEN BEGIN XA_OPT1Romance
	SAY @183 /* ~(You notice Schael staring into the distance, with sadness in her eyes.)~ */
	
	IF ~~ THEN REPLY @184 /*  ~My love, are you alright?~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	GOTO XA_OPT1Romance_2 //OK
	
	IF ~~ THEN REPLY @185 /*   ~What's wrong, dear?~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	GOTO XA_OPT1Romance_2 //OK
	
	IF ~~ THEN REPLY @186 /*~(Leave her be.)~*/
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	EXIT
END
IF ~~ THEN BEGIN XA_OPT1Romance_2
	SAY @741 /* ~(She snaps to attention)*/

	=@176 /*	~Yes, sorry. I was thinking about home. I just miss them, that's all.~*/
	
	IF ~
		GlobalLT("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @778 /* ~Rohma and your father. I understand.~ */
	GOTO XA_OPT1Romance_3 //OK
	
	IF ~
		GlobalLT("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @779 /* ~No need to apologize. It must be difficult for you to be away from your family.~*/
	GOTO XA_OPT1Romance_3 //OK
	
	IF ~
		Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @778 /* ~Rohma and your father. I understand.~ */
	GOTO XA_OPT1ARomance_3 //OK
	
	IF ~
		Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @779 /* ~No need to apologize. It must be difficult for you to be away from your family.~*/
	GOTO XA_OPT1ARomance_3 //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance_3
	SAY @769 /* ~Yes... You know, Rohma asks about you.~ */
	
	IF ~
		Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @780 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1Romance4_GaveDoll //OK
	
	IF ~
		!Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @780 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1Romance4_NoDoll //OK
	
	IF ~~ THEN REPLY @781 /* ~Of course she does. I am the *ahem* hero of Baldur's Gate, after all.~ */
	GOTO XA_OPT1Romance_4 //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance_4
	SAY @783 /*  ~(She rolls her eyes)  */
	= @799/* ~A little humility from time to time wouldn't hurt, you know. But yes, you did leave quite the impression on her.~ */
	
	IF ~
		Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1Romance4_GaveDoll //OK
	
	IF ~
		!Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1Romance4_NoDoll //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance4_NoDoll
	SAY @239 /* ~I think of the kindness that you showed Rohma, and how good you've been with me... ~ */

	= @240 /* And then I think of Beno, and how stupid I was to be with scum like that... you must think I'm a fool. */
	
	IF ~~ THEN REPLY @241 /* ~Schael, stop it. You're more than any <PRO_MANWOMAN> can hope for in this life, and a great mother to Rohma.~ */
	GOTO XA_OPT1Romance4_NoDoll2 //OK
	
	IF ~~ THEN REPLY @242 /* ~Schael, I've never met anyone like you. I hope you understand how special you are. I do, and I know Rohma does.~ */
	GOTO XA_OPT1Romance4_NoDoll2 //OK
	
	IF ~~ THEN REPLY @243 /*  ~Nonsense. Let go of the past, love. Focus on our future together — you, me, and Rohma.~  */
	GOTO XA_OPT1Romance4_NoDoll2 //OK
	
END

IF ~~ THEN BEGIN XA_OPT1Romance4_NoDoll2
	SAY @244 /* ~The care and interest you've shown for her is more than Beno ever did.~ */
	
	IF ~~ THEN 
	GOTO XA_OPT1Romance4_NoDoll3 //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance4_NoDoll3
	SAY @254 /* ~She deserves better.~ */
	
	IF ~~ THEN REPLY @255 /* ~She does. Listen, Schael - I don't know if I'd be a good step parent for Rohma. What I do know is that I'll do my best.~ */
	GOTO XA_OPT1RomanceEnd //OK
	
	IF ~~ THEN REPLY @256 /* ~She does. Listen, Schael - I'm fully aware of the responsibilities and challenges of being a step parent, and I want you to know that I will welcome them.~ */
	GOTO XA_OPT1RomanceEnd  //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance4_GaveDoll
	SAY @802 /* ~She loves the teddy you bought for her. It's her favorite toy.~ */
	
	IF ~~ THEN REPLY @257 /* ~Oh yes, I remember! I bought it at the general store, not long after I met her for the first time.~ */
	GOTO XA_OPT1Romance4_GaveDoll2 //OK
	
	IF ~~ THEN REPLY @806 /* ~It was a simple gesture.. I didn't think it would mean that much to her.~ */
	GOTO XA_OPT1Romance4_GaveDoll2 //OK
	
END

IF ~~ THEN BEGIN XA_OPT1Romance4_GaveDoll2
	SAY @593 /*~That one small act of kindness was more than her father ever did for her.~*/
	
	IF ~~ THEN 
	GOTO XA_OPT1Romance4_NoDoll3
END

IF ~~ THEN BEGIN XA_OPT1RomanceEnd 
	SAY @594 /*  ~I know you will. You step up to challenges instead of running from them. That's just one of the many reasons why I love you, <CHARNAME>.~ */
	= @596 /* ~(She plants a kiss on your cheek.)~ */
	= @595 /* ~We've work to do. Let's get moving.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	EXIT
END
//} #endregion

//{ Corwin Sick Dialogs

	//{ Dialog B-5
	CHAIN
		IF ~
			Global("XA_LC_CorwinSick_Aerie", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
		~
		THEN BAERIE BCorwinSickAerie
			@677 /* ~Schael, you haven't been able to k-keep any fluids down. Sit down for a m-moment, let me have a look at you.~ */
			DO ~
				SetGlobal("XA_LC_CorwinPartySick", "GLOBAL", 2)
				SetGlobal("XA_LC_CorwinSick_Aerie", "GLOBAL", 0)
			~
			== XACORWIB
			@678 /* ~N-no *cough* we need to... we need to keep *cough* moving...~*/
			== BAERIE
			@679 /* ~It will only take a moment. Let me check your temperature... oh... oh my! You're ice cold!~ */
			== BAERIE
			@680 /* ~Here, this spell will help with the nausea, at least... is that b-better?~ */
			== XACORWIB
			@681 /* ~Yes, thanks *cough* Aerie..~ */
			== BAERIE
			@782  /*~(She walks over and pulls you aside.)~*/
			=
			@682 /*  ~We need to find Bodhi and k-kill her before Schael gets any worse. I don't think she has much time left.~  */
	EXIT
	//}

	//{ Dialog B-6
	CHAIN
		IF ~
			Global("XA_LC_CorwinSick_Jaheira", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
		~
		THEN BJAHEIR BCorwinSickJaheira
			@683 /* ~Captain, you haven't been able to keep any fluids down. Sit down for a moment, let me have a look at you.~ */
			DO ~
				SetGlobal("XA_LC_CorwinSick_Jaheira", "GLOBAL", 0)
				SetGlobal("XA_LC_CorwinPartySick", "GLOBAL", 2)
			~
			== XACORWIB
			@678 /* ~N-no *cough* we need to... we need to keep *cough* moving...~*/
			== BJAHEIR
			@684 /* ~This salve will help you to control your nausea. I need to apply it to your neck and chest.~ */
			== XACORWIB
			@685 /* ~Fine.. just help me get this *cough* armor off... thanks.~ */
			== BJAHEIR
			@687 /* ~Good, I'll unbutton your vest. This will only take a moment.~ */
			=
			@686 /*  ~(To protect Schael's modesty, Jaheira stands between her and the rest of the party, obstructing any view of her bare breasts.)~  */
			=
			@688 /* ~(She begins to rub the salve on Schael's chest, then abruptly stops.)~ */
			=
			@689 /* ~Oh... child! You're ice cold! Let's get your vest and armor back on. Good.~ */
			=
			@690 /* ~I'll make a fire for you, stay here for a moment while I talk to <CHARNAME>.~ */
			=
			@782 /*~(She walks over and pulls you aside.)~*/
			=
			@691 /* ~We need to find Bodhi and kill her before Schael gets any worse. She doesn't have much time left. I don't want you to lose her, like I lost Khalid.~ */
	EXIT
	//}

	//{ Dialog B-7
	CHAIN
		IF ~
			Global("XA_LC_CorwinSick_Korgan", "GLOBAL", 1)
		~
		THEN BKORGAN BCorwinSickKorgan
			@692 /* ~Aye, <CHARNAME>. Ye girlie ain't doing well at all. She's as tough as they come, though I'd wager me clan's name that Schael won't make it through the night.~  */
			DO ~
				SetGlobal("XA_LC_CorwinSick_Korgan", "GLOBAL", 0)
				SetGlobal("XA_LC_CorwinPartySick", "GLOBAL", 2)
			~
			== BKORGAN
			IF ~
				Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			~
			@693 /* ~It be not my place to tell ye what to do, but if ye cares about yer woman, you'd do well to find that neck-biting bitch and ram a stake through her heart, ye hear?~ */
			
	EXIT
	//}

	//{ Dialog B-8
	CHAIN
		IF ~
			Global("XA_LC_CorwinSick_Imoen", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
		~
		THEN BIMOEN2 BCorwinSickImoen2
			@694 /* ~Schael, you haven't been able to keep any fluids down. Sit down for a moment, let me have a look at you.~ */
			DO ~
				SetGlobal("XA_LC_CorwinSick_Imoen", "GLOBAL", 0)
				SetGlobal("XA_LC_CorwinPartySick", "GLOBAL", 2)
			~
			== XACORWIB
			@695 /* ~N-no *cough* we need to... we need to keep *cough* moving...~*/
			== BIMOEN2
			@696 /* ~And we will, but I'm more concerned about you right now. Let me check your temperature, it will only take a moment. Oh... oh my! You're ice cold, you poor thing!~ */
			= 
			@690 /* ~I'll make a fire for you, stay here for a moment while I talk to <CHARNAME>.~*/
			=
			@782 /*  ~(She walks over and pulls you aside.)~*/
			=
			@797 /* ~We need to find Bodhi and kill her before Schael gets any worse. I don't want you to lose her like I lost Khalid.~ */
	EXIT
	//}
	
//}

//{ Mazzy Banters

	//{ region Dialog B-9
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinMazzy", "GLOBAL", 2)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			IsValidForPartyDialogue("Mazzy")
		~
		THEN XACORWIB BCorwinMazzy1A
			@526 /* ~Mazzy? What do you need?~ [BD56086]*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinMazzy", "GLOBAL", 3)
			~
			== BMAZZY
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@517 /*  ~Captain, I'd not have thought it so, but you're quite skilled as an adventurer.~ */
			== BMAZZY
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@737 /*  ~Major, I'd not have thought it so, but you're quite skilled as an adventurer.~ */
			== XACORWIB
			@518 /* ~I wouldn't call myself an adventurer. I'm here on orders.~ */
			=
			@520 /* ~I'll head back to Baldur's Gate once Irenicus is killed or captured.~ */
			== BMAZZY 
			@521 /* ~I see. Have you considered adventuring as a profession? Your leadership and skill with the bow would benefit almost any party.~ */
			=
			@522 /* ~Think of the good you can do.~ */
			== XACORWIB
			@523 /* ~It's not that simple. I've responsibilities to tend to at home. My daughter and father being the most important.~  */
			== BMAZZY
			@524 /* ~Oh, forgive me - I didn't realize you had such obligations.~*/
			== XACORWIB
			@525 /* ~No need to apologize, Mazzy. Let's keep moving.~ */
	EXIT
	//}

	//{ region Dialog B-10
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinMazzy", "GLOBAL", 2)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			IsValidForPartyDialogue("Mazzy")
		~
		THEN XACORWIB BCorwinMazzy1B
			@526 /* ~Mazzy? What do you need?~ [BD56086]*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinMazzy", "GLOBAL", 3)
			~
			== BMAZZY
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@517 /*  ~Captain, I'd not have thought it so, but you're quite skilled as an adventurer.~ */
			== BMAZZY
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@737 /*  ~Major, I'd not have thought it so, but you're quite skilled as an adventurer.~ */
			== XACORWIB
			@519 /* ~I wouldn't call myself an adventurer. I'm here on orders, and because <CHARNAME> needs me.~ */
			== XACORWIB
			IF ~
				GlobalLT("XA_LC_ReturnToBG", "GLOBAL", 1)
			~
			@520 /* ~I'll head back to Baldur's Gate once Irenicus is killed or captured.~ */
			== BMAZZY 
			@521 /* ~I see. Have you considered adventuring as a profession? Your leadership and skill with the bow would benefit almost any party.~ */
			=
			@522 /* ~Think of the good you can do.~ */
			== XACORWIB
			@523 /* ~It's not that simple. I've responsibilities to tend to at home. My daughter and father being the most important.~  */
			== BMAZZY
			@524 /* ~Oh, forgive me - I didn't realize you had such obligations.~*/
			== XACORWIB
			@525 /* ~No need to apologize, Mazzy. Let's keep moving.~ */
	EXIT
	//}

	//{ Continuation Chains
	CHAIN IF ~~ THEN BMAZZY BCorwinMazzy2
		@529 /*  ~Isn't it obvious?~*/
		== XACORWIB
		@530 /* ~I'm sorry?~ */
		== BMAZZY
		@531 /*  ~That longbow you carry is taller than me! Longbows are far too difficult for someone of my stature to wield properly.~ */
		== XACORWIB
		@532 /* ~Oh, of course - sorry. I didn't mean to offend.~ */
	END BMAZZY BCorwinMazzy2_BREAK

	CHAIN IF ~~ THEN BMAZZY BCorwinMazzy2_RESUME
		@534 /* ~You know, one of these days I'd like to challenge you to a friendly archery match.~ */
		== XACORWIB
		@535 /* ~Hah, I'd like that! I must warn you though, it's been years since I've lost. ~  */
		== BMAZZY
		@536 /* ~That's not surprising given your skill, though I doubt you've faced someone of my caliber.~*/
		=
		@537 /* ~Trademeet holds an annual archery competition around this time of the year. If you're game, you and I should sign up.~ */
	END XACORWIB BCorwinMazzy2_End

	CHAIN
		IF ~~ THEN BMAZZY XA_TMSignup
			@539 /* ~Yes, that's right. The signup table is in the southeast of the city, if I remember correctly. Next time we are in the area, we can signup.~*/
			DO ~
				SetGlobal("XA_LC_Journal_TMSignup", "GLOBAL", 1)
			~
			== XACORWIB
			@538 /* ~Now that's a plan. Let's go.~ [BD50018]*/
	EXIT

	CHAIN
		IF ~~ THEN BMAZZY XA_MazzyWonCompetition2
			@552 /* ~And I am glad to have you at my side, <CHARNAME>.~ */
			DO ~
				SetGlobal("XA_LC_Journal_TMMazzy", "GLOBAL", 1)
				SetGlobal("XA_LC_TM_ArcheryChallenge", "GLOBAL", 3)
			~
			== XACORWIB
			@553 /* ~As am I, my friend. Let's go.~ */
	EXIT
	//}
	
//}

//{ Nalia Banters

	//{ Dialog B-11
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinNalia", "GLOBAL", 2)
			GlobalGT("XA_LC_ReturnToBG", "GLOBAL", 0)
			IsValidForPartyDialogue("Nalia")
		~
		THEN XACORWIB BCorwinNalia1_RBG
			@375 /* ~Nalia — you seem agitated. What's bothering you?~ [XA100040] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinNalia", "GLOBAL", 3)
			~
			== BNALIA
			@784 /* ~It seems that everywhere we go, we're confronted with maddening wealth disparities. I used to think that it was unique to Amn, but clearly I was mistaken.~ */
			= 
			@785 /* ~I can't understand why the people don't band together to demand change.~ */
	END XACORWIB BCorwinNalia1_END
	//}

	//{ Dialog B-12
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinNalia", "GLOBAL", 2)
			GlobalLT("XA_LC_ReturnToBG", "GLOBAL", 1)
			IsValidForPartyDialogue("Nalia")
		~
		THEN XACORWIB BCorwinNalia1
			@375 /* ~~Nalia — you seem agitated. What's bothering you?~ [XA100040] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinNalia", "GLOBAL", 3)
			~
			== BNALIA
			@381 /* ~The wealth disparity throughout Amn is maddening. Gilded cities full of slaves, and people who can't afford even a decent meal.~ */
			== BNALIA
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@376 /* ~Captain, what is it like in Baldur's Gate? Are things as bad as they are in Athkatla?~*/
			== BNALIA
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@740 /* ~Major, what is it like in Baldur's Gate? Are things as bad as they are in Athkatla?~*/
			== XACORWIB
			@377 /* ~Not as bad as what I've seen during my time in Amn, but yes, there's a stark difference between the haves and have-nots.~ */
			== BNALIA
			@378 /*  ~I'm sorry to hear that. I can't understand why the people don't band together to demand change.~*/
	END XACORWIB BCorwinNalia1_END
	
	CHAIN
		IF ~~ THEN XACORWIB BCorwinNalia1_END
			@379 /* ~I suppose it's human nature. Most people are only concerned with the well-being of their loved ones.~ [XA100041] */
			= 
			@380 /* They don't have the time, energy, or willingness to risk themselves to change the status quo.~*/
			== BNALIA
			@382 /* ~I see... it seems that there's a lack of leadership among the poor and downtrodden. I'll think on what you said.~ */
	EXIT
	//}
	
	//{ Dialog B-13A
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinNalia", "GLOBAL", 4)
			GlobalLT("XA_LC_CorwinPromoted", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
		~
		THEN BNALIA BCorwinNalia2
			@16 /* ~Captain, do you have a moment?~*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinNalia", "GLOBAL", 5)
			~
			== XACORWIB
			@384 /* ~Sure, Nalia. What's on your mind?~ [XA100026] */
			== BNALIA
			@385 /* ~I was thinking about our earlier discussion. You mentioned how people are afraid to stand against the status quo. I think you're correct.~ */
			=
			@386 /* ~But isn't that because there are those that will fight to protect the status quo?~*/
			=
			@387 /* ~... Like yourself and the Flaming Fist, I'm afraid.~ */
			== XACORWIB
			@388 /*  ~Our society has it's flaws to be sure, but people need order and safety as much as they do food and shelter. The way of things must be preserved. The alternative is chaos.~ [XA100042] */
			== BNALIA
			@389 /* ~There has to be a better way.~ */
			== XACORWIB 
			@390 /*  ~Maybe there is, and I hope you're able to find it and make it a reality.~*/
			=
			@391 /* ~In the meantime, the Flaming Fist and like-minded organizations will continue to fight to preserve the current order. And so will I. ~  */
	EXIT
	//}
	
	//{ Dialog B-13B
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinNalia", "GLOBAL", 4)
			GlobalGT("XA_LC_CorwinPromoted", "GLOBAL", 0)
			IsValidForPartyDialogue("XACORWIN")
		~
		THEN BNALIA BCorwinNalia2
			@74 /* ~Captain, do you have a moment?~*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinNalia", "GLOBAL", 5)
			~
			== XACORWIB
			@384 /* ~Sure, Nalia. What's on your mind?~ [XA100026] */
			== BNALIA
			@385 /* ~I was thinking about our earlier discussion. You mentioned how people are afraid to stand against the status quo. I think you're correct.~ */
			=
			@386 /* ~But isn't that because there are those that will fight to protect the status quo?~*/
			=
			@387 /* ~... Like yourself and the Flaming Fist, I'm afraid.~ */
			== XACORWIB
			@388 /*  ~Our society has it's flaws to be sure, but people need order and safety as much as they do food and shelter. The way of things must be preserved. The alternative is chaos.~ [XA100042] */
			== BNALIA
			@389 /* ~There has to be a better way.~ */
			== XACORWIB 
			@390 /*  ~Maybe there is, and I hope you're able to find it and make it a reality.~*/
			=
			@391 /* ~In the meantime, the Flaming Fist and like-minded organizations will continue to fight to preserve the current order. And so will I. ~  */
	EXIT
	//}

	//{ Dialog B-14
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinNalia", "GLOBAL", 6)
			GlobalGT("XA_LC_ReturnToBG", "GLOBAL", 0)
			IsValidForPartyDialogue("Nalia")
		~
		THEN XACORWIB BCorwinNalia3_RBG
			@560 /* ~Nalia? You alright?~ [BD64597]*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinNalia", "GLOBAL", 7)
			~
			== BNALIA
			@459 /*  ~Not really.. I just have a lot on my mind. I've been hearing rumors that Amnish leaders are planning to criminalize vagrancy. Those that can't afford to pay the fines will be imprisoned~ */
			== XACORWIB
			@461 /* ~That seems ridiculous. There isn't enough room in the jails for that many people.~ */
			== BNALIA
			@462 /* ~These people have very little already. How can people be so cruel to imprison those less fortunate for being poor?~ */
			== XACORWIB
			@786 /* ~You have a good heart, Nalia. Some problems are simply beyond our ability to solve.~ */
			== BNALIA
			@787 /* ~That's it? It's too hard, so just give up?~ */
			== XACORWIB
			@788 /* ~No... but you need to focus your energy on problems that you can solve. There was a prayer that my mother taught me... what was it...~ */
			= 
			@789 /*  ~Oh yes... "Grant me the serenity to accept the things that I cannot change, the courage to change the things I can, and the wisdom to know the difference."~ */
			== BNALIA
			@790 /*~That... that's actually helpful advice. Thank you, Schael.~ */
			== XACORWIB
			@791 /*~Anytime, Nalia.~*/
	EXIT
	//}

	//{ Dialog B-15
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinNalia", "GLOBAL", 6)
			GlobalLT("XA_LC_ReturnToBG", "GLOBAL", 1)
			IsValidForPartyDialogue("Nalia")
		~
		THEN XACORWIB BCorwinNalia3
			@560 /* ~Nalia? You alright?~ [BD64597]*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinNalia", "GLOBAL", 7)
			~
			== BNALIA
			@459 /*  ~Not really.. I just have a lot on my mind. I've been hearing rumors that Amnish leaders are planning to criminalize vagrancy. Those that can't afford to pay the fines will be imprisoned~ */
			== XACORWIB
			@461 /* ~That seems ridiculous. There isn't enough room in the jails for that many people.~ */
			== BNALIA
			@462 /* ~These people have very little already. How can people be so cruel to imprison those less fortunate for being poor?~ */
			=
			@463 /* Do they do the same up north? In Beregost? Baldur's Gate?~ */
			== XACORWIB
			@464 /*  ~No, the poor are generally left alone, unless they start making trouble.~ */
			== BNALIA
			@465 /* ~Making trouble? How do you mean?~*/
			== XACORWIB 
			@466 /*  ~Oh, you know. Aggressive begging, disturbing the peace, loitering around businesses for too long. At some point homeowners, shopkeepers and local officials start complaining, then we have to step in.~*/
			== BNALIA
			@467 /* ~(Sigh) It sounds like things aren't much better for the poor up north.~ */
			== XACORWIB 
			@468 /* ~It was worse a few months ago at the height of the refugee crisis. The poor had to compete with the refugees for hand outs. Fights broke out. Things got ugly, on more than one occasion.~ */
			== BNALIA
			@469 /* That's terrible.~ */
			== XACORWIB
			@472 /* ~The situation is slowly getting better as more refugees are resettled - not fast enough for my liking, but some progress is better than none. Come on, let's keep moving.~  */
	EXIT
	//}

//}

//{ HaerDalis Banters

	//{ Dialog B-16
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinHaerDalis", "GLOBAL", 2)
			!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
		~
		THEN BHAERDA BCorwinHaerDalis1_C
			@564 /* ~A moment of your time, Captain?~ [XA100067]*/
	END XACORWIB BCorwinHaerDalis1
	//}

	//{ Dialog B-17
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinHaerDalis", "GLOBAL", 2)
			Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
		~
		THEN BHAERDA BCorwinHaerDalis1_M
			@742 /* ~A moment of your time, Major?~ [XA100067]*/
	END XACORWIB BCorwinHaerDalis1
	//}

	//{ End of B-16, B-17
	CHAIN XACORWIB BCorwinHaerDalis1
		@363 /* ~Sure. What do you need?~ [BD56086]*/
		DO ~
			SetGlobal("XA_LC_Banter_CorwinHaerDalis", "GLOBAL", 3)
		~		
		== BHAERDA
		@364 /* ~Did you know, my raven, that your arrows sing to me as they fly?~ */
		=
		@357 /* ~They sing a song of death and destruction that belies the lovely countenance of the one who set them aflight.~~*/
		== XACORWIB
		@7 /*~Flatterer...~ [XA100073]*/
		=
		@358 /* ~You certainly have a talent for making the mundane seem dramatic.~ [XACORB61]*/
		== BHAERDA
		@359 /*  ~There is nothing mundane about you - a bird of prey, as deadly as she is beautiful.~*/
		== XACORWIB
		@356 /* ~That's kind of you to say...~ [BD67552] */
		=
		@360 /* ~... But you should know that playwrights and poets aren't my type.~*/
		== BHAERDA
		@361 /* ~Ah, but I am no ordinary playwright, just as you are no ordinary raven. Together, we could soar to heights that neither of us thought possible.~ */
		= 
		@362 /* ~For you to keep an open mind is all that I ask.~ */
		== XACORWIB
		@365 /* ~I always do. Come on, let's keep moving.~*/
	EXIT
	//}

	//{ Dialog B-18
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinHaerDalis", "GLOBAL", 4)
			Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
			IsValidForPartyDialogue("HaerDalis")
			OR(2)
				Global("HaerDalisRomanceActive","GLOBAL",2)
				Global("HaerDalisRomanceActive","GLOBAL",1)
		~
		THEN XACORWIB BCorwinHaerDalis2
			@366 /* ~Haer'Dalis? What is it?~ [XA100039] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinHaerDalis", "GLOBAL", 5)
			~
			== BHAERDA
			@367 /*~Have you given any thought to what we discussed earlier? What you will do once this adventure is over, my raven?~ */
			== XACORWIB
			@368 /* ~I have. My goal is to complete my mission, then return home, with <CHARNAME>, to my daughter and father.~*/
			=
			@370 /* ~As interesting as your travels sound, my loved ones are here, in this plane, and I won't abandon them.~*/
			=
			@371 /* ~Besides, I see how you and Aerie look at eachother. I wouldn't want to stand in the way of a relationship between the two of you.~ */
			== BHAERDA
			@372 /*   ~Ah... I see. You'd have made a wondrous addition to my flock, but I understand the desire to return to the nest you have created for you and your loved ones.~*/
			= @373 /* ~Let us enjoy then our time together, before our flights diverge for the last time, my raven.~ */
			== XACORWIB
			@374 /*  Gladly, friend. Let's go.~ [XA100072] */
	EXIT
	//}

	//{ Dialog B-19
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinHaerDalis", "GLOBAL", 4)
			Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
			IsValidForPartyDialogue("HaerDalis")
			!Global("HaerDalisRomanceActive","GLOBAL",2)
			!Global("HaerDalisRomanceActive","GLOBAL",1)
		~
		THEN XACORWIB BCorwinHaerDalis2
			@366 /* ~Haer'Dalis? What is it?~ [XACORB56]*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinHaerDalis", "GLOBAL", 5)
			~
			== BHAERDA
			@367 /*~Have you given any thought to what we discussed earlier? What you will do once this adventure is over, my raven?~ */
			== XACORWIB
			@368 /* ~I have. My goal is to complete my mission, then return home, with <CHARNAME>, to my daughter and father.~*/
			=
			@370 /* ~As interesting as your travels sound, my loved ones are here, in this plane, and I won't abandon them.~ [XACORB62]*/
			== BHAERDA
			@372 /*   ~Ah... I see. You'd have made a wondrous addition to my flock, but I understand the desire to return to the nest you have created for you and your loved ones.~*/
			= @373 /* ~Let us enjoy then our time together, before our flights diverge for the last time, my raven.~ */
			== XACORWIB
			@374 /*  ~Gladly, friend. Let's go.~ [XA100072] */
	EXIT
	//}

	//{ Dialog B-20
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinHaerDalis", "GLOBAL", 4)
			!Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
			IsValidForPartyDialogue("HaerDalis")
			OR(2)
				Global("HaerDalisRomanceActive","GLOBAL",2)
				Global("HaerDalisRomanceActive","GLOBAL",1)
		~
		THEN XACORWIB BCorwinHaerDalis2
			@366 /* ~Haer'Dalis? What is it?~ [XACORB56] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinHaerDalis", "GLOBAL", 5)
			~
			== BHAERDA
			@367 /*~Have you given any thought to what we discussed earlier? What you will do once this adventure is over, my raven?~ */
			== XACORWIB
			@369 /*  ~I have. My goal is to complete my mission, then return home to my daughter and father.~*/
			=
			@370 /* ~As interesting as your travels sound, my loved ones are here, in this plane, and I won't abandon them.~ [XACORB62]*/
			=
			@371 /* ~Besides, I see how you and Aerie look at eachother. I wouldn't want to stand in the way of a relationship between the two of you.~ */
			== BHAERDA
			@372 /*   ~Ah... I see. You'd have made a wondrous addition to my flock, but I understand the desire to return to the nest you have created for you and your loved ones.~*/
			= @373 /* ~Let us enjoy then our time together, before our flights diverge for the last time, my raven.~ */
			== XACORWIB
			@374 /*  ~Gladly, friend. Let's go.~ [XA100072]*/
	EXIT
	//}

	//{ Dialog B-21
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinHaerDalis", "GLOBAL", 4)
			!Global("HaerDalisRomanceActive","GLOBAL",2)
			!Global("HaerDalisRomanceActive","GLOBAL",1)
			!Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
			IsValidForPartyDialogue("HaerDalis")
		~
		THEN XACORWIB BCorwinHaerDalis2
			@366 /* ~Haer'Dalis? What is it?~ [XACORB56] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinHaerDalis", "GLOBAL", 5)
			~
			== BHAERDA
			@367 /*~Have you given any thought to what we discussed earlier? What you will do once this adventure is over, my raven?~ */
			== XACORWIB
			@369 /*  ~I have. My goal is to complete my mission, then return home to my daughter and father.~*/
			=
			@370 /* ~As interesting as your travels sound, my loved ones are here, in this plane, and I won't abandon them.~ */
			== BHAERDA
			@372 /*   ~Ah... I see. You'd have made a wondrous addition to my flock, but I understand the desire to return to the nest you have created for you and your loved ones.~*/
			= @373 /* ~Let us enjoy then our time together, before our flights diverge for the last time, my raven.~ */
			== XACORWIB
			@374 /*  ~Gladly, friend. Let's go.~ */
	EXIT
	//}
	
//}

//{ Minsc Banters

	//{ Dialog B-2
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinMinsc", "GLOBAL", 2)
			Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			IsValidForPartyDialogue("Minsc")
		~
		THEN XACORWIB BCorwinMinsc1_M
			@343 /* ~Minsc, I'm sorry about Dynaheir. I know that you two were very close.~ [XACORB45] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinMinsc", "GLOBAL", 3)
			~
			== BMINSC
			@792 /* ~Thank you, dear Major soldier lady. Boo is glad that skull crushing justice was exacted upon the wizard that murdered her.~ */
			== XACORWIB
			@345/* ~Um.. right. So am I.~*/
			== BMINSC
			@744 /* ~Major soldier lady, Boo would like to compliment you.~ */
			== XACORWIB
			@347 /* ~Your hamster?~*/
			== BMINSC
			@348 /*  ~Yes. Boo says that your hair is very soft and fine, like the hair on a space hamster's bottom.~*/
			== XACORWIB
			@349 /* ~WHAT!?~*/
			== BMINSC
			@350 /* ~Yes, and also that your eyelashes remind him of a donkey's beautiful -~ */
			== XACORWIB
			@351 /* ~Choose your next words very, very carefully.~*/
			== BMINSC
			@352 /* ~A donkey's beautiful.. erm .. beautiful .. well. Boo thinks you are beautiful.~ */
			== XACORWIB
			@354 /* ~... ... That's very kind. Let's go.~ */
	EXIT
	//}

	//{ Dialog B-22
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinMinsc", "GLOBAL", 2)
			!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			IsValidForPartyDialogue("Minsc")
		~
		THEN XACORWIB BCorwinMinsc1_C
			@343 /* ~Minsc, I'm sorry about Dynaheir. I know that you two were very close.~ [XACORB45] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinMinsc", "GLOBAL", 3)
			~
			== BMINSC
			@353 /* ~Thank you, dear Captain soldier lady. Justice demands that I crush the skull of the wizard that killed her. I am glad that you are here to help inflict the most painful goodness on the forces of evil.~ */
			== XACORWIB
			@345/* ~Um.. right. So am I.~*/
			== BMINSC
			@346 /* ~Captain soldier lady, Boo would like to compliment you.~ */
			== XACORWIB
			@347 /* ~Your hamster?~*/
			== BMINSC
			@348 /*  ~Yes. Boo says that your hair is very soft and fine, like the hair on a space hamster's bottom.~*/
			== XACORWIB
			@349 /* ~WHAT!?~*/
			== BMINSC
			@350 /* ~Yes, and also that your eyelashes remind him of a donkey's beautiful -~ */
			== XACORWIB
			@351 /* ~Choose your next words very, very carefully.~*/
			== BMINSC
			@352 /* ~A donkey's beautiful.. erm .. beautiful .. well. Boo thinks you are beautiful.~ */
			== XACORWIB
			@354 /* ~... ... That's very kind. Let's go.~ */
	EXIT
	//}

	//{ Dialog B-23
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinMinsc", "GLOBAL", 4)
			IsValidForPartyDialogue("XACORWIN")
		~
		THEN BMINSC BCorwinMinsc2_M
			@399  /*~Soldier lady, Boo has a question for you.~ */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinMinsc", "GLOBAL", 5)
			~
			== XACORWIB
			@325 /* ~Oh let's not, please.~ [BD63913] */
			== BMINSC
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@745 /* ~Boo says that his question for Major soldier lady is urgent.~  */
			== BMINSC
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@793 /* ~Boo says that his question for Captain soldier lady is urgent.~   */
			== XACORWIB
			@327 /* ~(sigh) Fine. What is it Boo.~*/
			== BMINSC
			@328 /* ~Boo says, "You are a Ranger yet you do not carry a space hamster. Why is this?"~ */
			== XACORWIB
			@329 /* ~Really, Minsc?~*/
			= @330 /*  ~Whatever. Sure, I had a hamster once, when I was a child. His name was Cakey. He died.~ */
			== BMINSC
			@331 /* ~Boo expresses his condolences on the loss of your dear not-a-space hamster.~*/
			== XACORWIB
			@332 /* ~I'm sure he does. Can we get going now?~*/
	EXIT
	//}

	//{ Dialog B-24
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinMinsc", "GLOBAL", 6)
			IsValidForPartyDialogue("Minsc")
		~
		THEN XACORWIB BCorwinMinsc3
			@333 /* ~I have a question for you.~ [XACORB44] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinMinsc", "GLOBAL", 7)
			~
			== BMINSC
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@334 /* ~Of course, Captain soldier lady. How can Minsc and Boo help a fellow warrior of the greatest goodness?~ */
			== BMINSC
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@746 /* ~Of course, Major soldier lady. How can Minsc and Boo help a fellow warrior of the greatest goodness?~  */
			== XACORWIB
			@335 /* ~How long did you and Dynaheir travel together?~*/
			== BMINSC
			@336 /* ~I prefer to gauge time by measuring the change in the length of Boo's whiskers.~ */
			== XACORWIB
			@337 /* ~...What.~*/
			== BMINSC
			@338 /* ~Yes, so I and Dynaheir travelled together for more than a thumb, but less than a furlong. Quite a long time.~*/
			== XACORWIB
			@339 /* ~And in that.. time, how in Toril did she put up with your insanity?~*/
			= @355 /* ~Every time you open your mouth I want to scream!~ [xalc1235] */
			== BMINSC
			@340 /* ~Ah, my charge was a master of the magical arts, as you know. When she needed some peace and quiet, she would simply mutter a Silence spell.~ */
			= @341 /* ~I did not mind, as Boo is perfectly capable of speaking on my behalf.~ */
			== XACORWIB
			@342 /* ~Gods, help us.~ */
	EXIT
	//}
	
//}

//{ Rasaad Banters

	//{ Dialog B-25
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinRasaad", "GLOBAL", 2)
			!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
		~
		THEN BRASAAD BCorwinRasaad1_C
			@795 /* Captain, you seem troubled.~*/
			== XACORWIB
			@283 /* ~Rasaad.. it's nothing, I...~ [XACORB28] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinRasaad", "GLOBAL", 3)
			~
			== BRASAAD
			@284 /* ~Yes?~ */
			== XACORWIB
			@285 /* ~It's just that I miss my daughter, my father. My city. I thought that after the Dragonspear campaign that I'd be done with these long duration deployments.~*/
			= @286 /* ~I don't regret taking this assignment, and I am proud to stand at <CHARNAME>'s side, yet it doesn't make being away from home any easier.~ */
			== BRASAAD
			@292 /* ~I understand. It's natural to feel that way.~ */
			= @287 /* ~Allow me to share with you a simple breathing exercise to help you focus, and relax. It will help relieve some of the anxiety you are feeling.~ */
			== XACORWIB
			@288 /* ~I - I don't think that's necessary - maybe some other time. ~ */
			== BRASAAD
			@289 /* ~Please Captain. Let me help you.~*/
			== XACORWIB
			@290 /* ~No, please don't. I mean... I'm fine. Thank you.~ [BD58946] */
			== BRASAAD
			@291 /* ~Very well. When you have the time, come and see me.~ */
	EXIT
	//}

	//{ Dialog B-26
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinRasaad", "GLOBAL", 2)
			Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
		~
		THEN BRASAAD BCorwinRasaad1_M
			@794 /* ~Major, you seem troubled.~*/
			== XACORWIB
			@283 /* ~Rasaad.. it's nothing, I...~ [XACORB28] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinRasaad", "GLOBAL", 3)
			~
			== BRASAAD
			@284 /* ~Yes?~ */
			== XACORWIB
			@285 /* ~It's just that I miss my daughter, my father. My city. I thought that after the Dragonspear campaign that I'd be done with these long duration deployments.~*/
			= @286 /* ~I don't regret taking this assignment, and I am proud to stand at <CHARNAME>'s side, yet it doesn't make being away from home any easier.~ */
			== BRASAAD
			@292 /* ~I understand. It's natural to feel that way.~ */
			= @287 /* ~Allow me to share with you a simple breathing exercise to help you focus, and relax. It will help relieve some of the anxiety you are feeling.~ */
			== XACORWIB
			@288 /* ~I - I don't think that's necessary - maybe some other time. ~ */
			== BRASAAD
			@747 /* ~Please Major. Let me help you.~*/
			== XACORWIB
			@290 /* ~Not right now. We have work to do. Let's get moving.~ */
			== BRASAAD
			@291 /* ~Very well. When you have the time, come and see me.~ */
	EXIT
	//}

	//{ Dialog B-27
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinRasaad", "GLOBAL", 4)
			IsValidForPartyDialogue("Rasaad")
		~
		THEN XACORWIB BCorwinRasaad1
			@303 /* ~Rasaad, about that breathing exercise.~ [XACORB27] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinRasaad", "GLOBAL", 5)
				SetGlobal("XA_LC_BreathingExercise", "GLOBAL", 1)
			~
			== BRASAAD
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@293 /*  ~Yes Captain - do you have some time now?~*/
			== BRASAAD
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@748 /*  ~Yes Major - do you have some time now?~*/
			== XACORWIB
			@294 /* ~Please, if you would teach me. I've been feeling especially anxious today.~ */
			== BRASAAD
			@295 /* ~Of course. It's a simple but effective exercise. It has helped me to control my anxiety and improve my focus.~ */
			= @296 /* ~You take a deep breath, count to six. Breathe out for six counts. Breathe in, one, two, three, four, five, six. Breathe out, one, two, three, four, five, six.~ */
			= @297 /* ~Try it - breathe in for six counts, then exhale for six.~ */
			== XACORWIB
			@298 /*  ~Here goes... breathe in.. .. .. .. .. ..~ */
			= @299 /* ~Breathe out.. .. .. .. .. ..~ */
			== BRASAAD
			@300 /* ~Yes, just like that. ~ */
			== XACORWIB
			@301 /* ~Thank you. I appreciate this. Let's go.~ [BD58487] */
			== BRASAAD
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@302 /* ~My pleasure, Captain.~ */
			== BRASAAD
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@749 /* ~My pleasure, Major.~ */
	EXIT
	//}

	//{ Dialog B-28
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinRasaad", "GLOBAL", 6)
			IsValidForPartyDialogue("Rasaad")
		~
		THEN XACORWIB BCorwinRasaad1
			@304 /* ~Rasaad - I wanted to thank you. [XACORB29] ~ */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinRasaad", "GLOBAL", 7)
			~
			== BRASAAD
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@305 /*  ~Captain?~*/
			== BRASAAD
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@750 /*  ~Major?~*/
			== XACORWIB
			@306 /* ~I've been practicing that breathing exercise you showed me. It's been a big help.~ */
			== BRASAAD
			@307 /* ~Oh, I'm glad I was able to help.~ */
			== XACORWIB
			@308 /*  ~Me too. One of these days, I'll show you some of the stretching exercises I do to loosen up my back and shoulder muscles.~ */
			== BRASAAD
			@309 /* ~Yes, I've noticed you performing those. They help with drawing your bow, I assume?~*/
			== XACORWIB
			@310 /* ~Yes, exactly. Though I'm sure you'd benefit as well.~ */
			== BRASAAD
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@311 /* ~I look forward to it, Captain.~ */
			== BRASAAD
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@751 /* ~I look forward to it, Major.~ */
			== XACORWIB
			@312 /* ~You can drop the formalities. Schael will do just fine.~ */
			== BRASAAD
			@313 /* ~Thank you, Schael. I appreciate that.~ */
	EXIT
	//}

	//{ Dialog B-29
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinRasaad", "GLOBAL", 8)
			!IsValidForPartyDialogue("Korgan")
			!IsValidForPartyDialogue("Yoshimo")
			IsValidForPartyDialogue("Rasaad")
			OR(2)
				!IsValidForPartyDialogue("Viconia")
				!IsValidForPartyDialogue("Valygar")
		~
		THEN XACORWIB BCorwinRasaad4A
			@483 /* ~Rasaad - do you have some time now? I can show you that back exercise we were talking about. ~ [XA100067] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinRasaad", "GLOBAL", 9)
			~
			== BRASAAD
			@484 /*  ~Yes Schael, now is a good time.~*/
			== XACORWIB
			@485 /* ~Good. I'll demonstrate, you can follow along. Start by standing up staight. Place your arms behind your head, with your elbows bent, like this.~ */
			== BRASAAD
			@486 /* ~Ah, like this?.~ */
			== XACORWIB
			@487 /*  ~Yes. Now, slowly bend to your right side by moving your right elbow toward your right hip until you feel a slight stretch in your upper back. Hold the position for 10 seconds.~*/
			=
			@488 /* ~Good. Now, keeping your hands behind your head, slowly move your body back to your upright starting position. Repeat the exercise, but for your left side this time.~ */
			== BRASAAD
			@489 /* ~Got it. Like this?~*/
			== XACORWIB
			@490 /* ~Just like that.~ */
			== BRASAAD
			@562 /* ~Great. Thank you, Schael. I'll be sure to incorporate this into my morning routine.~ */
	EXIT
	//}

	//{ Dialog B-30
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinRasaad", "GLOBAL", 8)
			IsValidForPartyDialogue("Korgan")
			!IsValidForPartyDialogue("Yoshimo")
			IsValidForPartyDialogue("Rasaad")
			OR(2)
				!IsValidForPartyDialogue("Viconia")
				!IsValidForPartyDialogue("Valygar")
		~
		THEN XACORWIB BCorwinRasaad4B
			@483 /* ~Rasaad - do you have some time now? I can show you that back exercise we were talking about. ~ [XA100067] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinRasaad", "GLOBAL", 9)
			~
			== BRASAAD
			@484 /*  ~Yes Schael, now is a good time.~*/
			== XACORWIB
			@485 /* ~Good. I'll demonstrate, you can follow along. Start by standing up staight. Place your arms behind your head, with your elbows bent, like this.~ */
			== BRASAAD
			@486 /* ~Ah, like this?.~ */
			== XACORWIB
			@487 /*  ~Yes. Now, slowly bend to your right side by moving your right elbow toward your right hip until you feel a slight stretch in your upper back. Hold the position for 10 seconds.~*/
			== BKORGAN
			@492 /* ~Ah... ~*/
			== XACORWIB
			@563 /* Korgan? What is it?*/
			== BKORGAN
			@494 /*  ~Oh, don't mind me, lass. I'm just admiring the view, heh.~ */
			== XACORWIB
			@495 /* ~Ugh - grow up. Rasaad, let's continue.~ */
			=
			@488 /* ~Now, keeping your hands behind your head, slowly move your body back to your upright starting position. Repeat the exercise, but for your left side this time.~ */
			== BRASAAD
			@489 /* ~Got it. Like this?~*/
			== XACORWIB
			@490 /* ~Just like that.~ */
			== BRASAAD
			@562 /* ~Great. Thank you, Schael. I'll be sure to incorporate this into my morning routine.~ */
	EXIT
	//}

	//{ Dialog B-31
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinRasaad", "GLOBAL", 8)
			IsValidForPartyDialogue("Korgan")
			IsValidForPartyDialogue("Yoshimo")
			IsValidForPartyDialogue("Rasaad")
			OR(2)
				!IsValidForPartyDialogue("Viconia")
				!IsValidForPartyDialogue("Valygar")
		~
		THEN XACORWIB BCorwinRasaad4B
			@483 /* ~Rasaad - do you have some time now? I can show you that back exercise we were talking about. ~ [XA100067] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinRasaad", "GLOBAL", 9)
			~
			== BRASAAD
			@484 /*  ~Yes Schael, now is a good time.~*/
			== XACORWIB
			@485 /* ~Good. I'll demonstrate, you can follow along. Start by standing up staight. Place your arms behind your head, with your elbows bent, like this.~ */
			== BRASAAD
			@486 /* ~Ah, like this?.~ */
			== XACORWIB
			@487 /*  ~Yes. Now, slowly bend to your right side by moving your right elbow toward your right hip until you feel a slight stretch in your upper back. Hold the position for 10 seconds.~*/
			== BKORGAN
			@492 /* ~Ah... ~*/
			== XACORWIB
			@563 /* Korgan? What is it?*/
			== BKORGAN
			@494 /*  ~Oh, don't mind me, lass. I'm just admiring the view, heh.~ */
			== XACORWIB
			@495 /* ~Ugh - grow up. Rasaad, let's continue.~ */
			=
			@488 /* ~Now, keeping your hands behind your head, slowly move your body back to your upright starting position. Repeat the exercise, but for your left side this time.~ */
			== BRASAAD
			@489 /* ~Got it. Like this?~*/
			== XACORWIB
			@490 /* ~Just like that.~ */
			== BRASAAD
			@562 /* ~Great. Thank you, Schael. I'll be sure to incorporate this into my morning routine.~ */
	EXIT
	//}

	//{ Dialog B-32
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinRasaad", "GLOBAL", 8)
			!IsValidForPartyDialogue("Korgan")
			IsValidForPartyDialogue("Yoshimo")
			IsValidForPartyDialogue("Rasaad")
			OR(2)
				!IsValidForPartyDialogue("Viconia")
				!IsValidForPartyDialogue("Valygar")
		~
		THEN XACORWIB BCorwinRasaad4C
			@483 /* ~Rasaad - do you have some time now? I can show you that back exercise we were talking about. ~ [XA100067] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinRasaad", "GLOBAL", 9)
			~
			== BRASAAD
			@484 /*  ~Yes Schael, now is a good time.~*/
			== XACORWIB
			@485 /* ~Good. I'll demonstrate, you can follow along. Start by standing up staight. Place your arms behind your head, with your elbows bent, like this.~ */
			== BRASAAD
			@486 /* ~Ah, like this?.~ */
			== XACORWIB
			@487 /*  ~Yes. Now, slowly bend to your right side by moving your right elbow toward your right hip until you feel a slight stretch in your upper back. Hold the position for 10 seconds.~*/
			== BYOSHIM
			@492 /* ~Ah... ~*/
			== XACORWIB
			@493 /* Yoshimo? What is it?*/
			== BYOSHIM
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@496 /*  ~Oh, don't mind me, Captain. I'm just admiring the view.~ */
			== BYOSHIM
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@752 /*  ~Oh, don't mind me, Major. I'm just admiring the view.~ */
			== XACORWIB
			@495 /* ~Ugh - grow up. Rasaad, let's continue.~ */
			=
			@488 /* ~Now, keeping your hands behind your head, slowly move your body back to your upright starting position. Repeat the exercise, but for your left side this time.~ */
			== BRASAAD
			@489 /* ~Got it. Like this?~*/
			== XACORWIB
			@490 /* ~Just like that.~ */
			== BRASAAD
			@562 /* ~Great. Thank you, Schael. I'll be sure to incorporate this into my morning routine.~ */
	EXIT
	//}

	//{ Dialog B-33
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinRasaad", "GLOBAL", 8)
			!IsValidForPartyDialogue("Korgan")
			!IsValidForPartyDialogue("Yoshimo")
			IsValidForPartyDialogue("Viconia")
			IsValidForPartyDialogue("Valygar")
			IsValidForPartyDialogue("Rasaad")
		~
		THEN XACORWIB BCorwinRasaad4D
			@483 /* ~Rasaad - do you have some time now? I can show you that back exercise we were talking about. ~ [XA100067] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinRasaad", "GLOBAL", 9)
			~
			== BRASAAD
			@484 /*  ~Yes Schael, now is a good time.~*/
			== XACORWIB
			@485 /* ~Good. I'll demonstrate while you follow along. Start by standing up staight. Place your arms behind your head, with your elbows bent, like this.~ */
			== BRASAAD
			@486 /* ~Ah, like this, correct?~ */
			== XACORWIB
			@487 /*  ~Yes. Now, slowly bend to your right side by moving your right elbow toward your right hip until you feel a slight stretch in your upper back. Hold the position for 10 seconds.~*/
			== BVICONI
			@497 /* ~So you do like females after all, Valygar. I see the way you're looking at her.~*/
			== BVALYGA
			@498 /* ~I - I don't know what you're talking about.~*/
			== BVICONI
			@499 /*  ~Don't be ashamed of your attraction to her. You are a male, after all.~ */
			== BVALYGA
			@500 /* ~Be quiet, drow.~ */
			== BVICONI
			@501 /*  ~Of course. Forgive my interruption of your viewing experience.~ */
			== XACORWIB
			@488 /* ~Now, keeping your hands behind your head, slowly move your body back to your upright starting position. Repeat the exercise, but for your left side this time.~ */
			== BRASAAD
			@489 /* ~Got it. Like this?~*/
			== XACORWIB
			@490 /* ~Just like that.~ */
			== BRASAAD
			@562 /* ~Great. Thank you, Schael. I'll be sure to incorporate this into my morning routine.~ */
	EXIT
	//}

//}

//{ Yoshimo Banters

	//{ region Dialog B-34
	CHAIN 
		IF ~
			Global("XA_LC_Banter_CorwinYoshimo", "GLOBAL", 2)
			IsValidForPartyDialogue("Yoshimo")
		~
		THEN XACORWIB BCorwinYoshimo1
			@269 /* ~Yoshimo - what is it?~ [XACORB30] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinYoshimo", "GLOBAL", 3)
			~
			== BYOSHIM
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@270 /* ~My lovely Captain, a question if you will.~ */
			== BYOSHIM
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@753 /* ~My lovely Major, a question if you will.~ */
			== BYOSHIM
			@282 /* ~Do the tales of my exploits reach as far north as Baldur's Gate?~*/
			== XACORWIB
			@273 /* ~No, they don't.~ */
			== BYOSHIM
			@274 /* ~I find that hard to believe. Surely, you have heard at least some of the stories?~ */
			== XACORWIB
			@275 /* ~No, I've never heard of you.~*/
			== BYOSHIM
			@276 /* ~You mean to tell me you haven't heard of my daring raid on the archives of the Unseen?~ */
			== XACORWIB
			@889 /* No. */
			== BYOSHIM
			@891 /*~What about my heroic defense of the town of Easthaven?~*/
			== XACORWIB
			@890 /* ~No! Gods damnit, man —~ */
			== BYOSHIM
			@892 /* ~But you must've heard that I rescued the virgin maiden of—~ */
			== XACORWIB
			@277 /* ~For Tymora's sake, enough! Be quiet, or people will hear the story of Yoshimo the Silent, the braggart thief whose jaw was crushed because he wouldn't shut up!~ */
			== BYOSHIM
			@271 /* ~That doesn't sound like a story I'd want to hear.~ */
			== XACORWIB
			@278 /* ~Then stay focused on our mission. Let's go.~ */
	EXIT
	//}
	
//}

//{ Cernd Banters

	//{ Dialog B-35
	CHAIN
		IF ~
			Global("XA_LC_CorwinCerndBaby", "GLOBAL", 2)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			IsValidForPartyDialogue("Cernd")
		~
		THEN XACORWIB BCorwinCernd1A
			@258 /* ~Cernd, you have a beautiful child.~ [XACORB33] */
			DO ~
				SetGlobal("XA_LC_CorwinCerndBaby", "GLOBAL", 3)
			~
			== BCERND
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@259 /* ~Thank you, Captain Corwin. ~ */
			== BCERND
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@754 /* ~Thank you, Major Corwin. ~ */
			== XACORWIB
			@260 /* ~I remember when my daughter Rohma was just a baby. Holding your baby in your arms changes you, doesn't it?~ */
			== BCERND
			@261 /* ~It does! When I held Ahsdale, I felt a... clarity, that I had never experienced before, like my purpose in this world had changed.~ */
			== XACORWIB
			@262 /* ~That's almost exactly how I felt with Rohma.. like my life had suddenly gained a meaning that it lacked before.~ */
			== BCERND
			@263 /* ~It must not be easy being away from your child. I know that isn't easy for me.~ */
			== XACORWIB
			@264 /* ~No, it isn't. But duty requires that I be here, with <CHARNAME>. Duties aside, I would still be here - I love <PRO_HIMHER>, and <PRO_HESHE> needs me.~ */
			= @266 /* ~When she is older, I'll explain to Rohma why I needed to go away. She's a smart kid, she will understand.~ */
			== BCERND
			@267 /* ~I'm sure she will. With luck, we'll be able to return to our children soon.~ */
			== XACORWIB
			@268 /* ~I hope so. Let's get moving.~ */
	EXIT
	//}

	//{ Dialog B-36
	CHAIN
		IF ~
			Global("XA_LC_CorwinCerndBaby", "GLOBAL", 2)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			IsValidForPartyDialogue("Cernd")
		~
		THEN XACORWIB BCorwinCernd1B
			@258 /* ~Cernd, you have a beautiful child.~ [XACORB33] */
			DO ~
				SetGlobal("XA_LC_CorwinCerndBaby", "GLOBAL", 3)
			~
			== BCERND
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@259 /* ~Thank you, Captain Corwin. ~ */
			== BCERND
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@754 /* ~Thank you, Major Corwin. ~ */
			== XACORWIB
			@260 /* ~I remember when my daughter Rohma was just a baby. Holding your baby in your arms changes you, doesn't it?~ */
			== BCERND
			@261 /* ~It does! When I held Ahsdale, I felt a... clarity, that I had never experienced before, like my purpose in this world had changed.~ */
			== XACORWIB
			@262 /* ~That's almost exactly how I felt with Rohma.. like my life had suddenly gained a meaning that it lacked before.~ */
			== BCERND
			@263 /* ~It must not be easy being away from your child. I know that isn't easy for me.~ */
			== XACORWIB
			@265 /* ~No, it isn't. But duty requires that I be here, with <CHARNAME>.~ */
			= @266 /* ~When she is older, I'll explain to Rohma why I needed to go away. She's a smart kid, she will understand.~ */
			== BCERND
			@267 /* ~I'm sure she will. With luck, we'll be able to return to our children soon.~ */
			== XACORWIB
			@268 /* ~I hope so. Let's get moving.~ */
	EXIT
	//}
	
//}

//{ Valygar Banters

	//{ Dialog B-37
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinValygar", "GLOBAL", 2)
			!InParty("Minsc")
			IsValidForPartyDialogue("Valygar")
		~
		THEN XACORWIB BCorwinValygar1A
			@245 /* ~Valygar. It's good to have another Ranger on the team.~ [XA100033] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinValygar", "GLOBAL", 3)
			~ 
			== BVALYGA
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@247 /* ~Yes, thank you Captain. I've been meaning to talk to you about something... do you have a moment?~*/
			== BVALYGA
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@755 /* ~Yes, thank you Major. I've been meaning to talk to you about something... do you have a moment?~*/
			== XACORWIB
			@803 /* ~Of course. What's on your mind?~ */
			== BVALYGA
			@248 /* ~I've always felt that a Ranger's strength lies in their versatility. I'm interested in hearing why you chose to specialize in archery.~ */
			== XACORWIB
			@864 /* ~There's a reason for that...~ [XA100142]*/
			=@249 /* ~Well, unlike most Rangers, I'm not typically sent out on my own. The need for that versatility is reduced.~ */
			= @250 /* ~I tend to work as part of a team, and having a specialization can contribute more to the team's success.~ */
			== BVALYGA
			@251 /* ~An interesting perspective. I think we will enjoy working together.~ */
			== XACORWIB
			@252 /* ~So do I.~ */
	EXIT
	//}

	//{ Dialog B-38
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinValygar", "GLOBAL", 2)
			InParty("Minsc")
			IsValidForPartyDialogue("Valygar")
		~
		THEN XACORWIB BCorwinValygar1B
			@245 /* ~Valygar. It's good to have another Ranger on the team.~ [XA100033]*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinValygar", "GLOBAL", 3)
			~ 
			= @246 /* ~Well */
			= @886 /*~(She looks at Minsc, and shakes her head.)~*/
			= @887 /* ~...One that isn't completely out of his mind, anyway. ~*/
			== BVALYGA
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@247 /* ~Yes, thank you Captain. I'm interested in hearing why you chose to specialize in archery.~*/
			== BVALYGA
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@755 /* ~Yes, thank you Major. I'm interested in hearing why you chose to specialize in archery.~*/
			== BVALYGA
			@248 /* ~I've always felt that a Ranger's strength lies in their versatility.~ */
			== XACORWIB
			@249 /* ~Well, unlike most Rangers, I'm not typically sent out on my own. The need for that versatility is reduced.~ */
			= @250 /* ~I tend to work as part of a team, and having a specialization can contribute more to the team's success.~ */
			== BVALYGA
			@251 /* ~An interesting perspective. I think we will enjoy working together.~ */
			== XACORWIB
			@252 /* ~So do I.~ */
	EXIT
	//}

	//{ Dialog B-39
	CHAIN 
		IF ~
			Global("XA_LC_CorwinValygarLavok", "GLOBAL", 1)
			IsValidForPartyDialogue("Valygar")
		~ THEN XACORWIB BCorwinValygar2
			@573 /* ~So, Valygar.~*/
			DO ~
				SetGlobal("XA_LC_CorwinValygarLavok", "GLOBAL", 2)
				SetGlobalTimer("XA_LC_CorwinValygarTimer", "GLOBAL", THREE_DAYS)
			~
			== BVALYGA
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@574 /* ~Yes, Captain?~*/
			== BVALYGA
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@756 /* ~Yes, Major?~*/
			== XACORWIB
			@575 /* ~With Lavok dead, what will you do now?~*/
			== BVALYGA
			@576 /* ~For the time being, I'd like to remain part of this group.~*/
			== XACORWIB
			@577 /* ~Understandable. When this business with Irenicus is over, I'd like for you to consider coming back to Baldur's Gate with me.~*/
			= @578 /* ~The Flaming Fist could offer much to a warrior of your caliber.~ [BD37019]*/
			== BVALYGA
			@579 /* ~I appreciate the offer, though. I must confess however that I'd be, ah, out of my element in the city.~*/
			== XACORWIB
			@580 /* ~Well, you wouldn't be out on your own. You can shadow us on our patrols and see if it's a good fit for you.~*/
			= @581 /* ~The Flaming Fist takes care of its own, and you'd have everything necessary to succeed.~*/
			== BVALYGA
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@582 /* ~I am intrigued. Give me some time to consider your offer, Captain.~*/
			== BVALYGA
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@757 /* ~I am intrigued. Give me some time to consider your offer, Major.~*/
			== XACORWIB
			@542 /* ~Right. Let's go.~ [BD58846]*/
			
	EXIT
	//}

	//{ Dialog B-85
	CHAIN
		IF ~
			Global("XA_LC_CorwinValygarBG", "GLOBAL", 1)
			IsValidForPartyDialogue("Valygar")
		~ THEN BVALYGA BCorwinValygar3A
			@804 /* ~Captain, a word please.~*/
			== XACORWIB
			@807
			DO ~
				SetGlobal("XA_LC_CorwinValygarBG", "GLOBAL", 2)
			~
			== BVALYGA
			@805 /* ~I've given this a lot of thought. When <CHARNAME>'s hunt for Irenicus is over, I'd like to accompany you back to Baldur's Gate, and join the Flaming Fist.~ */
			== XACORWIB
			@808 /* ~Excellent! You won't regret it. When we arrive, I'll introduce you to my commanding officer, Marshal Kirill Nederlok.~ */
			== BVALYGA
			@809 /* ~I look forward to our meeting.~ */
			== XACORWIB
			@214 /*~That's what I like to see. Would that there were more like you.~ [BD67546]*/
	EXIT
	//}
	
//}

//{ Neera Banters

	//{ Dialog B-40
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinNeera", "GLOBAL", 2)
			IsValidForPartyDialogue("Neera")
		~ THEN XACORWIB BCorwinNeera1
			@215 /* ~Neera, how are you?~ [XACORB36] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinNeera", "GLOBAL", 3)
			~ 
			== BNEERA
			@216 /* ~Good, Schael! What's new?~ */
			== XACORWIB
			@217 /* ~Nothing, it seems. I noticed you're still struggling to control your magic.~*/
			== BNEERA
			@218 /* ~Yeah... a lot of the time I'm able to control it, but then all of a sudden BAM!~  */
			== XACORWIB
			@219 /* ~Please, keep trying. It's important that we're able to rely on you, and we need to be certain that your spells will help us instead of turning one of us into a chicken.~ */
			== BNEERA
			@220 /* ~A chicken? No, I think you mean a llama.~ */
			== XACORWIB
			@221 /* ~W-what? You turned someone into a llama?~ */
			== BNEERA
			@222 /* ~Yes, while casting a Goodberry spell. I did get the berries, though. I shared them with the llama.~ */
			== XACORWIB
			@223 /* ~I... see. What happened with the llama?~ */
			== BNEERA
			@224 /*  ~Oh, one of my friends was able to counteract the spell, but not before my llama friend spit on my shoes.~ */
			== XACORWIB
			@213 /* ~Well, that was... That was something. Let's go.~ [BD50374] */
	EXIT
	//}

	//{ Dialog B-41
	CHAIN
		IF ~
			Global("XA_LC_CorwinNeeraImoen", "GLOBAL", 1)
			IsValidForPartyDialogue("Neera")
			IsValidForPartyDialogue("Imoen2")
		~ THEN XACORWIB BCorwinNeera1
			@502 /* ~You know, Neera, Imoen here studied under one of the finest mages in Baldur's Gate.~ [XA100067] */
			DO ~
				SetGlobal("XA_LC_CorwinNeeraImoen", "GLOBAL", 2)
			~ 
			== BNEERA
			@503 /* ~Really? Who?~ */
			== XACORWIB
			@504 /* ~Her name is Liia Jannath, she is part of the Council of Four. I'm sure Imoen can help share what she learned to help you better control your magic.~  */
			== BIMOEN2
			@505 /* ~Yes, that's right. Neera, if you have the time, I'd like to show you some focusing techniques. I'm not as great a teacher as Liia is but I'm sure you'll benefit.~  */
			== BNEERA
			@506 /* ~Ah thanks, but no thanks.~ */
			== XACORWIB
			@507 /* ~Neera? Why not take Imoen up on her offer?~ */
			== BNEERA
			@508 /* ~The unpredictability of my wild magic is one of the things that makes me, well, me. I guess I don't want to turn into a boring old mage - not that you are boring, Imoen! Just the opposite!~ */
			== BIMOEN2
			@509 /* ~I understand the need to carve out your own niche in life. Still, I think you would benefit from what I can show you. My offer stands should you decide to reconsider.~ */
			== BNEERA
			@510 /*  ~Thanks. Maybe someday I will. For now, though, I just want to be myself.~ */
	EXIT
	//}

//}

//{ Hexxat Banters

	//{ Dialog B-42
	CHAIN
		IF ~
			Global("XA_LC_CorwinHexxat", "GLOBAL", 3)
			IsValidForPartyDialogue("Hexxat")
		~ THEN XACORWIB BCorwinHexxat1
			@204 /* ~Hexxat.~ [XA100031]*/
			DO ~
				SetGlobal("XA_LC_CorwinHexxat", "GLOBAL", 4)
				SetGlobalTimer("XA_LC_CorwinHexxatTimer", "LOCALS", ONE_DAY)
			~ 
			== BHEXXAT
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@205 /* ~Yes, Captain?~ */
			== BHEXXAT
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@756 /* ~Yes, Major?~ */
			== XACORWIB
			@206 /* ~This is your one warning.~ */
			= @207 /* ~Leave, now. Go back to your crypt, or wherever it is your kind comes from.~ */
			== BHEXXAT
			@208 /* ~When <CHARNAME> wishes for me to depart, then I will do so, but not before then. ~ */
			== XACORWIB
			@209 /* ~You would be wise to reconsider. You may have <PRO_HIMHER> fooled, but not me.~ */
			== BHEXXAT
			@210 /* ~I see. And if I don't?~ */
			== XACORWIB
			@211 /* ~Then you will be removed. One way, or the other.~ */
			== BHEXXAT
			@212 /* ~Brave words... but such empty threats are beneath you.~ */
	EXIT
	//}

//}

//{ Korgan Banters

	//{ region Dialog B-43
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinKorgan", "GLOBAL", 2)
			IsValidForPartyDialogue("Korgan")
		~ THEN XACORWIB BCorwinKorgan1
			@138 /* ~Get your filthy hands off me!~ [XACORB05] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinKorgan", "GLOBAL", 3)
			~ 
			== BKORGAN
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@144 /* ~But Captain, ye be the rarest of sights! A strong beauty, in uniform no less! ~ */
			== BKORGAN
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@758 /* ~But Major, ye be the rarest of sights! A strong beauty, in uniform no less! ~ */
			== BKORGAN
			@139 /*  ~Ole Korgan nae hath seen one such as yerself. I simply needed a hand on yer wondrous bottom to see if ye be an illusion.~*/
			== XACORWIB
			@140 /* ~Well, I hope you got all you needed. Touch me like that again, dwarf, and you'll regret it.~ */
			== BKORGAN
			@141 /* ~Aye, doth ye be a prude? Ye ain't felt true pleasure till ye hath lain with a master of eroticism, such as I.~ */
			== XACORWIB
			@142 /* ~Hah, don't make me laugh. No one in their right mind would share their bed with you.~ */
			== BKORGAN
			@143 /*   ~Bed, floor, or field doth make no difference to I, longlimbs. You are nae ready now, but when ye are, come and see Korgan for a night you shan't forget. ~ */
			== XACORWIB
			@238/* ~Next time you open your mouth, close it quickly—before that sort of idiocy spills off your tongue.~ [BD67544] */
	EXIT
	//}

	//{ region Dialog B-44
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinKorgan", "GLOBAL", 4)
			IsValidForPartyDialogue("Korgan")
		~ THEN XACORWIB BCorwinKorgan1
			@194 /*  ~What is it Korgan?~ [XACORB42] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinKorgan", "GLOBAL", 5)
			~ 
			== BKORGAN
			@195 /* ~Aye, girlie. I feel yer eyes on me rear in battle. Doth ye like what ye see?~ */
			== XACORWIB
			@196 /*  ~Not particularly, no. Well - I must admit that your skill with the axe is impressive.~ */
			== BKORGAN
			@197 /* ~Aye, as is your skill with the bow. Nae hath I seen so many foes fall before I can even reach em. ~ */
			== XACORWIB
			@572 /*~You noticed. Good eye.~ [BD39880]*/
			== BKORGAN
			@198 /* ~Don't you worry my beauty. Ole Korgan will stay at the front and keep ye safe. Just leave a few for me, will ye? Me axe doth get thirsty from time to time.~ */
			== XACORWIB
			@199 /* ~Duly noted. ~ */
	EXIT
	//}

//}

//{ Viconia Banters

	//{ Dialog B-45
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinViconia", "GLOBAL", 2)
			IsValidForPartyDialogue("Viconia")
			OR(2)
				!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
				Gender(Player1, FEMALE)
		~ THEN XACORWIB BCorwinViconia1A
			@114 /*  ~Never forget that I'm watching you.~ [BD67545] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinViconia", "GLOBAL", 3)
				SetGlobalTimer("XA_LC_ViconiaBanter2Timer", "LOCALS", ONE_DAY)
			~ 
			== BVICONI
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@115 /* ~I noticed. See something you like, Captain?~ */
			== BVICONI
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@759 /* ~I noticed. See something you like, Major?~ */
			== XACORWIB
			@116 /*  ~What? No, of course not!~ */
			== BVICONI
			@117 /* ~Oh come now, Schael. It is quite natural for females in our society to express and act upon their attraction for one another. Do not be bashful, my dear.~ */
			== XACORWIB
			@118 /* ~Hmph. I'd never -- not with a drow!~ */
			== BVICONI
			@119 /* ~Relax, Corwin. I am not interested in you, at least not in that way. I've found that males are more to my liking. And you?~ */
			== XACORWIB
			@120 /*   ~Just... just don't try anything! Got it?~ */
			== BVICONI
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@121 /* ~Of course. I would never do anything to upset you, Captain.~   */
			== BVICONI
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@760 /* ~Of course. I would never do anything to upset you, Major.~   */
	EXIT
	//}

	//{ Dialog B-46
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinViconia", "GLOBAL", 2)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			IsValidForPartyDialogue("Viconia")
			Gender(Player1, MALE)
		~ THEN XACORWIB BCorwinViconia1B
			@114 /* ~Never forget that I'm watching you.~ [BD67545] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinViconia", "GLOBAL", 3)
				SetGlobalTimer("XA_LC_ViconiaBanter2Timer", "LOCALS", ONE_DAY)
			~ 
			== BVICONI
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@115 /* ~I noticed. See something you like, Captain?~ */
			== BVICONI
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@759 /* ~I noticed. See something you like, Major?~ */
			== XACORWIB
			@116 /*  ~What? No, of course not!~ */
			== BVICONI
			@117 /* ~Oh come now, Schael. It is quite natural for females in our society to express and act upon their attraction for one another. Do not be bashful, my dear.~ */
			== XACORWIB
			@118 /* ~Hmph. I'd never -- not with a drow!~ */
			== BVICONI
			@236 /* ~Relax, Corwin. I am not interested in you, at least not in that way. I've found that males are more to my liking... as you have, judging from your interactions with <CHARNAME>.~*/
			== XACORWIB
			@120 /*   ~Just... just don't try anything! Got it?~ */
			== BVICONI
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@121 /* ~Of course. I would never do anything to upset you, Captain.~   */
			== BVICONI
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@760 /* ~Of course. I would never do anything to upset you, Major.~   */
	EXIT
	//}

	//{ Dialog B-47
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinViconiaDay", "LOCALS", 1)
			IsValidForPartyDialogue("Viconia")
		~ THEN XACORWIB BCorwinViconia2
			@416 /* ~Light and warmth... I'm glad for both.~ [BD68278] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinViconiaDay", "LOCALS", 2)
			~ 
			== BVICONI
			@417 /* ~I'm glad someone is. The warmth I don't mind, but I'll never understand how you surfacers can enjoy being bathed in this blinding light.~ */
			== XACORWIB
			@314 /* ~This must be a tough time for you, then.~ [BD35157] */
			== BVICONI
			@419 /* ~It would be harder for you living underground, I'm afraid. For all of your skill and bravado, you wouldn't last long on your own in the Underdark. Few would.~ */
			=
			@420 /* ~There, the threats come from horrors that are beyond your comprehension.~ */
			== XACORWIB
			@421 /* ~And here?~ */
			== BVICONI
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@422 /* ~...I told you that I'd never do anything to upset you, Captain. You wouldn't like what I have to say.~ */
			== BVICONI
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@761 /* ~...I told you that I'd never do anything to upset you, Major. You wouldn't like what I have to say.~ */
			== XACORWIB
			@423 /* ~I'd rather you speak your mind, but fair enough. Let's get going.~ */
	EXIT
	//}

	//{ Dialog B-48
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinViconiaCity", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
		~ THEN BVICONI BCorwinViconia3
			@559 /* ~These human cities make me want to scream.~ [XACORB64] */
			== XACORWIB
			@424 /* ~What was that?~ */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinViconiaCity", "GLOBAL", 2)
			~ 
			== BVICONI
			@425 /* ~The filth, the stench, the rabble - how can you stand it!?~ */
			== XACORWIB
			@426 /*   ~It was your decision to come to the surface. Deal with it.~ [XACORB54] */
			== BVICONI
			@427 /* ~Ah, the surface. Where bigoted fools attack others based soley on their appearance... like your precious Flaming Fist.~ */
			== XACORWIB
			@428 /* ~What are you playing at here, drow?~ [BD58878] */
			=
			@429 /* ~Let me remind you that your kind has a well-earned reputation for violence and treachery. The Flaming Fist works to protect the innocent all threats, including those posed by the drow.~  */
			== BVICONI
			@430 /* ~Is that so? Then why are your cities full of thieves, slavers, molesters and murderers, all roaming free? It seems to me that your kind can learn a thing or to from the drow when it comes to the administration of justice and punishment!~ */
			== XACORWIB
			@431 /* ~I don't have the time to argue about the criminal justice system. It's far from perfect, but we are doing the best that we can.~ */
			=
			@432 /*  ~What matters is that you've remained loyal thus far, which is more than I expected. Keep it up and I promise you won't need to worry about your safety while on the surface.~ */
			== BVICONI
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@433 /*  ~I.. I appreciate that, Captain.~ */
			== BVICONI
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@762 /*  ~I.. I appreciate that, Major.~ */
			== XACORWIB
			@435 /* ~Just remember what I said - you'll have nothing to worry about so long as you remain true to us.~ */
	EXIT
	//}
	
//}

//{ Imoen Banters

	//{ Dialog B-49
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinImoen", "GLOBAL", 2)
			IsValidForPartyDialogue("Imoen2")
		~ THEN XACORWIB BCorwinImoen1
			@226 /* ~Imoen - what do you need?~ [XACORB58] */ 
			DO ~
				SetGlobal("XA_LC_Banter_CorwinImoen", "GLOBAL", 3)
			~ 
			== BIMOEN2
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@227 /* ~Nothing, Captain Corwin. I wanted to tell you that I'm glad you're here. I know it's been difficult being away from your family.~ */
			== BIMOEN2
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@763 /* ~Nothing, Major Corwin. I wanted to tell you that I'm glad you're here. I know it's been difficult being away from your family.~ */
			== XACORWIB
			@228 /*  ~I'm just glad that you're free from the wizard. Duke Jannath was very worried when she learned that you'd been kidnapped.~ */
			== BIMOEN2
			@229 /* ~Liia was worried about me? I miss her... she's a wonderful person, and a great teacher.~ */
			== XACORWIB
			@230 /* ~Don't worry, you'll see her again once this is over. I'm sure she'd be proud of your progress in the magical arts.~ [XACORB59] */
			== BIMOEN2
			IF ~
				Global("XA_LC_IrenicusBeat", "GLOBAL", 1)
			~
			@798 /* ~I hope so. My magic pales in comparison to what Irenicus possessed.~ */
			== BIMOEN2
			IF ~
				!Global("XA_LC_IrenicusBeat", "GLOBAL", 1)
			~
			@231 /* ~I hope so. My magic pales in comparison to Irenicus.~ */
			== XACORWIB
			@237 /* You're doing a good job. Your skills are proving invaluable.~ */
			== BIMOEN2
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@233 /* ~Thanks, Captain.~  */
			== BIMOEN2
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@764/* ~Thanks, Major.~  */
			== XACORWIB
			@234 /* ~Imoen, I consider you a friend. There's no need to address me by rank - Schael will do just fine.~ */
			== BIMOEN2
			@235 /* ~I too consider you a friend, Schael. Thank you.~  */
	EXIT
	//}

	//{ Dialog B-50
	CHAIN 
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_LC_CorwinImoenSoulTalk", "GLOBAL", 1)
			IsValidForPartyDialogue("Imoen2")
		~ THEN XACORWIB BCorwinImoenSoulA
			@565 /*  ~Imoen, I can't tell you how relieved I am that you're better.~  */
			DO ~
				SetGlobal("XA_LC_CorwinImoenSoulTalk", "GLOBAL", 2)
			~
			== BIMOEN2
			@566 /* ~Yes, Schael. With my soul returned, I feel like myself again.~ */
			== XACORWIB
			@567 /* ~Thank goodness. I feel like <CHARNAME>'s becoming more and more distant of late. I'm very worried about <PRO_HIMHER>.~ */
			== BIMOEN2
			@569 /* ~Once we defeat Irenicus and take back what was stolen from <CHARNAME>, I'm sure that <PRO_HESHE> will be back to normal.~ */
			= @570 /* ~The two of you have made it this far, Schael. Don't give up hope of a future together.~ */
			== XACORWIB
			@554 /* ~My father always said to hope for the best but prepare for the worst.~ [BD37000] */
			= @550 /*~You're right though, Imoen, and I won't give up... let's get moving.~*/
	EXIT
	//}

	//{ Dialog B-51
	CHAIN 
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_LC_CorwinImoenSoulTalk", "GLOBAL", 1)
			IsValidForPartyDialogue("Imoen2")
		~ THEN XACORWIB BCorwinImoenSoulB
			@565 /*  ~Imoen, I can't tell you how relieved I am that you're better.~ [XA100067] */
			DO ~
				SetGlobal("XA_LC_CorwinImoenSoulTalk", "GLOBAL", 2)
			~
			== BIMOEN2
			@566 /* ~Yes, Schael. With my soul returned, I feel like myself again.~ */
			== XACORWIB
			@567 /* ~Thank goodness. I feel like <CHARNAME>'s becoming more and more distant of late. I'm very worried about <PRO_HIMHER>.~ */
			== BIMOEN2
			@569 /* ~Once we defeat Irenicus and take back what was stolen from <CHARNAME>, I'm sure that <PRO_HESHE> will be back to normal.~ */
			== XACORWIB
			@571 /* ~Right... thank you, Imoen. Let's go. ~  */
	EXIT
	//}

	//{ Dialog B-52
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinImoen", "GLOBAL", 4)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			IsValidForPartyDialogue("Imoen2")
		~ THEN XACORWIB BCorwinImoen2A
			@448 /* ~Imoen, could I ask you something?~ [XACORB57] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinImoen", "GLOBAL", 5)
			~ 
			== BIMOEN2
			@449 /* ~Sure, Schael. What's on your mind?~*/
			== XACORWIB
			@450 /*  ~You grew up with <CHARNAME>, in Candlekeep, right?~ */
			== BIMOEN2
			@451 /* ~Yes, that's right.~*/
			== XACORWIB
			@452 /* ~What was <PRO_HESHE> like growing up? What were some of <PRO_HISHER> hobbies?~ */
			=
			@457 /* ~I ask because I love <PRO_HIMHER> dearly, and in some ways, I feel that I don't know <PRO_HIMHER> as well as I should.~ */
			== BIMOEN2
			@454 /* ~Oh, I've got lots of stories... I think you'll like the one about the time <PRO_HESHE> first tried to ... */
			= @734 /* ~(They have a long and animated discussion, though you can't quite make out what they are saying.)~ */
			== XACORWIB
			@480 /*~Heh. Most just call that the "hard way."[XA100077]*/
			== BIMOEN2
			@481 /*~Then there was the time <PRO_HESHE> thought <PRO_HESHE> could get away with taking Jessup's...~*/
			= @482 /*~(Again, you can't make out what's being said.)~*/
			== XACORWIB
			@455 /* ~(She bursts into laughter) */
			== BIMOEN2
			@479 /* ~I know, right! I wonder what <PRO_HESHE> was thinking!~ */
			== XACORWIB
			@545 /*~I'd like to know that myself.~ [XA100008]*/
			= @456 /* ~Thank you Imoen. Heh, it sounds like the two of you had some fun times together.~*/
			== BIMOEN2
			@458 /* ~Definitely.~  */
	EXIT
	//}

	//{ Dialog B-53
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinImoen", "GLOBAL", 4)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			IsValidForPartyDialogue("Imoen2")
		~ THEN XACORWIB BCorwinImoen2A
			@448 /* ~Imoen, could I ask you something?~ [XA100067] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinImoen", "GLOBAL", 5)
			~ 
			== BIMOEN2
			@449 /* ~Sure, Schael. What's on your mind?~*/
			== XACORWIB
			@450 /*  ~You grew up with <CHARNAME>, in Candlekeep, right?~ */
			== BIMOEN2
			@451 /* ~Yes, that's right.~*/
			== XACORWIB
			@452 /* ~What was <PRO_HESHE> like growing up? What were some of <PRO_HISHER> hobbies?~ */
			=
			@453 /* ~I ask because in many ways, I feel that I know <PRO_HIMHER> very well, but in other ways, not so much.~ */
			== BIMOEN2
			@454 /* ~Oh, I've got lots of stories... I think you'll like the one about the time <PRO_HESHE> first tried to ... (they have a long and animated discussion, though you can't quite make out what they are saying)~ */
			== XACORWIB
			@480 /*~Heh. Most just call that the "hard way."[XA100077]*/
			== BIMOEN2
			@481 /*~Then there was the time <PRO_HESHE> thought <PRO_HESHE> could get away with taking Jessup's...~*/
			= @482 /*~(Again, you can't make out what's being said.)~*/
			== XACORWIB
			@455 /* ~(She bursts into laughter) */
			== BIMOEN2
			@479 /* ~I know, right! I wonder what <PRO_HESHE> was thinking!~ */
			== XACORWIB
			@545 /*~I'd like to know that myself.~ [XA100008]*/
			= @456 /* ~Thank you Imoen. Heh, it sounds like the two of you had some fun times together.~*/
			== BIMOEN2
			@458 /* ~Definitely.~  */
	EXIT
	//}

//}

//{ Edwin Banters

	//{ Dialog B-54
	CHAIN
		IF ~
			Global("XA_LC_CorwinEdwinThay", "GLOBAL", 1)
			IsValidForPartyDialogue("Edwin")
		~ THEN XACORWIB BCorwinEdwinThay
			@700 /* ~Edwin, what was that about? Why are the Thayans after you?~ */
			DO ~
				SetGlobal("XA_LC_CorwinEdwinThay", "GLOBAL", 2)
			~
			== BEDWIN
			@701 /* ~It is not your concern. You needn't worry about that fool Degardan.~ */
			== XACORWIB
			@702 /* ~Tell us what you know, wizard.~ [BD42217]~ */
			== BEDWIN
			@703 /* ~You want to know? Fine! I expressed some spirited ... criticism (yes, that is a good way to put it) of the ruling clan, and was exiled! The fools!~ */
			== XACORWIB
			@704 /* ~Well, that's not surprising. You had to know that your mouth would get you into trouble eventually. It doesn't explain why they're after you now, though.~*/
			== BEDWIN
			@705 /* ~(Why, why, WHY won't this woman leave me alone!) Before I was exiled, I ... accessed certain tomes of knowledge that were forbidden to me. It's how I learned of the Nether Scroll!~*/
			=
			@706 /* ~And once I learned of their decision to exile me, I may have pilfered a few baubles here and there, to pay for certain provisions and amenities.~*/
			== XACORWIB
			@707 /* ~Provisions and amenities, sure. I'm sure the brothels appreciated your patronage.~*/
	EXIT
	//}

	//{ Dialog B-56
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinEdwin", "GLOBAL", 2)
			Gender("Edwin",MALE)
			IsValidForPartyDialogue("Edwin")
		~ THEN XACORWIB BCorwinEdwin1
			@106 /* ~Edwin, a word, please.~ [XACORB06]*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinEdwin", "GLOBAL", 3)
			~ 
			== BEDWIN
			@107 /* ~Yes? What is it that you want? (Can't this cretin see that I am busy?)~ */
			== XACORWIB
			@108 /*  ~As much as I hate to admit it, you are one of the finest spelXAasters I have ever seen. You are an essential part of our success.~ */
			== BEDWIN
			@109 /* ~Oh.. *Ahem* Yes, your acknowledgement of my superiority was long overdue, though late is better than never.~ */
			=
			@123 /* ~You are quite talented as well, though your skills pale to those of the great Odesseiron. (What is she after?)~ */
			== XACORWIB
			@110 /*  ~I can hear you, you know. We all can~ [BD58890]*/
			== BEDWIN
			@111 /* ~When I do what? (Is this some sort of Flaming Fist trick? Not likely, as the witless wench lacks the guile to fool me.)~*/
			= @122 /* ~(Ah, of course. Her infatuation is apparent. Patience - I must not be seen as desparate.)~  */
			== XACORWIB
			@112 /*   ~Ugh. Why do I bother.~ */
			== BEDWIN
			@113 /* ~(Well played, Odesseiron, well played. She will assume her rightful position at your feet before long.)~   */
	EXIT
	//}

	//{ Dialog B-57
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinEdwin", "GLOBAL", 4)
			IsValidForPartyDialogue("Edwin")
		~ THEN XACORWIB BCorwinEdwin2
			@392 /*  ~What is it, Edwin?~ [XACORB42]*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinEdwin", "GLOBAL", 5)
			~ 
			== BEDWIN
			@393 /* ~I wish to discuss your potential.~ */
			== XACORWIB
			@394 /*   ~My potential?~ */
			== BEDWIN
			@395 /* ~Yes. It is within my power to reshape you, and your destiny - not literally, of course. (Your shape is quite pleasing to me, after all).~*/
			=
			@396 /* ~What I mean is that I can teach you the mystical arts, and show you secrets passed through the eons to unlock your power! (Yes, true power!)~ */
			== XACORWIB
			@397 /*  ~I see.. and what would you want in exchange?~ */
			== BEDWIN
			@398 /* ~You will leave these simians and become bethrothed to me.~*/
			== XACORWIB
			@253 /*  ~You can't be serious. Have you taken leave of your senses?~ [XA100078]*/
			== BEDWIN
			@400 /* ~Of course I am! (Why wouldn't I be!?)~   */
			== XACORWIB
			@401 /*   ~Well, then. Give me some time to consider your generous offer, Edwin.~ */
			== BEDWIN
			@402 /* ~Very well, but do not wait too long. I am eager to begin your instruction.~ */
	EXIT
	//}

	//{ Dialog B-58
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinEdwin", "GLOBAL", 6)
			IsValidForPartyDialogue("Edwin")
		~ THEN XACORWIB BCorwinEdwin3
			@404 /*  ~Edwin? What is it?~ [XACORB42] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinEdwin", "GLOBAL", 7)
			~ 
			== BEDWIN
			@405 /* ~It is time for you to make your decision. (Yes, I have waited quite long enough.) Will you become by bethrothed in exchange for the mystical knowledge I offer you?~ */
			== XACORWIB
			@403 /*~You aren't going to let this go, are you?~ [BD66686]*/
			=
			@406 /*   ~Fine. Let me be perfectly clear — I'm not interested in the secrets of a group of maladjusted wizards, or in becoming your wife... Well... on second thought...~ */
			=
			@408 /* ~Yes, there is one thing you could teach me.~ */
			== BEDWIN
			@409 /* ~Conjuration of a fire elemental? The art of mental domination? The doubling of one's - ~*/
			== XACORWIB
			@410 /*   ~No, nothing like that.~ */
			== BEDWIN
			@411 /* ~What is it then?~  */
			== XACORWIB
			@412 /* ~Your robes - how do you keep them so clean? The color is as vibrant as the first time I saw you.~ */
			== BEDWIN
			@413 /* ~Small minded fool! I offer you power, tutelage and a lifetime of exquisite lovemaking, and you are more concerned with laundry techniques!~ */
			== XACORWIB
			@414 /* ~Relax. I'm just joking with you - about your robes anyway. I've no inclination to take you up on your offer. Nor will I ever.~  */
			== BEDWIN
			@415 /* @415 = ~So be it. I should have expected such from a Flaming Fist wench. You will rue the day you rejected Edwin Odesseiron!~ */
	EXIT
	//}
	
//}

//{ Jan Banters

	//{ Dialog B-59
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinJan", "GLOBAL", 2)
			IsValidForPartyDialogue("Jan")
		~ THEN XACORWIB BCorwinJan1
			@440 /* ~Uh, what are you doing?~ [BD40510]*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinJan", "GLOBAL", 3)
			~ 
			== BJAN
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@75 /* ~Ah Captain! Just warming up some turnip stew. Would you like to try some?~ */
			== BJAN
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@765 /* ~Ah Major! Just warming up some turnip stew. Would you like to try some?~ */
			== XACORWIB
			@76 /*  ~Um... sure, Jan.~ */
			== BJAN
			@77 /* ~I added a few spices to give it a nice kick. I hope you find it to you liking!~ */
			== XACORWIB
			@78 /* ~Wow that's ... actually very good. Can I have another taste? */
			== BJAN
			@79 /* ~Yes, of course!  */
			== XACORWIB
			@80 /*  ~Mm. I taste beef, turnips, tomatoes, red peppers, and ... what is that? Kind of an earthy, fruity taste?~  */
			== BJAN
			@81 /*~Saffron! I had it imported fresh from one of the eastern merchant guilds.~  */
			== XACORWIB
			@511 /* ~Could I have the recipe? I'd like to make some for my father and daughter when I get home.~ */
			== BJAN
			@512 /* ~Of course, my dear. Come see me later, I'll write it down for you.~ */
			== XACORWIB
			@513 /* ~Thanks, Jan.~ */
	EXIT
	//}

	//{ Dialog B-60
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinJan", "GLOBAL", 4)
			IsValidForPartyDialogue("Jan")
		~ THEN XACORWIB BCorwinJan2
			@514 /* ~Jan? About the turnip stew recipe - ~ [XA100067] */
			DO ~
				SetGlobal("XA_LC_JanWantsToSeeBG", "GLOBAL", 1)
				SetGlobal("XA_LC_Banter_CorwinJan", "GLOBAL", 5)
			~ 
			== BJAN
			@515 /* ~Ah yes, here it is.~ */
			== XACORWIB
			@516 /* Thanks again. ~ */
			== BJAN
			@82 /*~You know, I'm looking to expand my turnip business outside of Athkatla. Perhaps you can help me set up a stall in Baldur's Gate? I'd share the profits with you, of course.~ */
			== XACORWIB
			@83 /*  ~Uh, I appreciate the offer, but I'm not much of a salesperson.~  */
			== BJAN
			@84 /* ~Nonsense! A beautiful woman such as yourself selling my turnips would do wonders for my business.~ */
			== XACORWIB
			@85 /*  ~This isn't the time. I have a mission. That's all that matters. So let's go.~ [BD54384]*/
	EXIT
	//}
	
//}

//{ Keldorn Banters

	//{ Dialog B-61
	CHAIN 
		IF ~
			Global("XA_LC_CorwinCoverUD", "GLOBAL", 2)
			IsValidForPartyDialogue("Keldorn")
		~ THEN XACORWIB BCorwinScoldKeldorn
			@609 /* ~Keldorn - what happened back there?~ */
			DO ~
				SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 3)
			~
			== BKELDOR
			@610 /* ~Captain?~ */
			== XACORWIB
			@611 /* ~You nearly blew our cover!~ */
			== BKELDOR
			@612 /* ~I let my anger get the better of me, I'm afraid.~ */
			== XACORWIB
			@73/* ~Rein it in. If you can't control yourself, you're a danger to us all.~ */
			== BKELDOR
			@614 /* ~I understand, Captain. I will hold my tongue while in the presence of the drow.~ */
			== XACORWIB
			@615 /* Good. Let's go.~ */
	EXIT
	//}

	//{ Dialog B-62
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinKeldornOpt1", "GLOBAL", 3)
			IsValidForPartyDialogue("Keldorn")
		~ THEN XACORWIB BCorwinKeldorn1
			@473 /* ~Yes, Keldorn?~ [XA100067]*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinKeldornOpt1", "GLOBAL", 4)
			~ 
			== BKELDOR
			@474 /* ~Captain, I want to thank you, and <CHARNAME>, for the advice you gave me during the situation with my wife and Sir William.~ */
			=
			@475 /* ~I can't believe that I was willing to have her thrown in jail. ~ */
			== XACORWIB
			@476 /* ~There's no need to thank me. It was clear that your anger got the better of you, and that you weren't thinking clearly.~ */
			== BKELDOR
			@477 /* ~That's a good way to put it - strong emotions can often cloud one's judgment. It's a lesson I've had to learn, and relearn, many times over the years.~ */
			== XACORWIB
			@478 /* ~You and I both. I'm just glad I was able to help.~ */
			== BKELDOR
			@460 /* ~Indeed... I'm seeing more and more that your ability to lead is as impressive as your skill with the bow, if not moreso.~*/
			== XACORWIB
			@491 /* ~That's high praise, coming from someone who knows his way around a sword as well as you.~ [BD58923] */
	EXIT
	//}

	//{ Dialog B-XX
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinKeldInitial", "GLOBAL", 1)
			IsValidForPartyDialogue("Keldorn")
		~ THEN BKELDOR BCorwinKeldornInitial
			@624  /*~Captain, if I may... I once knew an officer with the surname Corwin. Tell me, are you related to a man named Audamar?~ */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinKeldInitial", "GLOBAL", 2)
			~
			== XACORWIB
			@625  /* ~Yes, that's my father.~*/
			== BKELDOR
			@626  /* ~I thought so. Some 25 or so years past I had ventured west to the vicinity of Baldur's Gate, to evaluate locations for a new chapter of our order. It was then that I met your father, and your mother, presumably.~ */
			= @629  /* ~From what I remember of him, your father was a good man, and a fine officer.~ */
			== XACORWIB
			@630  /* ~He still is. He's retired now, though. ~*/
			== BKELDOR
			@631  /* ~Then he's still alive? That's good to hear... and what of your mother? I cannot recall her name, though I vaguely remember she was pregnant at the time.~*/
			== XACORWIB
			@632  /* ~My mother died when I was very young. Her name was Ilara.~*/
			== BKELDOR
			@633  /* ~I see... it must have been difficult, then, for the two of you.~ */
			== XACORWIB
			@634  /* ~More-so for my father than for me. I didn't make things easy for him, that's for sure.~*/
			== BKELDOR
			@635 /*~How so?~*/
			== XACORWIB
			@640 /*~When I was younger, I ran a bit wild. It took a lot of strength and patience on my father's part to set me on the right path. Things would have been much different for me if he were a lesser man.~ [BD35094]*/
			== BKELDOR
			@636 /*~Be that as it may, I'm sure he's proud of the fine young officer you've become.~*/
			== XACORWIB
			@638  /* ~Spoken like someone who barely knows me, but I'll take what compliments I can get and do what I can not to change your mind.~ [BD34332] */
			== BKELDOR
			@641 /*~Aye. Come, Captain. Duty calls.~*/
	EXIT
	//}
	//{ Dialog B-63
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinKeldorn", "GLOBAL", 2)
			IsValidForPartyDialogue("Keldorn")
		~ THEN XACORWIB BCorwinKeldorn1
			@60 /* ~Keldorn, a moment of your time?~ [XACORB12] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinKeldorn", "GLOBAL", 3)
			~ 
			== BKELDOR
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@61 /* ~Of course Captain. How can I help you?~ */
			== BKELDOR
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@766 /* ~Of course Major. How can I help you?~ */
			== XACORWIB
			@62 /*  ~Do you have any children?~ [BD54420] */
			== BKELDOR
			@145 /* ~Yes, two daughters. I love them dearly.~ */
			== XACORWIB
			@146 /* How do you balance your duties to your Order with your responsibilities as a parent?~ */
			=
			@63 /* ~I ask because I have a daughter, and I feel like I am struggling to find the right balance.~ */
			== BKELDOR
			@64 /* ~That's something I've struggled with as well. There is no right answer. What is most important is that your daughter understands that you love her, and that at times it is necessary for you to be apart from her to perform your duties toward the Flaming Fist.~*/
			=
			@65 /* ~Who is helping to raise your child while you are on this assignment?~ */
			== XACORWIB
			@66 /*  ~My father, thankfully... I know that she's safe with him.~ */
			== BKELDOR
			@200 /* ~That is good... I am pleased that you involve the child's grandfather in her life.~ */
	EXIT
	//}

	//{ Dialog B-64
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinKeldorn", "GLOBAL", 4)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			IsValidForPartyDialogue("Keldorn")
		~ THEN XACORWIB BCorwinKeldorn1
			@201 /* ~Yes, Keldorn?~ [BD68260]*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinKeldorn", "GLOBAL", 5)
			~ 
			== BKELDOR
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@202 /* ~Captain, I do not mean to pry. You mentioned earlier that your father was raising your child, yes?~ */
			== BKELDOR
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@767 /* ~Major, I do not mean to pry. You mentioned earlier that your father was raising your child, yes?~ */
			== XACORWIB
			@203 /* ~Yes, that's right.~ */
			== BKELDOR
			@67 /* ~And where is your husband? Is he not helping to raise her?~  */
			== XACORWIB
			@51 /* ~I'm not married - her father has never been a part of her life, which in this case is a good thing. ~ */
			== BKELDOR
			@52  /* ~I'm afraid I don't understand.~*/
			== XACORWIB
			@53 /* ~He was there when she was conceived. He was never her father. When I told him about Rohma...~ [BD52089]*/
			= @59 /* ~You know, it's ironic that you'd ask about him. When Rohma was born, he wanted me to leave her at a temple of the Radiant Heart. Could you imagine? Giving up my baby like that? That was when I knew that it would never work between us.~ */
			== BKELDOR
			@69 /* ~I see... it's important for a child's father, or a father figure, to be a part of a child's life.~  */
			== XACORWIB
			@70 /* ~I agree... my father has had a tremendous impact on my life, and my daughter's... */
			=
			@5 /*~I hope to one day share the honor of being her parent with the right person... it's a big job.~ [XA100024] */
			=
			@800 /* ~(She shoots a quick glance in your direction.)~*/
			=
			@801 /* ~Time will tell, I suppose.~*/
			=
			@71 /* ~I appreciate the advice - thank you, Keldorn.~ */
			== BKELDOR
			@72 /* ~Any time, my friend. Let us hope that we are both able to return to our families soon.~ */
	EXIT
	//}

	//{ Dialog B-65
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinKeldorn", "GLOBAL", 4)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			IsValidForPartyDialogue("Keldorn")
		~ THEN XACORWIB BCorwinKeldorn1
			@201 /* ~Yes, Keldorn?~ [BD68260] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinKeldorn", "GLOBAL", 5)
			~ 
			== BKELDOR
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@202 /* ~Captain, I do not mean to pry. You mentioned earlier that your father was raising your child, yes?~ */
			== BKELDOR
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@767 /* ~Major, I do not mean to pry. You mentioned earlier that your father was raising your child, yes?~ */
			== XACORWIB
			@203 /* ~Yes, that's right.~ */
			== BKELDOR
			@67 /* ~And where is your husband? Is he not helping to raise her?~  */
			== XACORWIB
			@68 /* ~I'm not married - her father has never been a part of her life, which in this case is a good thing. ~ */
			= @59 /* ~You know, it's ironic that you'd ask about him. When Rohma was born, he wanted me to leave her at a temple of the Radiant Heart. Could you imagine? Giving up my baby like that? That was when I knew that it would never work between us.~ */
			== BKELDOR
			@69 /* ~I see... it's important for a child's father, or a father figure, to be a part of a child's life.~  */
			== XACORWIB
			@70 /*~I agree... my father's done so much for me, and for my daughter...~  */
			=
			@5  /* ~I hope to one day share the honor of being her parent with the right person... it's a big job.~ [XA100024] */
			=
			@71 /* ~I appreciate the advice - thank you, Keldorn.~ */
			== BKELDOR
			@72 /* ~Any time, my friend. Let us hope that we are both able to return to our families soon.~ */
	EXIT
	//}

//}

//{ Anomen Banters
	
	//{ Continuation of B-1
	CHAIN
	IF ~~ THEN XACORWIB BCorwinAnomen1B
		@54 /* ~You think I don't want to be home with my daughter and father? ~ [XACORB60]*/
		= @55 /* ~I'm here to fulfil my duties to <CHARNAME>, the Grand Dukes, and the Flaming Fist. If you knew anything about duty or responsibility, you would understand.~ */
		== BANOMEN
		@547 /* ~Why even join the Flaming Fist? You willingly put your daughter at risk of becoming an orphan!~ */
		== XACORWIB
		@56 /* ~We don't all grow up in wealthy households. Some of us have to work to support their family, instead of playing dress up as a knight in shining armor.~ */
		== BANOMEN
		@548 /* ~I beg your pardon?~  */
		== XACORWIB
		@57 /* ~I think you heard me quite clearly. Let's move out.~ [XACORB21] */
	EXIT
	//}
	
	//{ Dialog B-67
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinAnomen", "GLOBAL", 2)
			!Global("XA_LC_CorwinHatesAnomen", "GLOBAL", 1)
			IsValidForPartyDialogue("Anomen")
		~ THEN XACORWIB BCorwinAnomen2
			@174 /* ~Anomen. What is it?~ [XACORB02] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinAnomen", "GLOBAL", 3)
			~ 
			== BANOMEN
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@164 /* ~Captain Corwin, I wish to apologize to you for my earlier behaviour.~ */
			== BANOMEN
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@768 /* ~Major Corwin, I wish to apologize to you for my earlier behaviour.~ */
			== BANOMEN
			@165 /* = ~It's just that I'm quite unaccustomed to seeing a woman serve in a military organization, let alone in a leadership position.~ */
			== XACORWIB
			@166 /* ~The Flaming Fist doesn't care if a recruit is a man or a woman. What matters is their ability and willingness to do what's needed of them.~ */
			== BANOMEN
			@167 /* ~They are fortunate to have you among their ranks. Your skill in battle is among the best I have seen, as is your ability to lead.~*/
			== XACORWIB
			@170 /* = ~I too must aplogize. My family isn't wealthy. As much as I want to be home with my father and daughter, I need to work to support them.~ */
			=
			@171 /* = ~I have certain... pre-conceptions about people who come from wealth. It was unfair of me to apply them to you.~ */
			== BANOMEN
			@172 /* = ~I understand. In Athkatla especially, there are many families that have acquired their wealth through... less than honorable means. I assure you, however, that my family is not one of them.~ */
			=
			@173 /* ~It seems that we would both do well to, as they say, avoid judging a book by its cover.~  */
			== XACORWIB
			@177  /* ~Aye. That would be for the best, I think.~ [BD54407]*/
	EXIT
	//}


//}

//{ Jaheira Banters

	//{ Dialog B-68
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinJaheira", "GLOBAL", 2)
			Global("XA_LC_IrenicusBeat", "GLOBAL", 1)
			IsValidForPartyDialogue("Jaheira")
		~ THEN XACORWIB jahRemorseChain1
			@0 /* ~Jaheira.~ [XACORB16] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinJaheira", "GLOBAL", 3)
			~
			== BJAHEIR
			@6 /*Yes?*/
			== XACORWIB
			#258901 /* I'm sorry for your loss.*/
			=@1 /* ~Your husband was good man, and a fine warrior. Those who survived the siege on Bridgefort owe him their lives.~*/
			== BJAHEIR
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@4 /* ~Thank you, Captain. The pain of his loss weighs heavily, though I am glad that the monster responsible is dead.~ */
			== BJAHEIR
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@770 /* ~Thank you, Major. The pain of his loss weighs heavily, though I am glad that the monster responsible is dead.~ */
			== XACORWIB
			@3 /* ~As am I.~ */
	EXIT
	//}

	//{ Dialog B-69
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinJaheira", "GLOBAL", 2)
			!Global("XA_LC_IrenicusBeat", "GLOBAL", 1)
			IsValidForPartyDialogue("Jaheira")
		~ THEN XACORWIB jahRemorseChain2
			@0 /* ~Jaheira.~ [XACORB16] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinJaheira", "GLOBAL", 3)
			~
			== BJAHEIR
			@17 /* ~Yes, Captain?~*/
			== XACORWIB
			@1 /* ~I'm very sorry about Khalid. Your husband was good man, and a great warrior. Those who survived the siege on Bridgefort owe him their lives.~ */
			== BJAHEIR
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@2 /* ~Thank you, Captain. The pain of his loss weighs heavily. In time I will learn to cope with this, but for now I only wish to see Irenicus dead... and I am glad you are here to help in the hunt for that monster.~ */
			== BJAHEIR
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@771 /* ~Thank you, Major. The pain of his loss weighs heavily. In time I will learn to cope with this, but for now I only wish to see the Five stopped... and I am glad you are here to help in that regard.~  */
			== XACORWIB
			@3 /* ~As am I.~ */
	EXIT
	//}

	//{ Dialog B-70
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinJaheira", "GLOBAL", 4)
			IsValidForPartyDialogue("Jaheira")
		~ THEN XACORWIB BCorwinJaheira1
			@30 /* ~(She adjusts the string on her bow)~ [XA100067]   */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinJaheira", "GLOBAL", 5)
			~ 
			== BJAHEIR
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@9 /* ~Captain, a word please.~*/
			== BJAHEIR
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@772 /* ~Major, a word please.~*/
			== XACORWIB
			@10 /* ~Yes, Jaheira?~ */
			== BJAHEIR
			@11 /*  ~You are quite skilled as a fighter, far moreso than the Flaming Fist I've encountered in my travels. Where did you acquire such skill?~ */
			== XACORWIB
			@12	/* ~My father was a Fist as well. He taught me how to fight at a young age. ~  */
			== BJAHEIR
			@191 /* ~A young age? It must have been difficult for you, then.~ */
			== XACORWIB
			@190 /*~Heh. My father let me fall down a lot. At the time, it made me angry. I thought I'd never forgive him. Then I realized how hard it was for him to let me struggle—and fail—on my own. It made me the woman I am.~ [BD58841]*/
			= 
			@31 /* ~By the time I joined the Fist, I had more fighting ability than many of the officers, so I was placed into a more advanced training regimen to further refine my skills.~~*/
			== BJAHEIR
			@13	/*~I see, your father did you a great service. And your mother?~*/
			== XACORWIB
			@14 /* ~My mother... that's a long story.~*/
			= @15 /* ~Let's leave it for another day, shall we?~*/
	EXIT
	//}

	//{ Dialog B-71
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinJaheira", "GLOBAL", 6)
			IsValidForPartyDialogue("Jaheira")
		~ THEN XACORWIB BCorwinJaheira2
			@0 /* ~~Jaheira.~ [XA100055]~*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinJaheira", "GLOBAL", 7)
			~ 
			== BJAHEIR
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@17	/* ~Yes, Captain?~*/	
			== BJAHEIR
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@756 /* ~Yes, Major?~*/		
			== XACORWIB
			@18 /* ~Earlier, you wanted to know about my mother...~*/
			= 
			@19 /* ~I did not know her well. You see, she was killed when I was very young.~*/
			== BJAHEIR
			@20 /* ~I am sorry to hear that. I did not mean to stir up bad memories...~*/
			== XACORWIB
			@21 /* ~Yes.. my father does not speak of her often, but I know it still hurts him, and that he feels partly responsible.~*/
			== BJAHEIR
			@22 /* ~In what way?~*/
			== XACORWIB
			@23 /* ~He was very committed to his duty, like I am. It left little time for other concerns, including my mother.~*/
			= @24 /* ~They had an argument one evening, and she left the house, I guess to cool off. She didn't make it back home.~*/
			== BJAHEIR
			@25 /* ~What happened?~*/
			== XACORWIB
			@26 /* ~Some thug robbed her, and tried to rape her. When she fought back, he killed her.~*/
			== BJAHEIR
			@27 /* ~That's terrible... I am sorry that you had to lose your mother in such a way.~*/
			== XACORWIB
			@28 /* ~That's when my father began teaching me how to fight. I often wonder how different things would be had she not been murdered...~*/
			== BJAHEIR
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@29 /* ~Hm. I appreciate you sharing this with me, Captain. Such things are never easy to talk about.~*/
			== BJAHEIR
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@58 /* ~Hm. I appreciate you sharing this with me, Major. Such things are never easy to talk about.~*/
	EXIT
	//}
	
//}

//{ Aerie Banters

	//{ Dialog B-72
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinAerie", "GLOBAL", 2)
			IsValidForPartyDialogue("Aerie")
		~ THEN XACORWIB BCorwinAerie1
			@39 /* ~Aerie, what's wrong? You seem worried... more than usual, anyway.~ [XACORB13] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinAerie", "GLOBAL", 3)
				SetGlobal("XA_LC_CorwinAerieScars", "GLOBAL", 1)
			~  
			== BAERIE
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@40 /* ~It's n-nothing, Captain... well, can I ask you a question?~ */
			== BAERIE
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@773 /* ~It's n-nothing, Major... well, can I ask you a question?~ */
			== XACORWIB
			@41 /* ~Yes, what is it Aerie?~ */
			== BAERIE
			@42 /* ~I often worry about how my s-scars affect how people think of me. You have scars as well, yet you are always so c-confident and assertive. Why don't your scars affect you in the same way that my scars affect me?~ */
			== XACORWIB
			@43 /* ~Aerie, scars serve as a reminder to us. They show us that we are stronger than the person that tried to hurt us.~ */
			== BAERIE
			@44 /* ~That's a.. an interesting way of looking at things... How did you get your s-scars?~ */
			== XACORWIB
			@45 /* ~Through my duty to the Flaming Fist. This one here (she points under her right eye) came after I chased a thief into an alley... I triggered an acid trap. I learned an important lesson from that.~ */
			== BAERIE
			@46 /* ~Oh dear! What did you l-learn? ~ */
			== XACORWIB
			@47 /* ~Not to rush into things, and to evaluate the situation before taking action.~*/
			== BAERIE
			@48 /* ~I see... couldn't the healers remove the scar?~ */
			== XACORWIB
			@49 /* ~Yes, but like I said, the scars help me to avoid making the same mistakes. The same goes for emotional scars, Aerie.~*/
			== BAERIE
			@50 /* ~I - I understand. Thank you... Schael.~ */
	EXIT
	//}

	//{ Dialog B-74
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinAerie", "GLOBAL", 4)
			IsValidForPartyDialogue("Aerie")
		~ THEN XACORWIB BCorwinAerie2
			@124 /*  ~Damn it!~ [XA100035]  */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinAerie", "GLOBAL", 5)
			~  
			== BAERIE
			@125 /* ~Schael? What's wrong?~ */
			== XACORWIB
			@126 /* ~It's nothing, Aerie... one of the links in the back of my armor is pinched up against my vest. I can't quite reach it to pull it loose.~ */
			== BAERIE
			@127 /* ~Oh, please let me h-help you with that... there, is that better?~ */
			== XACORWIB
			@128 /* ~Ah, yes.. much better. Thanks, Aerie.~ */
			== BAERIE
			@100 /* ~Oh, y-you're welcome. Schael? Can I ask you a question?~ */
			== XACORWIB
			@101 /* ~Sure. What's on your mind?~ */
			== BAERIE
			IF ~
				!Global("XA_LC_AerieInBG", "GLOBAL", 1)
			~
			@102 /* ~I've encountered so many d-different people, cultures and races while in the circus. The circus never travelled to Baldur's Gate before. What are the people there like?~ */
			== BAERIE
			IF ~
				Global("XA_LC_AerieInBG", "GLOBAL", 1)
			~
			@796 /* ~~In your travels, have you ever met one of my k-kind? An Avariel? Before me, I mean.~*/
			== XACORWIB
			IF ~
				!Global("XA_LC_AerieInBG", "GLOBAL", 1)
			~
			@103 /* ~Not much different than Athkatla, Aerie. Most of the population is human, but there are dwarves, gnomes, elves, even some half-orcs in the city.~*/
			== BAERIE
			IF ~
				!Global("XA_LC_AerieInBG", "GLOBAL", 1)
			~
			@104 /* ~I see.. have you m-met an Avariel before? Before me, I mean.~ */
			== XACORWIB
			@87 /* ~Yes, <CHARNAME> and I have met one of your kind before.~*/
			== BAERIE
			@88 /* ~R-really? What is their name?~ */
			== XACORWIB
			@89 /* ~Ashatiel. Did you know her?~ */
			== BAERIE
			@129 /* ~No... what is she like?~ */
			== XACORWIB
			@90 /* @90 = ~She was.. striking in her appearance.. a great leader, and a fierce opponent.~ */
			== BAERIE
			@91 /* @91 = ~Y-you mean you fought each other? But why?~ */
			== XACORWIB
			@130 /* ~That's going to take some time to explain.. let's discuss this tomorrow - we have work to do.~ */
			== BAERIE
			@131 /* ~Right.. okay, t-thank you, Schael.~ */
	EXIT
	//}

	//{ Dialog B-75
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinAerie", "GLOBAL", 6)
			Global("XA_LC_HonorableDuel", "GLOBAL", 1) //CHARNAME dueled Ashatiel honorably
			IsValidForPartyDialogue("Aerie")
		~ THEN XACORWIB BCorwinAerie3A
			@132 /* ~Aerie, you wanted to learn more about Ashatiel.. do you have some time now?~ [XACORB08]*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinAerie", "GLOBAL", 7)
			~  
			== BAERIE
			@133 /* ~Yes, Schael. Please continue with your story.~ */
			== XACORWIB
			@92/* ~<CHARNAME> and I were part of a coalition of forces from Baldur's Gate, Daggerford and Waterdeep. We marched north from Baldur's Gate to rendevous with the coalition and confront Caelar Argent and her crusaders.~*/
			== BAERIE
			@134 /* ~Caelar Argent? I-I'm sorry, who is she?~ */
			== XACORWIB
			@149 /* ~A charismatic leader. An acolyte of the Order of the Aster, once.~ [XA100080] */
			=
			@93 /* ~She rallied many to her banner, in spite of the death and destruction that she and her army caused across the Sword Coast.~*/
			=
			@436 /* ~After a series of defeats at the hand of <CHARNAME> and the coalition, Caelar and her forces retreated north, back to Dragonspear castle.~ */
			== BAERIE
			@437 /* ~I see.. and what was Ashatiel's role in this? Was she part of your c-coalition?~ */
			== XACORWIB
			@438 /* ~No, Aerie, she wasn't.~ */
			=
			@105 /* ~Ashatiel was one of Caelar's most trusted lieutenants. When the coalition breached the walls of Dragonspear castle, she left the keep to challenge <CHARNAME> to a duel. <CHARNAME> accepted the challenge.~ */
			=
			@136 /* ~Ashatiel believed that killing <CHARNAME> would force the coalition to withdraw. <CHARNAME> believed that the crusaders defending the keep would surrender, if Ashatiel were killed. Whatever the outcome was, lives would be saved, on both sides.~ */
			=
			@135/* ~Offering to duel <CHARNAME> was an honorable gesture on her part. Honorable, and foolish.~ */
			== BAERIE
			@94 /* ~W-what happened to her?~*/
			== XACORWIB
			@439 /* ~She... no. That's enough for now. We'll finish next time. Let's get moving.~ */
	EXIT
	//}

	//{ Dialog B-76
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinAerie", "GLOBAL", 8)
			Global("XA_LC_HonorableDuel", "GLOBAL", 1) //CHARNAME dueled Ashatiel honorably
			IsValidForPartyDialogue("XACORWIN")
		~ THEN BAERIE BCorwinAerie4A
			@441 /* ~Schael? Do you have time now to finish the story a-about Ashatiel?~ [XA100067] */
			
			== XACORWIB
			@446 /* ~Ah, sure Aerie. We left off at the duel, between Ashatiel and <CHARNAME>.~*/
			=
			@95 /* ~Ashatiel fought bravely, but she was killed by <CHARNAME> after a long battle. In her last moments, she cried out for Caelar to save her, but no help came - I think she realized at that point that her faith in Caelar was misplaced.~   */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinAerie", "GLOBAL", 9)
			~  
			== BAERIE
			@96 /* ~But that's - that's cruel! How could <PRO_HESHE> have killed her? Wasn't there another way?~*/
			== XACORWIB
			@447 /* ~Aerie, you don't understand - in killing Ashatiel, <CHARNAME> saved many lives, both crusader and coalition alike. Once she was dead, the crusaders taking part in the counterattack either fled or laid down their weapons.~ */
			=
			@137 /* ~I've no doubt that Ashatiel was a good person, and that she didn't deserve to die. But if I had to choose who'd survive between <CHARNAME> and Ashatiel, I'd choose <CHARNAME> every time. As you would, I believe.~ */
			== BAERIE
			@98 /* ~I see... I'm sorry then that <CHARNAME> h-had to do that..~ */
			== XACORWIB
			@99 /* ~So am I, Aerie. And so is <CHARNAME>. Do you know what the lesson from the story is?~ ~  */
			== BAERIE
			@444 /* ~I think so.. but please, tell me.~ */
			== XACORWIB
			@97 /* ~The lesson is this: war places people into untenable situations, and for that reason it must be avoided whenever possible.~ [XACORB25] */
			== BAERIE
			@445 /* ~I understand. Thank you, Schael.~ */
			== XACORWIB
			@214  /* ~That's what I like to see. Would that there were more like you.~ [BD67546]*/
	EXIT
	//}

	//{ Dialog B-77
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinAerie", "GLOBAL", 6)
			!Global("XA_LC_HonorableDuel", "GLOBAL", 1) //CHARNAME refused to duel Ashatiel, or cheated
			IsValidForPartyDialogue("Aerie")
		~ THEN XACORWIB BCorwinAerie3B
			@132 /* ~Aerie, you wanted to learn more about Ashatiel.. do you have some time now?~ [XACORB08]*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinAerie", "GLOBAL", 7)
			~ 
			== BAERIE
			@133 /* ~Yes, Schael. Please continue with your story.~ */
			== XACORWIB
			@92/* ~<CHARNAME> and I were part of a coalition of forces from Baldur's Gate, Daggerford and Waterdeep. We marched north from Baldur's Gate to rendevous with the coalition and confront Caelar Argent and her crusaders.~*/
			== BAERIE
			@134 /* ~Caelar Argent? I-I'm sorry, who is she?~ */
			== XACORWIB
			@149 /* ~A charismatic leader. An acolyte of the Order of the Aster, once.~ [XA100080] */
			=
			@93 /* ~She rallied many to her banner, in spite of the death and destruction that she and her army caused across the Sword Coast.~*/
			=
			@436 /* ~After a series of defeats at the hand of <CHARNAME> and the coalition, Caelar and her forces retreated north, back to Dragonspear castle.~ */
			== BAERIE
			@437 /* ~I see.. and what was Ashatiel's role in this? Was she part of your c-coalition?~ */
			== XACORWIB
			@438 /* ~No, Aerie, she wasn't.~ */
			=
			@147 /* ~Ashatiel was one of Caelar's most trusted lieutenants. When the coalition, led by <CHARNAME>, breached the walls of Dragonspear castle, she left the keep to lead the crusaders' counterattack. ~ */
			=
			@148 /* ~She showed great courage, but her efforts amounted to nothing.~ */
			== BAERIE
			@94 /* ~W-what happened to her?~*/
			== XACORWIB
			@439 /*  ~She... no. That's enough for now. We'll finish next time. Let's get moving.~ */
	EXIT
	//}

	//{ Dialog B-78
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinAerie", "GLOBAL", 8)
			!Global("XA_LC_HonorableDuel", "GLOBAL", 1)//CHARNAME refused to duel Ashatiel, or cheated
			IsValidForPartyDialogue("Aerie")
		~ THEN BAERIE BCorwinAerie4B
			@441 /* ~Schael? Do you have time now to finish the story a-about Ashatiel?~ [XA100067] */
			== XACORWIB
			@442 /* ~Ah, sure Aerie. Right, Ashatiel left the keep to lead the crusaders' counterattack.~ */
			=
			@150 /* ~She, and the other crusaders that took part in the counterattack fought bravely. <CHARNAME> rallied the coalition and defeated the crusaders, and Ashatiel was killed. We were victorious, but many lives on both sides were lost.~*/
			DO ~
				SetGlobal("XA_LC_Banter_CorwinAerie", "GLOBAL", 9)
			~
			== BAERIE
			@151 /* ~But that's - that's terrible! Wasn't there another way Schael, b-besides bloodshed?~*/
			== XACORWIB
			@152 /* ~Listen, I've no doubt that Ashatiel was a good person, and that she didn't deserve to die. But it was either us, or Ashatiel.~ */
			== BAERIE
			@153 /* ~I see... I'm sorry then that you and <CHARNAME> h-had to take part in that..~   */
			== XACORWIB
			@99 /* ~So am I, Aerie. And so is <CHARNAME>. Do you know what the lesson from the story is?~   */
			== BAERIE
			@444 /* ~I think so, but please tell me.~ */
			== XACORWIB
			@97 /* ~The lesson is this: war places people into untenable situations, and for that reason it must be avoided whenever possible.~ [XACORB25] */
			== BAERIE
			@445 /* ~I understand. Thank you, Schael.~ */
			== XACORWIB
			@214 /* ~That's what I like to see. Would that there were more like you.~ [BD67546]*/
			
	EXIT
	//}

//}

//{ Dorn Banters
	
	//{ Dialog B-80
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinDorn", "GLOBAL", 2)
			IsValidForPartyDialogue("Dorn")
		~ THEN XACORWIB BCorwinDorn1
			@32 /* ~Dorn - I thought you'd have learned by now that you can't serve two masters.~ [XACORB22] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinDorn", "GLOBAL", 3)
			~ 
			== BDORN
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@33 /* ~What do you mean by that, Captain?~*/
			== BDORN
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@774 /* ~What do you mean by that, Major?~*/
			== XACORWIB
			@34 /* ~You claim to help <CHARNAME>, yet your leash is held firm by your patron.~*/
			== BDORN
			@35 /* ~Watch your tongue, woman. You are very far from home, and your precious Flaming Fist.~*/
			= 
			@36 /* ~You are the one who is trying to serve two masters.~*/
			== XACORWIB
			@37 /* ~The difference is that <CHARNAME>'s goals and those of the Dukes are aligned. Your patron only wants to feed on the death and destruction left in your wake.~*/
			== BDORN
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@38 /* ~Hmph. Be wary of the day then, Captain, when the goals of those you serve oppose one another.~*/
			== BDORN
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@775 /* ~Hmph. Be wary of the day then, Major, when the goals of those you serve oppose one another.~*/
	EXIT
	//}

	//{ Dialog B-81
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinDorn", "GLOBAL", 4)
			!Global("XA_LC_DornPatronsDead", "GLOBAL", 1)
			IsValidForPartyDialogue("Dorn")
		~ THEN XACORWIB BCorwinDorn2
			@156 /* ~Dorn, I give orders to those under my command either verbally, or in writing. How do you receive orders from your patron?~ [XACORB04] */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinDorn", "GLOBAL", 5)
			~ 
			== BDORN
			@157 /* ~What concern of it is yours?~*/
			== XACORWIB
			@158 /* = ~How do you know that the orders you receive are legitimate? That they aren't sent by some other person, or thing?~ */
			== BDORN
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@159 /* = ~My patron communicates their thoughts to my mind. I can.. hear them, as clearly as I can hear your mewling voice, Captain.~ */
			== BDORN
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@776 /* = ~My patron communicates their thoughts to my mind. I can.. hear them, as clearly as I can hear your mewling voice, Major.~ */
			== XACORWIB
			@160 /* ~So, you just follow the voice inside your head that tells you to murder things. Is that right?~*/
			== BDORN
			@161 /* = ~Get to your point.~ */
			== XACORWIB
			@162 /* = ~If that voice tells you to harm <CHARNAME>, or anyone else that I care about, then your patron will need to find themselves a new slave. I trust I've made myself clear.~ */
			== BDORN
			@163 /* = ~You are a truly pathetic woman. Even still, such insults and threats are beneath you. I've no intention of betraying <CHARNAME>, certainly not while my patron benefits from our arrangement.~ */
			== XACORWIB
			@182 /*~Next time, keep that thrice-damned pit of hell you call a mouth shut or I'll shut it for you.~ [XA100081]*/
	EXIT
	//}

	//{ Dialog B-81A
	CHAIN
		IF ~
			Global("XA_LC_Banter_CorwinDorn", "GLOBAL", 4)
			Global("XA_LC_DornPatronsDead", "GLOBAL", 1)
			IsValidForPartyDialogue("Dorn")
		~ THEN XACORWIB BCorwinDorn2
			@586 /* ~Dorn, I'm curious.~ */
			DO ~
				SetGlobal("XA_LC_Banter_CorwinDorn", "GLOBAL", 5)
			~ 
			== BDORN
			@587 /* ~And? Out with it.~*/
			== XACORWIB
			@588 /* = ~I give orders to those under my command either verbally, or in writing. How did you receive orders from your patron?~*/
			== BDORN
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@589 /* = ~They communicated their thoughts to my mind. I could... hear them, as clearly as your mewling voice, Captain.~ */
			== BDORN
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@590 /* ~They communicated their thoughts to my mind. I could... hear them, as clearly as your mewling voice, Major.~*/
			== XACORWIB
			@591 /* ~And now that your patron is gone, you're no longer hearing the voices that tell you to murder things. Is that right?~*/
			== BDORN
			@161 /* = ~Get to your point.~ */
			== XACORWIB
			@592 /* ~If you harm <CHARNAME>, or anyone else that I care about, then —~*/
			== BDORN
			@585 /*~Pathetic, woman. Save your empty threats for someone who cares. I've no intention of betraying <CHARNAME>, certainly not while I benefit from our arrangement.~ */
			== XACORWIB
			@182 /*~Next time, keep that thrice-damned pit of hell you call a mouth shut or I'll shut it for you.~ [XA100081]*/
	EXIT
	//}

	//{ Dialog B-82
	CHAIN
		IF ~
			IsValidForPartyDialogue("Aerie")
			!IsValidForPartyDialogue("Valygar")
			Global("XA_LC_AVComplimentFamily", "GLOBAL", 1)
		~ THEN XACORWIB XA_ComplimentFamily
			@727 /* ~Oh... what a relief.~ */
			== BAERIE
			@716 /*  ~Schael, your daughter is just *so* precious! I love her!~ */
			DO ~
				SetGlobal("XA_LC_AVComplimentFamily", "GLOBAL", 2)
			~
			== XACORWIB
			@169 /*~That's kind of you to say...~ [BD67552]*/
			=
			@717 /* ~She's such a wonderful kid... I'd do anything for her. Anything.~ */
			== BAERIE
			@718 /* ~I hope one day I'll have some c-children of my own...~ */
			== XACORWIB
			@719 /* ~You're as sweet as they come. I'm sure you'll find the right person, Aerie.~ */
	EXIT
	//}
	
//}

//{ Corwin Family Compliment Dialogs
	
	//{ Dialog B-83
	CHAIN
		IF ~
			!IsValidForPartyDialogue("Aerie")
			!IsValidForPartyDialogue("Neera")
			IsValidForPartyDialogue("Valygar")
			Global("XA_LC_AVComplimentFamily", "GLOBAL", 1)
		~ THEN XACORWIB XA_ComplimentFamily
			@727 /* ~Oh... what a relief.~ */
			== BVALYGA
			IF ~
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@720 /*  ~Captain, you have a lovely family.~ */
			DO ~
				SetGlobal("XA_LC_AVComplimentFamily", "GLOBAL", 2)
			~
			== BVALYGA
			IF ~
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@777 /*  ~Major, you have a lovely family.~ */
			DO ~
				SetGlobal("XA_LC_AVComplimentFamily", "GLOBAL", 2)
			~
			== XACORWIB
			@169 /*~That's kind of you to say...~ [BD67552]*/
			=
			@721 /* ~Everything I do is for them, especially Rohma.~ */
			== BVALYGA
			@722 /* ~Having a family to provide for and protect is a great responsibility. I... I would welcome that responsibility.~ */
			== XACORWIB
			@723 /* ~It's something I think you'd excel at, if you allow yourself the opportunity.~*/
			== BVALYGA
			@724 /* ~What do you mean?~ */
			== XACORWIB
			@725 /* ~You have a chance here to forget about your past and your family's curse, and to start a new life. I suggest you take it.~ */
			== BVALYGA
			@726 /* ~Right... Let's go.~ */
	EXIT
	//}

	//{ region Dialog B-84
	CHAIN
		IF ~
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Valygar")
			Global("XA_LC_AVComplimentFamily", "GLOBAL", 1)
		~ THEN XACORWIB XA_ComplimentFamily
			@727 /* ~Oh... what a relief.~ */
			== BAERIE
			@716 /*  ~Schael, your daughter is just *so* precious! I love her!~ */
			DO ~
				SetGlobal("XA_LC_AVComplimentFamily", "GLOBAL", 2)
			~
			== XACORWIB
			@169 /*~That's kind of you to say...~ [BD67552]*/
			=
			@717 /* ~She's such a wonderful kid... I'd do anything for her. Anything.~ */
			== BAERIE
			@718 /* ~I hope one day I'll have some c-children of my own...~ */
			== XACORWIB
			@719 /* ~You're as sweet as they come. I'm sure you'll find the right person, Aerie.~ */
			== BVALYGA
			@722 /* ~Having a family to provide for and protect is a great responsibility. I... I would welcome that responsibility.~ */
			== XACORWIB
			@723 /* ~You'd excel at it Valygar, if you give yourself the opportunity.~*/
			== BVALYGA
			@724 /* ~What do you mean?~ */
			== XACORWIB
			@725 /* ~You have a chance here to forget about your past and your family's curse, and to start a new life.~ */
			== BVALYGA
			@726 /* ~Right... Let's go.~ */
	EXIT
	//}

	//{ region Dialog B-66
	CHAIN
		IF ~
			IsValidForPartyDialogue("Neera")
			!IsValidForPartyDialogue("Valygar")
			Global("XA_LC_AVComplimentFamily", "GLOBAL", 1)
		~ THEN XACORWIB XA_ComplimentFamily
			@727 /* ~Oh... what a relief.~ */
			== BNEERA
			@716 /*  ~Schael, your daughter is just *so* precious! I love her!~ */
			DO ~
				SetGlobal("XA_LC_AVComplimentFamily", "GLOBAL", 2)
			~
			== XACORWIB
			@169 /*~That's kind of you to say...~ [BD67552]*/
			=
			@717 /* ~She's such a wonderful kid... I'd do anything for her. Anything.~ */
			== BNEERA
			@434 /* ~You know, I've never given much thought to having kids...~*/
			== XACORWIB
			@584 /*~That's fair. Being a parent has many rewards, but it brings its share of difficulties too.~ [BD65225]*/
			= @617 /*~It's worth it though, Neera. It really is.~*/
			== BNEERA
			@618 /* ~I guess if I can find the right person, then one day, MAYBE. Oh, look. The others are leaving us in the dust. Time to go.~*/
	EXIT
	//}

	//{ region Dialog B-79
	CHAIN
		IF ~
			IsValidForPartyDialogue("Neera")
			IsValidForPartyDialogue("Valygar")
			Global("XA_LC_AVComplimentFamily", "GLOBAL", 1)
		~ THEN XACORWIB XA_ComplimentFamily
			@727 /* ~Oh... what a relief.~ */
			== BNEERA
			@716 /*  ~Schael, your daughter is just *so* precious! I love her!~ */
			DO ~
				SetGlobal("XA_LC_AVComplimentFamily", "GLOBAL", 2)
			~
			== XACORWIB
			@169 /*~That's kind of you to say...~ [BD67552]*/
			=
			@717 /* ~She's such a wonderful kid... I'd do anything for her. Anything.~ */
			== BNEERA
			@434 /* ~You know, I've never given much thought to having kids, but now...~ */
			== BVALYGA
			@722 /* ~Having a family to provide for and protect is a great responsibility. I... I would welcome that responsibility.~ */
			== XACORWIB
			@723 /* ~You'd excel at it Valygar, if you give yourself the opportunity.~*/
			== BVALYGA
			@724 /* ~What do you mean?~ */
			== XACORWIB
			@725 /* ~You have a chance here to forget about your past and your family's curse, and to start a new life.~ */
			== BVALYGA
			@726 /* ~Right... Let's go.~ */
	EXIT
	//}
	
//}



CHAIN
	IF ~~ THEN XACORWIB XAAKissChain
		@642 /* ~(You share a passionate embrace and kiss.)~ */
		
		== BAERIE
		IF ~
			!Global("AerieRomanceActive", "GLOBAL", 1)
			!Global("AerieRomanceActive", "GLOBAL", 2)
			IsValidForPartyDialogue("Aerie")
		~
		@643 /* ~Oh my... that's s-so romantic!~ */
		
		== BHAERDA
		IF ~
			IsValidForPartyDialogue("HaerDalis")
		~
		@644 /* ~Ah, the lovers' embrace - the inspiration for many a playwright, myself included.~  */
		
		== BIMOEN2
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		@645 /* ~Gorion would be so happy for you, <CHARNAME>...~ */
END XACORWIB XA_KissEnd