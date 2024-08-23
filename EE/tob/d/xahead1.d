ADD_TRANS_TRIGGER HEAD1 4
~
	GlobalLT("XA_LC_ReturnToBG", "GLOBAL", 2)
~

EXTEND_BOTTOM HEAD1 4
	IF ~~ THEN GOTO XA_HEAD1_LCA
END

APPEND ~HEAD1~
	SAY @5 /* ~The storm approaches. We speak no more.~ [5HEAD04] */
	IF ~~ THEN 
	DO ~
		SetGlobalTimer("XA_LC_GiantSpawnTimer","GLOBAL",ONE_ROUND)
		StartCutSceneMode()
		StartCutSceneEx("XA204g",FALSE)
	~ 
	EXIT
END
