BEGIN ~XAJHASSO~


IF ~
	IsGabber("XACORWIN")
	Global("XA_JhassoCorwinGreeting", "LOCALS", 1)
~ THEN BEGIN XA_CorwinGreeting2
	SAY @43 /* ~Good to see you again, Captain.~ */
	
	IF ~~ THEN EXIT
END

IF ~
	IsGabber("XACORWIN")
	!Global("XA_JhassoCorwinGreeting", "LOCALS", 1)
~ THEN BEGIN XA_CorwinGreeting
	SAY @42 /* ~Captain, I heard you'd be returning soon. Welcome home!~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_JhassoCorwinGreeting", "LOCALS", 1)
	~
	EXTERN XACORWIJ XA_JhassoCorwinGreetingChain
	
END

IF ~
	!Global("XA_JhassoGreeting", "LOCALS", 1)
	InPartySlot(LastTalkedToBy, 0)
~ THEN BEGIN XA_Greeting
	SAY @0 /* ~Hah, <CHARNAME>! After the Dukes exonerated you, I knew it would only be a matter of time before you returned. Welcome back my friend!~ */
	
	IF ~~ THEN REPLY @1 /* ~Thank you Jhasso, it's good to be back. How are things with you?~ */
	DO ~
		SetGlobal("XA_JhassoGreeting", "LOCALS", 1)
	~
	GOTO XA_Greeting2
END

IF ~
	!Global("XA_JhassoGreeting", "LOCALS", 1)
~ THEN BEGIN XA_OtherGreeting
	SAY @30 /* ~Please, enjoy your time at the Seven Suns, my friend.~ */
	
	IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN XA_Greeting2
	SAY @2 /* ~Well, between the dopplegangers and the refugee crisis, it's a miracle that the Seven Suns survived. That said, the business has been thriving of late. We are even working on opening our first chapter house in Amn.~ */
	
	IF ~~ THEN REPLY @3 /* ~Thanks to your leadership, no doubt.~ */
	GOTO XA_Greeting3
	
	IF ~~ THEN REPLY @16 /* ~Amn? That's great to hear.~ */
	GOTO XA_Greeting3
END

IF ~~ THEN BEGIN XA_Greeting3
	SAY @4 /* ~None of this would have been possible without you. You saved me from the dopplegangers. You stopped not only the Iron Throne, but Caelar and her mad crusade.~ */
	
	IF ~~ THEN
	GOTO XA_JhassoEnd
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_JhassoPlayerRomance
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_JhassoCorwinGreeting", "LOCALS", 1)
	~ THEN GOTO XA_JhassoCorwinFamily
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_JhassoCorwinGreeting", "LOCALS", 1)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_JhassoCorwinRomance
END

IF ~~ THEN BEGIN XA_JhassoPlayerRomance
	SAY @34 /* ~On a lighter note, I understand that you and Captain Corwin have become romantically involved, yes?~ */
	
	IF ~
		OR(3)
			Global("XA_RingGiftAldeth", "GLOBAL", 1)
			Global("XA_RingGiftJhasso", "GLOBAL", 1)
			Dead("halbaz")
	~ THEN REPLY @36 /* ~I wasn't aware that our love life was of interest to anyone else.~ */
	GOTO XA_JhassoCorwinRomance2
	
	IF ~
		OR(3)
			Global("XA_RingGiftAldeth", "GLOBAL", 1)
			Global("XA_RingGiftJhasso", "GLOBAL", 1)
			Dead("halbaz")
	~ THEN REPLY @35 /* ~Word travels fast, it seems.~  */
	GOTO XA_JhassoCorwinRomance2
	
	IF ~
		!Global("XA_RingGiftAldeth", "GLOBAL", 1)
		!Global("XA_RingGiftJhasso", "GLOBAL", 1)
		!Dead("halbaz")
	~ THEN REPLY @36 /* ~I wasn't aware that our love life was of interest to anyone else.~ */
	GOTO XA_GiveRing
	
	IF ~
		!Global("XA_RingGiftAldeth", "GLOBAL", 1)
		!Global("XA_RingGiftJhasso", "GLOBAL", 1)
		!Dead("halbaz")
	~ THEN REPLY @35 /* ~Word travels fast, it seems.~  */
	GOTO XA_GiveRing
	
	IF ~~ THEN REPLY @37 /* ~Yes - how did you know?~ */ 
	GOTO XA_JhassoCorwinRomanceHow
