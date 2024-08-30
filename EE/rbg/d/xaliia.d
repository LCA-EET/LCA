APPEND XALIIA

	IF ~
		Global("XA_LC_RohmaKidnapped", "GLOBAL", 5)
	~ THEN BEGIN XA_RohmaKidnapped
		SAY @0 /* ~We will look after Audamar. Go, and rescue the child.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN XA_DiscussionCutscene
		SAY @1 /* ~Major, <CHARNAME> - I do not mean to intrude, but there is much to discuss. Please, join us in the next room.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN XA_SaradushDiscussion5
		SAY @9 /* ~It will take a couple of days to prepare... */
		
		IF ~
			GlobalLT("XA_LC_MembersLeftBehind", "GLOBAL", 1)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_SaradushDiscussion5A
		
		IF ~
			GlobalLT("XA_LC_MembersLeftBehind", "GLOBAL", 1)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_SaradushDiscussion5B
		
		IF ~
			GlobalGT("XA_LC_MembersLeftBehind", "GLOBAL", 0)
		~ THEN GOTO XA_SaradushPartyMembers
	END
	
	IF ~~ THEN BEGIN XA_SaradushPartyMembers
		SAY @12 /* ~Beyond that, we will need to reach out to your old adventuring companions — those who remained with the elves or returned to Athkatla. I'm sure you'll agree that their help will prove invaluable in dealing with the dangers that lie ahead.~ */
		
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_SaradushDiscussion5A
		
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN GOTO XA_SaradushDiscussion5B
	END

	IF ~~ THEN BEGIN XA_SaradushDiscussion5A
		SAY @10 /* ~While we wait, I suggest that you and Major Corwin rest and relax after this latest ordeal. It will likely be a long while before you're able to return to us.~ */
		
		IF ~~ THEN GOTO XA_SaradushDiscussion6
	END

	IF ~~ THEN BEGIN XA_SaradushDiscussion5B
		SAY @11 /* ~While we wait, I suggest that you rest and relax after this latest ordeal. It will likely be a long while before you're able to return to us.~ */
		
		IF ~~ THEN GOTO XA_SaradushDiscussion6
	END

	IF ~~ THEN BEGIN XA_SaradushDiscussion6
		SAY @2 /* ~It's very late. If there's nothing else, then let us retire for the evening. We will begin preparing the city defenses in the morning.~ */
		
		IF ~~ THEN REPLY @4 /* ~Agreed - see you in the morning. */
		EXTERN XAELTAN XA_SaradushDiscussion_Final

		
		IF ~~ THEN REPLY @3 /* ~There is one thing - Marshal Nederlok, I'll need Major Corwin's assistance on this assignment.~ */
		EXTERN XANEDERL XA_SaradushDiscussionChain7
	END 

END

CHAIN XANEDERL XA_SaradushDiscussionChain7
	@5 /* ~Understood. Major, you are to accompany <CHARNAME> to Saradush and provide whatever support is necessary to ensure the success of this mission.~*/
	== XACORWIJ
	@6 /* ~Yes, sir. I'll begin my preparations first thing in the morning.~*/
	== XANEDERL
	@7 /* ~Excellent.~ */
	=@8 /* ~And Major - don't worry about your family while you're gone. We'll make sure they are well-protected, just in case the Five try anything again. Good hunting.~*/
END XACORWIJ XA_SaradushDiscussion7