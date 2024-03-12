// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDLIIA.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDLIIA.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAD103~

IF ~  GlobalLT("bd_001_plot","bd0103",9)
AreaCheck("bd0103")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Fenster and the other healers are dealing with the wounded downstairs. I've some knowledge of the healing arts and a few potions—perhaps I can be of assistance.~ [BD64618] #64618 */
  IF ~~ THEN REPLY @3 /* ~Duke Jannath, what is all this about?~ #64619 */ DO ~SetGlobal("bd_001_plot","bd0103",9)
TriggerActivation("TranBD0100a",TRUE)
TriggerActivation("TranBD0100b",TRUE)
TriggerActivation("imoeninfo1",TRUE)
AddMapNoteColor([505.225],@2,GREEN)
AddMapNoteColor([1275.760],@2,GREEN)
~ GOTO 1
  IF ~~ THEN REPLY @4 /* ~Whatever you can do to help Imoen, please—just let me know how I can help.~ #64745 */ DO ~SetGlobal("bd_001_plot","bd0103",9)
TriggerActivation("TranBD0100a",TRUE)
TriggerActivation("TranBD0100b",TRUE)
TriggerActivation("imoeninfo1",TRUE)
AddMapNoteColor([505.225],@2,GREEN)
AddMapNoteColor([1275.760],@2,GREEN)
~ GOTO 2
  IF ~~ THEN REPLY @5 /* ~I don't need your assistance. I want to know what the hells is going on.~ #64746 */ DO ~SetGlobal("bd_001_plot","bd0103",9)
TriggerActivation("TranBD0100a",TRUE)
TriggerActivation("TranBD0100b",TRUE)
TriggerActivation("imoeninfo1",TRUE)
AddMapNoteColor([505.225],@2,GREEN)
AddMapNoteColor([1275.760],@2,GREEN)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.0
  SAY @6 /* ~Several assassins managed to penetrate the palace. Some guards stumbled upon them and raised the alarm. A handful of the attackers were slain—the rest scattered through the building, finding their way to you and wounding my apprentice.~ [BD64620] #64620 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 0.1
  SAY @7 /* ~The assassins' blades are coated with a mystic poison, but I believe I can save her...~ [BD64621] #64621 */
  IF ~~ THEN REPLY @8 /* ~What can I do to help?~ #64622 */ GOTO 6
  IF ~~ THEN REPLY @9 /* ~"Believe"? You can't manage something a little more encouraging than that?~ #64623 */ GOTO 7
  IF ~~ THEN REPLY @10 /* ~Leave her. We've wasted enough time as it is.~ #64624 */ EXTERN ~XAD145~ 11
END

IF ~~ THEN BEGIN 3 // from:
  SAY @11 /* ~Duke Eltan is in charge below. He may have learned more of our attackers and who sent them.~ [BD64626] #64626 */
  IF ~~ THEN GOTO 4
  IF ~  Gender(Player1,FEMALE)
~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @12 /* ~Captain Corwin, would you be so good as to escort him downstairs?~ [BD64627] #64627 */
  IF ~~ THEN EXTERN ~XAD145~ 12
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @13 /* ~Captain Corwin, would you be so good as to escort her downstairs?~ [BD69643] #69643 */
  IF ~~ THEN EXTERN ~XAD145~ 12
END

IF ~~ THEN BEGIN 6 // from: 7.0 2.0
  SAY @14 /* ~The best thing you can do right now is accompany Captain Corwin downstairs and ensure the palace is secure.~ [BD64629] #64629 */
  IF ~~ THEN EXTERN ~XAD145~ 12
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @15 /* ~There is no certainty to be had in this world. I will do everything in my power to restore her.~ [BD64630] #64630 */
  IF ~~ THEN GOTO 6
END

IF ~  Global("bd_001_plot","bd0103",9)
AreaCheck("bd0103")
~ THEN BEGIN 8 // from:
  SAY @16 /* ~There's nothing you can do to help here, <CHARNAME>. Go downstairs and speak with Duke Eltan. He may have learned something of our attackers.~ #64631 */
  IF ~~ THEN EXIT
END

IF ~  Global("bd_plot_003","bd0102",0)
~ THEN BEGIN 9 // from:
  SAY @17 /* ~Let us begin. <CHARNAME>, you know your host, Duke Belt, and Grand Dukes Eltan and Entar Silvershield, I believe?~ [BD34206] #34206 */
  IF ~~ THEN REPLY @18 /* ~I'm glad to see you all alive and well.~ #59540 */ DO ~SetGlobal("bd_plot_003","bd0102",1)
~ EXTERN ~XAD101~ 4
  IF ~~ THEN REPLY @19 /* ~Assassins tried to kill me this night. Let's dispense with the pleasantries.~ #57840 */ DO ~SetGlobal("bd_plot_003","bd0102",1)
~ EXTERN ~XAD101~ 3
  IF ~  Global("SOD_fromimport","global",1)
