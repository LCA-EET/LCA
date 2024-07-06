//{ Saradush
	INTERJECT_COPY_TRANS2 SARBUL05 2 XA_SARBUL05_2
		== XACOR25B
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@0 /* ~No. I won't be a party to the murder of defenseless refugees. Goodbye, <CHARNAME>.~*/
		DO ~
			LeaveParty()
			EscapeArea()
		~
	END
//}


//{ SAREV25A
	INTERJECT_COPY_TRANS2 SAREV25A 52 XA_SAREV25A_52
		== XACOR25B
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@1 /* ~You can't be serious. <CHARNAME>, he'll turn on us at the first opportunity.~ */
	END

	INTERJECT_COPY_TRANS2 SAREV25A 53 XA_SAREV25A_53
		== XACOR25B
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@1 /* ~You can't be serious. <CHARNAME>, he'll turn on us at the first opportunity.~ */
	END
//}

//{ BSAREV25
	INTERJECT_COPY_TRANS2 BSAREV25 37 XA_BSAREV25_37
		==XACOR25B
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@2 /* ~You chose poorly in your first life, then. Dopplegangers? Scum like Angelo, Zhalimar and the others? For all our sakes, let's hope that you choices were better this time around.~ */
		
		==BSAREV25
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@3 /* ~Those choices you so readily mock nearly led me to godhood.~ */
	END
//}

//{ XA_GORDOR1_19
	INTERJECT_COPY_TRANS2 GORODR1 19 XA_GORODR1_19 //OK
		== XACOR25B
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@4 /* ~I don't like the sound of this, <CHARNAME>. We're being asked to venture into an old prison to restore the seals of, what, exactly? We have no idea what we're up against.~*/
		
		== KELDO25J
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			IsValidForPartyDialogue("KELDORN")
		~
		@5 /* ~Normally, I'd agree, but these are priests of Helm. We've no reason not to trust them. If there is evil imprisoned within the tower then we should ensure that it remains so.~ */
	END
//}

//{ GORAPP1
	INTERJECT_COPY_TRANS2 GORAPP1 17 XA_GORAPP1_17
		== XACOR25B
		IF ~
			Global("XA_LC_EnteredToB", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		@6 /* ~I'm not exactly eager to go up against the prince of demons. Whatever you decide, I'll have your back.~ */
		
		== XACOR25B
		IF ~
			Global("XA_LC_EnteredToB", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		@7 /* ~I'm not exactly eager to go up against the prince of demons. Whatever you decide, love, I'll have your back.~ */
	END
//}

//{ GORDEMO
	INTERJECT_COPY_TRANS2 GORDEMO 1 XA_GORDEMO_1
		== XACOR25B
		IF ~
			Global("XA_LC_EnteredToB", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
		~
		@8 /* ~Did - did you feel that?~ */
	END
//}

//{ Minsc
	//{ BMINSC25
		INTERJECT_COPY_TRANS2 BMINSC25 37 XA_BMINSC25_37
			== XACOR25B
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@9 /* ~... More importantly, two cards short of a full deck...~ */
		END
	//}
//}

//{ Neera
	//{ BNEERA25
		INTERJECT_COPY_TRANS2 BNEERA25 14 XA_BNEERA_14
			== XACOR25B
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@10 /* ~I couldn't agree more. Let's get moving.~ */
		END
	//}
//}

//{ BJAN25
		INTERJECT_COPY_TRANS2 BJAN25 10 XA_BJAN25_10
			== XACOR25B
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@11 /* ~Grow up, Jan. This isn't the time... it's never the time for your nonsense, infact!~ */
		END
	//}