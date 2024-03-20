BEGIN ~XASERVA2~

IF ~
	RandomNum(4,1)
~ THEN BEGIN XA_1
	SAY @0/* ~Excuse me, but I really must return to my duties.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(4,2)
~ THEN BEGIN XA_2
	SAY @1/*~I'd love to stay and chat, but these statues won't dust themselves.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(4,3)
~ THEN BEGIN XA_3
	SAY @2/* ~Lady Silvershield is upstairs, if you mean to speak with her.~*/
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(4,4)
~ THEN BEGIN XA_4
	SAY @3/*  ~Lord Silvershield is himself once again now that his daughter is well.~*/
	
	IF ~~ THEN EXIT
END