BEGIN ~XAAVBOSS~

IF ~
	GlobalLT("XA_LC_AVBossTalk", "LOCALS", 1)
~ THEN BEGIN XA_Intro
	SAY @7  /* ~Ah, welcome <CHARNAME>. How good it is to see you once again.~   */
	
	IF ~~ THEN REPLY @25 /*  ~The Incubus. I should've known.~*/
	DO ~
		SetGlobal("XA_LC_AVBossTalk", "LOCALS", 1)
	~
	GOTO XA_2B
END

IF ~~ THEN BEGIN XA_2B
	SAY @26 /* ~Indeed. After my defeat at Watcher's Keep, I awoke here. It seems the first of the Hells needed a new master. I hope you like what I've done with the place, hahah.~ */
	
	IF ~~ THEN REPLY @2  /* ~We're here for Caelar, not you. If you attempt to interfere —~ */
	GOTO XA_Caelar
END

IF ~~ THEN BEGIN XA_Caelar
	SAY @3 /* ~Caelar, hah! Could you believe that the puny aasimar tried to destroy me?~*/
	
	= @4 /*~It took a while, but I did manage to beat a modicum of obedience and humility into the arrogant plaything. Allow me to demonstrate.~ [xalc8404]*/
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
	DO ~
		SetGlobal("XA_LC_Vengeance", "LOCALS", 1)
	~
	GOTO XA_Revenge
END

IF ~~ THEN BEGIN XA_WhatPurpose
	SAY @18 /* ~Isn't it obvious? The reason you are here is to facilitate my return to the Prime Material plane.~*/
	
	IF ~~ THEN REPLY @20 /* ~I'll never help you.~*/
	GOTO XA_NeverHelp

	IF ~~ THEN REPLY @27 /* ~And what would I gain by helping you?~*/
	GOTO XA_DontDoItChain
END

IF ~~ THEN BEGIN XA_Revenge
	SAY @17 /* ~You disappoint me, <CHARNAME>. You think that I would be motivated by such a petty, mortal concern? No. The reason you are here is to facilitate my return to the Prime Material plane.~ */
	
	COPY_TRANS XAAVBOSS XA_WhatPurpose
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
	SAY @46  /* @46=~Fool! A devil's powers are amplified in the Hells. I'll break you as easily as I broke the aasimar!~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Hostile4700", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("xaavport")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_FightMulti
	SAY @23  /* @23=~Fool. A devil's powers are amplified in the Hells. I'll break you as easily as I broke the aasimar, then force you to watch as I devour your companions one by one!~*/
	
	COPY_TRANS XAAVBOSS XA_Fight
END

IF ~~ THEN BEGIN XA_DontDoItChain_End
	SAY @41 /*~What is your decision?~*/

	IF ~~ THEN REPLY @31 /*@31=~Tell me, what will you do when you reach the Prime Material plane?~*/
	GOTO XA_WhatWillYouDo
	
	IF ~~ THEN REPLY @20 /* ~I'll never help you.~*/
	GOTO XA_NeverHelp
END

IF ~~ THEN BEGIN XA_WhatWillYouDo
	SAY @32 /*~I intend to find the wizard who entrapped me and destroy him.~*/

	IF ~
		Global("XA_LC_Vengeance", "LOCALS", 1)
	~ THEN REPLY @33 /*@33=~So, you intend to exact vengeance? I thought such concerns were beneath you.~*/
	GOTO XA_NoMoreTalk

	IF ~~ THEN REPLY @44 /*@44=~The risk is too great. No deal.~*/
	GOTO XA_NoMoreTalk
END

IF ~~ THEN BEGIN XA_NoMoreTalk
	SAY @43 /*@43=~(The devil's eyes glow with hatred.)~*/

	IF ~
		NumInPartyGT(2)
	~ THEN 
	GOTO XA_NoMoreTalkMultiFight

	IF ~
		!NumInPartyGT(2)
	~ THEN 
	GOTO XA_NoMoreTalkFight
END

IF ~~ THEN BEGIN XA_NoMoreTalkMultiFight
	SAY @45 /*~Enough! I'll break your will as easily as I broke the aasimar's, then force you to watch as I devour your companions one by one!~*/

	COPY_TRANS XAAVBOSS XA_Fight
END

IF ~~ THEN BEGIN XA_NoMoreTalkFight
	SAY @47 /*@47=~Enough! I'll break you as easily as I broke the aasimar!~*/

	COPY_TRANS XAAVBOSS XA_Fight
END

CHAIN
	IF ~~ THEN XAAVBOSS XA_DontDoItChain
		@28 /* @28=~I will spare the lives of you and your companions. I'll even allow you to take the aasimar, to do with as you please. I've trained her well, and she will obey your every whim... won't you, Caelar?~*/

		== XACAELA2
		@42 /*~Y-yes, master.~*/

		== XACOR25J
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@29 /* @29=~You can't seriously consider this!~*/

		== EDWIN25J
		IF ~
			IsValidForPartyDialogue("EDWIN")
		~
		@36 /*@36=~This seems like a fair bargain, yes...~*/

		== HAERD25J
		IF ~
			IsValidForPartyDialogue("HAERDALIS")
		~
		@37 /*@37=~To let loose such a devil upon the planes... it is a dangerous gambit, my raven.~*/

		== JAN25J
		IF ~
			IsValidForPartyDialogue("JAN")
		~
		@38 /*@38=~A deal with a devil, eh? That reminds me of my Aunt Ploota Jansen. Or possibly my cousin Ploota. We had both an aunt and a cousin named Ploota for a few years, though that became rather confusing after the Incident of the Misdelivered Ferrets.~*/

		= @39 /*~Now, Aunt-or-Cousin Ploota was famous for her turnip cellar. Claimed she could tell the quality of a turnip by listening to it. Would hold it up to her ear and nod solemnly. Said the good ones hummed in the key of C. The bad ones, however, whispered.~*/

		== KELDO25J
		IF ~
			IsValidForPartyDialogue("KELDORN")
		~
		@30 /* @30=~<CHARNAME>, to do this would be a grave mistake.~ */

		== SAREV25J
		IF ~
			IsValidForPartyDialogue("SAREVOK")
		~
		@34 /* @34=~Tread carefully. Devils rarely honor their part of the bargain.~ */

		== AERIE25J
		IF ~
			IsValidForPartyDialogue("AERIE")
		~
		@35 /*~We came here to rescue Caelar, not t-to unleash evil into the world!~*/

		== VALYG25J
		IF ~
			IsValidForPartyDialogue("VALYGAR")
		~
		@40 /*~A deal with a devil? No. I have seen too many men convince themselves that the price is worth paying.~*/	
		
	END
	IF ~~ THEN GOTO XA_DontDoItChain_End 