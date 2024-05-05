//Modifications to the Trial sequence at the end of SoD
//Daniel Valle
//dan@danielvalle.net

/* Revision History

2022-12-04: Initial Commit

*/

ADD_TRANS_TRIGGER BDBELT 6
~
	OR(2)
		Dead("Corwin")
		GlobalLT("XA_LC_CorwinWitnessedDuel", "GLOBAL", 1)
~

EXTEND_BOTTOM BDBELT 6
	IF ~
		!Dead("Corwin")
		GlobalGT("XA_LC_CorwinWitnessedDuel", "GLOBAL", 0)
	~ THEN 
	DO ~
		SetCutSceneLite(TRUE)
		SetGlobal("bd_mdd1697_plot","global",500)
		ApplySpellRES("bdslow","bence_guard")
		ApplySpellRES("bdslow","bdbence")
		ActionOverride("bdbence",MoveToPoint([743.762]))
		SmallWait(30)
		ActionOverride("bence_guard",FaceObject("bdbence"))
		ActionOverride("bdbence",Face(N))
		SmallWait(15)
		ActionOverride("bence_guard",MoveToPoint([1074.639]))
		SmallWait(6)
		ActionOverride("bdbence",MoveToPoint([1074.639]))
		Face(SSW)
		Wait(3)
		FaceObject(Player1)
		Wait(1)
		CreateCreature("XATRICOR",[941.674], S)
		SmallWait(5)
		SmallWait(5)
		ActionOverride("XATRICOR",MoveToPoint([621.720]))
		SmallWait(55)
		Face(E)
		SmallWait(25)
		Face(SSW)
		ActionOverride("XATRICOR",Face(SW))
		SmallWait(6)
		StartDialogNoSet(Player1)
	~ 
	EXIT
END


APPEND BDBELT
	
	IF ~
		Global("bd_mdd1697_plot","global",500)
	~ THEN BEGIN XAA1
		SAY @0 /* ~Now, we will hear from Captain Schael Corwin, who accompanied the accused during their assault on Dragonspear castle.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("bd_mdd1697_plot","global",10)
			SetGlobal("XA_LC_CorwinSpokeAtTrial", "GLOBAL", 1)
		~
		EXTERN XATRICOR XA_CorwinTrial_0
	END
	
	IF ~~ THEN BEGIN XAA3
		SAY @4 /* ~Thank you, Captain, for your service. You may go.~ */
		
		IF ~~ THEN 
		DO ~
			SetCutSceneLite(TRUE)
			ActionOverride("XATRICOR",MoveToPoint([743.762]))
			SmallWait(30)
			ActionOverride("XATRICOR",MoveToPoint([1030.566]))
			Face(SSW)
			Wait(3)
			FaceObject(Player1)
			Wait(1)
			StartDialogNoSet(Player1)
		~ 
		EXIT
		
		IF ~
			OR(2)
				Global("bd_corwin_romanceactive","global",1)
				Global("bd_corwin_romanceactive","global",2)
		~ THEN
		EXTERN XATRICOR XA_CorwinTrial_1
	END
	
	IF ~~ THEN BEGIN XAA4
		SAY @6 /* ~Of course, Captain. What is it?~ */
		IF ~~ THEN
		EXTERN XATRICOR XA_CorwinTrial_2
	END
	
	IF ~~ THEN BEGIN XAA5
		SAY @8 /* ~Thank you, Captain. That will be all.~ */
		IF ~~ THEN
		DO ~
			SetCutSceneLite(TRUE)
			ActionOverride("XATRICOR",MoveToPoint([743.762]))
			SmallWait(30)
			ActionOverride("XATRICOR",MoveToPoint([1030.566]))
			Face(SSW)
			Wait(3)
			FaceObject(Player1)
			Wait(1)
			StartDialogNoSet(Player1)
		~ 
		EXIT
	END
END
