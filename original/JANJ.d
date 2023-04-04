// creator  : weidu (version 24900)
// argument : JANJ.DLG
// game     : .
// source   : ./override/JANJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~JANJ~

IF ~~ THEN BEGIN 0 // from:
  SAY #1888 /* ~Who dar... Beeloo? ~ */
  IF ~~ THEN EXTERN ~BEELOO~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #1889 /* ~Well, they're not gnomes, but they're not a total loss either. Some of them can get through an entire battle without my needing to babysit them. Quite remarkable for the non-gnomish. Where's your elephant?~ */
  IF ~~ THEN EXTERN ~BEELOO~ 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY #1890 /* ~Legally?~ */
  IF ~~ THEN EXTERN ~BEELOO~ 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY #1891 /* ~Have you? Is something wrong?~ */
  IF ~~ THEN EXTERN ~BEELOO~ 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY #1893 /* ~Did he hurt her?~ */
  IF ~~ THEN EXTERN ~BEELOO~ 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY #1894 /* ~Farewell, Beeloo. ~ */
  IF ~~ THEN EXIT
END

IF ~  Global("JanLissaPlot","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #1895 /* ~It looks like something serious is afoot. I'll have to be heading back to my home in the Slums District.~ [JANJAN68] */
  IF ~~ THEN REPLY #1896 /* ~Good riddance, gnome. I tire of your pointless tales.~ */ GOTO 7
  IF ~~ THEN REPLY #1897 /* ~Is it something that I could help with?~ */ GOTO 8
  IF ~~ THEN REPLY #1898 /* ~I'm afraid we haven't the time to accompany you. Perhaps we could meet you at a later time.~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #1899 /* ~So be it. You're a tactless bunch of idiots anyway. I've more important things to do! Excuse me.~ [JANJAN80] */
  IF ~~ THEN DO ~SetGlobal("JanPissed","GLOBAL",1)
SetGlobal("JanLissaPlot","GLOBAL",10)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #1900 /* ~You are welcome to come with me. I know not what the story will be, so I'm not sure if you'll actually need to do something.~ */
  IF ~~ THEN REPLY #1901 /* ~Perhaps you should tell us who Lissa is and why you're worried about her.~ */ GOTO 10
  IF ~~ THEN REPLY #1902 /* ~In that case, we'll continue on the road and shall meet you at a later time.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 20.1 16.0 8.1 6.2
  SAY #1903 /* ~My family's house lies in the Slums District of Athkatla. 'Tis a grand tower. I shall most likely be there if you should have need of me at a later time. It's been fun, though I wish I'd had more time to regale you with tales. Farewell!~ */
  IF ~~ THEN DO ~SetGlobal("JanLissaPlot","GLOBAL",6)
SetGlobal("JanAlone","GLOBAL",1)
SetGlobalTimer("JanDidPlot","GLOBAL",FIVE_DAYS)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ UNSOLVED_JOURNAL #47992 /* ~Jan returns home to help his former love, Lissa

Jan has met up with a friend of his named Beeloo, who told him he was needed back at his home in the Slums District. I could not accompany him, so Jan went on his own and bid me to come and find him there at a later time once he has dealt with the problem.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 16.2 8.0
  SAY #1904 /* ~It is not an easy tale for me to tell. This girl, Lissa, that my cousin mentioned is an old friend of mine. More than a friend, I should say. She grew up poor, like me. It was a hard life, but there was happiness to be found.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #1905 /* ~I loved Lissa like I've never loved another. She was the most beautiful girl in Athkatla. I was not the only one to think so, however; she had several suitors when she came of marrying age. I worried little about it. I was her closest friend and she claimed to love me. ~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #1906 /* ~There are many gnomish families in Athkatla. Life is very different for gnomes so used to the woods and caves of the country. Many of the families struggle with poverty in exchange for the safety of the city walls and Amnian law. Some families do very well. He came from one such family.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #1907 /* ~Vaelag is the gnome who runs all "business" in the gnomish areas of Athkatla.~ */
  IF ~~ THEN REPLY #1908 /* ~By "business," I assume you mean criminal activities.~ */ GOTO 14
  IF ~~ THEN REPLY #1909 /* ~What business?~ */ GOTO 15
  IF ~~ THEN REPLY #1910 /* ~Actually, I'd rather not hear this story right now. Why don't we get going?~ */ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #1911 /* ~Yes. He is a thief who pretends to be an honest merchant. Rumor has it that he reports directly to the Shadow Thieves. Regardless, he was not a pleasant person. He was a bully and a cruel man. He enjoyed exercising power. He was also suave, sophisticated, and very, very rich.~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #1912 /* ~I refer to unsavory business. Loan sharking, smuggling, and so forth. Vaelag is a thief who pretends to be an honest merchant. Rumor has it that he reports directly to the Shadow Thieves. Regardless, he was not a pleasant person. He was a bully and a cruel man. He enjoyed exercising power. He was also suave, sophisticated, and very, very rich.~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY #1913 /* ~Yes, we should get going. You will accompany me to see Lissa?~ */
  IF ~~ THEN REPLY #1914 /* ~I cannot come with you. Perhaps we could meet at some later time.~ */ GOTO 9
  IF ~~ THEN REPLY #1916 /* ~Yes, I will accompany you.~ */ GOTO 18
  IF ~~ THEN REPLY #1917 /* ~Could you tell me about Lissa again?~ */ GOTO 10
END

IF ~~ THEN BEGIN 17 // from: 15.0 14.0
  SAY #1918 /* ~I had asked Lissa to marry me and she had agreed. We were to be married at the midsummer's festival the following year. That was before she'd met Vaelag. Like most men, he took a liking to her immediately. ~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #1919 /* ~We should make our way to my home in Athkatla with some haste. I'm worried about Lissa. It is a squat tower on the east side. You can't miss it.~ */
  IF ~~ THEN DO ~SetGlobal("JanLissaPlot","GLOBAL",3)
SetGlobalTimer("JanLissa","GLOBAL",FOUR_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #1920 /* ~He swept her off her feet. He showered her with gifts and city cultural events. At the time, my bitterness had me believe that he cast some sort of spell on her. In retrospect, knowing what I do about magic, she chose him of her own volition. She was pregnant shortly afterwards and they were married. ~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #1921 /* ~I would have given her that world, had I been able. I don't really believe it matters anymore. I just want her to be happy. Vaelag is a petty and cruel man, but she loved him more than she loved me. There's nothing else to tell. If you're ready, I'd like to get to my home in Athkatla now.~ */
  IF ~~ THEN REPLY #1922 /* ~We shall get there as soon as possible.~ */ DO ~SetGlobal("JanLissaPlot","GLOBAL",3)
SetGlobalTimer("JanLissa","GLOBAL",FOUR_DAYS)
~ UNSOLVED_JOURNAL #34712 /* ~Jan returns home to help his former love, Lissa

After meeting up with his cousin Beeloo, Jan was informed that he is needed back at his home in the Slums District. Apparently, there is some kind of trouble with a former love of his that married herself to another man. I have agreed to go with him.~ */ EXIT
  IF ~~ THEN REPLY #1926 /* ~I cannot come with you. Perhaps we could meet at some later time.~ */ GOTO 9
END

IF ~  Global("JanLissaPlot","GLOBAL",5)
~ THEN BEGIN 21 // from:
  SAY #1927 /* ~Wee ones, I'm home!~ [JANJAN69] */
  IF ~~ THEN EXTERN ~TOT~ 0
END

IF ~~ THEN BEGIN 22 // from:
  SAY #1928 /* ~Calmly, little ones. I've brought you each a Flasher.~ */
  IF ~~ THEN EXTERN ~TOT~ 1
END

IF ~~ THEN BEGIN 23 // from:
  SAY #1929 /* ~Those are the twins, of course. The girl is Tat, the boy is Tot. They are my youngest cousin's. Glandig's children. ~ */
  IF ~~ THEN REPLY #1930 /* ~Where is this Glandig?~ */ GOTO 24
  IF ~~ THEN REPLY #1931 /* ~I don't wish to rush your family reunion, but perhaps we should look for Lissa and find out what this is all about.~ */ GOTO 25
  IF ~~ THEN REPLY #1932 /* ~Your family is annoying. I'm leaving.~ */ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #1933 /* ~He's most likely working in the mines. My mother watches his children when he's away. They're actually quite impoverished since his wife died.~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #1937 /* ~I agree. Follow me. I must speak with my mother.~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut14a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY #1938 /* ~I have no need for you, <CHARNAME>. It was not necessary to insult my family. Please leave this house.~ */
  IF ~~ THEN DO ~SetGlobal("JanLissaPlot","GLOBAL",20)
SetGlobal("JanPissed","GLOBAL",1)
SetGlobal("KickedOut","LOCALS",1)
SetGlobal("LeaveJan","GLOBAL",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #1939 /* ~These tales are best kept for another time. Follow me. I must speak with my mother.~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut14a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #1950 /* ~I'm sorry, Ma. The turnip trade is a demanding mistress.~ */
  IF ~~ THEN EXTERN ~MAJAN~ 1
END

IF ~~ THEN BEGIN 29 // from:
  SAY #1951 /* ~Of course not, Ma. I've been very good. Why, look at the fine bunch of people I'm traveling with!~ */
  IF ~~ THEN EXTERN ~MAJAN~ 2
END

IF ~~ THEN BEGIN 30 // from:
  SAY #1952 /* ~What's going on, Ma? Beeloo made it sound quite urgent. ~ */
  IF ~~ THEN EXTERN ~MAJAN~ 3
END

IF ~~ THEN BEGIN 31 // from:
  SAY #1953 /* ~Is she all right? Did he... did he hurt her?~ */
  IF ~~ THEN EXTERN ~MAJAN~ 4
END

IF ~~ THEN BEGIN 32 // from:
  SAY #1954 /* ~Okay, Ma. I'll head upstairs immediately. <CHARNAME>, please come with me.~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut14b",FALSE)
~ UNSOLVED_JOURNAL #34717 /* ~Jan returns home to help his former love, Lissa

The problem at Jan's home appears to be that his former love, Lissa, has arrived to stay... bringing with her sick daughter. She needs Jan's help, according to his mother, and he needs to go to his old room to speak with her.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #1967 /* ~You look fine, Lis. You look beautiful. ~ */
  IF ~~ THEN EXTERN ~LISSA~ 1
END

IF ~~ THEN BEGIN 34 // from:
  SAY #1968 /* ~I couldn't, Lis. I mean, I didn't want to intrude on you and Vaelag. It wasn't my place to.~ */
  IF ~~ THEN EXTERN ~LISSA~ 2
END

IF ~~ THEN BEGIN 35 // from:
  SAY #1969 /* ~You don't have to apologize, Lis. I would do anything to make you happy. Tell me what happened. What's wrong with your daughter?~ */
  IF ~~ THEN EXTERN ~LISSA~ 3
END

IF ~~ THEN BEGIN 36 // from:
  SAY #1970 /* ~When did this start?~ */
  IF ~~ THEN EXTERN ~LISSA~ 4
END

IF ~~ THEN BEGIN 37 // from:
  SAY #1971 /* ~Did this happen after that bastard beat her?~ */
  IF ~~ THEN EXTERN ~LISSA~ 5
END

IF ~~ THEN BEGIN 38 // from:
  SAY #1972 /* ~She isn't physically harmed, Lis. It is her mind that has been injured. My magic can do nothing for this sort of thing. Have you spoken with Uncle Gerhardt?~ */
  IF ~~ THEN EXTERN ~LISSA~ 6
END

IF ~~ THEN BEGIN 39 // from:
  SAY #1973 /* ~Excuse me, Lis. <CHARNAME>, could you go to the basement and speak with my uncle Gerhardt? Maybe find out what he knows about this illness. He's a bit eccentric, but he knows more than he lets on. I'd guess that we have ten days before Jaella will die.~ */
  IF ~~ THEN REPLY #1978 /* ~He's in the basement, you say? Yes, I'll go and discover what he knows.~ */ GOTO 40
  IF ~~ THEN REPLY #1979 /* ~I really don't have the time to get involved in this.~ */ GOTO 41
  IF ~~ THEN REPLY #1980 /* ~I'm not going to waste my time running errands for you! Do it yourself. ~ */ GOTO 42
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #1974 /* ~Thank you. I'll stay here with Lissa. I have to... it's hard to explain.~ */
  IF ~~ THEN REPLY #1981 /* ~I think I understand. I'll be back when I've found your uncle.~ */ DO ~SetGlobal("JanLissaPlot","GLOBAL",7)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
~ UNSOLVED_JOURNAL #34718 /* ~Jan returns home to help his former love, Lissa

Lissa's daughter seems to have come down with a mysterious illness of the mind. Jan's uncle, Gerhardt, told Lissa that Jan could heal the girl, but Jan doesn't seem to agree. He has asked me to go to the basement and ask his uncle what he knows about the little girl's illness.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #1975 /* ~If that's the case, I'd rather you leave now. I have a lot of things to take care of, and I doubt that I'll be able to rejoin you for a week or two. ~ */
  IF ~~ THEN REPLY #1982 /* ~As you wish. We shall leave you to look after your personal affairs. Perhaps we will return in a week or two.~ */ GOTO 43
  IF ~~ THEN REPLY #1983 /* ~I'd rather you not rejoin me at all. There is no place for you in this party.~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.1 39.2
  SAY #1976 /* ~I've served you well during my time with your party. What I ask of you is a small thing. You should think you'd be less of an ogre about it. Actually, I've known several ogres who are nicer than you are. Leave now and return only to apologize.~ */
  IF ~~ THEN DO ~SetGlobal("JanLissaPlot","GLOBAL",20)
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #1977 /* ~Farewell, <CHARNAME>! As Uncle Scratchy used to say, if you can't join 'em, beat them with a stick of lard.~ */
  IF ~~ THEN DO ~SetGlobalTimer("JanDidPlot","GLOBAL",FIVE_DAYS)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
SetGlobal("JanLissaPlot","GLOBAL",9)
EscapeArea()
~ UNSOLVED_JOURNAL #47993 /* ~Jan returns home to help his former love, Lissa

The child of Lissa, Jan's childhood sweetheart, is dying and is expected only to live ten days. It likely stems from this husband of Lissa's, Vaelag. Jan has sworn to do what he could, but I could not stay and help him. He bid me to return after a couple of weeks if I wish to seek him out.~ */ EXIT
END

IF ~  Global("JanLissaPlot","GLOBAL",7)
~ THEN BEGIN 44 // from:
  SAY #1985 /* ~Please, go and speak with my uncle Gerhardt. Find out what he knows about Jaella's illness. You'll find him in the basement.~ [JANJAN70] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #14236 /* ~Actually, young one, I have an Uncle Witherjar who decorates grounds professionally. He has become known all across his hometown as the Garden Gnome, and I understand he makes quite the fair living at it. I don't know if I would like to work all those hours during the day, as Uncle Witherjar does, so I think I would have to turn down your mother's suggestion. I could always refer her to my uncle, I suppose, although it is such a far way. He wants to spread his work amongst all the gnomes, but I don't think he's made much headway yet. If your mother would rather decorate her kitchen, I suppose I could give it a whirl even if I haven't got the Witherjar touch.~ */
  IF ~~ THEN EXTERN ~BRAT1~ 5
END

IF ~~ THEN BEGIN 46 // from:
  SAY #14489 /* ~Well, I have a cousin Barnal who runs a pretty shady business himself. Makes umbrellas, you see, although I don't know what they do with such things in Calimshan. Hide from the sun, avoid bird droppings and the like, I suppose, since there can't be a drop of rain to be had. 'Course, Barnal makes them out of pressed camel dung. Rotten business, that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #15142 /* ~They are all fine, friend. Unless, of course, you count my cousin Friedrich, in which case I might be tempted to say "mostly fine," instead. My aunt Minnie finally had her baby, cutest little thing. About time, too. We were about to offer it a scholarship; it had been in there so long. And Uncle Witherjar is still pretty much crazy, naturally.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY #19997 /* ~I be just fine, my good tallfellow.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #20091 /* ~Cousin Kylie! How goes the turnip business?~ */
  IF ~~ THEN EXTERN ~KYLIE1~ 17
END

IF ~~ THEN BEGIN 50 // from:
  SAY #20093 /* ~Well, I shall have to remedy that and sample one of these succulent morsels!~ */
  IF ~~ THEN EXTERN ~KYLIE1~ 18
END

IF ~~ THEN BEGIN 51 // from:
  SAY #20095 /* ~I know. I agonize over that fact constantly.~ */
  IF ~~ THEN EXTERN ~KYLIE1~ 19
END

IF ~~ THEN BEGIN 52 // from:
  SAY #20098 /* ~You know, Kylie, I'll have to go right now and think about that.~ */
  IF ~~ THEN EXTERN ~KYLIE1~ 20
END

IF ~~ THEN BEGIN 53 // from:
  SAY #20101 /* ~Thanks for the turnip, cousin. Turmish, wasn't it? Fresh as a Calishite bellydancer! Off we go, <CHARNAME>!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY #22377 /* ~Naturally, it was me, my dear. The selling of turnips is a fine and time-honored profession that I am sad to say I have left behind me for the moment. One can only do one thing at a time... unless, of course, you want to talk about my cousin Abraham.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #24882 /* ~Well, in some places that wouldn't narrow things down much. I take it, however, that you are bellowing at me, good sir.~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 13
END

IF ~~ THEN BEGIN 56 // from:
  SAY #24884 /* ~I'd say you remind me of my cousin Rintin. Grew the largest turnip one summer, larger than a house, almost. Well... larger than his house, at any rate.~ */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #24886 /* ~He sold the whole turnip to six different people. One of them a wizard, if I remember, who thought the turnip would make a wonderful component for a lich spell.~ */
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #24888 /* ~All six of them arrived one day, and poor Rintin couldn't even pull it out of the ground. Went purple from exhaustion... which actually disguised him rather well in front of the turnip.~ */
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #24889 /* ~They saw him anyway. Divided poor Rintin up into six portions, they did. Sad story. Unless you're the turnip.~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 14
END

IF ~~ THEN BEGIN 60 // from:
  SAY #25712 /* ~Hmmn. Ignoring the blatant stereotyping you apply to my poor people, sailor, suddenly I have a real itch to sell you a turnip or two. Sadly, ever since the bugbear incident, I haven't had a turnip to my name.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #26155 /* ~*sniff* Selling turnips is a time-honored profession for my family. Far better than the shame you bring to us gnomes, Bertrand.~ */
  IF ~~ THEN EXTERN ~BERTRAND~ 5
END

IF ~~ THEN BEGIN 62 // from:
  SAY #26157 /* ~The lasses love you only for your nose, Bertrand. 'Tis a shame to the rest of us... oh, to be lumped in the same class as a gnomish gigolo! The indignity of it all!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY #27847 /* ~Now, that's not necessarily true, my friend. My cousin Adecan married a fine human woman, he did. He was of the sort that was not fine to look on as well... but she did appreciate his sense of humor.~ */
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #27850 /* ~The lad could tell a joke to save his life, in fact. Once kept a trio of ogres laughing so heartily that they forgot to eat him. Too bad he didn't speak griffon, however... poor Adecan. I hear his last joke was a zinger, although the punchline got cut short.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #28414 /* ~You can't be speaking to me... I haven't been called that in ages...~ */
  IF ~~ THEN EXTERN ~BINNKEEP~ 8
END

IF ~~ THEN BEGIN 66 // from:
  SAY #28416 /* ~So you are talking to me. Well, isn't that nice? I always told my cousins that Calbor was the most thoughtful innkeep in Athkatla, and I'm glad to see it wasn't just poor memory talking.~ */
  IF ~~ THEN EXTERN ~BINNKEEP~ 9
END

IF ~~ THEN BEGIN 67 // from:
  SAY #28418 /* ~You're getting a mite red in the face, Calbor. What seems to be the problem?~ */
  IF ~~ THEN EXTERN ~BINNKEEP~ 10
END

IF ~~ THEN BEGIN 68 // from:
  SAY #28420 /* ~Come, now, Calbor. You're talking about the turnip lotion, correct?~ */
  IF ~~ THEN EXTERN ~BINNKEEP~ 11
END

IF ~~ THEN BEGIN 69 // from:
  SAY #28422 /* ~Hm. That's strange. Aunt Patty swears by that stuff. You didn't put it on your head, did you?~ */
  IF ~~ THEN EXTERN ~BINNKEEP~ 12
END

IF ~~ THEN BEGIN 70 // from:
  SAY #28424 /* ~Well, there you go. You see where blowing up gets you? I had a cousin Jalico who put some turnip lotion on his head once. His wife still won't speak to him.~ */
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #28425 /* ~I'll talk to Kylie, Calbor, and see about getting you some new lotion. And instructions. Tsk tsk. Poor man. Fair enough?~ */
  IF ~~ THEN EXTERN ~BINNKEEP~ 13
END

IF ~~ THEN BEGIN 72 // from:
  SAY #29006 /* ~Couldn't agree more, m'lady. Cursed big-nosed twerps have the run of the land, and they're still allowed into the Mithrest! Truly disturbing.~ */
  IF ~~ THEN EXTERN ~WCUST04~ 3
END

IF ~~ THEN BEGIN 73 // from:
  SAY #29013 /* ~Don't poke fun at <CHARNAME>; <PRO_HESHE>'s got a delicate disposition!~ */
  IF ~~ THEN EXTERN ~WCUST04~ 4
END

IF ~~ THEN BEGIN 74 // from:
  SAY #29015 /* ~Tsk, tsk. Not even a challenge anymore. The big folk are getting more than a little inbred. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #29528 /* ~I am not that old, madam. And I assure you... should I decide upon a bride, you will be the first to know.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #29607 /* ~Nonsense. I'm Jan Jinsen. You want that other gnome, good fellow.~ */
  IF ~~ THEN EXTERN ~TAXCOLL~ 5
END

IF ~~ THEN BEGIN 77 // from:
  SAY #32685 /* ~Hmph. I see Urdlen is still busy spreading his ill-tempered seed over this half of the continent, at least.~ */
  IF ~~ THEN EXTERN ~UHMER02~ 4
END

IF ~  Global("JanLissaPlot","GLOBAL",4)
~ THEN BEGIN 78 // from:
  SAY #34523 /* ~May I remind you that we have to go and see my family? It sounds urgent.~ [JANJAN71] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #38743 /* ~Now, now, Nalia. A golden sword wouldn't be so bad... except maybe for the weight. And the softness. Pretty much only good for one swing, actually. Hmmm... Tell me, <CHARNAME>, just why are you planning on buying a golden sword, anyway? Sounds pretty useless to me.~ */
  IF ~~ THEN REPLY #38744 /* ~I never said I was going to—~ */ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #38745 /* ~Oh, don't go and tell me you don't want one. I've heard you mumbling in your sleep, you chatty little <PRO_MANWOMAN>. But never mind... I'd like to see you try and fight with one.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #38880 /* ~Now, I thought your name sounded familiar when I heard it. Now I'm certain that it is. Queasy! My old friend Queasy, after all this time!~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 25
END

IF ~~ THEN BEGIN 82 // from:
  SAY #38882 /* ~It was well earned. Have you ever told <CHARNAME> how you acquired it? No? Well, let me start by saying that the cockatrice is a rather pernicious breed of chicken, and not one that takes lightly to being plucked. And I suppose I should mention that you actually can make a pretty decent glue out of a bit of spit and goblin droppings, no matter what the old wives tell you. Well, anyway, Queasy here decides to—~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 26
END

IF ~~ THEN BEGIN 83 // from:
  SAY #38884 /* ~Well now, I suppose you're right, Queasy. They got the stain out anyway, so no permanent damage was done. So... joined the circus, eh? Good choice. Thought of it myself.~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 27
END

IF ~~ THEN BEGIN 84 // from:
  SAY #38887 /* ~Wouldn't think of it. Although I've always had a fondness for those spinning wheels of yours... I've always thought they would make excellent dinner tables. Especially when Aunt Beatrice is cooking... just give 'er a spin and hope for the best, if you take my meaning.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #38962 /* ~You know, I always wanted a sphere like that. Something the gods might play marbles with... it would make a good conversation piece sitting out on the lawn. Hmmm. I would hate it if it rolled over the house, though...~ */
  IF ~~ THEN EXTERN ~NALIAJ~ 143
END

IF ~~ THEN BEGIN 86 // from:
  SAY #39378 /* ~Isn't there always? My cousin Urnist... bad speller, by the way, always been the curse of that particular branch of the family... once owned a tavern that opened up into a pancake factory in the back. Best pancakes this side of the vales, too, and you wouldn't know it if you drank there. Mind you, after the Pancake Famine, things were never quite the same at the factory again. I'll have to tell you about it sometime.~ */
  IF ~~ THEN EXTERN ~LEHTIN~ 10
END

IF ~~ THEN BEGIN 87 // from:
  SAY #39405 /* ~Ah, the smell of adventure is nigh! Or is that the ale spilled on the floor? You know, come to think of it, there's not too much difference between the two. One usually follows the other, if you take my meaning. Unless you happen to be Uncle Prebar, who took a milk bath both before and after an adventure. Ahhhh, poor Uncle Prebar. If it weren't for those baths, he might still be with us.~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Nalia")
~ THEN REPLY #39418 /* ~Why? What's wrong with milk baths?~ */ GOTO 88
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 46
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 147
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #39406 /* ~Well, nothing... unless you happen to be attempting to sneak through a dungeon filled with hobgoblins and you have a few dozen cats noisily following the smell of sour milk and meowing all the time. Tsk. Well, at least the smell prevented them from eating him. The hobgoblins, I mean, not the cats.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 51
END

IF ~~ THEN BEGIN 89 // from:
  SAY #40235 /* ~Oh, if I had a coat to give you, I certainly would. I had a coat checker in the family once... Cousin Jowen, although he did that only as a sideline. Brewing turnips was he primary occupation, and checking coats was just something he did to prove to the tax people that he earned his money legally. Said they were all tips, you see.~ */
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #40236 /* ~All the other coat checkers were all envious of Cousin Jowen's tips. They used to harass him and try to steal his coats and get him into trouble. Cousin Jowen was too smart for them, though. You know what it takes to brew turnips properly? A good, solid mind, that's what. And some very strong rabbits, too, but that's neither here nor there. In fact—~ */
  IF ~~ THEN EXTERN ~ARNGRL01~ 15
END

IF ~~ THEN BEGIN 91 // from:
  SAY #40238 /* ~Outbursts like that won't get you any tips. I'll have to write Cousin Jowen and ask him to send you some pointers.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #47904 /* ~Turnips!~ */
  IF ~~ THEN EXTERN ~ELEARB02~ 9
END

IF ~~ THEN BEGIN 93 // from:
  SAY #47906 /* ~Turnips! I see fine soil that could keep a man in tubers for life. Of course, I guess it's more for <CHARNAME> to say. ~ */
  IF ~~ THEN EXTERN ~ELEARB02~ 10
END

IF ~~ THEN BEGIN 94 // from:
  SAY #48516 /* ~Ah, yes, the old puzzle-box trick. Ma Jensen used to hide the keys to the breadbox the same way, not that it ever stopped us. "Jan," she used to say, "one of these days, you're going to have one too many sweetbreads!" I never did, although my cousin Arfie once did that day he exploded. Sad story, that.~ */
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #48517 /* ~We should probably go to this Quallo fellow and ask him about this riddle. Someone went to a lot of trouble to secure something away here, and my whiskers are itching to find out what!~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 38
END

IF ~~ THEN BEGIN 96 // from:
  SAY #48522 /* ~Odd. I would have thought you'd be right at home amongst the slime, Viconia. I thought I even saw a cousin of yours back there a ways.~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 39
END

IF ~~ THEN BEGIN 97 // from:
  SAY #48527 /* ~Are you sure it's your rodent, Minsc? I once felt excitement before impending doom fell upon me, and it turned out later to be a mild case of indigestion. You should get that checked, you know... I was laid out for weeks in bed, eating nothing but ice cream and porridge, and we wouldn't want you turning into a chubby berserker, now would we?~ */
  IF ~~ THEN EXTERN ~MINSCJ~ 97
END

IF ~~ THEN BEGIN 98 // from:
  SAY #48589 /* ~Ah, yes, off to rescue the kidnapped victim to restore one's good name! Sounds like a tale my Aunt Bertha once told me... although it was her turnip pie recipe that was being held hostage. Still, turnips are a serious business where I come from. You should have seen Aunt Bertha ride in, armed to the teeth, battling Aunt Binny for the right to her pie. The entire village almost went to war over that one... worst crisis since the griffon famine in '22. Ahhh, nostalgia...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #48605 /* ~Well, there goes the wizard with a body in tow. Not the sort of thing you see every day unless you happen to be living with a necromancer. I did once, when I was working for Golodon. He used to come into the tower every second day with a body over his shoulder. I would look at him all suspicious-like and ask him where he found it, and he would just shrug and say vaguely, "Oh... around."~ */
  IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #48606 /* ~It took me a while, but eventually I decided Golodon wasn't being entirely aboveboard with me on the body issue. Since then, I've never trusted a wizard with more arms and legs than he was born with... unless he's been polymorphed, of course, but even then it's usually wisest to keep your distance.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #48611 /* ~Oho! They want to use your blood to get inside the planar sphere, do they? Not that I would mind their removing it. Takes up quite the bit of the scenery from my home, like a giant marble just fell out of nowhere. Funny they didn't mention that, but then every wizard I've ever known has had a terrible memory. Golodon used to forget to put on pants at least once a week, and his familiar, Binky, would collapse into hysterics every single time.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~VALYGAR~ 9
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 109
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 127
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 100
END

IF ~~ THEN BEGIN 102 // from:
  SAY #48633 /* ~Ooo, there's none so desirable a trinket as one you cannot see. Are you sure I can't just have a peek or two?~ */
  IF ~~ THEN EXTERN ~ARLED~ 5
END

IF ~~ THEN BEGIN 103 // from:
  SAY #48654 /* ~Well now, that's quite a trick. Oh... you mean you didn't intend to give your gold to the beggar anyway, <CHARNAME>? That's odd... the way you presented your pocket, I could have sworn that's what you had intended. Ah well.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #48672 /* ~Well, there's a lesson in there somewhere, I suppose. Never whip a sick ogre? Never tell someone twice your size to pick something up? Never boss someone around unless you can run faster than they can? Aha! If you're going to hire ogres, give them sick days and benefits or they will kill you. Yes... that about sums it up, I think.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 105 // from:
  SAY #48703 /* ~I don't even know your husband, ma'am. Or do I? Was he that short fellow who bought the case of turnip beer from me about two weeks back? If that's the case, then you'll find him two blocks west singing "Fair Evermeet" in a poor baritone and falling down constantly... but you didn't hear that from me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from:
  SAY #48729 /* ~Now, now. Did you go and oil it every morning like I told you to?~ */
  IF ~~ THEN EXTERN ~BMTOWN2~ 8
END

IF ~~ THEN BEGIN 107 // from:
  SAY #48730 /* ~Then what are you blaming ME for? Hair restoration is a very delicate process, you know. Go back and try oiling it, and after another week, if it still doesn't work... why, then you'll be more than entitled to a full refund!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #48766 /* ~Your mother wouldn't happen to be married to Uncle Scratchy, would she? Sounds about the right temperament...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY #48822 /* ~It's always a sad thing to disappoint a good customer. Aunty Kylie can still sell you some fine Jansen turnips, though, never fear... much as I hate passing on a customer to someone else. Oooo, this adventuring had better be worth it!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #48890 /* ~Ahhhh, I can see the bards singing it now: "The Quest for the Gong"! The life of a drunkard lies in the balance as <CHARNAME> and <PRO_HISHER> band of merry adventurers strive to retrieve fenced stolen musical goods from the depths of the sewers! The passion! The excitement! It brings a tear to my eye. *sniff!* Not since Uncle Gerhardt went on a four-day turnip-beer bender and mistook Uncle Scratchy for a griffon was I ever part of such a grandiose story.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #49261 /* ~Gaelan Bayle? Of the Hottentrot Bayles? Hm. Maybe not. I heard mention of this one once, <CHARNAME>. But the gnome who spoke of him also said in the same breath that Elminster had a personal collection of over a hundred monkeys, so who knows what you can believe these days?~ */
  IF ~~ THEN EXTERN ~GAELAN~ 8
END

IF ~~ THEN BEGIN 112 // from:
  SAY #49299 /* ~Oh, it's the old the-bird-is-really-the-assassin trick, is it? I should have seen that one coming. Cousin Belar once pulled that on my great Uncle Tookar, although to be fair he didn't actually mean to kill anyone. He turned from a hummingbird into his original form just as a practical joke on my uncle's birthday... and startled the old gnome so much he went and had a heart attack on the spot. The elders were so upset they turned Belar into a hummingbird for good. He liked it, though, and flew off (that branch of the family was always a bit odd in the head, if you catch my meaning)... only to get eaten by a griffon a week later, I hear. Now, that's justice if there ever was, I suppose.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #49377 /* ~You want to steal into the temple of Talos, do you? Ouch, now that's no light task. I once knew a comrade who tried to lift a thing or two from under the nose of the Talassans... and I speak of him in the past tense, naturally, as the Talassans are overfond of lightning and my friend mistook his boots of grounding for his steel-toe boots that evening with predictable results. Still, it sounds like a lark. You wouldn't happen to be resistant to electricity, would you?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #49416 /* ~Well, I've heard schemes to make your head spin, my boy. Or my Aunt Patty's head spin, anyway. Uncle Rufus worked long and hard on that one, let me tell you, and Patty's neck was sore for weeks. She never really forgave him, but such is the nature of schemes, or so they say.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PACE~ 6
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 68
END

IF ~~ THEN BEGIN 115 // from:
  SAY #49507 /* ~Now here's the kind of loyalty that most families can only dream about. I should plan the tell-all book now... "The Right Hand that Mae'Var Never Wanted." Ah, yes, thieves everywhere will be beaming with pride!~ */
  IF ~~ THEN EXTERN ~EDWIN~ 27
END

IF ~~ THEN BEGIN 116 // from:
  SAY #49550 /* ~Heh heh... especially not with that extra guild out there on the streets, eh, Bloodscalp? Come to think of it, that's quite the moniker you got yourself there. How did it come about? Severe dandruff problems? If that's the case, Ma Jansen has the most wonderful turnip salve that will clear that right up, quick as you please. You might want to think about it... people might be tempted to give you a nicer nickname if you had a pleasant head of hair.~ */
  IF ~~ THEN EXTERN ~RENAL~ 58
END

IF ~~ THEN BEGIN 117 // from:
  SAY #49628 /* ~Tsk. You sure are a charmer with the ladies there, Eddie, my boy. Have them throwing themselves at your feet, eh? Wonders of wonders!~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 75
END

IF ~~ THEN BEGIN 118 // from:
  SAY #49813 /* ~Well, that wasn't so bad, now. After all that, I had thought we were going to be sent to steal candies from young children and step on the toes of old grandmothers. To think I nearly peed myself for absolutely no reason...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 119 // from:
  SAY #49853 /* ~Kill the big man, eh? Ahhh, this takes me back. Uncle Scratchy led the assault on King Goobar's tower himself, you know. Of course, Goobar wasn't really a king. And calling a horde of angry old gnomes bitter about the pipe shortage and muttering to themselves with torches an assault is something of a stretch too, but you get the idea. If it hadn't been for Goobar's quick thinking, things could really have gotten messy. Still, there were bubbles everywhere for weeks... so I suppose it was messy enough anyway.~ */
  IF ~~ THEN EXTERN ~BODHI~ 73
END

IF ~~ THEN BEGIN 120 // from:
  SAY #49874 /* ~You're just sending him to the guard? Obviously, you haven't spent too much time in the city. The garrison might be just as likely to rebury the man to avoid having to write up a report about it. It happened to my cousin Biffle once, you know. Some errant mage had cast an earthquake spell and opened up a chasm that poor Biffle had fallen into. A terrible sight to behold, especially since his entire tray of Aunt Gertie's turnip muffins flew into the chasm with him. She had been hoping to win the local muffin-baking contest, and we were all bereaved for weeks that Gertie hadn't gotten her due. She'd been baking for weeks, you know. Why she'd given the tray to Biffle no one could ever figure out... he was always suffering from one kind of bad luck or another, you'd have thought he'd offended the gods. Tsk. Hmmm... where was I?~ */
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 84
  IF ~  !IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 95
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Aerie")
~ THEN REPLY #49893 /* ~You were originally talking about the garrison, I think.~ */ GOTO 121
END

IF ~~ THEN BEGIN 121 // from: 120.2
  SAY #49881 /* ~Right you are! Well, the guards were all standing around, wondering how to write up the disaster when Biffle miraculously crawled to the surface. Gasping and coughing, shivering with exhaustion—it was quite a sight, I'm told. The guards, however, had already written up Biffle as a casualty... and rather than spend all the time rewriting the report, they kicked him back into the chasm.~ */
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 159
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 96
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
~ THEN REPLY #49895 /* ~Oh, come on... they didn't, I'm sure.~ */ GOTO 122
END

IF ~~ THEN BEGIN 122 // from: 121.2
  SAY #49885 /* ~Well... perhaps not all the way back in. Poor Biffle bounced a few times until his suspenders caught on an outcropping of rock. He hung there for a few days, swinging in the wind, until somebody heard his cries. He was never quite the same again, poor cousin Biffle. Eventually, a griffon ate him. It was for the best, really.~ */
  IF ~  !IsValidForPartyDialogue("Valygar")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN REPLY #49898 /* ~Well, of course it was. *sigh*~ */ EXTERN ~VALYGARJ~ 63
END

IF ~~ THEN BEGIN 123 // from:
  SAY #49954 /* ~You know, this almost reminds me of the time when Uncle Scratchy got on Cyric's bad side. You have no idea the kind of snit your average evil god can get into...~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Aerie")
~ THEN REPLY #49959 /* ~We probably don't want to anger a Talassan priest, Jan... best to keep your story to yourself.~ */ GOTO 124
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 227
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 99
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #49958 /* ~You're telling me! One angry god and what do you get? The Great Underwear Shortage, that's what! You certainly wouldn't expect someone like Tyr to have that kind of wicked sense of humor, that's for sure.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 125 // from:
  SAY #49994 /* ~No need to be bashful about it, good woman. Not everyone can maintain a perfect complexion in this climate. Why, just the other day a man was rude enough to walk up to Cousin Kylie and ask her if her face exploded. She was shocked, of course, but it was really her fault in the end for not using the turnip lotion like Ma Jansen had told her to. Kylie had found out that the lotion tasted great on the turnip muffins she was selling, though... people were buying them in droves! Turned out, of course, that Ma Jansen always slipped a little ticojen in the lotion, you know, but she never intended for anyone to EAT it. Now THAT took a long time to sort out with the garrison.~ */
  IF ~~ THEN EXTERN ~POSTUL5~ 9
END

IF ~~ THEN BEGIN 126 // from:
  SAY #50003 /* ~Ah, yes, the little folk. This reminds me of a story, wouldn't you know...~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("HaerDalis")
~ THEN REPLY #50018 /* ~What story would that be, Jan?~ */ GOTO 128
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("HaerDalis")
~ THEN REPLY #50019 /* ~Not now. I've no interest in your stories, gnome.~ */ GOTO 127
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 154
  IF ~  !IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 85
END

IF ~~ THEN BEGIN 127 // from: 126.1
  SAY #50010 /* ~Now, there's no need to be rude. It was just a simple story of furry feet and the foibles of being a teenaged gnome. Ah, youth! I still remember her laughter as she ate turnip cake after turnip cake... quite an appetite, as I recall.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 128 // from: 126.0
  SAY #50012 /* ~Oh, it's not much of a story, I suppose. Just a tale from my youth about an infatuation with a young halfling lass that worked in the local bakery. She wasn't a baker, mind you. She was a food-taster and a champion eater at all the festivals. How she used to stuff those pound cakes into her mouth. What an appetite! For fun, we used to roll her downhill and watch those furry feet spin about in every direction. What a thrilling laugh, she had! Hmmm... or were they screams of fear? You know, after the first century or so, your youth isn't quite what you remember it to be.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 129 // from:
  SAY #50032 /* ~So... what you're saying is that he's not too different from yourself, eh, Ano?~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 234
END

IF ~~ THEN BEGIN 130 // from:
  SAY #50085 /* ~So why can't the nasty beholder go and get this rod on his own? I'll tell you why. It's likely trapped three ways from Sunday, that's what. Good thing you've got me along, <CHARNAME>. Smart thinking on your part. You'll go far, you know. Farther, maybe, than cousin Bifflechips... although he was flung by a catapult, so I suppose it doesn't really count.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 131 // from:
  SAY #50129 /* ~Well. That's all very interesting. Much more so than the last time I met a god.~ */
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 141
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 156
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 88
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("HaerDalis")
~ THEN REPLY #50143 /* ~The "last time" you met a god?~ */ GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.3
  SAY #50141 /* ~It was Oghma, the god of knowledge. Although I can't say I really met him, I suppose, as he was drunk and fast asleep in cousin Roffer's back lawn. Or perhaps I should say ON cousin Roffer's back lawn... he was a giant of an avatar, sprawled out and snoring. I wonder how you get a god drunk?~ */
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 243
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 171
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 157
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
~ THEN REPLY #50148 /* ~I truly doubt that happened, Jan.~ */ GOTO 133
END

IF ~~ THEN BEGIN 133 // from: 132.3
  SAY #50147 /* ~But it's true! Someone had drawn a mustache on him and yanked his underwear clear up to his shoulder blades. No idea who, but all I can think is that it must have been one hell of a party. But if you won't believe me... well, as much as it hurts poor old Jan I suppose there's nothing I can do about it. *sniff* Poor Jan Jansen; he's such a liar. (Boo hoo!)~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 158
  IF ~  !IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 107
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 106
END

IF ~~ THEN BEGIN 134 // from:
  SAY #50164 /* ~Hmph. "Not a threat." Your family moves to the city to get away from the griffons and then you watch Grandma Jansen get carried off by one, and what do they say? "Not a threat." Thpppppfffft!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 135 // from:
  SAY #50182 /* ~I'm just fine, Mr. Government Clerk. You know, Ma Jansen's been having quite the time with the local constabulary, saying she can't sell turnips where she likes. Got a form for that? *wink, wink*~ */
  IF ~~ THEN EXTERN ~CLERK01~ 8
END

IF ~~ THEN BEGIN 136 // from:
  SAY #50186 /* ~Wonderful! Sorry about the gold there, <CHARNAME>... consider it a loan. One has to grease the wheels here if you're going to get anything done, you know.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 173
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 260
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 85
END

IF ~~ THEN BEGIN 137 // from:
  SAY #50242 /* ~Shiver me timbers! Did Viconia just do something nice? Quick, someone get me soap... I need to wash my drawers!~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 79
END

IF ~~ THEN BEGIN 138 // from:
  SAY #50251 /* ~Mmm-hmm. Very convincing, Vicky. Next thing you know, she'll be administering to the sick and setting up a program for disenchanted prostitutes. "Oh, dear," we'll moan, "whatever happened to our wicked little Vicky?" ...ehhh... or maybe not.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #50306 /* ~And he hasn't changed much since you knew him, either. He still whines all the time, pounds his fists and feet when he has a tantrum, and burps after every meal. Feeds himself, though. A good lad.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 245
END

IF ~~ THEN BEGIN 140 // from:
  SAY #50504 /* ~I've heard of whom you speak. Good-looking fellow, charming and intelligent. Also very industrious and the apple of his mother's eye. Why do you ask?~ */
  IF ~~ THEN EXTERN ~PEHLLUS~ 13
END

IF ~~ THEN BEGIN 141 // from:
  SAY #50509 /* ~Well, exploring is such a dangerous profession. Perhaps his ship was sunk in a great storm on the way to Maztica. Ah, yes, I can see him valiantly manning the wheel, peering into the depths of the maelstrom, while the rest of the crew leaps from the vessel in terror. Tch. What a waste of good gold such a tragedy would be, besides taking from us such a respected gnome. Me, I get seasick.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #50675 /* ~Oh my, this reminds me of the last Jansen family reunion—being the *last* one for reasons that I'm sure will become clear—back on the eve of the Year of Shadows, when gods walked and magic went wild. Cousin Bungle spiked the turnip tea at the end of a particularly festive jig, and half the grandparents got soused enough to storm a nearby ogre camp. You haven't seen chaos until you've been on the receiving end of twenty drunken geriatric goblinstickers, all demanding gems and whatever ale might be on hand, I tell you.~ */
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY #50676 /* ~Well, my point is that we had better give these mad mages some reason to stay at our party, or we're going to be in trouble up to our earlobes.~ */
  IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutSceneEx("Cut41m",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #51481 /* ~But... what harm have the deep gnomes done? They are harmless, really, just miners and other types of simple folk. Perhaps a bit dour, and I never heard of one of them ever liking a turnip, but not too bad overall. Is all this really necessary?~ */
  IF ~~ THEN EXTERN ~UDPHAE01~ 62
END

IF ~~ THEN BEGIN 145 // from:
  SAY #52605 /* ~Hmm. Don't stow thrones in grass houses?~ */
  IF ~~ THEN EXTERN ~UDDROW07~ 11
END

IF ~~ THEN BEGIN 146 // from:
  SAY #55192 /* ~Whew! For a few minutes there, I thought I was a goner. My life flashed before my eyes, and it didn't even stop at the good parts. Ah well. Anyone want the wizard's boots? I want his boots. What about his hat? Does he have a pointy hat?~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 147 // from:
  SAY #55213 /* ~Whoa! This place looks just like... It reminds me of... This is just like that time I... hm. I don't think anything like this has ever happened to me before...~ [JANJAN73] */
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 117
  IF ~  !IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 90
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 450
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 100
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 166
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 258
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 100
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 189
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 268
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 95
  IF ~  IsValidForPartyDialogue("LCCORWIN")
!Global("CorwinHell","GLOBAL",1)
~ THEN DO ~SetGlobal("CorwinHell","GLOBAL",1)
~ EXTERN ~LCCORWIJ~ 40
END

IF ~~ THEN BEGIN 148 // from:
  SAY #55292 /* ~Hey, now... you could open the chest up for us, spiffy-eyes. There isn't anything that says you couldn't, right? Then we could take what's in it! I'm brilliant! Brilliant!~ */
  IF ~~ THEN EXTERN ~SAHBEH01~ 35
END

IF ~~ THEN BEGIN 149 // from:
  SAY #55652 /* ~There is no need for explaining when you are dealing with a place like this. Dank in spirit, with nary a smile to be found around. Aunt Tilly's turnip cellar offers more in the way of social interactions.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 7
END

IF ~~ THEN BEGIN 150 // from:
  SAY #55665 /* ~Yes, that was quite the voyage, wasn't it? All the swaying to and fro, and then there was that storm two days ago and the close brush with the dragon turtle there. The food reminded me of the time Ma Jansen went on her trip to Smurtlepuss and Uncle Scratchy did all the cooking too. Ahhhh, smell the air! Feel the invigoration!~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Korgan")
Global("ThiefGroup","GLOBAL",2)
~ THEN EXTERN ~PPBODHI3~ 12
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Korgan")
Global("ThiefGroup","GLOBAL",1)
~ THEN EXTERN ~PPSIME~ 1
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 92
  IF ~  !IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 117
END

IF ~~ THEN BEGIN 151 // from:
  SAY #55719 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 152 // from:
  SAY #55749 /* ~All bluster and balderdash, ain't ya? Uncle Chester Bellowsbreath was like that too, talking himself so big that you'd swear he was ten feet tall, which was not too far off considering he had a strange disorder stemming from an obscenity hurled at a passing wizard one drunken eve in Waterdeep. Stomp and pomp all ye wish, but it would do you well to take the simple advice of never telling Khelben Blackstaff to "put a shine on that thing and stop being so darned pompous with yer dark-cornered mysteriosity," and if you do, don't punctuate it with a rotten turnip at high velocity.~ */
  IF ~~ THEN GOTO 154
END

IF ~~ THEN BEGIN 153 // from:
  SAY #55750 /* ~You don't say? You know, this reminds me of Golodon's kobold. Nasty thing named Justarius, as I recall... wielded a mean toothpick of detonation. Waved it about from behind Golodon's robes, biting and snarling and convinced high and low that he was the toughest kobold this side of the Inner Sea. Then that one time when Golodon met up with a blue dragon... I don't think it was hunting him, really, it was just in the area looking up old friends... the wizard turned and ran, leaving poor Justarius there, shaking like a little leaf. He wasn't so confident standing there next to the big blue beast, if you take my meaning.~ */
  IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 154 // from: 152.0
  SAY #55751 /* ~Of course, I'm not really helping matters going on like this. You were saying something or other about your greatness?~ */
  IF ~  !IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~PPTIAX~ 13
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 107
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~KORGANJ~ 126
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 161
END

IF ~~ THEN BEGIN 155 // from: 153.0
  SAY #55754 /* ~Well, let's just say the blue dragon used his toothpick to, ah... clean his teeth. Kobolds can be so messy, I understand. Personally I'd prefer a good turnip stew anytime. You were, uh, saying something about good old Irenicus's plans there, Sammy?~ */
  IF ~~ THEN EXTERN ~PPSAEM2~ 23
END

IF ~~ THEN BEGIN 156 // from:
  SAY #55765 /* ~Irenicus being some kind of god "can't be good"? You aren't understating that a bit, are you, Sammy? Gosh... when I become a god, I want you on my side. You'll keep me grounded and brushing my teeth.~ */
  IF ~~ THEN EXTERN ~PPSAEM2~ 12
END

IF ~~ THEN BEGIN 157 // from:
  SAY #55773 /* ~I know of this man, but from where? I cannot recall.~ */
  IF ~  !IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 107
  IF ~  !IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 164
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~KORGANJ~ 129
END

IF ~~ THEN BEGIN 158 // from:
  SAY #55775 /* ~Hrmph! ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #55796 /* ~Oh sure, we're his best friends now that we're going to go and steal him a brand new ship and everything. And once we gotten it for him, you think he'll still be so nice? Reminds me of my cousin Bureaugarde. The most selfish gnome you've ever seen, he wouldn't give you a spare turnip for anything. Well, okay, there was that one time he gave a turnip to Uncle Scratchy, but Uncle Scratchy had him held over a vat of boiling—~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Viconia")
~ THEN REPLY #55803 /* ~All right, Jan, I think that's enough. I get the point.~ */ GOTO 160
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 130
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 195
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 132
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #55802 /* ~Well, fine. I just wanted to point out that Bureaugarde was eaten by a griffon that was terrorizing the hillside, and he gave the beast fatal indigestion. So sometimes, even the most selfish of us can still give.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 161 // from:
  SAY #55822 /* ~Wow. Does this happen to you often, <CHARNAME>? I get the feeling that you could fall off a mountain, tumble down a hill and through a hole into a pit and then land smack in a nest of fire giants and they would suddenly hail you as the Second Coming of Surtr. I should take you sometime to the wilds of Chult... it could be quite profitable, you never know.~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 13
END

IF ~~ THEN BEGIN 162 // from:
  SAY #55826 /* ~Well, that's not very nice. You don't see us going on and on about the rather funky smell in this place, do you? Or the way your eyes seem to be bugged out, like someone just kicked you in the stomach? NooOOoo, I would never be so rude.~ */
  IF ~~ THEN EXTERN ~SAHBAR03~ 0
END

IF ~~ THEN BEGIN 163 // from:
  SAY #55849 /* ~I've heard this tune before. It's right up there on the oldies-but-goodies list along with "Fail and I Kill You." Or maybe, in this case, it's that variant sung by the infamous ogre bard Chumba-khan, "Fail and I Eat You." Of course, we could always just leave...~ */
  IF ~~ THEN EXTERN ~SAHKNG01~ 37
END

IF ~~ THEN BEGIN 164 // from:
  SAY #55937 /* ~Damn you, <CHARNAME>, there... there's no reason to kill these gnomes! They've hurt no one! Damn you for making me do this!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 165 // from:
  SAY #55961 /* ~Oooh, mages are the best for hidden treasures. Back home, you couldn't toss a turnip without unearthing some old wizard's stash of goodies. Occasionally, the wiz would still be in it too.~ */
  IF ~~ THEN EXTERN ~UDDUER02~ 13
END

IF ~~ THEN BEGIN 166 // from:
  SAY #55993 /* ~So we're going to be fighting side by side with the famous Drizzt Do'Urden, hey? Well, if a book gets written about us, then I hope they remember who the *real* heroes are here. I'd really hate to see myself portrayed as some fuzzy-wuzzy sidekick to <CHARNAME> who gets killed off in the first encounter, you know.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 475
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 206
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 150
END

IF ~~ THEN BEGIN 167 // from:
  SAY #56045 /* ~Oh, I don't know. Sometimes flinging mud about can be a liberating experience. If that weren't the case, we wouldn't have politicians. You should try it yourself sometime, my boy. Spread some dirt on those lily-white cheeks of yours. I guarantee within minutes you'll be frolicking and giggling like a schoolgirl.~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 210
END

IF ~~ THEN BEGIN 168 // from:
  SAY #56108 /* ~Hmph. Some villains just refuse to die. Kill them once, kill them twice... it's like some bad play. Well, here's hoping for a decent ending...~ [JANJAN72] */
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
END

IF ~~ THEN BEGIN 169 // from:
  SAY #56412 /* ~Without your help, our task will be easier said than done, and I know how easy it is to say things.~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 46
END

IF ~~ THEN BEGIN 170 // from:
  SAY #56432 /* ~Errr... one moment, <CHARNAME>. Maybe it's just me, but I see illusions all over the place here. Especially on the old woman there. Any idea how an old woman would have a tiger head, by chance?~ */
  IF ~~ THEN EXTERN ~TRRAK01~ 3
END

IF ~~ THEN BEGIN 171 // from:
  SAY #56442 /* ~Whooo... all this talk of Umar brings back memories, let me tell you. My great-great-cousin One-knee was one of the adventurers that hunted the Great Witch of the Hills a long time ago. Said she had a fondness for little children and that her house was made out of chocolate candy, of all things. Personally, a house made of turnips sounds much more appealing, but One-knee stated decisively that the house was delicious nevertheless. According to his stories, the witch was dead... something about getting shoved in an oven... but then Gramma Jansen said that One-Knee was pretty delusional, so who knows?~ */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~UHMAY01~ 19
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 170
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 228
END

IF ~~ THEN BEGIN 172 // from:
  SAY #56450 /* ~Hmm. This man's a zombie, for sure... just without all the inconvenience of rotting flesh and oozing brains. Boy, making someone into a servant like this is a master stroke! No complaints, no union meetings, no requests for a raise, all the benefits of the undead without the smell!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 173 // from:
  SAY #56529 /* ~Absolutely! Round up all the little ingrates who haven't bled to death and dock their pay for their laziness! Finding good servants is bad enough—a noble lady shouldn't have to put up with laggards as well! You are a brave, brave woman, my dearie.~ */
  IF ~~ THEN EXTERN ~DELCIA~ 12
END

IF ~~ THEN BEGIN 174 // from:
  SAY #56909 /* ~As much as I will ramble on at the drop of a hat, I would think it wiser to find this Imoen and Irenicus with all haste. It's like my uncle Gummo use to say, "Blah blah blah," he'd say, and we'd be right there with our "Uncle Gummo, we've got things to do," and he'd be right back with the "But just one more story. Just one more, blah blah." ~ */
  IF ~~ THEN GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #56912 /* ~Well, my point is that we should stop talking and fetching and try and find Imoen fast.~ */
  IF ~~ THEN EXTERN ~ARAN~ 54
END

IF ~~ THEN BEGIN 176 // from:
  SAY #57668 /* ~The look on your face reminds me of a cousin I had on the coast by the name of Milton Bottlesworth, who used to make a "Shining Sea Ale" that would set your riptide to undertow, if you know what I mean. One night, he made a particularly strong batch of brew that, for reasons that will become clear in a moment, he was destined to call "Old One-Eye, '43." I tell you, he got so involved in the tasting that he fell into the keg up to his ankles the wrong way around and had to breathe through the spigot for three hours lest he drown in a watery tomb of his own making. Helpful Aunt Tildeberry came in later for a late night snifter and tried to unclog the spout with a hairpin, and you can imagine the fuss that emerged from that mess. An inch or two off target and the mixture would have been the much less ominous "Poke in the Nose, '43," but that's neither here nor there.~ */
  IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 177 // from: 176.0
  SAY #57670 /* ~So anyway, what I mean to say is that you look like you've spent a night upside down in a barrel of hooch thinking at least it's better than a poke in the eye with a sharp stick, only to have life cruelly prove you right. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 178 // from:
  SAY #57721 /* ~By the gods of turnip growers everywhere, it's just like my Aunt Agnes used to tell me to get me to sleep at night. "Close your eyes," she'd say, "or the gods'll come and box yer ears!" Well, perhaps it wasn't the lullaby that your average child would have preferred, but old Agnes was funny that way.~ */
  IF ~~ THEN GOTO 179
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY #57722 /* ~<CHARNAME>, I have to be serious a moment. That weren't good, no <PRO_SIRMAAM>. Manifesting dead gods is a sure sign of trouble, as sure as I know how to read.~ */
  IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 180 // from: 179.0
  SAY #57723 /* ~I've heard of people losing their minds even glimpsing an avatar. You channeling power like that? Well, it just isn't good.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 181 // from:
  SAY #58228 /* ~You've done me a few good turns here and there, <CHARNAME>. And besides... leaving now would be like turning your back on a three-copper-a-barrel turnip deal. It just isn't done. I would become a Jansen of infamy and ill-repute, never again allowed to involve myself in turnip merchandise anywhere. Tsk. Even Golodon the Unmanned would consider himself superior to me, and I've seen the man's underwear.~ */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 51
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
END

IF ~~ THEN BEGIN 182 // from:
  SAY #58752 /* ~Contrary to popular perception, the recipe for Jansen Family Fertilizer, which aerates while killing the East Tethyrian turnip-eating digbeetle, was not given freely to the public but rather smuggled out for profit by a third cousin we USED to have. Traitors in the family are the worst kind.~ */
  IF ~  !IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~YOSHJ~ 114
  IF ~  IsValidForPartyDialogue("VALYGAR")
~ THEN EXTERN ~VALYGARJ~ 119
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
~ THEN EXTERN ~HAERDAJ~ 150
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
~ THEN EXTERN ~CERNDJ~ 137
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
~ THEN EXTERN ~MINSCJ~ 211
END

IF ~~ THEN BEGIN 183 // from:
  SAY #61028 /* ~I'll choose to take that as a compliment, my dear cousin.~ */
  IF ~~ THEN EXTERN ~KYLIE1~ 22
END

IF ~~ THEN BEGIN 184 // from:
  SAY #61030 /* ~Kylie, I'm positively hurt by your insinuations.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 185 // from:
  SAY #70526 /* ~Helm dealt with it personally, eh? That's surprising, since the last time Helm dealt with anything personally was waaay back when he was forced to make himself a sandwich. Those gods, I tell you, they expect to be waited on hand and foot. Heaven forbid the butler take a break. But anyway... this story has more to do with how the Anauroch Desert was formed than what you're talking about, so we'll put it aside for now.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 20
END

IF ~~ THEN BEGIN 186 // from:
  SAY #70422 /* ~See that, <CHARNAME>? You just can't reason with the gith. Must be something to do with those spelljammer ships they ride around in—gives them extraplanar cabin fever. This reminds me of the time I was selling astral turnips on the outer planes. Opened a little shop with a garden in the back.~ */
  IF ~~ THEN GOTO 187
END

IF ~~ THEN BEGIN 187 // from: 186.0
  SAY #70423 /* ~Astral turnips are very tasty, let me tell you—but not too filling. My crop could barely keep up with the demand. One morning, I was sitting down to a nice turnip porridge breakfast when I was interrupted by a herd of githyanki barging through my door. Seems they had an interesting offer for me...~ */
  IF ~~ THEN REPLY #70427 /* ~Now's not the best time, Jan. I think we've got a fight on our hands.~ */ GOTO 188
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 226
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 243
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 125
END

IF ~~ THEN BEGIN 188 // from: 187.0
  SAY #70428 /* ~Ah, true enough I suppose. Remind to finish this story later... truly one of my best.~ */
  IF ~~ THEN EXTERN ~GORGIT~ 3
END

IF ~~ THEN BEGIN 189 // from:
  SAY #78245 /* ~I knew a man who was his own brother once. He didn't want to leave his mother's belly—they had to pull him out twice!~ */
  IF ~~ THEN EXTERN ~OHRHHELM~ 66
END

IF ~~ THEN BEGIN 190 // from:
  SAY #80131 /* ~Hey! I object to that uncalled-for attack. That's just like you, smearing an entire people with a single brush. Now, the largest paintbrush I ever saw was wielded by my Aunt Jenna. She painted her entire house in three minutes flat, and gave a fresh coat to the two on either side of it to boot. Her neighbors were less than thrilled. It might not have been so bad if she hadn't covered the windows, doors, lawn, and walks. Or chosen a color other than mauve.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 191 // from:
  SAY #74923 /* ~In my experience, most people don't tick. Most only drip, and even that's sporadic. Actually, now that I think of it, I did know an elf that ticked once. Great guy, would've gone far if not for his speech impediment.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 353
END

IF ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 192 // from:
  SAY #75714 /* ~You know what this reminds me of?~ */
  IF ~~ THEN REPLY #75715 /* ~No, and I'm pretty sure I don't want to.~ */ GOTO 193
  IF ~  !IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
!IsValidForPartyDialogue("neera")
!IsValidForPartyDialogue("hexxat")
~ THEN REPLY #75716 /* ~Can this wait, Jan? I'm trying not to plummet to my death here.~ */ DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  !IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
!IsValidForPartyDialogue("neera")
IsValidForPartyDialogue("hexxat")
~ THEN REPLY #75716 /* ~Can this wait, Jan? I'm trying not to plummet to my death here.~ */ EXTERN ~HEXXATJ~ 2
  IF ~  !IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
!IsValidForPartyDialogue("dorn")
IsValidForPartyDialogue("neera")
~ THEN REPLY #75716 /* ~Can this wait, Jan? I'm trying not to plummet to my death here.~ */ EXTERN ~NEERAJ~ 15
  IF ~  !IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
!IsValidForPartyDialogue("viconia")
IsValidForPartyDialogue("dorn")
~ THEN REPLY #75716 /* ~Can this wait, Jan? I'm trying not to plummet to my death here.~ */ EXTERN ~DORNJ~ 502
  IF ~  !IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
!IsValidForPartyDialogue("valygar")
IsValidForPartyDialogue("viconia")
~ THEN REPLY #75716 /* ~Can this wait, Jan? I'm trying not to plummet to my death here.~ */ EXTERN ~VICONIJ~ 410
  IF ~  !IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
!IsValidForPartyDialogue("minsc")
IsValidForPartyDialogue("valygar")
~ THEN REPLY #75716 /* ~Can this wait, Jan? I'm trying not to plummet to my death here.~ */ EXTERN ~VALYGARJ~ 128
  IF ~  !IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
!IsValidForPartyDialogue("mazzy")
IsValidForPartyDialogue("minsc")
~ THEN REPLY #75716 /* ~Can this wait, Jan? I'm trying not to plummet to my death here.~ */ EXTERN ~MINSCJ~ 252
  IF ~  !IsValidForPartyDialogue("keldorn")
!IsValidForPartyDialogue("korgan")
IsValidForPartyDialogue("mazzy")
~ THEN REPLY #75716 /* ~Can this wait, Jan? I'm trying not to plummet to my death here.~ */ EXTERN ~MAZZYJ~ 208
  IF ~  !IsValidForPartyDialogue("keldorn")
IsValidForPartyDialogue("korgan")
~ THEN REPLY #75716 /* ~Can this wait, Jan? I'm trying not to plummet to my death here.~ */ EXTERN ~KORGANJ~ 234
  IF ~  IsValidForPartyDialogue("keldorn")
~ THEN REPLY #75716 /* ~Can this wait, Jan? I'm trying not to plummet to my death here.~ */ EXTERN ~KELDORJ~ 265
END

IF ~~ THEN BEGIN 193 // from: 192.0
  SAY #75717 /* ~The greatest alley I ever saw was behind the Silver Sow Public House in Athkatla. I never saw gravel so clean in my life. The alley's rats were bathed twice daily and were delicious to boot. The Silver Sow's back door was pristine oak, unstained by the blood of any of its patrons, which is more than can be said for the front door. And across the alley was a wall with stonework so simple but elegant it would make a mathematician cry. This alley—~ */
  IF ~~ THEN REPLY #75718 /* ~What does this have to do with navigating over a bloody great gorge in the branches of a bloody great tree?~ */ GOTO 194
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY #75719 /* ~The alley was nothing like this.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 2
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 15
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 502
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 410
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 128
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 252
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 208
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 234
  IF ~  IsValidForPartyDialogue("keldorn")
~ THEN EXTERN ~KELDORJ~ 265
END

IF ~~ THEN BEGIN 195 // from:
  SAY #74764 /* ~As weddings go, I've been to worse. My uncle once married a horse. Her name was Hilda. When she died, he made her into glue so they'd never be apart.~ */
  IF ~~ THEN EXTERN ~OHDFIREJ~ 0
END

IF ~~ THEN BEGIN 196 // from:
  SAY #81453 /* ~Nonsense! You're five percent ear, at most. Now my cousin, Hambert, I tell you, there were a pair of ears. He could swat flies with those things. Unfortunately, he wasn't much on hygiene, was old Hammy. His left ear got stuffed full of flies, and the next thing you know, BAM! He's got maggots pouring out of his earhole. Now, for a lot of people, that would be a crippling blow, but Hambert was never one to look a gift larva in the mouth. Do larvae have mouths? They must, mustn't they? How else would they eat?~ */
  IF ~~ THEN EXTERN ~HEXXAT~ 67
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 244
END

IF ~  Global("OHH_raffiyah","OH7200",1)
~ THEN BEGIN 197 // from:
  SAY #84253 /* ~Ah, yes. I remember puberty.~ */
  IF ~~ THEN EXTERN ~OHHRAFFI~ 0
END

IF ~~ THEN BEGIN 198 // from:
  SAY #89524 /* ~Well, no, I wouldn't say so. A cousin of mine was very interested in fortnights, but he started preferring lunar months. "Two fortnights are better than one," he said.~ */
  IF ~~ THEN EXTERN ~OHNQUAID~ 7
END

IF ~~ THEN BEGIN 199 // from:
  SAY #89524 /* ~Well, no, I wouldn't say so. A cousin of mine was very interested in fortnights, but he started preferring lunar months. "Two fortnights are better than one," he said.~ */
  IF ~~ THEN EXTERN ~OHNQUAID~ 9
END

IF ~~ THEN BEGIN 200 // from:
  SAY #89529 /* ~But he seemed so sensible and eloquent! My Aunt Peony's third husband was the same way. Of course, it turned out he wasn't a gnome at all, but one of those cats that stands on its hind legs, wears a vest, and plays cards... Hmm. Perhaps you made the right decision.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 73
END

IF ~~ THEN BEGIN 201 // from:
  SAY #88084 /* ~Don't you know? Carrying around a live cat in the South is bad luck!~ */
  IF ~~ THEN EXTERN ~OHNBARAD~ 25
END

IF ~~ THEN BEGIN 202 // from:
  SAY #272614 /* ~It's getting a little hot in here, isn't it?~ */
  IF ~  True()
~ THEN EXTERN ~LCCORWIN~ 27
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 66
  IF ~  !IsValidForPartyDialogue("Imoen2")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 239
END

IF ~~ THEN BEGIN 203 // from:
  SAY #272412 /* ~Ah Captain! Just warming up some turnip stew. Would you like to try some?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 122
END

IF ~~ THEN BEGIN 204 // from:
  SAY #272414 /* ~I added a few spices to give it a nice kick. I hope you find it to you liking!~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 123
END

IF ~~ THEN BEGIN 205 // from:
  SAY #98085 /* ~Yes, of course!~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 124
END

IF ~~ THEN BEGIN 206 // from:
  SAY #272417 /* ~Saffron! I had it imported fresh from one of the eastern merchant guilds.~ */
  IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 207 // from: 206.0
  SAY #272521 /* ~You know Captain, I'm looking to expand my turnip business outside of Athkatla. Perhaps you can help me set up a stall in Baldur's Gate? I'd share the profits with you, of course.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 125
END

IF ~~ THEN BEGIN 208 // from:
  SAY #272522 /* ~Nonsense! Having a confident and attractive woman such as yourself to sell my turnips would do wonders for my business.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 126
END

IF ~~ THEN BEGIN 209 // from:
  SAY #67751 /* ~That reminds me of my Great-Uncle Hegemony... not that he was much of an uncle, you understand. Always in dispute with the local lord over his rights to the surrounding farmlands. The duke had him thrown in prison for a year and a day before the duke's mother revealed Hegemony was actually a distant relation of the royal family—something about a drunken tryst between the duke's grandfather's brothers and a comely gnomish lass... details are sketchy.~ */
  IF ~~ THEN REPLY #67752 /* ~Lucky break for your uncle he was related.~ */ GOTO 210
END

IF ~~ THEN BEGIN 210 // from: 209.0
  SAY #67753 /* ~Not really. The duke didn't want Hegemony making any claims against his throne (or whatever those fancy muck-a-mucks sit on), so he banished Hegemony's family and sent my uncle himself to the guillotine.

After the execution, they returned the body to his family, but nobody could remember where they had stashed his upper portions. All worked out in the end, though... Hegemony's family couldn't afford a full-length coffin anyway.~ */
  IF ~~ THEN EXTERN ~SARBHA01~ 6
END

IF ~~ THEN BEGIN 211 // from:
  SAY #67754 /* ~I was just struck by the coincidence, is all. The royal blood running through Great-Uncle Hegemony's veins was as thin as your own Bhaalspawn essence, friend... and in the end, it kept his family from getting ahead.

Huh... you look a little pale there. Why don't you just forget I ever brought it up?~ */
  IF ~~ THEN EXTERN ~SARBHA01~ 2
END

IF ~~ THEN BEGIN 212 // from:
  SAY #67892 /* ~Well, you know, it's funny that this situation should come up. It's not something that I like to think about much, but I spent a whole year as a god back in '03. Oh, I know what you're thinking... why only a year? It's a touching and involved tale, but I'm happy to shed some light on it if it helps with your predicament.~ [JANJ2521] */
  IF ~~ THEN REPLY #67893 /* ~I find it hard to believe that you were a god, Jan.~ */ GOTO 213
  IF ~~ THEN REPLY #67894 /* ~Not more of your lies, gnome. I've enough to concern myself with.~ */ GOTO 214
  IF ~~ THEN REPLY #67895 /* ~This I've got to hear.~ */ GOTO 215
END

IF ~~ THEN BEGIN 213 // from: 212.0
  SAY #67896 /* ~Ao was pretty suspicious, too. Especially, I suppose, since I wasn't anywhere near the Golden Hills, nor had I even received so much as a by-your-leave from Garl Glittergold. Have you ever met Ao? A big, golden light, that one. Nice smell. Great cigars. Class act all the way. Far more reasonable than most people make him out to be after that whole Time of Trouble business. Who can fault a god for wanting to be alone for a while? Not me.~ */
  IF ~~ THEN GOTO 216
END

IF ~~ THEN BEGIN 214 // from: 212.1
  SAY #67897 /* ~And you think being a god was so worry-free? Not five minutes after arriving in Pandesmos, I was de-pantsed by Talos and sent running for my life when Iyachtu Xvim sent three Bane Hounds chasing me through the courtyard. Quite the bully, that one. Had a wandering left eye, too, that I thought I'd brought up in a perfectly tactful manner. Can't imagine he'd treat you any better, either... you might want to remember to stare at his shoes if you ever bump into him.~ */
  IF ~~ THEN GOTO 216
END

IF ~~ THEN BEGIN 215 // from: 212.2
  SAY #67899 /* ~It's nice to hear you eager for once. It's not every day that a gnome finds himself in the middle of the Abyss fighting an avatar and talking to a solar, you know. I haven't done that for at least a year now... although to be honest, the last time was only in the company of Aunt Patty, and we all know what a pushover her Larry was... and it's nice to see that my tribulations in this party are recognized.~ */
  IF ~~ THEN GOTO 216
END

IF ~~ THEN BEGIN 216 // from: 215.0 214.0 213.0
  SAY #67900 /* ~Anyway, it was during the Time of Troubles that I'd run afoul of some Banite cultists who accidentally mistook me for Bane's earthly avatar. Don't ask. Maybe they didn't have a picture. I wasn't sure what to think myself and resolved to spend more attention towards my breath in the future. It wasn't long before I was worshipped by thousands on a regular basis. They made good stew, and the constant chanting wasn't unpleasant, so I decided to play along. No one grows turnips under threat of eternal torment quite as well as a Dreadmaster, and I'll stand by that statement to this day.~ */
  IF ~~ THEN GOTO 217
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #67901 /* ~Well, it wasn't long before the whole Time of Troubles thing was over, and suddenly little old worshipped me found myself up in the heavens before the Overfather himself. Seems they were short of death gods at the time, and it didn't seem like such a bad gig, so I took him up on his offer. Plus, the dental plan was extraordinary.~ */
  IF ~~ THEN GOTO 218
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #67902 /* ~Being a god isn't what you'd expect, though. Sune was all over me from day one... I hear she developed a thing for turnips about a decade ago. She just wouldn't leave me alone! There were parties at all hours of the night, Lliira would get plastered and fall into the lily pond, and eventually Torm would start a brawl with somebody. Did you know what it's like to have Helm pounding on your door at three in the morning? I could never get any sleep at all. If it wasn't one thing, it was getting slapped by Umberlee or hit on by Loviatar. All night long... and in the morning, all the gods would be in a foul mood. Terrible.~ */
  IF ~~ THEN GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 218.0
  SAY #67903 /* ~I couldn't find anything good about the experience at all. No wonder Ao kicked them all out. He probably had to catch up on his housekeeping, of all things. Well, after all of that, I was more than happy to let Cyric have the job, eager puppy that he was. Left it behind me for a turnip farm and a nice pension, and gladly... although I eventually traded the pension for some stock in a Spelljammer trading cruiser, which was a bad decision, but all us mortals aren't immune to that, of course. Lost the farm too, in a game of checkers to Uncle Fibbert. But that turned out all right, as the turnips got a bad rot that year and Uncle Fibbert died of too much intestinal gas. Poor man.~ */
  IF ~~ THEN GOTO 220
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #67904 /* ~Anyhow, I hope all my experience has been of some help. Ummm... feel free to accept other opinions. Ummm... no need to stare, now. Move on, move on.~ */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 149
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 376
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 448
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 274
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 574
  IF ~  IsValidForPartyDialogue("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 148
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 375
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 446
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 272
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 572
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 158
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 2
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 3
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 261
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 327
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 168
END

IF ~~ THEN BEGIN 221 // from:
  SAY #70422 /* ~See that, <CHARNAME>? You just can't reason with the gith. Must be something to do with those spelljammer ships they ride around in—gives them extraplanar cabin fever. This reminds me of the time I was selling astral turnips on the outer planes. Opened a little shop with a garden in the back.~ */
  IF ~~ THEN GOTO 222
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #70423 /* ~Astral turnips are very tasty, let me tell you—but not too filling. My crop could barely keep up with the demand. One morning, I was sitting down to a nice turnip porridge breakfast when I was interrupted by a herd of githyanki barging through my door. Seems they had an interesting offer for me...~ */
  IF ~~ THEN REPLY #70427 /* ~Now's not the best time, Jan. I think we've got a fight on our hands.~ */ GOTO 223
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 262
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 264
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 160
  IF ~  IsValidForPartyDialogue("Sarevok")
~ THEN EXTERN ~SAREV25J~ 10
END

IF ~~ THEN BEGIN 223 // from: 222.0
  SAY #70428 /* ~Ah, true enough I suppose. Remind to finish this story later... truly one of my best.~ */
  IF ~~ THEN EXTERN ~GORGIT~ 3
END

IF ~~ THEN BEGIN 224 // from:
  SAY #70474 /* ~A deal? Well, spank me silly and call me a rutabaga. This fellow must be some kind of merchant indeed to still be bargaining long after he's dead. Sounds a bit like ol' Uncle Salebottom. "Jan, my nephew," he boasted one day, "I'm going to continue making money long after I'm dead!" And he did, too. Ten gold apiece for each of his fillings and twenty for his left foot. Don't ask.~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 14
END

IF ~~ THEN BEGIN 225 // from:
  SAY #70526 /* ~Helm dealt with it personally, eh? That's surprising, since the last time Helm dealt with anything personally was waaay back when he was forced to make himself a sandwich. Those gods, I tell you, they expect to be waited on hand and foot. Heaven forbid the butler take a break. But anyway... this story has more to do with how the Anauroch Desert was formed than what you're talking about, so we'll put it aside for now.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 20
END

IF ~~ THEN BEGIN 226 // from:
  SAY #70555 /* ~Well, it's <CHARNAME>'s doing, of course. Everyone knows <CHARNAME> and has been waiting for <PRO_HIMHER>. It's not like we're surprised by this anymore, you know.~ */
  IF ~~ THEN EXTERN ~HGNYA01~ 7
END

IF ~~ THEN BEGIN 227 // from:
  SAY #71632 /* ~You think so? One day, some little gnomish bundle of joy will be telling his companions implausible tales about *me*? I wonder if his friends will greet his tales with a similar amount of disbelief, hm? What a sheer irony that would be!~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 228 // from:
  SAY #72567 /* ~You know, I consider myself something of a cheese connoisseur. Why, when I was in the cracker-smuggling... uh, I mean shipping... business, an intimate knowledge of cheese seemed like an occupational necessity. For some inexplicable reason, everyone in Amn wanted to put cheese on their crackers. Of course, I prefer turnips myself.~ */
  IF ~~ THEN EXTERN ~BAZEYE01~ 10
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 404
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 176
END

IF ~  AreaCheck("OH4230")
Global("OHR_FINALE","GLOBAL",17)
~ THEN BEGIN 229 // from:
  SAY #83160 /* ~Mmmm, this scenario... far from ideal. You know what they say: Discretion is the better part of surviving an interdimensional collapse.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_FINALE","GLOBAL",18)
SetGlobalTimer("OHR_TIMER_ALORFIGHT","OH4230",THREE_MINUTES)
~ EXIT
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 183
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 273
  IF ~  IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIEJ~ 301
END

IF ~~ THEN BEGIN 230 // from:
  SAY #99936 /* ~You wish you were gnomes...~ */
  IF ~~ THEN EXTERN ~OHRDWS01~ 6
END

IF ~  Global("OHD_homeagain","OH5400",1)
~ THEN BEGIN 231 // from:
  SAY #92241 /* ~This whole adventure reminds me of the time—no. We were in Lunia. There is nothing to compare to that, at least not anything I've known.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_homeagain","OH5400",2)
~ EXIT
END

IF ~~ THEN BEGIN 232 // from:
  SAY #85670 /* ~Yes. Yes, it does...~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 615
END

IF ~~ THEN BEGIN 233 // from:
  SAY #85672 /* ~I know. It's fantastic, isn't it?~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 555
END

IF ~  Dead("OHHDECOY")
AreaCheck("OH7300")
!Global("OHH_decoydead","OH7300",2)
~ THEN BEGIN 234 // from:
  SAY #85674 /* ~I knew a man in Waterdeep a bit like that, frosty and high-strung. Went to pieces under pressure.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_decoydead","OH7300",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 844
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 556
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN EXTERN ~IMOEN2J~ 181
END
