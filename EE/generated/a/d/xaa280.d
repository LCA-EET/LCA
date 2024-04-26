// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DRATAN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DRATAN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA280~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Where do you think you're going?~ #20220 */
  IF ~~ THEN REPLY @2 /* ~Upstairs. Where do you think you're going?~ #20221 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~The fifth floor. Sarevok asked us to deliver an important message to his acolytes.~ #20222 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Somewhere far away from wise-crackers like yerself, I hope. Guards, up the stairs! We have intruders!~ #20223 */
  IF ~~ THEN DO ~CreateCreature("IRONGUAR",[507.838],S)
CreateCreature("IRONGUAR",[538.898],S)
CreateCreature("IRONGUAR",[679.216],S)
CreateCreature("IRONGUAR",[751.959],S)
CreateCreature("IRONGU",[992.858],S)
CreateCreature("IRONGU",[690.276],S)
CreateCreature("IRONGU",[242.408],S)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~Hmph. Better you than me. Working with that crowd can be downright creepy, some days.~ #20227 */
  IF ~~ THEN REPLY @6 /* ~Creepy, are they? I'll be sure to pass that on.~ #20233 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~Creepy? How do you mean?~ #20234 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8 /* ~I—I spoke out of—out of turn. My apologies, I'm—I'm very sorry, sir—ma'am—sir! Don't tell them. Please, you don't know what they'll do— They're so good, they're so very good, they're not creepy at all, I'm sorry—~ #20237 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @9 /* ~I seen people go up there with—with one face and—and come back down with another. I don't know how else to say it. I got a keen eye for faces, I do, and I think—I think them people going up and down know it, too, 'cause one time one of them caught me looking at him and he winked right at me and the... and he changed the colors of his left eye, right as I was watching him! It started out a chocolate brown but then it went all quicksilver for a moment, like the mercury the mages play with, and then he was gone and out the door, laughing his high-pitched laugh.~ #20242 */
  IF ~~ THEN REPLY @10 /* ~Who are these people?~ #20248 */ GOTO 5
  IF ~~ THEN REPLY @11 /* ~Well, mark my eyes now and mark them well. If they go all quicksilver when I come back down, take that dagger from your belt and gouge the offending eye from my skull quick as lightning because it won't be my own. I don't know what's going on, but you're right; it's creepy and, had I a choice, I'd want no part of it.~ #20251 */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12 /* ~Competition of the Iron Throne. Mostly members of the Seven Suns trading coster or the Merchants' League. They have both been attempting to negotiate a tentative peace between the different economic powers in the city. I fear it's not peace they're finding, however... at least not of the type they came looking for. Something's going on upstairs and I'd rather not think about what it could be.~ #20254 */
  IF ~~ THEN DO ~EscapeArea()
~ UNSOLVED_JOURNAL @13 /* ~Investigating the Iron Throne
Something is rotten in the Iron Throne tower, something that is cancerous and malignant and... and growing. Dra'tan, one of the tower guards, has informed me of something most dire. It seems that the Throne has been inviting their competitors in the Seven Suns and the Merchants' League to the tower's fifth floor and then doing something horrible to them. Are they being turned into zombies of a sort; are they being poisoned with a powerful drug; are they being replaced somehow? I don't know. Regardless, the implications are staggering and, to be honest, terrifying. I must steel myself and continue my ascent, however, for I know not what else to do...~ #26991 */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @14 /* ~Aye, friend. I wish we all had no part in it... But I have marked your eyes and your face as well. I pray they do not shift on me.~ #20255 */
  IF ~~ THEN DO ~EscapeArea()
~ UNSOLVED_JOURNAL @13 /* ~Investigating the Iron Throne
Something is rotten in the Iron Throne tower, something that is cancerous and malignant and... and growing. Dra'tan, one of the tower guards, has informed me of something most dire. It seems that the Throne has been inviting their competitors in the Seven Suns and the Merchants' League to the tower's fifth floor and then doing something horrible to them. Are they being turned into zombies of a sort; are they being poisoned with a powerful drug; are they being replaced somehow? I don't know. Regardless, the implications are staggering and, to be honest, terrifying. I must steel myself and continue my ascent, however, for I know not what else to do...~ #26991 */ EXIT
END
