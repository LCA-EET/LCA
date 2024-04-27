// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DESTUS.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DESTUS.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA365~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Mmn, hello. You must be the city negotiators... Lemme see on the list here: Emissary... Emissary Tar? Right on time and a pleasure to meet you. My name is Destus Gurn, Assistant Chief Accountant for the Iron Throne's operations on the Sword Coast. Now, just a quick briefing on our negotiating procedures before you head on up the stairs: Thaldorn will be accompanied by a board of six Iron Throne advisors sent to us from abroad: Zhalimar Cloudwulfe, Gardush, Naaman, Diyab, Aasim, and Alai, all of them quite respectable men and eager to meet you. We also have a seventh member on that board today, a Mr. Lyle Espejo. He is there to ensure that things go smoothly in this time of transition. As for the agenda—~ #20324 */
  IF ~~ THEN REPLY @2 /* ~I'm afraid you've mistaken me for someone else. Please, just let me go about my business here.~ #20325 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Yes?~ #20326 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~Please, Mr. Gurn, I have my own copy of the agenda and no desire to waste any more time here than necessary. If you would be so kind as to allow me to proceed upstairs to the negotiations, I would be very grateful.~ #20327 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~You're not Emissary Tar? Then I'm afraid you have no business here and I would urge you to leave the way you came.~ #20328 */
  IF ~~ THEN DO ~EscapeArea()
~ UNSOLVED_JOURNAL @6 /* ~Investigating the Iron Throne
It seems the Iron Throne is negotiating a treaty with the city's Grand Dukes. Is this simple treaty the key to ending all the unrest of the past season, or is it just another link in the long chain of motivations? Will money satisfy the Throne's greed, or is there something more behind it all? I have so many questions. While I feel close to finding answers, I somehow doubt that they will be quite as fulfilling as I hope...~ #26965 */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7 /* ~On the agenda, as you well know, are a discussion of our current offer regarding iron prices and some notes regarding the output of the new mines we have acquired. Preceding all of that, however, Mr. Espejo would like to have a few words with you about the positive change and dynamism, economic and otherwise, that he has been witness to in his recent travels through the Sword Coast region. I do not doubt that you will find it interesting. But I have taken enough of your time. Please proceed upstairs so that the negotiations may begin.~ #20329 */
  IF ~~ THEN DO ~EscapeArea()
~ UNSOLVED_JOURNAL @6 /* ~Investigating the Iron Throne
It seems the Iron Throne is negotiating a treaty with the city's Grand Dukes. Is this simple treaty the key to ending all the unrest of the past season, or is it just another link in the long chain of motivations? Will money satisfy the Throne's greed, or is there something more behind it all? I have so many questions. While I feel close to finding answers, I somehow doubt that they will be quite as fulfilling as I hope...~ #26965 */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @8 /* ~Yes, true. Very well then, Emissary Tar. Proceed upstairs and don't allow me to keep you here a moment longer. Great things are afoot and I am very proud to have met you on behalf of the Iron Throne and I hope, for everyone's sake, that the... negotiations... proceed swiftly, yes, thank you.~ #20330 */
  IF ~~ THEN DO ~EscapeArea()
~ UNSOLVED_JOURNAL @6 /* ~Investigating the Iron Throne
It seems the Iron Throne is negotiating a treaty with the city's Grand Dukes. Is this simple treaty the key to ending all the unrest of the past season, or is it just another link in the long chain of motivations? Will money satisfy the Throne's greed, or is there something more behind it all? I have so many questions. While I feel close to finding answers, I somehow doubt that they will be quite as fulfilling as I hope...~ #26965 */ EXIT
END
