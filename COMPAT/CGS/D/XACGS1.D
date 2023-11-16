EXTEND_BOTTOM XACORWIJ 134
	IF
	~
		OR(2)
			IsValidForPartyDialogue("L#2SDSKIE")
			IsValidForPartyDialogue("L#2EDDRD")
	~
	GOTO XA_BackToBG_SkieModChain
END

APPEND XACORWIJ
	IF ~~ THEN BEGIN XA_BackToBG_SkieModChainEnd
		SAY @3  /* ~<CHARNAME> — Take a few minutes to gather your belongings. Come and talk to me when you're ready to leave.~ */
		
		IF ~~ THEN
		EXIT
	END
END

CHAIN
	IF ~~ THEN XACORWIJ XA_BackToBG_SkieModChain
		@0  /* ~Are you staying, or coming with us?~ */
		
		//{ Eddard
		== L#2EDDRD
		IF ~
			IsValidForPartyDialogue("L#2EDDRD")
		~
		@1 /* ~I want to learn more about these people, and the stories they have to tell. I'll remain here for the time being and help with the wounded.~ */
		//}
	
		//{ Skie
		== L#2SDSKI
		IF ~
			IsValidForPartyDialogue("L#2SDSKIE")
		~
		@2 /* ~I think I'll stay here for a while longer. Say hi to my mom and dad for me!~ */
		//}
END XACORWIJ XA_BackToBG_SkieModChainEnd