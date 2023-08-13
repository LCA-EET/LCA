BEGIN ~XAADBG~

IF ~
	True()
~ THEN BEGIN XA_MainMenu
	SAY @0 /* ~How can I help you?~ */
	
	IF ~~ THEN REPLY @624
	DO ~
		CreateCreatureObjectCopy("statue01",Player1Fill,0,0,0)  // Magical Sword
		CreateCreatureObjectCopy("statue02",Player2Fill,0,0,0)  // Magical Sword
		CreateCreatureObjectCopy("statue03",Player3Fill,0,0,0)  // Magical Sword
		CreateCreatureObjectCopy("statue04",Player4Fill,0,0,0)  // Magical Sword
		CreateCreatureObjectCopy("statue05",Player5Fill,0,0,0)  // Magical Sword
		CreateCreatureObjectCopy("statue06",Player6Fill,0,0,0)  // Magical Sword
		ActionOverride("statue01",MoveBetweenAreas("AR2000",[1732.1302],S))  // Trademeet
		ActionOverride("statue02",MoveBetweenAreas("AR2000",[1851.1293],SE))  // Trademeet
		ActionOverride("statue03",MoveBetweenAreas("AR2000",[1888.1211],E))  // Trademeet
		ActionOverride("statue04",MoveBetweenAreas("AR2000",[1812.1145],N))  // Trademeet
		ActionOverride("statue05",MoveBetweenAreas("AR2000",[1689.1160],W))  // Trademeet
		ActionOverride("statue06",MoveBetweenAreas("AR2000",[1644.1240],SW))  // Trademeet
		SetGlobal("XA_MakeStatue", "GLOBAL", 1)
	~
	EXIT
	
	IF ~~ THEN REPLY @614
	GOTO XA_Assistant
	
	IF ~~ THEN REPLY @604
	GOTO XA_EpilogueTest
	
	IF ~~ THEN REPLY @585
	GOTO XA_AreaTest
	
	IF ~~ THEN REPLY @590
	DO ~
		ActionOverride(Player1,AddSpecialAbility("SPIN649"))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @537
	DO ~
		SetGlobal("XA_SexDebug", "GLOBAL", 1)
		SetGlobal("XA_CorwinSex_1", "GLOBAL", 1)
	~
	EXIT
	
	IF ~~ THEN REPLY @538
	DO ~
		SetGlobal("XA_SexDebug", "GLOBAL", 1)
		SetGlobal("XA_CorwinSex_1", "GLOBAL", 2)
	~
	EXIT
	
	IF ~
		IsGabber("XACORWIN")
	~ THEN REPLY @285
	GOTO XA_MainMenu
	
	IF ~
		IsGabber(Player1)
	~ THEN REPLY @286
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @280
	GOTO XA_TestInteraction
	
	IF ~~ THEN REPLY @156 /* ~Return to BG Mini Quest.~ */
	DO ~
		FadeToColor([30.0],0)
		SetGlobal("XA_ReturnToBG", "GLOBAL", 0)
		SetGlobal("XA_PartyRemovalProcessing", "GLOBAL", 2)
		ActionOverride(Player1,LeaveAreaLUA("BG0900","",[1628.1456],NW))
		ActionOverride(Player2,LeaveAreaLUA("BG0900","",[1664.1531],NW))
		ActionOverride(Player3,LeaveAreaLUA("BG0900","",[1797.1452],NW))
		ActionOverride(Player4,LeaveAreaLUA("BG0900","",[1719.1544],NW))
		ActionOverride(Player5,LeaveAreaLUA("BG0900","",[1777.1510],NW))
		ActionOverride(Player6,LeaveAreaLUA("BG0900","",[1770.1517],NW))
		ActionOverride("XACORWIN",LeaveAreaLUA("BG0900","",[1694.1423],NW)) 
	~
	EXIT
	
	IF ~~ THEN REPLY @327
	GOTO XA_ChangeChapter
	
	IF ~~ THEN REPLY @216 /* ~Open Store.~ */
	GOTO XA_Menu_StartStore
	
	IF ~~ THEN REPLY @186 /* ~Change the Time.~ */
	GOTO XA_Menu_ChangeTime
	
	IF ~~ THEN REPLY @1 /* ~Add character to party.~ */
	GOTO XA_Menu_AddCharacter
	
	IF ~~ THEN REPLY @2 /* ~Start cutscene.~ */
	GOTO XA_Menu_StartCutscene
	
	IF ~~ THEN REPLY @24 /* ~I need more help, or would like to contribute.~ */
	GOTO XA_NeedMoreHelp
	
	IF ~~ THEN REPLY @241 /* ~Advance Time~ */
	GOTO XA_Menu_AdvanceTime
	
	IF ~~ THEN REPLY @525
	DO ~
		ChangeStat("Corwin", STR, 20, SET)
		ChangeStat("Corwin", DEX, 19, SET)
		ChangeStat("Corwin", CHR, 18, SET)
		ChangeStat("Corwin", WIS, 17, SET)
		ChangeStat("Corwin", INT, 16, SET)
		ChangeStat("Corwin", CON, 15, SET)
	~
	EXIT
	
	IF ~~ THEN REPLY @27 /* Adjust variables */
	GOTO XA_Menu_AdjustVariables
	
	IF ~~ THEN REPLY @34 /* Create Item */
	GOTO XA_Menu_CreateItem
	
	IF ~~ THEN REPLY @39 /* Create Creature */
	GOTO XA_Menu_CreateCreature
	
	IF ~~ THEN REPLY @45 /* Move to a New Area */
	GOTO XA_Menu_NewArea
	
	IF ~~ THEN REPLY @236 /* ~Move Corwin to BG1316, and make her leave the party.~*/
	DO ~
		ActionOverride("XACORWIN", SetLeavePartyDialogFile())
		ActionOverride("XACORWIN", ChangeAIScript("", OVERRIDE))
		ActionOverride("XACORWIN", ChangeAIScript("", DEFAULT))
		ActionOverride("XACORWIN", LeaveParty())
		ActionOverride("XACORWIN", EscapeAreaMove("XAHOME", 350,300,N))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @424 /* ~XACORWIJ Dialog Test.~ */
	GOTO XA_XACORWIJ_Test
	
	IF ~~ THEN REPLY @523
	DO ~
		//ActionOverride("XACORWIN", TakeCreatureItems("Corwin", BACKPACK))
		SetGlobal("XA_CopyItemTest", "GLOBAL", 1)
	~
	EXIT
	
	IF ~~ THEN REPLY @334 /* ~Dialog Test.~*/
	GOTO XA_DialogTest
	
	IF ~~ THEN REPLY @74 /* Increment Banter Counter. */
	GOTO XA_Menu_IncrementBanter
	
	IF ~~ THEN REPLY @152 /* Play Chapter Movie. */
	GOTO XA_Menu_ChapterMovie
	
	IF ~~ THEN REPLY @100 /* Cure Corwin Disease. */
	DO ~
		ForceSpell("XACORWIN",CLERIC_CURE_DISEASE)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @248
	DO ~
		SetGlobalTimer("XA_DukeDebriefTimer", "GLOBAL",EIGHT_HOURS)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @12 /* ~I do not need assistance at this time.~ */
	EXIT
END

IF ~~ THEN XA_Assistant
	SAY @614
	
	IF ~~ THEN 
	DO ~
		ActionOverride(Player1, AddSpecialAbility("XAASSIS1"))
	~
	EXIT
END

