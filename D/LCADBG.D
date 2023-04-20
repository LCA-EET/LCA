BEGIN ~LCADBG~

IF ~
	True()
~ THEN BEGIN LCA_MainMenu
	SAY @0 /* ~How can I help you?~ */
	
	IF ~
		IsGabber("LCCORWIN")
	~ THEN REPLY @285
	GOTO LCA_MainMenu
	
	IF ~
		IsGabber(Player1)
	~ THEN REPLY @286
	GOTO LCA_MainMenu
	
	IF ~~ THEN REPLY @280
	GOTO LCA_TestInteraction
	
	IF ~~ THEN REPLY @156 /* ~Return to BG Mini Quest.~ */
	DO ~
		FadeToColor([30.0],0)
		SetGlobal("LCA_ReturnToBG", "GLOBAL", 0)
		SetGlobal("LCA_PartyRemovalProcessing", "GLOBAL", 2)
		ActionOverride(Player1,LeaveAreaLUA("BG0900","",[1628.1456],NW))
		ActionOverride(Player2,LeaveAreaLUA("BG0900","",[1664.1531],NW))
		ActionOverride(Player3,LeaveAreaLUA("BG0900","",[1797.1452],NW))
		ActionOverride(Player4,LeaveAreaLUA("BG0900","",[1719.1544],NW))
		ActionOverride(Player5,LeaveAreaLUA("BG0900","",[1777.1510],NW))
		ActionOverride(Player6,LeaveAreaLUA("BG0900","",[1770.1517],NW))
		ActionOverride("LCCORWIN",LeaveAreaLUA("BG0900","",[1694.1423],NW)) 
	~
	EXIT
	
	IF ~~ THEN REPLY @216 /* ~Open Store.~ */
	GOTO LCA_Menu_StartStore
	
	IF ~~ THEN REPLY @186 /* ~Change the Time.~ */
	GOTO LCA_Menu_ChangeTime
	
	IF ~~ THEN REPLY @1 /* ~Add character to party.~ */
	GOTO LCA_Menu_AddCharacter
	
	IF ~~ THEN REPLY @2 /* ~Start cutscene.~ */
	GOTO LCA_Menu_StartCutscene
	
	IF ~~ THEN REPLY @24 /* ~I need more help, or would like to contribute.~ */
	GOTO LCA_NeedMoreHelp
	
	IF ~~ THEN REPLY @241 /* ~Advance Time~ */
	GOTO LCA_Menu_AdvanceTime
	
	IF ~~ THEN REPLY @27 /* Adjust variables */
	GOTO LCA_Menu_AdjustVariables
	
	IF ~~ THEN REPLY @34 /* Create Item */
	GOTO LCA_Menu_CreateItem
	
	IF ~~ THEN REPLY @39 /* Create Creature */
	GOTO LCA_Menu_CreateCreature
	
	IF ~~ THEN REPLY @45 /* Move to a New Area */
	GOTO LCA_Menu_NewArea
	
	IF ~~ THEN REPLY @236 /* ~Move Corwin to BG1316, and make her leave the party.~*/
	DO ~
		ActionOverride("LCCORWIN", SetLeavePartyDialogFile())
		ActionOverride("LCCORWIN", ChangeAIScript("", DEFAULT))
		ActionOverride("LCCORWIN", LeaveParty())
		ActionOverride("LCCORWIN", EscapeAreaMove("BG1316", 350,300,N))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @74 /* Increment Banter Counter. */
	GOTO LCA_Menu_IncrementBanter
	
	IF ~~ THEN REPLY @152 /* Play Chapter Movie. */
	GOTO LCA_Menu_ChapterMovie
	
	IF ~~ THEN REPLY @100 /* Cure Corwin Disease. */
	DO ~
		ForceSpell("LCCORWIN",CLERIC_CURE_DISEASE)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @248
	DO ~
		SetGlobalTimer("LCA_DukeDebriefTimer", "GLOBAL",ONE_DAY)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @12 /* ~I do not need assistance at this time.~ */
	EXIT
END

IF ~~ THEN BEGIN LCA_TestInteraction
	SAY @280
	
	IF ~~ THEN REPLY @279
	DO ~
		//MoveGlobal("MYAREA", "FORTHEL",[-1.-1])
		CreateCreature("FORTHE", [-1.-1], N)
		ActionOverride("FORTHEL", SetDialog("LCFORTHE"))
		Wait(1)
	~
	EXIT
	
	IF ~~ THEN REPLY @283 /* ~Corwin Sex 1.~*/
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 2)
		ActionOverride("LCCORWIN", StartDialog("LCCORWIJ", Player1))
	~
	EXIT
	
	IF ~~ THEN REPLY @284 /* ~Corwin Sex 2.~*/
	DO ~
		SetGlobal("LCA_CorwinSex_2", "GLOBAL", 3)
		ActionOverride("LCCORWIN", StartDialog("LCCORWIJ", Player1))
	~
	EXIT
	
	
	IF ~~ THEN REPLY @26 /* ~Go back to the prior menu.~ */
	GOTO LCA_ReturnToMainMenu
