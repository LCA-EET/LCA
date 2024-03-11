// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDENTAR.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDENTAR.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC109~

IF ~  AreaCheck("bd0035")
Global("bd_mdd1697_plot","global",15)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Do you know to whom you speak? I'll have your family on the street begging for coppers if you don't let me pass!~ [BD70373] #70373 */
  IF ~~ THEN DO ~SetGlobal("bd_mdd1697_plot","global",20)
~ EXTERN ~XAC107~ 14
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Do not tell me what I want—I KNOW what I want. You! <CHARNAME>! MURDERER! You killed my little girl... my Skie...~ [BD69793] #69793 */
  IF ~~ THEN REPLY @3 /* ~You must believe me, Duke Silvershield, I was not responsible for her death.~ #69794 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~I don't know what happened to Skie. But I intend to find out.~ #69795 */ GOTO 2
  IF ~~ THEN REPLY @5 /* ~Cease your whimpering, man. You're embarrassing yourself.~ #69796 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.2 1.1 1.0
  SAY @6 /* ~You put on a good act, but I KNOW the truth. It wasn't enough to slay her bodily and leave me childless? You had to destroy her soul too?~ [BD69797] #69797 */
  IF ~~ THEN EXTERN ~XAC107~ 15
END

IF ~~ THEN BEGIN 3 // from:
  SAY @7 /* ~Tell me what you did with it, fiend! Before they send you to the gallows, tell me, what did you do with the dagger?~ [BD69799] #69799 */
  IF ~  OR(2)
CheckStatGT(Player1,16,INT)
CheckStatGT(Player1,16,WIS)
~ THEN REPLY @8 /* ~Dagger...? There was a dagger, I remember. What became of it I do not know. ~ #69800 */ GOTO 4
  IF ~~ THEN REPLY @9 /* ~Please calm yourself, Duke Silvershield. I don't know what you're talking about.~ #69801 */ GOTO 4
  IF ~~ THEN REPLY @10 /* ~What are you going on about? I know nothing of any dagger.~ #69802 */ GOTO 4
  IF ~~ THEN REPLY @11 /* ~I have nothing to say to you.~ #69803 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.3 3.2 3.1 3.0
  SAY @12 /* ~The priests can do nothing... She's gone forever. My Skie...~ [BD69804] #69804 */
  IF ~~ THEN DO ~StartCutSceneMode()
SmallWait(5)
PlaySound("AMBDLBOO")
Wait(1)
Face(S)
ActionOverride("bdbelt",Face(SSW))
Wait(2)
SmallWait(5)
DisplayStringHead("Entar Guard 2",@13)
SmallWait(10)
Wait(2)
SmallWait(8)
DisplayStringHead("bdbelt",@14)
SmallWait(6)
SetCutSceneLite(TRUE)
ApplySpellRES("bdslow","Entar Guard 1")
ApplySpellRES("bdslow","Entar Guard 2")
ApplySpellRES("bdslow",Myself)
ApplySpellRES("bdpspace","Entar Guard 1")
ApplySpellRES("bdpspace","Entar Guard 2")
ApplySpellRES("bdpspace",Myself)
ActionOverride("Entar Guard 1",MoveToPoint([1101.627]))
ActionOverride("Entar Guard 2",MoveToPoint([1125.669]))
SmallWait(6)
MoveToPoint([1042.658])
ActionOverride("bdff1697",MoveToPoint([824.686]))
SmallWait(10)
ActionOverride("bdff1697",Face(SE))
SmallWait(16)
ActionOverride("bdbelt",StartDialogNoSet("Commoner_talk1"))
~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @15 /* ~Surely you recall my daughter, Skie? Pay her no mind.~ [BD36693] #36693 */
  IF ~~ THEN EXTERN ~XAC108~ 4
END

IF ~~ THEN BEGIN 6 // from:
  SAY @16 /* ~It took all of Fenster's skills to restore me to life. But we are not here to discuss my health.~ [BD37302] #37302 */
  IF ~~ THEN EXTERN ~XAC108~ 4
END

IF ~~ THEN BEGIN 7 // from:
  SAY @17 /* ~On that, we agree.~ [BD64717] #64717 */
  IF ~~ THEN EXTERN ~XAC107~ 35
END