END

IF ~~ THEN BEGIN XA_JhassoCorwinRomance2
	SAY @40 /* ~I just wanted to tell you how happy I am, for the both of you. Also - not many know this, but Scar cared deeply for Captain Corwin, almost like she were part of his family. He wanted her to find happiness.~*/
	
	IF ~~ THEN REPLY @41 /* ~Don't worry Jhasso. I'm going to give her the kind of life that she's always wanted.~ */
	GOTO XA_JhassoCorwinRomance3
END

IF ~~ THEN BEGIN XA_JhassoCorwinRomance3
	SAY @31 /* ~I'm glad to hear it.~ */
	
	IF ~~ THEN
	GOTO XA_JhassoEnd
END

IF ~~ THEN BEGIN XA_JhassoCorwinRomanceHow
	SAY @38 /* ~My associates in Amn reported seeing an attractive Flaming Fist officer and someone matching your description displaying serious affection for one another. I surmised that it must've been the two of you.~ */
	
	IF ~~ THEN
	GOTO XA_JhassoEnd
	
	IF ~
		!Global("XA_RingGiftAldeth", "GLOBAL", 1)
		!Global("XA_RingGiftJhasso", "GLOBAL", 1)
	~ THEN
	GOTO XA_GiveRing
END



IF ~~ THEN BEGIN XA_JhassoCorwinFamilyEnd
	SAY @31 /* ~I'm glad to hear it.~ */
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_JhassoEnd
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO XA_JhassoCorwinRomance
END



IF ~~ THEN BEGIN XA_JhassoCorwinRomanceEnd
	SAY @32 /* ~I'm sure Scar would've been pleased to hear of your relationship.~ */
	
	IF ~~ THEN
	GOTO XA_JhassoEnd
	
	IF ~
		!Global("XA_RingGiftAldeth", "GLOBAL", 1)
		!Global("XA_RingGiftJhasso", "GLOBAL", 1)
	~ THEN GOTO XA_GiveRingGT1
END

IF ~~ THEN BEGIN XA_GiveRing
	SAY @39 /* ~Listen, <CHARNAME>... When I learned about your relationship with Schael, I had a special gift prepared for you.~ */
	
	IF ~~ THEN REPLY @17 /* ~A gift, for me?~*/
	GOTO XA_GiveRing2
END

IF ~~ THEN BEGIN XA_GiveRingGT1
	SAY @13 /* ~Listen, <CHARNAME>... (he motions you over, so that your companions cannot hear your conversation.)~ */
	
	= @11 /* ~When I learned about your relationship with Schael, I had a special gift prepared for you.~*/
	
	IF ~~ THEN REPLY @17 /* ~A gift, for me?~*/
	GOTO XA_GiveRing2
END

IF ~~ THEN BEGIN XA_GiveRing2
	SAY @18 /* ~Well, not exactly. You'll understand when you see it.~*/
	
	= @14 /* ~(He reaches into his pocket and pulls out a small box, and hands it to you.)~ */
	
	= @15 /* ~Go ahead, open it.~ */
	
	= @19 /* ~(You open the box. Inside is a dazzling, diamond-studded ring made of yellow, white and pink gold woven together.)~ */
	
	IF ~~ THEN REPLY @20 /* ~This is beautiful. It must've cost a fortune - I can't accept this!~*/
	GOTO XA_GiveRing3
END

IF ~~ THEN BEGIN XA_GiveRing3
	SAY @21 /* ~You can and you will. I owe both my life and my business to you, friend. Also - not many know this, but Scar cared deeply about Captain Corwin, almost like she were part of his family. He wanted her to find happiness.~ */
	
	= @22 /*  ~This ring is a way for me to honor his memory, and to thank you for all that you've done not just for me, but for this city. Please, accept it. Schael will love it, trust me.~ */
	
	IF ~~ THEN REPLY @23 /* ~Thank you, Jhasso. I appreciate it.~*/
	DO ~
		SetGlobal("XA_RingGiftJhasso", "GLOBAL", 1)
	~
	GOTO XA_GiveRing4
	
	IF ~~ THEN REPLY @24 /* ~But what if it doesn't fit her?~*/
	GOTO XA_WontFit
