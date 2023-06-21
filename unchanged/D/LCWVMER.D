BEGIN ~LCWVMER~

IF ~
	!Global("LCA_Questioned_WV_Merchant", "GLOBAL", 1)
~ THEN BEGIN LCA_Greeting
	SAY @1 /* ~Welcome to the Winston Ventures. May your stay be a profitable one.~ */
	
	IF ~~ THEN REPLY @6 /* ~Who's in charge here?~ */
	DO ~
		SetGlobal("LCA_Questioned_WV_Merchant", "GLOBAL", 1)
	~
	GOTO LCA_Greeting2
END

IF ~~ THEN BEGIN LCA_Greeting2
	SAY @7 /* ~Lord Winston is away on business at the moment. His assistant Virgory can assist you with any inquiries.~ */
	
	IF ~~ THEN REPLY @8 /* ~I see. Where is Virgory?~ */
	GOTO LCA_Greeting3
END

IF ~~ THEN BEGIN LCA_Greeting3
	SAY @9 /* ~He's probably in his office on the fourth floor.~ */
	
	IF ~~ THEN REPLY @10 /* ~Thank you.~ */
	EXIT

END

IF ~
	RandomNum(5,1)
~ THEN BEGIN LCA_Default1
	SAY @0 /* ~Leave me be, I've business to attend to.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(5,2)
~ THEN BEGIN LCA_Default2
	SAY @1 /* ~Welcome to the Winston Ventures. May your stay be a profitable one.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(5,3)
~ THEN BEGIN LCA_Default3
	SAY @2 /* ~Grain futures are lower, with the bandit activity down and all.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(5,4)
~ THEN BEGIN LCA_Default4
	SAY @3 /* ~With the refugee crisis finally dealt with, the strain on the city's economy should lessen.~  */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(5,5)
~ THEN BEGIN LCA_Default5
	SAY @4 /* ~Lumber futures are up, no doubt because of the new construction east of the city.~ */
	
	IF ~~ THEN EXIT
END

