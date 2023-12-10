BEGIN ~XAROHMA~

IF ~
	Global("XA_ByeRohma", "GLOBAL", 1)
	!See("XACORWIN")
~ THEN BEGIN XA_EndBGQuest_CorwinRequested
	SAY @69 /* ~(Yawn)~ */
	=@70 /* ~I want mommy...~ */
	IF ~~ THEN EXIT
END

IF ~
	Global("XA_ByeRohma", "GLOBAL", 1)
	See("XACORWIN")
	Global("XA_DidRequestCorwin", "GLOBAL", 1)
~ THEN BEGIN XA_EndBGQuest_CorwinRequested
	SAY @40 /* ~Mommy, what did the Dukes want?~ */
	
	IF ~~THEN
	EXTERN XACORWIJ XA_ByeRohmaChain1
END

IF ~
	Global("XA_ByeRohma", "GLOBAL", 1)
	See("XACORWIN")
	!Global("XA_DidRequestCorwin", "GLOBAL", 1)
~ THEN BEGIN XA_EndBGQuest_CorwinNotRequested
	SAY @40 /* ~Mommy, what did the Dukes want?~ */
	
	IF ~~THEN
	EXTERN XACORWIJ XA_ByeRohmaChain1_NR
END

IF ~
	IsGabber("XACORWIN")
	Gender(Player1, MALE)
	Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	!Global("XA_RohmaPlayerDaddy", "LOCALS", 1)
~ THEN BEGIN XA_PlayerNewDad
	SAY @36 /* ~Mommy, is <CHARNAME> going to be my daddy now?~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_RohmaPlayerDaddy", "LOCALS", 1)
	~ 
	EXTERN XACORWIJ XA_PlayerNewDadChain
END

IF ~
	IsGabber("XACORWIN")
~ THEN BEGIN XA_GreetMommyA
	SAY @35 /* ~I love you mommy!~ */
	
	IF ~~ THEN EXTERN XACORWIJ XA_GreetMommyA2
END

IF ~
	IsGabber("XACORWIN")
	Gender(Player1, MALE)
	RandomNum(2,2)
	!Global("XA_RohmaPlayerDaddy", "LOCALS", 1)
~ THEN BEGIN XA_GreetMommyB
	SAY @36 /* ~Mommy, is <CHARNAME> going to be my daddy now?~ */
	
	IF ~~ THEN EXTERN XACORWIJ XA_GreetMommyB2
END

IF ~
	Global("XA_CorwinMetFamily", "GLOBAL", 1)
	Global("XA_CorwinFamilyTalk", "GLOBAL", 3)
	RandomNum(2,1)
	IsGabber(Player1)
~ THEN BEGIN XA_Default
	SAY @27 /* ~My mommy is the best.~ */
	IF ~~ THEN 
	EXIT
END

IF ~
	Global("XA_CorwinMetFamily", "GLOBAL", 1)
	Global("XA_CorwinFamilyTalk", "GLOBAL", 3)
	IsGabber(Player1)
	RandomNum(2,2)
~ THEN BEGIN XA_Default
	SAY @28 /* ~Hi, <CHARNAME>.~ */
	IF ~~ THEN 
	EXIT
END

IF ~
	Global("XA_CorwinMetFamily", "GLOBAL", 1)
	Global("XA_CorwinFamilyTalk", "GLOBAL", 3)
	RandomNum(2,1)
	!IsGabber(Player1)
~ THEN BEGIN XA_Default
	SAY @27 /* ~My mommy is the best.~ */
	IF ~~ THEN 
	EXIT
END

IF ~
	Global("XA_CorwinMetFamily", "GLOBAL", 1)
	Global("XA_CorwinFamilyTalk", "GLOBAL", 3)
	!IsGabber(Player1)
	RandomNum(2,2)
~ THEN BEGIN XA_Default
	SAY @29 /* ~I love my mommy.~ */
	IF ~~ THEN 
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3
	SAY @10 /* ~(She turns to look at you.)~ */
	
	IF ~
		!Global("XA_MetRohma","Global",1)
	~ THEN
	DO ~
		SetGlobal("XA_MetRohma","Global",1)
	~
	GOTO XA_CorwinFamilyReunite3A1
	
	IF ~
		Global("XA_MetRohma","Global",1)
	~ THEN
	GOTO XA_CorwinFamilyReunite3B1
END

