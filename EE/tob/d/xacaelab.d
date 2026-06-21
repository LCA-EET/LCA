BEGIN ~XACAELAB~

//{ Gear Repaired
IF ~
	Global("XA_LC_CaelarGear", "GLOBAL", 1)
~ THEN BEGIN XA_LC_CaelarGear
	SAY @130 /*@130=~...~*/

	IF ~~ THEN REPLY @131
	GOTO XA_LC_CaelarGear2

	IF ~~ THEN REPLY @132
	GOTO XA_LC_CaelarGear2
END

IF ~~ THEN BEGIN XA_LC_CaelarGear2
	SAY @127 /*~Before I began the crusade, I thought myself worthy of these holy artifacts by virtue of my bloodline alone. How could I have been so foolish, so... so arrogant?~*/

	= @128 /*~Putting my selfish desires above the lives and livelihoods of so many... I willingly traded piety for sanctimony, and humility for pride.~*/

	= @129 /*~This time... this time, I swear by Lathander that I will use these holy artifacts in furtherance of all that is right and good.~*/

	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_CaelarGear", "GLOBAL", 2)
	~
	EXIT
END
//}

//{ Dialog B-102
IF ~
	IsGabber(Player1)
	Global("XA_LC_SummonAun", "GLOBAL", 4)
~ THEN BEGIN XA_CaelarThanks
	SAY @121 /*~<CHARNAME> — before we move on, I want you to know how much I truly appreciate everything that you've done for me. Thank you... my friend.~*/
	
	IF ~~ THEN REPLY @122 /*~You're welcome.~*/
	DO ~
		SetGlobal("XA_LC_SummonAun", "GLOBAL", 5)
	~
	GOTO XA_CaelarThanks2
	
	IF ~~ THEN REPLY @123 /*~Were our roles reversed, you'd have done the same.~*/
	DO ~
		SetGlobal("XA_LC_SummonAun", "GLOBAL", 5)
	~
	GOTO XA_CaelarThanks2
	
	IF ~~ THEN REPLY @124 /*~I'm glad to have been able to help.~*/
	DO ~
		SetGlobal("XA_LC_SummonAun", "GLOBAL", 5)
	~
	GOTO XA_CaelarThanks2
END

IF ~~ THEN BEGIN XA_CaelarThanks2
	SAY @126 /*~The others are waiting. Let's go.~*/
	
	IF ~~ THEN
	DO ~
		AddXPObject(Myself, 25000)
		AddXPObject(Player1, 25000)
		SetGlobal("XA_LC_CaelarMetAun", "GLOBAL", 1)
		AddJournalEntry(@125, INFO)
	~
	EXIT
END
//}

//{ Dialog B-101
IF ~
	IsGabber(Player1)
	TriggerOverride(Player1, Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride(Player1, Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN BEGIN XA_CaelarPlayerBanter1Chain
	SAY @120 /* ~<CHARNAME>, a moment if I may. What happened after I stayed behind in Avernus? To you, I mean. Your power has grown significantly since I first saw you at the Coast Way Crossing.~*/
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @89 /* ~That's going to take a while... (Explain what happened after the events of Dragonspear.)~ */
	DO ~
		ActionOverride(Player1, SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0))
		ActionOverride(Player1, IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1))
	~
	GOTO XA_ExplainTrial_NR
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @89 /* ~That's going to take a while... (Explain what happened after the events of Dragonspear.)~ */
	DO ~
		ActionOverride(Player1, SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0))
		ActionOverride(Player1, IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1))
	~
	GOTO XA_ExplainTrial_R
	
	IF ~~ THEN REPLY @102 /*~I'd rather not discuss it.~*/
	DO ~
		ActionOverride(Player1, SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0))
		ActionOverride(Player1, IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1))
	~
	GOTO XA_NoDiscuss
END
//}

IF ~~ THEN BEGIN XA_ExplainTrial_R
	SAY @94 /*~(You tell her how you were framed for the murder of Skie, your trial, and how you and Schael were forced apart because of your exile.)~*/
	
	= @91 /*~Goodness! What a nightmarish turn of events... did you find who was responsible for the murder?~*/
	
	IF ~~ THEN REPLY @92 /*~I did. (Explain what transpired in Amn.)~*/
	GOTO XA_ExplainAmn_R
	
	IF ~~ THEN REPLY @102 /*~I'd rather not discuss it.~*/
	GOTO XA_NoDiscuss
END

IF ~~ THEN BEGIN XA_ExplainTrial_NR
	SAY @90 /* ~(You tell her how you were framed for the murder of Skie, your trial, and how you were exiled from the city.)~*/
	
	= @91 /*~Goodness! What a nightmarish turn of events... did you find who was responsible for the murder?~*/
	
	IF ~~ THEN REPLY @92 /*~I did. (Explain what transpired in Amn.)~*/
	GOTO XA_ExplainAmn_NR
	
	IF ~~ THEN REPLY @102 /*~I'd rather not discuss it.~*/
	GOTO XA_NoDiscuss
END

IF ~~ THEN BEGIN XA_ExplainAmn_R
	SAY @93 /* ~Irenicus... I've not heard of a more evil and despicable villain. That you were able to reclaim your lost love and emerge triumphant, in spite of all that had transpired... it's truly inspiring.~  */
	
	IF ~~ THEN REPLY @97 /*~Many would find you an inspiration as well.~*/
	GOTO XA_Inspiration
	
	IF ~~ THEN REPLY @104 /*~Thank you. That's enough reminiscing, for now. Let's get moving.~*/
	GOTO XA_EnoughForNow
