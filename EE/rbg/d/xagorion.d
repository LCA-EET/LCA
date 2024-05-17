BEGIN ~XAGORION~

IF ~
	Global("XA_LC_G3_Intro", "GLOBAL", 4)
~ THEN BEGIN XA_GorionTalk
	SAY @0 /* ~Hello, child. It's good to see you again.~ */
	
	IF ~~ THEN REPLY @22 /* ~Whoever, or whatever you are, you are not Gorion.~ */
	DO ~
		SetGlobal("XA_LC_G3_Intro", "GLOBAL", 5)
		SetGlobal("XA_LC_GorionTalk", "GLOBAL", 1)
	~
	GOTO XA_NotGorion
	
	IF ~~ THEN REPLY @21 /* ~What trickery is this?  */
	DO ~
		SetGlobal("XA_LC_G3_Intro", "GLOBAL", 5)
		SetGlobal("XA_LC_GorionTalk", "GLOBAL", 1)
	~
	GOTO XA_NotGorion2
	
	IF ~~ THEN REPLY @59 /* ~Father?~ */
	DO ~
		SetGlobal("XA_LC_G3_Intro", "GLOBAL", 5)
		SetGlobal("XA_LC_GorionTalk", "GLOBAL", 1)
	~
	GOTO XA_NotGorion2
	
	IF ~
		Global("XA_LC_DemonDebug", "GLOBAL", 1)
	~ THEN REPLY @60 /* ~Set as Enemy.~ */
	DO ~
		SetGlobal("XA_LC_G3_Intro", "GLOBAL", 5)
		SetGlobal("XA_LC_GorionHostile", "GLOBAL", 1)
		Enemy()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_NotGorion
	SAY @1 /*  ~You are correct, of course. The real Gorion died at the hands of your half brother.~ */
	
	IF ~~ THEN 
	GOTO XA_NotGorion2
END

IF ~~ THEN BEGIN XA_NotGorion2
	SAY @2 /* ~I am a recreation of your foster father, constructed from your memories of him.~ */
	
	IF ~~ THEN REPLY @3 /* ~Why are we here?~ */
	GOTO XA_WhyHere
END

IF ~~ THEN BEGIN XA_WhyHere
	SAY @4 /* ~I don't know. I can only surmise that there is some part of you that has wished to speak with Gorion for some time.~ */
	
	= @5 /* ~Perhaps during your journey, you've learned things of him or about yourself that you have questions about? I may be able to answer them. If not, I will send you back whence you came.~ */
	
	IF ~~ THEN REPLY @24 /* ~No. This is a waste of time. Send me back to Lyriel.~ */
	DO ~
		SetGlobal("XA_LC_GorionTalk", "GLOBAL", 2)
	~
	GOTO XA_Leave
	
	IF ~~ THEN REPLY @54 /* ~Interesting... fine. I'll entertain this, at least for now.~*/
	GOTO XA_MoreQuestions
END

IF ~~ THEN BEGIN XA_Mother
	SAY @30 /* ~(The similacrum lets out a long, pained sigh.)~ */
	
	= @31 /* ~Only that I loved her very much. Speaking of love... have you found someone?~   */
	
	IF ~~ THEN REPLY @32 /* ~That's none of your concern.~ */
	GOTO XA_MoreQuestions
	
	IF ~~ THEN REPLY @33 /* ~I have.~*/
	GOTO XA_HasRelationship
	
	IF ~~ THEN REPLY @34 /* ~Not yet.~ */
	GOTO XA_NoRelationship
END

