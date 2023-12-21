BEGIN ~XAASHASP~

IF ~
	Global("XA_CaelarSuicide", "GLOBAL", 2)
~ THEN BEGIN XA_CaelarSuicide
	SAY @57  /* ~You've returned... we sensed Caelar's passing, and the way to the beyond is open to us. Before we depart this plane, tell me... how did she die?~*/
	
	IF ~~ THEN REPLY @58  /* ~Not well. (Explain what happened.)~*/
	DO ~
		SetGlobal("XA_CaelarSuicide", "GLOBAL", 3)
	~
	GOTO XA_CaelarSuicide_2A
	
	IF ~~ THEN REPLY @59  /* ~It matters not. Go now, spirit.~*/
	DO ~
		SetGlobal("XA_CaelarSuicide", "GLOBAL", 3)
	~
	GOTO XA_CaelarSuicide_2B
END

IF ~~ THEN BEGIN XA_CaelarSuicide_2A
	SAY @61 /* ~You're cruelty is boundless, Bhaalspawn... but I've no tears left to spare. This wretched crusade began in blood, and thus so it has ended. Farewell.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_OathRelease", "GLOBAL", 1)
		SetGlobal("XA_LC_Journal_Ashatiel", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CaelarSuicide_2B
	SAY @60 /* ~Very well, then. Thank you <CHARNAME>, and farewell.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_OathRelease", "GLOBAL", 1)
		SetGlobal("XA_LC_Journal_Ashatiel", "GLOBAL", 3)
	~
	EXIT
END

IF ~
	OR(2)
		InMyArea("XACAELA2")
		Global("XA_OathRelease", "GLOBAL", 1)
~ THEN BEGIN XA_ThankYou
	SAY @56 /*~Thank you for bringing Caelar back to us.~*/
	
	IF ~~ THEN
	EXIT
END

IF ~
	IsGabber("Sarevok")
~ THEN BEGIN XA_SarevokAshatiel
	SAY @54 /* ~I will not have words with you, beast. You, who are responsible for the murder of my brother, Arran.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~
	IsGabber("Aerie")
	GlobalLT("XA_AerieAshatiel", "GLOBAL", 1)
~ THEN BEGIN XA_AerieAshatiel
	SAY @42 /* ~Yes, child?~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_AerieAshatiel", "GLOBAL", 1)
	~
	EXTERN AERIEJ XA_AerieAshatielChain
END

IF ~
	Global("XA_HelpAshatiel", "GLOBAL", 1)
~ THEN BEGIN XA_AgreedToHelp
	SAY @28 /* ~Remember, you must bring Caelar here so that she can release us from our oath. Only then will we be able to move on to whatever awaits us.~*/
	
	IF ~~ THEN 
	EXIT
END

IF ~
	Global("XA_ShowCrusaders", "GLOBAL", 1)
~ THEN BEGIN XA_ShowCrusaders
	SAY @11 /* ~You've no reason to help us. To go back to that horrible place, and rescue our Shining Lady... All I can offer you is our eternal gratitude.~*/
	
	IF ~~ THEN REPLY @12 /* ~I barely escaped the first time. I'm sorry, 
	but there's no way I'm going back there.~*/
	DO ~
		SetGlobal("XA_ShowCrusaders", "GLOBAL", 2)
	~
	GOTO XA_GoInPeace
	
	IF ~~ THEN REPLY @18 /* ~Since we last met, I've gained access to a planar gate. Perhaps I can use it to reach Avernus.~ */
	DO ~
		SetGlobal("XA_ShowCrusaders", "GLOBAL", 2)
		SetGlobal("XA_HelpAshatiel", "GLOBAL", 1)
	~
	GOTO XA_DecideToHelp
	
	IF ~~ THEN REPLY @27 /* ~I won't help you. Caelar is exactly where she belongs.~ */
	DO ~
		SetGlobal("XA_ShowCrusaders", "GLOBAL", 2)
	~
	GOTO XA_GoInPeace
	
	IF ~
		GlobalLT("XA_WhyLoyal", "LOCALS", 1)
	~ THEN REPLY @35 /* ~Why are you still so loyal to her? She threw the lives of you and your fellow crusaders away just so she could free her uncle from a hell of her own making.~ */
	DO ~
		SetGlobal("XA_WhyLoyal", "LOCALS", 1)
	~
	GOTO XA_WhyLoyal
