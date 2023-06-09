//XANTRJEX

//Interjects associated with the LCA Mod

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
	INTERJECT_COPY_TRANS JAHEIRAJ 550 XA_OHNTELAN_14
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@6 /* ~The wizards have had time to prepare. They'll be ready for us.~ */
	END

	INTERJECT_COPY_TRANS KELDORJ 287 XA_OHNTELAN_14
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@6 /* ~The wizards have had time to prepare. They'll be ready for us.~ */
	END

	INTERJECT_COPY_TRANS MAZZYJ 210 XA_OHNTELAN_14
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@6 /* ~The wizards have had time to prepare. They'll be ready for us.~ */
	END

	INTERJECT_COPY_TRANS VALYGARJ 132 XA_OHNTELAN_14
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@6 /* ~The wizards have had time to prepare. They'll be ready for us.~ */
	END

	INTERJECT_COPY_TRANS NEERAJ 39 XA_OHNTELAN_14
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@6 /* ~The wizards have had time to prepare. They'll be ready for us.~ */
	END
//}



//{ XA_GORMAD1_2
	INTERJECT_COPY_TRANS GORMAD1 2 XA_GORMAD1_2
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@8 /* ~We're not going to get anywhere with this one. He's nuts.~*/
	END
//}

//{ Saradush
	INTERJECT_COPY_TRANS2 SARBUL05 2 XA_SARBUL05_2
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@9 /* ~No. I won't be a party to the murder of defenseless refugees. Goodbye, <CHARNAME>.~*/
		DO ~
			LeaveParty()
			EscapeArea()
		~
	END
//}

//{ SAREV25A
	INTERJECT_COPY_TRANS SAREV25A 52 XA_SAREV25A_52
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@10 /* ~You can't be serious. <CHARNAME>, he'll turn on us at the first opportunity.~ */
	END

	INTERJECT_COPY_TRANS SAREV25A 53 XA_SAREV25A_53
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@10 /* ~You can't be serious. <CHARNAME>, he'll turn on us at the first opportunity.~ */
	END
//}

//{ BSAREV25
	INTERJECT_COPY_TRANS BSAREV25 37 XA_BSAREV25_37
		==XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@157 /* ~You chose poorly in your first life, then. Dopplegangers? Scum like Angelo, Zhalimar and the others? For all our sakes, let's hope that you choices were better this time around.~ */
		
		==BSAREV25
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@158 /* ~Those choices you so readily mock nearly led me to godhood.~ */
	END
//}

//{ XA_PPIRENI1_22
	INTERJECT_COPY_TRANS PPIRENI1 22 XA_PPIRENI1_22
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
	INTERJECT_COPY_TRANS GORODR1 19 XA_GORODR1_19 //OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@15 /* ~I don't like the sound of this, <CHARNAME>. We're being asked to venture into an old prison to restore the seals of, what, exactly? We have no idea what we're up against.~*/
		
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			IsValidForPartyDialogue("KELDORN")
		~
		@16 /* ~Normally, I'd agree, but these are priests of Helm. We've no reason not to trust them. If there is evil imprisoned within the tower then we should ensure that it remains so.~ */
	END
//}

//{ UDSILVER
	INTERJECT_COPY_TRANS UDSILVER 17 XA_UDSILVER_17 //OK
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
	INTERJECT_COPY_TRANS IMOEN2 22 XA_IMOEN2_22 //OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@19 /* ~She's your sister, for Tymora's sake! You're not going to leave her to escape on her own, right?~*/
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
	END
//}

//{ PPSAEM
	INTERJECT_COPY_TRANS PPSAEM 14 XA_PPSAEM_14
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@20 /* ~Finally! Any longer and I might have hurled.~*/
	END

	INTERJECT_COPY_TRANS PPSAEM 53 XA_PPSAEM_53
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
	INTERJECT_COPY_TRANS DELTOW01 9 XA_DELTOW01_9
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@23 /* ~Try anything, and you'll end up in the infirmary. The same goes for all of you!~ */
	END
//}

