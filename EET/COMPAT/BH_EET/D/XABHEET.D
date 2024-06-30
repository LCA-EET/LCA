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
APPEND XAILLASE
	IF ~~ THEN BEGIN XA_MeetIllaseraBH
		SAY @1 /*~It has. I hope you appreciate how much effort it took to make this little reunion a reality.~*/
		
		COPY_TRANS XAILLASE 3
	END
END

ADD_TRANS_TRIGGER XAILLASE 0
~
	GlobalLT("BHBG1Quest","GLOBAL",1)
~
DO 0 1

EXTEND_BOTTOM XAILLASE 0
	IF ~
		!IsValidForPartyDialogue("XACORWIN")
		GlobalGT("BHBG1Quest","GLOBAL",0)
	~ THEN REPLY @0 /* ~Illasera... It's been a while.~ */
	DO ~
		SetGlobal("XA_MeetIllasera", "GLOBAL", 1)
		SetGlobal("XA_RohmaKidnapped", "GLOBAL", 0)
	~
	GOTO XA_MeetIllaseraBH
END

//}

//{ XANEDERL
EXTEND_BOTTOM XANEDERL 6
	IF ~
		GlobalGT("BHBG1Quest","GLOBAL",0)
	~ THEN REPLY @2 /*~I've dealt with Illasera before. She's a bounty hunter, if I recall... and a dangerous one at that.~*/
	EXTERN XA_RohmaKidnapped4BH
END
//}

//{ XAELTAN
APPEND XAELTAN
	IF ~~ THEN BEGIN XA_RohmaKidnapped4BH
		SAY @3 /*~I see... Captain, you mentioned that you knew the other captor, yes? Beno Famari, is it?~*/
		
		COPY_TRANS XAELTAN 7
	END
END
//}