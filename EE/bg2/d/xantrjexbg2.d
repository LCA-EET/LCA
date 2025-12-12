//{ Edwin
	INTERJECT_COPY_TRANS2 EDWIN 8 XA_EDWIN_8
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@183 /*~Killing one of the city wizards will likely lead us into more trouble than we can handle. If there's an alternative, we should explore it.~*/
	END
	
	INTERJECT_COPY_TRANS2 EDWINJ 170 XA_EDWINJ_170
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@188 /*~What have we here?~ [BD60998] */
	END
	
	INTERJECT_COPY_TRANS2 EDWINJ 171 XA_EDWINJ_171
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@189 /*~~I can hear the catcalls from the sailors at the Blushing Mermaid already... can't say I'd blame them, either.~  */
		== EDWINJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@190 /*~Quiet, you flirtatious wench! Those who would dare catcall the great Odesseiron shall suffer his - erm.. her wrath!~*/
	END
//}

//{ C6SAFA
	INTERJECT_COPY_TRANS2 C6SAFA 0 XA_C6SAFA_0
		== XACORWIB 
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@176 /*~Safana! You're in league with Irenicus!?~*/
	END
//}

//{ BMINSC7
	INTERJECT_COPY_TRANS2 BMINSC 7 XA_BMINSC_7
		== XACORWIB 
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@191 /*Does anyone know what the hells these two are talking about?~*/
	END
//}
//{ YOSHJ
	INTERJECT_COPY_TRANS2 YOSHJ 113 XA_YOSHJ_113
	== XACORWIB
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	@182 /*~Damn it! I knew it was a mistake to trust you. When this is over, I'll put you UNDER the prison!~ */
	END
//}
//{ CLMOM
	INTERJECT_COPY_TRANS2 CLMOM 5 XA_CLMOM_5
		== XACORWIB 
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@170 /*~Have you tried, I don't know, finding an honest job?~*/
		== CLMOM
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@173 /*~Hah! You expect me to what, wait tables for a few coppers an hour? While filthy slobs place their hands on my bottom and my bosom? No thanks — I make much more doing this.~*/
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@174 /*~You're setting a terrible example for your daughter!~*/
		== CLKID
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@171 /*~Mommy? What does she mean?~*/
		== CLMOM
		IF ~
			See("Lanie")
			IsValidForPartyDialogue("XACORWIN")
		~
		@172 /*~Pay her no mind, sweetheart. As for you, don't you have more important things to do than harass a woman trying to feed her child? Begone!~ */
		== CLMOM
		IF ~
			!See("Lanie")
			IsValidForPartyDialogue("XACORWIN")
		~
		@175 /*~Don't you have more important things to do than harass a woman trying to feed her child? Begone!~  */
	END
//}

//{ DELCIA
	INTERJECT_COPY_TRANS2 DELCIA 43 XA_DELCIA_43
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@165  /*~I don't know who you think you are, but you're speaking to the hero of Baldur's Gate! Show a little respect!~ [BD37508]*/
		== DELCIA
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@166  /*~Is that so? I thought I smelled the filth of that miserable backwater on you.~ */
	END
//}

//{ JAHERIAJ
	INTERJECT_COPY_TRANS2 JAHEIRAJ 351 XA_JAHEIRAJ_351
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@113  /*~Enough! Infighting isn't going to help any of us achieve our goals. Let's move out.~*/
	END
//}

//{ FIRKRA02
	INTERJECT_COPY_TRANS2 FIRKRA02 4 XA_FIRKRA02_4
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@132 /*~That's all this is to you? Revenge?~ [BD35761] */
	END
//}

//{ SCDUR
	INTERJECT_COPY_TRANS2 SCDUR 25 XA_SCDUR_25
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@162  /* ~Neb is here!? <CHARNAME>, Neb is wanted for the murder of dozens of children in Baldur's Gate! He escaped our custody just weeks before I arrived here. We have to apprehend him!~*/
		DO ~
			SetGlobal("XA_LC_CorwinNebAthkatla", "GLOBAL", 1)
		~
	END
//}

//{ JARLAXLE
	INTERJECT JARLAXLE 16 XA_JARLAXLE_16
		== XACORWIJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@0 /* ~Like hells you will!~*/
		= @1 /* ~(She draws her bow, and aims at Jarlaxle's head.)~*/
		
		== JARLAXLE
		@2 /* ~Easy now, Captain. Harm me, and the magic of this place will send you and your friends, sans disguise, right into the heart of Ust Natha. How much fun do you think they'll have tormenting an officer of the Flaming Fist, mm?~*/
		
		== XACORWIJ
		@3 /* ~Gods damnit...~ */
		= @4 /* ~(She lowers her weapon.)~*/
		
		== JARLAXLE
		@5 /* ~A wise decision. Now, back to the business at hand.~ */
	END JARLAXLE 17
//}

//{ XA_OHNTELAN_14
	INTERJECT_COPY_TRANS2 JAHEIRAJ 550 XA_OHNTELAN_14
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@6 /* ~The wizards have had time to prepare. They'll be ready for us.~ */
	END

	INTERJECT_COPY_TRANS2 KELDORJ 287 XA_OHNTELAN_14
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@6 /* ~The wizards have had time to prepare. They'll be ready for us.~ */
	END

	INTERJECT_COPY_TRANS2 MAZZYJ 210 XA_OHNTELAN_14
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@6 /* ~The wizards have had time to prepare. They'll be ready for us.~ */
	END

	INTERJECT_COPY_TRANS2 VALYGARJ 132 XA_OHNTELAN_14
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@6 /* ~The wizards have had time to prepare. They'll be ready for us.~ */
	END

	INTERJECT_COPY_TRANS2 NEERAJ 39 XA_OHNTELAN_14
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@6 /* ~The wizards have had time to prepare. They'll be ready for us.~ */
	END
