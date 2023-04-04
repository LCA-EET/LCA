BEGIN ~LCHALBAZ~

IF ~
	!InPartySlot(LastTalkedToBy,0)
~ THEN BEGIN LCA_NPCGreeting
	SAY @4 /* ~Come to check out the wares of ol' Halbazzer, have ye?~*/
	
	IF ~~ THEN REPLY @41
	DO ~
		SetNumTimesTalkedTo(0)
	~
	GOTO LCA_StartStore
END

IF ~
	!Global("LCA_HalbazGreeting", "LOCALS", 1)
	InPartySlot(LastTalkedToBy,0)
~ THEN BEGIN LCA_Greeting
	SAY @1 /* ~Ah, welcome. I'd heard that the hero of Baldur's Gate would be returning soon.~ */
	
	IF ~~ THEN REPLY @2 /* ~Things seem to have improved markedly since the last time I was here.~ */
	DO ~
		SetGlobal("LCA_HalbazGreeting", "LOCALS", 1)
	~
	GOTO LCA_RefugeesCleared //OK

END

IF ~
	Global("LCA_HalbazGreeting", "LOCALS", 1)
~ THEN BEGIN LCA_SecondGreeting
	SAY @4 /* ~Come to check out the wares of ol' Halbazzer, have ye?~*/
	
	IF ~~ THEN REPLY @5 /* ~Let's see what you have, then.~ */
	GOTO LCA_StartStore
	
	IF ~
		Global("LCA_HandedOverManifests", "GLOBAL", 1)
		!Global("LCA_AskedHalbazAboutWinston", "LOCALS", 1)
		!Global("LCA_RefugeeQuestComplete", "GLOBAL", 1)
	~
	THEN REPLY @6 /* ~About that. What can you tell me about Winston Ventures? I understand that they were primarily responsible for moving the refugees out of the city.~ */
	GOTO LCA_AskAboutSlavers
	
	IF ~
		Global("LCA_RingGiftAldeth", "GLOBAL", 1)
		!Global("LCA_RingEnchanted", "GLOBAL", 1)
		InPartySlot(LastTalkedToBy,0)
	~ THEN REPLY @10 /* ~Listen... (approach and ask about enchanting the ring.)~*/
	GOTO LCA_RingEnchant1__A //OK
	
	IF ~
		Global("LCA_RingGiftJhasso", "GLOBAL", 1)
		!Global("LCA_RingEnchanted", "GLOBAL", 1)
		InPartySlot(LastTalkedToBy,0)
	~ THEN REPLY @10 /* ~Listen... (approach and ask about enchanting the ring.)~*/
	GOTO LCA_RingEnchant1__J //OK
END

IF ~~ THEN BEGIN LCA_RefugeesCleared
	SAY @3 /* ~Yes, the refugees have finally cleared out and business is back to normal.~ */
	
	IF ~~ THEN REPLY @5 /* ~Let's see what you have, then.~ */
	GOTO LCA_StartStore
	
	IF ~
		Global("LCA_HandedOverManifests", "GLOBAL", 1)
		!Global("LCA_AskedHalbazAboutWinston", "LOCALS", 1)
		!Global("LCA_RefugeeQuestComplete", "GLOBAL", 1)
	~
	THEN REPLY @6 /* ~About that. What can you tell me about Winston Ventures? I understand that they were primarily responsible for moving the refugees out of the city.~ */
	GOTO LCA_AskAboutSlavers
	
	IF ~
		Global("LCA_RingGiftAldeth", "GLOBAL", 1)
		!Global("LCA_RingEnchanted", "GLOBAL", 1)
		InPartySlot(LastTalkedToBy,0)
	~ THEN REPLY @10 /* ~Listen... (approach and ask about enchanting the ring.)~*/
	GOTO LCA_RingEnchant1__A //OK
	
	IF ~
		Global("LCA_RingGiftJhasso", "GLOBAL", 1)
		!Global("LCA_RingEnchanted", "GLOBAL", 1)
		InPartySlot(LastTalkedToBy,0)
	~ THEN REPLY @10 /* ~Listen... (approach and ask about enchanting the ring.)~*/
	GOTO LCA_RingEnchant1__J //OK
END

IF ~~ THEN BEGIN LCA_RingEnchant1__J
	SAY @38 /* ~Yes, Jhasso told me that you may be stopping by. Let me see that.~ */
	
	IF ~~ THEN REPLY @13 /* ~(Hand over the box containing the ring.)~ */
	GOTO LCA_RingEnchant2__J //OK
END

IF ~~ THEN BEGIN LCA_RingEnchant2__J
	SAY @14 /* ~Hmm...~ */
	
	= @15 /* ~Yes, very good. This ring is of exceptional quality. I can place up to three enchantments on it.~*/
	
	IF ~~ THEN REPLY @16 /* ~What kind of enchantments can you provide?~*/
	GOTO LCA_RingEnchantmentDescriptions //OK
	
	IF ~~ THEN REPLY @17 /* ~How much will that cost?~*/
	GOTO LCA_HowMuch__J //OK
END

