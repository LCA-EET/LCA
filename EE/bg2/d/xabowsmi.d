BEGIN ~XABOWSMI~

IF ~
	Global("XA_2802_EnemiesDead", "MYAREA", 1)
~ THEN BEGIN XA_ThankYou
	SAY @0/* ~Thank you! We had no warning... all was calm, then we heard the screams. Before we realized what was happening, we were set upon by the Exile's minions!~*/
	
	IF ~~ THEN REPLY @1/*~They are still in control of the city — Elhan is at the city gate, evacuating everyone. Go, now!~ */
	DO ~
		SetGlobal("XA_2802_EnemiesDead", "MYAREA", 2)
	~
	GOTO XA_ThankYou2
END

IF ~~ THEN BEGIN XA_ThankYou2
	SAY @2/* ~Yes, of course... thank you!~ */
	
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END	