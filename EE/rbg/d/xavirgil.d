BEGIN ~XAVIRGIL~

IF ~
	AreaCheck("xaa287") // ar0607
	Global("XA_LC_VirgilInCustody", "GLOBAL", 1)
	InPartySlot(LastTalkedToBy, 0)
	Global("XA_LC_VirgilCellTalk", "GLOBAL", 1)
~ THEN BEGIN XA_InJail2
	SAY @52 /* ~Oh, it's you. The 'hero'. I bet you're glad to see me in here.~ */
	
	IF ~~ THEN REPLY @53 /* ~I'm not. The overwhelming hopelessness that you're feeling now... I wouldn't wish it on anyone.~*/
	DO ~
		SetGlobal("XA_LC_VirgilCellTalk", "GLOBAL", 2)
	~
	GOTO XA_Hopelessness
	
	IF ~
		Gender(Player1, MALE)
	~ THEN REPLY @54 /*  ~It's what you deserve. Don't do the crime if you can't do the time.~ */
	DO ~
		SetGlobal("XA_LC_VirgilCellTalk", "GLOBAL", 2)
	~
	GOTO XA_GoToHell_M
	
	IF ~
		!Gender(Player1, MALE)
	~ THEN REPLY @54 /*  ~It's what you deserve. Don't do the crime if you can't do the time.~ */
	DO ~
		SetGlobal("XA_LC_VirgilCellTalk", "GLOBAL", 2)
	~
	GOTO XA_GoToHell_F
END

IF ~
	AreaCheck("xaa287") // ar0607
	Global("XA_LC_VirgilInCustody", "GLOBAL", 1)
~ THEN BEGIN XA_InJail3
	SAY @51 /* ~Leave me be. There is much on my mind.~ */
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_Hopelessness
	SAY @56 /* ~How can you? What does the hero of Baldur's Gate know of hopelessness?~ */
	
	IF ~~ THEN REPLY @57 /* ~You know, I was held in that very same cell, while the Dukes debated whether I should live or die. The only difference between our situations is that I was innocent of the crime for which I was accused.~ */
	GOTO XA_Hopelessness2
END

IF ~~ THEN BEGIN XA_Hopelessness2
	SAY @58 /* ~Even if I get out, my career, my l-life, it's over.~*/
	
	IF ~~ THEN REPLY @59 /* ~You'll be out soon enough, once Winston is apprehended. You'll have an opportunity for a fresh start. I suggest you make the most of it.~*/
	GOTO XA_Hopeful
	
	IF ~
		Gender(Player1, MALE)
	~ THEN REPLY @60 /* ~You're right. The stigma of being a slaver will follow you until you're dead. What a shame.~*/
	GOTO XA_GoToHell_M
	
	IF ~
		Gender(Player1, FEMALE)
	~ THEN REPLY @60 /* ~You're right. The stigma of being a slaver will follow you until you're dead. What a shame.~*/
	GOTO XA_GoToHell_F
END

IF ~~ THEN BEGIN XA_Hopeful
	SAY @62 /* ~(Sigh)... You're right. As much as I want to blame you for my being here, I can't. I've no one to blame but myself for helping Winston. When I get out, I'll turn things around and do some g-good for a change. You can count on it.~*/

	IF ~ 
		IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @63 /* ~Good to hear. Take care of yourself.~*/
	DO ~
		IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
	
	IF ~
		!IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @63 /* ~Good to hear. Take care of yourself.~*/
	EXIT
	
END

IF ~~ THEN BEGIN XA_GoToHell_M
	SAY @61 /* ~You really are a heartless bastard, you know that? Get out of my sight!~ [XAVIRG07]*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_GoToHell_F
	SAY @64 /* ~You really are a heartless bitch, you know that? Get out of my sight!~ [XAVIRG09]*/
	
	IF ~~ THEN EXIT
END

IF ~
	!Global("XA_LC_VirgilGreeting", "LOCALS", 1)
~ THEN BEGIN XA_Greeting
	SAY @0 /* ~Hello, and welcome to Winston Ventures. How may I help you?~ */
	IF ~~ THEN REPLY @1
	DO ~
		SetGlobal("XA_LC_VirgilGreeting", "LOCALS", 1)
	~
	GOTO XA_Greeting2
END

IF ~~ THEN BEGIN XA_Greeting2
	SAY @2 /* ~While Lord Winston is away, yes.~ */
	
	IF ~~ THEN GOTO XA_Greeting3
END

IF ~
	Global("XA_LC_VirgilGreeting", "LOCALS", 1)