IF ~~ THEN BEGIN LCA_HowMuch__J
	SAY @39 /* ~Nothing. Jhasso is a good friend of mine, and I understand that he'd be dead were it not for your efforts. Allow me to do this for you as a token of my appeciation, not just for saving his life, but for putting an end to Caelar and her crusade.~*/
	
	IF ~~ THEN REPLY @40 /* ~Thanks, I appreciate it.~ */
	GOTO LCA_RingEnchant3__J
END

IF ~~ THEN BEGIN LCA_RingEnchant3__J
	SAY @26 /* ~Now, back to this ring...~ */
	
	IF ~~ THEN REPLY @16 /* ~What kind of enchantments can you perform? ~*/
	GOTO LCA_RingEnchantmentDescriptions //OK
END

IF ~~ THEN BEGIN LCA_RingEnchant1__A
	SAY @12 /* ~Yes, Aldeth told me that you may be stopping by. Let me see that.~ */
	
	IF ~~ THEN REPLY @13 /* ~(Hand over the box containing the ring.)~ */
	GOTO LCA_RingEnchant2__A //OK
END

IF ~~ THEN BEGIN LCA_RingEnchant2__A
	SAY @14 /* ~Hmm...~ */
	
	= @15 /* ~Yes, very good. This ring is of exceptional quality. I can place up to three enchantments on it.~*/
	
	IF ~~ THEN REPLY @16 /* ~What kind of enchantments can you provide?~*/
	GOTO LCA_RingEnchantmentDescriptions //OK
	
	IF ~~ THEN REPLY @17 /* ~How much will that cost?~*/
	GOTO LCA_HowMuch__A //OK
END

IF ~~ THEN BEGIN LCA_HowMuch__A
	SAY @18 /* ~Nothing. Aldeth is a good friend of mine, and I owe him a favor. By doing this for you on his behalf, I'll have squared away my debt to him.~ */
	
	IF ~~ THEN REPLY @19 /* ~Aldeth is very generous, isn't he?~ */
	GOTO LCA_HowMuch2__A //OK
END

IF ~~ THEN BEGIN LCA_HowMuch2__A
	SAY @20 /* ~Indeed, though I suspect that one of the reasons he is doing this to gain favor with you.~*/
	
	IF ~~ THEN REPLY @21 /* ~Is that so?~ */
	GOTO LCA_HowMuch3__A //OK
END

IF ~~ THEN BEGIN LCA_HowMuch3__A
	SAY @22 /* ~Of course. Aldeth is a good businessman, and like any good businessman he will seek to establish a good relationship with people that can help him down the line, you see.~ */
	
	IF ~~ THEN REPLY @23 /* ~Ah, that makes sense.~ */
	GOTO LCA_RingEnchant3__A //OK
	
	IF ~~ THEN REPLY @24 /* ~I don't understand - what does he think I can do for him?~ */
	GOTO LCA_QuidProQuo__A //OK
END

IF ~~ THEN BEGIN LCA_QuidProQuo__A
	SAY @25 /* ~Isn't it obvious? You're the hero of Baldur's Gate! Not just Baldur's Gate infact, but the entire Sword Coast! Now that you've been exonerated, he and others must expect that you will one day earn a seat on the Council. Having a friend in the Council can do wonders for someone looking to expand their businesses.~  */
	
	IF ~~ THEN
	GOTO LCA_RingEnchant3__A //OK
END

IF ~~ THEN BEGIN LCA_RingEnchant3__A
	SAY @26 /* ~Now, back to this ring...~ */
	
	IF ~~ THEN REPLY @16 /* ~What kind of enchantments can you perform? ~*/
	GOTO LCA_RingEnchantmentDescriptions //OK
END

IF ~~ THEN BEGIN LCA_RingEnchantmentDescriptions
	SAY @27 /* 1. An enchantment to enhance the wearer's movement and attack speed;
	2. An enchantment to improve the wearer's resistance to magical attacks; 
	3. An enchantment to improve the wearer's resilience against physical attacks; 
	4. An enchantment to increase the vitality of the wearer; and 
	5. An enchantment to make the wearer immune to mental effects, such as charm, confusion and the like.
	
	What is the first enchantment you'd like to add?~*/
	
	IF ~
		!Global("LCA_RingEnchantment1", "GLOBAL", 1)
	~ THEN REPLY @30
	DO ~
		SetGlobal("LCA_RingEnchantment1", "GLOBAL", 1)
	~
	GOTO LCA_RingSecondEnchant
	
	IF ~
		!Global("LCA_RingEnchantment2", "GLOBAL", 1)
	~ THEN REPLY @31
	DO ~
		SetGlobal("LCA_RingEnchantment2", "GLOBAL", 1)
	~
	GOTO LCA_RingSecondEnchant
	
	IF ~
		!Global("LCA_RingEnchantment3", "GLOBAL", 1)
	~ THEN REPLY @32
	DO ~
		SetGlobal("LCA_RingEnchantment3", "GLOBAL", 1)
	~
	GOTO LCA_RingSecondEnchant
	
	IF ~
		!Global("LCA_RingEnchantment4", "GLOBAL", 1)
	~ THEN REPLY @33
	DO ~
		SetGlobal("LCA_RingEnchantment4", "GLOBAL", 1)
	~
	GOTO LCA_RingSecondEnchant
	
	IF ~
		!Global("LCA_RingEnchantment5", "GLOBAL", 1)
	~ THEN REPLY @34
	DO ~
		SetGlobal("LCA_RingEnchantment5", "GLOBAL", 1)
	~
	GOTO LCA_RingSecondEnchant
	
