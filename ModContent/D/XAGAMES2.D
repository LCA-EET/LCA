BEGIN ~XAGAMES2~

IF ~
	IsGabber("XACORWIN")
	RandomNum(2,1)
	!TimeOfDay(NIGHT)
~ THEN BEGIN XA_0
	SAY @3 /* ~Good day, officer.~ */
	IF~~ THEN EXIT
END

IF ~
	IsGabber("XACORWIN")
	RandomNum(2,1)
	TimeOfDay(NIGHT)
~ THEN BEGIN XA_0
	SAY @4 /*  ~Good evening, officer.~ */
	IF~~ THEN EXIT
END

IF ~
	IsGabber("XACORWIN")
	RandomNum(2,2)
~ THEN BEGIN XA_0
	SAY @5 /*  ~All of our games are legitimate, officer. These people are just having a good time.~ */
	IF~~ THEN EXIT
END

IF ~  
	RandomNum(3,1)
~ THEN BEGIN 0 // from:
  SAY @0/* ~Aye, fewer players at the tables since the refugees were shipped out. Their coin, poor as they were, will be missed.~*/
  IF ~~ THEN EXIT
END

IF ~  
	RandomNum(3,2)
~ THEN BEGIN 1 // from:
  SAY @1 /* ~Play or push off, I've money to take... er... make.~ */
  IF ~~ THEN EXIT
END

IF ~  
	RandomNum(3,3)
~ THEN BEGIN 2 // from:
  SAY @2 /* ~Step up and play, ladies and gents! It's an honest house and everyone has a chance at striking it rich! Anyone that says otherwise is advised to have a chat with the bartender's axe!~ */
  IF ~~ THEN EXIT
END