//{ GORAPP1
	INTERJECT_COPY_TRANS GORAPP1 17 XA_GORAPP1_17
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		@24 /* ~I'm not exactly eager to go up against the prince of demons. Whatever you decide, I'll have your back.~ */
		
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		@25 /* ~I'm not exactly eager to go up against the prince of demons. Whatever you decide, love, I'll have your back.~ */
	END
//}

//{ TOLGER
	INTERJECT_COPY_TRANS TOLGER 18 XA_TOLGER_18
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@26 /* ~I really don't like the sound of this.~ */
	END
//}

//{ ARAN
	INTERJECT_COPY_TRANS ARAN 4 XA_ARAN_4
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@27 /* ~These guilds are all the same, in every city. I feel dirty just by speaking to them, let alone working for them. Still, they are a necessary means to an end if we're to rescue Imoen.~*/
	END
//}

//{ KORGANJ
	INTERJECT_COPY_TRANS KORGANJ 107 XA_KORGANJ_107 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@28 /* ~(She tries, unsucessfully, to stifle a laugh.)~ */
	END
	
	INTERJECT_COPY_TRANS KORGANJ 15 XA_KORGANJ_15 //OK
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

	INTERJECT_COPY_TRANS KORGANJ 22 XA_KORGANJ_22 //OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@31 /* ~(She rolls her eyes) You're disgusting, Korgan.~ */
		= @32 /* ~You're disgusting, Korgan.~ */
	END
//}

//{ MAZZY
	INTERJECT_COPY_TRANS BMAZZY 77 XA_BMAZZY_77
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@156
	END
//}

//{ VICG1
	INTERJECT_COPY_TRANS VICG1 2 XA_VICG1_2
		== XACORWIB
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@38 /* ~<CHARNAME>! That's Viconia, she served in our coalition - they are going to kill her!~ */
	END
//}

//{ EMBARL
	INTERJECT_COPY_TRANS EMBARL 6 XA_EMBARL_6
		== XACORWIB
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		@39 /* ~Strong, and compassionate. Just two of the many traits I love about you.~ */
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		
		== XACORWIB
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		@40 /*  ~Strong, and compassionate. Just two of the many traits I admire about you.~ */
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
	END
//}

//{ RUFFIAN
	INTERJECT_COPY_TRANS RUFFIAN 0 XA_RUFFIAN_0
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
	INTERJECT_COPY_TRANS DELON 15 XA_DELON_15
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_HelpDelon", "GLOBAL", 1)
		~
		@44 /* ~I'm glad you agreed to help. There's a lot of good we can do out here, even if it's not direcly tied to the hunt for the wizard.~ */
		DO ~
			SetGlobal("XA_HelpDelon", "GLOBAL", 1)
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
	END

	INTERJECT_COPY_TRANS DELON 16 XA_DELON_16
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_HelpDelon", "GLOBAL", 1)
		~
		@44 /* ~I'm glad you agreed to help. There's a lot of good we can do out here, even though it's not tied to our hunt for the wizard.~ */
		DO ~
			SetGlobal("XA_HelpDelon", "GLOBAL", 1)
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
	END

	INTERJECT DELON 5 XA_DELON_5
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@45 /* ~Would it kill you to show a little kindness to this child?~ */
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
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
	INTERJECT_COPY_TRANS MARIA 5 XA_MARIA_5
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@48 /* ~We really shouldn't be here. They need some privacy to sort this out on their own.~ */
	END
//}

//{ GORDEMO
	INTERJECT_COPY_TRANS GORDEMO 1 XA_GORDEMO_1
		== XACORWIB
		IF ~
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
			SetGlobal("XA_CorwinHatesAnomen", "GLOBAL", 1)
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
	INTERJECT_COPY_TRANS UHMAY01 138 XA_UHMAY01_138
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			PartyGoldGT(1000)
		~
		@52 /* ~They need our help more than we need their money, love.~*/
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
		
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			PartyGoldGT(1000)
		~
		@53 /*  ~They need our help more than we need their money, <CHARNAME>.~*/
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
		
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			!PartyGoldGT(1000)
		~
		@54 /* ~They need our help, love.~ */
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
		
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			!PartyGoldGT(1000)
		~
		@55 /*  ~They need our help, <CHARNAME>.~ */
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
		
	END
