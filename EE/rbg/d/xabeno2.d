BEGIN ~XABENO2~

IF ~~ THEN XA_IllaseraDead2
	SAY @0 /* ~Uhn...~ */
	
	IF ~~ THEN REPLY @1
	EXTERN XACORWIJ XA_IllaseraDead3 //OK
END

IF ~~ THEN XA_IllaseraCorwinDead
	SAY @0  /* ~Uhn...~ */
	
	IF ~~ THEN EXTERN PLAYER1 XA_EpilogueSlayer
END

IF ~~ THEN XA_IllaseraCorwinDead2
	SAY @0  /* ~Uhn...~ */
	
	IF ~~ THEN EXTERN PLAYER1 XA_IllaseraCorwinDead2
END

IF ~
	Global("XA_LC_ApproachBeno", "GLOBAL", 1)
~ THEN BEGIN XA_ApproachBeno
	SAY @2 /* ~...R...Rohma..~ */
	
	IF ~~ THEN REPLY @3 /* ~She's safe.~ */
	DO ~
		SetGlobal("XA_LC_ApproachBeno", "GLOBAL", 2)
	~
	GOTO XA_ApproachBeno2
	
	IF ~~ THEN REPLY @12 /* ~You nearly got her killed. It won't happen again.~ */
	DO ~
		SetGlobal("XA_LC_ApproachBeno", "GLOBAL", 2)
	~
	GOTO XA_DealWithBeno
	
END

IF ~~ THEN BEGIN XA_ApproachBeno2
	SAY @4 /* ~W-where's Schael..~ */
	
	IF ~~ THEN REPLY @5 /* ~She's in bad shape, but it's nothing that the temple can't fix.~*/
	GOTO XA_ApproachBeno3
	
	IF ~~ THEN REPLY @13 /* ~Keep her name out of your mouth. I'm going to make sure that you can never hurt her or her family ever again.~ */
	GOTO XA_DealWithBeno
END

IF ~~ THEN BEGIN XA_ApproachBeno3
	SAY @7 /* ~Tell Schael.. tell her that I'm sorry. I never thought Illasera would...~ */
	
	IF ~~ THEN REPLY @24 /* ~And that's precisely the problem. You don't think before you act. But for every problem, there's a... solution.~ */
	GOTO XA_DealWithBeno
END

IF ~~ THEN BEGIN XA_DealWithBeno
	SAY @9 /* ~Kill me and (cough).. they'll resurrect me.. you can count on it.. hah hah..~ */
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @10 /* ~Not likely. I'm going to dismember you, slowly, and scatter your remains across the four corners of Toril. I might keep your head as a souvenir. How does that sound?~ */
	GOTO XA_KillBeno_Dismember
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		GlobalGT("XA_LC_MarriageProposal", "GLOBAL", 0)
	~ THEN REPLY @25 /* ~Not likely. I'm going to dismember you, slowly, and scatter your remains across the four corners of Toril. I might keep your head as a wedding gift for Schael. What, you didn't hear the news? She and I are to be married!~*/
	GOTO XA_KillBeno_Dismember
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		GlobalLT("XA_LC_MarriageProposal", "GLOBAL", 1)
	~ THEN REPLY @35 /* ~Not likely. I'm going to dismember you, slowly, and scatter your remains across the four corners of Toril. I might keep your head as a gift for Schael. She can use it for target practice.~*/
	GOTO XA_KillBeno_Dismember
	
	IF ~
		PartyHasItem("XASTDAG")
	~ THEN REPLY @11 /* ~Kill you? No, I have a better idea. (Stab him with the Soultaker Dagger.)~ */
	DO ~
		ActionOverride(Player1, TransformItem("XASTDAG", "XASTDAGB"))
		ActionOverride(Player2, TransformItem("XASTDAG", "XASTDAGB"))
		ActionOverride(Player3, TransformItem("XASTDAG", "XASTDAGB"))
		ActionOverride(Player4, TransformItem("XASTDAG", "XASTDAGB"))
		ActionOverride(Player5, TransformItem("XASTDAG", "XASTDAGB"))
		ActionOverride(Player6, TransformItem("XASTDAG", "XASTDAGB"))
	~
	GOTO XA_KillBeno_ST
	
	IF ~~ THEN REPLY @17 /* ~I'm not going to kill you. I'm taking you to jail.~ */
	GOTO XA_JailBeno
