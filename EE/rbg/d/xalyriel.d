BEGIN ~XALYRIEL~

IF ~
	Global("XA_SavedLyriel", "GLOBAL", 3)
~ THEN BEGIN XA_Escaped
	SAY @79 /* ~We've escaped! Thank you!~ */
	
	IF ~~ THEN REPLY @80 /* ~What will you do now?~ */
	GOTO XA_WhatWillDo
	
	IF ~
		PartyHasItem("AMUL27")
	~ THEN
	GOTO XA_EnchantAmulet
END

IF ~~ THEN BEGIN XA_EnchantAmulet
	SAY @81 /* Allow me this opportunity to express my gratitude.~*/
	
	= @82 /* ~(She places her spectral hand on the amulet, and closes her eyes.)~ */
	
	IF ~~ THEN
	DO ~
		ActionOverride(Player1,TransformItem("AMUL27","XALYAMUL"))
		ActionOverride(Player2,TransformItem("AMUL27","XALYAMUL"))
		ActionOverride(Player3,TransformItem("AMUL27","XALYAMUL"))
		ActionOverride(Player4,TransformItem("AMUL27","XALYAMUL"))
		ActionOverride(Player5,TransformItem("AMUL27","XALYAMUL"))
		ActionOverride(Player6,TransformItem("AMUL27","XALYAMUL"))
		SetGlobal("XA_LC_Journal_Lyriel", "GLOBAL", 1)
	~
	GOTO XA_EnchantAmulet2
END

IF ~~ THEN BEGIN XA_EnchantAmulet2
	SAY @83 /*  ~There. Go, hero, with my blessing.~ */
	
	IF ~~ THEN REPLY @80 /* ~What will you do now?~ */
	GOTO XA_WhatWillDo
END

IF ~~ THEN BEGIN XA_WhatWillDo
	SAY @85 /* ~I... I don't know if I'm ready to leave yet. Being in this place again fills me with the bittersweet memory of my lost love.~ */
	
	= @86 /* ~I think I'll remain here and return to my mourning, at least for now. Thank you for all of your help.~*/
	
	IF ~~ THEN REPLY @87 /* ~Goodbye, Lyriel.~ */
	GOTO XA_GoodBye
END

IF ~~ THEN BEGIN XA_GoodBye
	SAY @88 /* ~Goodbye, <CHARNAME>.~*/
	
	IF ~~ THEN
	DO ~
		AddExperienceParty(100000)
		SetGlobalTimer("XA_LyrielSingTimer", "GLOBAL", TEN_MINUTES)
		SetGlobal("XA_LC_Journal_Lyriel", "GLOBAL", 2)
		DestroySelf()
	~
	EXIT
END

IF ~
	Global("XA_DemonDead", "GLOBAL", 5)