//}

//{ C6DRIZZ1
	INTERJECT_COPY_TRANS C6DRIZZ1 37 XA_C6DRIZZ1_37
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@56 /* ~Excellent! Your help is very much appreciated.~ */
	END
//}

//{ SUDEMIN
	INTERJECT_COPY_TRANS SUDEMIN 22 XA_SUDEMIN_22
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@57 /* ~You mean to tell me you set them loose? Did you stop for one second to think of what they might do in revenge? Your shortsightedness led to the murder of the daughter of one of the Grand Dukes, with <CHARNAME> framed for the crime! <PRO_HESHE> was nearly executed!~*/
		== SUDEMIN
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@58 /* ~No one imagined that they would cause so much havoc. We are truly sorry.~ */
	END

	INTERJECT_COPY_TRANS SUDEMIN 35 XA_SUDEMIN_35
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@59 /* ~<CHARNAME>, in spite of their foolishness, we share a common enemy. We should help them.~ */
	END
//}



//{ HAERDAJ
	INTERJECT_COPY_TRANS HAERDAJ 114 XA_HAERDAJ_114 //OK
		== XACORWIB 
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@78 /* ~That goes for all of us. We need to act the part to maintain our cover.~  */
	END

	INTERJECT_COPY_TRANS HAERDAJ 90 XA_HAERDAJ_90 //OK
		== XACORWIB 
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@79 /* ~She has her moments.~ */
	END
//}

//{ KELDORJ
	INTERJECT_COPY_TRANS KELDORJ 23 XA_KELDORJ_23 //OK
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

	INTERJECT_COPY_TRANS KELDORJ 103 XA_KELDORJ_103 //OK
		== XACORWIB 
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@84 /* ~Ajantis... yes. I remember meeting him during a patrol southeast of Wyrm's Crossing. We were investigating reports of bandit activity in the area. What a shame.~ */
	END

	INTERJECT_COPY_TRANS KELDORJ 145 XA_KELDORJ_145 // OK
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

	INTERJECT_COPY_TRANS KELDORJ 181 XA_KELDORJ_181 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@88 /* ~I'm not sure I trust her either, but... she did prove her worth in supporting the coalition against Caelar's crusade. We should give her a chance.~ */
	END

	INTERJECT_COPY_TRANS KELDORJ 182 XA_KELDORJ_182 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_CorwinAngryAtKeldorn", "GLOBAL", 1)
		~
		@89 /*  ~(She gives Keldorn a sharp stare.)~ */
		DO ~
			SetGlobal("XA_CorwinAngryAtKeldorn", "GLOBAL", 1)
			SetGlobalTimer("XA_CorwinScoldKeldornTimer", "GLOBAL", ONE_ROUND)
		~
	END

	INTERJECT_COPY_TRANS KELDORJ 236 XA_KELDORJ_236 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_CorwinAngryAtKeldorn", "GLOBAL", 1)
		~
		@89 /*  ~(She gives Keldorn a sharp stare.)~ */
		DO ~
			SetGlobal("XA_CorwinAngryAtKeldorn", "GLOBAL", 1)
			SetGlobalTimer("XA_CorwinScoldKeldornTimer", "GLOBAL", ONE_ROUND)
		~
	END
//}

//{ LEHTIN
	INTERJECT_COPY_TRANS LEHTIN 15 XA_LEHTIN_15
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@90 /* ~Your time has come. You'll pay for what you did to those children!~ */
	END
	//}//{ LEHTIN
	INTERJECT_COPY_TRANS LEHTIN 15 XA_LEHTIN_15
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@90 /* ~Your time has come. You'll pay for what you did to those children!~ */
	END
//}

