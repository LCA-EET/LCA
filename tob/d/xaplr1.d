APPEND ~PLAYER1~
IF ~
		Global("XA_DaggerDestruction", "GLOBAL", 1)
	~ THEN BEGIN XA_DaggerDestruction
		SAY @12 /* ~(You approach the rift, holding the Soultaker Dagger in your hand. With each step, the vibration from the dagger increases, and you struggle to maintain your grip. Suddenly, the dagger becomes extremely hot, and you're forced to release your grip before your hand is burned. A blinding flash of white light envelops the area as the dagger hits the ground, and shatters...)~*/
		
		IF ~
			PartyHasItem("XASTDAG") //Lodob
		~ THEN
		DO ~
			ActionOverride(Player1, DestroyItem("XASTDAG"))
			ActionOverride(Player2, DestroyItem("XASTDAG"))
			ActionOverride(Player3, DestroyItem("XASTDAG"))
			ActionOverride(Player4, DestroyItem("XASTDAG"))
			ActionOverride(Player5, DestroyItem("XASTDAG"))
			ActionOverride(Player6, DestroyItem("XASTDAG"))
			SetGlobal("XA_DaggerDestruction", "GLOBAL", 2)
			SetGlobal("XA_Lodob", "GLOBAL", 1)
			StartCutSceneMode()
			StartCutScene("XADAG2A")
		~
		EXIT
		
		IF ~
			PartyHasItem("XASTDAGB") //Beno, Lodob
			IsValidForPartyDialog("XACORWIN")
		~ THEN
		DO ~
			ActionOverride(Player1, DestroyItem("XASTDAGB"))
			ActionOverride(Player2, DestroyItem("XASTDAGB"))
			ActionOverride(Player3, DestroyItem("XASTDAGB"))
			ActionOverride(Player4, DestroyItem("XASTDAGB"))
			ActionOverride(Player5, DestroyItem("XASTDAGB"))
			ActionOverride(Player6, DestroyItem("XASTDAGB"))
			SetGlobal("XA_DaggerDestruction", "GLOBAL", 2)
			SetGlobal("XA_BenoSpirit", "GLOBAL", 1)
			SetGlobal("XA_Lodob", "GLOBAL", 1)
			StartCutSceneMode()
			StartCutScene("XADAG2A")
		~
		EXIT
		
		IF ~
			PartyHasItem("XASTDAGD") //Beno
			IsValidForPartyDialog("XACORWIN")
		~ THEN
		DO ~
			ActionOverride(Player1, DestroyItem("XASTDAGD"))
			ActionOverride(Player2, DestroyItem("XASTDAGD"))
			ActionOverride(Player3, DestroyItem("XASTDAGD"))
			ActionOverride(Player4, DestroyItem("XASTDAGD"))
			ActionOverride(Player5, DestroyItem("XASTDAGD"))
			ActionOverride(Player6, DestroyItem("XASTDAGD"))
			SetGlobal("XA_DaggerDestruction", "GLOBAL", 2)
			SetGlobal("XA_BenoSpirit", "GLOBAL", 1)
			StartCutSceneMode()
			StartCutScene("XADAG2B")
		~
		EXIT
	END
	IF ~
		Global("XA_KanaDreamTimerSet", "GLOBAL",1)
	~ THEN BEGIN XA_KanaDream
		SAY @145 /*~(It's been a long journey... sleep will come soon to you, you think to yourself. Just before you drift away, you hear a familiar voice call your name. Though you can't quite place it, you know that it's a voice you've heard before. Thinking it may have been one of your comrades, you get up to look around and find them fast asleep. Odd. You tell yourself that it must have been your imagination, as you lay back down to rest.)~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_KanaDreamTimerSet", "GLOBAL",2)
			SetGlobalTimer("XA_KanaDreamTimer", "GLOBAL", ONE_DAY)
			RestParty()
		~
		EXIT
	END
	
	IF ~
		Global("XA_TowerUnlock", "GLOBAL", 1)
	~ THEN BEGIN XA_TowerUnlocked
		SAY @144 /* ~(An opening appears in the barrier. You'll be able to enter the tower through the iron doors. While inside, you won't be able to teleport back to your Pocket Plane. Enter?)~*/
		
		IF ~~ THEN REPLY @84 /* ~Yes.~*/
		DO ~
			SetGlobal("XA_TowerUnlock", "GLOBAL", 2)
			StartCutSceneMode()
			StartCutScene("XAGO4700")
		~
		EXIT
		
		IF ~~ THEN REPLY @85 /* ~No.~ */
		DO ~
			SetGlobal("XA_TowerUnlock", "GLOBAL", 2)
		~
		EXIT
	END

	IF ~
		Global("XA_CaelarSuicide", "GLOBAL", 1)
	~ THEN BEGIN XA_CaelarSuicided
		SAY @180  /* ~(You peek over the edge of the tower... through the smoke and haze, you see Caelar's body. Her elbow is bent backwards, and her head is split open, its contents splayed across a rocky outcropping at the base of the tower. It would seem that her life, and her suffering, has truly come to an end.)~ */
		
		= @181  /* ~(The demon will be back soon, you think to yourself. It's time to leave.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CaelarSuicide", "GLOBAL", 2)
			SetGlobal("XA_Return5300", "MYAREA", 1)
		~
		EXIT
	END
END