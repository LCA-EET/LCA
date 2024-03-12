// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\KENT.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\KENT.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC105~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You there... shhhhhh. Don't make too much noise. My name's Kent, and I want to talk to you.~ #20529 */
  IF ~~ THEN REPLY @2 /* ~Another Flaming Fist! Get out of my way before I kill you.~ #20530 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~What is it you want... Kent?~ #20532 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Idiots!~ #20533 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~I remember the bunch of you from when you worked for Scar and Eltan. Well, since you've been gone, things have gone downhill. Eltan's taken ill, and he's resting in the room beside us. His healer, Rashad, keeps on saying that there's nothing he can do, but I know better. He's no healer from what I've seen. Anyhow, it don't matter; I've decided to desert the Flaming Fist before things get too hairy. I don't want to lose my life over whatever power struggle is going on in the city.~ #20534 */
  IF ~~ THEN REPLY @6 /* ~Thanks for the information, Kent. Maybe we'll see each other again.~ #20536 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~Why don't you think Rashad's a healer?~ #20537 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8 /* ~All right, I'll see you later. Good luck.~ #20539 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @9 /* ~I followed him one night, all the way into the sewers. There he went into the Undercellar. Why would a healer be found in a whorehouse? I don't know what he was doing there, but it wasn't good, whatever it was. I have to get going before my commander notices that I'm deserting. Perhaps we'll meet again.~ #20540 */
  IF ~~ THEN DO ~EscapeArea()
~ UNSOLVED_JOURNAL @10 /* ~Duke Eltan's Illness
The recent trouble has one of the former guards planning to desert the Flaming Fist. According to Kent, Eltan's healer Rashad frequents a brothel called the Undercellar. The place is so foul that the entrance lies through the city sewers.~ #27145 */ EXIT
END