//{ BODHI
	INTERJECT_COPY_TRANS BODHI 1 XA_BODHI_1 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@91 /* ~<CHARNAME> - something's wrong here. I don't trust her.~ */
	END

	INTERJECT_COPY_TRANS BODHI 18 XA_BODHI_18 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@92 /*  ~I hope you made the right decision. I can't shake the feeling that you didn't.~ */
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
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

	INTERJECT_COPY_TRANS FIRKRA02 23 XA_FIRKRA02_23 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@96 /*  ~<CHARNAME>! Let's just rescue the child and get out of here! Leave the dragon be.~ */
	END 

	INTERJECT_COPY_TRANS FIRKRA02 29 XA_FIRKRA02_29 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@97 /* ~<CHARNAME> — I don't know what you're up to, but I warn you that I won't take part in this betrayal.~ */
		DO ~
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
		~
	END 
//} 

//{ VALYGAR
	INTERJECT_COPY_TRANS VALYGAR 18 XA_VALYGAR_18 //OK
		== XACORWIB 
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@80 /* ~Let's hear what he has to say. I'm inclined to believe the word of another ranger over that of a wizard.~ */
	END
//}

//{ VALYGARJ
	INTERJECT_COPY_TRANS VALYGARJ 58 XA_VALYGARJ_58 // OK
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

	INTERJECT_COPY_TRANS VALYGARJ 50 XA_VALYGAR_50 // OK
		== VICONIJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_CorwinPromoted","GLOBAL",1)
		~
		@101 /* ~What about our dear Captain Corwin, then? You seem the type of man that would enjoy having a strong, assertive woman have her way with him.~   */
		== VICONIJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_CorwinPromoted","GLOBAL",1)
		~
		@102 /* ~What about our dear Major Corwin, then? You seem the type of man that would enjoy having a strong, authoritative female have her way with him.~   */
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		@103 /* ~Your 'insights' aside, she's romantically involved.~   */
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
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
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		@106 /* ~Valygar, that reasoning will prevent you from forming any kind of lasting relationship. You need to let go of your past.~ */
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			!Global("XA_CorwinPromoted", "GLOBAL", 1)
		~
		@107 /* ~I.. I appreciate the advice, Captain. ~*/
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_CorwinPromoted", "GLOBAL", 1)
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
			!Global("XA_CorwinPromoted", "GLOBAL", 1)
		~
		@110 /*~But she - damnit! No, you're right, Captain.~ */
		== VALYGARJ
		IF ~
			Global("XA_CorwinPromoted", "GLOBAL", 1)
		~
		@111 /*~But she - damnit! No, you're right, Major.~ */
		== VICONIJ
		@112 /* ~Just as I thought. Pathetic.~ */
		== XACORWIB
		@113 /* ~That's enough from the both of you! Infighting isn't going to help any of us to achieve our goals. Let's move out.~ */
	END

	INTERJECT_COPY_TRANS VALYGARJ 117 XA_VALYGARJ_117 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@114 /* ~Tell me you aren't seriously considering giving him to this wizard.~ */
	END

	INTERJECT_COPY_TRANS VALYGARJ 119 XA_VALYGARJ_119 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@115 /* ~And that's why you're alone. Yes, you can be hurt, but if you aren't willing to place at least some trust in others, you'll always be alone.~ */
	END
//}

//{ HEXXAT
	INTERJECT_COPY_TRANS HEXXAT 65 XA_HEXXAT_65 // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
			!Global("XA_CorwinHexxatCloak", "GLOBAL", 1)
		~
		@116 /* ~You aren't a person at all. You're a monster, a beast. <CHARNAME>, let's not waste anymore time with this creature.~ */
		DO ~
			SetGlobal("XA_CorwinHexxatCloak", "GLOBAL", 1)
		~
	END

	INTERJECT_COPY_TRANS HEXXAT 40 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS HEXXAT 45 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS HEXXAT 46 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS HEXXAT 60 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS HEXXAT 81 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS HEXXAT 86 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS HEXXAT 87 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS HEXXAT 89 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS HEXXAT 92 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS HEXXAT 102 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS HEXXAT 105 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS HEXXAT 109 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END

	INTERJECT_COPY_TRANS HEXXAT 110 XA_HEXXAT_GiveCloak // OK
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@117 /*  ~Don't do it. Leave the monster here to rot.~ */

	END
