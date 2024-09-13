EXTEND_BOTTOM XALCDBG 13
	IF ~~ THEN REPLY @7000 /* ~ToB Debug~ */
	GOTO XA_ToB_Debug
END

APPEND ~XALCDBG~
	IF ~~ THEN BEGIN XA_ToB_Debug
		SAY @7000

		IF ~~ THEN REPLY @6020 /* ~Area Test~*/
		GOTO XA_ToB_AreaTest
		
		IF ~~ THEN REPLY @7002 /* ~Spawn Caelar (XACAELAR) and add her to the party.~~*/
		DO ~
			CreateCreature("XACAELAR", [-1.-1], N)
			ActionOverride("XACAELAR", JoinParty())
		~
		EXIT
		
		IF ~~ THEN REPLY @7006 /* ~Spawn BDCaelar (xac109) and add her to the party.~*/
		DO ~
			CreateCreature("xac109", [-1.-1], N)
			ActionOverride("xac109", JoinParty())
		~
		EXIT
		
		IF ~~ THEN REPLY @7005 /*@3191=~MoveToCampaign("ToB")~*/
		DO ~
			MoveToExpansion()
		~
		EXIT
		
		IF ~~ THEN REPLY @7007 /* ~Epilogue Test~*/
		GOTO XA_ToB_EpilogueTest
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO 13
		
		COPY_TRANS XALCDBG 14
	END
	
	IF ~~ THEN BEGIN XA_ToB_EpilogueTest
		SAY @7007 /* ~Epilogue Test~*/
		
		IF ~~ THEN REPLY @7008
		DO ~TextScreen("xacornd1")~
		EXIT
		
		IF ~~ THEN REPLY @7009
		DO ~TextScreen("xacornd2")~
		EXIT
		
		IF ~~ THEN REPLY @7010
		DO ~TextScreen("xacornd3")~
		EXIT
		
		IF ~~ THEN REPLY @7011
		DO ~TextScreen("xacornd4")~
		EXIT
		
		IF ~~ THEN REPLY @7012
		DO ~TextScreen("xacornd5")~
		EXIT
		
		IF ~~ THEN REPLY @7013
		DO ~TextScreen("xacornd6")~
		EXIT
		
		IF ~~ THEN REPLY @7014
		DO ~TextScreen("xalcand1")~
		EXIT
		
		IF ~~ THEN REPLY @7015
		DO ~TextScreen("xalcand2")~
		EXIT
		
		IF ~~ THEN REPLY @7016
		DO ~TextScreen("xalcand3")~
		EXIT
		
		IF ~~ THEN REPLY @7017
		DO ~TextScreen("xalcand4")~
		EXIT
		
		IF ~~ THEN REPLY @7018
		DO ~TextScreen("xalcand5")~
		EXIT
		
		IF ~~ THEN REPLY @7019
		DO ~TextScreen("xalcand6")~
		EXIT
		
		IF ~~ THEN REPLY @7020
		DO ~TextScreen("xacaeend")~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_ToB_Debug
		
		COPY_TRANS XALCDBG 14
	END
	
	IF ~~ THEN BEGIN XA_ToB_AreaTest
		SAY @6020 /* ~Area Test~*/
	
		IF ~~ THEN REPLY @7001 /* ~XAG102 (BD5300) - Kanaglym~ */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAG102", "", [665.325], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @7003 /* ~XAG100 Avernus Bridge~ */
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("XAG100", "", [665.325], S))
		~
		EXIT
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_ToB_Debug
		
		COPY_TRANS XALCDBG 14
	END
	

END