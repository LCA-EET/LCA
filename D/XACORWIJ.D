//XACORWIJ
//Daniel Valle
//dan@danielvalle.net

/* Revision History

2022-09-16: Initial Commit

*/ 
BEGIN ~XACORWIJ~

//{ FINSOL01 Debug
	IF ~
		Global("XA_FINSOL01_Debug", "GLOBAL", 1)
	~ THEN BEGIN XA_FINSOL01_Debug
		SAY @482
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobal("XA_FINSOL01_Debug", "GLOBAL", 0)
		~
		GOTO XA_Choice
		
		IF ~
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobal("XA_FINSOL01_Debug", "GLOBAL", 0)
		~
		GOTO XA_Choice_NonRomance
	END
//}

//{ FINSOL01
	//{ Chose to Stay
	IF ~~ THEN BEGIN XA_StayMortal
		SAY @625 /* ~Wh...What? I - I don't believe it. You chose to stay, instead of becoming a god?~ */
		
		IF ~~ THEN REPLY @626 /* ~I never wanted any of that, Schael. All I want is a life together with you.~ */
		GOTO XA_HappyEnd
		
		IF ~
			Global("XA_HappyEnding","GLOBAL",1)
		~ THEN REPLY @627 /* ~Don't you remember? I told you once long ago that some stories have happy endings. I'd like for our story to be one of them, Schael.~ */
		GOTO XA_HappyEnd2
		
		IF ~~ THEN REPLY @602 /* ~Why so surprised? If evil wizards, demons, dragons, and liches couldn't keep us apart... wait, did I forget anything?~ */
		GOTO XA_HappyEnd3
	END
	
	IF ~~ THEN BEGIN XA_HappyEnd
		SAY @628 /* ~(She covers her mouth, as her eyes fill with tears of joy. After a moment, she regains her composure.)~ */
	
		= @600 /* ~And you shall have it, hero.~ */
		
		IF ~~ THEN
		GOTO XA_HappyEnd_END
	END
	
	IF ~~ THEN BEGIN XA_HappyEnd2
		SAY @628 /* ~(She covers her mouth, as her eyes fill with tears of joy. After a moment, she regains her composure.)~ */
		
		= @615 /* ~And it will be, love, I promise you.~ */
		
		IF ~~ THEN
		GOTO XA_HappyEnd_END
	END
	
	IF ~~ THEN BEGIN XA_HappyEnd3
		SAY @599 /* ~(She laughs, as her eyes fill with tears of joy.)~ */
		
		= @598 /* ~Let's see... Kobolds. Crusaders. Also, Beholders, Mind Flayers, Basilisks... and who can forget the Bhaalspawn...~ */
		
		IF ~~ THEN REPLY @597 /* ~Oh, right, can't forget the Eye Tyrants. But, as I was saying, if all of those beasties couldn't keep us apart, what would make you think that the promise of godhood would? I love you Schael. All I want is a life together with you.~*/
		GOTO XA_HappyEnd3A
	END
	
	IF ~~ THEN BEGIN XA_HappyEnd3A
		SAY @600 /* ~And you shall have it, hero.~ */
		
		IF ~~ THEN
		GOTO XA_HappyEnd_END
	END
	
	IF ~~ THEN BEGIN XA_HappyEnd_END
		SAY @613  /* ~(You share a tender and passionate embrace.)~ */
		
		= @601 /* ~Back to the city, then, as soon as we can.~ */
		
		COPY_TRANS FINSOL01 32
	END
	//}

	//{ Non-Romance
	IF ~~ THEN BEGIN XA_Choice_NonRomance
		SAY @584 /* ~I don't envy your decision. To become a god... only to enter into a new struggle against other gods and planar powers. An endless battle, for perhaps all of eternity... I can't even begin to fathom what that would be like. Would you ever find peace? If I were in your shoes... well. I know what I'd choose.~*/
		
		= @585 /* ~Whatever you decide, <CHARNAME>, I want you to know that I appreciate everything you've done for me, for Rohma, and for Baldur's Gate. Thank you. It's been an honor to fight at your side, hero.~ */
		
		COPY_TRANS FINSOL01 27
	END
	//}
 
	//{ Romance
	IF ~~ THEN BEGIN XA_Twins2
		SAY @117 /*~Thank goodness... wait... children? You mean...~*/
		
		IF ~~ THEN
		EXTERN FINSOL01 XA_Twins3 
	END
	
	IF ~~ THEN BEGIN XA_Twins4
		SAY @118 /* ~Oh my...~ */
		
		IF ~~ THEN
		EXTERN FINSOL01 XA_Twins5 
	END
	
	IF ~~ THEN BEGIN XA_Choice
		SAY @119 /*~Oh, my love. I... I knew this was coming. You did too, I think... those nightmares you had about this very decision. But knowing that this was coming doesn't make it any easier, now that it's here. I tried to — to somehow convince myself that there was a future for us... but deep down, I knew.~*/
		
		= @120 /* ~(She takes hold of your hand.)~ */
		
		IF ~~ THEN
		GOTO XA_ChoiceNotPregnant
		
		IF ~
			Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
		~ THEN GOTO XA_ChoicePregnant
		
		IF ~
			Global("XA_CorwinTwins", "GLOBAL", 1)
		~ THEN GOTO XA_ChoiceTwins
	END
	
	//{ Not Pregnant Interactions
	IF ~~ THEN BEGIN XA_ChoiceNotPregnant
		SAY @178  /* ~I want you to know that I'll always treasure our time together... You're a hero, in every sense of the word. I love you, <CHARNAME>, now and always.~ */
		
		IF ~~ THEN REPLY @122 /* ~I don't want to leave you, Schael. I love you, more than anything.~ */
		GOTO XA_ChoiceA_NP
		
		IF ~~ THEN REPLY @126 /* ~You think I should give up the essence?~*/
		GOTO XA_ChoiceB_NP
		
		IF ~~ THEN REPLY @128 /* ~I'm sorry, Schael. I feel I have to go forward and accept my birthright.~ */
		GOTO XA_ChoiceC_NP
		
		IF ~~ THEN REPLY @106 /* ~I don't know what I should do.~ */
		GOTO XA_ChoiceB_NP
		
		IF ~~ THEN REPLY @44 /* ~Schael, you're the strongest, most determined woman I've ever known. You'll be fine.~ */
		GOTO XA_ChoiceD_NP
	END
	
	IF ~~ THEN BEGIN XA_ChoiceA_NP
		SAY @179 /* ~Love, Rohma, and a life together with you... it's all that I could ever want. But I don't have to decide between that, and godhood. I don't know how anyone could...~ */
		
		IF ~~ THEN 
		GOTO XA_ChoicePeace
	END
	
	IF ~~ THEN BEGIN XA_ChoiceB_NP
		SAY @185 /* ~I won't lie to you. I want you to stay. Love, Rohma, and a life together with you... it's all that I could ever want. But I don't have to decide between that, and godhood. I don't know how anyone could...~ */
		
		IF ~~ THEN 
		GOTO XA_ChoicePeace
	END
	
	IF ~~ THEN BEGIN XA_ChoiceC_NP
		SAY @129 /* ~I know. After everything you've been through... everything you've had to endure. You deserve it.~ */
		
		IF ~~ THEN
		GOTO XA_ChoiceB_NP
	END
	
	IF ~~ THEN BEGIN XA_ChoiceD_NP
		SAY @45 /*~It's going to hurt, for a while. The pain of not having you near me, of not waking up in your arms... it might never go away. Rohma will be heartbroken too. But you're right... we'll learn to live with it, and we'll be stronger for it.~*/
		
		IF ~~ THEN
		GOTO XA_ChoiceB_NP
	END
	//}
	
	//{ Pregnant / Twins Interactions
	IF ~~ THEN BEGIN XA_ChoicePregnant
		SAY @161 /* ~I want you to know that I'll always treasure our time together... and I'll tell our child about what an amazing man their father was. A hero, in every sense of the word. I love you, <CHARNAME>, now and always.~ */
		
		IF ~~ THEN REPLY @122 /* ~I don't want to leave you, Schael. I love you, more than anything.~ */
		GOTO XA_ChoiceA
		
		IF ~~ THEN REPLY @126 /* ~You think I should give up the essence?~*/
		GOTO XA_ChoiceB
		
		IF ~~ THEN REPLY @128 /* ~I'm sorry, Schael. I feel I have to go forward and accept my birthright.~ */
		GOTO XA_ChoiceC
		
		IF ~~ THEN REPLY @106 /* ~I don't know what I should do.~ */
		GOTO XA_ChoiceB
		
		IF ~~ THEN REPLY @44 /* ~Schael, you're the strongest, most determined woman I've ever known. You'll be fine.~ */
		GOTO XA_ChoiceD
	END
	
	IF ~~ THEN BEGIN XA_ChoiceTwins
		SAY @121 /*~I want you to know that I'll always treasure our time together... and I'll tell our children about what an amazing man their father was. A hero, in every sense of the word. I love you, <CHARNAME>, now and always.~*/
		
		IF ~~ THEN REPLY @122 /* ~I don't want to leave you, Schael. I love you, more than anything.~ */
		GOTO XA_ChoiceA
		
		IF ~~ THEN REPLY @126 /* ~You think I should give up the essence?~*/
		GOTO XA_ChoiceB
		
		IF ~~ THEN REPLY @128 /* ~I'm sorry, Schael. I feel I have to go forward and accept my birthright.~ */
		GOTO XA_ChoiceC
		
		IF ~~ THEN REPLY @106 /* ~I don't know what I should do.~ */
		GOTO XA_ChoiceB
		
		IF ~~ THEN REPLY @44 /* ~Schael, you're the strongest, most determined woman I've ever known. You'll be fine.~ */
		GOTO XA_ChoiceD
	END
	
	IF ~~ THEN BEGIN XA_ChoiceA
		SAY @123 /* ~Love, children, and a life together with you... it's all that I could ever want. But I don't have to decide between that, and godhood. I don't know how anyone could...~ */
		
		IF ~~ THEN 
		GOTO XA_ChoicePeace
	END
	
	IF ~~ THEN BEGIN XA_ChoiceB
		SAY @127 /* ~I won't lie to you. I want you to stay. Love, children, and a life together with you... it's all that I could ever want. But I don't have to decide between that, and godhood. I don't know how anyone could...~ */
		
		IF ~~ THEN 
		GOTO XA_ChoicePeace
	END
	
	IF ~~ THEN BEGIN XA_ChoiceC
		SAY @129 /* ~I know. After everything you've been through... everything you've had to endure. You deserve it.~ */
		
		IF ~~ THEN
		GOTO XA_ChoiceB
	END
	
	IF ~~ THEN BEGIN XA_ChoiceD
		SAY @45 /*~It's going to hurt, for a while. The pain of not having you near me, of not waking up in your arms... it might never go away. But you're right... I'll learn to live with it.~*/
		
		IF ~~ THEN
		GOTO XA_ChoiceB
	END
	//}
	
	IF ~~ THEN BEGIN XA_ChoicePeace
		SAY @321  /* ~If what the celestial said is true though... you'd be leaving the struggle of this life, only to enter into a new struggle against gods and other planar powers. An endless battle, for perhaps all of eternity... I can't even begin to fathom what that would be like. Will you ever find peace? Will you ever find ... love, again?~*/

		IF ~
			!Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
			!Global("XA_CorwinTwins", "GLOBAL", 1)
		~ THEN REPLY @323 /* ~You've given me a lot to think about. If I do accept this power, I promise you that at the very least, I will keep you and Rohma safe from any who would seek to do you harm.~*/
		GOTO XA_ChoiceEmbrace
		
		IF ~
			Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
			Global("XA_CorwinTwins", "GLOBAL", 1)
		~ THEN REPLY @324 /* ~You've given me a lot to think about. If I do accept this power, I promise you that at the very least, I will keep you, Rohma, and our children safe from any who would seek to do you harm.~*/
		GOTO XA_ChoiceEmbrace
		
		IF ~
			Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
			!Global("XA_CorwinTwins", "GLOBAL", 1)
		~ THEN REPLY @322 /* ~You've given me a lot to think about. If I do accept this power, I promise you that at the very least, I will keep you, Rohma, and our child safe from any who would seek to do you harm.~*/
		GOTO XA_ChoiceEmbrace
	END
	
	IF ~~ THEN BEGIN XA_ChoiceEmbrace
		SAY @80 /* ~Come here...~ */
		
		= @81 /* ~(You share a tender and emotional embrace.)~ */
		
		COPY_TRANS FINSOL01 27
	END
	
	IF ~~ THEN BEGIN XA_ChoiceThankYou
		SAY @486 /* ~Go... and thank you, love. Thank you for everything you've done for me, for Rohma, and for Baldur's Gate... and for the memories that I'll cherish for as long as I live. Farewell.~*/
		
		COPY_TRANS FINSOL01 29
	END
	
	IF ~~ THEN BEGIN XA_ChoiceThankYouChild
		SAY @485 /* ~Go... and thank you, love. Thank you for everything you've done for me, for Rohma, and for Baldur's Gate. Thank you for giving me a child, and for the memories that I'll cherish for as long as I live. Farewell.~*/
		
		COPY_TRANS FINSOL01 29
	END
	
	IF ~~ THEN BEGIN XA_ChoiceThankYouTwins
		SAY @484  /*~Go... and thank you, love. Thank you for everything you've done for me, for Rohma, and for Baldur's Gate. Thank you for giving me children, and for the memories that I'll cherish for as long as I live. Farewell.~ */
		
		COPY_TRANS FINSOL01 29
	END
	//}
	
//}

//{ Dialog J-84 - Leave after SoA
IF ~
	OR(2)
		Global("XA_CorwinDepart", "GLOBAL", 1)
		Global("XA_CorwinDepart", "GLOBAL", 2)
~ THEN BEGIN XA_LeaveAfterSoA_100
	SAY @313 /* ~Finally, it's over. Congratulations on your victory, <CHARNAME>.~  */
	
	IF ~~ THEN REPLY @315 /* ~What will you do now?~ */
	GOTO XA_LeaveAfterSoA_100_2
	
	IF ~~ THEN REPLY @316 /* ~Thank you, Captain.~*/
	GOTO XA_LeaveAfterSoA_100_2
END


IF ~~ THEN BEGIN XA_LeaveAfterSoA_100_2
	SAY @314 /* ~I'm heading back to Baldur's Gate. The elves were kind enough to arrange a caravan to take me home.~*/
	
	IF ~~ THEN
	GOTO XA_LeaveAfterSoA_100_3
	
	IF ~
		Global("DornRomanceActive", "GLOBAL", 2)
		Global("XA_CorwinDepart", "GLOBAL", 1)
	~ THEN
	GOTO XA_LeaveAfterSoA_100_Dorn
	
	IF ~
		Global("HexxatRomanceActive", "GLOBAL", 2)
		Global("XA_CorwinDepart", "GLOBAL", 1)
	~ THEN
	GOTO XA_LeaveAfterSoA_100_Hexxat
	
	IF ~
		Global("ViconiaRomanceActive", "GLOBAL", 2)
		Global("XA_CorwinDepart", "GLOBAL", 1)
	~ THEN
	GOTO XA_LeaveAfterSoA_100_Viconia
END

IF ~~ THEN BEGIN XA_LeaveAfterSoA_100_3
	SAY @320 /* ~I know we've had our ups and downs, but I wish you well. If you ever want to give us another try, come and see me in Baldur's Gate. Farewell.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinDepart", "GLOBAL", 3)
		ActionOverride(Player1, TakeCreatureItems("XACORWIN", BACKPACK))
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		StartCutSceneMode()
		StartCutScene("XA100EX")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_LeaveAfterSoA_100_Dorn
	SAY @319  /* ~I'd stay and celebrate, but my stomach can't stand the sight of you and Dorn together any longer. Farewell.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinDepart", "GLOBAL", 3)
		ActionOverride(Player1, TakeCreatureItems("XACORWIN", BACKPACK))
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		StartCutSceneMode()
		StartCutScene("XA100EX")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_LeaveAfterSoA_100_Hexxat
	SAY @318  /* ~I'd stay and celebrate, but my stomach can't stand the sight of you and Dorn together any longer. Farewell.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinDepart", "GLOBAL", 3)
		ActionOverride(Player1, TakeCreatureItems("XACORWIN", BACKPACK))
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		StartCutSceneMode()
		StartCutScene("XA100EX")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_LeaveAfterSoA_100_Viconia
	SAY @317  /* ~I'd stay and celebrate, but my stomach can't stand the sight of you and Viconia together any longer. Farewell.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinDepart", "GLOBAL", 3)
		ActionOverride(Player1, TakeCreatureItems("XACORWIN", BACKPACK))
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		StartCutSceneMode()
		StartCutScene("XA100EX")
	~
	EXIT
END
//}

//{ Dialog J-83 - Romance Conflict

IF ~
	Global("XA_RomanceConflictTalk", "GLOBAL", 1)
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
	SAY @1724 /*  ~<CHARNAME>. I think we need to have a talk.~ */
	
	IF ~~ THEN REPLY @1725  /* ~What's on your mind, love?~*/
	DO ~
		SetGlobal("XA_RomanceConflictTalk", "GLOBAL", 2)
	~
	GOTO XA_RomanceConflict2
	
	IF ~~ THEN REPLY @1726 /* ~Sure — what is it?~*/
	DO ~
		SetGlobal("XA_RomanceConflictTalk", "GLOBAL", 2)
	~
	GOTO XA_RomanceConflict2
END

IF ~~ THEN BEGIN XA_RomanceConflict2
	SAY @1727 /* ~You made it clear to me, I thought, that you wanted us to be together.~ */
	
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
	SAY @1731 /* ~Why, then, are you spending so much time with Aerie? Do you have feelings for her? She's a sweet girl, and you shouldn't lead her on.~ */
	
	IF ~~ THEN REPLY @1734 /* ~She's just a friend. You're the woman I love Schael, not her. I'll make it clear to her, in case it wasn't already.~ */
	DO ~
		SetGlobal("AerieRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1735 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now I was mistaken.~ */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_F
END
//}

//{ Neera
IF ~~ THEN BEGIN XA_RomanceConflict_Neera
	SAY @1732 /* ~Why, then, are you spending so much time with Neera? Do you have feelings for her? She's a sweet girl, and you shouldn't lead her on.~ */
	
	IF ~~ THEN REPLY @1734 /* ~She's just a friend. You're the woman I love Schael, not her. I'll make it clear to her, in case it wasn't already.~ */
	DO ~
		SetGlobal("NeeraRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1735 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now I was mistaken.~ */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_F
END
//}

//{ Jaheira
IF ~~ THEN BEGIN XA_RomanceConflict_Jaheira
	SAY @1733 /* ~Why, then, are you spending so much time with Jaheira? Do you have feelings for her? She's been through a lot with the loss of her husband, and you shouldn't lead her on.~ */
	
	IF ~~ THEN REPLY @1734 /* ~She's just a friend. You're the woman I love Schael, not her. I'll make it clear to her, in case it wasn't already.~ */
	DO ~
		SetGlobal("JaheiraRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1735 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now I was mistaken.~ */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_F
END
//}

//{ Rasaad
IF ~~ THEN BEGIN XA_RomanceConflict_Rasaad
	SAY @1739 /* ~Why, then, are you spending so much time with Rasaad? Do you have feelings for him? You shouldn't lead him on.~ */
	
	IF ~~ THEN REPLY @1740 /* ~He's just a friend. You're the one I love Schael, not him. I'll make it clear to him, in case it wasn't already.~ */
	DO ~
		SetGlobal("RasaadRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1741 /* ~I do love him. I'm sorry, Schael. I thought you and I had something, but I realize now that I was mistaken.~ */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_M
END
//}

//{ Anomen
IF ~~ THEN BEGIN XA_RomanceConflict_Anomen
	SAY @1742 /* ~Why, then, are you spending so much time with Anomen? Do you have feelings for that insufferable braggart? You shouldn't lead him on.~ */
	
	IF ~~ THEN REPLY @1740 /* ~He's just a friend. You're the one I love Schael, not him. I'll make it clear to him, in case it wasn't already.~ */
	DO ~
		SetGlobal("AnomenRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1741 /* ~I do love him. I'm sorry, Schael. I thought you and I had something, but I realize now that I was mistaken.~ */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_M
END
//}

//{ Hexxat
IF ~~ THEN BEGIN XA_RomanceConflict_Hexxat
	SAY @1743 /* ~Why, then, are you spending so much time with Hexxat? Do you have feelings for that monster?~ */
	
	IF ~~ THEN REPLY @1747 /* ~You're the one I love Schael, not her. I'll make it clear to her, in case it wasn't already.~*/
	DO ~
		SetGlobal("HexxatRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1735 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now I was mistaken.~ */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_Bad
END
//}

//{ Dorn
IF ~~ THEN BEGIN XA_RomanceConflict_Dorn
	SAY @1745 /* ~Why, then, is Dorn spending so much time with you? Do you have feelings for that filthy blackguard?~  */
	
	IF ~~ THEN REPLY @1746 /* ~You're the one I love Schael, not him. I'll make it clear to him, in case it wasn't already.~ */
	DO ~
		SetGlobal("DornRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1741 /* ~I do love him. I'm sorry, Schael. I thought you and I had something, but I realize now that I was mistaken.~ */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_Bad
END
//}

//{ Viconia
IF ~~ THEN BEGIN XA_RomanceConflict_Viconia
	SAY @1748 /* ~Why, then, is Viconia spending so much time with you? Do you have feelings for that wretched drow?~  */
	
	IF ~~ THEN REPLY @1747 /* ~You're the one I love Schael, not her. I'll make it clear to her, in case it wasn't already.~*/
	DO ~
		SetGlobal("ViconiaRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1735 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now that I was mistaken.~ */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_Bad2
END
//}

IF ~~ THEN BEGIN XA_RomanceConflict_EndCR_Bad
	SAY @1744 /* ~Unbelievable! Irenicus must've done a number on your senses. There's no other explanation for you choosing that beast over me. As soon as this mission is over, we're through.~  */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LeaveAfterSoA", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_RomanceConflict_EndCR_Bad2
	SAY @1749 /* ~Unbelievable! Irenicus must've done a number on your senses. There's no other explanation for you choosing that ... that slut, over me. As soon as this mission is over, we're through.~   */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LeaveAfterSoA", "GLOBAL", 1)
	~	
	EXIT
END

IF ~~ THEN BEGIN XA_RomanceConflict_Continue
	SAY @1738 /* ~That's all I needed to hear. Let's go.~ [BD54525] */
	
	IF ~~ THEN 
	EXIT
END

IF ~~ THEN BEGIN XA_RomanceConflict_EndCR_F
	SAY @1736 /* ~Fine. Be with her. I can't tell you how much this hurts... but I appreciate your honesty. Let's go.~ */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_RomanceConflict_EndCR_M
	SAY @1737 /* ~Fine. Be with him. I can't tell you how much this hurts... but I appreciate your honesty. Let's go.~  */
	
	IF ~~ THEN EXIT
END

//}

// XA_JARLAXLE_0
IF ~~ THEN BEGIN XA_JARLAXLE_0
	SAY @1634 /* ~Nice trick. You must be Jarlaxle.~*/
	
	IF ~~ THEN
	EXTERN JARLAXLE 1
END
//}

//{ XA_UDPHAE01
IF ~~ THEN BEGIN XA_UDPHAE01_IJ_88
	SAY @1632 /* ~She's right. If we can find a way to turn Solaufein, he would prove a valuable ally.~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_UDPHAE01_88
	SAY @1633 /* ~<CHARNAME> - We may be able to use this situation to our advantage. If we can turn Solaufein instead of killing him, he would prove a valuable ally.~*/
	
	IF ~~ THEN EXIT
END
//}
//{ Wedding Hostility
IF ~
	Global("XA_CorwinLeaveWedding", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinLeaveWedding
	SAY @1631 /* ~I won't be party to this madness any longer. If you ever clean up your act, you can find me in the Athkatla magistrate.~ */
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -6)
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		EscapeAreaMove("AR1002",1033,563, SW)
		SetGlobal("XA_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
		SetGlobal("XA_CorwinLeaveWedding", "GLOBAL", 2)
	~
	EXIT
END
//}

//{ #region Unused
IF ~~ THEN BEGIN XAA100
	SAY @431 /* ~(She becomes visibly upset.) You bastard! Gods damnit... (She calms down.)~ */
	IF ~~ THEN
	GOTO XAA75
END

IF ~~ THEN BEGIN XA_ReadLetter
	SAY @1041 /* ~I know we'd be walking into a trap... but Rohma's in danger! We have to go and get her!~ */
	
	IF ~~ THEN REPLY @1043 /* ~Yes, and we will. They won't harm her, so long as she is useful to them in making the exchange.~*/
	GOTO XA_ReadLetter2
END

IF ~~ THEN BEGIN XA_ReadLetter2
	SAY @1045 /* ~So what are we to do in the meantime? I can't just sit here while Rohma's being held captive!~*/
	
	IF ~~ THEN REPLY @1046 /* ~Tell me about Beno. Do you think he has it in him to harm his own daughter?~*/
	GOTO XA_ReadLetter2A
	
	IF ~~ THEN REPLY @1044 /* ~I will rouse the Dukes right away - they may have insight into this 'Illasera'. Let us discuss the matter in the Ducal palace before we make our move.~*/
	GOTO XA_StartDucalCS
END

IF ~~ THEN BEGIN XA_ReadLetter2A
	SAY @1047 /* ~He's threatened my father and me for years, but never Rohma...~ */
	
	IF ~~ THEN REPLY @1048 /* ~That's good... we may be able to use that to our advantage.~ */
	GOTO XA_ReadLetter3
END

IF ~~ THEN BEGIN XA_ReadLetter3
	SAY @1050 /* ~You mean to turn Beno against Illasera? I doubt that'll work. Beno's only ever cared for himself.~*/
	
	= @1052 /* ~He won't stick his neck out for anyone, not even his own daughter - I'm sure of it.~ */
	
	IF ~~ THEN REPLY @1051 /* ~Still, it may be worth trying. I will rouse the Dukes right away - they may have insight into this 'Illasera'. Let us discuss the matter in the Ducal palace before we make our move.~*/
	GOTO XA_StartDucalCS
END

IF ~~ THEN BEGIN XA_StartDucalCS
	SAY @1049 /* ~Fine. But whatever we decide, we need to do it quickly. I'll go after her myself if I have to.~*/
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1054 /* ~We're in this together, love. Let's go and convene the meeting with the Dukes.~ */
	DO ~
		SetGlobal("XA_RohmaKidnapped", "GLOBAL", 4)
		StartCutsceneMode()
		StartCutscene("XADUCAL")
	~
	EXIT
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1053 /* ~I'll not abandon you in your hour of need, my friend. We will rescue Rohma, together. Let's go and convene the meeting with the Dukes.~ */
	DO ~
		SetGlobal("XA_RohmaKidnapped", "GLOBAL", 4)
		StartCutsceneMode()
		StartCutscene("XADUCAL")
	~
	EXIT
END
//} #endregion

//{ SARMEL01
IF ~~ THEN BEGIN XA_SARMEL01_68
	SAY @1626 /* ~Illasera's dead. <CHARNAME> and I saw to that after she kidnapped my daughter.~ */
	
	IF ~~ THEN
	EXTERN SARMEL01 XA_SARMEL01_68_2
END

IF ~~ THEN BEGIN XA_SARMEL01_68_3
	SAY @1628 /* ~She is... and neither the Dukes nor the Flaming Fist will allow the Five to threaten Baldur's Gate again.~ */
	
	IF ~~ THEN
	EXTERN SARMEL01 XA_SARMEL01_68_4
END
//}
//{ SARPRO01
IF ~~ THEN BEGIN XA_SARPRO01_11
	SAY @1616 /* ~We don't have time for games. Let's go.~ */
	
	IF ~~ THEN REPLY @1617 /* ~I'm sorry, my love... I was just trying to lighten the grim mood.~ */
	GOTO XA_SARPRO01_Funny
	
	IF ~~ THEN REPLY @1618 /* ~Jealous? At least she doesn't come with a kid.~*/
	GOTO XA_SARPRO01_EndRomance
END 

IF ~~ THEN BEGIN XA_SARPRO01_EndRomance
	SAY @1619 /* ~Unbelievable, <CHARNAME>! If you really can't keep it in your pants during a time like this, then fine! Enjoy your whore — we're through.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_CorwinRomanceActive","GLOBAL",3)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -2)
	~ 
	EXTERN ~SARPRO01~ 12
END

IF ~~ THEN BEGIN XA_SARPRO01_Funny
	SAY @1620 /* ~You know that I love your playfulness and sense of humor, but this really isn't the time. Let's give the girl a bit of money so that she doesn't need to work the streets, then get on with our mission.~*/
	
	IF ~~ THEN 
	EXTERN ~SARPRO01~ 3
END
//}

//{ SARPROVF
IF ~~ THEN BEGIN XA_SARPROVF_0
	SAY @1625 /* ~You know I don't approve of this... but there's something about her. She may have some important information that she'll only disclose in private. Go with her, but watch your back.*/
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	EXTERN ~SARPROVF~ 1
END

IF ~~ THEN BEGIN XA_SARPROVF_0_BodhiBite
	SAY @1621 /* ~(She reaches up and touches the scar left behind from Bodhi's bite.)~*/
	
	IF ~~ THEN REPLY @1623 /* ~Are you alright?~*/
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
		
	~
	GOTO XA_SARPROVF_0_BodhiBite2
END

IF ~~ THEN BEGIN XA_SARPROVF_0_BodhiBite2
	SAY @1624 /* ~I don't know ... for a moment I felt a strange sensation. Something's wrong here. I think there's more to this woman than meets the eye. Go with her, but watch your back.~   */
	
	IF ~~ THEN
	EXTERN ~SARPROVF~ 1
END
//}

//{ Dialog J-82
IF ~
	Global("XA_CorwinPregnant", "GLOBAL", 10)
~ THEN BEGIN XA_CorwinPregnant_Final
	SAY @1667 /* ~<CHARNAME>... It's time. I need to go home. Have the gateway send me back to Baldur's Gate.~*/
	
	IF ~~ THEN REPLY @1676 /* ~Can't you stay with me for a while longer? I need you.~*/
	GOTO XA_CorwinPregnant_Final_2
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Final_2
	SAY @1677 /* ~I want to, more than anything. But I can't. Look, love.~ */
	
	= @1678 /* ~(She moves her hand around her belly... it's clear that she'll no longer able to hide that she's pregnant.)~ */
	
	IF ~~ THEN REPLY @1679 /* ~I... I understand, love.~ */
	GOTO XA_CorwinPregnant_Final_3
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Final_3
	SAY @1668 /*  ~Before I go, come here...~ */
	
	= @1669 /* ~(She takes your hand and places it on her belly, underneath her armor and vestment.)~*/
	
	= @1670 /* ~Wait for it...~*/
	
	= @1671/*~(You feel the baby kick.)~*/
	
	IF ~~ THEN REPLY @1672 /* ~I felt it! I felt our baby kick!~*/
	GOTO XA_CorwinPregnant_Final_4
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Final_4
	SAY @1673 /* ~Mm. That's your child, love. It's going to need its father to come home. And so will I.~*/
	
	= @1674 /*  ~(She struggles to hold back tears.)~*/
	
	= @1675 /* ~Please, my love... promise me... promise me you'll come home...~ */
	
	IF ~~ THEN REPLY @1680 /* ~I will. I promise.~*/
	GOTO XA_CorwinPregnant_Final_5A
	
	IF ~~ THEN REPLY @1681 /* ~I'll do everything in my power to return to you, Schael.~*/
	GOTO XA_CorwinPregnant_Final_5A
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Final_5A
	SAY @1683 /* ~I'll be waiting, love... Be *sob* careful, alright?~ */
	
	= @1682 /* ~(You share a tender and very emotional embrace.)~  */
	
	IF ~~ THEN
	GOTO XA_GoodbyeChainEnd
	
	IF ~
		OR(13)
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("HaerDalis")
			IsValidForPartyDialogue("Imoen2")
			IsValidForPartyDialogue("Jaheira")
			IsValidForPartyDialogue("Jan")
			IsValidForPartyDialogue("Keldorn")
			IsValidForPartyDialogue("Korgan")
			IsValidForPartyDialogue("Mazzy")
			IsValidForPartyDialogue("Minsc")
			IsValidForPartyDialogue("Nalia")
			IsValidForPartyDialogue("Neera")
			IsValidForPartyDialogue("Rasaad")
			IsValidForPartyDialogue("Valygar")
	~ THEN
	GOTO XA_GoodbyeChain
	
END

IF ~~ THEN BEGIN XA_GoodbyeChainEnd
	SAY @1684 /* ~Here, take my pack. I won't need it anymore...~ */
	
	IF ~~ THEN
	DO ~
		ActionOverride(Player1, TakeCreatureItems("XACORWIN", BACKPACK))
	~
	GOTO XA_GoodbyeChainEnd2
END

IF ~~ THEN BEGIN XA_GoodbyeChainEnd2
	SAY @1685 /* ~I'm ready, love. Send me home.~ */
	
	IF ~~ THEN REPLY @1686 /* ~As you wish, dear...~ */
	DO ~
		StartCutSceneMode()
		StartCutScene("XABYE")
	~
	EXIT
END
//}

//{ Dialog J-81
IF ~
	Global("XA_CorwinPregnant", "GLOBAL", 8)
~ THEN BEGIN XA_CorwinPregnant_Fourth
	SAY @1661 /* ~My love, a moment of your time?~ */
	
	IF ~~ THEN REPLY @1662 /* ~Of course, what's on your mind?~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 9)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", "ONE_MONTH")
	~
	GOTO XA_CorwinPregnant_Fourth_2
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Fourth_2
	SAY @1663 /* ~We'd discussed a couple of months ago that I'd need to go home once I started showing.~ */
	
	= @1664 /* ~I don't want to leave your side, but I won't be nearly as effective in the field. Plus, if one of your enemies sees that I'm pregnant, they'll use that against you.~ */
	
	IF ~~ THEN REPLY @1665 /* ~Right... how long do you think it will be, before you're visibly pregnant?~*/
	GOTO XA_CorwinPregnant_Fourth_3
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Fourth_3
	SAY @1666 /* ~I'd guess around four weeks. Maybe less. Hopefully we can wrap up what we need to here, then head back home. Let's go.~ */
	
	IF ~~ THEN
	EXIT
END
//}

//{ Dialog J-80
IF ~
	Global("XA_CorwinPregnant", "GLOBAL", 6)
~ THEN BEGIN XA_CorwinPregnant_Third
	SAY @1640 /* ~Mmm...~ */
	
	IF ~~ THEN REPLY @1641 /* ~How are you feeling, love?~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 7)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", "ONE_MONTH")
	~
	GOTO XA_CorwinPregnant_Third_2
	
	IF ~~ THEN REPLY @1642 /* ~What is it?~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 7)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", "ONE_MONTH")
	~
	GOTO XA_CorwinPregnant_Third_2
	
	IF ~~ THEN REPLY @1648 /* ~Hungry? I'm sure we can find something our packs to satisfy any new cravings.~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 7)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", "ONE_MONTH")
	~
	GOTO XA_CorwinPregnant_Third_2
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Third_2
	SAY @1643 /* ~I'm fine, hon. I was just remembering something... in the caravan, on our way to Saradush, you said you were having nightmares. Something... about having to make a difficult decision...~*/
	
	= @1645 /* ~I didn't understand what you meant at the time, but I think that I'm beginning to...~ */
	
	IF ~~ THEN REPLY @1646 /* ~Yes... I've been thinking about that as well.~ */
	GOTO XA_CorwinPregnant_Third_3
	
	IF ~~ THEN REPLY @1647 /* ~Where are you going with this?~ */
	GOTO XA_CorwinPregnant_Third_3
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Third_3
	SAY @1649 /* ~I see a change in you, love. Your skill in battle is unlike anything I've ever seen. You're becoming something... greater, if that makes sense.~ */
	
	= @1650 /* ~You know that I've never been one to believe in prophecies. But, if you did have to choose between godhood, and this life... what would that mean for us? For our child? There's nothing I can offer you that can compare with that.~ */
	
	IF ~~ THEN REPLY @1651 /*  ~Your love is enough, Schael. It's more than any <PRO_MANWOMAN> can ask for.~*/
	GOTO XA_CorwinPregnant_Third_4A
	
	IF ~~ THEN REPLY @1653 /* ~If I did become a god, I'd still love you. I'd be able to do things for you, and our child, that I could never do as a <PRO_MANWOMAN>.~ */
	GOTO XA_CorwinPregnant_Third_4B
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Third_4B
	SAY @1656 /* ~I imagine you'd be able to do anything. Except be with me, that is. Besides, what are mortal concerns like love, children, and companionship, to an immortal being?~  */
	
	IF ~~ THEN
	GOTO XA_CorwinPregnant_Third_5
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Third_4A
	SAY @1652 /* ~But don't you see, that's exactly it! A <PRO_MANWOMAN> is mortal, and a god is not. What are mortal concerns like love, children, and companionship, to an immortal being?~ */
	
	IF ~~ THEN
	GOTO XA_CorwinPregnant_Third_5
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Third_5
	SAY @1655 /* ~I - I'm sorry. I know you have enough on your mind already, and me worrying about these things isn't good for our baby.~ */
	
	IF ~~ THEN REPLY @1658 /* ~And how is our baby?~ */
	GOTO XA_CorwinPregnant_Third_6
	
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Third_6
	SAY @1659 /* ~(She smiles.)~ */
	= @1660 /* ~Good, love. I just can't wait to get home. Come on, let's go.~ */
	
	IF ~~ THEN
	EXIT
END
//}

//{ Dialog J-79
IF ~
	Global("XA_MessageToBG", "GLOBAL", 1)
	Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	GlobalGT("XA_CorwinPregnant", "GLOBAL", 2)
~ THEN BEGIN XA_AmkethranCourier_Pregnant
	SAY @1596 /* ~Listen — we need to provide a status update to the Dukes. They'll want to know that the fire giants have been dealt with, and they'll need my assessment of the threat posed by the remaining members of the Five. I also need to let my family know that we're fine ... and that I'm with child.~*/
	
	IF ~~ THEN REPLY @1597 /* ~Of course, love.~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_AmkethranCourier_END
	
	IF ~~ THEN REPLY @1593 /* ~What do you suggest we do?~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_AmkethranCourier_END
	
	IF ~~ THEN REPLY @1598 /* ~How do you think your father will take the news? And Rohma?~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_AudamarCorwinPregnant
END

IF ~~ THEN BEGIN XA_AudamarCorwinPregnant
	SAY @1599 /* ~Rohma will be thrilled, and I know she'll be a wonderful big sister to our baby. As for my father ... he'll be happy to have another grandchild, certainly, but he's going to have some stern words for me when I get back.~   */
	
	IF ~~ THEN REPLY @1600 /* ~What do you suggest we do, love?~*/
	GOTO XA_AmkethranCourier_END
END
//}

//{ Dialog J-78
IF ~
	Global("XA_MessageToBG", "GLOBAL", 1)
	Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	GlobalLT("XA_CorwinPregnant", "GLOBAL", 3)
~ THEN BEGIN XA_AmkethranCourier_Romance
	SAY @1595 /* ~Listen — we need to provide a status update to the Dukes. They'll want to know that the fire giants have been dealt with, and they'll need an assessment of the threat posed by the remaining members of the Five. I also need to let my family know that we're fine ...~ */
	
	IF ~~ THEN REPLY @1597 /* ~Of course, love.~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_AmkethranCourier_END
	
	IF ~~ THEN REPLY @1593 /* ~What do you suggest we do?~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_AmkethranCourier_END
END
//}

//{ Dialog J-77
IF ~
	Global("XA_MessageToBG", "GLOBAL", 1)
~ THEN BEGIN XA_AmkethranCourier
	SAY @1595 /* ~Listen — we need to provide a status update to the Dukes. They'll want to know that the fire giants have been dealt with, and they'll need an assessment of the threat posed by the remaining members of the Five. I also need to let my family know that we're fine ...~ */
	
	IF ~~ THEN REPLY @1592 /* ~Of course.~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_AmkethranCourier_END
	
	IF ~~ THEN REPLY @1593 /* ~What do you suggest we do?~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_AmkethranCourier_END
END
//}

//{ Common to Dialogs 77 through 79
IF ~~ THEN BEGIN XA_AmkethranCourier_END
	SAY @1594 /* ~This town might have a message courier we can use. Let's have a look around.~*/
	
	IF ~
		GlobalGT("XA_CorwinPregnant", "GLOBAL", 2)
	~ THEN REPLY @403 /* Right */
	DO ~
		AddJournalEntry(@1602, INFO)
	~
	EXIT
	
	IF ~
		!GlobalGT("XA_CorwinPregnant", "GLOBAL", 2)
	~ THEN REPLY @403 /* Right */
	DO ~
		AddJournalEntry(@1601, INFO)
	~
	EXIT
	
	IF ~
		GlobalGT("XA_CorwinPregnant", "GLOBAL", 2)
		IsValidForPartyDialogue("Rasaad")
		See("Rasaad")
	~ THEN
	DO ~
		AddJournalEntry(@1602, INFO)
	~
	EXTERN RASAADJ XA_AmkethranCourier_END
	
	IF ~
		!GlobalGT("XA_CorwinPregnant", "GLOBAL", 2)
		IsValidForPartyDialogue("Rasaad")
		See("Rasaad")
	~ THEN
	DO ~
		AddJournalEntry(@1601, INFO)
	~
	EXTERN RASAADJ XA_AmkethranCourier_END
	
END
//}

//{ Dialog J-76
IF ~
	Global("XA_CorwinParentAdvice", "GLOBAL", 2)
~ THEN BEGIN XA_ParentAdvice
	SAY @1568 /* ~Aerie told me the news. Congratulations, <CHARNAME>. You're going to be a father.~ */
	
	IF ~~ THEN REPLY @1569 /* ~She told you? I thought she wanted to keep it a secret, at least for the time being.~ */
	DO ~
		SetGlobal("XA_CorwinParentAdvice", "GLOBAL", 3)
	~
	GOTO XA_ParentAdvice_AerieSecret
	
	IF ~~ THEN REPLY @1571 /* ~Thanks, Schael.~ */
	DO ~
		SetGlobal("XA_CorwinParentAdvice", "GLOBAL", 3)
	~
	GOTO XA_ParentAdvice_ThanksSchael
END

IF ~~ THEN BEGIN XA_ParentAdvice_AerieSecret
	SAY @1570 /* ~She did. She was bouncing with energy, so naturally I asked her what was going on ... It didn't take long for her to spill the beans.~*/

	IF ~~ THEN REPLY @1578 /* ~Hah, I'm not surprised.~*/
	GOTO XA_ParentAdvice_ThanksSchael
	
	IF ~~ THEN REPLY @1579 /* ~Somehow, I don't think she'd last long in a Flaming Fist interrogation.~*/
	GOTO XA_ParentAdvice_ThanksSchael
END

IF ~~ THEN BEGIN XA_ParentAdvice_ThanksSchael
	SAY @1572 /* ~I think you're going to do great as parents. Care for a bit of advice?~ */
	
	IF ~~ THEN REPLY @1574 /*~Certainly.~*/
	GOTO XA_ParentAdvice_FirstAdvice
	
	IF ~~ THEN REPLY @1575 /*~Not right now — we need to get moving. I'll pick your brain over the coming days and weeks, I'm sure.~*/
	GOTO XA_ParentAdvice_NotRightNow
END

IF ~~ THEN BEGIN XA_ParentAdvice_FirstAdvice
	SAY @1581 /* ~The first few months with a newborn are always rough. It's easier to take care of your baby and to be a loving parent when you are in a good place, mentally, physically and emotionally. You and Aerie will need to work together to share the load.~*/
	
	IF ~~ THEN REPLY @1582 /* ~So, we need to practice good self-care, in other words.~ */
	GOTO XA_ParentAdvice_SecondAdvice
END

IF ~~ THEN BEGIN XA_ParentAdvice_SecondAdvice
	SAY @1583 /* ~Right. Also, you'll need to spend a lot of time cuddling and holding your baby. It helps a lot to read to your baby, too. Cuddling will make them feel loved and secure, and reading to them will help them to understand language.~ */
	
	IF ~~ THEN REPLY @1584 /*~That makes sense ... any additional advice?~*/
	GOTO XA_ParentAdvice_ThirdAdvice
END

IF ~~ THEN BEGIN XA_ParentAdvice_ThirdAdvice
	SAY @1585 /* ~When your child is Rohma's age, the most important thing you can do for them is to make sure that they feel safe, loved and valued. In that order, preferably. Your child will struggle without a safe and stable environment, and their sense of self-worth will suffer if you don't show them the unconditional love that only a parent can.~ */
	
	IF ~~ THEN REPLY @1586 /*~That is great advice. You've given me a lot to think about... thank you, my friend.~*/
	GOTO XA_ParentAdvice_Questions
END

IF ~~ THEN BEGIN XA_ParentAdvice_Questions
	SAY @1587 /* ~Anytime. If you or Aerie have any questions, please, just ask.~*/
	
	IF ~~ THEN 
	DO ~
		AddJournalEntry(@1588, INFO)
		AddXPObject(Player1, 25000)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_ParentAdvice_NotRightNow
	SAY @1576 /* ~Sounds good.~ */
	
	IF ~~ THEN
	EXIT
END
//}

//{ Dialog J-71
IF ~
	Global("XA_CorwinPregnant", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinPregnantInitial
	SAY @1510 /* ~Unhh...~ */
	
	
	IF ~~ THEN REPLY @1511 /*  ~You look a little under the weather, love. Is everything alright?~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 3)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", THREE_DAYS)
	~
	GOTO XA_CorwinPregnantInitial_END
	
	IF ~
		IsValidForPartyDialogue("Jaheira")
		See("Jaheira")
	~ THEN
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 3)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", THREE_DAYS)
	~
	GOTO XA_CorwinPregnantInitial_Jaheira
		
	IF ~
		IsValidForPartyDialogue("Aerie")
		See("Aerie")
	~ THEN
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 3)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", THREE_DAYS)
	~
	GOTO XA_CorwinPregnantInitial_Aerie
END

IF ~~ THEN BEGIN XA_CorwinPregnantInitial_Aerie
	SAY @1515 /* ~Aerie, do you have a minute? I need to talk to you about something, in private.~ */
	
	IF ~~ THEN
	EXTERN AERIEJ XA_CorwinPregnantInitial_Aerie
END

IF ~~ THEN BEGIN XA_CorwinPregnantInitial_Jaheira
	SAY @1516 /* ~Jaheira, do you have a minute? I need to talk to you about something, in private.~ */
	
	IF ~~ THEN
	EXTERN JAHEIRAJ XA_CorwinPregnantInitial_Jaheira
END

IF ~~ THEN BEGIN XA_CorwinPregnantInitial_Shh
	SAY @1513 /* ~Shh! I don't want him to ...~ */
	
	= @1514 /* ~(You can't make out the rest of their discussion. It ends, and Schael turns to you.)~ */
	
	IF ~~ THEN REPLY @1511 /* ~You look a little under the weather, love. Is everything alright?~ */
	GOTO XA_CorwinPregnantInitial_END
END

IF ~~ THEN BEGIN XA_CorwinPregnantInitial_END
	SAY @1512 /* ~Yeah... it must've been something I ate. Don't worry, I'll be fine. Let's keep moving.~*/
	
	IF ~~ THEN
	EXIT
END
//}


IF ~~ THEN BEGIN XA_DeliverTwoLetters
	SAY @1589 /* ~Two letters. One to the Dukes, and one to my father. I need to let my family know that we're fine.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_NeedLettersDelivered", "GLOBAL", 2)
	~
	EXTERN XAHAMZA XA_DeliverTwoLetters
END

IF ~~ THEN BEGIN XA_DeliverTwoLetters2
	SAY @1589 /* ~Two letters. One to the Dukes, and one to my father. I need to let my family know that we're fine.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_NeedLettersDelivered", "GLOBAL", 2)
	~
	EXTERN XAHAMZA XA_DeliverToBG
END

IF ~~ THEN BEGIN XA_DeliverAdditional
	SAY @1590 /* ~I need an additional letter delivered ... My family needs to know that we're fine.~ */
	
	IF ~
		!StateCheck("XAHAMZA", STATE_CHARMED)
	~ THEN
	EXTERN XAHAMZA XA_DeliverAdditional
	
	IF ~
		StateCheck("XAHAMZA", STATE_CHARMED)
	~ THEN
	EXTERN XAHAMZA XA_DeliverAdditional_Charmed
END

//{ Dialog J-72
IF ~
	Global("XA_CorwinPregnant", "GLOBAL", 4)
~ THEN BEGIN XA_CorwinPregnant2
	SAY @1517 /* ~<CHARNAME> ... there's something I need to tell you. I ...~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 5)
		SetGlobal("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
	~
	GOTO XA_CorwinPregnant2_1
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_1
	SAY @1518 /* ~I'm pregnant.~ */
	
	IF ~~ THEN REPLY @1521 /* ~Schael, that's wonderful news!~ */
	DO ~
		SetGlobal("XA_PregnantNews", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_GoodNews
	
	IF ~~ THEN REPLY @1519 /* ~What? But you don't look pregnant — are you sure?~ */
	DO ~
		SetGlobal("XA_PregnantSure", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_DontLookPregnant
	
	IF ~~ THEN REPLY @1523 /* But... how can that be? */
	DO ~
		SetGlobal("XA_PregnantHow", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_How
	
	IF ~~ THEN REPLY @1533 /* ~Schael, you know that I love you. But a baby, now?~ */
	GOTO XA_CorwinPregnant2_BabyNow
	
	IF ~~ THEN REPLY @1556 /* ~Schael, I ... I'm not sure if I'm ready for this responsibility.~ */
	GOTO XA_CorwinPregnant2_NotReady
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_NotReady
	SAY @1557 /* ~I understand your misgivings, and that this is a lot to process. But you are ready. I've seen how great you are with Rohma. I know you'd be a great father to our child.~*/
	
	IF ~~ THEN REPLY @1558 /* But a baby, now? Given all of the danger we face?~ */
	GOTO XA_CorwinPregnant2_BabyNow
	
	IF ~~ THEN REPLY @1559 /*~Are you sure? That you're pregnant, I mean?~ */
	GOTO XA_CorwinPregnant2_DontLookPregnant

	IF ~~ THEN REPLY @1560 /* I'm not as sure ... but I promise you, I'm going to give it my all.~*/
	GOTO XA_CorwinPregnant2_GoodNews
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_BabyNow
	SAY @1532 /* ~I'm going to have this baby. Don't ask me not to. The timing is terrible I know, but I can still do everything that I need to, on or off the battlefield. Once I start showing, that might change ...~ */
	
	IF ~~ THEN 
	GOTO XA_CorwinPregnant2_GoHome_Medic
	
	IF ~
		Global("XA_CorwinPregnantAerie", "GLOBAL", 1)
	~ THEN GOTO XA_CorwinPregnant2_GoHome_Aerie
	
	IF ~
		Global("XA_CorwinPregnantJaheira", "GLOBAL", 1)
	~ THEN GOTO XA_CorwinPregnant2_GoHome_Jaheira
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_DontLookPregnant
	SAY @1520 /* ~I'm certain. I'm late this month, and a couple of days ago the morning sickness started. It's the same as when I was pregnant with Rohma. I won't start showing for probably six to eight weeks, but I'm definitely with child.~ */
	
	IF ~~ THEN REPLY @1521 /* ~Schael, that's wonderful news!~ */
	GOTO XA_CorwinPregnant2_GoodNews
	
	IF ~
		!Global("XA_PregnantHow", "LOCALS", 1)
	~ THEN REPLY @1523 /* But... how can that be? */
	DO ~
		SetGlobal("XA_PregnantHow", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_How
	
	IF ~~ THEN REPLY @1533 /* ~Schael, you know that I love you. But a baby, now?~ */
	GOTO XA_CorwinPregnant2_BabyNow
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_How
	SAY @1524 /* ~What do you mean, how? We were intimate two or three times a week for over a month. It was bound to happen.~ */
	
	IF ~~ THEN REPLY @1521 /* ~Schael, that's wonderful news!~ */
	GOTO XA_CorwinPregnant2_GoodNews
	
	IF ~
		!Global("XA_PregnantSure", "LOCALS", 1)
	~ THEN REPLY @1519 /* ~What? But you don't look pregnant — are you sure?~ */
	DO ~
		SetGlobal("XA_PregnantSure", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_DontLookPregnant
	
	IF ~~ THEN REPLY @1533 /* ~Schael, you know that I love you. But a baby, now?~ */
	GOTO XA_CorwinPregnant2_BabyNow
	
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_GoodNews
	SAY @1522 /* ~It is. I'm so happy to be carrying our child. You're going to make a great father.~ */
	
	IF ~~ THEN REPLY @1525 /* ~But Schael ... We need to find a way to get you home. We can't risk the safety of our child.~*/
	GOTO XA_CorwinPregnant2_GoHome
	
	IF ~~ THEN REPLY @1534 /* ~It's too dangerous for you to remain here.~*/
	GOTO XA_CorwinPregnant2_GoHome
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_GoHome
	SAY @1527 /* ~No, I won't leave your side. At least not yet. The timing is terrible of course, but I can still do everything that I need to, on or off the battlefield. Once I start showing, that might change ...~*/
	
	IF ~~ THEN 
	GOTO XA_CorwinPregnant2_GoHome_Medic
	
	IF ~
		Global("XA_CorwinPregnantAerie", "GLOBAL", 1)
	~ THEN GOTO XA_CorwinPregnant2_GoHome_Aerie
	
	IF ~
		Global("XA_CorwinPregnantJaheira", "GLOBAL", 1)
	~ THEN GOTO XA_CorwinPregnant2_GoHome_Jaheira
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_Questions
	SAY @1566 /* ~She told me that a baby in its mothers womb will remain healthy so long as the mother is. Even if I'm killed, once I'm resurrected, our baby will be as well.~ */
	
	IF ~
		!IsValidForPartyDialogue("Jan")
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1536 /* ~Is there anything that I can do for you? I hear pregnant women get some odd cravings from time to time.~ */
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything
	
	IF ~
		IsValidForPartyDialogue("Jan")
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1536 /* ~Is there anything that I can do for you? I hear pregnant women get some odd cravings from time to time.~ */
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything_Jan
	
	IF ~
		!Global("XA_Pregnant_Gender", "LOCALS", 1)
		OR(2)
			GlobalGT("XA_CorwinPregnantAerie", "GLOBAL", 0)
			GlobalGT("XA_CorwinPregnantJaheira", "GLOBAL", 0)
	~ THEN REPLY @1550 /* ~Did she tell you if it was a boy or a girl?~ */
	DO ~
		SetGlobal("XA_Pregnant_Gender", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_BabyGender
	
	IF ~
		!Global("XA_Pregnant_DueDate", "LOCALS", 1)
		OR(2)
			GlobalGT("XA_CorwinPregnantAerie", "GLOBAL", 0)
			GlobalGT("XA_CorwinPregnantJaheira", "GLOBAL", 0)
	~ THEN REPLY @1562 /* ~Did she give you a due date?~ */
	DO ~
		SetGlobal("XA_Pregnant_DueDate", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_DueDate
	
	IF ~
		!Global("XA_Pregnant_DueDate", "LOCALS", 1)
		!OR(2)
			GlobalGT("XA_CorwinPregnantAerie", "GLOBAL", 0)
			GlobalGT("XA_CorwinPregnantJaheira", "GLOBAL", 0)
	~ THEN REPLY @1565 /* ~Do you know when you're expecting?~ */
	DO ~
		SetGlobal("XA_Pregnant_DueDate", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_DueDate
	
	IF ~
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1563 /* ~I'm here for you, my love. If there's anything you require, you need only ask.~*/
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_GoHome_Jaheira
	SAY @1529 /*~But, I did speak to Jaheira about this... I think you might've overheard some of our discussion.*/
	
	IF ~~ THEN REPLY @1567 /*~What did she say?~*/
	GOTO XA_CorwinPregnant2_Questions
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_GoHome_Aerie
	SAY @1528 /*~But, I did speak to Aerie about this... I think you might've overheard some of our discussion.*/
	
	IF ~~ THEN REPLY @1567 /*~What did she say?~*/
	GOTO XA_CorwinPregnant2_Questions
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_GoHome_Medic
	SAY @1530 /*~~Before we left Baldur's Gate, I spoke with Helena, one of the Fist's medics, just as a precaution.~ */
	
	IF ~~ THEN REPLY @1567 /*~What did she say?~*/
	GOTO XA_CorwinPregnant2_Questions
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_NeedAnything_Jan
	SAY @1564 /*  ~Funny you mention that. When I was pregnant with Rohma, one night I had the strongest craving for roasted turnips. Not mashed, diced, or boiled, they *had* to be roasted. The market was closed, so my father had to go to the greengrocer's house in the middle of the night to buy some, then come back and cook them. I guess Jan would have us covered this time around, should that particular craving return. There is one thing that I ask, though ...~ */
	
	IF ~~ THEN
	GOTO XA_CorwinPregnant2_DontTell
	
	IF ~
		Global("XA_CorwinPregnantAerie", "GLOBAL", 1)
	~ THEN
	GOTO XA_CorwinPregnant2_DontTell_Aerie
	
	IF ~
		Global("XA_CorwinPregnantJaheira", "GLOBAL", 1)
	~ THEN
	GOTO XA_CorwinPregnant2_DontTell_Jaheira 
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_DueDate
	SAY @1562 /* ~No, but I figure I'm between four and six weeks in. Probably closer to six, which means I'll likely start showing ten to twelve weeks from now. We still have time to do what we need to here.~*/
	
		IF ~
		!IsValidForPartyDialogue("Jan")
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1536 /* ~Is there anything that I can do for you? I hear pregnant women get some odd cravings from time to time.~ */
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything
	
	IF ~
		IsValidForPartyDialogue("Jan")
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1536 /* ~Is there anything that I can do for you? I hear pregnant women get some odd cravings from time to time.~ */
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything_Jan
	
	IF ~
		!Global("XA_Pregnant_Gender", "LOCALS", 1)
		OR(2)
			GlobalGT("XA_CorwinPregnantAerie", "GLOBAL", 0)
			GlobalGT("XA_CorwinPregnantJaheira", "GLOBAL", 0)
	~ THEN REPLY @1550 /* ~Did she tell you if it was a boy or a girl?~ */
	DO ~
		SetGlobal("XA_Pregnant_Gender", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_BabyGender
	
	
	IF ~
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1563 /* ~I'm here for you, my love. If there's anything you require, you need only ask.~*/
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything
END



IF ~~ THEN BEGIN XA_CorwinPregnant2_BabyGender
	SAY @1552 /* ~No, I didn't ask her. It's better not to know, I think. Speaking of ...~  */
	
	IF ~
		!IsValidForPartyDialogue("Jan")
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1536 /* ~Is there anything that I can do for you? I hear pregnant women get some odd cravings from time to time.~ */
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything
	
	IF ~
		IsValidForPartyDialogue("Jan")
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1536 /* ~Is there anything that I can do for you? I hear pregnant women get some odd cravings from time to time.~ */
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything_Jan
	
	IF ~
		!Global("XA_Pregnant_DueDate", "LOCALS", 1)
		OR(2)
			GlobalGT("XA_CorwinPregnantAerie", "GLOBAL", 0)
			GlobalGT("XA_CorwinPregnantJaheira", "GLOBAL", 0)
	~ THEN REPLY @1562 /* ~Did she give you a due date?~ */
	DO ~
		SetGlobal("XA_Pregnant_DueDate", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_DueDate
	
	IF ~
		!Global("XA_Pregnant_DueDate", "LOCALS", 1)
		!OR(2)
			GlobalGT("XA_CorwinPregnantAerie", "GLOBAL", 0)
			GlobalGT("XA_CorwinPregnantJaheira", "GLOBAL", 0)
	~ THEN REPLY @1565 /* ~Do you know when you're expecting?~ */
	DO ~
		SetGlobal("XA_Pregnant_DueDate", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_DueDate
	
	IF ~
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1563 /* ~I'm here for you, my love. If there's anything you require, you need only ask.~*/
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_NeedAnything
	SAY @1537 /* ~Thank you, but I'm fine love. If I need anything, I'll let you know. But ... since you mentioned it, there is one thing ...~*/
	
	IF ~~ THEN
	GOTO XA_CorwinPregnant2_DontTell
	
	IF ~
		Global("XA_CorwinPregnantAerie", "GLOBAL", 1)
	~ THEN
	GOTO XA_CorwinPregnant2_DontTell_Aerie
	
	IF ~
		Global("XA_CorwinPregnantJaheira", "GLOBAL", 1)
	~ THEN
	GOTO XA_CorwinPregnant2_DontTell_Jaheira
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_DontTell_Aerie
	SAY @1539 /* ~I don't want anyone to give me any special treatment. Aerie knows, but I don't want the rest to know I'm pregnant. Eventually they'll find out of course, but for now, let's keep it between us.~ */
	
	IF ~~ THEN REPLY @1541 /* ~As you wish, dear.~*/
	GOTO XA_CorwinPregnant2_End
	
	IF ~
		InParty("Imoen2")
	~ THEN REPLY @1546 /* ~Not even Imoen?~ */
	GOTO XA_CorwinPregnant2_Imoen
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_Imoen
	SAY @1547 /* ~Well, sure. She's your sister after all, and I know she can keep a secret. But no one else, please. Auntie Imoen ... has a nice ring to it, eh? ~ */
	
	IF ~~ THEN REPLY @1548 /* ~It does. She's going to be thrilled when she hears the news.~ */
	DO ~
		SetGlobalTimer("XA_CorwinPregnantImoenTimer", "GLOBAL", TWO_DAYS)
		SetGlobal("XA_CorwinPregnantImoen", "GLOBAL", 1)
	~
	GOTO XA_CorwinPregnant2_End
	
	IF ~~ THEN REPLY @1555 /* ~I'm going to be a father ...~*/
	DO ~
		SetGlobalTimer("XA_CorwinPregnantImoenTimer", "GLOBAL", TWO_DAYS)
		SetGlobal("XA_CorwinPregnantImoen", "GLOBAL", 1)
	~
	GOTO XA_CorwinPregnant2_End
	
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_DontTell_Jaheira
	SAY @1540 /* ~I don't want anyone to give me any special treatment. Jaheira knows, but I don't want the rest to know I'm pregnant. Eventually they'll find out of course, but for now, let's keep it between us.~ */
	
	IF ~~ THEN REPLY @1541 /* ~As you wish, dear.~*/
	GOTO XA_CorwinPregnant2_End
	
	IF ~
		InParty("Imoen2")
	~ THEN REPLY @1546 /* ~Not even Imoen?~ */
	GOTO XA_CorwinPregnant2_Imoen
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_DontTell
	SAY @1538 /* ~I don't want anyone to give me any special treatment, or to even know I'm pregnant. Eventually they'll find out of course, but for now, let's keep it between us.~*/
	
	IF ~~ THEN REPLY @1541 /* ~As you wish, dear.~*/
	GOTO XA_CorwinPregnant2_End
	
	IF ~
		InParty("Imoen2")
	~ THEN REPLY @1546 /* ~Not even Imoen?~ */
	GOTO XA_CorwinPregnant2_Imoen
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_End
	SAY @1542 /* ~Come here, hero.~*/
	
	= @1545 /* ~(You share a warm embrace, followed by a passionate kiss.)~*/
	
	= @1543 /* ~I love you. More than you know.~ */
	
	IF ~~ THEN REPLY @1544 /* ~And I love you */
	DO ~
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", ONE_MONTH)
	~
	EXIT
END
 //}

//{ Dialog J-70
IF ~
	Global("XA_SaradushDestroyed", "GLOBAL", 1)
~ THEN BEGIN XA_SaradushDestroyed
	SAY @1507 /* ~Stand ready — this place has been overrun by giants.~ */
	
	IF ~~ THEN REPLY @1508 /* ~The city's been completely destroyed.~ */
	DO ~
		SetGlobal("XA_SaradushDestroyed", "GLOBAL", 2)
	~
	GOTO XA_TimeToGrieveLater
	
	IF ~~ THEN REPLY @1509 /* ~I haven't seen destruction like this since Caelar's crusade.~ */
	DO ~
		SetGlobal("XA_SaradushDestroyed", "GLOBAL", 2)
	~
	GOTO XA_TimeToGrieveLater
	
	IF ~
		IsValidForPartyDialogue("Jaheira")
	~ THEN
	DO ~
		SetGlobal("XA_SaradushDestroyed", "GLOBAL", 2)
	~
	EXTERN JAHEIRAJ XA_SaradushDestroyed 
	
	IF ~
		IsValidForPartyDialogue("Imoen2")
	~ THEN
	DO ~
		SetGlobal("XA_SaradushDestroyed", "GLOBAL", 2)
	~
	EXTERN IMOEN2J XA_SaradushDestroyed
	
	IF ~
		IsValidForPartyDialogue("Neera")
	~ THEN
	DO ~
		SetGlobal("XA_SaradushDestroyed", "GLOBAL", 2)
	~
	EXTERN NEERAJ XA_SaradushDestroyed
	
	IF ~
		IsValidForPartyDialogue("Aerie")
	~ THEN
	DO ~
		SetGlobal("XA_SaradushDestroyed", "GLOBAL", 2)
	~
	EXTERN AERIEJ XA_SaradushDestroyed
END

IF ~~ THEN BEGIN XA_TimeToGrieveLater
	SAY @1504 /* @1504 = ~There'll be time to grieve later. This is what the Five likely have in store for the rest of the Sword Coast, including Baldur's Gate. We have to stop them.~ */
	
	IF ~~ THEN REPLY @1505 /* ~We will. First Yaga-Shura, then the rest.~ */
	EXIT
	
	IF ~~ THEN REPLY @1506 /* Right */
	EXIT
END
//}

//{ #region Hall of Wonders Cutscene - Dialog J-0
IF ~
	Global("XA_CSHOW_TALK", "GLOBAL", 1)
~ THEN BEGIN XA_CSHOW_TALK
	SAY @1383 /* ~... ... so you see, even the smallest act of kindness can have a profound impact.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CSHOW_TALK", "GLOBAL", 2)
	~
	EXTERN XACURATO XA_CSHOW_TALK_CHAIN
END

IF ~~ THEN BEGIN XA_WantToTransform 
	SAY @1415 /* ~(She looks at you with a knowing smile.)~  */
	
	= @1416 /* ~Normally I'd be against it, but it might be good to scare some sense into these kids.~ */
	
	IF ~~ THEN REPLY @1419 /* Right. (Transform into the Slayer).~ */
	DO ~
		SetGlobal("XA_ScaredChildren", "GLOBAL", 1)
		PlaySong(58)
		StartCutScene("XACSHOW3")
	~	
	EXIT
	
	IF ~~ THEN REPLY @1420 /* ~On second thought, no. Curator Magda — we really must get going.~  */
	DO ~
		StartCutSceneMode()
		StartCutScene("XACSHOWX")
	~	
	EXIT
END
//} #endregion

//{ #region Corwin Not Chosen for Saradush - Dialog J-1
IF ~
	Global("XA_BGEND3", "GLOBAL", 1)
	Global("XA_DidNotRequestCorwin", "GLOBAL", 1)
	GlobalGT("XA_CorwinOpinionOfPlayer", "GLOBAL", 0)
	// play romance song (if in romance)
~ THEN BEGIN XA_BGEND3_DidNotRequest
	SAY @1223 /* ~I'm coming with you. Don't try and talk me out of it.~ */
	
	IF ~~ THEN REPLY @1225 /* ~Right. I need you by my side.~ */
	DO ~
		SetGlobal("XA_BGEND3", "GLOBAL", 2)
	~
	GOTO XA_BGEND3_CorwinSaradushChain //OK
	
	IF ~~ THEN REPLY @1226 /* ~As much as I want you to, your family, and this city, need you to protect them.~ */
	DO ~
		SetGlobal("XA_BGEND3", "GLOBAL", 2)
	~
	GOTO XA_BGEND3_DidNotRequest_B //OK
END

IF ~~ THEN BEGIN XA_BGEND3_DidNotRequest_B
	SAY @1220 /* ~Are you sure? You're going to need my help...~*/
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1221 /* ~I'm sure, my love. I can't risk losing you.~ */
	GOTO XA_BGEND3_DontWantCorwinR //OK
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1222 /* ~I'm sure. The city can't risk losing the both of us.~ */
	GOTO XA_BGEND3_DontWantCorwinNR //OK
	
	IF ~~ THEN REPLY @1275 /* ~You're right. The skill and counsel you've provided have proven invaluable, and I require them once again.~*/
	GOTO XA_BGEND3_CorwinSaradushChain
END

IF ~~ THEN BEGIN XA_BGEND3_DontWantCorwinNR 
	SAY @1235 /* ~Fine... Just be careful out there, please.~ */
	
	IF ~~ THEN REPLY @1276 /* ~I will - don't worry about me, my friend.~ */
	GOTO XA_BGEND3_DontWantCorwin2 //OK
END

IF ~~ THEN BEGIN XA_BGEND3_DontWantCorwinR
	SAY @1236 /* ~Fine... Just be careful out there, please. I can't bear to lose you.~ */
	
	IF ~~ THEN REPLY @1276 /* ~I will. I'll come back to you, my love - I promise.~ */
	GOTO XA_BGEND3_DontWantCorwin2 //OK
END

IF ~~ THEN BEGIN XA_BGEND3_DontWantCorwin2
	SAY @1278 /* ~It's late... I need to get Rohma to bed.~ */
	
	IF ~~ THEN REPLY @1279 /* ~I'll come with you.~ */
	DO ~
		SetGlobal("XA_ByeRohma", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_BGEND3_CorwinSaradushChainEnd
	SAY @1262 /* ~I appreciate that. Thank you, sir.~ */
	
	IF ~~ THEN REPLY @1265 /* ~Schael - I really appreciate you doing this. I know it's not easy for you to be away from your family.~ */
	DO ~
		SetGlobal("XA_DidRequestCorwin", "GLOBAL", 1)
	~
	GOTO XA_BGEND4_2
END

//} #endregion

//{ Dialog J-69
IF ~
	Global("XA_CorwinComplainSarevok", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinComplainSarevokInit
	SAY @1472 /* ~We need to talk.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1473 /* ~What's on your mind, love.~ */
	DO ~
		SetGlobal("XA_CorwinComplainSarevok", "GLOBAL", 3)
	~
	GOTO XA_CorwinComplainSarevok
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1474 /* ~What's on your mind, Major?~ */
	DO ~
		SetGlobal("XA_CorwinComplainSarevok", "GLOBAL", 3)
	~
	GOTO XA_CorwinComplainSarevok
	
	IF ~~ THEN REPLY @1475 /* ~This isn't a good time.~*/
	DO ~
		SetGlobal("XA_CorwinComplainSarevok", "GLOBAL", 3)
	~
	GOTO XA_NotAGoodTime
END

IF ~~ THEN BEGIN XA_NotAGoodTime
	SAY @1476 /*  ~No, this is the perfect time.~ */
	
	IF ~~ THEN GOTO XA_CorwinComplainSarevok
END

IF ~~ THEN BEGIN XA_CorwinComplainSarevok
	SAY @1477 /* ~I can't believe you allowed Sarevok, of all people, to join us. I've learned to trust your judgment, but I can't help thinking that you've made a grave mistake.~ */
	
	IF ~~ THEN REPLY @1479 /* ~The truth is, you're probably right. I don't trust him, but we need his strength and his knowledge.~ */
	GOTO XA_CorwinComplainSarevok2B
	
	IF ~~ THEN REPLY @1478 /* ~I understand your concern, and I share them to some extent. He has paid for his crimes, however.~ */
	GOTO XA_CorwinComplainSarevok2B
	
	IF ~~ THEN REPLY @1481 /* ~Everyone deserves a second chance. Even Sarevok.~ */
	GOTO XA_CorwinComplainSarevok2B
END

IF ~~ THEN BEGIN XA_CorwinComplainSarevok2B
	SAY @1480 /* ~Maybe ... but how many more innocents will suffer, now that he's returned? Men like him never change — he'll always be a bloodthirsty maniac.~ */
	
	IF ~~ THEN REPLY @1482 /* ~I'll keep him on a short leash, don't worry.~ */
	GOTO XA_CorwinComplainSarevok_2B1
	
	IF ~~ THEN REPLY @1483 /* ~That's why I need you to keep an eye on him. If there's any indication of betrayal, you need to let me know immediately. He's died by my hand once, and he shall do so again if the need arises.~ */
	GOTO XA_CorwinComplainSarevok_2B2_END
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1493 /* ~Major, I have to believe that people can change, that they can forge a new destiny. If not, I'm doomed to follow in my father's footsteps.~ */
	GOTO XA_ChangeDestiny_NR
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1494 /* ~Schael, I have to believe that people can change, that they can forge a new destiny. If not, I'm doomed to follow in my father's footsteps.~*/
	GOTO XA_ChangeDestiny_R
END

IF ~~ THEN BEGIN XA_ChangeDestiny_NR
	SAY @1496 /* ~I ... I understand where you're coming from. I didn't mean to imply that you were anything like him.~ */
	
	IF ~~ THEN REPLY @1497 /*~But I am like him. Were it not for the actions of Gorion in rescuing me, who is to say that I'd not have ended up the same as him?~*/
	GOTO XA_ChangeDestiny_NR_END
END

IF ~~ THEN BEGIN XA_ChangeDestiny_R
	SAY @1495 /* ~I ... understand. I didn't mean to imply that you were anything like him, love.~ */
	
	IF ~~ THEN REPLY @1497 /*~But I am like him. Were it not for the actions of Gorion in rescuing me, who is to say that I'd not have ended up the same as him?~*/
	GOTO XA_ChangeDestiny_R_END
END

IF ~~ THEN BEGIN XA_ChangeDestiny_R_END
	SAY @1498 /* ~... Perhaps you're right. Still, I'm going to keep a close eye on him. If I sense even for a moment that he's planning to betray us, I'll take action.~ */
	
	IF ~~ THEN REPLY @1499 /* ~Thank you, love. Let's get moving.~ */
	EXIT
	
	IF ~~ THEN REPLY @1500 /* ~He's my brother, and my responsibility, love. If the need arises, I will end his life as I did once before. Let's go.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_ChangeDestiny_NR_END
	SAY @1498 /* ~... Perhaps you're right. Still, I'm going to keep a close eye on him. If I sense even for a moment that he's planning to betray us, I'll take action.~ */
	
	IF ~~ THEN REPLY @1501 /* ~Thank you, Schael. Let's get moving.~*/
	EXIT
	
	IF ~~ THEN REPLY @1502 /* ~He's my brother, and my responsibility, Major. If the need arises, I will end his life as I did once before. Let's go.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinComplainSarevok_2B1
	SAY @1486 /* ~We need to keep our eyes on him at all times. If I get any sense that he's going to break his word, I swear I'll —~*/
	
	IF ~~ THEN REPLY @1490 /* ~I appreciate your vigilance.~ */
	GOTO XA_CorwinComplainSarevok_2B1_END
	
	IF ~~ THEN REPLY @1491 /*  ~Not if I kill him first.~ */
	GOTO XA_CorwinComplainSarevok_2B1_END
END

IF ~~ THEN BEGIN XA_CorwinComplainSarevok_2B1_END
	SAY @1492 /* ~Right. Let's go.~*/
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinComplainSarevok_2B2_END
	SAY @1484 /* ~Right. You can count on me.~*/
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1488 /* ~I know I can. Let's go, love.~*/
	EXIT 
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1489 /* ~I know I can. Let's go, my friend.~ */
	EXIT	
END

//}

//{ #region Corwin Chosen for Saradush - Dialog J-2
IF ~
	Global("XA_BGEND4", "GLOBAL", 1)
	Global("XA_DidRequestCorwin", "GLOBAL", 1)
	// play romance song (if in romance)
~ THEN BEGIN XA_BGEND4_DidRequest
	SAY @1280 /* ~I'm glad that you chose me for this assignment.~*/
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1282 /* ~I've learned to rely on your skill and counsel, my friend.~ */
	DO ~
		SetGlobal("XA_BGEND4", "GLOBAL", 2)
	~
	GOTO XA_NeedEachother_NR //OK
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1286 /* ~I need you Schael. You know that.~ */
	DO ~
		SetGlobal("XA_BGEND4", "GLOBAL", 2)
	~
	GOTO XA_NeedEachother //OK
	
	IF ~~ THEN REPLY @1283 /* ~It was a difficult decision.~ */
	DO ~
		SetGlobal("XA_BGEND4", "GLOBAL", 2)
	~
	GOTO XA_HowSo //OK
	
	IF ~~ THEN REPLY @1288 /* ~Really? I thought you might be upset.~ */
	DO ~
		SetGlobal("XA_BGEND4", "GLOBAL", 2)
	~
	GOTO XA_HowSo //OK
END

IF ~~ THEN BEGIN XA_NeedEachother
	SAY @1292 /* ~And I need you. I'd drive myself crazy if I had to stay here while the <PRO_MANWOMAN> I love was out risking <PRO_HISHER> life in some faraway land.~ */
	
	IF ~~ THEN REPLY @1268 /* ~I imagine that's how Rohma and your father feel about you.~ */
	GOTO XA_BGEND4_3 //OK
	
	IF ~~ THEN REPLY @1272 /* ~I'd feel the same way if our roles were reversed, love.~ */
	GOTO XA_BGEND4_3A //OK
END

IF ~~ THEN BEGIN XA_HowSo
	SAY @1284 /* ~How so?~ */
	
	IF ~~ THEN REPLY @1285 /* ~I know it's not easy for you to be away from your family.~*/
	GOTO XA_BGEND4_2 //OK
	
	IF ~~ THEN REPLY @1287 /* ~This is going to be dangerous, and I never want to see you get hurt.~  */
	GOTO XA_HowSo_2 //OK
END

IF ~~ THEN BEGIN XA_HowSo_2 //OK
	SAY @1290 /* ~It is, but... it's worth the risk.~  */
	=@1291 /* ~You heard Nederlok, and the Dukes. The success of this mission is essential to the safety of this city. And that includes Rohma, and my father.~*/
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_BGEND4_2R //OK
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_BGEND4_4 //OK
END

IF ~~ THEN BEGIN XA_NeedEachother_NR
	SAY @1293 /*  ~And all of us here rely on you. I'd drive myself crazy if I had to stay here while the hero of Baldur's Gate was in some faraway land, risking <PRO_HIMHER>self to protect us.~  */
	
	IF ~~ THEN REPLY @1268 /* ~I imagine that's how Rohma and your father feel about you.~ */
	GOTO XA_BGEND4_3 //OK
END


IF ~~ THEN BEGIN XA_BGEND4_2
	SAY @1266 /* ~It never is, but... you heard Nederlok, and the Dukes. The success of this mission is essential to the safety of this city. And that includes Rohma, and my father.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_BGEND4_2R //OK
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_BGEND4_4 //OK
END

IF ~~ THEN BEGIN XA_BGEND4_2R
	SAY @1267 /* ~Plus, I'd drive myself crazy if I had to stay here while the <PRO_MANWOMAN> I love was out risking <PRO_HISHER> life in some faraway land.~ */
	
	IF ~~ THEN REPLY @1268 /* ~I imagine that's how Rohma and your father feel about you.~ */
	GOTO XA_BGEND4_3 //OK
	
	IF ~~ THEN REPLY @1272 /* ~I'd feel the same way if our roles were reversed, love.~ */
	GOTO XA_BGEND4_3A //OK
END

IF ~~ THEN BEGIN XA_BGEND4_3 //OK
	SAY @1269 /* ~I know... it's definitely not easy for them, either.~*/
	
	IF ~~ THEN GOTO XA_BGEND4_4 //OK
END

IF ~~ THEN BEGIN XA_BGEND4_3A //OK
	SAY @1273 /* ~I know, dear... it's not easy for Rohma or my father either.~*/
	
	IF ~~ THEN GOTO XA_BGEND4_4 //OK
END

IF ~~ THEN BEGIN XA_BGEND4_4
	SAY @1270 /* ~Speaking of Rohma, it's late, and I need to put her to bed.~*/
	
	IF ~~ THEN REPLY @1271 /* ~Let's break the news to her together, first.~ */
	GOTO XA_BGEND4_5 //OK
END

IF ~~ THEN BEGIN XA_BGEND4_5
	SAY @1274 /* ~Right...~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_ByeRohma", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_SaradushDiscussion7
	SAY @1252 /* ~Thank you, sir.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_DidRequestCorwin", "GLOBAL", 1)
		StartCutscene("XABGEND4")
	~
	EXIT
END

//} #endregion

//{ #region Rohma Rescued - Dialog J-3
IF ~
	Global("XA_RohmaSaved", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinRohmaReunite
	SAY @1210 /* ~(They share a warm embrace.)~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_RohmaSaved", "GLOBAL", 2)
	~
	GOTO XA_CorwinRohmaReuniteChain
END
//} #endregion

//{ #region Beno Last Words (Soultaker) - Dialog J-4
IF ~
	Global("XA_CorwinBenoST", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinBenoST
	SAY @1184 /* ~Any last words?~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_CorwinBenoST", "GLOBAL", 2)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXTERN XABENO2 XA_CorwinBenoSTChain
END

IF ~~ THEN XA_CorwinBenoSTChainEnd
	SAY @1188 /* ~It's over... I hope we've done the right thing.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1189 /* ~It was the only way. He'll never trouble you again. Come - I'm sure Rohma is eager to see you, my love.~ */
	GOTO XA_CorwinBenoSTChainEndCS
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1190 /* ~It was the only way. He'll never trouble you again. Come - I'm sure Rohma is eager to see you, my love.~ */
	GOTO XA_CorwinBenoSTChainEndCS
END

IF ~~ THEN XA_CorwinBenoSTChainEndCS
	SAY @1191 /* ~Right. Let's go.~ */
	
	IF ~~ THEN
	DO ~
		StartCutsceneMode()
		StartCutscene("XAUCEND1")
	~
	EXIT
END
//} #endregion

//{ #region Beno Last Words (Killed) - Dialog J-5
IF ~
	Global("XA_CorwinKillBeno", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinKillBenoLastWords
	SAY @1184 /* ~Any last words?~ */
	
	IF ~
		GlobalLT("XA_CorwinOpinionOfPlayer", "GLOBAL", 6)
	~ THEN 
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("XA_CorwinKillBeno", "GLOBAL", 2)
	~
	EXTERN XABENO2 XA_CorwinKillBenoChain
	
	IF ~
		GlobalGT("XA_CorwinOpinionOfPlayer", "GLOBAL", 5)
	~ THEN 
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("XA_CorwinKillBeno", "GLOBAL", 2)
	~
	EXTERN XABENO2 XA_CorwinMercyBenoChain
END

IF ~~ THEN XA_CorwinKillBenoChainEnd
	SAY @1194 /* ~It's over... ~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1195 /* ~Are you alright? That couldn't have been easy for you, love.~ */
	GOTO XA_CorwinKillBenoChainEndCS //OK
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1197 /* ~Are you alright? That couldn't have been easy for you.~*/
	GOTO XA_CorwinKillBenoChainEndCS //OK
END

IF ~~ THEN XA_CorwinMercyBenoChainEnd
	SAY @1204 /* ~<CHARNAME> - help me get him on his feet. We'll take him into custody together.~  */
	
	IF ~~ THEN REPLY @1205 /* ~Gladly, Schael.~ */
	DO ~
		StartCutsceneMode()
		StartCutscene("XAUCEND1")
	~
	EXIT
END

IF ~~ THEN XA_CorwinKillBenoChainEndCS
	SAY @1196 /* ~I'll be fine once I see Rohma. Let's go.~ */
	
	IF ~~ THEN
	DO ~
		StartCutsceneMode()
		StartCutscene("XAUCEND1")
	~
	EXIT
END

//} #endregion

//{ #region Illasera Killed - Dialog J-6
IF ~
	Global("XA_IllaseraDead", "GLOBAL", 1)
~ THEN BEGIN XA_IllaseraDead
	SAY @1142 /* ~That was the last of them...~ */
	= @1143 /* ~Rohma... thank Tymora that Skie got her out in time.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_IllaseraDead", "GLOBAL", 2)
	~
	EXTERN XABENO2 XA_IllaseraDead2 //OK
	
END


IF ~~ THEN BEGIN XA_IllaseraDead3
	SAY @1146 /* ~Not for long.~ */
	
	IF ~~ THEN REPLY @1149 /* ~Do your worst.~ */
	GOTO XA_CorwinKillBeno //OK
	
	IF ~~ THEN REPLY @1148 /* ~Wait!~ */
	GOTO XA_IllaseraDead4 //OK
END

IF ~~ THEN BEGIN XA_IllaseraDead4
	SAY @1150 /* ~What is it?~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1147 /* ~What is killing him again going to solve?~ */
	GOTO XA_IllaseraDead5R //OK
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1147 /* ~What is killing him again going to solve?~ */
	GOTO XA_IllaseraDead5NR //OK
	
	IF ~
		HasItem("XASTDAG", "XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1183 /* ~You have the Soultaker dagger. Give it to me, I'll do the deed. It's the only way we'll be free of him for good.~ */
	GOTO XA_IllaseraDead_ST_Corwin //OK
	
	IF ~
		HasItem("XASTDAG", "XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1182 /* ~You have the Soultaker dagger. Give it to me, I'll do the deed. It's the only way you'll be free of him for good.~ */
	GOTO XA_IllaseraDead_ST_Corwin //OK
	
	IF ~
		HasItem("XASTDAG", Player1)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1168 /* ~I have the Soultaker dagger. I'll do the deed. It's the only way you'll be free of him for good.~ */
	GOTO XA_IllaseraDead_ST_PlayerR //OK
	
	IF ~
		HasItem("XASTDAG", Player1)
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1154 /* ~I have the Soultaker dagger. I'll do the deed. It's the only way you'll be free of him for good.~ */
	GOTO XA_IllaseraDead_ST_PlayerNR 
	
	IF ~~ THEN REPLY @1151 /* ~Nevermind - do your worst.~ */
	GOTO XA_CorwinKillBeno
END 

IF ~~ THEN BEGIN XA_CorwinKillBeno
	SAY @1177 /* ~(Steely-faced, she takes a deep breath and approaches her former lover.)~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinKillBeno", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_IllaseraDead5R
	SAY @1180 /* ~Love, you want to me to show him mercy? He nearly got Rohma killed, and what he did to my father...~ */
	
	IF ~~ THEN GOTO XA_IllaseraDead6 //OK
END 

IF ~~ THEN BEGIN XA_IllaseraDead5NR
	SAY @1156 /* ~You want to me to show him mercy? He nearly got Rohma killed, and what he did to my father...~*/
	
	IF ~~ THEN GOTO XA_IllaseraDead6 //OK
END 

IF ~~ THEN BEGIN XA_IllaseraDead6
	SAY @1181 /* ~No, I'm sorry. No mercy.~ */
	
	IF ~~ THEN REPLY @1157 /* ~Kill him, and his friends will just resurrect him. Before long, he'll do this to you again.~ */
	GOTO XA_IllaseraDead_Mercy //OK
	
	IF ~
		HasItem("XASTDAG", "XACORWIN")
	~ THEN REPLY @1163 /* ~You're right... You have the Soultaker dagger. Give it to me, I'll do the deed. It's the only way you'll be free of him for good.~ */
	GOTO XA_IllaseraDead_ST_Corwin //OK
	
	IF ~
		HasItem("XASTDAG", Player1)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1168 /* ~You're right... I have the Soultaker dagger. I will do the deed. It's the only way we'll be free of him for good.~ */
	GOTO XA_IllaseraDead_ST_PlayerR //OK
	
	IF ~
		HasItem("XASTDAG", Player1)
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1169 /* ~You're right... I have the Soultaker dagger. I will do the deed. It's the only way you'll be free of him for good.~ */
	GOTO XA_IllaseraDead_ST_PlayerNR //OK
	
	IF ~~ THEN REPLY @1151 /* ~Nevermind - do your worst.~ */
	GOTO XA_CorwinKillBeno
END

IF ~~ THEN BEGIN XA_IllaseraDead_ST_Corwin
	SAY @1164 /* ~The dagger...~ */
	=@1165 /* ~(Her expression turns to one of concern, as she deliberates internally on what to do.)~ */
	IF ~~ THEN
	GOTO XA_IllaseraDead_BenoSTCorwin2
END

IF ~~ THEN BEGIN XA_IllaseraDead_ST_PlayerR
	SAY @1170 /* ~My love...~ */
	= @1165 /* ~(Her expression turns to one of concern, as she deliberates internally on what to do.)~ */
	IF ~~ THEN
	GOTO XA_IllaseraDead_BenoSTCorwin
END

IF ~~ THEN BEGIN XA_IllaseraDead_ST_PlayerNR
	SAY @1171 /* ~<CHARNAME>...~*/
	= @1165 /* ~(Her expression turns to one of concern, as she deliberates internally on what to do.)~ */
	IF ~~ THEN
	GOTO XA_IllaseraDead_BenoSTCorwin
END

IF ~~ THEN BEGIN XA_IllaseraDead_BenoSTCorwin2
	SAY @1179 /* ~No... You've been forced into enough killing already.~ */
	IF ~~ THEN GOTO XA_IllaseraDead_CorwilKillWithST
END

IF ~~ THEN BEGIN XA_IllaseraDead_BenoSTCorwin
	SAY @1172 /* ~No... You've been forced into enough killing already. Hand me the dagger.~ */
	= @1174 /* ~(You hand her the dagger.)~ */
	IF ~~ THEN GOTO XA_IllaseraDead_CorwilKillWithST
END

IF ~~ THEN BEGIN XA_IllaseraDead_CorwilKillWithST
	SAY @1175 /* ~I appreciate that you're willing to do this for me, but it's my responsibility.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinBenoST", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_IllaseraDead_Mercy
	SAY @1158 /* ~But, no! I can't just let him...~ */
	= @1159 /* ~(She lets out a long sigh.)~ */
	= @1160 /* ~You're right. I'm letting my anger cloud my judgement. I'm an officer of the law, and I need to hold myself to a higher standard.~ */
	= @1161 /* ~Come on. Help me get him up. We'll take him into custody together.~ */
	
	IF ~~ THEN REPLY @1162 /* ~Gladly.~ */
	DO ~
		StartCutSceneMode()
		StartCutScene("XAUCEND1")
	~
	EXIT

END
//} #endregion

//{ #region Arrival in Undercity - Dialog J-7 - Tested
IF ~
	Global("XA_ArrivedInUndercity", "GLOBAL", 1)
~ THEN BEGIN XA_ArrivedInUndercity
	SAY @1118 /* ~The Undercity... They must be nearby.~*/
	
	= @1119 /* ~Look at these tracks. They lead toward the temple.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_ArrivedInUndercity", "GLOBAL", 2)
	~
	REPLY @1121 /* ~We should scout around first. Be careful.~ */
	GOTO XA_ArrivedInUndercity2
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_ArrivedInUndercity", "GLOBAL", 2)
	~
	REPLY @1120 /* ~Let's go.~ */
	GOTO XA_ArrivedInUndercity2
END

IF ~~ THEN XA_ArrivedInUndercity2
	SAY @1122 /* ~Right.~ */
	
	IF ~~ THEN
	EXIT
END


IF ~~ THEN BEGIN XA_SkieTakesRing
	SAY @1136 /* ~(Skie takes the ring from Schael.)~ */
	=@1137 /* ~Skie, whatever you do, don't put it on. You'll be teleported. You MUST place it on Rohma's finger.~*/
	IF ~~ THEN EXTERN XASKIE XA_SkieTakesRing
END
IF ~~ THEN BEGIN XA_Thanks3
	SAY @1138 /* ~We won't tell. Just be careful.~*/
	
	IF ~~ THEN EXTERN XASKIE XA_SetUp
END
IF ~~ THEN BEGIN XA_GiveSkieRing
	SAY @1135 /*~One of the city wizards gave us this ring. If you slip it on to Rohma's finger, she'll be teleported to safety.~*/
	
	IF ~~ THEN EXTERN XASKIE XA_GiveRing
END

IF ~~ THEN BEGIN XA_GiveSkieRing2
	SAY @1139 /*~~Skie, do you think you can get to Rohma without being seen?~*/
	
	IF ~~ THEN EXTERN XASKIE XA_GiveSkieRing3
END

IF ~~ THEN BEGIN XA_GiveSkieRing4
	SAY @1141 /*~You wouldn't need to... One of the city wizards gave us this ring. If you slip it on to Rohma's finger, she'll be teleported to safety.~*/
	
	IF ~~ THEN EXTERN XASKIE XA_GiveRing
END

IF ~~ THEN BEGIN XA_SkieUCChainEnd
	SAY @1132 /* ~The man with the scar is Beno.~*/
	
	IF ~~ THEN REPLY @1133 /*~Skie, do you think you can sneak Rohma out of there?~ */
	EXTERN XASKIE XA_CanGetRohma
	
	IF ~~ THEN REPLY @1134 /* ~How did you get in there without them detecting you?~ */
	EXTERN XASKIE XA_NonDetection
	
	
END
//} #endregion

//{ #region Duke Debrief Break - Dialog J-8
IF ~
	Global("XA_DukesDebriefed", "GLOBAL", 2)
~ THEN BEGIN XA_DukeDebrief02
	SAY @1066 /* ~I thought that went well. What do you think?~ */
	
	IF ~~ THEN REPLY @1067 /* ~Me too. You did a great job recounting the events.~ */
	GOTO XA_DukeDebrief02_A1
	
	IF ~~ THEN REPLY @1068 /* ~I don't know... they seemed fearful of 'The Slayer'.~ */
	GOTO XA_DukeDebrief02_B1
END

IF ~~ THEN BEGIN XA_DukeDebrief02_A1
	SAY @1076 /* ~Thanks. I keep a journal whenever I'm deployed. It helps a lot when I need to deliver reports to my superiors.~ */

	IF ~
		!OR(5)
			GlobalGT("XA_TimesHadSex", "GLOBAL", 0)
			Global("XA_SlappedDelcia", "GLOBAL", 1)
			Global("XA_CorwinWonTM", "GLOBAL", 1)
			Global("XA_CorwinCleansed", "GLOBAL", 1)
			Global("XA_CorwinCleansed", "GLOBAL", 2)
	~ THEN REPLY @1098 /* ~Hm. I wonder what they're discussing...~*/
	GOTO XA_DukeDebrief_WaitForDukes
	
	IF ~
		OR(5)
			GlobalGT("XA_TimesHadSex", "GLOBAL", 0)
			Global("XA_SlappedDelcia", "GLOBAL", 1)
			Global("XA_CorwinWonTM", "GLOBAL", 1)
			Global("XA_CorwinCleansed", "GLOBAL", 1)
			Global("XA_CorwinCleansed", "GLOBAL", 2)
	~ THEN REPLY @1074 /* ~Although... I noticed you did leave *some* things out.~ */
	GOTO XA_DukeDebrief02_A2
END

IF ~~ THEN BEGIN XA_DukeDebrief02_A2
	SAY @1079 /* ~Like what?~*/
	
	IF ~~ THEN GOTO XA_DukeDebrief_ForgotSomething
END

IF ~~ THEN BEGIN XA_DukeDebrief_ForgotSomething
	SAY @1087 /* ~(She looks at you with a quizzical expression.)~ */
	
	IF ~~ THEN REPLY @1102 /* ~Actually, it's nothing... I wonder what they're discussing...~*/
	GOTO XA_DukeDebrief_WaitForDukes
	
	IF ~
		Global("XA_SlappedDelcia", "GLOBAL", 1)
		!Global("XA_Recall_Delcia", "GLOBAL", 1)
	~ THEN REPLY @1078 /* ~I recall you smacking some sense into Nalia's aunt.~*/
	DO ~
		SetGlobal("XA_Recall_Delcia", "GLOBAL", 1)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_DukeDebrief02_Slap
	
	IF ~
		Global("XA_CorwinWonTM", "GLOBAL", 1)
		!Global("XA_Recall_TM", "GLOBAL", 1)
	~ THEN REPLY @1083 /* ~You competed in the Trademeet Archery Competition, and you won! You were amazing, Schael.~ */
	DO ~
		SetGlobal("XA_Recall_TM", "GLOBAL", 1)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_DukeDebrief02_TM
	
	IF ~
		GlobalGT("XA_TimesHadSex", "GLOBAL", 0)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_Recall_Sex", "GLOBAL", 1)
	~ THEN REPLY @1082 /* ~Our, ah, adventures in the bedroom. Especially that one time we kept the entire inn from getting any sleep.~ */
	DO ~
		SetGlobal("XA_Recall_Sex", "GLOBAL", 1)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_DukeDebrief02_Sex
	
	IF ~
		!Global("XA_Recall_Vampire", "GLOBAL", 1)
		OR(2)
			Global("XA_CorwinCleansed", "GLOBAL", 1)
			Global("XA_CorwinCleansed", "GLOBAL", 2)
	~ THEN REPLY @1091 /* ~I thought you'd tell them about the time you were nearly transformed into a vampire, by Bodhi.~ */
	DO ~
		SetGlobal("XA_Recall_Vampire", "GLOBAL", 1)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_DukeDebrief02_Vampire
END

IF ~~ THEN BEGIN XA_DukeDebrief02_Vampire
	SAY @1092 /* ~Yes, well... honestly...~ */
	=@1093 /* ~If I'd told them, it would only be a matter of time before my father, and Rohma, would hear about it. I'd rather not trouble them with the knowledge of how close I was to turning into a monster.~*/
	=@1094 /* ~But... I haven't forgotten how you saved me, <CHARNAME>. And I never will.~*/
	
	IF ~~ THEN REPLY @1095 /* ~And I'll never forget what you did for me, Schael. My corpse would still be hanging from the Entar's gallows were it not for you.~ */
	GOTO XA_DukeDebrief02_Vampire_2
END

IF ~~ THEN BEGIN XA_DukeDebrief02_Vampire_2
	SAY @1096 /* ~(You share a warm embrace.)~ */
	
	IF ~~ THEN REPLY @1097 /* ~There was one other thing...~ */
	GOTO XA_DukeDebrief_ForgotSomething
	
	IF ~~ THEN REPLY @1098 /* ~Hm. I wonder what they're discussing...~ */
	GOTO XA_DukeDebrief_WaitForDukes
END

IF ~~ THEN BEGIN XA_DukeDebrief_WaitForDukes
	SAY @1099 /* ~It might be a while. As you've learned by now, the Dukes are, ehh, well-known for their long deliberations.~ */
	
	= @1100 /* ~Let's take a seat on the couch over here. Hopefully it's as comfortable as it looks.~*/
	= @1101 /* ~(You and Captain Corwin take a seat, and pass the time with idle chit-chat. Minutes slowly turn to hours...)~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_DukesDebriefed", "GLOBAL", 3)
		StartCutSceneMode()
		StartCutScene("XADEBR02")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_DukeDebrief02_Slap
	SAY @1084 /* ~Oh, right. 'Lady' Delcia, the pretentious bi - ~ */
	= @1085 /* ~(She catches herself.)~ */
	= @1086 /* ~Nevermind. I won't use that kind of language within earshot of the city officials.~ */
	
	IF ~~ THEN
	GOTO XA_DukeDebrief_ForgotSomething
END

IF ~~ THEN BEGIN XA_DukeDebrief02_TM
	SAY @1088 /* ~(She smiles.)~ */
	= @1089 /* ~I appreciate that. It just wasn't germane to the discussion.~ */
	
	IF ~~ THEN
	GOTO XA_DukeDebrief_ForgotSomething
END

IF ~~ THEN BEGIN XA_DukeDebrief02_Sex
	SAY @1080 /* ~Hahah... no, love, those precious memories are for *our* enjoyment only.~   */
	= @1090 /* ~And... I look forward to making more of those kinds of memories with you, my love.~*/
	
	IF ~~ THEN
	GOTO XA_DukeDebrief_ForgotSomething
END

IF ~~ THEN BEGIN XA_DukeDebrief02_B1
	SAY @1069 /* ~You can control that power now, and that's what matters. What happened in Spellhold, when you lost control... it can never happen again.~ */ 
	
	IF ~~ THEN REPLY @1070 /* ~And it won't. I promise you.~ */
	GOTO XA_DukeDebrief02_B2
	
	IF ~~ THEN REPLY @1071 /* ~You're right. If it did, not even your pleading on my behalf would save me. Not like last time.~ */
	GOTO XA_DukeDebrief02_B2
END

IF ~~ THEN BEGIN XA_DukeDebrief02_B2
	SAY @1072 /* ~That's for damn sure.~ */
	
	IF ~~ THEN REPLY @1081 /* ~Besides the mention of my transformation, yes, I thought it went well. You did a great job recounting the events.~  */
	GOTO XA_DukeDebrief02_A1
END
//} #endregion

//{ #region Corwin Walk Home - Dialog J-9
IF ~
	Global("XA_CorwinWalkHome", "GLOBAL", 1)
~ THEN BEGIN XA_WalkHome
	SAY @985 /* ~Huh? The front door is open.~ */
	
	IF ~~ THEN REPLY @986 /* ~Were you expecting guests?~ */
	DO ~
		SetGlobal("XA_CorwinWalkHome", "GLOBAL", 2)
	~
	GOTO XA_WalkHome2
END

IF ~~ THEN BEGIN XA_WalkHome2
	SAY @987 /* ~No.. it looks like it was broken into..~*/
	
	IF ~~ THEN 
	GOTO XA_WalkHome3
END

IF ~~ THEN BEGIN XA_WalkHome3
	SAY @988 /* ~Oh, Gods! Father! Rohma!~ */
	
	= @989 /* ~(She runs inside, and you follow her in.)~ */
	IF ~~ THEN 
	EXIT
END
//} #endregion

//{ #region Rohma Kidnapped 1316_1 - Dialog J-10
IF ~
	Global("XA_RohmaKidnapped", "GLOBAL", 1)
~ THEN BEGIN XA_RohmaKidnapped
	SAY @975 /* ~Father!~ */
	
	IF ~~ THEN 
	EXTERN XAAUDAM XA_AudamarRohmaKidnapChain
END
//} #endregion 

//{ Dialog J-68
IF ~
	Global("XA_RohmaKidnapped", "GLOBAL", 2)
~ THEN BEGIN XA_RohmaKidnapped2
	SAY @991 /* ~Beno...~  */
	=@992 /* ~(She quivers, then screams in rage.)~ */
	= @994 /* ~WILL I NEVER BE RID OF HIM!? AAAH!!~ */
	
	IF ~~ THEN REPLY @993 /* ~Schael! Try and stay calm - Audamar, they said they'd trade Rohma for me. Do they tell you where they'd make the exchange?~ */
	DO ~
		SetGlobal("XA_RohmaKidnapped", "GLOBAL", 3)
	~
	EXTERN XAAUDAM XA_RohmaKidnapped2A
END
//}


//{ #region Rohma Kidnaped - Ducal Palace - Dialog J-11
IF ~
	Global("XA_RohmaKidnapped", "GLOBAL", 4)
~ THEN BEGIN XA_NeedToGetRohma
	SAY @1055 /* ~What did the healers say? Is my father going to make it?~ */
	
	IF ~~ THEN EXTERN XALIIA XA_NeedToGetRohmaChain
END
//} #endregion

//{ #region Corwin Proposal - Dialog J-12
IF ~
	Global("XA_CorwinProposaXAS", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinProposal
	SAY @954 /* ~The stars are beautiful tonight... */
	= @72 /* ...and look at the reflection of the moonlight on the river...~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinProposaXAS", "GLOBAL", 2)
	~	
	GOTO XA_CorwinProposal2
END

IF ~~ THEN BEGIN XA_CorwinProposal2
	SAY @955 /* ~<CHARNAME>?~ */
	
	IF ~~ THEN REPLY @956 /* ~I was just remembering when we first met.~*/
	GOTO XA_CorwinProposal2A
	
	IF ~~ THEN REPLY @957 /* ~It is beautiful... but its beauty pales in comparison to your own, Schael.~ */
	GOTO XA_CorwinProposal2B
END

IF ~~ THEN BEGIN XA_CorwinProposal2A
	SAY @958 /* ~I remember... it's only been what, a little over a year? At the same time... I feel like we've known eachother for much, much longer.~*/
	
	IF ~~ THEN REPLY @959 /* ~I feel the same way. We've been through so much together. Schael, I...~*/
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinProposal2B
	SAY @962 /* ~You're much too kind.~ */
	
	IF ~~ THEN
	EXIT
END

//{ region: Dialog J-13 
IF ~
	Global("XA_CorwinProposaXAS", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinProposal2C
	SAY @963 /* ~(As she turns to you, her face is illuminated by the soft, pale moonlight. She has never looked more striking to you, and you're momentarily taken aback.)~ */
	
	= @960 /* ~What is it, love?~ */
	
	IF ~~ THEN REPLY @961 /* ~(Get down on one knee, and present her with the engagement ring.)~ */
	DO ~
		SetGlobal("XA_MarriageProposal", "GLOBAL", 1)
	~
	GOTO XA_CorwinProposal3B
END
//} endregion

IF ~~ THEN BEGIN XA_CorwinProposal3B
	SAY @964 /* ~W-what are you.. oh.. my..~*/
	
	IF ~~ THEN REPLY @965 /* ~Schael, my love. Will you marry me?~ */
	GOTO XA_CorwinProposal4
END

IF ~~ THEN XA_CorwinProposal4
	SAY @969 /* ~Yes! Yes of course I will!~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@1763, INFO)
		ChangeStat(Myself, XP, 25000, ADD)
		ChangeStat(Player1, XP, 25000, ADD)
	~
	GOTO XA_CorwinProposal4B
END

IF ~~ THEN BEGIN XA_CorwinProposal4B
	SAY @970 /* ~(You share a long and passionate embrace.)~ */
	
	IF ~
		Global("XA_RingEnchantment2", "GLOBAL", 1)
		Global("XA_RingEnchantment3", "GLOBAL", 1)
		Global("XA_RingEnchantment5", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARING07","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	IF ~
		Global("XA_RingEnchantment1", "GLOBAL", 1)
		Global("XA_RingEnchantment3", "GLOBAL", 1)
		Global("XA_RingEnchantment5", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARING11","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5
	
	IF ~
		Global("XA_RingEnchantment1", "GLOBAL", 1)
		Global("XA_RingEnchantment2", "GLOBAL", 1)
		Global("XA_RingEnchantment5", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARING13","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	IF ~
		Global("XA_RingEnchantment1", "GLOBAL", 1)
		Global("XA_RingEnchantment2", "GLOBAL", 1)
		Global("XA_RingEnchantment3", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARING14","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	IF ~
		Global("XA_RingEnchantment4", "GLOBAL", 1)
		Global("XA_RingEnchantment3", "GLOBAL", 1)
		Global("XA_RingEnchantment5", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARING19","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	IF ~
		Global("XA_RingEnchantment4", "GLOBAL", 1)
		Global("XA_RingEnchantment2", "GLOBAL", 1)
		Global("XA_RingEnchantment5", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARING21","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5
	
	IF ~
		Global("XA_RingEnchantment4", "GLOBAL", 1)
		Global("XA_RingEnchantment2", "GLOBAL", 1)
		Global("XA_RingEnchantment3", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARING22","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	IF ~
		Global("XA_RingEnchantment4", "GLOBAL", 1)
		Global("XA_RingEnchantment1", "GLOBAL", 1)
		Global("XA_RingEnchantment5", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARING25","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	IF ~
		Global("XA_RingEnchantment4", "GLOBAL", 1)
		Global("XA_RingEnchantment1", "GLOBAL", 1)
		Global("XA_RingEnchantment3", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARING26","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	IF ~
		Global("XA_RingEnchantment4", "GLOBAL", 1)
		Global("XA_RingEnchantment1", "GLOBAL", 1)
		Global("XA_RingEnchantment2", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARING28","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	//Non-Imbued

	IF ~
		Global("XA_RingEnchantment2", "GLOBAL", 1)
		Global("XA_RingEnchantment3", "GLOBAL", 1)
		Global("XA_RingEnchantment5", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARNG07A","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	IF ~
		Global("XA_RingEnchantment1", "GLOBAL", 1)
		Global("XA_RingEnchantment3", "GLOBAL", 1)
		Global("XA_RingEnchantment5", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARNG11A","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5
	
	IF ~
		Global("XA_RingEnchantment1", "GLOBAL", 1)
		Global("XA_RingEnchantment2", "GLOBAL", 1)
		Global("XA_RingEnchantment5", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARNG13A","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	IF ~
		Global("XA_RingEnchantment1", "GLOBAL", 1)
		Global("XA_RingEnchantment2", "GLOBAL", 1)
		Global("XA_RingEnchantment3", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARNG14A","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	IF ~
		Global("XA_RingEnchantment4", "GLOBAL", 1)
		Global("XA_RingEnchantment3", "GLOBAL", 1)
		Global("XA_RingEnchantment5", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARNG19A","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	IF ~
		Global("XA_RingEnchantment4", "GLOBAL", 1)
		Global("XA_RingEnchantment2", "GLOBAL", 1)
		Global("XA_RingEnchantment5", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARNG21A","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5
	
	IF ~
		Global("XA_RingEnchantment4", "GLOBAL", 1)
		Global("XA_RingEnchantment2", "GLOBAL", 1)
		Global("XA_RingEnchantment3", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARNG22A","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	IF ~
		Global("XA_RingEnchantment4", "GLOBAL", 1)
		Global("XA_RingEnchantment1", "GLOBAL", 1)
		Global("XA_RingEnchantment5", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARNG25A","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	IF ~
		Global("XA_RingEnchantment4", "GLOBAL", 1)
		Global("XA_RingEnchantment1", "GLOBAL", 1)
		Global("XA_RingEnchantment3", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARNG26A","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5

	IF ~
		Global("XA_RingEnchantment4", "GLOBAL", 1)
		Global("XA_RingEnchantment1", "GLOBAL", 1)
		Global("XA_RingEnchantment2", "GLOBAL", 1)
		Global("XA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("XARNG28A","XACORWIN",1,0,0) //OK
	~
	GOTO XA_CorwinProposal5
END

IF ~~ THEN XA_CorwinProposal5
	SAY @1022 /* ~<CHARNAME>... it's beautiful...~*/
	
	IF ~~ THEN REPLY @967 /* ~Do you like it?~ */
	GOTO XA_CorwinProposal6
END

IF ~~ THEN XA_CorwinProposal6
	SAY @968 /* ~I love it... it's perfect. And I love you. More than you'll ever know.~ */
	
	IF ~~ THEN REPLY @972 /* ~I love you too, Schael.~ */
	GOTO XA_CorwinProposal7
END

IF ~~ THEN XA_CorwinProposal7
	SAY @973 /* ~I know it's late, but come with me back home. I want to tell Rohma the good news!~ */
	
	IF ~~ THEN REPLY @974 /* ~Of course, my dear. Let's go.~ */
	DO ~
		
		StartCutSceneMode()
		StartCutScene("XAWLKHOM")
	~
	EXIT
END
//} #endregion

//{ #region Dinner with Corwin (Romance) - Dialog J-14 - Tested
IF ~
	Global("XA_CorwinDinner", "GLOBAL", 1)
	Global("XA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinDinner_Romance
	SAY @920 /* ~Mm. That was delicious.~ */
	
	IF ~~ THEN REPLY @921 /* ~It was. You ready for another drink?~*/
	DO ~
		SetGlobal("XA_CorwinDinner", "GLOBAL", 2)
	~
	GOTO XA_CorwinDinner_Romance2
END

IF ~~ THEN BEGIN XA_CorwinDinner_Romance2
	SAY @922 /* ~No, thanks. Two drinks is enough. Work in the morning, you know?~*/
	
	IF ~~ THEN REPLY @927 /*  ~Right.~ */
	GOTO XA_CorwinDinner_Romance3
	
	IF ~
		Global("XA_ValygarJoinFF", "GLOBAL", 1)
	~ THEN REPLY @937 /* ~Speaking of work, how's Valygar? I heard he took Marshal Nederlok up on his offer to join the Flaming Fist.~ */
	GOTO XA_CorwinDinner_Romance2A
	
	IF ~
		PartyGoldGT(999)
	~ THEN REPLY @1023 /* ~You have enough money that you don't need to work ever again.~*/
	GOTO XA_CorwinDinner_Work
END

IF ~~ THEN BEGIN XA_CorwinDinner_Romance2A
	SAY @938 /* ~He's doing well. He got his first arrest a few days ago. Breaking & entering.~ */
	
	IF ~~ THEN REPLY @939 /* ~I'm glad to hear it.~   */
	GOTO XA_CorwinDinner_Romance3
END

IF ~~ THEN BEGIN XA_CorwinDinner_Romance3
	SAY @923 /* ~So, love. Tell me - how's life in the Ducal palace?~ */
	
	IF ~~ THEN REPLY @924 /* ~Good... It'l be better though once the three of you move in.~*/
	GOTO XA_CorwinDinner_Romance4
	
	IF ~~ THEN REPLY @926 /* ~I'm just about settled in.~*/
	GOTO XA_CorwinDinner_Romance3A
END

IF ~~ THEN BEGIN XA_CorwinDinner_Romance3A
	SAY @929 /* ~Just about? It's been three months since you moved in. How long does it take?~ */
	
	IF ~~ THEN REPLY @930 /* ~Well.. it's a bit lonely, to be honest. It won't feel like home until the three of you move in.~ */
	GOTO XA_CorwinDinner_Romance4
END

IF ~~ THEN BEGIN XA_CorwinDinner_Romance4
	SAY @925 /* ~I don't doubt it. You've been great with Rohma... She's adjusted well to our being together, I think.~ */
	
	IF ~~ THEN REPLY @931 /* ~Would that I could say the same about your father.~*/
	GOTO XA_CorwinDinner_Romance5
END

IF ~~ THEN BEGIN XA_CorwinDinner_Romance5
	SAY @932 /*~Oh, don't mind him. He's that way to everyone, though he's warming up to you.~*/
	
	IF ~~ THEN REPLY @933 /* ~You think so?~*/
	GOTO XA_CorwinDinner_Romance6
END

IF ~~ THEN BEGIN XA_CorwinDinner_Romance6
	SAY @934 /* ~I do. He told me that he liked your speech the other day at the Hall of Wonders, about your experience in Amn.~ */
	
	IF ~~ THEN REPLY @935 /* ~Oh, really? I'm glad. ~ */
	GOTO XA_CorwinDinner_Romance7
END

IF ~~ THEN BEGIN XA_CorwinDinner_Romance7
	SAY @936 /* ~It's getting late, love. I should head home.~ */
	
	IF ~
		GlobalGT("XA_RingEnchanted", "GLOBAL", 0)
	~ THEN REPLY @916 /* ~Let's take a walk.~ */
	GOTO XA_CorwinDinner_Romance8
	
	IF ~
		GlobalLT("XA_RingEnchanted", "GLOBAL", 1)
		Gender(Player1, MALE)
	~ THEN REPLY @940 /* ~I'll walk you home.~ */
	GOTO XA_CorwinDinner_WalkHome_Male
	
	IF ~
		GlobalLT("XA_RingEnchanted", "GLOBAL", 1)
		!Gender(Player1, MALE)
	~ THEN REPLY @940 /* ~I'll walk you home.~ */
	GOTO XA_CorwinDinner_WalkHome_Female
END

IF ~~ THEN BEGIN XA_CorwinDinner_Romance8
	SAY @917 /* ~At this hour? What do you have in mind?~*/
	
	IF ~~ THEN REPLY @918 /* ~You'll see. Afterwards, I'll walk you home. Let's go.~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XAPROPOS")
	~
	EXIT
END
//} #endregion

//{ #region Dinner with Corwin (Non-Romance) - Dialog J-15 - Tested
IF ~
	Global("XA_CorwinDinner", "GLOBAL", 1)
	!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinDinner_NonRomance
	SAY @920 /*~Mm. That was delicious.~*/
	
	IF ~~ THEN REPLY @921 /**/
	DO ~
		SetGlobal("XA_CorwinDinner", "GLOBAL", 2)
	~
	GOTO XA_CorwinDinner_NonRomance2
END

IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance2
	SAY @922 /*No, thanks. Two drinks is enough. Work in the morning, you know?~*/
	
	IF ~
		PartyGoldGT(999)
	~ THEN REPLY @1023 /* ~You have enough money that you don't need to work ever again.~*/
	GOTO XA_CorwinDinner_Work
	
	IF ~~ THEN REPLY @927 /*~Right.~*/
	GOTO XA_CorwinDinner_NonRomance3
	
	IF ~
		Global("XA_ValygarJoinFF", "GLOBAL", 1)
	~ THEN REPLY @937 /*~Speaking of work, how's Valygar? I heard he took Marshal Nederlok up on his offer to join the Flaming Fist.~*/
	GOTO XA_CorwinDinner_NonRomance2A
END

IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance2A
	SAY @938 /*~He's doing well. He got his first arrest a few days ago. Breaking & entering.~*/
	
	IF ~~ THEN REPLY @939 /*~I'm glad to hear it.~  */
	GOTO XA_CorwinDinner_NonRomance3
END

IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance3
	SAY @943 /*~So, my friend. Tell me - how's life in the Ducal palace?~*/
	
	IF ~~ THEN REPLY @945 /* ~I'm just about settled in... it's just a big difference than what I'm used to.~ */
	GOTO XA_CorwinDinner_NonRomance6
	
	IF ~
		Global("XA_BackToBG_Anomen", "GLOBAL", 1)
		Global("AnomenRomanceActive", "GLOBAL",2)
	~ THEN 
	GOTO XA_CorwinDinner_NonRomance_Anomen
	
	IF ~
		Global("XA_BackToBG_Jaheira", "GLOBAL", 1)
		Global("JaheiraRomanceActive", "GLOBAL",2)
	~ THEN 
	GOTO XA_CorwinDinner_NonRomance_Jaheira

	IF ~
		Global("XA_BackToBG_Aerie", "GLOBAL", 1)
		Global("AerieRomanceActive", "GLOBAL",2)
	~ THEN 
	GOTO XA_CorwinDinner_NonRomance_Aerie
	
	IF ~
		Global("XA_BackToBG_Neera", "GLOBAL", 1)
		Global("NeeraRomanceActive", "GLOBAL",2)
	~ THEN 
	GOTO XA_CorwinDinner_NonRomance_Neera
	
	IF ~
		Global("XA_BackToBG_Rasaad", "GLOBAL", 1)
		Global("RasaadRomanceActive", "GLOBAL",2)
	~ THEN 
	GOTO XA_CorwinDinner_NonRomance_Rasaad
END

IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance_Anomen
	SAY @946 /* ~Are you and Anomen settled in?~*/
	
	IF ~~ THEN REPLY @944 /*~Just about. It's a big adjustment from what we're used to.~*/
	GOTO XA_CorwinDinner_NonRomance6
END

IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance_Jaheira
	SAY @948 /* ~Are you and Jaheira settled in?~*/
	
	IF ~~ THEN REPLY @944 /*~Just about. It's a big adjustment from what we're used to.~*/
	GOTO XA_CorwinDinner_NonRomance6
END

IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance_Aerie
	SAY @947 /* ~Are you and Aerie settled in?~*/
	
	IF ~~ THEN REPLY @944 /*~Just about. It's a big adjustment from what we're used to.~*/
	GOTO XA_CorwinDinner_NonRomance6
END

IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance_Neera
	SAY @949 /* ~Are you and Neera settled in?~*/
	
	IF ~~ THEN REPLY @944 /*~Just about. It's a big adjustment from what we're used to.~*/
	GOTO XA_CorwinDinner_NonRomance6
END

IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance_Rasaad
	SAY @1762 /* ~Are you and Rasaad settled in?~*/
	
	IF ~~ THEN REPLY @944 /*~Just about. It's a big adjustment from what we're used to.~*/
	GOTO XA_CorwinDinner_NonRomance6
END

IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance6
	SAY @950 /* ~I don't doubt it.~ */
	
	IF ~~ THEN REPLY @952 /* ~And you, Schael? How are you adjusting to being back home again? I bet Rohma's happy that her mom is home again.~ */
	GOTO XA_CorwinDinner_NonRomance7
END

IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance7
	SAY @953 /* ~She is. It's wonderful. Speaking of... look at the time. I should get going.~  */
	
	IF ~
		Gender(Player1, MALE)
	~ THEN REPLY @940 /* ~I'll walk you home.~*/
	GOTO XA_CorwinDinner_WalkHome_Male
	
	IF ~
		!Gender(Player1, MALE)
	~ THEN REPLY @940 /* ~I'll walk you home.~*/
	GOTO XA_CorwinDinner_WalkHome_Female
END

IF ~~ THEN BEGIN XA_CorwinDinner_WalkHome_Male
	SAY @941 /* ~(She smiles.) What a gentleman. Let's go.~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAWLKHOM")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinDinner_WalkHome_Female
	SAY @942 /* ~(She smiles.) Let's go.~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XAWLKHOM")
	~
	EXIT
END
//} #endregion

//{ #region Dinner with Corwin (Common) DLG-0013 / 14 - Tested
IF ~~ THEN BEGIN XA_CorwinDinner_Work
	SAY @1024 /* ~That's your money. Consider it compensation for everything you've had to endure.~*/
	
	IF ~
		Global("bd_player_exiled","global",0)
	~ THEN REPLY @1323 /*~It's as much yours, Schael, as it is mine. You could've killed me during my escape. Instead, you showed mercy.~ */
	GOTO XA_CorwinDinner_Work2
	
	IF ~
		Global("bd_player_exiled","global",1)
	~ THEN REPLY @1025 /* ~It's as much yours, Schael, as it is mine... I wouldn't be here were it not for your efforts in securing my release.~ */
	GOTO XA_CorwinDinner_Work2
END

IF ~~ THEN BEGIN XA_CorwinDinner_Work2
	SAY @1026 /* ~Even if it were my money, I'd probably keep working, at least for a while longer. Rohma needs to understand the value of hard work.~ */
	
	= @1027 /* ~Besides, I haven't given up on making colonel one day.~ */
	
	IF ~~ THEN REPLY @1028 /* ~Nor should you. Colonel Corwin... I think I like the sound of that.~*/
	GOTO XA_CorwinDinner_WorkEnd
	
	IF ~~ THEN REPLY @1035 /* ~Colonel? Seems a bit bureaucratic to me.~*/
	GOTO XA_CorwinDinner_Work3B
END

IF ~~ THEN BEGIN XA_CorwinDinner_Work3B
	SAY @1036 /* ~You think so?~ */
	
	IF ~~ THEN REPLY @1037 /* ~You've always struck me as more of a 'hands-on' type of person.~ */
	GOTO XA_CorwinDinner_Work4B
	
	IF ~~ THEN REPLY @1040 /* ~Sitting in an office all day? You'll get bored.~ */
	GOTO XA_CorwinDinner_Work4B
END

IF ~~ THEN BEGIN XA_CorwinDinner_Work4B
	SAY @1038 /* ~Maybe... but being so close to the action for so long has a tendency to shorten one's lifespan...~ */
	
	IF ~~ THEN REPLY @1039 /* ~I've think you've shown that you can handle whatever comes your way, Schael.~*/
	GOTO XA_CorwinDinner_WorkEnd
END

IF ~~ THEN BEGIN XA_CorwinDinner_WorkEnd
	SAY @1034 /* ~(She smiles.)~ */
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_CorwinDinner_NonRomance3
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_CorwinDinner_Romance3
	
	IF ~
		Global("XA_ValygarJoinFF", "GLOBAL", 1)
	~ THEN REPLY @937 /* ~Speaking of work, how's Valygar? I heard he took Marshal Nederlok up on his offer to join the Flaming Fist.~ */
	GOTO XA_CorwinDinner_Romance2A
END
//} #endregion

//{ #region Corwin / Tianna Dialog J-15
IF ~
	Global("XA_ReturnToBG", "GLOBAL", 1)
	Global("XA_AskCorwinAboutTianna", "GLOBAL", 1)
~ THEN BEGIN XA_AskCorwinAboutTianna
	SAY @861 /* ~(You hear her muttering under her breath.)~ */
	
	IF ~~ THEN REPLY @1428 /* ~(Leave her be.)~*/
	DO ~
		SetGlobal("XA_AskCorwinAboutTianna", "GLOBAL", 2)
	~
	EXIT	
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @603 /* ~Something wrong?~*/
	DO ~
		SetGlobal("XA_AskCorwinAboutTianna", "GLOBAL", 2)
	~
	GOTO XA_CorwinTianna2
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @838 /* ~My love... that name, Tianna - haven't you mentioned her to me before?~ */
	DO ~
		SetGlobal("XA_AskCorwinAboutTianna", "GLOBAL", 2)
	~
	GOTO XA_CorwinTianna2
END

IF ~~ THEN BEGIN XA_CorwinTianna2
	SAY @839 /* ~Yes... Tianna and I were seeing eachother for a time. A very short time.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @840 /* ~I see... What happened? I mean, why did you two break up?~ */
	GOTO XA_CorwinTianna3
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1429 /* ~Well? Go on.~ */
	GOTO XA_CorwinTianna3
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @840 /* ~I see... What happened? I mean, why did you two break up?~ */
	GOTO XA_CorwinTianna3_END
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1429 /* ~Well? Go on.~ */
	GOTO XA_CorwinTianna3_END
END

IF ~~ THEN BEGIN XA_CorwinTianna3_END
	SAY @1430 /* ~Eh... forget I said anything. I know you have enough on your mind already. Let's go.~ */
	
	IF ~~ THEN 
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinTianna3
	SAY @841 /* ~Tianna... is a user. She takes advantage of people, and their trust. The last straw was when she stole money from my family.~*/
	
	= @842 /* ~It wasn't much. If she had just asked me, I'd have given it to her. She thought she got away with it, but Rohma saw her.~ */
	= @843 /* ~When she told me what Tianna did, Tianna called Rohma a liar. Like a five year old could even think to lie about something like that.~ */
	
	IF ~~ THEN REPLY @844 /* ~You made the right decision.~ */
	GOTO XA_CorwinTianna4
	
	IF ~~ THEN REPLY @846 /* ~That's not someone I'd want around my child.~ */
	GOTO XA_CorwinTianna4
END

IF ~~ THEN BEGIN XA_CorwinTianna4
	SAY @845 /* ~I just wish I'd seen what she was earlier. ~ */

	IF ~~ THEN REPLY @847 /* ~It worked out in the end. You found someone better.~ */
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_CorwinTianna5
END

IF ~~ THEN BEGIN XA_CorwinTianna5
	SAY @850 /* ~Much, much better. (She smiles.)~ */
	= @851 /* ~Come here.~ */
	= @848 /* ~(You share a warm embrace and kiss).~ */
	= @849 /* ~Let's go, love.~ */
	
	IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN XA_CorwinWillHelpTianna
	SAY @862 /* ~Tianna... (sigh)~ */
	=@863 /* ~Fine - we'll help you. <CHARNAME> and I will talk to Jasper about forgiving your debt.~ */
	
	IF ~~ THEN EXTERN XATIANNA XA_CorwinHelpTianna
END

IF ~~ THEN BEGIN XA_CorwinLobarTiannaEnd
	SAY @860 /* ~No, that won't be necessary.~ */

	IF ~~ THEN EXIT
	
	IF ~
		InMyArea(Player1)
	~ THEN
	DO ~
		SetGlobal("XA_AskCorwinAboutTianna", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_NotYetTianna
	SAY @864 /* ~We're working on it.~ */
	
	IF ~~ THEN EXTERN XATIANNA XA_HelpEnd
END
//} #endregion

//{ #region Corwin Slaver Girl Rescue - Dialog J-16
IF ~
	Global("XA_CorwinSlaverPlot", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinBGSlaverDiscuss
	SAY @753 /* ~I hope those kids can make it to safety. */
	
	IF ~~ THEN REPLY @755 /* ~So do I.~ */
	DO ~
		SetGlobal("XA_CorwinSlaverPlot", "GLOBAL", 2)
	~
	GOTO XA_CorwinBGSlaverDiscuss2
	
	IF ~~ THEN REPLY @754 /* ~They will, don't worry.~ */
	DO ~
		SetGlobal("XA_CorwinSlaverPlot", "GLOBAL", 2)
	~
	GOTO XA_CorwinBGSlaverDiscuss2
END

IF ~~ THEN BEGIN XA_CorwinBGSlaverDiscuss2
	SAY @756 /* ~Everytime the Fist thinks that the slaver problem is under control, we find out how wrong we are.~ */
	
	= @757 /* ~I'll launch an investigation as soon as I return to the city... someone needs to make those slaver bastards pay!~ */
	
	IF ~~ THEN 
	EXIT	
END
//} #endregion

//{ #region Corwin Post Neoma Meeting - Dialog J-17
IF ~
	Global("XA_XACS15Cutscene", "GLOBAL", 6)
	//play romance song
~ THEN BEGIN XA_CorwinNeoma
	SAY @726 /* ~Oh, Neoma...~ */
	
	IF ~
		Global("XA_CorwinGaveEarrings", "GLOBAL", 1)
	~ THEN REPLY @1337 /* ~Her name sounds familiar... oh, right — the earrings for Voghiln!~ */
	DO ~
		SetGlobal("XA_XACS15Cutscene", "GLOBAL", 7)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_CorwinNeoma2
	
	IF ~~ THEN REPLY @728 /* ~You two seem very... ah, friendly.~ */
	DO ~
		SetGlobal("XA_XACS15Cutscene", "GLOBAL", 7)
	~
	GOTO XA_CorwinNeoma4
	
END

IF ~~ THEN BEGIN XA_CorwinNeoma2
	SAY @1338 /* ~Hah, I'm surprised you remember.~ */
	
	IF ~~ THEN REPLY @1339 /* ~As if I didn't hang on your every word, love.~ */
	GOTO XA_CorwinNeoma3
	
	IF ~~ THEN REPLY @1340 /* ~Beautiful earrings for an even more beautiful woman. I remember.~ */
	GOTO XA_CorwinNeoma2A
END

IF ~~ THEN BEGIN XA_CorwinNeoma2A
	SAY @1347 /* ~(She smiles)~ */
	= @1348 /* ~Sweet of you to say.~ */
	
	IF ~~ THEN 
	GOTO XA_CorwinNeoma3
END

IF ~~ THEN BEGIN XA_CorwinNeoma3
	SAY @1341 /* ~She was a little upset when I told her I gave them away, but when I explained why, she understood.~ */
	
	IF ~~ THEN REPLY @728 /* ~You two seem very... ah, friendly.~ */
	GOTO XA_CorwinNeoma4
	
	IF ~~ THEN REPLY @737 /* ~I'm glad you were able to see her again, love. Let's go.~ */
	EXIT
END

IF ~~ THEN XA_CorwinNeoma4
	SAY @739 /* ~Neoma and I are friends. Sometimes a little more than that, if you know what I mean. But you're the one I love, <CHARNAME>, not her.~ */
	
	IF ~~ THEN REPLY @745 /* ~I... see.~ */
	GOTO XA_CorwinNeoma5
	
	IF ~~ THEN REPLY @1342 /* ~Well... as long as your flings with her are a thing of the past...~ */
	GOTO XA_CorwinNeoma6
END

IF ~~ THEN XA_CorwinNeoma5
	SAY @740 /* ~Is my... friendship with Neoma going to be a problem? If so, I'll stop seeing her. I don't want anything to jeopardize the love that you and I have for oneanother.~*/
	
	IF ~~ THEN REPLY @741 /* ~I don't know, Schael. I've never been in any kind of long term relationship, before meeting you. It's hard for me to know what's healthy for a relationship and what isn't.~ */
	GOTO XA_CorwinNeoma5A
	
	IF ~~ THEN REPLY @742 /* ~It's not a problem, so long as you don't develop any serious feelings for her.~ */
	GOTO XA_CorwinNeoma5B
	
	IF ~~ THEN REPLY @743 /* ~Problem? No - in fact, I'm... ah... intrigued by some of the ... possibilities.~ */
	GOTO XA_CorwinNeoma5C
END

IF ~~ THEN XA_CorwinNeoma5A
	SAY @744 /* ~I understand. Thank you for being honest about your feelings, love. I'll tell Jessa that from now on, we are to be friends and nothing more. Let's go.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinNeomaRelationship", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN XA_CorwinNeoma5B
	SAY @746 /* ~And I won't. Thank you for being honest about your feelings, love. Let's go.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinNeomaRelationship", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN XA_CorwinNeoma5C
	SAY @747 /* ~(A mischievous smile graces her face.)~*/
	= @748 /* ~Somehow, I knew you would be. I'll see if she's interested. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinNeomaRelationship", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN XA_CorwinNeoma6
	SAY @1343 /* ~They are. Come here.~ */
	= @1344 /* ~(You kiss and embrace).~ */
	= @1346 /* ~Let's not let any past relationships jeopardize our love for one another.~*/
	
	IF ~~ THEN REPLY @1345 /* ~Right. Thank you, Schael.~*/
	DO ~
		SetGlobal("XA_CorwinNeomaRelationship", "GLOBAL", 1)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Family Timer - Dialog J-18
IF ~
	Global("XA_CorwinNeedSeeFamily", "GLOBAL", 1)
	GlobalLT("XA_CorwinMetFamily", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinFamilyTimer
	SAY @680 /* ~<CHARNAME> - I really need to see my family. My home is in the southeast part of the city. Let's go.~*/
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		GlobalLT("XA_CorwinFamilyTimer_Hours", "GLOBAL", 4)
	~ THEN REPLY @1636 /* ~Soon, love.~ */
	DO ~
		SetGlobalTimer("XA_CorwinFamilyTimer", "GLOBAL", ONE_HOUR)
		SetGlobal("XA_CorwinNeedSeeFamily", "GLOBAL", 0)
	~
	EXIT
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		GlobalLT("XA_CorwinFamilyTimer_Hours", "GLOBAL", 4)
	~ THEN REPLY @1635 /* ~Soon, Captain.~ */
	DO ~
		SetGlobalTimer("XA_CorwinFamilyTimer", "GLOBAL", ONE_HOUR)
		SetGlobal("XA_CorwinNeedSeeFamily", "GLOBAL", 0)
	~
	EXIT
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!GlobalLT("XA_CorwinFamilyTimer_Hours", "GLOBAL", 4)
	~ THEN REPLY @1636 /* ~Soon, love.~ */
	GOTO XA_SeeFamilyNow
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!GlobalLT("XA_CorwinFamilyTimer_Hours", "GLOBAL", 4)
	~ THEN REPLY @1635 /* ~Soon, Captain.~ */
	GOTO XA_SeeFamilyNow
	
	IF ~~ THEN REPLY @1637 /* ~Lead the way.~ */
	DO ~
		SetGlobal("XA_CorwinNeedSeeFamily", "GLOBAL", 0)
		StartCutSceneMode()
		StartCutscene("XAGOHOME")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_SeeFamilyNow
	SAY @1638 /* ~You've been saying that for the last four hours. Either come with me now, or I'll see you tomorrow during the debriefing.~ */
	
	IF ~~ THEN REPLY @1639 /* ~See you tomorrow, then.~ */
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
		SetGlobal("XA_CorwinNeedSeeFamily", "GLOBAL", 0)
		SetGlobal("XA_CorwinWithFamily", "GLOBAL", 1)
		SetGlobal("XA_CorwinMetFamily", "GLOBAL", 2)
		SetLeavePartyDialogFile()
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("",DEFAULT)
		LeaveParty()
		EscapeAreaMove("XAHOME",400,250,S) 
	~
	EXIT
	
	IF ~~ THEN REPLY @1637 /* ~Lead the way.~ */
	DO ~
		SetGlobal("XA_CorwinNeedSeeFamily", "GLOBAL", 0)
		StartCutSceneMode()
		StartCutscene("XAGOHOME")
	~
	EXIT
END
//} #endregion

//{ #region Corwin Family Timer Expired (Non-Romance) - Dialog J-19
IF ~
	Global("XA_CorwinLeaveForFamily", "GLOBAL", 1)
	!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinFamilyTimer_ExpiredNR
	SAY @903 /* ~<CHARNAME>, I'm going home to spend the rest of the day with my family. I'll see you tomorrow morning at the debriefing.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinLeaveForFamily", "GLOBAL", 2)
		SetGlobal("XA_CorwinWithFamily", "GLOBAL", 1)
		SetGlobal("XA_CorwinMetFamily", "GLOBAL", 2)
		SetLeavePartyDialogFile()
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("",DEFAULT)
		LeaveParty()
		EscapeAreaMove("XAHOME",400,250,S) 
	~
	EXIT
END
//} #endregion

//{ #region Corwin Family Timer Expired (Romance) - Dialog J-20
IF ~
	Global("XA_CorwinLeaveForFamily", "GLOBAL", 1)
	Global("XA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinFamilyTimer_ExpiredRomance
	SAY @904 /* ~My love, I'm going home to spend the rest of the day with my family. Have you decided where you're staying tonight?~*/
	
	IF ~~ THEN REPLY @786 /* ~I'll stay at the Three Old Kegs tonight.~ */
	DO ~
		SetGlobal("XA_StayingAtThreeOldKegs", "GLOBAL", 1)
	~
	GOTO XA_SleepAtHotel
	
	IF ~~ THEN REPLY @789 /* ~I'll stay at the Blade and Stars tonight.~*/
	DO ~
		SetGlobal("XA_StayingAtBladeAndStars", "GLOBAL", 1)
	~
	GOTO XA_SleepAtHotel
	
	IF ~
		Global("XA_SavedElfsong", "GLOBAL", 1)
	~ THEN REPLY @790 /* ~I'll stay at the Elfsong Tavern tonight.~*/
	DO ~
		SetGlobal("XA_StayingAtElfsongTavern", "GLOBAL", 1)
	~
	GOTO XA_SleepAtHotel
	
	IF ~~ THEN REPLY @791 /* ~I'll stay at the Blushing Mermaid tonight.~*/
	DO ~
		SetGlobal("XA_StayingAtBlushingMermaid", "GLOBAL", 1)
	~
	GOTO XA_SleepAtHotel
	
	IF ~~ THEN REPLY @905 /* ~I was hoping to spend the night at your place.~*/
	GOTO XA_WantToSpendWithSchael
	
END
IF ~~ THEN BEGIN XA_WantToSpendWithSchael
	SAY @785 /* ~And I want you to, but first, Rohma's going to need some time to adjust to us being together.~*/
	
	IF ~~ THEN REPLY @793 /* ~I understand.~ */
	GOTO XA_DecideWhereSleeping
END
IF ~~ THEN BEGIN XA_DecideWhereSleeping
	SAY @792 /* ~So, what'll it be?~ */
	
	IF ~~ THEN REPLY @786 /* ~I'll stay at the Three Old Kegs tonight.~ */
	DO ~
		SetGlobal("XA_StayingAtThreeOldKegs", "GLOBAL", 1)
	~
	GOTO XA_SleepAtHotel
	
	IF ~~ THEN REPLY @789 /* ~I'll stay at the Blade and Stars tonight.~*/
	DO ~
		SetGlobal("XA_StayingAtBladeAndStars", "GLOBAL", 1)
	~
	GOTO XA_SleepAtHotel
	
	IF ~
		Global("XA_SavedElfsong", "GLOBAL", 1)
	~ THEN REPLY @790 /* ~I'll stay at the Elfsong Tavern tonight.~*/
	DO ~
		SetGlobal("XA_StayingAtElfsongTavern", "GLOBAL", 1)
	~
	GOTO XA_SleepAtHotel
	
	IF ~~ THEN REPLY @791 /* ~I'll stay at the Blushing Mermaid tonight.~*/
	DO ~
		SetGlobal("XA_StayingAtBlushingMermaid", "GLOBAL", 1)
	~
	GOTO XA_SleepAtHotel
END

IF ~~ THEN BEGIN XA_SleepAtHotel
	SAY @780 /*  ~Good. Come here. ~*/
	
	= @781 /* ~(You share a warm embrace and kiss.)~ */
	= @799 /* ~(She whispers in your ear.) I'll come see you in your room tonight, lover.~ */
	
	IF ~~ THEN REPLY @907 /* ~You'll do more than just see me, I hope.~ */
	DO ~
		SetGlobal("XA_CorwinLeaveForFamily", "GLOBAL", 2)
	~
	GOTO XA_SexTonight
END

IF ~~ THEN BEGIN XA_SexTonight
	SAY @908 /* ~(She laughs). Much more. See you later.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinSex_3", "GLOBAL", 1)
		SetGlobal("XA_CorwinWithFamily", "GLOBAL", 1)
		SetGlobal("XA_CorwinMetFamily", "GLOBAL", 2)
		SetLeavePartyDialogFile()
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("",DEFAULT)
		LeaveParty()
		EscapeAreaMove("XAHOME",400,250,S) 
	~
	EXIT
END

//} #endregion

//{ #region Go Back to BG (Romance) - Dialog J-21
IF ~
	Global("XA_BackToBG", "GLOBAL", 2)
	Global("XA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN XA_BackToBG_RTL_Romance
	SAY @630 /* ~My love - are you ready to head back to Baldur's Gate?~ */
	
	IF ~~ THEN REPLY @632 /* ~Let's go.~ */
	GOTO XA_BackToBG_RTL_Leave
	
	IF ~~ THEN REPLY @633 /* ~Not yet.~*/
	GOTO XA_BackToBG_RTL_NotYet
END
//} #endregion

//{ #region Go Back to BG (Non-Romance) - Dialog J-22

IF ~
	Global("XA_BackToBG", "GLOBAL", 2)
	!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN XA_BackToBG_RTL_Romance
	SAY @631 /* ~Are you ready to head back to Baldur's Gate?~ */
	
	IF ~~ THEN REPLY @632 /* ~Let's go.~ */
	GOTO XA_BackToBG_RTL_Leave
	
	IF ~~ THEN REPLY @633 /* ~Not yet.~*/
	GOTO XA_BackToBG_RTL_NotYet
END


//} #endregion

//{ #region Corwin End BG2 (Romance) - Dialog J-23
IF ~
	Global("XA_BackToBG", "GLOBAL", 1)
	Global("XA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN XA_BackToBG_Romance
	SAY @619 /* ~That was some celebration.~ */
	
	IF ~~ THEN REPLY @620 /* ~It definitely was.~ */
	DO ~
		SetGlobal("XA_BackToBG", "GLOBAL", 2)
	~
	GOTO XA_BackToBG2
	
	IF ~~ THEN REPLY @621 /* ~A better liquor selection would have been nice...~*/
	DO ~
		SetGlobal("XA_BackToBG", "GLOBAL", 2)
	~
	GOTO XA_BackToBG2
END

IF ~~ THEN BEGIN XA_BackToBG2
	SAY @1431 /* ~(She smiles.)~ */
	
	= @622 /* ~I think it'll pale in comparison to the one the city will throw for us upon our return. (She smiles.)~ */

	IF ~~ THEN REPLY @623 /* ~Baldur's Gate? Are they expecting us?~ */
	GOTO XA_BackToBG3
END

IF ~~ THEN BEGIN XA_BackToBG3
	SAY @624 /* ~They are. While you were recovering, I asked the elves to send word to the Council that Irenicus was dead, and that we would be returning to the city soon. Gods, I can't wait to see Rohma and my father.~ */
	
	IF ~
		NumInPartyGT(2)
	~
	THEN GOTO XA_BackToBG_Chain
	
	IF ~
		NumInPartyLT(3)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN GOTO XA_BackToBG4_Romance
	
	IF ~
		NumInPartyLT(3)
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN GOTO XA_BackToBG4
END

IF ~~ THEN BEGIN XA_BackToBG4
	SAY @671 /* ~The elves were also gracious enough to provide us a caravan for the trip back. Are you ready to leave?~ */
	
	IF ~~ THEN REPLY @632 /* ~Let's go.~*/
	GOTO XA_BackToBG_RTL_Leave
	
	
	IF ~~ THEN REPLY @633 /* ~Not yet.~*/
	GOTO XA_BackToBG_RTL_NotYet
END

IF ~~ THEN BEGIN XA_BackToBG4_Romance
	SAY @670 /* ~The elves were also gracious enough to provide us a caravan for the trip back. Are you ready to leave, love?~ */
	
	IF ~~ THEN REPLY @632 /* ~Let's go.~*/
	GOTO XA_BackToBG_RTL_Leave
	
	
	IF ~~ THEN REPLY @633 /* ~Not yet.~*/
	GOTO XA_BackToBG_RTL_NotYet
END
//} #endregion

//{ #region Go Back to BG (Common) - DLG-0021/22/23
IF ~~ THEN BEGIN XA_BackToBG_RTL_Leave
	SAY @635 /* ~Rohma... I'll be home soon...~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_BackToBG", "GLOBAL", 3)
		SetGlobal("XA_PartyRemovalProcessing", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_BackToBG_RTL_NotYet
	SAY @634 /* ~Take your time. Come and see me when you're ready.~ */
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Corwin Post Drizzt - Dialog J-24
IF ~
	Global("XA_CorwinVouchedDrizz", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinPlayerDrizz
	SAY @488 /* ~That adventurer we encountered, Drizzt, was adamant that you had assaulted him. Was he speaking the truth?~ */
	
	IF ~~ THEN REPLY @489 /* ~I'd rather not talk about it.~ */
	GOTO XA_CorwinPlayerDrizz1A //OK
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @490 /* ~No, you know me, I would never do such a thing.~ */
	GOTO XA_CorwinPlayerDrizz2A //OK
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @490 /* ~No, you know me, I would never do such a thing.~ */
	GOTO XA_CorwinPlayerDrizz2B //OK
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @491 /* ~Yes, I did. I'm not proud of it, but I promise you that I'm not the same person that I was.~ */
	GOTO XA_CorwinPlayerDrizz3A //OK
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @491 /* ~Yes, I did. I'm not proud of it, but I promise you that I'm not the same person that I was.~ */
	GOTO XA_CorwinPlayerDrizz3B //OK 
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @497 /* ~Yes, I did. I saw he was a drow, and everything I'd heard about his kind convinced me that he'd harm me after killing the gnolls.~*/
	GOTO XA_CorwinPlayerDrizz4A //OK
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @497 /* ~Yes, I did. I saw he was a drow, and everything I'd heard about his kind convinced me that he'd harm me after killing the gnolls.~*/
	GOTO XA_CorwinPlayerDrizz4B //OK 
		
	IF ~~ THEN REPLY @492 /* ~Yes, I did, and I'd do it again. I was struggling to survive and needed his equipment.~ */
	GOTO XA_CorwinPlayerDrizz1 //OK
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz1A
	SAY @1445 /* ~And I'd rather you be open with me. Fine. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz1
	SAY @493 /* ~I see. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz2A
	SAY @496 /* ~Sometimes I feel like I don't know you at all. I'd rather you'd have done it and been honest with me than to lie about it. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -4)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz2B
	SAY @496 /* ~Sometimes I feel like I don't know you at all. I'd rather you'd have done it and been honest with me than to lie about it. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz3A
	SAY @495 /* ~I appreciate your honesty. We've all made bad decisions - it's good though that you've learned from yours. Let's go, love.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz3B
	SAY @494 /* ~I appreciate your honesty. We've all made bad decisions - it's good though that you've learned from yours. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz4A
	SAY @499 /* ~I appreciate your honesty. Let's go, love.~*/
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz4B
	SAY @498 /* ~I appreciate your honesty. Let's go.~*/
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END
//} #endregion



//{ #region Corwin Dorn Post Sex - Dialog J-25
IF ~
	Global("XA_ComplainDornSex", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinSexDorn
	SAY @442 /* ~To think I even considered the possibility of you and I being together. Madness. Be with Dorn, then. I want nothing more to do with you.~ [BD54533] */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 3)
		SetGlobal("OHD_sexreactions","GLOBAL",2)
		SetGlobal("XA_ComplainDornSex", "GLOBAL", 2)
		SetPlayerSound(Myself,268282,SELECT_ACTION6)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Player Soul Talk - Dialog J-26
IF ~
	Global("XA_PlayerSoulTalk", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinSoulTalk
	SAY @432 /* ~(She places her hand on your shoulder.)~ */
	=@1349 /* ~Hey — you alright?~ */
	
	IF ~~ THEN REPLY @433 /* ~For just having my soul ripped out of me, yes, I feel fine.~ */
	DO ~
		SetGlobal("XA_PlayerSoulTalk", "GLOBAL", 2)
	~
	GOTO XA_CorwinSoulTalk2
	
	IF ~~ THEN REPLY @434 /* ~I'm not sure. It's hard for me to explain.... I feel... hollow?~ */
	DO ~
		SetGlobal("XA_PlayerSoulTalk", "GLOBAL", 2)
	~
	GOTO XA_CorwinSoulTalk2
END

IF ~~ THEN BEGIN XA_CorwinSoulTalk2
	SAY @435 /* ~Whatever he did, we'll find a way to restore you and your sister.~ */
	
	IF ~~ THEN REPLY @436 /* ~Right. Let's go.~ */
	EXIT

	IF ~~ THEN REPLY @437 /* ~Right - and you? Are you alright Schael?~ */
	GOTO XA_CorwinSoulTalk3
END

IF ~~ THEN BEGIN XA_CorwinSoulTalk3
	SAY @438 /* ~Yes, I - I'm fine... I'm just disappointed that he escaped.~ */
	
	IF ~~ THEN REPLY @439 /* ~You look concerned. What he said about using you to assassinate the Grand Dukes - it will never happen.~ */
	GOTO XA_CorwinSoulTalk4
END

IF ~~ THEN BEGIN XA_CorwinSoulTalk4
	SAY @440 /* ~That's for damn sure. Come on - let's go.~ */
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END 

//} #endregion

//{ #region Corwin Rep Warning - Dialog J-27
IF ~
	Global("XA_CorwinRepWarning", "GLOBAL", 2)
~ THEN BEGIN XA_RepComplain
	SAY @417 /* ~We need to talk.~ */
	IF ~~ THEN REPLY @419 /* ~What's on your mind?~ */
	GOTO XA_RepComplain2
	
	IF ~~ THEN REPLY @107
	GOTO XA_RepComplain2
END

IF ~~ THEN BEGIN XA_RepComplain2
	SAY @418 /* ~I don't like the way things are going. I didn't come all this way to help you in committing acts of evil. If things get much worse, you'll find yourself on your own. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinRepWarning", "GLOBAL", 3)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Left - Bad Reputation - Dialog J-28A
IF ~
	Global("XA_CorwinLeftPoorRep", "GLOBAL", 1)
	GlobalLT("chapter", "GLOBAL", 20)
~ THEN BEGIN XA_LeftPoorRep_LT20
	SAY @420 /* ~I'm sorry. I can't be a part of this any longer. When you clean up your act, you can find me in the Athkatla magistrate.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinLeftPoorRep", "GLOBAL", 0)
		SetLeavePartyDialogFile()
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		EscapeAreaMove("AR1002",1033,563, SW)
	~
	EXIT
END  
//} #endregion

//{ #region Corwin Left - Bad Reputation - Dialog J-28B
IF ~
	Global("XA_CorwinLeftPoorRep", "GLOBAL", 1)
	GlobalGT("chapter", "GLOBAL", 19)
~ THEN BEGIN XA_LeftPoorRep_GT19
	SAY @1446 /* ~I'm sorry. I can't be a part of this any longer. If you ever clean up your act, come and see me.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinLeftPoorRep", "GLOBAL", 0)
		SetLeavePartyDialogFile()
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		EscapeArea()
	~
	EXIT
END  
//} #endregion

//{ #region Dorn Ritual Interject - Dialog J-29

IF ~
	Global("OHD_ritual_interjects","GLOBAL",1)
~ THEN BEGIN XA_RitualInterject
	SAY @401 /* ~That smell, ugh. It reminds me of ... it reminds me of Avernus!~ */
	
	IF ~~ THEN REPLY @402 /* ~We survived that, and we'll survive this. Stand ready.~ */
	DO ~
		SetGlobal("OHD_ritual_interjects","GLOBAL",2)
	~
	GOTO XA_RitualInterject2
END

IF ~~ THEN BEGIN XA_RitualInterject2
	SAY @403 /* Right */
	
	IF ~~ THEN
	EXIT
	
	IF ~  
		IsValidForPartyDialogue("imoen2")
	~ THEN 
	EXTERN ~IMOEN2J~ 56
	IF ~  
		IsValidForPartyDialogue("rasaad")
	~ THEN 
	EXTERN ~RASAADJ~ 771
	IF ~  
		IsValidForPartyDialogue("korgan")
	~ THEN 
	EXTERN ~KORGANJ~ 236
END
//} #endregion

//{ #region Gorge Interject - Dialog J-30
IF ~
	OR(2)
		Global("OHD_GORGE_NTRJEX","OH5100",1)
		Global("OHD_GORGE_NTRJEX","GLOBAL",1)
~ THEN BEGIN XA_GorgeClimb
	SAY @395 /* ~Let's take this nice and slow. Remember - maintain three points of contact at all times.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive","GLOBAL",2)
	~ THEN REPLY @397 /* ~Good advice. Climb many trees in your youth, love?~ */
	DO ~
		SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
	~
	GOTO XA_GorgeClimb1
	
	IF ~
		!Global("XA_CorwinRomanceActive","GLOBAL",2)
	~ THEN REPLY @396 /* ~Good advice. Climb many trees in your youth, Corwin?~ */
	DO ~
		SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
	~
	GOTO XA_GorgeClimb1
	
	IF ~
		GlobalGT("XA_TimesHadSex", "GLOBAL", 0)
		Gender(Player1, MALE)
	~ THEN REPLY @399 /*  ~Good advice. Climb many trees, love? Besides mine, I mean.~ */
	DO ~
		SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
	~
	GOTO XA_GorgeClimb1A
END

IF ~~ THEN BEGIN XA_GorgeClimb1A
	SAY @400 /* ~(She gives you a wry smile, and rolls her eyes.)~ */
	IF ~~ THEN
	GOTO XA_GorgeClimb1
END

IF ~~ THEN BEGIN XA_GorgeClimb1
	SAY @398 /* ~No, not really. We practice scaling walls during our training exercises. The principle is the same.~ */
	IF ~~ THEN
	EXIT
	
	IF ~  
		IsValidForPartyDialogue("hexxat")
	~ 
	THEN EXTERN ~HEXXATJ~ 2
	IF ~  
		IsValidForPartyDialogue("neera")
	~ 
	THEN EXTERN ~NEERAJ~ 15
	IF ~  
		IsValidForPartyDialogue("dorn")
	~ 
	THEN EXTERN ~DORNJ~ 502
	IF ~  
		IsValidForPartyDialogue("viconia")
	~ 
	THEN EXTERN ~VICONIJ~ 410
	IF ~  
		IsValidForPartyDialogue("valygar")
	~ 
	THEN EXTERN ~VALYGARJ~ 128
	IF ~  
		IsValidForPartyDialogue("minsc")
	~ 
	THEN EXTERN ~MINSCJ~ 252
	IF ~  
		IsValidForPartyDialogue("mazzy")
	~ 
	THEN EXTERN ~MAZZYJ~ 208
	IF ~  
		IsValidForPartyDialogue("korgan")
	~ 
	THEN EXTERN ~KORGANJ~ 234
	IF ~  
		IsValidForPartyDialogue("keldorn")
	~ 
	THEN EXTERN ~KELDORJ~ 265
	
END
//} #endregion

//{ #region Corwin Bit - First - Dialog J-31
IF ~
	Global("XA_CorwinBit", "GLOBAL", 2)
~
THEN BEGIN XA_CorwinBitWokeUp
	SAY @297 /* ~Bodhi - she.. she bit me!~ */
	
	IF ~~ THEN REPLY @298 /* ~You're hurt, Schael. Here, let me help you.~*/
	DO ~
		SetGlobalTimer("XA_CorwinBitTimer", "GLOBAL", EIGHT_HOURS)
		SetGlobal("XA_CorwinBit", "GLOBAL", 3)
		SetGlobal("XA_CorwinCured", "GLOBAL", 0)
	~
	GOTO XA_CorwinBitWokeUp2
END

IF ~~ THEN BEGIN XA_CorwinBitWokeUp2
	SAY @299 /* ~Thanks... I - I just feel a bit weak...~*/
	
	IF ~~ THEN REPLY @304 /* ~Take a moment to recover, love. When you're ready, we will go after Bodhi and retrieve the Lanthorn.~ */
	GOTO XA_CorwinBitWokeUp3
	IF ~
		IsValidForPartyDialogue("Aerie")
	~
	THEN REPLY @301 /* ~Aerie? Is there anything you can do to help?~ */
	EXTERN AERIEJ XA_CorwinBite
	
	IF ~
		IsValidForPartyDialogue("Jaheira")
	~
	THEN REPLY @300 /* ~Jaheira? Is there anything you can do to help?~ */
	EXTERN JAHEIRAJ XA_CorwinBite 
	
	IF ~
		IsValidForPartyDialogue("Viconia")
	~
	THEN REPLY @302 /* ~Viconia? Is there anything you can do to help?~ */
	EXTERN VICONIJ XA_CorwinBite

	IF ~
		IsValidForPartyDialogue("Anomen")
	~
	THEN REPLY @303 /* ~Anomen? Is there anything you can do to help?~ */
	EXTERN ANOMENJ XA_CorwinBite 	
END

IF ~~ THEN BEGIN XA_CorwinBitWokeUp3
	SAY @305 /* ~Right... come on.. we need to keep moving.~*/
	= @306 /* ~(She's up and about, but still unsteady - you become concerned that her condition may deteriorate over time).~ */
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_CorwinJoined","LOCALS",1)
		SetGlobal("XA_AskedToRejoin", "LOCALS", 0)
		SetGlobal("XA_ResetBanterTimer", "GLOBAL", 1)
		SetGlobal("XA_ResetJoinChecks", "GLOBAL", 1)
		ChangeStat(Myself,CON,-1,ADD)
		ChangeStat(Myself,DEX,-1,ADD)
		ChangeStat(Myself,STR,-1,ADD)
		ChangeStat(Myself,CHR,-1,ADD)
		//JoinParty()
	~
	UNSOLVED_JOURNAL @307 /* ~Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and wounding the one person that is dearest to my heart: Schael. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue, I will lose even more than I thought possible. In spite of her threats, I must continue my pursuit of Bodhi and the Rhynn Lanthorn, though I am concerned that Schael's condition will worsen over time.~  */
	EXIT
END
//} #endregion

//{ #region Corwin Bit - Second - Dialog J-32
IF ~
	Global("XA_CorwinBit", "GLOBAL", 4)
~ THEN BEGIN XA_CorwinBitByBodhi2
	SAY @259 /* ~Hey, can we... can we s-stop, for just a minute.~ */
	IF ~~ THEN REPLY @260 /* ~Schael? What's wrong?~*/
	DO ~
		SetGlobal("XA_CorwinBit", "GLOBAL", 5)
		SetGlobalTimer("XA_CorwinBitTimer", "GLOBAL", SIX_HOURS)
	~
	GOTO XAA86
	
	IF ~~ THEN REPLY @257 /* ~Are you alright?~ */
	DO ~
		SetGlobal("XA_CorwinBit", "GLOBAL", 5)
		SetGlobalTimer("XA_CorwinBitTimer", "GLOBAL", SIX_HOURS)
	~
	GOTO XAA86
END
IF ~~ THEN BEGIN XAA86
	SAY @261 /* ~I can't *wheeze* ... I can't seem ... to catch my breath.~ */
	IF ~
		!IsValidForPartyDialogue("KORGAN")
	~ THEN REPLY @262 /* ~Come here, love. Put your arm around my shoulder. Take as much time as you need.~ */
	GOTO XAA87
	
	IF ~
		OR(4)
			IsValidForPartyDialogue("KORGAN")
			IsValidForPartyDialogue("AERIE")
			IsValidForPartyDialogue("IMOEN2")
			IsValidForPartyDialogue("JAHEIRA")
	~ THEN REPLY @262 /* ~Come here, love. Take as much time as you need.~ */
	DO ~
		SetGlobalTimer("XA_CorwinSickPartyTimer", "GLOBAL", TWO_HOURS)
	~
	GOTO XAA87
END

IF ~~ THEN BEGIN XAA87
	SAY @263 /* ~(She takes several long, deep breaths.)~  */
	
	= @267 /* ~That's better... come on, we need to get that.. Lanthorn.~ */
	
	= @264 /* ~(She is clearly unwell and her condition is rapidly deteriorating... you resolve to redouble your efforts to find and kill Bodhi. You hope it will be enough to cure Schael of her affliction.)~ */
	
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Corwin Bit - Third - Dialog J-33
IF ~
	Global("XA_CorwinBit", "GLOBAL", 6)
~ THEN BEGIN XA_CorwinBitByBodhi3
	SAY @276 /* ~Ugh...~ */
	
	= @269 /* ~(She stumbles and falls to her hands and knees)~ */
	
	IF ~~ THEN REPLY @277 /* ~Schael!~ */
	DO ~
		SetGlobal("XA_CorwinBit", "GLOBAL", 7)
		SetGlobalTimer("XA_CorwinBitTimer", "GLOBAL", FOUR_HOURS)
	~
	GOTO XAA88
END
IF ~~ THEN BEGIN XAA88
	SAY @1447 /* (You help her back to her feet. She appears to be in very bad shape. Her eyes are bloodshot, she's covered in sweat, and her skin is pale and cold to the touch.)~ */
	
	= @278 /* ~Thanks *cough* come on... we'd better find Bodhi and the Lanthorn soon... before I..~ */
	
	IF ~
		GlobalGT("bd_drinks_corwin", "GLOBAL", 0) // had a drink with Corwin back in Baldur's Gate 
	~ THEN REPLY @279 /* ~It breaks my heart to see you like this, love.~ */
	GOTO XAA89A
	
	IF ~
		Global("bd_drinks_corwin", "GLOBAL", 0) // didn't have a drink with Corwin back in Baldur's Gate 
	~ THEN REPLY @279 /* ~It breaks my heart to see you like this, love.~ */
	GOTO XAA89B
END

IF ~~ THEN BEGIN XAA89A
	SAY @282 /* ~Hah, I look that bad, eh? You should see *cough* yourself *cough* *cough*.~ */
	= @275 /* ~One day, we'll look back on this and laugh *cough* over a couple of drinks at... at... where was it...~ */ 
	IF ~~ THEN REPLY @274 /* ~The Three Old Kegs, love. You had the Berduskan dark wine, your favorite.~ */
	GOTO XAA98
END

IF ~~ THEN BEGIN XAA89B
	SAY @282 /* ~Hah, I look that bad, eh? You should see *cough* yourself *cough* *cough*.~ */
	IF ~~ THEN REPLY @283 /* ~Hang in there, Schael. We're going to find Bodhi and cure you of this cursed affliction. Can you walk?~ */
	GOTO XAA90
END

IF ~~ THEN BEGIN XAA90
	SAY @284 /* ~Y-yes... come on, love.. let's go.~ */
	= @280 /* ~(It's clear to you that Schael does not have much time left. You need to find and kill Bodhi, and soon, or you will lose the woman you love.)~  */
	IF ~~ THEN 
	EXIT
END

IF ~~ THEN BEGIN XAA98
	SAY @273 /* ~Right *cough* *wheeze* *cough*... just before we *cough*.. left for Dragonspear...~ */
	IF ~~ THEN REPLY @283 /* ~Hang in there, Schael. We're going to find Bodhi and cure you of this cursed affliction. Can you walk?~ */
	GOTO XAA90
END
//} #endregion

//{ #region Corwin Bit - Death - Dialog J-34
IF ~
	Global("XA_CorwinBit", "GLOBAL", 8)
~ THEN BEGIN XA_CorwinBitByBodhi3
	SAY @265 /* ~*Cough* <CHARNAME> *Cough* ...~*/
	
	= @268 /* ~(She retches, and begins vomitting blood.)~ */
	
	IF ~~ THEN REPLY @266 /* ~Schael!~*/
	DO ~
		SetGlobal("XA_CorwinDiedFromBite", "GLOBAL", 1)
		ChangeAIScript("", OVERRIDE)
		ClearAllActions()	
	~
	GOTO XA_CorwinCollapse
END
//} #endregion

IF ~~ THEN BEGIN XA_CorwinCollapse
	SAY @270 /* ~(You run over to her and she collapses into your arms.)~ */
	
	IF ~
		GlobalGT("bd_drinks_corwin", "GLOBAL", 0)
	~ THEN
	DO ~
		//SetGlobal("XA_CS08A", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XAAcs08a")
	~
	UNSOLVED_JOURNAL @285 /* ~Schael died in my arms, mere hours after being bit by Bodhi. I believe that the bite was intended to turn Schael into a vampire, but she died before the transition could complete. There may still be a way to revive her. I will find Bodhi and make her pay for the loss of my love, with her life.~*/
	EXIT
	
	IF ~
		Global("bd_drinks_corwin", "GLOBAL", 0)
	~ THEN 
	DO ~
		//SetGlobal("XA_CS08A", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XAAcs08c")
	~
	UNSOLVED_JOURNAL @285 /* ~Schael died in my arms, mere hours after being bit by Bodhi. I believe that the bite was intended to turn Schael into a vampire, but she died before the transition could complete. There may still be a way to revive her. I will find Bodhi and make her pay for the loss of my love, with her life.~ */
	EXIT
END

//{ #region Corwin Firkraag Deal - Dialog J-35
IF ~
	InParty(Myself)
	Global("XA_CorwinFirkraagDeal", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinFirkraagDeal
	SAY @199 /* ~I've gone as far as I can. When you regain your senses, you can find me at the Athkatla council building.~ */
	
	IF ~~ THEN
	DO ~
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		EscapeAreaMove("AR1002",1033,563, SW)
		SetGlobal("XA_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
		SetGlobal("XA_CorwinFirkraagDeal", "GLOBAL", 2)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Phaere Sex - Dialog J-36
IF ~
	InParty(Myself)
	Global("XA_PhaereTalk", "GLOBAL", 1)
	Global("PhaereInnuendo", "GLOBAL", 2)
~ THEN BEGIN XA_PhaereTalk
	SAY @216 /* ~You were with her for a while...~ */
	
	IF ~~ THEN REPLY @217 /* ~Listen, Schael. She didn't leave me any choice. I had to in order to maintain our cover.~ */
	DO ~
		SetGlobal("XA_PhaereTalk", "GLOBAL", 2)
	~
	GOTO XAA69
	
	IF ~~ THEN REPLY @218 /*  ~It meant nothing to me. You are the one that I love.~ */
	DO ~
		SetGlobal("XA_PhaereTalk", "GLOBAL", 2)
	~
	GOTO XAA70
	
	IF ~~ THEN REPLY @219 /* ~And? I did what I needed to, nothing more.~ */
	DO ~
		SetGlobal("XA_PhaereTalk", "GLOBAL", 2)
	~
	GOTO XAA71
END

IF ~~ THEN BEGIN XAA69
	SAY @221 /* ~I understand. Let's just get out of this hole and forget that it ever happened.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA70
	SAY @220 /*  ~It means something to me. I understand though why you had to. Let's just get out of this hole and forget that it ever happened.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA71
	SAY @222 /*  ~I see. And did you enjoy it?~ */
	IF ~~ THEN REPLY @223 /* ~To be perfectly honest, I did.~ */
	GOTO XAA75
	
	IF ~
		GlobalGT("XA_TimesHadSex", "GLOBAL", 0)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @428 /* ~Well, she's even better than you, so yes.~ */
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	GOTO XAA75
	
	IF ~
		GlobalGT("XA_TimesHadSex", "GLOBAL", 0)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @429 /* ~She doesn't compare to you, love. No one does.~ */
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XAA99
	
	IF ~~ THEN REPLY @224 /* ~That's none of your concern.~ */
	GOTO XAA75
	
	IF ~~ THEN REPLY @225 /* ~No, I didn't. I feel nothing toward her but disgust.~ */
	GOTO XAA69
END

IF ~~ THEN BEGIN XAA75
	SAY @226 /* ~You've changed, love, and not in a good way. I can only hope that you'll return to normal once we've restored what the wizard stole from you. ~  */
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA99
	SAY @252 /* ~ ~(A fleeting smile graces her face.)~*/
	
	= @253 /*~Let's just get out of this hole and forget that it ever happened.~*/
	
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Corwin Phaere No Sex - Dialog J-37
IF ~
	InParty(Myself)
	Global("XA_PhaereTalk", "GLOBAL", 1)
	Global("PhaereInnuendo", "GLOBAL", 3)
~ THEN BEGIN XA_PhaereTalk
	SAY @227 /* ~What'd she want?~ */
	
	IF ~~ THEN REPLY @228 /* ~For me to sleep with her.~ */
	DO ~
		SetGlobal("XA_PhaereTalk", "GLOBAL", 2)
	~
	GOTO XAA72
	
	IF ~~ THEN REPLY @229 /*  ~Better not to ask. What matters is that she didn't get it.~*/
	DO ~
		SetGlobal("XA_PhaereTalk", "GLOBAL", 2)
	~
	GOTO XAA74

END

IF ~~ THEN BEGIN XAA72
	SAY @230 /* ~Really - how'd you manage to get out of that one?~ */
	IF ~~ THEN REPLY @231 /* ~I told her you'd kill me for cheating on you.~ */
	GOTO XAA73
END

IF ~~ THEN BEGIN XAA73
	SAY @232 /* ~Hah! You lost your soul, but not your sense of humor, it seems. Come love, let's get going.~ */
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA74
	SAY @233 /* ~Hm, I didn't see her as the type to be so easily turned away. Let's go love.~ */
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Bodhi Deal - Dialog J-38
IF ~
	InParty(Myself)
	Global("XA_CorwinBodhiDeal", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinBodhiDeal
	SAY @199 /* ~I've gone as far as I can. When you regain your senses, you can find me at the Athkatla council building.~ */
	
	IF ~~ THEN
	DO ~
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		SetGlobal("XA_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
		SetGlobal("XA_CorwinBodhiDeal", "GLOBAL", 2)
		LeaveParty()
		EscapeAreaMove("AR1002",1033,563, SW)
	~
	EXIT
END
//} #endregion

//{ #region SoD Anxiety - Dialog J-39

IF ~
	Global("XA_SoDAnxiety", "GLOBAL", 2)
	//play romance song
~ THEN BEGIN XA_SoDAnxiety2
	SAY @1306 /* ~Are you alright?~ */
	= @1307 /* ~You look like you've seen a ghost.~ */
	
	IF ~~ THEN REPLY @1313 /* ~It's nothing... come on, let's go.~ */
	DO ~
		SetGlobal("XA_SoDAnxiety", "GLOBAL", 3)
	~
	EXIT
	
	IF ~~ THEN REPLY @1309 /* ~I... I'm fine... ~*/
	DO ~
		SetGlobal("XA_SoDAnxiety", "GLOBAL", 3)
	~
	GOTO XA_SoDAnxiety3
END

IF ~~ THEN BEGIN XA_SoDAnxiety3
	SAY @1310 /* ~Honey, what's wrong? You can tell me.~ */
	
	IF ~
		Global("XA_SoDAnxietyAlatos", "GLOBAL", 1)
	~ THEN REPLY @1311 /* ~When Alatos brought up the tunnels beneath the city... it all came flooding back, Schael.~ */
	GOTO XA_SoDAnxiety4
	
	IF ~
		Global("XA_SoDAnxietyCell", "GLOBAL", 1)
	~ THEN REPLY @1432 /* ~Seeing my cell again... it all came flooding back, Schael.~ */
	GOTO XA_SoDAnxiety4
	
	IF ~~ THEN REPLY @1322 /* ~Really, it's nothing. Let's get moving.~*/
	EXIT
END

IF ~~ THEN BEGIN XA_SoDAnxiety4
	SAY @1312 /* ~I understand... it was a traumatic experience, for all of us.~ */
	
	IF ~
		Global("bd_player_exiled","global",0)
	~ THEN REPLY @1314 /* ~I think about it, still. Not as much as I used to, but... it's scary to think how close you were to... how close we were to —~ */
	GOTO XA_SoDAnxiety5
	
	IF ~
		Global("bd_player_exiled","global",1)
	~ THEN REPLY @1433 /* ~I think about it, still. Not just my exile, but how close I was to being —~ */
	GOTO XA_SoDAnxiety5
END

IF ~~ THEN BEGIN XA_SoDAnxiety5
	SAY @1316 /* ~I know, love. Come here.~  */
	= @1317 /*  ~(You share a long and tender embrace.)~ */
	
	IF ~~ THEN REPLY @1318 /* ~Thank you, Schael... For believing in me, and for believing in us.~  */
	GOTO XA_SoDAnxiety6
END

IF ~~ THEN BEGIN XA_SoDAnxiety6
	SAY @1319 /* ~We have each other... and we have Rohma. The new memories we make together will drown out those dark echoes. You'll see.~*/
	
	IF ~
		Global("bd_player_exiled","global",0)
	~ THEN REPLY @1321 /* ~I look forward to it.~ */
	DO ~
		AddJournalEntry(@1320, INFO)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
	
	IF ~
		Global("bd_player_exiled","global",1)
	~ THEN REPLY @1321 /* ~I look forward to it.~ */
	DO ~
		AddJournalEntry(@1434, INFO)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END
//} #endregion

//{ #region Met Rohma Interaction BG2 (Non-Romance) - Dialog J-40

/* Optional Interaction - Met Rohma */
IF ~
	InParty(Myself)
	Global("XA_Banter_CorwinPlayerOpt1", "GLOBAL", 2)
	!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
~
THEN BEGIN XA_OPT1Friend
	SAY @139 /* ~(You notice Captain Corwin staring into the distance, with sadness in her eyes.)~ */
	
	IF ~~ THEN REPLY @141 /* ~Captain? Are you alright?~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	GOTO XA_OPT1Friend2 //OK
	
	IF ~~ THEN REPLY @1428 /* ~(Leave her be.)~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_OPT1Friend2
	SAY @143 /* ~(She snaps to attention) ~ */
	
	= @1351 /* <CHARNAME>, yes. Sorry - I was thinking about home.~ */
	
	IF ~~ THEN REPLY @145 /* ~About your daughter and father. I understand.~ */
	GOTO XA_OPT1Friend3 //OK
	
	IF ~~ THEN REPLY @255 /* ~No need to apologize. It must be difficult for you to be away from your family.~*/
	GOTO XA_OPT1Friend3 //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend3
	SAY @146 /* ~Yes... You know, Rohma asks about you.~ */
	
	IF ~
		Global("XA_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @147 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1Friend4_GaveDoll //OK
	
	IF ~
		!Global("XA_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @147 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1Friend4_NoDoll //OK
	
	IF ~~ THEN REPLY @159 /* ~Of course she does. I am the *ahem* hero of Baldur's Gate, after all.~ */
	GOTO XA_OPT1Friend3C //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend3C
	SAY @160 /*  ~(She rolls her eyes)  */
	= @1350 /* ~A little humility from time to time wouldn't hurt, you know. But yes, you did leave quite the impression on her.~ */
	
	IF ~
		Global("XA_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1Friend4_GaveDoll //OK
	
	IF ~
		!Global("XA_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1Friend4_NoDoll //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend4_GaveDoll
	SAY @148 /* ~She loves the teddy you bought for her. It's her favorite toy.~ */
	
	IF ~~ THEN REPLY @151 /* ~It was a simple gesture.. I didn't think it would mean that much to her.~ */
	GOTO XA_OPT1Friend5 //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend4_NoDoll
	SAY @1362 /* ~The kindness that you showed her is more than her father ever did... thank you, <CHARNAME>.~*/
	
	IF ~~ THEN
	GOTO XA_OPT1END //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend5
	SAY @157 /* ~That one act of kindness from you is more than her father ever did for her... thank you, <CHARNAME>.~*/

	IF ~~ THEN
	GOTO XA_OPT1END //OK
END

IF ~~ THEN BEGIN XA_OPT1END
	SAY  @158 /* ~Let's get moving.~ */
	
	IF ~~ THEN REPLY @1353 /* ~Right.~ */
	EXIT
	
	IF ~
		!Global("AerieRomanceActive","GLOBAL",2)
		!Global("ViconiaRomanceActive","GLOBAL",2)
		!Global("DornRomanceActive","GLOBAL",2)
		!Global("NeeraRomanceActive","GLOBAL",2)
		!Global("AnomenRomanceActive","GLOBAL",2)
		!Global("JaheiraRomanceActive","GLOBAL",2)
		!Global("HexxatRomanceActive","GLOBAL",2)
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1354 /* ~Capt — Schael, wait. There's something I need to tell you.~ */
	GOTO XA_OPT1END_InitRomance //OK
END

IF ~~ THEN BEGIN XA_KissEnd
	SAY @78 /* ~Let's go, love. We have work to do.~*/
	
	IF ~~ THEN REPLY @79
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_OPT1END_InitRomance
	SAY @1356 /* ~Hm?~  */
	
	IF ~~ THEN REPLY @1355 /* ~Ah... nevermind. Let's go.~ */
	GOTO XA_OPT1END_InitRomance_End //OK
	
	IF ~~ THEN REPLY @1448 /* ~I want you to know that I greatly appreciate your friendship. And I don't want to do anything to jeopardize that. But...~  */
	GOTO XA_OPT1END_InitRomance2 //OK
END

IF ~~ THEN BEGIN XA_OPT1END_InitRomance2
	SAY @1361 /* ~What is it? You can tell me.~ */
	
	IF ~~ THEN REPLY @1355 /* ~Ah... nevermind. Let's go.~ */
	GOTO XA_OPT1END_InitRomance_End //OK
	
	IF ~~ THEN REPLY @94 /* ~Schael... I... I didn't realize how much I needed you near me, until you were gone. Your being here, now, fills a void in my heart that I didn't know was there. I'd like for us to move past friendship, into a more serious relationship. I... I'm in love with you, Schael.~ */
	DO ~
		SetGlobal("XA_CorwinLoveBG2", "GLOBAL", 1)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	GOTO XAA35
END

IF ~~ THEN BEGIN XA_OPT1END_InitRomance_End
	SAY @1357 /* ~(A look of disappointment flashes across her face.)~*/
	
	= @1358 /*~Fine. Let's go.~*/
	
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Met Corwin Interaction BG2 (Romance) - Dialog J-41
IF ~
	InParty(Myself)
	Global("XA_Banter_CorwinPlayerOpt1", "GLOBAL", 2)
	Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	//play romance song
~
THEN BEGIN XA_OPT1Romance
	SAY @140 /* ~(You notice Schael staring into the distance, with sadness in her eyes.)~ */
	
	IF ~~ THEN REPLY @142 /*  ~My love, are you alright?~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	GOTO XA_OPT1Romance_2 //OK
	
	IF ~~ THEN REPLY @1435 /*   ~What's wrong, dear?~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	GOTO XA_OPT1Romance_2 //OK
	
	IF ~~ THEN REPLY @1428
	DO ~
		SetGlobal("XA_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	EXIT
END
IF ~~ THEN BEGIN XA_OPT1Romance_2
	SAY @144 /* ~(She snaps to attention)*/

	=@1352 /*	~Yes, sorry. I was thinking about home. I just miss them, that's all.~*/
	
	IF ~~ THEN REPLY @149 /* ~Rohma and your father. I understand.~ */
	GOTO XA_OPT1Romance_3 //OK
	
	IF ~~ THEN REPLY @255 /* ~No need to apologize. It must be difficult for you to be away from your family.~*/
	GOTO XA_OPT1Romance_3 //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance_3
	SAY @146 /* ~Yes... You know, Rohma asks about you.~ */
	
	IF ~
		Global("XA_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @147 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1Romance4_GaveDoll //OK
	
	IF ~
		!Global("XA_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @147 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1Romance4_NoDoll //OK
	
	IF ~~ THEN REPLY @159 /* ~Of course she does. I am the *ahem* hero of Baldur's Gate, after all.~ */
	GOTO XA_OPT1Romance_4 //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance_4
	SAY @160 /*  ~(She rolls her eyes)  */
	= @1350 /* ~A little humility from time to time wouldn't hurt, you know. But yes, you did leave quite the impression on her.~ */
	
	IF ~
		Global("XA_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1Romance4_GaveDoll //OK
	
	IF ~
		!Global("XA_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1Romance4_NoDoll //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance4_NoDoll
	SAY @1436 /* ~I think of the kindness that you showed Rohma, and how good you've been with me... ~ */

	= @1437 /* And then I think of Beno, and how stupid I was to be with scum like that... you must think I'm a fool. */
	
	IF ~~ THEN REPLY @1438 /* ~Schael, stop it. You're more than any <PRO_MANWOMAN> can hope for in this life, and a great mother to Rohma.~ */
	GOTO XA_OPT1Romance4_NoDoll2 //OK
	
	IF ~~ THEN REPLY @1439 /* ~Schael, I've never met anyone like you. I hope you understand how special you are. I do, and I know Rohma does.~ */
	GOTO XA_OPT1Romance4_NoDoll2 //OK
	
	IF ~~ THEN REPLY @1440 /*  ~Nonsense. Let go of the past, love. Focus on our future together — you, me, and Rohma.~  */
	GOTO XA_OPT1Romance4_NoDoll2 //OK
	
END

IF ~~ THEN BEGIN XA_OPT1Romance4_NoDoll2
	SAY @1441 /* ~The care and interest you've shown for her is more than Beno ever did.~ */
	
	IF ~~ THEN 
	GOTO XA_OPT1Romance4_NoDoll3 //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance4_NoDoll3
	SAY @153 /* ~She deserves better.~ */
	
	IF ~~ THEN REPLY @154 /* ~She does. Listen, Schael - I don't know if I'd be a good step parent for Rohma. What I do know is that I'll do my best.~ */
	GOTO XA_OPT1RomanceEnd //OK
	
	IF ~~ THEN REPLY @155 /* ~She does. Listen, Schael - I'm fully aware of the responsibilities and challenges of being a step parent, and I want you to know that I will welcome them.~ */
	GOTO XA_OPT1RomanceEnd  //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance4_GaveDoll
	SAY @148 /* ~She loves the teddy you bought for her. It's her favorite toy.~ */
	
	IF ~~ THEN REPLY @150 /* ~Oh yes, I remember! I bought it at the general store, not long after I met her for the first time.~ */
	GOTO XA_OPT1Romance4_GaveDoll2 //OK
	
	IF ~~ THEN REPLY @151 /* ~It was a simple gesture.. I didn't think it would mean that much to her.~ */
	GOTO XA_OPT1Romance4_GaveDoll2 //OK
	
END

IF ~~ THEN BEGIN XA_OPT1Romance4_GaveDoll2
	SAY @152 /*~That one small act of kindness was more than her father ever did for her.~*/
	
	IF ~~ THEN 
	GOTO XA_OPT1Romance4_NoDoll3
END

IF ~~ THEN BEGIN XA_OPT1RomanceEnd 
	SAY @156 /*  ~I know you will. You step up to challenges instead of running from them. That's one of the reasons that I love you, <CHARNAME>. ~ */
	= @158 /* ~Let's get moving.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	EXIT
END
//} #endregion

//{ #region Neb Dead - Dialog J-42
IF ~
	InParty(Myself)
	Global("XA_NebDead", "GLOBAL", 1)
~ THEN BEGIN XA_NebDead
	SAY @202 /* ~He's dead. */
	=@210 /*~(Her hands tremble with anger.)~*/
	=@211 /*~What kind of monster could murder one child, let alone dozens?~*/
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @203 /* ~The worst kind. (You hold her hands in yours) Are you alright, love?~ */
	GOTO XAA60
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @204 /* ~The worst kind. Are you alright, Schael?~ */
	GOTO XAA60
END

IF ~~ THEN BEGIN XAA60
	SAY @205 /* ~I will be. What he said about Rohma...~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @206 /* ~I wouldn't worry about it. He was just trying to rattle you.~ */
	GOTO XAA61
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @207 /* ~Whatever his intentions, it doesn't matter now. He's dead, and the world is a better place for it.~*/
	GOTO XAA61
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @206 /* ~I wouldn't worry about it. He was just trying to rattle you.~ */
	GOTO XAA62
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @207 /* ~Whatever his intentions, it doesn't matter now. He's dead, and the world is a better place for it.~*/
	GOTO XAA62
END

IF ~~ THEN BEGIN XAA61
	SAY @208 /* ~You're right...*/
	
	= @212 /* ~(She calms down.)~ */
	
	= @213 /* ~Let's get going, love.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_NebDead", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA62
	SAY @208 /* ~You're right...*/
	
	= @212 /* ~(She calms down.)~ */
	
	= @209 /* ~Let's get going.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_NebDead", "GLOBAL", 2)
	~
	EXIT
END
//} #endregion

//{region: Dialog J-44

//} endregion

//{region: Dialog J-45

//} #endregion

//{ #region Corwin Sex 2 Timer Initial - Dialog J-46 - Tested 2023-04-17
IF ~
	Global("XA_CorwinSex2_Init", "GLOBAL", 1)
	//play romance song
~ THEN BEGIN XA_CorwinSexSecond
	SAY @529 /* ~I've been watching you, love, and of late I don't like what I see.~ [XACORJ10] */
	
	IF ~~ THEN REPLY @530 /* ~What? I don't understand.~ */
	DO ~
		SetGlobal("XA_CorwinSex2_Init", "GLOBAL", 2)
		SetGlobal("XA_CorwinSex_2", "GLOBAL", 1)
	~
	GOTO XA_CorwinSexSecond2
END

IF ~~ THEN BEGIN XA_CorwinSexSecond2
	SAY @531 /* ~For all of your power, your fighting skills are suspect. I shouldn't be surprised, based on your upbringing in Candlekeep, but I'm concerned.~ */
	= @536 /* ~You can be beaten by a seemingly lesser opponent if they recognize and exploit your lack of skill.~ */
	
	IF ~~ THEN REPLY @533 /* ~Perhaps you're right. I'm open to any tips you can give me.~ */
	GOTO XA_CorwinSexSecond3A
	
	IF ~~ THEN REPLY @532 /* ~You're talking to the <PRO_MANWOMAN> who defeated Sarevok and stopped Caelar's crusade. You're clearly mistaken, love.~ */
	GOTO XA_CorwinSexSecond3B
END

IF ~~ THEN BEGIN XA_CorwinSexSecond3A
	SAY @535 /* ~Very well. Get us a room and I'll show you what I mean. Let's go.~~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinSexSecond3B
	SAY @534 /* ~You defeated them with raw power, not skill. Get us a room and I'll show you what I mean. Let's go.~*/
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Corwin Arrest - Dialog J-50 - Tested 2023-04-18
IF ~
	Global("XA_CorwinArrest", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinArrest1
	SAY @553 /* ~The Hall of Wonders...~ */
	
	= @554 /*  ~<CHARNAME>, did I ever tell you how I got arrested?~ */
	
	IF ~~ THEN REPLY @555 /* ~You, arrested?~ */
	DO ~
		SetGlobal("XA_CorwinArrest", "GLOBAL", 2)
	~
	GOTO XA_CorwinArrest2
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @556 /* ~No, I don't think you did, Captain.~ */
	DO ~
		SetGlobal("XA_CorwinArrest", "GLOBAL", 2)
	~
	GOTO XA_CorwinArrest2
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @557 /*  ~No love, I don't think you did.~ */
	DO ~
		SetGlobal("XA_CorwinArrest", "GLOBAL", 2)
	~
	GOTO XA_CorwinArrest2
END

IF ~~ THEN BEGIN XA_CorwinArrest2
	SAY @558 /* ~Well... it was after my mother died. My father was still a Fist at the time, so when he left for work I'd leave the house to hang out with some ... friends of mine. It's how I met Beno.~ */
	
	= @559 /* ~We got ourselves into a *lot* of trouble.~ */
	
	IF ~~ THEN REPLY @560 /* ~Well? Tell me more.~ */
	GOTO XA_CorwinArrest3
	
	IF ~~ THEN REPLY @561 /* ~Hah, some things never change. You still get into a lot of trouble, only with me instead!~ */
	GOTO XA_CorwinArrest3
END

IF ~~ THEN BEGIN XA_CorwinArrest3
	SAY @562 /* ~One day, we had the brilliant idea to go to the Hall of Wonders and play hot potato with a jeweled egg. It was donated to the museum by an emissary from Tethyr. It must have been worth hundreds, or even thousands of gold.~ */
	
	= @563 /* ~There we were, throwing this very expensive and precious egg around, while the museum guards were frantically chasing us in and around the Hall.~ */
	
	= @564 /* ~Guess who was holding the egg when the music stopped?~ */
	
	IF ~~ THEN REPLY @565 /* ~You.~ */
	GOTO XA_CorwinArrest4
END

IF ~~ THEN BEGIN XA_CorwinArrest4
	SAY @566 /* ~That's right. I was arrested... and my 'friends' all ran away. It's a good thing that the egg wasn't damaged, otherwise I might still be in prison, hah.~ */
	
	= @567 /* ~My father could've gotten me out like he did so many times before, but this time, he didn't — and I'm glad. Spending that night in that cold cell was a major wake up call for me.~ */
	
	IF ~~ THEN REPLY @568 /* ~I know what you mean. I never want to see those cells again.~*/
	GOTO XA_CorwinArrest5A
	
	IF ~~ THEN REPLY @569 /* ~Do you ever think of how your life would have changed had you not been arrested?~ */
	GOTO XA_CorwinArrest5B
END

IF ~~ THEN BEGIN XA_CorwinArrest5A
	SAY @573 /* ~You know, sometimes I think how my life would've changed if I hadn't been arrested that day...~*/
	
	= @574 /* ~Would Rohma be here? Would I have joined the Fist? Taken part in the Dragonspear campaign?~ */
	
	IF ~~ THEN 
	GOTO XA_CorwinArrest6_NoRomance
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_CorwinArrest6_Romance
END

IF ~~ THEN BEGIN XA_CorwinArrest5B
	SAY @570 /* ~I do... Would Rohma be here? Would I have joined the Fist? Taken part in the Dragonspear campaign?~ */
	
	IF ~~ THEN 
	GOTO XA_CorwinArrest6_NoRomance
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_CorwinArrest6_Romance
END

IF ~~ THEN BEGIN XA_CorwinArrest6_NoRomance
	SAY @578 /* ~Only the Gods know, I guess...~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@1363, INFO)
	~
	EXIT
	
	IF ~
		!Global("XA_VisitedHOW", "GLOBAL", 1)
	~ THEN 
	GOTO XA_CorwinArrest7	
END

IF ~~ THEN BEGIN XA_CorwinArrest6_Romance
	SAY @571 /* ~... Would I be in love with the most amazing and heroic <PRO_MANWOMAN> in Faerûn?~ */
	
	IF ~~ THEN REPLY @575 /* ~And would I be in love with such an incredible, beautiful and determined woman?~ */
	GOTO XA_CorwinArrest6_RomanceEnd
END

IF ~~ THEN BEGIN XA_CorwinArrest6_RomanceEnd
	SAY @576 /* ~(You share a warm embrace.)~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@1363, INFO)
	~
	EXIT
	
	IF ~
		!Global("XA_VisitedHOW", "GLOBAL", 1)
	~ THEN 
	GOTO XA_CorwinArrest7
END

IF ~~ THEN BEGIN XA_CorwinArrest7
	SAY @577 /* ~Come on, let's head in. I'm sure they've set up some interesting new exhibits since the last time we were here.~  */
	
	IF ~~ THEN 
	DO ~
		AddJournalEntry(@1363, INFO)
	~
	EXIT
END
//} #endregion


//{ #region Corwin Intimate Bodhi - Dialog J-51
IF ~
	Global("XA_CorwinSexAfterBodhi", "GLOBAL", 1)
	//play romance song
~ THEN BEGIN XA_CorwinWantsSex
	SAY @374 /* ~My love... do you have a moment?~ */
	
	IF ~~ THEN REPLY @376 /* ~Not right now, Schael.~ */
	DO ~
		SetGlobal("XA_CorwinSexAfterBodhi", "GLOBAL", 2)
	~
	GOTO XA_CorwinWantsSex2A //OK
	
	IF ~~ THEN REPLY @375 /* ~Of course, dear. What's on your mind?~ */
	DO ~
		SetGlobal("XA_CorwinSexAfterBodhi", "GLOBAL", 2)
	~
	GOTO XA_CorwinWantsSex2B //OK
END

IF ~~ THEN XA_CorwinWantsSex2A
	SAY @377 /* ~It's important. You'll want to hear this.~ */
	
	IF ~~ THEN REPLY @375 /* ~Of course, dear. What's on your mind?~ */
	GOTO XA_CorwinWantsSex2B //OK
	
	IF ~~ THEN REPLY @376 /* ~Like I said, I'm in the middle of something.~ */
	GOTO XA_CorwinWantsSex2D //OK
END

IF ~~ THEN XA_CorwinWantsSex2B
	SAY @380 /* ~I've been reflecting on recent events... and the dangers we face.~ */
	= @381 /* ~You saved my life, <CHARNAME>. I was finished after Bodhi's bite, but you saved me...~ */
	
	IF ~~ THEN REPLY @382 /* ~Would you have expected any less? I love you Schael - more than anything. You know this.~*/
	GOTO XA_CorwinWantsSex3 //OK
	
	IF ~~ THEN REPLY @383 /* ~You're a valuable ally. You'd have done the same for me.~*/
	GOTO XA_CorwinWantsSex3 //OK
END

IF ~~ THEN XA_CorwinWantsSex2C
	SAY @377 /* ~It's important. You'll want to hear this.~ */
	
	IF ~~ THEN REPLY @375 /* ~Of course, dear. What's on your mind?~ */
	GOTO XA_CorwinWantsSex2B //OK
	
	IF ~~ THEN REPLY @376 /* ~Like I said, I'm in the middle of something.~ */
	GOTO XA_CorwinWantsSex2D //OK
END

IF ~~ THEN XA_CorwinWantsSex2D
	SAY @379 /* ~Fine (sigh), forget it.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinSex_1", "GLOBAL", 5)
	~
	EXIT
END

IF ~~ THEN XA_CorwinWantsSex3
	SAY @384 /* ~Yes, of course.. what I mean to say is.. Gods, why is this so hard?~ */
	= @385 /* ~Let's not let our mission, our duties, get in the way of (she leans in) ... of our intimacy.~ */
	= @1335
	= @1336
	IF ~
		Global("XA_CorwinWantsToWait", "GLOBAL", 1)
	~ THEN REPLY @387 /* ~But, I thought you wanted to wait until we returned home, to Baldur's Gate.~ */
	GOTO XA_CorwinWantsSex4A //OK
	
	IF ~~ THEN REPLY @388 /* ~I agree wholeheartedly. (You smile broadly, and kiss her.)~  */
	GOTO XAA29 //OK
	
	IF ~~ THEN REPLY @391 /* ~Are you saying what I think you're saying?~ */
	GOTO XA_CorwinWantsSex4C //OK
END

IF ~~ THEN XA_CorwinWantsSex4A
	SAY @389 /* ~It wasn't that I didn't want to. I do want to. It's just that I've always put my duty ahead of my desires.~ */
	IF ~~ THEN
	GOTO XA_CorwinWantsSex4C //OK
END

IF ~~ THEN XA_CorwinWantsSex4C
	SAY @390 /* ~Let me be perfectly clear. I want you, <CHARNAME>. I want you to make love to me.~ */
	
	IF ~
		!IsValidForPartyDialogue("HAERDALIS")
	~ THEN REPLY @392 /* ~That might be the most romantic thing anyone has ever said.~*/
	GOTO XA_CorwinWantsSex5A //OK
	
	IF ~
		IsValidForPartyDialogue("HAERDALIS")
	~ THEN REPLY @392 /* ~That might be the most romantic thing anyone has ever said.~*/
	EXTERN HAERDAJ XA_CorwinWantsSex5B //OK
	
	IF ~~ THEN REPLY @393 /* ~Nothing would please me more.~ */
	GOTO XAA29
END

IF ~~ THEN XA_CorwinWantsSex5A
	SAY @394 /* ~Hardly. (She smiles.) But I appreciate the compliment.~ */

	IF ~~ THEN
	GOTO XAA29 //OK
END
//} #endregion

//{ #region Corwin Cheap Date - Dialog J-52

IF ~
	Global("XA_CorwinComplainSex", "GLOBAL", 1)
	GlobalLT("XA_CorwinComplainSexCount", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinSexCC
	SAY @66 /* ~When I said some place more private, I didn't mean this dump. It's filthy. Let's go to one of the better establishments in the city.~ */
	
	IF ~~ THEN REPLY @67 /* ~Right... sorry, love.~ */
	DO ~
		IncrementGlobal("XA_CorwinComplainSexCount", "GLOBAL", 1)
		SetGlobal("XA_CorwinComplainSex", "GLOBAL", 0)
	~
	EXIT

	IF ~~ THEN REPLY @68 /* ~The rats bother you, eh?~ */
	DO ~
		IncrementGlobal("XA_CorwinComplainSexCount", "GLOBAL", 1)
		SetGlobal("XA_CorwinComplainSex", "GLOBAL", 0)
	~
	GOTO XA_CorwinSexCC2
END

IF ~~ THEN BEGIN XA_CorwinSexCC2
	SAY @69 /* ~Rats, slavers, thieves, the stench, all of it bothers me. Let's go.~ */
	
	IF ~~ THEN REPLY @67 /* ~Right... sorry, love.~ */
	EXIT
END
//}

//{ Dialog J-53A
IF ~
	Global("XA_CorwinComplainSex", "GLOBAL", 1)
	Global("XA_CorwinComplainSexCount", "GLOBAL", 1)
	Global("XA_CorwinSex_1", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinSexCC3
	SAY @70 /* ~I already told you, we are not making love in this dump.~ */
	= @71 /*  ~You know what? Forget it. I'm not in the mood anymore. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinSex_1", "GLOBAL", 5)
		SetGlobal("XA_CorwinComplainSex", "GLOBAL", 0)
		SetGlobal("XA_CorwinComplainSexCount", "GLOBAL", 0)
	~
	EXIT
END
//}

//{ Dialog J-53B
IF ~
	Global("XA_CorwinComplainSex", "GLOBAL", 1)
	Global("XA_CorwinComplainSexCount", "GLOBAL", 1)
	Global("XA_CorwinSex_2", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinSexCC3
	SAY @70 /* ~I already told you, we are not making love in this dump.~ */
	= @71 /*  ~You know what? Forget it. I'm not in the mood anymore. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinSex_2", "GLOBAL", 5)
		SetGlobal("XA_CorwinComplainSex", "GLOBAL", 0)
		SetGlobal("XA_CorwinComplainSexCount", "GLOBAL", 0)
	~
	EXIT
END
//}

//{ #region Meeting Illasera - DLG-0051
IF ~~ THEN BEGIN XA_MeetIllasera
	SAY @1123 /* ~Rohma!~ */
	
	= @1124 /* ~What have you done with my daughter!?~ */
	
	IF ~~ THEN 
	EXTERN XABENO XA_MeetIllasera
END

IF ~~ THEN BEGIN XA_MeetIllasera4
	SAY @1125 /* ~Beno, you fool! I'm going to - ~ */
	
	IF ~~ THEN EXTERN XABENO XA_MeetIllasera4
END
//} #endregion

//{ #region Brevlik Arrested - Dialog J-54
IF ~
	Global("XA_BrevlikArrested", "GLOBAL", 1)
	!Global("XA_GoBackHOW", "LOCALS", 1)
~ THEN BEGIN XA_BrevlikArrested
	SAY @538 /* ~Brevlik, your advocate will be with your shortly. <CHARNAME> — we better head back to the Hall of Wonders.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_GoBackHOW", "LOCALS", 1)
	~
	EXIT
END
//} #endregion


//{ #region Entered G1 - Dialog J-55
IF ~~ THEN BEGIN XA_TrappedG1
	SAY @1421 /* ~Are we — are we still trapped? ~ */
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1425 /* ~I think so, Captain. Look — it seems to be a recreation of the siege.~*/
	GOTO XA_TrappedG1_2
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1422 /* ~I think so. Look — it seems to be a recreation of the siege.~ */
	GOTO XA_TrappedG1_2
END

IF ~~ THEN BEGIN XA_TrappedG1_2
	SAY @1423 /* ~This seems so real... it's just how I remember it...~ */
	
	= @1424 /*~Come on — let's head in.~*/
	IF ~~ THEN
	EXIT
END

//} #endregion

IF ~~ THEN BEGIN XA_SAREV_10
	SAY @38 /* ~You've got to be kidding me. A deal? With you?~*/
	
	IF ~~ THEN EXTERN SAREV25A 14
END


IF ~~ THEN BEGIN XA_DontNeedRing
	SAY @1130 /* ~That won't be necessary. We only need the one.~ */
	
	IF ~~ THEN REPLY @1131 /* ~Schael is right. Once Rohma is safe, we'll put an end to Illasera, Beno, and anyone else that had a part in the kidnapping.~ */
	EXTERN XANEDERL XA_DontNeedRing

END

IF ~~ THEN XA_MeetSkie3A
	SAY @910 /* ~Skie, listen to me - put the dagger down, slowly.~ [XACORJ19]*/ 
	
	IF ~~ THEN REPLY @912 /* ~Do as she says, Skie.~ */
	EXTERN XASKIE XA_MeetSkie4
	
	IF ~~ THEN REPLY @911 /* ~Put that damned dagger away Skie. It's gotten me into enough trouble already!~  */
	EXTERN XASKIE XA_MeetSkie4
END

//{ Dialog J-56
IF ~
	!Global("XA_CorwinCanHaveSex", "GLOBAL", 1)
	Global("XA_TryToSleep", "GLOBAL", 1)
	OR(5)
		Global("XA_CorwinSex_1", "GLOBAL", 1)
		Global("XA_CorwinSex_2", "GLOBAL", 1)
		Global("XA_CorwinSex_3", "GLOBAL", 1)
		Global("XA_CorwinSex_4", "GLOBAL", 1)
		Global("XA_CorwinSex_5", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinCantHaveSex
	SAY @367 /* ~My dear... as much as I'd love to sleep with you...~*/
	IF ~
		GlobalGT("XA_CorwinBit", "GLOBAL", 0)
	~ THEN
	DO ~
		SetGlobal("XA_TryToSleep", "GLOBAL", 0)
	~
	GOTO XA_CorwinCantHaveSex1
	
	IF ~
		HPPercentLT(Myself, 50)
	~ THEN
	DO ~
		SetGlobal("XA_TryToSleep", "GLOBAL", 0)
	~
	GOTO XA_CorwinCantHaveSex2
	
	IF ~
		HPPercentLT(Player1, 50)
	~ THEN
	DO ~
		SetGlobal("XA_TryToSleep", "GLOBAL", 0)
	~
	GOTO XA_CorwinCantHaveSex3
END

IF ~~ THEN BEGIN XA_CorwinCantHaveSex1
	SAY @370 /* ~This bite... I'm not feeling well *cough* at all.~ */
	IF ~~ THEN REPLY @371 /* ~I understand, love.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinCantHaveSex2
	SAY @369 /* ~I really need to have these wounds looked at first.~ */
	IF ~~ THEN REPLY @371 /* ~I understand, love.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinCantHaveSex3
	SAY @368 /* ~You really need to have those wounds looked at first.~ */
	IF ~~ THEN REPLY @371 /* ~I understand, love.~ */
	EXIT
END

//}

//{ Dialog J-57
IF ~
	InParty(Myself)
	Global("XA_Banter_CorwinHexxat", "GLOBAL", 6)
	IsValidForPartyDialogue("Hexxat")
	OR(4)
		IsValidForPartyDialogue("Mazzy")
		IsValidForPartyDialogue("Anomen")
		IsValidForPartyDialogue("Aerie")
		IsValidForPartyDialogue("Keldorn")
~ THEN BEGIN XA_CorwinHexxat3
	SAY @137 /* ~Your time has come, vampire. Allies, to me! Let's rid ourselves of this beast once and for all! ~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_Banter_CorwinHexxat", "GLOBAL", 7)
		SetGlobal("XA_CorwinHexxatFight", "GLOBAL", 1)
	~
	EXIT
END
//}

//{ Dialog J-58
IF ~
	InParty(Myself)
	Global("XA_Banter_CorwinHexxat", "GLOBAL", 6)
	IsValidForPartyDialogue("Hexxat")
	!IsValidForPartyDialogue("Mazzy")
	!IsValidForPartyDialogue("Anomen")
	!IsValidForPartyDialogue("Aerie")
	!IsValidForPartyDialogue("Keldorn")
~ THEN BEGIN XA_CorwinHexxat3
	SAY @138 /* ~Your time has come, vampire. Draw steel! ~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_Banter_CorwinHexxat", "GLOBAL", 7)
		SetGlobal("XA_CorwinHexxatFight", "GLOBAL", 1)
	~
	EXIT
END
//}

//{ Dialog J-59
IF ~
	Global("XA_Banter_CorwinHexxat", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinHexxat1
	SAY @130 /* ~<CHARNAME>. We need to talk.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @132 /* ~Of course love, what's on your mind? */
	GOTO XAA38
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @131 /*  ~What is it, Captain?~*/
	GOTO XAA38
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @312 /*  What is it, Major?~*/
	GOTO XAA38
END

//}

//{ Dialog J-60
IF ~
	Global("XA_Banter_CorwinPlayer", "GLOBAL", 4)
	Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	// play romance song
~
THEN BEGIN XA_CorwinPlayerBant2A
	SAY @162 /*~Are you alright, hon? You've a look of concern about you.~ */
	
	IF ~~ THEN REPLY @163 /* ~Yes love, I am fine. I was just thinking about some of the places and people we've seen...~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	GOTO XAA48 //OK
	
	IF ~~ THEN REPLY @116 /* ~It's nothing... Let's go.~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
END

//}

//{ Dialog J-61
IF ~
	Global("XA_Banter_CorwinPlayer", "GLOBAL", 4)
	!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
~
THEN BEGIN XA_CorwinPlayerBant2B
	SAY @188 /* ~<CHARNAME>, are you alright? You have a look of concern about you.~ */
	
	IF ~~ THEN REPLY @167 /* ~Yes Schael, I am fine. I was just thinking about some of the places and people we've seen...~ */ 
	DO ~
		SetGlobal("XA_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	GOTO XAA48 //OK
	
	IF ~~ THEN REPLY @116 /* ~It's nothing... Let's go.~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
END
//}

//{ Dialog J-62
IF ~
	Global("XA_Banter_CorwinPlayer", "GLOBAL", 2)
	Global("XA_CorwinContinue", "GLOBAL", 1) //Friend
	//play romance song
~
THEN BEGIN XA_SkieMessageDelivered_Friend
	SAY @84 /* ~<CHARNAME>, do you have a moment?~ */
	IF ~~ THEN REPLY @85 /* ~Of course Schael, what's on your mind?~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA31
	
	IF ~~ THEN REPLY @110 /* ~Not right now.~*/
	DO ~
		SetGlobal("XA_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA31A
END
//}

IF ~~ THEN BEGIN XAA31A
	SAY @111 /* ~I know you have a lot on your mind, but surely, you can spare a minute.~*/
	
	IF ~~ THEN REPLY @112 /* ~Fine, what is it?~*/
	GOTO XAA31
	
	IF ~~ THEN REPLY @113 /* ~Like I said, I'm busy.~ */
	GOTO XAA31B
END

IF ~~ THEN BEGIN XAA31B
	SAY @114 /* ~Fine. Sorry to have bothered you.~*/
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -2)
	~
	EXIT
END

//{ Dialog J-63
IF ~
	Global("XA_Banter_CorwinPlayer", "GLOBAL", 2)
	Global("XA_CorwinContinue", "GLOBAL", 2) //Romance
	//play romance song
~
THEN BEGIN XA_SkieMessageDelivered_Romance
	SAY @100 /* ~My love, do you have a moment?~ */
	IF ~~ THEN REPLY @101 /* ~Of course dear, what's on your mind?~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA31
	
	IF ~~ THEN REPLY @110 /* ~Not right now.~*/
	DO ~
		SetGlobal("XA_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA31A
END
//}


IF ~~ THEN BEGIN XA_NotPaying
	SAY @1370 /* ~We're not paying for stolen merchandise, gnome. Hand it over, or I'll have you arrested.~*/
	
	IF ~~ THEN 
	EXTERN XABREVLK XA_GiveItToMe
END

IF ~~ THEN BEGIN XA_ArrestBrevlik
	SAY @1371 /* ~Not so fast. You're under arrest for grand larceny.~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		SetGlobal("XA_BrevlikArrested", "GLOBAL", 1)
		StartCutScene("XAARREST")
	~
	EXIT
	
	IF ~
		Global("HelpBrevlik", "GLOBAL", 2)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1372 /* ~If you arrest him, you'll have to arrest me too, love.~*/
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	GOTO XA_ArrestBrevlik_Mad
	
	IF ~
		Global("HelpBrevlik", "GLOBAL", 2)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @583 /* ~(Keep quiet.)~*/
	DO ~
		StartCutSceneMode()
		SetGlobal("XA_BrevlikArrested", "GLOBAL", 1)
		StartCutScene("XAARREST")
	~
	EXIT
	
	IF ~
		Global("HelpBrevlik", "GLOBAL", 2)
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @689 /* ~If you arrest him, you'll have to arrest me too, Captain.~*/
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	GOTO XA_ArrestBrevlik_Mad
	
	IF ~
		Global("HelpBrevlik", "GLOBAL", 2)
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @583 /* ~(Keep quiet.)~*/
	DO ~
		StartCutSceneMode()
		SetGlobal("XA_BrevlikArrested", "GLOBAL", 1)
		StartCutScene("XAARREST")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_ArrestBrevlik_Mad
	SAY @580 /*  ~(She turns, and looks at you with disappointment.)~*/
	
	= @579 /* ~Fine. But you and I are going to have a long talk about this.~ */
	
	= @581 /* ~You — gnome! Get out of here before I change my mind!~ */
	
	= @582 /* ~(She delivers a swift kick to his behind.)~ */
	
	IF ~~ THEN EXTERN 
	XABREVLK XA_GetOut
END

IF ~~ THEN BEGIN XAA4 // from player1 3
	SAY @10 /* ~Are you alright? It looked for a moment like you were about to keel over.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @11 /* ~I felt some dizziness... it's nothing, I'll be fine.~ */
	GOTO XAA6 //OK
	
	IF ~~ THEN REPLY @11 /* ~I felt some dizziness... it's nothing, I'll be fine.~ */
	GOTO XAA5 //OK
	
	IF ~~ THEN REPLY @12 /* ~Let's just focus on getting out of here. I'll feel better once I am out of this hole.~ */
	GOTO XAA7 //OK
	
END

IF ~~ THEN BEGIN XA_TakeFarseer
	SAY @703 /* ~The individual responsible has been arrested.~ */
	
	IF ~~ THEN
	EXTERN XABELAND XA_TakeFarseer2
END

IF ~~ THEN BEGIN XAA5 // XAA4
	SAY @13 /* ~Here, put your arm around my shoulder. I'll help to keep you steady. Just take it easy, <CHARNAME>.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA6 // XAA4
	SAY @14 /* ~Here, put your arm around my shoulder. I'll help to keep you steady. Just take it easy, love.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA7 // XAA4
	SAY @15 /* ~Right. Let me know if you need anything.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA8 // player1, 5
	SAY @16 /* ~Gods, what was that <CHARNAME>? You turned into a monster!~ */
	IF ~~ THEN
	GOTO XAA9
END

IF ~~ THEN BEGIN XAA9 // player1, 5
	SAY @17 /* ~What in the hells did Irenicus do to you?~ */
	IF ~~ THEN REPLY @18 /* ~I... I don't know Schael. I felt an uncontrollable rage, and I blacked out.~ */
	GOTO XAA10 // OK
	
	IF ~~ THEN REPLY @19 /* ~I turned into WHAT?~ */
	GOTO XAA11 // OK
END

IF ~~ THEN BEGIN XAA10 // XAA9
	SAY @21 /* ~I've never seen anything like that before, and I hope to never again.~ */
	IF ~~ THEN REPLY @22 /* ~I - I am sorry that you had to see that. Please, just keep your distance, in case it happens again.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA11 //XAA9
	SAY @20 /* ~I don't know how else to describe it... <CHARNAME>, it was terrifying. ~ */
	IF ~~ THEN REPLY @22 /* ~I - I am sorry that you had to see that. Please, just keep your distance, in case it happens again.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA12 // from:
	SAY @23 /* ~My love, are you feeling any better? Let me help get you on your feet - we need to keep moving.~ */
	IF ~~ THEN REPLY @24 /* ~Schael, please stay away, for your own safety.~ */ 
	DO ~
		SetGlobal("EndangerLovedOne","GLOBAL",80)
	~ 
	GOTO XAA13
	
	IF ~~ THEN REPLY @25 /* ~Keep back, I think - I think it's happening again!~ */ 
	DO ~
		SetGlobal("EndangerLovedOne","GLOBAL",80)
	~ 
	GOTO XAA13
	
	IF ~~ THEN REPLY @26 /* ~Get as far away from me as possible, now!~ */ 
	DO ~
		SetGlobal("EndangerLovedOne","GLOBAL",80)
	~ 
	GOTO XAA13

END

IF ~~ THEN BEGIN XAA13 //XAA12
	SAY @27 /* ~What's wrong <CHARNAME>... your lips are moving but I can't hear you.. no... not again... NO!~ */
	IF ~~ THEN 
	DO ~
		ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
	~
	EXIT
END

IF ~~ THEN BEGIN XAA14 //XAA12
	SAY @28 /* ~<CHARNAME>, you could have killed me. I can't risk... we can't be together if you can't get this under control.~ */
	IF ~~ THEN REPLY @29 /* ~Schael, if I lose control again and put you in danger, kill me. I couldn't bear to know that I harmed the woman I love.~ */
	GOTO XAA15 //OK
	
	IF ~~ THEN REPLY @30 /* ~I don't know how to control it, or even if I can. Keep your distance, please.~ */
	GOTO XAA16 //OK
	
	IF ~~ THEN REPLY @31 /* ~I know that whatever this is, I will get it under control. ~ */
	GOTO XAA17 //OK
END

IF ~~ THEN BEGIN XAA15 // XAA14
	SAY @32 /* ~And I couldn't bear to know that I killed you. Let's just hope it doesn't come to that.~ */
	IF ~~ THEN REPLY @35 /* ~ ~Agreed. Let's go.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA16 // XAA14
	SAY @33 /* ~You need me by your side, now more than ever. Don't worry - I'll stay clear if it looks like it's about to happen again.~ */
	IF ~~ THEN REPLY @36 /* ~ Thank you Schael... let's go.~*/
	EXIT
END

IF ~~ THEN BEGIN XAA17 //XAA14
	SAY @34 /* ~Good. We'll get through this together, whatever it takes. Let me know if there is anything I can do to help.~ */
	IF ~~ THEN REPLY @36 /* ~ Thank you Schael... let's go.~*/
	EXIT
END

IF ~~ THEN BEGIN XAA18 // player1, 15
	SAY @37 /* ~Quickly, we had better give these lunatics some direction, or they may turn on us.~ */
	IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
		SetGlobal("AsylumPlot","GLOBAL",54)
		StartCutSceneMode()
		StartCutSceneEx("Cut41m",FALSE)
	~ 
	EXIT
END

IF ~~ THEN BEGIN XAA19
	SAY @446 /* ~The bastard is finally dead. The Council will be pleased. I know I am.~ */
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	GOTO XAA19A

	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	GOTO XAA19B
END

IF ~~ THEN BEGIN XAA19A
	SAY @447 /* ~And your soul, my love - are you feeling any differently?~ */
	IF ~~ THEN
	EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN XAA19B
	SAY @448 /* ~And your soul, <CHARNAME> - are you feeling any differently?~ */
	IF ~~ THEN
	EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN XAA20
	SAY @39 /* ~<CHARNAME>, I am going with you. We've come this far together, and my love for you is too strong for me to turn back now.~ */
	IF ~~ THEN REPLY @40 /* ~I love you too, Schael, more than you know. Thank you... for everything.~ */
	GOTO XA_P33Transitions
	
	IF ~~ THEN REPLY @41 /* ~I love you too Schael. You need not risk yourself any further. Think of your father. Think of Rohma.~ */
	GOTO XAA21
END

IF ~~ THEN BEGIN XAA21
	SAY @42 /* ~Irenicus needs to be stopped. While he is alive no one is safe, and that includes Rohma. Being at your side, love, is the best way I can protect her, and Baldur's Gate.~ */
	
	= @1462 /* ~(You share a warm embrace, and steel yourself for the battle ahead.)~ */
	
	IF ~~ THEN REPLY @43 /* ~Thank you, my love.*/
	GOTO XA_P33Transitions
END

IF ~~ THEN BEGIN XAA22
	SAY @47 /* ~No, <CHARNAME>. I am coming with you. Irenicus needs to be stopped. While he is alive no one is safe, and that includes Rohma. Being at your side, my friend, is the best way I can protect her, and Baldur's Gate.~ */
	IF ~~ THEN REPLY @48 /* ~Thank you Schael... for everything.~ */
	GOTO XA_P33Transitions
END

IF ~~ THEN BEGIN XAA23
	SAY @49 /* ~And you shall have it, my friend. Irenicus must be stopped, whatever it takes.~ */
	IF ~~ THEN REPLY @48 /* ~Thank you Schael... for everything.~ */
	GOTO XA_P33Transitions
END

IF ~~ THEN BEGIN XAA24
	SAY @50 /* ~I'm with you, <CHARNAME>. Irenicus must be stopped, before he can destroy any more innocent lives.~ */
	IF ~~ THEN REPLY @48 /* ~Thank you Schael... for everything.~ */
	GOTO XA_P33Transitions
END

IF ~~ THEN BEGIN XA_P33Transitions
	SAY @445 /* ~(You share a warm embrace, and steel yourself for the battle ahead.)~ */
	
	COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN XA_CorwinMadam2
	SAY @51 /* ~No, Madame, <PRO_HESHE> doesn't need anything from this whorehouse.~ */
	IF ~~ THEN
	EXTERN ~MADAM~ XA_CorwinMadam3
END

IF ~~ THEN BEGIN XA_P1_25A
	SAY @248 /* ~My love, we... died? I felt you, pulling me with you to this place. Very well - we were together in life and will remain so, in death.~ */
	COPY_TRANS PLAYER1 25
END

IF ~~ THEN BEGIN XA_P1_25B
	SAY @57 /* ~<CHARNAME>, we... died? I felt you, pulling me with you to this place. Very well - we stood at each other's side in life and will continue to do so, in death.~ */
	COPY_TRANS PLAYER1 25
END

IF ~~ THEN BEGIN XAA27A
	SAY @421 /* ~~Don't look so disappointed, love. We'll have plenty of time for those... activities (she smiles)... once we're back home.~ */
	= @1463 /* ~(She leans in for a kiss.)~*/
	IF ~~ THEN REPLY @58 /* ~(Kiss her) I look forward to that day.~ */
	GOTO XAA28 //OK
END

IF ~~ THEN BEGIN XAA27
	SAY @52 /*  ~(She laughs) */
	
	= @53 /* Don't look so disappointed, love. When we return to Baldur's Gate I'll be sure to give you the... (she glances down, then back up again) attention... you so clearly need.~ */
	
	IF ~~ THEN REPLY @58 /* ~(Kiss her) I look forward to that day.~ */
	GOTO XAA28 //OK
	
	IF ~
		CheckStatGT(Player1, 15, CHR)
	~ THEN REPLY @59 /* ~(Kiss her) Why wait?~ */
	GOTO XAA30A //OK
	
	IF ~
		!CheckStatGT(Player1, 15, CHR)
	~ THEN REPLY @59 /* ~(Kiss her) Why wait?~ */
	GOTO XAA30B //OK
END

IF ~~ THEN BEGIN XAA28
	SAY @55 /* ~As do I. Let's go love. We have work to do.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinWantsToWait", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA29
	SAY @62 /* ~Let's find some place more private, shall we?  ~ */
	IF ~~ THEN REPLY @63 /* ~What did you have in mind?~ */
	GOTO XAA30C
	
	IF ~~ THEN REPLY @65 /* ~Come with me love, I know just the place.~ */
	GOTO XAA31C
END

IF ~~ THEN BEGIN XAA30A
	SAY @61 /* ~Mm, is that an order, hero?~ */
	
	= @108 /* ~(She smiles, and places her arms around your shoulders.)~ */
	
	= @109 /* ~Gods know it's been too long already.~ */
	
	IF ~~ THEN
	GOTO XAA29
END

IF ~~ THEN BEGIN XAA30B
	SAY @60 /* ~Mm. As much as I want to, this is hardly the time or place, and duty must come before pleasure. Let's go love. We have work to do.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinWantsToWait", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA30C
	SAY @64 /* ~The street in mid-day, or perhaps the amphitheater. Gods, what do you think? There are plenty of inns in the city, pick one!~ */
	IF ~~ THEN REPLY @65 /* ~Come with me, I know just the place.~ */
	GOTO XAA31C
END

IF ~~ THEN BEGIN XAA31C
	SAY @308 /* ~Gladly, my dear.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinSex_1", "GLOBAL", 1)
		SetGlobal("XA_GetRoom", "GLOBAL", 1)
		ActionOverride(Player1, StartDialog("PLAYER1", Player1))
	~
	EXIT
END

IF ~~ THEN BEGIN XAA31
	SAY @86 /* ~Before I left Baldur's Gate, Skie approached me and asked that I give you a message.~ */
	= @87 /* ~She said that she wanted to thank you for releasing her from the dagger, and to apologize for her father's behaviour. You deserved far better than what happened to you.~ */
	
	IF ~~ THEN REPLY @88 /* ~There is no need for her to apologize for her father. She was not the one who tried to have me executed. I do appreciate the gesture, however. ~ */
	GOTO XAA32

	IF ~~ THEN REPLY @89 /* ~Thank you Schael, though I doubt I would have acted any differently if I were in Entar's shoes. That scoundrel Irenicus made sure that all of the evidence pointed to my guilt.~  */
	GOTO XAA33
END

IF ~~ THEN BEGIN XAA32
	SAY @90 /* ~Entar was completely convinced of your guilt, as were many others.~  */
	
	IF ~
		Global("XA_CorwinContinue", "GLOBAL", 1) //friend
	~ 
	THEN REPLY @92 /* ~But not you. Schael, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO XAA34A
	
	IF ~
		Global("XA_CorwinContinue", "GLOBAL", 2) //romance
	~ 
	THEN REPLY @102 /* ~But not you. My love, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO XAA34B	
END

IF ~~ THEN BEGIN XAA33
	SAY @91 /* ~Indeed. He had much of the city convinced of your guilt.~ */
	
	IF ~
		Global("XA_CorwinContinue", "GLOBAL", 1) //friend
	~ 
	THEN REPLY @92 /* ~But not you. Schael, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO XAA34A
	
	IF ~
		Global("XA_CorwinContinue", "GLOBAL", 2) //romance
	~ 
	THEN REPLY @102 /* ~But not you. My love, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO XAA34B	
END

IF ~~ THEN BEGIN XAA34A // friend
	SAY @93 /* ~It wasn't. I miss her everyday. But I need to be here, with you. Irenicus must be punished for the crimes he has committed.~ */
	
	IF ~~ THEN REPLY @83 /*  ~With your help, he will be, my friend. Let's go.~ */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 3)
		SetPlayerSound(Myself,268282,SELECT_ACTION6)
	~
	EXIT
	
	IF ~~ THEN REPLY @94 /*  ~Schael... I... I didn't realize how much I needed you near me, until you were gone. Your being here, now, fills a void in my heart that I did not know was there. I would like for us to move past friendship, into a more serious relationship. I... am in love with you, Schael.~*/
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("XA_CorwinLoveBG2", "GLOBAL", 1)
	~
	GOTO XAA35
END

IF ~~ THEN BEGIN XAA34B // romance
	SAY @103 /* ~It wasn't. I miss her everyday. But I need to be here, with you, dear. Irenicus must be punished for the crimes he has committed.~ */
	
	IF ~~ THEN REPLY @104 /*  ~He will be, my love. And when this is done, we will go back to Baldur's Gate and start our new life together, with Rohma.~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA36
END

IF ~~ THEN BEGIN XAA35
	SAY @124 /* ~(She's momentarily taken aback.)~ */
	
	= @95 /*  ~<CHARNAME>, I missed you too, dearly... and I've been thinking about this for a long time. I also want us to be more to eachother than what we are now.~*/
	
	= @125 /* ~My... my heart broke when I read your letter. I keep thinking that if I'd left with you, you wouldn't have been captured, maybe Khalid and Dynaheir would still be alive, maybe —~ */
	
	IF ~~ THEN REPLY @96 /* ~Stop it, Schael. You can't blame yourself for what happened. There's nothing that you could have done to stop it; Irenicus set his trap perfectly. It's better that you were not with me when we were captured — I shudder to think what Irenicus would've done to you had you been captured as well.~*/
	GOTO XAAKiss
	
	IF ~~ THEN REPLY @97 /*  ~Schael, forget the past. What matters is that we are here together, now.~ */
	GOTO XAAKiss
END

IF ~~ THEN BEGIN XAAKiss
	SAY @73 /* Come here, hero -~ */
	IF ~~ THEN
	GOTO XAAKissChain
END

IF ~~ THEN BEGIN XAA36
	SAY @105 /* ~I've been looking forward to that day... more than you know. Let's go, love.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		//SetPlayerSound(Myself,@452,SELECT_ACTION6)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA37
	SAY @99 /* ~Gladly, my dear.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA38
	SAY @133 /* ~The vampire. Hexxat. You allow this beast to travel with us?~ */
	
	IF ~~ THEN REPLY @134 /* ~We need her, Schael.~ */
	GOTO XAA39
	
	IF ~~ THEN REPLY @135 /* ~And what of it?~ */
	GOTO XAA39
	
END

IF ~~ THEN BEGIN XAA39
	SAY @136 /* ~You're going to have to make a decision, and soon, or I will make it for you. I trust that I've made myself clear.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_Banter_CorwinHexxat", "GLOBAL", 3)
	~
	EXIT
END


IF ~~ THEN BEGIN XAA48
	SAY @189 /* ~What's on your mind?~ */
	
	IF ~~ THEN REPLY @164 /* ~Before I was exiled, I remember the city was still struggling with the refugee crisis. Have the Dukes had any success in resettling the refugees?~ */
	DO ~
		SetGlobal("XA_AskedAboutRefugees", "LOCALS", 1)
	~
	GOTO XAA49
	
	IF ~~ THEN REPLY @168 /* ~We met some interesting people during the Dragonspear campaign. Remember that gnome, Glint? The goblin shaman, M'Khlin? The others, as well.~ */
	DO ~
		SetGlobal("XA_AskedAboutDSFriends", "LOCALS", 1)
	~
	GOTO XAA50
	
	IF ~~ THEN REPLY @172 /* ~I've thought from time to time about the terror of what we experienced in Avernus. Do you think about that place?~ */
	DO ~
		SetGlobal("XA_AskedAboutAvernus", "LOCALS", 1)
	~
	GOTO XAA51
	
	IF ~
		!Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_CorwinEET", "GLOBAL", 1)
	~ THEN REPLY @180 /* ~I was thinking about the first time we met. Do you remember, love?~ */
	DO ~
		SetGlobal("XA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_CorwinEET
	
	IF ~
		!Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_CorwinEET", "GLOBAL", 0)
	~ THEN REPLY @180 /* ~I was thinking about the first time we met. Do you remember, love?~ */
	DO ~
		SetGlobal("XA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_NoCorwinEET
	
	IF ~
		!Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_CorwinEET", "GLOBAL", 1)
	~ THEN REPLY @193 /* ~I was thinking about the first time we met. Do you remember?~ */
	DO ~
		SetGlobal("XA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_CorwinEET
	
	IF ~
		!Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_CorwinEET", "GLOBAL", 0)
	~ THEN REPLY @193 /* ~I was thinking about the first time we met. Do you remember?~ */
	DO ~
		SetGlobal("XA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_NoCorwinEET
END

IF ~~ THEN BEGIN XAA48A
	SAY @190 /* ~Anything else you'd like to discuss?~ */
	
	IF ~
		!Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @164 /* ~Before I was exiled, I remember the city was still struggling with the refugee crisis. Have the 
	Dukes had any success in resettling the refugees?~ */
	DO ~
		SetGlobal("XA_AskedAboutRefugees", "LOCALS", 1)
	~
	GOTO XAA49 //OK
	
	IF ~
		!Global("XA_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @168 /* ~We met some interesting people during the Dragonspear campaign. Remember that gnome, Glint? The goblin shaman, M'Khlin? The others, as well.~ */
	DO ~
		SetGlobal("XA_AskedAboutDSFriends", "LOCALS", 1)
	~
	GOTO XAA50 //OK
	
	IF ~
		!Global("XA_AskedAboutAvernus", "LOCALS", 1)
		!Global("BD_Sacrifice_Corwin","bd4500",3)
	~ THEN REPLY @172 /* ~I've thought from time to time about the terror of what we experienced in Avernus. Do you think about that place?~ */
	DO ~
		SetGlobal("XA_AskedAboutAvernus", "LOCALS", 1)
	~
	GOTO XAA51 //OK
	
	IF ~
		!Global("XA_AskedAboutAvernus", "LOCALS", 1)
		Global("BD_Sacrifice_Corwin","bd4500",3)
	~ THEN REPLY @172 /* ~I've thought from time to time about the terror of what we experienced in Avernus. Do you think about that place?~ */
	DO ~
		SetGlobal("XA_AskedAboutAvernus", "LOCALS", 1)
	~
	GOTO XAA57 //OK
	
	IF ~
		!Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_CorwinEET", "GLOBAL", 1)
	~ THEN REPLY @180 /* ~I was thinking about the first time we met. Do you remember, love?~ */
	DO ~
		SetGlobal("XA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_CorwinEET
	
	IF ~
		!Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_CorwinEET", "GLOBAL", 0)
	~ THEN REPLY @180 /* ~I was thinking about the first time we met. Do you remember, love?~ */
	DO ~
		SetGlobal("XA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_NoCorwinEET
	
	IF ~
		!Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_CorwinEET", "GLOBAL", 1)
	~ THEN REPLY @193 /* ~I was thinking about the first time we met. Do you remember?~ */
	DO ~
		SetGlobal("XA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_CorwinEET
	
	IF ~
		!Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_CorwinEET", "GLOBAL", 0)
	~ THEN REPLY @193 /* ~I was thinking about the first time we met. Do you remember?~ */
	DO ~
		SetGlobal("XA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_NoCorwinEET
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		OR(4)
			Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		OR(4)
			Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ 
	THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA49
	SAY @165 /* ~Yes, at least those whose homes were not completely destroyed by the crusade. There are still many that need to be resettled.~ */
	= @166 /* ~There are plans to settle them just east of the city. Some ankheg nests will need to be cleared, but the city planners think it's a workable solution.~ */		
	IF ~
		OR(3)
			!Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("XA_AskedAboutAvernus", "LOCALS", 1)
			!Global("XA_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @191 /* ~It's good that at least some progress was made.~ */
	GOTO XAA48A //OK
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END 

IF ~~ THEN BEGIN XA_SlaveGirl
	SAY @749 /* ~Little girl, what's your name? You said you were sent here from Baldur's Gate? ~ */
	
	IF ~~ THEN 
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("XA_CorwinSlaverPlot", "GLOBAL", 1)
		SetGlobal("XA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~
	EXTERN XAGIRL2 XA_SlaveGirl2
END

IF ~~ THEN BEGIN XA_SlaveGirl3
	SAY @751 /* ~Here, take this gold.~ */
	
	IF ~~ THEN 
	EXTERN XAGIRL2 XA_SlaveGirl4
END

IF ~~ THEN BEGIN XA_SlaveGirl5
	SAY @752 /* ~Listen to me. Take the others and get out of here, then head to the Government District. Speak to Inspector Brega, and tell him everything that happened. Go, now!~   */
	
	IF ~~ THEN EXTERN XAGIRL2 4
END

IF ~~ THEN BEGIN XAA50
	SAY @169  /* ~Hah, how could anyone forget. Hopefully they are doing well.~ */
	
	IF ~
		OR(3)
			!Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("XA_AskedAboutAvernus", "LOCALS", 1)
			!Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @170 /* ~Yes, I hope so too. I have a feeling we'll run into them again, sooner or later.~ */
	GOTO XAA48A //OK
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_AskedAboutRefugees", "LOCALS", 1)
		
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA51
	SAY @173 /* ~I do, too. It's only natural, I suppose. It was a traumatic experience for all of us.~ */
	
	IF ~
		Dead("bdcaelar")
	~ THEN REPLY @174 /* ~Yes. I often wonder about Aun, Caelar's uncle. Do you think he is still alive, in Avernus?~ */
	GOTO XAA52 //OK
	
	IF ~
		!Dead("bdcaelar")
	~ THEN REPLY @175 /* ~Yes. I often wonder about Caelar, and whether she is still alive, in Avernus.~ */
	GOTO XAA53 //OK
END

IF ~~ THEN BEGIN XAA52
	SAY @177 /* ~Perhaps he is. I'm grateful for his sacrifice. I can't imagine the heartbreak he felt watching his niece pledge her soul to a demon.~ */
	
	IF ~
		OR(3)
			!Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("XA_AskedAboutDSFriends", "LOCALS", 1)
			!Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @192  /* ~Indeed. I too am grateful.~ */
	GOTO XAA48A //OK
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA53
	SAY @176 /* ~Perhaps she is. But it doesn't matter. I don't think we'll need to worry about her ever again.~ */
	IF ~
		OR(3)
			!Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("XA_AskedAboutDSFriends", "LOCALS", 1)
			!Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @186 /* ~I hope you're right.~ */
	GOTO XAA48A //OK
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA54_NoCorwinEET
	SAY @1300 /*  ~Of course. It was at the Ducal palace... we were under attack by assassins sent by the crusade.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1301 /* ~Even amidst the chaos of that night, I remember being capitvated by your beauty. I still am.~ */
	GOTO XAA55 //OK
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1302 /* ~We defeated the assassins and left for Dragonspear the next morning.~ */
	GOTO XAA56 //OK
END

IF ~~ THEN BEGIN XAA54_CorwinEET
	SAY @181 /* ~Of course. It was at Wyrm's Crossing. Scar, rest his soul, introduced us. <CHARNAME>, the intrepid adventurer who had been battling bandits up and down the Sword Coast.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @182 /* ~And Captain Schael Corwin of the Flaming Fist, who was investigating the Iron Throne within the city. I remember being captivated by your beauty. I still am.~ */
	GOTO XAA55 //OK
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @184 /* ~And Captain Schael Corwin of the Flaming Fist, who was investigating the Iron Throne within the city.~ */
	GOTO XAA56 //OK
END

IF ~~ THEN BEGIN XAA55
	SAY @183 /* ~I'll take your words over roses, any day.~ */
	
	IF ~
		OR(3)
			!Global("XA_AskedAboutAvernus", "LOCALS", 1)
			!Global("XA_AskedAboutDSFriends", "LOCALS", 1)
			!Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @195 /* ~(You share a warm embrace)~ */
	GOTO XAA48A	//OK
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA56
	SAY @183 /* ~The beginnings of a long and fruitful friendship, one that I hope will last well into the future.~ */
	
	IF ~
		OR(3)
			!Global("XA_AskedAboutAvernus", "LOCALS", 1)
			!Global("XA_AskedAboutDSFriends", "LOCALS", 1)
			!Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @187 /* ~As do I, my friend.~ */
	GOTO XAA48A	//OK
	
	IF ~
		OR(3)
			Global("XA_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_Congratulations1
	SAY @1103 /* ~Thank you, Skie! <CHARNAME>, you must be thrilled!~ */
	
	IF ~~ THEN REPLY @1104 /* ~I'm still at a loss for words.~ */
	GOTO XA_Congratulations2
	
	IF ~~ THEN REPLY @1105 /* ~This turned out far better than I could have dreamed..~ */
	GOTO XA_Congratulations2
END

IF ~~ THEN BEGIN XA_Congratulations2
	SAY @1106 /* ~I can hardly believe it myself.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_Congratulations2A
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_Congratulations2B
END

IF ~~ THEN BEGIN XA_Congratulations2A
	SAY @1111 /* ~Defender of Baldur's Gate. Well done, my love.~ */
	= @1108 /* ~(You kiss and embrace.)~ */
	= @1107 /* ~Come on love! Let's go and celebrate!~ */
	
	IF ~~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINROM")
	~
	EXIT 
	
	IF ~
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -4, ADD)
		StartCutSceneMode()
		StartCutScene("XADINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 49, MAXHITPOINTS)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -5, ADD)
		StartCutSceneMode()
		StartCutScene("XADINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 59, MAXHITPOINTS)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -6, ADD)
		StartCutSceneMode()
		StartCutScene("XADINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 69, MAXHITPOINTS)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -7, ADD)
		StartCutSceneMode()
		StartCutScene("XADINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 79, MAXHITPOINTS)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -8, ADD)
		StartCutSceneMode()
		StartCutScene("XADINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 89, MAXHITPOINTS)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -9, ADD)
		StartCutSceneMode()
		StartCutScene("XADINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 99, MAXHITPOINTS)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -10, ADD)
		StartCutSceneMode()
		StartCutScene("XADINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 109, MAXHITPOINTS)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -11, ADD)
		StartCutSceneMode()
		StartCutScene("XADINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 119, MAXHITPOINTS)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -12, ADD)
		StartCutSceneMode()
		StartCutScene("XADINROM")
	~
	EXIT
	
	
	IF ~
		CheckStatGT(Player1, 129, MAXHITPOINTS)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -13, ADD)
		StartCutSceneMode()
		StartCutScene("XADINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 139, MAXHITPOINTS)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -14, ADD)
		StartCutSceneMode()
		StartCutScene("XADINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 149, MAXHITPOINTS)
		Global("XA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -15, ADD)
		StartCutSceneMode()
		StartCutScene("XADINROM")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Congratulations2B
	SAY @1110 /* ~Defender of Baldur's Gate. Well done, my friend.~ */
	
	IF ~~ THEN 
	GOTO XA_Congratulations3
	
	IF ~
		Global("AerieRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_Congratulations3_Aerie
	
	IF ~
		Global("JaheiraRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_Congratulations3_Jaheira
	
	IF ~
		Global("NeeraRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_Congratulations3_Neera
	
	IF ~
		Global("ValygarRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_Congratulations3_Valygar
	
	IF ~
		Global("AnomenRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_Congratulations3_Anomen
	
	IF ~
		Global("RasaadRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_Congratulations3_Rasaad
END


IF ~~ THEN BEGIN XA_Congratulations3
	SAY @1117 /* ~Come on! Let's go and celebrate!~ */
	
	IF ~
		Global("XA_WonLottery", "GLOBAL", 1)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINLOT")
	~
	EXIT
	
	IF ~
		!Global("XA_WonLottery", "GLOBAL", 1)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINNER")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Congratulations3_Rasaad
	SAY @1764 /* ~Come on! Let's go get Rasaad and celebrate!~ */
	
	IF ~
		Global("XA_WonLottery", "GLOBAL", 1)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINLOT")
	~
	EXIT
	
	IF ~
		!Global("XA_WonLottery", "GLOBAL", 1)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINNER")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Congratulations3_Aerie
	SAY @1112 /* ~Come on! Let's go and celebrate!~ */
	
	IF ~
		Global("XA_WonLottery", "GLOBAL", 1)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINLOT")
	~
	EXIT
	
	IF ~
		!Global("XA_WonLottery", "GLOBAL", 1)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINNER")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Congratulations3_Jaheira
	SAY @1113 /* ~Come on! Let's go and celebrate!~ */
	
	IF ~
		Global("XA_WonLottery", "GLOBAL", 1)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINLOT")
	~
	EXIT
	
	IF ~
		!Global("XA_WonLottery", "GLOBAL", 1)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINNER")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Congratulations3_Neera
	SAY @1114 /* ~Come on! Let's go and celebrate!~ */
	
	IF ~
		Global("XA_WonLottery", "GLOBAL", 1)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINLOT")
	~
	EXIT
	
	IF ~
		!Global("XA_WonLottery", "GLOBAL", 1)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINNER")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Congratulations3_Valygar
	SAY @1115 /* ~Come on! Let's go and celebrate!~ */
	
	IF ~
		Global("XA_WonLottery", "GLOBAL", 1)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINLOT")
	~
	EXIT
	
	IF ~
		!Global("XA_WonLottery", "GLOBAL", 1)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINNER")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Congratulations3_Anomen
	SAY @1116 /* ~Come on! Let's go and celebrate!~ */
	
	IF ~
		Global("XA_WonLottery", "GLOBAL", 1)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINLOT")
	~
	EXIT
	
	IF ~
		!Global("XA_WonLottery", "GLOBAL", 1)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINNER")
	~
	EXIT
END

IF ~~ THEN BEGIN XAA57
	SAY @173 /* ~I do, too. It's only natural, I suppose. It was a traumatic experience for all of us.~ */
	= @196  /* ~You nearly sacrificed my soul to that damned demon.. what was its name? Thrax?~ */
	
	IF ~~ THEN REPLY @197 /* ~Thrix the Profane, if I remember correctly. Your soul was never in danger - I'd never let a demon like that outsmart me.~ */
	GOTO XAA58 //OK
END

IF ~~ THEN BEGIN XAA58
	SAY @198 /* ~Still, it was quite a gamble. Next time risk your own damned soul, or better yet, don't play such high stakes games with demons, got it?~ */
	
	IF ~
		Dead("bdcaelar")
	~ THEN REPLY @174 /* ~Yes. I often wonder about Aun, Caelar's uncle. Do you think he is still alive, in Avernus?~ */
	GOTO XAA52 //OK
	
	IF ~
		!Dead("bdcaelar")
	~ THEN REPLY @175 /* ~Yes. I often wonder about Caelar, and whether she is still alive, in Avernus.~ */
	GOTO XAA53 //OK
END

IF ~~ THEN BEGIN XA_NEB_2
	SAY @201 /* ~I don't believe it! <CHARNAME>, this is Neb, the fugitive who murdered more than two dozen children in Baldur's Gate! Your time has come, monster!~ */
	IF ~~ THEN
	EXTERN ~NEB~ XAA0
END




IF ~~ THEN BEGIN XAA67
	SAY @214 /* ~Thank you.~*/
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA68
	SAY @215 /* ~What does Irenicus gain from a war between the surface elves and the drow? There must be a reason.~ */
	IF ~~ THEN 
	EXTERN ~UDPHAE01~ 138
END

IF ~~ THEN BEGIN XAA77
	SAY @238 /* ~You know, I heard you cheering for me, love. It meant a lot.~ */
	
	= @195
	
	IF ~~ THEN REPLY @239 /* ~Let me see that trophy.~ */
	GOTO XAA78
END

IF ~~ THEN BEGIN XAA78
	SAY @1427 /* ~(She hands it over.)~  */
	
	= @240 /* ~So, what do you think?~ */
	IF ~~ THEN REPLY @241 /* ~I think that you'll never cease to amaze me.~ */
	GOTO XAA79
	
	IF ~~ THEN REPLY @1464 /* ~(Examine the trophy.)~ */
	GOTO XAA80
END

IF ~~ THEN BEGIN XAA79
	SAY @242 /* ~Hah, that much is obvious. What do you think about the *trophy*.~ */
	
	IF ~~ THEN REPLY @243 /* @243 = ~Hm... (You examine the trophy - it's a figurine of an archer cast in gold, with a plaque beneath that states 'Schael Corwin - Winner - Trademeet Archery Competition'.) Very nice. Your father will be proud.~ */
	GOTO XAA80
END

IF ~~ THEN BEGIN XAA80
	SAY @243 /* You examine the trophy — it's a figurine of an archer cast in gold, with a plaque beneath that states 'Schael Corwin - Winner - Trademeet Archery Competition'.*/
	
	IF ~~ THEN REPLY @1465 /* ~Very nice. Your father will be proud.~*/
	GOTO XAA80A
	
	IF ~~ THEN REPLY @1466 /* ~The figurine doesn't quite do you justice, dear.~ */
	GOTO XAA80B
END

IF ~~ THEN BEGIN XAA80A
	SAY @244 /* ~Thanks. I think Rohma might appreciate it more... I can't wait to see them again. Let's get going, love.~ */
	
	IF ~~ THEN 
	DO ~
		GiveGoldForce(2500)
		AddExperienceParty(35000)
		SetGlobal("XA_TM_ArcheryChallenge", "GLOBAL", 3)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA80B
	SAY @1467 /* ~(She lets out a hearty laugh.)~*/
	
	= @1468 /* ~Rohma will still appreciate it, I'm sure. Gods, I can't wait to see them again... Come, love. Duty calls.~ */
	
	IF ~~ THEN 
	DO ~
		GiveGoldForce(2500)
		AddExperienceParty(35000)
		SetGlobal("XA_TM_ArcheryChallenge", "GLOBAL", 3)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_HELLJON_7A
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. You nearly destroyed my hope of a future with the <PRO_MANWOMAN> I love. Prepare to meet your end, Irenicus!~ */
	COPY_TRANS HELLJON 7
END

IF ~~ THEN BEGIN XA_HELLJON_7B
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. Prepare to meet your end, Irenicus!~  */	
	COPY_TRANS HELLJON 7
END

IF ~~ THEN BEGIN XA_HELLJON_8A
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. You nearly destroyed my hope of a future with the <PRO_MANWOMAN> I love. Prepare to meet your end, Irenicus!~ */
	COPY_TRANS HELLJON 8
END

IF ~~ THEN BEGIN XA_HELLJON_8B
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. Prepare to meet your end, Irenicus!~  */	
	COPY_TRANS HELLJON 8
END

IF ~~ THEN BEGIN XA_HELLJON_9A
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. You nearly destroyed my hope of a future with the <PRO_MANWOMAN> I love. Prepare to meet your end, Irenicus!~ */
	COPY_TRANS HELLJON 9
END

IF ~~ THEN BEGIN XA_HELLJON_9B
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. Prepare to meet your end, Irenicus!~  */	
	COPY_TRANS HELLJON 9
END

IF ~~ THEN BEGIN XA_HELLJON_10A
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. You nearly destroyed my hope of a future with the <PRO_MANWOMAN> I love. Prepare to meet your end, Irenicus!~ */
	COPY_TRANS HELLJON 10
END

IF ~~ THEN BEGIN XA_HELLJON_10B
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. Prepare to meet your end, Irenicus!~  */	
	COPY_TRANS HELLJON 10
END

IF ~~ THEN BEGIN XAA83
	SAY @247 /* ~Irenicus already tried to force us apart, and failed. You will do no better. Our love is stronger than your evil.~ */
	
	IF ~~ THEN
	EXTERN BODHIAMB XAA2
END

IF ~~ THEN BEGIN XAA97
	SAY @295 /* ~No! That will n-never happen! You will die ... f-for threatening ...my family...~ */
	IF ~~ THEN
	EXTERN C6BODHI XAA3

END

IF ~~ THEN BEGIN XA_MeetMelkor5B6
	SAY @913 /* ~<CHARNAME>... the caves beneath Dragonspear, remember? We encountered a rift into the Fugue plane. Hephernaan's acolytes were performing some sort of ritual there.~*/
	
	IF ~~ THEN EXTERN XAMELKOR XA_MeetMelkor5B7
END

IF ~~ THEN BEGIN XA_MeetMelkor5C2
	SAY @914 /* ~Catatonia? But... we were told she'd made a full recovery.~ */
	
	IF ~~ THEN EXTERN XAMELKOR XA_MeetMelkor5C3
END

IF ~~ THEN BEGIN XA_Demin
	SAY @404 /* ~<CHARNAME>! That's enough - I know that they are largely responsible for what has happened to you, but control yourself! Our fight is with Irenicus, not them!~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @405 /* ~You're right. Sorry, love, I don't know what came over me.~ */
	GOTO XA_Demin2A
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @406 /* ~You're right. Sorry, Captain, I don't know what came over me.~ */
	GOTO XA_Demin2B
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @407 /* ~Fine. We'll do it your way. Self-righteous morons like the priestess here make me sick.~ */
	GOTO XA_Demin2A
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @407 /* ~Fine. We'll do it your way. Self-righteous morons like the priestess here make me sick.~ */
	GOTO XA_Demin2B
END

IF ~~ THEN BEGIN XA_Demin2A
	SAY @409 /* ~Just keep it together, my love. We are so close to victory. Priestess - what do we need to do to gain entry to the palace?~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinStopDeminFight", "GLOBAL", 1)
	~
	EXTERN SUDEMIN XA_Demin3
END

IF ~~ THEN BEGIN XA_Demin2B
	SAY @408 /* ~Just keep it together, <CHARNAME>. We are so close to victory. Priestess - what do we need to do to gain entry to the palace?~  */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinStopDeminFight", "GLOBAL", 1)
	~
	EXTERN SUDEMIN XA_Demin3
END

IF ~~ THEN BEGIN XA_Svir
	SAY @410 /* ~Have you lost your mind!? How does killing the gnomes help us in the hunt for Irenicus?~ */
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @411 /* ~I give the orders here, Captain, not you. Follow them, or step aside!~ */
	GOTO XA_Svir1C
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @412 /* ~You're right, Captain. I'm sorry - I have not been myself since my soul was stolen from me.~ */
	GOTO XA_Svir1A
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @413 /* ~You're right, love. I'm sorry - I have not been myself since my soul was stolen from me.~ */
	GOTO XA_Svir1B
END

IF ~~ THEN BEGIN XA_Svir1A
	SAY @415 /* ~My friend, I wish there was some way for me to help you... just keep it together. We'll find a way through this. Goldander - we will help you.~ */
	IF ~~ THEN
	EXTERN UDSVIR03 26
END

IF ~~ THEN BEGIN XA_Svir1B
	SAY @415 /* ~My love, I wish there was some way for me to help you... just keep it together. We'll find a way through this. Goldander - we will help you.~ */
	IF ~~ THEN
	EXTERN UDSVIR03 26
END

IF ~~ THEN BEGIN XA_Svir1C
	SAY @414 /* @414 = ~You have no idea how much this hurts. Allies, to me!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("SvirHostile","GLOBAL",1)
		SetGlobal("XA_CorwinHostile","GLOBAL",1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Daleson
	SAY @422 /* ~Hahah, wait... you *are* joking, right?~*/
	IF ~~ THEN
	EXTERN DALESON 13
END

IF ~~ THEN BEGIN XA_FFCUST04A
	SAY @249 /* ~Thanks, but...~*/
	
	= @250 /* ~(She nods in your direction.)~ */
	
	= @251 /* ~My <PRO_MANWOMAN>'s got me covered.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_FFCUST04B
	SAY @424 /* ~I'm here on duty, not to pick up men... and certainly not to spend my evening with a drunkard.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_DHARLOT2A
	SAY @425 /* ~Girl - where are your parents? Do they know that you're out here turning tricks?~ */
	IF ~~ THEN
	EXTERN DHARLOT2 5
END

IF ~~ THEN BEGIN XA_DHARLOT2B
	SAY @426 /* ~Really, <CHARNAME>? Very funny.~ */
	
	= @1469 /* (She punches you in the shoulder.)~ */
	IF ~~ THEN REPLY @427 /* Ow! */
	GOTO XA_DHARLOT2A
END

IF ~~ THEN BEGIN XA_HAEGAN_0_5
	SAY @441 /* ~It's very simple. You're trading slaves, and we're here to shut you down. Do me a favor and resist - please.~ */
	IF ~~ THEN
	EXTERN HAEGAN 2
END

IF ~~ THEN BEGIN XA_ProstCorwin2
	SAY @443 /* ~H-huh? No, I'm not interested.~ */
	IF ~~ THEN
	EXTERN BPROST2 XA_ProstCorwin3
END

IF ~~ THEN BEGIN XA_InteractCorwin2
	SAY @444 /* ~As a matter of fact, I am.~ */
	IF ~~ THEN
	EXTERN DELTOW01 XA_InteractCorwin3
END

IF ~~ THEN BEGIN XA_PIRMUR01_2
	SAY @449 /* ~They're as dead as your soul, slaver scum. Hand over Claire, now!~ */
	IF ~~ THEN 
	EXTERN ~PIRMUR01~ 4
END

IF ~~ THEN BEGIN XA_KORGANJ_151
	SAY @450 /* ~Now is not the time for petty bickering. If we don't work together, none of us are making it out of here alive. Goldander - you said you knew of someone who could help us get into the city?~ */
	
	IF ~~ THEN
	EXTERN UDSVIR03 18
END

IF ~~ THEN BEGIN XA_EdwinFF2
	SAY @458 /* ~What was that?~ */
	
	= @457 /* ~(She gives him a dirty look.)~ */
	
	IF ~~ THEN
	EXTERN EDWINJ XA_EdwinFF3
END

IF ~~ THEN BEGIN XA_DelciaLeft
	SAY @513 /* ~Gods. I think she needed that as much as I did.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @515 /* ~I can't believe you did that, love.~ */
	GOTO XA_DelciaLeft2
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @517 /*  ~She definitely deserved it. Well done, love.~ */
	GOTO XA_DelciaLeft2
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @516 /* ~I can't believe you did that, Corwin.~ */
	GOTO XA_DelciaLeft2
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @518 /* ~She definitely deserved it. Well done, Captain.~ */
	GOTO XA_DelciaLeft2
		
	IF ~
		IsValidForPartyDialogue("Keldorn")
	~
	EXTERN KELDORJ XA_CorwinStruckDelcia
	
	IF ~
		IsValidForPartyDialogue("Nalia")
	~
	EXTERN KELDORJ XA_CorwinStruckDelcia
END

IF ~~ THEN BEGIN XA_DelciaLeft2
	SAY @514 /* ~It was for her own good. Anyone who runs their mouth like that to the wrong person risks an untimely death. Hopefully she learned her lesson.~ */
	
	
	IF ~~ THEN REPLY @519 /* ~Well said - let's get moving.~ */
	EXTERN KELDORJ XA_CorwinStruckDelcia
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN GOTO XA_DelciaLeft3
END

IF ~~ THEN BEGIN XA_DelciaLeft3
	SAY @521 /* ~I've just been so stressed lately... I wouldn't normally do something like that.~ */
	
	
	IF ~~ THEN REPLY @522 /* ~I know it's tough being away from your family. I'm glad you're here though. */
	GOTO XA_GladHere
	
	IF ~
		GlobalLT("XA_TimesHadSex", "GLOBAL", 1)
	~
	THEN REPLY @523 /* ~You and I both... my love, I know of a couple of activities that can help us to relieve some of that stress...~ */
	GOTO XA_DelciaLeft4
END

IF ~~ THEN BEGIN XA_GladHereExit
	SAY @1452 /* ~Right.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_GladHere
	SAY @1449 /* ~So am I... look at me complaining. You've been through the ringer and you keep moving forward. You'd have made a great officer, you know.~ */
	
	IF ~~ THEN REPLY @1450 /* ~Doubtful, but I appreciate the sentiment. Let's get going.~*/
	GOTO XA_GladHereExit
	
	IF ~~ THEN REPLY @1451 /* ~And I may still. Who knows what the future holds in store? Let's get going.~*/
	GOTO XA_GladHereExit
	
	IF ~~ THEN REPLY @1453 /* ~With you as my commander? Sounds intriguing — I bet you'd *love* ordering me around, wouldn't you hon?~*/
	GOTO XA_GladHere2	
END

IF ~~ THEN BEGIN XA_GladHere2
	SAY @1454 /* ~(She smiles wryly.)~ */
	
	= @1455 /* ~I would. But not as much as you'd enjoy it.~ */
	
	IF ~
		GlobalGT("XA_TimesHadSex", "GLOBAL", 0)
		Gender(Player1, MALE)
	~ THEN REPLY @1458 /* ~Is that so?~ */
	GOTO XA_GladHere_HadSex_M
	
	IF ~
		GlobalGT("XA_TimesHadSex", "GLOBAL", 0)
		Gender(Player1, FEMALE)
	~ THEN REPLY @1458 /* ~Is that so?~ */
	GOTO XA_GladHere_HadSex_F
	
	IF ~
		GlobalLT("XA_TimesHadSex", "GLOBAL", 1)
	~ THEN REPLY @1458 /*  ~Is that so?~ */
	GOTO XA_GladHere_WantSex
END

IF ~~ THEN BEGIN XA_GladHere_WantSex
	SAY @1456 /* ~Get us a room, love, and we'll see how good you are at following orders.~ */
	
	IF ~~ THEN REPLY @1457 /* ~Yes, ma'am!~ */
	DO ~
		SetGlobal("XA_CorwinSex_1", "GLOBAL", 1)
		SetGlobal("XA_GetRoom", "GLOBAL", 1)
		ActionOverride(Player1, StartDialog("PLAYER1", Player1))
	~
	EXIT
END

IF ~~ THEN BEGIN XA_GladHere_HadSex_M
	SAY @1459 /* ~Judging by how... ahh... stiffly, you stood at attention the last time we were together... yes. ~ */
	
	IF ~~ THEN 
	GOTO XA_GladHere_HadSex_Exit
END

IF ~~ THEN BEGIN XA_GladHere_HadSex_F
	SAY @1461 /*  ~Well you did ... ahh ... gush with exuberance the last time we were together. Multiple times, if I remember correctly.~ */
	
	IF ~~ THEN 
	GOTO XA_GladHere_HadSex_Exit
END

IF ~~ THEN BEGIN XA_GladHere_HadSex_Exit
	SAY @1460 /* ~But enough distractions, lover — we've work to do. Let's get to it.~ */
	
	IF ~~ THEN
	EXIT
END


IF ~~ THEN BEGIN XA_DelciaLeft4
	SAY @524 /* ~I think I know what you have in mind. (She walks up to you, leans in and whispers.) It's on my mind, all the time.~   */
	
	IF ~~ THEN REPLY @527 /* ~What do you suggest?~ */
	GOTO XA_DelciaLeft5
	
	IF ~~ THEN REPLY @526 /* ~I know just the place. (You resolve to pay for a room at one of the nearby inns.)~ */
	GOTO XA_DelciaLeft6
END

IF ~~ THEN BEGIN XA_DelciaLeft5
	SAY @64 /* ~The street in mid-day, or perhaps the amphitheater. Gods, what do you think? There are plenty of inns in the city, pick one!~ */
	IF ~~ THEN REPLY @526 /* ~I know just the place. (You resolve to pay for a room at one of the nearby inns.)~ */
	GOTO XA_DelciaLeft6
END

IF ~~ THEN BEGIN XA_DelciaLeft6
	SAY @528 /* ~Good. */
	= @1751 /* ~(She gives you a kiss on the cheek.)~ */
	= @1752 /* ~Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinSex_1", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_GORODR1_17_18
	SAY @604 /*  ~What manner of creature is imprisoned here?~   */
	IF ~~ THEN
	EXTERN GORODR1 19
END

IF ~~ THEN BEGIN XA_GORODR1_34_44
	SAY @605 /*  ~Bastard! You lied to us! You knew it was Demigorgon that was imprisoned the entire time!~  */
	IF ~~ THEN
	EXTERN GORODR1 35
END

IF ~~ THEN BEGIN XA_SUJON_14
	SAY @606 /* ~Justice has finally come for you, wizard. Prepare to die!~ */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_SUELLE2_0
	SAY @607 /* ~<CHARNAME>! Oh... thank goodness... (You notice tears forming in her eyes.)~ */
	
	IF ~~ THEN REPLY @608 /* ~S-Schael...? How long was I...?  */
	GOTO XA_SUELLE2_0_A
END

IF ~~ THEN BEGIN XA_SUELLE2_0_A
	SAY @609 /* ~Two days... *sob* ... h-how are you feeling?~ */
	
	IF ~~ THEN REPLY @610 /* ~Good, just ... tired. A-are you crying?~  */
	GOTO XA_SUELLE2_0_B
END

IF ~~ THEN BEGIN XA_SUELLE2_0_B
	SAY @611 /* ~Nothing, it's just...~  */
	
	= @1753 /*~(Her voice cracks.)~*/
	
	= @1754 /*~I thought I'd *sob* lost you...~*/
	
	IF ~~ THEN REPLY @612 /* ~Come here, love. ~  */
	GOTO XA_SUELLE2_0_C
END

IF ~~ THEN BEGIN XA_SUELLE2_0_C
	SAY @1755 /* ~(She lays her head down on your chest, and you hold her tenderly in your arms. In moments, she finally loses her composure and begins to weep in earnest.)~ */
	
	IF ~~ THEN REPLY @614 /* ~It's alright Schael, let it out. I'm here.~ */
	GOTO XA_SUELLE2_0_C2
END

IF ~~ THEN BEGIN XA_SUELLE2_0_C2
	SAY @1757 /*~(You gently caress her head as you feel her warm tears touch your skin.)~*/
	
	IF ~~ THEN
	EXTERN SUELLE2 XA_SUELLE2_0_D
END

IF ~~ THEN BEGIN XA_SUELLE2_5
	SAY @616 /* ~Get some rest love. I'll check in on you later.~ */
	
	= @1758 /*~(She plants a kiss on your forehead.)~*/
	
	IF ~~ THEN REPLY @617 /* ~Thank you Schael. For everything.~ */
	DO ~
		SetGlobal("XA_59AOverride", "GLOBAL", 1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA59atob",FALSE)
	~
	EXIT
	
	IF ~~ THEN REPLY @618 /* ~Please, stay with me, love.~ */
	GOTO XA_SUELLE2_5_8
END

IF ~~ THEN BEGIN XA_GiveMedal2A
	SAY @690 /* As am I, sir. */
	
	IF ~~ THEN REPLY @767 /* ~And so am I. Thank you, both.~ */
	EXTERN XANEDERL XA_GiveMedal3
END

IF ~~ THEN BEGIN XA_SUELLE2_5_8
	SAY @1759 /* ~(You reach out and take hold of her hand.)~ */
	= @115 /* ~Gladly, dear. */
	= @1760 /*~(You slide over so there is enough room on the bed for the two of you. When she climbs in, you kiss and rest in eachother's embrace.)~*/

	IF ~~ THEN
	DO ~
		SetGlobal("XA_59AOverride", "GLOBAL", 1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA59atob",FALSE)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_SUELLE2_8
	SAY @616 /* ~Get some rest love. (She plants a kiss on your forehead.) I'll check in with the others.~ */
	
	IF ~~ THEN REPLY @617 /* ~Thank you Schael. For everything.~ */
	DO ~
		SetGlobal("XA_59AOverride", "GLOBAL", 1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA59atob",FALSE)
	~
	EXIT
	
	IF ~~ THEN REPLY @618 /* ~Please, stay with me, love.~ */
	GOTO XA_SUELLE2_5_8
END

IF ~~ THEN BEGIN XA_SUELLE2_8A
	SAY @619 /* ~Gladly, dear. 
	(You slide over so there is enough room on the bed for the two of you. When she climbs in, you share a passionate kiss, and fall asleep in eachother's embrace.)~  */

	IF ~~ THEN
	DO ~
		SetGlobal("XA_59AOverride", "GLOBAL", 1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA59atob",FALSE)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_WYRM_1
	SAY @674 /* ~Thank you, sir.~ */
	
	IF ~~ THEN
	EXTERN XANEDERL XA_WYRM_2
END


IF ~~ THEN BEGIN XA_WYRM_7 //OK
	SAY @675 /* ~Yes, sir.~*/
	
	IF ~~ THEN REPLY @762 /* ~Thank you, Marshal Nederlok.~ */
	EXTERN XANEDERL XA_WYRM_8
	
	IF ~
		Global("XA_BGSlaverPlot", "GLOBAL", 1)
	~ THEN REPLY @763 /* ~Thank you - before you leave, I found some evidence of slaver activity in Baldur's Gate while we were in Athkatla.~ */
	EXTERN XANEDERL XA_NEDERL_SlaverPlot2
	
END

IF ~~ THEN BEGIN XA_NEDERL_SlaverPlot //OK
	SAY @675 /* ~Yes, sir.~*/
	
	= @758 /* Sir, before you leave - while <CHARNAME> and I were in Athkatla, we found evidence of slaver activity in Baldur's Gate.~ */
	
	IF ~~ THEN
	EXTERN XANEDERL XA_NEDERL_SlaverPlot2
END

IF ~~ THEN BEGIN XA_NEDERL_SlaverPlot3
	SAY @759 /* ~We encountered a large number of refugees from Caelar's crusade who were shipped out of Baldur's Gate to Athkatla.~ */
	
	= @760 /* ~They were told that they were being moved to new homes in other cities. Instead, when they arrived in Athkatla, the children were separated from their parents and sold to slavers. We weren't able to find the parents, though we did free the children from their captors.~ */
	
	IF ~~ THEN
	EXTERN XANEDERL XA_NEDERL_SlaverPlot4
END

IF ~~ THEN BEGIN XA_WYRM_NEDERL_END
	SAY @675 /* Yes, sir. */
	
	IF ~~ THEN 
	EXTERN XANEDERL XA_WYRM_8
END

IF ~~ THEN BEGIN XA_BenceWyrm_2
	SAY @676 /* ~Corporal, I trust all is well with you? How is Skie?~*/
	
	IF ~~ THEN
	EXTERN XABENCE XA_BenceWyrm_3 //OK
END

IF ~~ THEN BEGIN XA_BenceWyrm_4
	SAY @677 /* ~Changed? In what way?~*/
	
	IF ~~ THEN
	EXTERN XABENCE XA_BenceWyrm_5 //OK
END

IF ~~ THEN BEGIN XA_BenceWyrm_6
	SAY @678 /* ~Understood. <CHARNAME>, let's head in. We'll stop at my place first. It's in the southeast part of the city.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobalTimer("XA_CorwinFamilyTimer", "GLOBAL", ONE_HOUR)
		SetGlobal("XA_BenceWyrm", "GLOBAL", 2)
		SetGlobal("XA_ReturnToBG", "GLOBAL", 1)
		SetGlobal("XA_AddCorwinMapNote", "GLOBAL", 1)
		ActionOverride("XABENCE", MoveToPoint([3.827])
		ActionOverride("XABENCE", EscapeArea())
		EndCutSceneMode()
	~
	EXIT
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_GaveDoll", "GLOBAL", 2)
		!Global("XA_GaveDoll", "GLOBAL", 1)
	~
	THEN 
	DO ~
		ActionOverride("XABENCE", MoveToPoint([3.827])
		ActionOverride("XABENCE", EscapeArea())
	~
	GOTO XA_GetRohmaGift
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_MetRohma", "GLOBAL", 1)
	~ 
	THEN 
	DO ~
		ActionOverride("XABENCE", MoveToPoint([3.827])
		ActionOverride("XABENCE", EscapeArea())
	~
	GOTO XA_FirstMeetingRohma
END

IF ~~ THEN BEGIN XA_GetRohmaGift
	SAY @715 /* ~(You think to yourself that it's been a while since you've seen Schael's family. It may be worthwhile stopping at one of the General Stores and getting a gift for her daughter.)~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@1303, QUEST)
		SetGlobalTimer("XA_CorwinFamilyTimer", "GLOBAL", ONE_HOUR)
		SetGlobal("XA_BenceWyrm", "GLOBAL", 2)
		SetGlobal("XA_ReturnToBG", "GLOBAL", 1)
		EndCutSceneMode()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_FirstMeetingRohma
	SAY @713 /* ~(You think to yourself that this is the first time you'll have met Schael's family. You want to make a good impression. It may be worthwhile stopping at one of the General Stores in the city to see if you can find a gift for her daughter.)~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@1304, QUEST)
		SetGlobalTimer("XA_CorwinFamilyTimer", "GLOBAL", ONE_HOUR)
		SetGlobal("XA_BenceWyrm", "GLOBAL", 2)
		SetGlobal("XA_ReturnToBG", "GLOBAL", 1)
		EndCutSceneMode()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Corwin_Sarvolo
	SAY @1603 /* ~You make it sound as though we're heroes out of some legend. To be honest, I've never given much thought to what people would say about us. About what we've accomplished together...~*/
	
	IF ~~ THEN
	EXTERN SARVOLO XA_Corwin_Sarvolo_END 
END

IF ~~ THEN BEGIN XA_Schael_Sarvolo
	SAY @1604 /* ~Volo, <CHARNAME> is the only hero here. To be honest, I've never given much thought to what people would say about us, <CHARNAME>. About what we've accomplished together... and our love for one another...~*/
	
	IF ~~ THEN
	EXTERN SARVOLO XA_Schael_Sarvolo_END 
END

IF ~~ THEN BEGIN XA_NotMetFamily
	SAY @679 /* ~No - I still need to see my family.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite4
	SAY @693 /* ~Gods, where does the time go?~ */
	
	IF ~~ THEN
	GOTO XA_CorwinFamilyReuniteSwitch
	
	IF ~
		Global("XA_CorwinWonTM", "GLOBAL", 1)
	~
	GOTO XA_CorwinFamilyReuniteTM
END

IF ~~ THEN BEGIN XA_WYRM_VALYGAR
	SAY @710 /* ~Sir, allow me to introduce you to Valygar. He's a ranger from Amn who has expressed interest in joining the Flaming Fist. I know that he'd make a great addition to our team.~ */
	
	IF ~~ THEN
	EXTERN XANEDERL XA_WYRM_VALYGAR2
END

IF ~~ THEN BEGIN XA_WYRM_6A
	SAY @711 /* Yes, sir. */
	
	IF ~~ THEN
	EXTERN XANEDERL XA_WYRM_6B
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3A3
	SAY @712 /* ~Rohma!~ */
	
	IF ~~ THEN
	EXTERN XAROHMA XA_CorwinFamilyReunite3A4A1
	
	IF ~
		!PartyHasItem("XARDOLL")
	~ THEN
	EXTERN XAROHMA XA_CorwinFamilyReunite3A4B
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3A4A3
	SAY @714 /* ~What do you say, Rohma?~*/
	
	IF ~~ THEN
	EXTERN XAROHMA XA_CorwinFamilyReunite3A4A4
END

IF ~~ THEN BEGIN XA_CorwinFamilyReuniteSwitch
	SAY @769 /* ~(She turns to you.)~ */
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_Depart_NonRomance
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_Depart_Romance

END

IF ~~ THEN BEGIN XA_Depart_NonRomance
	SAY @770 /* ~<CHARNAME>, I'm going to spend the rest of the day with my family. Take some time for yourself - I'm sure you have a lot of faces that you want to see. I'll see you tomorrow morning at the debriefing.~ */
	
	IF ~~ THEN REPLY @782 /* ~You definitely deserve some quality time with them.~*/
	GOTO XA_Depart_NonRomance2
	
	IF ~~ THEN REPLY @788 /* ~Sounds good. You certainly have a lot of catching up to do.~*/
	GOTO XA_Depart_NonRomance2
END

IF ~~ THEN BEGIN XA_Depart_NonRomance2
	SAY @798 /* Sweetie, come and say bye to <CHARNAME>.~ */
	
	IF ~~ THEN 
	DO ~
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		SetLeavePartyDialogFile()
	~
	EXTERN XAROHMA XA_SayBye
END

IF ~~ THEN BEGIN XA_Depart_Romance
	SAY @868 /* ~My love - I imagine you have some people and places that you want to see. Do you want me to come with you?~ */

	IF ~~ THEN REPLY @870 /* ~I'd rather you stay here and enjoy some quality time with your family. You've earned it.~ */
	EXTERN XAROHMA XA_RohmaTaunt1A
	
	IF ~~ THEN REPLY @869 /* ~Of course, but just for a couple of hours. You and your family deserve to spend some time with eachother.~ */
	EXTERN XAROHMA XA_RohmaTaunt1B	
END

IF ~~ THEN BEGIN XA_RohmaTaunt2A
	SAY @794 /* ~Rohma, honey - ~ */
	IF ~~ THEN
	EXTERN XAROHMA XA_RohmaTaunt3A
END

IF ~~ THEN BEGIN XA_RohmaTaunt2B
	SAY @794 /* ~Rohma, honey - ~ */
	IF ~~ THEN
	EXTERN XAROHMA XA_RohmaTaunt3B
END

IF ~~ THEN BEGIN XA_RohmaTaunt4A
	SAY @777 /* ~Rohma! That's enough!~ */
	
	= @795 /* ~I'm sorry, she's not normaly this excited.~ */
	
	IF ~~ THEN REPLY @796 /* ~Hahah, no need to apologize.~ */
	GOTO XA_Depart_Romance2
	
	IF ~~ THEN REPLY @797 /* ~She's just glad to see her mommy again.~*/
	GOTO XA_Depart_Romance2
END

IF ~~ THEN BEGIN XA_RohmaTaunt4B
	SAY @777 /* ~Rohma! That's enough!~ */
	
	= @795 /* ~I'm sorry, she's not normaly this excited.~ */
	
	IF ~~ THEN REPLY @796 /* ~Hahah, no need to apologize.~ */
	GOTO XA_Depart_RohmaChain
	
	IF ~~ THEN REPLY @797 /* ~She's just glad to see her mommy again.~*/
	GOTO XA_Depart_RohmaChain
END

IF ~~ THEN BEGIN XA_Depart_Romance2
	SAY @778 /*  ~So, where are you planning to stay tonight?~ */
	
	IF ~~ THEN REPLY @786 /* ~I'll stay at the Three Old Kegs tonight.~ */
	DO ~
		SetGlobal("XA_StayingAtThreeOldKegs", "GLOBAL", 1)
	~
	GOTO XA_Depart_Romance5
	
	IF ~~ THEN REPLY @789 /* ~I'll stay at the Blade and Stars tonight.~*/
	DO ~
		SetGlobal("XA_StayingAtBladeAndStars", "GLOBAL", 1)
	~
	GOTO XA_Depart_Romance5
	
	IF ~
		Global("XA_SavedElfsong", "GLOBAL", 1)
	~ THEN REPLY @790 /* ~I'll stay at the Elfsong Tavern tonight.~*/
	DO ~
		SetGlobal("XA_StayingAtElfsongTavern", "GLOBAL", 1)
	~
	GOTO XA_Depart_Romance5
	
	IF ~~ THEN REPLY @791 /* ~I'll stay at the Blushing Mermaid tonight.~*/
	DO ~
		SetGlobal("XA_StayingAtBlushingMermaid", "GLOBAL", 1)
	~
	GOTO XA_Depart_Romance5
	
	IF ~~ THEN REPLY @783 /* ~I was hoping to spend the night here, with you.~*/
	GOTO XA_Depart_Romance3
END

IF ~~ THEN BEGIN XA_Depart_Romance3
	SAY @785 /* ~And I want you to, but first, Rohma's going to need some time to adjust to us being together.~*/
	
	IF ~~ THEN REPLY @793 /* ~I understand.~ */
	GOTO XA_Depart_Romance4
END

IF ~~ THEN BEGIN XA_Depart_Romance4
	SAY @792 /* ~So, what'll it be?~*/
	
	IF ~~ THEN REPLY @786 /* ~I'll stay at the Three Old Kegs tonight.~ */
	DO ~
		SetGlobal("XA_StayingAtThreeOldKegs", "GLOBAL", 1)
	~
	GOTO XA_Depart_Romance5
	
	IF ~~ THEN REPLY @789 /* ~I'll stay at the Blade and Stars tonight.~*/
	DO ~
		SetGlobal("XA_StayingAtBladeAndStars", "GLOBAL", 1)
	~
	GOTO XA_Depart_Romance5
	
	IF ~
		Global("XA_SavedElfsong", "GLOBAL", 1)
	~ THEN REPLY @790 /* ~I'll stay at the Elfsong Tavern tonight.~*/
	DO ~
		SetGlobal("XA_StayingAtElfsongTavern", "GLOBAL", 1)
	~
	GOTO XA_Depart_Romance5
	
	IF ~~ THEN REPLY @791 /* ~I'll stay at the Blushing Mermaid tonight.~*/
	DO ~
		SetGlobal("XA_StayingAtBlushingMermaid", "GLOBAL", 1)
	~
	GOTO XA_Depart_Romance5
END

IF ~~ THEN BEGIN XA_Depart_Romance5
	SAY @780 /*  ~Good. Come here. ~*/
	
	= @781 /* ~(You share a warm embrace and kiss.)~ */
	= @799 /* ~(She whispers in your ear.) I'll come see you in your room tonight, lover.~ */
	
	= @798 /* ~Sweetie, come and say bye to <CHARNAME>.~ */
	IF ~~ THEN
	DO ~
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		SetLeavePartyDialogFile()
	~
	EXTERN XAROHMA XA_SayBye
END

IF ~~ THEN BEGIN XA_CorwinMadXANOBLW1
	SAY @819 /* ~I see. Come with me to the Flaming Fist headquarters. I'm sure Duke Eltan would appreciate hearing how much of a fool he is for allowing <CHARNAME> back into the city.~ */
	
	IF ~
		RandomNum(2,1)
	~ THEN
	EXTERN XANOBLW XA_CorwinMadXANOBLW1
	
	IF ~
		RandomNum(2,2)
	~ THEN
	EXTERN XANOBLW XA_CorwinMadXANOBLW2
END

IF ~~ THEN BEGIN XA_CorwinMadXANOBLW2
	SAY @820 /* ~Is that so? Duke Entar would love to hear more of your wisdom, citizen. Come with me. Now.~ */
	
	IF ~
		RandomNum(2,1)
	~ THEN
	EXTERN XANOBLW XA_CorwinMadXANOBLW1
	
	IF ~
		RandomNum(2,2)
	~ THEN
	EXTERN XANOBLW XA_CorwinMadXANOBLW2
END

IF ~~ THEN BEGIN XA_CorwinMadXANOBLW3
	SAY @821 /* ~Mind your tone, citizen! In disparaging <CHARNAME>, you disrespect the Council who has exonerated <PRO_HIMHER>!~*/
	
	IF ~
		RandomNum(2,1)
	~ THEN 
	EXTERN XANOBLW XA_CorwinMadXANOBLW1
	
	IF ~
		RandomNum(2,2)
	~ THEN 
	EXTERN XANOBLW XA_CorwinMadXANOBLW2
END

IF ~~ THEN BEGIN XA_CorwinMadXANOBLW4
	SAY @822 /* ~The Dukes have proclaimed <CHARNAME>'s innocence. Do you mean to imply that they're mistaken?~*/
	
	IF ~
		RandomNum(2,1)
	~ THEN
	EXTERN XANOBLW XA_CorwinMadXANOBLW1
	
	IF ~
		RandomNum(2,2)
	~ THEN
	EXTERN XANOBLW XA_CorwinMadXANOBLW2
END

IF ~~ THEN BEGIN XA_CorwinMadXANOBLM1
	SAY @819 /* ~I see. Come with me to the Flaming Fist headquarters. I'm sure Duke Eltan would appreciate hearing how much of a fool he is for allowing <CHARNAME> back into the city.~ */
	
	IF ~
		RandomNum(2,1)
	~ THEN 
	EXTERN XANOBLM XA_CorwinMadXANOBLM1
	
	IF ~
		RandomNum(2,2)
	~ THEN 
	EXTERN XANOBLM XA_CorwinMadXANOBLM2
END

IF ~~ THEN BEGIN XA_CorwinMadXANOBLM2
	SAY @820 /* ~Is that so? Duke Entar would love to hear more of your wisdom, citizen. Come with me. Now.~ */
	
	IF ~
		RandomNum(2,1)
	~ THEN 
	EXTERN XANOBLM XA_CorwinMadXANOBLM1
	
	IF ~
		RandomNum(2,2)
	~ THEN 
	EXTERN XANOBLM XA_CorwinMadXANOBLM2
END

IF ~~ THEN BEGIN XA_CorwinMadXANOBLM3
	SAY @821 /* ~Mind your tone, citizen! In disparaging <CHARNAME>, you disrespect the Council who has exonerated <PRO_HIMHER>!~*/
	
	IF ~
		RandomNum(2,1)
	~ THEN 
	EXTERN XANOBLM XA_CorwinMadXANOBLM1
	
	IF ~
		RandomNum(2,2)
	~ THEN 
	EXTERN XANOBLM XA_CorwinMadXANOBLM2
END

IF ~~ THEN BEGIN XA_CorwinMadXANOBLM4
	SAY @822 /* ~The Dukes have proclaimed <CHARNAME>'s innocence. Do you mean to imply that they're mistaken?~*/
	
	IF ~
		RandomNum(2,1)
	~ THEN 
	EXTERN XANOBLM XA_CorwinMadXANOBLM1
	
	IF ~
		RandomNum(2,2)
	~ THEN 
	EXTERN XANOBLM XA_CorwinMadXANOBLM2
END

IF ~~ THEN BEGIN XA_CorwinMadEnd1
	SAY @817 /* ~Good. I better not that hear that foolishness from you again.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_CorwinScoldTownsperson", "LOCALS", 1)
	~	
	EXIT
END

IF ~~ THEN BEGIN XA_SeeRohmaLater
	SAY @876 /* ~I'll see you soon, sweetie.~ */
	
	IF ~~ THEN
	EXIT
	
	IF ~
		OR(2)
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Valygar")
	~ THEN
	DO ~
		SetGlobal("XA_AVComplimentFamily", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinMadEnd2
	SAY @818 /* ~Good. That's what I thought.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_CorwinScoldTownsperson", "LOCALS", 1)
	~	
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinMadEnd3
	SAY @815 /* ~Good. You'd be well served to keep your tongue on a short leash.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_CorwinScoldTownsperson", "LOCALS", 1)
	~	
	EXIT
END

IF ~~ THEN BEGIN XA_HarborCorwinChainEnd
	SAY @812 /* ~Hmm.. <CHARNAME>, look. The manifests identify the company as Winston Ventures, but the contents are encoded.~ */	
	
	IF ~
		!Dead("Alatos")
	~ THEN GOTO XA_HarborCorwinTG
	
	IF ~
		Dead("Alatos")
	~ THEN GOTO XA_HarborCorwinWV	
END

IF ~~ THEN BEGIN XA_HarborCorwinTG
	SAY @813 /* ~We should pay a visit to the Thieves' Guild. They may know how to decode them.~ */

	IF ~~ THEN REPLY @814 /* ~Right. Let's go.~*/
	DO ~
		AddJournalEntry(@823, INFO)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_HarborCorwinWV
	SAY @833 /* ~Let's pay this company Winston Ventures a visit. We might be able to find a way to decode the manifests.~ */

	IF ~~ THEN REPLY @814 /* ~Right. Let's go.~*/
	DO ~
		AddJournalEntry(@834, INFO)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_ThiefGuildEntry
	SAY @835 /* ~We're here on Flaming Fist business. Let us through.~ */
	IF ~~ THEN EXTERN THIEFG XAA2B
END

IF ~~ THEN BEGIN XA_KerracQuestioning
	SAY @836 /* ~Tina Bennett - <CHARNAME>, that's the name of the child that we rescued in Athkatla.~ */
	
	IF ~~ THEN REPLY @837 /* ~That's right - Kerrachus, do you know anything else that might help?~ */
	EXTERN XAKERRAC XA_KerracQuestioningEnd
END

IF ~~ THEN BEGIN XA_JasperCorwin
	SAY @853 /* ~We're here on behalf of Tianna.~ */
	
	IF ~~ THEN EXTERN XAJASPER XA_TiannaDebt3 //OK
END

IF ~~ THEN BEGIN XA_AlatosNothing
	SAY @867 /* ~Nothing, at least for now.~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_ThankAlatos1
	SAY @865 /* ~Makes sense. Thanks for the help.~*/
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_ThankAlatos2
	SAY @866 /* ~Thanks for the help.~*/
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_ThankAlatos3
	SAY @915 /* ~Very good. This is exactly what we need to prove Winston's guilt. <CHARNAME>, let's take this to Marshal Nederlok.~*/
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_CorwinLobar
	SAY @859 /* ~Is Tianna working?~  */
	
	IF ~~ THEN EXTERN LOBAR XA_LobarTianna
END

IF ~~ THEN BEGIN XA_GreetMommyA2
	SAY @878 /* ~I love you too honey. I'll be back soon, I promise.~ */
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_GreetMommyB2
	SAY @879 /* ~Oh, Rohma... I hope so. We'll see.~ */
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_RohmaKidnapped2B
	SAY @984/* ~Oh, Gods! <CHARNAME>, I can't pull the spike or he'll bleed out!~*/
	
	IF ~~ THEN REPLY @995 /* ~Stay with your father. I'll get help. Hang in there, Audamar!~*/
	DO ~
		SetGlobal("XA_RohmaKidnapped", "GLOBAL", 3)
		StartCutsceneMode()
		StartCutscene("XAKIDN01")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_RohmaKidnapped5ChainEnd
	SAY @1010 /* ~No! Forgive me sir, but you saw the letter. I can't risk my daughter being harmed.~ */
	
	IF ~~ THEN REPLY @1013 /* ~Schael is right. We need to go after them, alone.~ */
	GOTO XA_GoWithSchael
	
	IF ~~ THEN REPLY @1014 /* ~I'll go after them, alone.~ */
	GOTO XA_GoAlone
END

IF ~~ THEN BEGIN XA_GoWithSchael
	SAY @1033 /* ~What are we waiting for, then!? Let's go!~*/
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1031 /* ~Schael, I want you by my side, but not if you're emotionally compromised. The risk would be too great.~ */
	GOTO XA_CalmDown
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1032 /* ~Schael, if you're to come with me, I need you calm, cool and collected - for Rohma's sake. Can I count on you?~ */
	GOTO XA_CalmDown
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1016 /* ~Schael, I want you by my side, but not if you're emotionally compromised. The risk would be too great.~ */
	GOTO XA_CalmDown
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1017 /* ~Schael, if you're to come with me, I need you calm, cool and collected - for Rohma's sake. Can I count on you?~ */
	GOTO XA_CalmDown
END
IF ~~ THEN BEGIN XA_PPIRENI2_3_CHAIN_2_END
	SAY @551 /* ~Let.. me.. GO!~ */
	
	IF ~~ THEN REPLY #44251 /* ~What are you doing, Irenicus?! What is all of this?~ */ 
	EXTERN PPIRENI2 5

	IF ~~ THEN REPLY @552 /* ~Release us! I will kill you, I swear it!~ */ 
	EXTERN PPIRENI2 4

	IF ~~ THEN REPLY #44253 /* ~Where is Imoen?! What have you done to her?!~ */ 
	EXTERN PPIRENI2 6 
END
IF ~~ THEN BEGIN XA_GoAlone
	SAY @1015 /* ~I can't let you do that!~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1031 /* ~My love, I want you by my side, but not if you're emotionally compromised. The risk to Rohma would be too great.~*/
	GOTO XA_CalmDown
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1032 /* ~Schael, if you're to come with me, I need you calm, cool and collected - for Rohma's sake. Can I count on you?~ */
	GOTO XA_CalmDown
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1016 /* ~Schael, I want you by my side, but not if you're emotionally compromised. The risk would be too great.~ */
	GOTO XA_CalmDown
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1017 /* ~Schael, if you're to come with me, I need you calm, cool and collected - for Rohma's sake. Can I count on you?~ */
	GOTO XA_CalmDown
END

IF ~~ THEN BEGIN XA_CalmDown
	SAY @1018 /* ~You're right... I'm letting my emotions get the better of me. I need to focus. For Rohma.~ */
	
	IF ~~ THEN 
	GOTO XA_ReadyToGetRohma
	
	IF ~
		Global("XA_BreathingExercise", "GLOBAL", 1)
	~ THEN GOTO XA_CalmDown_Rasaad
END

IF ~~ THEN BEGIN XA_CalmDown_Rasaad
	SAY @1030 /* ~(She begins to slowly breathe in, and out. You recognize this as the breathing exercise that Rasaad taught her.)~  */
	IF ~~ THEN GOTO XA_ReadyToGetRohma
END

IF ~~ THEN BEGIN XA_ReadyToGetRohma
	SAY @1020 /* ~I'm ready, <CHARNAME>. You can count on me, I promise you.~ */
	
	IF ~~ THEN REPLY @1021 /* ~Good. Let's go get Rohma.~ */
	DO ~
		SetGlobal("XA_RohmaKidnapped", "GLOBAL", 5)
	~
	EXTERN XANEDERL XA_ReadyToGetRohmaEnd
END

IF ~~ THEN BEGIN XA_PPIRENI2_3_CHAIN_END
	SAY @546 /* ~You won't get away with this, wizard!~ */
	
	IF ~~ THEN
	EXTERN PPIRENI2 XA_PPIRENI2_3_CHAIN_2
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN EXTERN PLAYER1 XA_CORWIN_PPIRENI2_3
END

IF ~~ THEN BEGIN XA_CorwinDelcia_End
	SAY @505 /* ~Now, listen to me. I didn't travel all this way and risk my life only to be spoken down to by a pretentious, insufferable bitch. We are not your servants, and you are no better than the dirt on my heel. Get up.~  */
	
	IF ~
		!IsValidForPartyDialogue(Player1)
	~ THEN
	DO ~
		SetGlobal("XA_SlappedDelcia", "GLOBAL", 1)
	~
	EXTERN DELCIA XA_CorwinLeave
	
	IF ~
		IsValidForPartyDialogue(Player1)
	~ THEN
	DO ~
		SetGlobal("XA_SlappedDelcia", "GLOBAL", 1)
		SetGlobal("XA_DelciaEnd", "GLOBAL", 1)
		StartDialog("XACORWIJ", Player1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinDrizz_End
	SAY @1297 /* ~<CHARNAME>?~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinDrizz_End", "GLOBAL", 1)
		StartDialog("XACORWIJ", Player1)
	~
	EXIT
END

//{ Dialog J-64
IF ~
	Global("XA_CorwinDrizz_End", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinDrizz_Transition
	SAY @1298 /* ~We could use their help.~ */
	
	IF ~~ THEN REPLY @1299 /* ~Thank you for the offer, Drizzt, but we aren't in need of any assistance.~ */
	DO ~
		SetGlobal("XA_CorwinDrizz_End", "GLOBAL", 2)
	~
	EXTERN C6DRIZZ1 54
	
	IF ~~ THEN REPLY @483 /* ~I have a proposal for you, Drizzt, if you will wait for a moment.~  */
	DO ~
		SetGlobal("XA_CorwinDrizz_End", "GLOBAL", 2)
	~
	EXTERN C6DRIZZ1 XA_CorwinDrizz2 
END
//}

//{ Dialog J-65
IF ~
	Global("XA_SlappedDelcia", "GLOBAL", 1)
	Global("XA_DelciaEnd", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinDelcia_Transition
	SAY @506 /* ~Now get the hells out of here!~ */
	IF ~~ THEN REPLY @511 /* ~(Remain silent.)~ */
	EXTERN DELCIA XA_CorwinLeave
	
	IF ~~ THEN REPLY @512 /* ~Are you deaf, woman? Get out!~ */
	EXTERN DELCIA XA_CorwinLeave
	
	IF ~~ THEN REPLY @1295 /* ~Better do what she says, lady.~    */
	EXTERN DELCIA XA_CorwinLeave
END
//}

IF ~~ THEN BEGIN XA_HOW_WhyNot
	SAY @1377 /* ~Excuse us, ma'am.~ */
	
	= @1378 /* ~(She pulls you aside.)~ */
	
	= @1379 /* ~What's the problem? They're orphans — they have nothing. A few words from you could at least give them some inspiration.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1380 /* ~Public speaking isn't my forte... but I'll do it for you, dear.~ */
	GOTO XA_StartHOWCutscene2 
	
	IF ~~ THEN REPLY @1381 /* ~If it's just a few words, then fine.~ */
	GOTO XA_StartHOWCutscene2
	
END
IF ~~ THEN BEGIN XA_StartHOWCutscene
	SAY @1376 /* ~Lead the way, Curator Magda.~ */
	
	IF ~~ THEN
	DO ~
		StartCutsceneMode()
		StartCutscene("XACSHOW")
		EndCutSceneMode()
	~
	EXIT
END
IF ~~ THEN BEGIN XA_StartHOWCutscene2
	SAY @1382 /* ~That's better. Lead the way, Curator Magda.~*/
	
	IF ~~ THEN
	DO ~
		StartCutsceneMode()
		StartCutscene("XACSHOW")
		EndCutSceneMode()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_AlythReport
	SAY @1426 /* ~Ma'am, did you report these disappearances to the Flaming Fist?~ */
	
	IF ~~ THEN
	EXTERN XAALYTH XA_ReportToFF
END

//{ Wraith Interaction
IF ~~ THEN BEGIN XA_Corwin_Wraith
	SAY @1605 /* ~Love must dare to risk. Otherwise, it isn't love at all.~ */
	
	IF ~~ THEN
	EXTERN HGWRA01 24
END

IF ~~ THEN BEGIN XA_RohmaWraithChain_END
	SAY @1613 /* ~N-no, Rohma! I love you more than anything! Oh, gods, no...~*/
	
	IF ~~ THEN REPLY @1611 /* ~Schael, calm yourself! Rohma is safe with your father at the Ducal palace. Whatever this thing is, it isn't your daughter.~ */
	EXTERN HGWRA01 25
	
	IF ~~ THEN REPLY @1614 /*~Enough! I won't allow this to continue!~ */
	EXTERN HGWRA01 25
	
	IF ~~ THEN REPLY @1615 /*~Whatever you are, enough! She doesn't deserve this!~*/
	EXTERN HGWRA01 25
END
//}



CHAIN 
	IF ~~ THEN XACORWIJ XA_CorwinTiannaGoodbyeChain
		@854 /* ~I hope you learned something from this Tianna. Next time, you might not be so lucky.~*/
		== XATIANNA
		@858 /* ~I've been doing a lot of thinking and... I don't think this city is a good fit for me. I'm going to take my mom south to Beregost, and try for a fresh start over there.~ */
		== XACORWIJ
		@855 /* ~That's a good decision. Take care of yourself, Tianna.~ */
		== XATIANNA
		@857 /* ~You too, Schael.~ */
		= @856 /* ~(They share an embrace.)~ */ 
END XATIANNA XA_GoodBye

//{ Dialog J-66

CHAIN 
	IF ~
		Global("XA_XACS15Cutscene", "GLOBAL", 3)
	~ THEN XACORWIJ XA_CorwinNeomaReunite
		@716 /* ~(They share a close embrace.)~ */
		DO ~
			SetGlobal("XA_XACS15Cutscene", "GLOBAL", 4)
		~
		== XANEOMA
		@717 /* ~I heard you'd be coming home! How are you?~ */
		== XACORWIJ
		@723 /* ~I'm so glad to be back. How're things with you?~ */
		== XANEOMA
		@721 /* ~(They speak amongst themselves for a time. You can't make out what they are saying.)~ */
		== XANEOMA
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		@722 /* ~Really? You and ... (she looks at you, smiles.)~ */
		== XACORWIJ
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		@718 /* ~(They break into laughter.)~*/
		== XANEOMA
		@719 /* ~Listen, I have to start my shift soon. Let's get caught up later, over a drink or two.~*/
		== XACORWIJ
		@724 /* ~Sounds good. I'll see you later.~*/
		== XANEOMA
		@725 /* ~(They embrace, and Neoma leaves after giving Schael a kiss on her cheek.)~ */
EXIT
//}

//{ Dialog J-67
CHAIN
	IF ~
		Global("XA_XACS14Cutscene", "GLOBAL", 1)
	~ THEN XACORWIJ XA_CorwinFamilyReunite
		@681 /* ~(They share a long embrace, and Schael gives her daughter a big kiss.)~ */
		= @683 /* ~Oh, I've missed you so much!~*/
		DO ~
			SetGlobal("XA_XACS14Cutscene", "GLOBAL", 2)
			SetGlobal("XA_CorwinFamilyTalk", "GLOBAL", 1)
			SetGlobal("XA_CorwinMetFamily", "GLOBAL", 1)
		~
		== XAROHMA
		@684 /* ~I missed you too mommy!~ */
		DO ~
			StartCutSceneMode()
			StartCutScene("XACS14A")
		~
EXIT
//}

CHAIN IF ~~ THEN XACORWIJ XA_CorwinFamilyReunite2
	@686 /* ~Me too, father.~ */
	= @687 /* ~(They share a warm embrace.)~ */
	== XAAUDAM
	@691 /* ~Corporal Duncan told us you'd be home soon. I can't tell you how much of a relief it is to have you back.~ */
	= @688 /* ~I see you've brought company.~ */
END XAROHMA XA_CorwinFamilyReunite3

CHAIN
	IF ~~ THEN XACORWIJ XA_CorwinFamilyReuniteTM
		@695 /* ~Oh - look what I got for you Rohma.~ */
		= @696 /* ~(She hands her the trophy she won at the Trademeet Archery Competition.)~ */
		= @697 /* ~Can you read me what it says?~ */
		== XAROHMA
		@698 /* ~Winner.. eighth an-annu...~ */
		== XACORWIJ
		@699 /* ~Annual.~ */
		== XAROHMA
		@700 /* ~Annual... trade..meet... ar..chery.. c-com-comp...~*/
		== XACORWIJ
		@701 /* ~Competition. Good job honey. Your reading has improved quite a bit.~ */	
END XACORWIJ XA_CorwinFamilyReuniteSwitch

CHAIN 
	IF ~~ THEN XACORWIJ XA_CorwinDelcia
		@507 /* ~I've heard enough. */
		== XACORWIJ
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		@1296 /* Forgive me, Nalia.~ */
		= 
		@504 /* ~(Captain Corwin walks up to Lady Delcia and delivers a powerful, open-handed slap to her face that sends her crashing to the floor. Delcia looks up at Corwin, and is left quivering and speechless.)~ */
		==NALIAJ
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		@508 /* ~(She stands in shock.)~ */
END XACORWIJ XA_CorwinDelcia_End
		
CHAIN 
	IF ~~ THEN IMOEN2 XA_CorwinImoenReuniteChain
		@500 /* ~It's good to see you again, Captain, but I'm surprised that you're here.~ */
		== XACORWIJ
		@459 /* ~It's good to see you too, Imoen. As for why I'm here, <CHARNAME> found evidence proving that Irenicus was behind what happened to Skie. I was assigned to assist <PRO_HIMHER> in the hunt for the wizard.~ */
		== IMOEN2
		@501 /* ~Skie, is she ...~ */
		== XACORWIJ
		@460 /* ~She's alive and well, thanks to <CHARNAME>. I'll fill you in on the details later. We need to get moving.~ */
		== IMOEN2
		@502 /* ~Good. Right, let's get moving.~*/
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
			JoinParty()
		~
EXIT

CHAIN
	IF ~~ THEN XACORWIJ XA_CorwinDrizz
		@479 /* ~Hold your tongue, drow. I've never known <CHARNAME> to resort to banditry. I suggest that you and your companions move along - now.~*/
		DO ~
			SetGlobalTimer("XA_CorwinVouchedDrizzTimer", "GLOBAL", THREE_ROUNDS)
		~ 
		== C6WULF1
		@480 /* ~Eh? Is she threatening us? Do you think she's serious?~ */
		== C6BRUEN1
		@461 /* ~Aye Drizzt, I recognize that insignia on her armor. Yer far from home, aren't ye girl?~ */
		== C6REGIS1
		@462 /* ~She must be some kind of imposter. The Flaming Fist puts bandits to the sword - they do not fight alongside them!~ */
		== C6CATTI1
		@463 /* ~He's right, Drizzt. We can't be allowin' these bandits to run free... knows what horrid acts they've committed upon others?~*/
		== C6DRIZZ1
		@254 /* ~That's enough, all of you. You there!~ */
		= @256 /* ~(He points at Corwin.)~ */
		= @258 /* ~Who are you, and what is your business here?~ */
		== XACORWIJ
		@465 /* ~I am Captain Schael Corwin of the Flaming Fist. I'm travelling with <CHARNAME> on a special assignment to apprehend a wizard, Jon Irenicus.~ */
		== C6DRIZZ1
		@466 /* ~How do I know you aren't an impostor, as my friend suggests? I know a bit of the Flaming Fist and its reporting structure. Tell me, who are your commanding officers? Answer carefully.~ */
		== XACORWIJ
		@467 /* ~Marshall Nederlok, and Duke Eltan.~ */
		== C6DRIZZ1
		@468 /* ~I know of another in the Flaming Fist. Based on your claimed rank, you should be reporting to them.~ */
		== XACORWIJ
		@469 /* ~If you're referring to Scar, he was assassinated several months ago, as part of a plot to usurp control over the city. <CHARNAME> brought both the assassin and the usurper to justice. Scar was a good friend and I miss him dearly.~ */
		== C6DRIZZ1
		@470 /* ~You say you were a friend to Scar. If you were truly his friend, you would know his real name.~ */
		== XACORWIJ
		@471 /* ~His name was Harold Loggerson.~ */
		== C6DRIZZ1
		@472 /* ~(His expression changes from one of suspicion to one of surprise.)~ */
		=
		@540 /* ~Very well. Lower your weapons, friends. She is telling us the truth.~ */
		=
		@473 /* ~Scar was a good man. I am sorry to hear that he has passed. You said you were after a wizard? What has this person done to warrant the attention of the Flaming Fist?~ */
		== XACORWIJ
		@474 /* ~Yes. The wizard nearly murdered Skie Silvershield, the daughter of one of the Grand Dukes, and framed <CHARNAME> for the crime. <CHARNAME> found evidence proving his innocence and is responsible for Skie's restoration.~ */
		=
		@475 /* ~Once <PRO_HISHER>'s innocence was established, I was assigned to them to assist in the hunt for the wizard.~ */
		== C6DRIZZ1
		@476 /* ~I ... see. If <CHARNAME> was framed for that crime by the wizard then... perhaps... it may also be the case that it was not <PRO_HESHE> that attacked me while I was beset by gnolls...~ */
		== C6WULF1
		@477 /* ~You don't seriously believe them, do you?~ */
		== C6DRIZZ1
		@478 /* ~I do. I sense no deception from this woman, and her account of <CHARNAME>'s actions lead me to believe that <PRO_HESHE> is a force for good, not evil.~  */
		=
		@481 /* ~If you are in need of assistance, I will be glad to offer it. If not, I will wish you well and we shall be on our way back to the far north.~ */
END XACORWIJ XA_CorwinDrizz_End

CHAIN
	IF ~~ THEN XACORWIJ XA_BackToBG_Chain
		@629 /* ~Before we go, let's check with the rest of the team to see if they want to come with us. I imagine some will want to stay here and help the elves with their wounded.~*/
		
		== XACORWIJ 
		IF ~
			IsValidForPartyDialogue("Hexxat")
		~
		@646 /* ~(She points at Hexxat.)~*/
		= @1761 /* ~She won't be joining us. I'll not allow the monster to feed on the citizens I'm sworn to protect.~ */
		DO ~
			ActionOverride("Hexxat", SetLeavePartyDialogFile())
			ActionOverride("Hexxat", ChangeAIScript("", DEFAULT))
		~
		
		== IMOEN2J
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		@636 /* ~You can count me in. Oh, I can't wait to see Liia again! There are so many stories I'll share with her.~ */
		DO ~
			SetGlobal("XA_BackToBG_Imoen", "GLOBAL", 1)
		~
		
		== JAHEIRAJ 
		IF ~
			IsValidForPartyDialogue("Jaheira")
			GlobalGT("JaheiraRomanceActive", "GLOBAL",0)
			GlobalLT("JaheiraRomanceActive", "GLOBAL",3)
		~
		@639 /* ~I will be joining you, my dear.~ */
		DO ~
			SetGlobal("XA_BackToBG_Jaheira", "GLOBAL", 1)
		~
		
		== JAHEIRAJ
		IF ~
			IsValidForPartyDialogue("Jaheira")
			ReputationGT(Player1,9)
			OR(2)
				Global("JaheiraRomanceActive", "GLOBAL",0)
				Global("JaheiraRomanceActive", "GLOBAL",3)
		~
		@637 /* ~This is where we part ways, at least for now, <CHARNAME>. Gorion would be proud of the <PRO_MANWOMAN> you've become. I will remain here to help undo the damage that Irenicus inflicted on the Tree of Life.~ */
		= @638 /* ~(You share a warm embrace.)~ */
		DO ~
			ActionOverride("Jaheira", SetLeavePartyDialogFile())
			ActionOverride("Jaheira", ChangeAIScript("", DEFAULT))
		~
		== JAHEIRAJ
		IF ~
			IsValidForPartyDialogue("Jaheira")
			ReputationLT(Player1,10)
			OR(2)
				Global("JaheiraRomanceActive", "GLOBAL",0)
				Global("JaheiraRomanceActive", "GLOBAL",3)
		~
		@640 /* ~This is where we part ways, at least for now, <CHARNAME>. I urge you to become the type of <PRO_MANWOMAN> that Gorion would be proud of. I will remain here to help undo the damage that Irenicus inflicted on the Tree of Life.~ */
		DO ~
			ActionOverride("Jaheira", SetLeavePartyDialogFile())
			ActionOverride("Jaheira", ChangeAIScript("", DEFAULT))
		~
		== VICONIJ 
		IF ~
			IsValidForPartyDialogue("Viconia")
		~
		@641 /* ~I will join you. The sooner we can leave, the better - the surface elves are looking for an excuse to murder me, I know it.~ */
		DO ~
			SetGlobal("XA_BackToBG_Viconia", "GLOBAL", 1)
		~
		
		== JANJ
		IF ~
			IsValidForPartyDialogue("Jan")
			Global("XA_BackToBG_Jan", "GLOBAL", 1)
		~
		@642 /* ~Oh, yes, this is a wonderful opportunity to expand my turnip business! I will go with you.~ */
		
		== JANJ
		IF ~
			IsValidForPartyDialogue("Jan")
			!Global("XA_BackToBG_Jan", "GLOBAL", 1)
		~
		@643 /* ~Back to Athkatla for me, I'm afraid. The turnips need tending to. Safe travels, my friends.~ */
		DO ~
			ActionOverride("Jan", SetLeavePartyDialogFile())
			ActionOverride("Jan", ChangeAIScript("", DEFAULT))
		~
		== EDWINJ 
		IF ~
			IsValidForPartyDialogue("Edwin")
		~
		@644 /* ~We are in a city of magical knowledge that few humans have set foot in, and you want me to go back to that diseased backwater of a city? Bah! I will remain here and learn the secrets of the elves. (That is, until they throw me out.)~ */
		DO ~
			ActionOverride("Edwin", SetLeavePartyDialogFile())
			ActionOverride("Edwin", ChangeAIScript("", DEFAULT))
		~
		== MINSCJ 
		IF ~
			IsValidForPartyDialogue("Minsc")
		~
		@645 /* ~I would go with you, but Boo has become intensely infatuated with a squirrel that he saw on the Tree of Life. I must find this squirrel and determine if she is a worthy mate for Boo.~ */
		DO ~
			ActionOverride("Minsc", SetLeavePartyDialogFile())
			ActionOverride("Minsc", ChangeAIScript("", DEFAULT))
		~
		== AERIEJ
		IF ~
			IsValidForPartyDialogue("Aerie")
			GlobalGT("AerieRomanceActive", "GLOBAL",0)
			GlobalLT("AerieRomanceActive", "GLOBAL",3)
		~
		@647 /* ~Oh, of course I will go with you! M-maybe we can also see Candlekeep? It will be fun to see where you g-grew up.~ */
		DO ~
			SetGlobal("XA_BackToBG_Aerie", "GLOBAL", 1)
		~
		
		== AERIEJ
		IF ~
			IsValidForPartyDialogue("Aerie")
			ReputationGT(Player1,9)
			OR(2)
				Global("AerieRomanceActive", "GLOBAL",0)
				Global("AerieRomanceActive", "GLOBAL",3)
		~
		@648 /* ~O-oh, I think it will be better for me to stay here. There are still many injured, and the elves can use my help. */
		= @649 /* ~T-thank you, <CHARNAME> for everything. For freeing me from the circus, and for taking me on this grand adventure. I've learned so much about the world, and.. and about m-myself. I h-hope to see you again soon.~ */
		= @650 /* ~(You share a warm embrace.)~ */
		DO ~
			ActionOverride("Aerie", SetLeavePartyDialogFile())
			ActionOverride("Aerie", ChangeAIScript("", DEFAULT))
		~
		== AERIEJ
		IF ~
			IsValidForPartyDialogue("Aerie")
			ReputationLT(Player1,10)
			OR(2)
				Global("AerieRomanceActive", "GLOBAL",0)
				Global("AerieRomanceActive", "GLOBAL",3)
		~
		@648 /* ~O-oh, I think it will be better for me to stay here. There are still many injured, and the elves can use my help.~ */
		DO ~
			ActionOverride("Aerie", SetLeavePartyDialogFile())
			ActionOverride("Aerie", ChangeAIScript("", DEFAULT))
		~
		== NALIAJ
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		@651 /* ~This is an opportunity to understand the plight of the poor from a broader perspective. I will go with you. ~ */
		DO ~
			SetGlobal("XA_BackToBG_Nalia", "GLOBAL", 1)
		~
		
		== HAERDAJ
		IF ~
			IsValidForPartyDialogue("HaerDalis")
		~
		@652 /* ~I will remain here for a time, my sparrow. I wish to see this place restored to its former beauty. May our paths cross again in the near future.~ */
		DO ~
			ActionOverride("HaerDalis", SetLeavePartyDialogFile())
			ActionOverride("HaerDalis", ChangeAIScript("", DEFAULT))
		~
		== KORGANJ
		IF ~
			IsValidForPartyDialogue("Korgan")
		~
		@653 /* ~Aye, I'll go with ye. It hath been many a year since I travelled the Sword Coast, plus I be sick of these queers already. I'll stop at Beregost on the way and pay an old friend of mine a visit.~ */
		DO ~
			SetGlobal("XA_BackToBG_Korgan", "GLOBAL", 1)
		~
		
		== KELDORJ
		IF ~
			IsValidForPartyDialogue("Keldorn")
			Global("LadyMaria","GLOBAL",5)
		~
		@654 /* ~I promised my wife that I would return home after putting an end to Irenicus, and I will do so. Good-bye, my friend. May Torm guide your path.~*/
		DO ~
			ActionOverride("Keldorn", SetLeavePartyDialogFile())
			ActionOverride("Keldorn", ChangeAIScript("", DEFAULT))
		~
		== KELDORJ
		IF ~
			IsValidForPartyDialogue("Keldorn")
			!Global("LadyMaria","GLOBAL",5)
		~
		@655 /* ~Now that Irenicus has been dealt with, I must return to my order and my duty. Good-bye, my friend. May Torm guide your path.~ */
		DO ~
			ActionOverride("Keldorn", SetLeavePartyDialogFile())
			ActionOverride("Keldorn", ChangeAIScript("", DEFAULT))
		~
		== ANOMENJ
		IF ~
			Alignment("Anomen",LAWFUL_GOOD)
			IsValidForPartyDialogue("Keldorn")
			!Global("LadyMaria","GLOBAL",5)
			IsValidForPartyDialogue("Anomen")
			OR(2)
				Global("AnomenRomanceActive", "GLOBAL",0)
				Global("AnomenRomanceActive", "GLOBAL",3)
		~
		@662 /* ~I'm afraid I too must return to my order. Safe travels <CHARNAME>, and you as well Captain.~ */
		DO ~
			ActionOverride("Anomen", SetLeavePartyDialogFile())
			ActionOverride("Anomen", ChangeAIScript("", DEFAULT))
		~
		== ANOMENJ
		IF ~
			Alignment("Anomen",LAWFUL_GOOD)
			IsValidForPartyDialogue("Keldorn")
			Global("LadyMaria","GLOBAL",5)
			IsValidForPartyDialogue("Anomen")
			OR(2)
				Global("AnomenRomanceActive", "GLOBAL",0)
				Global("AnomenRomanceActive", "GLOBAL",3)
		~
		@663 /* ~I'm afraid I must decline, and return to my order. Safe travels <CHARNAME>, and you as well Captain.~ */
		DO ~
			ActionOverride("Anomen", SetLeavePartyDialogFile())
			ActionOverride("Anomen", ChangeAIScript("", DEFAULT))
		~
		== ANOMENJ
		IF ~
			Alignment("Anomen",LAWFUL_GOOD)
			!IsValidForPartyDialogue("Keldorn")
			IsValidForPartyDialogue("Anomen")
			OR(2)
				Global("AnomenRomanceActive", "GLOBAL",0)
				Global("AnomenRomanceActive", "GLOBAL",3)
		~
		@663 /* ~I'm afraid I must decline, and return to my order. Safe travels <CHARNAME>, and you as well Captain.~ */
		DO ~
			ActionOverride("Anomen", SetLeavePartyDialogFile())
			ActionOverride("Anomen", ChangeAIScript("", DEFAULT))
		~
		== ANOMENJ
		IF ~
			IsValidForPartyDialogue("Anomen")
			!Alignment("Anomen",LAWFUL_GOOD)
			OR(2)
				Global("AnomenRomanceActive", "GLOBAL",0)
				Global("AnomenRomanceActive", "GLOBAL",3)
		~
		@664 /* ~I will join you. There is little left for me in Amn, and I am eager for a fresh start.~ */
		DO ~
			SetGlobal("XA_BackToBG_Anomen", "GLOBAL", 1)
		~
		
		== ANOMENJ
		IF ~
			IsValidForPartyDialogue("Anomen")
			OR(2)
				Global("AnomenRomanceActive", "GLOBAL",1)
				Global("AnomenRomanceActive", "GLOBAL",2)
		~
		@665 /* ~I will remain by your side my love, now and always.~ */
		DO ~
			SetGlobal("XA_BackToBG_Anomen", "GLOBAL", 1)
		~
		
		== DORNJ
		IF ~
			IsValidForPartyDialogue("Dorn")
			OR(2)
				!Dead("ohdazoth")  // Azothet
				!Dead("ohdugoth")  // Ur-Gothoz
		~
		@656 /* ~I sense that my patron wishes for us to part ways, at least for now. I have a feeling that our paths will cross again, and soon. Until then, <CHARNAME>.~ */
		DO ~
			ActionOverride("Dorn", SetLeavePartyDialogFile())
			ActionOverride("Dorn", ChangeAIScript("", DEFAULT))
		~
		== DORNJ
		IF ~
			IsValidForPartyDialogue("Dorn")
			Dead("ohdazoth")  // Azothet
			Dead("ohdugoth")  // Ur-Gothoz
		~
		@657 /* ~Yes, I will go with you. Anywhere, even Baldur's Gate, would be better than staying here.~ */
		DO ~
			SetGlobal("XA_BackToBG_Dorn", "GLOBAL", 1)
		~
		
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("Valygar")
			GlobalLT("XA_CorwinValygarLavok", "GLOBAL", 1)
		~
		@660 /* ~No, I won't be joining you. I'm going back to my cabin in the woods. I'll use the time and seclusion to decide what to do with my life.~ */
		DO ~
			ActionOverride("Valygar", SetLeavePartyDialogFile())
			ActionOverride("Valygar", ChangeAIScript("", DEFAULT))
		~
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("Valygar")
			GlobalGT("XA_CorwinValygarLavok", "GLOBAL", 0)
			GlobalLT("XA_CorwinValygarBG", "GLOBAL", 1)
		~
		@658 /* ~There is nothing left for me in Amn. Captain, I'd like to take you up on your offer and join the Flaming Fist, at least on an interim basis.~ */
		DO ~
			SetGlobal("XA_BackToBG_Valygar", "GLOBAL", 1)
		~
		
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("Valygar")
			GlobalGT("XA_CorwinValygarLavok", "GLOBAL", 0)
			GlobalLT("XA_CorwinValygarBG", "GLOBAL", 1)
		~
		@1471 /* ~Excellent! You won't regret it. When we arrive, I'll introduce you to my commanding officer, Marshal Kirill Nederlok.~ */
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("Valygar")
			GlobalGT("XA_CorwinValygarLavok", "GLOBAL", 0)
			GlobalGT("XA_CorwinValygarBG", "GLOBAL", 0)
		~
		@1470 /* ~Captain as we discussed, I will return with you to Baldur's Gate to join the Flaming Fist.~*/
		DO ~
			SetGlobal("XA_BackToBG_Valygar", "GLOBAL", 1)
		~
		
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("Valygar")
			GlobalGT("XA_CorwinValygarLavok", "GLOBAL", 0)
			GlobalGT("XA_CorwinValygarBG", "GLOBAL", 0)
		~
		@659 /* ~Excellent - you'll make a fine addition to the team.~ */
		== NEERAJ
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		@661 /* ~Of course I'll join you silly! It'll be nice to see the Sword Coast again!~ */
		DO ~
			SetGlobal("XA_BackToBG_Neera", "GLOBAL", 1)
		~
		
		== CERNDJ
		IF ~
			IsValidForPartyDialogue("Cernd")
			Global("CerndBaby","GLOBAL",1)
		~
		@667 /* ~I will remain here for a time and help the elves repair the damage to the Tree of Life, then, I will return home to raise my son. Good-bye and safe travels, friends.~ */
		DO ~
			ActionOverride("Cernd", SetLeavePartyDialogFile())
			ActionOverride("Cernd", ChangeAIScript("", DEFAULT))
		~
		== CERNDJ
		IF ~
			IsValidForPartyDialogue("Cernd")
			!Global("CerndBaby","GLOBAL",1)
		~
		@666 /* ~I will remain here for a time and help the elves repair the damage to the Tree of Life. Good-bye and safe travels, friends.~ */
		DO ~
			ActionOverride("Cernd", SetLeavePartyDialogFile())
			ActionOverride("Cernd", ChangeAIScript("", DEFAULT))
		~
		== RASAADJ
		IF ~
			IsValidForPartyDialogue("Rasaad")
			OR(2)
				Global("RasaadRomanceActive", "GLOBAL",0)
				Global("RasaadRomanceActive", "GLOBAL",3)
		~
		@668 /* ~Yes my friend, I will return with you. I am interested to see what progress has been made in dealing with the refugee crisis. My help may still be needed.~ */
		DO ~
			SetGlobal("XA_BackToBG_Rasaad", "GLOBAL", 1)
		~
		
		== RASAADJ
		IF ~
			IsValidForPartyDialogue("Rasaad")
			OR(2)
				Global("RasaadRomanceActive", "GLOBAL",1)
				Global("RasaadRomanceActive", "GLOBAL",2)
		~
		@665 /* ~I will remain by your side my love, now and always.~ */
		DO ~
			SetGlobal("XA_BackToBG_Rasaad", "GLOBAL", 1)
		~
		
		== XACORWIJ
		@672 /* ~Take a few minutes to gather your belongings. When you are ready to leave, come and talk to me.~*/
EXIT

CHAIN
	IF ~~ THEN XACORWIJ XA_HarborCorwin
		@800 /* ~It has. Listen, this is not a social visit. We're investigating reports of slaver activity in these docks, specifically, allegations that refugees are being shipped from here and sold into slavery. What do you know about these activities?~ */
		== XAHARBOR
		@801 /* ~Shipped from Baldur's Gate, you say? No, I don't know anything about it. We do periodic inspections of cargo on behalf of the city authorities, but we haven't come across any children.~*/
		= @802 /* ~Now, wait a minute... A couple months back, there was a program started by some upstart noble to resettle refugees. He claimed to have connections in other cities that he used to find families willing to host them.~ */
		= @803 /* ~He chartered a number of ships from this dock to places like Athkatla, Calimport, Waterdeep, and others.~ */
		== XACORWIJ
		@804 /* What is his name? Where is he now?~ */
		DO ~
			SetGlobal("XA_AskedAboutName", "GLOBAL", 1)
		~
		== XAHARBOR
		@805 /*  ~I don't remember his name, but I know he and his company have set up shop in the old Iron Throne headquarters.~ */
		== XACORWIJ
		@806 /* ~Give me all of the shipping manifests from his company for his company since the start of the refugee crisis, until now.~ */
		DO ~
			SetGlobal("XA_AskedAboutManifests", "GLOBAL", 1)
		~
		== XAHARBOR
		@807 /* ~I need some more time for those manifests. Give me an hour, I should have them ready for you by then.~*/
		== XACORWIJ
		@808 /* ~Not in an hour, now. Unless you want the Flaming Fist to turn these docks inside out.~*/
		== XAHARBOR 
		@809 /*  ~Right... one moment.~*/
		= @810 /* ~Here they are. The shipping manifests for Winston Ventures for the period you mentioned.~*/
		DO ~
			SetGlobal("XA_HandedOverManifests", "GLOBAL", 1)
			GiveItemCreate("XAMANFST",LastTalkedToBy(Myself),1,0,0)
			AddJournalEntry(@1305, QUEST)
		~
		== XACORWIJ
		@811 /* ~Thank you for your cooperation.~ */
END XACORWIJ XA_HarborCorwinChainEnd

CHAIN 
	IF ~~ THEN XACORWIJ XA_Depart_RohmaChain
		@872 /* ~Rohma, father, <CHARNAME> and I have some business to attend to in the city. I'll be back in a couple of hours.~ */
		DO ~
			SetGlobalTimer("XA_CorwinLeaveForFamilyTimer", "GLOBAL", ONE_HOUR)
			
		~
		== XAAUDAM
		@877 /*  ~Good. Don't take too long. Rohma, say bye to mommy.~ */
		== XAROHMA
		@873 /* ~I love you mommy.~ */
		== XACORWIJ
		@874 /* ~I love you too, Rohma. Give mama a hug.~*/
		== XAROHMA
		@875 /* ~(They share a warm embrace.)~*/
		
END XACORWIJ XA_SeeRohmaLater

CHAIN
	IF ~~ THEN XACORWIJ XA_AudamCorwinPlayerChain
		@890 /* ~Thanks, father. How were things while I was away?~ */
		== XAAUDAM
		@891 /* ~Quiet, thankfully. I've been teaching Rohma some basic addition and subtraction. She's picks things up fast, like you did at her age.~ */
		== XACORWIJ
		@892 /* ~I'm not surprised. She has a great teacher.~*/
		== XAAUDAM
		@893 /* ~Hardly. Your mother, rest her soul, was much better than I am.~*/
		= @894 /* ~Listen, Schael. I know your feelings for <CHARNAME> are strong.~*/
		= @895 /* ~Someone of <PRO_HISHER> notoriety being around Rohma has me worried, though.~*/
		== XACORWIJ
		@896 /* ~What do you mean? <PRO_HESHE> would never hurt her.~*/
		== XAAUDAM
		@897 /* ~No, of course not. What I mean is that someone might use Rohma, or you for that matter, to get to <PRO_HIMHER>.~*/
		== XACORWIJ
		@898 /* ~<CHARNAME> and I discussed this on the way here... it might get complicated at times, but we're both committed to finding a way to make our relationship work. <PRO_HESHE> is a good <PRO_MANWOMAN> father - I trust <PRO_HIMHER> with my life.~*/
		== XAAUDAM
		@899 /* ~It's good that you've had those discussions... You know, I can't remember the last time I saw you so happy and full of energy. <PRO_HESHE> must really love you.~*/
		== XACORWIJ
		@900 /*  ~<PRO_HESHE> does father. And I love <PRO_HIMHER>.~*/
		== XAAUDAM
		@901 /* ~I'm glad. Well, you better get a move on then. I'll see you later.~*/
		== XACORWIJ
		@902 /* ~Right. See you in a couple of hours.~ */
EXIT

CHAIN
	IF ~~ THEN XACORWIJ XA_PlayerNewDadChain
		@879 /* ~Oh, Rohma... I hope so. It's a big committment.~ */
		== XAROHMA
		@882 /* ~What's a com-it-mint?~ */
		== XACORWIJ
		@880 /* ~You know how mommy has a duty to the Flaming Fist? Well, I also have a duty to you and grandpa. A committment is like a duty.~*/
		== XAROHMA
		@883 /* ~So being a daddy is a big duty for <CHARNAME>?~*/
		== XACORWIJ
		@881 /* ~It's a big duty for anyone, sweetie, but it's very rewarding at the same time.~*/
		== XAROHMA
		@886 /*~Tell <CHARNAME> he can play with my dolly if he will be my daddy.~ */
		== XACORWIJ
		@887  /* ~I will, honey. I'm sure he'd appreciate that. We'll talk some more about this when I come back.~*/
		= @888 /* ~Be a good girl while I'm gone.~*/
		== XAROHMA
		@889 /* ~I will, mommy.~*/
EXIT

CHAIN
	IF ~~ THEN XACORWIJ XA_CorwinNederlok
		@824 /* ~It's good to be back, sir. How have the Fist and the city fared in my absence?~ */
		DO ~
			SetGlobal("XA_NederlokCorwin", "GLOBAL", 1)
		~
		== XANEDERL 
		@825 /* ~Both have fared well, thankfully. We've gained some promising new recruits, and the refugee situation has been brought under control. Between the Iron Crisis, Sarevok, Caelar, and the situation with <CHARNAME> and Skie, it's been a rough couple of years. It's good that things have finally settled down.~ */
		= @826 /* ~Have the townspeople given you or <CHARNAME> any problems?~ */
		== XACORWIJ
		IF ~
			Global("XA_CorwinScoldTownsperson", "LOCALS", 1)
		~
		@827 /* ~Most have been accepting, even weXAoming. There were just a few loudmouths, but they've been straightened out.~ */
		== XACORWIJ
		IF ~
			!Global("XA_CorwinScoldTownsperson", "LOCALS", 1)
		~
		@831 /*  ~Most have been accepting, even weXAoming, of our hero here. (She smiles at you.)~ */
		== XANEDERL
		@828 /* ~That's good to hear. Before I forget - Duke Eltan is tied up with some unrelated business, but he wanted me to tell you that he's glad that you and <CHARNAME> are back, and that he'll see you in the debriefing.~ */
		== XACORWIJ
		@829 /* ~Thank you sir. I'll leave you to your work.~ */
		== XANEDERL
		@832 /* ~Very good, Captain. I'll see you at the debriefing.~ */	
EXIT

CHAIN XAAUDAM XA_AudamarRohmaKidnapChain
	@990 /* ~(Audamar lies on the floor, bloodied and severely beaten.)~ */
	= @976 /* ~...uhnnn... S-Schael...~ */
	== XACORWIJ
	@977 /* ~Oh, thank Tymora you're alive! What happened! Where's Rohma!?~ */
	== XAAUDAM
	@978 /* ~They t-took her... said they w-would trade her for.. ...~ */
	== XACORWIJ
	@979 /* ~For what? Who took her?~ */
	== XAAUDAM
	@980 /* ~For ... <CHARNAME> ... it was B-Beno and.. a woman..~ */
	DO ~
		SetGlobal("XA_RohmaKidnapped", "GLOBAL", 2)
	~
EXIT

CHAIN XALIIA XA_NeedToGetRohmaChain
	@996 /* ~Captain, your father is going to be fine. I believe he will make a full recovery.~*/
	== XACORWIJ
	@997 /* ~Oh, thank goodness.~*/
	== XAELTAN
	@998 /* ~Let us now discuss the matter at hand...~*/
	== XANEDERL
	@999 /* ~Kent - read for us again the letter recovered from Audamar.~*/
	== XAKENT
	@1000 /* ~Yes sir. It reads as follows:~*/
	== XAKENT
	IF ~
		Gender(Player1, MALE)
	~ THEN
	@1001 /* ~'<CHARNAME>, son of Bhaal. Illasera of the Five requests your presence in the Undercity, in the temple of the father. You and Captain Corwin are to come, alone. If anyone else follows you, the child will die. Do not keep us waiting for long.'~*/
	== XAKENT
	IF ~
		Gender(Player1, FEMALE)
	~ THEN
	@1002 /* ~'<CHARNAME>, daughter of Bhaal. Illasera of the Five requests your presence in the Undercity, in the temple of the father. You and Captain Corwin are to come, alone. If anyone else follows you, the child will die. Do not keep us waiting for long.'~*/
	== XAELTAN
	@1003 /* ~The Five... I've heard rumors of a such a group causing havoc in the vicinity of Saradush.~*/
END XANEDERL XA_NeedToGetRohmaEnd

CHAIN XACORWIJ XA_RohmaKidnapped5Chain
	@1007 /* ~Yes. He's Rohma's father, as distasteful as it sounds.~ */
	== XALIIA
	@1011 /* ~That bodes well for your daughter, then. I doubt that he would wish to see her harmed.~ */
	== XABELT
	@1333 /* ~We could use that to our advantage.~ */
	== XACORWIJ
	@1050 /* ~You mean to turn Beno against Illasera? I won't work. Beno's only ever cared for himself.~ */
	= @1052 /* ~He won't stick his neck out for anyone, not even his own daughter — I'm sure of it.~ [XA000011] */
	== XABELT
	@1334  /* ~I see...~ */
	== XANEDERL
	@1009 /* ~You'll almost certainly be walking into a trap. It would be better to send some additional support, perhaps a platoon of Valiants -~ */
END XACORWIJ XA_RohmaKidnapped5ChainEnd

CHAIN XABENO2 XA_CorwinBenoSTChain
	@1185 /* ~To hells with you, and your father!~ */
	== XACORWIJ
	@1186 /* ~(She plunges the dagger into his heart. His mouth opens as if to cry in pain, but strangely, no sound is heard. A mist rises out of the gaping wound in his chest, and coalesces into the form of a man; it's Beno, you're sure of it.)~ */
	=@1187 /* ~(For a brief moment, the spirit gazes at its physical body, with a look of wonder and confusion. That confusion turns to terror as the spirit is slowly drawn into the blade of the dagger. The spirit turns as if to flee, but it is no use. You hear a piercing scream in your mind as the last remnants of the spirit are swallowed up by the dagger.)~   */
	DO ~
		AddJournalEntry(@1206, INFO)
	~
END XACORWIJ XA_CorwinBenoSTChainEnd

CHAIN XABENO2 XA_CorwinKillBenoChain
	@1185 /* ~To hells with you, and your father!~ */
	== XACORWIJ
	@1192 /* ~(She picks up Beno's rusted scimitar, and, after a moment of hesitation, brings it down sharply upon his neck. The first blow did not fully detach the head from the body, and you hear a grotesque, gurgling sound as Beno struggles to breathe. The second blow mercifully finishes the job. Beno's head hits the ground with a satisfying thud, then rolls a couple of feet away from his body.)~*/
	=@1193 /* ~(Schael walks over to the now detached head, picks it up, and places it into her pack.)~  */
	DO ~
		GiveItemCreate("XABENOHD", "XACORWIN", 0,0,0)
		AddJournalEntry(@1207, INFO)
	~
END XACORWIJ XA_CorwinKillBenoChainEnd

CHAIN XABENO2 XA_CorwinMercyBenoChain
	@1198 /* ~Schael... I'm sorry.~ */
	== XACORWIJ
	@1199 /* ~What?~ */
	== XABENO2
	@1193 /* ~For everything... not just for today, but... for everything...~ */
	== XACORWIJ
	@1201 /* ~(Sigh.)~*/
	=@1202 /* ~No. This is wrong. Killing you, again, isn't going to solve anything. I've at least learned that much.~*/
	=@1203 /* ~Beno, you're under arrest for the crimes of kidnapping and attempted murder.~*/
	DO ~
		AddJournalEntry(@1208, INFO)
	~
END XACORWIJ XA_CorwinMercyBenoChainEnd

CHAIN XACORWIJ XA_CorwinRohmaReuniteChain
	@1211 /* ~Are you alright?~ */
	== XAROHMA
	@1237 /* ~Yes mommy.~*/
	== XACORWIJ
	@1254 /* ~What did they do to you? Did they hurt you?~*/
	== XASKIE
	@1255 /* ~The healers said that she was put into a deep sleep, but that she wasn't harmed.~ */
	=@1256 /* ~Once they woke her up, she went to see her grandpa right away.~*/
	== XACORWIJ
	@1212 /* ~How's grandpa doing?~ */
	== XAROHMA
	@1257 /* ~Good, he's taking a nap. Why does he snore so loud?~*/
	== XASKIE
	@1250 /* ~He's going to be fine - the healers said that he'll be up and about in the morning.~*/
	= @1251 /* ~Rohma's been doing a great job looking after him, haven't you, dear?~ */
	== XAROHMA
	@1253 /* ~Yep!~ */
	== XACORWIJ
	@1215 /* ~Oh, where are my manners. Thank you for looking after her, Skie.~*/
	== XACORWIJ
	IF ~
		Global("XA_DontTellEntar", "GLOBAL", 1)
	~
	@1294 /* And for that thing that ah.. we won't talk about.~  */
	== XASKIE
	@1239 /* ~I'm glad to have been able to help.~ */
	== XAROHMA
	@1238 /* ~Mommy?~  */
	== XACORWIJ
	@1214 /* ~Yes, honey?~  */
END XAROHMA XA_CorwinRohmaReuniteChainEnd

CHAIN XACORWIJ XA_BGEND3_CorwinSaradushChain
	@1228 /* ~Marshal Nederlok, sir.~ */
	== XANEDERL
	@1258 /* ~What is it, Major?~ */
	== XACORWIJ
	@1259 /* ~Request permission to accompany <CHARNAME> to Saradush.~ */
	== XANEDERL
	@1229 /* ~Granted. Do whatever is necessary to ensure the success of this mission. The fate of the city, and perhaps the entire Sword Coast, may depend on it.~*/
	== XACORWIJ
	@1260 /* ~Yes, sir.~ */
	== XANEDERL 
	@1261 /* ~And Major - don't worry about your family while you're gone. We'll make sure they are well-protected here in the palace, just in case the Five try anything again. Good hunting.~ */
END XACORWIJ XA_BGEND3_CorwinSaradushChainEnd

CHAIN PPIRENI2 XA_PPIRENI2_3_CHAIN
	@541 /* ~And you, young lady.~ */
	= @542 /*~(He looks at Corwin, and the Flaming Fist insignia on her armor.)~*/
	= @543 /*~I trust you are here to effect some appropriate punishment for what I did to Skie Silvershield?~*/
	
	== XACORWIJ
	@544 /* ~Ugh...~ */
	= @545 /*~(She struggles mightily against her restraints.)~*/
END XACORWIJ XA_PPIRENI2_3_CHAIN_END

CHAIN PPIRENI2 XA_PPIRENI2_3_CHAIN_2
	@547 /* ~Worry not, my dear. Unlike the others, you will live past these next few minutes. Once I am done with <CHARNAME>, you'll soon be returned home, where you will assassinate the Council of Four on my behalf.~ */
	
	== XACORWIJ
	@548 /* ~What..? No, never!~ */
	
	== PPIRENI2
	IF ~
		See("Yoshimo")
	~
	@549 /* ~It's a trivial matter. You'll be enslaved just as easily as Yoshimo was. Enjoy your last moments of autonomy, child.~ */
	
	== PPIRENI2
	IF ~
		!See("Yoshimo")
	~
	@550 /* ~It's a trivial matter. You'll be enslaved through the use of a geas. Enjoy your last moments of autonomy, child.~ */
END XACORWIJ XA_PPIRENI2_3_CHAIN_2_END

CHAIN XACORWIJ XA_MagdaChain
	@1364 /* ~Curator Magda! It's good to see you, too.~*/
	
	== XACURATO 
	@1365 /* ~How is Rohma? And your father?~ */
	
	==XACORWIJ
	IF ~
		Global("XA_CorwinMetFamily", "GLOBAL", 1)
	~
	@1366 /* ~They are well ma'am, thank you.~ */
	
	== XACORWIJ
	IF ~
		!Global("XA_CorwinMetFamily", "GLOBAL", 1)
	~
	@1367 /* ~We're going to see them shortly.~*/
	
	== XACURATO
	@1368 /* ~Ah, good. And who're you? I don't believe we've met.~ */
	
	== XACORWIJ
	@1369 /* ~Curator Magda, allow me to introduce you to <CHARNAME>, the hero of Baldur's Gate.~ */
END XACURATO XA_Introduction

CHAIN XACURATO XA_MagdaChain2
	@1373 /* ~For many years... enough time to watch the Captain here grow from a rapscallious child into the fine young woman she is today.~ */
	
	== XACORWIJ
	@1374 /* ~(She blushes.)~ */
	
	== XACURATO
	@1375 /* ~Oh! <CHARNAME>, Captain — a number of troubled youths from the orphanage are visiting the High Hall of Wonders, as we speak. It would mean the world to them if you can take some time out of your day to give them some words of encouragement.~ */
END XACURATO XA_AskToTalk

CHAIN XACURATO XA_CSHOW_TALK_CHAIN
	@1406 /* ~That was wonderful, Captain. Thank you for sharing your experience with us today.~ */
	= @1407 /* ~Children? Do you have any questions for Captain Corwin?~ */
	= @1410 /* ~Ah, yes Hans, go ahead.~ */
	== XAORPH01
	IF ~
		Gender(Player1, MALE)
	~
	@1408 /* ~Who's the guy standing next to you?~ */
	== XAORPH01
	IF ~
		Gender(Player1, FEMALE)
	~
	@1413 /* ~Who's the lady standing next to you?~ */
	== XACORWIJ
	@1409 /* ~This is <CHARNAME>, hero of Baldur's Gate and the Sword Coast!~ */
	== XACURATO
	IF ~
		Gender(Player1, MALE)
	~
	@1411 /* ~He's gracefully agreed to share with you some words of encouragement.~ */
	== XACURATO
	IF ~
		Gender(Player1, FEMALE)
	~
	@1412 /* ~She's gracefully agreed to share with you some words of encouragement.~ */
END XAORPH02 XA_CSHOW_TALK_CHAIN_END

CHAIN XAORPH03 XA_CSHOW_TALK_CHAIN_2
	@1387 /* ~<CHARNAME> has horns, you dummy.~ */
	== XAORPH04
	@1388 /* ~Yeah! And a tail!~ */
	== XAORPH05
	@1389 /*  ~With spikes!~ */
	== XAORPH06
	@1390 /* ~And <PRO_HESHE>'s so ugly, that if <PRO_HESHE> looks at you, you turn to stone! */
	== XACURATO
	@1402 /* ~<CHARNAME>, Captain, I'm so sorry about thi—~ */
	== XAORPH01
	@1396 /* ~And <PRO_HESHE>'s so ugly, that if <PRO_HESHE> looks at you, you turn to stone!~ */
	== XACORWIJ
	@1391 /* ~That's enough, all of you. Whatever rumors you've heard are untrue. This ...~ */
	= @1392 /* ~(She gestures to you.)~ */
	= @1393 /* ~... is *definitely* <CHARNAME>, hero of Baldur's Gate!~ */
	== XAORPH01
	@1394 /* ~Prove it!~ */
	
END XAORPH02 XA_CSHOW_TALK_CHAIN_2_END

CHAIN
	IF ~~ THEN XACORWIJ XAAKissChain
		@74 /* ~(You share a passionate embrace and kiss.)~ */
		
		== AERIEJ
		IF ~
			IsValidForPartyDialogue("Aerie")
		~
		@75 /* ~Oh my... that's s-so romantic!~ */
		
		== HAERDAJ
		IF ~
			IsValidForPartyDialogue("HaerDalis")
		~
		@76 /* ~Ah, the lovers' embrace - the inspiration for many a playwright, myself included.~  */
		
		== IMOEN2J
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		@77 /* ~Gorion would be so happy for you, <CHARNAME>...~ */
END XACORWIJ XA_KissEnd

CHAIN XACORWIJ XA_RohmaWraithChain
	@1606 /*~R-Rohma!? Honey, what are you doing here?~*/
	
	== XAROHMA4
	@1607 /*~Mommy, why didn't you come home? Why weren't you there to protect us?~*/
	
	== XACORWIJ
	@1608 /*~What ... what do you mean? What happened!~*/
	
	== XAROHMA4
	@1609 /*~They came... they killed grandpa and then they killed me, mommy... You killed me!~*/
	
	= @1612 /* ~You wanted us to die, so that you could start a new family with <CHARNAME>! You never loved me!~*/
	
END XACORWIJ XA_RohmaWraithChain_END

CHAIN XACORWIJ XA_GoodbyeChain
	@1716 /* ~(She turns to your comrades.)~ */
	
	//{ Aerie Goodbye
	== AERIEJ
	IF ~
		IsValidForPartyDialogue("Aerie")
	~
	@1687 /* ~Oh Schael *sob*, I — I'll miss you!~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Aerie")
	~
	@1688 /* ~I'll miss you too, Aerie. Please look after <CHARNAME> for me while I'm gone.~*/
	//}
	
	//{ Keldorn Goodbye
	== KELDORJ
	IF ~
		IsValidForPartyDialogue("Keldorn")
	~
	@1689 /* ~It's been an honor to fight at your side, Major.~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Keldorn")
	~
	@1690 /* ~The honor is mine. Thank you, Keldorn.~*/
	//}
	
	//{ Minsc Goodbye
	== MINSCJ
	IF ~
		IsValidForPartyDialogue("Minsc")
	~
	@1709 /*~Major soldier lady, Boo wishes you well, and asks if you would be so kind as to kiss him.~ */
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Minsc")
	~
	@1710 /*~No. I'm not kissing anyone's rode—, excuse me, 'space-hamster'.~  */
	
	== MINSCJ
	IF ~
		IsValidForPartyDialogue("Minsc")
	~
	@1711 /*  ~In that case, can Boo give you a kiss? Just a peck on the cheek?~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Minsc")
	~
	@1712 /*~(Sigh.)~ */
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Minsc")
	~
	@1713 /*~Sure, Minsc.~ */
	
	== MINSCJ
	IF ~
		IsValidForPartyDialogue("Minsc")
	~
	@1714 /* ~(She leans in, and Boo head-bumps her on her cheek.)~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Minsc")
	~
	@1715 /* ~Ugh...~ */
	//}
	
	//{ Korgan Goodbye
	== KORGANJ
	IF ~
		IsValidForPartyDialogue("Korgan")
	~
	@1691 /* ~Aye girlie, don't ye worry yer sweet little behind. Ole Korgan'll make sure yer <PRO_MANWOMAN> comes home in one piece.~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Korgan")
	~
	@1692 /* ~Thank you, Korgan.~*/
	//}
	
	//{ Imoen Goodbye
	== IMOEN2J
	IF ~
		IsValidForPartyDialogue("Imoen2")
	~
	@1693 /* ~Schael! I'll miss you! Please, give Liia my regards.~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Imoen2")
	~
	@1694 /* ~I will Imoen... and I'll miss you too. Take good care of your <PRO_BROTHERSISTER> for me.~*/
	//}
	
	//{ Neera Goodbye
	== NEERAJ
	IF ~
		IsValidForPartyDialogue("Neera")
	~
	@1695 /* ~Good luck with the babies! (Hee-hee)~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Neera")
	~
	@1696 /* ~Sorry, what was that?~*/
	
	== NEERAJ
	IF ~
		IsValidForPartyDialogue("Neera")
	~
	@1697 /* ~I said, good luck with the baby!~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Neera")
	~
	@1698 /* ~Thank you, Neera. I appreciate it.~  */
	//}

	//{ Valygar Goodbye
	== VALYGARJ
	IF ~
		IsValidForPartyDialogue("Valygar")
	~
	@1699 /* ~Take care of yourself, Major.~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Valygar")
	~
	@1700 /* ~You too, Valygar.~ */
	//}

	//{ Rasaad Goodbye
	== RASAADJ
	IF ~
		IsValidForPartyDialogue("Rasaad")
	~
	@1701 /* ~Schael — I shall miss you, my friend.~ */
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Rasaad")
	~
	@1702 /* ~I'll miss you too Rasaad. Take care of yourself.~ */
	//}
	
	//{ Jaheira Goodbye
	== JAHEIRAJ
	IF ~
		IsValidForPartyDialogue("Jaheira")
	~
	@1703 /* ~Though it must hurt to leave <PRO_HISHER>, in time you'll realize that you've made the right decision, Schael. The battlefield is no place for an expecting mother.~ */
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Jaheira")
	~
	@1704 /* ~Right... thank you Jaheira.~*/
	//}
	
	//{ Nalia Goodbye
	== NALIAJ
	IF ~
		IsValidForPartyDialogue("Nalia")
	~
	@1705 /* ~I'll miss our little discussions on the plight of the poor, and how best to tackle the inequality that plagues our cities.~ */
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Nalia")
	~
	@1706 /* ~I... won't. But I'll miss you, Nalia.~ */
	//}
	
	//{ Mazzy Goodbye
	== MAZZYJ
	IF ~
		IsValidForPartyDialogue("Mazzy")
	~
	@1707 /* ~Schael, I'm fortunate to have been able to fight alongside you these past months. You will be missed, by all of us.~ */
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Mazzy")
	~
	@1708 /* ~And I'm fortunate to be able to call you a friend, Mazzy. Be well.~*/
	//}

	//{ HaerDalis Goodbye
	== HAERDAJ
	IF ~
		IsValidForPartyDialogue("HaerDalis")
	~
	@1717/*  ~Alas, it is time for my raven to take flight and return to her nest.~ */
	
	== HAERDAJ
	IF ~
		IsValidForPartyDialogue("HaerDalis")
	~
	@1718 /* ~Goodbye, Haer'Dalis.~ */
	//}
	
	//{ Jan Goodbye
	== JANJ
	IF ~
		IsValidForPartyDialogue("Jan")
	~
	@1721 /* ~This reminds me of the time when —~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Jan")
	~
	@1722 /* ~Jan. I'll miss you, too.~*/
	
	== JANJ
	IF ~
		IsValidForPartyDialogue("Jan")
	~
	@1723 /* ~Aye. Before you go Schael, take this recipe. It's for a buttered turnip puree. My children loved it when they were wee small.~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Jan")
	~
	@1720 /* ~That's very kind of you. Thank you.~*/
	//}
END XACORWIJ XA_GoodbyeChainEnd