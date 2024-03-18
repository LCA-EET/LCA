// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HUSAM.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HUSAM.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA275~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Me name's Husam. I've heards quite a bit about youres exploits. *hic* You've really caused the Iron Throne shom trouble, haven'ts you? I'd like to talks with the bunch of youse, what says you?~ #1583 */
  IF ~~ THEN REPLY @2 /* ~Sorry, we don't have the time to talk with a small time thief.~ #1598 */ DO ~SetGlobal("HusamMove","GLOBAL",1)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY @3 /* ~Okay, what do you have to say?~ #1599 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4 /* ~You'res the mercs who'ves beens tangling with *hic* the Iron Throne, aren't you? *buuurp* Wells, I'm Husam, and I'ves kepts informed on most of your doings. Listen well to whats I gots to tells ya.~ #1584 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5 /* ~Ya's know whats? I hates the Iron Throne. They's took my store, my money, and my wife. They's took my whole life, they did. *buuuuuurp* 'Scuse me. Now all I've gots is this damn horse piss. To think I used to works for those manure piles.~ #1587 */
  IF ~~ THEN REPLY @7 /* ~Well, this story is interesting and all, but we've got to get going. See you later!~ #1600 */ DO ~SetGlobal("HusamMove","GLOBAL",1)
EscapeArea()
~ UNSOLVED_JOURNAL @6 /* ~Investigating the Iron Throne
It might have been the drink talking, but a man named Husam had nothing good to say about his former employer, the Iron Throne.~ #27157 */ EXIT
  IF ~~ THEN REPLY @8 /* ~Get on with it! What did you want to talk to us about?~ #1601 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @9 /* ~Wells I wanted to talks about the Iron Thrones. Ask me anythings about *hic* those manure eaters and I'lls tell ya. I workeds for them, 'member?~ #1588 */
  IF ~~ THEN REPLY @10 /* ~Okay. Husam, who are the leaders of the Iron Throne?~ #1602 */ GOTO 4
  IF ~~ THEN REPLY @11 /* ~What are the Iron Throne's plans?~ #1603 */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @12 /* ~The leasders of the Iron Throne, ha! There's Rieltar Anchevsh, he's the big guy, sents by the evens bigger guys down in Sembia. This wholsh operashion is his baby. Hes has two other guys, Brunos and Thaldorn. Brunos is a big dumbsh drunk half-orc, damn half breeshd could never hold his liquor. Thaldorn'sh a pansy. Ohhhhh ya. I nearly forgotsh, there's Sarevok, he's the son a Rieltar. He's a mean cuss.~ #1589 */
  IF ~~ THEN UNSOLVED_JOURNAL @13 /* ~Investigating the Iron Throne
Husam says that the leaders of the Iron Throne are Brunos, Thaldorn, and Rieltar.~ #27158 */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @14 /* ~The Thronesh plans. They's wants to make money, alwaysh more money. Buts I know thish: They're leadersh, the big three uns, they're going to Candleskeeps, yes they are. *buuurp* Something big, something's huuuuuge's going to happens there.~ #1590 */
  IF ~~ THEN UNSOLVED_JOURNAL @15 /* ~Investigating the Iron Throne
The drunk Husam told us that the Iron Throne leaders have gone to Candlekeep; for what purpose we do not know.~ #27159 */ GOTO 15
END

IF ~~ THEN BEGIN 6 // from:
  SAY @16 /* ~A secrets route. Oh ya, I know ones, a really goods one. Ya know Krammach Arhsstaff? Ah it doeshn't matter. His *hic* home's located righst beside the Iron Throne citadel. He's in close with Rieltar, he he, know what I mean. Wells anyways, he's gots a passage from hish bashement to the Throne's bashement.~ #1591 */
  IF ~~ THEN UNSOLVED_JOURNAL @17 /* ~Investigating the Iron Throne
According to Husam, a secret passage from the home of Krammach Arkhstaff leads all the way to the Iron Throne base.~ #27160 */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.0
  SAY @18 /* ~Ish that enough for you guysh, or do you wants to know more?~ #1592 */
  IF ~~ THEN REPLY @19 /* ~No, we've heard enough.~ #1605 */ GOTO 9
  IF ~  Global("AskedHusam1","GLOBAL",0)