//}



//{ XA_GORMAD1_2
	INTERJECT_COPY_TRANS2 GORMAD1 2 XA_GORMAD1_2
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@8 /* ~We're not going to get anywhere with this one. He's nuts.~*/
	END
//}



//{ XA_PPIRENI1_22
	INTERJECT_COPY_TRANS2 PPIRENI1 22 XA_PPIRENI1_22
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@11 /* ~The Flaming Fist knows him well. He's a cleric of Cyric. We'd arrested him on numerous occasions for proselytizing on the streets of the city.~ */
		
		== PPIRENI1
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@12 /* ~Ah, I see. While not nearly as mad as his god, he is insane nonetheless.~ */
		
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@13 /* ~He was released not too long ago, if I recall. It's a wonder how he made it to Amn.~ */
		
		== PPIRENI1
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@14 /* ~Madness lends its wielder a drive and determination that should never be underestimated.~ */
	END
//}

//{ XA_GORDOR1_19
	INTERJECT_COPY_TRANS2 GORODR1 19 XA_GORODR1_19 //OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@15 /* ~I don't like the sound of this, <CHARNAME>. We're being asked to venture into an old prison to restore the seals of, what, exactly? We have no idea what we're up against.~*/
		
		== KELDORJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			IsValidForPartyDialogue("KELDORN")
		~
		@16 /* ~Normally, I'd agree, but these are priests of Helm. We've no reason not to trust them. If there is evil imprisoned within the tower then we should ensure that it remains so.~ */
	END
//}

//{ UDSILVER
	INTERJECT_COPY_TRANS2 UDSILVER 17 XA_UDSILVER_17 //OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@17 /* ~A mother would do anything to protect her child. Humans and dragons aren't any different in that regard.~ */
	END
//}

//{ SBWENCH
	INTERJECT_COPY_TRANS2 SBWENCH 9 XA_SBWENCH_9 //OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@18 /* ~Oh "Eddie", you broke that sweet girl's heart.~ */
	END
//}

//{ IMOEN2
	INTERJECT_COPY_TRANS2 IMOEN2 22 XA_IMOEN2_22 //OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@19 /* ~She's your sister, for Tymora's sake! You're not going to leave her to escape on her own, right?~*/
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
	END
//}

//{ PPSAEM
	INTERJECT_COPY_TRANS2 PPSAEM 14 XA_PPSAEM_14
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@20 /* ~Finally! Any longer and I might have hurled.~*/
	END

	INTERJECT_COPY_TRANS2 PPSAEM 53 XA_PPSAEM_53
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@20 /* ~Finally! Any longer and I might have hurled.~*/
	END
//}

//{ ROGER
	INTERJECT_COPY_TRANS2 ROGER 13 XA_ROGER_13
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@21 /* ~Trolls? This just gets better and better, doesn't it? We should ready our fire arrows and spells prior to battle.~ */
	END
//}

//{ DRUSH
	INTERJECT_COPY_TRANS2 DRUSH 9 XA_DRUSH_9
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@22 /* ~Ugh, that stinks! Just keep it away from me!~*/
	END
//}

//{ DELTOW01
	INTERJECT_COPY_TRANS2 DELTOW01 9 XA_DELTOW01_9
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@23 /* ~Try anything, and you'll end up in the infirmary. The same goes for all of you!~ */
	END
//}

//{ GORAPP1
	INTERJECT_COPY_TRANS2 GORAPP1 17 XA_GORAPP1_17
		== XACORWIB
		IF ~
			GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		@24 /* ~I'm not exactly eager to go up against the prince of demons. Whatever you decide, I'll have your back.~ */
		
		== XACORWIB
		IF ~
			GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		@25 /* ~I'm not exactly eager to go up against the prince of demons. Whatever you decide, love, I'll have your back.~ */
	END
//}

//{ TOLGER
	INTERJECT_COPY_TRANS2 TOLGER 18 XA_TOLGER_18
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@26 /* ~I really don't like the sound of this.~ */
	END
//}

//{ ARAN
	INTERJECT_COPY_TRANS2 ARAN 4 XA_ARAN_4
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Global("C#IM_ImoenStays", "GLOBAL", 0)
		~
		@27 /* ~These guilds are all the same, in every city. I feel dirty just by speaking to them, let alone working for them. Still, they are a necessary means to an end if we're to rescue Imoen.~*/
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("C#IM_ImoenStays", "GLOBAL", 0)
		~
		@193 /* ~These guilds are all the same, in every city. I feel dirty just by speaking to them, let alone working for them.~*/
	END
	
	INTERJECT_COPY_TRANS2 ARAN 0 XA_ARAN_0
		== ARAN
		IF ~
			See("XACORWIN")
			IsValidForPartyDialogue("XACORWIN")
		~
		@167 /* ~And you... you must be Captain Corwin of the Baldur's Gate Flaming Fist. Alatos sends his regards, my dear.~ */
		== XACORWIB
		IF ~
			See("ARAN")
			IsValidForPartyDialogue("XACORWIN")
		~
		@168 /* ~Hmph. You know why we're here.~ */
		== ARAN
		IF ~
			See("XACORWIN")
			IsValidForPartyDialogue("XACORWIN")
		~
		@169 /* ~Indeed.~ */
	END
