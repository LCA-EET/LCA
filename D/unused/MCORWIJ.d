//Modifications to BDCORWIJ.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-08-27: Initial Commit
2022-11-16: Modified to remove the use of REPLACE_SAY
*/

ADD_TRANS_TRIGGER BDCORWIJ 341
~
	!Global("LCA_Override", "Global", 1)
~

ADD_TRANS_TRIGGER BDCORWIJ 345
~
	!Global("LCA_Override", "Global", 1)
~
DO 1

ADD_TRANS_TRIGGER BDCORWIJ 352
~
	!Global("LCA_Override", "Global", 1)
~

ADD_TRANS_TRIGGER BDCORWIJ 360
~
	!Global("LCA_Override", "Global", 1)
~

ADD_TRANS_TRIGGER BDCORWIJ 376
~
	!Global("LCA_Override", "Global", 1)
~

ADD_TRANS_TRIGGER BDCORWIJ 382
~
	!Global("LCA_Override", "Global", 1)
~

ADD_TRANS_TRIGGER BDCORWIJ 389
~
	!Global("LCA_Override", "Global", 1)
~

ADD_TRANS_TRIGGER BDCORWIJ 432
~
	!Global("LCA_Override", "Global", 1)
~

ADD_TRANS_TRIGGER BDCORWIJ 438
~
	!Global("LCA_Override", "Global", 1)
~
DO 2

ADD_TRANS_TRIGGER BDCORWIJ 450
~
	!Global("LCA_Override", "Global", 1)
~

ADD_TRANS_TRIGGER BDCORWIJ 507
~
	!Global("LCA_Override", "Global", 1)
~

EXTEND_BOTTOM BDCORWIJ 341
	IF ~~ THEN REPLY @40 /* ~Are you trying to tell me that you have to leave me now?~ */ 
	DO ~
		SetGlobal("EECorwAfter","BD0120",4)
	~ 
	GOTO LCA342
  
	IF ~~ THEN REPLY @41 /* ~We've really earned ourselves some rest and relaxation.~ */ 
	DO ~
		SetGlobal("EECorwAfter","BD0120",4)
	~ 
	GOTO LCA342
END

EXTEND_BOTTOM BDCORWIJ 345
	IF ~~ THEN REPLY @3 /* ~I understand, Captain. Thank you for all you have done. I hope our paths cross again in the future.~ */
	GOTO 347
	
	IF ~
		PartyHasItem("RDOLL")
	~
	THEN REPLY @4 /* ~I understand, Corwin. Thank you for all you have done. Before you go, I bought this doll for Rohma a while back. Could you give it to her for me?~  */
	GOTO M0
END

EXTEND_BOTTOM BDCORWIJ 352
	IF ~~ THEN 
	DO ~
		SetGlobal("EEOwnHouse","Locals",2)
	~ 
	GOTO LCA353
END

EXTEND_BOTTOM BDCORWIJ 376
	IF ~~ THEN 
	DO ~
		SetGlobal("EEOwnHouse","Locals",2)
	~ 
	GOTO LCA377
END


EXTEND_BOTTOM BDCORWIJ 360
	IF ~~ THEN
	DO ~
		AddJournalEntry(@38, INFO)
	~
	EXTERN ~BDROHMA~ 27
END

EXTEND_BOTTOM BDCORWIJ 382
	IF ~
		NumInPartyLT(4)
	~
	THEN GOTO LCA510
	
	IF ~
		NumInPartyGT(3)
	~
	THEN GOTO LCA511
END

EXTEND_BOTTOM BDCORWIJ 389
	IF ~~ THEN GOTO LCA390
END

EXTEND_BOTTOM BDCORWIJ 432
	IF ~~ THEN REPLY @57 /* ~I can't wait to pay those bastards a visit, Captain, why wait?~ */
	DO ~
		SetGlobal("EECorThNotYet","BG1200",2)
	~ 
	GOTO LCA433
  
	IF ~~ THEN REPLY @60/* ~What, why spare them after all they've done to the Sword Coast - and to me?~ */ 
	DO ~
		SetGlobal("EECorThNotYet","BG1200",2)
	~ 
	GOTO LCA433
 
	IF ~~ THEN REPLY @61 /* ~Anything I've missed, Corwin? I thought our goal was to crush them.~ */
	DO ~
		SetGlobal("EECorThNotYet","BG1200",2)
	~ 
	GOTO LCA433