~ THEN REPLY @20 /* ~Grand Duke Silvershield. Weren't you—forgive me if this is indelicate—weren't you killed?~ #57841 */ DO ~SetGlobal("bd_plot_003","bd0102",1)
~ EXTERN ~XAD102~ 6
  IF ~~ THEN REPLY @21 /* ~I know them. Who is the young lady?~ #57842 */ DO ~SetGlobal("bd_plot_003","bd0102",1)
~ EXTERN ~XAD102~ 5
END

IF ~~ THEN BEGIN 10 // from:
  SAY @22 /* ~The symbol of Caelar Argent and her accursed crusade.~ [BD64713] #64713 */
  IF ~~ THEN REPLY @23 /* ~The crusade is in Baldur's Gate? I thought they were only active north of the Winding Water.~ #64714 */ EXTERN ~XAD100~ 34
  IF ~~ THEN REPLY @24 /* ~The crusade's assassins paid for their arrogance. Their leader must do the same.~ #64715 */ EXTERN ~XAD102~ 7
END

IF ~~ THEN BEGIN 11 // from:
  SAY @25 /* ~We would have you join them. The hero of Baldur's Gate is once again called upon to defend the city.~ #34300 */
  IF ~~ THEN REPLY @26 /* ~I stand ready to answer that call.~ #64720 */ EXTERN ~XAD100~ 38
  IF ~~ THEN REPLY @27 /* ~I nearly died saving it from Sarevok. Why should I tempt fate and death twice?~ #64721 */ EXTERN ~XAD101~ 7
  IF ~~ THEN REPLY @28 /* ~I care nothing for the city, Caelar, or her wretched crusade.~ #64722 */ EXTERN ~XAD101~ 6
END

IF ~~ THEN BEGIN 12 // from:
  SAY @29 /* ~This is no laughing matter, <CHARNAME>. Caelar's zealots clearly mean to see you dead.~ [BD64731] #64731 */
  IF ~~ THEN EXTERN ~XAD100~ 37
END

IF ~  GlobalLT("BD_plot","global",55)
AreaCheck("bd0102")
~ THEN BEGIN 13 // from:
  SAY @30 /* ~Hello, <CHARNAME>. I am glad to see you well.~ [BD56028] #56028 */
  IF ~~ THEN REPLY @31 /* ~As well as an assassin's target can be, Grand Duke Jannath.~ #56030 */ GOTO 14
  IF ~~ THEN REPLY @32 /* ~And I, you. Tell me, how fares Imoen?~ #56031 */ GOTO 14
  IF ~~ THEN REPLY @33 /* ~I wish we had time to speak, but I must be elsewhere.~ #58049 */ GOTO 29
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.0
  SAY @34 /* ~The intruders' weapons were poisoned, but Tymora smiled upon us—the poison was weak, and fatal only to the weakest of victims. Imoen's heart beats much stronger than that.~ [BD65121] #65121 */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @35 /* ~It's worrisome that the palace was so easily penetrated—and to learn that Caelar's reach extends this far beyond the Winding Water.~ [BD56032] #56032 */
  IF ~~ THEN REPLY @36 /* ~What do we know of her plans? ~ #56033 */ GOTO 16
  IF ~~ THEN REPLY @37 /* ~I've thought more of Caelar than I care to of late. How goes Imoen's magical training?~ #56034 */ GOTO 19
  IF ~~ THEN REPLY @38 /* ~In attacking me, she has overextended herself.~ #56035 */ GOTO 27
  IF ~~ THEN REPLY @39 /* ~I must take my leave of you now. I've a long journey ahead.~ #60721 */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @40 /* ~Precious little. She claims herself an instrument of the gods—which gods are a matter of some debate—on a divine mission. As to what that mission is? It is as countless as the mouths that praise her—and those that curse her.~ [BD56036] #56036 */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 15.3
  SAY @41 /* ~Our gratitude and prayers go with you, <CHARNAME>. Until we speak again.~ [BD56041] #56041 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY @42 /* ~An understandable concern, given the circumstances.~ #64856 */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 15.1
  SAY @43 /* ~She is an attentive student, but magic requires a clarity of thought and feeling she struggles to maintain. Still, that's not unusual for one her age.~ [BD56042] #56042 */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @44 /* ~In time, I am certain she will be able to access AND control the Weave's power. But she must be patient and take the time to know all facets of the craft. Failure to do so could be disastrous.~ [BD56043] #56043 */
  IF ~~ THEN REPLY @45 /* ~You don't think I should take her to Dragonspear? ~ #56044 */ GOTO 22
  IF ~~ THEN REPLY @46 /* ~Define "disastrous."~ #56045 */ GOTO 21
  IF ~~ THEN REPLY @47 /* ~I will bear this in mind. ~ #56046 */ GOTO 26
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @48 /* ~I will advise her to remain in Baldur's Gate while you journey to Dragonspear, if that's what you're asking. Whether she takes my advice is another matter.~ [BD56047] #56047 */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 20.0
  SAY @49 /* ~She'll accompany you if she wishes—you know her well enough to know she'll not be swayed once she's made a decision. But she's not nearly ready to use magic.~ [BD56048] #56048 */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @50 /* ~While her other skills may prove useful to you, she's at a critical time in her training. Her past instincts pull her one way, her study of the craft another.~ [BD56049] #56049 */
  IF ~~ THEN DO ~SetGlobal("bd_liia_trains_immy","global",1)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @51 /* ~Until that conflict is resolved, you will find her less than effective as a magic user or a practitioner of her... other skills.~ [BD56050] #56050 */
  IF ~~ THEN REPLY @52 /* ~That's why she was reluctant to assist in rooting out Sarevok's minions...~ #56051 */ GOTO 25
  IF ~~ THEN REPLY @53 /* ~So she's of no use as a thief or a magician? ~ #56052 */ GOTO 25
  IF ~~ THEN REPLY @54 /* ~Redblooding hells. She could barely pick a pocket as it was—now she can't even do that?~ #56053 */ GOTO 25
  IF ~~ THEN REPLY @55 /* ~Thank you for your counsel. I must take my leave now.~ #58050 */ GOTO 29
