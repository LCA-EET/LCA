APPEND XACORWIJ

	
//{ Duke Debriefing Conclusion

	//{ End of Duke Debriefing - Skie Mod Active - CC OK
	IF ~
		Global("XA_LC_DukesDebriefed", "GLOBAL", 4)
		Global("XA_LC_SkieModActive", "GLOBAL", 1)
	~ THEN BEGIN XA_Congratulations
		SAY @1127 /* ~<CHARNAME>, you must be thrilled!~ */
		
		IF ~~ THEN REPLY @1104 /* ~I'm still at a loss for words.~ */
		DO ~
			SetGlobal("XA_LC_DukesDebriefed", "GLOBAL", 5)
			SetGlobal("XA_LC_DukesFullyDebriefed", "GLOBAL", 1)
		~
		GOTO XA_Congratulations2
		
		IF ~~ THEN REPLY @1105 /* ~This turned out far better than I could have dreamed..~ */
		DO ~
			SetGlobal("XA_LC_DukesDebriefed", "GLOBAL", 5)
			SetGlobal("XA_LC_DukesFullyDebriefed", "GLOBAL", 1)
		~
		GOTO XA_Congratulations2
	END

	//}

	IF ~~ THEN BEGIN XA_Congratulations1
		SAY @1103 /* ~Thank you, Skie! <CHARNAME>, you must be thrilled!~ */
		
		IF ~~ THEN REPLY @1104 /* ~I'm still at a loss for words.~ */
		GOTO XA_Congratulations2
		
		IF ~~ THEN REPLY @1105 /* ~This turned out far better than I could have dreamed..~ */
		GOTO XA_Congratulations2
	END

	IF ~~ THEN BEGIN XA_Congratulations2
		SAY @1106 /* ~I can hardly believe it myself.~ */
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_Congratulations2A
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_Congratulations2B
	END

	IF ~~ THEN BEGIN XA_Congratulations2A
		SAY @1111 /* ~Defender of Baldur's Gate. Well done, my love.~ */
		= @1108 /* ~(You kiss and embrace.)~ */
		= @1107 /* ~Come on love! Let's go and celebrate!~ */
		
		IF ~
			GlobalLT("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINROM")
		~
		EXIT 
		
		IF ~
			CheckStatLT(Player1, 50, MAXHITPOINTS)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
		DO ~
			ChangeStat(Player1, MAXHITPOINTS, -4, ADD)
			StartCutSceneMode()
			StartCutScene("XADINROM")
		~
		EXIT
		
		IF ~
			CheckStatGT(Player1, 49, MAXHITPOINTS)
			CheckStatLT(Player1, 60, MAXHITPOINTS)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
		DO ~
			ChangeStat(Player1, MAXHITPOINTS, -5, ADD)
			StartCutSceneMode()
			StartCutScene("XADINROM")
		~
		EXIT
		
		IF ~
			CheckStatGT(Player1, 59, MAXHITPOINTS)
			CheckStatLT(Player1, 70, MAXHITPOINTS)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
		DO ~
			ChangeStat(Player1, MAXHITPOINTS, -6, ADD)
			StartCutSceneMode()
			StartCutScene("XADINROM")
		~
		EXIT
		
		IF ~
			CheckStatGT(Player1, 69, MAXHITPOINTS)
			CheckStatLT(Player1, 80, MAXHITPOINTS)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
		DO ~
			ChangeStat(Player1, MAXHITPOINTS, -7, ADD)
			StartCutSceneMode()
			StartCutScene("XADINROM")
		~
		EXIT
		
		IF ~
			CheckStatGT(Player1, 79, MAXHITPOINTS)
			CheckStatLT(Player1, 90, MAXHITPOINTS)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
		DO ~
			ChangeStat(Player1, MAXHITPOINTS, -8, ADD)
			StartCutSceneMode()
			StartCutScene("XADINROM")
		~
		EXIT
		
		IF ~
			CheckStatGT(Player1, 89, MAXHITPOINTS)
			CheckStatLT(Player1, 100, MAXHITPOINTS)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
		DO ~
			ChangeStat(Player1, MAXHITPOINTS, -9, ADD)
			StartCutSceneMode()
			StartCutScene("XADINROM")
		~
		EXIT
		
		IF ~
			CheckStatGT(Player1, 99, MAXHITPOINTS)
			CheckStatLT(Player1, 110, MAXHITPOINTS)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
		DO ~
			ChangeStat(Player1, MAXHITPOINTS, -10, ADD)
			StartCutSceneMode()
			StartCutScene("XADINROM")
		~
		EXIT
		
		IF ~
			CheckStatGT(Player1, 109, MAXHITPOINTS)
			CheckStatLT(Player1, 120, MAXHITPOINTS)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
		DO ~
			ChangeStat(Player1, MAXHITPOINTS, -11, ADD)
			StartCutSceneMode()
			StartCutScene("XADINROM")
		~
		EXIT
		
		IF ~
			CheckStatGT(Player1, 119, MAXHITPOINTS)
			CheckStatLT(Player1, 130, MAXHITPOINTS)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
		DO ~
			ChangeStat(Player1, MAXHITPOINTS, -12, ADD)
			StartCutSceneMode()
			StartCutScene("XADINROM")
		~
		EXIT
		
		
		IF ~
			CheckStatGT(Player1, 129, MAXHITPOINTS)
			CheckStatLT(Player1, 140, MAXHITPOINTS)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
		DO ~
			ChangeStat(Player1, MAXHITPOINTS, -13, ADD)
			StartCutSceneMode()
			StartCutScene("XADINROM")
		~
		EXIT
		
		IF ~
			CheckStatGT(Player1, 139, MAXHITPOINTS)
			CheckStatLT(Player1, 150, MAXHITPOINTS)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
		DO ~
			ChangeStat(Player1, MAXHITPOINTS, -14, ADD)
			StartCutSceneMode()
			StartCutScene("XADINROM")
		~
		EXIT
		
		IF ~
			CheckStatGT(Player1, 149, MAXHITPOINTS)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
		DO ~
			ChangeStat(Player1, MAXHITPOINTS, -15, ADD)
			StartCutSceneMode()
			StartCutScene("XADINROM")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_Congratulations2B
		SAY @1110 /* ~Defender of Baldur's Gate. Well done, my friend.~ */
		
		IF ~~ THEN 
		GOTO XA_Congratulations3
		
		IF ~
			Global("AerieRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_Congratulations3_Aerie
		
		IF ~
			Global("JaheiraRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_Congratulations3_Jaheira
		
		IF ~
			Global("NeeraRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_Congratulations3_Neera
		
		IF ~
			Global("ValygarRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_Congratulations3_Valygar
		
		IF ~
			Global("AnomenRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_Congratulations3_Anomen
		
		IF ~
			Global("RasaadRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_Congratulations3_Rasaad
	END


	IF ~~ THEN BEGIN XA_Congratulations3
		SAY @1117 /* ~Come on! Let's go and celebrate!~ */
		
		IF ~
			Global("XA_LC_WonLottery", "GLOBAL", 1)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINLOT")
		~
		EXIT
		
		IF ~
			!Global("XA_LC_WonLottery", "GLOBAL", 1)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINNER")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_Congratulations3_Rasaad
		SAY @1764 /* ~Come on! Let's go get Rasaad and celebrate!~ */
		
		IF ~
			Global("XA_LC_WonLottery", "GLOBAL", 1)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINLOT")
		~
		EXIT
		
		IF ~
			!Global("XA_LC_WonLottery", "GLOBAL", 1)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINNER")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_Congratulations3_Aerie
		SAY @1112 /* ~Come on! Let's go and celebrate!~ */
		
		IF ~
			Global("XA_LC_WonLottery", "GLOBAL", 1)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINLOT")
		~
		EXIT
		
		IF ~
			!Global("XA_LC_WonLottery", "GLOBAL", 1)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINNER")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_Congratulations3_Jaheira
		SAY @1113 /* ~Come on! Let's go and celebrate!~ */
		
		IF ~
			Global("XA_LC_WonLottery", "GLOBAL", 1)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINLOT")
		~
		EXIT
		
		IF ~
			!Global("XA_LC_WonLottery", "GLOBAL", 1)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINNER")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_Congratulations3_Neera
		SAY @1114 /* ~Come on! Let's go and celebrate!~ */
		
		IF ~
			Global("XA_LC_WonLottery", "GLOBAL", 1)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINLOT")
		~
		EXIT
		
		IF ~
			!Global("XA_LC_WonLottery", "GLOBAL", 1)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINNER")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_Congratulations3_Valygar
		SAY @1115 /* ~Come on! Let's go and celebrate!~ */
		
		IF ~
			Global("XA_LC_WonLottery", "GLOBAL", 1)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINLOT")
		~
		EXIT
		
		IF ~
			!Global("XA_LC_WonLottery", "GLOBAL", 1)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINNER")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_Congratulations3_Anomen
		SAY @1116 /* ~Come on! Let's go and celebrate!~ */
		
		IF ~
			Global("XA_LC_WonLottery", "GLOBAL", 1)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINLOT")
		~
		EXIT
		
		IF ~
			!Global("XA_LC_WonLottery", "GLOBAL", 1)
		~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
		DO ~
			StartCutSceneMode()
			StartCutScene("XADINNER")
		~
		EXIT
	END
//}


	//{ #region Entered G1 - Dialog J-55
	IF ~~ THEN BEGIN XA_TrappedG1
		SAY @1421 /* ~Are we — are we still trapped? ~ */
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1425 /* ~I think so, Captain. Look — it seems to be a recreation of the siege.~*/
		GOTO XA_TrappedG1_2
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1422 /* ~I think so. Look — it seems to be a recreation of the siege.~ */
		GOTO XA_TrappedG1_2
	END

	IF ~~ THEN BEGIN XA_TrappedG1_2
		SAY @1423 /* ~This all seems so real... it's just how I remember it, except for — WHOA!~ */
		
		= @1854 /* ~(She points to the sky. Looking up, you see a large, reddish-brown dragon. As it flies between some low-hanging clouds and into the light, it casts an ominous shadow over the battlefield. It seems to be circling above the area just west of the central keep.)~*/
		
		= @1424 /*~We'd do well to avoid drawing the attention of that beast. Come on, let's head in.~*/
		IF ~~ THEN
		EXIT
	END

	//} #endregion

	//{ #region Meeting Illasera - DLG-0051
	IF ~~ THEN BEGIN XA_MeetIllasera
		SAY @1123 /* ~Rohma!~ */
		
		= @1124 /* ~What have you done with my daughter!?~ */
		
		IF ~~ THEN 
		EXTERN XABENO XA_MeetIllasera
	END

	IF ~~ THEN BEGIN XA_MeetIllasera4
		SAY @1125 /* ~Beno, you fool! I'm going to - ~ */
		
		IF ~~ THEN EXTERN XABENO XA_MeetIllasera4
	END
	//} #endregion

	//{ #region Corwin Arrest - Dialog J-50 - Tested 2023-04-18 - CC OK
	IF ~
		Global("XA_LC_CorwinArrest", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinArrest1
		SAY @553 /* ~The Hall of Wonders...~ */
		
		= @554 /*  ~<CHARNAME>, did I ever tell you how I got arrested?~ */
		
		IF ~~ THEN REPLY @555 /* ~You, arrested?~ */
		DO ~
			SetGlobal("XA_LC_CorwinArrest", "GLOBAL", 2)
		~
		GOTO XA_CorwinArrest2
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @556 /* ~No, I don't think you did, Captain.~ */
		DO ~
			SetGlobal("XA_LC_CorwinArrest", "GLOBAL", 2)
		~
		GOTO XA_CorwinArrest2
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @557 /*  ~No love, I don't think you did.~ */
		DO ~
			SetGlobal("XA_LC_CorwinArrest", "GLOBAL", 2)
		~
		GOTO XA_CorwinArrest2
	END

	IF ~~ THEN BEGIN XA_CorwinArrest2
		SAY @558 /* ~Well... it was after my mother died. My father was still a Fist at the time, so when he left for work I'd leave the house to hang out with some ... friends of mine. It's how I met Beno.~ */
		
		= @559 /* ~We got ourselves into a *lot* of trouble.~ */
		
		IF ~~ THEN REPLY @560 /* ~Well? Tell me more.~ */
		GOTO XA_CorwinArrest3
		
		IF ~~ THEN REPLY @561 /* ~Hah, some things never change. You still get into a lot of trouble, only with me instead!~ */
		GOTO XA_CorwinArrest3
	END

	IF ~~ THEN BEGIN XA_CorwinArrest3
		SAY @562 /* ~One day, we had the brilliant idea to go to the Hall of Wonders and play hot potato with a jeweled egg. It was donated to the museum by an emissary from Tethyr. It must have been worth hundreds, or even thousands of gold.~ */
		
		= @563 /* ~There we were, throwing this very expensive and precious egg around, while the museum guards were frantically chasing us in and around the Hall.~ */
		
		= @564 /* ~Guess who was holding the egg when the music stopped?~ */
		
		IF ~~ THEN REPLY @565 /* ~You.~ */
		GOTO XA_CorwinArrest4
	END

	IF ~~ THEN BEGIN XA_CorwinArrest4
		SAY @566 /* ~That's right. I was arrested... and my 'friends' all ran away. It's a good thing that the egg wasn't damaged, otherwise I might still be in prison, hah.~ */
		
		= @567 /* ~My father could've gotten me out like he did so many times before, but this time, he didn't — and I'm glad. Spending that night in that cold cell was a major wake up call for me.~ */
		
		IF ~~ THEN REPLY @568 /* ~I know what you mean. I never want to see those cells again.~*/
		GOTO XA_CorwinArrest5A
		
		IF ~~ THEN REPLY @569 /* ~Do you ever think of how your life would have changed had you not been arrested?~ */
		GOTO XA_CorwinArrest5B
	END

	IF ~~ THEN BEGIN XA_CorwinArrest5A
		SAY @573 /* ~You know, sometimes I think how my life would've changed if I hadn't been arrested that day...~*/
		
		= @574 /* ~Would Rohma be here? Would I have joined the Fist? Taken part in the Dragonspear campaign?~ */
		
		IF ~~ THEN 
		GOTO XA_CorwinArrest6_NoRomance
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_CorwinArrest6_Romance
	END

	IF ~~ THEN BEGIN XA_CorwinArrest5B
		SAY @570 /* ~I do... Would Rohma be here? Would I have joined the Fist? Taken part in the Dragonspear campaign?~ */
		
		IF ~~ THEN 
		GOTO XA_CorwinArrest6_NoRomance
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_CorwinArrest6_Romance
	END

	IF ~~ THEN BEGIN XA_CorwinArrest6_NoRomance
		SAY @578 /* ~Only the Gods know, I guess...~ */
		
		IF ~~ THEN
		DO ~
			AddJournalEntry(@1363, INFO)
		~
		EXIT
		
		IF ~
			!Global("XA_LC_VisitedHOW", "GLOBAL", 1)
		~ THEN 
		GOTO XA_CorwinArrest7	
	END

	IF ~~ THEN BEGIN XA_CorwinArrest6_Romance
		SAY @571 /* ~... Would I be in love with the most amazing and heroic <PRO_MANWOMAN> in Faerûn?~ */
		
		IF ~~ THEN REPLY @575 /* ~And would I be in love with such an incredible, beautiful and determined woman?~ */
		GOTO XA_CorwinArrest6_RomanceEnd
	END

	IF ~~ THEN BEGIN XA_CorwinArrest6_RomanceEnd
		SAY @576 /* ~(You share a warm embrace.)~ */
		
		IF ~~ THEN
		DO ~
			AddJournalEntry(@1363, INFO)
		~
		EXIT
		
		IF ~
			!Global("XA_LC_VisitedHOW", "GLOBAL", 1)
		~ THEN 
		GOTO XA_CorwinArrest7
	END

	IF ~~ THEN BEGIN XA_CorwinArrest7
		SAY @577 /* ~Come on, let's head in. I'm sure they've set up some interesting new exhibits since the last time we were here.~  */
		
		IF ~~ THEN 
		DO ~
			AddJournalEntry(@1363, INFO)
		~
		EXIT
	END
	//} #endregion

	//{ #region SoD Anxiety - Dialog J-39 - CC OK

	IF ~
		Global("XA_LC_SoDAnxiety", "GLOBAL", 2)
		//play romance song
	~ THEN BEGIN XA_SoDAnxiety2
		SAY @1306 /* ~Are you alright?~ */
		= @1307 /* ~You look like you've seen a ghost.~ */
		
		IF ~~ THEN REPLY @1313 /* ~It's nothing... come on, let's go.~ */
		DO ~
			SetGlobal("XA_LC_SoDAnxiety", "GLOBAL", 3)
		~
		EXIT
		
		IF ~~ THEN REPLY @1309 /* ~I... I'm fine... ~*/
		DO ~
			SetGlobal("XA_LC_SoDAnxiety", "GLOBAL", 3)
		~
		GOTO XA_SoDAnxiety3
	END

	IF ~~ THEN BEGIN XA_SoDAnxiety3
		SAY @1310 /* ~Honey, what's wrong? You can tell me.~ */
		
		IF ~
			GlobalGT("XA_LC_SoDAnxietyAlatos", "GLOBAL", 0)
		~ THEN REPLY @1311 /* ~When Alatos brought up the tunnels beneath the city... it all came flooding back, Schael.~ */
		GOTO XA_SoDAnxiety4
		
		IF ~
			GlobalGT("XA_LC_SoDAnxietyCell", "GLOBAL", 0)
		~ THEN REPLY @1432 /* ~Seeing my cell again... it all came flooding back, Schael.~ */
		GOTO XA_SoDAnxiety4
		
		IF ~~ THEN REPLY @1322 /* ~Really, it's nothing. Let's get moving.~*/
		EXIT
	END

	IF ~~ THEN BEGIN XA_SoDAnxiety4
		SAY @1312 /* ~I understand... it was a traumatic experience, for all of us.~ */
		
		IF ~
			!Global("XA_LC_PlayerExiled", "GLOBAL", 1)
		~ THEN REPLY @1314 /* ~I think about it, still. Not as much as I used to, but... it's scary to think how close you were to... how close we were to —~ */
		GOTO XA_SoDAnxiety5
		
		IF ~
			Global("XA_LC_PlayerExiled", "GLOBAL", 1)
		~ THEN REPLY @1433 /* ~I think about it, still. Not just my exile, but how close I was to being —~ */
		GOTO XA_SoDAnxiety5
	END

	IF ~~ THEN BEGIN XA_SoDAnxiety5
		SAY @1316 /* ~I know, love. Come here.~  */
		= @1317 /*  ~(You share a long and tender embrace.)~ */
		
		IF ~~ THEN REPLY @1318 /* ~Thank you, Schael... For believing in me, and for believing in us.~  */
		GOTO XA_SoDAnxiety6
	END

	IF ~~ THEN BEGIN XA_SoDAnxiety6
		SAY @1319 /* ~We have each other... and we have Rohma. The new memories we make together will drown out those dark echoes. You'll see.~*/
		
		IF ~
			!Global("XA_LC_PlayerExiled", "GLOBAL", 1)
		~ THEN REPLY @1321 /* ~I look forward to it.~ */
		DO ~
			SetGlobal("XA_LC_Journal_DarkCircumstances", "GLOBAL", 2)
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXIT
		
		IF ~
			Global("XA_LC_PlayerExiled", "GLOBAL", 1)
		~ THEN REPLY @1321 /* ~I look forward to it.~ */
		DO ~
			SetGlobal("XA_LC_Journal_DarkCircumstances", "GLOBAL", 1)
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXIT
	END
	//} #endregion

	//{ #region Hall of Wonders Cutscene - Dialog J-0 - CC OK
	IF ~
		Global("XA_LC_CSHOW_TALK", "GLOBAL", 1)
	~ THEN BEGIN XA_CSHOW_TALK
		SAY @1383 /* ~... ... so you see, even the smallest act of kindness can have a profound impact.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CSHOW_TALK", "GLOBAL", 2)
		~
		EXTERN XACURATO XA_CSHOW_TALK_CHAIN
	END

	IF ~~ THEN BEGIN XA_WantToTransform 
		SAY @1415 /* ~(She looks at you with a knowing smile.)~  */
		
		= @1416 /* ~Normally I'd be against it, but it might be good to scare some sense into these kids.~ */
		
		IF ~~ THEN REPLY @1419 /* Right. (Transform into the Slayer).~ */
		DO ~
			SetGlobal("XA_LC_ScaredChildren", "GLOBAL", 1)
			PlaySong(58) // play dragon battle music
			StartCutScene("XACSHOW3")
		~	
		EXIT
		
		IF ~~ THEN REPLY @1420 /* ~On second thought, no. Curator Magda — we really must get going.~  */
		DO ~
			StartCutSceneMode()
			StartCutScene("XACSHOWX")
		~	
		EXIT
	END
	//} #endregion

	//{ #region Corwin Not Chosen for Saradush - Dialog J-1 - CC OK
	IF ~
		Global("XA_LC_BGEND3", "GLOBAL", 1)
		Global("XA_LC_DidNotRequestCorwin", "GLOBAL", 1)
		GlobalGT("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 99)
		// play romance song (if in romance)
	~ THEN BEGIN XA_BGEND3_DidNotRequest
		SAY @1223 /* ~I'm going with you. Don't try and talk me out of it.~ [XA100099] */
		
		IF ~~ THEN REPLY @1225 /* ~Right. I need you by my side.~ */
		DO ~
			SetGlobal("XA_LC_BGEND3", "GLOBAL", 2)
		~
		GOTO XA_BGEND3_CorwinSaradushChain //OK
		
		IF ~~ THEN REPLY @1226 /* ~As much as I want you to, your family, and this city, need you to protect them.~ */
		DO ~
			SetGlobal("XA_LC_BGEND3", "GLOBAL", 2)
		~
		GOTO XA_BGEND3_DidNotRequest_B //OK
	END

	IF ~~ THEN BEGIN XA_BGEND3_DidNotRequest_B
		SAY @2 /* ~You sure you don't want me with you?~ [XA100101]*/
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1221 /* ~I'm sure, my love. I can't risk losing you.~ */
		GOTO XA_BGEND3_DontWantCorwinR //OK
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1222 /* ~I'm sure. The city can't risk losing the both of us.~ */
		GOTO XA_BGEND3_DontWantCorwinNR //OK
		
		IF ~~ THEN REPLY @1275 /* ~You're right. The skill and counsel you've provided have proven invaluable, and I require them once again.~*/
		GOTO XA_BGEND3_CorwinSaradushChain
	END

	IF ~~ THEN BEGIN XA_BGEND3_DontWantCorwinNR 
		SAY @1235 /* ~Fine... Just be careful out there, please.~ */
		
		IF ~~ THEN REPLY @1276 /* ~I will - don't worry about me, my friend.~ */
		GOTO XA_BGEND3_DontWantCorwin2 //OK
	END

	IF ~~ THEN BEGIN XA_BGEND3_DontWantCorwinR
		SAY @1236 /* ~Fine... Just be careful out there, please. I can't bear to lose you.~ */
		
		IF ~~ THEN REPLY @1276 /* ~I will. I'll come back to you, my love - I promise.~ */
		GOTO XA_BGEND3_DontWantCorwin2 //OK
	END

	IF ~~ THEN BEGIN XA_BGEND3_DontWantCorwin2
		SAY @1278 /* ~It's late... I need to get Rohma to bed.~ */
		
		IF ~~ THEN REPLY @1279 /* ~I'll come with you.~ */
		DO ~
			SetGlobal("XA_LC_ByeRohma", "GLOBAL", 1)
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_BGEND3_CorwinSaradushChainEnd
		SAY @1262 /* ~Thank you, sir.~ [XA100054] */
		
		IF ~~ THEN REPLY @1265 /* ~Schael - I really appreciate you doing this. I know it's not easy for you to be away from your family.~ */
		DO ~
			SetGlobal("XA_LC_DidRequestCorwin", "GLOBAL", 1)
		~
		GOTO XA_BGEND4_2
	END

	//} #endregion

	//{ #region Corwin Chosen for Saradush - Dialog J-2 - CC OK
	IF ~
		Global("XA_LC_BGEND4", "GLOBAL", 1)
		Global("XA_LC_DidRequestCorwin", "GLOBAL", 1)
		// play romance song (if in romance)
	~ THEN BEGIN XA_BGEND4_DidRequest
		SAY @1280 /* ~I'm glad that you chose me for this assignment.~*/
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1282 /* ~I've learned to rely on your skill and counsel, my friend.~ */
		DO ~
			SetGlobal("XA_LC_BGEND4", "GLOBAL", 2)
		~
		GOTO XA_NeedEachother_NR //OK
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1286 /* ~I need you Schael. You know that.~ */
		DO ~
			SetGlobal("XA_LC_BGEND4", "GLOBAL", 2)
		~
		GOTO XA_NeedEachother //OK
		
		IF ~~ THEN REPLY @1283 /* ~It was a difficult decision.~ */
		DO ~
			SetGlobal("XA_LC_BGEND4", "GLOBAL", 2)
		~
		GOTO XA_HowSo //OK
		
		IF ~~ THEN REPLY @1288 /* ~Really? I thought you might be upset.~ */
		DO ~
			SetGlobal("XA_LC_BGEND4", "GLOBAL", 2)
		~
		GOTO XA_HowSo //OK
	END

	IF ~~ THEN BEGIN XA_NeedEachother
		SAY @1292 /* ~And I need you. I'd drive myself crazy if I had to stay here while the <PRO_MANWOMAN> I love was out risking <PRO_HISHER> life in some faraway land.~ */
		
		IF ~~ THEN REPLY @1268 /* ~I imagine that's how Rohma and your father feel about you.~ */
		GOTO XA_BGEND4_3 //OK
		
		IF ~~ THEN REPLY @1272 /* ~I'd feel the same way if our roles were reversed, love.~ */
		GOTO XA_BGEND4_3A //OK
	END

	IF ~~ THEN BEGIN XA_HowSo
		SAY @1284 /* ~How so?~ */
		
		IF ~~ THEN REPLY @1285 /* ~I know it's not easy for you to be away from your family.~*/
		GOTO XA_BGEND4_2 //OK
		
		IF ~~ THEN REPLY @1287 /* ~This is going to be dangerous, and I never want to see you get hurt.~  */
		GOTO XA_HowSo_2 //OK
	END

	IF ~~ THEN BEGIN XA_HowSo_2 //OK
		SAY @1290 /* ~It is, but... it's worth the risk.~  */
		=@1291 /* ~You heard Nederlok, and the Dukes. The success of this mission is essential to the safety of this city. And that includes Rohma, and my father.~*/
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_BGEND4_2R //OK
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_BGEND4_4 //OK
	END

	IF ~~ THEN BEGIN XA_NeedEachother_NR
		SAY @1293 /*  ~And all of us here rely on you. I'd drive myself crazy if I had to stay here while the hero of Baldur's Gate was in some faraway land, risking <PRO_HIMHER>self to protect us.~  */
		
		IF ~~ THEN REPLY @1268 /* ~I imagine that's how Rohma and your father feel about you.~ */
		GOTO XA_BGEND4_3 //OK
	END


	IF ~~ THEN BEGIN XA_BGEND4_2
		SAY @1266 /* ~It never is, but... you heard Nederlok, and the Dukes. The success of this mission is essential to the safety of this city. And that includes Rohma, and my father.~ */
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_BGEND4_2R //OK
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_BGEND4_4 //OK
	END

	IF ~~ THEN BEGIN XA_BGEND4_2R
		SAY @1267 /* ~Plus, I'd drive myself crazy if I had to stay here while the <PRO_MANWOMAN> I love was out risking <PRO_HISHER> life in some faraway land.~ */
		
		IF ~~ THEN REPLY @1268 /* ~I imagine that's how Rohma and your father feel about you.~ */
		GOTO XA_BGEND4_3 //OK
		
		IF ~~ THEN REPLY @1272 /* ~I'd feel the same way if our roles were reversed, love.~ */
		GOTO XA_BGEND4_3A //OK
	END

	IF ~~ THEN BEGIN XA_BGEND4_3 //OK
		SAY @1269 /* ~I know... it's definitely not easy for them, either.~*/
		
		IF ~~ THEN GOTO XA_BGEND4_4 //OK
	END

	IF ~~ THEN BEGIN XA_BGEND4_3A //OK
		SAY @1273 /* ~I know, dear... it's not easy for Rohma or my father either.~*/
		
		IF ~~ THEN GOTO XA_BGEND4_4 //OK
	END

	IF ~~ THEN BEGIN XA_BGEND4_4
		SAY @1270 /* ~Speaking of Rohma, it's late, and I need to put her to bed.~*/
		
		IF ~~ THEN REPLY @1271 /* ~Let's break the news to her together, first.~ */
		GOTO XA_BGEND4_5 //OK
	END

	IF ~~ THEN BEGIN XA_BGEND4_5
		SAY @1274 /* ~Right...~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_ByeRohma", "GLOBAL", 1)
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_SaradushDiscussion7
		SAY @1262 /* ~Thank you, sir.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_DidRequestCorwin", "GLOBAL", 1)
			StartCutscene("XABGEND4")
		~
		EXIT
	END

	//} #endregion

	//{ #region Rohma Rescued - Dialog J-3 - CC OK
	IF ~
		Global("XA_LC_RohmaSaved", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinRohmaReunite
		SAY @1210 /* ~(They share a warm embrace.)~ */
		
		IF ~
			!Global("XA_LC_SkieModActive", "GLOBAL",1)
		~ THEN
		DO ~
			SetGlobal("XA_LC_RohmaSaved", "GLOBAL", 2)
		~
		GOTO XA_CorwinRohmaReuniteChain
		
		IF ~
			Global("XA_LC_SkieModActive", "GLOBAL",1)
		~ THEN
		DO ~
			SetGlobal("XA_LC_RohmaSaved", "GLOBAL", 2)
		~
		GOTO XA_CorwinRohmaReuniteChainA
	END
	//} #endregion

	//{ #region Beno Last Words (Soultaker) - Dialog J-4 - CC OK
	IF ~
		Global("XA_LC_CorwinBenoST", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinBenoST
		SAY @1184 /* ~Any last words?~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinBenoST", "GLOBAL", 2)
			ActionOverride(Player1, TransformItem("XASTDAG", "XASTDAGB"))
			ActionOverride(Player2, TransformItem("XASTDAG", "XASTDAGB"))
			ActionOverride(Player3, TransformItem("XASTDAG", "XASTDAGB"))
			ActionOverride(Player4, TransformItem("XASTDAG", "XASTDAGB"))
			ActionOverride(Player5, TransformItem("XASTDAG", "XASTDAGB"))
			ActionOverride(Player6, TransformItem("XASTDAG", "XASTDAGB"))
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXTERN XABENO2 XA_CorwinBenoSTChain
	END

	IF ~~ THEN XA_CorwinBenoSTChainEnd
		SAY @1248 /*  ~It's done. Thank the gods.~ [BD39327] */
		
		= @1249 /* ~I just hope we've done the right thing.~*/
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1189 /* ~It was the only way. He'll never trouble you again. Come - I'm sure Rohma is eager to see you, my love.~ */
		GOTO XA_CorwinBenoSTChainEndCS
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1190 /* ~It was the only way. He'll never trouble you again. Come - I'm sure Rohma is eager to see you, my love.~ */
		GOTO XA_CorwinBenoSTChainEndCS
	END

	IF ~~ THEN XA_CorwinBenoSTChainEndCS
		SAY @1191 /* ~Right. Let's go.~ [BD58846]*/
		
		IF ~~ THEN
		DO ~
			StartCutsceneMode()
			StartCutscene("XAUCEND1")
		~
		EXIT
	END
	//} #endregion

	//{ #region Beno Last Words (Killed) - Dialog J-5 - CC OK
	IF ~
		Global("XA_LC_CorwinKillBeno", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinKillBenoLastWords
		SAY @1184 /* ~Any last words?~ */
		
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinKillBeno", "GLOBAL", 2)
		~
		EXTERN XABENO2 XA_CorwinKillBenoChain
		/*
		IF ~
			GlobalLT("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 110)
		~ THEN 
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinKillBeno", "GLOBAL", 2)
		~
		EXTERN XABENO2 XA_CorwinKillBenoChain
		
		IF ~
			GlobalGT("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 109)
		~ THEN 
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinKillBeno", "GLOBAL", 2)
		~
		EXTERN XABENO2 XA_CorwinMercyBenoChain
		*/
	END

	IF ~~ THEN XA_CorwinKillBenoChainEnd
		SAY  @1248 /* ~It's done. Thank the gods.~ [BD39327] */
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1195 /* ~Are you alright? That couldn't have been easy for you, love.~ */
		GOTO XA_CorwinKillBenoChainEndCS //OK
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1197 /* ~Are you alright? That couldn't have been easy for you.~*/
		GOTO XA_CorwinKillBenoChainEndCS //OK
	END

	IF ~~ THEN XA_CorwinMercyBenoChainEnd
		SAY @1204 /* ~<CHARNAME> - help me get him on his feet. We'll take him into custody together.~  */
		
		IF ~~ THEN REPLY @1205 /* ~Gladly, Schael.~ */
		DO ~
			StartCutsceneMode()
			StartCutscene("XAUCEND1")
		~
		EXIT
	END

	IF ~~ THEN XA_CorwinKillBenoChainEndCS
		SAY @1196 /* ~I'll be fine once I see Rohma. Let's go.~ */
		
		IF ~~ THEN
		DO ~
			StartCutsceneMode()
			StartCutscene("XAUCEND1")
		~
		EXIT
	END

	//} #endregion

	//{ #region Illasera Killed - Dialog J-6 - CC OK
	IF ~
		Global("XA_LC_IllaseraDead", "GLOBAL", 1)
	~ THEN BEGIN XA_IllaseraDead
		SAY @1142 /* ~That was the last of them...~ */
		
		IF ~
			!Global("XA_LC_SkieModActive", "GLOBAL",1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_IllaseraDead", "GLOBAL", 2)
		~
		GOTO XA_IllaseraDeadSkie
		
		IF ~
			Global("XA_LC_SkieModActive", "GLOBAL",1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_IllaseraDead", "GLOBAL", 2)
		~
		GOTO XA_IllaseraDeadGlint
	END

	IF ~~ THEN XA_IllaseraDeadSkie
		SAY @1143  /*~Rohma... thank Tymora that Skie got her out in time.~  */
		
		IF ~~ THEN
		EXTERN XABENO2 XA_IllaseraDead2 //OK
	END

	IF ~~ THEN XA_IllaseraDeadGlint
		SAY @1152  /*~Rohma... thank Tymora that Glint got her out in time.~  */
		
		IF ~~ THEN
		EXTERN XABENO2 XA_IllaseraDead2 //OK
	END

	IF ~~ THEN BEGIN XA_IllaseraDead3
		SAY @1146 /* ~Not for long.~ */
		
		IF ~~ THEN REPLY @1149 /* ~Do your worst.~ */
		GOTO XA_CorwinKillBeno //OK
		
		IF ~~ THEN REPLY @1148 /* ~Wait!~ */
		GOTO XA_IllaseraDead4 //OK
	END

	IF ~~ THEN BEGIN XA_IllaseraDead4
		SAY @1150 /* ~What is it?~ [XA100030] */
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1147 /* ~What is killing him again going to solve?~ */
		GOTO XA_IllaseraDead5R //OK
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1147 /* ~What is killing him again going to solve?~ */
		GOTO XA_IllaseraDead5NR //OK
		
		IF ~
			HasItem("XASTDAG", "XACORWIN")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1183 /* ~You have the Soultaker dagger. Give it to me, I'll do the deed. It's the only way we'll be free of him for good.~ */
		GOTO XA_IllaseraDead_ST_Corwin //OK
		
		IF ~
			HasItem("XASTDAG", "XACORWIN")
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1182 /* ~You have the Soultaker dagger. Give it to me, I'll do the deed. It's the only way you'll be free of him for good.~ */
		GOTO XA_IllaseraDead_ST_Corwin //OK
		
		IF ~
			HasItem("XASTDAG", Player1)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1168 /* ~I have the Soultaker dagger. I'll do the deed. It's the only way you'll be free of him for good.~ */
		GOTO XA_IllaseraDead_ST_PlayerR //OK
		
		IF ~
			HasItem("XASTDAG", Player1)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1154 /* ~I have the Soultaker dagger. I'll do the deed. It's the only way you'll be free of him for good.~ */
		GOTO XA_IllaseraDead_ST_PlayerNR 
		
		IF ~~ THEN REPLY @1151 /* ~Nevermind - do your worst.~ */
		GOTO XA_CorwinKillBeno
	END 

	IF ~~ THEN BEGIN XA_CorwinKillBeno
		SAY @1177 /* ~(Steely-faced, she takes a deep breath and approaches her former lover.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinKillBeno", "GLOBAL", 1)
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_IllaseraDead5R
		SAY @1180 /* ~Love, you want to me to show him mercy? He nearly got Rohma killed, and what he did to my father...~ */
		
		IF ~~ THEN GOTO XA_IllaseraDead6 //OK
	END 

	IF ~~ THEN BEGIN XA_IllaseraDead5NR
		SAY @1156 /* ~You want to me to show him mercy? He nearly got Rohma killed, and what he did to my father...~*/
		
		IF ~~ THEN GOTO XA_IllaseraDead6 //OK
	END 

	IF ~~ THEN BEGIN XA_IllaseraDead6
		SAY @1181 /* ~No, I'm sorry. No mercy.~ */
		
		IF ~~ THEN REPLY @1157 /* ~Kill him, and his friends will just resurrect him. Before long, he'll do this to you again.~ */
		GOTO XA_IllaseraDead_Mercy //OK
		
		IF ~
			HasItem("XASTDAG", "XACORWIN")
		~ THEN REPLY @1163 /* ~You're right... You have the Soultaker dagger. Give it to me, I'll do the deed. It's the only way you'll be free of him for good.~ */
		GOTO XA_IllaseraDead_ST_Corwin //OK
		
		IF ~
			HasItem("XASTDAG", Player1)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1168 /* ~You're right... I have the Soultaker dagger. I will do the deed. It's the only way we'll be free of him for good.~ */
		GOTO XA_IllaseraDead_ST_PlayerR //OK
		
		IF ~
			HasItem("XASTDAG", Player1)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1169 /* ~You're right... I have the Soultaker dagger. I will do the deed. It's the only way you'll be free of him for good.~ */
		GOTO XA_IllaseraDead_ST_PlayerNR //OK
		
		IF ~~ THEN REPLY @1151 /* ~Nevermind - do your worst.~ */
		GOTO XA_CorwinKillBeno
	END

	IF ~~ THEN BEGIN XA_IllaseraDead_ST_Corwin
		SAY @1164 /* ~The dagger...~ */
		=@1165 /* ~(Her expression turns to one of concern, as she deliberates internally on what to do.)~ */
		IF ~~ THEN
		GOTO XA_IllaseraDead_BenoSTCorwin2
	END

	IF ~~ THEN BEGIN XA_IllaseraDead_ST_PlayerR
		SAY @1170 /* ~My love...~ */
		= @1165 /* ~(Her expression turns to one of concern, as she deliberates internally on what to do.)~ */
		IF ~~ THEN
		GOTO XA_IllaseraDead_BenoSTCorwin
	END

	IF ~~ THEN BEGIN XA_IllaseraDead_ST_PlayerNR
		SAY @1171 /* ~<CHARNAME>...~*/
		= @1165 /* ~(Her expression turns to one of concern, as she deliberates internally on what to do.)~ */
		IF ~~ THEN
		GOTO XA_IllaseraDead_BenoSTCorwin
	END

	IF ~~ THEN BEGIN XA_IllaseraDead_BenoSTCorwin2
		SAY @1179 /* ~No... You've been forced into enough killing already.~ */
		IF ~~ THEN GOTO XA_IllaseraDead_CorwilKillWithST
	END

	IF ~~ THEN BEGIN XA_IllaseraDead_BenoSTCorwin
		SAY @1172 /* ~No... You've been forced into enough killing already. Hand me the dagger.~ [XA100070]*/
		= @1174 /* ~(You hand her the dagger.)~ */
		IF ~~ THEN GOTO XA_IllaseraDead_CorwilKillWithST
	END

	IF ~~ THEN BEGIN XA_IllaseraDead_CorwilKillWithST
		SAY @1175 /* ~I appreciate that you're willing to do this for me, but it's my responsibility.~ */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinBenoST", "GLOBAL", 1)
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_IllaseraDead_Mercy
		SAY @1158 /* ~But, no! I can't just let him...~ */
		= @1159 /* ~(She lets out a long sigh.)~ */
		= @1160 /* ~You're right. I'm letting my anger cloud my judgement. I'm an officer of the law, and I need to hold myself to a higher standard.~ */
		= @1161 /* ~Come on. Help me get him up. We'll take him into custody together.~ */
		
		IF ~~ THEN REPLY @1162 /* ~Gladly.~ */
		DO ~
			StartCutSceneMode()
			StartCutScene("XAUCEND1")
		~
		EXIT

	END
	//} #endregion

	//{ #region Arrival in Undercity - Dialog J-7 - Tested - CC OK
	IF ~
		Global("XA_LC_ArrivedInUndercity", "GLOBAL", 1)
	~ THEN BEGIN XA_ArrivedInUndercity
		SAY @1118 /* ~The Undercity... They must be nearby.~*/
		
		= @1119 /* ~Look at these tracks. They lead toward the temple.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_ArrivedInUndercity", "GLOBAL", 2)
		~
		REPLY @1121 /* ~We should scout around first. Be careful.~ */
		GOTO XA_ArrivedInUndercity2
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_ArrivedInUndercity", "GLOBAL", 2)
		~
		REPLY @1120 /* ~Let's go.~ */
		GOTO XA_ArrivedInUndercity2
	END

	IF ~~ THEN XA_ArrivedInUndercity2
		SAY @1122 /* ~Right.~ */
		
		IF ~~ THEN
		EXIT
	END


	IF ~~ THEN BEGIN XA_SkieTakesRing
		SAY @1136 /* ~(Skie takes the ring from Schael.)~ */
		=@1137 /* ~Skie, whatever you do, don't put it on. You'll be teleported. You MUST place it on Rohma's finger.~*/
		IF ~~ THEN EXTERN XASKIE XA_SkieTakesRing
	END

	IF ~~ THEN BEGIN XA_GlintTakesRing
		SAY @1144 /* ~(SGlint takes the ring from Schael.)~ */
		=@1145 /* ~Glint, whatever you do, don't put it on. You'll be teleported. You MUST place it on Rohma's finger.~*/
		IF ~~ THEN EXTERN XAGLINT XA_GlintTakesRing
	END
	IF ~~ THEN BEGIN XA_Thanks3
		SAY @1138 /* ~We won't tell. Just be careful.~*/
		
		IF ~~ THEN EXTERN XASKIE XA_SetUp
	END
	IF ~~ THEN BEGIN XA_GiveSkieRing
		SAY @1135 /*~One of the city wizards gave us this ring. If you slip it on to Rohma's finger, she'll be teleported to safety.~*/
		
		IF ~~ THEN EXTERN XASKIE XA_GiveRing
	END

	IF ~~ THEN BEGIN XA_GiveGlintRing
		SAY @1135 /*~One of the city wizards gave us this ring. If you slip it on to Rohma's finger, she'll be teleported to safety.~*/
		
		IF ~~ THEN EXTERN XAGLINT XA_GiveRing
	END

	IF ~~ THEN BEGIN XA_GiveSkieRing2
		SAY @1139 /*~~Skie, do you think you can get to Rohma without being seen?~*/
		
		IF ~~ THEN EXTERN XASKIE XA_GiveSkieRing3
	END

	IF ~~ THEN BEGIN XA_GiveSkieRing4
		SAY @1141 /*~You wouldn't need to... One of the city wizards gave us this ring. If you slip it on to Rohma's finger, she'll be teleported to safety.~*/
		
		IF ~~ THEN EXTERN XASKIE XA_GiveRing
	END

	IF ~~ THEN BEGIN XA_GiveGlintRing2
		SAY @1140 /*~Glint, do you think you can get to Rohma without being seen?~*/
		
		IF ~~ THEN EXTERN XAGLINT XA_GiveGlintRing3
	END

	IF ~~ THEN BEGIN XA_GiveGlintRing4
		SAY @1141 /*~You wouldn't need to... One of the city wizards gave us this ring. If you slip it on to Rohma's finger, she'll be teleported to safety.~*/
		
		IF ~~ THEN EXTERN XAGLINT XA_GiveRing
	END

	IF ~~ THEN BEGIN XA_SkieUCChainEnd
		SAY @1132 /* ~The man with the scar is Beno.~*/
		
		IF ~~ THEN REPLY @1133 /*~Skie, do you think you can sneak Rohma out of there?~ */
		EXTERN XASKIE XA_CanGetRohma
		
		IF ~~ THEN REPLY @1134 /* ~How did you get in there without them detecting you?~ */
		EXTERN XASKIE XA_NonDetection
		
		
	END

	IF ~~ THEN BEGIN XA_GlintUCChainEnd
		SAY @1219 /* ~The man with the scar is Beno. The woman has got to be Illasera.~~*/
		
		IF ~~ THEN REPLY @1263 /*~Glint, do you think you can sneak Rohma out of there?~ */
		EXTERN XAGLINT XA_CanGetRohma
		
		IF ~~ THEN REPLY @1134 /* ~How did you get in there without them detecting you?~ */
		EXTERN XAGLINT XA_NonDetection
		
		
	END
	//} #endregion

	//{ #region Corwin Walk Home - Dialog J-9 - CC OK
	IF ~
		Global("XA_LC_CorwinWalkHome", "GLOBAL", 1)
	~ THEN BEGIN XA_WalkHome
		SAY @985 /* ~Huh? The front door is open.~ */
		
		IF ~~ THEN REPLY @986 /* ~Were you expecting guests?~ */
		DO ~
			SetGlobal("XA_LC_CorwinWalkHome", "GLOBAL", 2)
		~
		GOTO XA_WalkHome2
	END

	IF ~~ THEN BEGIN XA_WalkHome2
		SAY @987 /* ~No.. it looks like it was broken into..~*/
		
		IF ~~ THEN 
		GOTO XA_WalkHome3
	END

	IF ~~ THEN BEGIN XA_WalkHome3
		SAY @988 /* ~Oh, Gods! Father! Rohma!~ */
		
		= @989 /* ~(She runs inside, and you follow her in.)~ */
		IF ~~ THEN 
		EXIT
	END
	//} #endregion

	//{ #region Rohma Kidnapped 1316_1 - Dialog J-10 - CC OK
	IF ~
		Global("XA_LC_RohmaKidnapped", "GLOBAL", 1)
	~ THEN BEGIN XA_RohmaKidnapped
		SAY @975 /* ~Father!~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_RohmaKidnapped", "GLOBAL", 2)
		~
		EXTERN XAAUDAM XA_AudamarRohmaKidnapChain
	END
	//} #endregion 

	//{ #region Dinner with Corwin (Romance) - Dialog J-14 - Tested - CC OK
	IF ~
		Global("XA_LC_CorwinDinner", "GLOBAL", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN BEGIN XA_CorwinDinner_Romance
		SAY @920 /* ~Mm. That was delicious.~ */
		
		IF ~~ THEN REPLY @921 /* ~It was. You ready for another drink?~*/
		DO ~
			SetGlobal("XA_LC_CorwinDinner", "GLOBAL", 2)
		~
		GOTO XA_CorwinDinner_Romance2
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_Romance2
		SAY @922 /* ~No, thanks. Two drinks is enough. Work in the morning, you know?~*/
		
		IF ~~ THEN REPLY @927 /*  ~Right.~ */
		GOTO XA_CorwinDinner_Romance3
		
		IF ~
			Global("XA_LC_ValygarJoinFF", "GLOBAL", 1)
		~ THEN REPLY @937 /* ~Speaking of work, how's Valygar? I heard he took Marshal Nederlok up on his offer to join the Flaming Fist.~ */
		GOTO XA_CorwinDinner_Romance2A
		
		IF ~
			PartyGoldGT(999)
		~ THEN REPLY @1023 /* ~You have enough money that you don't need to work ever again.~*/
		GOTO XA_CorwinDinner_Work
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_Romance2A
		SAY @938 /* ~He's doing well. He got his first arrest a few days ago. Breaking & entering.~ */
		
		IF ~~ THEN REPLY @939 /* ~I'm glad to hear it.~   */
		GOTO XA_CorwinDinner_Romance3
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_Romance3
		SAY @923 /* ~So, love. Tell me - how's life in the Ducal palace?~ */
		
		IF ~~ THEN REPLY @924 /* ~Good... It'l be better though once the three of you move in.~*/
		GOTO XA_CorwinDinner_Romance4
		
		IF ~~ THEN REPLY @926 /* ~I'm just about settled in.~*/
		GOTO XA_CorwinDinner_Romance3A
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_Romance3A
		SAY @929 /* ~Just about? It's been three months since you moved in. How long does it take?~ */
		
		IF ~~ THEN REPLY @930 /* ~Well.. it's a bit lonely, to be honest. It won't feel like home until the three of you move in.~ */
		GOTO XA_CorwinDinner_Romance4
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_Romance4
		SAY @925 /* ~I don't doubt it. You've been great with Rohma... She's adjusted well to our being together, I think.~ */
		
		IF ~~ THEN REPLY @931 /* ~Would that I could say the same about your father.~*/
		GOTO XA_CorwinDinner_Romance5
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_Romance5
		SAY @932 /*~Oh, don't mind him. He's that way to everyone, though he's warming up to you.~*/
		
		IF ~~ THEN REPLY @933 /* ~You think so?~*/
		GOTO XA_CorwinDinner_Romance6
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_Romance6
		SAY @934 /* ~I do. He told me that he liked your speech the other day at the Hall of Wonders, about your experience in Amn.~ */
		
		IF ~~ THEN REPLY @935 /* ~Oh, really? I'm glad. ~ */
		GOTO XA_CorwinDinner_Romance7
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_Romance7
		SAY @936 /* ~It's getting late, love. I should head home.~ */
		
		IF ~
			GlobalGT("XA_LC_RingEnchanted", "GLOBAL", 0)
		~ THEN REPLY @916 /* ~Let's take a walk.~ */
		GOTO XA_CorwinDinner_Romance8
		
		IF ~
			GlobalLT("XA_LC_RingEnchanted", "GLOBAL", 1)
			Gender(Player1, MALE)
		~ THEN REPLY @940 /* ~I'll walk you home.~ */
		GOTO XA_CorwinDinner_WalkHome_Male
		
		IF ~
			GlobalLT("XA_LC_RingEnchanted", "GLOBAL", 1)
			!Gender(Player1, MALE)
		~ THEN REPLY @940 /* ~I'll walk you home.~ */
		GOTO XA_CorwinDinner_WalkHome_Female
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_Romance8
		SAY @917 /* ~At this hour? What do you have in mind?~*/
		
		IF ~~ THEN REPLY @918 /* ~You'll see. Afterwards, I'll walk you home. Let's go.~*/
		DO ~
			SaveGame(0)
			SetGlobal("XA_LC_LeftToK", "GLOBAL", 1)
		~
		EXIT
	END
	//} #endregion

	//{ #region Dinner with Corwin (Non-Romance) - Dialog J-15 - Tested - CC OK
	IF ~
		Global("XA_LC_CorwinDinner", "GLOBAL", 1)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN BEGIN XA_CorwinDinner_NonRomance
		SAY @920 /*~Mm. That was delicious.~*/
		
		IF ~~ THEN REPLY @921 /**/
		DO ~
			SetGlobal("XA_LC_CorwinDinner", "GLOBAL", 2)
		~
		GOTO XA_CorwinDinner_NonRomance2
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance2
		SAY @922 /*No, thanks. Two drinks is enough. Work in the morning, you know?~*/
		
		IF ~
			PartyGoldGT(999)
		~ THEN REPLY @1023 /* ~You have enough money that you don't need to work ever again.~*/
		GOTO XA_CorwinDinner_Work
		
		IF ~~ THEN REPLY @927 /*~Right.~*/
		GOTO XA_CorwinDinner_NonRomance3
		
		IF ~
			Global("XA_LC_ValygarJoinFF", "GLOBAL", 1)
		~ THEN REPLY @937 /*~Speaking of work, how's Valygar? I heard he took Marshal Nederlok up on his offer to join the Flaming Fist.~*/
		GOTO XA_CorwinDinner_NonRomance2A
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance2A
		SAY @938 /*~He's doing well. He got his first arrest a few days ago. Breaking & entering.~*/
		
		IF ~~ THEN REPLY @939 /*~I'm glad to hear it.~  */
		GOTO XA_CorwinDinner_NonRomance3
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance3
		SAY @943 /*~So, my friend. Tell me - how's life in the Ducal palace?~*/
		
		IF ~~ THEN REPLY @945 /* ~I'm just about settled in... it's just a big difference than what I'm used to.~ */
		GOTO XA_CorwinDinner_NonRomance6
		
		IF ~
			Global("XA_LC_BackToBG_Anomen", "GLOBAL", 1)
			Global("AnomenRomanceActive", "GLOBAL",2)
		~ THEN 
		GOTO XA_CorwinDinner_NonRomance_Anomen
		
		IF ~
			Global("XA_LC_BackToBG_Jaheira", "GLOBAL", 1)
			Global("JaheiraRomanceActive", "GLOBAL",2)
		~ THEN 
		GOTO XA_CorwinDinner_NonRomance_Jaheira

		IF ~
			Global("XA_LC_BackToBG_Aerie", "GLOBAL", 1)
			Global("AerieRomanceActive", "GLOBAL",2)
		~ THEN 
		GOTO XA_CorwinDinner_NonRomance_Aerie
		
		IF ~
			Global("XA_LC_BackToBG_Neera", "GLOBAL", 1)
			Global("NeeraRomanceActive", "GLOBAL",2)
		~ THEN 
		GOTO XA_CorwinDinner_NonRomance_Neera
		
		IF ~
			Global("XA_LC_BackToBG_Rasaad", "GLOBAL", 1)
			Global("RasaadRomanceActive", "GLOBAL",2)
		~ THEN 
		GOTO XA_CorwinDinner_NonRomance_Rasaad
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance_Anomen
		SAY @946 /* ~Are you and Anomen settled in?~*/
		
		IF ~~ THEN REPLY @944 /*~Just about. It's a big adjustment from what we're used to.~*/
		GOTO XA_CorwinDinner_NonRomance6
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance_Jaheira
		SAY @948 /* ~Are you and Jaheira settled in?~*/
		
		IF ~~ THEN REPLY @944 /*~Just about. It's a big adjustment from what we're used to.~*/
		GOTO XA_CorwinDinner_NonRomance6
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance_Aerie
		SAY @947 /* ~Are you and Aerie settled in?~*/
		
		IF ~~ THEN REPLY @944 /*~Just about. It's a big adjustment from what we're used to.~*/
		GOTO XA_CorwinDinner_NonRomance6
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance_Neera
		SAY @949 /* ~Are you and Neera settled in?~*/
		
		IF ~~ THEN REPLY @944 /*~Just about. It's a big adjustment from what we're used to.~*/
		GOTO XA_CorwinDinner_NonRomance6
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance_Rasaad
		SAY @1762 /* ~Are you and Rasaad settled in?~*/
		
		IF ~~ THEN REPLY @944 /*~Just about. It's a big adjustment from what we're used to.~*/
		GOTO XA_CorwinDinner_NonRomance6
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance6
		SAY @950 /* ~I don't doubt it.~ */
		
		IF ~~ THEN REPLY @952 /* ~And you, Schael? How are you adjusting to being back home again? I bet Rohma's happy that her mom is home again.~ */
		GOTO XA_CorwinDinner_NonRomance7
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_NonRomance7
		SAY @953 /* ~She is. It's wonderful. Speaking of... look at the time. I should get going.~  */
		
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @940 /* ~I'll walk you home.~*/
		GOTO XA_CorwinDinner_WalkHome_Male
		
		IF ~
			!Gender(Player1, MALE)
		~ THEN REPLY @940 /* ~I'll walk you home.~*/
		GOTO XA_CorwinDinner_WalkHome_Female
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_WalkHome_Male
		SAY @941 /*~A hero, and a gentleman. Let's go.~*/
		
		IF ~~ THEN
		DO ~
			SaveGame(0)
			SetGlobal("XA_LC_LeftToK", "GLOBAL", 2)
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_WalkHome_Female
		SAY @942 /* ~Let's go.~ */
		
		IF ~~ THEN
		DO ~
			SaveGame(0)
			SetGlobal("XA_LC_LeftToK", "GLOBAL", 2)
		~
		EXIT
	END
	//} #endregion

	//{ #region Dinner with Corwin (Common) DLG-0013 / 14 - Tested
	IF ~~ THEN BEGIN XA_CorwinDinner_Work
		SAY @1024 /* ~That's your money. Consider it compensation for everything you've had to endure.~*/
		
		IF ~
			!Global("XA_LC_PlayerExiled", "GLOBAL", 1)
		~ THEN REPLY @1323 /*~It's as much yours, Schael, as it is mine. You could've killed me during my escape. Instead, you showed mercy.~ */
		GOTO XA_CorwinDinner_Work2
		
		IF ~
			Global("XA_LC_PlayerExiled", "GLOBAL", 1)
		~ THEN REPLY @1025 /* ~It's as much yours, Schael, as it is mine... I wouldn't be here were it not for your efforts in securing my release.~ */
		GOTO XA_CorwinDinner_Work2
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_Work2
		SAY @1026 /* ~Even if it were my money, I'd probably keep working, at least for a while longer. Rohma needs to understand the value of hard work.~ */
		
		= @1027 /* ~Besides, I haven't given up on making colonel one day.~ */
		
		IF ~~ THEN REPLY @1028 /* ~Nor should you. Colonel Corwin... I think I like the sound of that.~*/
		GOTO XA_CorwinDinner_WorkEnd
		
		IF ~~ THEN REPLY @1035 /* ~Colonel? Seems a bit bureaucratic to me.~*/
		GOTO XA_CorwinDinner_Work3B
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_Work3B
		SAY @1036 /* ~You think so?~ */
		
		IF ~~ THEN REPLY @1037 /* ~You've always struck me as more of a 'hands-on' type of person.~ */
		GOTO XA_CorwinDinner_Work4B
		
		IF ~~ THEN REPLY @1040 /* ~Sitting in an office all day? You'll get bored.~ */
		GOTO XA_CorwinDinner_Work4B
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_Work4B
		SAY @1038 /* ~Maybe... but being so close to the action for so long has a tendency to shorten one's lifespan...~ */
		
		IF ~~ THEN REPLY @1039 /* ~I've think you've shown that you can handle whatever comes your way, Schael.~*/
		GOTO XA_CorwinDinner_WorkEnd
	END

	IF ~~ THEN BEGIN XA_CorwinDinner_WorkEnd
		SAY @1034 /* ~(She smiles.)~ */
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_CorwinDinner_NonRomance3
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_CorwinDinner_Romance3
		
		IF ~
			Global("XA_LC_ValygarJoinFF", "GLOBAL", 1)
		~ THEN REPLY @937 /* ~Speaking of work, how's Valygar? I heard he took Marshal Nederlok up on his offer to join the Flaming Fist.~ */
		GOTO XA_CorwinDinner_Romance2A
	END
	//} #endregion

	//{ #region Duke Debrief Break - Dialog J-8 - CC OK
	IF ~
		Global("XA_LC_DukesDebriefed", "GLOBAL", 2)
	~ THEN BEGIN XA_DukeDebrief02
		SAY @1066 /* ~I thought that went well. What do you think?~ */
		
		IF ~~ THEN REPLY @1067 /* ~Me too. You did a great job recounting the events.~ */
		DO ~
			SetGlobal("XA_LC_DukesDebriefed", "GLOBAL", 3)
		~
		GOTO XA_DukeDebrief02_A1
		
		IF ~~ THEN REPLY @1068 /* ~I don't know... they seemed fearful of 'The Slayer'.~ */
		DO ~
			SetGlobal("XA_LC_DukesDebriefed", "GLOBAL", 3)
		~
		GOTO XA_DukeDebrief02_B1
	END

	IF ~~ THEN BEGIN XA_DukeDebrief02_A1
		SAY @1076 /* ~Thanks. I keep a journal whenever I'm deployed. It helps a lot when I need to deliver reports to my superiors.~ */

		IF ~
			!GlobalGT("XA_LC_TimesHadSex", "GLOBAL", 0)
			!Global("XA_LC_SlappedDelcia", "GLOBAL", 1)
			!Global("XA_LC_CorwinWonTM", "GLOBAL", 1)
			!Global("XA_LC_CorwinCleansed", "GLOBAL", 1)
			!Global("XA_LC_CorwinCleansed", "GLOBAL", 2)
		~ THEN REPLY @1098 /* ~Hm. I wonder what they're discussing...~*/
		GOTO XA_DukeDebrief_WaitForDukes
		
		IF ~
			OR(4)
				GlobalGT("XA_LC_TimesHadSex", "GLOBAL", 0)
				GlobalGT("XA_LC_SlappedDelcia", "GLOBAL", 0)
				GlobalGT("XA_LC_CorwinWonTM", "GLOBAL", 0)
				GlobalGT("XA_LC_CorwinCleansed", "GLOBAL", 0)
		~ THEN REPLY @1074 /* ~Although... I noticed you did leave *some* things out.~ */
		GOTO XA_DukeDebrief02_A2
	END

	IF ~~ THEN BEGIN XA_DukeDebrief02_A2
		SAY @1079 /* ~Like what?~*/
		
		IF ~~ THEN GOTO XA_DukeDebrief_ForgotSomething
	END

	IF ~~ THEN BEGIN XA_DukeDebrief_ForgotSomething
		SAY @1087 /* ~(She looks at you with a quizzical expression.)~ */
		
		IF ~~ THEN REPLY @1102 /* ~Actually, it's nothing... I wonder what they're discussing...~*/
		GOTO XA_DukeDebrief_WaitForDukes
		
		IF ~
			Global("XA_LC_SlappedDelcia", "GLOBAL", 1)
			!Global("XA_LC_Recall_Delcia", "GLOBAL", 1)
		~ THEN REPLY @1078 /* ~I recall you smacking some sense into Nalia's aunt.~*/
		DO ~
			SetGlobal("XA_LC_Recall_Delcia", "GLOBAL", 1)
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		GOTO XA_DukeDebrief02_Slap
		
		IF ~
			Global("XA_LC_CorwinWonTM", "GLOBAL", 1)
			!Global("XA_LC_Recall_TM", "GLOBAL", 1)
		~ THEN REPLY @1083 /* ~You competed in the Trademeet Archery Competition, and you won! You were amazing, Schael.~ */
		DO ~
			SetGlobal("XA_LC_Recall_TM", "GLOBAL", 1)
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		GOTO XA_DukeDebrief02_TM
		
		IF ~
			GlobalGT("XA_LC_TimesHadSex", "GLOBAL", 0)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			!Global("XA_LC_Recall_Sex", "GLOBAL", 1)
		~ THEN REPLY @1082 /* ~Our, ah, adventures in the bedroom. Especially that one time we kept the entire inn from getting any sleep.~ */
		DO ~
			SetGlobal("XA_LC_Recall_Sex", "GLOBAL", 1)
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		GOTO XA_DukeDebrief02_Sex
		
		IF ~
			!Global("XA_LC_Recall_Vampire", "GLOBAL", 1)
			OR(2)
				Global("XA_LC_CorwinCleansed", "GLOBAL", 1)
				Global("XA_LC_CorwinCleansed", "GLOBAL", 2)
		~ THEN REPLY @1091 /* ~I thought you'd tell them about the time you were nearly transformed into a vampire, by Bodhi.~ */
		DO ~
			SetGlobal("XA_LC_Recall_Vampire", "GLOBAL", 1)
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		GOTO XA_DukeDebrief02_Vampire
	END

	IF ~~ THEN BEGIN XA_DukeDebrief02_Vampire
		SAY @1092 /* ~Yes, well... honestly...~ */
		=@1093 /* ~If I'd told them, it would only be a matter of time before my father, and Rohma, would hear about it. I'd rather not trouble them with the knowledge of how close I was to turning into a monster.~*/
		=@1094 /* ~But... I haven't forgotten how you saved me, <CHARNAME>. And I never will.~*/
		
		IF ~~ THEN REPLY @1095 /* ~And I'll never forget what you did for me, Schael. My corpse would still be hanging from the Entar's gallows were it not for you.~ */
		GOTO XA_DukeDebrief02_Vampire_2
	END

	IF ~~ THEN BEGIN XA_DukeDebrief02_Vampire_2
		SAY @1096 /* ~(You share a warm embrace.)~ */
		
		IF ~~ THEN REPLY @1097 /* ~There was one other thing...~ */
		GOTO XA_DukeDebrief_ForgotSomething
		
		IF ~~ THEN REPLY @1098 /* ~Hm. I wonder what they're discussing...~ */
		GOTO XA_DukeDebrief_WaitForDukes
	END

	IF ~~ THEN BEGIN XA_DukeDebrief_WaitForDukes
		SAY @1099 /* ~It might be a while. As you've learned by now, the Dukes are, ehh, well-known for their long deliberations.~ */
		
		= @1100 /* ~Let's take a seat on the couch over here. Hopefully it's as comfortable as it looks.~*/
		= @1101 /* ~(You and Captain Corwin take a seat, and pass the time with idle chit-chat. Minutes slowly turn to hours...)~ */
		
		IF ~~ THEN
		DO ~
			StartCutSceneMode()
			StartCutScene("XADEBR02")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_DukeDebrief02_Slap
		SAY @1084 /* ~Oh, right. 'Lady' Delcia, the pretentious bi - ~ */
		= @1085 /* ~(She catches herself.)~ */
		= @1086 /* ~Nevermind. I won't use that kind of language within earshot of the city officials.~ */
		
		IF ~~ THEN
		GOTO XA_DukeDebrief_ForgotSomething
	END

	IF ~~ THEN BEGIN XA_DukeDebrief02_TM
		SAY @1088 /* ~(She smiles.)~ */
		= @1089 /* ~I appreciate that. It just wasn't germane to the discussion.~ */
		
		IF ~~ THEN
		GOTO XA_DukeDebrief_ForgotSomething
	END

	IF ~~ THEN BEGIN XA_DukeDebrief02_Sex
		SAY @1080 /* ~Hahah... no, love, those precious memories are for *our* enjoyment only.~   */
		= @1090 /* ~And... I look forward to making more of those kinds of memories with you, my love.~*/
		
		IF ~~ THEN
		GOTO XA_DukeDebrief_ForgotSomething
	END

	IF ~~ THEN BEGIN XA_DukeDebrief02_B1
		SAY @1069 /* ~You can control that power now, and that's what matters. What happened in Spellhold, when you lost control... it can never happen again.~ */ 
		
		IF ~~ THEN REPLY @1070 /* ~And it won't. I promise you.~ */
		GOTO XA_DukeDebrief02_B2
		
		IF ~~ THEN REPLY @1071 /* ~You're right. If it did, not even your pleading on my behalf would save me. Not like last time.~ */
		GOTO XA_DukeDebrief02_B2
	END

	IF ~~ THEN BEGIN XA_DukeDebrief02_B2
		SAY @1072 /* ~That's for damn sure.~ */
		
		IF ~~ THEN REPLY @1081 /* ~Besides the mention of my transformation, yes, I thought it went well. You did a great job recounting the events.~  */
		GOTO XA_DukeDebrief02_A1
	END
	//} #endregion

	//{ Dialog J-68 - CC OK
	IF ~
		Global("XA_LC_RohmaKidnapped", "GLOBAL", 2)
	~ THEN BEGIN XA_RohmaKidnapped2
		SAY @991 /* ~Beno...~  */
		=@992 /* ~(She quivers, then screams in rage.)~ */
		= @994 /* ~WILL I NEVER BE RID OF HIM!? AAAH!!~ */
		
		IF ~~ THEN REPLY @993 /* ~Schael! Try and stay calm - Audamar, they said they'd trade Rohma for me. Do they tell you where they'd make the exchange?~ */
		DO ~
			SetGlobal("XA_LC_RohmaKidnapped", "GLOBAL", 3)
		~
		EXTERN XAAUDAM XA_RohmaKidnapped2A
	END
	//}

	//{ #region Corwin Proposal - Dialog J-12 - CC OK
	IF ~
		Global("XA_LC_CorwinProposalCS", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinProposal
		SAY @954 /* ~The stars are beautiful tonight... */
		= @72 /* ...and look at the reflection of the moonlight on the river...~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinProposalCS", "GLOBAL", 2)
		~	
		GOTO XA_CorwinProposal2
	END

	IF ~~ THEN BEGIN XA_CorwinProposal2
		SAY @955 /* ~<CHARNAME>?~ */
		
		IF ~~ THEN REPLY @956 /* ~I was just remembering when we first met.~*/
		GOTO XA_CorwinProposal2A
		
		IF ~~ THEN REPLY @957 /* ~It is beautiful... but its beauty pales in comparison to your own, Schael.~ */
		GOTO XA_CorwinProposal2B
	END

	IF ~~ THEN BEGIN XA_CorwinProposal2A
		SAY @958 /* ~I remember... it's only been what, a little over a year? At the same time... I feel like we've known eachother for much, much longer.~*/
		
		IF ~~ THEN REPLY @959 /* ~I feel the same way. We've been through so much together. Schael, I...~*/
		EXIT
	END

	IF ~~ THEN BEGIN XA_CorwinProposal2B
		SAY @962 /* ~You're much too kind.~ */
		
		IF ~~ THEN
		EXIT
	END

	//{ region: Dialog J-13 
	IF ~
		Global("XA_LC_CorwinProposalCS", "GLOBAL", 2)
	~ THEN BEGIN XA_CorwinProposal2C
		SAY @963 /* ~(As she turns to you, her face is illuminated by the soft, pale moonlight. She has never looked more striking to you, and you're momentarily taken aback.)~ */
		
		= @960 /* ~What is it, love?~ */
		
		IF ~~ THEN REPLY @961 /* ~(Get down on one knee, and present her with the engagement ring.)~ */
		DO ~
			SetGlobal("XA_LC_CorwinProposalCS", "GLOBAL", 3)
			SetGlobal("XA_LC_MarriageProposal", "GLOBAL", 1)
		~
		GOTO XA_CorwinProposal3B
	END
	//} endregion

	IF ~~ THEN BEGIN XA_CorwinProposal3B
		SAY @964 /* ~W-what are you.. oh.. my..~*/
		
		IF ~~ THEN REPLY @965 /* ~Schael, my love. Will you marry me?~ */
		GOTO XA_CorwinProposal4
	END

	IF ~~ THEN XA_CorwinProposal4
		SAY @969 /* ~Yes! Yes of course I will!~ */
		
		IF ~~ THEN
		DO ~
			AddJournalEntry(@1763, INFO)
			ChangeStat(Myself, XP, 25000, ADD)
			ChangeStat(Player1, XP, 25000, ADD)
		~
		GOTO XA_CorwinProposal4B
	END

	IF ~~ THEN BEGIN XA_CorwinProposal4B
		SAY @970 /* ~(You share a long and passionate embrace.)~ */
		
		IF ~
			Global("XA_LC_RingEnchantment2", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment3", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment5", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARING07","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		IF ~
			Global("XA_LC_RingEnchantment1", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment3", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment5", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARING11","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5
		
		IF ~
			Global("XA_LC_RingEnchantment1", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment2", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment5", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARING13","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		IF ~
			Global("XA_LC_RingEnchantment1", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment2", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment3", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARING14","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		IF ~
			Global("XA_LC_RingEnchantment4", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment3", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment5", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARING19","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		IF ~
			Global("XA_LC_RingEnchantment4", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment2", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment5", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARING21","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5
		
		IF ~
			Global("XA_LC_RingEnchantment4", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment2", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment3", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARING22","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		IF ~
			Global("XA_LC_RingEnchantment4", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment1", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment5", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARING25","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		IF ~
			Global("XA_LC_RingEnchantment4", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment1", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment3", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARING26","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		IF ~
			Global("XA_LC_RingEnchantment4", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment1", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment2", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 2)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARING28","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		//Non-Imbued

		IF ~
			Global("XA_LC_RingEnchantment2", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment3", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment5", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 1)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARNG07A","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		IF ~
			Global("XA_LC_RingEnchantment1", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment3", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment5", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 1)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARNG11A","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5
		
		IF ~
			Global("XA_LC_RingEnchantment1", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment2", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment5", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 1)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARNG13A","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		IF ~
			Global("XA_LC_RingEnchantment1", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment2", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment3", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 1)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARNG14A","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		IF ~
			Global("XA_LC_RingEnchantment4", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment3", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment5", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 1)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARNG19A","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		IF ~
			Global("XA_LC_RingEnchantment4", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment2", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment5", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 1)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARNG21A","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5
		
		IF ~
			Global("XA_LC_RingEnchantment4", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment2", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment3", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 1)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARNG22A","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		IF ~
			Global("XA_LC_RingEnchantment4", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment1", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment5", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 1)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARNG25A","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		IF ~
			Global("XA_LC_RingEnchantment4", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment1", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment3", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 1)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARNG26A","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5

		IF ~
			Global("XA_LC_RingEnchantment4", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment1", "GLOBAL", 1)
			Global("XA_LC_RingEnchantment2", "GLOBAL", 1)
			Global("XA_LC_RingEnchanted", "GLOBAL", 1)
		~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
		DO ~
			GiveItemCreate("XARNG28A","XACORWIN",1,0,0) //OK
		~
		GOTO XA_CorwinProposal5
	END

	IF ~~ THEN XA_CorwinProposal5
		SAY @1022 /* ~<CHARNAME>... it's beautiful...~*/
		
		IF ~~ THEN REPLY @967 /* ~Do you like it?~ */
		GOTO XA_CorwinProposal6
	END

	IF ~~ THEN XA_CorwinProposal6
		SAY @968 /* ~I love it... it's perfect. And I love you. More than you'll ever know.~ */
		
		IF ~~ THEN REPLY @972 /* ~I love you too, Schael.~ */
		GOTO XA_CorwinProposal7
	END

	IF ~~ THEN XA_CorwinProposal7
		SAY @973 /* ~I know it's late, but come with me back home. I want to tell Rohma the good news!~ */
		
		IF ~~ THEN REPLY @974 /* ~Of course, my dear. Let's go.~ */
		DO ~
			
			StartCutSceneMode()
			StartCutScene("XAWLKHOM")
		~
		EXIT
	END
	//} #endregion

	//{ #region Rohma Kidnaped - Ducal Palace - Dialog J-11 - CC OK
	IF ~
		Global("XA_LC_RohmaKidnapped", "GLOBAL", 4)
	~ THEN BEGIN XA_NeedToGetRohma
		SAY @1055 /* ~What did the healers say? Is my father going to make it?~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_RohmaKidnapped", "GLOBAL", 5)
		~
		EXTERN XALIIA XA_NeedToGetRohmaChain
	END
	//} #endregion

	//{ #region Corwin Family Timer - Dialog J-18 - CC OK
	IF ~
		Global("XA_LC_CorwinNeedSeeFamily", "GLOBAL", 2)
		GlobalLT("XA_LC_CorwinMetFamily", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinFamilyTimer
		SAY @680 /* ~<CHARNAME> - I really need to see my family. My home is in the southeast part of the city. Let's go.~*/
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			GlobalLT("XA_LC_CorwinFamilyTimer_Hours", "GLOBAL", 4)
		~ THEN REPLY @1636 /* ~Soon, love.~ */
		DO ~
			SetGlobal("XA_LC_CorwinFamilyTimerTicked", "GLOBAL", 0)
			SetGlobalTimer("XA_LC_CorwinFamilyTimer", "GLOBAL", ONE_HOUR)
			SetGlobal("XA_LC_CorwinNeedSeeFamily", "GLOBAL", 0)
		~
		EXIT
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			GlobalLT("XA_LC_CorwinFamilyTimer_Hours", "GLOBAL", 4)
		~ THEN REPLY @1635 /* ~Soon, Captain.~ */
		DO ~
			SetGlobal("XA_LC_CorwinFamilyTimerTicked", "GLOBAL", 0)
			SetGlobalTimer("XA_LC_CorwinFamilyTimer", "GLOBAL", ONE_HOUR)
			SetGlobal("XA_LC_CorwinNeedSeeFamily", "GLOBAL", 0)
		~
		EXIT
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			!GlobalLT("XA_LC_CorwinFamilyTimer_Hours", "GLOBAL", 4)
		~ THEN REPLY @1636 /* ~Soon, love.~ */
		GOTO XA_SeeFamilyNow
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			!GlobalLT("XA_LC_CorwinFamilyTimer_Hours", "GLOBAL", 4)
		~ THEN REPLY @1635 /* ~Soon, Captain.~ */
		GOTO XA_SeeFamilyNow
		
		IF ~~ THEN REPLY @1637 /* ~Lead the way.~ */
		DO ~
			SetGlobal("XA_LC_CorwinNeedSeeFamily", "GLOBAL", 3)
			StartCutSceneMode()
			StartCutscene("XAGOHOME")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_SeeFamilyNow
		SAY @1638 /* ~You've been saying that for the last four hours. Either come with me now, or I'll see you tomorrow during the debriefing.~ */
		
		IF ~~ THEN REPLY @1639 /* ~See you tomorrow, then.~ */
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
			SetGlobal("XA_LC_CorwinNeedSeeFamily", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinWithFamily", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinMetFamily", "GLOBAL", 2)
			SetLeavePartyDialogFile()
			ChangeAIScript("", OVERRIDE)
			ChangeAIScript("",DEFAULT)
			LeaveParty()
			EscapeAreaMove("XAHOME",400,250,S) 
		~
		EXIT
		
		IF ~~ THEN REPLY @1637 /* ~Lead the way.~ */
		DO ~
			SetGlobal("XA_LC_CorwinNeedSeeFamily", "GLOBAL", 3)
			StartCutSceneMode()
			StartCutscene("XAGOHOME")
		~
		EXIT
	END
	//} #endregion

	//{ #region Corwin Family Timer Expired (Non-Romance) - Dialog J-19 - CC OK
	IF ~
		Global("XA_LC_CorwinLeaveForFamily", "GLOBAL", 1)
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN BEGIN XA_CorwinFamilyTimer_ExpiredNR
		SAY @903 /* ~<CHARNAME>, I'm going home to spend the rest of the day with my family. I'll see you tomorrow morning at the debriefing.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinLeaveForFamily", "GLOBAL", 2)
			SetGlobal("XA_LC_CorwinWithFamily", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinMetFamily", "GLOBAL", 2)
			SetLeavePartyDialogFile()
			ChangeAIScript("", OVERRIDE)
			ChangeAIScript("",DEFAULT)
			LeaveParty()
			EscapeAreaMove("XAHOME",400,250,S) 
		~
		EXIT
	END
	//} #endregion

	//{ #region Corwin Family Timer Expired (Romance) - Dialog J-20 - CC OK
	IF ~
		Global("XA_LC_CorwinLeaveForFamily", "GLOBAL", 1)
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN BEGIN XA_CorwinFamilyTimer_ExpiredRomance
		SAY @904 /* ~My love, I'm going home to spend the rest of the day with my family. Have you decided where you're staying tonight?~*/
		
		IF ~~ THEN REPLY @786 /* ~I'll stay at the Three Old Kegs tonight.~ */
		DO ~
			SetGlobal("XA_LC_StayingAtThreeOldKegs", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinLeaveForFamily", "GLOBAL", 2)
		~
		GOTO XA_SleepAtHotel
		
		IF ~~ THEN REPLY @789 /* ~I'll stay at the Blade and Stars tonight.~*/
		DO ~
			SetGlobal("XA_LC_StayingAtBladeAndStars", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinLeaveForFamily", "GLOBAL", 2)
		~
		GOTO XA_SleepAtHotel
		
		IF ~
			Global("XA_LC_SavedElfsong", "GLOBAL", 1)
		~ THEN REPLY @790 /* ~I'll stay at the Elfsong Tavern tonight.~*/
		DO ~
			SetGlobal("XA_LC_StayingAtElfsongTavern", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinLeaveForFamily", "GLOBAL", 2)
		~
		GOTO XA_SleepAtHotel
		
		IF ~~ THEN REPLY @791 /* ~I'll stay at the Blushing Mermaid tonight.~*/
		DO ~
			SetGlobal("XA_LC_StayingAtBlushingMermaid", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinLeaveForFamily", "GLOBAL", 2)
		~
		GOTO XA_SleepAtHotel
		
		IF ~~ THEN REPLY @905 /* ~I was hoping to spend the night at your place.~*/
		DO ~
			SetGlobal("XA_LC_CorwinLeaveForFamily", "GLOBAL", 2)
		~
		GOTO XA_WantToSpendWithSchael
		
	END
	IF ~~ THEN BEGIN XA_WantToSpendWithSchael
		SAY @731 /*~And I want you to, but now's not the right time...~*/
		= @730 /*~Having a famous hero around is handy, but it also seems to attract trouble.~ [XA100118]*/
		= @785 /* ~Besides, Rohma's going to need some time to adjust to us being together.~*/
		
		IF ~~ THEN REPLY @793 /* ~I understand.~ */
		GOTO XA_DecideWhereSleeping
	END
	IF ~~ THEN BEGIN XA_DecideWhereSleeping
		SAY @792 /* ~So, what'll it be?~ */
		
		IF ~~ THEN REPLY @786 /* ~I'll stay at the Three Old Kegs tonight.~ */
		DO ~
			SetGlobal("XA_LC_StayingAtThreeOldKegs", "GLOBAL", 1)
		~
		GOTO XA_SleepAtHotel
		
		IF ~~ THEN REPLY @789 /* ~I'll stay at the Blade and Stars tonight.~*/
		DO ~
			SetGlobal("XA_LC_StayingAtBladeAndStars", "GLOBAL", 1)
		~
		GOTO XA_SleepAtHotel
		
		IF ~
			Global("XA_LC_SavedElfsong", "GLOBAL", 1)
		~ THEN REPLY @790 /* ~I'll stay at the Elfsong Tavern tonight.~*/
		DO ~
			SetGlobal("XA_LC_StayingAtElfsongTavern", "GLOBAL", 1)
		~
		GOTO XA_SleepAtHotel
		
		IF ~~ THEN REPLY @791 /* ~I'll stay at the Blushing Mermaid tonight.~*/
		DO ~
			SetGlobal("XA_LC_StayingAtBlushingMermaid", "GLOBAL", 1)
		~
		GOTO XA_SleepAtHotel
	END

	IF ~~ THEN BEGIN XA_SleepAtHotel
		SAY @780 /*  ~Good. Come here. ~*/
		
		= @781 /* ~(You share a warm embrace and kiss.)~ */
		= @799 /* ~(She whispers in your ear.) I'll come see you in your room tonight, lover.~ */
		
		IF ~~ THEN REPLY @907 /* ~You'll do more than just see me, I hope.~ */
		DO ~
			SetGlobal("XA_LC_CorwinWithFamily", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinMetFamily", "GLOBAL", 2)
		~
		GOTO XA_SexTonight
	END

	IF ~~ THEN BEGIN XA_SexTonight
		SAY @908 /* ~(She laughs). Much more. See you later.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinSex_3", "GLOBAL", 1)
			SetLeavePartyDialogFile()
			ChangeAIScript("", OVERRIDE)
			ChangeAIScript("",DEFAULT)
			LeaveParty()
			EscapeAreaMove("XAHOME",400,250,S) 
		~
		EXIT
	END

	//} #endregion


	//{ #region Corwin Post Neoma Meeting - Dialog J-17 - CC OK
	IF ~
		Global("XA_LC_XACS15Cutscene", "GLOBAL", 6)
		//play romance song
	~ THEN BEGIN XA_CorwinNeoma
		SAY @726 /* ~Oh, Neoma...~ */
		
		IF ~
			Global("XA_LC_GaveEarrings", "GLOBAL", 1)
		~ THEN REPLY @1337 /* ~Her name sounds familiar... oh, right — the earrings for Voghiln!~ */
		DO ~
			SetGlobal("XA_LC_XACS15Cutscene", "GLOBAL", 7)
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		GOTO XA_CorwinNeoma2
		
		IF ~~ THEN REPLY @728 /* ~You two seem very... ah, friendly.~ */
		DO ~
			SetGlobal("XA_LC_XACS15Cutscene", "GLOBAL", 7)
		~
		GOTO XA_CorwinNeoma4
		
	END

	IF ~~ THEN BEGIN XA_CorwinNeoma2
		SAY @1338 /* ~Hah, I'm surprised you remember.~ */
		
		IF ~~ THEN REPLY @1339 /* ~As if I didn't hang on your every word, love.~ */
		GOTO XA_CorwinNeoma3
		
		IF ~~ THEN REPLY @1340 /* ~Beautiful earrings for an even more beautiful woman. I remember.~ */
		GOTO XA_CorwinNeoma2A
	END

	IF ~~ THEN BEGIN XA_CorwinNeoma2A
		SAY @1347 /* ~(She smiles)~ */
		= @1348 /* ~Sweet of you to say.~ */
		
		IF ~~ THEN 
		GOTO XA_CorwinNeoma3
	END

	IF ~~ THEN BEGIN XA_CorwinNeoma3
		SAY @1341 /* ~She was a little upset when I told her I gave them away, but when I explained why, she understood.~ */
		
		IF ~~ THEN REPLY @728 /* ~You two seem very... ah, friendly.~ */
		GOTO XA_CorwinNeoma4
		
		IF ~~ THEN REPLY @737 /* ~I'm glad you were able to see her again, love. Let's go.~ */
		EXIT
	END

	IF ~~ THEN XA_CorwinNeoma4
		SAY @739 /* ~Neoma and I are friends. Sometimes a little more than that, if you know what I mean. But you're the one I love, <CHARNAME>, not her.~ */
		
		IF ~~ THEN REPLY @745 /* ~I... see.~ */
		GOTO XA_CorwinNeoma5
		
		IF ~~ THEN REPLY @1342 /* ~Well... as long as your flings with her are a thing of the past...~ */
		GOTO XA_CorwinNeoma6
	END

	IF ~~ THEN XA_CorwinNeoma5
		SAY @740 /* ~Is my... friendship with Neoma going to be a problem? If so, I'll stop seeing her. I don't want anything to jeopardize the love that you and I have for oneanother.~*/
		
		IF ~~ THEN REPLY @741 /* ~I don't know, Schael. I've never been in any kind of long term relationship, before meeting you. It's hard for me to know what's healthy for a relationship and what isn't.~ */
		GOTO XA_CorwinNeoma5A
		
		IF ~~ THEN REPLY @742 /* ~It's not a problem, so long as you don't develop any serious feelings for her.~ */
		GOTO XA_CorwinNeoma5B
		
		IF ~~ THEN REPLY @743 /* ~Problem? No - in fact, I'm... ah... intrigued by some of the ... possibilities.~ */
		GOTO XA_CorwinNeoma5C
	END

	IF ~~ THEN XA_CorwinNeoma5A
		SAY @744 /* ~I understand. Thank you for being honest about your feelings, love. I'll tell Jessa that from now on, we are to be friends and nothing more. Let's go.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinNeomaRelationship", "GLOBAL", 1)
		~
		EXIT
	END

	IF ~~ THEN XA_CorwinNeoma5B
		SAY @746 /* ~And I won't. Thank you for being honest about your feelings, love. Let's go.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinNeomaRelationship", "GLOBAL", 1)
		~
		EXIT
	END

	IF ~~ THEN XA_CorwinNeoma5C
		SAY @748 /* ~Somehow, I knew you would be. I'll see if she's interested. Let's go.~ */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinNeomaRelationship", "GLOBAL", 2)
		~
		EXIT
	END

	IF ~~ THEN XA_CorwinNeoma6
		SAY @1343 /* ~They are. Come here.~ */
		= @1344 /* ~(You kiss and embrace).~ */
		= @1346 /* ~Let's not let any past relationships jeopardize our love for one another.~*/
		
		IF ~~ THEN REPLY @1345 /* ~Right. Thank you, Schael.~*/
		DO ~
			SetGlobal("XA_LC_CorwinNeomaRelationship", "GLOBAL", 1)
		~
		EXIT
	END
	//} #endregion

	//{ #region Corwin / Tianna Dialog J-15 - CC OK
	IF ~
		Global("XA_LC_ReturnToBG", "GLOBAL", 1)
		Global("XA_LC_AskCorwinAboutTianna", "GLOBAL", 1)
	~ THEN BEGIN XA_AskCorwinAboutTianna
		SAY @861 /* ~(You hear her muttering under her breath.)~ */
		
		IF ~~ THEN REPLY @148 /* ~(Leave her be.)~*/
		DO ~
			SetGlobal("XA_LC_AskCorwinAboutTianna", "GLOBAL", 2)
		~
		EXIT	
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @603 /* ~Something wrong?~*/
		DO ~
			SetGlobal("XA_LC_AskCorwinAboutTianna", "GLOBAL", 2)
		~
		GOTO XA_CorwinTianna2
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @838 /* ~My love... that name, Tianna - haven't you mentioned her to me before?~ */
		DO ~
			SetGlobal("XA_LC_AskCorwinAboutTianna", "GLOBAL", 2)
		~
		GOTO XA_CorwinTianna2
	END

	IF ~~ THEN BEGIN XA_CorwinTianna2
		SAY @839 /* ~Yes... Tianna and I were seeing eachother for a time. A very short time.~ */
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @840 /* ~I see... What happened? I mean, why did you two break up?~ */
		GOTO XA_CorwinTianna3
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1429 /* ~Well? Go on.~ */
		GOTO XA_CorwinTianna3
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @840 /* ~I see... What happened? I mean, why did you two break up?~ */
		GOTO XA_CorwinTianna3_END
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1429 /* ~Well? Go on.~ */
		GOTO XA_CorwinTianna3_END
	END

	IF ~~ THEN BEGIN XA_CorwinTianna3_END
		SAY @1430 /* ~Eh... forget I said anything. I know you have enough on your mind already. Let's go.~ */
		
		IF ~~ THEN 
		EXIT
	END

	IF ~~ THEN BEGIN XA_CorwinTianna3
		SAY @841 /* ~Tianna... is a user. She takes advantage of people, and their trust. The last straw was when she stole money from my family.~*/
		
		= @842 /* ~It wasn't much. If she had just asked me, I'd have given it to her. She thought she got away with it, but Rohma saw her.~ */
		= @843 /* ~When she told me what Tianna did, Tianna called Rohma a liar. Like a five year old could even think to lie about something like that.~ */
		
		IF ~~ THEN REPLY @844 /* ~You made the right decision.~ */
		GOTO XA_CorwinTianna4
		
		IF ~~ THEN REPLY @846 /* ~That's not someone I'd want around my child.~ */
		GOTO XA_CorwinTianna4
	END

	IF ~~ THEN BEGIN XA_CorwinTianna4
		SAY @845 /* ~I just wish I'd seen what she was earlier. ~ */

		IF ~~ THEN REPLY @847 /* ~It worked out in the end. You found someone better.~ */
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		GOTO XA_CorwinTianna5
	END

	IF ~~ THEN BEGIN XA_CorwinTianna5
		SAY @850 /* ~Much, much better. (She smiles.)~ */
		= @851 /* ~Come here.~ */
		= @848 /* ~(You share a warm embrace and kiss).~ */
		= @849 /* ~Let's go, love.~ */
		
		IF ~~ THEN EXIT
	END


	IF ~~ THEN BEGIN XA_CorwinWillHelpTianna
		SAY @862 /* ~Tianna... (sigh)~ */
		=@863 /* ~Fine - we'll help you. <CHARNAME> and I will talk to Jasper about forgiving your debt.~ */
		
		IF ~~ THEN EXTERN XATIANNA XA_CorwinHelpTianna
	END

	IF ~~ THEN BEGIN XA_CorwinLobarTiannaEnd
		SAY @860 /* ~No, that won't be necessary.~ */

		IF ~~ THEN EXIT
		
		IF ~
			InMyArea(Player1)
		~ THEN
		DO ~
			SetGlobal("XA_LC_AskCorwinAboutTianna", "GLOBAL", 1)
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_NotYetTianna
		SAY @864 /* ~We're working on it.~ */
		
		IF ~~ THEN EXTERN XATIANNA XA_HelpEnd
	END
	//} #endregion

	IF ~~ THEN BEGIN XA_Depart_Romance5
		SAY @780 /*  ~Good. Come here. ~*/
		
		= @781 /* ~(You share a warm embrace and kiss.)~ */
		= @799 /* ~(She whispers in your ear.) I'll come see you in your room tonight, lover.~ */
		
		= @798 /* ~Sweetie, come and say bye to <CHARNAME>.~ */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_CorwinNeedSeeFamily", "GLOBAL", 3)
			SetGlobal("XA_LC_CorwinWithFamily", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinMetFamily", "GLOBAL", 2)
			ChangeAIScript("", OVERRIDE)
			ChangeAIScript("", DEFAULT)
			SetLeavePartyDialogFile()
		~
		EXTERN XAROHMA XA_SayBye
	END

	IF ~~ THEN BEGIN XA_CorwinMadXANOBLW1
		SAY @819 /* ~I see. Come with me to the Flaming Fist headquarters. I'm sure Duke Eltan would appreciate hearing how much of a fool he is for allowing <CHARNAME> back into the city.~ */
		
		IF ~
			RandomNum(2,1)
		~ THEN
		EXTERN XANOBLW XA_CorwinMadXANOBLW1
		
		IF ~
			RandomNum(2,2)
		~ THEN
		EXTERN XANOBLW XA_CorwinMadXANOBLW2
	END

	IF ~~ THEN BEGIN XA_CorwinMadXANOBLW2
		SAY @820 /* ~Is that so? Duke Entar would love to hear more of your wisdom, citizen. Come with me. Now.~ */
		
		IF ~
			RandomNum(2,1)
		~ THEN
		EXTERN XANOBLW XA_CorwinMadXANOBLW1
		
		IF ~
			RandomNum(2,2)
		~ THEN
		EXTERN XANOBLW XA_CorwinMadXANOBLW2
	END

	IF ~~ THEN BEGIN XA_CorwinMadXANOBLW3
		SAY @821 /* ~Mind your tone, citizen! In disparaging <CHARNAME>, you disrespect the Council who has exonerated <PRO_HIMHER>!~*/
		
		IF ~
			RandomNum(2,1)
		~ THEN 
		EXTERN XANOBLW XA_CorwinMadXANOBLW1
		
		IF ~
			RandomNum(2,2)
		~ THEN 
		EXTERN XANOBLW XA_CorwinMadXANOBLW2
	END

	IF ~~ THEN BEGIN XA_CorwinMadXANOBLW4
		SAY @822 /* ~The Dukes have proclaimed <CHARNAME>'s innocence. Do you mean to imply that they're mistaken?~*/
		
		IF ~
			RandomNum(2,1)
		~ THEN
		EXTERN XANOBLW XA_CorwinMadXANOBLW1
		
		IF ~
			RandomNum(2,2)
		~ THEN
		EXTERN XANOBLW XA_CorwinMadXANOBLW2
	END

	IF ~~ THEN BEGIN XA_MeetGlint
		SAY @1218  /* ~Hmph. Just try and stay out of trouble.~*/
		
		IF ~~ THEN
		EXTERN XAGLINT XA_Bye
	END

	IF ~~ THEN BEGIN XA_CorwinMadXANOBLM1
		SAY @819 /* ~I see. Come with me to the Flaming Fist headquarters. I'm sure Duke Eltan would appreciate hearing how much of a fool he is for allowing <CHARNAME> back into the city.~ */
		
		IF ~
			RandomNum(2,1)
		~ THEN 
		EXTERN XANOBLM XA_CorwinMadXANOBLM1
		
		IF ~
			RandomNum(2,2)
		~ THEN 
		EXTERN XANOBLM XA_CorwinMadXANOBLM2
	END

	IF ~~ THEN BEGIN XA_CorwinMadXANOBLM2
		SAY @820 /* ~Is that so? Duke Entar would love to hear more of your wisdom, citizen. Come with me. Now.~ */
		
		IF ~
			RandomNum(2,1)
		~ THEN 
		EXTERN XANOBLM XA_CorwinMadXANOBLM1
		
		IF ~
			RandomNum(2,2)
		~ THEN 
		EXTERN XANOBLM XA_CorwinMadXANOBLM2
	END

	IF ~~ THEN BEGIN XA_CorwinMadXANOBLM3
		SAY @821 /* ~Mind your tone, citizen! In disparaging <CHARNAME>, you disrespect the Council who has exonerated <PRO_HIMHER>!~*/
		
		IF ~
			RandomNum(2,1)
		~ THEN 
		EXTERN XANOBLM XA_CorwinMadXANOBLM1
		
		IF ~
			RandomNum(2,2)
		~ THEN 
		EXTERN XANOBLM XA_CorwinMadXANOBLM2
	END

	IF ~~ THEN BEGIN XA_CorwinMadXANOBLM4
		SAY @822 /* ~The Dukes have proclaimed <CHARNAME>'s innocence. Do you mean to imply that they're mistaken?~*/
		
		IF ~
			RandomNum(2,1)
		~ THEN 
		EXTERN XANOBLM XA_CorwinMadXANOBLM1
		
		IF ~
			RandomNum(2,2)
		~ THEN 
		EXTERN XANOBLM XA_CorwinMadXANOBLM2
	END

	IF ~~ THEN BEGIN XA_CorwinMadEnd1
		SAY @817 /* ~Good. I better not that hear that foolishness from you again.~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinScoldTownsperson", "LOCALS", 1)
		~	
		EXIT
	END

	IF ~~ THEN BEGIN XA_SeeRohmaLater
		SAY @876 /* ~I'll see you soon, sweetie.~ */
		
		IF ~~ THEN
		EXIT
		
		IF ~
			OR(2)
				IsValidForPartyDialogue("Aerie")
				IsValidForPartyDialogue("Valygar")
		~ THEN
		DO ~
			SetGlobal("XA_LC_AVComplimentFamily", "GLOBAL", 1)
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_CorwinMadEnd2
		SAY @818 /* ~Good. That's what I thought.~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinScoldTownsperson", "LOCALS", 1)
		~	
		EXIT
	END

	IF ~~ THEN BEGIN XA_CorwinMadEnd3
		SAY @815 /* ~Good. You'd be well served to keep your tongue on a short leash.~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_CorwinScoldTownsperson", "LOCALS", 1)
		~	
		EXIT
	END

	IF ~~ THEN BEGIN XA_HarborCorwinChainEnd
		SAY @811 /*~Thank you for your cooperation.~ */  
		
		= @812 /* ~Hmm.. <CHARNAME>, look. The manifests identify the company as Winston Ventures, but the contents are encoded.~ */	
		
		IF ~
			!Dead("Alatos")
		~ THEN GOTO XA_HarborCorwinTG
		
		IF ~
			Dead("Alatos")
		~ THEN GOTO XA_HarborCorwinWV	
	END

	IF ~~ THEN BEGIN XA_HarborCorwinTG
		SAY @813 /* ~We should pay a visit to the Thieves' Guild. They may know how to decode them.~ */

		IF ~~ THEN REPLY @814 /* ~Right. Let's go.~*/
		DO ~
			AddJournalEntry(@823, INFO)
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_HarborCorwinWV
		SAY @833 /* ~Let's pay this company Winston Ventures a visit. We might be able to find a way to decode the manifests.~ */

		IF ~~ THEN REPLY @814 /* ~Right. Let's go.~*/
		DO ~
			AddJournalEntry(@834, INFO)
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_ThiefGuildEntry
		SAY @835 /* ~We're here on Flaming Fist business. Let us through.~ */
		IF ~~ THEN EXTERN xaa164 XAA2B // thiefg
	END

	IF ~~ THEN BEGIN XA_KerracQuestioning
		SAY @836 /* ~Tina Bennett - <CHARNAME>, that's the name of the child that we rescued in Athkatla.~ */
		
		IF ~~ THEN REPLY @837 /* ~That's right - Kerrachus, do you know anything else that might help?~ */
		EXTERN XAKERRAC XA_KerracQuestioningEnd
	END

	IF ~~ THEN BEGIN XA_JasperCorwin
		SAY @853 /* ~We're here on behalf of Tianna.~ */
		
		IF ~~ THEN EXTERN XAJASPER XA_TiannaDebt3 //OK
	END

	IF ~~ THEN BEGIN XA_AlatosNothing
		SAY @867 /* ~Nothing, at least for now.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN XA_ThankAlatos1
		SAY @865 /* ~Makes sense. Thanks for the help.~*/
		IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN XA_ThankAlatos2
		SAY @866 /* ~Thanks for the help.~*/
		IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN XA_ThankAlatos3
		SAY @915 /* ~Very good. This is exactly what we need to prove Winston's guilt. <CHARNAME>, let's take this to Marshal Nederlok.~*/
		IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN XA_CorwinLobar
		SAY @859 /* ~Is Tianna working?~  */
		
		IF ~~ THEN EXTERN xaa231 XA_LobarTianna // lobar
	END

	IF ~~ THEN BEGIN XA_GreetMommyA2
		SAY @878 /* ~I love you too honey. I'll be back soon, I promise.~ */
		IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN XA_GreetMommyB2
		SAY @879 /* ~Oh, Rohma... I hope so. We'll see.~ */
		IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN XA_RohmaKidnapped2B
		SAY @984/* ~Oh, Gods! <CHARNAME>, I can't pull the spike or he'll bleed out!~*/
		
		IF ~~ THEN REPLY @995 /* ~Stay with your father. I'll get help. Hang in there, Audamar!~*/
		DO ~
			SetGlobal("XA_LC_RohmaKidnapped", "GLOBAL", 3)
			StartCutsceneMode()
			StartCutscene("XAKIDN01")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_RohmaKidnapped5ChainEnd
		SAY @1010 /* ~No! Forgive me sir, but you saw the letter. I can't risk my daughter being harmed.~ */
		
		IF ~~ THEN REPLY @1013 /* ~Schael is right. We need to go after them, alone.~ */
		GOTO XA_GoWithSchael
		
		IF ~~ THEN REPLY @1014 /* ~I'll go after them, alone.~ */
		GOTO XA_GoAlone
	END

	IF ~~ THEN BEGIN XA_GoWithSchael
		SAY @1033 /* ~What are we waiting for, then!? Let's go!~*/
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1031 /* ~Schael, I want you by my side, but not if you're emotionally compromised. The risk would be too great.~ */
		GOTO XA_CalmDown
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1032 /* ~Schael, if you're to come with me, I need you calm, cool and collected - for Rohma's sake. Can I count on you?~ */
		GOTO XA_CalmDown
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1016 /* ~Schael, I want you by my side, but not if you're emotionally compromised. The risk would be too great.~ */
		GOTO XA_CalmDown
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1017 /* ~Schael, if you're to come with me, I need you calm, cool and collected - for Rohma's sake. Can I count on you?~ */
		GOTO XA_CalmDown
	END


	IF ~~ THEN BEGIN XA_WYRM_1
		SAY @674 /* ~Thank you, sir.~ */
		
		IF ~~ THEN
		EXTERN XANEDERL XA_WYRM_2
	END


	IF ~~ THEN BEGIN XA_WYRM_7 //OK
		SAY @675 /* ~Yes, sir.~*/
		
		IF ~~ THEN REPLY @762 /* ~Thank you, Marshal Nederlok.~ */
		EXTERN XANEDERL XA_WYRM_8
		
		IF ~
			Global("XA_LC_BGSlaverPlot", "GLOBAL", 1)
		~ THEN REPLY @763 /* ~Thank you - before you leave, I found some evidence of slaver activity in Baldur's Gate while we were in Athkatla.~ */
		EXTERN XANEDERL XA_NEDERL_SlaverPlot2
		
	END

	IF ~~ THEN BEGIN XA_NEDERL_SlaverPlot //OK
		SAY @675 /* ~Yes, sir.~*/
		
		= @758 /* Sir, before you leave - while <CHARNAME> and I were in Athkatla, we found evidence of slaver activity in Baldur's Gate.~ */
		
		IF ~~ THEN
		EXTERN XANEDERL XA_NEDERL_SlaverPlot2
	END

	IF ~~ THEN BEGIN XA_NEDERL_SlaverPlot3
		SAY @759 /* ~We encountered a large number of refugees from Caelar's crusade who were shipped out of Baldur's Gate to Athkatla.~ */
		
		= @760 /* ~They were told that they were being moved to new homes in other cities. Instead, when they arrived in Athkatla, the children were separated from their parents and sold to slavers. We weren't able to find the parents, though we did free the children from their captors.~ */
		
		IF ~~ THEN
		EXTERN XANEDERL XA_NEDERL_SlaverPlot4
	END

	IF ~~ THEN BEGIN XA_NebNederlokSewers
		SAY @1573 /*~Sir, pardon the interruption, but we discovered the fugitive Neb hiding in the sewers beneath the city. I'm pleased to inform you that he's been brought to justice.~*/

		IF ~~ THEN
		EXTERN XANEDERL XA_NebNederlokSewers2
	END

	IF ~~ THEN BEGIN XA_NebNederlokSewers3
		SAY @1580 /*Sir?*/
		
		IF ~~ THEN
		EXTERN XANEDERL XA_NebNederlokSewers4
	END

	IF ~~ THEN BEGIN XA_NebNederlokSewers5
		SAY @1622 /*~Thank you, sir.~*/
		
		IF ~~ THEN
		EXTERN XANEDERL XA_NebNederlokSewers6
	END

	IF ~~ THEN BEGIN XA_NebNederlokSewers7
		SAY @1580 /*~Sir?~*/
		
		IF ~~ THEN
		EXTERN XANEDERL XA_NebNederlokSewers8
	END

	IF ~~ THEN BEGIN XA_NebNederlokSewers9
		SAY @1610 /*~Um... yes sir. Sorry, sir.~*/
		
		IF ~~ THEN
		DO ~
			AddJournalEntry(@1796, INFO)
			AddExperienceParty(100000)
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_NebNederlok
		SAY @1397 /*~Sir, before you depart —~*/
		
		IF ~~ THEN 
		EXTERN XANEDERL XA_NebNederlok2
	END

	IF ~~ THEN BEGIN XA_NebNederlok3
		SAY @1403 /*~While in Athkatla, we located the fugitive, Neb. I'm pleased to inform you that he's been brought to justice.~*/
		
		IF ~~ THEN 
		EXTERN XANEDERL XA_NebNederlok4
	END

	IF ~~ THEN BEGIN XA_NebNederlok3A
		SAY @1399 /* ~Of course, sir. Also, while in Athkatla, we encountered the fugitive Neb. I'm pleased to inform you that he's been brought to justice.~*/
		
		IF ~~ THEN 
		EXTERN XANEDERL XA_NebNederlok4
	END

	IF ~~ THEN BEGIN XA_NebNederlok5
		SAY @1400 /*~It'll be ready in the morning, sir.~*/
		
		IF ~~ THEN 
		EXTERN XANEDERL XA_NebNederlok6
	END

	IF ~~ THEN BEGIN XA_WYRM_NEDERL_END
		SAY @675 /* Yes, sir. */
		
		IF ~~ THEN 
		EXTERN XANEDERL XA_WYRM_8
	END

	IF ~~ THEN BEGIN XA_BenceWyrm_2
		SAY @676 /* ~Corporal, I trust all is well with you? How is Skie?~*/
		
		IF ~~ THEN
		EXTERN XABENCE XA_BenceWyrm_3 //OK
	END

	IF ~~ THEN BEGIN XA_BenceWyrm_4
		SAY @677 /* ~Changed? In what way?~*/
		
		IF ~~ THEN
		EXTERN XABENCE XA_BenceWyrm_5 //OK
	END

	IF ~~ THEN BEGIN XA_BenceWyrm_6
		SAY @678 /* ~Understood. <CHARNAME>, let's head in. We'll stop at my place first. It's in the southeast part of the city.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobalTimer("XA_LC_CorwinFamilyTimer", "GLOBAL", ONE_HOUR)
			SetGlobal("XA_LC_ReturnToBG", "GLOBAL", 1)
			EndCutSceneMode()
		~
		EXIT
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			GlobalLT("XA_LC_GaveDoll", "GLOBAL", 1)
		~
		THEN GOTO XA_GetRohmaGift
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			!Global("XA_LC_MetRohma", "GLOBAL", 1)
		~ 
		THEN GOTO XA_FirstMeetingRohma
	END

	IF ~~ THEN BEGIN XA_GetRohmaGift
		SAY @715 /* ~(You think to yourself that it's been a while since you've seen Schael's family. It may be worthwhile stopping at one of the General Stores and getting a gift for her daughter.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_Journal_RohmaGift_0", "GLOBAL", 1)
			SetGlobalTimer("XA_LC_CorwinFamilyTimer", "GLOBAL", ONE_HOUR)
			SetGlobal("XA_LC_WantToGetDoll", "GLOBAL", 1)
			EndCutSceneMode()
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_FirstMeetingRohma
		SAY @713 /* ~(You think to yourself that this is the first time you'll have met Schael's family. You want to make a good impression. It may be worthwhile stopping at one of the General Stores in the city to see if you can find a gift for her daughter.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_Journal_RohmaGift_0A", "GLOBAL", 1)
			SetGlobalTimer("XA_LC_CorwinFamilyTimer", "GLOBAL", ONE_HOUR)
			SetGlobal("XA_LC_WantToGetDoll", "GLOBAL", 1)
			EndCutSceneMode()
		~
		EXIT
	END



	IF ~~ THEN BEGIN XA_NotMetFamily
		SAY @679 /* ~No - I still need to see my family.~ */
		
		IF ~~ THEN
		EXIT
	END

	IF ~~ THEN BEGIN XA_CorwinFamilyReunite4
		SAY @693 /* ~Gods, where does the time go?~ */
		
		IF ~~ THEN
		GOTO XA_CorwinFamilyReuniteSwitch
		
		IF ~
			Global("XA_LC_DingsRohma", "GLOBAL", 1)
		~ THEN
		GOTO XA_DingsRohma
		
		IF ~
			Global("XA_LC_CorwinWonTM", "GLOBAL", 1)
		~
		GOTO XA_CorwinFamilyReuniteTM
	END

	IF ~~ THEN BEGIN XA_DingsRohma
		SAY @1833  /* ~Rohma, look what <CHARNAME> brought for you!~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_DingsRohma", "GLOBAL", 2)
			CreateCreature("XADINGS", [-1.-1], N)
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_WYRM_VALYGAR
		SAY @710 /* ~Sir, allow me to introduce you to Valygar. He's a ranger from Amn who has expressed interest in joining the Flaming Fist. I know that he'd make a great addition to our team.~ */
		
		IF ~~ THEN
		EXTERN XANEDERL XA_WYRM_VALYGAR2
	END

	IF ~~ THEN BEGIN XA_WYRM_6A
		SAY @711 /* Yes, sir. */
		
		IF ~~ THEN
		EXTERN XANEDERL XA_WYRM_6B
	END

	IF ~~ THEN BEGIN XA_CorwinFamilyReunite3A3
		SAY @712 /* ~Rohma!~ */
		
		IF ~~ THEN
		EXTERN XAROHMA XA_CorwinFamilyReunite3A4A1
		
		IF ~
			!PartyHasItem("XARDOLL")
		~ THEN
		EXTERN XAROHMA XA_CorwinFamilyReunite3A4B
	END

	IF ~~ THEN BEGIN XA_CorwinFamilyReunite3A4A3
		SAY @714 /* ~What do you say, Rohma?~*/
		
		IF ~~ THEN
		EXTERN XAROHMA XA_CorwinFamilyReunite3A4A4
	END

	IF ~~ THEN BEGIN XA_CorwinFamilyReuniteSwitch
		SAY @769 /* ~(She turns to you.)~ */
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_Depart_NonRomance
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_Depart_Romance	
	END

	IF ~~ THEN BEGIN XA_Depart_NonRomance
		SAY @770 /* ~<CHARNAME>, I'm going to spend the rest of the day with my family. Take some time for yourself - I'm sure you have a lot of faces that you want to see. I'll see you tomorrow morning at the debriefing.~ */
		
		IF ~~ THEN REPLY @782 /* ~You definitely deserve some quality time with them.~*/
		GOTO XA_Depart_NonRomance2
		
		IF ~~ THEN REPLY @788 /* ~Sounds good. You certainly have a lot of catching up to do.~*/
		GOTO XA_Depart_NonRomance2
	END

	IF ~~ THEN BEGIN XA_Depart_NonRomance2
		SAY @798 /* Sweetie, come and say bye to <CHARNAME>.~ */
		
		IF ~~ THEN 
		DO ~
			ChangeAIScript("", OVERRIDE)
			ChangeAIScript("", DEFAULT)
			SetLeavePartyDialogFile()
		~
		EXTERN XAROHMA XA_SayBye
	END

	IF ~~ THEN BEGIN XA_Depart_Romance
		SAY @868 /* ~My love - I imagine you have some people and places that you want to see. Do you want me to come with you?~ */

		IF ~~ THEN REPLY @870 /* ~I'd rather you stay here and enjoy some quality time with your family. You've earned it.~ */
		EXTERN XAROHMA XA_RohmaTaunt1A
		
		IF ~~ THEN REPLY @869 /* ~Of course, but just for a couple of hours. You and your family deserve to spend some time with eachother.~ */
		EXTERN XAROHMA XA_RohmaTaunt1B	
	END

	IF ~~ THEN BEGIN XA_RohmaTaunt2A
		SAY @794 /* ~Rohma, honey - ~ */
		IF ~~ THEN
		EXTERN XAROHMA XA_RohmaTaunt3A
	END

	IF ~~ THEN BEGIN XA_RohmaTaunt2B
		SAY @794 /* ~Rohma, honey - ~ */
		IF ~~ THEN
		EXTERN XAROHMA XA_RohmaTaunt3B
	END

	IF ~~ THEN BEGIN XA_RohmaTaunt4A
		SAY @777 /* ~Rohma! That's enough!~ */
		
		= @795 /* ~I'm sorry, she's not normaly this excited.~ */
		
		IF ~~ THEN REPLY @796 /* ~Hahah, no need to apologize.~ */
		GOTO XA_Depart_Romance2
		
		IF ~~ THEN REPLY @797 /* ~She's just glad to see her mommy again.~*/
		GOTO XA_Depart_Romance2
	END

	IF ~~ THEN BEGIN XA_RohmaTaunt4B
		SAY @777 /* ~Rohma! That's enough!~ */
		
		= @795 /* ~I'm sorry, she's not normaly this excited.~ */
		
		IF ~~ THEN REPLY @796 /* ~Hahah, no need to apologize.~ */
		GOTO XA_Depart_RohmaChain
		
		IF ~~ THEN REPLY @797 /* ~She's just glad to see her mommy again.~*/
		GOTO XA_Depart_RohmaChain
	END

	IF ~~ THEN BEGIN XA_Depart_Romance2
		SAY @778 /*  ~So, where are you planning to stay tonight?~ */
		
		IF ~~ THEN REPLY @786 /* ~I'll stay at the Three Old Kegs tonight.~ */
		DO ~
			SetGlobal("XA_LC_StayingAtThreeOldKegs", "GLOBAL", 1)
		~
		GOTO XA_Depart_Romance5
		
		IF ~~ THEN REPLY @789 /* ~I'll stay at the Blade and Stars tonight.~*/
		DO ~
			SetGlobal("XA_LC_StayingAtBladeAndStars", "GLOBAL", 1)
		~
		GOTO XA_Depart_Romance5
		
		IF ~
			Global("XA_LC_SavedElfsong", "GLOBAL", 1)
		~ THEN REPLY @790 /* ~I'll stay at the Elfsong Tavern tonight.~*/
		DO ~
			SetGlobal("XA_LC_StayingAtElfsongTavern", "GLOBAL", 1)
		~
		GOTO XA_Depart_Romance5
		
		IF ~~ THEN REPLY @791 /* ~I'll stay at the Blushing Mermaid tonight.~*/
		DO ~
			SetGlobal("XA_LC_StayingAtBlushingMermaid", "GLOBAL", 1)
		~
		GOTO XA_Depart_Romance5
		
		IF ~~ THEN REPLY @783 /* ~I was hoping to spend the night here, with you.~*/
		GOTO XA_Depart_Romance3
	END

	IF ~~ THEN BEGIN XA_Depart_Romance3
		SAY @785 /* ~And I want you to, but first, Rohma's going to need some time to adjust to us being together.~*/
		
		IF ~~ THEN REPLY @793 /* ~I understand.~ */
		GOTO XA_Depart_Romance4
	END

	IF ~~ THEN BEGIN XA_Depart_Romance4
		SAY @792 /* ~So, what'll it be?~*/
		
		IF ~~ THEN REPLY @786 /* ~I'll stay at the Three Old Kegs tonight.~ */
		DO ~
			SetGlobal("XA_LC_StayingAtThreeOldKegs", "GLOBAL", 1)
		~
		GOTO XA_Depart_Romance5
		
		IF ~~ THEN REPLY @789 /* ~I'll stay at the Blade and Stars tonight.~*/
		DO ~
			SetGlobal("XA_LC_StayingAtBladeAndStars", "GLOBAL", 1)
		~
		GOTO XA_Depart_Romance5
		
		IF ~
			Global("XA_LC_SavedElfsong", "GLOBAL", 1)
		~ THEN REPLY @790 /* ~I'll stay at the Elfsong Tavern tonight.~*/
		DO ~
			SetGlobal("XA_LC_StayingAtElfsongTavern", "GLOBAL", 1)
		~
		GOTO XA_Depart_Romance5
		
		IF ~~ THEN REPLY @791 /* ~I'll stay at the Blushing Mermaid tonight.~*/
		DO ~
			SetGlobal("XA_LC_StayingAtBlushingMermaid", "GLOBAL", 1)
		~
		GOTO XA_Depart_Romance5
	END
	
	IF ~~ THEN BEGIN XA_DontNeedRing
		SAY @1130 /* ~That won't be necessary. We only need the one.~ */
		
		IF ~~ THEN REPLY @1131 /* ~Schael is right. Once Rohma is safe, we'll put an end to Illasera, Beno, and anyone else that had a part in the kidnapping.~ */
		EXTERN XANEDERL XA_DontNeedRing

	END

	IF ~~ THEN XA_MeetSkie3A
		SAY @910 /* ~Skie, listen to me - put the dagger down, slowly.~ [XACORJ19]*/ 
		
		IF ~~ THEN REPLY @912 /* ~Do as she says, Skie.~ */
		EXTERN XASKIE XA_MeetSkie4
		
		IF ~~ THEN REPLY @911 /* ~Put that damned dagger away Skie. It's gotten me into enough trouble already!~  */
		EXTERN XASKIE XA_MeetSkie4
	END

	IF ~~ THEN BEGIN XA_TakeFarseer
		SAY @703 /* ~The individual responsible has been arrested.~ */
		
		IF ~~ THEN
		EXTERN XABELAND XA_TakeFarseer2
	END

	IF ~~ THEN BEGIN XA_NotPaying
		SAY @1370 /* ~We're not paying for stolen merchandise, gnome. Hand it over, or I'll have you arrested.~*/
		
		IF ~~ THEN 
		EXTERN XABREVLK XA_GiveItToMe
	END

	IF ~~ THEN BEGIN XA_ArrestBrevlik
		SAY @1371 /* ~Not so fast. You're under arrest for grand larceny.~ */
		
		IF ~~ THEN
		DO ~
			StartCutSceneMode()
			SetGlobal("XA_LC_BrevlikArrested", "GLOBAL", 1)
			StartCutScene("XAARREST")
		~
		EXIT
		
		IF ~
			Global("XA_LC_StoleFarseer", "GLOBAL", 1)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1372 /* ~If you arrest him, you'll have to arrest me too, love.~*/
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
		GOTO XA_ArrestBrevlik_Mad
		
		IF ~
			Global("XA_LC_StoleFarseer", "GLOBAL", 1)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @583 /* ~(Keep quiet.)~*/
		DO ~
			StartCutSceneMode()
			SetGlobal("XA_LC_BrevlikArrested", "GLOBAL", 1)
			StartCutScene("XAARREST")
		~
		EXIT
		
		IF ~
			Global("XA_LC_StoleFarseer", "GLOBAL", 1)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @689 /* ~If you arrest him, you'll have to arrest me too, Captain.~*/
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
		GOTO XA_ArrestBrevlik_Mad
		
		IF ~
			Global("XA_LC_StoleFarseer", "GLOBAL", 1)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @583 /* ~(Keep quiet.)~*/
		DO ~
			StartCutSceneMode()
			SetGlobal("XA_LC_BrevlikArrested", "GLOBAL", 1)
			StartCutScene("XAARREST")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_ArrestBrevlik_Mad
		SAY @580 /*  ~(She turns, and looks at you with disappointment.)~*/
		
		= @579 /* ~Fine. But you and I are going to have a long talk about this.~ */
		
		= @581 /* ~You — gnome! Get out of here before I change my mind!~ */
		
		= @582 /* ~(She delivers a swift kick to his behind.)~ */
		
		IF ~~ THEN EXTERN 
		XABREVLK XA_GetOut
	END
	
	IF ~~ THEN BEGIN XA_SchaelBelievesTianna
		SAY @1834 /* ~She's lied to me before, but this time I think she's telling truth. I'd like for us to help her, but it's your decision.~ */

		IF ~~ THEN REPLY @1835 /* ~Very well. Tianna - tell me, where is this Jasper fellow? Perhaps I can talk him into forgiving your debt.~ */
		EXTERN XATIANNA XA_HelpTianna

		IF ~~ THEN REPLY @1836 /* ~I'm afraid it's not my problem.~*/
		EXTERN XATIANNA XA_WontHelp
	END
	
	IF ~~ THEN BEGIN XA_MeetMelkor5B6
		SAY @913 /* ~<CHARNAME>... the caves beneath Dragonspear, remember? We encountered a rift into the Fugue plane. Hephernaan's acolytes were performing some sort of ritual there.~*/
		
		IF ~~ THEN EXTERN XAMELKOR XA_MeetMelkor5B7
	END

	IF ~~ THEN BEGIN XA_MeetMelkor5C2
		SAY @914 /* ~Catatonia? But... we were told she'd made a full recovery.~ */
		
		IF ~~ THEN EXTERN XAMELKOR XA_MeetMelkor5C3
	END
	
	IF ~~ THEN BEGIN XA_GiveMedal2A
		SAY @690 /* As am I, sir. */
		
		IF ~~ THEN REPLY @767 /* ~And so am I. Thank you, both.~ */
		EXTERN XANEDERL XA_GiveMedal3
	END
	
	IF ~~ THEN BEGIN XA_GoAlone
		SAY @1015 /* ~I can't let you do that!~ */
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1031 /* ~My love, I want you by my side, but not if you're emotionally compromised. The risk to Rohma would be too great.~*/
		GOTO XA_CalmDown
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1032 /* ~Schael, if you're to come with me, I need you calm, cool and collected - for Rohma's sake. Can I count on you?~ */
		GOTO XA_CalmDown
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1016 /* ~Schael, I want you by my side, but not if you're emotionally compromised. The risk would be too great.~ */
		GOTO XA_CalmDown
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1017 /* ~Schael, if you're to come with me, I need you calm, cool and collected - for Rohma's sake. Can I count on you?~ */
		GOTO XA_CalmDown
	END

	IF ~~ THEN BEGIN XA_CalmDown
		SAY @1018 /* ~You're right... I'm letting my emotions get the better of me. I need to focus. For Rohma.~ */
		
		IF ~~ THEN 
		GOTO XA_ReadyToGetRohma
		
		IF ~
			Global("XA_LC_BreathingExercise", "GLOBAL", 1)
		~ THEN GOTO XA_CalmDown_Rasaad
	END

	IF ~~ THEN BEGIN XA_CalmDown_Rasaad
		SAY @1030 /* ~(She begins to slowly breathe in, and out. You recognize this as the breathing exercise that Rasaad taught her.)~  */
		IF ~~ THEN GOTO XA_ReadyToGetRohma
	END

	IF ~~ THEN BEGIN XA_ReadyToGetRohma
		SAY @1020 /* ~I'm ready, <CHARNAME>. You can count on me, I promise you.~ */
		
		IF ~~ THEN REPLY @1021 /* ~Good. Let's go get Rohma.~ */
		EXTERN XANEDERL XA_ReadyToGetRohmaEnd
	END
	
	IF ~~ THEN BEGIN XA_HOW_WhyNot
		SAY @1377 /* ~Excuse us, ma'am.~ */
		
		= @1378 /* ~(She pulls you aside.)~ */
		
		= @1379 /* ~What's the problem? They're orphans — they have nothing. A few words from you could at least give them some inspiration.~ */
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @1380 /* ~Public speaking isn't my forte... but I'll do it for you, dear.~ */
		GOTO XA_StartHOWCutscene2 
		
		IF ~~ THEN REPLY @1381 /* ~If it's just a few words, then fine.~ */
		GOTO XA_StartHOWCutscene2
		
	END
	IF ~~ THEN BEGIN XA_StartHOWCutscene
		SAY @1376 /* ~Lead the way, Curator Magda.~ */
		
		IF ~~ THEN
		DO ~
			StartCutsceneMode()
			StartCutscene("XACSHOW")
			EndCutSceneMode()
		~
		EXIT
	END
	IF ~~ THEN BEGIN XA_StartHOWCutscene2
		SAY @1382 /* ~That's better. Lead the way, Curator Magda.~*/
		
		IF ~~ THEN
		DO ~
			StartCutsceneMode()
			StartCutscene("XACSHOW")
			EndCutSceneMode()
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_AlythReport
		SAY @1426 /* ~Ma'am, did you report these disappearances to the Flaming Fist?~ */
		
		IF ~~ THEN
		EXTERN XAALYTH XA_ReportToFF
	END
	
	IF ~~ THEN BEGIN XA_XANEB_1
		SAY @1553 /* ~I don't believe it! <CHARNAME>, this is Neb! He's wanted for the murder of more than two dozen children!~ */
		
		= @9 /* ~Neb! By order of the Flaming Fist you are under arrest!~ [XA100089] */
		
		IF ~~ THEN 
		EXTERN XANEB XA_XANEB_2
	END

	IF ~~ THEN BEGIN XA_XANebFight
		SAY @487  /* ~You threaten my daughter? You just made your last mistake!~ [BD39668] */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_NebRohma", "GLOBAL", 1)
			SetGlobal("XA_LC_NebFight", "GLOBAL", 1)
			ActionOverride("XANEB", Enemy())
		~
		EXIT

	END
	
	IF ~
		Global("XA_LC_TroubleTalk", "GLOBAL", 1)
	~ THEN BEGIN XA_TroubleTalk
		SAY @1839 /* ~Heh... the joys of parenthood.~*/
		
		IF ~~ THEN REPLY @1843 /* ~Boys will be boys, I suppose.~*/
		GOTO XA_TroubleTalk2
		
		IF ~~ THEN REPLY @1842 /* ~If you say so.~*/
		GOTO XA_TroubleTalk2
		
		IF ~~ THEN REPLY @1840 /*~Think they learned their lesson?~ */
		GOTO XA_TroubleTalk2
	END
	
	IF ~~ THEN BEGIN XA_TroubleTalk2
		SAY @1841 /*~They seem like good kids. I'm sure from now on they'll be on their best behavior.~  */
		
		= @1844 /* ~I'm just glad things turned out as well as they did. It could have been a lot worse. I'll have the Fist wizards properly ward the tower so that this doesn't happen again.~ */
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		GOTO XA_TroubleTalk3A
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		GOTO XA_TroubleTalk3B
	END
	
	IF ~~ THEN BEGIN XA_TroubleTalk3A
		SAY @1845 /* ~Let's go, love.~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_TroubleTalk", "GLOBAL", 2)
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 2)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_TroubleTalk3B
		SAY @1846 /* ~Let's go.~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_TroubleTalk", "GLOBAL", 2)
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 2)
		~
		EXIT
	END
END



//{ Chains
CHAIN XACORWIJ XA_MagdaChain
	@1364 /* ~Curator Magda! It's good to see you, too.~*/
	
	== XACURATO 
	@1365 /* ~How is Rohma? And your father?~ */
	
	==XACORWIJ
	IF ~
		GlobalGT("XA_LC_CorwinMetFamily", "GLOBAL", 0)
	~
	@1366 /* ~They are well ma'am, thank you.~ */
	
	== XACORWIJ
	IF ~
		GlobalLT("XA_LC_CorwinMetFamily", "GLOBAL", 1)
	~
	@1367 /* ~We're going to see them shortly.~*/
	
	== XACURATO
	@1368 /* ~Ah, good. And who're you? I don't believe we've met.~ */
	
	== XACORWIJ
	@1369 /* ~Curator Magda, allow me to introduce you to <CHARNAME>, the hero of Baldur's Gate.~ */
END XACURATO XA_Introduction

CHAIN XACURATO XA_MagdaChain2
	@1373 /* ~For many years... enough time to watch the Captain here grow from a rapscallious child into the fine young woman she is today.~ */
	
	== XACORWIJ
	@1374 /* ~(She blushes.)~ */
	
	== XACURATO
	@1375 /* ~Oh! <CHARNAME>, Captain — a number of troubled youths from the orphanage are visiting the High Hall of Wonders, as we speak. It would mean the world to them if you can take some time out of your day to give them some words of encouragement.~ */
END XACURATO XA_AskToTalk

CHAIN XACURATO XA_CSHOW_TALK_CHAIN
	@1406 /* ~That was wonderful, Captain. Thank you for sharing your experience with us today.~ */
	= @1407 /* ~Children? Do you have any questions for Captain Corwin?~ */
	= @1410 /* ~Ah, yes Hans, go ahead.~ */
	== XAORPH01
	IF ~
		Gender(Player1, MALE)
	~
	@1408 /* ~Who's the guy standing next to you?~ */
	== XAORPH01
	IF ~
		Gender(Player1, FEMALE)
	~
	@1413 /* ~Who's the lady standing next to you?~ */
	== XACORWIJ
	@1409 /* ~This is <CHARNAME>, hero of Baldur's Gate and the Sword Coast!~ */
	== XACURATO
	IF ~
		Gender(Player1, MALE)
	~
	@1411 /* ~He's gracefully agreed to share with you some words of encouragement.~ */
	== XACURATO
	IF ~
		Gender(Player1, FEMALE)
	~
	@1412 /* ~She's gracefully agreed to share with you some words of encouragement.~ */
END XAORPH02 XA_CSHOW_TALK_CHAIN_END

CHAIN XAORPH03 XA_CSHOW_TALK_CHAIN_2
	@1387 /* ~<CHARNAME> has horns, you dummy.~ */
	== XAORPH04
	@1388 /* ~Yeah! And a tail!~ */
	== XAORPH05
	@1389 /*  ~With spikes!~ */
	== XAORPH06
	@1390 /* ~And <PRO_HESHE>'s so ugly, that if <PRO_HESHE> looks at you, you turn to stone! */
	== XACURATO
	@1402 /* ~<CHARNAME>, Captain, I'm so sorry about thi—~ */
	== XAORPH01
	@1396 /* ~And <PRO_HESHE>'s so ugly, that if <PRO_HESHE> looks at you, you turn to stone!~ */
	== XACORWIJ
	@1391 /* ~That's enough, all of you. Whatever rumors you've heard are untrue. This ...~ */
	= @1392 /* ~(She gestures to you.)~ */
	= @1393 /* ~... is *definitely* <CHARNAME>, hero of Baldur's Gate!~ */
	== XAORPH01
	@1394 /* ~Prove it!~ */
	
END XAORPH02 XA_CSHOW_TALK_CHAIN_2_END


CHAIN 
	IF ~~ THEN XACORWIJ XA_Depart_RohmaChain
		@872 /* ~Rohma, father, <CHARNAME> and I have some business to attend to in the city. I'll be back in a couple of hours.~ */
		DO ~
			SetGlobalTimer("XA_LC_CorwinLeaveForFamilyTimer", "GLOBAL", ONE_HOUR)
			
		~
		== XAAUDAM
		@877 /*  ~Good. Don't take too long. Rohma, say bye to mommy.~ */
		== XAROHMA
		@873 /* ~I love you mommy.~ */
		== XACORWIJ
		@874 /* ~I love you too, Rohma. Give mama a hug.~*/
		== XAROHMA
		@875 /* ~(They share a warm embrace.)~*/
		
END XACORWIJ XA_SeeRohmaLater

CHAIN
	IF ~~ THEN XACORWIJ XA_AudamCorwinPlayerChain
		@890 /* ~Thanks, father. How were things while I was away?~ */
		== XAAUDAM
		@891 /* ~Quiet, thankfully. I've been teaching Rohma some basic addition and subtraction. She's picks things up fast, like you did at her age.~ */
		== XACORWIJ
		@892 /* ~I'm not surprised. She has a great teacher.~*/
		== XAAUDAM
		@893 /* ~Hardly. Your mother, rest her soul, was much better than I am.~*/
		= @894 /* ~Listen, Schael. I know your feelings for <CHARNAME> are strong.~*/
		= @895 /* ~Someone of <PRO_HISHER> notoriety being around Rohma has me worried, though.~*/
		== XACORWIJ
		@896 /* ~What do you mean? <PRO_HESHE> would never hurt her.~*/
		== XAAUDAM
		@897 /* ~No, of course not. What I mean is that someone might use Rohma, or you for that matter, to get to <PRO_HIMHER>.~*/
		== XACORWIJ
		@898 /* ~<CHARNAME> and I discussed this on the way here... it might get complicated at times, but we're both committed to finding a way to make our relationship work. <PRO_HESHE> is a good <PRO_MANWOMAN> father - I trust <PRO_HIMHER> with my life.~*/
		== XAAUDAM
		@899 /* ~It's good that you've had those discussions... You know, I can't remember the last time I saw you so happy and full of energy. <PRO_HESHE> must really love you.~*/
		== XACORWIJ
		@900 /*  ~<PRO_HESHE> does father. And I love <PRO_HIMHER>.~*/
		== XAAUDAM
		@901 /* ~I'm glad. Well, you better get a move on then. I'll see you later.~*/
		== XACORWIJ
		@902 /* ~Right. See you in a couple of hours.~ */
EXIT

CHAIN
	IF ~~ THEN XACORWIJ XA_PlayerNewDadChain
		@879 /* ~Oh, Rohma... I hope so. It's a big committment.~ */
		== XAROHMA
		@882 /* ~What's a com-it-mint?~ */
		== XACORWIJ
		@880 /* ~You know how mommy has a duty to the Flaming Fist? Well, I also have a duty to you and grandpa. A committment is like a duty.~*/
		== XAROHMA
		@883 /* ~So being a daddy is a big duty for <CHARNAME>?~*/
		== XACORWIJ
		@881 /* ~It's a big duty for anyone, sweetie, but it's very rewarding at the same time.~*/
		== XAROHMA
		@886 /*~Tell <CHARNAME> he can play with my dolly if he will be my daddy.~ */
		== XACORWIJ
		@887  /* ~I will, honey. I'm sure he'd appreciate that. We'll talk some more about this when I come back.~*/
		= @888 /* ~Be a good girl while I'm gone.~*/
		== XAROHMA
		@889 /* ~I will, mommy.~*/
EXIT

CHAIN
	IF ~~ THEN XACORWIJ XA_CorwinNederlok
		@824 /* ~It's good to be back, sir. How have the Fist and the city fared in my absence?~ */
		DO ~
			SetGlobal("XA_LC_NederlokCorwin", "GLOBAL", 1)
		~
		== XANEDERL 
		@825 /* ~Both have fared well, thankfully. We've gained some promising new recruits, and the refugee situation has been brought under control. Between the Iron Crisis, Sarevok, Caelar, and the situation with <CHARNAME> and Skie, it's been a rough couple of years. It's good that things have finally settled down.~ */
		= @826 /* ~Have the townspeople given you or <CHARNAME> any problems?~ */
		== XACORWIJ
		IF ~
			Global("XA_LC_CorwinScoldTownsperson", "LOCALS", 1)
		~
		@827 /* ~Most have been accepting, even weXAoming. There were just a few loudmouths, but they've been straightened out.~ */
		== XACORWIJ
		IF ~
			!Global("XA_LC_CorwinScoldTownsperson", "LOCALS", 1)
		~
		@831 /*  ~Most have been accepting, even weXAoming, of our hero here. (She smiles at you.)~ */
		== XANEDERL
		@828 /* ~That's good to hear. Before I forget - Duke Eltan is tied up with some unrelated business, but he wanted me to tell you that he's glad that you and <CHARNAME> are back, and that he'll see you in the debriefing.~ */
		== XACORWIJ
		@829 /* ~Thank you sir. I'll leave you to your work.~ */
		== XANEDERL
		@832 /* ~Very good, Captain. I'll see you at the debriefing.~ */	
EXIT

CHAIN XAAUDAM XA_AudamarRohmaKidnapChain
	@990 /* ~(Audamar lies on the floor, bloodied and severely beaten.)~ */
	= @976 /* ~...uhnnn... S-Schael...~ */
	== XACORWIJ
	@977 /* ~Oh, thank Tymora you're alive! What happened! Where's Rohma!?~ */
	== XAAUDAM
	@978 /* ~They broke in.... t-took her...~ */
	== XACORWIJ
	@1019 /* ~Damn it!~ [XA100112] */
	= @979 /* ~Who took her!?~ */
	== XAAUDAM
	@983 /*~It was B-Beno... and a... a woman... trade Rohma... for <CHARNAME>...~*/
	
EXIT

CHAIN XALIIA XA_NeedToGetRohmaChain
	@996 /* ~Captain, your father is going to be fine. I believe he will make a full recovery.~*/
	== XACORWIJ
	@997 /* ~Oh, thank goodness.~*/
	== XAELTAN
	@998 /* ~Let us now discuss the matter at hand...~*/
	== XANEDERL
	@999 /* ~Kent - read for us again the letter recovered from Audamar.~*/
	== XAKENT
	@1000 /* ~Yes sir. It reads as follows:~*/
	== XAKENT
	IF ~
		Gender(Player1, MALE)
	~ THEN
	@1001 /* ~'<CHARNAME>, son of Bhaal. Illasera of the Five requests your presence in the Undercity, in the temple of the father. You and Captain Corwin are to come, alone. If anyone else follows you, the child will die. Do not keep us waiting for long.'~*/
	== XAKENT
	IF ~
		Gender(Player1, FEMALE)
	~ THEN
	@1002 /* ~'<CHARNAME>, daughter of Bhaal. Illasera of the Five requests your presence in the Undercity, in the temple of the father. You and Captain Corwin are to come, alone. If anyone else follows you, the child will die. Do not keep us waiting for long.'~*/
	== XAELTAN
	@1003 /* ~The Five... I've heard rumors of a such a group causing havoc in the vicinity of Saradush.~*/
END XANEDERL XA_NeedToGetRohmaEnd

CHAIN XACORWIJ XA_RohmaKidnapped5Chain
	@1007 /* ~Yes. He's Rohma's father, as distasteful as it sounds.~ */
	== XALIIA
	@1011 /* ~That bodes well for your daughter, then. I doubt that he would wish to see her harmed.~ */
	== XABELT
	@1333 /* ~We could use that to our advantage.~ */
	== XACORWIJ
	@1050 /* ~You mean to turn Beno against Illasera? I won't work. Beno's only ever cared for himself.~ */
	= @1052 /* ~He won't stick his neck out for anyone, not even his own daughter — I'm sure of it.~ [XA000011] */
	== XABELT
	@1334  /* ~I see...~ */
	== XANEDERL
	@1009 /* ~You'll almost certainly be walking into a trap. It would be better to send some additional support, perhaps a platoon of Valiants -~ */
END XACORWIJ XA_RohmaKidnapped5ChainEnd

CHAIN XABENO2 XA_CorwinBenoSTChain
	@1185 /* ~To hells with you, and your father!~ */
	== XACORWIJ
	@1186 /* ~(She plunges the dagger into his heart. His mouth opens as if to cry in pain, but strangely, no sound is heard. A mist rises out of the gaping wound in his chest, and coalesces into the form of a man; it's Beno, you're sure of it.)~ */
	=@1187 /* ~(For a brief moment, the spirit gazes at its physical body, with a look of wonder and confusion. That confusion turns to terror as the spirit is slowly drawn into the blade of the dagger. The spirit turns as if to flee, but it is no use. You hear a piercing scream in your mind as the last remnants of the spirit are swallowed up by the dagger.)~   */
	DO ~
		AddJournalEntry(@1206, INFO)
	~
END XACORWIJ XA_CorwinBenoSTChainEnd

CHAIN XABENO2 XA_CorwinKillBenoChain
	@1185 /* ~To hells with you, and your father!~ */
	== XACORWIJ
	@1192 /* ~(She picks up Beno's rusted scimitar, and, after a moment of hesitation, brings it down sharply upon his neck. The first blow did not fully detach the head from the body, and you hear a grotesque, gurgling sound as Beno struggles to breathe. The second blow mercifully finishes the job. Beno's head hits the ground with a satisfying thud, then rolls a couple of feet away from his body.)~*/
	=@1193 /* ~(Schael walks over to the now detached head, picks it up, and places it into her pack.)~  */
	DO ~
		GiveItemCreate("XABENOHD", "XACORWIN", 0,0,0)
		AddJournalEntry(@1207, INFO)
	~
END XACORWIJ XA_CorwinKillBenoChainEnd

CHAIN XABENO2 XA_CorwinMercyBenoChain
	@1198 /* ~Schael... I'm sorry.~ */
	== XACORWIJ
	@1199 /* ~What?~ */
	== XABENO2
	@1176 /* ~For everything... not just for today, but... for everything...~ */
	== XACORWIJ
	@1201 /* ~(Sigh.)~*/
	=@1202 /* ~No. This is wrong. Killing you, again, isn't going to solve anything. I've at least learned that much.~*/
	=@1203 /* ~Beno, you're under arrest for the crimes of kidnapping and attempted murder.~*/
	DO ~
		AddJournalEntry(@1208, INFO)
	~
END XACORWIJ XA_CorwinMercyBenoChainEnd

CHAIN XACORWIJ XA_CorwinRohmaReuniteChain
	@1211 /* ~Are you alright?~ */
	== XAROHMA
	@1237 /* ~Yes mommy.~*/
	== XACORWIJ
	@1254 /* ~What did they do to you? Did they hurt you?~*/
	== XASKIE
	@1255 /* ~The healers said that she was put into a deep sleep, but that she wasn't harmed.~ */
	=@1256 /* ~Once they woke her up, she went to see her grandpa right away.~*/
	== XACORWIJ
	@1212 /* ~How's grandpa doing?~ */
	== XAROHMA
	@1257 /* ~Good, he's taking a nap. Why does he snore so loud?~*/
	== XASKIE
	@1250 /* ~He's going to be fine - the healers said that he'll be up and about in the morning.~*/
	= @1251 /* ~Rohma's been doing a great job looking after him, haven't you, dear?~ */
	== XAROHMA
	@1253 /* ~Yep!~ */
	== XACORWIJ
	@1215 /* ~Oh, where are my manners. Thank you for looking after her, Skie.~*/
	== XACORWIJ
	IF ~
		Global("XA_LC_DontTellEntar", "GLOBAL", 1)
	~
	@1294 /* And for that thing that ah.. we won't talk about.~  */
	== XASKIE
	@1239 /* ~I'm glad to have been able to help.~ */
	== XAROHMA
	@1238 /* ~Mommy?~  */
	== XACORWIJ
	@1214 /* ~Yes, honey?~  */
END XAROHMA XA_CorwinRohmaReuniteChainEnd

CHAIN XACORWIJ XA_CorwinRohmaReuniteChainA
	@1211 /* ~Are you alright?~ */
	== XAROHMA
	@1237 /* ~Yes mommy.~*/
	== XACORWIJ
	@1254 /* ~What did they do to you? Did they hurt you?~*/
	== XALIIA
	@1255 /* ~The healers said that she was put into a deep sleep, but that she wasn't harmed.~ */
	=@1256 /* ~Once they woke her up, she went to see her grandpa right away.~*/
	== XACORWIJ
	@1212 /* ~How's grandpa doing?~ */
	== XAROHMA
	@1257 /* ~Good, he's taking a nap. Why does he snore so loud?~*/
	== XALIIA
	@1250 /* ~He's going to be fine - the healers said that he'll be up and about in the morning.~*/
	= @1251 /* ~Rohma's been doing a great job looking after him, haven't you, dear?~ */
	== XAROHMA
	@1253 /* ~Yep!~ */
	== XACORWIJ
	@1216 /* ~Oh, where are my manners. Thank you for looking after her, Duchess Jannath.~  */
	== XALIIA
	@1217 /* ~Of course, Major. She's such a delightful child!~*/
	== XAROHMA
	@1238 /* ~Mommy?~  */
	== XACORWIJ
	@1214 /* ~Yes, honey?~  */
END XAROHMA XA_CorwinRohmaReuniteChainEndA

CHAIN XACORWIJ XA_BGEND3_CorwinSaradushChain
	@1228 /* ~Marshal Nederlok, sir.~ */
	== XANEDERL
	@1258 /* ~What is it, Major?~ */
	== XACORWIJ
	@1259 /* ~Request permission to accompany <CHARNAME> to Saradush.~ */
	== XANEDERL
	@1229 /* ~Granted. Do whatever is necessary to ensure the success of this mission. The fate of the city, and perhaps the entire Sword Coast, may depend on it.~*/
	== XACORWIJ
	@1260 /* ~Yes, sir.~ */
	== XANEDERL 
	@1261 /* ~And Major - don't worry about your family while you're gone. We'll make sure they are well-protected here in the palace, just in case the Five try anything again. Good hunting.~ */
END XACORWIJ XA_BGEND3_CorwinSaradushChainEnd

CHAIN
	IF ~~ THEN XACORWIJ XA_HarborCorwin
		@800 /* ~It has. Listen, this is not a social visit. We're investigating reports of slaver activity in these docks, specifically, allegations that refugees are being shipped from here and sold into slavery. What do you know about these activities?~ */
		== XAHARBOR
		@801 /* ~Shipped from Baldur's Gate, you say? No, I don't know anything about it. We do periodic inspections of cargo on behalf of the city authorities, but we haven't come across any children.~*/
		= @802 /* ~Now, wait a minute... A couple months back, there was a program started by some upstart noble to resettle refugees. He claimed to have connections in other cities that he used to find families willing to host them.~ */
		= @803 /* ~He chartered a number of ships from this dock to places like Athkatla, Calimport, Waterdeep, and others.~ */
		== XACORWIJ
		@804 /* What is his name? Where is he now?~ */
		DO ~
			SetGlobal("XA_LC_AskedAboutName", "GLOBAL", 1)
		~
		== XAHARBOR
		@805 /*  ~I don't remember his name, but I know he and his company have set up shop in the old Iron Throne headquarters.~ */
		== XACORWIJ
		@806 /* ~Give me all of the shipping manifests from his company for his company since the start of the refugee crisis, until now.~ */
		DO ~
			SetGlobal("XA_LC_AskedAboutManifests", "GLOBAL", 1)
		~
		== XAHARBOR
		@807 /* ~I need some more time for those manifests. Give me an hour, I should have them ready for you by then.~*/
		== XACORWIJ
		@808 /* ~Not in an hour, now. Unless you want the Flaming Fist to turn these docks inside out.~*/
		== XAHARBOR 
		@809 /*  ~Right... one moment.~*/
		DO ~
			SetGlobal("XA_LC_HMCutscene", "GLOBAL", 1)
		~
EXIT

CHAIN 
	IF ~~ THEN XACORWIJ XA_CorwinTiannaGoodbyeChain
		@854 /* ~I hope you learned something from this Tianna. Next time, you might not be so lucky.~*/
		== XATIANNA
		@858 /* ~I've been doing a lot of thinking and... I don't think this city is a good fit for me. I'm going to take my mom south to Beregost, and try for a fresh start over there.~ */
		== XACORWIJ
		@855 /* ~That's a good decision. Take care of yourself, Tianna.~ */
		== XATIANNA
		@857 /* ~You too, Schael.~ */
		= @856 /* ~(They share an embrace.)~ */ 
END XATIANNA XA_GoodBye

CHAIN IF ~~ THEN XACORWIJ XA_CorwinFamilyReunite2
	@686 /* ~Me too, father.~ */
	= @687 /* ~(They share a warm embrace.)~ */
	== XAAUDAM
	@691 /* ~Corporal Duncan told us you'd be home soon. I can't tell you how much of a relief it is to have you back.~ */
	= @688 /* ~I see you've brought company.~ */
END XAROHMA XA_CorwinFamilyReunite3

CHAIN
	IF ~~ THEN XACORWIJ XA_CorwinFamilyReuniteTM
		@695 /* ~Oh - look what I got for you Rohma.~ */
		= @696 /* ~(She hands her the trophy she won at the Trademeet Archery Competition.)~ */
		= @697 /* ~Can you read me what it says?~ */
		== XAROHMA
		@698 /* ~Winner.. eighth an-annu...~ */
		== XACORWIJ
		@699 /* ~Annual.~ */
		== XAROHMA
		@700 /* ~Annual... trade..meet... ar..chery.. c-com-comp...~*/
		== XACORWIJ
		@701 /* ~Competition. Good job honey. Your reading has improved quite a bit.~ */	
END 
IF ~~ THEN GOTO XA_CorwinFamilyReuniteSwitch
IF
	~	
		Global("XA_LC_DingsRohma", "GLOBAL", 1)
	~
THEN GOTO XA_DingsRohma

//{ Dialog J-66
CHAIN 
	IF ~
		Global("XA_LC_XACS15Cutscene", "GLOBAL", 3)
	~ THEN XANEOMA XA_CorwinNeomaReunite
		@717 /* ~I heard you'd be coming home! How are you?~ */
		DO ~
			SetGlobal("XA_LC_XACS15Cutscene", "GLOBAL", 4)
		~
		== XACORWIJ
		@723 /* ~I'm so glad to be back. How're things with you?~ */
		== XANEOMA
		@721 /* ~(They speak amongst themselves for a time. You can't make out what they are saying.)~ */
		== XANEOMA
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		@722 /* ~Really? You and ... (she looks at you, smiles.)~ */
		== XACORWIJ
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		@718 /* ~(They break into laughter.)~*/
		== XANEOMA
		@719 /* ~Listen, I have to start my shift soon. Let's get caught up later, over a drink or two.~*/
		== XACORWIJ
		@724 /* ~Sounds good. I'll see you later.~*/
		== XANEOMA
		@725 /* ~(They embrace, and Neoma leaves after giving Schael a kiss on her cheek.)~ */
EXIT
//}

//{ Dialog J-67
CHAIN
	IF ~
		Global("XA_LC_XACS14Cutscene", "GLOBAL", 1)
	~ THEN XACORWIJ XA_CorwinFamilyReunite
		@681 /* ~(They share a long embrace, and Schael gives her daughter a big kiss.)~ */
		= @683 /* ~Oh, I've missed you so much!~*/
		DO ~
			SetGlobal("XA_LC_XACS14Cutscene", "GLOBAL", 2)
			SetGlobal("XA_LC_CorwinFamilyTalk", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinMetFamily", "GLOBAL", 1)
		~
		== XAROHMA
		@684 /* ~I missed you too mommy!~ */
		DO ~
			StartCutSceneMode()
			StartCutScene("XACS14A")
		~
EXIT
//}
//}