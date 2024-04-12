BEGIN ~XAILLASE~

IF ~
	!Global("XA_LC_MeetIllasera", "GLOBAL", 1)
~ THEN BEGIN XA_MeetIllasera
	SAY @0 /* ~Finally, you've come.~ */
	
	IF ~
		Gender(Player1, MALE)
		!IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @1 /* ~You must be Illasera.~ */
	DO ~
		SetGlobal("XA_LC_MeetIllasera", "GLOBAL", 1)
		SetGlobal("XA_LC_RohmaKidnapped", "GLOBAL", 0)
	~
	GOTO XA_MeetIllasera2M
	
	IF ~
		Gender(Player1, FEMALE)
		!IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @1 /* ~You must be Illasera.~ */
	DO ~
		SetGlobal("XA_LC_MeetIllasera", "GLOBAL", 1)
		SetGlobal("XA_LC_RohmaKidnapped", "GLOBAL", 0)
	~
	GOTO XA_MeetIllasera2F
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN 
	DO ~
		SetGlobal("XA_LC_MeetIllasera", "GLOBAL", 1)
		SetGlobal("XA_LC_RohmaKidnapped", "GLOBAL", 0)
	~
	EXTERN XACORWIJ XA_MeetIllasera
	
	//IF ~~ THEN GOTO XA_MeetIllasera6 //Skip to end
END

IF ~~ THEN BEGIN XA_MeetIllasera2M
	SAY @2 /* ~It's a pleasure to meet you, brother.~ */
	
	IF ~~ THEN GOTO XA_MeetIllasera3
END

IF ~~ THEN BEGIN XA_MeetIllasera2F
	SAY @3 /* ~It's a pleasure to meet you, sister.~ */

	IF ~~ THEN GOTO XA_MeetIllasera3
END

IF ~~ THEN BEGIN XA_MeetIllasera3
	SAY @4 /* ~I must say that I expected the dreaded Sarevok slayer to be a bit more menacing.~ */
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @5 /* ~You wanted me here, and I am. Release the child to her mother, and I will consider allowing you and your lackeys to leave this place with your lives.~*/
	GOTO XA_MeetIllasera3A
	
	IF ~~ THEN REPLY @6 /* ~Why have you done this?~ */
	GOTO XA_MeetIllasera3B
	
	IF ~~ THEN REPLY @17 /* ~Before I end your existence, tell me - who are the Five, and what do they want with me?~*/
	GOTO XA_MeetIllasera3C
END

IF ~~ THEN BEGIN XA_MeetIllasera3C
	SAY @18 /*  ~Not all of us have been wandering Faerûn like witless cattle, like you and pathetic Imoen and so many others of Bhaal's blood. Some of us have far greater aspirations.~ */
	
	IF ~~ THEN GOTO XA_MeetIllasera3B
END

IF ~~ THEN BEGIN XA_MeetIllasera3A
	SAY @13 /* ~Ah, yes. The child. You know, I've been trying to get you alone for a while now, ever since you killed your brother, but between your leaving for Dragonspear, and your abduction by that fool Irenicus, the opportunity never presented itself.~  */
	
	=@10 /* ~That is, until I met this lowly thief.~ */
	
	=@11 /* ~(She gestures to Famari.)~ */
	
	=@12 /* ~He told me of your relationship with Major Corwin, and how we could use the child to bring you to us.~ */
	
	IF ~~ THEN GOTO XA_MeetIllasera5
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_MeetIllasera4
END

IF ~~ THEN BEGIN XA_MeetIllasera3B
	SAY @7 /* ~All that you need to know is that I've been given the pleasure of ending your life. I may yet mount your head on the wall with all the other Bhaalspawn I've killed... I haven't decided.~*/
	
	=@8 /* ~I've been after you for a while now, ever since you killed your brother. Between your leaving for Dragonspear, and your abduction by the wizard, the opportunity never presented itself.~*/
	
	=@10 /* ~That is, until I met this lowly thief.~ */
	
	=@11 /* ~(She gestures to Famari.)~ */
	
	=@12 /* ~He told me of your relationship with Major Corwin, and how we could use the child to bring you to us.~ */
	
	IF ~~ THEN GOTO XA_MeetIllasera5
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_MeetIllasera4
END

IF ~~ THEN BEGIN XA_MeetIllasera5
	SAY @14 /* ~Now that you're here, I'm afraid that the child has outlived her usefulness...~ */
	
	IF ~~ THEN EXTERN XABENO XA_MeetIllasera5
END

IF ~~ THEN BEGIN XA_MeetIllasera6
	SAY @15 /* ~You're an even bigger fool than I imagined. Die!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_BenoIllasera", "GLOBAL", 1)
		//ActionOverride("XAROHMA", DestroySelf())
		StartCutsceneMode()
		StartCutscene("XAILBENO")
	~
	EXIT
END