IF ~~ THEN BEGIN XA_HasRelationship
	SAY @36 /* ~That's wonderful! Your foster father would be pleased, child.~ */
	
	= @61 /*~If I may... what are they like? What about them attracted you?~*/
	
	IF ~~ THEN REPLY @67 /*~I'm afraid that's not any of your business.~*/
	GOTO XA_WontTell
	
	IF ~~ THEN REPLY @68 /*~I'd rather not say.~*/
	GOTO XA_WontTell
	
	IF ~
		Global("JaheiraRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @62 /*~Her name is Jaheira. She's strong, caring and resolute.~*/
	GOTO XA_Indulge
	
	IF ~
		Global("AerieRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @63 /*~Her name is Aerie. She's sweet, innocent and caring.~*/
	GOTO XA_Indulge
	
	IF ~
		Global("AnomenRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @64 /*~~His name is Anomen. He's strong, courageous and resolute.~*/
	GOTO XA_Indulge
	
	IF ~
		Global("RasaadRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @65 /*~His name is Rasaad. He's wise, thoughtful and resolute.~*/
	GOTO XA_Indulge
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @66 /*~Her name is Schael. She's assertive, strong and resolute.~*/
	GOTO XA_Indulge
	
	IF ~
		Global("NeeraRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @67 /*~Her name is Neera. She's fiery, creative, and kind.~*/
	GOTO XA_Indulge
END

IF ~~ THEN BEGIN XA_WontTell
	SAY @71 /*~(The simulacrum nods silently.)~*/
	
	COPY_TRANS XAGORION XA_MoreQuestions
END

IF ~~ THEN BEGIN XA_Indulge
	SAY @70 /* ~Wonderful...~ */
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_LC_GorionQuestions", "GLOBAL", 1)
		ChangeStat(Player1, XP, 1000, ADD)
	~
	GOTO XA_Indulge2
END

IF ~~ THEN BEGIN XA_Indulge2
	SAY @72 /*~Thank you, child, for indulging me.~*/
	
	COPY_TRANS XAGORION XA_MoreQuestions
END

IF ~~ THEN BEGIN XA_NoRelationship
	SAY @35 /* ~That's unfortunate, though not surprising. Given the dangers you face, it's no wonder that you're reluctant to engage in such relationships.~ */
	
	COPY_TRANS XAGORION XA_MoreQuestions
END

IF ~~ THEN BEGIN XA_Prepare
	SAY @8 /* ~Ah... I'd hoped that Alaundo was wrong. I thought that sheltering you from the outside world would spare you from all of the death and bloodshed that was ultimately thrust upon you.~ */	
	
	= @73 /* ~Would it have made a difference, I wonder... Would you have been spared from having to slay your half-brother, or from venturing to Avernus?~ */
	
	= @74 /*  ~Would better preparation in Candlekeep have prevented your capture by Irenicus? I think not... but what do you think, child?~ */
	
	IF ~~ THEN REPLY @75/* ~I agree. No amount of preparation would've made a difference.~*/
	GOTO XA_WontTell
	
	IF ~~ THEN REPLY @76/* ~Had I spent more time studying in the library, I may have gained the intellect to outsmart my captor and escape.~*/
	DO ~
		SetGlobal("XA_LC_StatBoost", "LOCALS", 1) // int
	~
	GOTO XA_Forgive
	
	IF ~~ THEN REPLY @77/* ~Spending more time speaking with you, Tethroril, and the others may have have afforded me the wisdom and insight to see what Irenicus had planned for me.~*/
	DO ~
		SetGlobal("XA_LC_StatBoost", "LOCALS", 2) // wis
	~
	GOTO XA_Forgive
	
	IF ~~ THEN REPLY @78/* ~I could've grown stronger had I spent more time training with the Watchers. The increase in strength could have helped me to break my bonds and escape.~*/
	DO ~
		SetGlobal("XA_LC_StatBoost", "LOCALS", 3) // str
	~
	GOTO XA_Forgive
	
	IF ~~ THEN REPLY @79/* ~More time spent with Winthrop and his patrons could've better developed my social skills, making me into a more charismatic individual. Were it so, I may have been able to convince the Dukes and the city of my innocence, and in doing so prevent my exile and subsequent capture.~*/
	DO ~
		SetGlobal("XA_LC_StatBoost", "LOCALS", 4) // cha
	~
	GOTO XA_Forgive
	
	IF ~~ THEN REPLY @80/* ~Working in the infirmary would've taught my body how to fight off illness and disease. The increase in my constitution could've helped me to resist the poisons that were used to subdue me.~ */
	DO ~
		SetGlobal("XA_LC_StatBoost", "LOCALS", 5) // con
	~
	GOTO XA_Forgive
	
	IF ~~ THEN REPLY @81/* ~The Gatewarden could have taught me much concerning weapons and combat. Were my skill and dexterity greater, I may have been able to fend off the assassins sent to capture me.~*/
	DO ~
		SetGlobal("XA_LC_StatBoost", "LOCALS", 6) // dex
	~
	GOTO XA_Forgive
END

IF ~~ THEN BEGIN XA_Forgive
	SAY @82 /* ~I see... perhaps you are right. Forgive me.~*/
	
	COPY_TRANS XAGORION XA_MoreQuestions
END

IF ~~ THEN BEGIN XA_MoreQuestions
	SAY @37 /* ~You have questions?~ */
	
	IF ~
		GlobalLT("XA_LC_GorionQuestions", "GLOBAL", 3)
	~ THEN REPLY @24 /* ~No. This is a waste of time. Send me back to Lyriel.~ */
	DO ~
		SetGlobal("XA_LC_GorionTalk", "GLOBAL", 2)
	~
	GOTO XA_Leave
	
	IF ~
		GlobalGT("XA_LC_GorionQuestions", "GLOBAL", 2)
	~ THEN REPLY @47 /* ~No more questions. I appreciate the insight you've provided.~ */
	GOTO XA_Leave3
	
	IF ~
		GlobalLT("XA_LC_Prepare", "LOCALS", 1)
	~ THEN REPLY @6 /* ~Why didn't you prepare Imoen and I for what was coming?~*/
	DO ~
		SetGlobal("XA_LC_Prepare", "LOCALS", 1)
		IncrementGlobal("XA_LC_GorionQuestions", "GLOBAL", 1)
		ChangeStat(Player1, XP, 2000, ADD)
	~
	GOTO XA_Prepare
	
	IF ~
		GlobalLT("XA_LC_Prepare", "LOCALS", 1)
	~ THEN REPLY @7 /* ~You've always known what Imoen and I were. Why didn't you tell us?~ */
	DO ~
		SetGlobal("XA_LC_Prepare", "LOCALS", 1)
		IncrementGlobal("XA_LC_GorionQuestions", "GLOBAL", 1)
		ChangeStat(Player1, XP, 2000, ADD)
	~
	GOTO XA_Prepare
	
	IF ~
		GlobalLT("XA_LC_Mother", "LOCALS", 1)
	~ THEN REPLY @29 /* ~What can you tell me about my mother?~ */
	DO ~
		SetGlobal("XA_LC_Mother", "LOCALS", 1)
		IncrementGlobal("XA_LC_GorionQuestions", "GLOBAL", 1)
		ChangeStat(Player1, XP, 2000, ADD)
	~
	GOTO XA_Mother
	
	IF ~
		GlobalLT("XA_LC_Escape", "LOCALS", 1)
	~ THEN REPLY @38 /* ~How do I escape this prison?~ */
	DO ~
		SetGlobal("XA_LC_Escape", "LOCALS", 1)
		IncrementGlobal("XA_LC_GorionQuestions", "GLOBAL", 1)
		ChangeStat(Player1, XP, 2000, ADD)
	~
	GOTO XA_Escape
	
	IF ~
		GlobalLT("XA_LC_WhatWillHappen", "LOCALS", 1)
		GlobalGT("XA_LC_GorionQuestions", "GLOBAL", 2)
	~ THEN REPLY @12 /* ~What will happen to you when I leave here?~*/
	DO ~
		SetGlobal("XA_LC_WhatWillHappen", "LOCALS", 1)
		IncrementGlobal("XA_LC_GorionQuestions", "GLOBAL", 1)
		ChangeStat(Player1, XP, 2000, ADD)
	~
	GOTO XA_WhatWillHappen
	
	IF ~
		GlobalLT("XA_LC_GorionImpression", "LOCALS", 1)
		GlobalGT("XA_LC_GorionQuestions", "GLOBAL", 3)
	~ THEN REPLY @14 /* ~What would Gorion think of the <PRO_MANWOMAN> I've become?~ */
	DO ~
		SetGlobal("XA_LC_GorionImpression", "LOCALS", 1)
		IncrementGlobal("XA_LC_GorionQuestions", "GLOBAL", 1)
		ChangeStat(Player1, XP, 5000, ADD)
	~
	GOTO XA_GorionImpression
	
	IF ~
		GlobalLT("XA_LC_WhyHarpers", "LOCALS", 1)
	~ THEN REPLY @55 /* ~Why join the Harpers?~ */
	DO ~
		SetGlobal("XA_LC_WhyHarpers", "LOCALS", 1)
		IncrementGlobal("XA_LC_GorionQuestions", "GLOBAL", 1)
		ChangeStat(Player1, XP, 2000, ADD)
	~
	GOTO XA_WhyHarpers
END

IF ~~ THEN BEGIN XA_WhyHarpers
	SAY @56 /* ~Like you, child, I was once young and full of energy. I chose to embark on a life of adventure, and met many interesting people along the way.~ */
	
	= @57 /* ~Among them were the Harpers. Our goals and ideals were aligned in a multitude of ways, and I decided to join them. Many of their number became close friends of mine, and I cherished those relationships for the remainder of my life.~*/
	
	= @58 /* ~You've met many of them already. I hope, <CHARNAME>, that you are able to maintain the friendships and relationships with your companions, as I did with mine. Doing so will benefit you and your comrades in ways that are not always easy to see.~
 */
 
	COPY_TRANS XAGORION XA_MoreQuestions
END

IF ~~ THEN BEGIN XA_GorionImpression
	SAY @15 /* Hm... */
	
	IF ~
		ReputationGT(Player1, 18)
		Gender(Player1, MALE)
	~ THEN
	GOTO XA_GorionImpression_VeryGood_M

	IF ~
		ReputationGT(Player1, 18)
		Gender(Player1, FEMALE)
	~ THEN
	GOTO XA_GorionImpression_VeryGood_F
	
	IF ~
		ReputationGT(Player1, 15)
		ReputationLT(Player1, 19)
	~ THEN
	GOTO XA_GorionImpression_Good
	
	IF ~
		ReputationGT(Player1, 11)
		ReputationLT(Player1, 16)
	~ THEN
	GOTO XA_GorionImpression_OK
	
	IF ~
		ReputationGT(Player1, 5)
		ReputationLT(Player1, 12)
	~ THEN 
	GOTO XA_GorionImpression_Bad
	
	IF ~
		ReputationLT(Player1, 6)
	~ THEN 
	GOTO XA_GorionImpression_VeryBad
END

IF ~~ THEN BEGIN XA_Leave2
	SAY @52 /* ~I sense that our time is running short. I hope that you're able to find your way out of this prison. One last bit of advice. ~ */
	
	= @53 /* ~Though you defeated Sarevok, Aluando's prophecy spoke of scores of Bhaalspawn sowing chaos throughout the land. It's likely the case that fate is not done with you. You must remain vigilant at all times, child. Good luck.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_EndG3", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_GorionImpression_VeryGood_M
	SAY @49 /* ~You've always strived to do what is right, and your many heroic deeds speak for themselves. He'd be proud... no... he'd be honored to have played a role in your upbringing, young man.~ */
	
	IF ~
		GlobalLT("XA_LC_GorionQuestions", "GLOBAL", 5)
	~ THEN 
	GOTO XA_Leave2
	
	IF ~
		GlobalGT("XA_LC_GorionQuestions", "GLOBAL", 4)
	~ THEN 
	GOTO XA_Leave4
END

IF ~~ THEN BEGIN XA_GorionImpression_VeryGood_F
	SAY @50 /* ~You've always strived to do what is right, and your many heroic deeds speak for themselves. He'd be proud... no... he'd be honored to have played a role in your upbringing, young lady.~ */
	
	IF ~~ THEN 
	GOTO XA_Leave2
END

IF ~~ THEN BEGIN XA_GorionImpression_Good
	SAY @16 /* ~He would be pleased. You've overcome your dark nature, and have become a force for good. Yes, he would be pleased.~ */
	
	IF ~~ THEN 
	GOTO XA_Leave2
END

IF ~~ THEN BEGIN XA_GorionImpression_OK
	SAY @46 /* ~He'd be pleased to see that you're doing well, and he would encourage you to continue to apply his teachings.~ */
	
	IF ~~ THEN 
	GOTO XA_Leave2
END

IF ~~ THEN BEGIN XA_GorionImpression_Bad
	SAY @20 /* ~He would be disappointed. Your actions thus far have shown a disregard for the well-being of others. He would encourage you to remember his teachings, and to become the type of <PRO_MANWOMAN> that others would look up to.~ */
	
	IF ~~ THEN 
	GOTO XA_Leave2
END

IF ~~ THEN BEGIN XA_GorionImpression_VeryBad
	SAY @17 /* ~He would be disgusted and filled with regret. You've discarded his teachings entirely, and have terrorized the people of Amn and the Sword Coast. He would do everything in his power to stop you. And so would I~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_GorionHostile", "GLOBAL", 1)
		Enemy()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_WhatWillHappen
	SAY @13 /* ~I will very likely cease to exist. But worry not, child. A part of me, no... a part of Gorion... will always be with you.~ */
	
	IF ~~ THEN
	GOTO XA_MoreQuestions
END

IF ~~ THEN BEGIN XA_Escape
	SAY @39 /* ~I don't know for certain, but what's clear is that the master of this place has learned to manipulate it to his own benefit. You may be able to as well.~*/
	
	= @40 /* ~Remember what I taught you about telepathy, child. The demon is able to look into your memories — to do so, he must create a kind of psionic link.~ */
	
	= @41  /* ~It's likely that the link goes both ways. If I am correct, you can use the link to learn how to alter this reality to suit you, instead of him.~  */
	
	= @42 /* ~Such knowledge could prove invaluable if you choose to confront the master in his sanctum.~ */
	
	IF ~~ THEN REPLY @44 /* ~Why are you helping me?~ */
	GOTO XA_WhyHelp
	
	COPY_TRANS XAGORION XA_MoreQuestions
END

IF ~~ THEN BEGIN XA_WhyHelp
	SAY @45 /* ~Because Gorion would've.~ */
	
	IF ~~ THEN
	GOTO XA_MoreQuestions
END

IF ~~ THEN BEGIN XA_Leave
	SAY @25 /* ~Very well. Good-bye...~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_EndG3", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Leave3
	SAY @48 /* ~It was my pleasure. Good luck to you, child.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_EndG3", "GLOBAL", 1)
	~
	EXIT	
END

IF ~~ THEN BEGIN XA_Leave4
	SAY @84 /*~(He places his hand on your shoulder and closes his eyes. For a brief moment, your mind is filled with memories of events in Candlekeep that you're certain never took place... a strange sensation, to say the least.)~ */
	
	IF ~
		Global("XA_LC_StatBoost", "LOCALS", 1)
	~
	THEN DO ~
		ChangeStat(Player1, INT, 1, ADD)
	~
	GOTO XA_Leave4A
	
	IF ~
		Global("XA_LC_StatBoost", "LOCALS", 2)
	~
	THEN DO ~
		ChangeStat(Player1, WIS, 1, ADD)
	~
	GOTO XA_Leave4A
	
	IF ~
		Global("XA_LC_StatBoost", "LOCALS", 3)
	~
	THEN DO ~
		ChangeStat(Player1, STR, 1, ADD)
	~
	GOTO XA_Leave4A
	
	IF ~
		Global("XA_LC_StatBoost", "LOCALS", 4)
	~
	THEN DO ~
		ChangeStat(Player1, CHR, 1, ADD)
	~
	GOTO XA_Leave4A
	
	IF ~
		Global("XA_LC_StatBoost", "LOCALS", 5)
	~
	THEN DO ~
		ChangeStat(Player1, CON, 1, ADD)
	~
	GOTO XA_Leave4A
	
	IF ~
		Global("XA_LC_StatBoost", "LOCALS", 6)
	~
	THEN DO ~
		ChangeStat(Player1, DEX, 1, ADD)
	~
	GOTO XA_Leave4A
END

IF ~~ THEN BEGIN XA_Leave4A
	SAY @85 /* ~Now, one final bit of advice. Though you defeated Sarevok, Aluando's prophecy spoke of scores of Bhaalspawn sowing chaos throughout the land. It's likely the case that fate has more in store for you. Remember that you must remain vigilant at all times, child. Good luck.~  */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_EndG3", "GLOBAL", 1)
	~
	EXIT
END