IF ~~ THEN BEGIN XA_EpilogueTest
	SAY @604 /*~Test Epilogues.~ */
	
	IF ~~ THEN REPLY @612
	DO ~
		SetGlobal("PlayerChoseEssence","GLOBAL",1)
		ActionOverride(Player1, LeaveAreaLUAPanic("AR6200", "", [400.1400], NE))
		ActionOverride(Player1, LeaveAreaLUA("AR6200", "", [400.1400], NE))
		ActionOverride(Player2, LeaveAreaLUA("AR6200", "", [400.1400], NE))
		ActionOverride(Player3, LeaveAreaLUA("AR6200", "", [400.1400], NE))
		ActionOverride(Player4, LeaveAreaLUA("AR6200", "", [400.1400], NE))
		ActionOverride(Player5, LeaveAreaLUA("AR6200", "", [400.1400], NE))
		ActionOverride(Player6, LeaveAreaLUA("AR6200", "", [400.1400], NE))
		SetGlobal("StartEndBios","AR6200",1)
	~
	EXIT
	
	IF ~~ THEN REPLY @613
	DO ~
		SetGlobal("PlayerChoseEssence","GLOBAL",0)
		ActionOverride(Player1, LeaveAreaLUAPanic("AR6200", "", [400.1400], NE))
		ActionOverride(Player1, LeaveAreaLUA("AR6200", "", [400.1400], NE))
		ActionOverride(Player2, LeaveAreaLUA("AR6200", "", [400.1400], NE))
		ActionOverride(Player3, LeaveAreaLUA("AR6200", "", [400.1400], NE))
		ActionOverride(Player4, LeaveAreaLUA("AR6200", "", [400.1400], NE))
		ActionOverride(Player5, LeaveAreaLUA("AR6200", "", [400.1400], NE))
		ActionOverride(Player6, LeaveAreaLUA("AR6200", "", [400.1400], NE))
		SetGlobal("StartEndBios","AR6200",1)
	~
	EXIT
	
	IF ~~ THEN REPLY @605  /* ~XACORND1 (Coriwn, Romance, Male)~*/
	DO ~
		TextScreen("XACORND1")
	~
	EXIT
	
	IF ~~ THEN REPLY @606 /* ~XACORND2 (Coriwn, Romance, Female)~*/
	DO ~
		TextScreen("XACORND2")
	~
	EXIT
	
	IF ~~ THEN REPLY @607 /* ~XACORND3 (Coriwn, Romance, Male (Godhood))~*/
	DO ~
		TextScreen("XACORND3")
	~
	EXIT
	
	IF ~~ THEN REPLY @608 /* ~XACORND4 (Coriwn, Romance, Female (Godhood))~*/
	DO ~
		TextScreen("XACORND4")
	~
	EXIT
	
	IF ~~ THEN REPLY @609 /* ~XACORND5 (Corwin, Non-Romance)~*/
	DO ~
		TextScreen("XACORND5")
	~	
	EXIT
	
	IF ~~ THEN REPLY @610 /* ~XACAEEND (Caelar)~*/
	DO ~
		TextScreen("XACAEEND")
	~
	EXIT
	
	IF ~~ THEN REPLY @611 /* ~XACORND6 (Corwin, Non-Romance (Godhood))~*/
	DO ~
		TextScreen("XACORND6")
	~	
	EXIT
	
	IF ~~ THEN REPLY @12 /* ~I do not need assistance at this time.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_AreaTest
	SAY @585
	
	IF ~~ THEN REPLY @588 /* ~XA4700~*/
	DO ~
		ActionOverride(Player1,AddSpecialAbility("SPIN649")) 
		SetGlobal("XA_IncubusDefeated", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XAGO4700")
	~
	EXIT
	
	IF ~~ THEN REPLY @587 /* ~XA4700~*/
	DO ~
		ActionOverride(Player1,AddSpecialAbility("SPIN649")) 
		SetGlobal("DemoGorgonIsDead","GLOBAL",1)
		StartCutSceneMode()
		StartCutScene("XAGO4700")
	~
	EXIT
	
	IF ~~ THEN REPLY @573 /* ~XA5300 Test~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XAGO5300")
	~
	EXIT
	
	IF ~~ THEN REPLY @589 /* ~XA5300 (Caelar)~*/
	DO ~
		SetGlobal("XA_CaelarRescue", "GLOBAL", 1)
		SetGlobal("XA_CaelarStayedInAvernus","GLOBAL",1)
		SetGlobal("XA_IncubusDefeated", "GLOBAL", 1)
		//SetGlobal("XA_OathRelease", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XAGO5300")
	~
	EXIT
	
	IF ~~ THEN REPLY @586 /* ~XA4500 Test~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XAGO4500")
	~
	EXIT
	
	IF ~~ THEN REPLY @26
	GOTO XA_MainMenu
END

IF ~~ THEN BEGIN XA_XACORWIJ_Test
	SAY @424
	
	IF ~~ THEN REPLY @425 /* ~Dialog J-0~ */
	DO ~
		CreateCreature("XACURATO", [-1.-1], N)
		SetGlobal("XA_CSHOW_TALK", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @426 /* ~Dialog J-1~ */
	DO ~
		SetGlobal("XA_BGEND3", "GLOBAL", 1)
		SetGlobal("XA_DidNotRequestCorwin", "GLOBAL", 1)
		SetGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 101)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @427 /* ~Dialog J-2~ */
	DO ~
		SetGlobal("XA_BGEND4", "GLOBAL", 1)
		SetGlobal("XA_DidRequestCorwin", "GLOBAL", 1)
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @428 /* ~Dialog J-3~ */
	DO ~
		SetGlobal("XA_RohmaSaved", "GLOBAL", 1)
		CreateCreature("XAROHMA", [-1.-1], N)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @429 /* ~Dialog J-4~ */
	DO ~
		SetGlobal("XA_CorwinBenoST", "GLOBAL", 1)
		CreateCreature("XABENO2", [-1.-1], N)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @430 /* ~Dialog J-5 Opinion 6~ */
	DO ~
		SetGlobal("XA_CorwinKillBeno", "GLOBAL", 1)
		SetGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 10)
		CreateCreature("XABENO2", [-1.-1], N)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @493 /* ~Dialog J-5 Opinion 5~ */
	DO ~
		SetGlobal("XA_CorwinKillBeno", "GLOBAL", 1)
		SetGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 105)
		CreateCreature("XABENO2", [-1.-1], N)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @431 /* ~Dialog J-6~ */
	DO ~
		SetGlobal("XA_IllaseraDead", "GLOBAL", 1)
		CreateCreature("XABENO2", [-1.-1], N)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @432 /* ~Dialog J-7~ */
	DO ~
		SetGlobal("XA_ArrivedInUndercity", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @433 /* ~Dialog J-8~ */
	DO ~
		SetGlobal("XA_DukesDebriefed", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @434 /* ~Dialog J-9~ */
	DO ~
		SetGlobal("XA_CorwinWalkHome", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @435 /* ~Dialog J-10~ */
	DO ~
		SetGlobal("XA_RohmaKidnapped", "GLOBAL", 1)
		CreateCreature("XAAUDAM", [-1.-1], N)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @436 /* ~Dialog J-11~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @437 /* ~Dialog J-12~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @438 /* ~Dialog J-13~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @439 /* ~Dialog J-14~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @440 /* ~Dialog J-15~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @441 /* ~Dialog J-16~ */
	DO ~
		SetGlobal("XA_CorwinSlaverPlot", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @442 /* ~Dialog J-17~ */
	DO ~
		SetGlobal("XA_XACS15Cutscene", "GLOBAL", 6)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @443 /* ~Dialog J-18~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @444 /* ~Dialog J-19~ */
	DO ~
		SetGlobal("XA_CorwinFamilyTimerDialog", "GLOBAL", 1)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @445 /* ~Dialog J-20~ */
	DO ~
		SetGlobal("XA_CorwinFamilyTimerDialog", "GLOBAL", 1)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @446 /* ~Dialog J-21~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @447 /* ~Dialog J-22~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @448 /* ~Dialog J-23~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @449 /* ~Dialog J-24~ */
	DO ~
		SetGlobal("XA_CorwinVouchedDrizz", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @450 /* ~Dialog J-25~ */
	DO ~
		SetGlobal("XA_ComplainDornSex", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @451 /* ~Dialog J-26~ */
	DO ~
		SetGlobal("XA_PlayerSoulTalk", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @452 /* ~Dialog J-27~ */
	DO ~
		SetGlobal("XA_CorwinRepWarning", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @453 /* ~Dialog J-28A~ */
	DO ~
		SetGlobal("XA_CorwinLeftPoorRep", "GLOBAL", 1)
		SetGlobal("chapter", "GLOBAL", 10)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @453 /* ~Dialog J-28B~ */
	DO ~
		SetGlobal("XA_CorwinLeftPoorRep", "GLOBAL", 1)
		SetGlobal("chapter", "GLOBAL", 20)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @454 /* ~Dialog J-29~ */
	DO ~
		SetGlobal("OHD_ritual_interjects","GLOBAL",1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @455 /* ~Dialog J-30~ */
	DO ~
		SetGlobal("OHD_GORGE_NTRJEX","GLOBAL",1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @456 /* ~Dialog J-31~ */
	DO ~
		SetGlobal("XA_CorwinBit", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @457 /* ~Dialog J-32~ */
	DO ~
		SetGlobal("XA_CorwinBit", "GLOBAL", 4)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @458 /* ~Dialog J-33~ */
	DO ~
		SetGlobal("XA_CorwinBit", "GLOBAL", 6)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @459 /* ~Dialog J-34~ */
	DO ~
		
		SetGlobal("XA_CorwinBit", "GLOBAL", 8)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
		
		//SetGlobal("XA_J34Test", "GLOBAL", 1)
	~
	EXIT

	IF ~~ THEN REPLY @460 /* ~Dialog J-35~ */
	DO ~
		SetGlobal("XA_CorwinFirkraagDeal", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @461 /* ~Dialog J-36~ */
	DO ~
		SetGlobal("XA_PhaereTalk", "GLOBAL", 1)
		SetGlobal("PhaereInnuendo", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @462 /* ~Dialog J-37~ */
	DO ~
		SetGlobal("XA_PhaereTalk", "GLOBAL", 1)
		SetGlobal("PhaereInnuendo", "GLOBAL", 3)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @463 /* ~Dialog J-38~ */
	DO ~
		SetGlobal("XA_CorwinBodhiDeal", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @464 /* ~Dialog J-39 (Alatos)~ */
	DO ~
		SetGlobal("XA_SoDAnxietyAlatos", "GLOBAL", 1)
		SetGlobal("XA_SoDAnxiety", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @495 /* ~Dialog J-39 (Cell)~ */
	DO ~
		SetGlobal("XA_SoDAnxietyCell", "GLOBAL", 1)
		SetGlobal("XA_SoDAnxiety", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @465 /* ~Dialog J-40~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayerOpt1", "GLOBAL", 2)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @466 /* ~Dialog J-41~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayerOpt1", "GLOBAL", 2)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @467 /* ~Dialog J-42~ */
	DO ~
		SetGlobal("XA_NebDead", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @468 /* ~Dialog J-43~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @469 /* ~Dialog J-44~ */
	DO ~
		SetGlobal("XA_CorwinSex_1", "GLOBAL", 3)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @470 /* ~Dialog J-45~ */
	DO ~
		SetGlobal("XA_CorwinSex_1", "GLOBAL", 3)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @471 /* ~Dialog J-46~ */
	DO ~
		SetGlobal("XA_CorwinSex2_Init", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @472 /* ~Dialog J-47~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @473 /* ~Dialog J-48~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @474 /* ~Dialog J-49~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @475 /* ~Dialog J-50~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @476 /* ~Dialog J-51~ */
	DO ~
		SetGlobal("XA_CorwinSexAfterBodhi", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @477 /* ~Dialog J-52~ */
	DO ~
		SetGlobal("XA_CorwinComplainSex", "GLOBAL", 1)
		SetGlobal("XA_CorwinComplainSexCount", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @478 /* ~Dialog J-53A~ */
	DO ~
		SetGlobal("XA_CorwinComplainSex", "GLOBAL", 1)
		SetGlobal("XA_CorwinComplainSexCount", "GLOBAL", 1)
		SetGlobal("XA_CorwinSex_1", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @496 /* ~Dialog J-53B~ */
	DO ~
		SetGlobal("XA_CorwinComplainSex", "GLOBAL", 1)
		SetGlobal("XA_CorwinComplainSexCount", "GLOBAL", 1)
		SetGlobal("XA_CorwinSex_2", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @479 /* ~Dialog J-54~ */
	DO ~
		SetGlobal("XA_BrevlikArrested", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @480 /* ~Dialog J-55~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @481 /* ~Dialog J-56~ */
	DO ~
		SetGlobal("XA_CorwinCanHaveSex", "GLOBAL", 0)
		SetGlobal("XA_TryToSleep", "GLOBAL", 1)
		SetGlobal("XA_CorwinSex_1", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @482 /* ~Dialog J-57~ */
	DO ~
		SetGlobal("XA_Banter_CorwinHexxat", "GLOBAL", 6)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @483 /* ~Dialog J-58~ */
	DO ~
		SetGlobal("XA_Banter_CorwinHexxat", "GLOBAL", 6)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @484 /* ~Dialog J-59~ */
	DO ~
		SetGlobal("XA_Banter_CorwinHexxat", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @485 /* ~Dialog J-60~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayer", "GLOBAL", 4)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @486 /* ~Dialog J-61~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayer", "GLOBAL", 4)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @487 /* ~Dialog J-62~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayer", "GLOBAL", 2)
		SetGlobal("XA_CorwinContinue", "GLOBAL", 1) //Friend
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @488 /* ~Dialog J-63~ */
	DO ~
		SetGlobal("XA_Banter_CorwinPlayer", "GLOBAL", 2)
		SetGlobal("XA_CorwinContinue", "GLOBAL", 2) //Romance
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @489 /* ~Dialog J-64~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @490 /* ~Dialog J-65 SC0~ */
	DO ~
		SetGlobal("XA_SlappedDelcia", "GLOBAL", 1)
		SetGlobal("XA_DelciaEnd", "GLOBAL", 1)
		SetGlobal("XA_TimesHadSex", "GLOBAL", 0)
		CreateCreature("DELCIA", [-1.-1], N)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @497 /* ~Dialog J-65 SC1~ */
	DO ~
		SetGlobal("XA_SlappedDelcia", "GLOBAL", 1)
		SetGlobal("XA_DelciaEnd", "GLOBAL", 1)
		SetGlobal("XA_TimesHadSex", "GLOBAL", 1)
		CreateCreature("DELCIA", [-1.-1], N)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @491 /* ~Dialog J-66~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @492 /* ~Dialog J-67~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @504 /* ~Dialog J-69 R~ */
	DO ~
		SetGlobal("XA_CorwinComplainSarevok", "GLOBAL", 2)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @505 /* ~Dialog J-69 NR~ */
	DO ~
		SetGlobal("XA_CorwinComplainSarevok", "GLOBAL", 2)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @506 /* ~Dialog J-70~ */
	DO ~
		SetGlobal("XA_SaradushDestroyed", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @507 /* ~Dialog J-71~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @508 /* ~Dialog J-72 (Aerie)~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 4)
		SetGlobal("XA_CorwinPregnantAerie", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @509 /* ~Dialog J-72 (Jaheira)~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 4)
		SetGlobal("XA_CorwinPregnantJaheira", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @510 /* ~Dialog J-72 (Neither)~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 4)
		SetGlobal("XA_CorwinPregnantJaheira", "GLOBAL", 0)
		SetGlobal("XA_CorwinPregnantAerie", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @511 /* ~Dialog J-72 (Init from Script)~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 4)
	~
	EXIT
	
	IF ~~ THEN REPLY @512 /* ~Dialog J-73 ~ */
	DO ~
		SetGlobal("XA_CorwinPregnantBabyName_Imoen", "GLOBAL", 1)
	~
	EXIT
	
	IF ~~ THEN REPLY @513 /* ~Dialog J-74 ~ */
	DO ~
		SetGlobal("XA_CorwinPregnantBabyName_Aerie", "GLOBAL", 0)
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 5)
		SetGlobal("XA_CorwinPregnantJaheira", "GLOBAL", 0)
		SetGlobal("XA_CorwinPregnantAerie", "GLOBAL", 1)
		SetGlobal("XA_CorwinPregnantImoen", "GLOBAL", 0)
	~
	EXIT
	
	IF ~~ THEN REPLY @514 /* ~Dialog J-75 ~ */
	DO ~
		SetGlobal("XA_CorwinPregnantBabyName_Jah", "GLOBAL", 0)
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 5)
		SetGlobal("XA_CorwinPregnantJaheira", "GLOBAL", 1)
		SetGlobal("XA_CorwinPregnantAerie", "GLOBAL", 0)
		SetGlobal("XA_CorwinPregnantImoen", "GLOBAL", 0)
	~
	EXIT
	
	IF ~~ THEN REPLY @516 /* ~Dialog J-74 ~ */
	DO ~
		SetGlobal("XA_CorwinPregnantBabyName_Aerie", "GLOBAL", 1)
		Wait(1)
		ActionOverride("Aerie", StartDialog("AERIEJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @517 /* ~Dialog J-75 ~ */
	DO ~
		SetGlobal("XA_CorwinPregnantBabyName_Jah", "GLOBAL", 1)
		Wait(1)
		ActionOverride("Jaheira", StartDialog("JAHEIRAJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @515 /* ~Dialog J-76 ~ */
	DO ~
		SetGlobal("XA_CorwinParentAdvice", "GLOBAL", 1)
	~
	EXIT
	
	IF ~~ THEN REPLY @519 /* ~Dialog J-77~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 1)
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 0)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @520 /* ~Dialog J-78~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 1)
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 0)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @521 /* ~Dialog J-79~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 1)
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 3)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @522 /* ~Dialog J-77 Init from Script~*/
	DO ~
		SetGlobalTimer("XA_AmkethranTimer", "GLOBAL", ONE_ROUND)
	~
	EXIT

	IF ~~ THEN REPLY @544 /* Dialog J-80 */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 6)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @543 /* Dialog J-81 */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 8)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @542 /* Dialog J-82 */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 10)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @545 /* Dialog J-83 (Aerie) */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("XA_RomanceConflictTalk", "GLOBAL", 1)
		SetGlobal("AerieRomanceActive", "GLOBAL", 2)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @546 /* Dialog J-83 (Viconia) */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("XA_RomanceConflictTalk", "GLOBAL", 1)
		SetGlobal("ViconiaRomanceActive", "GLOBAL", 2)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @547 /* Dialog J-83 (Dorn) */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("XA_RomanceConflictTalk", "GLOBAL", 1)
		SetGlobal("DornRomanceActive", "GLOBAL", 2)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @548 /* Dialog J-83 (Neera) */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("XA_RomanceConflictTalk", "GLOBAL", 1)
		SetGlobal("NeeraRomanceActive", "GLOBAL", 2)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @549 /* Dialog J-83 (Anomen) */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("XA_RomanceConflictTalk", "GLOBAL", 1)
		SetGlobal("AnomenRomanceActive", "GLOBAL", 2)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @550 /* Dialog J-83 (Jaheira) */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("XA_RomanceConflictTalk", "GLOBAL", 1)
		SetGlobal("JaheiraRomanceActive", "GLOBAL", 2)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @551 /* Dialog J-83 (Hexxat) */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("XA_RomanceConflictTalk", "GLOBAL", 1)
		SetGlobal("HexxatRomanceActive", "GLOBAL", 2)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @552 /* ~Dialog J-83 (Rasaad)~ */
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("XA_RomanceConflictTalk", "GLOBAL", 1)
		SetGlobal("RasaadRomanceActive", "GLOBAL", 2)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @553 /* ~Dialog J-84 Depart 1, Dorn~ */
	DO ~
		SetGlobal("XA_CorwinDepart", "GLOBAL", 1)
		SetGlobal("DornRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @554 /* ~Dialog J-84 Depart 1, Hexxat~ */
	DO ~
		SetGlobal("XA_CorwinDepart", "GLOBAL", 1)
		SetGlobal("HexxatRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @555 /* ~Dialog J-84 Depart 1, Viconia~ */
	DO ~
		SetGlobal("XA_CorwinDepart", "GLOBAL", 1)
		SetGlobal("ViconiaRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @556 /* ~Dialog J-84 Depart 2~ */
	DO ~
		SetGlobal("XA_CorwinDepart", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @565 
	DO ~
		SetGlobal("XA_FINSOL01_Debug", "GLOBAL", 1)
		SetGlobal("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 0)
		SetGlobal("XA_CorwinTwins", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @566 
	DO ~
		SetGlobal("XA_FINSOL01_Debug", "GLOBAL", 1)
		SetGlobal("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
		SetGlobal("XA_CorwinTwins", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @567 
	DO ~
		SetGlobal("XA_FINSOL01_Debug", "GLOBAL", 1)
		SetGlobal("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
		SetGlobal("XA_CorwinTwins", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @26
	GOTO XA_MainMenu

END

IF ~~ THEN BEGIN XA_DialogTest
	SAY @334
	
	IF ~~ THEN REPLY @336 /* ~Dialog B-0~ */
	DO ~
		SetGlobal("OHD_corwinconflict","GLOBAL",2)
		Wait(1)
		ActionOverride("XACORWIN", Interact(Player1))
	~
	EXIT

	IF ~~ THEN REPLY @337 /* ~Dialog B-1~ */
	DO ~
		SetGlobal("XA_Banter_CorwinAnomen", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Anomen"))
	~
	EXIT

	IF ~~ THEN REPLY @338 /* ~Dialog B-2~ */
	DO ~
		SetGlobal("XA_Banter_CorwinMinsc", "GLOBAL", 2)
		SetGlobal("XA_CorwinPromoted", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Minsc"))
	~
	EXIT

	IF ~~ THEN REPLY @339 /* ~Dialog B-3A~ */
	DO ~
		SetGlobal("XA_TM_ArcheryChallenge", "GLOBAL", 2)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Mazzy"))
	~
	EXIT

	IF ~~ THEN REPLY @422 /* ~Dialog B-3B~ */
	DO ~
		SetGlobal("XA_TM_ArcheryChallenge", "GLOBAL", 2)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("Mazzy", StartDialog("MAZZYJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @340 /* ~Dialog B-4~ */
	DO ~
		SetGlobal("XA_Banter_CorwinMazzy", "GLOBAL", 4)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Mazzy"))
	~
	EXIT

	IF ~~ THEN REPLY @341 /* ~Dialog B-5~ */
	DO ~
		SetGlobal("XA_CorwinSick_Aerie", "GLOBAL", 1)
		Wait(1)
		ActionOverride("Aerie", StartDialog("AERIEJ", "XACORWIN"))
	~
	EXIT

	IF ~~ THEN REPLY @342 /* ~Dialog B-6~ */
	DO ~
		SetGlobal("XA_CorwinSick_Jaheira", "GLOBAL", 1)
		Wait(1)
		ActionOverride("Jaheira", StartDialog("JAHEIRAJ", "XACORWIN"))
	~
	EXIT

	IF ~~ THEN REPLY @343 /* ~Dialog B-7~ */
	DO ~
		SetGlobal("XA_CorwinSick_Korgan", "GLOBAL", 1)
		Wait(1)
		ActionOverride("Korgan", StartDialog("KORGANJ", Player1))
	~
	EXIT

	IF ~~ THEN REPLY @344 /* ~Dialog B-8~ */
	DO ~
		SetGlobal("XA_CorwinSick_Imoen", "GLOBAL", 1)
		Wait(1)
		ActionOverride("IMOEN2", StartDialog("IMOEN2J", "XACORWIN"))
	~
	EXIT

	IF ~~ THEN REPLY @345 /* ~Dialog B-9~ */
	DO ~
		SetGlobal("XA_Banter_CorwinMazzy", "GLOBAL", 2)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Mazzy"))
	~
	EXIT

	IF ~~ THEN REPLY @346 /* ~Dialog B-10~ */
	DO ~
		SetGlobal("XA_Banter_CorwinMazzy", "GLOBAL", 2)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Mazzy"))
	~
	EXIT

	IF ~~ THEN REPLY @347 /* ~Dialog B-11~ */
	DO ~
		SetGlobal("XA_Banter_CorwinNalia", "GLOBAL", 2)
		SetGlobal("XA_ReturnToBG", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Nalia"))
	~
	EXIT

	IF ~~ THEN REPLY @348 /* ~Dialog B-12~ */
	DO ~
		SetGlobal("XA_Banter_CorwinNalia", "GLOBAL", 2)
		SetGlobal("XA_ReturnToBG", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Nalia"))
	~
	EXIT

	IF ~~ THEN REPLY @349 /* ~Dialog B-13~ */
	DO ~
		SetGlobal("XA_Banter_CorwinNalia", "GLOBAL", 4)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Nalia"))
	~
	EXIT

	IF ~~ THEN REPLY @350 /* ~Dialog B-14~ */
	DO ~
		SetGlobal("XA_Banter_CorwinNalia", "GLOBAL", 6)
		SetGlobal("XA_ReturnToBG", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Nalia"))
	~
	EXIT

	IF ~~ THEN REPLY @351 /* ~Dialog B-15~ */
	DO ~
		SetGlobal("XA_Banter_CorwinNalia", "GLOBAL", 6)
		SetGlobal("XA_ReturnToBG", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Nalia"))
	~
	EXIT

	IF ~~ THEN REPLY @352 /* ~Dialog B-16~ */
	DO ~
		SetGlobal("XA_Banter_CorwinHaerDalis", "GLOBAL", 2)
		SetGlobal("XA_CorwinPromoted", "GLOBAL", 0)
		Wait(1)
		ActionOverride("HaerDalis", StartDialog("HAERDAJ", "XACORWIN"))
	~
	EXIT

	IF ~~ THEN REPLY @353 /* ~Dialog B-17~ */
	DO ~
		SetGlobal("XA_Banter_CorwinHaerDalis", "GLOBAL", 2)
		SetGlobal("XA_CorwinPromoted", "GLOBAL", 1)
		Wait(1)
		ActionOverride("HaerDalis", StartDialog("HAERDAJ", "XACORWIN"))
	~
	EXIT

	IF ~~ THEN REPLY @354 /* ~Dialog B-18~ */
	DO ~
		SetGlobal("XA_Banter_CorwinHaerDalis", "GLOBAL", 4)
		SetGlobal("XA_CorwinRomanceActive","GLOBAL",2)
		SetGlobal("HaerDalisRomanceActive","GLOBAL",2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("HaerDalis"))
	~
	EXIT

	IF ~~ THEN REPLY @355 /* ~Dialog B-19~ */
	DO ~
		SetGlobal("XA_Banter_CorwinHaerDalis", "GLOBAL", 4)
		SetGlobal("XA_CorwinRomanceActive","GLOBAL",2)
		SetGlobal("HaerDalisRomanceActive","GLOBAL",0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("HaerDalis"))
	~
	EXIT

	IF ~~ THEN REPLY @356 /* ~Dialog B-20~ */
	DO ~
		SetGlobal("XA_Banter_CorwinHaerDalis", "GLOBAL", 4)
		SetGlobal("XA_CorwinRomanceActive","GLOBAL",1)
		SetGlobal("HaerDalisRomanceActive","GLOBAL",2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("HaerDalis"))
	~
	EXIT

	IF ~~ THEN REPLY @357 /* ~Dialog B-21~ */
	DO ~
		SetGlobal("XA_Banter_CorwinHaerDalis", "GLOBAL", 4)
		SetGlobal("XA_CorwinRomanceActive","GLOBAL",0)
		SetGlobal("HaerDalisRomanceActive","GLOBAL",0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("HaerDalis"))
	~
	EXIT

	IF ~~ THEN REPLY @358 /* ~Dialog B-22~ */
	DO ~
		SetGlobal("XA_Banter_CorwinMinsc", "GLOBAL", 2)
		SetGlobal("XA_CorwinPromoted", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Minsc"))
	~
	EXIT

	IF ~~ THEN REPLY @359 /* ~Dialog B-23~ */
	DO ~
		SetGlobal("XA_Banter_CorwinMinsc", "GLOBAL", 4)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Minsc"))
	~
	EXIT

	IF ~~ THEN REPLY @360 /* ~Dialog B-24~ */
	DO ~
		SetGlobal("XA_Banter_CorwinMinsc", "GLOBAL", 6)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Minsc"))
	~
	EXIT

	IF ~~ THEN REPLY @361 /* ~Dialog B-25~ */
	DO ~
		SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 2)
		SetGlobal("XA_CorwinPromoted", "GLOBAL", 0)
		Wait(1)
		ActionOverride("Rasaad", StartDialog("RASAADJ", "XACORWIN"))
	~
	EXIT

	IF ~~ THEN REPLY @362 /* ~Dialog B-26~ */
	DO ~
		SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 2)
		SetGlobal("XA_CorwinPromoted", "GLOBAL", 1)
		Wait(1)
		ActionOverride("Rasaad", StartDialog("RASAADJ", "XACORWIN"))
	~
	EXIT

	IF ~~ THEN REPLY @363 /* ~Dialog B-27~ */
	DO ~
		SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 4)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Rasaad"))
	~
	EXIT

	IF ~~ THEN REPLY @364 /* ~Dialog B-28~ */
	DO ~
		SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 6)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Rasaad"))
	~
	EXIT

	IF ~~ THEN REPLY @365 /* ~Dialog B-29~ */
	DO ~
		SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 8)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Rasaad"))
	~
	EXIT

	IF ~~ THEN REPLY @366 /* ~Dialog B-30~ */
	DO ~
		SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 8)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Rasaad"))
	~
	EXIT

	IF ~~ THEN REPLY @367 /* ~Dialog B-31~ */
	DO ~
		SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 8)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Rasaad"))
	~
	EXIT

	IF ~~ THEN REPLY @368 /* ~Dialog B-32~ */
	DO ~
		SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 8)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Rasaad"))
	~
	EXIT

	IF ~~ THEN REPLY @369 /* ~Dialog B-33~ */
	DO ~
		SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 8)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Rasaad"))
	~
	EXIT

	IF ~~ THEN REPLY @370 /* ~Dialog B-34~ */
	DO ~
		SetGlobal("XA_Banter_CorwinYoshimo", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Yoshimo"))
	~
	EXIT

	IF ~~ THEN REPLY @371 /* ~Dialog B-35~ */
	DO ~
		SetGlobal("XA_Banter_CorwinCernd", "GLOBAL", 2)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Cernd"))
	~
	EXIT

	IF ~~ THEN REPLY @372 /* ~Dialog B-36~ */
	DO ~
		SetGlobal("XA_Banter_CorwinCernd", "GLOBAL", 2)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Cernd"))
	~
	EXIT

	IF ~~ THEN REPLY @373 /* ~Dialog B-37~ */
	DO ~
		SetGlobal("XA_Banter_CorwinValygar", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Valygar"))
	~
	EXIT

	IF ~~ THEN REPLY @374 /* ~Dialog B-38~ */
	DO ~
		SetGlobal("XA_Banter_CorwinValygar", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Valygar"))
	~
	EXIT

	IF ~~ THEN REPLY @375 /* ~Dialog B-39~ */
	DO ~
		SetGlobal("XA_CorwinValygarLavok", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Valygar"))
	~
	EXIT

	IF ~~ THEN REPLY @376 /* ~Dialog B-40~ */
	DO ~
		SetGlobal("XA_Banter_CorwinNeera", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Neera"))
	~
	EXIT

	IF ~~ THEN REPLY @377 /* ~Dialog B-41~ */
	DO ~
		SetGlobal("XA_Banter_CorwinNeera", "GLOBAL", 4)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Neera"))
	~
	EXIT

	IF ~~ THEN REPLY @378 /* ~Dialog B-42~ */
	DO ~
		SetGlobal("XA_Banter_CorwinHexxat", "GLOBAL", 4)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Hexxat"))
	~
	EXIT

	IF ~~ THEN REPLY @379 /* ~Dialog B-43~ */
	DO ~
		SetGlobal("XA_Banter_CorwinKorgan", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Korgan"))
	~
	EXIT

	IF ~~ THEN REPLY @380 /* ~Dialog B-44~ */
	DO ~
		SetGlobal("XA_Banter_CorwinKorgan", "GLOBAL", 4)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Korgan"))
	~
	EXIT

	IF ~~ THEN REPLY @381 /* ~Dialog B-45~ */
	DO ~
		SetGlobal("XA_Banter_CorwinViconia", "GLOBAL", 2)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Viconia"))
	~
	EXIT

	IF ~~ THEN REPLY @382 /* ~Dialog B-46~ */
	DO ~
		SetGlobal("XA_Banter_CorwinViconia", "GLOBAL", 2)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Viconia"))
	~
	EXIT

	IF ~~ THEN REPLY @383 /* ~Dialog B-47~ */
	DO ~
		SetGlobal("XA_Banter_CorwinViconia", "GLOBAL", 4)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Viconia"))
	~
	EXIT

	IF ~~ THEN REPLY @384 /* ~Dialog B-48~ */
	DO ~
		SetGlobal("XA_Banter_CorwinViconia", "GLOBAL", 6)
		Wait(1)
		ActionOverride("Viconia", StartDialog("VICONIJ", "XACORWIN"))
	~
	EXIT

	IF ~~ THEN REPLY @385 /* ~Dialog B-49~ */
	DO ~
		SetGlobal("XA_Banter_CorwinImoen", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Imoen2"))
	~
	EXIT

	IF ~~ THEN REPLY @386 /* ~Dialog B-50~ */
	DO ~
		SetGlobal("XA_Banter_CorwinImoen", "GLOBAL", 3)
		SetGlobal("XA_BodhiDead", "GLOBAL", 2)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("XA_ImoenSoulReturned", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Imoen2"))
	~
	EXIT

	IF ~~ THEN REPLY @387 /* ~Dialog B-51~ */
	DO ~
		SetGlobal("XA_Banter_CorwinImoen", "GLOBAL", 3)
		SetGlobal("XA_BodhiDead", "GLOBAL", 2)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 0)
		SetGlobal("XA_ImoenSoulReturned", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Imoen2"))
	~
	EXIT

	IF ~~ THEN REPLY @388 /* ~Dialog B-52~ */
	DO ~
		SetGlobal("XA_Banter_CorwinImoen", "GLOBAL", 4)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Imoen2"))
	~
	EXIT

	IF ~~ THEN REPLY @389 /* ~Dialog B-53~ */
	DO ~
		SetGlobal("XA_Banter_CorwinImoen", "GLOBAL", 4)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Imoen2"))
	~
	EXIT

	IF ~~ THEN REPLY @390 /* ~Dialog B-54~ */
	DO ~
		SetGlobal("XA_CorwinEdwinThay", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Edwin"))
	~
	EXIT

	IF ~~ THEN REPLY @391 /* ~Dialog B-55~ */
	DO ~
		SetGlobal("XA_EdwinWasMale", "GLOBAL", 1)
		SetGlobal("XA_CorwinEdwinFemale", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Edwin"))
	~
	EXIT

	IF ~~ THEN REPLY @392 /* ~Dialog B-56~ */
	DO ~
		SetGlobal("XA_Banter_CorwinEdwin", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Edwin"))
	~
	EXIT

	IF ~~ THEN REPLY @393 /* ~Dialog B-57~ */
	DO ~
		SetGlobal("XA_Banter_CorwinEdwin", "GLOBAL", 4)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Edwin"))
	~
	EXIT

	IF ~~ THEN REPLY @394 /* ~Dialog B-58~ */
	DO ~
		SetGlobal("XA_Banter_CorwinEdwin", "GLOBAL", 6)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Edwin"))
	~
	EXIT

	IF ~~ THEN REPLY @395 /* ~Dialog B-59~ */
	DO ~
		SetGlobal("XA_Banter_CorwinJan", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Jan"))
	~
	EXIT

	IF ~~ THEN REPLY @396 /* ~Dialog B-60~ */
	DO ~
		SetGlobal("XA_Banter_CorwinJan", "GLOBAL", 4)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Jan"))
	~
	EXIT

	IF ~~ THEN REPLY @397 /* ~Dialog B-61~ */
	DO ~
		SetGlobal("XA_CorwinAngryAtKeldorn", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Keldorn"))
	~
	EXIT

	IF ~~ THEN REPLY @398 /* ~Dialog B-62~ */
	DO ~
		SetGlobal("XA_Banter_CorwinKeldornOpt1", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Keldorn"))
	~
	EXIT

	IF ~~ THEN REPLY @399 /* ~Dialog B-63~ */
	DO ~
		SetGlobal("XA_Banter_CorwinKeldorn", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Keldorn"))
	~
	EXIT

	IF ~~ THEN REPLY @400 /* ~Dialog B-64~ */
	DO ~
		SetGlobal("XA_Banter_CorwinKeldorn", "GLOBAL", 4)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Keldorn"))
	~
	EXIT

	IF ~~ THEN REPLY @401 /* ~Dialog B-65~ */
	DO ~
		SetGlobal("XA_Banter_CorwinKeldorn", "GLOBAL", 4)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Keldorn"))
	~
	EXIT

	IF ~~ THEN REPLY @402 /* ~Dialog B-66~ */
	DO ~
		SetGlobal("XA_AVComplimentFamily", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Neera"))
	~
	EXIT

	IF ~~ THEN REPLY @403 /* ~Dialog B-67~ */
	DO ~
		SetGlobal("XA_Banter_CorwinAnomen", "GLOBAL", 4)
		SetGlobal("XA_CorwinHatesAnomen", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Anomen"))
	~
	EXIT

	IF ~~ THEN REPLY @404 /* ~Dialog B-68~ */
	DO ~
		SetGlobal("XA_Banter_CorwinJaheira", "GLOBAL", 2)
		SetGlobal("XA_IrenicusBeat", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Jaheira"))
	~
	EXIT

	IF ~~ THEN REPLY @405 /* ~Dialog B-69~ */
	DO ~
		SetGlobal("XA_Banter_CorwinJaheira", "GLOBAL", 2)
		SetGlobal("XA_IrenicusBeat", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Jaheira"))
	~
	EXIT

	IF ~~ THEN REPLY @406 /* ~Dialog B-70~ */
	DO ~
		SetGlobal("XA_Banter_CorwinJaheira", "GLOBAL", 5)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Jaheira"))
	~
	EXIT

	IF ~~ THEN REPLY @407 /* ~Dialog B-71~ */
	DO ~
		SetGlobal("XA_Banter_CorwinJaheira", "GLOBAL", 7)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Jaheira"))
	~
	EXIT

	IF ~~ THEN REPLY @408 /* ~Dialog B-72~ */
	DO ~
		SetGlobal("XA_Banter_CorwinAerie", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Aerie"))
	~
	EXIT

	IF ~~ THEN REPLY @409 /* ~Dialog B-73~ */
	DO ~
		Wait(1)
	~
	EXIT

	IF ~~ THEN REPLY @410 /* ~Dialog B-74~ */
	DO ~
		SetGlobal("XA_Banter_CorwinAerie", "GLOBAL", 5)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Aerie"))
	~
	EXIT

	IF ~~ THEN REPLY @411 /* ~Dialog B-75~ */
	DO ~
		SetGlobal("XA_Banter_CorwinAerie", "GLOBAL", 7)
		SetGlobal("bd_asha_duel","global",3)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Aerie"))
	~
	EXIT

	IF ~~ THEN REPLY @412 /* ~Dialog B-76~ */
	DO ~
		SetGlobal("XA_Banter_CorwinAerie", "GLOBAL", 9)
		SetGlobal("bd_asha_duel","global",3)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Aerie"))
	~
	EXIT

	IF ~~ THEN REPLY @413 /* ~Dialog B-77~ */
	DO ~
		SetGlobal("XA_Banter_CorwinAerie", "GLOBAL", 7)
		SetGlobal("bd_asha_duel","global",0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Aerie"))
	~
	EXIT

	IF ~~ THEN REPLY @414 /* ~Dialog B-78~ */
	DO ~
		SetGlobal("XA_Banter_CorwinAerie", "GLOBAL", 9)
		SetGlobal("bd_asha_duel","global",0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Aerie"))
	~
	EXIT

	IF ~~ THEN REPLY @415 /* ~Dialog B-79~ */
	DO ~
		SetGlobal("XA_AVComplimentFamily", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Neera"))
	~
	EXIT

	IF ~~ THEN REPLY @416 /* ~Dialog B-80~ */
	DO ~
		SetGlobal("XA_Banter_CorwinDorn", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Dorn"))
	~
	EXIT

	IF ~~ THEN REPLY @417 /* ~Dialog B-81~ */
	DO ~
		SetGlobal("XA_Banter_CorwinDorn", "GLOBAL", 4)
		SetGlobal("XA_DornPatronsDead", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Dorn"))
	~
	EXIT

	IF ~~ THEN REPLY @418 /* ~Dialog B-82~ */
	DO ~
		SetGlobal("XA_AVComplimentFamily", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Aerie"))
	~
	EXIT

	IF ~~ THEN REPLY @419 /* ~Dialog B-83~ */
	DO ~
		SetGlobal("XA_AVComplimentFamily", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Aerie"))
	~
	EXIT

	IF ~~ THEN REPLY @420 /* ~Dialog B-84~ */
	DO ~
		SetGlobal("XA_AVComplimentFamily", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Aerie"))
	~
	EXIT
	
	IF ~~ THEN REPLY @498 /* ~Dialog B-85~ */
	DO ~
		SetGlobal("XA_CorwinValygarBG", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Valygar"))
	~
	EXIT

	IF ~~ THEN REPLY @499 /* ~Dialog B-86~ */
	DO ~
		SetGlobal("XA_Banter_CorwinSarevok", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Sarevok"))
	~
	EXIT

	IF ~~ THEN REPLY @500 /* ~Dialog B-87~ */
	DO ~
		SetGlobal("XA_Banter_CorwinSarevok", "GLOBAL", 4)
		Wait(1)
		ActionOverride("Sarevok", StartDialog("SAREV25J", "XACORWIN"))
	~
	EXIT
	
	IF ~~ THEN REPLY @501 /* ~Dialog B-88 R~ */
	DO ~
		SetGlobal("XA_Banter_CorwinSarevok", "GLOBAL", 6)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Sarevok"))
	~
	EXIT
	
	IF ~~ THEN REPLY @502 /* ~Dialog B-88 NR~ */
	DO ~
		SetGlobal("XA_Banter_CorwinSarevok", "GLOBAL", 6)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 0)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Sarevok"))
	~
	EXIT
	
	IF ~~ THEN REPLY @539 /* ~Dialog B-89A~ */
	DO ~
		SetGlobal("XA_SarevokSoul", "GLOBAL", 2)
		SetGlobal("ImoenGiveSoul","GLOBAL",0)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("XA_89ADebug", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Sarevok"))
	~
	EXIT
	
	IF ~~ THEN REPLY @540 /* ~Dialog B-89B~ */
	DO ~
		SetGlobal("XA_SarevokSoul", "GLOBAL", 2)
		SetGlobal("ImoenGiveSoul","GLOBAL",0)
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("XA_89BDebug", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XACORWIN", Interact("Sarevok"))
	~
	EXIT
	
	IF ~~ THEN REPLY @591 /*~Dialog B-90 (Schael)~*/
	DO ~
		SetGlobal("XA_Banter_CorwinCaelar", "GLOBAL", 2)
	~
	EXIT
	
	IF ~~ THEN REPLY @592 /*~Dialog B-91 (Sarevok)~*/
	DO ~
		SetGlobal("XA_Banter_CaelarSarevok", "GLOBAL", 2)
	~
	EXIT
	
	IF ~~ THEN REPLY @593 /*~Dialog B-92 (Keldorn)~*/
	DO ~
		SetGlobal("XA_Banter_CaelarKeldorn", "GLOBAL", 2)
	~
	EXIT
	
	IF ~~ THEN REPLY @594 /*~Dialog B-93 (Rasaad)~*/
	DO ~
		SetGlobal("XA_Banter_CaelarRasaad", "GLOBAL", 2)
	~
	EXIT
	
	IF ~~ THEN REPLY @595 /*~Dialog B-94 (Jaheira)~*/
	DO ~
		SetGlobal("XA_Banter_CaelarJaheira", "GLOBAL", 2)
	~
	EXIT
	
	IF ~~ THEN REPLY @596 /*~Dialog B-95 (Mazzy)~*/
	DO ~
		SetGlobal("XA_Banter_CaelarMazzy", "GLOBAL", 2)
	~
	EXIT
	
	IF ~~ THEN REPLY @597 /*~Dialog B-96 (Dorn)~*/
	DO ~
		SetGlobal("XA_Banter_CaelarDorn", "GLOBAL", 2)
	~
	EXIT
	
	IF ~~ THEN REPLY @603 /*~Dialog B-99~*/
	DO ~
		SetGlobal("XA_Banter_CaelarNeera", "GLOBAL", 2)
	~
	EXIT
	
	IF ~~ THEN REPLY @601 /*~Dialog B-100~*/
	DO ~
		SetGlobal("XA_Banter_CaelarPlayer", "GLOBAL", 2)
	~
	EXIT
	
	IF ~~ THEN REPLY @602 /*~Dialog B-101~*/
	DO ~
		SetGlobal("XA_Banter_CaelarPlayer", "GLOBAL", 2)
		SetGlobal("XA_CaelarBanterDelay", "GLOBAL", 2)
	~
	EXIT
	
	
	IF ~~ THEN REPLY @26
	GOTO XA_MainMenu
END

IF ~~ THEN BEGIN XA_ChangeChapter
	SAY @327
	
	IF ~~ THEN REPLY @328
	DO ~
		SetGlobal("chapter", "GLOBAL", 3)
	~
	EXIT
	
	IF ~~ THEN REPLY @329
	DO ~
		SetGlobal("chapter", "GLOBAL", 4)
	~
	EXIT
	
	IF ~~ THEN REPLY @26
	GOTO XA_MainMenu
END

IF ~~ THEN BEGIN XA_TestInteraction
	SAY @280
	
	IF ~~ THEN REPLY @620
	DO ~
		SetGlobal("XA_CorwinNebAthkatla", "GLOBAL", 1)
		Wait(1)
		CreateCreature("Neb", [-1.-1],N)
	~
	EXIT
	
	IF ~~ THEN REPLY @621
	DO ~
		SetGlobal("XA_CorwinNebAthkatla", "GLOBAL", 0)
		Wait(1)
		CreateCreature("Neb", [-1.-1],N)
	~
	EXIT
	
	IF ~~ THEN REPLY @584 /*~XATHRIX~*/
	DO ~
		SetGlobal("XA_ThrixSpawn", "GLOBAL", 1)
		CreateCreature("XATHRIX", [-1.-1], N)
		Wait(1)
		ActionOverride("XATHRIX", StartDialog("XATHRIX", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @579
	DO ~
		SetGlobal("XA_AshatielSpirit", "GLOBAL", 1)
		CreateCreature("XAASHASP", [-1.-1], N)
		Wait(1)
		ActionOverride("XAASHASP", StartDialog("XAASHASP", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @574
	DO ~
		CreateCreature("XAELF01", [-1.-1], N)
		CreateCreature("XAELF02", [-1.-1], N)
		CreateCreature("XAELF03", [-1.-1], N)
		SetGlobal("XA_LodobDead", "GLOBAL", 1)
		Wait(1)
		ActionOverride("XAELF01", StartDialog("XAELF01", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @572
	DO ~
		CreateCreature("XALATH01", [-1.-1], N)
		CreateCreature("XALATH02", [-1.-1], N)
		CreateCreature("XALATH03", [-1.-1], N)
		GiveItemCreate("XABENOHD", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XABENOHD", IDENTIFIED,TRUE))
	~
	EXIT
	
	IF ~~ THEN REPLY @571
	DO ~
		CreateCreature("XALATH01", [-1.-1], N)
		CreateCreature("XALATH02", [-1.-1], N)
		CreateCreature("XALATH03", [-1.-1], N)
		GiveItemCreate("XASTDAGB", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XASTDAGB", IDENTIFIED,TRUE))
	~
	EXIT
	
	IF ~~ THEN REPLY @563 /* ~Cespenar.~ */
	DO ~
		CreateCreature("BOTSMITH", [-1.-1], N)
		Wait(1)
	~	
	EXIT
	
	IF ~~ THEN REPLY @535
	DO ~
		SetGlobal("XA_XACC4_Debug","GLOBAL", 1)
		SetGlobal("XA_TentCS", "GLOBAL", 1)
		CreateCreature("XACC4", [-1.-1], N)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @532
	DO ~
		SetGlobal("TalkedSarMel01","GLOBAL",1)
		SetGlobal("MelissanJob","GLOBAL",2)
		SetGlobal("Mel01GromnirDeath","GLOBAL",0)
		SetGlobal("HadBhaal25Dream1","GLOBAL",1)
		CreateCreature("MEL01", [-1.-1], N)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @528
	DO ~
		CreateCreature("SARBUL05", [-1.-1], N)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @529
	DO ~
		CreateCreature("SARPROVF", [-1.-1], N)
		SetGlobal("XA_CorwinCleansed", "GLOBAL", 2)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @531
	DO ~
		CreateCreature("SARPROVF", [-1.-1], N)
		SetGlobal("XA_CorwinCleansed", "GLOBAL", 0)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @530
	DO ~
		CreateCreature("SARPRO01", [-1.-1], N)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @527
	DO ~
		CreateCreature("HGWRA01", [-1.-1], N)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @518
	DO ~
		CreateCreature("XAHAMZA", [-1.-1], N)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @326
	DO ~
		CreateCreature("XA800M", [-1.-1], N)
		CreateCreature("XA800W", [-1.-1], N)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @323
	DO ~
		CreateCreature("XAALYTH", [-1.-1], N)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @321
	DO ~
		CreateCreature("XAGORION", [-1.-1], N)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @309
	DO ~
		CreateCreature("XAG1001A", [-1.-1], N)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @294 /*XAINCUB*/
	DO ~
		CreateCreature("XAINCUB", [-1.-1], N)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @293 /*~XALYRIEL~*/
	DO ~
		CreateCreature("XALYRIEL", [-1.-1], N)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @291 /*~XABREVLK (Help = 1)~*/
	DO ~
		SetGlobal("HelpBrevlik", "GLOBAL", 1)
		CreateCreature("XABREVLK", [-1.-1], N)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @290 /*~XABREVLK (Help = 2)~*/
	DO ~
		SetGlobal("HelpBrevlik", "GLOBAL", 2)
		CreateCreature("XABREVLK", [-1.-1], N)
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @279
	DO ~
		//MoveGlobal("MYAREA", "FORTHEL",[-1.-1])
		CreateCreature("FORTHE", [-1.-1], N)
		ActionOverride("FORTHEL", SetDialog("XAFORTHE"))
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @283 /* ~Corwin Sex 1.~*/
	DO ~
		SetGlobal("XA_CorwinSex_1", "GLOBAL", 2)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @284 /* ~Corwin Sex 2.~*/
	DO ~
		SetGlobal("XA_CorwinSex_2", "GLOBAL", 3)
		ActionOverride("XACORWIN", StartDialog("XACORWIJ", Player1))
	~
	EXIT
	
	
	IF ~~ THEN REPLY @26 /* ~Go back to the prior menu.~ */
	GOTO XA_MainMenu
END

IF ~~ THEN BEGIN XA_Menu_AdvanceTime
	SAY @247 /* ~How far do you want me to advance the current time?~*/
	
	IF ~~ THEN REPLY @242
	DO ~
		AdvanceTime(ONE_HOUR)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @243
	DO ~
		AdvanceTime(TWO_HOURS)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @244
	DO ~
		AdvanceTime(FOUR_HOURS)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @245
	DO ~
		AdvanceTime(EIGHT_HOURS)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @26 /* ~Go back to the prior menu.~ */
	GOTO XA_MainMenu
END

IF ~~ THEN BEGIN XA_Menu_StartStore
	SAY @217 /* ~Which store do you want to open?~*/
	
	IF ~~ THEN REPLY @221 /* ~OHNBARKE~ */
	DO ~
		StartStore("OHNBARKE", LastTalkedToBy(Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @220 /* ~WINNKEEP~ */
	DO ~
		StartStore("WINNKEEP", LastTalkedToBy(Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @218 /* ~XAWVBAR~ */
	DO ~
		StartStore("XAWVBAR", LastTalkedToBy(Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @219 /* ~XAMELKOR~ */
	DO ~
		StartStore("XAMELKOR", LastTalkedToBy(Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @26 /* ~Go back to the prior menu.~ */
	GOTO XA_MainMenu
END

IF ~~ THEN BEGIN XA_Menu_ChangeTime
	SAY @186
	
	IF ~~ THEN REPLY @162
	DO ~
		DAYNIGHT(0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @163
	DO ~
		DAYNIGHT(1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @164
	DO ~
		DAYNIGHT(2)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @165
	DO ~
		DAYNIGHT(3)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @166
	DO ~
		DAYNIGHT(4)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @167
	DO ~
		DAYNIGHT(5)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @168
	DO ~
		DAYNIGHT(6)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @169
	DO ~
		DAYNIGHT(7)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @170
	DO ~
		DAYNIGHT(8)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @171
	DO ~
		DAYNIGHT(9)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @172
	DO ~
		DAYNIGHT(10)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @173
	DO ~
		DAYNIGHT(11)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @174
	DO ~
		DAYNIGHT(12)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @175
	DO ~
		DAYNIGHT(13)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @176
	DO ~
		DAYNIGHT(14)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @177
	DO ~
		DAYNIGHT(15)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @178
	DO ~
		DAYNIGHT(16)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @179
	DO ~
		DAYNIGHT(17)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @180
	DO ~
		DAYNIGHT(18)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @181
	DO ~
		DAYNIGHT(19)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @182
	DO ~
		DAYNIGHT(20)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @183
	DO ~
		DAYNIGHT(21)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @184
	DO ~
		DAYNIGHT(22)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @185
	DO ~
		DAYNIGHT(23)
	~
	GOTO XA_MainMenu
END

IF ~~ THEN BEGIN XA_Menu_ChapterMovie
	SAY @153 
	
	IF ~~ THEN REPLY @264 /* ~XASARA1~ */
	DO ~
		TextScreen("BADEND1")
	~
	EXIT
	
	IF ~~ THEN REPLY @265 /* ~XASARA1~ */
	DO ~
		TextScreen("BADEND2")
	~
	EXIT
	
	IF ~~ THEN REPLY @266 /* ~XASARA1~ */
	DO ~
		TextScreen("BADEND3")
	~
	EXIT
	
	
	IF ~~ THEN REPLY @240 /* ~XASARA1~ */
	DO ~
		TextScreen("XASARA4")
	~
	EXIT
	
	IF ~~ THEN REPLY @239 /* ~XASARA1~ */
	DO ~
		TextScreen("XASARA3")
	~
	EXIT
	
	IF ~~ THEN REPLY @238 /* ~XASARA1~ */
	DO ~
		TextScreen("XASARA2")
	~
	EXIT
	
	IF ~~ THEN REPLY @237 /* ~XASARA1~ */
	DO ~
		TextScreen("XASARA1")
	~
	EXIT
	
	IF ~~ THEN REPLY @230 /* ~Dinner (Romance)~ */
	DO ~
		TextScreen("XADINROM")
	~
	EXIT
	
	IF ~~ THEN REPLY @229 /* ~Dinner.~ */
	DO ~
		TextScreen("XADINNER")
	~
	EXIT
	
	IF ~~ THEN REPLY @154 /* ~Return to BG (Corwin Romance).~ */
	DO ~
		TextScreen("CHBGROM")
	~
	EXIT
	
	IF ~~ THEN REPLY @155 /* ~Return to BG.~ */
	DO ~
		TextScreen("CHBG")
	~
	EXIT
	
	IF ~~ THEN REPLY @26
	GOTO XA_MainMenu
END


IF ~~ THEN BEGIN XA_Menu_IncrementBanter
	SAY @75 /* ~Which counter do you want me to increment?~ */
	
	
	
	IF ~~ THEN REPLY @103 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @104 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 2)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @105 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 3)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @106 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 4)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @107 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 5)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @108 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 6)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @109 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 7)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @110 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 8)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @111 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 9)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @112 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 10)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @113 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 11)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @114 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 12)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @115 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 13)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @116 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 14)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @117 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 15)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @118 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 16)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @119 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 17)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @120 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 18)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @121 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 19)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @122 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 20)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @123 
	DO ~
		SetGlobal("XA_Banter_NextInteraction", "GLOBAL", 21)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @53 /* ~Increment Corwin Banter - Anomen~ */
	DO ~
		IncrementGlobal("XA_Banter_CorwinPlayer", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @54 /* ~Increment Corwin Banter - Aerie~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinAerie", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @55 /* ~Increment Corwin Banter - Anomen~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinAnomen", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @56 /* ~Increment Corwin Banter - Cernd~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinCernd", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @57 /*~Increment Corwin Banter - Dorn~ */
	DO ~
		IncrementGlobal("XA_Banter_CorwinDorn", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @58 /* ~Increment Corwin Banter - Edwin~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinEdwin", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @59 /* ~Increment Corwin Banter - HaerDalis~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinHaerDalis", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @60 /* ~Increment Corwin Banter - Hexxat~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinHexxat", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @61 /* ~Increment Corwin Banter - Imoen~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinImoen", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @62 /* ~Increment Corwin Banter - Jaheira~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinJaheira", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @63 /* ~Increment Corwin Banter - Jan~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinJan", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @64 /* ~Increment Corwin Banter - Keldorn~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinKeldorn", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @65 /* ~Increment Corwin Banter - Korgan~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinKorgan", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @66 /* ~Increment Corwin Banter - Mazzy~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinMazzy", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @67 /* ~Increment Corwin Banter - Minsc~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinMinsc", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @68 /* ~Increment Corwin Banter - Nalia~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinNalia", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @69 /* ~Increment Corwin Banter - Neera~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinNeera", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @70 /* ~Increment Corwin Banter - Rasaad~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @71 /* ~Increment Corwin Banter - Valygar~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinValygar", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @72 /* ~Increment Corwin Banter - Viconia~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinViconia", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @73 /* ~Increment Corwin Banter - Yoshimo~*/
	DO ~
		IncrementGlobal("XA_Banter_CorwinYoshimo", "GLOBAL", 1)
		SetGlobalTimer("XA_BanterTimer", "LOCALS", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	
	
	IF ~~ THEN REPLY @26
	GOTO XA_MainMenu
END

IF ~~ THEN BEGIN XA_NeedMoreHelp
	SAY @25 /* ~Of course. Visit the XAA Discord. There, you can find answers to your questions, and learn how you can contribute to the development of this mod.~ */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_Menu_NewArea
	SAY @46 /* ~Where do you want me to send you?~*/ 
	
	IF ~~ THEN REPLY @47 /* ~Baldur's Gate General Store (BG1302).~ */
	DO ~
		LeaveAreaLUAEntry("BG1302","Entry1",[0.0],S)
	~
	EXIT
	
	IF ~~ THEN REPLY @48 /* ~Baldur's Gate General Store (BG1320).~ */
	DO ~
		LeaveAreaLUAEntry("BG1320","Entry1",[0.0],S)
	~
	EXIT
	
	IF ~~ THEN REPLY @26 /* ~Go back to the prior menu.~ */
	GOTO XA_MainMenu
END

IF ~~ THEN BEGIN XA_Menu_CreateCreature
	SAY @40 /* ~What creature do you want me to create?~ */
	
	IF ~~ THEN REPLY @41
	DO ~
		CreateCreature("NEB", [-1.-1], S)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @52
	DO ~
		CreateCreature("XACORWIN", [-1.-1], S)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @26 /* ~Go back to the prior menu.~ */
	GOTO XA_MainMenu
END

IF ~~ THEN BEGIN XA_Menu_CreateItem
	SAY @35 /* ~What item do you want me to create for you?~ */
	
	IF ~~ THEN REPLY @625
	DO ~
		GiveItemCreate("RING30", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("RING30", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @618
	DO ~
		GiveItemCreate("XAAMULET", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XAAMULET", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @563
	DO ~
		GiveItemCreate("bow20", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("bow20", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @562  /* ~Bowstring of Gond.~*/
	DO ~
		GiveItemCreate("compon10", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("compon10", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @560 /*~Transform Corwin Armor.~ */
	DO ~
		ActionOverride(Player1, TransformItem("XACORCHN", "XACORCH4"))
		ActionOverride(Player2, TransformItem("XACORCHN", "XACORCH4"))
		ActionOverride(Player3, TransformItem("XACORCHN", "XACORCH4"))
		ActionOverride(Player4, TransformItem("XACORCHN", "XACORCH4"))
		ActionOverride(Player5, TransformItem("XACORCHN", "XACORCH4"))
		ActionOverride(Player6, TransformItem("XACORCHN", "XACORCH4"))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @561 /* ~Transform Corwin Bow.~*/
	DO ~
		ActionOverride(Player1, TransformItem("XACORBOW", "XACORBO3"))
		ActionOverride(Player2, TransformItem("XACORBOW", "XACORBO3"))
		ActionOverride(Player3, TransformItem("XACORBOW", "XACORBO3"))
		ActionOverride(Player4, TransformItem("XACORBOW", "XACORBO3"))
		ActionOverride(Player5, TransformItem("XACORBOW", "XACORBO3"))
		ActionOverride(Player6, TransformItem("XACORBOW", "XACORBO3"))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @559
	DO ~
		GiveItemCreate("XACORCH4", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XACORCH4", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @558
	DO ~
		GiveItemCreate("XAQUIVER", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XAQUIVER", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @557
	DO ~
		GiveItemCreate("BDBOW06", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("BDBOW06", IDENTIFIED,TRUE))
		GiveItemCreate("XACORBOW", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XACORBOW", IDENTIFIED,TRUE))
		GiveItemCreate("XACORBO3", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XACORBO3", IDENTIFIED,TRUE))
		GiveItemCreate("XACORBO4", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XACORBO4", IDENTIFIED,TRUE))
		GiveItemCreate("XACORBO5", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XACORBO5", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @319
	DO ~
		GiveItemCreate("XALYAMUL", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XALYAMUL", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @318
	DO ~
		GiveItemCreate("XAMSRING", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XAMSRING", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @317
	DO ~
		GiveItemCreate("XASWORD", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XASWORD", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @316
	DO ~
		GiveItemCreate("XACHICK", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XACHICK", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @292 /* ~AMUL27 (Selarrine Amulet).~ */
	DO ~
		GiveItemCreate("AMUL27", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("AMUL27", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @255 /* XAMEDAL */
	DO ~
		GiveItemCreate("XAMEDAL", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XAMEDAL", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @252 /* ~XAORW1~*/
	DO ~
		GiveItemCreate("XAORW1", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XAORW1", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @253 /* ~XAORW2~*/
	DO ~
		GiveItemCreate("XAORW2", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XAORW2", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @254 /* ~XALDUNC~*/
	DO ~
		GiveItemCreate("XALDUNC", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XALDUNC", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @234 /* ~XASTDAG~ */
	DO ~
		GiveItemCreate("XASTDAG", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XASTDAG", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @575 /* ~XASTDAGB~ */
	DO ~
		GiveItemCreate("XASTDAGB", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XASTDAGB", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @576 /* ~XASTDAGD~ */
	DO ~
		GiveItemCreate("XASTDAGD", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XASTDAGD", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @214 /* XALEDGER */
	DO ~
		GiveItemCreate("XALEDGER", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XALEDGER", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	//Empowered Rings
	
	IF ~~ THEN REPLY @197 /* ~XARING07~ */
	DO ~
		GiveItemCreate("XARING07", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARING07", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @198 /* ~XARING11~ */
	DO ~
		GiveItemCreate("XARING11", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARING11", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @199 /* ~XARING13~ */
	DO ~
		GiveItemCreate("XARING13", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARING13", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @200 /* ~XARING14~ */
	DO ~
		GiveItemCreate("XARING14", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARING14", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @201 /* ~XARING19~ */
	DO ~
		GiveItemCreate("XARING19", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARING19", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @202 /* ~XARING21~ */
	DO ~
		GiveItemCreate("XARING21", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARING21", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @203 /* ~XARING22~ */
	DO ~
		GiveItemCreate("XARING22", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARING22", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @204 /* ~XARING25~ */
	DO ~
		GiveItemCreate("XARING25", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARING25", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @205 /* ~XARING26~ */
	DO ~
		GiveItemCreate("XARING26", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARING26", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @206 /* ~XARING28~ */
	DO ~
		GiveItemCreate("XARING28", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARING28", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	//Enchanted Rings
	
	IF ~~ THEN REPLY @269 /* ~XARING07~ */
	DO ~
		GiveItemCreate("XARNG07A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARNG07A", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @270 /* ~XARING11~ */
	DO ~
		GiveItemCreate("XARNG11A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARNG11A", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @271 /* ~XARING13~ */
	DO ~
		GiveItemCreate("XARNG13A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARNG13A", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @272 /* ~XARING14~ */
	DO ~
		GiveItemCreate("XARNG14A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARNG14A", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @273 /* ~XARING19~ */
	DO ~
		GiveItemCreate("XARNG19A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARNG19A", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @274 /* ~XARING21~ */
	DO ~
		GiveItemCreate("XARNG21A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARNG21A", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @275 /* ~XARING22~ */
	DO ~
		GiveItemCreate("XARNG22A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARNG22A", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @276 /* ~XARING25~ */
	DO ~
		GiveItemCreate("XARNG25A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARNG25A", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @277 /* ~XARING26~ */
	DO ~
		GiveItemCreate("XARNG26A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARNG26A", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @278 /* ~XARING28~ */
	DO ~
		GiveItemCreate("XARNG28A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARNG28A", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @195 /* ~Engagement Ring (Aldeth).~ */
	DO ~
		GiveItemCreate("XARINGA", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARINGA", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @196 /* ~Engagement Ring (Jhasso).~ */
	DO ~
		GiveItemCreate("XARINGJ", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XARINGJ", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @187 /* ~Shipping Manifests (XAMANFST)~*/
	DO ~
		GiveItemCreate("XAMANFST",LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XAMANFST", IDENTIFIED,TRUE))
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @36 /* Genie's Flask */
	DO ~
		GiveItemCreate("misc4d",LastTalkedToBy(Myself),1,0,0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @101 /* ~Bodhi's Heart.~ */
	DO ~
		GiveItemCreate("MISCBP",LastTalkedToBy(Myself),1,0,0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @102 /* ~Corwin's Body.~*/
	DO ~
		GiveItemCreate("XACORBOD",LastTalkedToBy(Myself),1,0,0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @160 /* ~Doll for Rohma.~*/
	DO ~
		GiveItemCreate("XARDOLL",LastTalkedToBy(Myself),1,0,0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @26 /* ~Go back to the prior menu.~ */
	GOTO XA_MainMenu
END

IF ~~ THEN BEGIN XA_Menu_AdjustVariables 
	SAY @28 /* ~What adjustment would you like me to make?~ */
	
	IF ~~ THEN REPLY @626
	DO ~
		SetGlobal("XA_ExplicitModOverride", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @622
	DO ~
		SetGlobal("MakeStatue","GLOBAL",1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @616
	DO ~
		SetGlobal("XA_GaveCorwinLetter", "GLOBAL", 2)
	~
	GOTO XA_MainMenu	
	
	IF ~~ THEN REPLY @617
	DO ~
		SetGlobal("XA_GaveCorwinLetter", "GLOBAL", 1)
	~
	GOTO XA_MainMenu	
	
	IF ~~ THEN REPLY @615
	DO ~
		SetGlobal("bd_CorwinRomance4","GLOBAL",1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @600
	DO ~
		
		SetGlobal("XA_ClearedKanaglym", "GLOBAL",1)
		SetGlobal("XA_EnteredSaradush", "GLOBAL", 1)
		SetGlobal("XA_IncubusDefeated", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @598
	DO ~
		SetGlobal("XA_CorwinAerieScars", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @599
	DO ~
		SetGlobal("XA_CorwinAerieScars", "GLOBAL", 0)
	~
	GOTO XA_MainMenu
	
	
	IF ~~ THEN REPLY @583
	DO ~
		SetGlobal("DemoGorgonIsDead","GLOBAL",1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @582
	DO ~
		SetGlobal("XA_IncubusDefeated", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	
	IF ~~ THEN REPLY @581
	DO ~
		SetGlobal("XA_CaelarStayedInAvernus","GLOBAL",1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @580
	DO ~
		SetGlobal("XA_KanaDream", "GLOBAL", 3)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @526 /*~Set XA_MessageToBG to 2.~*/
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_MainMenu
	
	
	IF ~~ THEN REPLY @335
	DO ~
		SetGlobal("XA_AerieInBG", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @331
	DO ~
		SetGlobal("XA_WonLottery", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @330
	DO ~
		SetGlobal("XA_TrickedLarze", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @324
	DO ~
		SetGlobal("XA_SavedLyriel", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @325
	DO ~
		SetGlobal("XA_ExitPrison", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @314
	DO ~
		SetGlobal("XA_PrisonKnowledge", "GLOBAL", 4)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @315
	DO ~
		SetGlobal("XA_PrisonKnowledge", "GLOBAL", 6)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @311
	DO ~
		SetGlobal("XA_BypassG1", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @312
	DO ~
		SetGlobal("XA_BypassG2", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @313
	DO ~
		SetGlobal("XA_BypassG3", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @307
	DO ~
		SetGlobal("XA_DemonDebug", "GLOBAL", 0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @308
	DO ~
		SetGlobal("XA_DemonDebug", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @305
	DO ~
		SetGlobal("XA_DemonSpeak", "GLOBAL", 0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @306
	DO ~
		SetGlobal("XA_DemonSpeak", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @295
	DO ~
		SetGlobal("XA_GaveTreasure", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @296
	DO ~
		SetGlobal("XA_MetIncubus", "GLOBAL", 0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @297
	DO ~
		SetGlobal("XA_MetIncubus", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @298
	DO ~
		SetGlobal("XA_MetIncubus", "GLOBAL", 2)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @299
	DO ~
		SetGlobal("XA_MetIncubus", "GLOBAL", 3)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @300
	DO ~
		SetGlobal("XA_MetIncubus", "GLOBAL", 4)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @304
	DO ~
		SetGlobal("XA_MetIncubus", "GLOBAL", 5)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @301
	DO ~
		SetGlobal("XA_CompletedG1", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @302
	DO ~
		SetGlobal("XA_CompletedG2", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @303
	DO ~
		SetGlobal("XA_CompletedG3", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @281
	DO ~
		SetGlobal("bd_player_exiled", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @282
	DO ~
		SetGlobal("bd_player_exiled", "GLOBAL", 0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @263
	DO ~
		SetGlobal("XA_TunnelAnxiety", "GLOBAL", 1)
		SetGlobalTimer("XA_TunnelAnxietyTimer", "GLOBAL", ONE_ROUND)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @261
	DO ~
		SetGlobal("XA_ToldTruthBhaal", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @228
	DO ~
		SetGlobal("XA_CorwinSex_1", "GLOBAL", 4)
		SetGlobal("XA_SlappedDelcia", "GLOBAL", 1)
		SetGlobal("XA_CorwinWonTM", "GLOBAL", 1)
		SetGlobal("XA_CorwinCleansed", "GLOBAL", 1)
		SetGlobal("XA_CorwinCleansed", "GLOBAL", 2)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @197 /* ~XARING07~ */
	DO ~
		SetGlobal("XA_RingEnchantment2", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment3", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment5", "GLOBAL", 1)
		SetGlobal("XA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @198 /* ~XARING11~ */
	DO ~
		SetGlobal("XA_RingEnchantment1", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment3", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment5", "GLOBAL", 1)
		SetGlobal("XA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @199 /* ~XARING13~ */
	DO ~
		SetGlobal("XA_RingEnchantment1", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment2", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment5", "GLOBAL", 1)
		SetGlobal("XA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @200 /* ~XARING14~ */
	DO ~
		SetGlobal("XA_RingEnchantment1", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment2", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment3", "GLOBAL", 1)
		SetGlobal("XA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @201 /* ~XARING19~ */
	DO ~
		SetGlobal("XA_RingEnchantment4", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment3", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment5", "GLOBAL", 1)
		SetGlobal("XA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @202 /* ~XARING21~ */
	DO ~
		SetGlobal("XA_RingEnchantment4", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment2", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment5", "GLOBAL", 1)
		SetGlobal("XA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @203 /* ~XARING22~ */
	DO ~
		SetGlobal("XA_RingEnchantment4", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment2", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment3", "GLOBAL", 1)
		SetGlobal("XA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @204 /* ~XARING25~ */
	DO ~
		SetGlobal("XA_RingEnchantment4", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment1", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment5", "GLOBAL", 1)
		SetGlobal("XA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @205 /* ~XARING26~ */
	DO ~
		SetGlobal("XA_RingEnchantment4", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment1", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment3", "GLOBAL", 1)
		SetGlobal("XA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @206 /* ~XARING28~ */
	DO ~
		SetGlobal("XA_RingEnchantment4", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment1", "GLOBAL", 1)
		SetGlobal("XA_RingEnchantment2", "GLOBAL", 1)
		SetGlobal("XA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @215
	DO ~
		SetGlobal("XA_CorwinProposaXAS", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @213
	DO ~
		SetGlobal("XA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @210
	DO ~
		SetGlobal("XA_MaxFriendly_Corwin", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @211
	DO ~
		SetGlobal("XA_MaxFriendly_Charname", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @212
	DO ~
		SetGlobal("XA_RefugeeQuestComplete", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @209 /* ~Set XA_VirgilInCustody to 1.~ */
	DO ~
		SetGlobal("XA_VirgilInCustody", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @208 
	DO ~
		SetGlobal("XA_Reset_0608", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @193
	DO ~
		SetGlobal("XA_DukesDebriefed", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @194
	DO ~
		SetGlobal("XA_DukesDebriefed", "GLOBAL", 0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @192 
	DO ~
		SetGlobal("XA_NederlokGreeting", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @191 /* Global("XA_BGSlaverPlot", "GLOBAL", 1)*/
	DO ~
		SetGlobal("XA_BGSlaverPlot", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @190
	DO ~
		SetGlobal("XA_CorwinJoinOverride", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @189
	DO ~
		SetGlobal("XA_CorwinMetFamily", "GLOBAL", 0)
		SetGlobal("XA_CorwinFamilyTalk", "GLOBAL", 0)
		SetGlobal("XA_XACS14Cutscene", "GLOBAL", 0)
		SetGlobal("XA_XACS14Started", "GLOBAL", 0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @188
	DO ~
		SetGlobal("XA_ReturnToBG", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @161
	DO ~
		SetGlobal("XA_JustBoughtDoll", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @158
	DO ~
		SetGlobal("EEMetRohma", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @159
	DO ~
		SetGlobal("XA_GaveDoll", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @157
	DO ~
		SetGlobal("XA_CorwinWonTM", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @145
	DO ~
		SetGlobal("XA_DisableXRatedContent", "GLOBAL", 0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @146
	DO ~
		SetGlobal("XA_DisableXRatedContent", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @127
	DO ~
		SetGlobal("XA_Override", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @144
	DO ~
		SetGlobal("XA_CorwinWentToAvernus", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @76
	DO ~
		SetGlobal("bd_asha_duel", "GLOBAL", 3)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @77
	DO ~
		SetGlobal("bd_asha_duel", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @128
	DO ~
		SetGlobal("XA_CorwinWitnessedDuel", "GLOBAL", 2)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @134
	DO ~
		SetGlobal("XA_CorwinWitnessedDuel", "GLOBAL", 0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @95
	DO ~
		SetGlobal("bd_drinks_corwin","global",1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @97
	DO ~
		SetGlobal("BodhiDead","GLOBAL",1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @42
	DO ~
		SetGlobal("BodhiJob","GLOBAL",2)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @43
	DO ~
		SetGlobal("BodhiJob","GLOBAL",3)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @44
	DO ~
		SetGlobal("BodhiJob","GLOBAL",4)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @32
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @33
	DO ~
		SetGlobal("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @29 /* ~Set EEMetRohma to 3.~ */
	DO ~
		SetGlobal("EEMetRohma", "GLOBAL", 3)
	~
	GOTO XA_MainMenu

	IF ~~ THEN REPLY @124
	DO ~
		SetGlobal("HaerDalisRomanceActive","GLOBAL",1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @125
	DO ~
		SetGlobal("HaerDalisRomanceActive","GLOBAL",2)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @49
	DO ~
		SetGlobal("XA_BanterCountInit", "GLOBAL", 0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @89
	DO ~
		SetGlobal("XA_CorwinBit", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @90
	DO ~
		SetGlobal("XA_CorwinBit", "GLOBAL", 2)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @91
	DO ~
		SetGlobal("XA_CorwinBit", "GLOBAL", 3)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @92
	DO ~
		SetGlobal("XA_CorwinBit", "GLOBAL", 4)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @94 /* ~Set XA_CorwinCleansed to 1 (and create XACORWIN).~ */
	DO ~
		SetGlobal("XA_CorwinCleansed", "GLOBAL", 1)
		CreateCreature("XACORWIN", [-1.-1], S)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @30
	DO ~
		SetGlobal("XA_CorwinContinue", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @31 
	DO ~
		SetGlobal("XA_CorwinContinue", "GLOBAL", 2)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @51
	DO ~
		SetGlobal("XA_TM_ArcheryChallenge", "GLOBAL", 2)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @37
	DO ~
		SetGlobal("MurdersSolved","GLOBAL",0)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @38
	DO ~
		SetGlobal("MurdersSolved","GLOBAL",1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @129
	DO ~
		SetGlobal("bd_bridgefort_saved","GLOBAL",1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @130
	DO ~
		SetGlobal("bd_bridgefort_sabotaged","GLOBAL",1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @131
	DO ~
		SetGlobal("bd_corwin_romanceactive","GLOBAL",1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @132
	DO ~
		SetGlobal("bd_corwin_romanceactive","GLOBAL",2)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @133
	DO ~
		SetGlobal("bd_corwin_romanceactive","GLOBAL",3)
	~
	GOTO XA_MainMenu
	
	
	IF ~~ THEN REPLY @139
	DO ~
		SetGlobal("XA_CorwinSexAfterBodhi", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @141
	DO ~
		SetGlobal("XA_CorwinSexNoSleepComplain", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @142
	DO ~
		SetGlobal("XA_CorwinHostile", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @143
	DO ~
		SetGlobal("SvirHostile", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @147
	DO ~
		SetGlobal("XA_CorwinSexBoost", "GLOBAL", 1)
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @26 /* ~Go back to the prior menu.~ */
	GOTO XA_MainMenu
END

IF ~~ THEN BEGIN XA_Menu_StartCutscene
	SAY @15 /*  ~Of course. Which cutscene do you want to start?~ */
	
	IF ~~ THEN REPLY @627
	DO ~
		SetGlobal("XA_CorwinSex_3", "GLOBAL", 1)
		SetGlobal("XA_CorwinNeomaRelationship", "GLOBAL", 2)
		StartCutSceneMode()
		StartCutScene("XAEXPL03")
	~
	EXIT
	
	IF ~~ THEN REPLY @623
	DO ~
		StartCutSceneMode()
		StartCutScene("cut37a")
	~
	EXIT
	
	IF ~~ THEN REPLY @577
	DO ~
		SetGlobal("XA_KanaDream", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XADREAM")
	~
	EXIT
	
	IF ~~ THEN REPLY @578
	DO ~
		SetGlobal("XA_KanaDream", "GLOBAL", 2)
		StartCutSceneMode()
		StartCutScene("XADREAM")
	~
	EXIT
	
	IF ~~ THEN REPLY @569
	DO ~
		StartCutSceneMode()
		StartCutScene("XABENORS")
	~
	EXIT
	
	IF ~~ THEN REPLY @570
	DO ~
		StartCutSceneMode()
		StartCutScene("XABENORH")
	~
	EXIT
	
	IF ~~ THEN REPLY @541
	DO ~
		StartCutSceneMode()
		StartCutScene("XABYE")
	~
	EXIT
	
	IF ~~ THEN REPLY @536
	DO ~
		SetGlobal("XA_ReturnToBG", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XAGOHOME")
	~
	EXIT
	
	IF ~~ THEN REPLY @534
	DO ~
		StartCutSceneMode()
		StartCutScene("XATNTEND")
	~
	EXIT
	
	IF ~~ THEN REPLY @533
	DO ~
		SetGlobal("XA_TNTCSDebug", "GLOBAL", 1)
	~
	EXIT
	
	
	IF ~~ THEN REPLY @332
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINLOT")
	~
	EXIT
	
	IF ~~ THEN REPLY @322
	DO ~
		SetGlobal("XA_DemonSpeak", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XASENT")
	~
	EXIT
	
	IF ~~ THEN REPLY @320
	DO ~
		StartCutSceneMode()
		StartCutScene("XAG2ENT")
	~
	EXIT
	
	IF ~~ THEN REPLY @310
	DO ~
		StartCutSceneMode()
		StartCutScene("XAPENT")
	~
	EXIT
	
	IF ~~ THEN REPLY @289
	DO ~
		SetGlobal("XA_BrevlikArrested", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XAARREST")
	~
	EXIT
	
	IF ~~ THEN REPLY @288 /* ~XACSHOW~ */
	DO ~
		SetGlobal("XA_MagdaTalk", "GLOBAL", 2)
		StartCutSceneMode()
		StartCutScene("XACSHOW")
	~
	EXIT
	
	IF ~~ THEN REPLY @267 /* ~XACS15 (Neoma, Corwin Reunite)~ */
	DO ~
		SetGlobal("XA_ReturnToBG", "GLOBAL", 1)
		SetGlobal("XA_XACS15Started", "GLOBAL", 0)
		CreateCreature("XANEOMA", [-1.-1], N)
	~
	EXIT
	
	IF ~~ THEN REPLY @268 /* ~XACS15 (Neoma, Corwin Reunite, Earrings)~ */
	DO ~
		SetGlobal("XA_CorwinGaveEarrings", "GLOBAL", 1)
		SetGlobal("XA_ReturnToBG", "GLOBAL", 1)
		SetGlobal("XA_XACS15Started", "GLOBAL", 0)
		CreateCreature("XANEOMA", [-1.-1], N)
	~
	EXIT
	
	IF ~~ THEN REPLY @260 
	DO ~
		SetGlobal("XA_Override", "GLOBAL", 1)
		SetGlobal("chapter", "global",12)
		SetGlobal("bd_plot","global",581)
		CreateCreature("CORWIN7", [-1.-1], N)
		ActionOverride("Corwin", JoinParty())
		SetGlobal("bd_corwin_romanceactive","global",2)
		StartCutSceneMode()
		StartCutScene("bdcut59a")
	~
	EXIT
	
	IF ~~ THEN REPLY @249 /* ~BD0104 - Romance - Exile ~ */
	DO ~
		SetGlobal("bd_plot","global",600)
		SetGlobal("chapter", "global",13)
		SetGlobalTimer("bd_jail_visitors_timer","bd0104",ONE_MINUTE) 
		SetGlobal("bd_jail_visitors","bd0104",1)
		SetGlobal("bd_corwin_romanceactive","global",2)
		SetGlobal("bd_player_exiled","global",1)
		ActionOverride(Player1, LeaveAreaLUA("bd0104","",[405.339],SW))
	~
	EXIT
	
	IF ~~ THEN REPLY @250 /* ~BD0104 - Romance - Execution ~ */
	DO ~
		SetGlobal("bd_plot","global",600)
		SetGlobal("chapter", "global",13)
		SetGlobalTimer("bd_jail_visitors_timer","bd0104",ONE_MINUTE) 
		SetGlobal("bd_jail_visitors","bd0104",1)
		SetGlobal("bd_corwin_romanceactive","global",2)
		SetGlobal("bd_player_exiled","global",0)
		ActionOverride(Player1, LeaveAreaLUA("bd0104","",[405.339],SW))
	~
	EXIT
	
	IF ~~ THEN REPLY @251 /*  ~BD0104 - Non-Romance - Exile~ */
	DO ~
		SetGlobal("bd_plot","global",600)
		SetGlobal("chapter", "global",13)
		SetGlobalTimer("bd_jail_visitors_timer","bd0104",ONE_MINUTE) 
		SetGlobal("bd_jail_visitors","bd0104",1)
		SetGlobal("bd_corwin_romanceactive","global",0)
		SetGlobal("bd_player_exiled","global",1)
		ActionOverride(Player1, LeaveAreaLUA("bd0104","",[405.339],SW))
	~
	EXIT
	
	IF ~~ THEN REPLY @262 /*  ~BD0104 - Non-Romance - Execution~*/
	DO ~
		SetGlobal("bd_plot","global",600)
		SetGlobal("chapter", "global",13)
		SetGlobalTimer("bd_jail_visitors_timer","bd0104",ONE_MINUTE) 
		SetGlobal("bd_jail_visitors","bd0104",1)
		SetGlobal("bd_corwin_romanceactive","global",0)
		SetGlobal("bd_player_exiled","global",0)
		ActionOverride(Player1, LeaveAreaLUA("bd0104","",[405.339],SW))
	~
	EXIT
	
	IF ~~ THEN REPLY @237
	DO ~
		StartCutSceneMode()
		StartCutScene("XASARA1")
	~
	EXIT
	
	IF ~~ THEN REPLY @238
	DO ~
		StartCutSceneMode()
		StartCutScene("XASARA2")
	~
	EXIT
	
	IF ~~ THEN REPLY @239
	DO ~
		StartCutSceneMode()
		StartCutScene("XASARA3")
	~
	EXIT
	
	IF ~~ THEN REPLY @240
	DO ~
		StartCutSceneMode()
		StartCutScene("XASARA4")
	~
	EXIT
	
	IF ~~ THEN REPLY @235
	DO ~
		StartCutSceneMode()
		StartCutScene("XAUCEND1")
	~
	EXIT
	
	IF ~~ THEN REPLY @233
	DO ~
		StartCutSceneMode()
		StartCutScene("XAUCITY")
	~
	EXIT
	
	IF ~~ THEN REPLY @232
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINNER")
	~
	EXIT
	
	IF ~~ THEN REPLY @231
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINROM")
	~
	EXIT
	
	IF ~~ THEN REPLY @227
	DO ~
		SetGlobal("XA_DukesDebriefed", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XADEBREF")
	~
	EXIT
	
	IF ~~ THEN REPLY @226
	DO ~
		SetGlobal("XA_RohmaKidnapped", "GLOBAL", 4)
		StartCutSceneMode()
		StartCutScene("XADUCAL")
	~
	EXIT
	
	IF ~~ THEN REPLY @225
	DO ~
		StartCutSceneMode()
		StartCutScene("XAWLKH02")
	~
	EXIT
	
	IF ~~ THEN REPLY @224
	DO ~
		StartCutSceneMode()
		StartCutScene("XAWLKHOM")
	~
	EXIT
	
	IF ~~ THEN REPLY @223
	DO ~
		StartCutSceneMode()
		StartCutScene("XADINNER")
	~
	EXIT
	
	IF ~~ THEN REPLY @222
	DO ~
		StartCutSceneMode()
		StartCutScene("XAPROPOS")
	~
	EXIT
	
	IF ~~ THEN REPLY @207
	DO ~
		StartCutSceneMode()
		StartCutScene("XACS16a")
	~
	EXIT
	
	IF ~~ THEN REPLY @151
	DO ~
		StartCutSceneMode()
		StartCutScene("XAAcs59a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @149
	DO ~
		StartCutSceneMode()
		StartCutScene("cut59a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @150
	DO ~
		StartCutSceneMode()
		StartCutScene("cut59b")	
	~
	EXIT
	
	IF ~~ THEN REPLY @16
	DO ~
		StartCutSceneMode()
		StartCutScene("XAAcs01a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @17
	DO ~
		StartCutSceneMode()
		StartCutScene("XAAcs01b")	
	~
	EXIT
	
	IF ~~ THEN REPLY @23
	DO ~
		StartCutSceneMode()
		StartCutScene("XAAcs02a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @18
	DO ~
		StartCutSceneMode()
		StartCutScene("XAAcs03a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @19
	DO ~
		StartCutSceneMode()
		StartCutScene("XAAcs04a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @20
	DO ~
		StartCutSceneMode()
		StartCutScene("XAAcs05a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @21
	DO ~
		StartCutSceneMode()
		StartCutScene("XAAcs06a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @22
	DO ~
		StartCutSceneMode()
		StartCutScene("XAAcs06c")	
	~
	EXIT
	
	IF ~
		HPGT("XACORWIN", 50)
	~ THEN REPLY @99
	DO ~
		CreateCreature("BODHIAMB",[1950.1690],S) 
		StartCutSceneMode()
		StartCutScene("XAAcs07b")
		//ActionOverride("XACORWIN", LeaveParty())		
	~
	EXIT
	
	IF ~
		HPLT("XACORWIN", 51)
	~ THEN REPLY @99
	DO ~
		CreateCreature("BODHIAMB",[1950.1690],S) 
		StartCutSceneMode()
		StartCutScene("XAAcs07a")
		//ActionOverride("XACORWIN", LeaveParty())		
	~
	EXIT
	
	IF ~~ THEN REPLY @93
	DO ~
		StartCutSceneMode()
		StartCutScene("XAAcs08a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @96
	DO ~
		StartCutSceneMode()
		StartCutScene("XAAcs08c")	
	~
	EXIT
	
	IF ~~ THEN REPLY @98
	DO ~
		StartCutSceneMode()
		StartCutScene("XAAcs09a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @259
	DO ~
		SetGlobal("chapter", "global",13)
		SetGlobal("bd_plot","global",600)
		SetGlobal("bd_mdd1697_plot","global",0)
		ActionOverride(Player2, LeaveParty())
		ActionOverride(Player3, LeaveParty())
		ActionOverride(Player4, LeaveParty())
		ActionOverride(Player5, LeaveParty())
		ActionOverride(Player6, LeaveParty())
		StartCutSceneMode()
		StartCutScene("BDCUT61A")	
	~
	EXIT
	
	IF ~~ THEN REPLY @126
	DO ~
		SetGlobal("chapter", "global",13)
		SetGlobal("bd_plot","global",600)
		SetGlobal("bd_mdd1697_plot","global",0)
		ActionOverride(Player2, LeaveParty())
		ActionOverride(Player3, LeaveParty())
		ActionOverride(Player4, LeaveParty())
		ActionOverride(Player5, LeaveParty())
		ActionOverride(Player6, LeaveParty())
		StartCutSceneMode()
		StartCutScene("BDCUT61T")	
	~
	EXIT
	
	IF ~~ THEN REPLY @256
	DO ~
		SetGlobal("chapter", "global",13)
		SetGlobal("bd_plot","global",600)
		SetGlobal("bd_mdd1697_plot","global",0)
		SetGlobal("XA_CorwinWitnessedDuel", "GLOBAL", 2)
		ActionOverride(Player2, LeaveParty())
		ActionOverride(Player3, LeaveParty())
		ActionOverride(Player4, LeaveParty())
		ActionOverride(Player5, LeaveParty())
		ActionOverride(Player6, LeaveParty())
		StartCutSceneMode()
		StartCutScene("BDCUT61T")	
	~
	EXIT
	
	IF ~~ THEN REPLY @257
	DO ~
		SetGlobal("chapter", "global",13)
		SetGlobal("bd_plot","global",600)
		SetGlobal("bd_mdd1697_plot","global",0)
		SetGlobal("bd_corwin_romanceactive","global",2)
		ActionOverride(Player2, LeaveParty())
		ActionOverride(Player3, LeaveParty())
		ActionOverride(Player4, LeaveParty())
		ActionOverride(Player5, LeaveParty())
		ActionOverride(Player6, LeaveParty())
		StartCutSceneMode()
		StartCutScene("BDCUT61T")	
	~
	EXIT
	
	IF ~~ THEN REPLY @258
	DO ~
		SetGlobal("chapter", "global",13)
		SetGlobal("bd_plot","global",600)
		SetGlobal("bd_mdd1697_plot","global",0)
		SetGlobal("bd_corwin_romanceactive","global",2)
		SetGlobal("XA_CorwinWitnessedDuel", "GLOBAL", 2)
		ActionOverride(Player2, LeaveParty())
		ActionOverride(Player3, LeaveParty())
		ActionOverride(Player4, LeaveParty())
		ActionOverride(Player5, LeaveParty())
		ActionOverride(Player6, LeaveParty())
		StartCutSceneMode()
		StartCutScene("BDCUT61T")	
	~
	EXIT
	
	IF ~~ THEN REPLY @26
	GOTO XA_MainMenu
END

IF ~~ THEN BEGIN XA_Menu_AddCharacter
	SAY @3 /* ~Of course. Who would you like to add to your party?~ */
	
	IF ~~ THEN REPLY @6 /* ~Aerie (AERIE12).~*/
	DO ~
		CreateCreature("AERIE12", [-1.-1], S)
		ActionOverride("Aerie", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @421 /* Anomen */
	DO ~
		CreateCreature("ANOMEN9", [-1.-1], S)
		ActionOverride("Anomen", JoinParty()) 
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @423 /* ~Cernd (CERND12.CRE)~ */
	DO ~
		CreateCreature("CERND12", [-1.-1], S)
		ActionOverride("Cernd", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @4 /* ~Corwin (XACORWIN).~ */
	DO ~
		CreateCreature("XACORWIN", [-1.-1], S)
		ActionOverride("XACORWIN", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @524 /* ~Corwin (CORWIN7).~ */
	DO ~
		CreateCreature("CORWIN7", [-1.-1], S)
		ActionOverride("Corwin", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @86 /* @86 = ~Dorn (DORN10.CRE)~*/
	DO ~
		CreateCreature("DORN10", [-1.-1], S)
		ActionOverride("Dorn", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @88 /* @88 = ~Edwin (EDWIN11.CRE)~*/
	DO ~
		CreateCreature("EDWIN11", [-1.-1], S)
		ActionOverride("Edwin", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @87 /* @87 = ~HaerDalis (HAER10.CRE)~*/
	DO ~
		CreateCreature("HAER10", [-1.-1], S)
		ActionOverride("HaerDalis", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @11 /* ~Hexxat (OHHEX15).~*/
	DO ~
		CreateCreature("OHHEX15", [-1.-1], S)
		ActionOverride("Hexxat", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @80 /* ~Imoen (IMOEN10).~*/
	DO ~
		CreateCreature("IMOEN10", [-1.-1], S)
		ActionOverride("Imoen2", JoinParty())
	~
	GOTO XA_MainMenu
		
	IF ~~ THEN REPLY @10 /* ~Jaheira (JAHEIR11).~*/
	DO ~
		CreateCreature("JAHEIR11", [-1.-1], S)
		ActionOverride("Jaheira", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @78 /* ~Jan (JAN12).~*/
	DO ~
		CreateCreature("JAN12", [-1.-1], S)
		ActionOverride("Jan", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @9 /* ~Keldorn (KELDOR12).~*/
	DO ~
		CreateCreature("KELDOR12", [-1.-1], S)
		ActionOverride("Keldorn", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @8 /* ~Korgan (KORGAN11).~*/
	DO ~
		CreateCreature("KORGAN11", [-1.-1], S)
		ActionOverride("Korgan", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @50 /* ~Mazzy (MAZZY11).~*/
	DO ~
		CreateCreature("MAZZY11", [-1.-1], S)
		ActionOverride("Mazzy", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @79 /* ~Minsc (MINSC9).~*/
	DO ~
		CreateCreature("MINSC9", [-1.-1], S)
		ActionOverride("Minsc", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @82 /* ~Nalia (NALIA11).~*/
	DO ~
		CreateCreature("NALIA11", [-1.-1], S)
		ActionOverride("Nalia", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @81 /* ~Neera (NEERA8).~*/
	DO ~
		CreateCreature("NEERA8", [-1.-1], S)
		ActionOverride("Neera", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @85
	DO ~
		CreateCreature("RASAAD9", [-1.-1], S)
		ActionOverride("Rasaad", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @503 /* @503 = ~Sarevok (SAREVOK.CRE)~*/
	DO ~
		CreateCreature("SAREVOK", [-1.-1], S)
		ActionOverride("Sarevok", JoinParty())
	~
	GOTO XA_MainMenu
	
	
	
	IF ~~ THEN REPLY @83 /* ~Valygar (VALYG9.CRE)~*/
	DO ~
		CreateCreature("VALYG9", [-1.-1], S)
		ActionOverride("Valygar", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @7 /* @7 = ~Viconia (VICONI13).~*/
	DO ~
		CreateCreature("VICONI13", [-1.-1], S)
		ActionOverride("Viconia", JoinParty())
	~
	GOTO XA_MainMenu
	
	IF ~~ THEN REPLY @84 /* @84 = ~Yoshimo (YOSHI10.CRE)~*/
	DO ~
		CreateCreature("YOSHI10", [-1.-1], S)
		ActionOverride("Yoshimo", JoinParty())
	~
	GOTO XA_MainMenu
	
	
	
	IF ~~ THEN REPLY @26
	GOTO XA_MainMenu
END

IF ~~ THEN BEGIN XA_Exit
	SAY @14 /* ~Very well. Thanks for playing!~ */

	IF ~~ THEN
	EXIT
END