END

IF ~~ THEN BEGIN XA_KillBeno_ST
	SAY @29 /* ~(You plunge the dagger into his heart. His mouth opens as if to cry in pain, but strangely, no sound is heard. A gray mist rises out of the gaping wound in his chest, and coalesces into the form of a man; it's Beno, you're sure of it.)~*/
	= @30 /* ~(For a brief moment, the spirit gazes down at its physical body, with a look of wonder and confusion. That confusion turns to terror as the spirit is slowly drawn into the blade of the dagger. The spirit turns as if to flee, but it is no use. You hear a piercing scream in your mind as the last remnants of the spirit are swallowed up by the dagger.)~ */
	
	IF ~~ THEN 
	DO ~
		AddJournalEntry(@31, INFO)
		StartCutSceneMode()
		StartCutScene("XAUCEND1")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_KillBeno_Dismember
	SAY @14 /* ~Y-you.. you're insane..~ */
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @15 /* ~I'm just doing what's necessary to protect my friend. For now, I'll just take your head. I'll come back for the rest of your body after Schael's been fixed up.~ */
	DO ~
		AddJournalEntry(@32, INFO)
		StartCutSceneMode()
		StartCutScene("XAUCEND2")
	~
	EXIT
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @16 /* ~I'm just doing what's necessary to protect those I love. For now, I'll just take your head. I'll come back for the rest of your body after Schael's been fixed up.~ */
	DO ~
		AddJournalEntry(@32, INFO)
		StartCutSceneMode()
		StartCutScene("XAUCEND2")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_JailBeno
	SAY @18 /* ~Hah hah hah... I'll find a way out. I always do.~ */
	
	IF ~
		Global("PCSphere", "GLOBAL", 1)
	~ THEN REPLY @19 /* ~I wasn't finished. You'll be in jail for a few days, until I can organize a caravan to Athkatla. You see, I left something of mine there. A Planar Sphere.~ */
	GOTO XA_JailBeno2
	
	IF ~~ THEN REPLY @26 /* ~No, not this time. I'll make sure you're watched all day, every day. You'll never escape.~*/
	GOTO XA_JailBeno4
END

IF ~~ THEN BEGIN XA_JailBeno4
	SAY @27 /* ~If you say so.~ */
	
	IF ~~ THEN REPLY @28 /* ~The Flaming Fist will take you into custody shortly.~ */
	DO ~
		AddJournalEntry(@33, INFO)
		StartCutSceneMode()
		StartCutScene("XAUCEND3")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_JailBeno2
	SAY @21 /* ~... What?~ */
	
	IF ~~ THEN REPLY @20 /* ~You and I are going to go on a Planar excursion. But only one of us will return. You will be left to rot in the darkest, least hospitable dimension I can find. All I'd need to do is summon a demon and take its heart to power the device.~ */
	GOTO XA_JailBeno3
END

IF ~~ THEN BEGIN XA_JailBeno3
	SAY @14 /* ~Y-you.. you're insane..~ */
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @22 /* ~I'm just doing what's necessary to protect my friend. The Flaming Fist will be here shortly to take you to prison.~ */
	DO ~
		AddJournalEntry(@34, INFO)
		StartCutSceneMode()
		StartCutScene("XAUCEND3")
	~
	EXIT
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @23 /* ~I'm just doing what's necessary to protect those I love. The Flaming Fist will be here shortly to take you to prison.~ */
	DO ~
		AddJournalEntry(@34, INFO)
		StartCutSceneMode()
		StartCutScene("XAUCEND3")
	~
	EXIT
END