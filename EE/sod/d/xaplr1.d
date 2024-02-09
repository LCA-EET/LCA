APPEND ~PLAYER1~

IF ~
	Global("XA_ReadCorwinLetter", "GLOBAL", 1)
~ THEN BEGIN XA_ReadCorwinLetter
	SAY @93 /* ~(The letter reads as follows.)~ */
	
	IF ~
		Global("XA_CorwinContinue", "GLOBAL", 2)
	~ THEN
	DO ~
		SetGlobal("XA_ReadCorwinLetter", "GLOBAL", 2)
		SetGlobal("bd_plot","global",665)
	~
	GOTO XA_ReadLetter_Romantic
	
	IF ~
		Global("XA_CorwinContinue", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_ReadCorwinLetter", "GLOBAL", 2)
		SetGlobal("bd_plot","global",665)
	~
	GOTO XA_ReadLetter_Friend
END

IF ~~ THEN BEGIN XA_ReadLetter_Romantic
	SAY @95 /* ~<CHARNAME>,

	By the time you read this, you'll have escaped from the city. I'm sorry that I wasn't able to see you one last time before you left. When Belt, Eltan and Jannath made the decision to exile you, the Fist was put on high alert to prevent Entar and his associates from trying to take matters into their own hands. 

	You now have the time you need to find some way to prove your innocence. If you're able to recover the Soultaker dagger, you must send it to me. The wizards believe they can restore Skie, but only if the dagger is in their possession. Once restored, she can corroborate your account of what happened on that night in Dragonspear. With your innocence established, love, we'll be together once again.    

	I've enclosed my amulet with this letter. Wear it and know that I love you, always. 

	Yours, 

	Schael~*/
	
	IF ~~ THEN
	EXTERN BDIMOEN 92
END

IF ~~ THEN BEGIN XA_ReadLetter_Friend
	SAY @94 /* ~<CHARNAME>,

	By the time you read this, you'll have escaped from the city. I'm sorry that I wasn't able to see you one last time before you left. When Belt, Eltan and Jannath made the decision to exile you, the Fist was put on high alert to prevent Entar and his associates from trying to take matters into their own hands. 

	You now have the time you need to find some way to prove your innocence. If you're able to recover the Soultaker dagger, you must send it to me. The wizards believe they can restore Skie, but only if the dagger is in their possession. Once restored, she can corroborate your account of what happened on that night in Dragonspear. You'll be able to return to the city once your innocence is established.   

	Good luck to you, my friend. 

	Regards, 

	Captain Corwin~*/
	
	IF ~~ THEN
	EXTERN BDIMOEN 92
END
END