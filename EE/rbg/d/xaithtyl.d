BEGIN XAITHTYL

IF ~
	Gabber(Player1)
	GlobalLT("XA_IthtylIntro", "LOCALS", 1)
~ THEN BEGIN 0
	SAY @0 /*~Ah... I'd heard rumors that our esteemed hero was to return to us. Welcome back, <CHARNAME>. After your long journey, I trust your stay will be a restful one.~*/
	
	IF ~~ THEN REPLY @2 /*~And how has the city fared in my absence?~*/
	DO ~
		SetGlobal("XA_IthtylIntro", "LOCALS", 1)
	~
	GOTO XA_Absence
	
	IF ~~ THEN REPLY @4 /*~Thank you, Ithtyl. It's good to be back.~*/
	DO ~
		SetGlobal("XA_IthtylIntro", "LOCALS", 1)
	~
	GOTO XA_End
	
	IF ~~ THEN REPLY @5 /*~I was hoping for a little more excitement. It seems this place is as dull as ever.~*/
	DO ~
		SetGlobal("XA_IthtylIntro", "LOCALS", 1)
	~
	GOTO XA_Mermaid
END

IF ~~ THEN BEGIN XA_Absence
	SAY @3 /*~Between the chaos in the aftermath of your trial, Skie Silvershield's death, and the refugee crisis, it's a wonder that the city didn't tear itself apart. Fortunately the situation has improved of late, especially with Skie restored and the refugees resettled.~*/
	
	IF ~~ THEN REPLY @4 /*~Thank you, Ithtyl. It's good to be back.~*/
	GOTO XA_End
	
	IF ~~ THEN REPLY @5 /*~I was hoping for a little more excitement. It seems this place is as dull as ever.~*/
	GOTO XA_Mermaid
END

IF ~~ THEN BEGIN XA_End
	SAY @7 /*~Indeed. Now, if you'll excuse me, I have many financial matters that require my attention.~*/
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_Mermaid
	SAY @6 /*~I might suggest the Blushing Mermaid as one alternative. They are somewhat lax in the area of house rules. Good day.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	True()
~ THEN BEGIN XA_Default
	SAY @1 /*~Adventurers, welcome to the Three Old Kegs. I trust your stay will be a restful one.~*/
	
	IF ~~ THEN
	EXIT
END