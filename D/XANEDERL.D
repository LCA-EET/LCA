BEGIN ~XANEDERL~

IF ~
	Global("XA_ByeRohma", "GLOBAL", 1)
~ THEN BEGIN XA_Evening
	SAY @117 /* ~I'd love to chat, but I really must get through this duty roster review.~ */
	
	IF ~~ THEN EXIT
END

/* Rohma Kidnapped */
IF ~
	Global("XA_RohmaKidnapped", "GLOBAL", 5)
~ THEN BEGIN XA_NederlokGH
	SAY @104 /* ~Are you ready to rescue Rohma?~ */
	
	IF ~~ THEN REPLY @108 /* ~Not yet.~ */
	GOTO XA_GoSeeMelkor
	
	IF ~~ THEN REPLY @109 /* ~Yes. We haven't a moment to spare.~ */
	GOTO XA_ReadyToRescue
END

IF ~~ THEN BEGIN XA_CorwinRequestSaradush
	SAY @115 /* ~Granted.~ */
	
END
IF ~~ THEN BEGIN XA_ReadyToRescue
	SAY @110 /* ~You can reach the Undercity through the Thieves Guild. Alatos and his thieves have prepared the way for you. Good hunting.~ */
	
	IF ~~ THEN
	DO ~
		StartCutsceneMode()
		StartCutscene("XAUCITY")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_SaradushDiscussion_Final
	SAY @116 /* ~Of course, sir.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_DidNotRequestCorwin", "GLOBAL", 1)
		StartCutscene("XABGEND3")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_GoSeeMelkor
	SAY @111 /* ~Melkor can aid you with your preparation. Come and see me when you're ready.~ */
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_NeedToGetRohmaEnd
	SAY @105 /* ~Saradush? But that's so far away... Why are they here, and what do they want with <CHARNAME>?~ */
	
	IF ~~ THEN REPLY @106 /* ~What they want with me is irrelevant. We have to get Rohma back.~ */
	EXTERN XAELTAN XA_RohmaKidnapped4
	
	IF ~~ THEN REPLY @107 /* ~Perhaps they are looking for a way to steal my power, as Irenicus did.~ */
	EXTERN XAELTAN XA_RohmaKidnapped4
END

IF ~~ THEN BEGIN XA_ReadyToGetRohmaEnd
	SAY @114 /* ~Although you'll be going alone, there still may be a way we can help. Melkor, explain.~ */
	
	IF ~~ THEN EXTERN XAMELKOR XA_TeleporterRingChain
END
/* */

IF ~~ THEN BEGIN XA_DontNeedRing
	SAY @112 /* ~Good. Melkor will provide you with any provisions you may need. Come and see me when you're ready to leave.~ */
	
	IF ~~ THEN REPLY @113 /* ~Thank you, Marshal Nederlok.~*/
	EXIT
END

IF ~
	Global("XA_NederlokVirgil", "GLOBAL", 1)
~ THEN BEGIN XA_NederlokVirgil
	SAY @75 /*  ~So, Lord Winston arranged for the refugees to be sold as slaves? You'll sign a sworn statement to that effect?~ */
	
	IF ~~ THEN
	DO ~
		TakePartyItem("XAMANFST")
		TakePartyItem("XAMANFS2")
		TakePartyItem("XAMANFS3")
		TakePartyItem("XALEDGER")
		SetCutSceneLite(TRUE)
		SetGlobal("XA_NederlokVirgil", "GLOBAL", 2)
		SetGlobal("XA_VirgilInCustody", "GLOBAL", 1)
	~
	EXTERN XAVIRGIL XA_NederlokVirgiXAhain
END

IF ~
	Global("XA_NederlokVirgil", "GLOBAL", 2)
~ THEN BEGIN XA_NederlokSlaverPlotEnd
	SAY @87 /* ~Hahah, <CHARNAME>, excellent work. You'd have made a great investigator.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_Journal_SlaverEnd", "GLOBAL", 1)
		SetGlobal("XA_RefugeeQuestComplete", "GLOBAL", 1)
		ReputationInc(1)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_NederlokSlaverPlotEnd1
END

IF ~~ THEN BEGIN XA_NederlokSlaverPlotEnd1
	SAY @103 /* ~Have you given any thought to what you want to do after you settle back into things?~ */
	
	IF ~
		!IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @97 /* ~You offering me a job?~ */
	GOTO XA_JobOffer
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @88 /* ~I couldn't have done it without Captain Corwin's help.~ */
	DO ~
		SetGlobal("XA_NederlokVirgil", "GLOBAL", 3)
	~
	GOTO XA_NederlokSlaverPlotEnd2
	
	IF ~~ THEN REPLY @129 /*~Not as of yet, no.~*/
	GOTO XA_JobOffer
