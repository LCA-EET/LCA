BEGIN ~XACORWO~

IF ~~ THEN BEGIN XA_ExitWorkout
	SAY @1909 /* */
	
	IF ~~ THEN REPLY @1911 /* ~(Go back to sleep.)~*/
	DO ~
		SetGlobal("XA_LC_Workout", "GLOBAL", 4)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_ExitWorkout2
	SAY @1909 /* */
	
	IF ~~ THEN REPLY @1916 /* ~(I'll leave you to it, then.)~*/
	DO ~
		SetGlobal("XA_LC_Workout", "GLOBAL", 4)
	~
	EXIT
END

IF ~
	Global("XA_LC_Workout", "GLOBAL", 1)
~ THEN BEGIN XA_WorkOut
	SAY @1910 /*@1910=~...twenty-seven... twenty-eight... twenty-nine...~~*/
	
	COPY_TRANS XACORWO XA_ExitWorkout
	
	IF ~~ THEN REPLY @1912 /* ~*Yawn*... what're you doing?~*/
	GOTO XA_WorkOut_2
END

IF ~~ THEN BEGIN XA_WorkOut_2
	SAY @1913 /* @1913=~...thirty... what does it *pant* look like... thirty-one... I'm doing?~*/
	
	COPY_TRANS XACORWO XA_ExitWorkout2
	
	IF ~~ THEN REPLY @1914 /* @1914=~Well, you're on your back, and lifting your knees to your opposite elbows, in sequence.~*/
	GOTO XA_WorkOut_3A
END

IF ~~ THEN BEGIN XA_WorkOut_3A
	SAY @1915 /* @1915=~Very good... thirty-six... it's a specialized  *pant* type of... thirty-eight... crunch for improving... thirty-nine... *pant* core strength.~*/
	
	COPY_TRANS XACORWO XA_ExitWorkout2
	
	IF ~~ THEN REPLY @1918 /* @1918=~How many of those are you planning to do?~*/
	GOTO XA_WorkOut_3B
END

IF ~~ THEN BEGIN XA_WorkOut_3B
	SAY @1919 /* @1919=~One-hundered... forty-seven... forty-eight...~*/
	
	COPY_TRANS XACORWO XA_ExitWorkout2
	
	IF ~~ THEN REPLY @1920 /* @1920=~Is this some sort of daily routine?~*/
	GOTO XA_WorkOut_4
END

IF ~~ THEN BEGIN XA_WorkOut_4
	SAY @1921 /* @1921=~...not daily... fifty-one... just most days... fifty-two...~*/
	
	COPY_TRANS XACORWO XA_ExitWorkout2
	
	IF ~~ THEN REPLY @1940 /* @1940=~Why this particular exercise?~*/
	GOTO XA_WorkOut_5
END

IF ~~ THEN BEGIN XA_WorkOut_5
	SAY @1941 /* @1941=~...core stability... fifty-eight... and strength... fifty-nine... are essential for... sixty... an archer's accuracy and... sixty-one... endurance...~~*/
	
	COPY_TRANS XACORWO XA_ExitWorkout2
	
	IF ~~ THEN REPLY @1922 /* @1922=~Sixty-three, seventy-five, ninety-three...~*/
	GOTO XA_WorkOut_6
END


IF ~~ THEN BEGIN XA_WorkOut_6
	SAY @1923 /* @1923=~Stop *pant* that! ... sixty-three... you're making me lose *pant* count... sixty-four...~*/
	
	COPY_TRANS XACORWO XA_ExitWorkout2
	
	IF ~~ THEN REPLY @1924 /* @1924=~Sorry. Just having a bit of fun.~*/
	GOTO XA_WorkOut_7
END

IF ~~ THEN BEGIN XA_WorkOut_7
	SAY @1925 /* @1925=~...very... sixty-seven... *pant* ...sixty-eight...~*/
	
	COPY_TRANS XACORWO XA_ExitWorkout2
	
	IF ~~ THEN REPLY @1926 /* @1926=~Wow... you're working up quite the sweat, aren't you?~*/
	GOTO XA_WorkOut_8
END

IF ~~ THEN BEGIN XA_WorkOut_8
	SAY @1927 /* @1927=~Yes, well... seventy-one... it takes *pant* a lot... seventy-two... of work to maintain... seventy-three... a physique like mine...~*/
	
	COPY_TRANS XACORWO XA_ExitWorkout2
	
	IF ~~ THEN REPLY @1928 /* @1928=~Is it worth the effort?~*/
	GOTO XA_WorkOut_9
