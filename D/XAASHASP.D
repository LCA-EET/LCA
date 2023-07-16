BEGIN ~XAASHASP~

IF ~
	Global("XA_HelpAshatiel", "GLOBAL", 1)
~ THEN BEGIN XA_AgreedToHelp
	SAY @28 /* ~Remember, you must bring Caelar here so that she can release us from our oath. Only then will we be able to move on to whatever awaits us.~*/
	
	IF ~~ THEN 
	EXIT
END

IF ~
	Global("XA_ShowCrusaders", "GLOBAL", 1)
~ THEN BEGIN XA_ShowCrusaders
	SAY @11 /* ~You've no reason to help us. To go back to that horrible place, and rescue our Shining Lady... All I can offer you is our eternal gratitude.~*/
	
	IF ~~ THEN REPLY @12 /* ~I barely escaped the first time. I'm sorry, 
	but there's no way I'm going back there.~*/
	DO ~
		SetGlobal("XA_ShowCrusaders", "GLOBAL", 2)
	~
	GOTO XA_GoInPeace
	
	IF ~~ THEN REPLY @18 /* ~Since we last met, I've gained access to a planar gate. Perhaps I can use it to reach Avernus.~ */
	DO ~
		SetGlobal("XA_ShowCrusaders", "GLOBAL", 2)
		SetGlobal("XA_HelpAshatiel", "GLOBAL", 1)
	~
	
	IF ~~ THEN REPLY @27 /* ~I won't help you. Caelar is exactly where she belongs.~ */
	DO ~
		SetGlobal("XA_ShowCrusaders", "GLOBAL", 2)
	~
	GOTO XA_GoInPeace
END

IF ~
	Global("XA_AshatielSpirit", "GLOBAL", 1)
~ THEN BEGIN XA_Intro
	SAY @0 /* ~<CHARNAME>... You've returned.~*/
	
	IF ~~ THEN REPLY @1 /* ~I recognize you... Ashatiel. Caelar's right hand.~*/
	DO ~
		SetGlobal("XA_AshatielSpirit", "GLOBAL", 2)
	~
	GOTO XA_Ashatiel
	
	IF ~~ THEN REPLY @19 /* ~I recognize you... Ashatiel. The Shining Lady's lapdog.~*/
	DO ~
		SetGlobal("XA_AshatielSpirit", "GLOBAL", 2)
	~
	GOTO XA_Ashatiel
	
	IF ~~ THEN REPLY @23 /* ~I remember you, Ashatiel. You were as brave as you were foolish.~*/
	DO ~
		SetGlobal("XA_AshatielSpirit", "GLOBAL", 2)
	~
	GOTO XA_Ashatiel
END

IF ~~ THEN BEGIN XA_Ashatiel
	SAY @2 /* ~Why are you here?~ */
	
	IF ~~ THEN REPLY @3 /* ~I could ask you the same thing. Why haven't you moved on, spirit? The entrance to the Fugue Plane is but a few paces away.~*/
	GOTO XA_Oath
	
	IF ~~ THEN REPLY @22 /* ~It's none of your concern, spirit.~ */
	GOTO XA_Oath
	
	IF ~~ THEN REPLY @24 /* ~To kill you once again, spirit!~ */
	GOTO XA_CantDie
END

IF ~~ THEN BEGIN XA_CantDie
	SAY @25 /*~If that were possible, I'd welcome it.~ */
	
	IF ~~ THEN 
	GOTO XA_Oath
END

IF ~~ THEN BEGIN XA_Oath
	SAY @6 /*~The Shining Lady's most devoted followers swore an oath to serve her in life... and in death. Those who took part in the ritual... we're still bound by that oath.~*/
	
	IF ~~ THEN REPLY @7 /*~Wait... if you're still bound to serve her, that must mean...~*/
	GOTO XA_CaelarAlive
END

IF ~~ THEN BEGIN XA_CaelarAlive
	SAY @8 /* ~Yes. She's still alive, in Avernus. Though, something has changed...~*/
	
	IF ~~ THEN REPLY @9 /* ~She still lives!? After all this time?~*/
	GOTO XA_CaelarAlive2
	
	IF ~~ THEN REPLY @10 /* ~That she's still alive doesn't surprise me.~ */
	GOTO XA_CaelarAlive2
	
	IF ~~ THEN REPLY @13 /* ~You said something has changed. What did you mean?~ */
	GOTO XA_CaelarAlive2
END

IF ~~ THEN BEGIN XA_CaelarAlive2
	SAY @14 /* ~We're bound to her life force. Until recently, it was very strong. Now, it is very faint. I feel as though something terrible has happened to her.~ */
	
	IF ~~ THEN REPLY @15 /* ~If that's the case, then she'll be dead soon enough. You'll be free to move on, spirit.~*/
	GOTO XA_HelpCaelar
	
	IF ~~ THEN REPLY @20 /* ~We? How many of you are there?~ */
	GOTO XA_HowMany
END

IF ~~ THEN BEGIN XA_HowMany
	SAY @21 /* ~See for yourself. Crusaders! Reveal yourselves!~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_ShowCrusaders", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_HelpCaelar
	SAY @16 /* Perhaps... but if there's a way you can help her, in spite of the death and destruction that she — that *we* caused.~*/
	
	IF ~~ THEN 
	GOTO XA_HelpCaelar2
END

IF ~~ THEN BEGIN XA_HelpCaelar2
	SAY @11 /* ~You've no reason to help us. To go back to that horrible place... All I can offer you is our eternal gratitude.~*/
	
	IF ~~ THEN REPLY @12 /* ~I barely escaped the first time. I'm sorry, but there's no way I'm going back there.~*/
END

IF ~~ THEN BEGIN XA_GoInPeace
	SAY @17 /*~I understand. Go in peace, <CHARNAME>.~*/
	
	IF ~~ THEN
	EXIT
END