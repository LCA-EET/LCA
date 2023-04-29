BEGIN ~LCLYRIEL~

IF ~
	!GlobalLT("LCA_Lyriel", "GLOBAL", 1)
~ THEN BEGIN LCA_Startled
	SAY @31 /* ~(Startled, she turns and faces you.)~ */
	
	IF ~~ THEN 
	GOTO LCA_Intro //OK
END 

IF ~
	Global("LCA_Lyriel", "GLOBAL", 1)
~ THEN BEGIN LCA_Intro2
	SAY @49 /* ~You've returned... Do you need anything?~ */
	
	IF ~
		!Global("LCA_AskedAboutDemon", "LOCALS",1)
	~ THEN REPLY @50 /* ~Tell me more about the demon trapped with us.~*/
	DO ~
		SetGlobal("LCA_AskedAboutDemon", "LOCALS",1)
		AddJournalEntry(@61, INFO)
	~
	GOTO LCA_AskedAboutDemon
	
	IF ~
		!Global("LCA_AskedAboutGuardians", "LOCALS",1)
	~ THEN REPLY @54 /* ~Tell me about the guardians.~ */
	DO ~
		SetGlobal("LCA_AskedAboutGuardians", "LOCALS",1)
		AddJournalEntry(@62, INFO)
	~
	GOTO LCA_AskedAboutGuardians
	
	IF ~~ THEN REPLY @57 /* ~I need some healing.~ */
	GOTO LCA_GiveHeal
	
	IF ~~ THEN REPLY @58 /*  ~Not right now.~ */
	EXIT
END

IF ~~ THEN BEGIN LCA_AskedAboutDemon
	SAY @51 /* ~I only know what he told me of himself. Long ago, he invaded the dreams of someone important to an exceptionally talented wizard.~ */
	
	= @52 /*  ~The wizard created this prison, and confined the demon within it.~ */
	
	IF ~
		!Global("LCA_AskedAboutGuardians", "LOCALS",1)
	~ THEN REPLY @54 /* ~Tell me about the guardians.~ */
	DO ~
		SetGlobal("LCA_AskedAboutGuardians", "LOCALS",1)
		AddJournalEntry(@62, INFO)
	~
	GOTO LCA_AskedAboutGuardians
	
	IF ~~ THEN REPLY @57 /* ~I need some healing.~ */
	GOTO LCA_GiveHeal
	
	IF ~~ THEN REPLY @59 /* ~Thank you.~ */
	EXIT
END

IF ~~ THEN BEGIN LCA_AskedAboutGuardians
	SAY @55 /* ~There's not much to say. Remember, the demon has the ability to peer into your dreams and memories.~ */
	
	= @56 /* ~The guardians could take the form of an opponent from your past, someone you loved or respected, or even an aspect of yourself.~ */
	
	IF ~
		!Global("LCA_AskedAboutDemon", "LOCALS",1)
	~ THEN REPLY @50 /* ~Tell me more about the demon trapped with us.~*/
	DO ~
		SetGlobal("LCA_AskedAboutDemon", "LOCALS",1)
		AddJournalEntry(@61, INFO)
	~
	GOTO LCA_AskedAboutDemon
	
	IF ~~ THEN REPLY @57 /* ~I need some healing.~ */
	GOTO LCA_GiveHeal
	
	IF ~~ THEN REPLY @59 /* ~Thank you.~ */
	EXIT
END

IF ~~ THEN BEGIN LCA_Intro
	SAY @0 /* Who are you! Answer me!~ */
	
	IF ~~ THEN REPLY @1 /* ~I'm <CHARNAME>. What is this place?~*/
	DO ~
		SetGlobal("LCA_Lyriel", "GLOBAL", 1)
		SetGlobal("LCA_WhatIsThisPlace", "LOCALS", 1)
	~
	GOTO LCA_WhatIsThisPlace //OK
	
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
	GOTO LCA_WhatIsThisPlace //OK
