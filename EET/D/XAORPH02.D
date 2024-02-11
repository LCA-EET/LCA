BEGIN ~XAORPH02~

IF ~~ THEN BEGIN XA_CSHOW_TALK_CHAIN_END
	SAY @0 /*  ~You're not <CHARNAME>!~ */
	
	IF ~~ THEN REPLY @1 /* ~I assure you, I am.~ */
	EXTERN XAORPH03 XA_CSHOW_TALK_CHAIN_2
	
	IF ~~ THEN REPLY @2/* ~What do you mean, I'm not <CHARNAME>?~ */
	EXTERN XAORPH03 XA_CSHOW_TALK_CHAIN_2
END

IF ~~ THEN BEGIN XA_CSHOW_TALK_CHAIN_2_END
	SAY @3/* ~Yeah prove it, liar!~   */
	
	IF ~~ THEN REPLY @4 /* ~You're going to have to take my word for it. Curator Magda — we really must get going.~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XACSHOWX")
	~	
	EXIT
	
	IF ~~ THEN REPLY @5/* ~I could prove it.. but I don't think you'd like to see that. Captain, what do you think?~ */
	EXTERN XACORWIJ XA_WantToTransform 
END