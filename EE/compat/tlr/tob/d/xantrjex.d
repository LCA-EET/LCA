INTERJECT_COPY_TRANS2 LRRIELEV 27 XA_LRRIELEV_27
		== XACOR25B
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@20 /*~This is madness. <CHARNAME>, tell me you're not seriously considering this.~*/
		== XACAELAB
		IF ~
			IsValidForPartyDialogue("XACAELAR")
		~
		@21 /* ~By the light, do not partake in this foolishness, <CHARNAME>. All that I've heard of this 'Irenicus' leads me to believe that he cannot be trusted under any circumstances.~*/
	END
	