IF ~~ THEN BEGIN XA_CorwinRohmaReuniteChainEnd
	SAY @39 /* ~Auntie Skie said you and <CHARNAME> saved me, but who was the man that took me? The one that hurt grandpa.~ */
	
	IF ~~ THEN REPLY @38 /* ~What matters is that he'll never hurt you, or anyone else, ever again.~ */
	DO ~
		StartCutSceneMode()
		StartCutScene("XABGEND2")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinRohmaReuniteChainEndA
	SAY @37 /* ~Who was the man that took me? The one that hurt grandpa.~ */
	
	IF ~~ THEN REPLY @38 /* ~What matters is that he'll never hurt you, or anyone else, ever again.~ */
	DO ~
		StartCutSceneMode()
		StartCutScene("XABGEND5")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3A1
	SAY @11 /*  ~Who're you?~*/
	
	IF ~~ THEN REPLY @9 /* ~My name is <CHARNAME>. It's a pleasure to finally meet you, Rohma!~ */
	GOTO XA_CorwinFamilyReunite3A2
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3A2
	SAY @12 /* ~Wow, you're <CHARNAME>? But... the kids in school said you had horns!~ */
	
	IF ~~ THEN
	EXTERN XACORWIJ XA_CorwinFamilyReunite3A3
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3A4A1
	SAY @14 /* ~Mommy always said those bad things people were saying about you were wrong, and that you would come back one day.~*/
	
	IF ~~ THEN REPLY @20 /* ~Your mommy was right. Rohma, here. I want you to have this. (Hand over the doll.)~ */
	DO ~
		AddJournalEntry(@77, QUEST_DONE)
	~
	GOTO XA_CorwinFamilyReunite3A4A2
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3A4A2
	SAY @21 /*  ~(She smiles, takes the doll and begins to play with it.)~ */
	
	IF ~~ THEN
	DO ~
		TakePartyItem("XARDOLL")
		DestroyItem("XARDOLL")
		AddExperienceParty(5000)
		SetGlobal("XA_GaveDoll", "Global", 1)
		AddJournalEntry(@23, INFO)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 5)
	~
	EXTERN XACORWIJ XA_CorwinFamilyReunite3A4A3
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3A4A4
	SAY @22 /*  ~Thank you!~ */
	
	IF ~
		!Global("XA_JustBoughtDoll", "GLOBAL", 1)
	~ THEN REPLY @24 /* ~Your welcome! How old are you, dear?~ */
	GOTO XA_CorwinFamilyReunite3A5
	
	IF ~
		Global("XA_JustBoughtDoll", "GLOBAL", 1)
	~ THEN REPLY @25 /* ~Your welcome. You've grown since I last saw you.~ */
	GOTO XA_CorwinFamilyReunite3Z
	
	IF ~
		Global("XA_JustBoughtDoll", "GLOBAL", 1)
	~ THEN REPLY @26 /* ~Your welcome. The last time I saw you Rohma, you were five years old. How old are you now?~ */
	GOTO XA_CorwinFamilyReunite3Z
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3A4B
	SAY @14 /* ~Mommy always said those bad things people were saying about you were wrong, and that you would come back one day.~*/
	
	IF ~~ THEN REPLY @15 /* ~Your mommy was right. How old are you my dear?~ */
	GOTO XA_CorwinFamilyReunite3A5
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3A5
	SAY @19 /* ~I'm one-two-three-four-five-six - six years old!~*/
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinFamilyTalk", "GLOBAL", 3)
	~
	EXTERN XACORWIJ XA_CorwinFamilyReunite4
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3B1
	SAY @6 /* ~You're <CHARNAME>! I remember you! ~*/
	
	IF ~~ THEN
	GOTO XA_CorwinFamilyReunite3B2A
	
	IF ~
		PartyHasItem("XARDOLL")
	~ THEN
	GOTO XA_CorwinFamilyReunite3B2B
	
	IF ~
		OR(2)
			Global("XA_GaveDoll", "GLOBAL", 1)
			Global("XA_GaveDoll", "GLOBAL", 2)
	~ THEN GOTO XA_CorwinFamilyReunite3B1A
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3B1A
	SAY @16 /* ~You got me my dolly! She's my favorite!~ */

	= @78 /* ~(She holds up the doll you bought for her many months ago. You had nearly forgotten about it. It warms your heart to see that she treasures it as much as she does.)~ */

	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_CorwinFamilyReunite3B2A
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3B2A
	SAY @14 /* ~Mommy always said those bad things people were saying about you were wrong, and that you would come back one day.~*/
	
	IF ~~ THEN REPLY @17 /* ~Your mommy was right. How old are you now?~ */
	GOTO XA_CorwinFamilyReunite3Z
	
	IF ~~ THEN REPLY @18 /* ~Your mommy was right. You've grown since I last saw you.~ */
	GOTO XA_CorwinFamilyReunite3Z
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3B2B
	SAY @14 /* ~Mommy always said those bad things people were saying about you were wrong, and that you would come back one day.~*/
	
	IF ~~ THEN REPLY @20 /* ~Your mommy was right. Rohma, here. I want you to have this. (Hand her the doll.)~ */
	DO ~
		SetGlobal("XA_JustBoughtDoll", "GLOBAL", 1)
		AddJournalEntry(@76, QUEST_DONE)
	~
	GOTO XA_CorwinFamilyReunite3A4A2
	
