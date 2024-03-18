// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ZORL.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ZORL.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA410~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Greetings, you are all new faces. I am Zorl, and you must be Aldeth's childhood friends?~ #1277 */
  IF ~~ THEN REPLY @2 /* ~Yeah, we've been friends since we were kids.~ #1297 */ DO ~SetGlobal("TalkedToZorlIrenl","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY @3 /* ~Sure, but we don't have time to chat. We've got a lot of catching up to do with Aldeth.~ #1298 */ DO ~SetGlobal("TalkedToZorlIrenl","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 2.2 0.1
  SAY @4 /* ~Perhaps we will have another more convenient time to talk.~ #1278 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @5 /* ~So, were you good friends with Dabron as well?~ #1279 */
  IF ~~ THEN REPLY @6 /* ~Dabron?~ #1299 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~Oh, yeah, Dabron. Sure we were.~ #1300 */ EXIT
  IF ~~ THEN REPLY @8 /* ~Actually, we kind of want to talk old times with our buddy here. We'll see you later.~ #1301 */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @9 /* ~You don't remember Aldeth's brother, most interesting.~ #1280 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @10 /* ~I don't like these sniveling primates interfering with our work, Jased! Say the word.~ #1281 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @11 /* ~You seem to have an unhealthy interest in wandering the halls of our consortium. Perhaps it would be best for you to return to your room.~ #1282 */
  IF ~~ THEN REPLY @12 /* ~Aldeth gave us free reign of the entire place.~ #1302 */ GOTO 13
  IF ~~ THEN REPLY @13 /* ~Sure, we don't want any trouble.~ #1303 */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @14 /* ~Perhaps, Aldeth, your memory has become somewhat addled. You seem to be forgetting and even inventing elements of your past. Take, for example, your "childhood" friends. A most stupid lie, meat.~ #1283 */
  IF ~~ THEN EXTERN ~XAA315~ 4
END

IF ~~ THEN BEGIN 7 // from:
  SAY @15 /* ~Before you die, primates, I have been instructed to give you a message from our employer, Rieltar. He wishes you to know how much fun it's been matching wits with you.~ #1284 */
  IF ~~ THEN EXTERN ~ALDETH~ 30
END

IF ~~ THEN BEGIN 8 // from:
  SAY @16 /* ~Are you going somewhere? We thought it was best for you to stay for the festivities. Why don't you turn back now and return to where you're wanted?~ #1285 */
  IF ~~ THEN REPLY @17 /* ~You're right, we'll go back to the party.~ #1304 */ EXIT
  IF ~~ THEN REPLY @18 /* ~We're sorry, but we can't do that.~ #1305 */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @19 /* ~No, I'm the one who's sorry.~ #1286 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY @20 /* ~Is there a reason for this intrusion?~ #1287 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY @21 /* ~So you have learned the truth, primate. It will do you no good. Prepare to die.~ #1288 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @22 /* ~That was very magnanimous of Aldeth.~ #6604 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.0
  SAY @23 /* ~I don't care what Aldeth has told you! Would you kindly leave this area? It would be rather... unhealthy if you didn't.~ #7265 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 14 // from:
  SAY @24 /* ~I'm a busy man, with a company to run. Please don't disturb me.~ #11812 */
  IF ~~ THEN EXIT
END
