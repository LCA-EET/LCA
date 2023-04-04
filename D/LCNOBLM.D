BEGIN ~LCNOBLM~

IF ~
	Name("LCCORWIN", LastTalkedToBy)
	RandomNum(2,1)
	!TimeOfDay(NIGHT)
~ THEN BEGIN LCA_GreetCorwin
	SAY @13 /* ~Good day, officer.~ */
	IF ~~ THEN EXIT
END

IF ~
	Name("LCCORWIN", LastTalkedToBy)
	RandomNum(2,1)
	TimeOfDay(NIGHT)
~ THEN BEGIN LCA_GreetCorwin2
	SAY @14 /* ~Good evening, officer.~*/
	IF ~~ THEN EXIT
END

IF ~
	Name("LCCORWIN", LastTalkedToBy)
	RandomNum(2,2)
~ THEN BEGIN LCA_GreetCorwin3
	SAY @15 /* ~Thank you for your service, ma'am.~ */
	IF ~~ THEN EXIT
END

IF ~
	Global("LCA_TownspersonSupportsHero", "LOCALS", 1)
~ THEN BEGIN LCA_SupportHero
	SAY @8 /* ~I knew it! The hero of Baldur's Gate has returned!~ */
	
	IF ~~ THEN EXIT
END

IF ~
	Global("LCA_TownspersonHatesHero", "LOCALS", 1)
~ THEN BEGIN LCA_HatesHero
	SAY @7 /* ~<CHARNAME> the Bhaalspawn, here? Get away from me, you scoundrel!~ */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(7,1)
~ THEN BEGIN LCA_1
	SAY @0 /* ~As a man of distinguished lineage, I rarely stoop to the common events of the peasant. I doubt that there is anything I could tell you that you would find useful. Sorry friend.~  */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(7,2)
~ THEN BEGIN LCA_2
	SAY @1 /* ~Approach me not! I'll ruffle you up, I will!~   */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(7,3)
~ THEN BEGIN LCA_3
	SAY @2 /* ~It's good to be able to walk outside again without being accosted by those filthy refugees. That Marshal Nederlok has done a fine job of taking control of the situation.~  */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(7,4)
	!InPartySlot(LastTalkedToBy,0)
~ THEN BEGIN LCA_4
	SAY @3 /* ~My contacts in the palace have informed me that <CHARNAME> is returning to Baldur's Gate, after having been found innocent of the crime against Duke Entar's daughter. Good, I say. <PRO_HESHE> has done much to rid the Sword Coast of bandits and the like.~ */
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(7,5)
	!InPartySlot(LastTalkedToBy,0)
~ THEN BEGIN LCA_5
	SAY @4 /* ~The Dukes would be wise to avoid getting mixed up in any Bhaalspawn business. They are making a mistake in welcoming <CHARNAME> back to the city.~ */
	
	IF ~~ THEN EXIT
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Range("LCCORWIN", 8)
		RandomNum(4,1)
		See("LCCORWIN")
	~ EXTERN LCCORWIJ LCA_CorwinMadLCNOBLM1
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Range("LCCORWIN", 8)
		RandomNum(4,2)
		See("LCCORWIN")
	~ EXTERN LCCORWIJ LCA_CorwinMadLCNOBLM2
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Range("LCCORWIN", 8)
		RandomNum(4,3)
		See("LCCORWIN")
	~ EXTERN LCCORWIJ LCA_CorwinMadLCNOBLM3
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Range("LCCORWIN", 8)
		RandomNum(4,4)
		See("LCCORWIN")
	~ EXTERN LCCORWIJ LCA_CorwinMadLCNOBLM4
END

IF ~
	RandomNum(7,6)
	!Global("LCA_TownspersonHatesHero", "LOCALS", 1)
	!Global("LCA_TownspersonSupportsHero", "LOCALS", 1)
	InPartySlot(LastTalkedToBy,0)
~ THEN BEGIN LCA_6
	SAY @5 /* ~You there! You look familiar.~   */
	
	IF ~~ THEN REPLY @6 /* ~I'm <CHARNAME>. I've returned to Baldur's Gate after a long ordeal in Amn.~*/
	GOTO LCA_6A
END

IF ~~ THEN BEGIN LCA_6A
	SAY @7 /* ~<CHARNAME> the Bhaalspawn, here? Get away from me, you scoundrel!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_TownspersonHatesHero", "LOCALS", 1)
	~
	EXIT
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Range("LCCORWIN", 8)
	~ THEN EXTERN LCCORWIJ LCA_CorwinMadLCNOBLM3
END

IF ~
	RandomNum(7,7)
	!Global("LCA_TownspersonHatesHero", "LOCALS", 1)
	!Global("LCA_TownspersonSupportsHero", "LOCALS", 1)
	InPartySlot(LastTalkedToBy,0)
~ THEN BEGIN LCA_7
	SAY @5 /* ~You there! You look familiar.~   */
	
	IF ~~ THEN REPLY @6 /* ~I'm <CHARNAME>. I've returned to Baldur's Gate after a long ordeal in Amn.~*/
	GOTO LCA_7A
END

IF ~~ THEN BEGIN LCA_7A
	SAY @8 /* ~I knew it! The hero of Baldur's Gate has returned!~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinMadLCNOBLM1
	SAY @16 /* ~Oh! Ah, s-sorry officer. I was speaking out of turn. We are all glad that <CHARNAME> has returned, truly.~ */
	
	IF ~
		RandomNum(3,1)
	~ THEN 
	DO ~
		SetGlobal("LCA_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXTERN LCCORWIJ LCA_CorwinMadEnd1
	
	IF ~
		RandomNum(3,2)
	~ THEN 
	DO ~
		SetGlobal("LCA_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXTERN LCCORWIJ LCA_CorwinMadEnd2
	
	IF ~
		RandomNum(3,3)
	~ THEN 
	DO ~
		SetGlobal("LCA_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXTERN LCCORWIJ LCA_CorwinMadEnd3
END

IF ~~ THEN BEGIN LCA_CorwinMadLCNOBLM2
	SAY @17 /* ~Please n-no, they'll throw me in jail! I didn't mean anything by it.~ */
	
	IF ~
		RandomNum(3,1)
	~ THEN 
	DO ~
		SetGlobal("LCA_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXTERN LCCORWIJ LCA_CorwinMadEnd1
	
	IF ~
		RandomNum(3,2)
	~ THEN 
	DO ~
		SetGlobal("LCA_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXTERN LCCORWIJ LCA_CorwinMadEnd2
	
	IF ~
		RandomNum(3,3)
	~ THEN 
	DO ~
		SetGlobal("LCA_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXTERN LCCORWIJ LCA_CorwinMadEnd3
END