END

IF ~
	Global("XA_AshatielSpirit", "GLOBAL", 1)
~ THEN BEGIN XA_Intro
	SAY @0 /* ~<CHARNAME>... You've returned.~*/
	
	IF ~~ THEN REPLY @1 /* ~I recognize you... Ashatiel. Caelar's right hand.~*/
	DO ~
		SetGlobal("XA_AshatielSpirit", "GLOBAL", 2)
	~
	GOTO XA_Ashatiel
	
	IF ~~ THEN REPLY @19 /* ~I recognize you... Ashatiel. The Shining Lady's lapdog.~*/
	DO ~
		SetGlobal("XA_AshatielSpirit", "GLOBAL", 2)
	~
	GOTO XA_Ashatiel
	
	IF ~~ THEN REPLY @23 /* ~I remember you, Ashatiel. You were as brave as you were foolish.~*/
	DO ~
		SetGlobal("XA_AshatielSpirit", "GLOBAL", 2)
	~
	GOTO XA_Ashatiel
END

IF ~~ THEN BEGIN XA_Ashatiel
	SAY @2 /* ~Why are you here?~ */
	
	IF ~~ THEN REPLY @3 /* ~I could ask you the same thing. Why haven't you moved on, spirit? The entrance to the Fugue Plane is but a few paces away.~*/
	GOTO XA_Oath
	
	IF ~~ THEN REPLY @22 /* ~It's none of your concern, spirit.~ */
	GOTO XA_Oath
	
	IF ~~ THEN REPLY @24 /* ~To kill you once again, spirit!~ */
	GOTO XA_CantDie
	
	IF ~
		Global("XA_KanaDream", "GLOBAL", 4)
	~ THEN REPLY @29 /* ~What do you mean? Wasn't it you who told me to come here, in my dream?~*/
	GOTO XA_Dream
END

IF ~~ THEN BEGIN XA_Dream
	SAY @30 /* ~It most assuredly was not. Interesting...~*/
	
	IF ~~ THEN REPLY @62 /* ~Why haven't you moved on, spirit? The entrance to the Fugue Plane is but a few paces away.~*/
	GOTO XA_Oath
	
END

IF ~~ THEN BEGIN XA_CantDie
	SAY @25 /*~If that were possible, I'd welcome it.~ */
	
	IF ~~ THEN 
	GOTO XA_Oath
END

IF ~~ THEN BEGIN XA_Oath
	SAY @6 /*~The Shining Lady's most devoted followers swore an oath to serve her in life... and in death. Those who took part in the ritual... we're still bound by that oath.~*/
	
	IF ~~ THEN REPLY @7 /*~Wait... if you're still bound to serve her, that must mean...~*/
	GOTO XA_CaelarAlive
END

IF ~~ THEN BEGIN XA_CaelarAlive
	SAY @8 /* ~Yes. She's still alive, in Avernus. Though, something has changed...~*/
	
	IF ~~ THEN REPLY @9 /* ~She still lives!? After all this time?~*/
	GOTO XA_CaelarAlive2
	
	IF ~~ THEN REPLY @10 /* ~That she's still alive doesn't surprise me.~ */
	GOTO XA_CaelarAlive2
	
	IF ~~ THEN REPLY @13 /* ~You said something has changed. What did you mean?~ */
	GOTO XA_CaelarAlive2
END

IF ~~ THEN BEGIN XA_CaelarAlive2
	SAY @14 /* ~We're bound to her life force. Until recently, it was very strong. Now, it is very faint. I feel as though something terrible has happened to her.~ */
	
	IF ~~ THEN REPLY @15 /* ~If that's the case, then she'll be dead soon enough. You'll be free to move on, spirit.~*/
	GOTO XA_HelpCaelar
	
	IF ~~ THEN REPLY @20 /* ~We? How many of you are there?~ */
	GOTO XA_HowMany
	
	IF ~
		Global("XA_KanaDream", "GLOBAL", 4)
	~ THEN REPLY @31 /*  ~The voice in the dream... it must have been Caelar's! She told me that she needed my help against some powerful force.~*/
	GOTO XA_Dream_Help
