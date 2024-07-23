BEGIN ~XARUMOR~

IF ~
	RandomNum(5,1)
~ THEN BEGIN xa1
	SAY @0 /*~The Duke's have proclaimed that <CHARNAME>, hero of Baldur's Gate, was innocent after all. Word is <PRO_HESHE> may be coming back to the city. That would be something, wouldn't it?~*/
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(5,2)
~ THEN BEGIN xa2
	SAY @1 /*~Been hearing that there's trouble brewing far to the southeast. It's said that Fire Giants are gathering outside of one of the Tethyrian cities... Saradush, I think it was.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(5,3)
~ THEN BEGIN xa3
	SAY @2 /*~Lord Winston did a great job in clearing out the refugees from Caelar's crusade, don't you think?~*/
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(5,4)
~ THEN BEGIN xa4
	SAY @3 /*~You didn't hear it from me, but there's word that Duke Silvershield's daughter hasn't fully recovered from her ordeal.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(5,5)
	Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN xa4
	SAY @4 /*~Word is that <CHARNAME>, the hero of Baldur's Gate, is romantically involved with an officer of the Flaming Fist.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(5,5)
	!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN xa5
	SAY @5 /*~Things've finally settled down after the iron shortages, the crusade, and the refugee crisis. We could all do with some peace and quiet, aye?~*/
	
	IF ~~ THEN EXIT
END