//}

//{ KORGANJ
	INTERJECT_COPY_TRANS2 KORGANJ 107 XA_KORGANJ_107 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@28 /* ~(She tries, unsucessfully, to stifle a laugh.)~ */
	END
	
	INTERJECT_COPY_TRANS2 KORGANJ 15 XA_KORGANJ_15 //OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@29 /* ~What do you need with the book anyway? Can you even read?~ */
		== KORGANJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@30 /* ~Har! Har! Har! Yer lucky I fancy you, longlimbs, else I be burying me axe, and maybe something more, in yer cute little backside, hah hah.~ */
	END

	INTERJECT_COPY_TRANS2 KORGANJ 22 XA_KORGANJ_22 //OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@31 /* ~(She rolls her eyes) You're disgusting, Korgan.~ */
		= @32 /* ~You're disgusting, Korgan.~ */
	END
//}

//{ MAZZY
	INTERJECT_COPY_TRANS2 BMAZZY 77 XA_BMAZZY_77
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@156 /*~You'll get used to it.~*/
	END
//}

//{ VICG1
	INTERJECT_COPY_TRANS2 VICG1 2 XA_VICG1_2
		== XACORWIB
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@38 /* ~<CHARNAME>! That's Viconia, she served in our coalition - they are going to kill her!~ */
	END
//}

//{ EMBARL
	INTERJECT_COPY_TRANS2 EMBARL 6 XA_EMBARL_6
		== XACORWIB
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		@39 /* ~Strong, and compassionate. Just two of the many traits I love about you.~ */
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		
		== XACORWIB
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		@40 /*  ~Strong, and compassionate. Just two of the many traits I admire about you.~ */
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
	END
//}

//{ RUFFIAN
	INTERJECT_COPY_TRANS2 RUFFIAN 0 XA_RUFFIAN_0
		== XACORWIB
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@41 /* ~You'll back off if you know what's good for you.~ */
		
		== RUFFIAN
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@42 /* ~I don't take orders from the likes of you, wench. Go, be a good girl and fetch me another drink.~ */
		
		== XACORWIB
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@43 /*  ~I think you've had enough already. Come on, <CHARNAME>. Let's not waste our time with this one.~ */
	END
//}

//{ DELON
	INTERJECT_COPY_TRANS2 DELON 15 XA_DELON_15
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_LC_HelpDelon", "GLOBAL", 1)
		~
		@44 /* ~I'm glad you agreed to help. There's a lot of good we can do out here, even if it's not direcly tied to the hunt for the wizard.~ */
		DO ~
			SetGlobal("XA_LC_HelpDelon", "GLOBAL", 1)
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
	END

	INTERJECT_COPY_TRANS2 DELON 16 XA_DELON_16
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_LC_HelpDelon", "GLOBAL", 1)
		~
		@44 /* ~I'm glad you agreed to help. There's a lot of good we can do out here, even though it's not tied to our hunt for the wizard.~ */
		DO ~
			SetGlobal("XA_LC_HelpDelon", "GLOBAL", 1)
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
	END

	INTERJECT DELON 5 XA_DELON_5
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@45 /* ~Would it kill you to show a little kindness to this child?~ */
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
		
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			PartyGoldGT(10)
		~
		@46 /* ~Come here, boy. Take this money. Get yourself something to eat.~ */
		
		== DELON
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			PartyGoldGT(10)
		~
		@47 /* ~T-thank you, ma'am. You're very n-nice.~ */
	END
//}

//{ MARIA
	INTERJECT_COPY_TRANS2 MARIA 5 XA_MARIA_5
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@48 /* ~We really shouldn't be here. They need some privacy to sort this out on their own.~ */
	END
//}

//{ GORDEMO
	INTERJECT_COPY_TRANS2 GORDEMO 1 XA_GORDEMO_1
		== XACORWIB
		IF ~
			GlobalLT("XA_LC_EnteredToB", "GLOBAL", 1)
			IsValidForPartyDialogue("XACORWIN")
		~
		@49 /* ~Did - did you feel that?~ */
	END
//}

//{ YUSUF
	INTERJECT_COPY_TRANS2 YUSUF 2 XA_YUSUF_2
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@50 /* ~Anomen - his daughter was innocent! Have you lost your mind!?~ */
		DO ~
			SetGlobal("XA_LC_CorwinHatesAnomen", "GLOBAL", 1)
		~
	END
//}

//{ MAZZY
	INTERJECT_COPY_TRANS2 MAZZY 13 XA_MAZZY_13 //OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@51 /* ~She seems to know what we're up against here. I think she'll prove a valuable ally.~*/
	END
//}

//{ UHMAY01
	INTERJECT_COPY_TRANS2 UHMAY01 138 XA_UHMAY01_138
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			PartyGoldGT(1000)
		~
		@52 /* ~They need our help more than we need their money, love.~*/
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
		
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			PartyGoldGT(1000)
		~
		@53 /*  ~They need our help more than we need their money, <CHARNAME>.~*/
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
		
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			!PartyGoldGT(1000)
		~
		@54 /* ~They need our help, love.~ */
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
		
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			!PartyGoldGT(1000)
		~
		@55 /*  ~They need our help, <CHARNAME>.~ */
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
		
	END
