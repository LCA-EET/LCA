APPEND XACOR25J
	IF ~
		Global("XA_LC_CorwinIrenicusFight", "GLOBAL", 1)
	~ THEN BEGIN XA_LC_Fight
		SAY @17 /*~Back to the hells with you, wizard! Allies, to me!~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinIrenicusFight", "GLOBAL", 2)
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_TLR_CorwinUpset", "LOCALS", 1)
	~ THEN BEGIN XA_LC_Warning
		SAY @8 /*~You've made a terrible mistake. An unforgivable mistake... one that I intend to correct sooner rather than later.~*/
		
		IF ~~ THEN REPLY @9 /*~I don't understand.~*/
		DO ~
			SetGlobal("XA_LC_TLR_CorwinUpset", "LOCALS", 2)
		~
		GOTO XA_LC_Warning2
		
		IF ~~ THEN REPLY @14 /*~A mistake? What do you mean?~*/
		DO ~
			SetGlobal("XA_LC_TLR_CorwinUpset", "LOCALS", 2)
		~
		GOTO XA_LC_Warning2
	END
	
	IF ~~ THEN BEGIN XA_LC_Warning2
		SAY @10 /*~You know exactly what I mean! You brought Irenicus back, after all that he did to you! To us! I had - have - a mission to kill or capture that wizard, and by the gods I will carry it out.~*/
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @11 /*~Major, I understand that you're upset —~*/
		GOTO XA_LC_Warning3
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @13 /*~Love, I understand that you're upset —~ */
		GOTO XA_LC_Warning3
		
		IF ~~ THEN REPLY @15 /*~He deserves a second chance.~*/
		GOTO XA_LC_Warning4
	END
	
	IF ~~ THEN BEGIN XA_LC_Warning3
		SAY @12 /*~I don't want to hear it! You've made your choice, and I've made mine. Let's go.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobalTimer("XA_LC_CorwinIrenicusFightTimer", "GLOBAL", ONE_HOUR)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LC_Warning4
		SAY @16 /*~Shut it! I believe in second chances. Tymora knows that I've made the most of mine. I don't believe in third chances, and I can't believe that you'd be so foolish, so... so STUPID to give one to that madman. You've made your choice, and I've made mine. Let's go.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobalTimer("XA_LC_CorwinIrenicusFightTimer", "GLOBAL", ONE_HOUR)
		~
		EXIT
	END
END