END

IF ~~ THEN BEGIN XA_WorkOut_9
	SAY @1929 /* @1929=~...you *pant*... seventy-nine... tell me... eighty...~*/
	
	COPY_TRANS XACORWO XA_ExitWorkout2
	
	IF ~~ THEN REPLY @1930 /* @1930=~From where I'm sitting, it absolutely is.~*/
	GOTO XA_WorkOut_10
END

IF ~~ THEN BEGIN XA_WorkOut_10
	SAY @1931 /* ~...good... eighty-four... I worked very hard... eighty-five... for this kind of body...~*/
	
	COPY_TRANS XACORWO XA_ExitWorkout2
	
	IF ~~ THEN REPLY @1932 /* @1932=~Don't you worry about fatigue?~~*/
	GOTO XA_WorkOut_11
END

IF ~~ THEN BEGIN XA_WorkOut_11
	SAY @1933 /* @1933=~...this helps... ninety-one... me sleep more *pant* soundly... ninety-two... and to push through... ninety-three... when others *pant* would falter... ninety-four.~*/
	
	COPY_TRANS XACORWO XA_ExitWorkout2
	
	IF ~~ THEN REPLY @1934 /* @@1934=~You're almost there... just a couple more.~*/
	GOTO XA_WorkOut_12
END

IF ~~ THEN BEGIN XA_WorkOut_12
	SAY @1935 /* @1935=~...ninety-eight... ninety-nine... *pant*... one-hundred.~*/
	
	IF ~~ THEN DO
	~
		SetGlobal("XA_LC_Workout", "GLOBAL", 2)
	~
	EXIT	
END

IF ~
	Global("XA_LC_Workout", "GLOBAL", 3)
~ THEN BEGIN XA_WorkOut_13
	SAY @1945 /* @1945=~Whew!~ */
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1936 /* @1936=~Congratulations. Now, will you hop back into bed?~*/
	GOTO XA_WorkOut_13A
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1943 /* @1943=~Congratulations. Now, will you finally go to bed?~*/
	GOTO XA_WorkOut_13A
END
IF ~~ THEN BEGIN XA_WorkOut_13A
	SAY @1937 /* @1937=~Not yet. Push-ups and squats are next. Care to join me?~*/
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1938 /* ~I'll pass. Back to bed for me.~*/
	GOTO XA_WorkOut_End_Romance

	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1938 /* ~I'll pass. Back to bed for me.~*/
	GOTO XA_WorkOut_End_NonRomance

	IF ~~ THEN REPLY @1946 /*@1946=~Another time, perhaps. I'm not sure that I'd be able to keep up with you.~*/
	GOTO XA_WorkOut_14

END

IF ~~ THEN BEGIN XA_WorkOut_End_Romance
	SAY @1944 /*@1944=~Keep the bed warm for me, love. One... two... three...~*/

	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_Workout", "GLOBAL", 4)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_WorkOut_End_NonRomance
	SAY @1939 /*@1939=~Suit yourself... One... two... three...~*/

	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_Workout", "GLOBAL", 4)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_WorkOut_14
	SAY @1947 /*@1947=~With enough time and discipline, you could. I imagine it would be easier for you than it was for me, given your divine blood.~*/

	IF ~~ THEN REPLY @1948 /*@1948=~Maybe you're right...~*/
	GOTO XA_WorkOut_15A

	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1949 /*~Discipline, unfortunately, is something that I tend to lack.~*/
	GOTO XA_WorkOut_15B_Romance

	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1949 /*~Discipline, unfortunately, is something that I tend to lack.~*/
	GOTO XA_WorkOut_15B_NonRomance
END

IF ~~ THEN BEGIN XA_WorkOut_15A
	SAY @1950 /* =~Well, let me know when you're ready to start training. For now, get some rest, hero... One... two...~ */

	IF ~~ THEN
	DO ~
		SetGlobalTimer("XA_LC_WorkOutStrengthTimer", "GLOBAL", ONE_MONTH)
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("XA_LC_Workout", "GLOBAL", 4)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_WorkOut_15B_Romance
	SAY @1953 /*@1953=~I've noticed. Get some rest, love... One... two... three...~*/

	COPY_TRANS XACORWO XA_WorkOut_End_NonRomance
END

IF ~~ THEN BEGIN XA_WorkOut_15B_NonRomance
	SAY @1952 /*@1952=~I've noticed. Get some rest, hero... One... two... three...~*/

	COPY_TRANS XACORWO XA_WorkOut_End_NonRomance
END