END

IF ~~ THEN BEGIN LCA_WhatIsThisPlace
	SAY @5 /* ~As I understand it, this ... reality ... was created as a prison for a powerful demon trapped within. Over the eons, he's learned to reshape it according to his needs. He can look and hear through the painting to your reality, and has even learned to send his creations through to the other side, though he himself can never escape.~ */
	
	IF ~
		!Global("LCA_Canvas", "LOCALS", 1)
	~ THEN REPLY @2 /* ~I recognize you - you're the woman from the painting... but you're a ghost?~ */
	DO ~
		SetGlobal("LCA_Canvas", "LOCALS", 1)
	~
	GOTO LCA_Canvas //OK
	
	IF ~
		!Global("LCA_Spirit", "LOCALS", 1)
	~ THEN REPLY @30 /* ~Who are you, spirit?~ */
	DO ~
		SetGlobal("LCA_Spirit", "LOCALS", 1)
	~
	GOTO LCA_Spirit //OK
	
	IF ~
		!Global("LCA_HowDidEndUpHere", "LOCALS", 1)
	~ THEN REPLY @32 /* ~How did you end up here?~ */
	DO ~
		SetGlobal("LCA_HowDidEndUpHere", "LOCALS", 1)
	~
	GOTO LCA_HowDidEndUpHere //OK
	
	IF ~
		!Global("LCA_WhyAmIHere", "LOCALS", 1)
	~ THEN REPLY @20 /* ~But, why me? Why would he bring me here?~ */
	DO ~
		SetGlobal("LCA_WhyAmIHere", "LOCALS", 1)
	~
	GOTO LCA_WhyAmIHere
END

IF ~~ THEN BEGIN LCA_WhyAmIHere
	SAY @21 /* ~You must have something that he wants.~ */
	
	IF ~~ THEN REPLY @22 /* ~It must be this amulet. It was reacting to the painting.~ */
	GOTO LCA_WhyAmIHere2
END

IF ~~ THEN BEGIN LCA_WhyAmIHere2
	SAY @35 /* ~That looks familiar...~ */
	
	= @23 /* ~My amulet! I left this with Ellesime before I left Suldanesselaar... is she well?~ */
	
	IF ~~ THEN REPLY @24 /* ~Yes. (Tell her the story of Irenicus and Ellesime.)~ */
	GOTO LCA_WhyAmIHere3A //OK
	
	IF ~~ THEN REPLY @25 /* ~She is.~ */
	GOTO LCA_WhyAmIHere3B //OK
END

IF ~~ THEN BEGIN LCA_WhyAmIHere3A
	SAY @27 /* ~How tragic... I knew Joneleth loved Ellesime, but I'd never have imagined him capable of such horrors. Thank you for saving my brothers and sisters, and for putting an end to Joneleth's suffering.~*/
	
	IF ~~ THEN REPLY @36 /*  ~So. How do we get out of here?~ */
	GOTO LCA_HowToEscape //OK
END

IF ~~ THEN BEGIN LCA_WhyAmIHere3B
	SAY @26 /* ~The master of this place must have thought that bringing my amulet to me would please me in some way...~*/
	
	IF ~~ THEN REPLY @36 /*  ~So. How do we get out of here?~ */
	GOTO LCA_HowToEscape //OK
END

IF ~~ THEN BEGIN LCA_HowDidEndUpHere
	SAY @33 /* ~The demon tricked me ... he changed the painting to show the face of my lost love, and when I reached out to touch it...~ */
	
	IF ~~ THEN REPLY @7 /* ~You ended up trapped, just as I am.~ */
	GOTO LCA_HowDidEndUpHere2
END