//}

//{ C6DRIZZ1
	INTERJECT_COPY_TRANS2 C6DRIZZ1 37 XA_C6DRIZZ1_37
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@56 /* ~Excellent! Your help is very much appreciated.~ */
	END
//}

//{ SUDEMIN
	INTERJECT_COPY_TRANS2 SUDEMIN 22 XA_SUDEMIN_22
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@57 /* ~Wait — You mean to tell me that after all of that, you set them loose?~*/
		= @181 /* ~Did you stop for one second to think of what they might do in revenge? Your shortsightedness led to the murder of the daughter of one of the Grand Dukes, with an innocent <PRO_MANWOMAN> framed for the crime! <CHARNAME> was nearly executed!~*/
		== SUDEMIN
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@58 /* ~No one imagined that they would cause so much havoc. We are truly sorry.~ */
	END

	INTERJECT_COPY_TRANS2 SUDEMIN 35 XA_SUDEMIN_35
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@59 /* ~<CHARNAME>, in spite of their foolishness, we share a common enemy. We should help them.~ */
	END
//}

//{ UDLESA
	INTERJECT_COPY_TRANS2 UDLESA 1 XA_UDLESA_1
		== XACORWIB
		@179 /*~We aren't here to pick fights with braggarts.~ [XA100110]*/
	END
	
	INTERJECT_COPY_TRANS2 UDLESA 2 XA_UDLESA_2
		== XACORWIB
		@179 /*~We aren't here to pick fights with braggarts.~ [XA100110]*/
	END
	
	INTERJECT_COPY_TRANS2 UDLESA 3 XA_UDLESA_3
		== XACORWIB
		@179 /*~We aren't here to pick fights with braggarts.~ [XA100110]*/
	END
	
	INTERJECT_COPY_TRANS2 UDLESA 4 XA_UDLESA_4
		== XACORWIB
		@179 /*~We aren't here to pick fights with braggarts.~ [XA100110]*/
	END
//}

//{ UDSIMYAZ
	INTERJECT_COPY_TRANS2 UDSIMYAZ 16 XA_UDSIMYAZ_16
		== XACORWIB
		@180 /*~Hear him out. This might be our only option.~ */
	END
//}

//{ HAERDAJ
	INTERJECT_COPY_TRANS2 HAERDAJ 114 XA_HAERDAJ_114 //OK
		== XACORWIB 
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@78 /* ~That goes for all of us. We need to act the part to maintain our cover.~  */
	END

	INTERJECT_COPY_TRANS2 HAERDAJ 90 XA_HAERDAJ_90 //OK
		== XACORWIB 
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@79 /* ~She has her moments.~ */
	END
//}

//{ KELDORJ
	INTERJECT_COPY_TRANS2 KELDORJ 23 XA_KELDORJ_23 //OK
		== XACORWIB 
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@81 /* ~Keldorn, your children need their mother. There must be another way.~ [XACORB26] */
		== KELDORJ
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@82 /* ~How, then, should I proceed? My family's honor is at stake!~ */
	END

	INTERJECT_COPY_TRANS2 KELDORJ 26 XA_KELDORJ_26 //OK
		== XACORWIB 
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@83 /*~<CHARNAME> - we need to keep a close eye on Keldorn. I'm afraid that this meeting with Sir William may quickly spiral out of control.~*/
	END

	INTERJECT_COPY_TRANS2 KELDORJ 103 XA_KELDORJ_103 //OK
		== XACORWIB 
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@84 /* ~Ajantis... yes. I remember meeting him during a patrol southeast of Wyrm's Crossing. We were investigating reports of bandit activity in the area. What a shame.~ */
	END

	INTERJECT_COPY_TRANS2 KELDORJ 145 XA_KELDORJ_145 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@85 /* ~Don't be so sure. As distasteful as it is to say, we've worked well with Edwin in the past.~ */
		== KELDORJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@86 /*  ~You've worked with this scoundrel? I am surprised, Captain.~ */
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~  
		@87 /* ~Yes. I'm not proud of it, but he has proven his worth to <CHARNAME> and myself on many occasions.~ */
	END

	INTERJECT_COPY_TRANS2 KELDORJ 181 XA_KELDORJ_181 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_LC_CorwinViconiaInterject", "MYAREA", 1)
		~
		@37 /* ~I'm not sure I trust her either, but... she did prove her worth in supporting the coalition against Caelar's crusade. We should give her a chance.~ */
		DO ~
			SetGlobal("XA_LC_CorwinViconiaInterject", "MYAREA", 1)
		~
	END

	INTERJECT_COPY_TRANS2 KELDORJ 182 XA_KELDORJ_182 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~
		@89 /*  ~(She gives Keldorn a sharp stare.)~ */
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
			SetGlobalTimer("XA_LC_CorwinScoldKeldornTimer", "GLOBAL", ONE_ROUND)
		~
	END

	INTERJECT_COPY_TRANS2 KELDORJ 236 XA_KELDORJ_236 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_LC_CorwinCoverUD", "GLOBAL", 1)
		~
		@89 /*  ~(She gives Keldorn a sharp stare.)~ */
		DO ~
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
			SetGlobalTimer("XA_LC_CorwinScoldKeldornTimer", "LOCALS", ONE_ROUND)
		~
	END
