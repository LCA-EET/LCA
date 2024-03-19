BEGIN ~XAMERCH~

IF ~
	RandomNum(5,1)
~ THEN BEGIN XAA0
	SAY @0 /* ~Leave me be, I've business to attend to.~ */
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(5,2)
	AreaCheck("xaa286")
~ THEN BEGIN XAA1
	SAY @1 /* ~If you're seeking Lord Jhasso, he's upstairs.~*/
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(5,2)
~ THEN BEGIN XAA2
	SAY @2 /* ~Grain futures are lower, with the bandit activity down and all.~ */
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(5,3)
~ THEN BEGIN XAA3
	SAY @3 /* ~With the refugee crisis finally dealt with, the strain on the city's economy should lessen.~*/
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(5,4)
~ THEN BEGIN XAA4
	SAY @3 /* ~Lumber futures are up, no doubt because of the new construction east of the city.~*/
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(5,5)
~ THEN BEGIN XAA5
	SAY @5 /* ~The value of my holdings has doubled since the fall of the Iron Throne.~
*/
	IF ~~ THEN
	EXIT
END