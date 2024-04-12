BEGIN ~XAAVBOSS~

IF ~
	GlobalLT("XA_LC_AVBossTalk", "LOCALS", 1)
	Global("XA_LC_4700_Demogorgon", "GLOBAL",1)
~ THEN BEGIN XA_Intro
	SAY @7  /* ~Ah, welcome <CHARNAME>. How good it is to see you once again.~   */
	
	IF ~~ THEN REPLY @0  /* ~Demogorgon. I should've known.~*/
	DO ~
		SetGlobal("XA_LC_AVBossTalk", "LOCALS", 1)
	~
	GOTO XA_2A
END

IF ~
	GlobalLT("XA_LC_AVBossTalk", "LOCALS", 1)
	Global("XA_LC_4700_Incubus", "GLOBAL",1)
~ THEN BEGIN XA_Intro
	SAY @7  /* ~Ah, welcome <CHARNAME>. How good it is to see you once again.~   */
	
	IF ~~ THEN REPLY @25 /*  ~The Incubus. I should've known.~*/
	DO ~
		SetGlobal("XA_LC_AVBossTalk", "LOCALS", 1)
	~
	GOTO XA_2B
END

IF ~~ THEN BEGIN XA_2A
	SAY @1 /* ~Indeed. After my defeat at Watcher's Keep, I awoke here. It seems the first of the Hells needed a new master. I hope you like what I've done with the place, hahah.~ */
	
	IF ~~ THEN REPLY @2  /* ~We're here for Caelar, not you. If you attempt to interfere —~ */
	GOTO XA_Caelar
END

IF ~~ THEN BEGIN XA_2B
	SAY @26 /* ~Indeed. After my defeat at Watcher's Keep, I awoke here. It seems the first of the Hells needed a new master. I hope you like what I've done with the place, hahah.~ */
	
	IF ~~ THEN REPLY @2  /* ~We're here for Caelar, not you. If you attempt to interfere —~ */
	GOTO XA_Caelar
END

IF ~~ THEN BEGIN XA_Caelar
	SAY @3 /* ~Caelar, hah! Could you believe that the puny aasimar tried to stop me? It took a while, but I did manage to beat some humility into the arrogant plaything. Allow me to demonstrate.~*/
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XA470003")
	~
	EXIT
END

IF ~
	Global("XA_LC_AVBossTalk", "LOCALS", 1)
~ THEN BEGIN XA_CaelarGrovelEnd
	SAY @8  /* ~Hmph. Though she's grown tiresome, I think I'll keep her alive a while longer. She does fulfill certain... needs of mine.~*/
	
	IF ~~ THEN REPLY @13 /* ~You'll not touch her again. She's coming with me.~ */
	GOTO XA_NotLeaving
	
	IF ~~ THEN REPLY @19 /* ~She's suffered you long enough. Caelar — let's go.~ */
	GOTO XA_NotLeaving
END

IF ~~ THEN BEGIN XA_NotLeaving
	SAY @14 /* ~You're not going anywhere. It took a great deal of time and planning to bring you here. You see, it was I who sent you the visions in your dreams, not her.~ */
	
	IF ~~ THEN REPLY @15 /* ~For what purpose?~*/
	GOTO XA_WhatPurpose
	
	IF ~~ THEN REPLY @16 /* ~To gain revenge, no doubt.~*/
	GOTO XA_Revenge
END

IF ~~ THEN BEGIN XA_WhatPurpose
	SAY @18 /* ~Isn't it obvious? The reason you are here is to facilitate my return to the Prime Material plane.~*/
	
	IF ~~ THEN REPLY @20 /* ~I'll never help you.~*/
	GOTO XA_NeverHelp
END

IF ~~ THEN BEGIN XA_Revenge
	SAY @17 /* ~You disappoint me, <CHARNAME>. You think that I would be motivated by such a petty, mortal concern? No. The reason you are here is to facilitate my return to the Prime Material plane.~ */
	
	IF ~~ THEN REPLY @20 /* ~I'll never help you.~*/
	GOTO XA_NeverHelp
END

IF ~~ THEN BEGIN XA_NeverHelp
	SAY @21 /* ~You have the ability to move between planes. Either you take me back with you, or I will posess your body and do it myself. The choice is yours.~ */
	
	IF ~
		!NumInPartyGT(2)
	~ THEN REPLY @22 /* ~There's a third option. I will destroy you here, as I did in your prison... need I remind you, demon, that death in this place will end your existence?~*/
	GOTO XA_Fight
	
	IF ~
		NumInPartyGT(2)
	~ THEN REPLY @22  /* ~There's a third option. I will destroy you here, as I did in your prison... need I remind you, demon, that death in this place will end your existence?~*/
	GOTO XA_FightMulti
END

IF ~~ THEN BEGIN XA_Fight
	SAY @23  /* ~Fool. A demon's powers are amplified in the Hells. I'll break you as easily as I broke the aasimar, then you will bear witness as tear Toril from its very foundation!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Hostile4700", "GLOBAL", 1)
		Enemy()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_FightMulti
	SAY @23  /* ~Fool. A demon's powers are amplified in the Hells. I'll break you as easily as I broke the aasimar, then force you to watch as I devour your companions one by one!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Hostile4700", "GLOBAL", 1)
		Enemy()
	~
	EXIT
END