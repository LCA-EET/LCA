EXTEND_BOTTOM XALCDBG 13
	IF ~~ THEN REPLY @1 /* ~TLR Debug~*/
	GOTO XA_LC_TLR_Debug
END

APPEND XALCDBG
	IF ~~ THEN BEGIN XA_LC_TLR_Debug
		SAY @1
		
		IF ~~ THEN REPLY @2
		DO ~
			ActionOverride(Player1,LeaveAreaLUA("xatlrrbg","",[4245.3115],SE))
			ActionOverride(Player2,LeaveAreaLUA("xatlrrbg","",[4225.3125],SE))
			ActionOverride(Player3,LeaveAreaLUA("xatlrrbg","",[4225.3125],SE))
			ActionOverride(Player4,LeaveAreaLUA("xatlrrbg","",[4205.3105],SE))
			ActionOverride(Player5,LeaveAreaLUA("xatlrrbg","",[4205.3105],SE))
			ActionOverride(Player6,LeaveAreaLUA("xatlrrbg","",[4205.3105],SE))
		~
		EXIT
		
		IF ~~ THEN REPLY @5
		DO ~
			ActionOverride(Player1,LeaveAreaLUA("xapen","",[4245.3115],SE))
			ActionOverride(Player2,LeaveAreaLUA("xapen","",[4225.3125],SE))
			ActionOverride(Player3,LeaveAreaLUA("xapen","",[4225.3125],SE))
			ActionOverride(Player4,LeaveAreaLUA("xapen","",[4205.3105],SE))
			ActionOverride(Player5,LeaveAreaLUA("xapen","",[4205.3105],SE))
			ActionOverride(Player6,LeaveAreaLUA("xapen","",[4205.3105],SE))
		~
		EXIT
		
		IF ~~ THEN REPLY @4
		DO ~
			SetGlobal("XA_LC_PartyRemovalProcessing", "GLOBAL", 2)
		~
		GOTO XA_LC_TLR_Debug
		
		IF ~~ THEN REPLY @18 /*~Create Irenicus and add him to the party.~*/
		DO ~
			CreateCreature("lrirenic", [-1.-1], N)
			ActionOverride("lrirenic", JoinParty())
		~
		EXIT
		
		IF ~~ THEN REPLY @3/* ~Return to the previous menu.~*/
		GOTO 13
		
		COPY_TRANS XALCDBG 11
	END
END