//}

//{ HENDAK
	INTERJECT_COPY_TRANS2 HENDAK 4 XA_HENDAK_4
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@163 /*~<CHARNAME> — Let's get them out of there.~ [BD40129] */
	END
	
	INTERJECT_COPY_TRANS2 HENDAK 19 XA_HENDAK_19
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@164 /*~We have to stop them, even if it temporarily pulls us away from our mission.~ */
	END
//}

//{ LEHTIN
	INTERJECT_COPY_TRANS2 LEHTIN 15 XA_LEHTIN_15
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@90 /* ~You'll pay for your crimes, slaver scum!~*/
	END
//}

//{ BODHI
	INTERJECT_COPY_TRANS2 BODHI 1 XA_BODHI_1 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@91 /* ~<CHARNAME> - something's wrong here. I don't trust her.~ */
	END

	INTERJECT_COPY_TRANS2 BODHI 18 XA_BODHI_18 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@92 /*  ~I hope you made the right decision. I can't shake the feeling that you didn't.~ */
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
	END

	INTERJECT_COPY_TRANS2 BODHI 21 XA_BODHI_21 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@93 /* ~And we'll be ready for you. You can count on that.~ */
	END

	INTERJECT_COPY_TRANS2 BODHI 34 XA_BODHI_34 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@93 /* ~And we'll be ready for you. You can count on that.~ */
	END
//}