~ THEN BEGIN XA_ReadyToLeave
	SAY @73 /* ~Are you ready to leave?~ */
	
	IF ~~ THEN REPLY @74 /* ~Yes. Let's go.~ */
	DO ~
		SetGlobal("XA_SavedLyriel", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XAPEXIT")
	~
	EXIT
	
	IF ~~ THEN REPLY @75 /* ~I need more time to prepare.~ */
	EXIT
	
END

IF ~
	OR(2)
		Global("XA_DemonDead", "GLOBAL", 2)
		Global("XA_DemonDead", "GLOBAL", 3)
~ THEN BEGIN XA_IncubusDead
	SAY @66 /* ~You've done it! Please hero, hold still and allow me to tend to your wounds.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_DemonDead", "GLOBAL", 3)
	~
	EXIT
END

IF ~
	Global("XA_DemonDead", "GLOBAL", 4)
~ THEN BEGIN XA_IncubusDead2
	SAY @67 /* ~You were able to break the wards and defeat the demon in his own enclave. Surely, you can lead us out of this place.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_DemonDead", "GLOBAL", 5)
	~
	GOTO XA_IncubusDead3
END

IF ~~ THEN BEGIN XA_IncubusDead3
	SAY @76 /* ~Surely, you can lead us out of this place.~ */
	
	IF ~~ THEN REPLY @69 /* ~Right. Let's go.~ */
	DO ~
		SetGlobal("XA_SavedLyriel", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XAPEXIT")
	~
	EXIT
	
	IF ~~ THEN REPLY @68 /* ~I need a moment to prepare.~ */
	EXIT
	
	IF ~~ THEN REPLY @70 /* ~Before he died... he told me that he loved you.~ */
	GOTO XA_IncubusLove
END

IF ~~ THEN BEGIN XA_IncubusLove
	SAY @71 /* ~Hm... perhaps in his own way, he did. But I could never love such a monster.~ */
	
	= @72 /*  ~As much as he wronged me, I feel... I feel pity for him. I'm glad that his long imprisonment is finally over.~ */
	
	IF ~~ THEN REPLY @77 /* ~It's time to leave.~ */
	DO ~
		SetGlobal("XA_SavedLyriel", "GLOBAL", 1)
		StartCutSceneMode()
		StartCutScene("XAPEXIT")
	~
	EXIT
	
	IF ~~ THEN REPLY @78 /* ~Listen, I need a moment to gather some things. I'll speak to you again when I'm ready to leave.~ */
	EXIT
END

IF ~
	GlobalLT("XA_Lyriel", "GLOBAL", 1)
~ THEN BEGIN XA_Startled
	SAY @31 /* ~(Startled, she turns and faces you.)~ */
	
	IF ~~ THEN 
	GOTO XA_Intro //OK
END 

IF ~
	Global("XA_Lyriel", "GLOBAL", 1)
~ THEN BEGIN XA_Intro2
	SAY @49 /* ~You've returned... Do you need anything?~ */
	
	IF ~
		!Global("XA_AskedAboutDemon", "LOCALS",1)
	~ THEN REPLY @50 /* ~Tell me more about the demon trapped with us.~*/
	DO ~
		SetGlobal("XA_AskedAboutDemon", "LOCALS",1)
		SetGlobal("XA_LC_Journal_Lyriel", "GLOBAL", 3)
	~
	GOTO XA_AskedAboutDemon
	
	IF ~
		!Global("XA_AskedAboutPatrons", "GLOBAL", 1)
		Global("XA_AlythIntro", "GLOBAL", 1)
	~ THEN REPLY @91 /* ~When I spoke with Alyth, proprietor of the Elfsong, she told me that three of her regulars had gone missing. Do you know anything about what happened to them?~*/
	DO ~
		SetGlobal("XA_AskedAboutPatrons", "GLOBAL", 1)
		SetGlobal("XA_LC_Journal_Lyriel", "GLOBAL", 4)
	~
	GOTO XA_AskedAboutPatrons
	
	IF ~
		!Global("XA_AskedAboutGuardians", "LOCALS",1)
	~ THEN REPLY @54 /* ~Tell me about the guardians.~ */
	DO ~
		SetGlobal("XA_AskedAboutGuardians", "LOCALS",1)
		SetGlobal("XA_LC_Journal_Lyriel", "GLOBAL", 5)
	~
	GOTO XA_AskedAboutGuardians
	
	IF ~~ THEN REPLY @57 /* ~I need some healing.~ */
	GOTO XA_GiveRezAndHeal //OK
	
	IF ~~ THEN REPLY @58 /*  ~Not right now.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_AskedAboutPatrons
	SAY @92 /* ~I do. They were lured here, as you and I were, and transmogrified into dopplegangers by the demon. Hideous, grotesque creatures.~ */
	
	IF ~
		!Global("XA_AskedAboutGuardians", "LOCALS",1)
	~ THEN REPLY @54 /* ~Tell me about the guardians.~ */
	DO ~
		SetGlobal("XA_AskedAboutGuardians", "LOCALS",1)
		SetGlobal("XA_LC_Journal_Lyriel", "GLOBAL", 5)
	~
	GOTO XA_AskedAboutGuardians
	
	IF ~
		!Global("XA_AskedAboutDemon", "LOCALS",1)
	~ THEN REPLY @50 /* ~Tell me more about the demon trapped with us.~*/
	DO ~
		SetGlobal("XA_AskedAboutDemon", "LOCALS",1)
		SetGlobal("XA_LC_Journal_Lyriel", "GLOBAL", 3)
	~
	GOTO XA_AskedAboutDemon
	
	IF ~~ THEN REPLY @57 /* ~I need some healing.~ */
	GOTO XA_GiveRezAndHeal //OK
	
	IF ~~ THEN REPLY @59 /* ~Thank you.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_AskedAboutDemon
	SAY @51 /* ~I only know what he told me of himself. Long ago, he invaded the dreams of someone important to an exceptionally talented wizard.~ */
	
	= @52 /*  ~The wizard created this prison, and confined the demon within it.~ */
	
	IF ~
		!Global("XA_AskedAboutGuardians", "LOCALS",1)
	~ THEN REPLY @54 /* ~Tell me about the guardians.~ */
	DO ~
		SetGlobal("XA_AskedAboutGuardians", "LOCALS",1)
		SetGlobal("XA_LC_Journal_Lyriel", "GLOBAL", 5)
	~
	GOTO XA_AskedAboutGuardians
	
	IF ~
		!Global("XA_AskedAboutPatrons", "GLOBAL", 1)
		Global("XA_AlythIntro", "GLOBAL", 1)
	~ THEN REPLY @91 /* ~When I spoke with Alyth, proprietor of the Elfsong, she told me that three of her regulars had gone missing. Do you know anything about what happened to them?~*/
	DO ~
		SetGlobal("XA_LC_Journal_Lyriel", "GLOBAL", 4)
	~
	GOTO XA_AskedAboutPatrons
	
	IF ~~ THEN REPLY @57 /* ~I need some healing.~ */
	GOTO XA_GiveRezAndHeal //OK

	
	IF ~~ THEN REPLY @59 /* ~Thank you.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_AskedAboutGuardians
	SAY @55 /* ~There's not much to say. Remember, the demon has the ability to peer into your dreams and memories.~ */
	
	= @56 /* ~The guardians could take the form of an opponent from your past, someone you loved or respected, or even an aspect of yourself.~ */
	
	IF ~
		!Global("XA_AskedAboutDemon", "LOCALS",1)
	~ THEN REPLY @50 /* ~Tell me more about the demon trapped with us.~*/
	DO ~
		SetGlobal("XA_AskedAboutDemon", "LOCALS",1)
		SetGlobal("XA_LC_Journal_Lyriel", "GLOBAL", 3)
	~
	GOTO XA_AskedAboutDemon
	
	IF ~
		!Global("XA_AskedAboutPatrons", "GLOBAL", 1)
		Global("XA_AlythIntro", "GLOBAL", 1)
	~ THEN REPLY @91 /* ~When I spoke with Alyth, proprietor of the Elfsong, she told me that three of her regulars had gone missing. Do you know anything about what happened to them?~*/
	DO ~
		SetGlobal("XA_LC_Journal_Lyriel", "GLOBAL", 4)
	~
	GOTO XA_AskedAboutPatrons
	
	IF ~~ THEN REPLY @57 /* ~I need some healing.~ */
	GOTO XA_GiveRezAndHeal //OK
	
	IF ~~ THEN REPLY @59 /* ~Thank you.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_Intro
	SAY @0 /* Who are you! Answer me!~ */
	
	IF ~~ THEN REPLY @63 /* ~Calm yourself, spirit. I am <CHARNAME>. What is this place?~*/
	DO ~
		SetGlobal("XA_Lyriel", "GLOBAL", 1)
		SetGlobal("XA_WhatIsThisPlace", "LOCALS", 1)
	~
	GOTO XA_FM_WhatIsThisPlace //OK
	
	IF ~~ THEN REPLY @2 /* ~I recognize you - you're the woman from the painting... but you're a ghost?~*/
	DO ~
		SetGlobal("XA_Lyriel", "GLOBAL", 1)
		SetGlobal("XA_Canvas", "LOCALS", 1)
		SetGlobal("XA_Spirit", "LOCALS", 1)
	~
	GOTO XA_Canvas_FM
END

IF ~~ THEN BEGIN XA_Canvas_FM
	SAY @4 /* ~It was my likeness on the canvas? Then he lured you, as well...~ */
	
	= @64 /* ~Forgive me... it's been so long since I've had any company.~  */
	
	IF ~~ THEN GOTO XA_Spirit //OK
END

IF ~~ THEN BEGIN XA_FM_WhatIsThisPlace
	SAY @64 /* ~Forgive me... it's been so long since I've had any company.~ */
	
	IF ~~ THEN 
	GOTO XA_WhatIsThisPlace
END



IF ~~ THEN BEGIN XA_WhatIsThisPlace
	SAY @5 /* ~As I understand it, this ... reality ... was created as a prison for a powerful demon trapped within. Over the eons, he's learned to reshape it according to his needs. He can look and hear through the painting to your reality, and has even learned to send his creations through to the other side, though he himself can never escape.~ */
	
	IF ~
		!Global("XA_Canvas", "LOCALS", 1)
	~ THEN REPLY @2 /* ~I recognize you - you're the woman from the painting... but you're a ghost?~ */
	DO ~
		SetGlobal("XA_Canvas", "LOCALS", 1)
	~
	GOTO XA_Canvas //OK
	
	IF ~
		!Global("XA_Spirit", "LOCALS", 1)
	~ THEN REPLY @30 /* ~Who are you, spirit?~ */
	DO ~
		SetGlobal("XA_Spirit", "LOCALS", 1)
	~
	GOTO XA_Spirit //OK
	
	IF ~
		!Global("XA_HowDidEndUpHere", "LOCALS", 1)
	~ THEN REPLY @32 /* ~How did you end up here?~ */
	DO ~
		SetGlobal("XA_HowDidEndUpHere", "LOCALS", 1)
	~
	GOTO XA_HowDidEndUpHere //OK
	
	IF ~
		!Global("XA_WhyAmIHere", "LOCALS", 1)
	~ THEN REPLY @20 /* ~But, why me? Why would he bring me here?~ */
	DO ~
		SetGlobal("XA_WhyAmIHere", "LOCALS", 1)
	~
	GOTO XA_WhyAmIHere
END

IF ~~ THEN BEGIN XA_WhyAmIHere
	SAY @21 /* ~You must have something that he wants.~ */
	
	IF ~~ THEN REPLY @22 /* ~It must be this amulet. It was reacting to the painting.~ */
	GOTO XA_WhyAmIHere2
END

IF ~~ THEN BEGIN XA_WhyAmIHere2
	SAY @35 /* ~That looks familiar...~ */
	
	= @23 /* ~My amulet! I left this with Ellesime before I left Suldanesselaar... is she well?~ */
	
	IF ~~ THEN REPLY @24 /* ~Yes. (Tell her the story of Irenicus and Ellesime.)~ */
	GOTO XA_WhyAmIHere3A //OK
END

IF ~~ THEN BEGIN XA_WhyAmIHere3A
	SAY @27 /* ~How tragic... I knew Joneleth loved Ellesime, but I'd never have imagined him capable of such horrors. Thank you for saving my brothers and sisters, and for putting an end to Joneleth's suffering.~*/
	
	IF ~~ THEN REPLY @36 /*  ~So. How do we get out of here?~ */
	GOTO XA_HowToEscape //OK
END

IF ~~ THEN BEGIN XA_WhyAmIHere3B
	SAY @26 /* ~The master of this place must have thought that bringing my amulet to me would please me in some way...~*/
	
	IF ~~ THEN REPLY @36 /*  ~So. How do we get out of here?~ */
	GOTO XA_HowToEscape //OK
END

IF ~~ THEN BEGIN XA_HowDidEndUpHere
	SAY @33 /* ~The demon tricked me ... he changed the painting to show the face of my lost love, and when I reached out to touch it...~ */
	
	IF ~~ THEN REPLY @7 /* ~You ended up trapped, just as I am.~ */
	GOTO XA_HowDidEndUpHere2
END

IF ~~ THEN BEGIN XA_HowDidEndUpHere2
	SAY @34 /*~Yes... He told me that he heard my singing, and that he'd fallen for me.~*/
	
	= @53 /* ~When I wouldn't return his affections, he created this room and left me here to think things over.~ */
	
	= @48 /* ~His long imprisonment has clearly driven him mad.~ */
	
	IF ~~ THEN REPLY @36 /* ~So. How do we get out of here?~ */
	GOTO XA_HowToEscape //OK
END

IF ~~ THEN BEGIN XA_Spirit //OK
	SAY @8 /* ~I am Lyriel. Long ago, I took my own life after the man I loved perished at sea. The Elfsong, as you call it... it is where we first professed our love for eachother, and it is where I ended my life. My spirit remained there until I became trapped here, as you are.~*/
	
	IF ~
		!Global("XA_HowDidEndUpHere", "LOCALS", 1)
	~ THEN REPLY @32 /* ~How did you end up here?~ */
	DO ~
		SetGlobal("XA_HowDidEndUpHere", "LOCALS", 1)
	~
	GOTO XA_HowDidEndUpHere //OK
	
	IF ~
		!Global("XA_HowToEscape", "LOCALS", 1)
	~ THEN REPLY @9 /* ~How do I get out of here?~ */
	DO ~
		SetGlobal("XA_HowToEscape", "LOCALS", 1)
	~
	GOTO XA_HowToEscape //OK
	
	IF ~
		!Global("XA_WhatIsThisPlace", "LOCALS", 1)
	~ THEN REPLY @1 /* ~I'm <CHARNAME>. What is this place?~*/
	DO ~
		SetGlobal("XA_WhatIsThisPlace", "LOCALS", 1)
	~
	GOTO XA_WhatIsThisPlace //OK
END

IF ~~ THEN BEGIN XA_Canvas
	SAY @4 /* ~It was my likeness on the canvas? Then he lured you, as well...~ */
	
	
	
	IF ~~ THEN GOTO XA_Spirit //OK
END

IF ~~ THEN BEGIN XA_HowToEscape
	SAY @38 /* ~This place was created to imprison the demon within. If he is destroyed, then this reality will cease to exist, and you — we — will be returned to our own.~ */
	
	=@37 /* ~Or, we will be destroyed along with it. I really don't know.~ */
	
	IF ~~ THEN REPLY @41 /* ~Where is the demon?~ */
	DO ~
		SetGlobal("XA_LC_Journal_Lyriel", "GLOBAL", 6)
	~
	GOTO XA_HowToEscape2 //OK
END

IF ~~ THEN BEGIN XA_HowToEscape2
	SAY @15 /* ~In his sanctum.~ */
	
	= @16 /* ~(She gestures to the painting on the northeast wall of the room.)~ */
	
	= @17 /* ~You won't be able to enter. It's warded. The other paintings are portals to different realities... maybe within them, you can find the knowledge you need to escape this place.~ */
	
	IF ~~ THEN REPLY @42 /* ~Is there any help you can give me?~ */
	GOTO XA_Healing //OK
	
	IF ~~ THEN REPLY @43 /* I'll see what I can do to get us out of here. */
	EXIT
END

IF ~~ THEN BEGIN XA_Healing
	SAY @44 /* ~I can heal you and your companions. Do you need healing now?~ */
	
	IF ~~ THEN REPLY @45 /* ~Yes, please.~ */
	GOTO XA_GiveRezAndHeal //OK
	
	IF ~~ THEN REPLY @65 /*~No, not right now. I'll work on getting us out of here.~*/
	EXIT
END

IF ~~ THEN BEGIN XA_GiveHeal
	SAY @47 /* ~Gather around me, friends.~ */

	IF ~~ THEN
	DO ~
		SetGlobal("XA_LyrielHeal", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_GiveRezAndHeal
	SAY @47 /* ~Gather around me, friends.~ */

	IF ~~ THEN
	DO ~
		SetGlobal("XA_LyrielRez", "GLOBAL", 1)
	~
	EXIT
END