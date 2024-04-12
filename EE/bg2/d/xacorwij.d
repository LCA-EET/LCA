//XACORWIJ
//Daniel Valle
//dan@danielvalle.net

/* Revision History

2022-09-16: Initial Commit

*/ 
BEGIN ~XACORWIJ~

//{ Scold Player party - CC OK
	IF ~
		Global("XA_LC_CorwinCoverUD_Party", "GLOBAL", 2)
	~ THEN BEGIN XA_CorwinScoldParty
		SAY @1005 /* ~We nearly blew our cover back there.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~
		GOTO XA_CorwinScoldPlayer2
		
		IF ~
			IsValidForPartyDialogue("Mazzy")
			Global("XA_LC_CorwinScoldMazzy", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~
		GOTO XA_CorwinScoldMazzy
		
		IF ~
			IsValidForPartyDialogue("Nalia")
			Global("XA_LC_CorwinScoldNalia", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~
		GOTO XA_CorwinScoldNalia
		
		IF ~
			IsValidForPartyDialogue("HaerDalis")
			Global("XA_LC_CorwinScoldHaerDalis", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~
		GOTO XA_CorwinScoldHaerDalis
		
		IF ~
			IsValidForPartyDialogue("Minsc")
			Global("XA_LC_CorwinScoldMinsc", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~
		GOTO XA_CorwinScoldMinsc
		
		IF ~
			IsValidForPartyDialogue("Rasaad")
			Global("XA_LC_CorwinScoldRasaad", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~
		GOTO XA_CorwinScoldRasaad
		
		IF ~
			IsValidForPartyDialogue("Yoshimo")
			Global("XA_LC_CorwinScoldYoshimo", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~
		GOTO XA_CorwinScoldYoshimo
		
		IF ~
			IsValidForPartyDialogue("Cernd")
			Global("XA_LC_CorwinScoldCernd", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~
		GOTO XA_CorwinScoldCernd
		
		IF ~
			IsValidForPartyDialogue("Valygar")
			Global("XA_LC_CorwinScoldValygar", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~ GOTO XA_CorwinScoldValygar
		
		IF ~
			IsValidForPartyDialogue("Hexxat")
			Global("XA_LC_CorwinScoldHexxat", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~ GOTO XA_CorwinScoldHexxat
		
		IF ~
			IsValidForPartyDialogue("Jaheira")
			Global("XA_LC_CorwinScoldJaheira", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~ GOTO XA_CorwinScoldJaheira
		
		IF ~
			IsValidForPartyDialogue("Neera")
			Global("XA_LC_CorwinScoldNeera", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~ GOTO XA_CorwinScoldNeera
		
		IF ~
			IsValidForPartyDialogue("Dorn")
			Global("XA_LC_CorwinScoldDorn", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~ GOTO XA_CorwinScoldDorn
		
		IF ~
			IsValidForPartyDialogue("Keldorn")
			Global("XA_LC_CorwinScoldKeldorn", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~ GOTO XA_CorwinScoldKeldorn
		
		IF ~
			IsValidForPartyDialogue("Korgan")
			Global("XA_LC_CorwinScoldKorgan", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~ GOTO XA_CorwinScoldKorgan
		
		IF ~
			IsValidForPartyDialogue("Jan")
			Global("XA_LC_CorwinScoldJan", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~ GOTO XA_CorwinScoldJan
		
		IF ~
			IsValidForPartyDialogue("Edwin")
			Global("XA_LC_CorwinScoldEdwin", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~ GOTO XA_CorwinScoldEdwin
		
		IF ~
			IsValidForPartyDialogue("Aerie")
			Global("XA_LC_CorwinScoldAerie", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~ GOTO XA_CorwinScoldAerie
		
		IF ~
			IsValidForPartyDialogue("Anomen")
			Global("XA_LC_CorwinScoldAnomen", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~ GOTO XA_CorwinScoldAnomen
		
		IF ~
			IsValidForPartyDialogue("Viconia")
			Global("XA_LC_CorwinScoldViconia", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~ GOTO XA_CorwinScoldViconia
		
		IF ~
			IsValidForPartyDialogue("Imoen2")
			Global("XA_LC_CorwinScoldImoen", "LOCALS", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL",3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~ GOTO XA_CorwinScoldImoen

	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldMazzy
		SAY @1776 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldNalia
		SAY @1777 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldHaerDalis
		SAY @1778 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldMinsc
		SAY @1779 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldRasaad
		SAY @1780 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldYoshimo
		SAY @1781 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldCernd
		SAY @1782 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldValygar
		SAY @1783 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldHexxat
		SAY @1784 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldJaheira
		SAY @1785 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldNeera
		SAY @1786 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldDorn
		SAY @1787 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldKeldorn
		SAY @1788 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldKorgan
		SAY @1789 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldJan
		SAY @1790 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldEdwin
		SAY @1791 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldAerie
		SAY @1792 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldAnomen
		SAY @1793 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldViconia
		SAY @1794 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldImoen
		SAY @1795 /* ~Nalia — rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544] */
		
		= @966 /*~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~*/
		
		IF ~~ THEN EXIT
	END
//}

//{ Scold Player UD - CC OK
	IF ~
		Global("XA_LC_CorwinCoverUD_Player", "GLOBAL", 2)
	~ THEN BEGIN XA_CorwinScoldPlayer
		SAY @594 /* ~<CHARNAME> — what happened back there? You nearly blew our cover!~*/
		
		IF ~~ THEN REPLY @596 /*~You're right... I shouldn't have lost my cool.~*/
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Player", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~
		GOTO XA_CorwinScoldPlayer2
		
		IF ~~ THEN REPLY @595 /*~I'm sorry. The sight of enslaved children sickens me.~*/
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD_Player", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~
		GOTO XA_CorwinScoldPlayer2
	END
	
	IF ~~ THEN BEGIN XA_CorwinScoldPlayer2
		SAY @1006 /* ~Rein it in. If you can't control yourself, you're a danger to us all.~ [BD67544]  */
		
		= @966 /* ~This is tough for all of us, but we mustn't lose focus given what's at stake. Let's go.~ */
		
		IF ~~ THEN
		EXIT
	END
	IF ~~ THEN BEGIN XA_PlayerSlaveComplain_3
	SAY @593 /*  ~(She gives you a sharp stare.)~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinCoverUD_Player", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPlayerTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
END

IF ~~ THEN BEGIN XA_PlayerSlaveComplain_3A
	SAY @1004 /*  ~(She gives <GABBER> a sharp stare.)~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Mazzy")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldMazzy", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Nalia")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldNalia", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("HaerDalis")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldHaerDalis", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Minsc")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldMinsc", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Rasaad")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldRasaad", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Yoshimo")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldYoshimo", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Cernd")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldCernd", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Valygar")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldValygar", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Hexxat")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldHexxat", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Jaheira")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldJaheira", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Neera")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldNeera", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Dorn")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldDorn", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Keldorn")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldKeldorn", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Korgan")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldKorgan", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Jan")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldJan", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Edwin")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldEdwin", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Aerie")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldAerie", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Anomen")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldAnomen", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Viconia")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldViconia", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10
	
	IF ~
		IsGabber("Imoen2")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_CorwinScoldImoen", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
	~
	EXTERN DADROW3 10

END
//}

//{ Corwin Saved xacs09B - CC OK
	IF ~
		Global("XA_LC_CorwinSaved9", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinSaved9_1
		SAY @336  /* ~<CHARNAME>... what happened?~ */
		
		= @337  /* ~(You notice that her skin and eye color have returned to normal.)~ */
		
		IF ~~ THEN REPLY @338  /* ~You collapsed as we ran the stake through Bodhi's heart. How are you feeling?~*/
		DO ~
			SetGlobal("XA_LC_CorwinCleansed", "GLOBAL", 2)
			SetGlobal("XA_LC_CorwinBit", "GLOBAL", 0)
			SetGlobal("XA_LC_CorwinSaved9", "GLOBAL", 2)
			SetPlayerSound(Myself,268296,MORALE)
			SetPlayerSound(Myself,268292,HAPPY)
			SetPlayerSound(Myself,268293,UNHAPPY_ANNOYED)
			SetPlayerSound(Myself,268294,UNHAPPY_SERIOUS)
			SetPlayerSound(Myself,268295,UNHAPPY_BREAKING_POINT)
			SetPlayerSound(Myself,268256,LEADER)
			SetPlayerSound(Myself,268257,TIRED)
			SetPlayerSound(Myself,268258,BORED)
			SetPlayerSound(Myself,268251,BATTLE_CRY1)
			SetPlayerSound(Myself,268252,BATTLE_CRY2)
			SetPlayerSound(Myself,268253,BATTLE_CRY3)
			SetPlayerSound(Myself,268254,BATTLE_CRY4)
			SetPlayerSound(Myself,268255,BATTLE_CRY5)
			SetPlayerSound(Myself,268273,DAMAGE)
			SetPlayerSound(Myself,268274,DYING)
			SetPlayerSound(Myself,268259,HURT)
			SetPlayerSound(Myself,268275,AREA_FOREST)
			SetPlayerSound(Myself,268276,AREA_CITY)
			SetPlayerSound(Myself,268277,AREA_DUNGEON)
			SetPlayerSound(Myself,268278,AREA_DAY)
			SetPlayerSound(Myself,268279,AREA_NIGHT)
			SetPlayerSound(Myself,268260,SELECT_COMMON1)
			SetPlayerSound(Myself,268261,SELECT_COMMON2)
			SetPlayerSound(Myself,268262,SELECT_COMMON3)
			SetPlayerSound(Myself,268263,SELECT_COMMON4)
			SetPlayerSound(Myself,268264,SELECT_COMMON5)
			SetPlayerSound(Myself,268265,SELECT_COMMON6)
			SetPlayerSound(Myself,268266,SELECT_ACTION1)
			SetPlayerSound(Myself,268267,SELECT_ACTION2)
			SetPlayerSound(Myself,268268,SELECT_ACTION3)
			SetPlayerSound(Myself,268280,SELECT_ACTION4)
			SetPlayerSound(Myself,268281,SELECT_ACTION5)
			SetPlayerSound(Myself,268282,SELECT_ACTION6) 
			SetPlayerSound(Myself,268283,SELECT_ACTION7)
			SetPlayerSound(Myself,268297,REACT_TO_DIE_GENERAL)
			SetPlayerSound(Myself,268298,REACT_TO_DIE_SPECIFIC)
			SetPlayerSound(Myself,268280,SELECT_RARE1)
			SetPlayerSound(Myself,268281,SELECT_RARE2)
			SetPlayerSound(Myself,268284,CRITICAL_HIT)
			SetPlayerSound(Myself,268285,CRITICAL_MISS)
			SetPlayerSound(Myself,268286,TARGET_IMMUNE)
			SetPlayerSound(Myself,268287,INVENTORY_FULL)
			SetPlayerSound(Myself,268288,PICKED_POCKET)
			SetPlayerSound(Myself,268289,HIDDEN_IN_SHADOWS)
			SetPlayerSound(Myself,268290,SPELL_DISRUPTED)
			SetPlayerSound(Myself,268291,SET_A_TRAP)
		~
		GOTO XA_CorwinSaved9_2
	END
	
	IF ~~ THEN BEGIN XA_CorwinSaved9_2
		SAY @339  /*~Ugh... help me up, will you?~*/
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("xacs09C")
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_CorwinSaved9", "GLOBAL", 2)
	~ THEN BEGIN XA_CorwinSaved9_3
		SAY @344  /* ~Yes... I'm feeling much better. Thank you, love.~ */
		
		IF ~~ THEN REPLY @340  /* ~Thank goodness. I was afraid I'd lost you.~ */
		DO ~
			SetGlobal("XA_LC_CorwinSaved9", "GLOBAL", 3)
		~
		GOTO XA_CorwinSaved9_4
	END
	
	IF ~~ THEN BEGIN XA_CorwinSaved9_4
		SAY @341  /* ~Not if I can help it... come here.~ */
		
		= @342  /* ~(You share a passionate embrace and kiss.)~*/
		
		= @343  /* ~With the Lanthorn, we can finally take the fight to Irenicus. I have a feeling that one way or the other, this will all be over, and soon. Let's go.~*/
		
		IF ~~ THEN
		EXIT
	END
//}

//{ Player Statue Talk - CC OK
	IF ~
		Global("XA_LC_CorwinStatueTalk", "GLOBAL", 1)
		GlobalGT("XA_LC_CorwinStatue", "GLOBAL", 0)
	~ THEN BEGIN XA_CorwinStatueTalk
		SAY @235  /* ~What have we here?~ [BD60998] */

		= @1308 /*~(She looks at the statue the townsfolk erected in her image.)~*/
		
		IF ~~ THEN REPLY @4  /* ~They, ah... seem to have exagerrated some of your attributes.~*/
		GOTO XA_CorwinStatueTalk_2A
		
		IF ~~ THEN REPLY @5  /* ~It's a beautiful statue.~*/
		GOTO XA_CorwinStatueTalk_2B
		
		IF ~~ THEN REPLY @6  /* ~It doesn't do you justice, I'm afraid.~*/
		GOTO XA_CorwinStatueTalk_2C
	END
	
	IF ~~ THEN BEGIN XA_CorwinStatueTalk_2A
		SAY @8 /* ~(She smiles).~ */
		
		= @234  /* ~A little.~ [BD35159]*/ 
		
		IF ~~ THEN
		GOTO XA_CorwinStatueTalkEnd
	END
	
	IF ~~ THEN BEGIN XA_CorwinStatueTalk_2B
		SAY @7 /* ~Flatterer.~ [XA100073] */
		
		IF ~~ THEN
		GOTO XA_CorwinStatueTalkEnd
	END
	
	IF ~~ THEN BEGIN XA_CorwinStatueTalk_2C
		SAY @7 /* ~Flatterer.~ [XA100073] */
		
		IF ~~ THEN
		GOTO XA_CorwinStatueTalkEnd
	END
	
	IF ~~ THEN BEGIN XA_CorwinStatueTalkEnd
		SAY @1315 /* ~~(She looks at the statue the townsfolk made of you.)~~*/
		
		IF ~~ THEN
		GOTO XA_PlayerStatueTalk
	END
	
//}

//{ Corwin Statue Talk - CC OK
	IF ~
		Global("XA_LC_CorwinStatueTalk", "GLOBAL", 1)
	~ THEN BEGIN XA_PlayerStatueTalk
		SAY @271  /* ~What the hells is this now?~ [BD50195] */
		
		IF ~~ THEN REPLY @326  /* ~This statue makes me look like a damned troll! Look, the arms are nearly as long as the legs! And gods, that nose!~*/
		DO ~
			SetGlobal("XA_LC_CorwinStatueTalk", "GLOBAL", 2)
		~
		GOTO XA_PlayerStatueTalk_2A
		
		IF ~~ THEN REPLY @327  /* ~Do you think this looks like me?~*/
		DO ~
			SetGlobal("XA_LC_CorwinStatueTalk", "GLOBAL", 2)
		~
		GOTO XA_PlayerStatueTalk_2B
		
	END
	
	IF ~~ THEN BEGIN XA_PlayerStatueTalk_2A
		SAY @332 /* ~(She tries, and fails, to stifle a laugh.)~ */
		
		= @331  /* ~This must be a tough time for you, then.~ [BD35157]*/ 
		IF ~~ THEN REPLY @1200
		GOTO XA_PlayerStatueTalkEnd
	END
	
	IF ~~ THEN BEGIN XA_PlayerStatueTalk_2B
		SAY @329 /* ~Not at all...~ */

		= @328  /* ~Take it as a compliment.~ [BD39876] */
		
		IF ~~ THEN
		GOTO XA_PlayerStatueTalkEnd
	END
	
	IF ~~ THEN BEGIN XA_PlayerStatueTalkEnd
		SAY @816 /*~That was an entertaining distraction, but it WAS a distraction. We have work to do. Let's go.~ [BD47449]*/
		
		IF ~~ THEN
		EXIT
	END
//}

//{ Dialog J-84 - Leave after SoA - CC OK
IF ~
	OR(2)
		Global("XA_LC_CorwinDepart", "GLOBAL", 1)
		Global("XA_LC_CorwinDepart", "GLOBAL", 2)
~ THEN BEGIN XA_LeaveAfterSoA_100
	SAY @313 /* ~Finally, it's over. Congratulations on your victory, <CHARNAME>.~  */
	
	IF ~~ THEN REPLY @315 /* ~What will you do now?~ */
	DO ~
		SetGlobal("XA_LC_CorwinDepart", "GLOBAL", 3)
	~
	GOTO XA_LeaveAfterSoA_100_2
	
	IF ~~ THEN REPLY @316 /* ~Thank you, Captain.~*/
	DO ~
		SetGlobal("XA_LC_CorwinDepart", "GLOBAL", 3)
	~
	GOTO XA_LeaveAfterSoA_100_2
END


IF ~~ THEN BEGIN XA_LeaveAfterSoA_100_2
	SAY @314 /* ~I'm heading back to Baldur's Gate. The elves were kind enough to arrange a caravan to take me home.~*/
	
	IF ~~ THEN
	GOTO XA_LeaveAfterSoA_100_3
	
	IF ~
		Global("DornRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinDepart", "GLOBAL", 1)
	~ THEN
	GOTO XA_LeaveAfterSoA_100_Dorn
	
	IF ~
		Global("HexxatRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinDepart", "GLOBAL", 1)
	~ THEN
	GOTO XA_LeaveAfterSoA_100_Hexxat
	
	IF ~
		Global("ViconiaRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinDepart", "GLOBAL", 1)
	~ THEN
	GOTO XA_LeaveAfterSoA_100_Viconia
	
	IF ~
		Race(Player1, LICH)
	~ THEN
	GOTO XA_LeaveAfterSoA_100_Lich
	
END

IF ~~ THEN BEGIN XA_LeaveAfterSoA_100_3
	SAY @320 /* ~I know we've had our ups and downs, but I wish you well. If you ever want to give us another try, come and see me in Baldur's Gate. Farewell.~*/
	
	IF ~~ THEN
	DO ~
		ActionOverride(Player1, TakeCreatureItems("XACORWIN", BACKPACK))
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		StartCutSceneMode()
		StartCutScene("XA100EX")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_LeaveAfterSoA_100_Dorn
	SAY @319  /* ~I'd stay and celebrate, but my stomach can't stand the sight of you and Dorn together any longer. Farewell.~*/
	
	IF ~~ THEN
	DO ~
		ActionOverride(Player1, TakeCreatureItems("XACORWIN", BACKPACK))
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		StartCutSceneMode()
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_LeaveAfterSoA_100_Hexxat
	SAY @318  /* ~I'd stay and celebrate, but my stomach can't stand the sight of you and Dorn together any longer. Farewell.~*/
	
	IF ~~ THEN
	DO ~
		ActionOverride(Player1, TakeCreatureItems("XACORWIN", BACKPACK))
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		StartCutSceneMode()
		StartCutScene("XA100EX")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_LeaveAfterSoA_100_Viconia
	SAY @317  /* ~I'd stay and celebrate, but my stomach can't stand the sight of you and Viconia together any longer. Farewell.~*/
	
	IF ~~ THEN
	DO ~
		ActionOverride(Player1, TakeCreatureItems("XACORWIN", BACKPACK))
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		StartCutSceneMode()
		StartCutScene("XA100EX")
	~
	EXIT
END
//}

//{ Dialog J-83 - Romance Conflict - CC OK

IF ~
	Global("XA_LC_RomanceConflictTalk", "GLOBAL", 1)
	OR(8)
		Global("AerieRomanceActive","GLOBAL",2)
		Global("ViconiaRomanceActive","GLOBAL",2)
		Global("DornRomanceActive","GLOBAL",2)
		Global("NeeraRomanceActive","GLOBAL",2)
		Global("AnomenRomanceActive","GLOBAL",2)
		Global("JaheiraRomanceActive","GLOBAL",2)
		Global("HexxatRomanceActive","GLOBAL",2)
		Global("RasaadRomanceActive","GLOBAL",2)
~ THEN BEGIN XA_RomanceConflictTalk
	SAY @1724 /*  ~<CHARNAME>. I think we need to have a talk.~ */
	
	IF ~~ THEN REPLY @1725  /* ~What's on your mind, love?~*/
	DO ~
		SetGlobal("XA_LC_RomanceConflictTalk", "GLOBAL", 2)
	~
	GOTO XA_RomanceConflict2
	
	IF ~~ THEN REPLY @1726 /* ~Sure — what is it?~*/
	DO ~
		SetGlobal("XA_LC_RomanceConflictTalk", "GLOBAL", 2)
	~
	GOTO XA_RomanceConflict2
END