END

IF ~~ THEN BEGIN LCA_RingSecondEnchant
	SAY @28 /* ~What is the second enchantment you'd like to add?~ */
	
	IF ~
		!Global("LCA_RingEnchantment1", "GLOBAL", 1)
	~ THEN REPLY @30
	DO ~
		SetGlobal("LCA_RingEnchantment1", "GLOBAL", 1)
	~
	GOTO LCA_RingThirdEnchant
	
	IF ~
		!Global("LCA_RingEnchantment2", "GLOBAL", 1)
	~ THEN REPLY @31
	DO ~
		SetGlobal("LCA_RingEnchantment2", "GLOBAL", 1)
	~
	GOTO LCA_RingThirdEnchant
	
	IF ~
		!Global("LCA_RingEnchantment3", "GLOBAL", 1)
	~ THEN REPLY @32
	DO ~
		SetGlobal("LCA_RingEnchantment3", "GLOBAL", 1)
	~
	GOTO LCA_RingThirdEnchant
	
	IF ~
		!Global("LCA_RingEnchantment4", "GLOBAL", 1)
	~ THEN REPLY @33
	DO ~
		SetGlobal("LCA_RingEnchantment4", "GLOBAL", 1)
	~
	GOTO LCA_RingThirdEnchant
	
	IF ~
		!Global("LCA_RingEnchantment5", "GLOBAL", 1)
	~ THEN REPLY @34
	DO ~
		SetGlobal("LCA_RingEnchantment5", "GLOBAL", 1)
	~
	GOTO LCA_RingThirdEnchant
END

IF ~~ THEN LCA_RingThirdEnchant
	SAY @29 /* ~And the last enchantment?~ */
	
	IF ~
		!Global("LCA_RingEnchantment1", "GLOBAL", 1)
	~ THEN REPLY @30
	DO ~
		SetGlobal("LCA_RingEnchantment1", "GLOBAL", 1)
	~
	GOTO LCA_RingThirdEnchant
	
	IF ~
		!Global("LCA_RingEnchantment2", "GLOBAL", 1)
	~ THEN REPLY @31
	DO ~
		SetGlobal("LCA_RingEnchantment2", "GLOBAL", 1)
	~
	GOTO LCA_RingThirdEnchant
	
	IF ~
		!Global("LCA_RingEnchantment3", "GLOBAL", 1)
	~ THEN REPLY @32
	DO ~
		SetGlobal("LCA_RingEnchantment3", "GLOBAL", 1)
	~
	GOTO LCA_RingThirdEnchant
	
	IF ~
		!Global("LCA_RingEnchantment4", "GLOBAL", 1)
	~ THEN REPLY @33
	DO ~
		SetGlobal("LCA_RingEnchantment4", "GLOBAL", 1)
	~
	GOTO LCA_RingThirdEnchant
	
	IF ~
		!Global("LCA_RingEnchantment5", "GLOBAL", 1)
	~ THEN REPLY @34
	DO ~
		SetGlobal("LCA_RingEnchantment5", "GLOBAL", 1)
	~
	GOTO LCA_RingThirdEnchant
END

IF ~~ THEN BEGIN LCA_RingEnchantEnd
	SAY @35 /* ~Very good. Return to me in one week. The enchantments will be applied by then.~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@42, INFO)
		SetGlobal("LCA_RingEnchanted", "GLOBAL", 1)
	~
	EXIT
END



IF ~~ THEN BEGIN LCA_AskAboutSlavers
	SAY @7 /* ~What is there to say? They moved in to the Iron Throne headquarters at the peak of the crisis. Shortly thereafter the refugees were moved out of the city, one ship at a time.~ */
	
	IF ~~ THEN REPLY @8 /* ~I'm investigating slaver activity... I believe that the refugees were not resettled, but rather sold as slaves.~ */
	DO ~
		SetGlobal("LCA_AskedHalbazAboutWinston", "LOCALS", 1)
	~
	GOTO LCA_SlaversEnd
	
END

IF ~~ THEN BEGIN LCA_SlaversEnd
	SAY @9 /* ~It wouldn't surprise me if that were true, but I have no knowledge of the activities you describe.~ */
	
	IF ~~ THEN REPLY @5 /* ~Let's see what you have, then.~ */
	GOTO LCA_StartStore 
END

IF ~~ THEN BEGIN LCA_StartStore
	SAY @0 /* ~Premium items for a premium price.~ */
	IF ~~ THEN 
	DO ~
		StartStore("bdsorcsc",LastTalkedToBy(Myself))
	~ 
	EXIT
END