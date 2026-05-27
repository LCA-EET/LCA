APPEND_EARLY XACORWIJ
	//{ Restringing knowledge
	IF ~
		Global("XA_LC_CorwinLearnedRestring", "GLOBAL", 3)
	~ THEN BEGIN XA_Restringing_1
		SAY @1909 /* ~This is excellent...~ */
		
		IF ~~ THEN REPLY @1910 /*~Hm?~	*/
		GOTO XA_Restringing_2
		
		IF ~~ THEN REPLY @1911 /*~What is?~	*/
		GOTO XA_Restringing_2
		
		IF ~~ THEN REPLY @1912 /*~Happy with the improvements to your bow I take it?~	*/
		GOTO XA_Restringing_2
	END
	
	IF ~~ THEN BEGIN XA_Restringing_2
		SAY @1913/*~The magical bowstring. I saw enough of the restringing enchantment that I should be able to do it myself.~*/
		
		IF ~~ THEN REPLY @1914/*	~I see.~*/
		GOTO XA_Restringing_End
		
		IF ~~ THEN REPLY @1916 /* ~You mean you couldn't before?~*/
		GOTO XA_Restringing_3
		
		IF ~~ THEN REPLY @1915/*~Good to know.~*/
		GOTO XA_Restringing_End
	END
	
	IF ~~ THEN BEGIN XA_Restringing_3
		SAY @1917/*Well, I've restrung my bow countless times, but never using an enchanted bowstring. There's a need to attune the string to the bow, otherwise the enchantment couldn't take hold.~*/
		
		= @1918 /*~Now that I understand the process, I'll be able to restring the bow using this and possibly other enchanted bowstrings. It takes time though, and I wouldn't be able to do it in the midst of a battle.~ */
		
		IF ~~ THEN REPLY @1919 /*~I see.~ */
		GOTO XA_Restringing_End
		
		IF ~~ THEN REPLY @1920 /* ~Good to know.~*/
		GOTO XA_Restringing_End
	END
	
	IF ~~ THEN BEGIN XA_Restringing_End
		SAY @1921 /* ~The others are waiting. Let's move out.~*/
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinLearnedRestring", "GLOBAL", 4)
		~
		EXIT
	END
	//}
	
	//{ Restringing Ability
	IF ~
		RandomNum(2,1)
		Global("XARSTRNG", "GLOBAL", 1)
	~ THEN BEGIN XA_RestringAbility_Entry1
		/*
			Corwin's Bow + 2: 			XACORBOW
			Corwin's Bow + 3: 			XACORBO3
			Corwin's Bow + 3 (Gesen): 	XACORBG3
			Corwin's Bow + 4 (Gesen): 	XACORBG4
			Corwin's Bow + 4 (Gond): 	XACORBO4
			Corwin's Bow + 5 (Gond): 	XACORBO5
			Gond Bowstring: 			COMPON10
			Gesen Bowstring:			BOW19B
			Unenchanted bowstring		XABOWSTR
			
			XACORBOW + COMPON10 = XACORBO4 + XABOWSTR
			XACORBOW + BOW19B	= XACORBG3 + XABOWSTR
			XACORBO3 + COMPON10 = XACORBO5 + XABOWSTR
			XACORBO3 + BOW19B	= XACORBG4 + XABOWSTR	
			XACORBO4 + XABOWSTR = XACORBOW + COMPON10
			XACORBO4 + BOW19B	= XACORBG3 + COMPON10
			XACORBO5 + XABOWSTR = XACORBO3 + COMPON10
			XACORBO5 + BOW19B	= XACORBG4 + COMPON10
			XACORBG3 + COMPON10 = XACORBO4 + BOW19B
			XACORBG3 + XABOWSTR = XACORBOW + BOW19B	
			XACORBG4 + COMPON10 = XACORBO5 + BOW19B
			XACORBG4 + XABOWSTR = XACORBO3 + BOW19B	
		*/
		SAY @1929 /* ~What are your orders, hero?~ */
		
		//{ Gond Bow Replacement
			IF ~ // OK
				HasItem("XACORBO4", Myself)
				HasItem("XABOWSTR", Myself)
			~ THEN REPLY @1922 /* ~(Replace Gond's bowstring with the unenchanted bowstring.)~*/
			DO ~
				DestroyItem("XACORBO4")
				DestroyItem("XABOWSTR")
				CreateItem("COMPON10",0,0,0)
				CreateItem("XACORBOW",0,0,0)
			~
			GOTO XA_RestringAbility_2
			
			IF ~ // OK
				HasItem("XACORBO4", Myself)
				HasItem("BOW19B", Myself) // Gesen Bowstring
			~ THEN REPLY @1923 /* ~(Replace Gond's bowstring with Gesen's bowstring.)~*/
			DO ~
				DestroyItem("XACORBO4")
				DestroyItem("BOW19B")
				CreateItem("COMPON10",0,0,0)
				CreateItem("XACORBG3",0,0,0)
			~
			GOTO XA_RestringAbility_2
			
			IF ~ // OK
				HasItem("XACORBO5", Myself)
				HasItem("XABOWSTR", Myself)
			~ THEN REPLY @1922 /* ~(Replace Gond's bowstring with the unenchanted bowstring.)~*/
			DO ~
				DestroyItem("XACORBO5")
				DestroyItem("XABOWSTR")
				CreateItem("COMPON10",0,0,0)
				CreateItem("XACORBO3",0,0,0)
			~
			GOTO XA_RestringAbility_2
			
			IF ~ // OK 
				HasItem("XACORBO5", Myself)
				HasItem("BOW19B", Myself) // Gesen Bowstring
			~ THEN REPLY @1923 /* ~(Replace Gond's bowstring with Gesen's bowstring.)~*/
			DO ~
				DestroyItem("XACORBO5")
				DestroyItem("BOW19B")
				CreateItem("COMPON10",0,0,0)
				CreateItem("XACORBG4",0,0,0)
			~
			GOTO XA_RestringAbility_2
		//}
		
		//{ Gesen Replacement
			IF ~ // OK 
				HasItem("XACORBG3", Myself)
				HasItem("XABOWSTR", Myself)
			~ THEN REPLY @1924 /* ~(Replace Gesen's bowstring with the unenchanted bowstring.)~*/
			DO ~
				DestroyItem("XACORBG3")
				DestroyItem("XABOWSTR")
				CreateItem("BOW19B",0,0,0)
				CreateItem("XACORBOW",0,0,0)
			~
			GOTO XA_RestringAbility_2
			
			IF ~ // OK 
				HasItem("XACORBG3", Myself)
				HasItem("COMPON10", Myself) // Gond Bowstring
			~ THEN REPLY @1925 /* ~(Replace Gesen's bowstring with Gond's bowstring.)~*/
			DO ~
				DestroyItem("XACORBG3")
				DestroyItem("COMPON10")
				CreateItem("BOW19B",0,0,0)
				CreateItem("XACORBO4",0,0,0)
			~
			GOTO XA_RestringAbility_2
			
			IF ~ // OK 
				HasItem("XACORBG4", Myself)
				HasItem("XABOWSTR", Myself)
			~ THEN REPLY @1924 /* ~(Replace Gesen's bowstring with the unenchanted bowstring.)~*/
			DO ~
				DestroyItem("XACORBG4")
				DestroyItem("XABOWSTR")
				CreateItem("BOW19B",0,0,0)
				CreateItem("XACORBO3",0,0,0)
			~
			GOTO XA_RestringAbility_2
			
			IF ~ // OK 
				HasItem("XACORBG4", Myself)
				HasItem("COMPON10", Myself) // Gond Bowstring
			~ THEN REPLY @1925 /* ~(Replace Gesen's bowstring with Gond's bowstring.)~*/
			DO ~
				DestroyItem("XACORBG4")
				DestroyItem("COMPON10")
				CreateItem("BOW19B",0,0,0)
				CreateItem("XACORBO5",0,0,0)
			~
			GOTO XA_RestringAbility_2
		//}
		
		//{ Unenchanted Bowstring
			IF ~ // OK
				HasItem("XACORBOW", Myself)
				HasItem("COMPON10", Myself) // Gond Bowstring
			~ THEN REPLY @1926 /* ~(Replace the unenchanted bowstring with Gond's bowstring.)~*/
			DO ~
				DestroyItem("XACORBOW")
				DestroyItem("COMPON10")
				CreateItem("XABOWSTR",0,0,0)
				CreateItem("XACORBO4",0,0,0)
			~
			GOTO XA_RestringAbility_2
			
			IF ~ // OK
				HasItem("XACORBOW", Myself)
				HasItem("BOW19B", Myself) // Gesen Bowstring
			~ THEN REPLY @1927 /* ~(Replace the unenchanted bowstring with Gesen's bowstring.)~*/
			DO ~
				DestroyItem("XACORBOW")
				DestroyItem("BOW19B")
				CreateItem("XABOWSTR",0,0,0)
				CreateItem("XACORBG3",0,0,0)
			~
			GOTO XA_RestringAbility_2
			
			IF ~ // OK
				HasItem("XACORBO3", Myself)
				HasItem("COMPON10", Myself) // Gond Bowstring
			~ THEN REPLY @1926 /* ~(Replace the unenchanted bowstring with Gond's bowstring.)~*/
			DO ~
				DestroyItem("XACORBO3")
				DestroyItem("COMPON10")
				CreateItem("XABOWSTR",0,0,0)
				CreateItem("XACORBO5",0,0,0)
			~
			GOTO XA_RestringAbility_2
			
			IF ~ // OK
				HasItem("XACORBO3", Myself)
				HasItem("BOW19B", Myself) // Gesen Bowstring
			~ THEN REPLY @1927 /* ~(Replace the unenchanted bowstring with Gesen's bowstring.)~*/
			DO ~
				DestroyItem("XACORBO3")
				DestroyItem("BOW19B")
				CreateItem("XABOWSTR",0,0,0)
				CreateItem("XACORBG4",0,0,0)
			~
			GOTO XA_RestringAbility_2
		//}
		
		IF ~~ THEN REPLY @1928 /* ~(Leave the bow as-is.)~*/
		DO ~
			SetGlobal("XARSTRNG", "GLOBAL", 0)
		~
		EXIT
	END
	IF ~
		RandomNum(2,2)
		Global("XARSTRNG", "GLOBAL", 1)
	~ THEN BEGIN XA_RestringAbility_Entry2
		SAY @1933 /*~Your orders?~ [xad10038] */
		
		COPY_TRANS XACORWIJ XA_RestringAbility_Entry1
	END
	
	IF ~~ THEN BEGIN XA_RestringAbility_2
		SAY @1930 /* ~Right.~ [xad10043]*/
		
		= @1932 /* ~(She adjusts the string on her bow.)~ [xalc7024]*/
		
		= @1931 /* ~We've work to do. Let's get moving.~ [xad10023] */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XARSTRNG", "GLOBAL", 0)
		~
		EXIT
	END
	//}
END