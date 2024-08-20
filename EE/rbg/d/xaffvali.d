BEGIN ~XAFFVALI~

IF ~
	GlobalGT("XA_LC_RohmaSaved", "GLOBAL", 0)
	IsGabber("XACORWIN")
~ THEN BEGIN XA_Evening
	SAY @14 /* ~Evening, Major.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	GlobalGT("XA_LC_RohmaSaved", "GLOBAL", 0)
	!IsGabber("XACORWIN")
	Gender(Player1, MALE)
~ THEN BEGIN XA_Evening
	SAY @15 /* ~Evening, sir.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	GlobalGT("XA_LC_RohmaSaved", "GLOBAL", 0)
	!IsGabber("XACORWIN")
	Gender(Player1, FEMALE)
~ THEN BEGIN XA_Evening
	SAY @16 /* ~Evening, ma'am.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	!Global("XA_LC_SpokeToValiant", "GLOBAL", 1)
	!IsGabber("XACORWIN")
~ THEN BEGIN XA_Greeting
	SAY @5 /* ~Can I help you?~ */
	
	IF ~~ THEN REPLY @4 /* ~You seem exceptionally well-armed and armored.~ */
	DO ~
		SetGlobal("XA_LC_SpokeToValiant", "GLOBAL", 1)
	~
	GOTO XA_Explain
	
	IF ~~ THEN REPLY @6 /* ~I heard Marshal Nederlok refer to you as a 'Valiant'. Could you explain what that is?~ */
	DO ~
		SetGlobal("XA_LC_SpokeToValiant", "GLOBAL", 1)
	~
	GOTO XA_Explain
END

IF ~~ THEN BEGIN XA_Explain
	SAY @3 /* ~The Valiant program was established by Duke Eltan shortly after the defeat of Sarevok. Our mission is to protect the Council from unusually potent threats, such as those posed by the Bhaalspawn. We are some of the most skilled fighters that the Fist has to offer.~ */
	
	IF ~~ THEN REPLY @10 /* ~Very good. As you were.~ */
	EXIT
	
	IF ~
		Gender(Player1, MALE)
	~ THEN REPLY @7 /* ~I see. Maybe you'd like to test your fighting prowess on me? I am a Bhaalspawn, after all.~ */
	GOTO XA_GetLostM

	IF ~
		!Gender(Player1, MALE)
	~ THEN REPLY @7 /* ~I see. Maybe you'd like to test your fighting prowess on me? I am a Bhaalspawn, after all.~ */
	GOTO XA_GetLostF
END

IF ~~ THEN BEGIN XA_GetLostM
	SAY @8 /* ~This is hardly the time or place. I suggest you stay focused on the task at hand, sir.~ */
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_GetLostF
	SAY @9 /* ~This is hardly the time or place. I suggest you stay focused on the task at hand, ma'am.~ */
	IF ~~ THEN EXIT
END

IF ~
	IsGabber("XACORWIN")
~ THEN BEGIN XA_CorwinGreeting
	SAY @11 /* ~We stand ready to assist in the rescue of your daughter, ma'am.~  */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(4,1)
~ THEN BEGIN XAA0
	SAY @0 /* ~Watch yourself.~*/
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(4,2)
~ THEN BEGIN XAA1
	SAY @1 /* ~The safety of the Council is my highest priority.~ */
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(4,3)
~ THEN BEGIN XAA2
	SAY @12 /* ~Tread carefully.~ */
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(4,4)
	Global("XA_LC_ByeRohma", "GLOBAL", 1)
~ THEN BEGIN XAA3
	SAY @17 /* ~I'm glad you were able to rescue the child. What they say about you is true after all, hero.~*/
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(4,4)
	GlobalLT("XA_LC_ByeRohma", "GLOBAL", 1)
~ THEN BEGIN XAA4
	SAY @13 /* ~Speak to the wizard Melkor if you require provisions.~~*/
	IF ~~ THEN EXIT
END