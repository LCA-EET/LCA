// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MRSHADE.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\MRSHADE.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA347~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Do you have them?~ #11508 */
  IF ~~ THEN REPLY @2 /* ~I beg your pardon? What do you mean?~ #11509 */ GOTO 2
  IF ~~ THEN REPLY @3 /* ~Eh... of course. Do you have the trade?~ #11510 */ GOTO 1
  IF ~~ THEN REPLY @4 /* ~Can I... trust you?~ #11513 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 11.1 5.1 3.2 0.1
  SAY @5 /* ~Aye, that and more. Best we say no more lest the night be blown.~ #11511 */
  IF ~~ THEN REPLY @6 /* ~Agreed. One can never be too careful?~ #11514 */ GOTO 6
  IF ~~ THEN REPLY @7 /* ~I'm sorry, but what are you referring to?~ #11515 */ GOTO 2
  IF ~~ THEN REPLY @8 /* ~I suppose? To actions then?~ #11532 */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 8.0 7.1 6.1 5.2 4.0 3.1 1.1 0.0
  SAY @9 /* ~Um... never mind. Wrong person.~ #11512 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @10 /* ~Who else but me? And I you?~ #11516 */
  IF ~~ THEN REPLY @11 /* ~Um... I see your point? Let's continue.~ #11517 */ GOTO 4
  IF ~~ THEN REPLY @12 /* ~I'm not sure I understand what is going on here.~ #11518 */ GOTO 2
  IF ~~ THEN REPLY @13 /* ~If all goes... well?~ #11527 */ GOTO 1
END

IF ~~ THEN BEGIN 4 // from: 3.0 1.2
  SAY @14 /* ~As well we should. The place is ready?~ #11519 */
  IF ~~ THEN REPLY @15 /* ~The place? Now you've lost me.~ #11520 */ GOTO 2
  IF ~~ THEN REPLY @16 /* ~As ready as it could be.~ #11521 */ GOTO 6
  IF ~~ THEN REPLY @17 /* ~Will it ever be ready?~ #11522 */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 7.0 4.2
  SAY @18 /* ~And I would know this? What of your job?~ #11523 */
  IF ~~ THEN REPLY @19 /* ~It goes as planned.~ #11524 */ GOTO 8
  IF ~~ THEN REPLY @20 /* ~My job is my business.~ #11525 */ GOTO 1
  IF ~~ THEN REPLY @21 /* ~Sorry, but I think I'm not who you... er... think.~ #11526 */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 12.2 8.2 7.2 4.1 1.0
  SAY @22 /* ~Why would you say that?~ #11528 */
  IF ~~ THEN REPLY @23 /* ~Eh... You know the drill.~ #11529 */ GOTO 8
  IF ~~ THEN REPLY @24 /* ~I... I don't know. What is going on here?~ #11530 */ GOTO 2
  IF ~~ THEN REPLY @25 /* ~And why wouldn't I?~ #11531 */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.2
  SAY @26 /* ~I thought as much. To business then?~ #11533 */
  IF ~~ THEN REPLY @27 /* ~Agreed? What say you to this?~ #11534 */ GOTO 5
  IF ~~ THEN REPLY @28 /* ~I'm... completely at a loss. What are you talking about?~ #11535 */ GOTO 2
  IF ~~ THEN REPLY @29 /* ~I... don't think so?~ #11536 */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 6.0 5.0
  SAY @30 /* ~So it's agreed then?~ #11537 */
  IF ~~ THEN REPLY @31 /* ~What? Sorry, but I've just been playing along.~ #11538 */ GOTO 2
  IF ~~ THEN REPLY @32 /* ~Uh... sure!~ #11548 */ GOTO 9
  IF ~~ THEN REPLY @33 /* ~I am not sure.~ #11549 */ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @34 /* ~All right then.~ #11550 */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @35 /* ~Um...~ #11551 */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @36 /* ~You have no idea what we were talking about, do you?~ #11552 */
  IF ~~ THEN REPLY @37 /* ~Eh, no, I was just playing along.~ #11553 */ GOTO 12
  IF ~~ THEN REPLY @38 /* ~Of course I do! It's, um, business as usual!~ #11554 */ GOTO 1
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @39 /* ~I see... so you bluffed your way through this entire conversation without a clue what was going on?~ #11556 */
  IF ~  PartyHasItem("MISC47")
~ THEN REPLY @40 /* ~Yes, actually. Kept you going for quite some time, too. What was this all about?~ #11557 */ GOTO 14
  IF ~  !PartyHasItem("MISC47")
~ THEN REPLY @41 /* ~Um, yes. What was the point of all this?~ #11559 */ GOTO 13
  IF ~~ THEN REPLY @42 /* ~Certainly not. Business as usual?~ #11560 */ GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @43 /* ~I, uh... I forget. Um, goodbye.~ #11561 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY @44 /* ~I was to meet the owner of the pantaloons. That would be you, but it is not you. You are the wrong one, because your pantaloons are obviously STOLEN. A foolproof plan of recognition ruined, because you were daft enough to keep the pantaloons. I'll take those, and no reward for you. That'll teach you to abscond with a man's hard-earned trousers!~ #11565 */
  IF ~~ THEN DO ~TakePartyItem("MISC47")
EscapeArea()
~ EXIT
END
