BEGIN ~LCCOOK~

IF ~
	!Global("LCA_CookGreeting", "GLOBAL", 1)
	InPartySlot(LastTalkedToBy, 0)
~ THEN BEGIN LCA_Greeting
	SAY @176 /* ~Hello! The Duke's daughter said we might be having visitors. I just heated up some Sembian meatballs - would you like to try some?~  */
	
	IF ~~ THEN REPLY @177 /* ~Sure!~*/
	DO ~
		SetGlobal("LCA_CookGreeting", "GLOBAL", 1)
	~
	GOTO LCA_EatMeatballsChain
	
	IF ~~ THEN REPLY @178 /* ~No thanks, I'm not hungry.~*/
	DO ~
		SetGlobal("LCA_CookGreeting", "GLOBAL", 1)
	~
	EXIT
END

IF ~
	Global("LCA_CookGreeting", "GLOBAL", 1)
	InPartySlot(LastTalkedToBy, 0)
	!Global("LCA_SembianMeatballs", "GLOBAL", 1)
~ THEN BEGIN LCA_TryMeatballs
	SAY @192 /* ~Hello again.~ */
	
	IF ~~ THEN REPLY @193 /* ~About those meatballs - could I try some?~ */
	GOTO LCA_EatMeatballsChain
END

IF ~
	Global("LCA_CookGreeting", "GLOBAL", 1)
	InPartySlot(LastTalkedToBy, 0)
	Global("LCA_SembianMeatballs", "GLOBAL", 1)
	!Global("LCA_MoreMeatballs", "GLOBAL", 1)
~ THEN BEGIN LCA_TryMeatballs
	SAY @192 /* ~Hello again.~ */
	
	IF ~~ THEN REPLY @195 /* ~I'm afraid not - if I'd known such a group of strong and hungry adventurers were coming I'd have made more. Sorry!~ */
	DO ~
		SetGlobal("LCA_MoreMeatballs", "GLOBAL", 1)
	~
	EXIT
END

IF ~
	True()
~ THEN BEGIN LCA_DefaultGreeting
	SAY @184 /* ~Visitors, welcome!~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_AteMeatballs
	SAY @190 /* ~Well?~ */
	
	IF ~~ THEN REPLY @180 /* ~Mmm - they taste great! Thanks!~*/
	GOTO LCA_YoureWelcome
	
	IF ~
		IsValidForPartyDialogue("Nalia")
	~
	EXTERN NALIAJ LCA_RefuseMeatballs
END

IF ~~ THEN BEGIN LCA_NaliaRefused
	SAY @185 /* ~Huh?~ */
	
	IF ~~ THEN REPLY @182 /* ~Don't mind her. She's hopelessly obsessed with virtue signalling. The meatballs were delicious - thank you.~ */
	GOTO LCA_YoureWelcome
END

IF ~~ THEN BEGIN LCA_YoureWelcome
	SAY @181 /* ~You're very welcome!~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_SembianMeatballs", "GLOBAL", 1)
		ChangeStat(Myself, MAXHITPOINTS, 2, ADD)
	~
	EXIT
END

CHAIN
	IF ~~ THEN LCCOOK LCA_EatMeatballsChain
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
		== LCCORWIJ
		IF ~
			IsValidForPartyDialogue("LCCORWIN")
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
END LCCOOK LCA_AteMeatballs