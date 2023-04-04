BEGIN ~LCMERLEA~

IF ~
	RandomNum(6,1)
~ THEN BEGIN LCA0
	SAY @0 /* ~Leave me be, I've business to attend to.~ */
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(6,2)
	!AreaCheck("BG0128")
	!Dead("Aldeth")
~ THEN BEGIN LCA1
	SAY @1 /* ~If you're seeking Aldeth, he's upstairs.~*/
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(6,2)
~ THEN BEGIN LCA2
	SAY @2 /* ~Grain futures are lower, with the bandit activity down and all.~  */
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(6,3)
~ THEN BEGIN LCA3
	SAY @3 /* ~With the refugee crisis finally dealt with, the strain on the city's economy should lessen.~*/
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(6,4)
~ THEN BEGIN LCA4
	SAY @4 /* ~Lumber futures are up, no doubt because of the new construction east of the city.~*/
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(6,5)
~ THEN BEGIN LCA5
	SAY @5 /* ~The value of my holdings has doubled since the fall of the Iron Throne.~
*/
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(6,6)
~ THEN BEGIN LCA6
	SAY @6 /* ~Welcome to the Merchant's League. May your stay be a profitable one.~
*/
	IF ~~ THEN
	EXIT
END