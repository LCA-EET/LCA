BEGIN ~LCLYRIEL~

IF ~
	!GlobalLT("LCA_Lyriel", "GLOBAL", 1)
~ THEN BEGIN LCA_Intro
	SAY @0 /* Who are you! Answer me!~ */
	
	IF ~~ THEN REPLY @1 /* ~I'm <CHARNAME>. What is this place?~*/
	DO ~
		SetGlobal("LCA_Lyriel", "GLOBAL", 1)
		SetGlobal("LCA_WhatIsThisPlace", "LOCALS", 1)
	~
	GOTO LCA_WhatIsThisPlace
	
	IF ~~ THEN REPLY @2 /* ~I recognize you - you're the woman from the painting... but you're a ghost?~*/
	DO ~
		SetGlobal("LCA_Lyriel", "GLOBAL", 1)
		SetGlobal("LCA_Canvas", "LOCALS", 1)
	~
	GOTO LCA_Canvas
	
	IF ~~ THEN REPLY @3 /* ~Am I inside of a painting?~ */
	DO ~
		SetGlobal("LCA_Lyriel", "GLOBAL", 1)
		SetGlobal("LCA_WhatIsThisPlace", "LOCALS", 1)
	~
	GOTO LCA_WhatIsThisPlace
END

IF ~~ THEN BEGIN LCA_WhatIsThisPlace
	SAY @5 /* ~As I understand it, this ... reality ... was created as a prison for a powerful demon trapped within. Over the eons, he's learned to reshape it according to his needs. He has even learned to send his creations through to the other side, though he himself can never escape.~ */
	
	IF ~
		!Global("LCA_Canvas", "LOCALS", 1)
	~ THEN REPLY @2 /* ~I recognize you - you're the woman from the painting... but you're a ghost?~ */
	DO ~
		SetGlobal("LCA_Canvas", "LOCALS", 1)
	~
	GOTO LCA_Canvas
	
	IF ~
		!Global("LCA_Spirit", "LOCALS", 1)
	~ THEN REPLY @30 /* ~Who are you, spirit?~ */
	DO ~
		SetGlobal("LCA_Spirit", "LOCALS", 1)
	~
	GOTO LCA_Spirit
END

IF ~~ THEN BEGIN LCA_Spirit
	SAY @8 /* ~I am Lyriel. Long ago, I took my own life after the man I loved perished at sea. My spirit remained at the inn now known as the Elfsong. It is where we professed our love for eachother, and it is where I ended my life.~ */
	
	IF ~
		!Global("LCA_WhyYou", "LOCALS", 1)
	~ THEN REPLY @10 /* ~Why did he bring you here?~ */
	DO ~
		SetGlobal("LCA_WhyYou", "LOCALS", 1)
	~
	GOTO LCA_WhyYou
	
	IF ~
		!Global("LCA_HowToEscape", "LOCALS", 1)
	~ THEN REPLY @9 /* ~How do I get out of here?~ */
	DO ~
		SetGlobal("LCA_HowToEscape", "LOCALS", 1)
	~
	GOTO LCA_HowToEscape
END

IF ~~ THEN BEGIN LCA_Canvas
	SAY @4 /* ~I was on the canvas? Then he lured you, as well...~ */
	
	IF ~~ THEN GOTO LCA_Spirit
END

IF ~~ THEN BEGIN LCA_WhyYou
	SAY @11 /* ~He heard my singing and ... he somehow convinced himself that he loved me. His long imprisonment has clearly driven him mad.~ */
	
	
END

IF ~~ THEN BEGIN LCA_HowToEscape
	SAY @13 /* ~This place was created to imprison the demon within. If he is destroyed, then this reality will cease to exist, and you — we — will be returned to our own.~ */
	
	
END