END

IF ~~ THEN BEGIN XA_ExplainAmn_NR
	SAY @95 /*~Irenicus... I've not heard of a more evil and despicable villain. That you were able to emerge triumphant, in spite of all that had transpired... it's truly inspiring.~ */
	
	IF ~~ THEN REPLY @97 /*~Many would find you an inspiration as well.~*/
	GOTO XA_Inspiration
	
	IF ~~ THEN REPLY @104 /*~Thank you. That's enough reminiscing, for now. Let's get moving.~*/
	GOTO XA_EnoughForNow
END

IF ~~ THEN BEGIN XA_Inspiration
	SAY @98 /* ~You flatter me. I am a cautionary tale, and nothing more.~*/
	
	IF ~~ THEN REPLY @99 /* ~Don't be ridiculous. You endured nearly as much suffering as Imoen and I did... perhaps more. Instead of wilting, you persevered, and you've committed yourself to a worthy cause.~ */
	GOTO XA_GivenUp
	
	IF ~~ THEN REPLY @118 /*~Look, Caelar. You've been given a new lease on life. Don't spend it dwelling on the past.~*/
	GOTO XA_NewLife
END

IF ~~ THEN BEGIN XA_GivenUp
	SAY @100 /*~You make it sound like I hadn't given up, but if I'm being honest... I did. Y-you know what he did to me.~*/
	
	IF ~
		OR(2)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			!Global("XA_LC_CorwinLoveBG2", "GLOBAL", 1)
	~ THEN REPLY @106 /*~Your will may have faltered, but you hadn't given up. I was in that same, dark place too you know. I nearly gave up when I was locked in that cell. If it weren't for Imoen...~*/
	GOTO XA_HadSomeone
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_LC_CorwinLoveBG2", "GLOBAL", 1)
	~ THEN REPLY @101 /*~Your will may have faltered, but you hadn't given up. I was in that same, dark place too you know. I nearly gave up when I was locked in that cell. If it weren't for Schael...~*/
	GOTO XA_HadSomeone
	
	IF ~~ THEN REPLY @118 /*~Look, Caelar. You've been given a new lease on life. Don't spend it dwelling on the past.~*/
	GOTO XA_NewLife
END

IF ~~ THEN BEGIN XA_NewLife
	SAY @119 /* ~You're right. Thank you, <CHARNAME>. I've been drowning in despair and self-pity... and I need to leave all of that behind. Come, the others are ready to get moving.~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_HadSomeone
	SAY @107 /* ~That's the difference between you and I. You had someone that loved you. You... drew strength from that. Who do I have? All of my closest friends were drawn in to the crusade. They're gone, as are all of my lieutenants.~ */
	
	IF ~~ THEN REPLY @108 /* ~You have your uncle. He loved you enough to sacrifice his freedom for yours.~*/
	GOTO XA_HasAun
	
	IF ~~ THEN REPLY @116 /*~Keep your head held high. You'll find someone, someday.~ */
	GOTO XA_WillFindSomeone
END