END

IF ~~ THEN BEGIN XA_Dream_Help
	SAY @32 /* ~Somehow, she reached out to you. I... I don't think she'd do that unless it was absolutely necessary.~*/
	
	IF ~~ THEN
	GOTO XA_HelpCaelar2
END

IF ~~ THEN BEGIN XA_HowMany
	SAY @21 /* ~Hundreds, all of whom participated in the rituals.~*/
	
	IF ~~ THEN REPLY @33 /* ~You said you're tied to Caelar's life force in some way, and that it has become weak. If that's the case, then she'll be dead soon enough, and you'll be free to move on, spirit.~*/
	GOTO XA_HelpCaelar
	
	IF ~
		Global("XA_KanaDream", "GLOBAL", 4)
	~ THEN REPLY @31 /*  ~The voice in the dream... it must have been Caelar's! She told me that she needed my help against some powerful force.~*/
	GOTO XA_Dream_Help
END

IF ~~ THEN BEGIN XA_HelpCaelar
	SAY @16 /* Perhaps... but if there's a way you can help her, in spite of the death and destruction that she — that *we* caused.~*/
	
	IF ~~ THEN 
	GOTO XA_HelpCaelar2
END

IF ~~ THEN BEGIN XA_HelpCaelar2
	SAY @11 /* ~You've no reason to help any of us. To go back to that horrible place, and rescue our Shining Lady... All I can offer you is our eternal gratitude.~*/
	
	IF ~~ THEN REPLY @12 /* ~I barely escaped the first time. I'm sorry, but there's no way I'm going back there.~*/
	GOTO XA_GoInPeace
	
	IF ~~ THEN REPLY @18 /* ~Since we last met, I've gained access to a planar gate. Perhaps I can use it to reach Avernus.~ */
	DO ~
		SetGlobal("XA_HelpAshatiel", "GLOBAL", 1)
		SetGlobal("XA_LC_Journal_Ashatiel", "GLOBAL", 1)
	~
	GOTO XA_DecideToHelp
	
	IF ~~ THEN REPLY @27 /* ~I won't help you. Caelar is exactly where she belongs.~ */
	GOTO XA_GoInPeace
	
	IF ~
		GlobalLT("XA_WhyLoyal", "LOCALS", 1)
	~ THEN REPLY @35 /* ~Why are you still so loyal to her? She threw the lives of you and your fellow crusaders away just so she could free her uncle from a hell of her own making.~ */
	DO ~
		SetGlobal("XA_WhyLoyal", "LOCALS", 1)
	~
	GOTO XA_WhyLoyal
END

IF ~~ THEN BEGIN XA_WhyLoyal
	SAY @36 /*~I've asked myself that same question. It's hard to explain... but I will try.~*/
	
	= @37 /*~All of us, everyone that took part in the crusade, experienced a profound loss. I myself lost my family at the hands of Sarevok. It's why I hated you, <CHARNAME>. I learned that you were a Bhaalspawn, and I was unable to look past your nature...~*/
	
	IF ~~ THEN REPLY @40 /*~Go on.~*/
	GOTO XA_WhyLoyal2
	
	IF ~~ THEN REPLY @41 /* ~Guilt by association. You're not the first to fall victim to that trap, and you certainly won't be the last.~*/
	GOTO XA_WhyLoyal2
END

IF ~~ THEN BEGIN XA_WhyLoyal2
	SAY @38 /*~As I was saying, we all had lost someone or something that was precious to us. Caelar filled us with hope that we would one day be reunited with our loved ones. She united us, and gave us a sense of purpose...~*/
	
	= @39 /* ~Her motivations, at least in the beginning, were honest and pure. It wasn't until she started relying more on Hephernaan that things took a dark turn. I'm not absolving her of her responsibility for what happened... but Caelar is, in spite of everything, still a good person.~  */
	
	IF ~~ THEN REPLY @12 /* ~I barely escaped the first time. I'm sorry, but there's no way I'm going back there.~*/
	GOTO XA_GoInPeace
	
	IF ~~ THEN REPLY @18 /* ~Since we last met, I've gained access to a planar gate. Perhaps I can use it to reach Avernus.~ */
	DO ~
		SetGlobal("XA_HelpAshatiel", "GLOBAL", 1)
		SetGlobal("XA_LC_Journal_Ashatiel", "GLOBAL", 1)
	~
	GOTO XA_DecideToHelp
	
	IF ~~ THEN REPLY @27 /* ~I won't help you. Caelar is exactly where she belongs.~ */
	GOTO XA_GoInPeace
	
	IF ~
		GlobalLT("XA_WhyLoyal", "LOCALS", 1)
	~ THEN REPLY @35 /* ~Why are you still so loyal to her? She threw the lives of you and your fellow crusaders away just so she could free her uncle from a hell of her own making.~ */
	DO ~
		SetGlobal("XA_WhyLoyal", "LOCALS", 1)
	~
	GOTO XA_WhyLoyal
