BEGIN ~LCBENO~

IF ~~ THEN BEGIN LCA_MeetIllasera
	SAY @0 /* ~Relax Schael, she's fine. Just taking a little nap.~ */
	
	IF ~
		Gender(Player1, FEMALE)
	~ THEN REPLY @4
	EXTERN LCILLASE LCA_MeetIllasera2F
	
	IF ~
		Gender(Player1, MALE)
	~ THEN REPLY @4
	EXTERN LCILLASE LCA_MeetIllasera2M
END

IF ~~ THEN BEGIN LCA_MeetIllasera4
	SAY @1 /* ~You'll what? Kill me for a sixth time, or seventh? I've lost count.~*/
	
	= @2 /* ~I still have friends in high, ehh - I have friends in 'places' who will see to my ressurrection.~ */
	
	IF ~~ THEN EXTERN LCILLASE LCA_MeetIllasera5
END

IF ~~ THEN BEGIN LCA_MeetIllasera5
	SAY @3 /* ~What ... you mean to kill her? That wasn't part of the deal!~ */
	
	IF ~~ THEN EXTERN LCILLASE LCA_MeetIllasera6
END