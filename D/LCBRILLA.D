BEGIN ~LCBRILLA~

IF ~
	IsGabber(Player1)
	!Global("LCA_TalkedToBrilla", "GLOBAL", 1)
~ THEN BEGIN LCA_GreetPlayer
	SAY @175 /* ~Oh it's you! You're <CHARNAME>, the <PRO_MANWOMAN> who saved my precious Skie!~*/
	= @176 /* ~(She gives you a hug.)~*/
	= @177 /* ~Thank you!~ */
	
	/* */
	IF ~~ THEN REPLY @178 /* ~You're welcome. I'm glad Skie is alright.~*/
	DO ~
		SetGlobal("LCA_TalkedToBrilla", "GLOBAL", 1)
	~
	GOTO LCA_GreetPlayer2
	
	IF ~~ THEN REPLY @179 /* ~I did it as much for her as for me. Your husband eventually would have hunted me down had I not saved your daughter.~ */
	DO ~
		SetGlobal("LCA_TalkedToBrilla", "GLOBAL", 1)
	~
	GOTO LCA_GreetPlayer2
	
	IF ~~ THEN REPLY @180 /* ~I told her that accompanying the coalition was a mistake. It nearly got her killed. You and your husband should have told her the same.~ */
	DO ~
		SetGlobal("LCA_TalkedToBrilla", "GLOBAL", 1)
	~
	GOTO LCA_GreetPlayer2
END

IF ~~ THEN BEGIN LCA_WillTalkToSkieAndMelkor
	SAY @206 /* ~Thank you... if there's anything you can do, we'd be in your debt.~*/
	
	IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN LCA_GreetPlayer2
	SAY @181 /* ~Be that as it may, I'm afraid we need your help once again.~ */
	= @182 /* ~Skie has not been the same since she was restored. She's become... obsessive she... rambles on and on about the other souls that are trapped in the dagger, and nothing we've done seems to help.~ */
	= @184 /* ~You've done so much for us, and for the city already. If you can, please speak to the wizard Melkor, in the next room. He has a theory on how the souls within the dagger can be freed. I hope that once they are, Skie will return to normal.~ */
	
	IF ~
		Global("LCA_TalkedToMelkor", "GLOBAL", 1)
		!Global("LCA_TalkedToSkie", "GLOBAL", 1)
	~ THEN REPLY @205 /* ~I'll talk to Skie and Melkor to see if there's anything that can be done.~*/
	GOTO LCA_WillTalkToSkieAndMelkor
	
	IF ~
		Global("LCA_TalkedToMelkor", "GLOBAL", 1)
		Global("LCA_TalkedToSkie", "GLOBAL", 1)
		!Global("LCA_ConcernedAboutSkie", "GLOBAL", 1)
	~ THEN REPLY @205 /* ~I'll talk to Skie and Melkor to see if there's anything that can be done.~*/
	GOTO LCA_WillTalkToSkieAndMelkor
	
	IF ~
		!Global("LCA_TalkedToMelkor", "GLOBAL", 1)
	~ THEN REPLY @193 /* ~I'll talk to him and see what can be done for Skie.~ */
	GOTO LCA_WillTalkToMelkor
	
	IF ~
		Global("LCA_TalkedToMelkor", "GLOBAL", 1)
		Global("LCA_TalkedToSkie", "GLOBAL", 1)
		Global("LCA_ConcernedAboutSkie", "GLOBAL", 1)
	~ THEN REPLY @185 /* ~I've already spoken to him, and I've agreed to help. I will petition the Dukes to release the dagger to me. Once I have it, I'll work to release those still trapped within.~ */
	GOTO LCA_TalkedToMelkor
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @188 /* ~Look - I just got back from an arduous and exhausting journey. More than anything, I want to settle down and relax with the woman I love.~*/
	GOTO LCA_WantVacation
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @187 /* ~Look - I just got back from an arduous and exhausting journey. More than anything, I need a nice, long rest.~*/
	GOTO LCA_WantVacation
END

IF ~~ THEN BEGIN LCA_WantVacation
	SAY @189 /* ~I understand... you've been through hell and back, and - ~ */
	
	IF ~~ THEN REPLY @190 /* ~(Interrupt her.) Literally. On two separate occasions.~*/
	GOTO LCA_WantVacation2
END

IF ~~ THEN BEGIN LCA_WantVacation2
	SAY @191 /* ~I - oh, my... I didn't know.~*/
	=@198 /* ~Please, just talk to Melkor. If there's anything you can do, my husband and I will be in your debt.~*/
	
	
	IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN LCA_TalkedToMelkor
	SAY @186 /* ~Oh, thank you! With your help, Skie will be herself again. You really are a hero, you know.~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_WillTalkToMelkor
	SAY @193 /* ~Thank you so much! My husband and I are in your debt.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	!Global("LCA_BrillaCorwin", "LOCALS", 1)
	IsGabber("LCCORWIN")
~ THEN BEGIN LCA_CorwinGreeting
	SAY @195 /* ~Captain, it's good to see you again. I trust your family is well?~ */
	
	IF ~
		!Global("LCA_CorwinMetFamily", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("LCA_BrillaCorwin", "LOCALS", 1)
	~
	EXTERN LCCORWIJ LCA_CorwinBrillaChainNotMetFamily
	
	IF ~
		Global("LCA_CorwinMetFamily", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("LCA_BrillaCorwin", "LOCALS", 1)
	~
	EXTERN LCCORWIJ LCA_CorwinBrillaChainMetFamily
END

IF ~
	True()
~ THEN BEGIN LCA_DefaultGreeting
	SAY @204 /* ~Please, make yourself at home.~*/
	
	IF ~~ THEN EXIT
END

CHAIN 
	IF ~~ THEN LCCORWIJ LCA_CorwinBrillaChainNotMetFamily
		@200 /* ~We are heading over to see them shortly, Lady Silvershield. Thank you for asking.~*/
		== LCBRILLA
		@201 /* ~I see. Time spent with family is precious, Captain. Waste not a single moment.~ */		
EXIT

CHAIN 
	IF ~~ THEN LCCORWIJ LCA_CorwinBrillaChainMetFamily
		@199 /* ~My father and daughter are well, Lady Silvershield. Thank you for asking.~ */
		== LCBRILLA
		@196 /* ~Would that I could say the same for mine...~ */
		== LCCORWIJ
		@202 /* ~Sorry? I didn't catch that.~*/
		== LCBRILLA
		@203 /* ~Oh, don't mind me... Please, make yourself at home, Captain.~*/
	
EXIT