//}

//{ Anomen
	//{ BANOMEN
	INTERJECT_COPY_TRANS BANOMEN 10 XA_BANOMEN_10
		==XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@146 /* ~Hah!~ */
	END

	INTERJECT_COPY_TRANS BANOMEN 14 XA_BANOMEN_14
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
	
	INTERJECT_COPY_TRANS BANOMEN 16 XA_BANOMEN_16
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
	
	INTERJECT_COPY_TRANS BANOMEN 42 XA_BANOMEN_42
		==XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@149 /* ~Anomen! That's enough!~ */
	END
	
	INTERJECT_COPY_TRANS BANOMEN 50 XA_BANOMEN_50
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
	//}

	//{ DORNJ	
		INTERJECT_COPY_TRANS DORNJ 769 XA_DORNJ_769 // OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@94 /* ~Dorn - you have a chance to be free. Take it!~ */
		END
	//}

	//{ BDORN
		INTERJECT_COPY_TRANS BDORN 51 XA_BDORN_51 // OK
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
		
		INTERJECT_COPY_TRANS BDORN 2 XA_BDORN_2 
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@136 /*~Ignore him, Rasaad.~*/
		END
		
		INTERJECT_COPY_TRANS BDORN 16 XA_BDORN_16 
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@137 /*~Dorn! That's enough.~*/
		END
		
		INTERJECT_COPY_TRANS BDORN 23 XA_BDORN_23
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
		
		INTERJECT_COPY_TRANS BDORN 36 XA_BDORN_36
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
		INTERJECT_COPY_TRANS JANJ 197 XA_JANJ_197 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@60 /* ~Some would say you never left it.~*/
		END

		INTERJECT_COPY_TRANS JANJ 195 XA_JANJ_195 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@61 /* ~(A smile crosses her lips, as she tries and fails to stifle a hearty laugh.)~ */
			== JANJ
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@62 /* ~Oh, is that the sweet sound of laughter I hear? From our ever-stoic Captain Corwin? Look, she has a lovely smile too! I'm afraid no one would believe me if I told them it happened.~ */
			== JANJ
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@63 /* ~Oh, is that the sweet sound of laughter I hear? From our ever-stoic Major Corwin? Look, she has a lovely smile too! I'm afraid no one would believe me if I told them it happened.~ */
		END

		INTERJECT_COPY_TRANS JANJ 189 XA_JANJ_189 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@64 /* ~What... the... hells?~*/
		END

		INTERJECT_COPY_TRANS JANJ 175 XA_JANJ_175 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@65 /*  ~Agreed - we need to pick up the pace. Imoen needs us.~ */
		END

		INTERJECT_COPY_TRANS JANJ 142 XA_JANJ_142 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@66 /* ~Jan, this - really - isn't the time!~ */
		END 

		INTERJECT_COPY_TRANS JANJ 136 XA_JANJ_136 //OK
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
				!Global("XA_CorwinPromoted", "GLOBAL",1)
			~
			@69 /* ~Yes, Captain?~ */
			== JANJ
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				Global("XA_CorwinPromoted", "GLOBAL",1)
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

		INTERJECT_COPY_TRANS JANJ 113 XA_JANJ_113 //OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@75 /* ~We should heed his warning. Let's prepare before we head in.~*/
		END

		INTERJECT_COPY_TRANS JANJ 89 XA_JANJ_89 //OK
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

	//{ BJAN25
		INTERJECT_COPY_TRANS BJAN25 10 XA_BJAN25_10
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@161 /* ~Grow up, Jan. This isn't the time... it's never the time for your nonsense, infact!~ */
		END
	//}

//}

//{ HaerDalis

	//{ BHAERDA
	INTERJECT_COPY_TRANS BHAERDA 142 XA_BHAERDA_142
		== XACORWIB
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~
		@145 /* ~(She rolls her eyes.)~ */
	END
	
	//}

