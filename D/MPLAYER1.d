//Modifications to PLAYER1.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-09-26: Initial Commit

*/
APPEND ~PLAYER1~

	IF ~
		Global("LCA_EnterIncubusSanctum", "GLOBAL", 1)
	~ THEN BEGIN LCA_EnterSanctum
		SAY @130 /* ~(You approach the painting of the demon's inner sanctum.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_EnterIncubusSanctum", "GLOBAL", 0)
		~
		GOTO LCA_WantToEnterSanctum
		
		IF ~
			!Global("LCA_WardsRemoved", "GLOBAL", 1)
		~ THEN
		DO ~
			SetGlobal("LCA_EnterIncubusSanctum", "GLOBAL", 0)
			SetGlobal("LCA_WardsRemoved", "GLOBAL", 1)
		~
		GOTO LCA_RemoveWards
		
		IF ~
			GlobalLT("LCA_PrisonKnowledge", "GLOBAL", 4)
		~ THEN
		DO ~
			SetGlobal("LCA_EnterIncubusSanctum", "GLOBAL", 0)
		~
		GOTO LCA_CannotEnter
	END
	
	IF ~~ THEN BEGIN LCA_RemoveWards
		SAY @132 /* ~(Using the knowledge gleaned from your interactions with the demon, you remove the wards protecting the painting.)~ */
		
		IF ~~ THEN
		GOTO LCA_WantToEnterSanctum
	END
	
	IF ~~ THEN BEGIN LCA_WantToEnterSanctum
		SAY @133 /* ~(Enter the demon's sanctum?)~ */
		
		IF ~~ THEN REPLY @111 /* ~Yes.~ */
		DO ~
			SetGlobal("LCA_ConfrontDemon", "GLOBAL", 1)
			StartCutSceneMode()
			StartCutScene("LCSENT")
		~
		EXIT
		
		IF ~~ THEN REPLY @112 /* ~No.~ */
		EXIT
	END
	
	IF ~~ THEN BEGIN LCA_CannotEnter
		SAY @131 /* ~(As you reach out to touch the painting, an invisible force pushes your hand back. You won't be able to enter.)~*/
		
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("LCA_MetIncubus", "GLOBAL", 1)
		Global("LCA_PrisonKnowledge", "GLOBAL", 1)
	~ THEN BEGIN LCA_PrisonKnowledge_1
		SAY @122 /* ~(You awaken and find yourself back in the room that the demon created for Lyriel.)~ */
		
		= @123 /* ~(While he was transporting you, your minds linked for a moment, and you gained a better understanding of this place.)~ */
		
		= @124 /* ~(You think that if you can get him to transport you one, maybe two more times, you may gain enough knowledge to transport yourself into his warded sanctum.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_PrisonKnowledge", "GLOBAL", 2)
		~
		EXIT
	END
	
	IF ~
		Global("LCA_MetIncubus", "GLOBAL", 2)
		Global("LCA_PrisonKnowledge", "GLOBAL", 3)
	~ THEN BEGIN LCA_PrisonKnowledge_3
		SAY @125 /* ~(Again, you've been transported back to Lyriel's room.)~ */
		
		= @126 /* ~(Your understanding of how the demon is able to manipulate the energies of this place has increased, and your confident that you can breach and enter his sanctum, if you choose to do so.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_PrisonKnowledge", "GLOBAL", 4)
		~
		EXIT
	END
	
	IF ~
		Global("LCA_MetIncubus", "GLOBAL", 3)
		Global("LCA_PrisonKnowledge", "GLOBAL", 5)
	~ THEN BEGIN LCA_PrisonKnowledge_5
		SAY @127 /* ~(The demon has again transported you to Lyriel's room.)~ */
		
		= @128 /* you with the knowledge you need to manipulate this prison to your own benefit. The knowledge will come handy when you confront the demon, you think to yourself.)~*/
		
		= @129 /* ~(Enough games — the demon awaits in his sanctum.)~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_PrisonKnowledge", "GLOBAL", 6)
		~
		EXIT
	END
	
	IF ~
		Global("LCA_G1_Intro", "GLOBAL", 1)
	~ THEN BEGIN LCA_G1_Intro
		SAY @121 /* ~(You come to, and take stock of your surroundings. It would seem that somehow, the demon has recreated the coalition's siege of Dragonspear. The sounds of a raging battle emanate from the courtyard beyond the gate.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_G1_Intro", "GLOBAL", 2)
		~
		EXIT
		
		IF ~
			IsValidForPartyDialogue("LCCORWIN")
		~ THEN
		DO ~
			SetGlobal("LCA_G1_Intro", "GLOBAL", 2)
		~
		EXTERN LCCORWIJ LCA_TrappedG1
	END
	IF ~
		Global("LCA_EnterG1", "GLOBAL", 1)
	~ THEN BEGIN LCA_EnterG1
		SAY @118 /*~(As you approach the painting, you feel a force probing your thoughts and memories. The image swirls, then depicts a castle under siege. You recognize it as Dragonspear. Touch the painting?)~*/
		
		IF ~~ THEN REPLY @111 /* Yes */
		DO ~
			SetGlobal("LCA_EnterG1", "GLOBAL", 0)
			StartCutSceneMode()
			StartCutScene("LCG1ENT")
		~
		EXIT
		
		IF ~~ THEN REPLY @112 /* No */
		DO ~
			SetGlobal("LCA_EnterG1", "GLOBAL", 0)
		~
		EXIT
	END
	
	IF ~
		Global("LCA_G2_Intro", "GLOBAL", 2)
	~ THEN BEGIN LCA_G2_Intro
		SAY @134
		= @135
		= @136
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_G2_Intro", "GLOBAL", 3)
		~
		EXIT
	END
	
	IF ~
		Global("LCA_EnterG2", "GLOBAL", 1)
	~ THEN BEGIN LCA_EnterG2
		SAY @120 /*~(As you approach the painting, you feel a force probing your thoughts and memories. The image swirls, then depicts a magnificent library. You recognize it as Candlekeep. Touch the painting?)~*/
		
		IF ~~ THEN REPLY @111 /* Yes */
		DO ~
			SetGlobal("LCA_EnterG2", "GLOBAL", 0)
			StartCutSceneMode()
			StartCutScene("LCG2ENT")
		~
		EXIT
		
		IF ~~ THEN REPLY @112 /* No */
		DO ~
			SetGlobal("LCA_EnterG2", "GLOBAL", 0)
		~
		EXIT
	END
	
	IF ~
		Global("LCA_G3_Intro", "GLOBAL", 2)
	~ THEN BEGIN LCA_G3_Intro
		SAY @137 /* ~(You regain consciousness and are greeted by a loving and familiar countenance...)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_G3_Intro", "GLOBAL", 3)
		~
		EXIT
	END
	
	IF ~
		Global("LCA_EnterG3", "GLOBAL", 1)
	~ THEN BEGIN LCA_EnterG3
		SAY @119 /*~(As you approach the painting, you feel a force probing your thoughts and memories. The image swirls, then depicts a magnificent library. You recognize it as Candlekeep. Touch the painting?)~*/
		
		IF ~~ THEN REPLY @111 /* Yes */
		DO ~
			SetGlobal("LCA_EnterG3", "GLOBAL", 0)
			StartCutSceneMode()
			StartCutScene("LCG3ENT")
		~
		EXIT
		
		IF ~~ THEN REPLY @112 /* No */
		DO ~
			SetGlobal("LCA_EnterG3", "GLOBAL", 0)
		~
		EXIT
	END
	
	IF ~
		Global("LCA_EnterPainting", "GLOBAL", 1)
	~ THEN BEGIN LCA_ApproachPainting
		SAY @109 /* ~(You approach the painting...)~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("LCA_EnterPainting", "GLOBAL", 0)
		~
		GOTO LCA_PaintingDescription2
		
		IF ~
			!Global("LCA_PaintDesc", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("LCA_EnterPainting", "GLOBAL", 0)
		~
		GOTO LCA_PaintingDescription
		
	END
	
	
	IF ~~ THEN BEGIN LCA_PaintingDescription2
		SAY @104 /* ~(The image shifts and swirls, and once again you see the elvish woman. Though you can't hear what she is saying, you're certain that she is pleading for you to help. She gestures, and seems to want you to touch the painting.)~ */
		
		IF ~~ THEN 
		GOTO LCA_WantToEnter
	END
	
	IF ~~ THEN BEGIN LCA_PaintingDescription
		SAY @102 /* ~(The image has changed to depict the face of an alluring elvish woman. In spite of her beauty, there is a pained expression of distress on her face.)~ */
		
		= @103 /* ~(The image becomes alive, and she looks at you with terror in her eyes. She mouths the words "Help Me!" and beckons to you. She seems to want you to touch the painting.)~ */
		
		IF ~~ THEN 
		GOTO LCA_WantToEnter
	END
	
	IF ~~ THEN BEGIN LCA_WantToEnter
		SAY @110 /* ~(Touch the painting? Doing so could be extremely dangerous.)~ */
		
		IF ~
			NumInPartyGT(1)
		~ THEN REPLY @111 /* ~Yes.~ */
		GOTO LCA_EnterPainting_GT1
		
		IF ~
			!NumInPartyGT(1)
		~ THEN REPLY @111 /* ~Yes.~ */
		GOTO LCA_EnterPainting
		
		IF ~~ THEN REPLY @112 /* ~No.~ */
		GOTO LCA_DoNotEnter
		
		IF ~
			!Global("LCA_TriedDestroy", "GLOBAL", 1)
		~ THEN REPLY @116 /* ~(Destroy the painting.)~ */
		DO ~
			SetGlobal("LCA_TriedDestroy", "GLOBAL", 1)
		~
		GOTO LCA_DestroyPainting
	END
	
	IF ~~ THEN BEGIN LCA_DestroyPainting
		SAY @117 /* ~(You strike the painting with your weapon to no effect. It seems to be protected by some powerful, unseen force. The woman in the painting again gestures for you to touch it.)~ */
		
		IF ~~ THEN
		GOTO LCA_WantToEnter
	END
	
	IF ~~ THEN BEGIN LCA_DoNotEnter
		SAY @115 /* ~(Discretion is the better part of valor, you tell yourself, as you move away from the painting.)~ */
		
		IF ~~ THEN
		EXIT
	END
	
	IF ~~ THEN BEGIN LCA_EnterPainting_GT1
		SAY @114 /* ~(With your companions gathered around you, you reach out to touch the painting. The image shifts and ripples as your fingers graze the surface. Without warning, you experience a profound sensation of vertigo, followed by a loss of consciousness.)~*/
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("LCPENT")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN LCA_EnterPainting
		SAY @113 /* ~(You reach out to touch the painting. The image shifts and ripples as your fingers graze the surface. Without warning, you experience a profound sensation of vertigo, followed by a loss of consciousness.)~*/
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("LCPENT")
		~
		EXIT
	END
	
	IF ~
		Global("LCA_AmuletPainting", "GLOBAL", 1)
	~ THEN BEGIN LCA_AmuletPainting1
		SAY @97 /* ~(For a moment, you could have sworn hearing a low hum emanate from the Amulet of the Seldarine. Odd.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_AmuletPainting", "GLOBAL", 2) 
		~
		EXIT
	END
	
	IF ~
		Global("LCA_AmuletPainting", "GLOBAL", 3)
	~ THEN BEGIN LCA_AmuletPainting2
		SAY @98 /* ~(The humming from the amulet is louder now, and you're sure that you're not imagining it. Somehow it is responding to something — or someone — in this room.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_AmuletPainting", "GLOBAL", 4)
		~
		EXIT
	END
	
	IF ~
		Global("LCA_AmuletPainting", "GLOBAL", 5)
	~ THEN BEGIN LCA_AmuletPainting3
		SAY @99 /* ~(The humming turns into a shrill screech, and the amulet becomes hot to the touch. It seems to be responding to the painting in the southwest corner of the room.)~ */
		
		= @100 /* ~(The painting depicts three sailors sitting at a table, in what appears to be the hold of a ship. Without warning, the image depicted in the painting shifts and swirls, and you see and hear the sailors engaged in an animated conversaion over a game of cards. You can't make out what they are saying — the screeching coming from the amulet is deafening.)~ */
		
		= @101 /* ~(Suddenly, the amulet is silenced, and you hear coming from the painting the sound of a woman screaming!)~*/
		
		= @107 /* ~In unison, the sailors within the painting stand and turn to look at you, then leap out and attack! Dopplegangers!)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_AmuletPainting", "GLOBAL", 6)
			SetGlobal("LCA_DoppleSpawn_0706", "GLOBAL", 1)
		~
		EXIT
	END
	
	IF ~
		Global("LCA_AmuletPainting", "GLOBAL", 7)
	~ THEN BEGIN LCA_InvestigatePainting
		SAY @108 /* ~(The dopplegangers have been dispatched. Perhaps now, you can investigate the painting unmolested.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_AmuletPainting", "GLOBAL", 8)
		~
		EXIT
	END
	
	IF ~
		Global("LCA_SoDAnxiety", "GLOBAL", 0)
		Global("LCA_SoDAnxietyCell", "GLOBAL", 1)
	~ THEN BEGIN LCA_DarkMemories
		SAY @88 /* ~(Upon seeing the cell in which you were once imprisoned, you recall the dark circumstances that forced your departure from the city...)~ */

		IF ~
			Global("bd_player_exiled","global",1)
		~ THEN 
		GOTO LCA_DarkMemories_Exile
		
		IF ~
			Global("bd_player_exiled","global",0)
		~ THEN 
		GOTO LCA_DarkMemories_Escape
		
	END
	
	IF ~~ THEN BEGIN LCA_CORWIN_PPIRENI2_3
		SAY @96 /* ~(You begin to feel fear, not for yourself, but for the woman you love. If you had sent her away instead of accepting her aid, she wouldn't be facing this dire situation.)~ */
		
		IF ~~ THEN
		EXTERN PPIRENI2 LCA_PPIRENI2_3_CHAIN_2
		
		IF ~
			Global("LCA_ExplicitModActive", "GLOBAL", 1)
		~ THEN
		DO ~
			SetGlobal("LCA_Explicit_0002", "GLOBAL", 1)
			StartDialog("PLAYER1", Player1)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN LCA_ReadCorwinLetter
		SAY @93 /* ~(The letter reads as follows.)~ */
		
		IF ~
			Global("LCA_CorwinContinue", "GLOBAL", 2)
		~ THEN
		GOTO LCA_ReadLetter_Romantic
		
		IF ~
			Global("LCA_CorwinContinue", "GLOBAL", 1)
		~ THEN
		GOTO LCA_ReadLetter_Friend
	END
	
	IF ~~ THEN BEGIN LCA_ReadLetter_Romantic
		SAY @95 /* ~<CHARNAME>,

		By the time you read this, you'll have escaped from the city. I'm sorry that I wasn't able to see you one last time before you left. When Belt, Eltan and Jannath made the decision to exile you, the Fist was put on high alert to prevent Entar and his associates from trying to take matters into their own hands. 

		You now have the time you need to find some way to prove your innocence. If you're able to recover the Soultaker dagger, you must send it to me. The wizards believe they can restore Skie, but only if the dagger is in their possession. Once restored, she can corroborate your account of what happened on that night in Dragonspear. With your innocence established, love, we'll be together once again.    

		've enclosed my amulet with this letter. Wear it and know that I love you, always. 

		Yours, 

		Schael~*/
		
		IF ~~ THEN
		EXTERN BDIMOEN 92
	END
	
	IF ~~ THEN BEGIN LCA_ReadLetter_Friend
		SAY @94 /* ~<CHARNAME>,

		By the time you read this, you'll have escaped from the city. I'm sorry that I wasn't able to see you one last time before you left. When Belt, Eltan and Jannath made the decision to exile you, the Fist was put on high alert to prevent Entar and his associates from trying to take matters into their own hands. 

		You now have the time you need to find some way to prove your innocence. If you're able to recover the Soultaker dagger, you must send it to me. The wizards believe they can restore Skie, but only if the dagger is in their possession. Once restored, she can corroborate your account of what happened on that night in Dragonspear. You'll be able to return to the city once your innocence is established.   

		Good luck to you, my friend. 

		Regards, 

		Captain Corwin~*/
		
		IF ~~ THEN
		EXTERN BDIMOEN 92
	END
	
	IF ~~ THEN BEGIN LCA_DarkMemories_Exile
		SAY @91 /* ~(Skie's blood on your hands. The looks of disgust and abject horror on the faces of your coalition comrades. The trial, and the pain you felt upon hearing the citizens call for your execution. Irenicus' gloating. The powerless feeling of waiting for the Dukes to decide your fate...)~ */
		
		IF ~~ THEN
		GOTO LCA_DarkMemories_End
	END
	
	IF ~~ THEN BEGIN LCA_DarkMemories_Escape
		SAY @89 /* ~(Skie's blood on your hands. The looks of disgust and abject horror on the faces of your coalition comrades. The trial, and the pain you felt upon hearing the citizens call for your execution. Irenicus' gloating. Your desparate escape through the sewers...)~ */
		
		IF ~~ THEN
		GOTO LCA_DarkMemories_End
	END
	
	IF ~~ THEN BEGIN LCA_DarkMemories_End
		SAY @90 /* ~(Your heart is filled with dread. You want — no, you *need* to leave this place.)~ */
		
		IF ~~ THEN EXIT
		
		IF ~
			IsValidForPartyDialogue("LCCORWIN")
			Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobalTimer("LCA_SoDAnxietyTimer", "GLOBAL", ONE_ROUND)
			SetGlobal("LCA_SoDAnxiety", "GLOBAL", 1)
		~
		EXIT
	END
	
	IF ~
		Global("LCA_IllaseraDead", "GLOBAL", 1)
		Dead("LCCORWIN")
		InPartyAllowDead("LCCORWIN")
	~ THEN BEGIN LCA_IllaseraDead
		SAY @66 /* ~(You were victorious - Rohma is safe, though Schael requires immediate medical attention.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_IllaseraDead", "GLOBAL", 2)
		~
		EXTERN LCBENO2 LCA_IllaseraCorwinDead2
	END
	
	IF ~
		Global("LCA_IllaseraDead", "GLOBAL", 1)
		Dead("LCCORWIN")
		!InPartyAllowDead("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN BEGIN LCA_IllaseraDead2
		SAY @87 /* ~Schael? Schael! No...~*/
		
		IF ~
			Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
			Global("LCA_MarriageProposal", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("LCA_IllaseraDead", "GLOBAL", 2)
			TextScreen("BADEND1")
			ActionOverride(Player1, Kill(Myself))
		~
		EXIT
		
		IF ~
			Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
			!Global("LCA_MarriageProposal", "GLOBAL", 1)
		~ THEN 
		DO ~
			SetGlobal("LCA_IllaseraDead", "GLOBAL", 2)
			TextScreen("BADEND2")
			ActionOverride(Player1, Kill(Myself))
		~
		EXIT
		
		IF ~
			!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobal("LCA_IllaseraDead", "GLOBAL", 2)
			TextScreen("BADEND3")
			ActionOverride(Player1, Kill(Myself))
		~
		EXIT
		
	END
	
	IF ~~ THEN BEGIN LCA_IllaseraCorwinDead2
		SAY @67 /* ~(It seems Beno Famari is still alive.)~ */
		
		IF ~~ THEN REPLY @81 /* ~(Approach him.)~ */
		DO ~
			SetGlobal("LCA_ApproachBeno", "GLOBAL", 1)
		~
		EXIT
		
		IF ~~ THEN REPLY @82 /* ~(Return to the surface, and send the Flaming Fist to come down and apprehend him.)~ */
		GOTO LCA_ReturnToSurface
	END
	
	IF ~~ THEN BEGIN LCA_ReturnToSurface
		SAY @83 /* ~(You lift Schael over your shoulder and make your way back to the surface.)~ */
		
		IF ~~ THEN
		DO ~
			StartCutSceneMode()
			StartCutScene("LCUCEND1")
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN LCA_EpilogueSlayer
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
			StartCutScene("LCKILLP1")
		~
		EXIT
	END
	
	IF ~
		Global("LCA_IllaseraDead", "GLOBAL", 1)
		Dead("LCCORWIN")
		!InParty("LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN BEGIN LCA_IllaseraDead3
		SAY @68 /* ~(You were victorious, but at great cost. Schael sacrificed herself to save Rohma. Sadly, there is no hope of bringing her back.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_IllaseraDead", "GLOBAL", 2)
		~
		EXIT
	END

	IF ~
		Global("LCA_RohmaKidnapped", "GLOBAL", 3)
	~ THEN BEGIN LCA_Kidnap
		SAY @9 /* ~(Quickly, you head to the nearest temple, and bring a healer back to the house. The healer sucessfully stabilizes Audamar, who is taken back to the temple for further treatment.)~ */
		
		
		//= @13 /* ~(With Audamar now under the care of the city's healers, you and Schael take a look at the letter that was nailed to his back. It reads as follows.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("LCA_RohmaKidnapped", "GLOBAL", 4)
			StartCutsceneMode()
			StartCutscene("LCDUCAL")
		~
		EXIT
		/*
		IF ~
			Gender(Player1, MALE)
		~ THEN GOTO LCA_LetterSwitch_M
		
		IF ~
			!Gender(Player1, MALE)
		~ THEN GOTO LCA_LetterSwitch_F
		*/
	END
	
	IF ~~ THEN BEGIN LCA_LetterSwitch_M
		SAY @10 /* ~"<CHARNAME>, son of Bhaal. Illasera of the Five requests your presence in the Undercity, in the temple of the father. You and Captain Corwin are to come, alone. If anyone else follows you, the child will die. 

		Do not keep us waiting for long."~  */
		
		IF ~~ THEN GOTO LCA_LetterSwitchEnd
	END
	
	IF ~~ THEN BEGIN LCA_LetterSwitch_F
		SAY @14 /* ~"<CHARNAME>, daughter of Bhaal. Illasera of the Five requests your presence in the Undercity, in the temple of the father. You and Captain Corwin are to come, alone. If anyone else follows you, the child will die. 

		Do not keep us waiting for long."~  */
		
		IF ~~ THEN GOTO LCA_LetterSwitchEnd
	END
	
	IF ~~ THEN BEGIN LCA_LetterSwitchEnd
		SAY @11 /* ~(The temple in the Undercity... it's where you fought and defeated your brother, Sarevok. Why would this Illasera want to meet you there, of all places? You ask Schael what she makes of the letter.)~  */
		
		IF ~~ THEN
		EXTERN LCCORWIJ LCA_ReadLetter
	END
	IF ~~ THEN BEGIN LCA0
		SAY @1 /* ~Schael Corwin, the assertive and deadly Captain of the Flaming Fist. Her strength and determination has helped you to overcome many ordeals. */
		= @6 /* ~Your love for one another has endured against all odds; as you gaze into each other's eyes, you suddenly remember your first meeting at Wyrm's Crossing, and how you were taken by her beauty. You recall how you professed your love for her during the Dragonspear campaign, your kiss after escaping Avernus, and the pain and anguish that you felt after being forced to leave her, after you were framed for the murder of Skie Silvershield. You then remember the inexpressible joy that filled your heart after re-uniting with her in Athkatla. Before you can ask, she stops you.~ */
		IF ~~ THEN
		EXTERN ~LCCORWIJ~ LCA20 //OK
	END
	
	IF ~~ THEN BEGIN LCA0A
		SAY @1 /* ~Schael Corwin, the assertive and deadly Captain of the Flaming Fist. Her strength and determination has helped you to overcome many ordeals. */
		= @8 /* ~Your love for one another has endured against all odds; as you gaze into each other's eyes, you suddenly remember your first meeting at Wyrm's Crossing, and how you were taken by her beauty. You recall the amazing success that you achieved together during the Dragonspear campaign, and the pain that you felt after being forced to leave her and Baldur's Gate, after you were framed for the murder of Skie Silvershield. It was while you were exiled that your feelings for her had changed, from friendship into something far more profound - love. You then remember the inexpressible joy that filled your heart after you proclaimed your love for one another after re-uniting in Athkatla. Before you can ask, she stops you.~ */
		IF ~~ THEN
		EXTERN ~LCCORWIJ~ LCA20 //OK
	END

	IF ~~ THEN BEGIN LCA1
		SAY @0 /* ~Schael Corwin, the assertive and deadly Captain of the Flaming Fist. Her strength and determination has helped you to overcome many ordeals. */
		= @5 /* ~You realize how much you rely on her, not just for what she does on the battlefield, but also for her counsel and friendship.~   */
		
		IF ~~ THEN REPLY @2 /* ~Schael, I cannot ask you to risk yourself any further. Think of your father. Think of Rohma.~ */
		EXTERN ~LCCORWIJ~ LCA22 //OK
		
		IF ~~ THEN REPLY @3 /* ~Schael my friend. We have accomplished much together - I need your aid once again.~ */
		EXTERN ~LCCORWIJ~ LCA23 //OK
		
		IF ~~ THEN REPLY @4 /* ~Captain - your assistance has proven invaluable. I would not be here were it not for your strength and fortitude. Let us put an end to this monster once and for all.~ */
		EXTERN ~LCCORWIJ~ LCA24 //OK
	END
	
	IF ~~ THEN BEGIN LCAKiss
		SAY @7 /*   ~Let's go, love. ~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("LCA_CorwinRomanceActive", "GLOBAL", 2)
			SetGlobal("ViconiaRomanceActive", "GLOBAL", 3)
			SetGlobal("AerieRomanceActive", "GLOBAL", 3)
			SetGlobal("JaheiraRomanceActive", "GLOBAL", 3)
			SetGlobal("AnomenRomanceActive", "GLOBAL", 3)
			SetGlobal("DornRomanceActive", "GLOBAL", 3)
			SetGlobal("NeeraRomanceActive", "GLOBAL", 3)
		~
		EXTERN ~LCCORWIJ~ LCA37
	END
END

ADD_TRANS_TRIGGER ~PLAYER1~ 3
~
	!IsValidForPartyDialogue("LCCORWIN")
~

//EXTEND_TOP ~PLAYER1~ 3 #1
EXTEND_BOTTOM PLAYER1 3 //OK
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN 
	DO 
	~
		SetGlobal("SelfTalk", "GLOBAL", 2)
	~
	EXTERN ~LCCORWIJ~ LCA4
END

ADD_TRANS_TRIGGER ~PLAYER1~ 5
~
	!IsValidForPartyDialogue("LCCORWIN")
~

//EXTEND_TOP ~PLAYER1~ 5 #1
EXTEND_BOTTOM PLAYER1 5 //OK
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN 
	EXTERN ~LCCORWIJ~ LCA8
END

EXTEND_BOTTOM ~PLAYER1~ 7 //OK
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN GOTO 54
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN 
	EXTERN ~LCCORWIJ~ LCA12
END

ADD_TRANS_TRIGGER ~PLAYER1~ 15
~
	!IsValidForPartyDialogue("LCCORWIN")
~

//EXTEND_TOP ~PLAYER1~ 15 #1
EXTEND_BOTTOM ~PLAYER1~ 15 
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN EXTERN ~LCCORWIJ~ LCA18 //OK
END

ADD_TRANS_TRIGGER ~PLAYER1~ 16
~
	!IsValidForPartyDialogue("LCCORWIN")
~

EXTEND_BOTTOM ~PLAYER1~ 16 
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN DO ~
		SetGlobal("IrenicusBeat","AR2806",2)
		SetGlobal("HadPeopleBeforeHell","LOCALS",1)
	~
	EXTERN ~LCCORWIJ~ LCA19 //OK
END


EXTEND_BOTTOM ~PLAYER1~ 10
	IF ~
		Global("EndangerLovedOne","GLOBAL",80)
		!IsValidForPartyDialogue("LCCORWIN")
	~
	THEN GOTO 12 //OK
	
	IF ~
		Global("EndangerLovedOne","GLOBAL",80)
		IsValidForPartyDialogue("LCCORWIN")
	~
	THEN EXTERN ~LCCORWIJ~ LCA14 //OK
END

EXTEND_BOTTOM ~PLAYER1~ 25
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinHell", "GLOBAL", 1)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN
	DO ~
		SetGlobal("LCA_CorwinHell", "GLOBAL", 1)
	~	
	EXTERN ~LCCORWIJ~ LCA_P1_25A
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinHell", "GLOBAL", 1) 
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN
	DO ~
		SetGlobal("LCA_CorwinHell", "GLOBAL", 1)
	~	
	EXTERN ~LCCORWIJ~ LCA_P1_25B
END

EXTEND_BOTTOM PLAYER1 33
	IF ~  
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive","GLOBAL",2)
		!Global("LCA_CorwinLoveBG2", "GLOBAL", 1)
	~ THEN GOTO LCA0 //OK
	
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive","GLOBAL",2)
		Global("LCA_CorwinLoveBG2", "GLOBAL", 1)
	~ THEN GOTO LCA0A //OK 
	
	IF ~  
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinRomanceActive","GLOBAL",2)
	~ THEN GOTO LCA1 //OK
END

CHAIN IF ~
	Global("LCA_DukesDebriefed", "GLOBAL", 3)
~ THEN PLAYER1 LCA_DebriefChain3
	@44 /* ~(Again, you and Captain Corwin step into the meeting chamber. While you are inwardly annoyed at having been kept waiting for so long, you do a good job of concealing this from the Council. You briefly glance at the faces of the Dukes. They are expressionless, and yield no indication of what they discussed, or what is about to take place.)~ */
	== LCELTAN
	@45 /* ~Ah, Captain, <CHARNAME> - please forgive us for the delay. We needed time to make the appropriate arrangements.~ */
	== PLAYER1
	@46 /* ~Arrangements?~ */
	== LCLIIA
	@64 /* ~Yes - you see, we've decided that you were never properly rewarded for your deeds in defeating Caelar and her crusade. What should have been a hero's welcome turned into a nightmare, when you were falsely accused of Skie's murder.~ */
	== LCENTAR
	@47 /* ~You also deserve a great deal of praise for your actions in restoring my daughter... which you did, in spite of the hostility that I showed you.~ */
	== LCELTAN
	@48 /* ~Not only that, but you - and Captain Corwin - delivered swift justice to the perpetrator of that crime, the wizard known as Irenicus.~ */
	== LCBELT
	@49 /* ~The fact that an officer of the Flaming Fist assisted in this effort is bound to improve not only our relations with Amn, but also, the elves of Suldanesselaar.~ */
	== LCELTAN
	@50 /* ~Any one of these feats is worthy of the highest honor that we can confer... but for one person to have accomplished so much...~*/
	== LCLIIA
	@51 /* ~It's unprecedented.~ */
	= @52 /* ~(The other Dukes nod in agreement.)~ */
	== LCENTAR
	@53 /* ~We have decided, <CHARNAME>, to bestow upon you the title of 'Defender of Baldur's Gate'. The title comes with a generous stipend.~ */
	== LCBELT
	@54 /* ~You will need to take part in some civil activities, speeches, community events, and so forth. You will also need to work with Duke Eltan, Marshal Nederlok, and the Flaming Fist to protect the city from those who threaten it.~ */
	== LCELTAN
	@55 /* ~Furthermore, we are awarding you the Ducal Palace as your personal residence, on a permanent basis.~ */
	== LCLIIA
	@56 /* ~Lastly - we understand that a small number of citizens are still wary of you, and your ... nature. To that end, we will organize a week long, city-wide festival in honor of your many achievements. It is our hope that this will convince any hold-outs that you are indeed a powerful force for good, in spite of your father.~ */
	== LCBELT
	@57 /* ~What say you? Do you accept our offer?~ */
	== PLAYER1
	@58 /* ~Yes, of course! I - I don't know what to say... thank you!~ */
	== LCENTAR
	@65 /* ~Excellent. Our adjutants will contact you in the coming days to finalize the arrangements. For now, you are welcome to use the palace as you see fit.~ */
	== LCNEDERL
	@59 /* ~And Captain.~ */
	== LCCORWIJ
	@60 /* ~Sir?~*/
	== LCNEDERL
	@61 /* ~For your role in bringing Irenicus to justice, and for your fine work in supporting <CHARNAME>'s defeat of the Iron Throne, Sarevok, and Caelar, you are hereby promoted to the rank of Major. Congratulations, and keep up the good work!~ */
	DO ~
		SetGlobal("LCA_CorwinPromoted", "GLOBAL", 1)
	~
	== LCCORWIJ
	@62 /* ~Thank you, sir!~ */
	== LCBELT
	@63 /* ~Being that there is no other business to discuss, this meeting is adjourned.~ */
	DO ~
		SetGlobal("LCA_DukesDebriefed", "GLOBAL", 4)
		StartCutSceneMode()
		StartCutScene("LCDEBR03")
	~
EXIT

CHAIN IF ~
	Global("LCA_DukesDebriefed", "GLOBAL", 1)
~ THEN PLAYER1 LCA_DebriefChain
	 /* */
	@15 /* ~(Unsure of what to expect, you enter the Ducal Palace for the debriefing. Captain Corwin is already there, and you can tell that she's eager to begin. Several minutes pass before you and the Captain are escorted into the meeting chamber on the second floor. The Council is seated behind a long, mahogany table, as are their adjutants.)~*/
	
	=@16 /* ~(Skie Silvershield is also present, and greets you and the Captain with a warm embrace. After exchanging some pleasantries with the Council, you and the Captain take a seat at the table. Duke Eltan begins the debriefing by asking you to explain the series of events that followed your exile from the city.)~*/
	
	=@17 /* ~(You tell how you and your companions were captured by the mad wizard Irenicus, and how you ended up in Athkatla. Their faces remain stoic as you recall finding the bodies of Khalid and Dynaheir. What piques their interest is your explanation of how you came to be in the possession of the Soultaker dagger.)~	*/
	
	== LCENTAR
	@18 /* ~I see - so you encountered a djinn that was guarding the dagger on behalf of its master, this Irenicus, yes?~*/
	== PLAYER1
	@19 /* ~That is correct.~*/
	== LCENTAR
	@20 /* ~How did you know that it was the dagger used to imprison my daughter?~*/
	== PLAYER1
	@21 /* ~When I held the dagger in my hand, I could feel its dark power and...~*/
	== LCENTAR
	@22 /* ~Yes?~*/
	== LCSKIE
	@23 /* ~It was as though you could hear them, in your mind... right? I feel the same when I hold it...~*/
	== LCENTAR
	@24 /* ~Skie, my dear - that's enough.~*/
	== PLAYER1
	@25 /* ~Your daughter is right. That's exactly how it felt.~*/
	== LCBELT
	@26 /* ~You were wise to act on your suspicion and have the dagger delivered to us.~*/
	== LCENTAR
	@27 /* ~Indeed - Skie, once resurrected was able to corroborate your story... I feel I must apologize once again to you, <CHARNAME>. You were very nearly executed at my behest. If it weren't for the Captain convincing the others on the Council to spare you -~*/
	== LCLIIA
	@28 /* ~Sufficeth to say, we are all glad that she was successful.~ */
	= @29 /* ~Captain, it was at this time that you joined <CHARNAME> in <PRO_HISHER> hunt for the wizard, yes?~*/
	== LCCORWIJ
	@30 /* Yes ma'am, that is correct.*/
	= @31 /* ~(Captain Corwin goes on to explain in painstaking detail the events that transpired after she arrived in Athkatla. The Council was equal parts stunned and amazed to hear of the rescue of Imoen from Spellhold, your transformation after your soul was stolen from you, and your epic battles with the drow on your way back to the surface.)~*/
	= @32 /* ~(Throughout her telling of what transpired, she spoke highly of you, and your companions. She concludes by telling the Council of how Irenicus was made to pay for his crimes with his life, and how your soul was restored.)~*/
	== LCELTAN
	@33 /* ~Remarkable. Simply, remarkable.~ */
	=@34  /* ~(The other Council members nod in agreement.)~ */
	== LCBELT
	@35 /* ~Forgive me, but I must ask. You, <CHARNAME>... you are in control of this transformative power you possess? This 'Slayer' that the Captain had referred to?~ */
	=@36 /* ~(You notice how the expression on the faces of the Dukes has changed from one of admiration, to one of concern - and fear.)~ */
	== PLAYER1
	@37 /* ~I assure you that I'm in complete control, Duke Belt.~*/
	=@38 /* ~(An awkward silence ensues.)~ */
	== LCLIIA
	@40 /* ~Captain, do you agree? Has <CHARNAME> been able to maintain <PRO_HISHER> control over this new power?~*/
	== LCCORWIJ
	@41 /* ~Yes, ma'am. I'd trust <PRO_HIMHER> with my life, any day.~*/
	== LCELTAN
	@39 /* ~Good. We need a few moments to discuss in private the information that you and <CHARNAME> have provided us. We won't take long.~*/
	=@42 /* ~Corporal Duncan, please escort <CHARNAME> and Captain Corwin to the study.~*/
END LCBENCE LCA_StartDebrief01
