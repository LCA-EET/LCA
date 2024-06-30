//{ XABENO
ADD_TRANS_TRIGGER XABENO 0
~
	GlobalLT("BHBG1Quest","GLOBAL",1)
~

EXTEND_BOTTOM XABENO 0
	IF ~
		Gender(Player1, FEMALE)
		GlobalGT("BHBG1Quest","GLOBAL",0)
	~ THEN REPLY @0 /*~Illasera... It's been a while.~*/
	
	IF ~
		Gender(Player1, MALE)
		GlobalGT("BHBG1Quest","GLOBAL",0)
	~ THEN REPLY @0 /*~Illasera... It's been a while.~*/
END
//}

//{ XAILLASE
ADD_TRANS_TRIGGER XAILLASE 0
~
	GlobalLT("BHBG1Quest","GLOBAL",1)
~
DO 0 1

EXTEND_BOTTOM XAILLASE 0
	IF ~
		Gender(Player1, MALE)
		!IsValidForPartyDialogue("XACORWIN")
		GlobalGT("BHBG1Quest","GLOBAL",0)
	~ THEN REPLY @0 /* ~Illasera... It's been a while.~ */
	DO ~
		SetGlobal("XA_MeetIllasera", "GLOBAL", 1)
		SetGlobal("XA_RohmaKidnapped", "GLOBAL", 0)
	~
	GOTO XA_MeetIllasera2M
END

EXTEND_BOTTOM XAILLASE 0
	IF ~
		Gender(Player1, FEMALE)
		!IsValidForPartyDialogue("XACORWIN")
		GlobalGT("BHBG1Quest","GLOBAL",0)
	~ THEN REPLY @0 /* ~Illasera... It's been a while.~ */
	DO ~
		SetGlobal("XA_MeetIllasera", "GLOBAL", 1)
		SetGlobal("XA_RohmaKidnapped", "GLOBAL", 0)
	~
	GOTO XA_MeetIllasera2F
END
//}