//}

//{ Aerie

	//{ AERIEJ
		INTERJECT_COPY_TRANS AERIEJ 136 XA_AERIEJ_136 // OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@33 /* ~Aerie - whether we take the boat or not - you are strong enough for this.~ */
			
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				!Global("XA_CorwinWentToAvernus", "GLOBAL", 1)
			~
			@34 /* ~Besides, <CHARNAME> ventured to one of the nine hells and came back alive. I'm sure that with <PRO_HISHER> help we'll be able to handle the Underdark.~ */
			
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				!Global("XA_CorwinWentToAvernus", "GLOBAL", 1)
			~
			@35 /* ~Besides, <CHARNAME> and I ventured to one of the nine hells and came back alive. I'm sure that together we can handle the Underdark.~*/
			
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				!Global("XA_CorwinWentToAvernus", "GLOBAL", 1)
			~
			@36 /* ~I-if you say so, Schael... I'll do my best...~ */
		END

		INTERJECT_COPY_TRANS AERIEJ 114 XA_AERIEJ_114 // OK
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@37 /* ~I'm not sure I trust her either, but... she did prove her worth in supporting the coalition against Caelar's crusade. We should give her a chance.~ */
		END
	//}

	//{ BAERIE
		INTERJECT_COPY_TRANS BAERIE 186 XA_BAERIE_186 // OK
			== XACORWIB 
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ THEN @127 /* ~Aerie, a mother would never stop looking for their child. Don't give up on the hope of seeing her again.~ */
		END 

		INTERJECT_COPY_TRANS BAERIE 234 XA_BARIE_234
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ THEN @129 /* ~The circus? Don't be ridiculous, Aerie. You're a valuable part of this team.~ */
		END

		INTERJECT_COPY_TRANS BAERIE 255 XA_BAERIE_255
			== XACORWIB 
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ THEN @130 /*  ~Wow... Aerie, that was a lot better.~ */
		END

		INTERJECT_COPY_TRANS BAERIE 430 XA_BAERIE_430 // OK
			== XACORWIB 
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ THEN @128 /* ~Aerie! That's enough.~ */
		END 
		
		INTERJECT_COPY_TRANS BAERIE 433 XA_BAERIE_433 // OK
			== XACORWIB 
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ THEN @128 /* ~Aerie! That's enough.~ */
		END 
	//}
//}
	
//{ Minsc
	//{ BMINSC25
		INTERJECT_COPY_TRANS BMINSC25 37 XA_BMINSC25_37
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@159 /* ~... More importantly, two cards short of a full deck...~ */
		END
	//}
//}

//{ Neera
	//{ BNEERA25
		INTERJECT_COPY_TRANS BNEERA25 14 XA_BNEERA_14
			== XACORWIB
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~
			@160 /* ~I couldn't agree more. Let's get moving.~ */
		END
	//}
//}

//{ Nalia
	//{ BNALIA
		INTERJECT_COPY_TRANS BNALIA 3 XA_BNALIA_3 // OK
			== XACORWIB 
			IF ~
				IsValidForPartyDialogue("XACORWIN")
			~ 
			@120 /* ~Don't be so sure. In my experience, wealth, or the lack thereof, has no impact on one's capability for compassion or cruelty.~ */
		END 

		INTERJECT_COPY_TRANS BNALIA 4 XA_BNALIA_4 // OK
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
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~  
			@123 /* ~Perhaps, Captain, but you can't deny the negative effects these establishments have on the less fortunate among us.~ */
			
			== BNALIA
			IF ~
				IsValidForPartyDialogue("XACORWIN")
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~  
			@124 /* ~Perhaps, Captain, but you can't deny the negative effects these establishments have on the less fortunate among us.~ */
		END 

		INTERJECT_COPY_TRANS BNALIA 53 XA_BNALIA_53 // OK
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

		INTERJECT_COPY_TRANS BNALIA 72 XA_BNALIA_72
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