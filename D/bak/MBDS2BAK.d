//Modifications to IDJINNI.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-08-25: Initial Commit

*/

ADD_TRANS_TRIGGER BDSCHAE2 79
~!Global("LCA_Override", "Global", 1)~

EXTEND_BOTTOM BDSCHAE2 79
	IF ~ 
		Global("LCA_Override", "Global", 1) 
	~
	THEN REPLY @9 /* ~It was love, Schael. It was - it IS - real.~ */
	GOTO 83
	
	IF ~ 
		Global("LCA_Override", "Global", 1) 
	~
	THEN REPLY @10 /*~Love makes fools of us all.~ */
	GOTO 83
	
	IF ~ 
		Global("LCA_Override", "Global", 1) 
	~
	THEN REPLY @11 /*~You know what we had. Deny it if you must. I know the truth.~ */
	GOTO 83
END

ADD_TRANS_TRIGGER BDSCHAE2 84
~!Global("LCA_Override", "Global", 1)~

EXTEND_BOTTOM BDSCHAE2 84 //love
	IF ~ 
		Global("LCA_Override", "Global", 1) 
	~
	THEN REPLY @12 /* ~My love, do not succumb to despair. This isn't over yet.~ */
	GOTO M2
	
	IF ~ 
		Global("LCA_Override", "Global", 1) 
	~
	THEN REPLY @13 /* ~So long as you love me, I have hope.~ */
	GOTO M2
	
	IF ~ 
		Global("LCA_Override", "Global", 1) 
	~
	THEN REPLY @14 /* ~Let's see how we're feeling after you release me from this wretched cell.~ */
	GOTO M2
END

ADD_TRANS_TRIGGER BDSCHAE2 86 //friendship
~!Global("LCA_Override", "Global", 1)~

EXTEND_BOTTOM BDSCHAE2 86
	IF ~ 
		Global("LCA_Override", "Global", 1) 
	~
	THEN REPLY @4 /* ~Do not succumb to despair, Schael. This isn't over yet.~ */
	GOTO M2
	
	IF ~ 
		Global("LCA_Override", "Global", 1) 
	~
	THEN REPLY @5 /* ~So long as I have friends who believe in me, I have hope.~ */
	GOTO M2
	
	IF ~ 
		Global("LCA_Override", "Global", 1) 
	~
	THEN REPLY @6 /* ~Let's see how we're feeling after you release me from this wretched cell.~ */
	GOTO M2
END

APPEND BDSCHAE2
	IF ~~ THEN BEGIN M0 // from: 87.0
		SAY @0 /* ~I must go now, <CHARNAME>. I know this is as hard for you as it is for me. Farewell.~ */
		IF ~Global("bd_corwin_romanceactive","global",2)~ THEN 
			DO ~
				SetGlobal("LCA_CorwinContinue","Global",2) // continue romance
				AddJournalEntry(@15, INFO)
				EscapeArea()
			~ 
		EXIT
		
		IF ~~ THEN 
		DO ~ 
			SetGlobal("LCA_CorwinContinue","Global",1) // continue friendship
			EscapeArea()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN M1 // from: 87.0
		SAY @1 /* ~Maybe then, <CHARNAME>, we can finally be together.~ */
		IF ~~ THEN REPLY @2 /* ~We will be, my love. I swear it.~ */ 
		GOTO M0
		
		IF ~~ THEN REPLY @3 /* ~I hope so, Schael. Gods willing, I hope so.~ */ 
		GOTO M0
	END
	
	IF ~~ THEN BEGIN M2
		SAY @7 	/* ~Don't lose hope. I won't stop advocating your innocence to the Dukes. In the meantime, we need to get you out of the city and away from Entar before he tries something.~ */
		=@8 	/* ~Once you're safely away from the city, you'll have the time you need to find some way to prove your innocence.~ */
		IF ~
			Global("bd_corwin_romanceactive","global",2)
		~
		THEN GOTO M1
		
		IF ~~ THEN GOTO M0
	END
END