~ THEN BEGIN XA_Greeting3
	SAY @39 /* ~Is there something I can help you with?~ */
	
	IF ~~ THEN REPLY @45 /* ~Nothing at the moment.~ */
	EXIT
	
	IF ~
		Global("XA_LC_DecodedManifest", "GLOBAL", 1)
		Global("XA_LC_AskVirgilManifest", "LOCALS", 1)
	~ THEN REPLY @46 /* ~Remember that manifest that you said wasn't yours? Well, we found your secret ledger and had it decoded.~ */
	GOTO XA_ConfrontVirgil
	
	IF ~
		Global("XA_LC_HandedOverManifests", "GLOBAL", 1)
		!Global("XA_LC_AskVirgilManifest", "LOCALS", 1)
	~ THEN REPLY @3 /* ~We're investigating reports of slaver activity in Baldur's Gate. Do you know anything about the refugees from Caelar's crusade being sold as slaves?~ */
	DO ~
		SetGlobal("XA_LC_AskVirgilManifest", "LOCALS", 1)
	~
	GOTO XA_AskAboutManifest
	
	IF ~
		Global("XA_LC_DecodedManifest", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_TakeIntoCustodyChain 
	
	IF ~
		Global("XA_LC_AskVirgilManifest", "LOCALS", 1)
		PartyHasItem("XALEDGER")
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_TakeIntoCustodyChain2
END

IF ~~ THEN BEGIN XA_ConfrontVirgil
	SAY @47 /* ~W-what? You had no - you had no right to take that ledger!~ */
	
	IF ~~ THEN REPLY @48 /* ~Just as you had no right to sell those refugees into slavery. The Dukes will have you executed once they find out what you've done!~ */
	GOTO XA_ConfrontVirgil2
END

IF ~~ THEN BEGIN XA_ConfrontVirgil2
	SAY @49 /* ~P-please, don't let them hurt me. They're brutal.~ */
	
	IF ~~ THEN REPLY @50 /* ~Tell me what you know - all of it. No more lies.~ */
	GOTO XA_ConfrontVirgil3
END

IF ~~ THEN BEGIN XA_ConfrontVirgil3
	SAY @23 /* ~F-fine... I'll cooperate. Yes, we sold the refugees as slaves. You saw what it was like... the city couldn't bear it anymore. There wasn't enough food or shelter for so many refugees. We were tasked to get rid of them, and we did!~*/
	=@24 /* ~The Flaming Fist, the Council, shopkeepers, temples, everyone looked the other way! They were thrilled that the refugees were gone - no one even cared enough to ask what we did with them until you showed up! They had to have known... they had to.~*/
	
	IF ~~ THEN REPLY @25 /* ~Come with us to the Flaming Fist headquarters. We need you to sign a sworn statement. Once that's over with, you'll be taken into custody.~*/
	GOTO XA_ConfrontVirgil4
END

IF ~~ THEN BEGIN XA_ConfrontVirgil4
	SAY @26 /* ~(Sigh.) Fine... but.. I'll only sign if I'm promised immunity from prosecution.~ */
	
	IF ~~ THEN REPLY @27 /* ~That's up to Marshal Nederlok to decide. Come with us - now.~*/
	DO ~
		StartCutscene("XACS16a")
	~
	EXIT
END
IF ~~ THEN BEGIN XA_AnythingElse
	SAY @44 /* ~Is there anything else I can help you with?~ */
	
	IF ~~ THEN REPLY @45 /* ~Nothing at the moment.~ */
	EXIT
	
	IF ~
		Global("XA_LC_HandedOverManifests", "GLOBAL", 1)
		!Global("XA_LC_AskVirgilManifest", "LOCALS", 1)
	~ THEN REPLY @3 /* ~We're investigating reports of slaver activity in Baldur's Gate. Do you know anything about the refugees from Caelar's crusade being sold as slaves?~ */
	DO ~
		SetGlobal("XA_LC_AskVirgilManifest", "LOCALS", 1)
	~
	GOTO XA_AskAboutManifest
	
	IF ~
		Global("XA_LC_DecodedManifest", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_TakeIntoCustodyChain 
	
	IF ~
		Global("XA_LC_AskVirgilManifest", "LOCALS", 1)
		PartyHasItem("XALEDGER")
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_TakeIntoCustodyChain2
END
IF ~~ THEN BEGIN XA_AskAboutManifest
	SAY @4 /* ~No, nothing at all. This is the first I've heard of it.~ */
	IF ~~ THEN REPLY @5 /* ~We heard that your company was instrumental in clearing the refugees from the city.~ */
	GOTO XA_AskAboutManifest2
END

IF ~~ THEN BEGIN XA_AskAboutManifest2
	SAY @6 /* ~That much is true, but I assure you that there were no slavers involved.~ */
	
	IF ~~ THEN REPLY @7 /* ~Is that so? Then I trust you wouldn't have any issue providing me with the cipher key to decrypt this manifest?~ */
	GOTO XA_AskAboutManifest3
END

IF ~~ THEN BEGIN XA_AskAboutManifest3
	SAY @8 /* ~Let me see that. Hm. One moment. ~ */
	= @9 /* ~I'm afraid I don't have the key to decode the manifest.~*/
	IF ~~ THEN REPLY @10 /* ~What do you mean you don't have it?~ */
	GOTO XA_AskAboutManifest4
END

IF ~~ THEN BEGIN XA_AskAboutManifest4
	SAY @11 /* ~I mean, I don't have it! See for yourself.~ */
	= @12 /* ~(He shows you his ledger.)~*/
	= @13 /* ~The leftmost column shows the manifest IDs, and the column to the right shows the decryption key. As you can see, there's no row for that manifest.~*/
	
	IF ~~ THEN REPLY @14 /* ~What does that mean?~*/
	GOTO XA_AskAboutManifest5
	
	IF ~~ THEN REPLY @16 /* ~Is that the only ledger?~ */
	GOTO XA_AskAboutManifest6
END

IF ~~ THEN BEGIN XA_AskAboutManifest5
	SAY @15 /* ~It means the manifest is likely a forgery. The ledger lists all of our manifests. If it's not in here, then it's not our manifest.~ */
	
	IF ~~ THEN REPLY @16 /* ~Is that the only ledger?~ */
	GOTO XA_AskAboutManifest6
END

IF ~~ THEN BEGIN XA_AskAboutManifest6
	SAY @17 /* ~Yes. Certainly.~ */
	
	IF ~~ THEN
	GOTO XA_AnythingElse
END

CHAIN XACORWIJ XA_TakeIntoCustodyChain2
	@29 /* ~(She grabs your arm, and you turn to her.)~*/
	= @28 /* ~Let me handle this.~*/
	= @31 /* ~You! You told us that yours was the only manifest! What is this here, then?~*/
	== XAVIRGIL
	@32 /* ~W-where did you find that! You aren't supposed to - ~*/
	== XACORWIJ
	@22 /* ~Shut it! Lying to an officer during the course of an investigation is a serious crime. Lie to me again and I promise you'll spend the rest of your days eating food from a straw! Am I clear?!~*/
	== XAVIRGIL
	@34 /* ~Y-yes officer...~*/
	== XACORWIJ
	@35 /* ~You were trying to hide the fact that your company is involved in the slave trade, weren't you?~*/
	== XAVIRGIL 
	@36 /* ~I - I don't.. Lord W-Winston said -~*/
	== XACORWIJ
	@38 /* ~Answer me!~  */
	== XAVIRGIL
	@23 /* ~F-fine... I'll cooperate. Yes, we sold the refugees as slaves. You saw what it was like... the city couldn't bear it anymore. There wasn't enough food or shelter for so many refugees. We were tasked to get rid of them, and we did!~*/
	=@24 /* ~The Flaming Fist, the Council, shopkeepers, temples, everyone looked the other way! They were thrilled that the refugees were gone - no one even cared enough to ask what we did with them until you showed up! They had to have known... they had to.~*/
	== XACORWIJ
	@25 /* ~Come with us to the Flaming Fist headquarters. We need you to sign a sworn statement. Once that's over with, you'll be taken into custody.~*/
	== XAVIRGIL 
	@26 /* ~(Sigh.) Fine... but.. I'll only sign if I'm promised immunity from prosecution.~*/
	== XACORWIJ
	@27 /* ~That's up to Marshal Nederlok to decide. Come with us - now.~*/
	DO ~
		StartCutscene("XACS16a")
	~
EXIT

CHAIN XACORWIJ XA_TakeIntoCustodyChain
	@29 /* ~(She grabs your arm, and you turn to her.)~*/
	= @28 /* ~Let me handle this.~*/
	= @20 /* ~Listen to me. I will say this only once. We know that your company has been selling refugees as slaves.~*/
	== XAVIRGIL
	@21 /* ~Officer, that's preposterous! We've never -~*/
	== XACORWIJ
	@22 /* ~Shut it! The punishment for trading slaves in Baldur's Gate is death. You have two options - coorperate and tell us everything you know, or remain silent and face the same fate that awaits your boss.~*/
	== XAVIRGIL
	@23 /* ~F-fine... I'll cooperate. Yes, we sold the refugees as slaves. You saw what it was like... the city couldn't bear it anymore. There wasn't enough food or shelter for so many refugees. We were tasked to get rid of them, and we did!~*/
	=@24 /* ~The Flaming Fist, the Council, shopkeepers, temples, everyone looked the other way! They were thrilled that the refugees were gone - no one even cared enough to ask what we did with them until you showed up! They had to have known... they had to.~*/
	== XACORWIJ
	@25 /* ~Come with us to the Flaming Fist headquarters. We need you to sign a sworn statement. Once that's over with, you'll be taken into custody.~*/
END XAVIRGIL XA_ConfrontVirgil4
