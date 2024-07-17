BEGIN ~XANOBLW~

IF ~
	IsGabber("XACORWIN")
	RandomNum(2,1)
	!TimeOfDay(NIGHT)
~ THEN BEGIN XA_GreetCorwin
	SAY @13 /* ~Good day, officer.~ */
	IF ~~ THEN EXIT
END

IF ~
	IsGabber("XACORWIN")
	RandomNum(2,1)
	TimeOfDay(NIGHT)
~ THEN BEGIN XA_GreetCorwin2
	SAY @14 /* ~Good evening, officer.~*/
	IF ~~ THEN EXIT
END

IF ~
	IsGabber("XACORWIN")
	RandomNum(2,2)
~ THEN BEGIN XA_GreetCorwin3
	SAY @15 /* ~Thank you for your service, ma'am.~ */
	IF ~~ THEN EXIT
END

IF ~
	Global("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
~ THEN BEGIN XA_SupportHero
	SAY @8 /* ~I knew it! The hero of Baldur's Gate has returned!~ */
	
	IF ~~ THEN EXIT
END

IF ~
	Global("XA_LC_TownspersonHatesHero", "LOCALS", 1)
~ THEN BEGIN XA_HatesHero
	SAY @7 /* ~<CHARNAME> the Bhaalspawn, here? Get away from me, you scoundrel!~ */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(8,1)
~ THEN BEGIN XA_1
	SAY @0 /* ~Could you please step away? I have no desire to slum with those beneath my station.~  */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(8,2)
~ THEN BEGIN XA_2
	SAY @1 /* ~Even though it is not decent for me to mingle with those beneath my station, I find that you possess a certain irresistible charm. I am willing to tell whatever you wish to hear. Perhaps you'd like to know about the last ball I attended. It was wondrous, I was at the forefront of everyone's mind.~    */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(8,3)
~ THEN BEGIN XA_3
	SAY @2 /* ~It's good to be able to walk outside again without being accosted by those filthy refugees. That Marshal Nederlok has done a fine job of taking control of the situation.~  */
	
	IF ~~ THEN EXIT
END



IF ~
	RandomNum(8,4)
	!IsGabber(Player1)
~ THEN BEGIN XA_4
	SAY @3 /* ~My contacts in the palace have informed me that <CHARNAME> is returning to Baldur's Gate, after having been found innocent of the crime against Duke Entar's daughter. Good, I say. <PRO_HESHE> has done much to rid the Sword Coast of bandits and the like.~ */
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(8,5)
	!IsGabber(Player1)
~ THEN BEGIN XA_5
	SAY @4 /* ~The Dukes would be wise to avoid getting mixed up in any Bhaalspawn business. They are making a mistake in weXAoming <CHARNAME> back to the city.~ */
	
	IF ~~ THEN EXIT
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Range("XACORWIN", 8)
		RandomNum(4,1)
		See("XACORWIN")
	~ EXTERN XACORWIJ XA_CorwinMadXANOBLW1
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Range("XACORWIN", 8)
		RandomNum(4,2)
		See("XACORWIN")
	~ EXTERN XACORWIJ XA_CorwinMadXANOBLW2
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Range("XACORWIN", 8)
		RandomNum(4,3)
		See("XACORWIN")
	~ EXTERN XACORWIJ XA_CorwinMadXANOBLW3
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Range("XACORWIN", 8)
		RandomNum(4,4)
		See("XACORWIN")
	~ EXTERN XACORWIJ XA_CorwinMadXANOBLW4
END

IF ~
	RandomNum(8,6)
	!Global("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	!Global("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_6
	SAY @5 /* ~You there! You look familiar.~   */
	
	IF ~~ THEN REPLY @6 /* ~I'm <CHARNAME>. I've returned to Baldur's Gate after a long ordeal in Amn.~*/
	GOTO XA_6A
END

IF ~~ THEN BEGIN XA_6A
	SAY @7 /* ~<CHARNAME> the Bhaalspawn, here? Get away from me, you scoundrel!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	~
	EXIT
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Range("XACORWIN", 8)
	~ THEN EXTERN XACORWIJ XA_CorwinMadXANOBLW3
END

IF ~
	RandomNum(8,7)
	!Global("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	!Global("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_7
	SAY @5 /* ~You there! You look familiar.~   */
	
	IF ~~ THEN REPLY @6 /* ~I'm <CHARNAME>. I've returned to Baldur's Gate after a long ordeal in Amn.~*/
	GOTO XA_7A
	
	IF ~~ THEN REPLY @18 /*~I'm afraid you've mistaken me for someone else.~*/
	GOTO XA_GoAway
END

IF ~~ THEN BEGIN XA_GoAway
	SAY @19 /*~Not likely, though I do tire of you already. Shoo!~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_7A
	SAY @8 /* ~I knew it! The hero of Baldur's Gate has returned!~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXIT
END

IF ~
	RandomNum(8,8)
~ THEN BEGIN XA_8
	SAY @9 /* ~If you'll excuse me, I really find that I have no reason to speak with a mangy group of dirty adventurers. Go off somewhere and play your little sword and sorcery games, but please don't do it around me.~   */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_CorwinMadXANOBLW1
	SAY @16 /* ~Oh! Ah, s-sorry officer. I was speaking out of turn. We are all glad that <CHARNAME> has returned, truly.~ */
	
	IF ~
		RandomNum(3,1)
	~ THEN 
	DO ~
		SetGlobal("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXTERN XACORWIJ XA_CorwinMadEnd1
	
	IF ~
		RandomNum(3,2)
	~ THEN 
	DO ~
		SetGlobal("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXTERN XACORWIJ XA_CorwinMadEnd2
	
	IF ~
		RandomNum(3,3)
	~ THEN 
	DO ~
		SetGlobal("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXTERN XACORWIJ XA_CorwinMadEnd3
END

IF ~~ THEN BEGIN XA_CorwinMadXANOBLW2
	SAY @17 /* ~Please n-no, they'll throw me in jail! I didn't mean anything by it.~ */
	
	IF ~
		RandomNum(3,1)
	~ THEN 
	DO ~
		SetGlobal("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXTERN XACORWIJ XA_CorwinMadEnd1
	
	IF ~
		RandomNum(3,2)
	~ THEN 
	DO ~
		SetGlobal("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXTERN XACORWIJ XA_CorwinMadEnd2
	
	IF ~
		RandomNum(3,3)
	~ THEN 
	DO ~
		SetGlobal("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXTERN XACORWIJ XA_CorwinMadEnd3
END

IF ~
	True()
~ THEN BEGIN XA_Default
	SAY @20 /*~Away with you. I'm expecting someone important and I do not want them bothered by your boorish presence.~*/
	
	IF ~~ THEN EXIT
END