BEGIN ~LCLIIA~

IF ~
	Global("LCA_RohmaKidnapped", "GLOBAL", 5)
~ THEN BEGIN LCA_RohmaKidnapped
	SAY @0 /* ~We will look after Audamar. Go, and rescue the child.~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_DiscussionCutscene
	SAY @1 /* ~Major, <CHARNAME> - I do not mean to intrude, but there is much to discuss. Please, join us in the next room.~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_SaradushDiscussion5
	SAY @9 /* ~It will take a couple of days to prepare... */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_SaradushDiscussion5A
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_SaradushDiscussion5B
END

IF ~~ THEN BEGIN LCA_SaradushDiscussion5A
	SAY @10 /* ~I suggest that you and Major Corwin use the time to rest and relax after your latest ordeal.~ */
	
	IF ~~ THEN GOTO LCA_SaradushDiscussion6
END

IF ~~ THEN BEGIN LCA_SaradushDiscussion5B
	SAY @11 /* ~Use the time to rest and relax after your latest ordeal.~ */
	
	IF ~~ THEN GOTO LCA_SaradushDiscussion6
END

IF ~~ THEN BEGIN LCA_SaradushDiscussion6
	SAY @2 /* ~It's very late. If there's nothing else, then let us retire for the evening. We will begin preparing the city defenses in the morning.~ */
	
	IF ~~ THEN REPLY @4 /* ~Agreed - see you in the morning. */
	EXTERN LCELTAN LCA_SaradushDiscussion_Final

	
	IF ~~ THEN REPLY @3 /* ~There is one thing - Marshal Nederlok, I'll need Major Corwin's assistance on this assignment.~ */
	EXTERN LCNEDERL LCA_SaradushDiscussionChain7
END 

CHAIN LCNEDERL LCA_SaradushDiscussionChain7
	@5 /* ~Understood. Major, you are to accompany <CHARNAME> to Saradush and provide whatever support is necessary to ensure the success of this mission.~*/
	== LCCORWIJ
	@6 /* ~Yes, sir. I'll begin my preparations first thing in the morning.~*/
	== LCNEDERL
	@7 /* ~Excellent.~ */
	=@8 /* ~And Major - don't worry about your family while you're gone. We'll make sure they are well-protected, just in case the Five try anything again. Good hunting.~*/
END LCCORWIJ LCA_SaradushDiscussion7