END

EXTEND_BOTTOM BDCORWIJ 438
	IF ~~ THEN REPLY @62 /* ~My golden heart makes me do those deeds.~ */ 
	DO ~
		SetGlobal("EECorMoreTaskSC","BG1100",2)
	~ 
	GOTO LCA441
END

EXTEND_BOTTOM BDCORWIJ 450
	IF ~~ THEN GOTO LCA451
END

EXTEND_BOTTOM BDCORWIJ 507
	IF ~~ THEN REPLY @63 /* ~You may get another chance soon if he's in league with our opponents.~ */ 
	DO ~
		SetGlobal("EECorBeno","BG0224",6)
	~ 
	GOTO LCA508
  
	IF ~~ THEN REPLY @64 /* ~We already suspect that this Sarevok has such priests in his service.~ */ 
	DO ~
		SetGlobal("EECorBeno","BG0224",6)
	~ 
	GOTO LCA508
END

APPEND BDCORWIJ
	IF ~~ THEN BEGIN M0
		SAY @5 /* ~Oh! That's very kind of you. Yes, I'll give it to her, I'm sure she will enjoy it. Thank you, <CHARNAME>. (She leans in and gives you a kiss on the cheek)~  */
		IF ~~ THEN
		DO ~
			TakePartyItem("RDOLL")
			DestroyItem("RDOLL")
			AddExperienceParty(500)
			SetGlobal("LCA_GaveDoll", "Global", 1)
			AddJournalEntry(@8, INFO)
			IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		GOTO LCA347
	END
	
	IF ~~ THEN BEGIN LCA510
		SAY @13 /*~<CHARNAME>, I have to dedicate my attention to your cause - ah, to our cause, that is. I'm serving my city and the Fist, but for the moment I'm also your comrade.~ */
		IF ~~ THEN REPLY @15 /* ~Doesn't that put you into some dilemma, Corwin?~ */
		GOTO LCA384
		
		IF ~~ THEN REPLY @16 /* ~I hope you set your priorities right, Captain, we may not always be able to act to your codex.~ */
		GOTO LCA384
		
		IF ~
			Global("EEMetRohma", "GLOBAL", 3)
		~ THEN REPLY @56 /* ~You also have a responsibility to your daughter. It can't be easy, juggling all of these obligations.~  */
		GOTO LCA387
	END
	
	IF ~~ THEN BEGIN LCA511
		SAY @14 /* ~<CHARNAME>, I have to dedicate my attention to your cause - ah, to our cause, that is. I'm serving my home town and the Fist, but for the moment I'm also your comrade, just like the others here.~	*/
		IF ~~ THEN REPLY @15 /* ~Doesn't that put you into some dilemma, Corwin?~ */
		GOTO 384
		
		IF ~~ THEN REPLY @16 /* ~I hope you set your priorities right, Captain, we may not always be able to act to your codex.~ */
		GOTO 384
	END
	
	IF ~~ THEN BEGIN M2
		SAY @21 /* ~Thank you... yes, she is a wonderful kid. She makes it all worth it, and I'd do anything to keep her safe. ~	*/
		IF ~~ THEN
		GOTO 389
	END
	
	IF ~~ THEN BEGIN LCA342
		SAY @39 /* ~Take some time to enjoy yourself. You've certainly earned it after all you've done for the city.~ */
		IF ~~ THEN GOTO LCA344
	END
	
	IF ~~ THEN BEGIN LCA344 // from: 343.0 342.0
		SAY @42 /* ~I need to see how far along Duke Eltan is in his recovery. He needs all those officers who stayed loyal to clean the Flaming Fist of Angelo's remains and bring order back to the city.~ */
		IF ~~ THEN GOTO LCA345
	END
	
	IF ~~ THEN BEGIN LCA345 // from: 344.0
		SAY @43 /* ~The Fist needs me, the city needs me...and Rohma needs me as well.~ */
		IF ~~ THEN REPLY @44 /* ~I hope we will soon meet again, Corwin.~ */ 
		GOTO LCA347
		
		IF ~~ THEN REPLY @45 /* ~Yeah, you served me well, now go and serve your Eltan if you must.~ */ 
		GOTO 346
		
		IF ~~ THEN REPLY @46 /* ~I understand, Captain. Thank you for all you have done. I hope our paths cross again in the future.~ */ 
		GOTO LCA347
		
		IF ~  
			PartyHasItem("RDOLL")
		~ 	
		THEN REPLY @47 /* ~I understand, Corwin. Thank you for all you have done. Before you go, I bought this doll for Rohma a while back. Could you give it to her for me?~ */
		GOTO M0
	END
	
	IF ~~ THEN BEGIN LCA347 // from: 509.0 345.3 345.1 345.0
		SAY @48 /* ~If you don't have pressing business, <CHARNAME>, take some time to explore and learn about the city..~    */
		IF ~~ THEN GOTO LCA348
	END
	
	IF ~~ THEN BEGIN LCA348 // from: 347.0
		SAY @49 /* ~I think you'll find that there is a lot here to cherish and protect.~  */
		= @7 /* ~I... well. (You share a warm embrace) Until next time, my friend.~ */
		IF ~~ THEN 
		DO ~
			DestroyItem("EEAmul")
			LeaveParty()
			SetGlobal("EECorwinBG1","Global",1)
			EscapeAreaDestroy(45)
		~ 
		EXIT
	END
	
	IF ~~ THEN BEGIN LCA353 // from: 352.0
		SAY #271935 /* ~That house over there is where I live, with my daughter and my father.~ */
		  
		IF ~~ THEN REPLY #271534 /* ~You are on duty, officer, and under my command. Don't forget that.~ */ 
		GOTO 354
  
		IF ~~ THEN REPLY #271535 /* ~I see that there is something more important even to you than a blind obedience to duty. Good to see, Corwin.~ */ 
		GOTO 355
  
		IF ~  
			Global("LCA_Override","Global",1)
		~ 
		THEN REPLY #271960 /* ~You are on duty, officer...(grin) but under my command. Let's see who's home.~ */ 
		GOTO 355
	END
	
	IF ~~ THEN BEGIN LCA377 // from: 376.0
		SAY @10 /* ~Scar and I have heard about your deeds, but we're not sure of your intentions toward our city. ~ */
		
		IF ~~ THEN REPLY @50 /* ~And that's probably all you need to know about it, Captain.~ */ 
		GOTO LCA378
		
		IF ~~ THEN REPLY @51 /* ~This is a long story by now, Corwin, and most likely one to end with Sarevok.~ */ 
		GOTO LCA379
		
		IF ~  CheckStatGT(Player1,11,INT)
		~ THEN REPLY @52 /* ~Maybe telling all that has happened in such a short time to an unbiased listener helps both of us. We may both see clearer afterwards. Looking back at it in context may make us all aware of details we could have missed.~ */ 
		GOTO LCA379
	END
	
	IF ~~ THEN BEGIN LCA378 // from: 377.0
		SAY @54 /* ~Just as well, <PRO_SIRMAAM>. I'm sure I can gather that information from your comrades.~  */
		IF ~~ THEN 
		DO ~
			RealSetGlobalTimer("EECorBanT","Locals",2800)
		~ 
		EXIT
		
		IF ~  
			InParty("Jaheira")
		~ THEN 
		DO ~
			RealSetGlobalTimer("EECorBanT","Locals",2800)
		~ 
		EXTERN ~BJAHEI~ 9
		
		IF ~
			InParty("Imoen2")
		~ 
		THEN 
		DO ~
			RealSetGlobalTimer("EECorBanT","Locals",2800)
		~ 
		EXTERN ~BIMOEN~ 0
	END
	
	IF ~~ THEN BEGIN LCA379 // from: 377.2 377.1
		SAY @11/* ~I'm a pretty good listener, and I have a feeling that this story is definitely one that I should hear.~ */
		
		IF ~~ THEN REPLY @53 /* ~It all started with my foster father Gorion notifying me one morning that we immediately had to leave our home at Candlekeep...(You tell her your story.)~ */ 
		DO ~
			RealSetGlobalTimer("EECorBanT","Locals",2800)
		~ 
		GOTO LCA380
	END
	
	IF ~~ THEN BEGIN LCA380 // from: 379.0
		SAY @12 /* ~I see. Thank you for sharing. I feel like I have a much better understanding of you and your motivations.~ */
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN LCA384 // from: 511.1 511.0 510.1 510.0 383.1 383.0
		SAY @55 /* ~I can't ignore my duties as an officer, but my foremost duty is to our success. The fate of the city depends on it.~ */
		IF ~~ THEN GOTO 385
	END
	
	IF ~~ THEN BEGIN LCA387
		SAY @18 /* ~On one hand, Rohma makes it easier for me. When I think of her, I remember what I'm fighting for, and why I joined the Fist. On the other hand, having a child to worry about makes things a lot more complicated.~  */
			
		IF ~~ THEN REPLY @19 /* ~It's good then that your duties keep you close to home, and that your father is helping to raise her.~ */ 
		DO ~
			SetGlobal("EECorFriend","Locals",7)
			RealSetGlobalTimer("EECorBanT","Locals",3700)
		~ 
		GOTO 389
		    
		IF ~~ THEN REPLY @20 /* ~It's good then that your duties keep you close to home, and that your father is helping to raise her. For what it's worth, I think you're doing a great job with her. She seems like a very sweet child.~ */ 
		DO ~
			SetGlobal("EECorFriend","Locals",7)
			RealSetGlobalTimer("EECorBanT","Locals",3700)
		~ 
		GOTO M2
	END
	
	IF ~~ THEN BEGIN LCA390
		SAY @22 /* ~What I meant is that her existence gives me the focus that I... lacked when I was younger, before her birth. It also adds responsibilities that most other officers do not have to deal with.~ */

		IF ~~ THEN REPLY @58 /* ~Sounds like you grew up by becoming a mother.~ */ 
		GOTO 391
		
		IF ~~ THEN REPLY @59 /* ~It's hard to imagine that officer Corwin was once a rascal of sorts.~ */ 
		GOTO 391
	END
	
	IF ~~ THEN BEGIN LCA433 // from: 432.2 432.1 432.0
		SAY @23 /* ~I understand your desire to punish those goons, but be patient, <CHARNAME> - their time will come, and soon. ~ */
		IF ~~ THEN GOTO LCA434
	END
	
	IF ~~ THEN BEGIN LCA434 // from: 433.0
		SAY @24 /* ~Eltan and Scar have their suspicions of the Iron Throne, suspicions which have been largely validated by your experiences with them. Still, we need to make sure we find out as much as possible about their activities before we make our move.~  */
		IF ~~ THEN GOTO 435
	END
	
	IF ~~ THEN BEGIN LCA441 // from: 438.2
		SAY @25/* ~Heh. It's good that you're able to keep a sense of humor, in spite of things.~ */
		IF ~~ THEN GOTO 442
	END
	
	IF ~~ THEN BEGIN LCA451 // from: 450.0
		SAY @65 /* ~This is MY headquarters and I'll get us out here while this gnome stays inside.~ */
		IF ~~ THEN REPLY @66 /* ~No, Captain, I cannot allow you to get involved deeper with our misdeeds and compromise yourself...~ */ GOTO 452
		IF ~~ THEN REPLY @67 /* ~Corwin, of course, how could I forget. You know every inch of this building.~ */ GOTO 453
	END
	
	IF ~~ THEN BEGIN LCA508 // from: 438.2
		SAY @36/* ~You heard his words. The only way I can protect my daughter is to end all this - and him.~ */
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN LCA463 // from: Deltan 0.3
		SAY @28 /* ~Duke Eltan, this is the party that Commander Scar and I have reported about before. <CHARNAME> derailed the Iron Throne's plans in Nashkel and Cloakwood.~  */
		IF ~~ THEN EXTERN ~DELTAN~ 17
	END
	
	IF ~~ THEN BEGIN LCA466
		SAY @68 /* ~Laola, this is <CHARNAME>. He and his comrades have agreed to work with us in our investigation of the Iron Throne.~ */
		IF ~~ THEN
		EXTERN ~LAOLA~ LCA0
	END
	
	IF ~~ THEN BEGIN LCA467
		SAY @69 /* ~Laola, this is <CHARNAME>. She and her comrades have agreed to work with us in our investigation of the Iron Throne.~  */
		IF ~~ THEN
		EXTERN ~LAOLA~ LCA0
	END
	
	IF ~~ THEN BEGIN LCA480
		SAY @30 /* ~The Fist is not in the service of the Iron Throne, Rieltar Anchev. In fact, we are here to see to it that you are punished for your role in the Iron Crisis.~ */
		IF ~~ THEN 
		EXTERN ~RIELTA~ LCA14
	END
	
	IF ~~ THEN BEGIN LCA481 // from: 480.3
		SAY @31 /* ~Dosan, my superior? You must be joking, you can't bribe Scar, Eltan or me to dance to your tune, Anchev. I know what my duties are, and they do not involve serving the Iron Throne against the city I swore to protect.~ */
		IF ~~ THEN 
		EXTERN ~RIELTA~ LCA15
	END
	
	IF ~~ THEN BEGIN LCA491 // from:
		SAY @32/* ~Do what must be done to save his life. We'll give chase the ones who did this and stop them before they do even worse. ~ */
				
		IF ~~ THEN 
		DO ~
			SetGlobal("EERescEltan","Locals",3)
		~ EXTERN ~HARBOR~ LCA14
	END
	
	IF ~~ THEN BEGIN LCA492 // from:
		SAY @70 /* ~Sergeant Kent, make your report.~ */
		
		IF ~~ THEN 
		EXTERN ~KENT~ LCA5
	END
	
	IF ~~ THEN BEGIN LCA493 // from: 492.7
		SAY @33 /* ~Sergeant Kent, I didn't hear that last remark about deserting. Listen, our cause is not lost. We are here to save Eltan. Go and report to Lieutenant Vai right away. She and Laola Axhand will gather all those who can still be trusted. The usurper Dosan will be removed soon, along with his master Sarevok.~ */

		IF ~~ THEN 
		EXTERN ~KENT~ LCA6
	END
	
	IF ~~ THEN BEGIN LCA494 // from: 493.5 492.5
		SAY @71 /* ~One more thing, Kent. Where did they bring Scar's body? We may still be able to resurrect him.~ */
		IF ~~ THEN 
		EXTERN ~KENT~ LCA7
	END

	IF ~~ THEN BEGIN LCA495 // from: 494.2 493.2 492.2
		SAY @34 /* ~Scar is lost thanks to Angelo Dosan. Let's focus on saving Eltan, at least. We still have some time before we need to deal with Sarevok.~ */
		IF ~~ THEN REPLY @72 /* ~Thanks for the information, Kent. Maybe we'll see each other again.~ */ 
		EXTERN ~KENT~ 3
		
		IF ~~ THEN REPLY @73 /* ~Kent, why don't you think Rashad's a healer?~ */ 
		EXTERN ~KENT~ 8
	END
	
	IF ~~ THEN BEGIN LCA496 // from:
		SAY @74/* ~Angelo is never leading the Flaming Fist and Duke Eltan is not dead.~ */
		IF ~~ THEN 
		GOTO LCA498
		
		IF ~  
			Global("EERescEltan","Locals",3)
		~ THEN 
		GOTO LCA497
	END
	
	IF ~~ THEN BEGIN LCA497 // from: 496.3
		SAY @35/* ~<CHARNAME> and I have moved Eltan to a safe location. He'll recover from his affliction and take back control of our forces.~ */
		IF ~~ THEN GOTO LCA498
	END
	
	IF ~~ THEN BEGIN LCA498 // from: 497.2 496.2
		SAY @75 /* ~You are under arrest, Sarevok, for the crimes of murder, collusion, and treason against the city of Baldur's Gate.~*/
		IF ~~ THEN EXTERN ~SAREVO~ 26
	END

END
