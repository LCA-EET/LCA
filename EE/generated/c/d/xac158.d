// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDMERC02.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDMERC02.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC158~

IF ~  GlobalLT("bd_plot","global",400)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Yeah? What do you want? ~ #47821 */
  IF ~~ THEN REPLY @2 /* ~Good <DAYNIGHTALL> to you. I seek Caelar Argent. Do you know where I might find her?~ #47822 */ GOTO 1
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
~ THEN REPLY @3 /* ~Do you know Valis or Corinth? One of them is lying about the other. I'm trying to figure out which is which.~ #47823 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~I have an urgent message for the Shining Lady. Tell me where she is.~ #47824 */ GOTO 1
  IF ~~ THEN REPLY @5 /* ~I want many things, none of which you can provide.~ #47825 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.0
  SAY @6 /* ~She's in the castle, but you'll not find it easy to reach her. And by not easy, I really mean impossible. She speaks to no one but Hephernaan and the Revered Brothers of late. But hey, luck to you.~ #47827 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @7 /* ~I'm sorry to hear that. But as I can provide nothing to you, perhaps you'd best push off, yeah?~ #47828 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @8 /* ~Corinth is your best bet there. Valis is many things, most of them unpleasant, but she's no liar. That one doesn't have the patience for deception, or much else, truth be told.~ #47829 */
  IF ~~ THEN REPLY @9 /* ~Thank you. That's very helpful.~ #47830 */ GOTO 4
  IF ~~ THEN REPLY @10 /* ~I know exactly what you mean. I talked to her. Thanks for the help.~ #47831 */ GOTO 4
  IF ~~ THEN REPLY @11 /* ~You see much but speak little. I like that. I am in your debt.~ #47832 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.1 3.0
  SAY @12 /* ~Weren't nothing. If it were something, I'd have charged you for it. Be off with you now. ~ #47833 */
  IF ~~ THEN EXIT
END