END

IF ~~ THEN BEGIN LCA_Menu_AdvanceTime
	SAY @247 /* ~How far do you want me to advance the current time?~*/
	
	IF ~~ THEN REPLY @242
	DO ~
		AdvanceTime(ONE_HOUR)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @243
	DO ~
		AdvanceTime(TWO_HOURS)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @244
	DO ~
		AdvanceTime(FOUR_HOURS)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @245
	DO ~
		AdvanceTime(EIGHT_HOURS)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @26 /* ~Go back to the prior menu.~ */
	GOTO LCA_ReturnToMainMenu
END

IF ~~ THEN BEGIN LCA_Menu_StartStore
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
	
	IF ~~ THEN REPLY @218 /* ~LCWVBAR~ */
	DO ~
		StartStore("LCWVBAR", LastTalkedToBy(Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @219 /* ~LCMELKOR~ */
	DO ~
		StartStore("LCMELKOR", LastTalkedToBy(Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @26 /* ~Go back to the prior menu.~ */
	GOTO LCA_ReturnToMainMenu
END

IF ~~ THEN BEGIN LCA_Menu_ChangeTime
	SAY @186
	
	IF ~~ THEN REPLY @162
	DO ~
		DAYNIGHT(0)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @163
	DO ~
		DAYNIGHT(1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @164
	DO ~
		DAYNIGHT(2)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @165
	DO ~
		DAYNIGHT(3)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @166
	DO ~
		DAYNIGHT(4)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @167
	DO ~
		DAYNIGHT(5)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @168
	DO ~
		DAYNIGHT(6)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @169
	DO ~
		DAYNIGHT(7)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @170
	DO ~
		DAYNIGHT(8)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @171
	DO ~
		DAYNIGHT(9)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @172
	DO ~
		DAYNIGHT(10)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @173
	DO ~
		DAYNIGHT(11)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @174
	DO ~
		DAYNIGHT(12)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @175
	DO ~
		DAYNIGHT(13)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @176
	DO ~
		DAYNIGHT(14)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @177
	DO ~
		DAYNIGHT(15)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @178
	DO ~
		DAYNIGHT(16)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @179
	DO ~
		DAYNIGHT(17)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @180
	DO ~
		DAYNIGHT(18)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @181
	DO ~
		DAYNIGHT(19)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @182
	DO ~
		DAYNIGHT(20)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @183
	DO ~
		DAYNIGHT(21)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @184
	DO ~
		DAYNIGHT(22)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @185
	DO ~
		DAYNIGHT(23)
	~
	GOTO LCA_ReturnToMainMenu
END

IF ~~ THEN BEGIN LCA_Menu_ChapterMovie
	SAY @153 
	
	IF ~~ THEN REPLY @264 /* ~CHSARA1~ */
	DO ~
		TextScreen("BADEND1")
	~
	EXIT
	
	IF ~~ THEN REPLY @265 /* ~CHSARA1~ */
	DO ~
		TextScreen("BADEND2")
	~
	EXIT
	
	IF ~~ THEN REPLY @266 /* ~CHSARA1~ */
	DO ~
		TextScreen("BADEND3")
	~
	EXIT
	
	
	IF ~~ THEN REPLY @240 /* ~CHSARA1~ */
	DO ~
		TextScreen("CHSARA4")
	~
	EXIT
	
	IF ~~ THEN REPLY @239 /* ~CHSARA1~ */
	DO ~
		TextScreen("CHSARA3")
	~
	EXIT
	
	IF ~~ THEN REPLY @238 /* ~CHSARA1~ */
	DO ~
		TextScreen("CHSARA2")
	~
	EXIT
	
	IF ~~ THEN REPLY @237 /* ~CHSARA1~ */
	DO ~
		TextScreen("CHSARA1")
	~
	EXIT
	
	IF ~~ THEN REPLY @230 /* ~Dinner (Romance)~ */
	DO ~
		TextScreen("CHDINROM")
	~
	EXIT
	
	IF ~~ THEN REPLY @229 /* ~Dinner.~ */
	DO ~
		TextScreen("CHDINNER")
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
	GOTO LCA_ReturnToMainMenu
END

IF ~~ THEN BEGIN LCA_ReturnToMainMenu
	SAY @13 /* ~Anything else?~ */
	
	IF ~~ THEN REPLY @216 /* ~Open Store.~ */
	GOTO LCA_Menu_StartStore
	
	IF ~~ THEN REPLY @241 /* ~Advance Time~ */
	GOTO LCA_Menu_AdvanceTime
	
	IF ~~ THEN REPLY @186 /* ~Change the Time.~ */
	GOTO LCA_Menu_ChangeTime
	
	IF ~~ THEN REPLY @1 /* ~Add character to party.~ */
	GOTO LCA_Menu_AddCharacter
	
	IF ~~ THEN REPLY @2 /* ~Start cutscene.~ */
	GOTO LCA_Menu_StartCutscene
	
	IF ~~ THEN REPLY @24 /* ~I need more help, or would like to contribute.~ */
	GOTO LCA_NeedMoreHelp
	
	IF ~~ THEN REPLY @27 /* Adjust variables */
	GOTO LCA_Menu_AdjustVariables
	
	IF ~~ THEN REPLY @34 /* Create Item */
	GOTO LCA_Menu_CreateItem

	IF ~~ THEN REPLY @39 /* Create Creature */
	GOTO LCA_Menu_CreateCreature
	
	IF ~~ THEN REPLY @45 /* Move to a New Area */
	GOTO LCA_Menu_NewArea
	
	IF ~~ THEN REPLY @74 /* Increment Banter Counter. */
	GOTO LCA_Menu_IncrementBanter
	
	IF ~~ THEN REPLY @100 /* Cure Corwin Disease. */
	DO ~
		ForceSpell("LCCORWIN",CLERIC_CURE_DISEASE)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @152 /* Play Chapter Movie. */
	GOTO LCA_Menu_ChapterMovie
	
	IF ~~ THEN REPLY @248
	DO ~
		SetGlobalTimer("LCA_DukeDebriefTimer", "GLOBAL", ONE_DAY)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @12 /* ~I do not need assistance at this time.~ */
	EXIT
END

IF ~~ THEN BEGIN LCA_Menu_IncrementBanter
	SAY @75 /* ~Which counter do you want me to increment?~ */
	
	
	
	IF ~~ THEN REPLY @103 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @104 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 2)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @105 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 3)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @106 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 4)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @107 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 5)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @108 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 6)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @109 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 7)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @110 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 8)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @111 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 9)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @112 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 10)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @113 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 11)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @114 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 12)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @115 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 13)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @116 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 14)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @117 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 15)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @118 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 16)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @119 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 17)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @120 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 18)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @121 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 19)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @122 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 20)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @123 
	DO ~
		SetGlobal("LCA_Banter_NextInteraction", "GLOBAL", 21)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @53 /* ~Increment Corwin Banter - Anomen~ */
	DO ~
		IncrementGlobal("LCA_Banter_CorwinPlayer", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @54 /* ~Increment Corwin Banter - Aerie~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinAerie", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @55 /* ~Increment Corwin Banter - Anomen~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinAnomen", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @56 /* ~Increment Corwin Banter - Cernd~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinCernd", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @57 /*~Increment Corwin Banter - Dorn~ */
	DO ~
		IncrementGlobal("LCA_Banter_CorwinDorn", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @58 /* ~Increment Corwin Banter - Edwin~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinEdwin", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @59 /* ~Increment Corwin Banter - HaerDalis~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinHaerDalis", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @60 /* ~Increment Corwin Banter - Hexxat~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinHexxat", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @61 /* ~Increment Corwin Banter - Imoen~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinImoen", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @62 /* ~Increment Corwin Banter - Jaheira~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinJaheira", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @63 /* ~Increment Corwin Banter - Jan~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinJan", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @64 /* ~Increment Corwin Banter - Keldorn~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinKeldorn", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @65 /* ~Increment Corwin Banter - Korgan~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinKorgan", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @66 /* ~Increment Corwin Banter - Mazzy~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinMazzy", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @67 /* ~Increment Corwin Banter - Minsc~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinMinsc", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @68 /* ~Increment Corwin Banter - Nalia~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinNalia", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @69 /* ~Increment Corwin Banter - Neera~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinNeera", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @70 /* ~Increment Corwin Banter - Rasaad~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinRasaad", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @71 /* ~Increment Corwin Banter - Valygar~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinValygar", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @72 /* ~Increment Corwin Banter - Viconia~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinViconia", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @73 /* ~Increment Corwin Banter - Yoshimo~*/
	DO ~
		IncrementGlobal("LCA_Banter_CorwinYoshimo", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinBanter", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	
	
	IF ~~ THEN REPLY @26
	GOTO LCA_ReturnToMainMenu
END

IF ~~ THEN BEGIN LCA_NeedMoreHelp
	SAY @25 /* ~Of course. Visit the LCA Discord. There, you can find answers to your questions, and learn how you can contribute to the development of this mod.~ */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_Menu_NewArea
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
	GOTO LCA_ReturnToMainMenu
END

IF ~~ THEN BEGIN LCA_Menu_CreateCreature
	SAY @40 /* ~What creature do you want me to create?~ */
	
	IF ~~ THEN REPLY @41
	DO ~
		CreateCreature("NEB", [-1.-1], S)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @52
	DO ~
		CreateCreature("LCCORWIN", [-1.-1], S)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @26 /* ~Go back to the prior menu.~ */
	GOTO LCA_ReturnToMainMenu
END

IF ~~ THEN BEGIN LCA_Menu_CreateItem
	SAY @35 /* ~What item do you want me to create for you?~ */
	
	IF ~~ THEN REPLY @255 /* LCMEDAL */
	DO ~
		GiveItemCreate("LCMEDAL", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCMEDAL", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @252 /* ~LCORW1~*/
	DO ~
		GiveItemCreate("LCORW1", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCORW1", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @253 /* ~LCORW2~*/
	DO ~
		GiveItemCreate("LCORW2", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCORW2", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @254 /* ~LDUNC~*/
	DO ~
		GiveItemCreate("LDUNC", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LDUNC", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @234 /* ~LCSTDAG~ */
	DO ~
		GiveItemCreate("LCSTDAG", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCSTDAG", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @214 /* LCLEDGER */
	DO ~
		GiveItemCreate("LCLEDGER", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCLEDGER", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	//Empowered Rings
	
	IF ~~ THEN REPLY @197 /* ~LCRING07~ */
	DO ~
		GiveItemCreate("LCRING07", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRING07", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @198 /* ~LCRING11~ */
	DO ~
		GiveItemCreate("LCRING11", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRING11", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @199 /* ~LCRING13~ */
	DO ~
		GiveItemCreate("LCRING13", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRING13", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @200 /* ~LCRING14~ */
	DO ~
		GiveItemCreate("LCRING14", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRING14", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @201 /* ~LCRING19~ */
	DO ~
		GiveItemCreate("LCRING19", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRING19", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @202 /* ~LCRING21~ */
	DO ~
		GiveItemCreate("LCRING21", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRING21", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @203 /* ~LCRING22~ */
	DO ~
		GiveItemCreate("LCRING22", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRING22", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @204 /* ~LCRING25~ */
	DO ~
		GiveItemCreate("LCRING25", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRING25", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @205 /* ~LCRING26~ */
	DO ~
		GiveItemCreate("LCRING26", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRING26", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @206 /* ~LCRING28~ */
	DO ~
		GiveItemCreate("LCRING28", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRING28", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	//Enchanted Rings
	
	IF ~~ THEN REPLY @269 /* ~LCRING07~ */
	DO ~
		GiveItemCreate("LCRNG07A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRNG07A", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @270 /* ~LCRING11~ */
	DO ~
		GiveItemCreate("LCRNG11A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRNG11A", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @271 /* ~LCRING13~ */
	DO ~
		GiveItemCreate("LCRNG13A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRNG13A", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @272 /* ~LCRING14~ */
	DO ~
		GiveItemCreate("LCRNG14A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRNG14A", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @273 /* ~LCRING19~ */
	DO ~
		GiveItemCreate("LCRNG19A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRNG19A", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @274 /* ~LCRING21~ */
	DO ~
		GiveItemCreate("LCRNG21A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRNG21A", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @275 /* ~LCRING22~ */
	DO ~
		GiveItemCreate("LCRNG22A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRNG22A", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @276 /* ~LCRING25~ */
	DO ~
		GiveItemCreate("LCRNG25A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRNG25A", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @277 /* ~LCRING26~ */
	DO ~
		GiveItemCreate("LCRNG26A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRNG26A", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @278 /* ~LCRING28~ */
	DO ~
		GiveItemCreate("LCRNG28A", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRNG28A", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @195 /* ~Engagement Ring (Aldeth).~ */
	DO ~
		GiveItemCreate("LCRINGA", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRINGA", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @196 /* ~Engagement Ring (Jhasso).~ */
	DO ~
		GiveItemCreate("LCRINGJ", LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCRINGJ", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @187 /* ~Shipping Manifests (LCMANFST)~*/
	DO ~
		GiveItemCreate("LCMANFST",LastTalkedToBy(Myself),1,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("LCMANFST", IDENTIFIED,TRUE))
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @36 /* Genie's Flask */
	DO ~
		GiveItemCreate("misc4d",LastTalkedToBy(Myself),1,0,0)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @101 /* ~Bodhi's Heart.~ */
	DO ~
		GiveItemCreate("MISCBP",LastTalkedToBy(Myself),1,0,0)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @102 /* ~Corwin's Body.~*/
	DO ~
		GiveItemCreate("LCCORBOD",LastTalkedToBy(Myself),1,0,0)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @160 /* ~Doll for Rohma.~*/
	DO ~
		GiveItemCreate("RDOLL",LastTalkedToBy(Myself),1,0,0)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @26 /* ~Go back to the prior menu.~ */
	GOTO LCA_ReturnToMainMenu
END

IF ~~ THEN BEGIN LCA_Menu_AdjustVariables 
	SAY @28 /* ~What adjustment would you like me to make?~ */
	
	IF ~~ THEN REPLY @281
	DO ~
		SetGlobal("bd_player_exiled", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @282
	DO ~
		SetGlobal("bd_player_exiled", "GLOBAL", 0)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @263
	DO ~
		SetGlobal("LCA_TunnelAnxiety", "GLOBAL", 1)
		SetGlobalTimer("LCA_TunnelAnxietyTimer", "GLOBAL", ONE_ROUND)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @261
	DO ~
		SetGlobal("LCA_ToldTruthBhaal", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @228
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 4)
		SetGlobal("LCA_SlappedDelcia", "GLOBAL", 1)
		SetGlobal("LCA_CorwinWonTM", "GLOBAL", 1)
		SetGlobal("LCA_CorwinCleansed", "GLOBAL", 1)
		SetGlobal("LCA_CorwinCleansed", "GLOBAL", 2)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @197 /* ~LCRING07~ */
	DO ~
		SetGlobal("LCA_RingEnchantment2", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment3", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment5", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @198 /* ~LCRING11~ */
	DO ~
		SetGlobal("LCA_RingEnchantment1", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment3", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment5", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @199 /* ~LCRING13~ */
	DO ~
		SetGlobal("LCA_RingEnchantment1", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment2", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment5", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @200 /* ~LCRING14~ */
	DO ~
		SetGlobal("LCA_RingEnchantment1", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment2", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment3", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @201 /* ~LCRING19~ */
	DO ~
		SetGlobal("LCA_RingEnchantment4", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment3", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment5", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @202 /* ~LCRING21~ */
	DO ~
		SetGlobal("LCA_RingEnchantment4", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment2", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment5", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @203 /* ~LCRING22~ */
	DO ~
		SetGlobal("LCA_RingEnchantment4", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment2", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment3", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @204 /* ~LCRING25~ */
	DO ~
		SetGlobal("LCA_RingEnchantment4", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment1", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment5", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @205 /* ~LCRING26~ */
	DO ~
		SetGlobal("LCA_RingEnchantment4", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment1", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment3", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @206 /* ~LCRING28~ */
	DO ~
		SetGlobal("LCA_RingEnchantment4", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment1", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchantment2", "GLOBAL", 1)
		SetGlobal("LCA_RingEnchanted", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @215
	DO ~
		SetGlobal("LCA_CorwinProposalCS", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @213
	DO ~
		SetGlobal("LCA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @210
	DO ~
		SetGlobal("LCA_MaxFriendly_Corwin", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @211
	DO ~
		SetGlobal("LCA_MaxFriendly_Charname", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @212
	DO ~
		SetGlobal("LCA_RefugeeQuestComplete", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @209 /* ~Set LCA_VirgilInCustody to 1.~ */
	DO ~
		SetGlobal("LCA_VirgilInCustody", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @208 
	DO ~
		SetGlobal("LCA_Reset_0608", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @193
	DO ~
		SetGlobal("LCA_DukesDebriefed", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @194
	DO ~
		SetGlobal("LCA_DukesDebriefed", "GLOBAL", 0)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @192 
	DO ~
		SetGlobal("LCA_NederlokGreeting", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @191 /* Global("LCA_BGSlaverPlot", "GLOBAL", 1)*/
	DO ~
		SetGlobal("LCA_BGSlaverPlot", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @190
	DO ~
		SetGlobal("LCA_CorwinJoinOverride", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @189
	DO ~
		SetGlobal("LCA_CorwinMetFamily", "GLOBAL", 0)
		SetGlobal("LCA_CorwinFamilyTalk", "GLOBAL", 0)
		SetGlobal("LCA_LCCS14Cutscene", "GLOBAL", 0)
		SetGlobal("LCA_LCCS14Started", "GLOBAL", 0)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @188
	DO ~
		SetGlobal("LCA_ReturnToBG", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @161
	DO ~
		SetGlobal("LCA_JustBoughtDoll", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @158
	DO ~
		SetGlobal("EEMetRohma", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @159
	DO ~
		SetGlobal("LCA_GaveDoll", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @157
	DO ~
		SetGlobal("LCA_CorwinWonTM", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @145
	DO ~
		SetGlobal("LCA_DisableXRatedContent", "GLOBAL", 0)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @146
	DO ~
		SetGlobal("LCA_DisableXRatedContent", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @127
	DO ~
		SetGlobal("LCA_Override", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @144
	DO ~
		SetGlobal("LCA_CorwinWentToAvernus", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @76
	DO ~
		SetGlobal("bd_asha_duel", "GLOBAL", 3)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @77
	DO ~
		SetGlobal("bd_asha_duel", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @128
	DO ~
		SetGlobal("LCA_CorwinWitnessedDuel", "GLOBAL", 2)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @134
	DO ~
		SetGlobal("LCA_CorwinWitnessedDuel", "GLOBAL", 0)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @95
	DO ~
		SetGlobal("bd_drinks_corwin","global",1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @97
	DO ~
		SetGlobal("BodhiDead","GLOBAL",1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @42
	DO ~
		SetGlobal("BodhiJob","GLOBAL",2)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @43
	DO ~
		SetGlobal("BodhiJob","GLOBAL",3)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @44
	DO ~
		SetGlobal("BodhiJob","GLOBAL",4)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @32
	DO ~
		SetGlobal("LCA_CorwinRomanceActive", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @33
	DO ~
		SetGlobal("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @29 /* ~Set EEMetRohma to 3.~ */
	DO ~
		SetGlobal("EEMetRohma", "GLOBAL", 3)
	~
	GOTO LCA_ReturnToMainMenu

	IF ~~ THEN REPLY @124
	DO ~
		SetGlobal("HaerDalisRomanceActive","GLOBAL",1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @125
	DO ~
		SetGlobal("HaerDalisRomanceActive","GLOBAL",2)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @49
	DO ~
		SetGlobal("LCA_BanterCountInit", "GLOBAL", 0)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @89
	DO ~
		SetGlobal("LCA_CorwinBit", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @90
	DO ~
		SetGlobal("LCA_CorwinBit", "GLOBAL", 2)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @91
	DO ~
		SetGlobal("LCA_CorwinBit", "GLOBAL", 3)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @92
	DO ~
		SetGlobal("LCA_CorwinBit", "GLOBAL", 4)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @94 /* ~Set LCA_CorwinCleansed to 1 (and create LCCORWIN).~ */
	DO ~
		SetGlobal("LCA_CorwinCleansed", "GLOBAL", 1)
		CreateCreature("LCCORWIN", [-1.-1], S)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @30
	DO ~
		SetGlobal("LCA_CorwinContinue", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @31 
	DO ~
		SetGlobal("LCA_CorwinContinue", "GLOBAL", 2)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @51
	DO ~
		SetGlobal("LCA_TM_ArcheryChallenge", "GLOBAL", 2)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @37
	DO ~
		SetGlobal("MurdersSolved","GLOBAL",0)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @38
	DO ~
		SetGlobal("MurdersSolved","GLOBAL",1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @129
	DO ~
		SetGlobal("bd_bridgefort_saved","GLOBAL",1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @130
	DO ~
		SetGlobal("bd_bridgefort_sabotaged","GLOBAL",1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @131
	DO ~
		SetGlobal("bd_corwin_romanceactive","GLOBAL",1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @132
	DO ~
		SetGlobal("bd_corwin_romanceactive","GLOBAL",2)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @133
	DO ~
		SetGlobal("bd_corwin_romanceactive","GLOBAL",3)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @140
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 0)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @135
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @136
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 3)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @137
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 3)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @138
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 4)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @148
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 3)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @139
	DO ~
		SetGlobal("LCA_CorwinSexAfterBodhi", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @141
	DO ~
		SetGlobal("LCA_CorwinSexNoSleepComplain", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @142
	DO ~
		SetGlobal("LCA_CorwinHostile", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @143
	DO ~
		SetGlobal("SvirHostile", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @147
	DO ~
		SetGlobal("LCA_CorwinSexBoost", "GLOBAL", 1)
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @26 /* ~Go back to the prior menu.~ */
	GOTO LCA_ReturnToMainMenu
END

IF ~~ THEN BEGIN LCA_Menu_StartCutscene
	SAY @15 /*  ~Of course. Which cutscene do you want to start?~ */
	
	IF ~~ THEN REPLY @267 /* ~LCCS15 (Neoma, Corwin Reunite)~ */
	DO ~
		SetGlobal("LCA_ReturnToBG", "GLOBAL", 1)
		SetGlobal("LCA_LCCS15Started", "GLOBAL", 0)
		CreateCreature("LCNEOMA", [-1.-1], N)
	~
	EXIT
	
	IF ~~ THEN REPLY @268 /* ~LCCS15 (Neoma, Corwin Reunite, Earrings)~ */
	DO ~
		SetGlobal("LCA_CorwinGaveEarrings", "GLOBAL", 1)
		SetGlobal("LCA_ReturnToBG", "GLOBAL", 1)
		SetGlobal("LCA_LCCS15Started", "GLOBAL", 0)
		CreateCreature("LCNEOMA", [-1.-1], N)
	~
	EXIT
	
	IF ~~ THEN REPLY @260 
	DO ~
		SetGlobal("LCA_Override", "GLOBAL", 1)
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
		StartCutScene("CHSARA1")
	~
	EXIT
	
	IF ~~ THEN REPLY @238
	DO ~
		StartCutSceneMode()
		StartCutScene("CHSARA2")
	~
	EXIT
	
	IF ~~ THEN REPLY @239
	DO ~
		StartCutSceneMode()
		StartCutScene("CHSARA3")
	~
	EXIT
	
	IF ~~ THEN REPLY @240
	DO ~
		StartCutSceneMode()
		StartCutScene("CHSARA4")
	~
	EXIT
	
	IF ~~ THEN REPLY @235
	DO ~
		StartCutSceneMode()
		StartCutScene("LCUCEND1")
	~
	EXIT
	
	IF ~~ THEN REPLY @233
	DO ~
		StartCutSceneMode()
		StartCutScene("LCUCITY")
	~
	EXIT
	
	IF ~~ THEN REPLY @232
	DO ~
		StartCutSceneMode()
		StartCutScene("CHDINNER")
	~
	EXIT
	
	IF ~~ THEN REPLY @231
	DO ~
		StartCutSceneMode()
		StartCutScene("CHDINROM")
	~
	EXIT
	
	IF ~~ THEN REPLY @227
	DO ~
		SetGlobal("LCA_DukesDebriefed", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("LCDEBREF")
	~
	EXIT
	
	IF ~~ THEN REPLY @226
	DO ~
		SetGlobal("LCA_RohmaKidnapped", "GLOBAL", 4)
		StartCutSceneMode()
		StartCutScene("LCDUCAL")
	~
	EXIT
	
	IF ~~ THEN REPLY @225
	DO ~
		StartCutSceneMode()
		StartCutScene("LCWLKH02")
	~
	EXIT
	
	IF ~~ THEN REPLY @224
	DO ~
		StartCutSceneMode()
		StartCutScene("LCWLKHOM")
	~
	EXIT
	
	IF ~~ THEN REPLY @223
	DO ~
		StartCutSceneMode()
		StartCutScene("LCDINNER")
	~
	EXIT
	
	IF ~~ THEN REPLY @222
	DO ~
		StartCutSceneMode()
		StartCutScene("LCPROPOS")
	~
	EXIT
	
	IF ~~ THEN REPLY @207
	DO ~
		StartCutSceneMode()
		StartCutScene("LCCS16a")
	~
	EXIT
	
	IF ~~ THEN REPLY @151
	DO ~
		StartCutSceneMode()
		StartCutScene("LCAcs59a")	
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
		StartCutScene("LCAcs01a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @17
	DO ~
		StartCutSceneMode()
		StartCutScene("LCAcs01b")	
	~
	EXIT
	
	IF ~~ THEN REPLY @23
	DO ~
		StartCutSceneMode()
		StartCutScene("LCAcs02a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @18
	DO ~
		StartCutSceneMode()
		StartCutScene("LCAcs03a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @19
	DO ~
		StartCutSceneMode()
		StartCutScene("LCAcs04a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @20
	DO ~
		StartCutSceneMode()
		StartCutScene("LCAcs05a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @21
	DO ~
		StartCutSceneMode()
		StartCutScene("LCAcs06a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @22
	DO ~
		StartCutSceneMode()
		StartCutScene("LCAcs06c")	
	~
	EXIT
	
	IF ~
		HPGT("LCCORWIN", 50)
	~ THEN REPLY @99
	DO ~
		CreateCreature("BODHIAMB",[1950.1690],S) 
		StartCutSceneMode()
		StartCutScene("LCAcs07b")
		//ActionOverride("LCCORWIN", LeaveParty())		
	~
	EXIT
	
	IF ~
		HPLT("LCCORWIN", 51)
	~ THEN REPLY @99
	DO ~
		CreateCreature("BODHIAMB",[1950.1690],S) 
		StartCutSceneMode()
		StartCutScene("LCAcs07a")
		//ActionOverride("LCCORWIN", LeaveParty())		
	~
	EXIT
	
	IF ~~ THEN REPLY @93
	DO ~
		StartCutSceneMode()
		StartCutScene("LCAcs08a")	
	~
	EXIT
	
	IF ~~ THEN REPLY @96
	DO ~
		StartCutSceneMode()
		StartCutScene("LCAcs08c")	
	~
	EXIT
	
	IF ~~ THEN REPLY @98
	DO ~
		StartCutSceneMode()
		StartCutScene("LCAcs09a")	
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
		SetGlobal("LCA_CorwinWitnessedDuel", "GLOBAL", 2)
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
		SetGlobal("LCA_CorwinWitnessedDuel", "GLOBAL", 2)
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
	GOTO LCA_ReturnToMainMenu
END

IF ~~ THEN BEGIN LCA_Menu_AddCharacter
	SAY @3 /* ~Of course. Who would you like to add to your party?~ */
	
	IF ~~ THEN REPLY @6 /* ~Aerie (AERIE12).~*/
	DO ~
		CreateCreature("AERIE12", [-1.-1], S)
		ActionOverride("Aerie", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @4 /* ~Corwin (LCCORWIN).~ */
	DO ~
		CreateCreature("LCCORWIN", [-1.-1], S)
		ActionOverride("LCCORWIN", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @86 /* @86 = ~Dorn (DORN10.CRE)~*/
	DO ~
		CreateCreature("DORN10", [-1.-1], S)
		ActionOverride("Dorn", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @86 /* @86 = ~Dorn (DORN10.CRE)~*/
	DO ~
		CreateCreature("EDWIN11", [-1.-1], S)
		ActionOverride("Edwin", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @87 /* @87 = ~HaerDalis (HAER10.CRE)~*/
	DO ~
		CreateCreature("HAER10", [-1.-1], S)
		ActionOverride("HaerDalis", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @11 /* ~Hexxat (OHHEX15).~*/
	DO ~
		CreateCreature("OHHEX15", [-1.-1], S)
		ActionOverride("Hexxat", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @80 /* ~Imoen (IMOEN10).~*/
	DO ~
		CreateCreature("IMOEN10", [-1.-1], S)
		ActionOverride("Imoen2", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
		
	IF ~~ THEN REPLY @10 /* ~Jaheira (JAHEIR11).~*/
	DO ~
		CreateCreature("JAHEIR11", [-1.-1], S)
		ActionOverride("Jaheira", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @78 /* ~Jan (JAN12).~*/
	DO ~
		CreateCreature("JAN12", [-1.-1], S)
		ActionOverride("Jan", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @9 /* ~Keldorn (KELDOR12).~*/
	DO ~
		CreateCreature("KELDOR12", [-1.-1], S)
		ActionOverride("Keldorn", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @8 /* ~Korgan (KORGAN11).~*/
	DO ~
		CreateCreature("KORGAN11", [-1.-1], S)
		ActionOverride("Korgan", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @50 /* ~Mazzy (MAZZY11).~*/
	DO ~
		CreateCreature("MAZZY11", [-1.-1], S)
		ActionOverride("Mazzy", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @79 /* ~Minsc (MINSC9).~*/
	DO ~
		CreateCreature("MINSC9", [-1.-1], S)
		ActionOverride("Minsc", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @82 /* ~Nalia (NALIA11).~*/
	DO ~
		CreateCreature("NALIA11", [-1.-1], S)
		ActionOverride("Nalia", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @81 /* ~Neera (NEERA8).~*/
	DO ~
		CreateCreature("NEERA8", [-1.-1], S)
		ActionOverride("Neera", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @85 /* @85 = ~Rasaad (RASAAD9.CRE)~*/
	DO ~
		CreateCreature("RASAAD9", [-1.-1], S)
		ActionOverride("Rasaad", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @83 /* ~Valygar (VALYG9.CRE)~*/
	DO ~
		CreateCreature("VALYG9", [-1.-1], S)
		ActionOverride("Valygar", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @7 /* @7 = ~Viconia (VICONI13).~*/
	DO ~
		CreateCreature("VICONI13", [-1.-1], S)
		ActionOverride("Viconia", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	IF ~~ THEN REPLY @84 /* @84 = ~Yoshimo (YOSHI10.CRE)~*/
	DO ~
		CreateCreature("YOSHI10", [-1.-1], S)
		ActionOverride("Yoshimo", JoinParty())
	~
	GOTO LCA_ReturnToMainMenu
	
	
	
	IF ~~ THEN REPLY @26
	GOTO LCA_ReturnToMainMenu
END

IF ~~ THEN BEGIN LCA_Exit
	SAY @14 /* ~Very well. Thanks for playing!~ */

	IF ~~ THEN
	EXIT
END