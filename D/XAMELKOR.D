BEGIN ~XAMELKOR~

/* Rohma Kidnapped */

IF ~~ THEN BEGIN XA_TeleporterRingChainEnd
	SAY @74 /* ~Remember - only the person wearing the ring will be teleported, and it can be used only one time.~*/
	
	IF ~~ THEN REPLY @80 /* ~Understood.~ */
	EXTERN XANEDERL XA_DontNeedRing
	
	IF ~~ THEN REPLY @78 /* */
	GOTO XA_DontHaveRing
END

IF ~~ THEN BEGIN XA_DontHaveRing
	SAY @79 /* ~No, there wasn't enough time to create more than one. If you can wait a couple of days, we can create additional - ~ */
	
	IF ~~ THEN EXTERN XACORWIJ XA_DontNeedRing
END

IF ~
	Global("XA_RohmaKidnapped", "GLOBAL", 5)
~ THEN BEGIN XA_Provisions
	SAY @69 /* ~Potions and scrolls, free of charge. Courtesy of Duke Entar.~*/
	
	IF ~~ THEN REPLY @73 /* ~Show me your goods.~*/
	DO ~
		StartStore("XAMELKOR", LastTalkedToBy(Myself))
	~
	EXIT
	
	IF ~
		!Global("XA_SkieModActive", "GLOBAL", 1)
		!Global("XA_MelkorDagger", "GLOBAL", 1)
	~ THEN GOTO XA_HandOverDagger
END

IF ~~ THEN BEGIN XA_HandOverDagger
	SAY @70 /* ~Also, he wanted you to have this.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_MelkorDagger", "GLOBAL", 1)
		GiveItemCreate("XASTDAG", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XASTDAG", IDENTIFIED,TRUE))
		SetGlobal("XA_LC_Journal_Soultaker", "GLOBAL", 4)
	~
	GOTO XA_HandOverDagger2
END

IF ~~ THEN BEGIN XA_HandOverDagger2
	SAY @71 /* ~Use it well. And in your travels, if you find a way to release the souls of those still trapped inside... Skie would appreciate it.~ */
	
	IF ~~ THEN REPLY @72 /* Thank you. */
	EXIT
	
	IF ~~ THEN REPLY @73 /* ~Show me your goods.~ */
	DO ~
		StartStore("XAMELKOR", LastTalkedToBy(Myself))
	~
	EXIT
END
/* */


