// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDMERC03.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDMERC03.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC118~

IF ~  GlobalLT("bd_plot","global",400)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~There something I can help you with? ~ #47834 */
  IF ~~ THEN REPLY @2 /* ~I seek the Lady Caelar Argent.~ #47835 */ GOTO 7
  IF ~  GlobalGT("bd_trial_plot","bd4000",0)
GlobalLT("bd_trial_plot","bd4000",5)
~ THEN REPLY @3 /* ~Only if you have any insight into either Valis or Corinth.~ #47836 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~Nothing at all.~ #47837 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY @5 /* ~Move along, then. Make yourself useful. But do it somewhere else.~ #47838 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~Give it a day, maybe two, and it'll be the gods' problem. Valis'll put an arrow in Corinth's back first chance she gets. It's a shame, really. He's not a bad sort. Mind you, I wouldn't want to be partnered with him. Lazy bugger, or so they say.~ #47840 */
  IF ~~ THEN REPLY @7 /* ~I've heard people say that, yes.~ #47841 */ GOTO 5
  IF ~~ THEN REPLY @8 /* ~Who's they?~ #47842 */ GOTO 3
  IF ~~ THEN REPLY @9 /* ~They say that, do they?~ #47843 */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @10 /* ~Nobody. Just people. You know.~ #47844 */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 7.0 6.0 5.0 3.0
  SAY @11 /* ~Now go, be about your business. You don't want to get caught standing round talking to me. That's just asking someone to rope you into doing something you'd rather not be doing. Take it easy—easy as you can.~ #47845 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY @12 /* ~Like I say, it'll all sort itself out soon enough.~ #47846 */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY @13 /* ~They say it, all right. About Corinth? They say it a lot.~ #47847 */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 0.0
  SAY @14 /* ~She's in the castle, but you won't be able to get to her. They say she only talks to that priest of hers, whatsisname, the Revered whatever Hephernaan.~ #47848 */
  IF ~~ THEN GOTO 4
END
