BEGIN ~LCLANTAN~

IF ~
	True()
~ THEN BEGIN LCA0
	SAY @0 /* ~You've returned! I had another dream about you - it was horrible!~ */
	
	IF ~~ THEN REPLY @1 /* ~I remember you. You dreamt that I would be stripped of my power ... of what that bastard Irenicus would eventually do to me. Tell me what you saw in your dream this time that I might learn of what is to come.~ */
	GOTO LCA1
	
	IF ~~ THEN REPLY @2 /* ~Keep away - do not trouble me with your ravings, hag.~ */
	GOTO LCA3
END

IF ~~ THEN BEGIN LCA3
	SAY @6 /* ~To the hells with you then!~ */
	IF ~~ THEN
	DO ~
		EscapeAreaObject("Exit0200")
	~
	EXIT
END

IF ~~ THEN BEGIN LCA1
	SAY @3 /* ~You were standing in a - in a ruined city, knee deep in the dead. Men, women, children all slaughtered... but... it was not your doing. There city was surrounded by five.. five...~ */
	
	IF ~~ THEN REPLY @4 /* ~Five what?~*/
	GOTO LCA2
END

IF ~~ THEN BEGIN LCA2
	SAY @5 /* ~Five a-abominations, each worse than the next! And there was another, directing their actions from the shadows. She set them against you, and you prevailed! But.. as they turned to dust, she absorbed their essence. She grew in power and stature until ... until she blotted out the sun! It was at that point that my husband mercifully woke me from my restless slumber. Beware, hero!~  */
	
	IF ~~ THEN
	DO ~
		EscapeAreaObject("Exit0200")
	~
	EXIT
END