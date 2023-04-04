//Modifications to HARBOR.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-11-17: Initial Commit
*/

ADD_TRANS_TRIGGER HARBOR 9
~
	!Global("LCA_Override", "Global", 1)
~
DO 2

EXTEND_BOTTOM HARBOR 9
	IF ~  
		Global("EECorwRescEltanHarb","GLOBAL",0)
		IsValidForPartyDialogue("Corwin")
	~ THEN 
	DO ~
		SetGlobal("EECorwRescEltanHarb","GLOBAL",1)
	~ 
	EXTERN ~BDCORWIJ~ LCA491
END

APPEND HARBOR
	IF ~~ THEN BEGIN LCA14
		SAY @0 /* ~He'll be at the safest place this town has these days and in the best of care, worry not for him, Captain Corwin. All your effort now needs to be to stop Sarevok. We pray for you - and for <CHARNAME>.~ */
		IF ~  
			!Global("TalkedToPang","GLOBAL",1)
		~ THEN 
		DO ~
			DialogueInterrupt(FALSE)
			EraseJournalEntry(227137)
			EraseJournalEntry(227138)
			EraseJournalEntry(227139)
			EraseJournalEntry(227140)
			EraseJournalEntry(227141)
			EraseJournalEntry(227142)
			EraseJournalEntry(227143)
			EraseJournalEntry(227144)
			EraseJournalEntry(226963)
			EraseJournalEntry(227145)
			EraseJournalEntry(226959)
			EraseJournalEntry(226984)
			EraseJournalEntry(231466)
			AddJournalEntry(231467,QUEST)
			SetGlobal("EltanMove","GLOBAL",1)
			SetGlobal("BroughtEltan","GLOBAL",1)
			TakePartyItem("MISC55")
			DestroyItem("MISC55")
			AddexperienceParty(2500)
			MoveToPoint([431.171])
			CreateCreatureImpassable("DELTAN2",[449.121],SE)
			ChangeAIScript("SHOUT",OVERRIDE)
			ActionOverride("eltan2",ChangeAIScript("SHOUT",OVERRIDE))
			Wait(1)
			MoveToPoint([461.197])
			Face(S)
			DialogueInterrupt(TRUE)
		~ 
		SOLVED_JOURNAL @1 /* ~Duke Eltan's Illness
		I took the defenseless Duke Eltan to the Harbor Master, who promised to keep him safe.~ */ 
		EXIT
  
		IF ~  
			Global("TalkedToPang","GLOBAL",1)
		~ THEN 
		DO ~
			DialogueInterrupt(FALSE)
			EraseJournalEntry(227137)
			EraseJournalEntry(227138)
			EraseJournalEntry(227139)
			EraseJournalEntry(227140)
			EraseJournalEntry(227141)
			EraseJournalEntry(227142)
			EraseJournalEntry(227143)
			EraseJournalEntry(227144)
			EraseJournalEntry(226963)
			EraseJournalEntry(227145)
			EraseJournalEntry(226959)
			EraseJournalEntry(226984)
			EraseJournalEntry(231466)
			SetGlobal("EltanMove","GLOBAL",1)
			SetGlobal("BroughtEltan","GLOBAL",1)
			TakePartyItem("MISC55")
			DestroyItem("MISC55")
			AddexperienceParty(2500)
			MoveToPoint([431.171])
			CreateCreatureImpassable("DELTAN2",[449.121],SE)
			ChangeAIScript("SHOUT",OVERRIDE)
			ActionOverride("eltan2",ChangeAIScript("SHOUT",OVERRIDE))
			Wait(1)
			MoveToPoint([461.197])
			Face(S)
			DialogueInterrupt(TRUE)
		~ 
		SOLVED_JOURNAL @1/* ~Duke Eltan's Illness
		I took the defenseless Duke Eltan to the Harbor Master, who promised to keep him safe.~ */ 
		EXIT
	END
END