IF ~~ THEN BEGIN LCA_HowDidEndUpHere2
	SAY @34 /*~Yes... He told me that he heard my singing, and that he'd fallen for me.~*/
	
	= @53 /* ~When I wouldn't return his affections, he created this room and left me here to think things over.~ */
	
	= @48 /* ~His long imprisonment has clearly driven him mad.~ */
	
	IF ~~ THEN REPLY @36 /* ~So. How do we get out of here?~ */
	GOTO LCA_HowToEscape //OK
END

IF ~~ THEN BEGIN LCA_Spirit //OK
	SAY @8 /* ~I am Lyriel. Long ago, I took my own life after the man I loved perished at sea. The Elfsong, as you call it... it is where we first professed our love for eachother, and it is where I ended my life. My spirit remained there until I became trapped here, as you are.~*/
	
	IF ~
		!Global("LCA_HowDidEndUpHere", "LOCALS", 1)
	~ THEN REPLY @32 /* ~How did you end up here?~ */
	DO ~
		SetGlobal("LCA_HowDidEndUpHere", "LOCALS", 1)
	~
	GOTO LCA_HowDidEndUpHere //OK
	
	IF ~
		!Global("LCA_HowToEscape", "LOCALS", 1)
	~ THEN REPLY @9 /* ~How do I get out of here?~ */
	DO ~
		SetGlobal("LCA_HowToEscape", "LOCALS", 1)
	~
	GOTO LCA_HowToEscape //OK
	
	IF ~
		!Global("LCA_WhatIsThisPlace", "LOCALS", 1)
	~ THEN REPLY @1 /* ~I'm <CHARNAME>. What is this place?~*/
	DO ~
		SetGlobal("LCA_WhatIsThisPlace", "LOCALS", 1)
	~
	GOTO LCA_WhatIsThisPlace //OK
END

IF ~~ THEN BEGIN LCA_Canvas
	SAY @4 /* ~It was my likeness on the canvas? Then he lured you, as well...~ */
	
	IF ~~ THEN GOTO LCA_Spirit //OK
END

IF ~~ THEN BEGIN LCA_HowToEscape
	SAY @38 /* ~This place was created to imprison the demon within. If he is destroyed, then this reality will cease to exist, and you — we — will be returned to our own.~ */
	
	=@37 /* ~Or, we will be destroyed along with it. I really don't know.~ */
	
	IF ~~ THEN REPLY @41 /* ~Where is the demon?~ */
	DO ~
		AddJournalEntry(@60, QUEST)
	~
	GOTO LCA_HowToEscape2 //OK
END

IF ~~ THEN BEGIN LCA_HowToEscape2
	SAY @15 /* ~In his sanctum.~ */
	
	= @16 /* ~(She gestures to the painting on the northeast wall of the room.)~ */
	
	= @17 /* ~You won't be able to enter it without defeating his guardians.~ */
	
	= @18 /* ~(She gestures to the three paintings on the northwest wall of the room.)~ */
	
	= @19 /*  ~Be careful — his guardians are fierce opponents.~ */
	
	IF ~~ THEN REPLY @42 /* ~Is there any help you can give me?~ */
	GOTO LCA_Healing //OK
	
	IF ~~ THEN REPLY @43 /* ~Defeat the guardians, then go after the demon. Got it.~ */
	EXIT
END

IF ~~ THEN BEGIN LCA_Healing
	SAY @44 /* ~I can heal you and your companions. Do you need healing now?~ */
	
	IF ~~ THEN REPLY @45 /* ~Yes, please.~ */
	GOTO LCA_GiveHeal //OK
	
END

IF ~~ THEN BEGIN LCA_GiveHeal
	SAY @47 /* ~Gather around me, friends.~ */
	
	IF ~~ THEN
	DO ~
		ForceSpell(MostDamagedOf(Myself),CLERIC_MASS_CURE)
		Wait(1)
		ForceSpell(MostDamagedOf(Myself),CLERIC_MASS_CURE)
		Wait(1)
		ForceSpell(MostDamagedOf(Myself),CLERIC_MASS_CURE)
	~
	EXIT
END