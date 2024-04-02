APPEND XAELTAN

	IF ~
		Global("XA_ByeRohma", "GLOBAL", 1)
	~ THEN BEGIN XA_Evening
		SAY @25 /* ~I'm quite busy at the moment - come and see me in the morning.~ */
		
		IF ~~ THEN EXIT
	END


	IF ~
		Global("XA_RohmaSaved", "GLOBAL", 2)
	~ THEN BEGIN XA_SaradushDiscussion
		SAY @2 /* ~Good. You're here. Forgive me, but there is no time for the usual pleasantries.~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_RohmaSaved", "GLOBAL", 3)
		~
		EXTERN XABELT XA_SaradushDiscussionChain
	END

	IF ~~ THEN BEGIN XA_SaradushDiscussion2
		SAY @6 /* ~<CHARNAME>... I'm afraid we must ask you to -~ */
		
		IF ~~ THEN REPLY @7 /* ~You don't need to ask. I intend to head to Saradush and take the fight to the Five.~ */
		GOTO XA_SaradushDiscussion3
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @15 /* ~You needn't ask. I will go and make the Five - four, now - pay for threatening the Major's family.~  */
		GOTO XA_SaradushDiscussion3
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @16 /*  ~You needn't ask. I will go and make the Five - four, now - pay for threatening my loved ones.~   */
		GOTO XA_SaradushDiscussion3
		
		IF ~~ THEN REPLY @17 /* ~This is reminiscent of Caelar's crusade... instead of an army of crusaders, now, it's an army of giants. No matter - I stand ready to do what is needed to ensure the safety of the city.~ */
		GOTO XA_SaradushDiscussion3
	END

	IF ~~ THEN BEGIN XA_SaradushDiscussion3
		SAY @10 /* ~We will prepare the city's defenses, in case you are unsuccessful.~ */
		
		IF ~~ THEN REPLY @11 /* ~A wise precaution. I'll return once the siege is broken, and the last of the Five lie dead at my feet.~*/
		EXTERN XAENTAR XA_SaradushDiscussionChain2
		
		IF ~~ THEN REPLY @18 /* ~You've little faith. I'll destroy the rest of the Five as easily as I dispatched Illasera.~  */
		EXTERN XAENTAR XA_SaradushDiscussionChain2
	END

	IF ~~ THEN BEGIN XA_SaradushDiscussion4
		SAY @21 /* ~Any closer and it may be detected by the fire giants.~ */
		
		IF ~~ THEN REPLY @22 /* ~Understood. Thank you.~ */
		EXTERN XALIIA XA_SaradushDiscussion6
		
		IF ~~ THEN REPLY @23 /* ~When will the caravan depart?~  */
		EXTERN XALIIA XA_SaradushDiscussion5
	END

	IF ~~ THEN BEGIN XA_SaradushDiscussion_Final
		SAY @24 /* ~Marshall Nederlok - could you remain for just a moment? I'd like quickly to go over the duty rosters and post orders you've proposed.~ */
		
		IF ~~ THEN EXTERN XANEDERL XA_SaradushDiscussion_Final
	END

	IF ~
		True()
	~ THEN BEGIN XAA0
		SAY @1 /* ~<CHARNAME>, Captain - be careful. They will be ready for you.~ */
		
		IF ~~ THEN EXIT
	END
	IF ~~ THEN BEGIN XA_RohmaKidnapped4
		SAY @0 /* ~Indeed. Captain, you mentioned that you know one of the captors, yes? Beno Famari, is it?~ */
		
		IF ~~ THEN EXTERN XACORWIJ XA_RohmaKidnapped5Chain
	END

END

CHAIN XABELT XA_SaradushDiscussionChain
	@3 /* ~We just learned that an army of fire giants has laid siege to Saradush.~ */
	=@4 /* ~They are being led by a Bhaalspawn... surely, one of the 'Five' mentioned in Illasera's letter.~ */
	== XALIIA
	@14 /* ~A Bhaalspawn fire giant? Is such a thing even possible?~ */
	== XAENTAR
	@5 /* ~The Five want <CHARNAME> dead. It will only be a matter of time before they march on Baldur's Gate!~*/
	== XABELT
	@12 /* ~We should send the Flaming Fist to break the siege.~ */
	== XAELTAN
	@13 /* ~No - against an army of giants, they'd be crushed - literally, and figuratively. A smaller, more discrete force would have a better chance of success.~ */
END XAELTAN XA_SaradushDiscussion2

CHAIN XAENTAR XA_SaradushDiscussionChain2
	@19 /* ~Good... thank you, <CHARNAME>.~*/
	== XABELT
	@20 /* ~We will prepare a caravan for you and your companions. It will take you to the forest bordering Saradush. Any closer and it may be detected by the fire giants.~*/
END XAELTAN XA_SaradushDiscussion4