END

IF ~~ THEN BEGIN XA_WontFit
	SAY @25 /* ~It will. It was crafted specifically for her.~ */
	
	IF ~~ THEN REPLY @23 /* ~Thank you, Jhasso. I appreciate it.~*/
	DO ~
		SetGlobal("XA_RingGiftJhasso", "GLOBAL", 1)
	~
	GOTO XA_GiveRing4
END

IF ~~ THEN BEGIN XA_GiveRing4
	SAY @26 /* ~Of course, my friend. If you have the time, I suggest paying a visit to Halbazzer's shop. The metals in the ring take well to enchantment, or so I'm told. Lastly, I have a small favor to ask.~ */
	
	IF ~~ THEN REPLY @27 /* ~What is it?~*/
	DO ~
		AddJournalEntry(@33, INFO)
	~
	GOTO XA_GiveRing5
END

IF ~~ THEN BEGIN XA_GiveRing5
	SAY @28 /* ~When the time comes, be sure to send me a wedding invitation!~*/
	
	IF ~~ THEN REPLY @29 /*~Heh, you can count on that. Take care, Jhasso.~*/
	EXIT
END

IF ~
	Global("XA_JhassoGreeting", "LOCALS", 1)
~ THEN BEGIN XA_JhassoEnd
	SAY @30 /* ~Please, enjoy yourselves my friends. The Seven Suns is at your disposal.~*/
	IF ~~ THEN
	EXIT
END

CHAIN
	IF ~~ THEN XAJHASSO XA_JhassoCorwinRomance
		@51 /* ~And Captain?~ */
		= @8 /* ~I understand that you and <CHARNAME> have, ah, become.. involved, yes?~ */
		
		== XACORWIJ
		@9 /* ~(She smiles.) We are... I wasn't aware that our love life was common knowledge.~ */
		
		== XAJHASSO
		@10 /* ~Hahah, worry not my friend. My associates in Amn reported seeing a Flaming Fist officer and someone matching <CHARNAME>'s description displaying serious affection for one another. I surmised that it must've been the two of you.~ */
END XAJHASSO XA_JhassoCorwinRomanceEnd

CHAIN
	IF ~~ THEN XAJHASSO XA_JhassoCorwinFamily
		@5 /* ~Captain Corwin, it's always a pleasure to see you. How is your family?~ */
		DO ~
			SetGlobal("XA_JhassoCorwinGreeting", "LOCALS", 1)
		~
		== XACORWIJ
		IF ~
			Global("XA_CorwinMetFamily", "GLOBAL", 1)
		~
		@6 /* ~Likewise, Jhasso. My family is doing well - we saw them shortly after we returned to the city.~ */
		
		== XACORWIJ
		IF ~
			!Global("XA_CorwinMetFamily", "GLOBAL", 1)
		~
		@7 /* ~Likewise, Jhasso. We're going to my home to see them shortly.~  */
END XAJHASSO XA_JhassoCorwinFamilyEnd

CHAIN
	IF ~~ THEN XACORWIJ XA_JhassoCorwinGreetingChain
		@44 /* ~Thanks, Jhasso - it's good to be back.~*/
		
		== XAJHASSO
		@45 /* ~How is the family?~ */
		== XACORWIJ
		IF ~
			Global("XA_CorwinMetFamily", "GLOBAL", 1)
		~
		@46 /* ~They're doing well. I spent some time with them shortly after we returned to the city.~ */
		== XACORWIJ
		IF ~
			!Global("XA_CorwinMetFamily", "GLOBAL", 1)
		~
		@47 /* ~We're going to go and see them shortly.~ */
		== XAJHASSO
		@31 /* ~I'm glad to hear it.~ */
		= @48 /* ~Captain, is <CHARNAME> available? I'd like to speak with <PRO_HIMHER> at <PRO_HISHER> earliest convenience.~ */
		== XACORWIJ
		@49 /* ~I'll let <PRO_HIMHER> know.~*/
		== XAJHASSO
		@50 /*~Thank you.~ */
EXIT 