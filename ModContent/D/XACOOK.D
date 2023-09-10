BEGIN ~XACOOK~

IF ~
	!Global("XA_CookGreeting", "GLOBAL", 1)
	InPartySlot(LastTalkedToBy, 0)
~ THEN BEGIN XA_Greeting
	SAY @176 /* ~Hello! The Duke's daughter said we might be having visitors. I just heated up some Sembian meatballs - would you like to try some?~  */
	
	IF ~~ THEN REPLY @177 /* ~Sure!~*/
	DO ~
		SetGlobal("XA_CookGreeting", "GLOBAL", 1)
	~
	GOTO XA_EatMeatballsChain
	
	IF ~~ THEN REPLY @178 /* ~No thanks, I'm not hungry.~*/
	DO ~
		SetGlobal("XA_CookGreeting", "GLOBAL", 1)
	~
	EXIT
END

IF ~
	Global("XA_CookGreeting", "GLOBAL", 1)
	InPartySlot(LastTalkedToBy, 0)
	!Global("XA_SembianMeatballs", "GLOBAL", 1)
~ THEN BEGIN XA_TryMeatballs
	SAY @192 /* ~Hello again.~ */
	
	IF ~~ THEN REPLY @193 /* ~About those meatballs - could I try some?~ */
	GOTO XA_EatMeatballsChain
END

IF ~
	Global("XA_CookGreeting", "GLOBAL", 1)
	InPartySlot(LastTalkedToBy, 0)
	Global("XA_SembianMeatballs", "GLOBAL", 1)
	!Global("XA_MoreMeatballs", "GLOBAL", 1)
~ THEN BEGIN XA_TryMeatballs
	SAY @192 /* ~Hello again.~ */
	
	IF ~~ THEN REPLY @195 /* ~I'm afraid not - if I'd known such a group of strong and hungry adventurers were coming I'd have made more. Sorry!~ */
	DO ~
		SetGlobal("XA_MoreMeatballs", "GLOBAL", 1)
	~
	EXIT
END

IF ~
	True()
~ THEN BEGIN XA_DefaultGreeting
	SAY @184 /* ~Visitors, welcome!~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_AteMeatballs
	SAY @190 /* ~Well?~ */
	
	IF ~~ THEN REPLY @180 /* ~Mmm - they taste great! Thanks!~*/
	GOTO XA_YoureWelcome
	
	IF ~
		IsValidForPartyDialogue("Nalia")
	~
	EXTERN NALIAJ XA_RefuseMeatballs
END

IF ~~ THEN BEGIN XA_NaliaRefused
	SAY @185 /* ~Huh?~ */
	
	IF ~~ THEN REPLY @182 /* ~Don't mind her. She's hopelessly obsessed with virtue signalling. The meatballs were delicious - thank you.~ */
	GOTO XA_YoureWelcome
END

IF ~~ THEN BEGIN XA_YoureWelcome
	SAY @181 /* ~You're very welcome!~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_SembianMeatballs", "GLOBAL", 1)
		ChangeStat(Myself, MAXHITPOINTS, 2, ADD)
	~
	EXIT
END

CHAIN
	IF ~~ THEN XACOOK XA_EatMeatballsChain
		@179 /* ~Here you go!~ */
		== JANJ
		IF ~
			IsValidForPartyDialogue("Jan")
		~
		@183 /* ~Oh, they're delicious my dear! To take them to the next level, you should add some diced turnips to the sauce.~ */
		DO ~
			ChangeStat(Myself, MAXHITPOINTS, 2, ADD)
		~
		== AERIEJ
		IF ~
			IsValidForPartyDialogue("Aerie")
		~
		@187 /* ~Thank you.. they taste g-great.~ */
		DO ~
			ChangeStat(Myself, MAXHITPOINTS, 2, ADD)
		~
		== VICONIJ
		IF ~
			IsValidForPartyDialogue("Viconia")
		~
		@196 /* ~Quite tasty. Thank you.~*/
		DO ~
			ChangeStat(Myself, MAXHITPOINTS, 2, ADD)
		~
		== XACORWIJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@188 /* ~They're great! My daughter loves meatballs - I wish she were here to try these.~ */
		DO ~
			ChangeStat(Myself, MAXHITPOINTS, 2, ADD)
		~
		== ANOMENJ
		IF ~
			IsValidForPartyDialogue("Anomen")
		~ 
		@189 /* ~Mm. Very good. Thank you, dear lady.~ */
		DO ~
			ChangeStat(Myself, MAXHITPOINTS, 2, ADD)
		~
END XACOOK XA_AteMeatballs