IF ~
	Global("XA_ReturnToBG", "GLOBAL", 1)
	!Global("XA_TalkedToMelkor", "GLOBAL", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_MeetMelkor
	SAY @0 /* ~Ah. <CHARNAME>. How can I help you?~ */
	
	IF ~
		!Global("XA_SkieModActive", "GLOBAL",1)
	~ THEN REPLY @1 /* ~You are one of the wizards assisting Skie in her recovery?~ */
	DO ~
		SetGlobal("XA_TalkedToMelkor", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor2A
	
	IF ~
		!Global("XA_SkieModActive", "GLOBAL",1)
	~ THEN REPLY @11 /* ~Have we met?~ */
	DO ~
		SetGlobal("XA_TalkedToMelkor", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor2B
	
	IF ~
		GlobalLT("XA_MelkorTalk", "LOCALS", 1)
		Global("XA_SkieModActive", "GLOBAL",1)
	~ THEN REPLY @11 /* ~Have we met?~ */
	DO ~
		SetGlobal("XA_TalkedToMelkor", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor2BA
	
	IF ~~ THEN REPLY @81 /* ~I don't need anything at the moment.~*/
	EXIT 
END

IF ~
	IsGabber("XACORWIN")
	!TimeOfDay(NIGHT)
~ THEN BEGIN XA_CorwinGreeting1
	SAY @59 /* ~Good day, Captain Corwin.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	IsGabber("XACORWIN")
	TimeOfDay(NIGHT)
~ THEN BEGIN XA_CorwinGreeting2
	SAY @60 /* ~Good evening, Captain Corwin.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	IsGabber(Player1)
	Global("XA_TalkedToMelkor", "GLOBAL", 1)
	!Global("XA_TalkedToSkie", "GLOBAL", 1)
~ THEN BEGIN XA_TalkedToSkieAmConcerned
	SAY @66 /* ~Before we continue, I suggest that you speak with Skie. She is in her room.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	IsGabber(Player1)
	Global("XA_TalkedToMelkor", "GLOBAL", 1)
	Global("XA_TalkedToSkie", "GLOBAL", 1)
	!Global("XA_ConcernedAboutSkie", "GLOBAL", 1)
~ THEN BEGIN XA_TalkedToSkieAmConcerned
	SAY @64 /* ~Have you spoken to Skie?~ */
	
	IF ~~ THEN REPLY @65 /* ~I did. I'm concerned, to say the least.~*/
	GOTO XA_MeetMelkor3
END

IF ~
	IsGabber(Player1)
	Global("XA_TalkedToMelkor", "GLOBAL", 1)
	Global("XA_TalkedToSkie", "GLOBAL", 1)
	Global("XA_ConcernedAboutSkie", "GLOBAL", 1)
~ THEN BEGIN XA_PlayerGreeting2
	SAY @61 /* ~Hello again, <CHARNAME>. As we discussed, please petition the Dukes to allow me to turn the dagger over to you. Once I am rid of it I'll be able to devote my full attention to Skie's recovery.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	True()
~ THEN BEGIN XA_DefaultGreeting
	SAY @58 /* ~Please, my work requires my full attention. Leave me be.~ */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_MeetMelkor2BA
	SAY @12 /* ~The power you exude... I felt it once before, at your trial. I sense that it has grown significantly since then.~*/
	
	IF ~~ THEN REPLY @84  /* ~That's not creepy at all. */
	GOTO XA_MeetMelkorSMA
	
	IF ~~ THEN REPLY @82  /* ~Another wizard interested in my power. Pray that you don't end up like the last one who tried to take what's mine!~*/
	GOTO XA_MeetMelkorSMA
END

IF ~~ THEN BEGIN XA_MeetMelkorSMA
	SAY @83  /* ~Don't worry, I've no designs on you or the power you possess. I'm merely pleased to meet you. Now, if you'll excuse me, I must return to my work.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_MelkorTalk", "LOCALS", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_MeetMelkor2B
	SAY @12 /* ~The power you exude... I felt it once before, at your trial. I sense that it has grown significantly since then.~*/
	
	= @10 /* ~I am Melkor, battle wizard of the Flaming Fist. It's a pleasure to finally meet you. I've been tasked with the analysis of the artifact known as the Soultaker dagger, and to assist Skie Silvershield in her recovery.~ */
	
	IF ~~ THEN REPLY @3 /* ~I just spoke to Skie... I'm concerned, to say the least.~ */
	GOTO XA_MeetMelkor3
END

IF ~~ THEN BEGIN XA_MeetMelkor2A
	SAY @50 /* ~Yes. I am Melkor, battle wizard of the Flaming Fist. It's a pleasure to finally meet you. I've been tasked with the analysis of the artifact known as the Soultaker dagger, and to assist Skie Silvershield in her recovery.~ */
	
	IF ~
		Global("XA_TalkedToSkie", "GLOBAL", 1)
	~ THEN REPLY @3 /* ~I just spoke to Skie... I'm concerned, to say the least.~ */
	GOTO XA_MeetMelkor3
	
	IF ~
		!Global("XA_TalkedToSkie", "GLOBAL", 1)
	~ THEN REPLY @63 /* ~And how is Skie?~ */
	GOTO XA_HaventSpokenToSkie
END

IF ~~ THEN BEGIN XA_HaventSpokenToSkie
	SAY @62 /* ~Before we continue, I suggest that you speak with her. She is in her room.~*/
	
	IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN XA_MeetMelkor3
	SAY @4 /*~She's made great strides in her recovery, but her mind is still addled as a result of her imprisonment. She suffers from certain... delusions, and claims to speak with the souls trapped in the dagger.~ */
	
	IF ~~ THEN REPLY @5 /* ~So there are no souls in the dagger? How then did she know that it was Irenicus that framed me?~*/
	DO ~
		SetGlobal("XA_ConcernedAboutSkie", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor4
END

IF ~~ THEN BEGIN XA_MeetMelkor4
	SAY @6 /* ~You misunderstand - there are definitely souls trapped within the dagger. What we cannot ascertain is why Skie claims to be able to converse with them. We have studied the dagger extensively, and have found no way to communicate with those imprisoned within.~*/
	
	IF ~~ THEN REPLY @52 /* ~Have you considered that the dagger you're studying is a forgery?~ */
	GOTO XA_MeetMelkor5
	
	IF ~
		PartyHasItem("XASTDAGF")
	~ THEN REPLY @7 /* ~That's because you are studying a fake. Skie had the real dagger the whole time - look, she gave it to us.~*/
	GOTO XA_MeetMelkor5
END

IF ~~ THEN BEGIN XA_MeetMelkor5
	SAY @8 /* ~Let me guess. She told you that the elves within the dagger taught her a way to magically create a replica of the dagger? And that she replaced the real dagger with the fake?~ */
	
	= @13 /* ~We created the replica for her, so that we could study the real dagger without unnecessary interruption. The story she concocted is another one of her delusions.~*/
	
	IF ~~ THEN REPLY @14 /* ~Where is the real dagger, then?~*/
	DO ~
		SetGlobal("XA_Melkor_AskedWhereDagger", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor5A
	
	IF ~~ THEN REPLY @15 /* ~What have you learned about the dagger?~*/
	DO ~
		SetGlobal("XA_Melkor_AskedLearnedDagger", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor5B
	
	IF ~~ THEN REPLY @16 /* ~What are your thoughts on Skie? Will she ever fully recover?~*/
	DO ~
		SetGlobal("XA_Melkor_AskedSkie", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor5C
END

IF ~~ THEN BEGIN XA_MeetMelkor5A
	SAY @20 /* ~It is safe. I will not speak more of it's location.~*/
	
	IF ~
		!Global("XA_Melkor_AskedLearnedDagger", "GLOBAL", 1)
	~ THEN REPLY @15 /* ~What have you learned about the dagger?~*/
	DO ~
		SetGlobal("XA_Melkor_AskedLearnedDagger", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor5B
	
	IF ~
		!Global("XA_Melkor_AskedSkie", "GLOBAL", 1)
	~ THEN REPLY @16 /* ~What are your thoughts on Skie? Will she ever fully recover?~*/
	DO ~
		SetGlobal("XA_Melkor_AskedSkie", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor5C
	
	IF ~
		Global("XA_Melkor_AskedSkie", "GLOBAL", 1)
		Global("XA_Melkor_AskedLearnedDagger", "GLOBAL", 1)
		Global("XA_Melkor_AskedWhereDagger", "GLOBAL", 1)
	~ THEN REPLY @38 /* ~Very well. I'll leave you to your work, wizard.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_MeetMelkor5B
	SAY @21 /* ~Only that the souls within are trapped within a kind of pocket plane between dimensions, and that time flows differently there. An hour in our plane would feel like days, or even weeks, inside the dagger.~*/
	
	IF ~~ THEN REPLY @22 /* ~That would explain why Skie was driven mad.~*/
	GOTO XA_MeetMelkor5B2
END

IF ~~ THEN BEGIN XA_MeetMelkor5B2
	SAY @23 /* ~Indeed.~*/
	
	IF ~~ THEN REPLY @24 /* ~Have you learned anything else? How can the souls within be freed?~ */
	GOTO XA_MeetMelkor5B3
END

IF ~~ THEN BEGIN XA_MeetMelkor5B3
	SAY @25 /*  ~Perhaps, but not in the way that the Duke's daughter was freed. Skie was able to be restored because her body was preserved in excellent condition, and because she has a strong spirit. Without their bodies, it's unlikely that we will be able to free those trapped within.~*/
	
	IF ~~ THEN REPLY @26 /* ~What if you just destroy the dagger?~*/
	GOTO XA_MeetMelkor5B4
END

IF ~~ THEN BEGIN XA_MeetMelkor5B4
	SAY @27 /* ~The dagger is magically reinforced. It will be exceedingly difficult to destroy. Even if we could, we believe that destroying the dagger will shatter, and effectively destroy, the souls trapped within.~*/
	
	= @28 /* ~We do have a theory, if you are interested in hearing it.~ */
	
	IF ~~ THEN REPLY @30 /* ~Go ahead.~*/
	GOTO XA_MeetMelkor5B5
END

IF ~~ THEN BEGIN XA_MeetMelkor5B5
	SAY @31 /* ~If the dagger were brought to a location where the barrier between the material plane and the Fugue plane were weakest, the spirits within may be drawn out of the dagger. Once freed, they would enter the Fugue plane.~ */
	
	IF ~
		!Dead("bdkherr")
	~ THEN GOTO XA_MeetMelkor5B7
	
	IF ~
		Dead("bdkherr")
	~ THEN REPLY @32 /* ~I know of one such place - Kanaglym, in the caves beneath Dragonspear. There was a rift that opened into the Fugue plane. */
	GOTO XA_MeetMelkor5B7
	
	IF ~
		See("Dorn")
		IsValidForPartyDialogue("Dorn")
		Global("XA_DornInKanaglym", "GLOBAL",1)
	~ THEN EXTERN DORNJ XA_Dorn_Kanaglym
	
	IF ~
		See("Jaheira")
		IsValidForPartyDialogue("Jaheira")
		Global("XA_JaheiraInKanaglym", "GLOBAL",1)
	~ THEN EXTERN JAHEIRAJ XA_Jaheira_Kanaglym
	
	IF ~
		See("Viconia")
		IsValidForPartyDialogue("Viconia")
		Global("XA_CorwinInKanaglym", "GLOBAL",1)
	~ THEN EXTERN VICONIJ XA_Viconia_Kanaglym
	
	IF ~
		See("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinInKanaglym", "GLOBAL",1)
	~ THEN EXTERN XACORWIJ XA_Corwin_Kanaglym
END

IF ~~ THEN BEGIN XA_MeetMelkor5B7
	SAY @33 /* ~If you could bring the dagger to a place like that, we suspect that the souls trapped within could be freed.~ */
	
	IF ~
		Dead("bdkherr")
	~ THEN REPLY @34  /*  ~Give me the dagger, then. I'll take it to Dragonspear and release the souls within.~ */
	DO ~
		SetGlobal("XA_ST_Kanaglym", "GLOBAL", 1)
		SetGlobal("XA_LC_Journal_Soultaker", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor5B8
	
	IF ~
		!Dead("bdkherr")
	~ THEN REPLY @68 /* ~Give me the dagger then. If I learn of such a place in my travels, I'll bring the dagger there and release the souls trapped inside.~*/
	DO ~
		SetGlobal("XA_ST_Kanaglym", "GLOBAL", 1)
		SetGlobal("XA_LC_Journal_Soultaker", "GLOBAL", 2)
	~
	GOTO XA_MeetMelkor5B8
END

IF ~~ THEN BEGIN XA_MeetMelkor5B8
	SAY @35 /* ~I'm afraid I can't do that. I was tasked to study the dagger, not to give it away.~*/
	
	IF ~~ THEN REPLY @36 /* ~You said yourself that you learned all you can from it. There's no sense in holding on to it.~*/
	GOTO XA_MeetMelkor5B9
END

IF ~~ THEN BEGIN XA_MeetMelkor5B9
	SAY @37 /* ~Perhaps. Petition the Dukes during the debriefing tomorrow. If they agree that you should have the dagger, I'll hand it over.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_ST_Kanaglym", "GLOBAL", 1)
		SetGlobal("XA_LC_Journal_Soultaker", "GLOBAL", 3)
	~
	GOTO XA_MeetMelkor5B10
END

IF ~~ THEN BEGIN XA_MeetMelkor5B10
	SAY @56 /* ~Being rid of the dagger will allow us to focus all of our efforts on Skie. I'm sure Duke Entar would agree that it would be best for it to be in your possession.~ */
	
	IF ~
		!Global("XA_Melkor_AskedWhereDagger", "GLOBAL", 1)
	~ THEN REPLY @14 /* ~Where is the real dagger, then?~*/
	DO ~
		SetGlobal("XA_Melkor_AskedWhereDagger", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor5A
	
	IF ~
		!Global("XA_Melkor_AskedSkie", "GLOBAL", 1)
	~ THEN REPLY @16 /* ~What are your thoughts on Skie? Will she ever fully recover?~*/
	DO ~
		SetGlobal("XA_Melkor_AskedSkie", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor5C
	
	IF ~
		Global("XA_Melkor_AskedSkie", "GLOBAL", 1)
		Global("XA_Melkor_AskedLearnedDagger", "GLOBAL", 1)
		Global("XA_Melkor_AskedWhereDagger", "GLOBAL", 1)
	~ THEN REPLY @38 /* ~Very well. I'll leave you to your work, wizard.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_MeetMelkor5C
	SAY @17 /* ~She will. As I said, she's made great strides already. In the days immediately following her restoration, she suffered from severe fits of catatonia. Slowly but surely, and with our help, her mind will be made whole again.~*/
	
	IF ~
		!Global("XA_Melkor_AskedWhereDagger", "GLOBAL", 1)
	~ THEN REPLY @14 /* ~Where is the real dagger, then?~*/
	DO ~
		SetGlobal("XA_Melkor_AskedWhereDagger", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor5A
	
	IF ~
		!Global("XA_Melkor_AskedLearnedDagger", "GLOBAL", 1)
	~ THEN REPLY @15 /* ~What have you learned about the dagger?~*/
	DO ~
		SetGlobal("XA_Melkor_AskedLearnedDagger", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor5B
	
	IF ~~ THEN REPLY @38 /* ~Very well. I'll leave you to your work, wizard.~ */
	EXIT
	
	IF ~
		IsValidForPartyDialog("XACORWIN")
		See("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_MeetMelkor5C2
END

IF ~~ THEN BEGIN XA_MeetMelkor5C3
	SAY @19 /* ~Duke Silvershield felt it was wise to hide the extent of his daughter's... condition... from others. It was for her own good, Captain.~*/
	
	IF ~
		!Global("XA_Melkor_AskedWhereDagger", "GLOBAL", 1)
	~ THEN REPLY @14 /* ~Where is the real dagger, then?~*/
	DO ~
		SetGlobal("XA_Melkor_AskedWhereDagger", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor5A
	
	IF ~
		!Global("XA_Melkor_AskedLearnedDagger", "GLOBAL", 1)
	~ THEN REPLY @15 /* ~What have you learned about the dagger?~*/
	DO ~
		SetGlobal("XA_Melkor_AskedLearnedDagger", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor5B
	
	IF ~
		!Global("XA_Melkor_AskedSkie", "GLOBAL", 1)
	~ THEN REPLY @16 /* ~What are your thoughts on Skie? Will she ever fully recover?~*/
	DO ~
		SetGlobal("XA_Melkor_AskedSkie", "GLOBAL", 1)
	~
	GOTO XA_MeetMelkor5C
	
	IF ~~ THEN REPLY @38 /* ~Very well. I'll leave you to your work, wizard.~ */
	EXIT
END

CHAIN XACORWIJ XA_Corwin_Kanaglym
	@57 /* @913 = ~<CHARNAME>... the caves beneath Dragonspear, remember? We encountered a rift into the Fugue plane. Hephernaan's acolytes were performing some sort of ritual there.~*/
END XAMELKOR XA_MeetMelkor5B7

CHAIN DORNJ XA_Dorn_Kanaglym
	@57 /* @913 = ~<CHARNAME>... the caves beneath Dragonspear, remember? We encountered a rift into the Fugue plane. Hephernaan's acolytes were performing some sort of ritual there.~*/
END XAMELKOR XA_MeetMelkor5B7

CHAIN VICONIJ XA_Viconia_Kanaglym
	@57 /* @913 = ~<CHARNAME>... the caves beneath Dragonspear, remember? We encountered a rift into the Fugue plane. Hephernaan's acolytes were performing some sort of ritual there.~*/
END XAMELKOR XA_MeetMelkor5B7

CHAIN JAHEIRAJ XA_Jaheira_Kanaglym
	@57 /* @913 = ~<CHARNAME>... the caves beneath Dragonspear, remember? We encountered a rift into the Fugue plane. Hephernaan's acolytes were performing some sort of ritual there.~*/
END XAMELKOR XA_MeetMelkor5B7

CHAIN XAMELKOR XA_TeleporterRingChain
	@75 /* ~We've crafted a special ring. It's similar to those issued to the Dukes. When worn, it will teleport the wearer to safety.~*/
	
	=@76 /*~If you place this ring on your daughter's fingershe will be teleported here, to safety.~ */
	
	== XACORWIJ
	@77 /* ~Good. Give it to me.~ */
	
END XAMELKOR XA_TeleporterRingChainEnd