END

IF ~~ THEN BEGIN XA_JobOffer
	SAY @98 /* ~The Fist can always use strong, right-minded individuals such as yourself.~ */
	
	IF ~~ THEN REPLY @99 /* ~I'll think about it.~ */
	GOTO XA_JobOffer2
	
	IF ~~ THEN REPLY @100 /* ~Thanks, but I'm not interested.~ */
	GOTO XA_JobOffer2
	
	IF ~~ THEN REPLY @130 /*~I'm not exactly what you'd consider law enforcement material.~*/
	GOTO XA_JobOffer2
END

IF ~~ THEN BEGIN XA_JobOffer2
	SAY @101 /* ~Very well.~ */
	
	IF ~
		!Global("XA_Ask_VirgilWinston", "LOCALS", 1)
	~ THEN REPLY @90 /* ~What's going to happen to Virgil and Lord Winston?~*/
	DO ~
		SetGlobal("XA_Ask_VirgilWinston", "LOCALS", 1)
	~
	GOTO XA_VirgilWinston
	
	IF ~
		!Global("XA_Ask_Refugees", "LOCALS", 1)
	~ THEN REPLY @94 /* ~What about the refugees that were sold into slavery?~ */
	DO ~
		SetGlobal("XA_Ask_Refugees", "LOCALS", 1)
	~
	GOTO XA_Refugees
END

IF ~~ THEN BEGIN XA_NederlokSlaverPlotEnd2
	SAY @89 /* ~The two of you have been back for less than a day and have already made a difference. You make a great team.~*/
	
	COPY_TRANS XANEDERL XA_JobOffer2
END

IF ~~ THEN BEGIN XA_Refugees
	SAY @95 /* ~Well, now that we can decode the manifests, we'll work with the appropriate authorities in Athkatla, Calimshan, and other cities to repatriate the refugees, and arrest the slavers who purchased them.~ */
	
	IF ~
		Global("XA_NederlokMedal", "GLOBAL", 1)
	~ THEN REPLY @102 /* ~I see. I'll leave you to your work, then.~  */
	GOTO XA_NederlokSlaverPlotEnd3
	
	IF ~
		!Global("XA_NederlokMedal", "GLOBAL", 1)
	~ THEN REPLY @102 /* ~I see. I'll leave you to your work.~  */
	GOTO XA_GiveMedal
	
	IF ~
		!Global("XA_Ask_VirgilWinston", "LOCALS", 1)
	~ THEN REPLY @90 /* ~What's going to happen to Virgil and Lord Winston?~*/
	DO ~
		SetGlobal("XA_Ask_VirgilWinston", "LOCALS", 1)
	~
	GOTO XA_VirgilWinston
END

IF ~~ THEN BEGIN XA_VirgilWinston
	SAY @91 /* ~Virgil will be held in custody, at least until Lord Winston is apprehended.~ */
	
	= @92 /* ~As for Winston, he has many friends and connections within the city. He will certainly be punished, though I suspect not as severely as his crimes warrant.~ */
	
	IF ~
		Global("XA_NederlokMedal", "GLOBAL", 1)
	~ THEN REPLY @102 /* ~I see. I'll leave you to your work, then.~  */
	GOTO XA_NederlokSlaverPlotEnd3
	
	IF ~
		!Global("XA_NederlokMedal", "GLOBAL", 1)
	~ THEN REPLY @102 /* ~I see. I'll leave you to your work, then.~  */
	GOTO XA_GiveMedal
	
	IF ~
		!Global("XA_Ask_Refugees", "LOCALS", 1)
	~ THEN REPLY @94 /* ~What about the refugees that were sold into slavery?~ */
	DO ~
		SetGlobal("XA_Ask_Refugees", "LOCALS", 1)
	~
	GOTO XA_Refugees
END

IF ~~ THEN BEGIN XA_NederlokSlaverPlotEnd3
	SAY @96 /* ~Once again, great work. I'll let the Dukes know of the good you've done today. See you at the debriefing.~  */
	
	IF ~~ THEN
	EXIT
	
END

