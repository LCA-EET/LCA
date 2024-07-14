BEGIN ~XATOWNF~

IF ~
	Global("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_SupportHero
	SAY @11 /* ~Hello again! No one belived me when I told them I met the hero of Baldur's Gate!~ */
	
	IF ~~ THEN EXIT
END

IF ~
	Global("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_HatesHero
	SAY @12 /* ~Oh, look, the "hero" returns! Come to whisk me away on a grand adventure? Get lost, you bum!~ */
	
	IF ~~ THEN EXIT
END


IF ~
	RandomNum(8,1)
~ THEN BEGIN XA_1
	SAY @0 /* ~Leave me be!~  */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(8,2)
~ THEN BEGIN XA_2
	SAY @1 /* ~Hello there! You're adventurers, aren't you? You must be real brave to have to fight monsters and such. Um, you know if any of you are wantin' to have a good time, I know a place: It's called the Splurging Sturgeon, and it's located in the northeast of town.~   */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(8,3)
~ THEN BEGIN XA_3
	SAY @2 /* ~Adventurers! Don't you go telling any children your fanciful stories about monsters and swashbuckling. All you do is get the wrong idea in their heads.~    */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(8,4)
	!Global("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	!Global("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_4
	SAY @3 /* ~You know, you bear a striking resemblance to the so-called hero of Baldur's Gate. Could you believe they're saying that <PRO_HESHE>'s innocent? Something's amiss, I tell you.~    */
	
	IF ~~ THEN REPLY @4 /* ~I am the hero. I'm <CHARNAME>. And yes, I'm innocent.~ */
	GOTO XA_4A
END

IF ~~ THEN BEGIN XA_4A
	SAY @5 /*  ~Oh, sure. You're <CHARNAME>, and I'm a bloody Waterdhavian princess. Get lost, you slob!~*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	~
	EXIT
END

IF ~
	RandomNum(8,5)
~ THEN BEGIN XA_5
	SAY @6 /* ~That Marshal Nederlok has done a wonderful job getting rid of those refugees.~   */
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(8,6)
	!Global("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	!Global("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_6
	SAY @7 /* ~I hear that Duke Entar's daughter is fully recovered, supposedly thanks to <CHARNAME>. Maybe the things said about <PRO_HIMHER> are true, and that they're a hero after all.~  */
	
	IF ~~ THEN REPLY @8 /* ~I'm <CHARNAME>, you know. I'm the hero, and yes the things - the good ones, anyway - you've heard about me are true.~ */
	GOTO XA_6A
END

IF ~~ THEN BEGIN XA_6A
	SAY @9 /*  ~Oh, wow! What a pleasure it is to meet you!~*/
	
	IF ~~ THEN REPLY @10 /* ~Thanks for the support.~ */
	DO ~
		SetGlobal("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXIT
END

IF ~
	RandomNum(8,7)
	!Global("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	!Global("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_7
	SAY @13 /* ~I hear that <CHARNAME>, the <PRO_BROTHERSISTER> of that rotten Sarevok, is coming back to Baldur's Gate. They're saying <PRO_HESHE>'s innocent. Do you believe it?~   */
	
	IF ~~ THEN REPLY @4 /* ~I'm <CHARNAME>. And yes, I'm innocent.~ */
	GOTO XA_7A
END

IF ~~ THEN BEGIN XA_7A
	SAY @14 /* ~Have you been drinking? You're not <CHARNAME> and you're certainly no hero!~*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	~
	EXIT
END

IF ~
	RandomNum(8,8)
	!Global("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	!Global("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_8
	SAY @15 /* ~Did you hear the news? <CHARNAME>, the hero, the Sarevok slayer, is returning to Baldur's Gate! The Dukes proclaimed <PRO_HISHER> innocence!~  */
	
	IF ~~ THEN REPLY @8 /* ~I'm <CHARNAME>. And yes, I'm innocent.~ */
	GOTO XA_8A
END

IF ~~ THEN BEGIN XA_8A
	SAY @9 /* ~Oh, wow! What a pleasure it is to meet you!~*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXIT
END

IF ~
	True()
~ THEN BEGIN XA_default
	SAY @16 // ~Ah, it's so nice to be able to walk around without being accosted by those refugees.~
	
	IF ~~ THEN 
	EXIT
END