//{ FIRKRA02
	INTERJECT_COPY_TRANS2 FIRKRA02 21 XA_FIRKRA02_21 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@95 /*  ~Let's get out of here, while we still can. We would do well to avoid the wrath of this beast.~ */
	END 

	INTERJECT_COPY_TRANS2 FIRKRA02 23 XA_FIRKRA02_23 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@96 /*  ~<CHARNAME>! Let's just rescue the child and get out of here! Leave the dragon be.~ */
	END 

	INTERJECT_COPY_TRANS2 FIRKRA02 29 XA_FIRKRA02_29 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@97 /* ~<CHARNAME> — I don't know what you're up to, but I warn you that I won't take part in this betrayal.~ */
		DO ~
			IncrementGlobal("XA_LC_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
	END 
//} 

//{ VALYGAR
	INTERJECT_COPY_TRANS2 VALYGAR 18 XA_VALYGAR_18 //OK
		== XACORWIB 
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@80 /* ~Let's hear what he has to say. I'm inclined to believe the word of another ranger over that of a wizard.~ */
	END
//}

//{ VALYGARJ
	INTERJECT_COPY_TRANS2 VALYGARJ 58 XA_VALYGARJ_58 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@98 /* ~Don't be so sure. As distasteful as it is to say, we've worked well with Edwin in the past.~ */
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@99 /*  ~You've worked with this scoundrel? I am surprised, Captain.~ */
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~  
		@100 /* ~Yes. I'm not proud of it, but he has proven his worth to <CHARNAME> and myself on many occasions.~ */
	END

	INTERJECT_COPY_TRANS2 VALYGARJ 50 XA_VALYGAR_50 // OK
		== VICONIJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_LC_CorwinPromoted","GLOBAL",1)
		~
		@101 /* ~What about our dear Captain Corwin, then? You seem the type of man that would enjoy having a strong, assertive woman have her way with him.~   */
		== VICONIJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_LC_CorwinPromoted","GLOBAL",1)
		~
		@102 /* ~What about our dear Major Corwin, then? You seem the type of man that would enjoy having a strong, authoritative female have her way with him.~   */
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		@103 /* ~Your 'insights' aside, she's romantically involved.~   */
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		@104 /* ~I would not have her, or her daughter, share in my family's curse.~ */
		== VICONIJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@105 /* ~Were you more masculine, you wouldn't suffer from such compunctions.~  */
		== XACORWIJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		@106 /* ~Valygar, that reasoning will prevent you from forming any kind of lasting relationship. You need to let go of your past.~ */
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
		~
		@107 /* ~I.. I appreciate the advice, Captain. ~*/
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
		~
		@108 /* ~I.. I appreciate the advice, Major. ~*/
	END

	INTERJECT VALYGARJ 68 XA_VALYGARJ_68 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@109 /* ~Don't let her get to you, Valygar. Calm down.~ */
		== VALYGARJ
		IF ~
			!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
		~
		@110 /*~But she - damnit! No, you're right, Captain.~ */
		== VALYGARJ
		IF ~
			Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
		~
		@111 /*~But she - damnit! No, you're right, Major.~ */
		== VICONIJ
		@112 /* ~Just as I thought. Pathetic.~ */
		== XACORWIB
		@113 /* ~That's enough from the both of you! Infighting isn't going to help any of us to achieve our goals. Let's move out.~ */
	END

	INTERJECT_COPY_TRANS2 VALYGARJ 117 XA_VALYGARJ_117 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@114 /* ~Tell me you aren't seriously considering giving him to this wizard.~ */
	END

	INTERJECT_COPY_TRANS2 VALYGARJ 119 XA_VALYGARJ_119 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@115 /* ~And that's why you're alone. Yes, you can be hurt, but if you aren't willing to place at least some trust in others, you'll always be alone.~ */
	END
//}

//{ HEXXAT
	INTERJECT_COPY_TRANS2 HEXXAT 65 XA_HEXXAT_65 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_LC_CorwinHexxatCloak", "GLOBAL", 1)
		~
		@116 /* ~You aren't a person at all. You're a monster, a beast. <CHARNAME>, let's not waste anymore time with this creature.~ */
		DO ~
			SetGlobal("XA_LC_CorwinHexxatCloak", "GLOBAL", 1)
		~
	END

	INTERJECT_COPY_TRANS2 HEXXAT 40 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS2 HEXXAT 45 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS2 HEXXAT 46 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS2 HEXXAT 60 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS2 HEXXAT 81 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS2 HEXXAT 86 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS2 HEXXAT 87 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS2 HEXXAT 89 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS2 HEXXAT 92 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS2 HEXXAT 102 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS2 HEXXAT 105 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS2 HEXXAT 109 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS2 HEXXAT 110 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END
//}

//{ Anomen
	//{ BANOMEN
	INTERJECT_COPY_TRANS2 BANOMEN 10 XA_BANOMEN_10
		==XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@146 /* ~Hah!~ */
	END

	INTERJECT_COPY_TRANS2 BANOMEN 14 XA_BANOMEN_14
		==XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@147 /* ~~Anomen, if you think a title is going to make people respect you, you're mistaken. One's actions determine whether they are worthy of respect, not their title.~~ */
		
		==BANOMEN
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@148 /* ~I couldn't disagree more.~  */
	END
	
	INTERJECT_COPY_TRANS2 BANOMEN 16 XA_BANOMEN_16
		==XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@147 /* ~~Anomen, if you think a title is going to make people respect you, you're mistaken. One's actions determine whether they are worthy of respect, not their title.~~ */
		
		==BANOMEN
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@148 /* ~I couldn't disagree more.~  */
	END
	
	INTERJECT_COPY_TRANS2 BANOMEN 42 XA_BANOMEN_42
		==XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@149 /* ~Anomen! That's enough!~ */
	END
	
	INTERJECT_COPY_TRANS2 BANOMEN 50 XA_BANOMEN_50
		==XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Gender(Player1, MALE)
		~
		@150 /* ~You're out of line, as usual. <CHARNAME> is many things, but a coward is not one of them. He's put his life on the line for Baldur's Gate and the Sword Coast more times than I can count.~ */
		
		==XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Gender(Player1, FEMALE)
		~
		@151 /* ~You're out of line, as usual. <CHARNAME> is many things, but a coward is not one of them. She's put her life on the line for Baldur's Gate and the Sword Coast more times than I can count.~ */
		
		== BANOMEN
		@152 /* ~Ah, Baldur's Gate — a corrupt, crime-ridden boil on the arse of Toril. It'd have been better had Caelar's crusade razed the city to the ground.~ */
	END
	//}
//}

//{ Dorn

	//{ DORN
	INTERJECT DORN 16 XA_DORN_16
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@7 /* ~Beast! You boast of murdering children!? There's only one punishment befitting your crimes!~*/
	EXTERN DORN 9
	
	INTERJECT DORN 23 XA_DORN_23
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@7 /* ~Beast! You boast of murdering children!? There's only one punishment befitting your crimes!~*/
	EXTERN DORN 9
	//}

	//{ DORNJ	
		INTERJECT_COPY_TRANS2 DORNJ 769 XA_DORNJ_769 // OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@94 /* ~Dorn - you have a chance to be free. Take it!~ */
		END
	//}

	//{ BDORN
		INTERJECT_COPY_TRANS2 BDORN 51 XA_BDORN_51 // OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@118 /* ~ ~You could have all of that done that without giving yourself to a demon, blackguard.~ */
			== BDORN
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@119 /* ~Mine was a choice between life and death, woman. I chose life. You would have done the same.~ */
		END
		
		INTERJECT_COPY_TRANS2 BDORN 2 XA_BDORN_2 
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@136 /*~Ignore him, Rasaad.~*/
		END
		
		INTERJECT_COPY_TRANS2 BDORN 16 XA_BDORN_16 
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@137 /*~Dorn! That's enough.~*/
		END
		
		INTERJECT_COPY_TRANS2 BDORN 23 XA_BDORN_23
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@138 /*~Doubtful. What's certain is that we'd be better off without you, blackguard. Why <CHARNAME> is incapable of seeing this I'll never understand.~*/
			
			== BDORN
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@139 /* ~Hmph. <CHARNAME> understands the power that I possess. And <PRO_HESHE>'d be a fool to cast it aside, especially at the behest of a woman as foolish as yourself.~*/
			
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@140 /* ~Foolish? I'm not the one who sold himself to a demon.~ */
			
			== BDORN
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@141 /* ~Yes, foolish. The proper place for a woman is the home, ideally with her legs spread, or perhaps in the birthing room with a midwife. The battlefield is the dominion of men.~ */
			
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@142 /* ~You're disgusting.~*/
		END
		
		INTERJECT_COPY_TRANS2 BDORN 36 XA_BDORN_36
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@143 /*~'Slave' would be more appropriate.~*/
			
			== BDORN
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@144 /* ~Not now, woman. I suggest you find a man and put something of his in your mouth, lest you voice another boring, predictable insult.~*/
		END
	//}
//}	


//{ Jan

	//{ JANJ
		INTERJECT_COPY_TRANS2 JANJ 133 XA_JANJ_133
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@177 /*~Can you try to be serious just for one gods damned minute?~ [BD54483]*/
		END
	
		INTERJECT_COPY_TRANS2 JANJ 197 XA_JANJ_197 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@60 /* ~Some would say you never left it.~*/
		END

		INTERJECT_COPY_TRANS2 JANJ 195 XA_JANJ_195 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@61 /* ~(A smile crosses her lips, as she tries and fails to stifle a hearty laugh.)~ */
			== JANJ
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@62 /* ~Oh, is that the sweet sound of laughter I hear? From our ever-stoic Captain Corwin? Look, she has a lovely smile too! I'm afraid no one would believe me if I told them it happened.~ */
			== JANJ
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~
			@63 /* ~Oh, is that the sweet sound of laughter I hear? From our ever-stoic Major Corwin? Look, she has a lovely smile too! I'm afraid no one would believe me if I told them it happened.~ */
		END

		INTERJECT_COPY_TRANS2 JANJ 189 XA_JANJ_189 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@64 /* ~What... the... hells?~*/
		END

		INTERJECT_COPY_TRANS2 JANJ 175 XA_JANJ_175 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@65 /*  ~Agreed - we need to pick up the pace. Imoen needs us.~ */
		END

		INTERJECT_COPY_TRANS2 JANJ 142 XA_JANJ_142 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@66 /* ~Jan, this - really - isn't the time!~ */
		END 

		INTERJECT_COPY_TRANS2 JANJ 136 XA_JANJ_136 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@67 /* ~It seems Athkatla and Baldur's Gate are not so different, at least in that regard.~ */
		END

		INTERJECT JANJ 126 XA_JANJ_126 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@68 /* ~Jan?~ */
			== JANJ
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				!Global("XA_LC_CorwinPromoted", "GLOBAL",1)
			~
			@69 /* ~Yes, Captain?~ */
			== JANJ
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				Global("XA_LC_CorwinPromoted", "GLOBAL",1)
			~
			@70 /* ~Yes, Major?~ */
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@71 /* ~Shut up. ~*/
			== JANJ
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@72 /* ~Now, there's no need to be rude. It was just a simple story of furry feet and the foibles of being a teenaged gnome. Ah, youth! I still remember her laughter as -~  */
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@73 /* ~Your mouth. Shut it, or I'll tie your tongue to an arrow and fire it into the ass of the nearest horse. That would make for a fun story, wouldn't it?~*/
			== JANJ
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@74 /* ~Erm... perhaps. But I'm not keen on it. I'll be quiet.~ */
		END

		INTERJECT_COPY_TRANS2 JANJ 113 XA_JANJ_113 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@75 /* ~We should heed his warning. Let's prepare before we head in.~*/
		END

		INTERJECT_COPY_TRANS2 JANJ 89 XA_JANJ_89 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@76 /* ~Is there a point to this story?~*/
		END

		INTERJECT_COPY_TRANS2 JANJ 20 XA_JANJ_20 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@77 /* ~Harsh truths are never easy to accept, Jan. It's good that you did.~ */
		END
	//}

	

//}

//{ HaerDalis

	//{ BHAERDA
	INTERJECT_COPY_TRANS2 BHAERDA 142 XA_BHAERDA_142
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@145 /* ~(She rolls her eyes.)~ */
	END
	
	//}

//}

//{ Kill Gnomes
	INTERJECT_COPY_TRANS2 AERIEJ 123 XA_AERIEJ_123
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_LC_CorwinCoverUD", "GLOBAL", 1)
			GlobalLT("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		~
		@184  /* ~(She gives Aerie a sharp stare.)~*/
		DO ~
			SetGlobal("XA_LC_CorwinScoldAerie", "LOCALS", 1)
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
			SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
		~
	END
	
	INTERJECT_COPY_TRANS2 MAZZYJ 162 XA_MAZZYJ_162
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_LC_CorwinCoverUD", "GLOBAL", 1)
			GlobalLT("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		~
		@185  /* ~(She gives Mazzy a sharp stare.)~*/
		DO ~
			SetGlobal("XA_LC_CorwinScoldMazzy", "LOCALS", 1)
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
			SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
		~
	END
	
	INTERJECT_COPY_TRANS2 KELDORJ 182 XA_KELDORJ_182
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_LC_CorwinCoverUD", "GLOBAL", 1)
			GlobalLT("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		~
		@186  /* ~(She gives Keldorn a sharp stare.)~*/
		DO ~
			SetGlobal("XA_LC_CorwinScoldKeldorn", "LOCALS", 1)
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
			SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
		~
	END
	
	INTERJECT_COPY_TRANS2 JANJ 144 XA_JANJ_144
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			GlobalLT("XA_LC_CorwinCoverUD", "GLOBAL", 1)
			GlobalLT("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
		~
		@187  /* ~(She gives Jan a sharp stare.)~*/
		DO ~
			SetGlobal("XA_LC_CorwinScoldJan", "LOCALS", 1)
			SetGlobal("XA_LC_CorwinCoverUD_Party", "GLOBAL", 1)
			SetGlobal("XA_LC_CorwinCoverUD", "GLOBAL", 1)
			SetGlobalTimer("XA_LC_CorwinScoldPartyTimer", "LOCALS", ONE_ROUND)
		~
	END
//}

//{ Aerie

	//{ AERIEJ
		
		
		INTERJECT_COPY_TRANS2 AERIEJ 136 XA_AERIEJ_136 // OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@33 /* ~Aerie - whether we take the boat or not - you are strong enough for this.~ */
			
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				!Global("XA_LC_CorwinAvernus", "GLOBAL", 1)
			~
			@34 /* ~Besides, <CHARNAME> ventured to one of the nine hells and came back alive. I'm sure that with <PRO_HISHER> help we'll be able to handle the Underdark.~ */
			
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				!Global("XA_LC_CorwinAvernus", "GLOBAL", 1)
			~
			@35 /* ~Besides, <CHARNAME> and I ventured to one of the nine hells and came back alive. I'm sure that together we can handle the Underdark.~*/
			
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				!Global("XA_LC_CorwinAvernus", "GLOBAL", 1)
			~
			@36 /* ~I-if you say so, Schael... I'll do my best...~ */
		END

		INTERJECT_COPY_TRANS2 AERIEJ 114 XA_AERIEJ_114 // OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				GlobalLT("XA_LC_CorwinViconiaInterject", "MYAREA", 1)
			~
			@37 /* ~I'm not sure I trust her either, but... she did prove her worth in supporting the coalition against Caelar's crusade. We should give her a chance.~ */
			DO ~
				SetGlobal("XA_LC_CorwinViconiaInterject", "MYAREA", 1)
			~
		END
	//}

	//{ BAERIE
		INTERJECT_COPY_TRANS2 BAERIE 186 XA_BAERIE_186 // OK
			== XACORWIB 
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ THEN @127 /* ~Aerie, a mother would never stop looking for their child. Don't give up on the hope of seeing her again.~ */
		END 

		INTERJECT_COPY_TRANS2 BAERIE 234 XA_BARIE_234
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ THEN @129 /* ~The circus? Don't be ridiculous, Aerie. You're a valuable part of this team.~ */
		END

		INTERJECT_COPY_TRANS2 BAERIE 255 XA_BAERIE_255
			== XACORWIB 
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ THEN @130 /*  ~Wow... Aerie, that was a lot better.~ */
		END

		INTERJECT_COPY_TRANS2 BAERIE 430 XA_BAERIE_430 // OK
			== XACORWIB 
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ THEN @128 /* ~Aerie! That's enough.~ */
		END 
		
		INTERJECT_COPY_TRANS2 BAERIE 433 XA_BAERIE_433 // OK
			== XACORWIB 
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ THEN @128 /* ~Aerie! That's enough.~ */
		END 
	//}
//}
	




//{ Nalia
	//{ BNALIA
		INTERJECT_COPY_TRANS2 BNALIA 3 XA_BNALIA_3 // OK
			== XACORWIB 
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ 
			@120 /* ~Don't be so sure. In my experience, wealth, or the lack thereof, has no impact on one's capability for compassion or cruelty.~ */
		END 

		INTERJECT_COPY_TRANS2 BNALIA 4 XA_BNALIA_4 // OK
			== XACORWIB 
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ 
			@121 /* ~On that we can agree.~ */
		END 

		INTERJECT_COPY_TRANS2 BNALIA 11 XA_BNALIA_11 // OK
			== XACORWIB 
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ 
			@122 /* ~I disagree. Some time at the tavern can do wonders for troop morale and camaraderie. They don't exist solely to exploit the poor.~ */
			
			== BNALIA
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				!Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~  
			@123 /* ~Perhaps, Captain, but you can't deny the negative effects these establishments have on the less fortunate among us.~ */
			
			== BNALIA
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				Global("XA_LC_CorwinPromoted", "GLOBAL", 1)
			~  
			@124 /* ~Perhaps, Captain, but you can't deny the negative effects these establishments have on the less fortunate among us.~ */
		END 

		INTERJECT_COPY_TRANS2 BNALIA 53 XA_BNALIA_53 // OK
			== XACORWIB 
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ 
			@125 /* ~Nalia, one needn't be poor to find meaning in their life. Duke Eltan, for example, has dedicated his life to the safety of Baldur's Gate and its citizens.~ */
			
			== BNALIA
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ 
			@126 /* ~Certainly, and I did not mean to imply that the lives of the higher born have no meaning. It's just that it is easier, in a sense, for a poorer person to find meaning than a wealthy one.~ */
		END

		INTERJECT_COPY_TRANS2 BNALIA 72 XA_BNALIA_72
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ 
			@131 /* ~Vilhon Reach? I don't think I've ever tried that... I've always enjoyed dark wine from Berdusk.~*/
			
			== BNALIA
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ 
			@153 /*  ~Berduskan wine? Surely, you've had better than that swill.~ */
			
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ 
			@154 /*~I don't have expensive tastes. Can't afford to, I'm afraid.~*/
			
			== BNALIA
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ 
			@155 /* ~As soon as <CHARNAME>'s quest is over with, you and I will visit my friend Frantz. He is perhaps the finest sommelier in Amn, and he'd be more than pleased to take us on a wine tasting excursion.~*/
			
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ 
			@133 /* ~Wine tasting? Thanks, but as soon as this is over, I'm going home to my family.~*/
			
			== BNALIA
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ 
			@134 /* ~I understand. In that case, I'll have a case of his finest stock shipped to you.~*/
			
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ 
			@135 /* ~Thanks, Nalia. Just not anything *too* pretentious, alright?~ */
		END
	//}


//}

//{ OHNBARAD
	INTERJECT_COPY_TRANS2 OHNBARAD 24 XA_OHNBARAD_24
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@192 /*~I love animals... I can watch him. Don't worry, I'll keep him out of trouble.~*/		
	END
//}