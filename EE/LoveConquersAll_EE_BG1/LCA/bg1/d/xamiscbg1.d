//{ FORTHE
	ADD_TRANS_ACTION FORTHE
	BEGIN 9 11 END
	BEGIN 0 END
	~
		SetGlobal("XA_HelpedForthel_BG1", "GLOBAL", 1)
	~
//}

//{ KERRAC
	ADD_TRANS_ACTION KERRAC
	BEGIN 3 4 5 6 END
	BEGIN 0 END
	~
		SetGlobal("XA_MetKerrac","GLOBAL",1)
	~
//}

//{ LARZE
	ADD_TRANS_ACTION LARZE
	BEGIN 3 END
	BEGIN 1 END
	~
		SetGlobal("XA_TrickedLarze","GLOBAL",1)
	~
//}
	
//{ ALDETH
	ADD_TRANS_ACTION ALDETH
	BEGIN 23 END
	BEGIN 1 END
	~
		SetGlobal("XA_AldethFF","GLOBAL",1)
	~
	
	ADD_TRANS_ACTION ALDETH
	BEGIN 27 END
	BEGIN 0 END
	~
		SetGlobal("XA_HelpAldeth","GLOBAL",2)
	~
//}

//{ VAI
	ADD_TRANS_ACTION VAI
	BEGIN 6 END
	BEGIN 0 END
	~
		IncrementGlobal("XA_CorwinOpinionOfPlayer","GLOBAL",2)
	~
//}