// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDFAMARI.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDFAMARI.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC111~

IF ~  GlobalLT("bd_famari_plot","bd4000",5)
IsValidForPartyDialogue("corwin")
See("corwin")
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Helm's steely eye... Schael? Is that you?~ [BD52112] #52112 */
  IF ~~ THEN DO ~SetGlobal("bd_famari_plot","bd4000",5)
~ EXTERN ~BDCORWIJ~ 98
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~Far be it from me to stand in the way of one doing the Shining Lady's bidding. If that IS what you're doing.~ [BD67408] #67408 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3 /* ~I'm surprised, Schael. You were always so loyal to the Flaming Fist. What made you turn to Caelar?~ [BD52121] #52121 */
  IF ~  OR(2)
Class(Player1,BARD_ALL)
CheckStatGT(Player1,16,CHR)
~ THEN REPLY @4 /* ~She saw the Shining Lady's light, as did we all. Caelar's radiance touches the lives of many, even those who serve the Fist.~ #58488 */ GOTO 3
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY @5 /* ~Corwin and I heard the truth of the Shining Lady's words. We joined together.~ #58489 */ GOTO 5
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY @5 /* ~Corwin and I heard the truth of the Shining Lady's words. We joined together.~ #58489 */ GOTO 3
  IF ~  CheckStatGT(Player1,13,WIS)
~ THEN REPLY @6 /* ~She's with me. We have come to see what Caelar Argent has to offer us. It makes more sense to hear out a dissenting voice than to instinctively denounce it as the words of an enemy.~ #58490 */ GOTO 5
  IF ~  CheckStatLT(Player1,14,WIS)
~ THEN REPLY @6 /* ~She's with me. We have come to see what Caelar Argent has to offer us. It makes more sense to hear out a dissenting voice than to instinctively denounce it as the words of an enemy.~ #58490 */ GOTO 3
  IF ~  CheckStatGT(Player1,13,STR)
~ THEN REPLY @7 /* ~Caelar pays better than the Flaming Fist.~ #58491 */ GOTO 5
  IF ~  CheckStatLT(Player1,14,STR)
~ THEN REPLY @7 /* ~Caelar pays better than the Flaming Fist.~ #58491 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.6 2.4 2.2 2.0
  SAY @8 /* ~It's a common enough tale, to be sure, but I have a hard time believing it. Schael Corwin turn against Baldur's Gate? I just can't see it.~ [BD52125] #52125 */
  IF ~~ THEN GOTO 8
  IF ~  OR(2)
HasItemEquiped("bdring03",Player1)
HasItemEquiped("bdchan03",Player1)
~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from:
  SAY @9 /* ~I'm Beno Famari. I'm surprised to see you, Schael.~ [BD52126] #52126 */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 100
END

IF ~~ THEN BEGIN 5 // from: 3.1 2.5 2.3 2.1
  SAY @10 /* ~The Schael Corwin I know would never turn on the Flaming Fist. That was why things turned sour between us.~ [BD52134] #52134 */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 101
END

IF ~~ THEN BEGIN 6 // from:
  SAY @11 /* ~Just answer me one question, Schael. Just one question and I'll let you be on your way.~ [BD52136] #52136 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @12 /* ~How is... What is her name? Rohma, yes? How is my daughter?~ [BD52137] #52137 */
  IF ~  OR(2)
Global("bd_corwin_romanceactive","global",1)
Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY @13 /* ~You've got no right to ask her that. Not after what you put her through.~ #52138 */ GOTO 13
  IF ~~ THEN REPLY @14 /* ~As I understand it, you've never had anything to do with Rohma. Why do you care now?~ #52139 */ GOTO 11
  IF ~~ THEN REPLY @15 /* ~Mind your step, Famari. You're heading into dangerous territory.~ #52140 */ GOTO 11
  IF ~  CheckStatGT(Player1,15,STR)
~ THEN REPLY @16 /* ~This conversation is over.~ #52142 */ GOTO 17
  IF ~  CheckStatLT(Player1,16,STR)
~ THEN REPLY @16 /* ~This conversation is over.~ #52142 */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 3.0
  SAY @17 /* ~You may be telling it true, friend. But the Schael Corwin I knew would never turn on the Flaming Fist. She's a spy, and I'm gonna make a pile of gold turnin' her in.~ [BD52143] #52143 */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 102