END

IF ~~ THEN BEGIN XA_GoInPeace
	SAY @17 /*~I understand. Go in peace, <CHARNAME>.~*/
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_DecideToHelp
	SAY @26  /* ~Then I wish you good luck. If you're successful, you must bring Caelar back to us, that she may release us from our servitude. Only then will we be able to move on.~ */
	
	IF ~~ THEN 
	EXIT
END

IF ~
	GlobalLT("XA_HelpAshatiel", "GLOBAL", 1)
~ THEN BEGIN XA_Reconsider
	SAY @34 /* ~Have you reconsidered? Will you help rescue Caelar?~*/
	
	IF ~~ THEN REPLY @12 /* ~I barely escaped the first time. I'm sorry, but there's no way I'm going back there.~*/
	GOTO XA_GoInPeace
	
	IF ~~ THEN REPLY @18 /* ~Since we last met, I've gained access to a planar gate. Perhaps I can use it to reach Avernus.~ */
	DO ~
		SetGlobal("XA_HelpAshatiel", "GLOBAL", 1)
		SetGlobal("XA_LC_Journal_Ashatiel", "GLOBAL", 1)
	~
	GOTO XA_DecideToHelp
	
	IF ~~ THEN REPLY @27 /* ~I won't help you. Caelar is exactly where she belongs.~ */
	GOTO XA_GoInPeace
	
	IF ~
		GlobalLT("XA_WhyLoyal", "LOCALS", 1)
	~ THEN REPLY @35 /* ~Why are you still so loyal to her? She threw the lives of you and your fellow crusaders away just so she could free her uncle from a hell of her own making.~ */
	DO ~
		SetGlobal("XA_WhyLoyal", "LOCALS", 1)
	~
	GOTO XA_WhyLoyal
END

CHAIN AERIEJ XA_AerieAshatielChain
	@43 /* ~In life, you were one of the avariel, were you not? You must have been so beautiful...~*/ 
	== XAASHASP
	@44 /* ~I was... I see you bear the markings of our kind as well, but where are your wings?~*/
	== AERIEJ
	@45 /* ~I was c-captured and imprisoned... They became infected and they needed to be cut off...~*/
	== XAASHASP
	@46 /* ~Oh, dear. I'm sorry that you had to endure such suffering. What is your name?~*/
	== AERIEJ
	@47  /* ~Thank you... my name is Aerie. I used to be so bitter about what happened.~*/
	== XAASHASP
	@48 /*~Used to? What changed?~*/
	== AERIEJ
	@49 /* ~Well... if I hadn't been captured, I'd never have met <CHARNAME> and <PRO_HISHER> friends. I would've never seen the world in the way I do now, or have had the opportunity to help so many people...~ */
	== XAASHASP
	@50 /*~That's almost exactly how I felt when I met Caelar. You see, my husband was killed by the Bhaalspawn Sarevok. I was so full of hatred and bitterness. Caelar helped me to find a new purpose in life. Even though things ended poorly for us... I'm still grateful for the hope that she gave me.~*/
	== AERIEJ
	@53 /* ~Oh... the pain of losing a loved one... my poor mother. I wonder if she is still out there, looking for me....~*/
	= @51 /* ~T-thank you for sharing your experience with me, Ashatiel. I hope that you and your comrades are able to find r-release.~*/
	== XAASHASP
	@52 /* ~Thank you, Aerie. And I hope that you will one day be reunited with your mother.~ */
EXIT