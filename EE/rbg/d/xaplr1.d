APPEND ~PLAYER1~
//{ Ledger, BG0614 / XAP0614
	IF ~
		Global("XA_LC_StoleLedger", "GLOBAL", 1)
	~ THEN BEGIN XA_LC_Alcove
		SAY @212  /* ~(The painting depicts a fire-breathing dragon. Strange... it is slightly askew, and you can make out what appears to be a small alcove behind the lower left corner of the painting. Investigate?)~*/
		
		IF ~~ THEN REPLY @206  /* ~Yes.~*/
		GOTO XA_LC_TakeLedger
		
		IF ~~ THEN REPLY @207  /* ~No.~*/
		DO ~
			SetGlobal("XA_LC_StoleLedger", "GLOBAL", 0)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LC_TakeLedger
		SAY @213  /* ~(Carefully, you tilt the painting further, so that you can more easily access the alcove. Within the alcove you find a book, which you place into your pack. Before leaving, you gently slide the painting back down so that the alcove is completely concealed.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_StoleLedger", "GLOBAL", 2)
			GiveItemCreate("XALEDGER", Player1, 0,0,0)
			SetItemFlags("XALEDGER", IDENTIFIED,TRUE)
		~
		EXIT
	END
	//}
	IF ~
		Global("XA_LC_IllaseraDead", "GLOBAL", 1)
		Dead("XACORWIN")
		InPartyAllowDead("XACORWIN")
	~ THEN BEGIN XA_IllaseraDead
		SAY @66 /* ~(You were victorious - Rohma is safe, though Schael requires immediate medical attention.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_IllaseraDead", "GLOBAL", 2)
		~
		EXTERN XABENO2 XA_IllaseraCorwinDead2
	END

	IF ~
		Global("XA_LC_IllaseraDead", "GLOBAL", 1)
		Dead("XACORWIN")
		!InPartyAllowDead("XACORWIN")
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN BEGIN XA_IllaseraDead2
		SAY @87 /* ~Schael? Schael! No...~*/
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_LC_MarriageProposal", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_IllaseraDead", "GLOBAL", 2)
			TextScreen("xabad1")
			ActionOverride(Player1, Kill(Myself))
		~
		EXIT
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			!Global("XA_LC_MarriageProposal", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_IllaseraDead", "GLOBAL", 2)
			TextScreen("xabad2")
			ActionOverride(Player1, Kill(Myself))
		~
		EXIT
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_IllaseraDead", "GLOBAL", 2)
			TextScreen("xabad3")
			ActionOverride(Player1, Kill(Myself))
		~
		EXIT
		
	END

	IF ~
		Global("XA_LC_RohmaKidnapped", "GLOBAL", 3)
	~ THEN BEGIN XA_Kidnap
		SAY @9 /* ~(Quickly, you made way to the nearest temple, and brought a healer back to the home. The healer sucessfully stabilized Audamar, who was taken back to the temple for further treatment. After a short discussion, you and Schael agree that it would be best to rouse the Dukes, and to discuss the matter with them before deciding on a course of action.)~ [XA100067] */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_RohmaKidnapped", "GLOBAL", 4)
			SaveGame(0)
		~
		EXIT
	END

	IF ~
		Global("XA_LC_IllaseraDead", "GLOBAL", 1)
		Dead("XACORWIN")
		!InParty("XACORWIN")
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN BEGIN XA_IllaseraDead3
		SAY @68 /* ~(You were victorious, but at great cost. Schael sacrificed herself to save Rohma. Sadly, there is no hope of bringing her back.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_IllaseraDead", "GLOBAL", 2)
		~
		EXIT
	END

	IF ~
		Global("XA_LC_EnterIncubusSanctum", "GLOBAL", 1)
	~ THEN BEGIN XA_EnterSanctum
		SAY @130 /* ~(You approach the painting of the demon's inner sanctum.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_EnterIncubusSanctum", "GLOBAL", 0)
		~
		GOTO XA_WantToEnterSanctum
		
		IF ~
			!Global("XA_LC_WardsRemoved", "GLOBAL", 1)
		~ THEN
		DO ~
			SetGlobal("XA_LC_EnterIncubusSanctum", "GLOBAL", 0)
			SetGlobal("XA_LC_WardsRemoved", "GLOBAL", 1)
		~
		GOTO XA_RemoveWards
		
		IF ~
			GlobalLT("XA_LC_PrisonKnowledge", "GLOBAL", 2)
		~ THEN
		DO ~
			SetGlobal("XA_LC_EnterIncubusSanctum", "GLOBAL", 0)
		~
		GOTO XA_CannotEnter
	END
	
	IF ~~ THEN BEGIN XA_RemoveWards
		SAY @132 /* ~(Using the knowledge gleaned from your interactions with the demon, you remove the wards protecting the painting.)~ */
		
		IF ~~ THEN
		GOTO XA_WantToEnterSanctum
	END
	
	IF ~~ THEN BEGIN XA_WantToEnterSanctum
		SAY @133 /* ~(Enter the demon's sanctum?)~ */
		
		IF ~~ THEN REPLY @111 /* ~Yes.~ */
		DO ~
			SetGlobal("XA_LC_ConfrontNarzugon", "GLOBAL", 1)
			StartCutSceneMode()
			StartCutScene("XASENT")
		~
		EXIT
		
		IF ~~ THEN REPLY @112 /* ~No.~ */
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_CannotEnter
		SAY @131 /* ~(As you reach out to touch the painting, an invisible force pushes your hand back. You won't be able to enter.)~*/
		
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_LC_MetIncubus", "GLOBAL", 1)
		Global("XA_LC_PrisonKnowledge", "GLOBAL", 0)
	~ THEN BEGIN XA_PrisonKnowledge_1
		SAY @122 /* ~(You awaken and find yourself back in the room that the demon created for Lyriel.)~ */
		
		= @123 /* ~(While he was transporting you, your minds linked for a moment, and you gained a better understanding of this place.)~ */
		
		= @124 /* ~(You think that if you can get him to transport you one, maybe two more times, you may gain enough knowledge to transport yourself into his warded sanctum.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_PrisonKnowledge", "GLOBAL", 1)
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_MetIncubus", "GLOBAL", 2)
		Global("XA_LC_PrisonKnowledge", "GLOBAL", 1)
	~ THEN BEGIN XA_PrisonKnowledge_2
		SAY @125 /* ~(Again, you've been transported back to Lyriel's room.)~ */
		
		= @126 /* ~(Your understanding of how the demon is able to manipulate the energies of this place has increased, and your confident that you can breach and enter his sanctum, if you choose to do so.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_PrisonKnowledge", "GLOBAL", 2)
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_MetIncubus", "GLOBAL", 3)
		Global("XA_LC_PrisonKnowledge", "GLOBAL", 2)
	~ THEN BEGIN XA_PrisonKnowledge_3
		SAY @127 /* ~(The demon has again transported you to Lyriel's room.)~ */
		
		= @128 /* you with the knowledge you need to manipulate this prison to your own benefit. The knowledge will come handy when you confront the demon, you think to yourself.)~*/
		
		= @129 /* ~(Enough games — the demon awaits in his sanctum.)~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_PrisonKnowledge", "GLOBAL", 3)
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_G1_Intro", "GLOBAL", 1)
	~ THEN BEGIN XA_G1_Intro
		SAY @121 /* ~(You come to, and take stock of your surroundings. It would seem that somehow, the demon has recreated the coalition's siege of Dragonspear. The sounds of a raging battle emanate from the courtyard beyond the gate.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_G1_Intro", "GLOBAL", 2)
		~
		EXIT
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~ THEN
		DO ~
			SetGlobal("XA_LC_G1_Intro", "GLOBAL", 2)
		~
		EXTERN XACORWIJ XA_TrappedG1
	END
	IF ~
		Global("XA_LC_EnterG1", "GLOBAL", 1)
	~ THEN BEGIN XA_EnterG1
		SAY @118 /*~(As you approach the painting, you feel a force probing your thoughts and memories. The image swirls, then depicts a castle under siege. You recognize it as Dragonspear. Touch the painting?)~*/
		
		IF ~~ THEN REPLY @111 /* Yes */
		DO ~
			SetGlobal("XA_LC_EnterG1", "GLOBAL", 0)
			StartCutSceneMode()
			StartCutScene("XAG1ENT")
		~
		EXIT
		
		IF ~~ THEN REPLY @112 /* No */
		DO ~
			SetGlobal("XA_LC_EnterG1", "GLOBAL", 0)
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_G2_Intro", "GLOBAL", 2)
	~ THEN BEGIN XA_G2_Intro
		SAY @134
		= @135
		= @136
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_G2_Intro", "GLOBAL", 3)
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_EnterG2", "GLOBAL", 1)
	~ THEN BEGIN XA_EnterG2
		SAY @120 /*~(As you approach the painting, you feel a force probing your thoughts and memories. The image swirls, then depicts a magnificent library. You recognize it as Candlekeep. Touch the painting?)~*/
		
		IF ~~ THEN REPLY @111 /* Yes */
		DO ~
			SetGlobal("XA_LC_EnterG2", "GLOBAL", 0)
			StartCutSceneMode()
			StartCutScene("XAG2ENT")
		~
		EXIT
		
		IF ~~ THEN REPLY @112 /* No */
		DO ~
			SetGlobal("XA_LC_EnterG2", "GLOBAL", 0)
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_G3_Intro", "GLOBAL", 2)
	~ THEN BEGIN XA_G3_Intro
		SAY @137 /* ~(You regain consciousness and are greeted with the sight of a loving and familiar countenance...)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_G3_Intro", "GLOBAL", 3)
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_EnterG3", "GLOBAL", 1)
	~ THEN BEGIN XA_EnterG3
		SAY @119 /*~(As you approach the painting, you feel a force probing your thoughts and memories. The image swirls, then depicts a magnificent library. You recognize it as Candlekeep. Touch the painting?)~*/
		
		IF ~~ THEN REPLY @111 /* Yes */
		DO ~
			SetGlobal("XA_LC_EnterG3", "GLOBAL", 0)
			StartCutSceneMode()
			StartCutScene("XAG3ENT")
		~
		EXIT
		
		IF ~~ THEN REPLY @112 /* No */
		DO ~
			SetGlobal("XA_LC_EnterG3", "GLOBAL", 0)
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_EnterPainting", "GLOBAL", 1)
	~ THEN BEGIN XA_ApproachPainting
		SAY @109 /* ~(You approach the painting...)~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LC_EnterPainting", "GLOBAL", 0)
		~
		GOTO XA_PaintingDescription2
		
		IF ~
			!Global("XA_LC_PaintDesc", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_EnterPainting", "GLOBAL", 0)
		~
		GOTO XA_PaintingDescription
		
	END
	
	
	IF ~~ THEN BEGIN XA_PaintingDescription2
		SAY @104 /* ~(The image shifts and swirls, and once again you see the elvish woman. Though you can't hear what she is saying, you're certain that she is pleading for you to help. She gestures, and seems to want you to touch the painting.)~ */
		
		IF ~~ THEN 
		GOTO XA_WantToEnter
	END
	
	IF ~~ THEN BEGIN XA_PaintingDescription
		SAY @102 /* ~(The image has changed to depict the face of an alluring elvish woman. In spite of her beauty, there is a pained expression of distress on her face.)~ */
		
		= @103 /* ~(The image becomes alive, and she looks at you with terror in her eyes. She mouths the words "Help Me!" and beckons to you. She seems to want you to touch the painting.)~ */
		
		IF ~~ THEN 
		GOTO XA_WantToEnter
	END
	
	IF ~~ THEN BEGIN XA_WantToEnter
		SAY @110 /* ~(Touch the painting? Doing so could be extremely dangerous.)~ */
		
		IF ~
			NumInPartyGT(1)
		~ THEN REPLY @111 /* ~Yes.~ */
		GOTO XA_EnterPainting_GT1
		
		IF ~
			!NumInPartyGT(1)
		~ THEN REPLY @111 /* ~Yes.~ */
		GOTO XA_EnterPainting
		
		IF ~~ THEN REPLY @112 /* ~No.~ */
		GOTO XA_DoNotEnter
		
		IF ~
			!Global("XA_LC_TriedDestroy", "GLOBAL", 1)
		~ THEN REPLY @116 /* ~(Destroy the painting.)~ */
		DO ~
			SetGlobal("XA_LC_TriedDestroy", "GLOBAL", 1)
		~
		GOTO XA_DestroyPainting
	END
	
	IF ~~ THEN BEGIN XA_DestroyPainting
		SAY @117 /* ~(You strike the painting with your weapon to no effect. It seems to be protected by some powerful, unseen force. The woman in the painting again gestures for you to touch it.)~ */
		
		IF ~~ THEN
		GOTO XA_WantToEnter
	END
	
	IF ~~ THEN BEGIN XA_DoNotEnter
		SAY @115 /* ~(Discretion is the better part of valor, you tell yourself, as you move away from the painting.)~ */
		
		IF ~~ THEN
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_EnterPainting_GT1
		SAY @114 /* ~(With your companions gathered around you, you reach out to touch the painting. The image shifts and ripples as your fingers graze the surface. Without warning, you experience a profound sensation of vertigo, followed by a loss of consciousness.)~*/
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("XAPENT0")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_EnterPainting
		SAY @113 /* ~(You reach out to touch the painting. The image shifts and ripples as your fingers graze the surface. Without warning, you experience a profound sensation of vertigo, followed by a loss of consciousness.)~*/
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("XAPENT0")
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_AmuletPainting", "GLOBAL", 1)
	~ THEN BEGIN XA_AmuletPainting1
		SAY @97 /* ~(For a moment, you could have sworn hearing a low hum emanate from the Amulet of the Seldarine. Odd.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_AmuletPainting", "GLOBAL", 2) 
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_AmuletPainting", "GLOBAL", 3)
	~ THEN BEGIN XA_AmuletPainting2
		SAY @98 /* ~(The humming from the amulet is louder now, and you're sure that you're not imagining it. Somehow it is responding to something — or someone — in this room.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_AmuletPainting", "GLOBAL", 4)
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_AmuletPainting", "GLOBAL", 5)
	~ THEN BEGIN XA_AmuletPainting3
		SAY @99 /* ~(The humming turns into a shrill screech, and the amulet becomes hot to the touch. It seems to be responding to the painting in the southwest corner of the room.)~ */
		
		= @100 /* ~(The painting depicts three sailors sitting at a table, in what appears to be the hold of a ship. Without warning, the image depicted in the painting shifts and swirls, and you see and hear the sailors engaged in an animated conversaion over a game of cards. You can't make out what they are saying — the screeching coming from the amulet is deafening.)~ */
		
		= @101 /* ~(Suddenly, the amulet is silenced, and you hear coming from the painting the sound of a woman screaming!)~*/
		
		= @107 /* ~In unison, the sailors within the painting stand and turn to look at you, then leap out and attack! Dopplegangers!)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_AmuletPainting", "GLOBAL", 6)
			SetGlobal("XA_LC_DoppleSpawn_0706", "GLOBAL", 1)
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_AmuletPainting", "GLOBAL", 7)
	~ THEN BEGIN XA_InvestigatePainting
		SAY @108 /* ~(The dopplegangers have been dispatched. Perhaps now, you can investigate the painting unmolested.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LC_AmuletPainting", "GLOBAL", 8)
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_SoDAnxiety", "GLOBAL", 0)
		Global("XA_LC_SoDAnxietyCell", "GLOBAL", 1)
	~ THEN BEGIN XA_DarkMemories
		SAY @88 /* ~(Upon seeing the cell in which you were once imprisoned, you recall the dark circumstances that forced your departure from the city...)~ */

		IF ~
			Global("XA_LC_PlayerExiled", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_SoDAnxietyCell", "GLOBAL", 2)
		~
		GOTO XA_DarkMemories_Exile
		
		IF ~
			GlobalLT("XA_LC_PlayerExiled", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("XA_LC_SoDAnxietyCell", "GLOBAL", 2)
		~
		GOTO XA_DarkMemories_Escape
		
	END

	IF ~~ THEN BEGIN XA_DarkMemories_Exile
		SAY @91 /* ~(Skie's blood on your hands. The looks of disgust and abject horror on the faces of your coalition comrades. The trial, and the pain you felt upon hearing the citizens call for your execution. Irenicus' gloating. The powerless feeling of waiting for the Dukes to decide your fate...)~ */
		
		IF ~~ THEN
		GOTO XA_DarkMemories_End
	END
	
	IF ~~ THEN BEGIN XA_DarkMemories_Escape
		SAY @89 /* ~(Skie's blood on your hands. The looks of disgust and abject horror on the faces of your coalition comrades. The trial, and the pain you felt upon hearing the citizens call for your execution. Irenicus' gloating. Your desparate escape through the sewers...)~ */
		
		IF ~~ THEN
		GOTO XA_DarkMemories_End
	END
	
	IF ~~ THEN BEGIN XA_DarkMemories_End
		SAY @90 /* ~(Your heart is filled with dread. You want — no, you *need* to leave this place.)~ */
		
		IF ~~ THEN EXIT
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobalTimer("XA_LC_SoDAnxietyTimer", "GLOBAL", ONE_ROUND)
			SetGlobal("XA_LC_SoDAnxiety", "GLOBAL", 1)
		~
		EXIT
	END
	
	
	IF ~~ THEN BEGIN XA_EpilogueSlayer
		SAY @67 /* ~(It seems Beno Famari is still alive.)~ */
		
		= @70 /* ~(Filled with rage, you turn to him. The sight of his sniveling face is enough to send you past the point of no return. You give into your dark nature, and transform into the Slayer. His pleas for mercy fall on deaf ears, and you rip his heart from his chest. You throw his lifeless body across the room, and begin to eat his still-beating heart.)~ */
		
		= @71 /* ~(The taste and gore does little to satiate your bloodlust. You want more. You need more! This is who you are, you think to yourself. Why did you ever resist this kind of power? It's your birthright!)~ */
		
		= @72 /* ~(You make your way out of the Undercity, and into the Thieves' Maze. You break through wall after wall with ease, and make it into the Guild. Their feeble attempts to stop you prove fruitless, and you gleefully rip them limb from limb.)~ */
		
		= @73 /* ~(The screams are heard throughout the city as you decimate the Thieves' Guild. You make your way into the street, and head to the Ducal Palace. Citizens foolish enough to remain in your path are destroyed through your unholy wrath.)~ */
		
		= @74 /* ~(You make your way into the Palace. The Flaming Fist tries to stop you, but even their specially-trained Valiants and Wizards are not enough. You find the chamber where the Dukes are hiding, and you hear a scream - not from the Dukes, but someone far more important to you... Rohma.)~*/
		
		= @75 /* ~(The sight of Rohma crying in terror is enough to snap you out of your murderous reverie. The transformation is undone, and the Dukes look at you, speechless and in horror.)~ */
		
		= @76 /* ~(You tell Rohma that you are sorry. Sorry for not protecting her mother, and sorry for what you have done.)~ */
		
		= @77 /*  ~(You beg one of the surviving Valiants to end your life, and they are happy to oblige.)~ */
		
		= @78 /* ~(Your life flashes before your eyes as you feel the blade of the Valiant's mighty halberd slice through your neck. Candlekeep and Gorion. The mines of Nashkel. Meeting Schael at Wyrm's Crossing. Sarevok. The Siege of Dragonspear. Irenicus.)~*/
		
		= @79 /* ~(Your last memory is of Schael, and how happy you were when she agreed to marry you.)~ */
		
		= @80 /* ~(Your head hits the floor with a dull thud. The nightmare is over, both for you, and for the city of Baldur's Gate. So ends the story of <CHARNAME>.)~ */
		
		IF ~~ THEN
		DO ~
			StartCutsceneMode()
			StartCutScene("XAKILLP1")
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_IllaseraCorwinDead2
		SAY @67 /* ~(It seems Beno Famari is still alive.)~ */
		
		IF ~~ THEN REPLY @81 /* ~(Approach him.)~ */
		DO ~
			SetGlobal("XA_LC_ApproachBeno", "GLOBAL", 1)
		~
		EXIT
		
		IF ~~ THEN REPLY @82 /* ~(Return to the surface, and send the Flaming Fist to come down and apprehend him.)~ */
		GOTO XA_ReturnToSurface
	END

	IF ~~ THEN BEGIN XA_ReturnToSurface
		SAY @83 /* ~(You lift Schael over your shoulder and make your way back to the surface.)~ */
		
		IF ~~ THEN
		DO ~
			StartCutSceneMode()
			StartCutScene("XAUCEND1")
		~
		EXIT
	END
	
	IF ~
		Global("XA_LC_G1_Dragon", "GLOBAL", 1)
	~ THEN BEGIN XA_G1_Dragon
		SAY @215 /*~(Without warning, you hear a booming, blood-curdling roar from above. You look up and see a large dragon swoop down to the annex where the recently dispatched drakes were nesting. It would seem that you've drawn the ire of their mother.)~*/
		
		IF ~~ THEN REPLY @216 /*~Oh, dear.~ */
		DO ~
			SetGlobal("XA_LC_G1_Dragon", "GLOBAL", 2)
		~
		EXIT
	END
END


