//{ Fergus
	ADD_TRANS_ACTION Fergus
	BEGIN 3 END
	BEGIN 0 END
	~
		SetGlobal("XA_LC_FergusRing", "GLOBAL", 1)
	~
//}
//{ Brielbara
	ADD_TRANS_ACTION BRIELB
	BEGIN 1 END
	BEGIN 0 END
	~
		SetGlobal("XA_LC_BrielbaraCoran", "GLOBAL", 1)
	~
	
	ADD_TRANS_ACTION BRIELB
	BEGIN 8 END
	BEGIN 1 END
	~
		SetGlobal("XA_LC_HelpedBrielbara", "GLOBAL", 1)
	~
//}

//{ Brevlik Farseer Quest
	ADD_TRANS_ACTION BREVLI
	BEGIN 18 END
	BEGIN 0 END
	~
		SetGlobal("XA_LC_StoleFarseer", "GLOBAL", 1)
	~
//}

//{ FORTHE
	ADD_TRANS_ACTION FORTHE
	BEGIN 9 11 END
	BEGIN 0 END
	~
		SetGlobal("XA_LC_HelpedForthel", "GLOBAL", 1)
	~
//}

//{ KERRAC
	ADD_TRANS_ACTION KERRAC
	BEGIN 3 4 5 6 END
	BEGIN 0 END
	~
		SetGlobal("XA_LC_MetKerrachus","GLOBAL",1)
	~
//}

//{ LARZE
	ADD_TRANS_ACTION LARZE
	BEGIN 3 END
	BEGIN 1 END
	~
		SetGlobal("XA_LC_TrickedLarze","GLOBAL",1)
	~
//}
	
//{ ALDETH
	ADD_TRANS_ACTION ALDETH
	BEGIN 23 END
	BEGIN 1 END
	~
		SetGlobal("XA_LC_AldethFF","GLOBAL",1)
	~
	
	ADD_TRANS_ACTION ALDETH
	BEGIN 27 END
	BEGIN 0 END
	~
		SetGlobal("XA_LC_SavedAldeth","GLOBAL",1)
	~
//}

//{ JHASSO
	ADD_TRANS_ACTION JHASSO 
	BEGIN 0 END
	BEGIN 0 2 END
	~
		SetGlobal("XA_LC_SavedJhasso", "GLOBAL", 1)
	~
//}

//{ VAI
	ADD_TRANS_ACTION VAI
	BEGIN 6 END
	BEGIN 0 END
	~
		SetGlobal("XA_LC_VaiBoost","GLOBAL",1)
	~
//}