// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DRELIK.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DRELIK.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA334~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You shouldn't have broken into my master's home. Master Jardak will be quite displeased when he learns that ruffians have disturbed the order of his house.~ #18796 */
  IF ~~ THEN REPLY @2 /* ~Who the hell are you, and why are you dressed in such silly colors?~ #18798 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Tell your master Jardak that we want to talk to him right away.~ #18800 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~We'll be leaving now. Sorry if we made a mess, but I'm sure you won't be that hard up to just clean up after us.~ #18802 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~My name is Drelik. But really, my name or the clothes I choose to wear are of no consequence. Of consequence here is that you have broken into my master's house and made a mess. I think I'll have to clean up the mess... permanently.~ #18803 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~Jardak will not see anyone, especially not a bunch of hooligans. Well, lest I seem rude, I had better introduce myself. My name is Drelik. Now that you know my name, I can go about the task of cleaning up the mess you've made, which incidentally includes removing you from the premises.~ #18805 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @7 /* ~Oh, no! You won't be leaving now... not after the mess you've made. My master has given specific instructions that anyone who breaks into his dwelling is not to go anywhere... ever again.~ #18808 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