END

IF ~~ THEN BEGIN 25 // from: 24.2 24.1 24.0
  SAY @56 /* ~She cares for you, <CHARNAME>. The last thing she wants is to be a burden—but until she fully recovers and her training is complete, I fear she would be.~ [BD56054] #56054 */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 28.0 27.2 27.0 25.0 20.2 16.0
  SAY @57 /* ~I am glad we had a chance to speak before you depart. But now, I must go. There are many demands on my time. If I do not attend to them, their number will only grow. Farewell.~ [BD56055] #56055 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 15.2
  SAY @58 /* ~I fear we are missing something here, <CHARNAME>. Caelar's actions make little sense. Why would she attack you? And if she succeeded—what does she gain from killing the hero of Baldur's Gate?~ [BD56056] #56056 */
  IF ~~ THEN REPLY @59 /* ~Perhaps I'll find the answer in Dragonspear Castle.~ #56057 */ GOTO 26
  IF ~~ THEN REPLY @60 /* ~It would be a crushing blow to the city's morale, surely?~ #56058 */ GOTO 28
  IF ~~ THEN REPLY @61 /* ~Whatever her aim, she missed her mark. I won't.~ #56059 */ GOTO 26
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY @62 /* ~Between the iron crisis, the refugees, and the tales they tell of the crusade, I doubt our people's morale could sink much lower. But I have no better explanation for Caelar's attack upon you.~ [BD56060] #56060 */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 29 // from: 24.3 13.2
  SAY @63 /* ~Farewell, then.~ [BD58051] #58051 */
  IF ~~ THEN EXIT
END

IF ~  Global("BD_plot","global",56)
Global("bd_final_speech","global",0)
~ THEN BEGIN 30 // from:
  SAY @64 /* ~I hope you slept well, <CHARNAME>. You've a long road ahead.~ [BD64895] #64895 */
  IF ~~ THEN EXTERN ~XAD100~ 61
END

IF ~~ THEN BEGIN 31 // from:
  SAY @65 /* ~At Dragonspear Castle, you'll rendezvous with troops from Waterdeep and Daggerford, and bring an end to Caelar Argent's crusade, one way or another.~ [BD64902] #64902 */
  IF ~~ THEN EXTERN ~XAD102~ 42
END

IF ~~ THEN BEGIN 32 // from:
  SAY @66 /* ~May the gods look upon you with favor.~ [BD64907] #64907 */
  IF ~~ THEN EXTERN ~XAD100~ 63
END

IF ~  Global("BD_plot","global",56)
Global("bd_final_speech","global",1)
~ THEN BEGIN 33 // from:
  SAY @67 /* ~At Dragonspear Castle, you'll rendezvous with the armies and bring an end to Caelar's crusade. Leave through the main doors when you're ready.~ #68873 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("bd0118")
~ THEN BEGIN 34 // from:
  SAY @68 /* ~Concentrate, girl. Clear your mind of all thoughts.~ [BD63920] #63920 */
  IF ~~ THEN EXTERN ~XAD143~ 135
END

IF ~~ THEN BEGIN 35 // from:
  SAY @69 /* ~You are not without wit, Imoen—but that will only take you so far. What you need... and currently lack... is focus.~ [BD63922] #63922 */
  IF ~~ THEN EXTERN ~XAD143~ 136
END

IF ~~ THEN BEGIN 36 // from:
  SAY @70 /* ~If you were truly thinking about magic, you'd not be talking so much.~ [BD63924] #63924 */
  IF ~~ THEN EXTERN ~XAD143~ 137
END

IF ~~ THEN BEGIN 37 // from:
  SAY @71 /* ~In your current state, you'd be nothing but a burden. If you truly want to help your friend, you must focus your mind and your energies on your studies.~ [BD63926] #63926 */
  IF ~~ THEN EXTERN ~XAD143~ 138
END

IF ~~ THEN BEGIN 38 // from:
  SAY @72 /* ~Clear your mind...~ [BD63929] #63929 */
  IF ~~ THEN EXTERN ~XAD143~ 140
END