IF ~~ THEN BEGIN 8 // from: 45.1 43.0
  SAY @18 /* ~Let me guess. Skie's joined the Flaming Fist and plans to journey north with you.~ [BD35258] #35258 */
  IF ~~ THEN REPLY @19 /* ~You know?~ #35259 */ GOTO 9
  IF ~~ THEN REPLY @20 /* ~Complaining of sore feet, mussed hair, and broken nails the entire way, no doubt.~ #35260 */ GOTO 20
  IF ~~ THEN REPLY @21 /* ~Not if I have anything to say about it.~ #35261 */ GOTO 19
  IF ~~ THEN REPLY @22 /* ~If you already know, then there's nothing more to say.~ #35262 */ GOTO 15
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @23 /* ~My dear Skie has many talents. Subtlety is not among them. Yes, I am aware of her grand plan. Bence Duncan, the man who arranged her entry into the Fist, is a... friend.~ [BD35264] #35264 */
  IF ~~ THEN REPLY @24 /* ~Why would you let your daughter undertake such a perilous journey?~ #35265 */ GOTO 10
  IF ~~ THEN REPLY @25 /* ~You want to be rid of your daughter that badly?~ #35267 */ GOTO 21
  IF ~~ THEN REPLY @26 /* ~If you are aware of her intentions, there is nothing more to say.~ #35268 */ GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @27 /* ~I am not well pleased by the situation, I assure you. But Skie is a willful girl. Were I to prevent her joining the Fist, she would find another way to challenge me—perhaps putting herself in even greater danger. As it stands, I can arrange for her protection while not APPEARING to protect her.~ [BD35269] #35269 */
  IF ~~ THEN GOTO 11
  IF ~  Gender(Player1,MALE)
~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @28 /* ~Though I like it not, it is my hope this will prove a learning experience for her—that service to the Flaming Fist will strengthen her body, mind, and character. Perhaps you will make a better role model than I.~ [BD66747] #66747 */
  IF ~~ THEN REPLY @29 /* ~Maybe. If you've no problem with her coming, I guess I can't object.~ #35271 */ GOTO 14
  IF ~  Global("bd_skie_entar_caelar","global",1)
~ THEN REPLY @30 /* ~Earlier, Skie said you think Caelar may be a child of Bhaal like myself.~ #59680 */ GOTO 23
  IF ~~ THEN REPLY @31 /* ~Your optimism in this matter baffles me.~ #35272 */ GOTO 22
  IF ~~ THEN REPLY @32 /* ~Then there is nothing more to say.~ #35274 */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 21.0 20.0 19.0 10.1
  SAY @33 /* ~Though I like it not, it is my hope this will prove a learning experience for her—that service to the Flaming Fist will strengthen her body, mind, and character. Perhaps Captain Corwin might serve as a role model for her.~ [BD35270] #35270 */
  IF ~~ THEN REPLY @29 /* ~Maybe. If you've no problem with her coming, I guess I can't object.~ #35271 */ GOTO 14
  IF ~  Global("bd_skie_entar_caelar","global",1)
~ THEN REPLY @30 /* ~Earlier, Skie said you think Caelar may be a child of Bhaal like myself.~ #59680 */ GOTO 23
  IF ~~ THEN REPLY @31 /* ~Your optimism in this matter baffles me.~ #35272 */ GOTO 22
  IF ~~ THEN REPLY @32 /* ~Then there is nothing more to say.~ #35274 */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.3 11.3
  SAY @34 /* ~Not quite. I appreciate your coming to me with your concerns—it is heartening to know Skie will have someone who cares for her on the road. Please, accept this ring as a token of my gratitude.~ [BD35275] #35275 */
  IF ~~ THEN DO ~GiveItemCreate("ring07",Player1,1,0,0)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 23.0 22.0 12.0 11.0
  SAY @35 /* ~I appreciate your coming to me with your concerns about Skie. Please, accept this ring as a token of my gratitude.~ [BD35276] #35276 */
  IF ~~ THEN DO ~GiveItemCreate("ring07",Player1,1,0,0)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 9.2 8.3
  SAY @36 /* ~Just this, which I offer with all sincerity: I appreciate your coming to tell me of my daughter, though I knew it already. Please accept this ring as a token of my gratitude.~ [BD35277] #35277 */
  IF ~~ THEN DO ~GiveItemCreate("ring07",Player1,1,0,0)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0 14.0 13.0
  SAY @37 /* ~When her brother died, Skie changed. She grew wilder... Pushed me away. I am hopeful this experience will help change her priorities.~ [BD66748] #66748 */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @38 /* ~One other thing. Few of those traveling with you will know Skie's true identity. She is to receive no special treatment from the Flaming Fist.~ [BD35278] #35278 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @39 /* ~You, however, know exactly who she is. I expect my daughter returned to me, alive and unharmed. I am understood, I trust? Good.~ [BD66749] #66749 */
  IF ~~ THEN DO ~AddJournalEntry(56390,QUEST)
~ GOTO 44
END

