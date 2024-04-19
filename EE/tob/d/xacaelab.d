BEGIN ~XACAELAB~

//{ Dialog B-102
IF ~
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
		AddJournalEntry(@125, INFO)
	~
	EXIT
END
//}

//{ Dialog B-101
IF ~
	Global("XA_LC_Banter_CaelarPlayer", "GLOBAL", 2)
~ THEN BEGIN XA_CaelarPlayerBanter1Chain
	SAY @120 /* ~<CHARNAME>, a moment if I may. What happened after I stayed behind in Avernus? To you, I mean. Your power has grown significantly since I first saw you at the Coast Way Crossing.~*/
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @89 /* ~That's going to take a while... (Explain what happened after the events of Dragonspear.)~ */
	DO ~
		SetGlobal("XA_LC_Banter_CaelarPlayer", "GLOBAL", 3)
	~
	GOTO XA_ExplainTrial_NR
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @89 /* ~That's going to take a while... (Explain what happened after the events of Dragonspear.)~ */
	DO ~
		SetGlobal("XA_LC_Banter_CaelarPlayer", "GLOBAL", 3)
	~
	GOTO XA_ExplainTrial_R
	
	IF ~~ THEN REPLY @102 /*~I'd rather not discuss it.~*/
	DO ~
		SetGlobal("XA_LC_Banter_CaelarPlayer", "GLOBAL", 3)
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
CHAIN IF ~
	Global("XA_LC_Banter_CaelarSarevok", "GLOBAL", 2)
~ THEN BSAREV25 XA_CaelarSarevokBanter1Chain
	@0 /*~It's interesting isn't it?~*/
	DO ~
		SetGlobal("XA_LC_Banter_CaelarSarevok", "GLOBAL", 3)
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
CHAIN IF ~
	Global("XA_LC_Banter_CaelarKeldorn", "GLOBAL", 2)
~ THEN BKELDO25 XA_CaelarKeldornBanter1Chain
	@8 /* ~Lady Argent, I never dreamed that I would one day fight alongside an aasimar. It's been quite an honor.~ */
	DO ~
		SetGlobal("XA_LC_Banter_CaelarKeldorn", "GLOBAL", 3)
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
CHAIN IF ~
	Global("XA_LC_Banter_CaelarRasaad", "GLOBAL", 2)
~ THEN BRASAA25 XA_CaelarRasaadBanter1Chain
	@21 /*~Caelar? Your hand is trembling — is something wrong?~*/
	DO ~
		SetGlobal("XA_LC_Banter_CaelarRasaad", "GLOBAL", 3)
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
	Global("XA_LC_Banter_CaelarJaheira", "GLOBAL", 2)
~ THEN XACAELAB XA_CaelarJaheiraBanter1Chain
	@29 /*~Jaheria... a moment of your time?~*/
	DO ~
		SetGlobal("XA_LC_Banter_CaelarJaheira", "GLOBAL", 3)
	~
	== BJAHEI25
	@30 /*~Of course, Lady Argent. What is it?~*/
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
CHAIN IF ~
	Global("XA_LC_Banter_CaelarMazzy", "GLOBAL", 2)
~ THEN BMAZZY25 XA_CaelarMazzyBanter1Chain
	@55 /*~Lady Argent, do you have a moment?~*/
	DO ~
		SetGlobal("XA_LC_Banter_CaelarMazzy", "GLOBAL", 3)
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
CHAIN IF ~
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
	Global("XA_LC_Banter_CaelarNeera", "GLOBAL", 2)
~ THEN XACAELAB XA_CaelarNeeraBanter1Chain
	@76 /*~Neera, a word please.~*/
	DO ~
		SetGlobal("XA_LC_Banter_CaelarNeera", "GLOBAL", 3)
	~
	== BNEERA25
	@77 /*~Sure Caelar, what's on your mind?~*/
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