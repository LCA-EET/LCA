BEGIN ~XACORSPR~

IF ~
	Global("XA_LC_Spring", "GLOBAL", 1)
~ THEN BEGIN XA_Spring_1
	SAY @0 /*@0=~What are you waiting for? Get in.~*/
	
	IF ~
		GlobalLT("XA_LC_2A", "LOCALS", 1)
	~ THEN REPLY @1 /* @1=~You're just going to watch me?~*/
	DO ~
		SetGlobal("XA_LC_2A", "LOCALS", 1)
		IncrementGlobal("XA_LC_Questions", "LOCALS", 1)
	~
	GOTO XA_Spring_1_2A
	
	IF ~
		GlobalLT("XA_LC_2B", "LOCALS", 1)
	~ THEN REPLY @4 /* @4=~I'd appreciate some privacy. Can't you go back to camp?~*/
	DO ~
		SetGlobal("XA_LC_2B", "LOCALS", 1)
		IncrementGlobal("XA_LC_Questions", "LOCALS", 1)
	~
	GOTO XA_Spring_1_2B
	
	IF ~
		GlobalLT("XA_LC_2C", "LOCALS", 1)
	~ THEN REPLY @9 /* @9=~Care to join me?~*/
	DO ~
		SetGlobal("XA_LC_2C", "LOCALS", 1)
		IncrementGlobal("XA_LC_Questions", "LOCALS", 1)
	~
	GOTO XA_Spring_1_2C
	
	IF ~
		GlobalLT("XA_LC_2D", "LOCALS", 1)
	~ THEN REPLY @31 /* @31=~You followed us here?~*/
	DO ~
		SetGlobal("XA_LC_2D", "LOCALS", 1)
		IncrementGlobal("XA_LC_Questions", "LOCALS", 1)
	~
	GOTO XA_Spring_1_2D
	
	IF ~
		GlobalGT("XA_LC_Questions", "LOCALS", 1)
	~ THEN REPLY @11 /*~@11=~Fair enough. Please turn around.~~*/
	GOTO XA_Spring_1_END
END

IF ~~ THEN BEGIN XA_Spring_1_2A
	SAY @2 /* @2=~(She smirks.)~ */
	
	= @3 /* @3=~I'm not going to watch you, I promise. My back will be turned the entire time.~*/
	
	COPY_TRANS XACORSPR XA_Spring_1
END

IF ~~ THEN BEGIN XA_Spring_1_2B
	SAY @5 /* @5=~I can't leave you out here alone. The Coalition needs you.~ */

	=@26 /*@26=~Besides, were anything to happen to you, it'd be my head on the pike.~*/

	IF ~~ THEN REPLY @7 /* @7=~I can take care of myself.~*/
	GOTO XA_Spring_1_2B_1

	COPY_TRANS XACORSPR XA_Spring_1
END

IF ~~ THEN BEGIN XA_Spring_1_2C
	SAY @10 /* @10=~Excuse me?~ */

	=@27 /*@27=~Don't be ridiculous, <CHARNAME>.~*/

	COPY_TRANS XACORSPR XA_Spring_1
END

IF ~~ THEN BEGIN XA_Spring_1_2D
	SAY @33 /* @33=~I hope you don't mind.~ */

	=@32 /*@32=~I've heard good things about this spring. I wanted to see it with my own eyes.~*/

	COPY_TRANS XACORSPR XA_Spring_1
END

IF ~~ THEN BEGIN XA_Spring_1_2B_1
	SAY @8 /* @8=~Uh huh. And what if a bear or mountain lion come looking for lunch while you're naked as a jaybird?~ */
	
	COPY_TRANS XACORSPR XA_Spring_1
END

IF ~~ THEN BEGIN XA_Spring_1_END
	SAY @12 /* @12=~Of course.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Spring", "GLOBAL", 2)
	~
	EXIT
END

IF ~
	Global("XA_LC_Spring", "GLOBAL", 3)
~ THEN BEGIN XA_Spring_2
	SAY @13 /* @13=~All done?~ */
	
	IF ~~ THEN REPLY @14 /* @14=~Yep. That spring is amazing. I haven't felt this good in weeks.~*/
	GOTO XA_Spring_2_2
END

IF ~~ THEN BEGIN XA_Spring_2_2
	SAY @15 /*@15=~Good. Turn around.~ */
	
	IF ~~ THEN REPLY @16 /*@16=~Pardon?~ */
	GOTO XA_Spring_2_3
	
	IF ~~ THEN REPLY @17 /* @17=~What for?~*/
	GOTO XA_Spring_2_3
END 

IF ~~ THEN BEGIN XA_Spring_2_3
	SAY @18 /* @18=~I'm going for a dip in the spring. Keep an eye out for any dangers or onlookers while I'm bathing.~ */
	
	IF ~
		Global("XA_LC_2C", "LOCALS", 1)
	~ THEN REPLY @19 /*@19=~Oh, I uh, I thought you didn't want one?~*/
	GOTO XA_Spring_2_3A 
	
	IF ~~ THEN REPLY @28 /* @28=~Will do.~ */
	GOTO XA_Spring_2_4
END

IF ~~ THEN BEGIN XA_Spring_2_3A
	SAY @20 /*@20=~I do want one, just not with you. It would be wildly inappropriate. Now turn around, please.~ */
	
	IF ~~ THEN
	GOTO XA_Spring_2_4
END

IF ~~ THEN BEGIN XA_Spring_2_4
	SAY @22 /* @22=~And <CHARNAME>?~*/
	
	IF ~~ THEN REPLY @23 /* @23=~Hm?~*/
	GOTO XA_Spring_2_5
	
	IF ~~ THEN REPLY @24 /* @24=~Yes, Captain?~*/
	GOTO XA_Spring_2_5
END

IF ~~ THEN BEGIN XA_Spring_2_5
	SAY @25 /* @25=~No peeking. Understood?~*/
	
	IF ~~ THEN REPLY @29 /* @29=~Understood.~*/
	DO ~
		SetGlobal("XA_LC_Spring", "GLOBAL", 4)
	~
	EXIT
	
	IF ~~ THEN REPLY @30 /* @30=~Who, me? I'd never do such a thing.~*/
	DO ~
		SetGlobal("XA_LC_Spring", "GLOBAL", 4)
	~
	EXIT
END

IF ~
	Global("XA_LC_Spring", "GLOBAL", 4)
~ THEN BEGIN XA_Spring_3
	SAY @34 /* @34=~That was glorious. The water was just the right temperature.~*/
	
	IF ~~ THEN REPLY @37 /* @37=~A brief respite was just what the doctor ordered, it seems.~*/
	GOTO XA_Spring_3_1A
	
	IF ~~ THEN REPLY @35 /* @35=~It sounded like you really enjoyed yourself.~ */
	GOTO XA_Spring_3_1B
END

IF ~~ THEN BEGIN XA_Spring_3_1A
	SAY @38 /* @38=~Brief being the key word. Let's head back, otherwise certain rumors may start to spread.~*/
	
	IF ~~ THEN REPLY @39 /* @39=~Lead the way.~*/
	DO ~
		SetGlobal("XA_LC_Spring", "GLOBAL", 5)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Spring_3_1B
	SAY @40 /* @40=~I hope that didn't bother you.... too much, anyway. Duty calls, hero. Let's head back.~
 */
 
	IF ~~ THEN REPLY @39 /* @39=~Lead the way.~*/
	DO ~
		SetGlobal("XA_LC_Spring", "GLOBAL", 5)
	~
	EXIT
END