IF ~~ THEN BEGIN 19 // from: 8.2
  SAY @40 /* ~You don't. Skie is a willful girl. Were I to prevent her joining the Fist, she would find another way to challenge me—perhaps putting herself in even greater danger. As it stands, I can arrange for her protection while not APPEARING to protect her.~ [BD35295] #35295 */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 8.1
  SAY @41 /* ~Her complaints will fall on deaf ears. My orders are clear: She is to be treated as any other member of the Fist. I love my Skie, but I have overindulged her. It is a hard world, and it is past time she learned that.~ [BD35296] #35296 */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 9.1
  SAY @42 /* ~I want—I NEED her to grow up. I won't always be there to protect her.~ [BD35297] #35297 */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 22 // from: 12.2 11.2
  SAY @43 /* ~My son is dead, <CHARNAME>. Skie will inherit the Silvershield name and all that comes with it. I have to believe she will be ready for the responsibility when the time comes.~ [BD35299] #35299 */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 12.1 11.1
  SAY @44 /* ~After Sarevok, we'd be fools not to consider the possibility, but all we have is rumor and conjecture. If you two share blood, well, that is all the more reason for you to seek her out, no?~ [BD59681] #59681 */
  IF ~~ THEN GOTO 14
END

IF ~  GlobalLT("BD_plot","global",55)
AreaCheck("bd0102")
~ THEN BEGIN 24 // from:
  SAY @45 /* ~Ah, yes, <CHARNAME>. What does the hero of Baldur's Gate need of me?~ [BD55977] #55977 */
  IF ~  OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("Skie")
~ THEN REPLY @46 /* ~How are you, sir? How is Skie?~ #55978 */ GOTO 26
  IF ~  Global("bd_skie_entar_caelar","global",1)
~ THEN REPLY @47 /* ~I understand you suspect Caelar Argent is a child of Bhaal.~ #59665 */ DO ~SetGlobal("bd_skie_entar_caelar","global",2)
~ GOTO 29
  IF ~~ THEN REPLY @48 /* ~I would know your thoughts on what's happening in the city. ~ #55979 */ GOTO 34
  IF ~~ THEN REPLY @49 /* ~100,000 gold and a teleportation spell to take me far away from Caelar's crusade. Failing that, you can tell me what you know of the crusade and its mistress.~ #55980 */ GOTO 30
  IF ~~ THEN REPLY @50 /* ~Nothing at all, Duke Entar. If that changes, I'll let you know.~ #55981 */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 29.2 24.4
  SAY @51 /* ~For now, our paths must part. May Tymora favor you in your travels.~ [BD55982] #55982 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.0
  SAY @52 /* ~Better now that she's no longer under the sway of that noxious pigdog Eldoth—but only a little better. The girl is determined to vex me. She throws herself into the jaws of the world, not realizing the dangers awaiting there. I fear it will take extreme action on my part to prevent tragedy befalling her.~ [BD66721] #66721 */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @53 /* ~So it seems to me, at least. I am sure she would tell a different tale, were you to ask her.~ [BD55983] #55983 */
  IF ~~ THEN REPLY @54 /* ~I may do that. For now, I'll ask what you know of the situation up north.~ #55984 */ GOTO 30
  IF ~  Global("bd_skie_entar_caelar","global",1)
~ THEN REPLY @55 /* ~She claimed Caelar was a child of Bhaal. Have you any proof of that?~ #55985 */ DO ~SetGlobal("bd_skie_entar_caelar","global",2)
~ GOTO 29
  IF ~~ THEN REPLY @56 /* ~Speak with that indolent rattlebrain? I think not.~ #55987 */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.2
  SAY @57 /* ~Have a care. <CHARNAME>. I am well aware of my daughter's faults, but she is MY daughter. I'll not have you or anyone else speak ill of her. This conversation is at an end.~ [BD55988] #55988 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1 24.1
  SAY @58 /* ~After Sarevok, we'd be fools not to consider the possibility, but all we have is rumor and conjecture. If you two share blood, that's all the more reason for you to represent us, no?~ [BD59666] #59666 */
  IF ~~ THEN REPLY @59 /* ~Fair enough. What can you tell me about the situation in the north?~ #59667 */ GOTO 30
  IF ~~ THEN REPLY @60 /* ~Perhaps... How fares the city during all this turmoil?~ #59668 */ GOTO 34
  IF ~~ THEN REPLY @61 /* ~If you believed that, I'd have heard the theory from you, not your daughter. Good night.~ #59669 */ GOTO 25
END