IF ~~ THEN BEGIN XA_WillFindSomeone
	SAY @117 /* ~I appreciate your kindness, <CHARNAME>, and the help you've given me since my release. Let's get moving. I've taken too much of your time already.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_HasAun
	SAY @109 /*~(Her expression turns to one of shock.)~*/
	
	= @110 /*~By the light! In my despair and self-pity, I hadn't even thought to let him know that I'm free! I ... I must see him!~*/
	
	IF ~
		!AreaCheck("AR4500")
	~ THEN REPLY @111 /*~Next time we're in the Pocket Plane, I will attempt to summon him.~*/
	DO ~
		SetGlobal("XA_LC_SummonAun", "GLOBAL", 1)
	~
	GOTO XA_WillSummonAun
	
	IF ~~ THEN REPLY @113 /*~You'll see him again once this is over.~*/
	GOTO XA_SeeUncleAfterQuest
	
	IF ~
		AreaCheck("AR4500")
	~ THEN REPLY @115 /* ~I believe that can be arranged. (Summon Aun through the Planar Gate.)~*/
	DO ~
		SetGlobal("XA_LC_SummonAun", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_WillSummonAun
	SAY @112 /* ~Oh, thank you! I am in your debt, my... friend. Let's go.~  */
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_SeeUncleAfterQuest
	SAY @114 /*~If the Morninglord wills it. Thank you, <CHARNAME>. You've been a great help to me, in my time of need... thank you.~*/
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_EnoughForNow
	SAY @105 /*~Very well. Thank you for taking the time, <CHARNAME>.~*/
	
	IF ~~ THEN 
	EXIT
END

IF ~~ THEN BEGIN XA_NoDiscuss
	SAY @103 /*~Very well. Let's get moving.~*/
	
	IF ~~ THEN
	EXIT
END
//}

//{ Dialog B-91
CHAIN IF WEIGHT #0~
	IsGabber("XACAELAR")
	TriggerOverride("Sarevok", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Sarevok", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN BSAREV25 XA_CaelarSarevokBanter1Chain
	@0 /*~It's interesting isn't it?~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~
	== XACAELAB
	@1 /*~Pardon?~*/
	== BSAREV25
	@2 /*~<CHARNAME>, the others... everyone for that matter is so enamoured you, our 'Shining Lady'.~*/
	= @3 /*~What is it about you that causes them to overlook that you're responsible for the deaths of countless innocents? More blood is on your hands than even the worst of the Bhaalspawn, including myself.~*/
	== XACAELAB
	@4 /*~I cannot change the past. All I can do is hope that my actions, from this point forward, serve the greater good.~*/
	== BSAREV25
	@5 /*~The greater good, or your own good? If you think that helping <CHARNAME> will spare you from the gallows, you're mistaken.~*/
	== XACAELAB
	@6 /*~Enough. If I were you, I'd be more concerned with my own salvation.~  */
	== BSAREV25
	@7 /*~Hmph.~*/
EXIT
//}

//{ Dialog B-92
CHAIN IF WEIGHT #0~
	IsGabber("XACAELAR")
	TriggerOverride("Keldorn", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Keldorn", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN BKELDO25 XA_CaelarKeldornBanter1Chain
	@8 /* ~Lady Argent, I never dreamed that I would one day fight alongside an aasimar. It's been quite an honor.~ */
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~
	== XACAELAB
	@9 /* ~The honor is mine. <CHARNAME> chose <PRO_HISHER> companions well, Sir Keldorn.~*/
	== BKELDO25
	@11 /*~Perhaps when this quest is over, you would accompany me back to the Order of the Radiant Heart? Our knights and priests would benefit from the wisdom you'd impart to them.~*/
	== XACAELAB
	@12 /* ~Wisdom? I appreciate that you hold me in such regard, but in order to share something one must first posess it. My foolishness led to the deaths of hundreds if not thousands, and very nearly resulted in the legions of Avernus pouring in to the Material Plane.~*/
	== BKELDO25
	@13 /* ~I understand your apprehension. My order would still be well served in learning that even the most righteous can falter from time to time. What matters not is our mistakes, but rather what we do to right the wrongs that have been committed.~*/
	== XACAELAB
	@14 /* ~Thank you... I will take some time to consider your offer. Come. We are called to duty.~ */
EXIT
//}

//{ Dialog B-93
CHAIN IF WEIGHT #0~
	IsGabber("XACAELAR")
	TriggerOverride("Rasaad", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Rasaad", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN BRASAA25 XA_CaelarRasaadBanter1Chain
	@21 /*~Caelar? Your hand is trembling — is something wrong?~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~
	== XACAELAB
	@22 /*~It's nothing, Rasaad. I was just remembering...~*/ 
	== BRASAA25
	@23 /*~Avernus?~*/
	== XACAELAB
	@24 /*~Yes. I... I can still feel the heat of that place... the screams... the smell of sulfur, and his... his touch on my skin.~*/
	= @25 /*~(She shudders.)~*/
	== BRASAA25
	@26 /*~Few have journeyed to one of the Nine Hells and returned. Fewer have been subjected to the kind of abuse that you endured. People that have suffered through traumatic experiences like you have often benefit from discussing their experience. When you are ready, I'll be there for you.~ */
	== XACAELAB
	@27 /*~Thank you, Rasaad. I just need more time.~*/
	== BRASAA25
	@28 /*~Of course. Come — the others are waiting.~ */
EXIT
//}

//{ Dialog B-94
CHAIN IF ~
	IsGabber("Jaheira")
	TriggerOverride("Jaheira", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Jaheira", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN XACAELAB XA_CaelarJaheiraBanter1Chain
	@29 /*~Jaheria... a moment of your time?~*/
	== BJAHEI25
	@30 /*~Of course, Lady Argent. What is it?~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~
	== XACAELAB
	@31 /*~I learned from the others that you recently lost your husband, Khalid. Is he the very same Khalid that led the defense of Bridgefort?~*/
	== BJAHEI25
	@32 /*~Yes... I miss him dearly.~*/
	== XACAELAB
	@33 /*~He was a great warrior, with a good heart. My lieutenants spoke highly of him... I recall hearing how he would treat our captured crusaders with kindness and mercy... I'm sorry that your last weeks together had to be spent on the battlefield.~*/
	== BJAHEI25
	@34 /*~Khalid and I were always on the road. Often, we'd talk about settling down, but... we were Harpers, you see, and we were sent wherever we were needed. We knew the risks, but nothing could've prepared me for his loss. It does please me to know that he was so highly regarded, not just by his friends and allies, but also his crusader adversaries.~*/
	== XACAELAB
	@35 /*~Indeed... take solace in that you will one day be reunited.~*/
	== BJAHEI25
	@36 /* ~I do. Thank you, Caelar.~ */
EXIT
//}

//{ Dialog B-95
CHAIN IF WEIGHT #0~
	IsGabber("XACAELAR")
	TriggerOverride("Mazzy", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Mazzy", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN BMAZZY25 XA_CaelarMazzyBanter1Chain
	@55 /*~Lady Argent, do you have a moment?~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~
	== XACAELAB
	@37 /*~Yes, Mazzy. What can I do for you?~ */
	== BMAZZY25
	@38 /* ~A question, if I may. I did not bear witness to your crusade, though I hear that you were able to unite a mix of different races to your cause. Every army that I've seen was homogenous. How did you get men, elves and dwarves to fight under the same banner?~*/
	== XACAELAB
	@39 /* ~Not just men, elves and dwarves. Gnomes, drow, half-orcs, hobgoblins... even trolls.~*/
	== BMAZZY25
	@40 /* ~How did you do it?~*/
	== XACAELAB
	@41 /* ~By focusing not on what divides us, but rather, what unites us. The people that joined the crusade were united by their loss. They had all lost someone or something that was dear to them. The crusade filled them with hope that what was lost could be recovered.~*/
	== BMAZZY25
	@42 /* ~I see... but, in the case of the crusade, it was a false hope.~*/
	== XACAELAB
	@43 /*~I... I... I believed in what we were doing. The soldiers believed in me. I led them astray... all of them. All those people...~ */
	== BMAZZY25
	@44 /* ~I didn't mean to stir up bad memories — I just found it remarkable that you were able to bring so many people together.~*/
	== XACAELAB
	@45 /* ~Yes... I hope that the people can be united once again, this time by a leader and a cause that that is worthy of them. Let's go.~ */
EXIT
//}

//{ Dialog B-96
CHAIN IF WEIGHT #0~
	IsGabber("XACAELAR")
	Global("XA_LC_DornProposal", "GLOBAL", 1)
~ THEN BDORN25 XA_CaelarDornBanter1Chain
	@56 /*~Caelar...~*/
	DO ~
		SetGlobal("XA_LC_DornProposal", "GLOBAL", 2)
	~
	== XACAELAB
	@46 /*~Out with it, blackguard.~*/
	== BDORN25
	@47 /*~My master has a proposal—~*/
	== XACAELAB
	@48 /*~I've no interest in becoming a slave to a demon.~*/
	== BDORN25
	@49 /*~You haven't even heard the offer.~*/
	== XACAELAB
	@50 /*~I don't need to. I want nothing from you, or your master, other than to keep your distance.~*/
	== BDORN25
	@51 /*~Your powers as an aasimar, augmented by the gifts of the dark... you'd be unstoppable! Immortal, even! You'd be a fool to turn it down!~*/
	== XACAELAB
	@52 /*~Then I am a fool.~*/
	== BDORN25
	@53 /*~Your death will come one day, aasimar. Where is it do you think that you will go? Back to Avernus no doubt, to pay for the many crimes committed on your behalf. Is that the fate you really want?~*/
	== XACAELAB
	@54 /*~Begone! Try and tempt me again, slave, and you and I will have more than words!~*/
EXIT
//}

//{ Dialog B-97
CHAIN IF ~
	IsGabber("Aerie")
	Global("XA_LC_CaelarAerieScars", "GLOBAL", 1)
	Global("XA_LC_CorwinAerieScars", "GLOBAL", 1)
	InParty("XACORWIN")
~ THEN XACAELAB XA_CaelarAerieScars
	@59 /*~Good... we could all use some rest. Aerie — would you help me with my armor?~*/
	DO ~
		SetGlobal("XA_LC_CaelarAerieScars", "GLOBAL", 2)
	~
	== BAERIE25
	@60 /*~Of course, my lady.~*/
	= @61 /*~(As she lifts Caelar's chainmail, she momentarily lifts her vestment with it, and exposes a truly hideous scar on the aasimar's back.)~*/
	= @57 /*~Oh my! Caelar, I — I'm so sorry!~*/
	== XACAELAB
	@62 /*~It's alright, Aerie.~*/
	== BAERIE25
	@63 /*~D-did they do that to you, in Avernus?~*/
	== XACAELAB
	@64 /*~They did far worse than that, I'm afraid.~*/
	== BAERIE25
	@66 /*~You know, Schael told me that scars help us remember that we are stronger than those that tried to hurt us. She's right.~*/
	== XACAELAB
	@67 /*~Maybe for you and her, that's true... but I look at mine differently. My scars remind me of the good men and women that are dead because of my actions. I have use what's left of this life to make their deaths count for something.~*/
	== BAERIE25
	@68 /*~You are, by helping us. Come, let's get some rest.~*/
	DO ~
		RestParty()
	~
EXIT
//}

//{ Dialog B-98
CHAIN IF ~
	IsGabber("Aerie")
	Global("XA_LC_CaelarAerieScars", "GLOBAL", 1)
	OR(2)
		!Global("XA_LC_CorwinAerieScars", "GLOBAL", 1)
		!InParty("XACORWIN")
~ THEN XACAELAB XA_CaelarAerieScars
	@59 /*~Good... we could all use some rest. Aerie — would you help me with my armor?~*/
	DO ~
		SetGlobal("XA_LC_CaelarAerieScars", "GLOBAL", 2)
	~
	== BAERIE25
	@60 /*~Of course, my lady.~*/
	= @61 /*~(As she lifts Caelar's chainmail, she momentarily lifts her vestment with it, and exposes a truly hideous scar on the aasimar's back.)~*/
	= @57 /*~Oh my! Caelar, I — I'm so sorry!~*/
	== XACAELAB
	@62 /*~It's alright, Aerie.~*/
	== BAERIE25
	@63 /*~D-did they do that to you, in Avernus?~*/
	== XACAELAB
	@64 /*~They did far worse than that, I'm afraid.~*/
	== BAERIE25
	@65 /*~Oh, you poor thing...~ */
	== XACAELAB
	@69 /*~It's what I deserve. These scars serve to remind me of the good men and women that are dead because of my actions. I have use what's left of this life to make their deaths count for something.~*/
	== BAERIE25
	@68 /*~You are, by helping us. Come, let's get some rest.~*/
	DO ~
		RestParty()
	~
EXIT
//}

//{ Dialog B-99
CHAIN IF ~
	IsGabber("Neera")
	TriggerOverride("Neera", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Neera", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN XACAELAB XA_CaelarNeeraBanter1Chain
	@76 /*~Neera, a word please.~*/
	== BNEERA25
	@77 /*~Sure Caelar, what's on your mind?~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~
	== XACAELAB
	@78 /*~I've heard of your kind before... wild mages, yes?~*/
	== BNEERA25
	@79 /*~Uh huh. What about it?~*/
	== XACAELAB
	@80 /*~I've also heard how destructive and how out of control these wild surges of yours can be. If you lost your focus...~*/
	== BNEERA25
	@81 /*~Here we go again.~*/
	== XACAELAB
	@82 /*~... in the middle of a town, or during a battle, you could —~*/
	== BNEERA25
	@70 /* ~Enough! Everyone always complains about my wild surges, and I'm tired of it! Once I open up a portal to the hells, or ravage a countryside or two, then *you* can complain, but not before!~ */
	== XACOR25J
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	@83 /*~Neera!~*/
	== XACAELAB
	@71 /*~...~*/
	== BNEERA25
	@72 /*~I, um... I didn't mean that. It was kind of a low blow, wasn't it... I'm sorry.~*/
	== XACAELAB
	@73 /*~Don't worry about it. You're right. I was foolish, and my mistakes cost many lives. I just don't want you to err in the same ways that I did.~*/
	== BNEERA25
	@74 /*~I appreciate your concern, but let me handle this in my own way.~*/
	== XACAELAB
	@75 /*~Fair enough. Let's go.~*/
EXIT

//}

//{ Dialog B-103 OK
CHAIN IF ~
	IsGabber("Jan")
	TriggerOverride("Jan", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Jan", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN XACAELAB XA_CaelarJanBanter1Chain
	@133 /*@133=~Stand aside, Jan.~*/
	== BJAN25
	@134 /*@134=~Not so fast. You know, I once led a crusade myself.~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~
	== XACAELAB
	@135 /*@135=~Is that so?~*/
	== BJAN25
	@136 /*@136=~Yes. Against turnip weeds. Rooted everywhere. Impossible to negotiate with. My Uncle Scratchy lost three garden sheds before we finally pushed them back beyond the cabbage patch.~*/
	== XACAELAB
	@137 /*@137=~I suspect none of that is true.~ */
	== BJAN25
	@138 /*@138=~That's exactly what the turnip weeds wanted people to think.~ */
	== XACAELAB
	@139 /*@139=~I have no time for foolishness. Lives are at stake.~ */
	== BJAN25
	@140 /* @140=~Oh, I understand completely. Why, my Aunt Pindle once became convinced her teapot was possessed by a fiend. Turned out to be a raccoon, but the principle remains.~*/
	== XACAELAB
	@141 /* @141=~Those situations seem remarkably different.~*/
	== BJAN25
	@142 /* @142=~You'd be surprised how often raccoons and fiends overlap.~*/
	== XACAELAB
	@143 /*@143=~...~ */
	== BJAN25
	@143 /*@143=~...~ */
	== XACAELAB
	@143 /*@143=~...~ */
	== BJAN25
	@144 /*@144=~If you encounter any raccoons claiming infernal heritage, remember what I told you.~ */
	== XACAELAB
	@145 /* @145=~I won't.~*/
	== BJAN25 
	@146 /*@146=~That's usually how these things start.~ */
EXIT
//}

//{ Dialog B-104 OK
CHAIN IF WEIGHT #0~
	IsGabber("Edwin")
	TriggerOverride("Edwin", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Edwin", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN BEDWIN25 XA_CaelarEdwinBanter1Chain
	@147 /*@147=~You continue to stare at me, Argent. I can only assume you are admiring the rare combination of intellect, grace, and arcane mastery before you.~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~
	== XACAELAB
	@148 /*@148=~I was remembering why I expelled you from my crusade.~~ */
	== BEDWIN25
	@149 /* @149=~Ah, yes. A regrettable decision born of insecurity.~*/
	== XACAELAB
	@150 /*@150=~It was born of necessity.~ */
	== BEDWIN25
	@151 /* @151=~Nonsense. My strategic insights were invaluable.~*/
	== XACAELAB
	@152 /*@152=~Your first strategic insight was to charge admission to the camp chapel. You stationed mercenaries at the entrance and called it "The Sacred Fast-Pass."~ */
	== BEDWIN25
	@153	/* @153=~Maintenance is expensive.~*/		
	== XACAELAB
	@154	/*@154=~It was a tent. I should have dismissed you then, before you attempted to reorganize the officer corps.~ */
	== BEDWIN25
	@155	/*@155=~They lacked proper hierarchy.~ */	
	== XACAELAB
	@156	/* @156=~You replaced every title with "Assistant to Edwin."~*/
	== BEDWIN25
	@157	/*@157=~Clear chains of command save lives.~ */
	== XACAELAB
	@158	/* @158=~There were thirty-seven Assistants to Edwin. It was then that I summoned you and informed you that your services were no longer required. You responded by invoicing the crusade for "intellectual enrichment services", and you even charged a consultation fee for the dismissal itself.~*/
	== BEDWIN25
	@159	/*~@159=~That invoice you are referring to is in arrears. I intend to collect before our little adventure concludes.~*/
	== XACAELAB
	@160 /*@160=~I'd gladly give you the last copper to my name if it means I never have to deal with your pedantry again.~ */
	== BEDWIN25
	@161 /* @161=~Hmph.~*/
EXIT
//}

//{ Dialog B-105 OK
CHAIN IF ~
	IsGabber("Minsc")
	TriggerOverride("Minsc", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Minsc", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN XACAELAB XA_CaelarMinscBanter1Chain
	@162 /*@162=~You charge into battle as though fear were a thing that happens only to other people.~*/
	== BMINSC25
	@163 /*~That is because Boo and I have an agreement! Fear stays away, and in return we bring him many evil-doers to chew on.~ */
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~
	== XACAELAB
	@164	/* @164=~A remarkable arrangement. I assume Boo negotiated the terms?~*/
	
	== BMINSC25
	@165	/*@165=~Naturally. Boo is a hamster of uncommon wisdom. I merely provide the muscles, the shouting, and occasional tactical brilliance.~ */
	
	== XACAELAB
	@166	/* @166=~Occasional?~*/
	
	== BMINSC25
	@167	/* @167=~Even heroes must remain humble.~*/
	
	== XACAELAB
	@168	/* @168=~I have led crusades across the Sword Coast, and I confess I have never once received military advice from a hamster.~*/
	
	== BMINSC25
	@169	/* @169=~Then your crusade suffered from a lack of hamsters.~*/
	
	== XACAELAB
	@170	/* @170=~That was not among the problems listed by my commanders.~*/
	
	== BMINSC25
	@174	/* @174=~Ah! Then they were poor commanders.~*/

	== XACAELAB
	@171	/* @171=~You reduce every matter to astonishing simplicity.~~*/
	
	== BMINSC25
	@172	/* @172=~@172=~Evil is simple. It hurts people. Then Minsc hits it with a sword. Very efficient.~*/

	== XACAELAB
	@173	/* @173=~If only the world were so easily mended.~*/
EXIT
//}

//{ Dialog B-106 OK
CHAIN IF WEIGHT #0~
	IsGabber("Nalia")
	TriggerOverride("Nalia", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Nalia", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN BNALIA25 XA_CaelarNaliaBanter1Chain
	@175 /*@175=~Lady Argent, you speak of sacrifice as though it were a virtue unto itself.~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~
	== XACAELAB
	@176	/* @176=~Sacrifice is a virtue when it serves a greater purpose.~*/
	
	== BNALIA25
	@177 /*@177=~That's easy to say when others are the ones making it.~ */
	== XACAELAB
	@178 /* @178=~And easy to criticize when one has inherited comfort and privilege.~*/
	
	== BNALIA25
	@179 /* @179=~I didn't ask to inherit either. I only refuse to pretend they're a substitute for justice.~*/
	== XACAELAB
	@180 /*@180=~Justice often demands difficult choices.~ */

	== BNALIA25
	@181 /* @181=~It also demands listening to the people who must live with those choices.~*/
	== XACAELAB
	@182 /* @182=~A leader who listens to every voice risks never acting at all.~*/

	== BNALIA25
	@183 /*@183=~A leader who listens to none risks becoming convinced that every mistake is necessary.~ */
	== XACAELAB
	@184 /* @184=~...Perhaps that is why neither of us finds leadership as simple as we'd hoped.~*/

EXIT
//}

//{ Dialog B-108 OK
CHAIN IF WEIGHT #0~
	IsGabber("HaerDalis")
	TriggerOverride("HaerDalis", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("HaerDalis", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN BHAERD25 XA_CaelarHaerDalisBanter1Chain
	@195 /*@195=~Ah, the Shining Lady. A heroine draped in conviction, marching across the stage of Faerûn as though destiny itself had written her cues.~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~

	== XACAELAB
	@196	/* @186=~That depends. Is it about my shooting?~*/

	== BHAERD25	
	@197 /* @197=~Quite the opposite. Conviction is a splendid thing. It gives tragedies their momentum.~*/

	== XACAELAB
	@198	/* @198=~You view everything as a performance.~*/

	== BHAERD25	
	@199 /* @199=~Is it not so? Lovers deliver monologues, kings wear costumes, villains enter from stage left with alarming regularity.~*/

	== XACAELAB
	@200	/* @200=~And what role do you imagine for yourself?~*/

	== BHAERD25	
	@201 /* @201=~The clever supporting character who survives by speaking in riddles.~*/

	== XACAELAB
	@202	/* @202=~That's not what I would call an ambitious goal.~*/

	== BHAERD25	
	@203 /* @203=~Better than the hero. Heroes attract far too much suffering.~*/

	== XACAELAB
	@204	/*@204=~On that point, at least, we agree.~ */

	== BHAERD25	
	@205 /* @205=~Ah! Then perhaps this play yet holds hope for one of its leading ladies.~*/

	== XACAELAB
	@206	/*@206=~If it does, I suspect the playwright has a cruel sense of humor.~ */

	== BHAERD25	
	@207 /*@207=~The finest playwrights always do.~ */
EXIT
//}

//{ Dialog B-109 OK
CHAIN IF WEIGHT #0~
	IsGabber("Korgan")
	TriggerOverride("Korgan", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Korgan", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN BKORGA25 XA_CaelarKorganBanter1Chain
	@208 /*@208=~Bah, another self-righteous knight. Tell me, lass, do ye polish that armor more than ye swing that sword?~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~

	== XACAELAB
	@209	/* @209=~Only when I'm expecting dwarves with strong opinions and weak manners.~*/

	== BKORGA25	
	@210 /* @210=~Hah! Ye've got a tongue on ye, I'll grant that.~*/

	== XACAELAB
	@211	/* @211=~And you have a penchant for solving every problem with an axe.~*/

	== BKORGA25	
	@212 /* @212=~Aye, that's because it works.~*/

	== XACAELAB
	@213	/*@213=~For chopping wood, certainly.~ */

	== BKORGA25	
	@214 /*@214=~And skulls. Never forget skulls.~ */

	== XACAELAB
	@215	/*@215=~An important distinction. I shall amend my notes accordingly.~ */

	== BKORGA25	
	@216 /*@216=~Yer mockin' me, but I almost like ye.~ */

	== XACAELAB
	@217	/* @217=~That's the nicest threat I've received all week.~*/
EXIT
//}

//{ Dialog B-110 OK
CHAIN IF WEIGHT #0~
	IsGabber("Anomen")
	TriggerOverride("Anomen", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Anomen", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN BANOME25 XA_CaelarAnomenBanter1Chain
	@218 /*@218=~Lady Argent, your crusade inspired a remarkable degree of loyalty. Such devotion could not have been easily won.~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~

	== XACAELAB
	@219	/* @219=~Nor was it easily kept. Leadership is a burden, not a reward.~*/

	== BANOME25	
	@220 /* @220=~A sentiment with which I am familiar. Many expect greatness from those chosen to lead.~.~*/

	== XACAELAB
	@221	/* @221=~And do you consider yourself among the chosen?~*/

	== BANOME25	
	@222 /* @222=~I strive to be worthy of such distinction.~~.~*/

	== XACAELAB
	@223	/* @223=~That is not quite an answer.~*/

	== BANOME25	
	@224 /* @224=~Then allow me to be clearer: yes.~~.~*/

	== XACAELAB
	@225	/* @225=~Your honesty is refreshing, if somewhat alarming.~*/

	== BANOME25	
	@226 /* @226=~Ambition is not a vice when tempered by duty.~.~*/

	== XACAELAB
	@227	/* @227=~No. But duty has a way of revealing whether ambition serves others or merely itself.~*/

	== BANOME25	
	@228 /* @228=~You speak as though you have never wrestled with pride.~*/

	== XACAELAB
	@229	/* @229=~On the contrary. I better than most know that pride leads to one's downfall. Take care not to repeat my mistakes.~*/

	== BANOME25
	@230	/* @230=~Aye. Duty calls us both. After you, my lady.~*/

EXIT
//}

//{ Dialog B-111 OK
CHAIN IF WEIGHT #0~
	IsGabber("Imoen2")
	TriggerOverride("Imoen2", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Imoen2", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN BIMOEN25 XA_CaelarImoenBanter1Chain
	@231 /*~Retired menace to world peace, professional regret-haver, and turner of a new leaf Caelar Argent. How's post-epic-villain life treating you?~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~

	== XACAELAB
	@232	/* @219=~Nor was it easily kept. Leadership is a burden, not a reward.~*/

	== BIMOEN25
	@233 /*@233=~I like you already. Most people go for "misunderstood icon" or "tragic legend." You went with honesty.~ */

	== XACAELAB
	@234 /*@234=~Honesty is... easier now. There is no army to impress, no crusade to justify.~ */

	== BIMOEN25
	@235 /*@235=~Look at that. We're basically bonding. Next thing you know, you'll be telling me your deepest tragic backstory over tea.~ */

	== XACAELAB
	@236 /* @236=~I suspect mine is already widely known.~*/

	== BIMOEN25
	@237 /* @237=~Sure, but I want the unpublished edition. The footnotes. The embarrassing parts.~*/

	== XACAELAB
	@238 /* @238=~There are no embarrassing parts.~*/

	== BIMOEN25
	@239 /* @239=~That was too fast. Definitely suspicious.~*/

	== XACAELAB
	@240 /* @240=~Perhaps I will revise my answer.~*/

	== BIMOEN25
	@241 /* @241=~Ha! There it is. Growth.~*/

	== XACAELAB
	@242 /* @242=~And what of you? Do you ever tire of levity?~*/

	== BIMOEN25
	@243 /* @243=~Only when I'm asleep. Or being chased. Or trapped. Or tortured by a maladjusted, scar-faced wizard. Or... okay, I guess I'm serious plenty.~*/

	== XACAELAB
	@244 /* @244=~Good, because I have a feeling that seriousness will see us though the battles ahead. Let's go.~*/
EXIT
//}

//{ Dialog B-112 OK
CHAIN IF WEIGHT #0~
	IsGabber("Viconia")
	TriggerOverride("Viconia", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Viconia", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN BVICON25 XA_CaelarViconiaBanter1Chain
	@245 /*~The Shining Lady, unburdened of her ill-fated crusade. Tell me, how many drow answered your grand call to salvation?~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~

	== XACAELAB
	@246 /*@246=~None. I did not expect otherwise.~ */

	== BVICON25
	@247 /* @247=~None. How remarkable. Even Lolth's least loyal children found your vision unconvincing.~*/

	== XACAELAB
	@248 /*@248=~Or they saw no place for themselves in it.~ */

	== BVICON25
	@249 /* @249=~A generous interpretation. I would call it clarity of judgment.~*/

	== XACAELAB
	@250 /*@250=~You take satisfaction in that?~ */

	== BVICON25
	@251 /* @251=~I take satisfaction in truth. Your war promised redemption through force. Drow know force intimately. We are unimpressed by it.~*/

	== XACAELAB
	@252 /* @252=~My crusade was not meant to impress.~*/

	== BVICON25
	@253 /* @253=~And yet it failed to inspire even desperation. That is a harsher verdict.~*/

	== XACAELAB
	@254 /* @254=~You assume I measure worth by numbers of followers.~*/

	== BVICON25
	@255 /* @255=~Do you not? Most leaders do, whether they admit it or not.~*/

	== XACAELAB
	@256 /* @256=~I have learned that numbers can be as misleading as devotion.~*/

	== BVICON25
	@257 /* @257=~A useful lesson. Pity it arrived after your army did.~ */
EXIT
//}

//{ Dialog B-113 OK
CHAIN IF WEIGHT #0~
	IsGabber("Hexxat")
	TriggerOverride("Hexxat", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Hexxat", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN BHEXXA25 XA_CaelarHexxatBanter1Chain
	@271 /*@271=~The Shining Lady. How tiresome that mortals still whisper your name instead of forgetting it.~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~

	== XACAELAB
	@272 /* @272=~I would say the same of you, but I doubt you've ever been worth remembering — only feared.~*/

	== BHEXXA25
	@273 /* @273=~Fear has its uses. It keeps people honest. Unlike your little crusade of delusions.~*/

	== XACAELAB
	@274 /* @274=~You cling to undeath as though it were triumph, and you accuse me of delusions?~*/

	== BHEXXA25
	@275 /*@275=~It is survival perfected. No doubt, no fading, no pathetic end in some muddy field.~ */

	== XACAELAB
	@276 /* @276=~Only a hollow existence masquerading as victory.~*/

	== BHEXXA25
	@277 /*@277=~Says the woman whose crusade ended in ruin and reflection.~ */

	== XACAELAB
	@278 /* @278=~Ruin is temporary. What you are is permanent degradation.~*/

	== BHEXXA25
	@279 /*@279=~And yet I persist, while your righteousness required a grave to collapse.~ */

	== XACAELAB
	@280 /* @280=~Then take care to safeguard your persistence. Speak to me in such a way again and I will end it.~*/
EXIT
//}

//{ Dialog B-114 OK
CHAIN IF WEIGHT #0~
	IsGabber("Valygar")
	TriggerOverride("Valygar", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Valygar", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN BVALYG25 XA_CaelarValygarBanter1Chain
	@258 /*@258=~So you're the Shining Lady. I expected... more certainty, given your reputation.~*/
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~

	== XACAELAB
	@259 /* @259=~Certainty is often what leads men into fire thinking it is light.~*/

	== BVALYG25 
	@260 /* @260=~And yet you led many into fire all the same.~*/

	== XACAELAB
	@261 /* @261=~I led them believing it was salvation.~*/

	== BVALYG25 
	@262 /* @262=~Even if that were true, intent does not change outcome.~*/

	== XACAELAB
	@263 /* @263=~No. But it changes what one becomes after the outcome.~*/

	== BVALYG25 
	@264 /* @264=~A dangerous comfort.~*/

	== XACAELAB
	@265 /*@265=~Perhaps. You speak as one who avoids leadership entirely.~ */

	== BVALYG25 
	@266 /* @266=~I avoid causes that demand blind faith. I've seen what they do to people.~*/

	== XACAELAB
	@267 /* @267=~Then we share at least one lesson learned through loss.~*/

	== BVALYG25 
	@268 /* @268=~Maybe. But I learned mine before I brought others with me.~*/

	== XACAELAB
	@269 /* @269=~And I learned mine after. That is the difference you judge me by.~*/

	== BVALYG25 
	@270 /* @270=~It is not judgment. It is an acknowledgement of fact.~*/

EXIT
//}


//{ Dialog B-115 OK
CHAIN IF ~
	IsGabber("Cernd")
	TriggerOverride("Cernd", Global("XA_LC_CaelarBanterPending", "LOCALS", 1))
	TriggerOverride("Cernd", Global("XA_LC_CaelarBanters", "LOCALS", 0))
~ THEN XACAELAB XA_CaelarCerndBanter1Chain
	@281 /* @281=~I once believed my crusade was righteous. Now I wake to the echo of every life it shattered.~*/	

	== BCERND25
	@282 /*@282=~Remorse is the first soil in which wisdom may take root, though it is often bitter ground.~ */
	DO ~
		SetGlobal("XA_LC_CaelarBanterPending", "LOCALS", 0)
		IncrementGlobal("XA_LC_CaelarBanters", "LOCALS", 1)
	~

	== XACAELAB 
	@283 /*@283=~Bitter, yes. I see now I brought ruin where I swore to bring salvation.~ */

	== BCERND25
	@284 /* @284=~Many who seek to save the world forget it does not wish to be conquered, even for its own good.~*/

	== XACAELAB 
	@285 /* @285=~In convincing myself the ends justified the march forward, I've become a warning more than a champion.~*/

	== BCERND25
	@286 /* @286=~A warning, perhaps, but also a living branch that may yet bend differently in new winds.~*/

	== XACAELAB 
	@287 /* @287=~Do you think balance can forgive what I have done?~ */

	== BCERND25
	@288 /* @288=~Balance does not forgive or condemn; it absorbs, and in time, reshapes even tragedy.~*/

	== XACAELAB 
	@289 /* @289=~Then I will endure whatever shape it gives me next, if it means no more such devastation.~*/

	== BCERND25
	@290 /* @290=~That resolve, tempered by sorrow, is closer to harmony than your crusade ever was.~ */

EXIT
//}