END

IF ~~ THEN BEGIN XA_CorwinFamilyReunite3Z
	SAY @1 /* ~I'm six now!~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinFamilyTalk", "GLOBAL", 3)
	~
	EXTERN XACORWIJ XA_CorwinFamilyReunite4
END

IF ~~ THEN BEGIN XA_RohmaTaunt1A
	SAY @31 /*~Mommy loves <CHARNAME>, mommy loves <CHARNAME>, mommy loves - ~*/
	
	IF ~~ THEN EXTERN XACORWIJ XA_RohmaTaunt2A
END

IF ~~ THEN BEGIN XA_RohmaTaunt1B
	SAY @31 /*~Mommy loves <CHARNAME>, mommy loves <CHARNAME>, mommy loves - ~*/
	
	IF ~~ THEN EXTERN XACORWIJ XA_RohmaTaunt2B
END

IF ~~ THEN BEGIN XA_RohmaTaunt3A
	SAY @30 /* ~♫ Mommy and <CHARNAME> sitting in a tree ♫
♫ K-I-S-S-I-N-G ♫ 
♫ First comes love, then comes - ~
*/
	IF ~~ THEN EXTERN XACORWIJ XA_RohmaTaunt4A
END

IF ~~ THEN BEGIN XA_RohmaTaunt3B
	SAY @30 /* ~♫ Mommy and <CHARNAME> sitting in a tree ♫
♫ K-I-S-S-I-N-G ♫ 
♫ First comes love, then comes - ~
*/
	IF ~~ THEN EXTERN XACORWIJ XA_RohmaTaunt4B
END

IF ~~ THEN BEGIN XA_SayBye
	SAY @32 /* ~Bye <CHARNAME>!~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @33 /* ~Bye Rohma! Take good care of your mommy for me. I'll see the two of you tomorrow.~ */
	DO ~
		SetGlobal("XA_CorwinWithFamily", "GLOBAL", 1)
		ActionOverride("XACORWIN", LeaveParty())
	~
	EXIT
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @34 /* ~Bye Rohma! It was nice to see you again. See you tomorrow, Schael.~*/
	DO ~
		SetGlobal("XA_CorwinWithFamily", "GLOBAL", 1)
		ActionOverride("XACORWIN", LeaveParty())
	~
	EXIT
END

IF ~~ THEN BEGIN XA_ByeRohmaChain1End
	SAY @49 /* ~Are we going home now?~ */
	
	IF ~
		Global("XA_DidRequestCorwin", "GLOBAL", 1)
		!Global("XA_SkieModActive", "GLOBAL",1)
	~ THEN REPLY @50 /* ~No, sweetie. You and your grandpa are going to stay here, until your mom and I return from our trip. There's a guest room for you downstairs.~ */
	GOTO XA_ByeRohmaChain2
	
	IF ~
		!Global("XA_DidRequestCorwin", "GLOBAL", 1)
		!Global("XA_SkieModActive", "GLOBAL",1)
	~ THEN REPLY @68 /* ~You, mommy and grandpa are going to stay here until I return from my trip. There's a guest room for you downstairs.~ */
	GOTO XA_ByeRohmaChain2
	
	IF ~
		Global("XA_DidRequestCorwin", "GLOBAL", 1)
		Global("XA_SkieModActive", "GLOBAL",1)
	~ THEN REPLY @50 /* ~No, sweetie. You and your grandpa are going to stay here, until your mom and I return from our trip. There's a guest room for you downstairs.~ */
	GOTO XA_ByeRohmaChain2A
	
	IF ~
		!Global("XA_DidRequestCorwin", "GLOBAL", 1)
		Global("XA_SkieModActive", "GLOBAL",1)
	~ THEN REPLY @68 /* ~You, mommy and grandpa are going to stay here until I return from my trip. There's a guest room for you downstairs.~ */
	GOTO XA_ByeRohmaChain2A
END