IF ~~ THEN BEGIN 30 // from: 36.0 29.0 27.0 24.3
  SAY @62 /* ~I have scattered reports, rumors, conjecture... it is said the crusade holds sway from the High Moor to the Winding Water.~ [BD55989] #55989 */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @63 /* ~The High Moor and Misty Forest are Caelar's, as are the Serpent Hills and most of Trollbark Forest. She has much of the Troll Hills too, but even she avoids Warlock's Crypt—so far, at least.~ [BD55990] #55990 */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @64 /* ~After her attack on you, I think her bold but reckless—willing to attempt anything to further her agenda, whatever it is.~ [BD66722] #66722 */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 39.0 37.0 32.0
  SAY @65 /* ~But for now, you must excuse me. The Council must see to the city, as you see to Caelar. Tymora favor your travels.~ [BD55991] #55991 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 29.1 24.2
  SAY @66 /* ~Thanks to that damnable Argent woman, we drown in a sea of refugees. The Flaming Fist is having trouble enough keeping order as it is, and will have more when the Dragonspear expedition leaves.~ [BD55992] #55992 */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @67 /* ~I don't know if Caelar seeks to cripple Baldur's Gate, but if that is the goal, she may well achieve it.~ [BD55993] #55993 */
  IF ~~ THEN REPLY @68 /* ~Have we any idea what her goal might be?~ #55994 */ GOTO 36
  IF ~~ THEN REPLY @69 /* ~Will the Fist be able to keep the peace with its forces spread out?~ #55995 */ GOTO 38
  IF ~~ THEN REPLY @70 /* ~She must be stopped, and she will be. I will put an end to her, as she sought to do to me.~ #55996 */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @71 /* ~Ideas? Certainly. Facts, not so much.~ [BD55997] #55997 */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY @72 /* ~I don't care who kills Caelar, provided they do so quickly.~ [BD55998] #55998 */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 38 // from: 35.1
  SAY @73 /* ~Eltan would know better than I. Given the attack on the palace, Caelar is moving more quickly than we anticipated. As for what happens next, your guess is as good as mine. Perhaps better.~ [BD55999] #55999 */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @74 /* ~No, not really, my guess would be slightly better than yours.~ [BD66723] #66723 */
  IF ~~ THEN GOTO 33
END

IF ~  Global("BD_plot","global",56)
Global("bd_final_speech","global",0)
~ THEN BEGIN 40 // from:
  SAY @75 /* ~Ah, the hero arrives.~ [BD64894] #64894 */
  IF ~~ THEN EXTERN ~XAC110~ 30
END

IF ~~ THEN BEGIN 41 // from:
  SAY @76 /* ~The Flaming Fist travels with you under the command of Captain Corwin and Corporal Duncan. I am sorry that Duke Eltan could not be present, but the ongoing crisis has called his attention elsewhere. Is there anything else you need before you depart?~ [BD64897] #64897 */
  IF ~~ THEN REPLY @77 /* ~What route will we take to Dragonspear Castle?~ #64898 */ EXTERN ~XAC107~ 62
  IF ~~ THEN REPLY @78 /* ~Can you go over the mission again?~ #64899 */ EXTERN ~XAC110~ 31
  IF ~~ THEN REPLY @79 /* ~Nothing, Duke Silvershield.~ #64900 */ EXTERN ~XAC110~ 32
END

IF ~~ THEN BEGIN 42 // from:
  SAY @80 /* ~Is there anything else?~ [BD64903] #64903 */
  IF ~~ THEN REPLY @77 /* ~What route will we take to Dragonspear Castle?~ #64904 */ EXTERN ~XAC107~ 62
  IF ~~ THEN REPLY @78 /* ~Can you go over the mission again?~ #64905 */ EXTERN ~XAC110~ 31
  IF ~~ THEN REPLY @79 /* ~Nothing, Duke Silvershield.~ #64906 */ EXTERN ~XAC110~ 32
END

IF ~~ THEN BEGIN 43 // from:
  SAY @81 /* ~You'd better get moving. Unless there was something else?~ [BD64909] #64909 */
  IF ~~ THEN REPLY @82 /* ~Duke Silvershield, I had one more thing to speak to you about, privately—a family matter.~ #64910 */ DO ~SetGlobal("BD_MDD006","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY @83 /* ~I'll be on my way. ~ #64911 */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 45.2 43.1 18.0
  SAY @84 /* ~Speak with Captain Corwin by the main doors. And be on your guard. The trip north will likely hold dangers beside the crusade.~ [BD64912] #64912 */
  IF ~~ THEN EXIT
END

IF ~  Global("BD_plot","global",56)
Global("bd_final_speech","global",1)
~ THEN BEGIN 45 // from:
  SAY @85 /* ~Head out the main doors to begin the journey north. And be on your guard. The trip will likely hold dangers beside the crusade.~ #68872 */
  IF ~  Global("BD_MDD006","GLOBAL",1)
~ THEN EXIT
  IF ~  Global("BD_MDD006","GLOBAL",0)
~ THEN REPLY @82 /* ~Duke Silvershield, I had one more thing to speak to you about, privately—a family matter.~ #64910 */ DO ~SetGlobal("BD_MDD006","GLOBAL",1)
~ GOTO 8
  IF ~  Global("BD_MDD006","GLOBAL",0)
~ THEN REPLY @83 /* ~I'll be on my way. ~ #64911 */ GOTO 44
END
