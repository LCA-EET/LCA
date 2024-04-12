BEGIN ~XATOWNM~

IF ~
	Global("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
~ THEN BEGIN XA_SupportHero
	SAY @7 /* ~It's good to see you again, hero!~ */ //OK
	
	IF ~~ THEN EXIT
END

IF ~
	Global("XA_LC_TownspersonHatesHero", "LOCALS", 1)
~ THEN BEGIN XA_HatesHero
	SAY @6 /* ~Oh, look it's the idiot that thinks <PRO_HESHE>'s <CHARNAME>! Take a hike, I'm not in the mood for any more of your jokes!~ */ //OK
	
	IF ~~ THEN EXIT
END


IF ~
	RandomNum(9,1)
~ THEN BEGIN XA_1
	SAY @0 /* ~Mite pretty town, ain't this? A word to the wise, though: She's all surface. Scratch her a bit, and that rot shines through, I tell ya.~   */ //OK
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(9,2)
~ THEN BEGIN XA_2
	SAY @1 /* ~Damn it all! You go through a hard day's work, just so you can see some fancy pantsy adventurers strolling down the streets like they own the city. Why don't ya get a real job, ya flakes?~   *///OK
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(9,3)
~ THEN BEGIN XA_3
	SAY @8 /* ~Gods, I could use a drink.~   */ //OK
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(9,4)
	!Global("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	!Global("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_4
	SAY @3 /* ~The fools in charge of this city never learn! They're weXAoming <CHARNAME>, the Bhaalspawn, back with open arms!~   */ //OK
	
	IF ~~ THEN REPLY @4 /* ~I'm <CHARNAME>, you know. Those things they said about me, they're not true - most of them, anyway.~*/ //OK
	GOTO XA_4A
END

IF ~~ THEN BEGIN XA_4A
	SAY @5 /*  ~You, <CHARNAME>? Yer a fool to joke around like that! Many in this city want to see <PRO_HIMHER> dead, and I'm proud to count myself one of them!~*/ //OK
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	~
	EXIT
END

IF ~
	RandomNum(9,5)
~ THEN BEGIN XA_5
	SAY @9 /* ~Aye, the Flaming Fist's been doing a fine job clearing out those refugees.~  */ //OK
	
	IF ~~ THEN EXIT
END

IF ~
	RandomNum(9,6)
	!Global("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	!Global("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_6
	SAY @2 /* ~I hear that Duke Entar's daughter is fully recovered, supposedly thanks to <CHARNAME>. I'd never have thought a Bhaalspawn could be a force for good.~ */ //OK
	
	IF ~~ THEN REPLY @10 /* ~Thanks for the support.~ */ //OK
	GOTO XA_6A
END

IF ~~ THEN BEGIN XA_6A
	SAY @11 /*  ~Your wel -- wait, it's you isn't it? You're <CHARNAME>!~*/ //OK
	
	IF ~~ THEN REPLY @12 /* ~Yes, I've returned.~ */ //OK
	GOTO XA_6B
END

IF ~~ THEN BEGIN XA_6B
	SAY @13 /* ~Well that's wonderful. I'm glad you're back - the city and its citizens are safer for it.~ */ //OK
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXIT
END

IF ~
	RandomNum(9,7)
	!Global("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	!Global("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_7
	SAY @17 /* ~I hear that <CHARNAME>, the <PRO_BROTHERSISTER> of that rotten Sarevok, is coming back to Baldur's Gate. They're saying <PRO_HESHE>'s innocent. Do you believe it?~   */ //OK
	
	IF ~~ THEN REPLY @18 /* ~I'm <CHARNAME>. And yes, I'm innocent.~ */ //OK
	GOTO XA_7A
END

IF ~~ THEN BEGIN XA_7A
	SAY @14 /* ~Have you been drinking? You're not <CHARNAME> and you're certainly no hero!~*/ //OK
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	~
	EXIT
END

IF ~
	RandomNum(9,8)
	!Global("XA_LC_TownspersonHatesHero", "LOCALS", 1)
	!Global("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_8
	SAY @15 /* ~Did you hear the news? <CHARNAME>, the hero, the Sarevok slayer, is returning to Baldur's Gate! The Dukes proclaimed <PRO_HISHER> innocence!~  */ //OK
	
	IF ~~ THEN REPLY @16 /* ~I'm <CHARNAME>. And yes, I'm innocent.~*/
	GOTO XA_8A //OK
END

IF ~~ THEN BEGIN XA_8A
	SAY @13 /* ~Well that's wonderful. I'm glad you're back - the city and its citizens are safer for it.~*/ //OK
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_TownspersonSupportsHero", "LOCALS", 1)
	~
	EXIT
END

IF ~
	RandomNum(9,9)
~ THEN BEGIN XA_9
	SAY @19 /* ~Things've been quiet 'round here lately now that those stinkin' refugees 're gon.~*/
	
	IF ~~ THEN EXIT
END