IF ~~ THEN BEGIN XA_ByeRohmaChain2End
	SAY @58 /* ~Goodnight, <CHARNAME>!~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @59 /* ~Goodnight Rohma.~ */
	GOTO XA_ByeRohmaEnd_Romance
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @59 /* ~Goodnight Rohma.~ */
	EXTERN XACORWIJ XA_BedtimeRohmaChain
END

IF ~~ THEN BEGIN XA_ByeRohmaEnd_Romance
	SAY @60 /* ~(She gives you a hug and a kiss.)~ */
	
	= @61 /* ~I love you.~ */
	
	IF ~
		Gender(Player1, MALE)
		GlobalGT("XA_CorwinOpinionOfPlayer", "GLOBAL", 97)
	~ THEN REPLY @62 /* ~I love you too, honey. Sleep well - I'll see you in the morning.~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 1)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", SIXTEEN_DAYS)
	~
	EXTERN XACORWIJ XA_BedtimeRohmaChain
	
	IF ~
		Gender(Player1, MALE)
		!GlobalGT("XA_CorwinOpinionOfPlayer", "GLOBAL", 97)
	~ THEN REPLY @62 /* ~I love you too, honey. Sleep well - I'll see you in the morning.~ */
	EXTERN XACORWIJ XA_BedtimeRohmaChain
	
	IF ~
		Gender(Player1, MALE)
		GlobalGT("XA_CorwinOpinionOfPlayer", "GLOBAL", 97)
	~ THEN REPLY @81 /* ~See you tomorrow.~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 1)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", SIXTEEN_DAYS)
	~
	EXTERN XACORWIJ XA_BedtimeRohmaChain
	
	IF ~
		Gender(Player1, MALE)
		!GlobalGT("XA_CorwinOpinionOfPlayer", "GLOBAL", 97)
	~ THEN REPLY @81 /* ~See you tomorrow.~ */
	EXTERN XACORWIJ XA_BedtimeRohmaChain
	
	IF ~
		!Gender(Player1, MALE)
	~ THEN REPLY @62 /* ~I love you too, honey. Sleep well - I'll see you in the morning.~ */
	EXTERN XACORWIJ XA_BedtimeRohmaChain
	
	IF ~
		!Gender(Player1, MALE)
	~ THEN REPLY @81 /* ~See you tomorrow.~*/
	EXTERN XACORWIJ XA_BedtimeRohmaChain
END

IF ~~ THEN XA_BedtimeRohmaChainEnd
	SAY @65 /* ~Yes mommy.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_DidRequestCorwin", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_ReturnToBG", "GLOBAL", 2)
		StartCutscene("XASARA1")
	~
	EXIT
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_DidRequestCorwin", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_ReturnToBG", "GLOBAL", 2)
		StartCutscene("XASARA3")
	~
	EXIT
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_DidRequestCorwin", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_ReturnToBG", "GLOBAL", 2)
		StartCutscene("XASARA2")
	~
	EXIT
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_DidRequestCorwin", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_ReturnToBG", "GLOBAL", 2)
		StartCutscene("XASARA4")
	~
	EXIT
END

CHAIN XACORWIJ XA_ByeRohmaChain1
	@41 /* ~Honey, the elf woman who kidnapped you was part of a group called the Five. That same group has just attacked Saradush.~*/
	== XAROHMA
	@42 /* ~Saradush? What's that?~*/
	== XACORWIJ
	@43 /* ~It's a city, far away to the southeast. The Dukes are worried that if the Five aren't stopped, that they will come here to attack our city.~*/
	== XAROHMA
	IF ~
		Global("XA_CorwinEET", "GLOBAL", 1)
	~
	@44 /* ~Mommy, are you going to go and fight them? Like what happened with Sarevok and Caelar?~*/
	== XAROHMA
	IF ~
		!Global("XA_CorwinEET", "GLOBAL", 1)
	~
	@75 /* ~Mommy, are you going to go and fight them? Like what happened with  Caelar?~*/
	== XACORWIJ
	@45 /* ~Yes, dear. <CHARNAME> and I are going to Saradush to help them fight off the Five.~*/
	== XAROHMA
	@46 /* ~Are you leaving now?~*/
	== XACORWIJ
	@47 /* ~No, we won't leave for another couple of days. We aren't going anywhere until grandpa is back on his feet.~*/
	= @48 /* ~Honey, we'll talk more in the morning. It's very late, and I need to get you to bed.~*/
END XAROHMA XA_ByeRohmaChain1End