IF ~
	IsGabber("XACORWIN")
	!Global("XA_NederlokCorwin", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinGreeting
	SAY @72 /* ~It's great to have you back, Captain Corwin.~ */
	
	IF ~~ THEN EXTERN XACORWIJ XA_CorwinNederlok
END


IF ~
	IsGabber("XACORWIN")
	Global("XA_NederlokCorwin", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinGreeting2
	SAY @73 /* ~Captain Corwin - I'll see you at the debriefing.~ */
	
	IF ~~ THEN
	EXIT
	
	IF ~
		GlobalGT("XA_NebDead", "GLOBAL", 0)
		GlobalLT("XA_ToldNederlokNeb", "GLOBAL", 1)
	~ THEN 
	DO ~
		SetGlobal("XA_ToldNederlokNeb", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_NebNederlokSewers
END

IF ~
	!IsGabber("XACORWIN")
	!IsGabber(Player1)
~ THEN BEGIN XA_OtherGreeting
	SAY @74 /*  ~Ah, <GABBER>, you're part of <CHARNAME>'s group, yes? The debriefing is tomorrow morning. I look forward to seeing you there.~ */
	
	IF ~~ THEN
	EXIT
END


IF ~
	Global("XA_NederlokGreeting", "GLOBAL", 1)
~ THEN BEGIN XA_Greeting
	SAY @23 /* ~<CHARNAME> - what can I do for you?~ */
	
	IF ~
		GlobalGT("XA_CorwinSlaverPlot", "GLOBAL", 0)
		!Global("XA_RefugeeQuestComplete", "GLOBAL", 1)
	~ THEN REPLY @38 /* ~I'd like to go over our progress in the investigation into slaver activity in Baldur's Gate.~ */
	GOTO XA_InvestigationProgress
	
	IF ~
		Global("XA_NederlokMedal", "GLOBAL", 1)
	~ THEN REPLY @24 /* ~Nothing at the moment.~ */
	GOTO XA_EndChat
	
	IF ~
		!Global("XA_NederlokMedal", "GLOBAL", 1)
		IsGabber(Player1)
	~ THEN REPLY @24 /* ~Nothing at the moment.~ */
	GOTO XA_GiveMedal
	
	IF ~
		!Global("XA_NederlokMedal", "GLOBAL", 1)
		!IsGabber(Player1)
	~ THEN REPLY @24 /* ~Nothing at the moment.~ */
	GOTO XA_EndChat
	
	IF ~
		See("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
		GlobalGT("XA_NebDead", "GLOBAL", 0)
		GlobalLT("XA_ToldNederlokNeb", "GLOBAL", 1)
	~ THEN 
	DO ~
		SetGlobal("XA_ToldNederlokNeb", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_NebNederlokSewers
	
END

IF ~~ THEN BEGIN XA_GiveHint
	SAY @63 /* ~Hmm...~ */
	
	IF ~
		!Global("XA_HandedOverManifests", "GLOBAL", 1)
	~ THEN
	GOTO XA_GiveHint_AskHarborMaster
	
	IF ~
		Global("XA_HandedOverManifests", "GLOBAL", 1)
		!Global("XA_AskedAlatosAboutManifests", "GLOBAL", 1)
	~ THEN
	GOTO XA_GiveHint_AskAlatos

	IF ~
		Global("XA_HandedOverManifests", "GLOBAL", 1)
		Global("XA_AskedAlatosAboutManifests", "GLOBAL", 1)
		!Global("XA_DecodedManifest", "GLOBAL", 1)
	~ THEN 
	GOTO XA_GiveHint_DecodeManifest
	
	
	IF ~
		Global("XA_HandedOverManifests", "GLOBAL", 1)
		Global("XA_AskedAlatosAboutManifests", "GLOBAL", 1)
		Global("XA_DecodedManifest", "GLOBAL", 1)
	~ THEN 
	GOTO XA_GiveHint_LookForWitness
END

IF ~~ THEN BEGIN XA_NebNederlokSewers2
	SAY @125 /*~The sewers, you say? That would explain the smell...~*/
	
	IF ~~ THEN
	EXTERN XACORWIJ XA_NebNederlokSewers3
END

IF ~~ THEN BEGIN XA_NebNederlokSewers4
	SAY @126 /*~It's nothing. I'm surprised the gnome had the audacity to risk returning to the city. The world is a safer place without him. Excellent work, Captain.~*/
	
	IF ~~ THEN
	EXTERN XACORWIJ XA_NebNederlokSewers5
END

IF ~~ THEN BEGIN XA_NebNederlokSewers6
	SAY @127 /*~And Captain.~*/
	
	IF ~~ THEN
	EXTERN XACORWIJ XA_NebNederlokSewers7
END

IF ~~ THEN BEGIN XA_NebNederlokSewers8
	SAY @128 /*~You know that I appreciate your willingness to get your hands dirty... but get yourself cleaned up. I can't have one of the Fist's finest officers smelling like a latrine.~*/
	
	IF ~~ THEN
	EXTERN XACORWIJ XA_NebNederlokSewers9
END

IF ~~ THEN BEGIN XA_GiveHint_LookForWitness
	SAY @66 /* ~You've done well thus far. What we really need is evidence that Winston knew that the passengers on that ship would be sold into slavery. Go back to Winston Ventures and pressure the employees there to divulge what they know.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_AskAboutWitness", "GLOBAL", 1)
	~
	EXIT
	
	IF ~
		!Global("XA_NederlokMedal", "GLOBAL", 1)
		IsGabber(Player1)
	~ THEN REPLY @67 /* ~Thanks for the help.~  */
	DO ~
		SetGlobal("XA_AskAboutWitness", "GLOBAL", 1)
	~
	GOTO XA_GiveMedal
END


IF ~~ THEN BEGIN XA_GiveHint_AskHarborMaster
	SAY @62 /* ~Speak to the harbor master. Any ships entering or leaving through the city docks need to be cleared first by him.~*/
	
	IF ~~ THEN
	EXIT
	
	IF ~
		!Global("XA_NederlokMedal", "GLOBAL", 1)
		IsGabber(Player1)
	~ THEN REPLY @67 /* ~Thanks for the help.~ */
	GOTO XA_GiveMedal
END

IF ~~ THEN BEGIN XA_GiveHint_AskAlatos
	SAY @65 /* ~I suggest paying a visit to the Thieves' Guild. They may know how to go about decoding those manifests you obtained.~*/
	
	IF ~~ THEN
	EXIT
	
	IF ~
		!Global("XA_NederlokMedal", "GLOBAL", 1)
		IsGabber(Player1)
	~ THEN REPLY @67 /* ~Thanks for the help.~*/
	GOTO XA_GiveMedal
END

IF ~~ THEN BEGIN XA_GiveHint_DecodeManifest
	SAY @64 /* ~You need to find some means of decoding those shipping manifests you received from the harbor master. Speak to the employees at Winston Ventures, someone there may be able to help you.~ */
	
	IF ~~ THEN
	EXIT
	
	IF ~
		!Global("XA_NederlokMedal", "GLOBAL", 1)
		IsGabber(Player1)
	~ THEN REPLY @67 /* ~Thanks for the help.~ */
	GOTO XA_GiveMedal
END

IF ~~ THEN BEGIN XA_InvestigationProgress
	SAY @39 /* ~Of course. What have you found so far?~ */
	
	IF ~
		!Global("XA_NederlokMedal", "GLOBAL", 1)
	~ THEN REPLY @60 /* ~We haven't uncovered anything else.~ */
	GOTO XA_GiveMedal
	
	IF ~
		Global("XA_NederlokMedal", "GLOBAL", 1)
	~ THEN REPLY @60 /* ~We haven't uncovered anything else.~ */
	EXIT
	
	IF ~~ THEN REPLY @61 /* ~Nothing additional. How do you suggest we proceed?~ */
	GOTO XA_GiveHint
	
	IF ~
		GlobalLT("XA_Investigation_AskedDiviner", "GLOBAL", 1)
		Global("XA_AskedDivinerAboutSlaves", "GLOBAL", 1)
	~ THEN REPLY @68 /* ~I spoke to Haspur, the diviner. I asked him who was responsible for the recent slaver activity in the city. He told me that Lord Winston and his company were behind everything. Arrest him!~ */
	DO ~
		SetGlobal("XA_Investigation_AskedDiviner", "GLOBAL", 1)
	~
	GOTO XA_AskedDiviner
	
	IF ~
		GlobalLT("XA_Investigation_ChildTestimony", "GLOBAL", 1)
		Global("XA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN REPLY @56 /* We freed a slave in Athkatla, a child named Tina Bennett, and she told us that she was part of a group of refugees that fled to Baldur's Gate. They were told that they would be taken to a new home, and boarded a ship to Athkatla. When they arrived, the children were forcibly separated from their parents and sold to slavers.~ */
	DO ~
		SetGlobal("XA_Investigation_ChildTestimony", "GLOBAL", 1)
	~
	GOTO XA_ChildTestimony
	
	IF ~
		GlobalLT("XA_Investigation_ChildTestimony", "GLOBAL", 1)
		GlobalLT("XA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~ THEN REPLY @43 /* ~We freed a slave in Athkatla, a child, and she told us that she was part of a group of refugees that fled to Baldur's Gate. They were told that they would be taken to a new home, and boarded a ship to Athkatla. When they arrived, the children were forcibly separated from their parents and sold to slavers.~ */
	DO ~
		SetGlobal("XA_Investigation_ChildTestimony", "GLOBAL", 1)
	~
	GOTO XA_ChildTestimony
	
	IF ~
		GlobalLT("XA_Investigation_EncodedManifest", "GLOBAL", 1)
		Global("XA_HandedOverManifests", "GLOBAL", 1)
	~ THEN REPLY @40 /* ~We spoke to the harbor master. He provided us shipping manifests belonging to the company that just moved into the Iron Throne headquarters. They are encoded, and we can't decipher them. Why would a legitimate company want to obfuscate their shipping manifests?~ */
	DO ~
		SetGlobal("XA_Investigation_EncodedManifest", "GLOBAL", 1)
	~
	GOTO XA_FoundManifests
	
	IF ~
		GlobalLT("XA_Investigation_AlatosCipher", "GLOBAL", 1)
		Global("XA_AskedAlatosAboutManifests", "GLOBAL", 1)
	~ THEN REPLY @46 /* ~We spoke to a contact in the Thieves' Guild, who said that they had sold a cryptographic encoder to the same company that had the encoded shipping manifests.~ */
	DO ~
		SetGlobal("XA_Investigation_AlatosCipher", "GLOBAL", 1)
	~
	GOTO XA_AlatosCipher
	
	IF ~
		GlobalLT("XA_Investigation_DecodedManifest", "GLOBAL", 1)
		Global("XA_DecodedManifest", "GLOBAL", 1)
		GlobalLT("XA_LearnedSlaveGirlsName", "GLOBAL", 1)
		PartyHasItem("XAMANFS2")
	~ THEN REPLY @57 /* ~With the help of the Thieves' Guild, we were able to decode the shipping manifest using the cipher key we found in the Winston Ventures building. Look at the decoded manifest - it's a list of names! They were transporting people as cargo, undoubtedly to sell them as slaves!~ */
	DO ~
		SetGlobal("XA_Investigation_DecodedManifest", "GLOBAL", 1)
		TakePartyItem("XAMANFS2")
	~
	GOTO XA_DecodedManifestB

	IF ~
		GlobalLT("XA_Investigation_DecodedManifest", "GLOBAL", 1)
		Global("XA_DecodedManifest", "GLOBAL", 1)
		Global("XA_LearnedSlaveGirlsName", "GLOBAL", 1)
		PartyHasItem("XAMANFS3")
	~ THEN REPLY @48 /* ~With the help of the Thieves' Guild, we were able to decode the shipping manifest using the cipher key we found in the old Iron Throne building. Look at the decoded manifest - it's a list of names, and here is the name of the girl that we freed in Athkatla!~ */
	DO ~
		SetGlobal("XA_Investigation_DecodedManifest", "GLOBAL", 1)
		TakePartyItem("XAMANFS3")
	~
	GOTO XA_DecodedManifestA

END

IF ~~ THEN BEGIN XA_DecodedManifestB
	SAY @58 /* ~Let me see that. This is evidence that people were transported, yes, but we don't even know if any of these people were sold into slavery. The only thing suspicious about all of this is why he would go through all the trouble to obfuscate such mundane information...~ */
	
	= @59 /* ~Good work. What you've gathered so far may be enough to warrant a more thorough investigation into the company. At this point it's just not enough to secure a conviction.~ */
	
	IF ~~ THEN
	GOTO XA_AdditionalEvidence
END

IF ~~ THEN BEGIN XA_DecodedManifestA
	SAY @49 /* ~Let me see that. This is compelling evidence to be sure. Lord Winston could argue, however, that he was deceived, and that he didn't know that the passengers on his ship would be sold into slavery.~ */
	
	= @50 /* ~Good work. What you've gathered so far is enough to warrant a more thorough investigation into the company. It may not be enough, however, to secure a conviction.~ */

	IF ~~ THEN
	GOTO XA_AdditionalEvidence
END

IF ~~ THEN BEGIN XA_Clerk
	SAY @51 /* ~Out of curiosity... how did you obtain the cipher?~ */
	
	IF ~~ THEN REPLY @53 /*  ~Using the encoded manifest, we convinced a clerk in Winston's company to provide us with the key.~ */ 
	GOTO XA_Clerk2
END

IF ~~ THEN BEGIN XA_Clerk2
	SAY @54 /* ~I see... that's good. I suggest pressuring the clerk for more information. What we need is proof that Winston knew that the passengers were placed on the ship to be sold as slaves. If you could find a ledger, correspondence, or similar evidence that shows what Winston knew, we'll have him dead to rights.~ */

	= @55 /* ~Return to me once you have the last of the evidence.~ */
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_AlatosCipher
	SAY @47 /* ~What does that prove? All you've demonstrated is that the company has done business with the Thieves' Guild. While that may indicate a willingness to engage in some unscrupulous behavior, it does not prove involvement in slaver activity.~ */
	
	IF ~~ THEN GOTO XA_AdditionalEvidence
END

IF ~~ THEN BEGIN XA_ChildTestimony
	SAY @44 /* ~I emphasize with the plight of that poor child. Even if we could bring her here to testify, however, the word of such a young child will not carry much weight in any courtroom. And, if I remember correctly, she did not know the name of the individual or company that placed her on that ship.~ */
	
	IF ~~ THEN 
	GOTO XA_AdditionalEvidence
END

IF ~~ THEN BEGIN XA_FoundManifests
	SAY @41 /* ~It's unusual to be sure, but not unheard of.~ */
	
	IF ~~ THEN GOTO XA_AdditionalEvidence
END

IF ~~ THEN BEGIN XA_AdditionalEvidence
	SAY @45 /* ~Do you have any additional evidence?~ */
	
	COPY_TRANS XANEDERL XA_InvestigationProgress
END

IF ~~ THEN BEGIN XA_AskedDiviner
	SAY @69 /* ~(He bursts into laughter.)~*/
	= @70 /* ~Thanks for the laugh, I needed it... wait, you're serious?~*/
	= @71 /* ~Listen, I appreciate the ah ... out of the box thinking, but the testimony of a carnival fortune teller is worth less than the dirt on my shoe in a courtroom.~*/
	
	IF ~~ THEN
	GOTO XA_AdditionalEvidence
END

IF ~~ THEN BEGIN XA_GiveMedal
	SAY @26 /* ~<CHARNAME>, before you leave - I never had the opportunity to personally thank you for your efforts during the Dragonspear campaign.~ */
	
	= @27 /* ~I want you to know that we couldn't have succeeded without you.~ */
	
	= @28 /* ~(He reaches into his desk, and pulls out a medal.)~ */
	
	= @29 /* ~Take this medal.~ */
	
	IF ~~ THEN
	DO ~
		GiveItemCreate("XAMEDAL", LastTalkedToBy(Myself),0,0,0)
		ActionOverride(LastTalkedToBy(Myself), SetItemFlags("XAMEDAL", IDENTIFIED,TRUE))
	~
	GOTO XA_GiveMedal_
	
END

IF ~~ THEN BEGIN XA_GiveMedal_
	SAY @118 /* ~You earned it.~ */
	
	IF ~~ THEN REPLY @30 /* ~Thank you, Marshal Nederlok. It was a pleasure to work with you and the rest of the coalition.~ */
	GOTO XA_GiveMedal3
	
	IF ~~ THEN REPLY @31 /* ~Thank you... you know, a word or two from you could have helped me greatly during my trial.~ */
	GOTO XA_GiveMedal2
END

IF ~~ THEN BEGIN XA_GiveMedal2
	SAY @33 /* ~I'd have vouched for you and your character if I had the opportunity to do so. As you know, I was tasked with neutralizing the last of Caelar's forces while your trial was taking place.~ */
	
	= @34 /* ~In any case, I doubt it would have made a difference. Duke Entar wanted you dead, and the evidence against you was damning.~ */
	
	= @35 /* ~As I understand, it was Captain Corwin who pleaded with Eltan, Belt and Jannath to exile you, rather than have you executed. I'm glad she was successful.~ */
	
	IF ~~ THEN REPLY @37 /* ~And so am I. Thank you, both.~ */
	GOTO XA_GiveMedal3
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ EXTERN XACORWIJ XA_GiveMedal2A
END

IF ~~ THEN BEGIN XA_GiveMedal3
	SAY @32 /* ~Certainly. See you at the debriefing.~*/
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_NederlokMedal", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_EndChat
	SAY @25 /* ~Very well. I'll see you at the debriefing.~ */
	IF ~~ THEN
	EXIT
END

IF ~
	Global("XA_PartyRemovalProcessing", "GLOBAL", 2)
~ THEN BEGIN XA_WYRM_0
	SAY @0 /* ~Captain Corwin! Welcome home, and congratulations on a job well done!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_PartyRemovalProcessing", "GLOBAL", 3)
		SetGlobal("XA_NederlokGreeting", "GLOBAL", 1)
		SetGlobal("XA_BenceWyrm", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_WYRM_1 //OK
END

IF ~~ THEN BEGIN XA_WYRM_2
	SAY @1 /* ~It is good to see you again, <CHARNAME>. It's been a while.~ */
	
	IF ~
		!IsValidForPartyDialog("Valygar")
	~ THEN REPLY @2 /* ~Likewise, Marshall Nederlok.~ */
	GOTO XA_WYRM_3
	
	IF ~
		!IsValidForPartyDialog("Valygar")
	~ THEN REPLY @3 /* ~Yes, it has. It's good to be back.~ */
	GOTO XA_WYRM_3
	
	IF ~
		IsValidForPartyDialog("Valygar")
	~ THEN REPLY @2 /* ~Likewise, Marshall Nederlok.~ */
	EXTERN XACORWIJ XA_WYRM_VALYGAR
	
	IF ~
		IsValidForPartyDialog("Valygar")
	~ THEN REPLY @3 /* ~Yes, it has. It's good to be back.~ */
	EXTERN XACORWIJ XA_WYRM_VALYGAR
	
	IF ~~ THEN REPLY @4 /* ~I wasn't expecting to see you here.~*/
	GOTO XA_WYRM_2A //OK
END

IF ~~ THEN BEGIN XA_WYRM_2A
	SAY @5 /* ~Ah... yes. I was reassigned to deal with the refugee crisis shortly after we'd neutralized the last remnants of Caelar's crusade.~ */
	
	IF ~
		!IsValidForPartyDialog("Valygar")
	~ THEN
	GOTO XA_WYRM_3 //OK
	
	IF ~
		IsValidForPartyDialog("Valygar")
	~ THEN
	EXTERN XACORWIJ XA_WYRM_VALYGAR //OK
END

IF ~~ THEN BEGIN XA_WYRM_VALYGAR2
	SAY @13 /* ~Excellent. It's good to meet you, Valygar. I am Marshal Kyrill Nederlok. As I'm sure Captain Corwin mentioned, the Flaming Fist is always seeking to recruit high caliber individuals, such as yourself.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_ValygarJoinFF", "GLOBAL", 1)
	~
	EXTERN VALYGARJ XA_WYRM_VALYGAR3
END

IF ~~ THEN BEGIN XA_WYRM_3
	SAY @6 /* ~Now, to business. Captain, <CHARNAME>, the Dukes, have requested a debriefing from the both of you at 0800 tomorrow morning. I expect that it will last for several hours. Do not be late.~ */
	
	IF ~~ THEN 
	GOTO XA_WYRM_6B //OK
	
	IF ~
		NumInPartyGT(2)
	~ THEN
	GOTO XA_WYRM_3A //OK
END

IF ~~ THEN BEGIN XA_WYRM_3A
	SAY @7 /* ~Your companions are welcome to take part in the debriefing as well.~ */
	
	IF ~
		IsValidForPartyDialog("Valygar")
	~ THEN GOTO XA_WYRM_6A
	
	IF ~
		!IsValidForPartyDialog("Valygar")
	~ THEN GOTO XA_WYRM_6B
END

IF ~~ THEN BEGIN XA_WYRM_6A
	SAY @14 /* ~Once the debrief is concluded, Captain, please escort Valygar to headquarters. It will be a good opportunity for him to see and ask questions about the kind of work we do.~ */
	
	IF ~~ THEN
	EXTERN XACORWIJ XA_WYRM_6A
END

IF ~~ THEN BEGIN XA_WYRM_6B
	SAY @9 /* ~One more thing - the citizens have been informed of your return, <CHARNAME>, and of your innocence. I'm sure most will welcome you, though there may be a small number who will take exception to someone of your... nature... wandering the streets.~ */
	
	= @11 /* ~Captain, if anyone gives the hero a hard time, I want you to let me know, personally. Am I clear?~ */
	
	IF ~
		!GlobalGT("XA_CorwinSlaverPlot", "GLOBAL", 0)
	~ THEN
	EXTERN XACORWIJ XA_WYRM_7 //OK
	
	IF ~
		GlobalGT("XA_CorwinSlaverPlot", "GLOBAL", 0)
	~ THEN
	EXTERN XACORWIJ XA_NEDERL_SlaverPlot //OK
END

IF ~~ THEN BEGIN XA_WYRM_8
	SAY @12 /* ~Very good. I must now return to my duties. I'll see you at the debriefing.~ */
	
	IF ~~ THEN
	EXIT
	
	IF ~
		GlobalGT("XA_NebDead", "GLOBAL", 0)
	~ THEN
	DO ~
		SetGlobal("XA_ToldNederlokNeb", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_NebNederlok 
END

IF ~~ THEN BEGIN XA_NebNederlok2
	SAY @120 /*~Yes, Captain?~*/
	
	IF ~~ THEN
	EXTERN XACORWIJ XA_NebNederlok3

END

IF ~~ THEN BEGIN XA_NebNederlok4
	SAY @121 /*~Excellent! I look forward to reading your report.~*/
	
	IF ~~ THEN
	EXTERN XACORWIJ XA_NebNederlok5

END

IF ~~ THEN BEGIN XA_NebNederlok6
	SAY @122 /*~It can wait. Take some time for yourself, Captain. I know you must be eager to see your family. Now, if there's nothing else, I'll see you both in the morning.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_NebNederlok", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_NEDERL_SlaverPlot2
	SAY @15 /* ~Explain.~ */
	
	IF ~~ THEN REPLY @19 /* ~We encountered a large number of refugees from Caelar's crusade. They told us that they were shipped out of Baldur's Gate to Athkatla.~ */
	GOTO XA_NEDERL_SlaverPlot2A
	
	IF ~
		GlobalGT("XA_CorwinSlaverPlot", "GLOBAL", 0)
	~ THEN EXTERN XACORWIJ XA_NEDERL_SlaverPlot3
END

IF ~~ THEN BEGIN XA_NEDERL_SlaverPlot2A
	SAY @20 /* Go on. */
	
	IF ~~ THEN REPLY @21 /* ~They were told that they were being moved to new homes in other cities. Instead, when they arrived in Athkatla, the children were separated from their parents and sold to slavers. We weren't able to find the parents, though we did free the children from their captors.~*/
	GOTO XA_NEDERL_SlaverPlot2B
END

IF ~~ THEN BEGIN XA_NEDERL_SlaverPlot2B
	SAY @22 /* ~I see... Very well. Captain Corwin - I want you to assist <CHARNAME> in investigating the matter. I suggest checking with the harbor master first. No ships can enter or leave the city docks without him knowing about it.~ */
	
	= @17 /*  ~Also, speak to Lord Winston. The Dukes, and myself for that matter, have relied on him to expedite the resettlement of the refugees. He may be able to help. His company is based in the old Iron Throne building.~ */
	
	= @18 /* ~Come and see me if you find evidence pointing to who's responsible. My office is in the second floor of the Flaming Fist headquarters.~*/
	
	IF ~~ THEN 
	EXTERN XACORWIJ XA_WYRM_NEDERL_END
END

IF ~~ THEN BEGIN XA_NEDERL_SlaverPlot4
	SAY @16 /* ~I see... Very well. I suggest checking with the harbor master first. No ships can enter or leave the city docks without him knowing about it.~ */
	
	= @17 /*  ~Also, speak to Lord Winston. The Dukes, and myself for that matter, have relied on him to expedite the resettlement of the refugees. He may be able to help. His company is based in the old Iron Throne building.~ */
	
	= @18 /* ~Come and see me if you find evidence pointing to who's responsible. My office is in the second floor of the Flaming Fist headquarters.~*/
	
	IF ~~ THEN
	EXTERN XACORWIJ XA_WYRM_NEDERL_END
	
	IF ~
		GlobalGT("XA_NebDead", "GLOBAL", 0)
	~ THEN
	DO ~
		SetGlobal("XA_ToldNederlokNeb", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_NebNederlok3A
END

CHAIN XAVIRGIL XA_NederlokVirgiXAhain
	@76 /* ~Yes.~*/
	== XANEDERL
	@77 /* ~I see. Roughly how many are we talking, and where were they sent?~*/
	== XAVIRGIL
	@78 /*~Hundreds, to Calimshan, Athkatla, even Waterdeep. It's all listed in the manifests. The ciphers to decode them are in the ledger.~ */
	== XANEDERL
	@79 /* ~The Dukes will not be pleased to hear this. Lord Winston was held in such high regard precisely because of his work in 'resettling' the refugees.~*/
	= @80 /* ~Do you have anything else to add to your statement?~*/
	== XAVIRGIL
	@81 /* ~Only that I think that his intentions were just, at least in the beginning. There were just too many refugees to resettle legitimately, and the pressure placed on him became too great.~*/
	== XANEDERL
	@82 /* ~Very well. Sign here.~*/
	== XANEDERL
	@83 /* ~Kent, issue a warrant for Lord Winston. We'll arrest him when he returns from his business trip. And escort Virgil to his cell.~*/
	== XAVIRGIL
	@84 /*~I'm to be imprisoned? But.. but I cooperated! I told you e-everything!~ */
	== XANEDERL
	@85 /*~You did. But participating in slaver activity is a very serious crime. I can't just let you go free, at least not yet. The fact that you cooperated will significantly reduce the severity of your punishment. Kent, take him away.~ */
	== KENT
	@86 /* ~Yes, sir.~*/
EXIT
