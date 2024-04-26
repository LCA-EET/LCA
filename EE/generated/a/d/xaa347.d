// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\CONNOL.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\CONNOL.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA347~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Glad to make your acquaintance there, by golly. What might ye be needing from ol' Connoly Finn? A tale of treachery amidst the nobles, or a bit o' back-alley skullduggery? I hear many things while tipping a bit of ale.~ #19489 */
  IF ~~ THEN REPLY @2 /* ~What do you know of the Iron Throne and their activities here in town?~ #19522 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Tell me what the common folk are talking about these days.~ #19533 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~What have you heard bandied about the bar lately?~ #19619 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~The Iron wha...? I know little of merchants and business. Tales of stuffy old storekeeps don't make for good ale tales. Now, if you'd wanted a ribald story of a noble lass and the guttersnipe roustabout she was seeing on the sly, then I could have helped you. Nothing more than fluff to entertain for a moment or more.~ #19523 */
  IF ~~ THEN REPLY @6 /* ~Then tell me what the common folk are talking about these days.~ #19832 */ GOTO 2
  IF ~~ THEN REPLY @7 /* ~What bullish tales have been thrown about the bar lately?~ #19833 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 0.1
  SAY @8 /* ~The common folk? I don't know anyone that likes to be referred to in that way. I think most would tell you that the nobles are much less interesting than the "common folk." We are free to go where we wish and speak to whomever we please. Nobles must worry about being seen with the "wrong sort," or being caught in the "wrong place." Many a tale has been spilled about the hapless efforts of noble fools trying to cover their exploits. Many a tale in this here bar actually.~ #19534 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 0.2
  SAY @9 /* ~Oh, we've many a tale of the Undercellar and those that try to go there unseen. Oft was the time I bumped against a patron so as to "accidentally" drop the hood from their face. More disreputable folk than I have made quite a tidy living soliciting "donations" from those that wished to remain anonymous. I would advise against the practice, however. If they can afford to pay ye, they can also afford to have someone else remove ye.~ #19622 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
