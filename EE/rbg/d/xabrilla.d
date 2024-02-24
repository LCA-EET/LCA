BEGIN ~XABRILLA~

IF ~
	!Global("XA_TalkedToBrilla", "GLOBAL", 1)
~ THEN BEGIN XA_GreetPlayer
	SAY @175 /* ~Oh it's you! You're <CHARNAME>, the <PRO_MANWOMAN> who saved my precious Skie!~*/

	= @177 /* ~Thank you!~ */

	IF ~
		!Global("XA_SkieModActive", "GLOBAL",1)
	~ THEN REPLY @178 /* ~You're welcome. I'm glad Skie is alright.~*/
	DO ~
		SetGlobal("XA_TalkedToBrilla", "GLOBAL", 1)
	~
	GOTO XA_GreetPlayer2
	
	IF ~
		!Global("XA_SkieModActive", "GLOBAL",1)
	 ~ THEN REPLY @179 /* ~I did it as much for her as for me. Your husband eventually would have hunted me down had I not saved your daughter.~ */
	DO ~
		SetGlobal("XA_TalkedToBrilla", "GLOBAL", 1)
	~
	GOTO XA_GreetPlayer2
	
	IF ~
		!Global("XA_SkieModActive", "GLOBAL",1)
	~ THEN REPLY @180 /* ~I told her that accompanying the coalition was a mistake. It nearly got her killed. You and your husband should have told her the same.~ */
	DO ~
		SetGlobal("XA_TalkedToBrilla", "GLOBAL", 1)
	~
	GOTO XA_GreetPlayer2
	
	IF ~
		Global("XA_SkieModActive", "GLOBAL",1)
	~ THEN REPLY @178 /* ~You're welcome. I'm glad Skie is alright.~*/
	DO ~
		SetGlobal("XA_TalkedToBrilla", "GLOBAL", 1)
	~
	GOTO XA_DefaultGreeting
	
	IF ~
		Global("XA_SkieModActive", "GLOBAL",1)
	 ~ THEN REPLY @179 /* ~I did it as much for her as for me. Your husband eventually would have hunted me down had I not saved your daughter.~ */
	DO ~
		SetGlobal("XA_TalkedToBrilla", "GLOBAL", 1)
	~
	GOTO XA_GreetPlayer2A
	
	IF ~
		Global("XA_SkieModActive", "GLOBAL",1)
	~ THEN REPLY @180 /* ~I told her that accompanying the coalition was a mistake. It nearly got her killed. You and your husband should have told her the same.~ */
	DO ~
		SetGlobal("XA_TalkedToBrilla", "GLOBAL", 1)
	~
	GOTO XA_GreetPlayer2B
END

IF ~~ THEN BEGIN XA_GreetPlayer2A
	SAY @207  /*~Yes... it was awful how he treated you. If he could take what he said and did back, he would.~  */
	= @208 /* ~He'll see you at the debriefing tomorrow. I expect he will want to apologize in person.~*/
	
	IF ~~ THEN
	GOTO XA_DefaultGreeting
END

IF ~~ THEN BEGIN XA_GreetPlayer2B
	SAY @209  /*~Skie has always been impulsive. Telling her 'no' would've made no difference, I'm afraid.~  */
	IF ~~ THEN
	GOTO XA_DefaultGreeting
END

