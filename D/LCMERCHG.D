BEGIN ~LCMERCHG~

IF ~
	RandomNum(3,1)
~ THEN BEGIN LCA0
	SAY @0 /* ~Good day to you.~ */
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(3,2)
	!AreaCheck("BG0128")
	!Dead("Aldeth")
~ THEN BEGIN LCA1
	SAY @1 /* ~If you're seeking Aldeth, he's upstairs.~*/
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(3,2)
~ THEN BEGIN LCA2
	SAY @2 /* ~Grain futures are lower, with the bandit activity down and all.~  */
	IF ~~ THEN
	EXIT
END

IF ~
	RandomNum(3,3)
~ THEN BEGIN LCA3
	SAY @3 /* ~Welcome to the Merchant's League. May your stay be a profitable one.~*/
	IF ~~ THEN
	EXIT
END
