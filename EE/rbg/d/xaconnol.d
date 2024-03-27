BEGIN ~XACONNOL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @0 /* ~Glad to make your acquaintance there, by golly. What might ye be needing from ol' Connoly Finn? A tale of treachery amidst the nobles, or a bit o' back-alley skullduggery? I hear many things while tipping a bit of ale.~ */
  IF ~~ THEN REPLY @1 /* ~Tell me what the common folk are talking about these days.~ */ GOTO 2
  IF ~~ THEN REPLY @2 /* ~What have you heard bandied about the bar lately?~ */ GOTO 2
END

IF ~~ THEN BEGIN 2
	SAY @3 /* ~Aye, remember <CHARNAME>, the so-called hero of Baldur's Gate? The one who was arrested for killing the Duke's daughter? Well, the Dukes are now tellin' everyone now that <PRO_HESHE> was innocent the whole time! What's more, Skie Silvershield is up and about, healthy and lively as ever. Could you believe it? Word on the street is that <PRO_HESHE>'s on <PRO_HISHER> way back to the city as we speak. Good on <PRO_HIMHER>, I s'pose.~ */
	
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END