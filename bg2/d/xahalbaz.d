BEGIN ~XAHALBAZ~

IF ~
	!IsGabber(Player1)
~ THEN BEGIN XA_NPCGreeting
	SAY @4 /* ~Come to check out the wares of ol' Halbazzer, have ye?~*/
	
	IF ~~ THEN REPLY @41
	DO ~
		SetNumTimesTalkedTo(0)
	~
	GOTO XA_StartStore
END

IF ~
	!Global("XA_HalbazGreeting", "LOCALS", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_Greeting
	SAY @1 /* ~Ah, welcome. I'd heard that the hero of Baldur's Gate would be returning soon.~ */
	
	IF ~~ THEN REPLY @2 /* ~Things seem to have improved markedly since the last time I was here.~ */
	DO ~
		SetGlobal("XA_HalbazGreeting", "LOCALS", 1)
	~
	GOTO XA_RefugeesCleared //OK

END

IF ~
	Global("XA_HalbazGreeting", "LOCALS", 1)
~ THEN BEGIN XA_SecondGreeting
	SAY @4 /* ~Come to check out the wares of ol' Halbazzer, have ye?~*/
	
	IF ~~ THEN REPLY @5 /* ~Let's see what you have, then.~ */
	GOTO XA_StartStore
	
	IF ~
		Global("XA_HandedOverManifests", "GLOBAL", 1)
		!Global("XA_AskedHalbazAboutWinston", "LOCALS", 1)
		!Global("XA_RefugeeQuestComplete", "GLOBAL", 1)
	~
	THEN REPLY @6 /* ~About that. What can you tell me about Winston Ventures? I understand that they were primarily responsible for moving the refugees out of the city.~ */
	GOTO XA_AskAboutSlavers
	
	IF ~
		Global("XA_RingGiftAldeth", "GLOBAL", 1)
		GlobalLT("XA_RingEnchanted", "GLOBAL", 1)
		IsGabber(Player1)
	~ THEN REPLY @10 /* ~Listen... (approach and ask about enchanting the ring.)~*/
	GOTO XA_RingEnchant1__A //OK
	
	IF ~
		Global("XA_RingGiftJhasso", "GLOBAL", 1)
		GlobalLT("XA_RingEnchanted", "GLOBAL", 1)
		IsGabber(Player1)
	~ THEN REPLY @10 /* ~Listen... (approach and ask about enchanting the ring.)~*/
	GOTO XA_RingEnchant1__J //OK
END

IF ~~ THEN BEGIN XA_RefugeesCleared
	SAY @3 /* ~Yes, the refugees have finally cleared out and business is back to normal.~ */
	
	IF ~~ THEN REPLY @5 /* ~Let's see what you have, then.~ */
	GOTO XA_StartStore
	
	IF ~
		Global("XA_HandedOverManifests", "GLOBAL", 1)
		!Global("XA_AskedHalbazAboutWinston", "LOCALS", 1)
		!Global("XA_RefugeeQuestComplete", "GLOBAL", 1)
	~
	THEN REPLY @6 /* ~About that. What can you tell me about Winston Ventures? I understand that they were primarily responsible for moving the refugees out of the city.~ */
	GOTO XA_AskAboutSlavers
	
	IF ~
		Global("XA_RingGiftAldeth", "GLOBAL", 1)
		GlobalLT("XA_RingEnchanted", "GLOBAL", 1)
		IsGabber(Player1)
	~ THEN REPLY @10 /* ~Listen... (approach and ask about enchanting the ring.)~*/
	GOTO XA_RingEnchant1__A //OK
	
	IF ~
		Global("XA_RingGiftJhasso", "GLOBAL", 1)
		GlobalLT("XA_RingEnchanted", "GLOBAL", 1)
		IsGabber(Player1)
	~ THEN REPLY @10 /* ~Listen... (approach and ask about enchanting the ring.)~*/
	GOTO XA_RingEnchant1__J //OK
END

IF ~~ THEN BEGIN XA_RingEnchant1__J
	SAY @38 /* ~Yes, Jhasso told me that you may be stopping by. Let me see that.~ */
	
	IF ~~ THEN REPLY @13 /* ~(Hand over the box containing the ring.)~ */
	GOTO XA_RingEnchant2__J //OK
END

IF ~~ THEN BEGIN XA_RingEnchant2__J
	SAY @14 /* ~Hmm...~ */
	
	= @15 /* ~Yes, very good. This ring is of exceptional quality. I can place up to three enchantments on it.~*/
	
	IF ~~ THEN REPLY @16 /* ~What kind of enchantments can you provide?~*/
	GOTO XA_RingEnchantmentDescriptions //OK
	
	IF ~~ THEN REPLY @17 /* ~How much will that cost?~*/
	GOTO XA_HowMuch__J //OK
END

IF ~~ THEN BEGIN XA_HowMuch__J
	SAY @39 /* ~Nothing. Jhasso is a good friend of mine, and I understand that he'd be dead were it not for your efforts. Allow me to do this for you as a token of my appeciation, not just for saving his life, but for putting an end to Caelar and her crusade.~*/
	
	IF ~~ THEN REPLY @40 /* ~Thanks, I appreciate it.~ */
	GOTO XA_RingEnchant3__J
END

IF ~~ THEN BEGIN XA_RingEnchant3__J
	SAY @26 /* ~Now, back to this ring...~ */
	
	IF ~~ THEN REPLY @16 /* ~What kind of enchantments can you perform? ~*/
	GOTO XA_RingEnchantmentDescriptions //OK
END

IF ~~ THEN BEGIN XA_RingEnchant1__A
	SAY @12 /* ~Yes, Aldeth told me that you may be stopping by. Let me see that.~ */
	
	IF ~~ THEN REPLY @13 /* ~(Hand over the box containing the ring.)~ */
	GOTO XA_RingEnchant2__A //OK
END

IF ~~ THEN BEGIN XA_RingEnchant2__A
	SAY @14 /* ~Hmm...~ */
	
	= @15 /* ~Yes, very good. This ring is of exceptional quality. I can place up to three enchantments on it.~*/
	
	IF ~~ THEN REPLY @16 /* ~What kind of enchantments can you provide?~*/
	GOTO XA_RingEnchantmentDescriptions //OK
	
	IF ~~ THEN REPLY @17 /* ~How much will that cost?~*/
	GOTO XA_HowMuch__A //OK
END

IF ~~ THEN BEGIN XA_HowMuch__A
	SAY @18 /* ~Nothing. Aldeth is a good friend of mine, and I owe him a favor. By doing this for you on his behalf, I'll have squared away my debt to him.~ */
	
	IF ~~ THEN REPLY @19 /* ~Aldeth is very generous, isn't he?~ */
	GOTO XA_HowMuch2__A //OK
END

IF ~~ THEN BEGIN XA_HowMuch2__A
	SAY @20 /* ~Indeed, though I suspect that one of the reasons he is doing this to gain favor with you.~*/
	
	IF ~~ THEN REPLY @21 /* ~Is that so?~ */
	GOTO XA_HowMuch3__A //OK
END

IF ~~ THEN BEGIN XA_HowMuch3__A
	SAY @22 /* ~Of course. Aldeth is a good businessman, and like any good businessman he will seek to establish a good relationship with people that can help him down the line, you see.~ */
	
	IF ~~ THEN REPLY @23 /* ~Ah, that makes sense.~ */
	GOTO XA_RingEnchant3__A //OK
	
	IF ~~ THEN REPLY @24 /* ~I don't understand - what does he think I can do for him?~ */
	GOTO XA_QuidProQuo__A //OK
END

IF ~~ THEN BEGIN XA_QuidProQuo__A
	SAY @25 /* ~Isn't it obvious? You're the hero of Baldur's Gate! Not just Baldur's Gate infact, but the entire Sword Coast! Now that you've been exonerated, he and others must expect that you will one day earn a seat on the Council. Having a friend in the Council can do wonders for someone looking to expand their businesses.~  */
	
	IF ~~ THEN
	GOTO XA_RingEnchant3__A //OK
END

IF ~~ THEN BEGIN XA_RingEnchant3__A
	SAY @26 /* ~Now, back to this ring...~ */
	
	IF ~~ THEN REPLY @16 /* ~What kind of enchantments can you perform? ~*/
	GOTO XA_RingEnchantmentDescriptions //OK
END

IF ~~ THEN BEGIN XA_Note1
	SAY @55 /* ~Noted.~*/
	
	IF ~~ THEN 
	GOTO XA_RingSecondEnchant
END

IF ~~ THEN BEGIN XA_Note2
	SAY @56 /* ~Very good.~*/
	
	IF ~~ THEN 
	GOTO XA_RingThirdEnchant
END

IF ~~ THEN BEGIN XA_RingEnchantmentDescriptions
	SAY @27 /* 1. An enchantment to enhance the wearer's movement and attack speed;
	2. An enchantment to improve the wearer's resistance to magical attacks; 
	3. An enchantment to improve the wearer's resilience against physical attacks; 
	4. An enchantment to increase the vitality of the wearer; and 
	5. An enchantment to make the wearer immune to mental effects, such as charm, confusion and the like.
	
	What is the first enchantment you'd like to add?~*/
	
	IF ~
		!Global("XA_RingEnchantment1", "GLOBAL", 1)
	~ THEN REPLY @30
	DO ~
		SetGlobal("XA_RingEnchantment1", "GLOBAL", 1)
	~
	GOTO XA_Note1
	
	IF ~
		!Global("XA_RingEnchantment2", "GLOBAL", 1)
	~ THEN REPLY @31
	DO ~
		SetGlobal("XA_RingEnchantment2", "GLOBAL", 1)
	~
	GOTO XA_Note1
	
	IF ~
		!Global("XA_RingEnchantment3", "GLOBAL", 1)
	~ THEN REPLY @32
	DO ~
		SetGlobal("XA_RingEnchantment3", "GLOBAL", 1)
	~
	GOTO XA_Note1
	
	IF ~
		!Global("XA_RingEnchantment4", "GLOBAL", 1)
	~ THEN REPLY @33
	DO ~
		SetGlobal("XA_RingEnchantment4", "GLOBAL", 1)
	~
	GOTO XA_Note1
	
	IF ~
		!Global("XA_RingEnchantment5", "GLOBAL", 1)
	~ THEN REPLY @34
	DO ~
		SetGlobal("XA_RingEnchantment5", "GLOBAL", 1)
	~
	GOTO XA_Note1
	
END

IF ~~ THEN BEGIN XA_RingSecondEnchant
	SAY @28 /* ~What is the second enchantment you'd like to add?~ */
	
	IF ~
		!Global("XA_RingEnchantment1", "GLOBAL", 1)
	~ THEN REPLY @30
	DO ~
		SetGlobal("XA_RingEnchantment1", "GLOBAL", 1)
	~
	GOTO XA_Note2
	
	IF ~
		!Global("XA_RingEnchantment2", "GLOBAL", 1)
	~ THEN REPLY @31
	DO ~
		SetGlobal("XA_RingEnchantment2", "GLOBAL", 1)
	~
	GOTO XA_Note2
	
	IF ~
		!Global("XA_RingEnchantment3", "GLOBAL", 1)
	~ THEN REPLY @32
	DO ~
		SetGlobal("XA_RingEnchantment3", "GLOBAL", 1)
	~
	GOTO XA_Note2
	
	IF ~
		!Global("XA_RingEnchantment4", "GLOBAL", 1)
	~ THEN REPLY @33
	DO ~
		SetGlobal("XA_RingEnchantment4", "GLOBAL", 1)
	~
	GOTO XA_Note2
	
	IF ~
		!Global("XA_RingEnchantment5", "GLOBAL", 1)
	~ THEN REPLY @34
	DO ~
		SetGlobal("XA_RingEnchantment5", "GLOBAL", 1)
	~
	GOTO XA_Note2
END

IF ~~ THEN XA_RingThirdEnchant
	SAY @29 /* ~And the last enchantment?~ */
	
	IF ~
		!Global("XA_RingEnchantment1", "GLOBAL", 1)
	~ THEN REPLY @30
	DO ~
		SetGlobal("XA_RingEnchantment1", "GLOBAL", 1)
	~
	GOTO XA_RingEnchantBoost
	
	IF ~
		!Global("XA_RingEnchantment2", "GLOBAL", 1)
	~ THEN REPLY @31
	DO ~
		SetGlobal("XA_RingEnchantment2", "GLOBAL", 1)
	~
	GOTO XA_RingEnchantBoost
	
	IF ~
		!Global("XA_RingEnchantment3", "GLOBAL", 1)
	~ THEN REPLY @32
	DO ~
		SetGlobal("XA_RingEnchantment3", "GLOBAL", 1)
	~
	GOTO XA_RingEnchantBoost
	
	IF ~
		!Global("XA_RingEnchantment4", "GLOBAL", 1)
	~ THEN REPLY @33
	DO ~
		SetGlobal("XA_RingEnchantment4", "GLOBAL", 1)
	~
	GOTO XA_RingEnchantBoost
	
	IF ~
		!Global("XA_RingEnchantment5", "GLOBAL", 1)
	~ THEN REPLY @34
	DO ~
		SetGlobal("XA_RingEnchantment5", "GLOBAL", 1)
	~
	GOTO XA_RingEnchantBoost
END

IF ~~ THEN BEGIN XA_RingEnchantBoost
	SAY @43 /* ~Very good. There's just one more matter to discuss.~ */
	
	IF ~~ THEN REPLY @44 /* ~What is it?~ */
	GOTO XA_RingEnchantBoost2
	
	IF ~~ THEN REPLY @46 /* ~What is it?~ */
	GOTO XA_RingEnchantBoost2
END

IF ~~ THEN BEGIN XA_RingEnchantBoost2
	SAY @45 /* ~As the child of a deity, you are a being of immense power... if you so choose, you can use a portion of your divine life force to boost the power of the enchantments to truly extraordinary levels.~ */

	= @47 /* ~I must warn you that the process is irreversible. You will not be able to reclaim the life force used to fuel the enchantments, even if the ring, or its wearer, is destroyed.~ */
	
	IF ~~ THEN REPLY @48 /* ~How much of my life force will you need?~ */
	GOTO XA_HowMuch
END

IF ~~ THEN BEGIN XA_HowMuch
	SAY @50 /* ~It's hard to say... a tenth, or perhaps slightly more. The tradeoff in my opinion is worth it.~ */
	
	IF ~~ THEN REPLY @51 /* ~It sounds risky. I'll pass.~ */
	GOTO XA_RingEnchantEnd_NoImbue
	
	IF ~~ THEN REPLY @52 /* ~She's worth it. I'll do it.~ */
	GOTO XA_RingEnchantEnd_Imbue
	
	IF ~~ THEN REPLY @49 /* ~No, thanks. I've had enough of wizards trying to steal my power for one lifetime.~*/
	GOTO XA_RingEnchantEnd_NoImbue
END

IF ~~ THEN BEGIN XA_RingEnchantEnd_NoImbue
	SAY @35 /* ~Very well. Return to me in one week. The enchantments will be applied by then.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_HalbazzerRing", "GLOBAL", 1)
		SetGlobal("XA_RingEnchanted", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_RingEnchantEnd_Imbue
	SAY @53 /* ~Very well. Return to me in one week. The enchantments will be applied by then.~ */
	= @54 /* ~You won't be disappointed.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_HalbazzerRing", "GLOBAL", 1)
		SetGlobal("XA_RingEnchanted", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_AskAboutSlavers
	SAY @7 /* ~What is there to say? They moved in to the Iron Throne headquarters at the peak of the crisis. Shortly thereafter the refugees were moved out of the city, one ship at a time.~ */
	
	IF ~~ THEN REPLY @8 /* ~I'm investigating slaver activity... I believe that the refugees were not resettled, but rather sold as slaves.~ */
	DO ~
		SetGlobal("XA_AskedHalbazAboutWinston", "LOCALS", 1)
	~
	GOTO XA_SlaversEnd
	
END

IF ~~ THEN BEGIN XA_SlaversEnd
	SAY @9 /* ~It wouldn't surprise me if that were true, but I have no knowledge of the activities you describe.~ */
	
	IF ~~ THEN REPLY @5 /* ~Let's see what you have, then.~ */
	GOTO XA_StartStore 
END

IF ~~ THEN BEGIN XA_StartStore
	SAY @0 /* ~Premium items for a premium price.~ */
	IF ~~ THEN 
	DO ~
		StartStore("bdsorcsc",LastTalkedToBy(Myself))
	~ 
	EXIT
END