IF ~~ THEN BEGIN XA_RomanceConflict2
	SAY @1727 /* ~You made it clear to me, I thought, that you wanted us to be together.~ */
	
	IF ~
		Global("AerieRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Aerie
	
	IF ~
		Global("ViconiaRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Viconia
	
	IF ~
		Global("DornRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Dorn
	
	IF ~
		Global("NeeraRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Neera
	
	IF ~
		Global("AnomenRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Anomen
	
	IF ~
		Global("JaheiraRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Jaheira
	
	IF ~
		Global("HexxatRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Hexxat
	
	IF ~
		Global("RasaadRomanceActive", "GLOBAL", 2)
	~ THEN 
	GOTO XA_RomanceConflict_Rasaad
END

//{ Aerie
IF ~~ THEN BEGIN XA_RomanceConflict_Aerie
	SAY @1731 /* ~Why, then, are you spending so much time with Aerie? Do you have feelings for her? She's a sweet girl, and you shouldn't lead her on.~ */
	
	IF ~~ THEN REPLY @1734 /* ~She's just a friend. You're the woman I love Schael, not her. I'll make it clear to her, in case it wasn't already.~ */
	DO ~
		SetGlobal("AerieRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1735 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_F
END
//}

//{ Neera
IF ~~ THEN BEGIN XA_RomanceConflict_Neera
	SAY @1732 /* ~Why, then, are you spending so much time with Neera? Do you have feelings for her? She's a sweet girl, and you shouldn't lead her on.~ */
	
	IF ~~ THEN REPLY @1734 /* ~She's just a friend. You're the woman I love Schael, not her. I'll make it clear to her, in case it wasn't already.~ */
	DO ~
		SetGlobal("NeeraRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1735 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_F
END
//}

//{ Jaheira
IF ~~ THEN BEGIN XA_RomanceConflict_Jaheira
	SAY @1733 /* ~Why, then, are you spending so much time with Jaheira? Do you have feelings for her? She's been through a lot with the loss of her husband, and you shouldn't lead her on.~ */
	
	IF ~~ THEN REPLY @1734 /* ~She's just a friend. You're the woman I love Schael, not her. I'll make it clear to her, in case it wasn't already.~ */
	DO ~
		SetGlobal("JaheiraRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1735 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_F
END
//}

//{ Rasaad
IF ~~ THEN BEGIN XA_RomanceConflict_Rasaad
	SAY @1739 /* ~Why, then, are you spending so much time with Rasaad? Do you have feelings for him? You shouldn't lead him on.~ */
	
	IF ~~ THEN REPLY @1740 /* ~He's just a friend. You're the one I love Schael, not him. I'll make it clear to him, in case it wasn't already.~ */
	DO ~
		SetGlobal("RasaadRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1741 /* ~I do love him. I'm sorry, Schael. I thought you and I had something, but I realize now that I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_M
END
//}

//{ Anomen
IF ~~ THEN BEGIN XA_RomanceConflict_Anomen
	SAY @1742 /* ~Why, then, are you spending so much time with Anomen? Do you have feelings for that insufferable braggart? You shouldn't lead him on.~ */
	
	IF ~~ THEN REPLY @1740 /* ~He's just a friend. You're the one I love Schael, not him. I'll make it clear to him, in case it wasn't already.~ */
	DO ~
		SetGlobal("AnomenRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1741 /* ~I do love him. I'm sorry, Schael. I thought you and I had something, but I realize now that I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_M
END
//}

//{ Hexxat
IF ~~ THEN BEGIN XA_RomanceConflict_Hexxat
	SAY @1743 /* ~Why, then, are you spending so much time with Hexxat? Do you have feelings for that monster?~ */
	
	IF ~~ THEN REPLY @1747 /* ~You're the one I love Schael, not her. I'll make it clear to her, in case it wasn't already.~*/
	DO ~
		SetGlobal("HexxatRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1735 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_Bad
END
//}

//{ Dorn
IF ~~ THEN BEGIN XA_RomanceConflict_Dorn
	SAY @1745 /* ~Why, then, is Dorn spending so much time with you? Do you have feelings for that filthy blackguard?~  */
	
	IF ~~ THEN REPLY @1746 /* ~You're the one I love Schael, not him. I'll make it clear to him, in case it wasn't already.~ */
	DO ~
		SetGlobal("DornRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1741 /* ~I do love him. I'm sorry, Schael. I thought you and I had something, but I realize now that I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_Bad
END
//}

//{ Viconia
IF ~~ THEN BEGIN XA_RomanceConflict_Viconia
	SAY @1748 /* ~Why, then, is Viconia spending so much time with you? Do you have feelings for that wretched drow?~  */
	
	IF ~~ THEN REPLY @1747 /* ~You're the one I love Schael, not her. I'll make it clear to her, in case it wasn't already.~*/
	DO ~
		SetGlobal("ViconiaRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_Continue
	
	IF ~~ THEN REPLY @1735 /* ~I do love her. I'm sorry, Schael. I thought you and I had something, but I realize now that I was mistaken.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
	~
	GOTO XA_RomanceConflict_EndCR_Bad2
END
//}

IF ~~ THEN BEGIN XA_RomanceConflict_EndCR_Bad
	SAY @1744 /* ~Unbelievable! Irenicus must've done a number on your senses. There's no other explanation for you choosing that beast over me. As soon as this mission is over, we're through.~  */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_LeaveAfterSoA", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_RomanceConflict_EndCR_Bad2
	SAY @1749 /* ~Unbelievable! Irenicus must've done a number on your senses. There's no other explanation for you choosing that ... that slut, over me. As soon as this mission is over, we're through.~   */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_LeaveAfterSoA", "GLOBAL", 1)
	~	
	EXIT
END

IF ~~ THEN BEGIN XA_BackToBG_ChainEnd
	SAY @672 /* ~Take a few minutes to gather your belongings. When you are ready to leave, come and talk to me.~*/
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_BackToBG_ChainEnd_AndYou
	SAY @309 /* ~And you?~*/
	
	IF ~~ THEN
	EXIT
	
END

IF ~~ THEN BEGIN XA_RomanceConflict_Continue
	SAY @1738 /* ~That's all I needed to hear. Let's go.~ [BD54525] */
	
	IF ~~ THEN 
	EXIT
END

IF ~~ THEN BEGIN XA_RomanceConflict_EndCR_F
	SAY @1736 /* ~Fine. Be with her. I can't tell you how much this hurts... but I appreciate your honesty. Let's go.~ */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_RomanceConflict_EndCR_M
	SAY @1737 /* ~Fine. Be with him. I can't tell you how much this hurts... but I appreciate your honesty. Let's go.~  */
	
	IF ~~ THEN EXIT
END

//}

//{ XA_JARLAXLE_0
IF ~~ THEN BEGIN XA_JARLAXLE_0
	SAY @1634 /* ~Nice trick. You must be Jarlaxle.~*/
	
	IF ~~ THEN
	EXTERN JARLAXLE 1
END
//}

//{ XA_UDPHAE01
IF ~~ THEN BEGIN XA_UDPHAE01_IJ_88
	SAY @1632 /* ~She's right. If we can find a way to turn Solaufein, he would prove a valuable ally.~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_UDPHAE01_88
	SAY @1633 /* ~<CHARNAME> - We may be able to use this situation to our advantage. If we can turn Solaufein instead of killing him, he would prove a valuable ally.~*/
	
	IF ~~ THEN EXIT
END
//}

//{ Wedding Hostility - CC OK
IF ~
	Global("XA_LC_CorwinLeaveWedding", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinLeaveWedding
	SAY @1631 /* ~I won't be party to this madness any longer. If you ever clean up your act, you can find me in the Athkatla magistrate.~ */
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -6)
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		EscapeAreaMove("AR1002",1033,563, SW)
		SetGlobal("XA_LC_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
		SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
		SetGlobal("XA_LC_CorwinLeaveWedding", "GLOBAL", 2)
	~
	EXIT
END
//}

//{ #region Unused
IF ~~ THEN BEGIN XAA100
	SAY @431 /* ~(She becomes visibly upset.) You bastard! Gods damnit... (She calms down.)~ */
	IF ~~ THEN
	GOTO XAA75
END

//} #endregion

//{ #region Corwin Slaver Girl Rescue - Dialog J-16 - CC OK
IF ~
	Global("XA_LC_CorwinSlaverPlot", "GLOBAL", 1)
	Global("XA_LC_SlaveKidsFreed", "GLOBAL", 3)
~ THEN BEGIN XA_CorwinBGSlaverDiscuss
	SAY @753 /* ~I hope those kids can make it to safety. */
	
	IF ~~ THEN REPLY @755 /* ~So do I.~ */
	DO ~
		SetGlobal("XA_LC_CorwinSlaverPlot", "GLOBAL", 2)
	~
	GOTO XA_CorwinBGSlaverDiscuss2
	
	IF ~~ THEN REPLY @754 /* ~Even if we haven't, we've dealt a serious blow to the slavers.~ */
	DO ~
		SetGlobal("XA_LC_CorwinSlaverPlot", "GLOBAL", 2)
	~
	GOTO XA_CorwinBGSlaverDiscuss2
END

IF ~
	Global("XA_LC_CorwinSlaverPlot", "GLOBAL", 1)
	GlobalLT("XA_LC_SlaveKidsFreed", "GLOBAL", 3)
~ THEN BEGIN XA_CorwinBGSlaverDiscuss
	SAY @764 /* ~That girl said that at least two other children were being held here. We have to find them.~*/
	
	IF ~~ THEN REPLY @765 /* ~Right.~ */
	DO ~
		SetGlobal("XA_LC_CorwinSlaverPlot", "GLOBAL", 2)
	~
	GOTO XA_CorwinBGSlaverDiscuss2
	
	IF ~~ THEN REPLY @766 /* ~Hopefully they're still alive.~ */
	DO ~
		SetGlobal("XA_LC_CorwinSlaverPlot", "GLOBAL", 2)
	~
	GOTO XA_CorwinBGSlaverDiscuss2
END

IF ~~ THEN BEGIN XA_CorwinBGSlaverDiscuss2
	SAY @756 /* ~Everytime the Fist thinks that the slaver problem is under control, we find out how wrong we are.~ */
	
	= @757 /* ~I'll launch an investigation as soon as I return to the city... someone needs to make those slaver bastards pay!~ */
	
	IF ~~ THEN 
	EXIT	
END
//} #endregion

//{ #region Go Back to BG (Romance) - Dialog J-21
IF ~
	Global("XA_LC_BackToBG", "GLOBAL", 2)
	Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN XA_BackToBG_RTL_Romance
	SAY @46 /* ~Got everything you need?~ [BD54931] */
	
	IF ~~ THEN REPLY @632 /* ~Let's go.~ */
	GOTO XA_BackToBG_RTL_Leave
	
	IF ~~ THEN REPLY @633 /* ~Not yet.~*/
	GOTO XA_BackToBG_RTL_NotYet
END
//} #endregion

//{ #region Go Back to BG (Non-Romance) - Dialog J-22 - CC OK

IF ~
	Global("XA_LC_BackToBG", "GLOBAL", 2)
	!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN XA_BackToBG_RTL_NonRomance
	SAY @46 /* ~Got everything you need?~ [BD54931] */
	
	IF ~~ THEN REPLY @632 /* ~Let's go.~ */
	GOTO XA_BackToBG_RTL_Leave
	
	IF ~~ THEN REPLY @633 /* ~Not yet.~*/
	GOTO XA_BackToBG_RTL_NotYet
END


//} #endregion

//{ #region Corwin End BG2 (Romance) - Dialog J-23 - CC OK
IF ~
	Global("XA_LC_BackToBG", "GLOBAL", 1)
~ THEN BEGIN XA_BackToBG_Romance
	SAY @619 /* ~That was some celebration.~ */
	
	IF ~~ THEN REPLY @620 /* ~It definitely was.~ */
	DO ~
		SetGlobal("XA_LC_BackToBG", "GLOBAL", 2)
	~
	GOTO XA_BackToBG2
	
	IF ~~ THEN REPLY @621 /* ~A better liquor selection would have been nice...~*/
	DO ~
		SetGlobal("XA_LC_BackToBG", "GLOBAL", 2)
	~
	GOTO XA_BackToBG2
END

IF ~~ THEN BEGIN XA_BackToBG2
	SAY @1431 /* ~(She smiles.)~ */
	
	= @622 /* ~I think it'll pale in comparison to the one the city will throw for us upon our return. (She smiles.)~ */

	IF ~~ THEN REPLY @623 /* ~Baldur's Gate? Are they expecting us?~ */
	GOTO XA_BackToBG3
END

IF ~~ THEN BEGIN XA_BackToBG3
	SAY @624 /* ~They are. While you were recovering, I asked the elves to send word to the Council that Irenicus was dead, and that we would be returning to the city soon. Gods, I can't wait to see Rohma and my father.~ */
	
	IF ~
		NumInPartyGT(2)
	~
	THEN GOTO XA_BackToBG_Chain
	
	IF ~
		NumInPartyLT(3)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN GOTO XA_BackToBG4_Romance
	
	IF ~
		NumInPartyLT(3)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN GOTO XA_BackToBG4
END

IF ~~ THEN BEGIN XA_BackToBG4
	SAY @671 /* ~The elves were also gracious enough to provide us a caravan for the trip back. Are you ready to leave?~ */
	
	IF ~~ THEN REPLY @632 /* ~Let's go.~*/
	GOTO XA_BackToBG_RTL_Leave
	
	
	IF ~~ THEN REPLY @633 /* ~Not yet.~*/
	GOTO XA_BackToBG_RTL_NotYet
END

IF ~~ THEN BEGIN XA_BackToBG4_Romance
	SAY @670 /* ~The elves were also gracious enough to provide us a caravan for the trip back. Are you ready to leave, love?~ */
	
	IF ~~ THEN REPLY @632 /* ~Let's go.~*/
	GOTO XA_BackToBG_RTL_Leave
	
	
	IF ~~ THEN REPLY @633 /* ~Not yet.~*/
	GOTO XA_BackToBG_RTL_NotYet
END
//} #endregion

//{ #region Go Back to BG (Common) - DLG-0021/22/23
IF ~~ THEN BEGIN XA_BackToBG_RTL_Leave
	SAY @635 /* ~Rohma... I'll be home soon...~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_BackToBG", "GLOBAL", 3)
		SetGlobal("XA_LC_PartyRemovalProcessing", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_BackToBG_RTL_NotYet
	SAY @634 /* ~Take your time. Come and see me when you're ready.~ */
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Corwin Post Drizzt - Dialog J-24 - CC OK
IF ~
	Global("XA_LC_CorwinVouchedDrizz", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinPlayerDrizz
	SAY @488 /* ~That adventurer we encountered, Drizzt, was adamant that you had assaulted him. Was he speaking the truth?~ */
	
	IF ~~ THEN REPLY @489 /* ~I'd rather not talk about it.~ */
	DO ~
		SetGlobal("XA_LC_CorwinVouchedDrizz", "GLOBAL", 3)
	~
	GOTO XA_CorwinPlayerDrizz1A //OK
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @490 /* ~No, you know me, I would never do such a thing.~ */
	DO ~
		SetGlobal("XA_LC_CorwinVouchedDrizz", "GLOBAL", 3)
	~
	GOTO XA_CorwinPlayerDrizz2A //OK
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @490 /* ~No, you know me, I would never do such a thing.~ */
	DO ~
		SetGlobal("XA_LC_CorwinVouchedDrizz", "GLOBAL", 3)
	~
	GOTO XA_CorwinPlayerDrizz2B //OK
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @491 /* ~Yes, I did. I'm not proud of it, but I promise you that I'm not the same person that I was.~ */
	DO ~
		SetGlobal("XA_LC_CorwinVouchedDrizz", "GLOBAL", 3)
	~
	GOTO XA_CorwinPlayerDrizz3A //OK
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @491 /* ~Yes, I did. I'm not proud of it, but I promise you that I'm not the same person that I was.~ */
	DO ~
		SetGlobal("XA_LC_CorwinVouchedDrizz", "GLOBAL", 3)
	~
	GOTO XA_CorwinPlayerDrizz3B //OK 
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @497 /* ~Yes, I did. I saw he was a drow, and everything I'd heard about his kind convinced me that he'd harm me after killing the gnolls.~*/
	DO ~
		SetGlobal("XA_LC_CorwinVouchedDrizz", "GLOBAL", 3)
	~
	GOTO XA_CorwinPlayerDrizz4A //OK
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @497 /* ~Yes, I did. I saw he was a drow, and everything I'd heard about his kind convinced me that he'd harm me after killing the gnolls.~*/
	DO ~
		SetGlobal("XA_LC_CorwinVouchedDrizz", "GLOBAL", 3)
	~
	GOTO XA_CorwinPlayerDrizz4B //OK 
		
	IF ~~ THEN REPLY @492 /* ~Yes, I did, and I'd do it again. I was struggling to survive and needed his equipment.~ */
	DO ~
		SetGlobal("XA_LC_CorwinVouchedDrizz", "GLOBAL", 3)
	~
	GOTO XA_CorwinPlayerDrizz1 //OK
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz1A
	SAY @1445 /* ~And I'd rather you be open with me. Fine. Let's go.~ */
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz1
	SAY @493 /* ~I see. Let's go.~ */
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz2A
	SAY @496 /* ~Sometimes I feel like I don't know you at all. I'd rather you'd have done it and been honest with me than to lie about it. Let's go.~ */
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -4)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz2B
	SAY @496 /* ~Sometimes I feel like I don't know you at all. I'd rather you'd have done it and been honest with me than to lie about it. Let's go.~ */
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz3A
	SAY @495 /* ~I appreciate your honesty. We've all made bad decisions - it's good though that you've learned from yours. Let's go, love.~ */
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz3B
	SAY @494 /* ~I appreciate your honesty. We've all made bad decisions - it's good though that you've learned from yours. Let's go.~ */
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz4A
	SAY @499 /* ~I appreciate your honesty. Let's go, love.~*/
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinPlayerDrizz4B
	SAY @498 /* ~I appreciate your honesty. Let's go.~*/
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Dorn Post Sex - Dialog J-25 - CC OK
IF ~
	Global("XA_LC_ComplainDornSex", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinSexDorn
	SAY @442 /* ~To think I even considered the possibility of you and I being together. Madness. Be with Dorn, then. I want nothing more to do with you.~ [BD54533] */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
		SetGlobal("OHD_sexreactions","GLOBAL",2)
		SetGlobal("XA_LC_ComplainDornSex", "GLOBAL", 2)
		SetPlayerSound(Myself,268282,SELECT_ACTION6)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Player Soul Talk - Dialog J-26A - CC OK
IF ~
	Global("XA_LC_PlayerSoulTalk", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinSoulTalk
	SAY @432 /* ~(She places her hand on your shoulder.)~ */
	=@1349 /* ~Hey — you alright?~ */
	
	IF ~~ THEN REPLY @433 /* ~For just having my soul ripped out of me, yes, I feel fine.~ */
	DO ~
		SetGlobal("XA_LC_PlayerSoulTalk", "GLOBAL", 2)
	~
	GOTO XA_CorwinSoulTalk2
	
	IF ~~ THEN REPLY @434 /* ~I'm not sure. It's hard for me to explain.... I feel... hollow?~ */
	DO ~
		SetGlobal("XA_LC_PlayerSoulTalk", "GLOBAL", 2)
	~
	GOTO XA_CorwinSoulTalk2
END

IF ~~ THEN BEGIN XA_CorwinSoulTalk2
	SAY @435 /* ~Whatever he did, we'll find a way to restore you and your sister.~ */
	
	IF ~~ THEN REPLY @436 /* ~Right. Let's go.~ */
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT


END
//}

//{ #region Corwin Player Rescue Talk - Dialog J-26B - CC OK
IF ~
	Global("XA_LC_PlayerRescueTalk", "LOCALS", 1)
~ THEN BEGIN XA_CorwinRescueTalk
	SAY @1240 /* ~Thanks for the help back there.~ */
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1241 /* ~Are you sure you're alright, love?~ */
	DO ~
		SetGlobal("XA_LC_CorwinIrenicusTalk", "LOCALS", 2)
		SetGlobal("XA_LC_PlayerRescueTalk", "LOCALS", 2)
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 2)
	~
	GOTO XA_CorwinRescueTalk2
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1242 /* ~Are you sure you're alright, Captain?~ */
	DO ~
		SetGlobal("XA_LC_CorwinIrenicusTalk", "LOCALS", 2)
		SetGlobal("XA_LC_PlayerRescueTalk", "LOCALS", 2)
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 2)
	~
	GOTO XA_CorwinRescueTalk2
	
	IF ~~ THEN REPLY @1245  /* ~That golem sure gave you a good squeeze.~*/
	DO ~
		SetGlobal("XA_LC_CorwinIrenicusTalk", "LOCALS", 2)
		SetGlobal("XA_LC_PlayerRescueTalk", "LOCALS", 2)
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 2)
	~
	GOTO XA_CorwinRescueTalk2
END

IF ~~ THEN BEGIN XA_CorwinRescueTalk2
	SAY @1243 /* ~Yeah... nothing a nice, hot bath won't fix. How about you? What happened while I was out?~ */
	
	IF ~~ THEN REPLY @1233  /* ~I'll fill you in on the way. We need to get moving.~*/

	GOTO XA_CorwinRescueTalk4

	IF ~~ THEN REPLY @1246  /* ~Nothing. Just the small matter of having my soul ripped out from me. Imoen too.~*/
	DO ~
		SetGlobal("XA_LC_CorwinToldAboutSoul", "LOCALS", 1)
	~
	GOTO XA_CorwinRescueTalk3
END

IF ~~ THEN BEGIN XA_CorwinRescueTalk3
	SAY @1247  /* ~What!?~ */
	
	IF ~~ THEN REPLY @1233 /* ~I'll fill you in on the way. We need to get moving.~*/
	GOTO XA_CorwinRescueTalk4
END

IF ~~ THEN BEGIN XA_CorwinRescueTalk4
	SAY @1232  /* ~Right...~*/
	
	IF ~~ THEN
	EXIT
	
	IF ~
		Global("XA_LC_CorwinToldAboutSoul", "LOCALS", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	GOTO XA_CorwinRescueTalk5A
	
	IF ~
		!Global("XA_LC_CorwinToldAboutSoul", "LOCALS", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	GOTO XA_CorwinRescueTalk5B
END

IF ~~ THEN BEGIN XA_CorwinRescueTalk5A
	SAY @1231  /* ~Come here.~*/
	
	= @1230 /*  ~(You share a warm embrace.)~*/
	
	= @1227 /* ~Whatever he did, we'll find a way to restore you and your sister. Let's go.~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_CorwinRescueTalk5B
	SAY @1231  /* ~Come here.~*/
	
	= @1230 /*  ~(You share a warm embrace.)~*/
	
	= @430 /* ~Let's go.~*/
	
	IF ~~ THEN EXIT
END
//}

//{ #region Corwin Rep Warning - Dialog J-27 - CC OK
IF ~
	Global("XA_LC_CorwinRepWarning", "GLOBAL", 2)
~ THEN BEGIN XA_RepComplain
	SAY @417 /* ~We need to talk.~ */
	IF ~~ THEN REPLY @419 /* ~What's on your mind?~ */
	DO ~
		SetGlobal("XA_LC_CorwinRepWarning", "GLOBAL", 3)
	~
	GOTO XA_RepComplain2
	
	IF ~~ THEN REPLY @107 /* Not now. */
	DO ~
		SetGlobal("XA_LC_CorwinRepWarning", "GLOBAL", 3)
	~
	GOTO XA_RepComplain2
END

IF ~~ THEN BEGIN XA_RepComplain2
	SAY @418 /* ~I don't like the way things are going. I didn't come all this way to help you in committing acts of evil. If things get much worse, you'll find yourself on your own. Let's go.~ */
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Corwin Left - Bad Reputation - Dialog J-28A - CC OK
IF ~
	Global("XA_LC_CorwinLeftPoorRep", "GLOBAL", 1)
	GlobalLT("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
	!AreaCheck("AR1002")
~ THEN BEGIN XA_LeftPoorRep_LT20
	SAY @420 /* ~I'm sorry. I can't be a part of this any longer. When you clean up your act, you can find me in the Athkatla magistrate.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinLeftPoorRep", "GLOBAL", 0)
		SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
		SetLeavePartyDialogFile()
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		EscapeAreaMove("AR1002",1033,563, SW)
	~
	EXIT
END  
//} #endregion

//{ #region Corwin Left - Bad Reputation - Dialog J-28C - CC OK
IF ~
	Global("XA_LC_CorwinLeftPoorRep", "GLOBAL", 1)
	GlobalLT("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
	AreaCheck("AR1002")
~ THEN BEGIN XA_LeftPoorRep_LT20
	SAY @1446 /* ~I'm sorry. I can't be a part of this any longer. If you ever clean up your act, come and see me.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinLeftPoorRep", "GLOBAL", 0)
		SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
		SetLeavePartyDialogFile()
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
	~
	EXIT
END  
//}

//{ #region Corwin Left - Bad Reputation - Dialog J-28B - CC OK
IF ~
	Global("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
	GlobalGT("chapter", "GLOBAL", 19)
~ THEN BEGIN XA_LeftPoorRep_GT19
	SAY @1446 /* ~I'm sorry. I can't be a part of this any longer. If you ever clean up your act, come and see me.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinLeftPoorRep", "GLOBAL", 0)
		SetGlobal("XA_LC_CorwinKickedOut", "LOCALS", 1)
		
		SetLeavePartyDialogFile()
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		//EscapeArea()
	~
	EXIT
END  
//} #endregion

//{ #region Dorn Ritual Interject - Dialog J-29 - CC OK

IF ~
	Global("OHD_ritual_interjects","GLOBAL",1)
~ THEN BEGIN XA_RitualInterject
	SAY @401 /* ~That smell, ugh. It reminds me of ... it reminds me of Avernus!~ */
	
	IF ~~ THEN REPLY @402 /* ~We survived that, and we'll survive this. Stand ready.~ */
	DO ~
		SetGlobal("OHD_ritual_interjects","GLOBAL",2)
	~
	GOTO XA_RitualInterject2
END

IF ~~ THEN BEGIN XA_RitualInterject2
	SAY @403 /* Right */
	
	IF ~~ THEN
	EXIT
	
	IF ~  
		IsValidForPartyDialogue("imoen2")
	~ THEN 
	EXTERN ~IMOEN2J~ 56
	IF ~  
		IsValidForPartyDialogue("rasaad")
	~ THEN 
	EXTERN ~RASAADJ~ 771
	IF ~  
		IsValidForPartyDialogue("korgan")
	~ THEN 
	EXTERN ~KORGANJ~ 236
END
//} #endregion

//{ #region Gorge Interject - Dialog J-30 - CC OK
IF ~
	OR(2)
		Global("OHD_GORGE_NTRJEX","OH5100",1)
		Global("XA_LC_ForceTreeTalk", "GLOBAL", 1)
~ THEN BEGIN XA_GorgeClimb
	SAY @395 /* ~Let's take this nice and slow. Remember - maintain three points of contact at all times.~ */
	
	IF ~
		Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
	~ THEN REPLY @397 /* ~Good advice. Climb many trees in your youth, love?~ */
	GOTO XA_GorgeClimb1
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
	~ THEN REPLY @396 /* ~Good advice. Climb many trees in your youth, Corwin?~ */
	GOTO XA_GorgeClimb1
	
	IF ~
		GlobalGT("XA_LC_TimesHadSex", "GLOBAL", 0)
		Gender(Player1, MALE)
	~ THEN REPLY @399 /*  ~Good advice. Climb many trees, love? Besides mine, I mean.~ */
	GOTO XA_GorgeClimb1A
END

IF ~~ THEN BEGIN XA_GorgeClimb1A
	SAY @400 /* ~(She gives you a wry smile, and rolls her eyes.)~ */
	IF ~~ THEN
	GOTO XA_GorgeClimb1
END

IF ~~ THEN BEGIN XA_GorgeClimb1
	SAY @398 /* ~No, not really. We practice scaling walls during our training exercises. The principle is the same.~ */
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1797
	DO ~
		SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
		SetGlobal("XA_LC_CorwinOH5100", "GLOBAL", 1)
		SetGlobal("XA_LC_ForceTreeTalk", "GLOBAL", 2)
	~
	EXIT
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1798
	DO ~
		SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
		SetGlobal("XA_LC_CorwinOH5100", "GLOBAL", 1)
		SetGlobal("XA_LC_ForceTreeTalk", "GLOBAL", 2)
	~
	EXIT
	
	
END
//} #endregion

//{ #region Corwin Bit - First - Dialog J-31 - CC OK
IF ~
	Global("XA_LC_CorwinBit", "GLOBAL", 2)
~
THEN BEGIN XA_CorwinBitWokeUp
	SAY @297 /* ~Bodhi - she.. she bit me!~ */
	
	IF ~~ THEN REPLY @298 /* ~You're hurt, Schael. Here, let me help you.~*/
	DO ~
		SetGlobalTimer("XA_LC_CorwinBitTimer", "GLOBAL", EIGHT_HOURS)
		SetGlobal("XA_LC_CorwinBit", "GLOBAL", 3)
		SetGlobal("XA_LC_CorwinCured", "GLOBAL", 0)
	~
	GOTO XA_CorwinBitWokeUp2
END

IF ~~ THEN BEGIN XA_CorwinBitWokeUp2
	SAY @299 /* ~Thanks... I - I just feel a bit weak...~*/
	
	IF ~~ THEN REPLY @304 /* ~Take a moment to recover, love. When you're ready, we will go after Bodhi and retrieve the Lanthorn.~ */
	GOTO XA_CorwinBitWokeUp3
	IF ~
		IsValidForPartyDialogue("Aerie")
	~
	THEN REPLY @301 /* ~Aerie? Is there anything you can do to help?~ */
	EXTERN AERIEJ XA_CorwinBite
	
	IF ~
		IsValidForPartyDialogue("Jaheira")
	~
	THEN REPLY @300 /* ~Jaheira? Is there anything you can do to help?~ */
	EXTERN JAHEIRAJ XA_CorwinBite 
	
	IF ~
		IsValidForPartyDialogue("Viconia")
	~
	THEN REPLY @302 /* ~Viconia? Is there anything you can do to help?~ */
	EXTERN VICONIJ XA_CorwinBite

	IF ~
		IsValidForPartyDialogue("Anomen")
	~
	THEN REPLY @303 /* ~Anomen? Is there anything you can do to help?~ */
	EXTERN ANOMENJ XA_CorwinBite 	
END

IF ~~ THEN BEGIN XA_CorwinBitWokeUp3
	SAY @305 /* ~Right... come on.. we need to keep moving.~*/
	= @306 /* ~(She's up and about, but still unsteady - you become concerned that her condition may deteriorate over time).~ */
	IF ~~ THEN 
	DO ~
		ChangeStat(Myself,CON,-1,ADD)
		ChangeStat(Myself,DEX,-1,ADD)
		ChangeStat(Myself,STR,-1,ADD)
		ChangeStat(Myself,CHR,-1,ADD)
		//JoinParty()
	~
	UNSOLVED_JOURNAL @307 /* ~Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and wounding the one person that is dearest to my heart: Schael. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue, I will lose even more than I thought possible. In spite of her threats, I must continue my pursuit of Bodhi and the Rhynn Lanthorn, though I am concerned that Schael's condition will worsen over time.~  */
	EXIT
END
//} #endregion

//{ #region Corwin Bit - Second - Dialog J-32 - CC OK
IF ~
	Global("XA_LC_CorwinBit", "GLOBAL", 4)
~ THEN BEGIN XA_CorwinBitByBodhi2
	SAY @259 /* ~Hey, can we... can we s-stop, for just a minute.~ */
	IF ~~ THEN REPLY @260 /* ~Schael? What's wrong?~*/
	DO ~
		SetGlobal("XA_LC_CorwinBit", "GLOBAL", 5)
		SetGlobalTimer("XA_LC_CorwinBitTimer", "GLOBAL", SIX_HOURS)
	~
	GOTO XAA86
	
	IF ~~ THEN REPLY @345 /* ~Are you alright?~ */
	DO ~
		SetGlobal("XA_LC_CorwinBit", "GLOBAL", 5)
		SetGlobalTimer("XA_LC_CorwinBitTimer", "GLOBAL", SIX_HOURS)
	~
	GOTO XAA86
END
IF ~~ THEN BEGIN XAA86
	SAY @261 /* ~I can't *wheeze* ... I can't seem ... to catch my breath.~ */
	IF ~
		!IsValidForPartyDialogue("KORGAN")
		!IsValidForPartyDialogue("AERIE")
		!IsValidForPartyDialogue("IMOEN2")
		!IsValidForPartyDialogue("JAHEIRA")
	~ THEN REPLY @262 /* ~Come here, love. Put your arm around my shoulder. Take as much time as you need.~ */
	GOTO XAA87
	
	IF ~
		OR(4)
			IsValidForPartyDialogue("KORGAN")
			IsValidForPartyDialogue("AERIE")
			IsValidForPartyDialogue("IMOEN2")
			IsValidForPartyDialogue("JAHEIRA")
	~ THEN REPLY @262 /* ~Come here, love. Take as much time as you need.~ */
	DO ~
		SetGlobalTimer("XA_LC_CorwinSickPartyTimer", "GLOBAL", TWO_HOURS)
	~
	GOTO XAA87
END

IF ~~ THEN BEGIN XAA87
	SAY @263 /* ~(She takes several long, deep breaths.)~  */
	
	= @267 /* ~That's better... come on, we need to get that.. Lanthorn.~ */
	
	= @264 /* ~(She is clearly unwell and her condition is rapidly deteriorating... you resolve to redouble your efforts to find and kill Bodhi. You hope it will be enough to cure Schael of her affliction.)~ */
	
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Corwin Bit - Third - Dialog J-33 - CC OK
IF ~
	Global("XA_LC_CorwinBit", "GLOBAL", 6)
~ THEN BEGIN XA_CorwinBitByBodhi3
	SAY @276 /* ~Ugh...~ */
	
	= @269 /* ~(She stumbles and falls to her hands and knees)~ */
	
	IF ~~ THEN REPLY @277 /* ~Schael!~ */
	DO ~
		SetGlobal("XA_LC_CorwinBit", "GLOBAL", 7)
		SetGlobalTimer("XA_LC_CorwinBitTimer", "GLOBAL", FOUR_HOURS)
	~
	GOTO XAA88
END
IF ~~ THEN BEGIN XAA88
	SAY @1447 /* (You help her back to her feet. She appears to be in very bad shape. Her eyes are bloodshot, she's covered in sweat, and her skin is pale and cold to the touch.)~ */
	
	= @278 /* ~Thanks *cough* come on... we'd better find Bodhi and the Lanthorn soon... before I..~ */
	
	IF ~
		GlobalGT("bd_drinks_corwin", "GLOBAL", 0) // had a drink with Corwin back in Baldur's Gate 
	~ THEN REPLY @279 /* ~It breaks my heart to see you like this, love.~ */
	GOTO XAA89A
	
	IF ~
		Global("bd_drinks_corwin", "GLOBAL", 0) // didn't have a drink with Corwin back in Baldur's Gate 
	~ THEN REPLY @279 /* ~It breaks my heart to see you like this, love.~ */
	GOTO XAA89B
END

IF ~~ THEN BEGIN XAA89A
	SAY @282 /* ~Hah, I look that bad, eh? You should see *cough* yourself *cough* *cough*.~ */
	= @275 /* ~One day, we'll look back on this and laugh *cough* over a couple of drinks at... at... where was it...~ */ 
	IF ~~ THEN REPLY @274 /* ~The Three Old Kegs, love. You had the Berduskan dark wine, your favorite.~ */
	GOTO XAA98
END

IF ~~ THEN BEGIN XAA89B
	SAY @282 /* ~Hah, I look that bad, eh? You should see *cough* yourself *cough* *cough*.~ */
	IF ~~ THEN REPLY @283 /* ~Hang in there, Schael. We're going to find Bodhi and cure you of this cursed affliction. Can you walk?~ */
	GOTO XAA90
END

IF ~~ THEN BEGIN XAA90
	SAY @284 /* ~Y-yes... come on, love.. let's go.~ */
	= @280 /* ~(It's clear to you that Schael does not have much time left. You need to find and kill Bodhi, and soon, or you will lose the woman you love.)~  */
	IF ~~ THEN 
	EXIT
END

IF ~~ THEN BEGIN XAA98
	SAY @273 /* ~Right *cough* *wheeze* *cough*... just before we *cough*.. left for Dragonspear...~ */
	IF ~~ THEN REPLY @283 /* ~Hang in there, Schael. We're going to find Bodhi and cure you of this cursed affliction. Can you walk?~ */
	GOTO XAA90
END
//} #endregion

//{ #region Corwin Bit - Death - Dialog J-34 - CC OK
IF ~
	Global("XA_LC_CorwinBit", "GLOBAL", 8)
~ THEN BEGIN XA_CorwinBitByBodhi3
	SAY @265 /* ~*Cough* <CHARNAME> *Cough* ...~*/
	
	= @268 /* ~(She retches, and begins vomitting blood.)~ */
	
	IF ~~ THEN REPLY @266 /* ~Schael!~*/
	DO ~
		SetGlobal("XA_LC_CorwinBit", "GLOBAL", 9)
		SetGlobal("XA_LC_CorwinDiedFromBite", "GLOBAL", 1)
		ChangeAIScript("", OVERRIDE)
		ClearAllActions()	
	~
	GOTO XA_CorwinCollapse
END


IF ~~ THEN BEGIN XA_CorwinCollapse
	SAY @270 /* ~(You run over to her and she collapses into your arms.)~ */
	
	IF ~
		GlobalGT("bd_drinks_corwin", "GLOBAL", 0)
	~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_LoveLost", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("xacs08a")
	~
	EXIT
	
	IF ~
		Global("bd_drinks_corwin", "GLOBAL", 0)
	~ THEN 
	DO ~
		SetGlobal("XA_LC_Journal_LoveLost", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("xacs08c")
	~
	EXIT
END
//} #endregion

//{ #region Corwin Firkraag Deal - Dialog J-35 - CC OK
IF ~
	InParty(Myself)
	Global("XA_LC_CorwinFirkraagDeal", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinFirkraagDeal
	SAY @199 /* ~I've gone as far as I can. When you regain your senses, you can find me at the Athkatla council building.~ */
	
	IF ~~ THEN
	DO ~
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		EscapeAreaMove("AR1002",1033,563, SW)
		SetGlobal("XA_LC_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
		SetGlobal("XA_LC_CorwinFirkraagDeal", "GLOBAL", 2)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Phaere Sex - Dialog J-36 - CC OK
IF ~
	InParty(Myself)
	Global("XA_LC_PhaereTalk", "GLOBAL", 1)
	Global("PhaereInnuendo", "GLOBAL", 2)
~ THEN BEGIN XA_PhaereTalk
	SAY @216 /* ~You were with her for a while...~ */
	
	IF ~~ THEN REPLY @217 /* ~Listen, Schael. She didn't leave me any choice. I had to in order to maintain our cover.~ */
	DO ~
		SetGlobal("XA_LC_PhaereTalk", "GLOBAL", 2)
	~
	GOTO XAA69
	
	IF ~~ THEN REPLY @218 /*  ~It meant nothing to me. You are the one that I love.~ */
	DO ~
		SetGlobal("XA_LC_PhaereTalk", "GLOBAL", 2)
	~
	GOTO XAA70
	
	IF ~~ THEN REPLY @219 /* ~And? I did what I needed to, nothing more.~ */
	DO ~
		SetGlobal("XA_LC_PhaereTalk", "GLOBAL", 2)
	~
	GOTO XAA71
END

IF ~~ THEN BEGIN XAA69
	SAY @221 /* ~I understand. Let's just get out of this hole and forget that it ever happened.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA70
	SAY @220 /*  ~It means something to me. I understand though why you had to. Let's just get out of this hole and forget that it ever happened.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA71
	SAY @222 /*  ~I see. And did you enjoy it?~ */
	IF ~~ THEN REPLY @223 /* ~To be perfectly honest, I did.~ */
	GOTO XAA75
	
	IF ~
		GlobalGT("XA_LC_TimesHadSex", "GLOBAL", 0)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @428 /* ~Well, she's even better than you, so yes.~ */
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	GOTO XAA75
	
	IF ~
		GlobalGT("XA_LC_TimesHadSex", "GLOBAL", 0)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @429 /* ~She doesn't compare to you, love. No one does.~ */
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XAA99
	
	IF ~~ THEN REPLY @224 /* ~That's none of your concern.~ */
	GOTO XAA75
	
	IF ~~ THEN REPLY @225 /* ~No, I didn't. I feel nothing toward her but disgust.~ */
	GOTO XAA69
END

IF ~~ THEN BEGIN XAA75
	SAY @226 /* ~You've changed, love, and not in a good way. I can only hope that you'll return to normal once we've restored what the wizard stole from you. ~  */
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA99
	SAY @252 /* ~ ~(A fleeting smile graces her face.)~*/
	
	= @253 /*~Let's just get out of this hole and forget that it ever happened.~*/
	
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Corwin Phaere No Sex - Dialog J-37 - CC OK
IF ~
	InParty(Myself)
	Global("XA_LC_PhaereTalk", "GLOBAL", 1)
	Global("PhaereInnuendo", "GLOBAL", 3)
~ THEN BEGIN XA_PhaereTalk
	SAY @227 /* ~What'd she want?~ */
	
	IF ~~ THEN REPLY @228 /* ~For me to sleep with her.~ */
	DO ~
		SetGlobal("XA_LC_PhaereTalk", "GLOBAL", 2)
	~
	GOTO XAA72
	
	IF ~~ THEN REPLY @229 /*  ~Better not to ask. What matters is that she didn't get it.~*/
	DO ~
		SetGlobal("XA_LC_PhaereTalk", "GLOBAL", 2)
	~
	GOTO XAA74

END

IF ~~ THEN BEGIN XAA72
	SAY @230 /* ~Really - how'd you manage to get out of that one?~ */
	IF ~~ THEN REPLY @231 /* ~I told her you'd kill me for cheating on you.~ */
	GOTO XAA73
END

IF ~~ THEN BEGIN XAA73
	SAY @232 /* ~Hah! You lost your soul, but not your sense of humor, it seems. Come love, let's get going.~ */
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA74
	SAY @233 /* ~Hm, I didn't see her as the type to be so easily turned away. Let's go love.~ */
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Bodhi Deal - Dialog J-38 - CC OK
IF ~
	InParty(Myself)
	Global("XA_LC_CorwinBodhiDeal", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinBodhiDeal
	SAY @199 /* ~I've gone as far as I can. When you regain your senses, you can find me at the Athkatla council building.~ */
	
	IF ~~ THEN
	DO ~
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		SetGlobal("XA_LC_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
		SetGlobal("XA_LC_CorwinBodhiDeal", "GLOBAL", 2)
		LeaveParty()
		EscapeAreaMove("AR1002",1033,563, SW)
	~
	EXIT
END
//} #endregion

//{ #region Met Rohma Interaction BG2 (Non-Romance) - Dialog J-40 - CC OK

/* Optional Interaction - Met Rohma */
IF ~
	Global("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 2)
	!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
~
THEN BEGIN XA_OPT1Friend
	SAY @139 /* ~(You notice Captain Corwin staring into the distance, with sadness in her eyes.)~ */
	
	IF ~~ THEN REPLY @141 /* ~Captain? Are you alright?~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	GOTO XA_OPT1Friend2 //OK
	
	IF ~~ THEN REPLY @1428 /* ~(Leave her be.)~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_OPT1Friend2
	SAY @143 /* ~(She snaps to attention) ~ */
	
	= @1351 /* <CHARNAME>, yes. Sorry - I was thinking about home.~ */
	
	IF ~~ THEN REPLY @145 /* ~About your daughter and father. I understand.~ */
	GOTO XA_OPT1Friend3 //OK
	
	IF ~~ THEN REPLY @255 /* ~No need to apologize. It must be difficult for you to be away from your family.~*/
	GOTO XA_OPT1Friend3 //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend3
	SAY @146 /* ~Yes... You know, Rohma asks about you.~ */
	
	IF ~
		Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @147 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1Friend4_GaveDoll //OK
	
	IF ~
		!Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @147 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1Friend4_NoDoll //OK
	
	IF ~~ THEN REPLY @159 /* ~Of course she does. I am the *ahem* hero of Baldur's Gate, after all.~ */
	GOTO XA_OPT1Friend3C //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend3C
	SAY @160 /*  ~(She rolls her eyes)  */
	= @1350 /* ~A little humility from time to time wouldn't hurt, you know. But yes, you did leave quite the impression on her.~ */
	
	IF ~
		Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1Friend4_GaveDoll //OK
	
	IF ~
		!Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1Friend4_NoDoll //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend4_GaveDoll
	SAY @148 /* ~She loves the teddy you bought for her. It's her favorite toy.~ */
	
	IF ~~ THEN REPLY @151 /* ~It was a simple gesture.. I didn't think it would mean that much to her.~ */
	GOTO XA_OPT1Friend5 //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend4_NoDoll
	SAY @1362 /* ~The kindness that you showed her is more than her father ever did... thank you, <CHARNAME>.~*/
	
	IF ~~ THEN
	GOTO XA_OPT1END //OK
END

IF ~~ THEN BEGIN XA_OPT1Friend5
	SAY @157 /* ~That one act of kindness from you is more than her father ever did for her... thank you, <CHARNAME>.~*/

	IF ~~ THEN
	GOTO XA_OPT1END //OK
END

IF ~~ THEN BEGIN XA_OPT1END
	SAY  @158 /* ~Let's get moving.~ */
	
	IF ~~ THEN REPLY @1353 /* ~Right.~ */
	EXIT
	
	IF ~
		!Global("AerieRomanceActive","GLOBAL",2)
		!Global("ViconiaRomanceActive","GLOBAL",2)
		!Global("DornRomanceActive","GLOBAL",2)
		!Global("NeeraRomanceActive","GLOBAL",2)
		!Global("AnomenRomanceActive","GLOBAL",2)
		!Global("JaheiraRomanceActive","GLOBAL",2)
		!Global("HexxatRomanceActive","GLOBAL",2)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @1354 /* ~Capt — Schael, wait. There's something I need to tell you.~ */
	GOTO XA_OPT1END_InitRomance //OK
	
	IF ~
		!Global("AerieRomanceActive","GLOBAL",2)
		!Global("ViconiaRomanceActive","GLOBAL",2)
		!Global("DornRomanceActive","GLOBAL",2)
		!Global("NeeraRomanceActive","GLOBAL",2)
		!Global("AnomenRomanceActive","GLOBAL",2)
		!Global("JaheiraRomanceActive","GLOBAL",2)
		!Global("HexxatRomanceActive","GLOBAL",2)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @194 /* ~Maj — Schael, wait. There's something I need to tell you.~ */
	GOTO XA_OPT1END_InitRomance //OK
END

IF ~~ THEN BEGIN XA_KissEnd
	SAY @78 /* ~Let's go, love. We have work to do.~*/
	
	IF ~~ THEN REPLY @79
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_OPT1END_InitRomance
	SAY @1356 /* ~Hm?~  */
	
	IF ~~ THEN REPLY @1355 /* ~Ah... nevermind. Let's go.~ */
	GOTO XA_OPT1END_InitRomance_End //OK
	
	IF ~~ THEN REPLY @1448 /* ~I want you to know that I greatly appreciate your friendship. And I don't want to do anything to jeopardize that. But...~  */
	GOTO XA_OPT1END_InitRomance2 //OK
END

IF ~~ THEN BEGIN XA_OPT1END_InitRomance2
	SAY @1361 /* ~What is it? You can tell me.~ */
	
	IF ~~ THEN REPLY @1355 /* ~Ah... nevermind. Let's go.~ */
	GOTO XA_OPT1END_InitRomance_End //OK
	
	IF ~~ THEN REPLY @94 /* ~Schael... I... I didn't realize how much I needed you near me, until you were gone. Your being here, now, fills a void in my heart that I didn't know was there. I'd like for us to move past friendship, into a more serious relationship. I... I'm in love with you, Schael.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	GOTO XAA35
END

IF ~~ THEN BEGIN XA_OPT1END_InitRomance_End
	SAY @1357 /* ~(A look of disappointment flashes across her face.)~*/
	
	= @1 /* ~That... That's it? That's all you wanted to say?~ [XA100001] */
	
	= @1358 /*~Fine. Let's go.~*/
	
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Met Corwin Interaction BG2 (Romance) - Dialog J-41 - CC OK
IF ~
	Global("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 2)
	Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	//play romance song
~
THEN BEGIN XA_OPT1Romance
	SAY @140 /* ~(You notice Schael staring into the distance, with sadness in her eyes.)~ */
	
	IF ~~ THEN REPLY @142 /*  ~My love, are you alright?~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	GOTO XA_OPT1Romance_2 //OK
	
	IF ~~ THEN REPLY @1435 /*   ~What's wrong, dear?~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	GOTO XA_OPT1Romance_2 //OK
	
	IF ~~ THEN REPLY @1428
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	EXIT
END
IF ~~ THEN BEGIN XA_OPT1Romance_2
	SAY @144 /* ~(She snaps to attention)*/

	=@1352 /*	~Yes, sorry. I was thinking about home. I just miss them, that's all.~*/
	
	IF ~
		GlobalLT("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @149 /* ~Rohma and your father. I understand.~ */
	GOTO XA_OPT1Romance_3 //OK
	
	IF ~
		GlobalLT("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @255 /* ~No need to apologize. It must be difficult for you to be away from your family.~*/
	GOTO XA_OPT1Romance_3 //OK
	
	IF ~
		Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @149 /* ~Rohma and your father. I understand.~ */
	GOTO XA_OPT1ARomance_3 //OK
	
	IF ~
		Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @255 /* ~No need to apologize. It must be difficult for you to be away from your family.~*/
	GOTO XA_OPT1ARomance_3 //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance_3
	SAY @146 /* ~Yes... You know, Rohma asks about you.~ */
	
	IF ~
		Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @147 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1Romance4_GaveDoll //OK
	
	IF ~
		!Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @147 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1Romance4_NoDoll //OK
	
	IF ~~ THEN REPLY @159 /* ~Of course she does. I am the *ahem* hero of Baldur's Gate, after all.~ */
	GOTO XA_OPT1Romance_4 //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance_4
	SAY @160 /*  ~(She rolls her eyes)  */
	= @1350 /* ~A little humility from time to time wouldn't hurt, you know. But yes, you did leave quite the impression on her.~ */
	
	IF ~
		Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1Romance4_GaveDoll //OK
	
	IF ~
		!Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1Romance4_NoDoll //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance4_NoDoll
	SAY @1436 /* ~I think of the kindness that you showed Rohma, and how good you've been with me... ~ */

	= @1437 /* And then I think of Beno, and how stupid I was to be with scum like that... you must think I'm a fool. */
	
	IF ~~ THEN REPLY @1438 /* ~Schael, stop it. You're more than any <PRO_MANWOMAN> can hope for in this life, and a great mother to Rohma.~ */
	GOTO XA_OPT1Romance4_NoDoll2 //OK
	
	IF ~~ THEN REPLY @1439 /* ~Schael, I've never met anyone like you. I hope you understand how special you are. I do, and I know Rohma does.~ */
	GOTO XA_OPT1Romance4_NoDoll2 //OK
	
	IF ~~ THEN REPLY @1440 /*  ~Nonsense. Let go of the past, love. Focus on our future together — you, me, and Rohma.~  */
	GOTO XA_OPT1Romance4_NoDoll2 //OK
	
END

IF ~~ THEN BEGIN XA_OPT1Romance4_NoDoll2
	SAY @1441 /* ~The care and interest you've shown for her is more than Beno ever did.~ */
	
	IF ~~ THEN 
	GOTO XA_OPT1Romance4_NoDoll3 //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance4_NoDoll3
	SAY @153 /* ~She deserves better.~ */
	
	IF ~~ THEN REPLY @154 /* ~She does. Listen, Schael - I don't know if I'd be a good step parent for Rohma. What I do know is that I'll do my best.~ */
	GOTO XA_OPT1RomanceEnd //OK
	
	IF ~~ THEN REPLY @155 /* ~She does. Listen, Schael - I'm fully aware of the responsibilities and challenges of being a step parent, and I want you to know that I will welcome them.~ */
	GOTO XA_OPT1RomanceEnd  //OK
END

IF ~~ THEN BEGIN XA_OPT1Romance4_GaveDoll
	SAY @148 /* ~She loves the teddy you bought for her. It's her favorite toy.~ */
	
	IF ~~ THEN REPLY @150 /* ~Oh yes, I remember! I bought it at the general store, not long after I met her for the first time.~ */
	GOTO XA_OPT1Romance4_GaveDoll2 //OK
	
	IF ~~ THEN REPLY @151 /* ~It was a simple gesture.. I didn't think it would mean that much to her.~ */
	GOTO XA_OPT1Romance4_GaveDoll2 //OK
	
END

IF ~~ THEN BEGIN XA_OPT1Romance4_GaveDoll2
	SAY @152 /*~That one small act of kindness was more than her father ever did for her.~*/
	
	IF ~~ THEN 
	GOTO XA_OPT1Romance4_NoDoll3
END

IF ~~ THEN BEGIN XA_OPT1RomanceEnd 
	SAY @156 /*  ~I know you will. You step up to challenges instead of running from them. That's one of the reasons that I love you, <CHARNAME>. ~ */
	= @158 /* ~Let's get moving.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	EXIT
END
//} #endregion

//{ #region Neb Dead - Dialog J-42 - CC OK
IF ~
	InParty(Myself)
	Global("XA_LC_NebDead", "GLOBAL", 1)
~ THEN BEGIN XA_NebDead
	SAY @202 /* ~He's dead. */
	=@210 /*~(Her hands tremble with anger.)~*/
	=@211 /*~What kind of monster could murder one child, let alone dozens?~*/
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_NebRohma", "GLOBAL", 1)
	~ 
	THEN REPLY @203 /* ~The worst kind. (You hold her hands in yours) Are you alright, love?~ */
	DO ~
		SetGlobal("XA_LC_NebDead", "GLOBAL", 2)
	~
	GOTO XAA60
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_NebRohma", "GLOBAL", 1)
	~ 
	THEN REPLY @204 /* ~The worst kind. Are you alright, Schael?~ */
	DO ~
		SetGlobal("XA_LC_NebDead", "GLOBAL", 2)
	~
	GOTO XAA60
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_LC_NebRohma", "GLOBAL", 1)
	~ 
	THEN REPLY @203 /* ~The worst kind. (You hold her hands in yours) Are you alright, love?~ */
	DO ~
		SetGlobal("XA_LC_NebDead", "GLOBAL", 2)
	~
	GOTO XAA60A
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_LC_NebRohma", "GLOBAL", 1)
	~ 
	THEN REPLY @204 /* ~The worst kind. Are you alright, Schael?~ */
	DO ~
		SetGlobal("XA_LC_NebDead", "GLOBAL", 2)
	~
	GOTO XAA60A
END

IF ~~ THEN BEGIN XAA60A
	SAY @830 /* ~People like him serve as a reminder that there's true, irredeemable evil in the world. I'll be fine.~*/
	
	IF ~
		!Global("XA_LC_ReturnToBG", "GLOBAL", 1)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	GOTO XAA62A
	
	IF ~
		!Global("XA_LC_ReturnToBG", "GLOBAL", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	GOTO XAA61A
	
	IF ~
		Global("XA_LC_ReturnToBG", "GLOBAL", 1)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	GOTO XAA62B
	
	IF ~
		Global("XA_LC_ReturnToBG", "GLOBAL", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	GOTO XAA61B
END

IF ~~ THEN BEGIN XAA60
	SAY @205 /* ~I will be. What he said about Rohma...~ */
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @206 /* ~I wouldn't worry about it. He was just trying to rattle you.~ */
	GOTO XAA61
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @207 /* ~Whatever his intentions, it doesn't matter now. He's dead, and the world is a better place for it.~*/
	GOTO XAA61
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @206 /* ~I wouldn't worry about it. He was just trying to rattle you.~ */
	GOTO XAA62
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @207 /* ~Whatever his intentions, it doesn't matter now. He's dead, and the world is a better place for it.~*/
	GOTO XAA62
END

IF ~~ THEN BEGIN XAA61
	SAY @208 /* ~You're right...*/
	
	= @212 /* ~(She calms down.)~ */
		
	IF ~~ THEN 
	GOTO XAA61A
	
	IF ~
		Global("XA_LC_ReturnToBG", "GLOBAL", 1)
	~ 
	GOTO XAA61B
END

IF ~~ THEN BEGIN XAA61A
	SAY @213 /*~Let's go, love.~*/
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA61B
	SAY @1629 /*~We better let Marshal Nederlok know what happened here. Let's go, love.~*/
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END
IF ~~ THEN BEGIN XAA62
	SAY @208 /* ~You're right...*/
	
	= @212 /* ~(She calms down.)~ */
	
	IF ~~ THEN 
	GOTO XAA62A
	
	IF ~
		Global("XA_LC_ReturnToBG", "GLOBAL", 1)
	~ 
	GOTO XAA62B
END

IF ~~ THEN BEGIN XAA62A
	SAY @209 /* ~Let's get going.~ */
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA62B
	SAY @1630 /*  ~We better let Marshal Nederlok know what happened here. He'll be in his office back at headquarters. Let's go.~ */
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Sex 2 Timer Initial - Dialog J-46 - Tested 2023-04-17 - CC OK
IF ~
	Global("XA_LC_CorwinSex2_Init", "GLOBAL", 1)
	//play romance song
~ THEN BEGIN XA_CorwinSexSecond
	SAY @529 /* ~I've been watching you, love, and of late I don't like what I see.~ [XACORJ10] */
	
	IF ~~ THEN REPLY @530 /* ~What? I don't understand.~ */
	DO ~
		SetGlobal("XA_LC_CorwinSex2_Init", "GLOBAL", 2)
		SetGlobal("XA_LC_CorwinSex_2", "GLOBAL", 1)
	~
	GOTO XA_CorwinSexSecond2
END

IF ~~ THEN BEGIN XA_CorwinSexSecond2
	SAY @531 /* ~For all of your power, your fighting skills are suspect. I shouldn't be surprised, based on your upbringing in Candlekeep, but I'm concerned.~ */
	= @536 /* ~You can be beaten by a seemingly lesser opponent if they recognize and exploit your lack of skill.~ */
	
	IF ~~ THEN REPLY @533 /* ~Perhaps you're right. I'm open to any tips you can give me.~ */
	GOTO XA_CorwinSexSecond3A
	
	IF ~~ THEN REPLY @532 /* ~You're talking to the <PRO_MANWOMAN> who defeated Sarevok and stopped Caelar's crusade. You're clearly mistaken, love.~ */
	GOTO XA_CorwinSexSecond3B
END

IF ~~ THEN BEGIN XA_CorwinSexSecond3A
	SAY @535 /* ~Very well. Get us a room and I'll show you what I mean. Let's go.~~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinSexSecond3B
	SAY @534 /* ~You defeated them with raw power, not skill. Get us a room and I'll show you what I mean. Let's go.~*/
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Corwin Intimate Bodhi - Dialog J-51 - CC OK
IF ~
	Global("XA_LC_CorwinSexAfterBodhi", "GLOBAL", 1)
	//play romance song
~ THEN BEGIN XA_CorwinWantsSex
	SAY @374 /* ~My love... do you have a moment?~ */
	
	IF ~~ THEN REPLY @376 /* ~Not right now, Schael.~ */
	DO ~
		SetGlobal("XA_LC_CorwinSexAfterBodhi", "GLOBAL", 2)
	~
	GOTO XA_CorwinWantsSex2A //OK
	
	IF ~~ THEN REPLY @375 /* ~Of course, dear. What's on your mind?~ */
	DO ~
		SetGlobal("XA_LC_CorwinSexAfterBodhi", "GLOBAL", 2)
	~
	GOTO XA_CorwinWantsSex2B //OK
END

IF ~~ THEN XA_CorwinWantsSex2A
	SAY @377 /* ~It's important. You'll want to hear this.~ */
	
	IF ~~ THEN REPLY @375 /* ~Of course, dear. What's on your mind?~ */
	GOTO XA_CorwinWantsSex2B //OK
	
	IF ~~ THEN REPLY @376 /* ~Like I said, I'm in the middle of something.~ */
	GOTO XA_CorwinWantsSex2D //OK
END

IF ~~ THEN XA_CorwinWantsSex2B
	SAY @380 /* ~I've been reflecting on recent events... and the dangers we face.~ */
	= @381 /* ~You saved my life, <CHARNAME>. I was finished after Bodhi's bite, but you saved me...~ */
	
	IF ~~ THEN REPLY @382 /* ~Would you have expected any less? I love you Schael - more than anything. You know this.~*/
	GOTO XA_CorwinWantsSex3 //OK
	
	IF ~~ THEN REPLY @383 /* ~You're a valuable ally. You'd have done the same for me.~*/
	GOTO XA_CorwinWantsSex3 //OK
END

IF ~~ THEN XA_CorwinWantsSex2C
	SAY @377 /* ~It's important. You'll want to hear this.~ */
	
	IF ~~ THEN REPLY @375 /* ~Of course, dear. What's on your mind?~ */
	GOTO XA_CorwinWantsSex2B //OK
	
	IF ~~ THEN REPLY @376 /* ~Like I said, I'm in the middle of something.~ */
	GOTO XA_CorwinWantsSex2D //OK
END

IF ~~ THEN XA_CorwinWantsSex2D
	SAY @379 /* ~Fine (sigh), forget it.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinSex_1", "GLOBAL", 5)
	~
	EXIT
END

IF ~~ THEN XA_CorwinWantsSex3
	SAY @384 /* ~Yes, of course.. what I mean to say is.. Gods, why is this so hard?~ */
	= @385 /* ~Let's not let our mission, our duties, get in the way of (she leans in) ... of our intimacy.~ */
	= @1335
	= @1336
	IF ~
		Global("XA_LC_CorwinWantsToWait", "GLOBAL", 1)
	~ THEN REPLY @387 /* ~But, I thought you wanted to wait until we returned home, to Baldur's Gate.~ */
	GOTO XA_CorwinWantsSex4A //OK
	
	IF ~~ THEN REPLY @388 /* ~I agree wholeheartedly. (You smile broadly, and kiss her.)~  */
	GOTO XAA29 //OK
	
	IF ~~ THEN REPLY @391 /* ~Are you saying what I think you're saying?~ */
	GOTO XA_CorwinWantsSex4C //OK
END

IF ~~ THEN XA_CorwinWantsSex4A
	SAY @389 /* ~It wasn't that I didn't want to. I do want to. It's just that I've always put my duty ahead of my desires.~ */
	IF ~~ THEN
	GOTO XA_CorwinWantsSex4C //OK
END

IF ~~ THEN XA_CorwinWantsSex4C
	SAY @390 /* ~Let me be perfectly clear. I want you, <CHARNAME>. I want you to make love to me.~ */
	
	IF ~
		!IsValidForPartyDialogue("HAERDALIS")
	~ THEN REPLY @392 /* ~That might be the most romantic thing anyone has ever said.~*/
	GOTO XA_CorwinWantsSex5A //OK
	
	IF ~
		IsValidForPartyDialogue("HAERDALIS")
	~ THEN REPLY @392 /* ~That might be the most romantic thing anyone has ever said.~*/
	EXTERN HAERDAJ XA_CorwinWantsSex5B //OK
	
	IF ~~ THEN REPLY @393 /* ~Nothing would please me more.~ */
	GOTO XAA29
END

IF ~~ THEN XA_CorwinWantsSex5A
	SAY @394 /* ~Hardly. (She smiles.) But I appreciate the compliment.~ */

	IF ~~ THEN
	GOTO XAA29 //OK
END
//} #endregion

//{ #region Corwin Cheap Date - Dialog J-52 - CC OK

IF ~
	Global("XA_LC_CorwinComplainSex", "GLOBAL", 1)
	GlobalLT("XA_LC_CorwinComplainSexCount", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinSexCC
	SAY @66 /* ~When I said some place more private, I didn't mean this dump. It's filthy. Let's go to one of the better establishments in the city.~ */
	
	IF ~~ THEN REPLY @67 /* ~Right... sorry, love.~ */
	DO ~
		IncrementGlobal("XA_LC_CorwinComplainSexCount", "GLOBAL", 1)
		SetGlobal("XA_LC_CorwinComplainSex", "GLOBAL", 0)
	~
	EXIT

	IF ~
		AreaCheck("AR0406") // Copper Coronet
	~ THEN REPLY @68 /* ~The rats bother you, eh?~ */
	DO ~
		IncrementGlobal("XA_LC_CorwinComplainSexCount", "GLOBAL", 1)
		SetGlobal("XA_LC_CorwinComplainSex", "GLOBAL", 0)
	~
	GOTO XA_CorwinSexCC2
	
	IF ~
		AreaCheck("AR0021") // Crooked Crane 1FL
		AreaCheck("AR0022") // Crooked Crane 2FL
	~ THEN REPLY @68 /* ~The rats bother you, eh?~ */
	DO ~
		IncrementGlobal("XA_LC_CorwinComplainSexCount", "GLOBAL", 1)
		SetGlobal("XA_LC_CorwinComplainSex", "GLOBAL", 0)
	~
	GOTO XA_CorwinSexCrane
END

IF ~~ THEN BEGIN XA_CorwinSexCrane
	SAY @771 /*~That, and we're not making love in a gods damn stable. Let's go.~*/
	
	IF ~~ THEN REPLY @67 /* ~Right... sorry, love.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinSexCC2
	SAY @69 /* ~Rats, slavers, thieves, the stench, all of it bothers me. Let's go.~ */
	
	IF ~~ THEN REPLY @67 /* ~Right... sorry, love.~ */
	EXIT
END
//}

//{ Dialog J-53A - CC OK
IF ~
	Global("XA_LC_CorwinComplainSex", "GLOBAL", 1)
	Global("XA_LC_CorwinComplainSexCount", "GLOBAL", 1)
	Global("XA_LC_CorwinSex_1", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinSexCC3
	SAY @70 /* ~I already told you, we are not making love in this dump.~ */
	= @71 /*  ~You know what? Forget it. I'm not in the mood anymore. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinSex_1", "GLOBAL", 5)
		SetGlobal("XA_LC_CorwinComplainSex", "GLOBAL", 0)
		SetGlobal("XA_LC_CorwinComplainSexCount", "GLOBAL", 0)
	~
	EXIT
END
//}

//{ Dialog J-53B - CC OK
IF ~
	Global("XA_LC_CorwinComplainSex", "GLOBAL", 1)
	Global("XA_LC_CorwinComplainSexCount", "GLOBAL", 1)
	Global("XA_LC_CorwinSex_2", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinSexCC3
	SAY @70 /* ~I already told you, we are not making love in this dump.~ */
	= @71 /*  ~You know what? Forget it. I'm not in the mood anymore. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinSex_2", "GLOBAL", 5)
		SetGlobal("XA_LC_CorwinComplainSex", "GLOBAL", 0)
		SetGlobal("XA_LC_CorwinComplainSexCount", "GLOBAL", 0)
	~
	EXIT
END
//}

//{ #region Brevlik Arrested - Dialog J-54 - CC OK
IF ~
	Global("XA_LC_BrevlikArrested", "GLOBAL", 1)
	GlobalLT("XA_LC_GoBackHOW", "LOCALS", 1)
~ THEN BEGIN XA_BrevlikArrested
	SAY @538 /* ~Brevlik, your advocate will be with your shortly. <CHARNAME> — we better head back to the Hall of Wonders.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_GoBackHOW", "LOCALS", 1)
	~
	EXIT
END
//} #endregion




//{ Dialog J-56 - CC OK
IF ~
	!Global("XA_LC_CorwinCanHaveSex", "GLOBAL", 1)
	Global("XA_LC_TryToSleep", "GLOBAL", 1)
	OR(5)
		Global("XA_LC_CorwinSex_1", "GLOBAL", 1)
		Global("XA_LC_CorwinSex_2", "GLOBAL", 1)
		Global("XA_LC_CorwinSex_3", "GLOBAL", 1)
		Global("XA_LC_CorwinSex_4", "GLOBAL", 1)
		Global("XA_LC_CorwinSex_5", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinCantHaveSex
	SAY @367 /* ~My dear... as much as I'd love to sleep with you...~*/
	IF ~
		GlobalGT("XA_LC_CorwinBit", "GLOBAL", 0)
	~ THEN
	DO ~
		SetGlobal("XA_LC_TryToSleep", "GLOBAL", 0)
	~
	GOTO XA_CorwinCantHaveSex1
	
	IF ~
		HPPercentLT(Myself, 50)
	~ THEN
	DO ~
		SetGlobal("XA_LC_TryToSleep", "GLOBAL", 0)
	~
	GOTO XA_CorwinCantHaveSex2
	
	IF ~
		HPPercentLT(Player1, 50)
	~ THEN
	DO ~
		SetGlobal("XA_LC_TryToSleep", "GLOBAL", 0)
	~
	GOTO XA_CorwinCantHaveSex3
END

IF ~~ THEN BEGIN XA_CorwinCantHaveSex1
	SAY @370 /* ~This bite... I'm not feeling well *cough* at all.~ */
	IF ~~ THEN REPLY @371 /* ~I understand, love.~ */
	EXIT
	
	IF ~~ THEN REPLY @372 /*~Let's just try and get some rest instead.~*/
	DO ~
		SetGlobal("XA_LC_OnlySleep", "GLOBAL", 1)
		RestParty()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinCantHaveSex2
	SAY @369 /* ~I really need to have these wounds looked at first.~ */
	IF ~~ THEN REPLY @371 /* ~I understand, love.~ */
	EXIT
	
	IF ~~ THEN REPLY @372/*~Let's just try and get some rest instead.~*/
	DO ~
		SetGlobal("XA_LC_OnlySleep", "GLOBAL", 1)
		RestParty()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinCantHaveSex3
	SAY @368 /* ~You really need to have those wounds looked at first.~ */
	IF ~~ THEN REPLY @371 /* ~I understand, love.~ */
	EXIT
	
	IF ~~ THEN REPLY @372/*~Let's just try and get some rest instead.~*/
	DO ~
		SetGlobal("XA_LC_OnlySleep", "GLOBAL", 1)
		RestParty()
	~
	EXIT
END

//}

//{ Dialog J-57 - CC OK
IF ~
	InParty(Myself)
	Global("XA_LC_CorwinHexxat", "GLOBAL", 5)
	IsValidForPartyDialogue("Hexxat")
	OR(6)
		IsValidForPartyDialogue("Mazzy")
		IsValidForPartyDialogue("Anomen")
		IsValidForPartyDialogue("Aerie")
		IsValidForPartyDialogue("Keldorn")
		IsValidForPartyDialogue("XACAELAR")
		IsValidForPartyDialogue("Jaheira")
~ THEN BEGIN XA_CorwinHexxat3
	SAY @137 /* ~Your time has come, vampire. Allies, to me! Let's rid ourselves of this beast once and for all! ~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinHexxat", "GLOBAL", 6)
		SetGlobal("XA_LC_CorwinHexxatFight", "GLOBAL", 1)
	~
	EXIT
END
//}

//{ Dialog J-58 - CC OK
IF ~
	InParty(Myself)
	Global("XA_LC_CorwinHexxat", "GLOBAL", 5)
	IsValidForPartyDialogue("Hexxat")
	!IsValidForPartyDialogue("Mazzy")
	!IsValidForPartyDialogue("Anomen")
	!IsValidForPartyDialogue("Aerie")
	!IsValidForPartyDialogue("Keldorn")
	!IsValidForPartyDialogue("XACAELAR")
~ THEN BEGIN XA_CorwinHexxat3
	SAY @138 /* ~Your time has come, vampire. Draw steel! ~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinHexxat", "GLOBAL", 6)
		SetGlobal("XA_LC_CorwinHexxatFight", "GLOBAL", 1)
	~
	EXIT
END
//}

//{ Dialog J-59 - CC OK
IF ~
	Global("XA_LC_CorwinHexxat", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinHexxat1
	SAY @130 /* ~<CHARNAME>. We need to talk.~ */
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @132 /* ~Of course love, what's on your mind? */
	DO ~
		SetGlobal("XA_LC_CorwinHexxat", "GLOBAL", 2)
		SetGlobalTimer("XA_LC_CorwinHexxatTimer", "LOCALS", ONE_DAY)
	~
	GOTO XAA38
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @131 /*  ~What is it, Captain?~*/
	DO ~
		SetGlobal("XA_LC_CorwinHexxat", "GLOBAL", 2)
		SetGlobalTimer("XA_LC_CorwinHexxatTimer", "LOCALS", ONE_DAY)
	~
	GOTO XAA38
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @312 /*  What is it, Major?~*/
	DO ~
		SetGlobal("XA_LC_CorwinHexxat", "GLOBAL", 2)
		SetGlobalTimer("XA_LC_CorwinHexxatTimer", "LOCALS", ONE_DAY)
	~
	GOTO XAA38
END

IF ~~ THEN BEGIN XAA38
	SAY @133 /* ~The vampire. Hexxat. You allow this beast to travel with us?~ */
	
	IF ~~ THEN REPLY @134 /* ~We need her, Schael.~ */
	GOTO XAA39
	
	IF ~~ THEN REPLY @135 /* ~And what of it?~ */
	GOTO XAA39	
END

IF ~~ THEN BEGIN XAA39
	SAY @136 /* ~You're going to have to make a decision, and soon, or I will make it for you. I trust that I've made myself clear.~ */
	
	IF ~~ THEN
	EXIT
END

//}

//{ Dialog J-60 - CC OK
IF ~
	Global("XA_LC_Banter_CorwinPlayer", "GLOBAL", 4)
	Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	// play romance song
~
THEN BEGIN XA_CorwinPlayerBant2A
	SAY @162 /*~Are you alright, hon? You've a look of concern about you.~ */
	
	IF ~~ THEN REPLY @163 /* ~Yes love, I am fine. I was just thinking about some of the places and people we've seen...~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	GOTO XAA48 //OK
	
	IF ~~ THEN REPLY @116 /* ~It's nothing... Let's go.~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
END

//}

//{ Dialog J-61 - CC OK
IF ~
	Global("XA_LC_Banter_CorwinPlayer", "GLOBAL", 4)
	!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
~
THEN BEGIN XA_CorwinPlayerBant2B
	SAY @188 /* ~<CHARNAME>, are you alright? You have a look of concern about you.~ */
	
	IF ~~ THEN REPLY @167 /* ~Yes Schael, I am fine. I was just thinking about some of the places and people we've seen...~ */ 
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	GOTO XAA48 //OK
	
	IF ~~ THEN REPLY @116 /* ~It's nothing... Let's go.~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
END
//}

//{ Dialog J-62 - CC OK
IF ~
	Global("XA_LC_Banter_CorwinPlayer", "GLOBAL", 2)
	Global("XA_LC_CorwinContinue", "GLOBAL", 1) //Friend
	//play romance song
~
THEN BEGIN XA_SkieMessageDelivered_Friend
	SAY @84 /* ~<CHARNAME>, do you have a moment?~ */
	IF ~~ THEN REPLY @85 /* ~Of course Schael, what's on your mind?~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA31
	
	IF ~~ THEN REPLY @110 /* ~Not right now.~*/
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA31A
END
//}

IF ~~ THEN BEGIN XAA31A
	SAY @111 /* ~I know you have a lot on your mind, but surely, you can spare a minute.~*/
	
	IF ~~ THEN REPLY @112 /* ~Fine, what is it?~*/
	GOTO XAA31
	
	IF ~~ THEN REPLY @113 /* ~Like I said, I'm busy.~ */
	GOTO XAA31B
END

IF ~~ THEN BEGIN XAA31B
	SAY @114 /* ~Fine. Sorry to have bothered you.~*/
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -2)
	~
	EXIT
END

//{ Dialog J-63 - CC OK
IF ~
	Global("XA_LC_Banter_CorwinPlayer", "GLOBAL", 2)
	Global("XA_LC_CorwinContinue", "GLOBAL", 2) //Romance
	//play romance song
~
THEN BEGIN XA_SkieMessageDelivered_Romance
	SAY @100 /* ~My love, do you have a moment?~ */
	IF ~~ THEN REPLY @101 /* ~Of course dear, what's on your mind?~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA31
	
	IF ~~ THEN REPLY @110 /* ~Not right now.~*/
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA31A
END
//}



IF ~~ THEN BEGIN XAA4 // from player1 3
	SAY @10 /* ~Are you alright? It looked for a moment like you were about to keel over.~ */
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @11 /* ~I felt some dizziness... it's nothing, I'll be fine.~ */
	GOTO XAA6 //OK
	
	IF ~~ THEN REPLY @11 /* ~I felt some dizziness... it's nothing, I'll be fine.~ */
	GOTO XAA5 //OK
	
	IF ~~ THEN REPLY @12 /* ~Let's just focus on getting out of here. I'll feel better once I am out of this hole.~ */
	GOTO XAA7 //OK
	
END



IF ~~ THEN BEGIN XAA5 // XAA4
	SAY @13 /* ~Here, put your arm around my shoulder. I'll help to keep you steady. Just take it easy, <CHARNAME>.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA6 // XAA4
	SAY @14 /* ~Here, put your arm around my shoulder. I'll help to keep you steady. Just take it easy, love.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA7 // XAA4
	SAY @15 /* ~Right. Let me know if you need anything.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA8 // player1, 5
	SAY @16 /* ~Gods, what was that <CHARNAME>? You turned into a monster!~ */
	IF ~~ THEN
	GOTO XAA9
END

IF ~~ THEN BEGIN XAA9 // player1, 5
	SAY @17 /* ~What in the hells did Irenicus do to you?~ */
	IF ~~ THEN REPLY @18 /* ~I... I don't know Schael. I felt an uncontrollable rage, and I blacked out.~ */
	GOTO XAA10 // OK
	
	IF ~~ THEN REPLY @19 /* ~I turned into WHAT?~ */
	GOTO XAA11 // OK
END

IF ~~ THEN BEGIN XAA10 // XAA9
	SAY @21 /* ~I've never seen anything like that before, and I hope to never again.~ */
	IF ~~ THEN REPLY @22 /* ~I - I am sorry that you had to see that. Please, just keep your distance, in case it happens again.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA11 //XAA9
	SAY @20 /* ~I don't know how else to describe it... <CHARNAME>, it was terrifying. ~ */
	IF ~~ THEN REPLY @22 /* ~I - I am sorry that you had to see that. Please, just keep your distance, in case it happens again.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA12 // from:
	SAY @23 /* ~My love, are you feeling any better? Let me help get you on your feet - we need to keep moving.~ */
	IF ~~ THEN REPLY @24 /* ~Schael, please stay away, for your own safety.~ */ 
	DO ~
		SetGlobal("EndangerLovedOne","GLOBAL",80)
	~ 
	GOTO XAA13
	
	IF ~~ THEN REPLY @25 /* ~Keep back, I think - I think it's happening again!~ */ 
	DO ~
		SetGlobal("EndangerLovedOne","GLOBAL",80)
	~ 
	GOTO XAA13
	
	IF ~~ THEN REPLY @26 /* ~Get as far away from me as possible, now!~ */ 
	DO ~
		SetGlobal("EndangerLovedOne","GLOBAL",80)
	~ 
	GOTO XAA13

END

IF ~~ THEN BEGIN XAA13 //XAA12
	SAY @27 /* ~What's wrong <CHARNAME>... your lips are moving but I can't hear you.. no... not again... NO!~ */
	IF ~~ THEN 
	DO ~
		ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
	~
	EXIT
END

IF ~~ THEN BEGIN XAA14 //XAA12
	SAY @28 /* ~<CHARNAME>, you could have killed me. I can't risk... we can't be together if you can't get this under control.~ */
	IF ~~ THEN REPLY @29 /* ~Schael, if I lose control again and put you in danger, kill me. I couldn't bear to know that I harmed the woman I love.~ */
	GOTO XAA15 //OK
	
	IF ~~ THEN REPLY @30 /* ~I don't know how to control it, or even if I can. Keep your distance, please.~ */
	GOTO XAA16 //OK
	
	IF ~~ THEN REPLY @31 /* ~I know that whatever this is, I will get it under control. ~ */
	GOTO XAA17 //OK
END

IF ~~ THEN BEGIN XAA15 // XAA14
	SAY @32 /* ~And I couldn't bear to know that I killed you. Let's just hope it doesn't come to that.~ */
	IF ~~ THEN REPLY @35 /* ~ ~Agreed. Let's go.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA16 // XAA14
	SAY @33 /* ~You need me by your side, now more than ever. Don't worry - I'll stay clear if it looks like it's about to happen again.~ */
	IF ~~ THEN REPLY @36 /* ~ Thank you Schael... let's go.~*/
	EXIT
END

IF ~~ THEN BEGIN XAA17 //XAA14
	SAY @34 /* ~Good. We'll get through this together, whatever it takes. Let me know if there is anything I can do to help.~ */
	IF ~~ THEN REPLY @36 /* ~ Thank you Schael... let's go.~*/
	EXIT
END

IF ~~ THEN BEGIN XAA18 // player1, 15
	SAY @37 /* ~Quickly, we had better give these lunatics some direction, or they may turn on us.~ */
	IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
		SetGlobal("AsylumPlot","GLOBAL",54)
		StartCutSceneMode()
		StartCutSceneEx("Cut41m",FALSE)
	~ 
	EXIT
END

IF ~~ THEN BEGIN XAA19
	SAY @446 /* ~The bastard is finally dead. The Council will be pleased. I know I am.~ */
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	GOTO XAA19A

	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	GOTO XAA19B
END

IF ~~ THEN BEGIN XAA19A
	SAY @447 /* ~And your soul, my love - are you feeling any differently?~ */
	IF ~~ THEN
	EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN XAA19B
	SAY @448 /* ~And your soul, <CHARNAME> - are you feeling any differently?~ */
	IF ~~ THEN
	EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN XAA20
	SAY @39 /* ~<CHARNAME>, I am going with you. We've come this far together, and my love for you is too strong for me to turn back now.~ */
	IF ~~ THEN REPLY @40 /* ~I love you too, Schael, more than you know. Thank you... for everything.~ */
	GOTO XA_P33Transitions
	
	IF ~~ THEN REPLY @41 /* ~I love you too Schael. You need not risk yourself any further. Think of your father. Think of Rohma.~ */
	GOTO XAA21
END

IF ~~ THEN BEGIN XAA21
	SAY @42 /* ~Irenicus needs to be stopped. While he is alive no one is safe, and that includes Rohma. Being at your side, love, is the best way I can protect her, and Baldur's Gate.~ */
	
	IF ~~ THEN REPLY @43 /* ~Thank you, my love.*/
	GOTO XA_P33Transitions
END

IF ~~ THEN BEGIN XAA22
	SAY @47 /* ~No, <CHARNAME>. I am coming with you. Irenicus needs to be stopped. While he is alive no one is safe, and that includes Rohma. Being at your side, my friend, is the best way I can protect her, and Baldur's Gate.~ */
	IF ~~ THEN REPLY @48 /* ~Thank you Schael... for everything.~ */
	GOTO XA_P33Transitions
END

IF ~~ THEN BEGIN XAA23
	SAY @49 /* ~And you shall have it, my friend. Irenicus must be stopped, whatever it takes.~ */
	IF ~~ THEN REPLY @48 /* ~Thank you Schael... for everything.~ */
	GOTO XA_P33Transitions
END

IF ~~ THEN BEGIN XAA24
	SAY @50 /* ~I'm with you, <CHARNAME>. Irenicus must be stopped, before he can destroy any more innocent lives.~ */
	IF ~~ THEN REPLY @48 /* ~Thank you Schael... for everything.~ */
	GOTO XA_P33Transitions
END

IF ~~ THEN BEGIN XA_P33Transitions
	SAY @445 /* ~(You share a warm embrace, and steel yourself for the battle ahead.)~ */
	
	COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN XA_CorwinMadam2
	SAY @51 /* ~No, Madame, <PRO_HESHE> doesn't need anything from this whorehouse.~ */
	IF ~~ THEN
	EXTERN ~MADAM~ XA_CorwinMadam3
END

IF ~~ THEN BEGIN XA_P1_25A
	SAY @248 /* ~My love, we... died? I felt you, pulling me with you to this place. Very well - we were together in life and will remain so, in death.~ */
	COPY_TRANS PLAYER1 25
END

IF ~~ THEN BEGIN XA_P1_25B
	SAY @57 /* ~<CHARNAME>, we... died? I felt you, pulling me with you to this place. Very well - we stood at each other's side in life and will continue to do so, in death.~ */
	COPY_TRANS PLAYER1 25
END

IF ~~ THEN BEGIN XAA27A
	SAY @53 /*  ~Don't look so disappointed, love. There'll be plenty of time for those... activities... once we get back to Baldur's Gate.~ */

	IF ~~ THEN REPLY @58 /* ~(Kiss her) I look forward to that day.~ */
	GOTO XAA28 //OK
END

IF ~~ THEN BEGIN XAA27
	SAY @52 /*  ~(She laughs) */
	
	= @53 /* ~Don't look so disappointed, love. There'll be plenty of time for those... activities... once we get back to Baldur's Gate.~ */
	
	IF ~~ THEN REPLY @58 /* ~(Kiss her) I look forward to that day.~ */
	GOTO XAA28 //OK
	
	IF ~
		CheckStatGT(Player1, 15, CHR)
	~ THEN REPLY @59 /* ~(Kiss her) Why wait?~ */
	GOTO XAA30A //OK
	
	IF ~
		!CheckStatGT(Player1, 15, CHR)
	~ THEN REPLY @59 /* ~(Kiss her) Why wait?~ */
	GOTO XAA30B //OK
END

IF ~~ THEN BEGIN XAA28
	SAY @55 /* ~As do I. Let's go love. We have work to do.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinWantsToWait", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA29
	SAY @62 /* ~Let's go find some place a little more private...~ [XA100102] ~ */
	IF ~~ THEN REPLY @63 /* ~What did you have in mind?~ */
	GOTO XAA30C
	
	IF ~~ THEN REPLY @65 /* ~Come with me love, I know just the place.~ */
	GOTO XAA31C
END

IF ~~ THEN BEGIN XAA30A
	SAY @61 /* ~Mm, is that an order, hero?~ */
	
	= @108 /* ~(She smiles, and places her arms around your shoulders.)~ */
	
	= @109 /* ~Gods know it's been too long already.~ */
	
	IF ~~ THEN
	GOTO XAA29
END

IF ~~ THEN BEGIN XAA30B
	SAY @60 /* ~Mm. As much as I want to, this is hardly the time or place, and duty must come before pleasure. Let's go love. We have work to do.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinWantsToWait", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA30C
	SAY @64 /* ~The street in mid-day, or perhaps the amphitheater. Gods, what do you think? There are plenty of inns in the city, pick one!~ */
	IF ~~ THEN REPLY @65 /* ~Come with me, I know just the place.~ */
	GOTO XAA31C
END

IF ~~ THEN BEGIN XAA31C
	SAY @308 /* ~Gladly, my dear.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinSex_1", "GLOBAL", 1)
		AddJournalEntry(@1126, INFO)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA31
	SAY @86 /* ~Before I left Baldur's Gate, Skie approached me and asked that I give you a message.~ */
	= @87 /* ~She said that she wanted to thank you for releasing her from the dagger, and to apologize for her father's behaviour. You deserved far better than what happened to you.~ */
	
	IF ~~ THEN REPLY @88 /* ~There is no need for her to apologize for her father. She was not the one who tried to have me executed. I do appreciate the gesture, however. ~ */
	GOTO XAA32

	IF ~~ THEN REPLY @89 /* ~Thank you Schael, though I doubt I would have acted any differently if I were in Entar's shoes. That scoundrel Irenicus made sure that all of the evidence pointed to my guilt.~  */
	GOTO XAA33
END

IF ~~ THEN BEGIN XAA32
	SAY @90 /* ~Entar was completely convinced of your guilt, as were many others.~  */
	
	IF ~
		Global("XA_LC_CorwinContinue", "GLOBAL", 1) //friend
	~ 
	THEN REPLY @92 /* ~But not you. Schael, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO XAA34A
	
	IF ~
		Global("XA_LC_CorwinContinue", "GLOBAL", 2) //romance
	~ 
	THEN REPLY @102 /* ~But not you. My love, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO XAA34B	
END

IF ~~ THEN BEGIN XAA33
	SAY @91 /* ~Indeed. He had much of the city convinced of your guilt.~ */
	
	IF ~
		Global("XA_LC_CorwinContinue", "GLOBAL", 1) //friend
	~ 
	THEN REPLY @92 /* ~But not you. Schael, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO XAA34A
	
	IF ~
		Global("XA_LC_CorwinContinue", "GLOBAL", 2) //romance
	~ 
	THEN REPLY @102 /* ~But not you. My love, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO XAA34B	
END

IF ~~ THEN BEGIN XAA34A // friend
	SAY @93 /* ~It wasn't. I miss her everyday. But I need to be here, with you. Irenicus must be punished for the crimes he has committed.~ */
	
	IF ~~ THEN REPLY @83 /*  ~With your help, he will be, my friend. Let's go.~ */
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 3)
		SetPlayerSound(Myself,268282,SELECT_ACTION6)
	~
	EXIT
	
	IF ~~ THEN REPLY @94 /*  ~Schael... I... I didn't realize how much I needed you near me, until you were gone. Your being here, now, fills a void in my heart that I did not know was there. I would like for us to move past friendship, into a more serious relationship. I... am in love with you, Schael.~*/
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("XA_LC_CorwinLoveBG2", "GLOBAL", 1)
	~
	GOTO XAA35
END

IF ~~ THEN BEGIN XAA34B // romance
	SAY @103 /* ~It wasn't. I miss her everyday. But I need to be here, with you, dear. Irenicus must be punished for the crimes he has committed.~ */
	
	IF ~~ THEN REPLY @104 /*  ~He will be, my love. And when this is done, we will go back to Baldur's Gate and start our new life together, with Rohma.~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO XAA36
END

IF ~~ THEN BEGIN XAA35
	SAY @124 /* ~(She's momentarily taken aback.)~ */
	
	= @95 /*  ~<CHARNAME>, I missed you too, dearly... and I've been thinking about this for a long time. I also want us to be more to eachother than what we are now.~*/
	
	= @125 /* ~My... my heart broke when I read your letter. I keep thinking that if I'd left with you, you wouldn't have been captured, maybe Khalid and Dynaheir would still be alive, maybe —~ */
	
	IF ~~ THEN REPLY @96 /* ~Stop it, Schael. You can't blame yourself for what happened. There's nothing that you could have done to stop it; Irenicus set his trap perfectly. It's better that you were not with me when we were captured — I shudder to think what Irenicus would've done to you had you been captured as well.~*/
	GOTO XAAKiss
	
	IF ~~ THEN REPLY @97 /*  ~Schael, forget the past. What matters is that we are here together, now.~ */
	GOTO XAAKiss
END

IF ~~ THEN BEGIN XAAKiss
	SAY @73 /* Come here, hero -~ */
	IF ~
		Global("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinLoveTOB", "GLOBAL", 1)
	~
	GOTO XAAKissChain
	
	IF ~
		GlobalLT("XA_LC_BeenToPocketPlane", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinLoveBG2", "GLOBAL", 1)
	~
	GOTO XAAKissChain
END

IF ~~ THEN BEGIN XAA36
	SAY @105 /* ~I've been looking forward to that day... more than you know. Let's go, love.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		//SetPlayerSound(Myself,@452,SELECT_ACTION6)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA37
	SAY @99 /* ~Gladly, my dear.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA48
	SAY @189 /* ~What's on your mind?~ */
	
	IF ~
		GlobalLT("XA_LC_ReturnToBG", "GLOBAL", 1)
	~ THEN REPLY @164 /* ~Before I was exiled, I remember the city was still struggling with the refugee crisis. Have the Dukes had any success in resettling the refugees?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~
	GOTO XAA49
	
	IF ~~ THEN REPLY @168 /* ~We met some interesting people during the Dragonspear campaign. Remember that gnome, Glint? The goblin shaman, M'Khlin? The others, as well.~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
	~
	GOTO XAA50
	
	IF ~
		GlobalLT("XA_LC_BackToHell", "GLOBAL", 1)
	~ THEN REPLY @172 /* ~I've thought from time to time about the terror of what we experienced in Avernus. Do you think about that place?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutAvernus", "LOCALS", 1)
	~
	GOTO XAA51
	
	IF ~
		!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinEET", "GLOBAL", 1)
	~ THEN REPLY @180 /* ~I was thinking about the first time we met. Do you remember, love?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_CorwinEET
	
	IF ~
		!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinEET", "GLOBAL", 0)
	~ THEN REPLY @180 /* ~I was thinking about the first time we met. Do you remember, love?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_NoCorwinEET
	
	IF ~
		!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinEET", "GLOBAL", 1)
	~ THEN REPLY @193 /* ~I was thinking about the first time we met. Do you remember?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_CorwinEET
	
	IF ~
		!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinEET", "GLOBAL", 0)
	~ THEN REPLY @193 /* ~I was thinking about the first time we met. Do you remember?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_NoCorwinEET
END

IF ~~ THEN BEGIN XAA48A
	SAY @190 /* ~Anything else you'd like to discuss?~ */
	
	IF ~
		GlobalLT("XA_LC_ReturnToBG", "GLOBAL", 1)
		!Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @164 /* ~Before I was exiled, I remember the city was still struggling with the refugee crisis. Have the 
	Dukes had any success in resettling the refugees?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~
	GOTO XAA49 //OK
	
	IF ~
		!Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @168 /* ~We met some interesting people during the Dragonspear campaign. Remember that gnome, Glint? The goblin shaman, M'Khlin? The others, as well.~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
	~
	GOTO XAA50 //OK
	
	IF ~
		!Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
		!Global("BD_Sacrifice_Corwin","bd4500",3)
		GlobalLT("XA_LC_BackToHell", "GLOBAL", 1)
	~ THEN REPLY @172 /* ~I've thought from time to time about the terror of what we experienced in Avernus. Do you think about that place?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutAvernus", "LOCALS", 1)
	~
	GOTO XAA51 //OK
	
	IF ~
		!Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
		Global("BD_Sacrifice_Corwin","bd4500",3)
		GlobalLT("XA_LC_BackToHell", "GLOBAL", 1)
	~ THEN REPLY @172 /* ~I've thought from time to time about the terror of what we experienced in Avernus. Do you think about that place?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutAvernus", "LOCALS", 1)
	~
	GOTO XAA57 //OK
	
	IF ~
		!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinEET", "GLOBAL", 1)
	~ THEN REPLY @180 /* ~I was thinking about the first time we met. Do you remember, love?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_CorwinEET
	
	IF ~
		!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinEET", "GLOBAL", 0)
	~ THEN REPLY @180 /* ~I was thinking about the first time we met. Do you remember, love?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_NoCorwinEET
	
	IF ~
		!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinEET", "GLOBAL", 1)
	~ THEN REPLY @193 /* ~I was thinking about the first time we met. Do you remember?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_CorwinEET
	
	IF ~
		!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinEET", "GLOBAL", 0)
	~ THEN REPLY @193 /* ~I was thinking about the first time we met. Do you remember?~ */
	DO ~
		SetGlobal("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO XAA54_NoCorwinEET
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(4)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(4)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ 
	THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA49
	SAY @165 /* ~Yes, at least those whose homes were not completely destroyed by the crusade. There are still many that need to be resettled.~ */
	= @166 /* ~There are plans to settle them just east of the city. Some ankheg nests will need to be cleared, but the city planners think it's a workable solution.~ */		
	IF ~
		OR(3)
			!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			!Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @191 /* ~It's good that at least some progress was made.~ */
	GOTO XAA48A //OK
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END 

IF ~~ THEN BEGIN XA_SlaveGirl
	SAY @749 /* ~Little girl, what's your name? You said you were sent here from Baldur's Gate? ~ */
	
	IF ~~ THEN 
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("XA_LC_CorwinSlaverPlot", "GLOBAL", 1)
		SetGlobal("XA_LC_LearnedSlaveGirlsName", "GLOBAL", 1)
	~
	EXTERN XAGIRL2 XA_SlaveGirl2
END

IF ~~ THEN BEGIN XA_SlaveGirl3
	SAY @751 /* ~Here, take this gold.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_GaveSlaveGirlMoney", "GLOBAL", 1)
		ActionOverride("girl2", TakePartyGold(100))
	~
	EXTERN XAGIRL2 XA_SlaveGirl4
END

IF ~~ THEN BEGIN XA_SlaveGirl5A
	SAY @729  /* ~Us? How many more of you are there?~ */
	
	IF ~~ THEN 
	EXTERN XAGIRL2 XA_SlaveGirl5B
END

IF ~~ THEN BEGIN XA_SlaveGirl5C
	SAY @750  /* ~Do you know if there are others being held here?~ */
	
	IF ~~ THEN
	EXTERN XAGIRL2 XA_SlaveGirl5B
END

IF ~~ THEN BEGIN XA_SlaveGirl5C_A
	SAY @772 /* ~We've already freed them. Tina, listen to me. Get out of here, then head to the Government District. Speak to Inspector Brega, and tell him everything that happened. Go, now!~   */
	
	IF ~
		Global("XA_LC_GaveSlaveGirlMoney", "GLOBAL", 1)
	~ THEN EXTERN XAGIRL2 5
	
	IF ~
		!Global("XA_LC_GaveSlaveGirlMoney", "GLOBAL", 1)
	~ THEN EXTERN XAGIRL2 4
END

IF ~~ THEN BEGIN XA_SlaveGirl5C_B
	SAY @752 /* ~We'll find them, don't worry. Get out of here, then head to the Government District. Speak to Inspector Brega, and tell him everything that happened. Go, now!~   */
	
	IF ~
		Global("XA_LC_GaveSlaveGirlMoney", "GLOBAL", 1)
	~ THEN EXTERN XAGIRL2 5
	
	IF ~
		!Global("XA_LC_GaveSlaveGirlMoney", "GLOBAL", 1)
	~ THEN EXTERN XAGIRL2 4
END

IF ~~ THEN BEGIN XAA50
	SAY @169  /* ~Hah, how could anyone forget. I miss our colleagues from the coalition as well... even that prick de Lancie. Hopefully they're doing well.~ */
	
	IF ~
		OR(3)
			!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			!Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @170 /* ~Yes, I hope so too. I have a feeling we'll run into them again, sooner or later.~ */
	GOTO XAA48A //OK
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
		
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA51
	SAY @173 /* ~I do, too. It's only natural, I suppose. It was a traumatic experience for all of us.~ */
	
	IF ~
		GlobalLT("XA_LC_CaelarAliveInAvernus","GLOBAL",1)
	~ THEN REPLY @174 /* ~Yes. I often wonder about Aun, Caelar's uncle. Do you think he is still alive, in Avernus?~ */
	GOTO XAA52 //OK
	
	IF ~
		Global("XA_LC_CaelarAliveInAvernus","GLOBAL",1)
		GlobalLT("XA_LC_CaelarRescue", "GLOBAL", 1)
	~ THEN REPLY @175 /* ~Yes. I often wonder about Caelar, and whether she is still alive, in Avernus.~ */
	GOTO XAA53 //OK
END

IF ~~ THEN BEGIN XAA52
	SAY @177 /* ~Perhaps he is. I'm grateful for his sacrifice. I can't imagine the heartbreak he felt watching his niece pledge her soul to a demon.~ */
	
	IF ~
		OR(3)
			!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			!Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @192  /* ~Indeed. I too am grateful.~ */
	GOTO XAA48A //OK
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA53
	SAY @176 /* ~Perhaps she is. But it doesn't matter. I don't think we'll need to worry about her ever again.~ */
	IF ~
		OR(3)
			!Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			!Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @186 /* ~I hope you're right.~ */
	GOTO XAA48A //OK
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA54_NoCorwinEET
	SAY @1300 /*  ~Of course. It was at the Ducal palace... we were under attack by assassins sent by the crusade.~ */
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1301 /* ~Even amidst the chaos of that night, I remember being capitvated by your beauty. I still am.~ */
	GOTO XAA55 //OK
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1302 /* ~We defeated the assassins and left for Dragonspear the next morning.~ */
	GOTO XAA56 //OK
END

IF ~~ THEN BEGIN XAA54_CorwinEET
	SAY @181 /* ~Of course. It was at Wyrm's Crossing. Scar, rest his soul, introduced us. <CHARNAME>, the intrepid adventurer who had been battling bandits up and down the Sword Coast.~ */
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @182 /* ~And Captain Schael Corwin of the Flaming Fist, who was investigating the Iron Throne within the city. I remember being captivated by your beauty. I still am.~ */
	GOTO XAA55 //OK
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @184 /* ~And Captain Schael Corwin of the Flaming Fist, who was investigating the Iron Throne within the city.~ */
	GOTO XAA56 //OK
END

IF ~~ THEN BEGIN XAA55
	SAY @183 /* ~I'll take your words over roses, any day.~ */
	
	IF ~
		OR(3)
			!Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			!Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			!Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @195 /* ~(You share a warm embrace)~ */
	GOTO XAA48A	//OK
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA56
	SAY @183 /* ~The beginnings of a long and fruitful friendship, one that I hope will last well into the future.~ */
	
	IF ~
		OR(3)
			!Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			!Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			!Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @187 /* ~As do I, my friend.~ */
	GOTO XAA48A	//OK
	
	IF ~
		OR(3)
			Global("XA_LC_AskedAboutAvernus", "LOCALS", 1)
			Global("XA_LC_AskedAboutDSFriends", "LOCALS", 1)
			Global("XA_LC_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN XAA57
	SAY @173 /* ~I do, too. It's only natural, I suppose. It was a traumatic experience for all of us.~ */
	= @196  /* ~You nearly sacrificed my soul to that damned demon.. what was its name? Thrax?~ */
	
	IF ~~ THEN REPLY @197 /* ~Thrix the Profane, if I remember correctly. Your soul was never in danger - I'd never let a demon like that outsmart me.~ */
	GOTO XAA58 //OK
END

IF ~~ THEN BEGIN XAA58
	SAY @198 /* ~Still, it was quite a gamble. Next time risk your own damned soul, or better yet, don't play such high stakes games with demons, got it?~ */
	
	IF ~
		GlobalLT("XA_LC_CaelarAliveInAvernus","GLOBAL",1)
	~ THEN REPLY @174 /* ~Yes. I often wonder about Aun, Caelar's uncle. Do you think he is still alive, in Avernus?~ */
	GOTO XAA52 //OK
	
	IF ~
		Global("XA_LC_CaelarAliveInAvernus","GLOBAL",1)
		GlobalLT("XA_LC_CaelarRescue", "GLOBAL", 1)
	~ THEN REPLY @175 /* ~Yes. I often wonder about Caelar, and whether she is still alive, in Avernus.~ */
	GOTO XAA53 //OK
END

IF ~~ THEN BEGIN XA_NEB_2
	SAY @201 /* ~I don't believe it! <CHARNAME>, this is Neb, the fugitive who murdered more than two dozen children in Baldur's Gate!~ */
	
	= @9  /* ~Neb! By order of the Flaming Fist you are under arrest!~ [XA100089] */
	IF ~~ THEN
	EXTERN ~NEB~ XAA0
END

IF ~~ THEN BEGIN XA_NEB_2A
	SAY @9 /* ~Neb! By order of the Flaming Fist you are under arrest!~ [XA100089] */
	IF ~~ THEN
	EXTERN ~NEB~ XAA0
END

IF ~~ THEN BEGIN XA_NebFight
	SAY @487  /* ~You threaten my daughter? You just made your last mistake!~ [BD39668] */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_NebRohma", "GLOBAL", 1)
		SetGlobal("XA_LC_NebFight", "GLOBAL", 1)
		ActionOverride("neb", Enemy())
	~
	EXIT

END



IF ~~ THEN BEGIN XAA67
	SAY @214 /* ~Thank you.~*/
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XAA68
	SAY @215 /* ~What does Irenicus gain from a war between the surface elves and the drow? There must be a reason.~ */
	IF ~~ THEN 
	EXTERN ~UDPHAE01~ 138
END

IF ~~ THEN BEGIN XAA77
	SAY @238 /* ~You know, I heard you cheering for me, love. It meant a lot.~ */
	
	= @236 /*~You don’t know how much I appreciate that.~ [XA100093]*/
	
	= @195 /* ~(You share a warm embrace.)~ */
	
	IF ~~ THEN REPLY @239 /* ~Let me see that trophy.~ */
	GOTO XAA78
END

IF ~~ THEN BEGIN XAA78
	SAY @1427 /* ~(She hands it over.)~  */
	
	= @240 /* ~So, what do you think?~ */
	IF ~~ THEN REPLY @241 /* ~I think that you'll never cease to amaze me.~ */
	GOTO XAA79
	
	IF ~~ THEN REPLY @1464 /* ~(Examine the trophy.)~ */
	GOTO XAA80
END

IF ~~ THEN BEGIN XAA79
	SAY @242 /* ~Hah, that much is obvious. What do you think about the *trophy*.~ */
	
	IF ~~ THEN REPLY @243 /* @243 = ~Hm... (You examine the trophy - it's a figurine of an archer cast in gold, with a plaque beneath that states 'Schael Corwin - Winner - Trademeet Archery Competition'.) Very nice. Your father will be proud.~ */
	GOTO XAA80
END

IF ~~ THEN BEGIN XAA80
	SAY @243 /* You examine the trophy — it's a figurine of an archer cast in gold, with a plaque beneath that states 'Schael Corwin - Winner - Trademeet Archery Competition'.*/
	
	IF ~~ THEN REPLY @1465 /* ~Very nice. Your father will be proud.~*/
	GOTO XAA80A
	
	IF ~~ THEN REPLY @1466 /* ~The figurine doesn't quite do you justice, dear.~ */
	GOTO XAA80B
END

IF ~~ THEN BEGIN XAA80A
	SAY @237  /* ~I think Rohma will appreciate it more... gods, I miss them...~*/
	
	IF ~~ THEN 
	GOTO XAA80C
END

IF ~~ THEN BEGIN XAA80C
	SAY @244  /* Well, that was an entertaining distraction, but it WAS a distraction. We have work to do. Let's go, love.*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_Journal_TMCorwin", "GLOBAL", 1)
		SetGlobal("XA_LC_TM_ArcheryChallenge", "GLOBAL", 3)
	~
	EXIT
END

IF ~~ THEN BEGIN XAA80B
	SAY @1467 /* ~(She lets out a hearty laugh.)~*/
	
	IF ~~ THEN 
	GOTO XAA80C
END

IF ~~ THEN BEGIN XA_HELLJON_7A
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. You nearly destroyed my hope of a future with the <PRO_MANWOMAN> I love. Prepare to meet your end, Irenicus!~ */
	COPY_TRANS HELLJON 7
END

IF ~~ THEN BEGIN XA_HELLJON_7B
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. Prepare to meet your end, Irenicus!~  */	
	COPY_TRANS HELLJON 7
END

IF ~~ THEN BEGIN XA_HELLJON_8A
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. You nearly destroyed my hope of a future with the <PRO_MANWOMAN> I love. Prepare to meet your end, Irenicus!~ */
	COPY_TRANS HELLJON 8
END

IF ~~ THEN BEGIN XA_HELLJON_8B
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. Prepare to meet your end, Irenicus!~  */	
	COPY_TRANS HELLJON 8
END

IF ~~ THEN BEGIN XA_HELLJON_9A
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. You nearly destroyed my hope of a future with the <PRO_MANWOMAN> I love. Prepare to meet your end, Irenicus!~ */
	COPY_TRANS HELLJON 9
END

IF ~~ THEN BEGIN XA_HELLJON_9B
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. Prepare to meet your end, Irenicus!~  */	
	COPY_TRANS HELLJON 9
END

IF ~~ THEN BEGIN XA_HELLJON_10A
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. You nearly destroyed my hope of a future with the <PRO_MANWOMAN> I love. Prepare to meet your end, Irenicus!~ */
	COPY_TRANS HELLJON 10
END

IF ~~ THEN BEGIN XA_HELLJON_10B
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. Prepare to meet your end, Irenicus!~  */	
	COPY_TRANS HELLJON 10
END

IF ~~ THEN BEGIN XAA83
	SAY @247 /* ~Irenicus already tried to force us apart, and failed. You will do no better. Our love is stronger than your evil.~ */
	
	IF ~~ THEN
	EXTERN BODHIAMB XAA2
END

IF ~~ THEN BEGIN XAA97
	SAY @295 /* ~No! That will n-never happen! You will die ... f-for threatening ...my family...~ */
	IF ~~ THEN
	EXTERN C6BODHI XAA3

END

IF ~~ THEN BEGIN XA_Demin
	SAY @404 /* ~<CHARNAME>! That's enough - I know that they are largely responsible for what has happened to you, but control yourself! Our fight is with Irenicus, not them!~ */
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @405 /* ~You're right. Sorry, love, I don't know what came over me.~ */
	GOTO XA_Demin2A
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @406 /* ~You're right. Sorry, Captain, I don't know what came over me.~ */
	GOTO XA_Demin2B
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @407 /* ~Fine. We'll do it your way. Self-righteous morons like the priestess here make me sick.~ */
	GOTO XA_Demin2A
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @407 /* ~Fine. We'll do it your way. Self-righteous morons like the priestess here make me sick.~ */
	GOTO XA_Demin2B
END

IF ~~ THEN BEGIN XA_Demin2A
	SAY @409 /* ~Just keep it together, my love. We are so close to victory. Priestess - what do we need to do to gain entry to the palace?~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinStopDeminFight", "GLOBAL", 1)
	~
	EXTERN SUDEMIN XA_Demin3
END

IF ~~ THEN BEGIN XA_Demin2B
	SAY @408 /* ~Just keep it together, <CHARNAME>. We are so close to victory. Priestess - what do we need to do to gain entry to the palace?~  */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinStopDeminFight", "GLOBAL", 1)
	~
	EXTERN SUDEMIN XA_Demin3
END

IF ~~ THEN BEGIN XA_Svir
	SAY @410 /* ~Have you lost your mind!? How does killing the gnomes help us in the hunt for Irenicus?~ */
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @411 /* ~I give the orders here, Captain, not you. Follow them, or step aside!~ */
	GOTO XA_Svir1C
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @412 /* ~You're right, Captain. I'm sorry - I have not been myself since my soul was stolen from me.~ */
	GOTO XA_Svir1A
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @413 /* ~You're right, love. I'm sorry - I have not been myself since my soul was stolen from me.~ */
	GOTO XA_Svir1B
END

IF ~~ THEN BEGIN XA_Svir1A
	SAY @415 /* ~My friend, I wish there was some way for me to help you... just keep it together. We'll find a way through this. Goldander - we will help you.~ */
	IF ~~ THEN
	EXTERN UDSVIR03 26
END

IF ~~ THEN BEGIN XA_Svir1B
	SAY @415 /* ~My love, I wish there was some way for me to help you... just keep it together. We'll find a way through this. Goldander - we will help you.~ */
	IF ~~ THEN
	EXTERN UDSVIR03 26
END

IF ~~ THEN BEGIN XA_Svir1C
	SAY @414 /* @414 = ~You have no idea how much this hurts. Allies, to me!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("SvirHostile","GLOBAL",1)
		SetGlobal("XA_LC_CorwinHostile","GLOBAL",1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Daleson
	SAY @422 /* ~Hahah, wait... you *are* joking, right?~*/
	IF ~~ THEN
	EXTERN DALESON 13
END

IF ~~ THEN BEGIN XA_FFCUST04A
	SAY @249 /* ~Thanks, but...~*/
	
	= @250 /* ~(She nods in your direction.)~ */
	
	= @251 /* ~My <PRO_MANWOMAN>'s got me covered.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_FFCUST04B
	SAY @424 /* ~I'm here on duty, not to pick up men... and certainly not to spend my evening with a drunkard.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_DHARLOT2A
	SAY @425 /* ~Girl - where are your parents? Do they know that you're out here turning tricks?~ */
	IF ~~ THEN
	EXTERN DHARLOT2 5
END

IF ~~ THEN BEGIN XA_DHARLOT2B
	SAY @426 /* ~Really, <CHARNAME>? Very funny.~ */
	
	= @1469 /* (She punches you in the shoulder.)~ */
	IF ~~ THEN REPLY @427 /* Ow! */
	GOTO XA_DHARLOT2A
END

IF ~~ THEN BEGIN XA_HAEGAN_0_5
	SAY @441 /* ~It's very simple. You're trading slaves, and we're here to shut you down. Do me a favor and resist - please.~ */
	IF ~~ THEN
	EXTERN HAEGAN 2
END

IF ~~ THEN BEGIN XA_ProstCorwin2
	SAY @443 /* ~H-huh? No, I'm not interested.~ */
	IF ~~ THEN
	EXTERN BPROST2 XA_ProstCorwin3
END

IF ~~ THEN BEGIN XA_InteractCorwin2
	SAY @444 /* ~As a matter of fact, I am.~ */
	IF ~~ THEN
	EXTERN DELTOW01 XA_InteractCorwin3
END

IF ~~ THEN BEGIN XA_PIRMUR01_2
	SAY @449 /* ~They're as dead as your soul, slaver scum. Hand over Claire, now!~ */
	IF ~~ THEN 
	EXTERN ~PIRMUR01~ 4
END

IF ~~ THEN BEGIN XA_KORGANJ_151
	SAY @450 /* ~Now is not the time for petty bickering. If we don't work together, none of us are making it out of here alive. Goldander - you said you knew of someone who could help us get into the city?~ */
	
	IF ~~ THEN
	EXTERN UDSVIR03 18
END

IF ~~ THEN BEGIN XA_EdwinFF2
	SAY @458 /* ~What was that?~ */
	
	= @457 /* ~(She gives him a dirty look.)~ */
	
	IF ~~ THEN
	EXTERN EDWINJ XA_EdwinFF3
END

IF ~ //CC OK
	Global("XA_LC_SlapTalk", "LOCALS", 1)
~ THEN BEGIN XA_DelciaLeft
	SAY @513 /* ~Gods. I think she needed that as much as I did.~ */
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @515 /* ~I can't believe you did that, love.~ */
	DO ~
		SetGlobal("XA_LC_SlapTalk", "LOCALS", 2)
	~
	GOTO XA_DelciaLeft2
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @517 /*  ~She definitely deserved it. Well done, love.~ */
	DO ~
		SetGlobal("XA_LC_SlapTalk", "LOCALS", 2)
	~
	GOTO XA_DelciaLeft2
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @516 /* ~I can't believe you did that, Corwin.~ */
	DO ~
		SetGlobal("XA_LC_SlapTalk", "LOCALS", 2)
	~
	GOTO XA_DelciaLeft2
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @518 /* ~She definitely deserved it. Well done, Captain.~ */
	DO ~
		SetGlobal("XA_LC_SlapTalk", "LOCALS", 2)
	~
	GOTO XA_DelciaLeft2
		
	IF ~
		IsValidForPartyDialogue("Keldorn")
	~ THEN
	DO ~
		SetGlobal("XA_LC_SlapTalk", "LOCALS", 2)
	~
	EXTERN KELDORJ XA_CorwinStruckDelcia
END

IF ~~ THEN BEGIN XA_DelciaLeft2
	SAY @514 /* ~It was for her own good. Anyone who runs their mouth like that to the wrong person risks an untimely death. Hopefully she learned her lesson.~ */
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @519 /* ~Well said - let's get moving.~ */
	EXIT
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @1324 /*~Agreed.~*/
	GOTO XA_DelciaLeft3
END

IF ~~ THEN BEGIN XA_DelciaLeft3
	SAY @521 /* ~I've just been so stressed lately...~ */
	
	IF ~~ THEN REPLY @522 /* ~I know it's tough being away from your family. I'm glad you're here though. */
	GOTO XA_GladHere
	
	IF ~
		GlobalLT("XA_LC_TimesHadSex", "GLOBAL", 1)
	~
	THEN REPLY @523 /* ~You and I both... my love, I know of a couple of activities that can help us to relieve some of that stress...~ */
	GOTO XA_DelciaLeft4
END

IF ~~ THEN BEGIN XA_GladHereExit
	SAY @1452 /* ~Right... We have work to do. Let's go.~ [XA100105] */
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_GladHere
	SAY @1449 /* ~So am I... look at me complaining. You've been through the ringer and you keep moving forward. You'd have made a great officer, you know.~ */
	
	IF ~~ THEN REPLY @1450 /* ~Doubtful, but I appreciate the sentiment. Let's get going.~*/
	GOTO XA_GladHereExit
	
	IF ~~ THEN REPLY @1451 /* ~And I may still. Who knows what the future holds in store? Let's get going.~*/
	GOTO XA_GladHereExit
	
	IF ~~ THEN REPLY @1453 /* ~With you as my commander? Sounds intriguing — I bet you'd *love* ordering me around, wouldn't you hon?~*/
	GOTO XA_GladHere2	
END

IF ~~ THEN BEGIN XA_GladHere2
	SAY @1454 /* ~(She smiles wryly.)~ */
	
	= @1455 /* ~I would. But not as much as you'd enjoy it.~ */
	
	IF ~
		GlobalGT("XA_LC_TimesHadSex", "GLOBAL", 0)
		Gender(Player1, MALE)
	~ THEN REPLY @1458 /* ~Is that so?~ */
	GOTO XA_GladHere_HadSex_M
	
	IF ~
		GlobalGT("XA_LC_TimesHadSex", "GLOBAL", 0)
		Gender(Player1, FEMALE)
	~ THEN REPLY @1458 /* ~Is that so?~ */
	GOTO XA_GladHere_HadSex_F
	
	IF ~
		GlobalLT("XA_LC_TimesHadSex", "GLOBAL", 1)
	~ THEN REPLY @1458 /*  ~Is that so?~ */
	GOTO XA_GladHere_WantSex
END

IF ~~ THEN BEGIN XA_GladHere_WantSex
	SAY @1456 /* ~Get us a room, love, and we'll see how good you are at following orders.~ */
	
	IF ~~ THEN REPLY @1457 /* ~Yes, ma'am!~ */
	DO ~
		AddJournalEntry(@1126, INFO)
		SetGlobal("XA_LC_CorwinSex_1", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_GladHere_HadSex_M
	SAY @1459 /* ~Judging by how... ahh... stiffly, you stood at attention the last time we were together... yes. ~ */
	
	IF ~~ THEN 
	GOTO XA_GladHere_HadSex_Exit
END

IF ~~ THEN BEGIN XA_GladHere_HadSex_F
	SAY @1461 /*  ~Well you did ... ahh ... gush with exuberance the last time we were together. Multiple times, if I remember correctly.~ */
	
	IF ~~ THEN 
	GOTO XA_GladHere_HadSex_Exit
END

IF ~~ THEN BEGIN XA_GladHere_HadSex_Exit
	SAY @1460 /* ~But enough distractions, lover — we've work to do. Let's get to it.~ */
	
	IF ~~ THEN
	EXIT
END


IF ~~ THEN BEGIN XA_DelciaLeft4
	SAY @524 /* ~Let's finish up here. Afterward, I want you to find a nice place for the two of us to ... relieve some of that stress.~   */
	
	IF ~~ THEN REPLY @527 /* ~What do you suggest?~ */
	GOTO XA_DelciaLeft5
	
	IF ~~ THEN REPLY @526 /* ~I know just the place. (You resolve to pay for a room at one of the nearby inns.)~ */
	GOTO XA_DelciaLeft6
END

IF ~~ THEN BEGIN XA_DelciaLeft5
	SAY @64 /* ~The street in mid-day, or perhaps the amphitheater. Gods, what do you think? There are plenty of inns in the city, pick one!~ */
	IF ~~ THEN REPLY @526 /* ~I know just the place. (You resolve to pay for a room at one of the nearby inns.)~ */
	GOTO XA_DelciaLeft6
END

IF ~~ THEN BEGIN XA_DelciaLeft6
	SAY @528 /* ~Good. */
	= @1751 /* ~(She gives you a kiss on the cheek.)~ */
	= @1752 /* ~Let's go.~ */
	IF ~~ THEN
	DO ~
		AddJournalEntry(@1126, INFO)
		SetGlobal("XA_LC_CorwinSex_1", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinIrenicusChain_END
	SAY @1767 /* ~..... gods.... can't... breathe...~*/
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1768 /* ~Schael! Let her go gods damn it, I'm the one you want!~*/
	GOTO XA_CorwinIrenicus_Sleep
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1772 /* ~Corwin! Let her go gods damn it, I'm the one you want!~*/
	GOTO XA_CorwinIrenicus_Sleep
END

IF ~~ THEN BEGIN XA_CorwinIrenicus_Sleep
	SAY @1773 /* ~... No .... Rohma...~ [BD68274]*/
	= @1769 /*~(Her head droops forward as her struggles subside and then cease entirely.)~*/
	= @1771 /*~.....~*/
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XA41CS02")
	~
	EXIT
END


IF ~~ THEN BEGIN XA_GORODR1_17_18
	SAY @604 /*  ~What manner of creature is imprisoned here?~   */
	IF ~~ THEN
	EXTERN GORODR1 19
END

IF ~~ THEN BEGIN XA_GORODR1_34_44
	SAY @605 /*  ~Bastard! You lied to us! You knew it was Demigorgon that was imprisoned the entire time!~  */
	IF ~~ THEN
	EXTERN GORODR1 35
END

IF ~~ THEN BEGIN XA_SUJON_14
	SAY @606 /* ~Justice has finally come for you, wizard. Prepare to die!~ */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_SUELLE2_0
	SAY @607 /* ~<CHARNAME>! Oh... thank goodness... (You notice tears forming in her eyes.)~ */
	
	IF ~~ THEN REPLY @608 /* ~S-Schael...? How long was I...?  */
	GOTO XA_SUELLE2_0_A
END

IF ~~ THEN BEGIN XA_SUELLE2_0_A
	SAY @919  /* ~(You notice tears forming in her eyes.)~*/ 
	
	= @609 /* ~Two days... *sob* ... h-how are you feeling?~ */
	
	IF ~~ THEN REPLY @610 /* ~Good, just ... tired. A-are you crying?~  */
	GOTO XA_SUELLE2_0_B
END

IF ~~ THEN BEGIN XA_SUELLE2_0_B
	SAY @611 /* ~Nothing, it's just...~  */
	
	= @1753 /*~(Her voice cracks.)~*/
	
	= @1754 /*~I thought I'd *sob* lost you...~*/
	
	IF ~~ THEN REPLY @612 /* ~Come here, love. ~  */
	GOTO XA_SUELLE2_0_C
END

IF ~~ THEN BEGIN XA_SUELLE2_0_C
	SAY @1755 /* ~(She lays her head down on your chest, and you hold her tenderly in your arms. In moments, she finally loses her composure and begins to weep in earnest.)~ */
	
	IF ~~ THEN REPLY @614 /* ~It's alright Schael, let it out. I'm here.~ */
	GOTO XA_SUELLE2_0_C2
END

IF ~~ THEN BEGIN XA_SUELLE2_0_C2
	SAY @1757 /*~(You gently caress her head as you feel her warm tears touch your skin.)~*/
	
	IF ~~ THEN
	EXTERN SUELLE2 XA_SUELLE2_0_D
END

IF ~~ THEN BEGIN XA_SUELLE2_5
	SAY @616 /* ~Get some rest love. I'll check in on you later.~ */
	
	= @1758 /*~(She plants a kiss on your forehead.)~*/
	
	IF ~~ THEN REPLY @617 /* ~Thank you Schael. For everything.~ */
	DO ~
		SetGlobal("XA_LC_59AOverride", "GLOBAL", 1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA59atob",FALSE)
	~
	EXIT
	
	IF ~~ THEN REPLY @618 /* ~Please, stay with me, love.~ */
	GOTO XA_SUELLE2_5_8
END



IF ~~ THEN BEGIN XA_SUELLE2_5_8
	SAY @1759 /* ~(You reach out and take hold of her hand.)~ */
	= @115 /* ~Gladly, dear. */
	= @1760 /*~(You slide over so there is enough room on the bed for the two of you. When she climbs in, you kiss and rest in eachother's embrace.)~*/

	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_59AOverride", "GLOBAL", 1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA59atob",FALSE)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_SUELLE2_8
	SAY @616 /* ~Get some rest love. (She plants a kiss on your forehead.) I'll check in with the others.~ */
	
	IF ~~ THEN REPLY @617 /* ~Thank you Schael. For everything.~ */
	DO ~
		SetGlobal("XA_LC_59AOverride", "GLOBAL", 1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA59atob",FALSE)
	~
	EXIT
	
	IF ~~ THEN REPLY @618 /* ~Please, stay with me, love.~ */
	GOTO XA_SUELLE2_5_8
END

IF ~~ THEN BEGIN XA_SUELLE2_8A
	SAY @619 /* ~Gladly, dear. 
	(You slide over so there is enough room on the bed for the two of you. When she climbs in, you share a passionate kiss, and fall asleep in eachother's embrace.)~  */

	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_59AOverride", "GLOBAL", 1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA59atob",FALSE)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_PPIRENI2_3_CHAIN_2_END
	SAY @551 /* ~Let.. me.. GO!~ */
	
	IF ~~ THEN REPLY #44251 /* ~What are you doing, Irenicus?! What is all of this?~ */ 
	EXTERN PPIRENI2 5

	IF ~~ THEN REPLY @552 /* ~Release us! I will kill you, I swear it!~ */ 
	EXTERN PPIRENI2 4

	IF ~~ THEN REPLY #44253 /* ~Where is Imoen?! What have you done to her?!~ */ 
	EXTERN PPIRENI2 6 
END


IF ~~ THEN BEGIN XA_PPIRENI2_3_CHAIN_END
	SAY @546 /* ~You won't get away with this, wizard!~ */
	
	IF ~~ THEN
	EXTERN PPIRENI2 XA_PPIRENI2_3_CHAIN_2
END

IF ~~ THEN BEGIN XA_CorwinDelcia_End
	SAY @505 /* ~Now, listen to me. I didn't travel all this way and risk my life only to be spoken down to by a pretentious, insufferable bitch. We are not your servants, and you are no better than the dirt on my heel. Get up.~  */
	
	IF ~
		!IsValidForPartyDialogue(Player1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_SlappedDelcia", "GLOBAL", 1)
		SetGlobal("DelciaLeave","GLOBAL",2)
	~
	EXTERN DELCIA XA_CorwinLeave
	
	IF ~
		IsValidForPartyDialogue(Player1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_SlappedDelcia", "GLOBAL", 1)
		SetGlobal("XA_LC_DelciaEnd", "GLOBAL", 1)
		SetGlobal("DelciaLeave","GLOBAL",2)
	~
	GOTO XA_CorwinDelcia_End2
END

IF ~~ THEN BEGIN XA_CorwinDelcia_End2
	SAY @503 /*~Now get up, and get the hells out of here!~*/
	
	IF ~~ THEN REPLY @511 /* ~(Remain silent.)~ */
	EXTERN DELCIA XA_CorwinLeave
	
	IF ~~ THEN REPLY @512 /* ~Are you deaf, woman? Get out!~ */
	EXTERN DELCIA XA_CorwinLeave
	
	IF ~~ THEN REPLY @1295 /* ~Better do what she says, lady.~    */
	EXTERN DELCIA XA_CorwinLeave
END

IF ~~ THEN BEGIN XA_CorwinDrizz_End
	SAY @1297 /* ~<CHARNAME>?~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinDrizz_End", "GLOBAL", 1)
		StartDialog("XACORWIJ", Player1)
	~
	EXIT
END

//{ Dialog J-64
IF ~
	Global("XA_LC_CorwinDrizz_End", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinDrizz_Transition
	SAY @1298 /* ~We could use their help.~ */
	
	IF ~~ THEN REPLY @1299 /* ~Thank you for the offer, Drizzt, but we aren't in need of any assistance.~ */
	DO ~
		SetGlobal("XA_LC_CorwinDrizz_End", "GLOBAL", 2)
	~
	EXTERN C6DRIZZ1 54
	
	IF ~~ THEN REPLY @483 /* ~I have a proposal for you, Drizzt, if you will wait for a moment.~  */
	DO ~
		SetGlobal("XA_LC_CorwinDrizz_End", "GLOBAL", 2)
	~
	EXTERN C6DRIZZ1 XA_CorwinDrizz2 
END
//}

//{ CALAHA
IF ~~ THEN BEGIN XA_CALAHA_15
	SAY @1756 /* ~Good. Let's deal with Chremy, then get those two kids out of here.~*/
	
	COPY_TRANS CALAHA 15
END

//}

IF ~~ THEN BEGIN XA_NaliaShamMarriage_70 
	SAY @333 /* ~I know it'd be a sham marriage and that you don't love her, but I still think it's a mistake. You have enough on your plate to deal with. No need to get wrapped up with nobility, or their power and political games.~*/
	
	IF ~~ THEN 
	EXTERN NALIAJ XA_NaliaShamMarriage_70
END

IF ~~ THEN BEGIN XA_NaliaShamMarriage_71 
	SAY @333 /* ~I know it'd be a sham marriage and that you don't love her, but I still think it's a mistake. You have enough on your plate to deal with. No need to get wrapped up with nobility, or their power and political games.~*/
	
	IF ~~ THEN 
	EXTERN NALIAJ XA_NaliaShamMarriage_71
END

IF ~~ THEN BEGIN XA_NaliaShamMarriage_72 
	SAY @333 /* ~I know it'd be a sham marriage and that you don't love her, but I still think it's a mistake. You have enough on your plate to deal with. No need to get wrapped up with nobility, or their power and political games.~*/
	
	IF ~~ THEN 
	EXTERN NALIAJ XA_NaliaShamMarriage_72
END

IF ~~ THEN BEGIN XA_NaliaShamMarriage_73 
	SAY @333 /* ~I know it'd be a sham marriage and that you don't love her, but I still think it's a mistake. You have enough on your plate to deal with. No need to get wrapped up with nobility, or their power and political games.~*/
	
	IF ~~ THEN 
	EXTERN NALIAJ XA_NaliaShamMarriage_73
END

IF ~~ THEN BEGIN XA_CorwinIrenicusStart
	SAY @1774 /*~Ugh... you won't get away with this, wizard!~*/
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XA41CS01")
	~
	EXIT
END
//{ Optional Banter 1A
IF ~
	Global("XA_LC_Banter_CorwinPlayerOpt1A", "GLOBAL", 1)
	!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
~
THEN BEGIN XA_OPT1AFriend
	SAY @1360 /* ~(You notice Major Corwin staring into the distance, with sadness in her eyes.)~ */
	
	IF ~~ THEN REPLY @1359 /* ~Major? Are you alright?~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1A", "GLOBAL", 2)
	~
	GOTO XA_OPT1Friend2 
	
	IF ~~ THEN REPLY @1428 /* ~(Leave her be.)~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1A", "GLOBAL", 2)
	~
	EXIT
END

IF ~
	Global("XA_LC_Banter_CorwinPlayerOpt1A", "GLOBAL", 1)
	Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
~
THEN BEGIN XA_OPT1ARomance
	SAY @1384 /* ~(You notice Schael staring into the distance, with sadness in her eyes.)~ */
	
	IF ~~ THEN REPLY @1404 /* ~Love? Are you alright?~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1A", "GLOBAL", 2)
	~
	GOTO XA_OPT1Romance_2 //OK
	
	IF ~~ THEN REPLY @1428 /* ~(Leave her be.)~ */
	DO ~
		SetGlobal("XA_LC_Banter_CorwinPlayerOpt1A", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_OPT1ARomance_3
	SAY @1442 /* ~Yes... You know, Rohma asks about you.~ */
	
	IF ~
		Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @1462 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1ARomance4_GaveDoll //OK
	
	IF ~
		!Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @1462 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO XA_OPT1ARomance4_NoDoll //OK
	
	IF ~~ THEN REPLY @1443 /* ~Of course she does. I am the *ahem* hero of Baldur's Gate, after all.~ */
	GOTO XA_OPT1ARomance_4 //OK
END

IF ~~ THEN BEGIN XA_OPT1ARomance_4
	SAY @160 /*  ~(She rolls her eyes)  */
	= @1463 /* ~A little humility from time to time wouldn't hurt, you know.~*/
	
	IF ~
		Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1ARomance4_GaveDoll //OK
	
	IF ~
		!Global("XA_LC_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO XA_OPT1ARomance4_NoDoll //OK
END

IF ~~ THEN BEGIN XA_OPT1ARomance4_NoDoll
	SAY @1436 /* ~I think of the kindness that you showed Rohma, and how good you've been with me... ~ */

	= @1437 /* And then I think of Beno, and how stupid I was to be with scum like that... you must think I'm a fool. */
	
	IF ~~ THEN REPLY @1438 /* ~Schael, stop it. You're more than any <PRO_MANWOMAN> can hope for in this life, and a great mother to Rohma.~ */
	GOTO XA_OPT1ARomance4_NoDoll2 //OK
	
	IF ~~ THEN REPLY @1439 /* ~Schael, I've never met anyone like you. I hope you understand how special you are. I do, and I know Rohma does.~ */
	GOTO XA_OPT1ARomance4_NoDoll2 //OK
	
	IF ~~ THEN REPLY @1440 /*  ~Nonsense. Let go of the past, love. Focus on our future together — you, me, and Rohma.~  */
	GOTO XA_OPT1ARomance4_NoDoll2 //OK
	
END

IF ~~ THEN BEGIN XA_OPT1ARomance4_NoDoll2
	SAY @1441 /* ~The care and interest you've shown for her is more than Beno ever did.~ */
	
	IF ~~ THEN 
	GOTO XA_OPT1ARomance4_NoDoll3 //OK
END

IF ~~ THEN BEGIN XA_OPT1ARomance4_GaveDoll
	SAY @148 /* ~She loves the teddy you bought for her. It's her favorite toy.~ */
	
	IF ~~ THEN REPLY @151 /* ~It was a simple gesture.. I didn't think it would mean that much to her.~ */
	GOTO XA_OPT1ARomance4_GaveDoll2 //OK
	
END

IF ~~ THEN BEGIN XA_OPT1ARomance4_GaveDoll2
	SAY @152 /*~That one small act of kindness was more than her father ever did for her.~*/
	
	IF ~~ THEN 
	GOTO XA_OPT1ARomance4_NoDoll3
END

IF ~~ THEN BEGIN XA_OPT1ARomance4_NoDoll3
	SAY @153 /* ~She deserves better.~ */
	
	IF ~~ THEN REPLY @154 /* ~She does. Listen, Schael - I don't know if I'd be a good step parent for Rohma. What I do know is that I'll do my best.~ */
	GOTO XA_OPT1ARomanceEnd //OK
	
	IF ~~ THEN REPLY @155 /* ~She does. Listen, Schael - I'm fully aware of the responsibilities and challenges of being a step parent, and I want you to know that I will welcome them.~ */
	GOTO XA_OPT1ARomanceEnd  //OK
END

IF ~~ THEN BEGIN XA_OPT1ARomanceEnd 
	SAY @156 /*  ~I know you will. You step up to challenges instead of running from them. That's one of the reasons that I love you, <CHARNAME>. ~ */
	= @158 /* ~Let's get moving.~ */
	IF ~~ THEN
	EXIT
END

//}

IF ~
	Global("XA_LC_CorwinLarcenyTalk", "LOCALS", 2)
~ THEN BEGIN XA_CorwinLarcenyTalk_Statue
	SAY @1812  /*~Come on. We need to get that statue.~ */
	
	IF ~~ THEN REPLY @1806  /*~Right. Let's go.~ */
	DO ~
		SetGlobal("XA_LC_CorwinLarcenyTalk", "LOCALS", 3)
	~
	EXIT
	
	IF ~~ THEN REPLY @1807  /* ~Are you sure you're okay with this?~*/
	DO ~
		SetGlobal("XA_LC_CorwinLarcenyTalk", "LOCALS", 3)
	~
	GOTO XA_CorwinLarcenyTalk_2
	
	IF ~~ THEN REPLY @1808  /*~Captain Corwin endorsing larceny? I'd not have thought it possible.~ */
	DO ~
		SetGlobal("XA_LC_CorwinLarcenyTalk", "LOCALS", 3)
	~
	GOTO XA_CorwinLarcenyTalk_2
END

IF ~
	Global("XA_LC_CorwinLarcenyTalk", "LOCALS", 1)
~ THEN BEGIN XA_CorwinLarcenyTalk_Amulet
	SAY @1805  /*~Come on. We need to get that amulet.~ */
	
	IF ~~ THEN REPLY @1806  /*~Right. Let's go.~ */
	DO ~
		SetGlobal("XA_LC_CorwinLarcenyTalk", "LOCALS", 3)
	~
	EXIT
	
	IF ~~ THEN REPLY @1807  /* ~Are you sure you're okay with this?~*/
	DO ~
		SetGlobal("XA_LC_CorwinLarcenyTalk", "LOCALS", 3)
	~
	GOTO XA_CorwinLarcenyTalk_2
	
	IF ~~ THEN REPLY @1808  /*~Captain Corwin endorsing larceny? I'd not have thought it possible.~ */
	DO ~
		SetGlobal("XA_LC_CorwinLarcenyTalk", "LOCALS", 3)
	~
	GOTO XA_CorwinLarcenyTalk_2
END

IF ~~ THEN BEGIN XA_CorwinLarcenyTalk_2
	SAY @1809  /* ~I'm not comfortable with it, but we need to find Imoen and Irenicus. Unless you have other ideas, this looks to be the only path forward.~ */
	
	IF ~~ THEN REPLY @1810  /* ~Agreed. Let's go.~*/
	EXIT
	
	IF ~~ THEN REPLY @1811  /* ~We might be asked to do things far worse than theft. Will I be able to count on you?~*/
	GOTO XA_CorwinLarcenyTalk_3
END

IF ~~ THEN BEGIN XA_CorwinLarcenyTalk_3
	SAY @1813  /* ~If it helps to advance our mission, then yes. I have my limits though, and I won't stand for gratuitous crime. I trust I've made myself clear? Good. Now let's go.~ */
	IF ~~ THEN
	DO ~
		AddJournalEntry(@1814, INFO)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_LC_MaevarCorwin2
	SAY @1815  /* ~I'm on a special assignment from the Grand Dukes, and it doesn't involve shutting down whatever operation you and your boss have set up here. That's all you need to know.~*/
	
	IF ~~ THEN 
	EXTERN MAEVAR XA_LC_MaevarCorwin3
END

IF ~~ THEN BEGIN XA_CorwinArtifacts_ChainEnd
	SAY @1827 /*~Sure you do. And I'm the queen of Tethyr.~*/
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1829 /* ~Schael? Is there a problem?~ */
	GOTO XA_CorwinArtifacts_Stolen
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1828 /* ~Captain? Is there a problem?~*/
	GOTO XA_CorwinArtifacts_Stolen
	
	IF ~~ THEN REPLY @1830 /* ~*Ahem* What is it, your highness?~ */
	GOTO XA_CorwinArtifacts_Stolen
END

IF ~~ THEN BEGIN XA_CorwinArtifacts_Stolen
	SAY @1820 /* ~Some of these items once belonged to Balduran, the founder of Baldur's Gate. They were stolen years ago from the Hall of Wonders. I'm sure the Dukes and the city historians would greatly appreciate it if we could bring them back to the Gate.~ */
	
	IF ~~ THEN REPLY @1821 /*~I'm sure they would, but they must cost a fortune!~*/
	DO ~
		AddJournalEntry(@1826, INFO)
	~
	GOTO XA_CorwinArtifacts_Stolen_2
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1824 /*~Agreed. Let's bring these historical artifacts home, where they belong.~*/
	GOTO XA_CorwinArtifacts_Stolen_End
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1824 /*~Agreed. Let's bring these historical artifacts home, where they belong.~*/
	GOTO XA_CorwinArtifacts_Stolen_End_R
	
END

IF ~~ THEN BEGIN XA_CorwinArtifacts_Stolen_2
	SAY @1822 /*~I'm aware. If we could bring even one of these items back though...~*/
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1823 /* ~It's clear that this is important to you. Let's do what we can.~ */
	GOTO XA_CorwinArtifacts_Stolen_End
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1823 /* ~It's clear that this is important to you. Let's do what we can.~ */
	GOTO XA_CorwinArtifacts_Stolen_End_R
	
	IF ~~ THEN REPLY @1831 /*~No. There are better ways to spend the money. Some other time, perhaps.~ */ 
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinArtifacts_Stolen_End
	SAY @1825 /*~Thank you, <CHARNAME>.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_ArtifactsQuest", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinArtifacts_Stolen_End_R
	SAY @1832 /*~Thank you, love.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_ArtifactsQuest", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_LeaveAfterSoA_100_Lich
	SAY @1837 /*~I'd stay and celebrate, but I can't stomach being at the side of a lich any longer. Farewell.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinDepart", "GLOBAL", 3)
		ActionOverride(Player1, TakeCreatureItems("XACORWIN", BACKPACK))
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		StartCutSceneMode()
		StartCutScene("XA100EX")
	~
	EXIT
END

IF ~
	Global("XA_LC_CorwinLeaveLich", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinLeaveLich
	SAY @1838 /*~I can't bear to fight at your side any longer. A word of warning, lich — set foot in Baldur's Gate again and I'll crush your bones to dust. Goodbye.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CorwinDepart", "GLOBAL", 3)
		SetGlobal("XA_LC_CorwinLeaveLich", "GLOBAL", 3)
		ActionOverride(Player1, TakeCreatureItems("XACORWIN", BACKPACK))
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		StartCutSceneMode()
		StartCutScene("XA100EX")
	~
	EXIT
END

CHAIN
	IF ~~ THEN XACORWIJ XA_CorwinArtifacts_Chain
		@1816 /*~Let me have a look at that.~*/
		== WMART2
		@1817 /*~Of course. It's yours, if you have the coin.~*/
		== XACORWIJ
		@1818 /*~As I suspected. These artifacts were reported stolen years ago. How did you acquire these?~*/
		== WMART2
		@1819 /*~I can assure you that I only procure from the most reputable vendors.~*/
END XACORWIJ XA_CorwinArtifacts_ChainEnd

CHAIN 
	IF ~~ THEN XACORWIJ XA_CorwinDelcia
		@507 /* ~I've heard enough. */
		== XACORWIJ
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		@1296 /* Forgive me, Nalia.~ */
		= 
		@504 /* ~(Captain Corwin walks up to Lady Delcia and delivers a powerful, open-handed slap to her face that sends her crashing to the floor. Delcia looks up at Corwin, and is left quivering and speechless.)~ */
		== NALIAJ
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		@509 /* ~H-how... how DARE you? That's my aunt you just struck!~*/
END XACORWIJ XA_CorwinDelcia_End
		
CHAIN 
	IF ~~ THEN IMOEN2 XA_CorwinImoenReuniteChain
		@500 /* ~It's good to see you again, Captain, but I'm surprised that you're here.~ */
		== XACORWIJ
		@459 /* ~It's good to see you too, Imoen. As for why I'm here, <CHARNAME> found evidence proving that Irenicus was behind what happened to Skie. I was assigned to assist <PRO_HIMHER> in the hunt for the wizard.~ */
		== IMOEN2
		@501 /* ~Skie, is she ...~ */
		== XACORWIJ
		@460 /* ~She's alive and well, thanks to <CHARNAME>. I'll fill you in on the details later. We need to get moving.~ */
		== IMOEN2
		@502 /* ~Good. Right, let's get moving.~*/
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
			JoinParty()
		~
EXIT

CHAIN
	IF ~~ THEN XACORWIJ XA_CorwinDrizz
		@479 /* ~Hold your tongue, drow. I've never known <CHARNAME> to resort to banditry. I suggest that you and your companions move along - now.~*/
		DO ~
			SetGlobal("XA_LC_CorwinVouchedDrizz", "GLOBAL", 1)
		~ 
		== C6WULF1
		@480 /* ~Eh? Is she threatening us? Do you think she's serious?~ */
		== C6BRUEN1
		@461 /* ~Aye Drizzt, I recognize that insignia on her armor. Yer far from home, aren't ye girl?~ */
		== C6REGIS1
		@462 /* ~She must be some kind of imposter. The Flaming Fist puts bandits to the sword - they do not fight alongside them!~ */
		== C6CATTI1
		@463 /* ~He's right, Drizzt. We can't be allowin' these bandits to run free... knows what horrid acts they've committed upon others?~*/
		== C6DRIZZ1
		@254 /* ~That's enough, all of you. You there!~ */
		= @256 /* ~(He points at Corwin.)~ */
		= @258 /* ~Who are you, and what is your business here?~ */
		== XACORWIJ
		@465 /* ~I am Captain Schael Corwin of the Flaming Fist. [XA100005]*/
		= @464  /* ~I'm travelling with <CHARNAME> on a special assignment to apprehend a wizard, Jon Irenicus.~*/
		== C6DRIZZ1
		@466 /* ~How do I know you aren't an impostor, as my friend suggests? I know a bit of the Flaming Fist and its reporting structure. Tell me, who are your commanding officers? Answer carefully.~ */
		== XACORWIJ
		@467 /* ~Marshall Nederlok, and Duke Eltan.~ */
		== C6DRIZZ1
		@468 /* ~I know of another in the Flaming Fist. Based on your claimed rank, you should be reporting to them.~ */
		== XACORWIJ
		@469 /* ~If you're referring to Scar, he was assassinated several months ago, as part of a plot to usurp control over the city. <CHARNAME> brought both the assassin and the usurper to justice. Scar was a good friend and I miss him dearly.~ */
		== C6DRIZZ1
		@470 /* ~You say you were a friend to Scar. If you were truly his friend, you would know his real name.~ */
		== XACORWIJ
		@471 /* ~His name was Harold Loggerson.~ */
		== C6DRIZZ1
		@472 /* ~(His expression changes from one of suspicion to one of surprise.)~ */
		=
		@540 /* ~Very well. Lower your weapons, friends. She is telling us the truth.~ */
		=
		@473 /* ~Scar was a good man. I am sorry to hear that he has passed. You said you were after a wizard? What has this person done to warrant the attention of the Flaming Fist?~ */
		== XACORWIJ
		@474 /* ~Yes. The wizard nearly murdered Skie Silvershield, the daughter of one of the Grand Dukes, and framed <CHARNAME> for the crime. <CHARNAME> found evidence proving his innocence and is responsible for Skie's restoration.~ */
		=
		@475 /* ~Once <PRO_HISHER>'s innocence was established, I was assigned to them to assist in the hunt for the wizard.~ */
		== C6DRIZZ1
		@476 /* ~I ... see. If <CHARNAME> was framed for that crime by the wizard then... perhaps... it may also be the case that it was not <PRO_HESHE> that attacked me while I was beset by gnolls...~ */
		== C6WULF1
		@477 /* ~You don't seriously believe them, do you?~ */
		== C6DRIZZ1
		@478 /* ~I do. I sense no deception from this woman, and her account of <CHARNAME>'s actions lead me to believe that <PRO_HESHE> is a force for good, not evil.~  */
		=
		@481 /* ~If you are in need of assistance, I will be glad to offer it. If not, I will wish you well and we shall be on our way back to the far north.~ */
END XACORWIJ XA_CorwinDrizz_End

CHAIN
	IF ~~ THEN XACORWIJ XA_BackToBG_Chain
		@629 /* ~Before we go, let's check with the rest of the team to see if they want to come with us. I imagine some will want to stay here and help the elves with their wounded.~*/
		
		//{ Hexxat
		== XACORWIJ 
		IF ~
			IsValidForPartyDialogue("Hexxat")
		~
		@646 /* ~(She points at Hexxat.)~*/
		= @1761 /* ~She won't be joining us. I'll not allow the monster to feed on the citizens I'm sworn to protect.~ */
		//}
		
		//{ Mazzy
			== MAZZYJ
			IF ~
				IsValidForPartyDialogue("Mazzy")
			~
			@705 /* ~I wish you two the best. As for me, I must return to Trademeet. It was an honor to fight at your side, and I hope that our paths may cross again.~*/
		//}
		
		//{ Imoen
			== IMOEN2J
			IF ~
				IsValidForPartyDialogue("Imoen2")
			~
			@636 /* ~You can count me in. Oh, I can't wait to see Liia again! There are so many stories I'll share with her.~ */
			DO ~
				SetGlobal("XA_LC_BackToBG_Imoen", "GLOBAL", 1)
			~
		//}
		
		//{ Jaheira
			== JAHEIRAJ 
			IF ~
				IsValidForPartyDialogue("Jaheira")
				GlobalGT("JaheiraRomanceActive", "GLOBAL",0)
				GlobalLT("JaheiraRomanceActive", "GLOBAL",3)
			~
			@639 /* ~I will be joining you, my dear.~ */
			DO ~
				SetGlobal("XA_LC_BackToBG_Jaheira", "GLOBAL", 1)
			~
			
			== JAHEIRAJ
			IF ~
				IsValidForPartyDialogue("Jaheira")
				ReputationGT(Player1,9)
				OR(2)
					Global("JaheiraRomanceActive", "GLOBAL",0)
					Global("JaheiraRomanceActive", "GLOBAL",3)
			~
			@637 /* ~This is where we part ways, at least for now, <CHARNAME>. Gorion would be proud of the <PRO_MANWOMAN> you've become. I will remain here to help undo the damage that Irenicus inflicted on the Tree of Life.~ */
			= @638 /* ~(You share a warm embrace.)~ */

			== JAHEIRAJ
			IF ~
				IsValidForPartyDialogue("Jaheira")
				ReputationLT(Player1,10)
				OR(2)
					Global("JaheiraRomanceActive", "GLOBAL",0)
					Global("JaheiraRomanceActive", "GLOBAL",3)
			~
			@640 /* ~This is where we part ways, at least for now, <CHARNAME>. I urge you to become the type of <PRO_MANWOMAN> that Gorion would be proud of. I will remain here to help undo the damage that Irenicus inflicted on the Tree of Life.~ */

		//}

		//{ Viconia
			== VICONIJ 
			IF ~
				IsValidForPartyDialogue("Viconia")
			~
			@641 /* ~I will join you. The sooner we can leave, the better - the surface elves are looking for an excuse to murder me, I know it.~ */
			DO ~
				SetGlobal("XA_LC_BackToBG_Viconia", "GLOBAL", 1)
			~
		//}
		
		//{ Jan
			== JANJ
			IF ~
				IsValidForPartyDialogue("Jan")
				Global("XA_LC_JanWantsToSeeBG", "GLOBAL", 1)
			~
			@642 /* ~Oh, yes, this is a wonderful opportunity to expand my turnip business! I will go with you.~ */
			DO ~
				SetGlobal("XA_LC_BackToBG_Jan", "GLOBAL", 1)
			~
			
			== JANJ
			IF ~
				IsValidForPartyDialogue("Jan")
				!Global("XA_LC_JanWantsToSeeBG", "GLOBAL", 1)
			~
			@643 /* ~Back to Athkatla for me, I'm afraid. The turnips need tending to. Safe travels, my friends.~ */
		//}
		
		//{ Edwin
			== EDWINJ 
			IF ~
				IsValidForPartyDialogue("Edwin")
			~
			@644 /* ~We are in a city of magical knowledge that few humans have set foot in, and you want me to go back to that diseased backwater of a city? Bah! I will remain here and learn the secrets of the elves. (That is, until they throw me out.)~ */
		//}
		
		//{ Minsc
			== MINSCJ 
			IF ~
				IsValidForPartyDialogue("Minsc")
			~
			@645 /* ~I would go with you, but Boo has become intensely infatuated with a squirrel that he saw on the Tree of Life. I must find this squirrel and determine if she is a worthy mate for Boo.~ */
		//}
		
		//{ Aerie
			== AERIEJ
			IF ~
				IsValidForPartyDialogue("Aerie")
				GlobalGT("AerieRomanceActive", "GLOBAL",0)
				GlobalLT("AerieRomanceActive", "GLOBAL",3)
			~
			@647 /* ~Oh, of course I will go with you! M-maybe we can also see Candlekeep? It will be fun to see where you g-grew up.~ */
			DO ~
				SetGlobal("XA_LC_BackToBG_Aerie", "GLOBAL", 1)
			~
			
			== AERIEJ
			IF ~
				IsValidForPartyDialogue("Aerie")
				ReputationGT(Player1,9)
				OR(2)
					Global("AerieRomanceActive", "GLOBAL",0)
					Global("AerieRomanceActive", "GLOBAL",3)
			~
			@648 /* ~O-oh, I think it will be better for me to stay here. There are still many injured, and the elves can use my help. */
			= @649 /* ~T-thank you, <CHARNAME> for everything. For freeing me from the circus, and for taking me on this grand adventure. I've learned so much about the world, and.. and about m-myself. I h-hope to see you again soon.~ */
			= @650 /* ~(You share a warm embrace.)~ */

			== AERIEJ
			IF ~
				IsValidForPartyDialogue("Aerie")
				ReputationLT(Player1,10)
				OR(2)
					Global("AerieRomanceActive", "GLOBAL",0)
					Global("AerieRomanceActive", "GLOBAL",3)
			~
			@648 /* ~O-oh, I think it will be better for me to stay here. There are still many injured, and the elves can use my help.~ */
		//}
		
		//{ Nalia
			== NALIAJ
			IF ~
				IsValidForPartyDialogue("Nalia")
			~
			@651 /* ~This is an opportunity to understand the plight of the poor from a broader perspective. I will go with you. ~ */
			DO ~
				SetGlobal("XA_LC_BackToBG_Nalia", "GLOBAL", 1)
			~
		//}
		
		//{ HaerDalis
			== HAERDAJ
			IF ~
				IsValidForPartyDialogue("HaerDalis")
			~
			@652 /* ~I will remain here for a time, my sparrow. I wish to see this place restored to its former beauty. May our paths cross again in the near future.~ */

		//}

		//{ Korgan
			== KORGANJ
			IF ~
				IsValidForPartyDialogue("Korgan")
			~
			@653 /* ~Aye, I'll go with ye. It hath been many a year since I travelled the Sword Coast, plus I be sick of these queers already. I'll stop at Beregost on the way and pay an old friend of mine a visit.~ */
			DO ~
				SetGlobal("XA_LC_BackToBG_Korgan", "GLOBAL", 1)
			~
		//}
		
		//{ Keldorn
			== KELDORJ
			IF ~
				IsValidForPartyDialogue("Keldorn")
				Global("LadyMaria","GLOBAL",5)
			~
			@654 /* ~I promised my wife that I would return home after putting an end to Irenicus, and I will do so. Good-bye, my friend. May Torm guide your path.~*/

			== KELDORJ
			IF ~
				IsValidForPartyDialogue("Keldorn")
				!Global("LadyMaria","GLOBAL",5)
			~
			@655 /* ~Now that Irenicus has been dealt with, I must return to my order and my duty. Good-bye, my friend. May Torm guide your path.~ */
		//}
		
		//{ Anomen
			== ANOMENJ
			IF ~
				Alignment("Anomen",LAWFUL_GOOD)
				IsValidForPartyDialogue("Keldorn")
				!Global("LadyMaria","GLOBAL",5)
				IsValidForPartyDialogue("Anomen")
				OR(2)
					Global("AnomenRomanceActive", "GLOBAL",0)
					Global("AnomenRomanceActive", "GLOBAL",3)
			~
			@662 /* ~I'm afraid I too must return to my order. Safe travels <CHARNAME>, and you as well Captain.~ */

			== ANOMENJ
			IF ~
				Alignment("Anomen",LAWFUL_GOOD)
				IsValidForPartyDialogue("Keldorn")
				Global("LadyMaria","GLOBAL",5)
				IsValidForPartyDialogue("Anomen")
				OR(2)
					Global("AnomenRomanceActive", "GLOBAL",0)
					Global("AnomenRomanceActive", "GLOBAL",3)
			~
			@663 /* ~I'm afraid I must decline, and return to my order. Safe travels <CHARNAME>, and you as well Captain.~ */

			== ANOMENJ
			IF ~
				Alignment("Anomen",LAWFUL_GOOD)
				!IsValidForPartyDialogue("Keldorn")
				IsValidForPartyDialogue("Anomen")
				OR(2)
					Global("AnomenRomanceActive", "GLOBAL",0)
					Global("AnomenRomanceActive", "GLOBAL",3)
			~
			@663 /* ~I'm afraid I must decline, and return to my order. Safe travels <CHARNAME>, and you as well Captain.~ */

			== ANOMENJ
			IF ~
				IsValidForPartyDialogue("Anomen")
				!Alignment("Anomen",LAWFUL_GOOD)
				OR(2)
					Global("AnomenRomanceActive", "GLOBAL",0)
					Global("AnomenRomanceActive", "GLOBAL",3)
			~
			@664 /* ~I will join you. There is little left for me in Amn, and I am eager for a fresh start.~ */
			DO ~
				SetGlobal("XA_LC_BackToBG_Anomen", "GLOBAL", 1)
			~
			
			== ANOMENJ
			IF ~
				IsValidForPartyDialogue("Anomen")
				OR(2)
					Global("AnomenRomanceActive", "GLOBAL",1)
					Global("AnomenRomanceActive", "GLOBAL",2)
			~
			@665 /* ~I will remain by your side my love, now and always.~ */
			DO ~
				SetGlobal("XA_LC_BackToBG_Anomen", "GLOBAL", 1)
			~
		//}
		
		//{ Dorn
			== DORNJ
			IF ~
				IsValidForPartyDialogue("Dorn")
				OR(2)
					!Dead("ohdazoth")  // Azothet
					!Dead("ohdugoth")  // Ur-Gothoz
			~
			@656 /* ~I sense that my patron wishes for us to part ways, at least for now. I have a feeling that our paths will cross again, and soon. Until then, <CHARNAME>.~ */
			== DORNJ
			IF ~
				IsValidForPartyDialogue("Dorn")
				Dead("ohdazoth")  // Azothet
				Dead("ohdugoth")  // Ur-Gothoz
			~
			@657 /* ~Yes, I will go with you. Anywhere, even Baldur's Gate, would be better than staying here.~ */
			DO ~
				SetGlobal("XA_LC_BackToBG_Dorn", "GLOBAL", 1)
			~
		//}
		
		//{ Valygar
			== VALYGARJ
			IF ~
				IsValidForPartyDialogue("Valygar")
				GlobalLT("XA_LC_CorwinValygarLavok", "GLOBAL", 1)
			~
			@660 /* ~No, I won't be joining you. I'm going back to my cabin in the woods. I'll use the time and seclusion to decide what to do with my life.~ */
			== VALYGARJ
			IF ~
				IsValidForPartyDialogue("Valygar")
				GlobalGT("XA_LC_CorwinValygarLavok", "GLOBAL", 0)
				GlobalLT("XA_LC_CorwinValygarBG", "GLOBAL", 1)
			~
			@658 /* ~There is nothing left for me in Amn. Captain, I'd like to take you up on your offer and join the Flaming Fist, at least on an interim basis.~ */
			DO ~
				SetGlobal("XA_LC_BackToBG_Valygar", "GLOBAL", 1)
			~
			
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("Valygar")
				GlobalGT("XA_LC_CorwinValygarLavok", "GLOBAL", 0)
				GlobalLT("XA_LC_CorwinValygarBG", "GLOBAL", 1)
			~
			@1471 /* ~Excellent! You won't regret it. When we arrive, I'll introduce you to my commanding officer, Marshal Kirill Nederlok.~ */
			== VALYGARJ
			IF ~
				IsValidForPartyDialogue("Valygar")
				GlobalGT("XA_LC_CorwinValygarLavok", "GLOBAL", 0)
				GlobalGT("XA_LC_CorwinValygarBG", "GLOBAL", 0)
			~
			@1470 /* ~Captain as we discussed, I will return with you to Baldur's Gate to join the Flaming Fist.~*/
			DO ~
				SetGlobal("XA_LC_BackToBG_Valygar", "GLOBAL", 1)
			~		
		
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("Valygar")
				GlobalGT("XA_LC_CorwinValygarLavok", "GLOBAL", 0)
				GlobalGT("XA_LC_CorwinValygarBG", "GLOBAL", 0)
			~
			@659 /* ~Excellent - you'll make a fine addition to the team.~ */
		//}
		
		//{ Neera
			== NEERAJ
			IF ~
				IsValidForPartyDialogue("Neera")
			~
			@661 /* ~Of course I'll join you silly! It'll be nice to see the Sword Coast again!~ */
			DO ~
				SetGlobal("XA_LC_BackToBG_Neera", "GLOBAL", 1)
			~
		//}
		
		//{ Cernd
			== CERNDJ
			IF ~
				IsValidForPartyDialogue("Cernd")
				Global("CerndBaby","GLOBAL",1)
			~
			@667 /* ~I will remain here for a time and help the elves repair the damage to the Tree of Life, then, I will return home to raise my son. Good-bye and safe travels, friends.~ */
			== CERNDJ
			IF ~
				IsValidForPartyDialogue("Cernd")
				!Global("CerndBaby","GLOBAL",1)
			~
			@666 /* ~I will remain here for a time and help the elves repair the damage to the Tree of Life. Good-bye and safe travels, friends.~ */
		//}
		
		//{ Rasaad
			== RASAADJ
			IF ~
				IsValidForPartyDialogue("Rasaad")
				OR(2)
					Global("RasaadRomanceActive", "GLOBAL",0)
					Global("RasaadRomanceActive", "GLOBAL",3)
			~
			@668 /* ~Yes my friend, I will return with you. I am interested to see what progress has been made in dealing with the refugee crisis. My help may still be needed.~ */
			DO ~
				SetGlobal("XA_LC_BackToBG_Rasaad", "GLOBAL", 1)
			~
			
			== RASAADJ
			IF ~
				IsValidForPartyDialogue("Rasaad")
				OR(2)
					Global("RasaadRomanceActive", "GLOBAL",1)
					Global("RasaadRomanceActive", "GLOBAL",2)
			~
			@665 /* ~I will remain by your side my love, now and always.~ */
			DO ~
				SetGlobal("XA_LC_BackToBG_Rasaad", "GLOBAL", 1)
			~
		//}
END
IF ~~ THEN GOTO XA_BackToBG_ChainEnd 
IF
	~	
		OR(2)
		IsValidForPartyDialogue("L#2EDDRD")
		IsValidForPartyDialogue("L#2SDSKI")
	~
THEN GOTO XA_BackToBG_ChainEnd_AndYou

CHAIN PPIRENI2 XA_PPIRENI2_3_CHAIN
	@541 /* ~And you, young lady.~ */
	= @542 /*~(He looks at Corwin, and the Flaming Fist insignia on her armor.)~*/
	= @543 /*~I trust you are here to effect some appropriate punishment for what I did to Skie Silvershield?~*/
	
	== XACORWIJ
	@544 /* ~Ugh...~ */
	= @545 /*~(She struggles mightily against her restraints.)~*/
END XACORWIJ XA_PPIRENI2_3_CHAIN_END

CHAIN PPIRENI2 XA_PPIRENI2_3_CHAIN_2
	@547 /* ~Worry not, my dear. Unlike the others, you will live past these next few minutes. Once I am done with <CHARNAME>, you'll soon be returned home, where you will assassinate the Council of Four on my behalf.~ */
	
	== XACORWIJ
	@548 /* ~What..? No, never!~ */
	
	== PPIRENI2
	IF ~
		See("Yoshimo")
	~
	@549 /* ~It's a trivial matter. You'll be enslaved just as easily as Yoshimo was. Enjoy your last moments of autonomy, child.~ */
	
	== PPIRENI2
	IF ~
		!See("Yoshimo")
	~
	@550 /* ~It's a trivial matter. You'll be enslaved through the use of a geas. Enjoy your last moments of autonomy, child.~ */
END XACORWIJ XA_PPIRENI2_3_CHAIN_2_END

CHAIN
	IF ~~ THEN XACORWIJ XAAKissChain
		@74 /* ~(You share a passionate embrace and kiss.)~ */
		
		== AERIEJ
		IF ~
			!Global("AerieRomanceActive", "GLOBAL", 1)
			!Global("AerieRomanceActive", "GLOBAL", 2)
			IsValidForPartyDialogue("Aerie")
		~
		@75 /* ~Oh my... that's s-so romantic!~ */
		
		== HAERDAJ
		IF ~
			IsValidForPartyDialogue("HaerDalis")
		~
		@76 /* ~Ah, the lovers' embrace - the inspiration for many a playwright, myself included.~  */
		
		== IMOEN2J
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		@77 /* ~Gorion would be so happy for you, <CHARNAME>...~ */
END XACORWIJ XA_KissEnd

CHAIN XACORWIJ XA_CorwinIrenicusChain
	@545 /* ~(She struggles mightily, but is unable to break free of the golem's grip.)~ */
	== PPIRENI2
	@539 /* ~Enjoy your last moments of autonomy, child.~ */
	== XAGOLSTO
	@1766 /*~(The golem slowly increases the pressure around her midsection as she continues her futile efforts to break free.)~*/
END XACORWIJ XA_CorwinIrenicusChain_END