END

IF ~~ THEN BEGIN 9 // from: 11.1
  SAY @18 /* ~Good. That's good to know. Well, I'll not keep you any longer. We're beginning preparations for the final attack. This will all be over soon, one way or another.~ [BD52154] #52154 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 11.2
  SAY @19 /* ~...Very well, I take your point. I'll not keep you. Goodbye, Schael.~ [BD52155] #52155 */
  IF ~~ THEN DO ~AddJournalEntry(60240,INFO)
ActionOverride("bdfamar1",EscapeArea())
ActionOverride("bdfamar2",EscapeArea())
EscapeArea()
~ EXIT
  IF ~  OR(2)
Global("bd_corwin_romanceactive","global",1)
Global("bd_corwin_romanceactive","global",2)
~ THEN DO ~AddJournalEntry(60240,INFO)
SetGlobal("bd_famari_plot","bd4000",7)
ActionOverride("bdfamar1",EscapeArea())
ActionOverride("bdfamar2",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.4 7.2 7.1
  SAY @20 /* ~I have a right to know about my child.~ [BD52157] #52157 */
  IF ~  OR(2)
Global("bd_corwin_romanceactive","global",1)
Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY @21 /* ~You abandoned Schael and your daughter years ago. She owes you nothing.~ #58492 */ GOTO 13
  IF ~~ THEN REPLY @22 /* ~She is well. Healthy and full of life. Cared for and well-loved. And now it is time for us to leave.~ #52148 */ GOTO 9
  IF ~~ THEN REPLY @23 /* ~Rohma is well enough, though she's on the verge of losing a father.~ #52150 */ GOTO 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY @24 /* ~Galad! That is low, Schael, even for you. My daughter's gone her whole life without a father. Let's see how she makes do without a mother...~ [BD52158] #52158 */
  IF ~~ THEN DO ~AddJournalEntry(60242,INFO)
ChangeSpecifics(Myself,HOSTILES4)
ChangeSpecifics("bdfamar1",HOSTILES4)
ChangeSpecifics("bdfamar2",HOSTILES4)
ActionOverride("bdfamar1",Enemy())
ActionOverride("bdfamar2",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0 7.0
  SAY @25 /* ~You've got an awfully possessive tone in your voice, friend. Could it be Schael Corwin's suckered another fool into her arms?~ [BD58493] #58493 */
  IF ~~ THEN REPLY @26 /* ~She's an incredible woman. You were a fool to let her go.~ #58494 */ EXTERN ~BDCORWIJ~ 103
  IF ~~ THEN REPLY @27 /* ~That's none of your business. Now do you have a job around here or do you just harass loyal crusaders all day?~ #58495 */ GOTO 17
  IF ~~ THEN REPLY @28 /* ~If it's a fight you want, you're precious close to getting one.~ #58496 */ EXTERN ~BDCORWIJ~ 103
END

IF ~~ THEN BEGIN 14 // from:
  SAY @29 /* ~That's right, you should go. Before I tell you what your new lady is really like.~ [BD58498] #58498 */
  IF ~~ THEN REPLY @30 /* ~What do you mean by that?~ #58499 */ GOTO 15
  IF ~~ THEN REPLY @31 /* ~As if I'd give any weight to the words of a man who abandoned his most important responsibility.~ #58500 */ GOTO 15
  IF ~~ THEN REPLY @32 /* ~We're going. You'd be wise to do the same.~ #58501 */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.1 14.0
  SAY @33 /* ~She puts up a great front. Strait-laced Schael, daughter of the ever-stoic Audamar. Bet she didn't tell you about her younger days, running around with all types, getting them into trouble. Take care. She'll ruin you like she did me.~ [BD58502] #58502 */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 104
END

IF ~~ THEN BEGIN 16 // from:
  SAY @34 /* ~It would hardly be the first time, would it, Schael? But this conversation IS over.~ [BD67409] #67409 */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 14.2 13.1 7.3
  SAY @35 /* ~I've more important things to do than talk right now. The Shining Lady bid us ready ourselves for the attack just as soon as she and Hephernaan finish whatever they're up to in the castle.~ [BD58507] #58507 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 9.0
  SAY @36 /* ~Get on your way.~ [BD58508] #58508 */
  IF ~~ THEN DO ~AddJournalEntry(60241,INFO)
AddexperienceParty(6000)
ActionOverride("bdfamar1",EscapeArea())
ActionOverride("bdfamar2",EscapeArea())
EscapeArea()
~ EXIT
  IF ~  OR(2)
Global("bd_corwin_romanceactive","global",1)
Global("bd_corwin_romanceactive","global",2)
~ THEN DO ~AddJournalEntry(60241,INFO)
AddexperienceParty(6000)
SetGlobal("bd_famari_plot","bd4000",7)
ActionOverride("bdfamar1",EscapeArea())
ActionOverride("bdfamar2",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~  GlobalLT("bd_famari_plot","bd4000",5)
OR(2)
!IsValidForPartyDialogue("corwin")
!See("corwin")
GlobalLT("bd_plot","global",400)
~ THEN BEGIN 19 // from:
  SAY @37 /* ~Yeah, what do you want?~ [BD52213] #52213 */
  IF ~~ THEN REPLY @38 /* ~Your name will do for a start.~ #52214 */ GOTO 20
  IF ~~ THEN REPLY @39 /* ~I would know what the Shining Lady pays you for your service, mercenary.~ #52215 */ GOTO 22
  IF ~~ THEN REPLY @40 /* ~I want to save your soul from eternal damnation. Have you heard the word of the great Lathander?~ #52216 */ GOTO 23
  IF ~~ THEN REPLY @41 /* ~I want nothing from you.~ #52217 */ GOTO 25
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @42 /* ~It'll do for an end too. I'm Beno Famari. Now get thee gone. One more sermon singing the Shining Lady's praises and I swear I'll go to work for the Waterdhavians.~ [BD52218] #52218 */
  IF ~~ THEN REPLY @43 /* ~I am no crusader.~ #52219 */ GOTO 21
  IF ~~ THEN REPLY @44 /* ~You're not one of Caelar's zealots then. What do you make of the Shining Lady?~ #52220 */ GOTO 26
  IF ~~ THEN REPLY @45 /* ~You would betray Caelar?~ #52222 */ GOTO 24
  IF ~~ THEN REPLY @46 /* ~I shall take my leave of you, then.~ #52223 */ GOTO 27
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @47 /* ~A mercenary, then. Better than a crusader, I suppose. What do you want?~ [BD52224] #52224 */
  IF ~~ THEN REPLY @41 /* ~I want nothing from you.~ #52217 */ GOTO 25
  IF ~~ THEN REPLY @48 /* ~Tell what the Shining Lady pays for your service.~ #52225 */ GOTO 22
  IF ~~ THEN REPLY @49 /* ~What's your take on Caelar?~ #52226 */ GOTO 26
  IF ~~ THEN REPLY @50 /* ~What I want you cannot provide. I'll take my leave of you.~ #52227 */ GOTO 27
END

IF ~~ THEN BEGIN 22 // from: 21.1 19.1
  SAY @51 /* ~More than she'd pay if I started discussing private business arrangements with strangers. Begone. You're making my knuckles itch.~ [BD52228] #52228 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY @52 /* ~I haven't. I've heard the bones of people who preach at me break, though. Be on your way, godsbotherer.~ [BD52229] #52229 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.2
  SAY @53 /* ~No, not really. I've had... issues... with certain Flaming Fists. I doubt they're among those surrounding the castle, but better safe than sorry. Now excuse me, we were discussing private matters.~ [BD52230] #52230 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.0 19.3
  SAY @54 /* ~Then it's your lucky day. Fare thee well, <PRO_SIRMAAM>.~ [BD52231] #52231 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from: 21.2 20.1
  SAY @55 /* ~She's mad as a mouther, but she pays well and on time. I've served worse. Now if you'll excuse us, we were discussing some private matters. Farewell.~ [BD52232] #52232 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 21.3 20.3
  SAY @56 /* ~You do that.~ #52233 */
  IF ~~ THEN DO ~DisplayStringHead(Myself,@57)
~ EXIT
END
