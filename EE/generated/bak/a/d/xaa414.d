// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\EMITAR.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\EMITAR.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA414~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~At last, someone who looks like they could be of some assistance. The assorted boobs and dimwits around here have been of very little help.~ #20279 */
  IF ~~ THEN REPLY @2 /* ~Of course. How may I assist you, ma'am?~ #20280 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~I'm afraid you've mistaken us for someone else. I'm Dimwit, this is my good friend Boob, and behind me you'll find Brainless and Moron. How do you do?~ #20282 */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Ma'am this, ma'am that, I have little desire to suffer through more of your flat gentility. You may call me Emissary Tar and direct me towards the nearest staircase. I have some important business to conduct on the fifth floor on behalf of the Grand Dukes.~ #20287 */
  IF ~~ THEN REPLY @5 /* ~Ma— Emissary Tar, would it be untoward of me to inquire as to the nature of your business on the fifth floor?~ #20293 */ GOTO 2
  IF ~~ THEN REPLY @6 /* ~The stairs? Why yes, they lie behind me, not far from where we stand at all.~ #20296 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~Please, whatever your business there may be, I urge you to reconsider. I have a bad sense about this place and would worry for your safety there.~ #20301 */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 5.0 1.0
  SAY @8 /* ~It is hardly a secret. The Grand Dukes have sent me to negotiate a new iron treaty with Thaldorn. It appears that the Merchants' League and the Seven Suns have voluntarily granted the Iron Throne temporary control over their mines in order to simplify the city's supply structure and thereby strengthen the war effort... should it come to that. I am here to ensure that we have access to that iron at a favorable price. The Iron Throne has been more than cooperative with us to date and I doubt that they will change their tune now. Now, if you'll excuse me, I have no intention of being late for my negotiations.~ #20298 */
  IF ~~ THEN DO ~EscapeArea()
~ UNSOLVED_JOURNAL @9 /* ~Investigating the Iron Throne
My chance meeting with the Grand Dukes' chief negotiator, Emissary Tar, has provided me with new clues. The Merchants' League and the Seven Suns have temporarily relinquished their mines to the Iron Throne in support of the coming war effort. They may find the "temporary" loan becomes all too permanent.~ #27045 */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 5.1 1.1
  SAY @10 /* ~Thank you and goodbye.~ #20300 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 5.2 1.2
  SAY @11 /* ~How foolishly chivalrous of you, but I can take care of myself, thank you very much. Besides, I have an iron treaty to negotiate with Thaldorn, and the Grand Dukes would hardly be pleased if I abandoned such an important duty for the likes of you, now, would they? If you insist on being as much of a boob and a dimwit as the others, then I shall find the silly stairs on my own.~ #20302 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY @12 /* ~My apologies. I have a tendency of coming across as a bit gruff. It comes with the title of Chief Negotiator for the Grand Dukes, I'm afraid. You may call me Emissary Tar. Now please, if we could start over. Where may I find the stairs to the fifth floor as it seems I have lost them entirely?~ #20306 */
  IF ~~ THEN REPLY @13 /* ~Emissary Tar, would it be untoward of me to inquire as to the nature of your business on the fifth floor?~ #20308 */ GOTO 2
  IF ~~ THEN REPLY @14 /* ~Of course. The stairs lie behind me, not far from where we now stand.~ #20309 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~Please, whatever your business there may be, I urge you to reconsider. I have a bad sense about this place and would worry for your safety there.~ #20310 */ GOTO 4
END