CHAIN XAROHMA XA_ByeRohmaChain2
	@51 /*~ Oh, wow, a sleepover! And I get my own room?~ */
	== XACORWIJ
	@72 /* ~That's right honey.~ */
	== XASKIE
	@73 /* ~There's even a games room. I'll show it to you tomorrow. You're going to have so much fun here, Rohma!~*/
	== XAROHMA
	@74 /* ~A games room! Wow, thanks Auntie!~ */
	=@52 /* ~But, mommy...~ */
	== XACORWIJ
	@53 /* ~What's wrong, dear?~ */
	== XAROHMA
	@54 /* ~All of my things are at home.~ */
	== XACORWIJ
	@55 /* ~Don't worry. <CHARNAME> and I are going to head over there and gather some things for you and grandpa.~  */
	== XAROHMA
	IF ~
		Global("XA_GaveDoll", "GLOBAL", 1)
		GlobalLT("XA_LC_DingsRohma", "GLOBAL", 1)
	~
	@56 /* ~Remember to bring my dolly.~ */
	== XAROHMA
	IF ~
		Global("XA_GaveDoll", "GLOBAL", 1)
		GlobalGT("XA_LC_DingsRohma", "GLOBAL", 0)
	~
	@79 /* ~Remember to bring Dings, and my dolly too.~ */
	== XAROHMA
	IF ~
		!Global("XA_GaveDoll", "GLOBAL", 1)
		GlobalGT("XA_LC_DingsRohma", "GLOBAL", 0)
	~
	@80 /* ~Remember to bring Dings.~ */
	== XACORWIJ
	@57 /* ~Come and say goodnight to <CHARNAME>.~ */
END XAROHMA XA_ByeRohmaChain2End

CHAIN XAROHMA XA_ByeRohmaChain2A
	@51 /*~ Oh, wow, a sleepover! And I get my own room?~ */
	== XACORWIJ
	@72 /* ~That's right honey.~ */
	== XAROHMA
	@52 /* ~But, mommy...~ */
	== XACORWIJ
	@53 /* ~What's wrong, dear?~ */
	== XAROHMA
	@54 /* ~All of my things are at home.~ */
	== XACORWIJ
	@55 /* ~Don't worry. <CHARNAME> and I are going to head over there and gather some things for you and grandpa.~  */
	== XAROHMA
	IF ~
		Global("XA_GaveDoll", "GLOBAL", 1)
		GlobalLT("XA_LC_DingsRohma", "GLOBAL", 1)
	~
	@56 /* ~Remember to bring my dolly.~ */
	== XAROHMA
	IF ~
		Global("XA_GaveDoll", "GLOBAL", 1)
		GlobalGT("XA_LC_DingsRohma", "GLOBAL", 0)
	~
	@79 /* ~Remember to bring Dings, and my dolly too.~ */
	== XAROHMA
	IF ~
		!Global("XA_GaveDoll", "GLOBAL", 1)
		GlobalGT("XA_LC_DingsRohma", "GLOBAL", 0)
	~
	@80 /* ~Remember to bring Dings.~ */
	== XACORWIJ
	@57 /* ~Come and say goodnight to <CHARNAME>.~ */
END XAROHMA XA_ByeRohmaChain2End

CHAIN XACORWIJ XA_BedtimeRohmaChain
	@63 /* ~Bedtime, Rohma. Let's go downstairs and check out your room.~ */
	== XAROHMA
	@64 /* ~(Yawn)~*/
END XAROHMA XA_BedtimeRohmaChainEnd

CHAIN XACORWIJ XA_ByeRohmaChain1_NR
	@41 /* ~Honey, the elf woman who kidnapped you was part of a group called the Five. That same group has just attacked Saradush.~*/
	== XAROHMA
	@42 /* ~Saradush? What's that?~*/
	== XACORWIJ
	@43 /* ~It's a city, far away to the southeast. The Dukes are worried that if the Five aren't stopped, that they will come here to attack our city.~*/
	== XAROHMA
	IF ~
		Global("XA_CorwinEET", "GLOBAL", 1)
	~
	@44 /* ~Mommy, are you going to go and fight them? Like what happened with Sarevok and Caelar?~*/
	== XAROHMA
	IF ~
		!Global("XA_CorwinEET", "GLOBAL", 1)
	~
	@75 /* ~Mommy, are you going to go and fight them? Like what happened with  Caelar?~*/
	== XACORWIJ
	@66 /* ~Not this time, dear. I'm going to stay here and help prepare the city's defenses, just in case the Five try anything again.~ */
	=@67 /* ~<CHARNAME> though is leaving for Saradush in a couple of days, to help the people over there.~ */
	=@48 /* ~Honey, we'll talk more in the morning. It's very late, and I need to get you to bed.~*/
END XAROHMA XA_ByeRohmaChain1End