~ THEN REPLY @11 /* ~What are the Iron Throne's plans?~ #1607 */ DO ~SetGlobal("AskedHusam1","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 17.0 16.0 14.0 13.0 6.0
  SAY @20 /* ~I'm tired now, I needs to go home and sleep. If youse ever needs me ya can find me at the Elfsong Tavern. Goodbye. *buuuuurp*~ #1593 */
  IF ~~ THEN DO ~SetGlobal("HusamMove","GLOBAL",1)
EscapeArea()
~ UNSOLVED_JOURNAL @21 /* ~Investigating the Iron Throne
Husam told us that we can find him at the Elfsong Tavern. Though he is a blubbering drunk, he seems to know a great deal.~ #27161 */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 15.0 7.0
  SAY @22 /* ~Okays, I hopes ya likeds what I tolds ya, if ya needs help from me evers again, yas can find me at the Elfsong, the tavern thats is.~ #1594 */
  IF ~~ THEN DO ~SetGlobal("HusamMove","GLOBAL",1)
EscapeArea()
~ UNSOLVED_JOURNAL @21 /* ~Investigating the Iron Throne
Husam told us that we can find him at the Elfsong Tavern. Though he is a blubbering drunk, he seems to know a great deal.~ #27161 */ EXIT
END

IF ~  Global("HusamMove","GLOBAL",1)
!Global("Chapter","GLOBAL",7)
~ THEN BEGIN 10 // from:
  SAY @23 /* ~Heys guys. I'msh so glads to see you. Sos how's it been? I betch wants to know more about the Iron Throne.~ #1595 */
  IF ~  Global("ExploredIronThrone","GLOBAL",0)
~ THEN REPLY @24 /* ~Yes, we would like to know anything you have to tell.~ #1609 */ GOTO 11
  IF ~~ THEN REPLY @25 /* ~No, we just came in to say hello and goodbye. Hello! Goodbye!~ #1610 */ DO ~SetGlobal("HusamMove","GLOBAL",2)
EscapeArea()
~ EXIT
  IF ~  Global("ExploredIronThrone","GLOBAL",1)
~ THEN REPLY @24 /* ~Yes, we would like to know anything you have to tell.~ #1618 */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @26 /* ~Ya shoulds really go to their big headsquarters. They're planning big things there, really big things.~ #1596 */
  IF ~~ THEN DO ~SetGlobal("HusamMove","GLOBAL",2)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY @27 /* ~I heards there all off to Candlekeep, alls the Iron Throne leaders. That's the place to be.~ #1597 */
  IF ~~ THEN DO ~SetGlobal("HusamMove","GLOBAL",2)
EscapeArea()
~ UNSOLVED_JOURNAL @15 /* ~Investigating the Iron Throne
The drunk Husam told us that the Iron Throne leaders have gone to Candlekeep; for what purpose we do not know.~ #27159 */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.1
  SAY @28 /* ~The Thronesh plans. Theys wants to make money, alwaysh more money. Buts I know thish, they're leadersh, the big three uns, they're going to Candleskeeps, yes they are. *buuurp* Something big, something's huuuuuge's going to happens there.~ #1606 */
  IF ~~ THEN UNSOLVED_JOURNAL @15 /* ~Investigating the Iron Throne
The drunk Husam told us that the Iron Throne leaders have gone to Candlekeep; for what purpose we do not know.~ #27159 */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from:
  SAY @16 /* ~A secrets route. Oh ya, I know ones, a really goods one. Ya know Krammach Arhsstaff? Ah it doeshn't matter. His *hic* home's located righst beside the Iron Throne citadel. He's in close with Rieltar, he he, know what I mean. Wells anyways, he's gots a passage from hish bashement to the Throne's bashement.~ #1611 */
  IF ~~ THEN UNSOLVED_JOURNAL @17 /* ~Investigating the Iron Throne
According to Husam, a secret passage from the home of Krammach Arkhstaff leads all the way to the Iron Throne base.~ #27160 */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 5.0
  SAY @18 /* ~Ish that enough for you guysh, or do you wants to know more?~ #1612 */
  IF ~~ THEN REPLY @19 /* ~No, we've heard enough.~ #1613 */ GOTO 9
  IF ~~ THEN REPLY @10 /* ~Okay. Husam, who are the leaders of the Iron Throne?~ #1615 */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from:
  SAY @16 /* ~A secrets route. Oh ya, I know ones, a really goods one. Ya know Krammach Arhsstaff? Ah it doeshn't matter. His *hic* home's located righst beside the Iron Throne citadel. He's in close with Rieltar, he he, know what I mean. Wells anyways, he's gots a passage from hish bashement to the Throne's bashement.~ #1616 */
  IF ~~ THEN UNSOLVED_JOURNAL @17 /* ~Investigating the Iron Throne
According to Husam, a secret passage from the home of Krammach Arkhstaff leads all the way to the Iron Throne base.~ #27160 */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY @29 /* ~The leasders of the Iron Throne, ha! There's Rieltar Anchevsh, he's the big guy, sents by the evens bigger guys down in Sembia. This wholsh operashion is his baby. He's has two's other guys, Brunos and Thaldorn. Brunos is a big dumbsh drunk half-orc, damn half breeshd could never hold his liquor. Thaldorn'sh a pansy. Ohhhhh ya. I nearly forgotsh, there's Sarevok, he's the son a Rieltar. He's a mean cuss.~ #1617 */
  IF ~~ THEN UNSOLVED_JOURNAL @13 /* ~Investigating the Iron Throne
Husam says that the leaders of the Iron Throne are Brunos, Thaldorn, and Rieltar.~ #27158 */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from:
  SAY @30 /* ~Hey, guys. Remember me, your old bud Husam? *hic* Iz so good to see ya all again. Lots has happenedz since ya were gone. Heh heh, ya I've beens hearing all sortsa things. I heards you guys are wanted for murders. Hah, so yers murderers, eh? Well, I still like ya. Hey, I have somore info for yas. Do ya want ta hear it?~ #2190 */
  IF ~~ THEN REPLY @31 /* ~We'd rather not get information from a drunken lunatic.~ #2210 */ GOTO 19
  IF ~~ THEN REPLY @32 /* ~What do you have for us?~ #2211 */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @33 /* ~What?! I'ms not drunk, ya got me confused wit' somebody else.~ #2191 */
  IF ~~ THEN DO ~SetGlobal("HusamMove","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY @34 /* ~Well, heh heh, quites a bit I have, quites a bit. Does ya know about Duke Eltan, he's diseased heez is. His seconds in command *hic* Scar got killed, assassassinated heez was. *buuuuuurp* Sose that's it. I gots to get going now, if you wants to talk with me some more just come by the Elfsong. See yas.~ #2192 */
  IF ~~ THEN DO ~SetGlobal("HusamMove","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY @35 /* ~*uuurp* Hey again. Iz me, Husam. I gotta talk to yas. Jez follow me.~ #2193 */
  IF ~~ THEN REPLY @36 /* ~Sorry, Husam, we don't have time for your wacky antics right now.~ #2212 */ GOTO 22
  IF ~~ THEN REPLY @37 /* ~Okay, show us where you want us to go.~ #2213 */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @38 /* ~Fine thens, I'll find some other frens.~ #1972 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY @39 /* ~Heys, follow me, youse promised.~ #1973 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY @40 /* ~Sorry for misleading you, but there are times when subtlety works better than honesty. My associates and I don't want a fight, so we could ease the tension if all of us sheathed our weapons.~ #2194 */
  IF ~~ THEN REPLY @41 /* ~We don't trust you one bit, prepare to defend yourselves.~ #2214 */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY @42 /* ~Okay, we don't want a fight either, we'll give you a chance to explain yourself. The truth this time.~ #2215 */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY @43 /* ~Okay then. First off, my name really is Husam. I have never owned a business in Baldur's Gate. My associates and I belong to an organization called the Shadow Thieves; I'm sure you've heard of us. I'm here in the Gate because of the lies being spread about our organization and the nation of Amn as a whole. I'm sure you're aware how you were framed as Amnian assassins while in Candlekeep, or how the deaths of Duke Entar Silvershield and Commander Scar were blamed on the Shadow Thieves. Well, we had nothing to do with it. It seems that someone is going to a lot of trouble to create a feeling of animosity between Baldur's Gate and Amn. Amn has never been interested in a war with this city and has definitely not been responsible for all of the troubles in this region. All of that can be placed squarely upon the shoulders of the Iron Throne, or more specifically Sarevok. Now that I've told you who I am, perhaps you can tell me who you are.~ #2195 */
  IF ~~ THEN REPLY @45 /* ~We're just mercenaries. We've been hired by Duke Eltan to investigate the Iron Throne.~ #2216 */ JOURNAL @44 /* ~We have learned that the drunk Husam has been putting up an act all this time. He is actually a member of the Shadow Thieves. The Shadow Thieves are concerned at how the nations of Amn and Baldur's Gate have been maneuvered close to a war.~ #7025 */ GOTO 26
  IF ~~ THEN REPLY @46 /* ~We're currently operating with Zhentarim backing. They've had their identities misused as well.~ #2217 */ GOTO 27
  IF ~~ THEN REPLY @47 /* ~We're working with Harper assistance.~ #2218 */ GOTO 28
  IF ~~ THEN REPLY @48 /* ~You don't need to know who we are.~ #2219 */ GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @49 /* ~Mercenaries, huh. Well, your employer isn't in the best of shape right now, so perhaps you need some help.~ #2196 */
  IF ~~ THEN REPLY @50 /* ~Sorry, we work alone.~ #2220 */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY @51 /* ~How did you plan on helping us?~ #2223 */ GOTO 30
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY @52 /* ~The Zhentarim, an organization after my own heart. Well, we seem to have the same problem, so perhaps working together wouldn't be a bad thing.~ #2197 */
  IF ~~ THEN REPLY @50 /* ~Sorry, we work alone.~ #2221 */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY @51 /* ~How did you plan on helping us?~ #2224 */ GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY @53 /* ~Harpers. They seem to meddle in everyone's affairs.~ #2198 */
  IF ~~ THEN REPLY @50 /* ~Sorry, we work alone.~ #2222 */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY @51 /* ~How did you plan on helping us?~ #2225 */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 25.3
  SAY @54 /* ~Fair enough, but I do know that you're an enemy of the Iron Throne, and an enemy of an enemy is a friend.~ #2199 */
  IF ~~ THEN REPLY @50 /* ~Sorry, we work alone.~ #2226 */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY @51 /* ~How did you plan on helping us?~ #2227 */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1 28.1 27.1 26.1
  SAY @55 /* ~I've been tracking the movements of two Night Masks who've been operating in the city over the past few weeks. I'd say they were responsible for framing the past several murders on the Shadow Thieves. I know they've been staying at a place called the Undercellar. How 'bout we pay them a visit.~ #2200 */
  IF ~~ THEN REPLY @56 /* ~No thanks, we have other things to do than track down assassins (but we're not sure what).~ #2228 */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY @57 /* ~Show us the way.~ #2229 */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY @58 /* ~Just follow us to the Splurging Sturgeon Inn, it has one of the entrances to the Undercellar.~ #2201 */
  IF ~~ THEN DO ~SetGlobal("HusamMove","GLOBAL",2)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY @59 /* ~Aren't you coming?~ #2202 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY @60 /* ~Here we are. The entrance is just in the back. We'll stay up here and run interference. The two you're looking for are named Slythe and Krystin. Meet us up here when you've dealt with the assassins.~ #2203 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY @61 /* ~How did you fare?~ #2204 */
  IF ~~ THEN REPLY @62 /* ~We killed both of them.~ #2230 */ GOTO 36
  IF ~~ THEN REPLY @63 /* ~We didn't find anybody.~ #2231 */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @64 /* ~They should be down there; I had guards on all of the entrances. Go back and try again.~ #2205 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY @65 /* ~Good, did you find anything on their bodies?~ #2206 */
  IF ~~ THEN REPLY @66 /* ~No, we didn't.~ #2232 */ EXIT
  IF ~~ THEN REPLY @67 /* ~We found several documents spelling out their next assassination. They were to join with a group of doppelgangers to kill the two remaining Grand Dukes during the election.~ #2233 */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY @68 /* ~That's happening tonight! If they succeed, Sarevok will have seized control of the entire city. We should move immediately; we have to get to the dukes before it's too late. Let's head to the palace now!~ #2207 */
  IF ~~ THEN DO ~SetGlobal("HusamMove","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY @69 /* ~Here we are. From what I know, there's a secret entrance into the palace via the sewers. Unfortunately, it's heavily warded and guarded. That's where you come in. You'll have to disable the wards and traps. Once we're inside, we Shadow Thieves will create a diversion for the rest of you. You make your way to the election room, find out who the doppelgangers are, and kill them. Remember, make sure you know who the doppelgangers are. If you're right they'll revert to their true form; if you're wrong, you're in a heap of trouble. Here is where the location of the secret door is. It's all up to you.~ #2208 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY @70 /* ~Here's the secret entrance, it's up to you now. Get us through this without anyone dying.~ #2209 */
  IF ~~ THEN EXIT
END