IF ~~ THEN BEGIN XA_WillTalkToSkieAndMelkor
	SAY @206 /* ~Thank you... if there's anything you can do, we'd be in your debt.~*/
	
	IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN XA_GreetPlayer2
	SAY @181 /* ~Be that as it may, I'm afraid we need your help once again.~ */
	= @182 /* ~Skie has not been the same since she was restored. She's become... obsessive she... rambles on and on about the other souls that are trapped in the dagger, and nothing we've done seems to help.~ */
	= @184 /* ~You've done so much for us, and for the city already. If you can, please speak to the wizard Melkor, in the next room. He has a theory on how the souls within the dagger can be freed. I hope that once they are, Skie will return to normal.~ */
	
	IF ~
		Global("XA_TalkedToMelkor", "GLOBAL", 1)
		!Global("XA_TalkedToSkie", "GLOBAL", 1)
	~ THEN REPLY @205 /* ~I'll talk to Skie and Melkor to see if there's anything that can be done.~*/
	GOTO XA_WillTalkToSkieAndMelkor
	
	IF ~
		Global("XA_TalkedToMelkor", "GLOBAL", 1)
		Global("XA_TalkedToSkie", "GLOBAL", 1)
		!Global("XA_ConcernedAboutSkie", "GLOBAL", 1)
	~ THEN REPLY @205 /* ~I'll talk to Skie and Melkor to see if there's anything that can be done.~*/
	GOTO XA_WillTalkToSkieAndMelkor
	
	IF ~
		!Global("XA_TalkedToMelkor", "GLOBAL", 1)
	~ THEN REPLY @192 /* ~I'll talk to him and see what can be done for Skie.~ */
	GOTO XA_WillTalkToMelkor
	
	IF ~
		Global("XA_TalkedToMelkor", "GLOBAL", 1)
		Global("XA_TalkedToSkie", "GLOBAL", 1)
		Global("XA_ConcernedAboutSkie", "GLOBAL", 1)
	~ THEN REPLY @185 /* ~I've already spoken to him, and I've agreed to help. I will petition the Dukes to release the dagger to me. Once I have it, I'll work to release those still trapped within.~ */
	GOTO XA_TalkedToMelkor
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @188 /* ~Look - I just got back from an arduous and exhausting journey. More than anything, I want to settle down and relax with the woman I love.~*/
	GOTO XA_WantVacation
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @187 /* ~Look - I just got back from an arduous and exhausting journey. More than anything, I need a nice, long rest.~*/
	GOTO XA_WantVacation
END

IF ~~ THEN BEGIN XA_WantVacation
	SAY @189 /* ~I understand... you've been through hell and back, and - ~ */
	
	IF ~~ THEN REPLY @190 /* ~(Interrupt her.) Literally. On two separate occasions.~*/
	GOTO XA_WantVacation2
END

IF ~~ THEN BEGIN XA_WantVacation2
	SAY @191 /* ~I - oh, my... I didn't know.~*/
	=@198 /* ~Please, just talk to Melkor. If there's anything you can do, my husband and I will be in your debt.~*/
	
	
	IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN XA_TalkedToMelkor
	SAY @186 /* ~Oh, thank you! With your help, Skie will be herself again. You really are a hero, you know.~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_WillTalkToMelkor
	SAY @193 /* ~Thank you so much! My husband and I are in your debt.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	!Global("XA_BrillaCorwin", "LOCALS", 1)
	IsGabber("XACORWIN")
~ THEN BEGIN XA_CorwinGreeting
	SAY @195 /* ~Captain, it's good to see you again. I trust your family is well?~ */
	
	IF ~
		!Global("XA_CorwinMetFamily", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_BrillaCorwin", "LOCALS", 1)
	~
	EXTERN XACORWIJ XA_CorwinBrillaChainNotMetFamily
	
	IF ~
		Global("XA_CorwinMetFamily", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_BrillaCorwin", "LOCALS", 1)
	~
	EXTERN XACORWIJ XA_CorwinBrillaChainMetFamily
END

IF ~
	True()
~ THEN BEGIN XA_DefaultGreeting
	SAY @204 /* ~Please, make yourself at home.~*/
	
	IF ~~ THEN EXIT
END

CHAIN 
	IF ~~ THEN XACORWIJ XA_CorwinBrillaChainNotMetFamily
		@200 /* ~We are heading over to see them shortly, Lady Silvershield. Thank you for asking.~*/
		== XABRILLA
		@201 /* ~I see. Time spent with family is precious, Captain. Waste not a single moment.~ */		
EXIT

CHAIN 
	IF ~~ THEN XACORWIJ XA_CorwinBrillaChainMetFamily
		@199 /* ~My father and daughter are well, Lady Silvershield. Thank you for asking.~ */
		== XABRILLA
		@196 /* ~Would that I could say the same for mine...~ */
		== XACORWIJ
		@202 /* ~Sorry? I didn't catch that.~*/
		== XABRILLA
		@203 /* ~Oh, don't mind me... Please, make yourself at home, Captain.~*/
	
EXIT


