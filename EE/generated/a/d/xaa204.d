// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LARZE.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LARZE.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA204~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Huurm. I be Larze. You be <CHARNAME>. Don't try deny it. You should not have come to Baldur's Gate. You given many warning before, but you ignore them. Now you must pay. Sorry, but Larze must kill.~ #18259 */
  IF ~~ THEN REPLY @2 /* ~Wait one moment, you big oaf. Why would you think that I'm <CHARNAME>? Do I look like I could be that kind of hero? <CHARNAME> is a juggernaut of destruction, with flaming eyes and a roaring voice. My companions and I, we're just normal folks.~ #18262 */ GOTO 3
  IF ~~ THEN REPLY @3 /* ~I'm really starting to get tired of threats. Everywhere I go, I'm threatened. Well, you big lug, you're going to end up like all the rest of them.~ #18263 */ GOTO 1
  IF ~~ THEN REPLY @4 /* ~How about you just let us go? I'll be walking out that door right now... okay?~ #18264 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5 /* ~Larze will crush you now, crush you to paste.~ #18265 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6 /* ~NO! Larze must kill you, and take heads. Heads important, 'cause they are how Larze prove he kill you. Must not forget heads.~ #18266 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY @7 /* ~Huh? But you must be <CHARNAME>. Me see picture, and it look like you. It had no fire eyes or big voice. Though pictures don't have voices. Hmm, I confused.~ #18267 */
  IF ~~ THEN REPLY @8 /* ~That's very good, we'll just be taking our leave of you now. Have a good day, Mr. Larze.~ #18269 */ GOTO 4
  IF ~~ THEN REPLY @9 /* ~Larze, my poor confused ogre. There is only one thing for you to do. You have to go back and take a closer look at the picture. I'm sure once you've had a second look, you'll know what a big mistake you've made. Now run along, we'll be waiting right here.~ #18270 */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10 /* ~You LIE! You lie to Larze, to try to save life. Larze will crush you now, then he will rip off all of your heads.~ #18271 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @11 /* ~Yes! Good idea, Larze will find picture and see for sure. You will wait here until Larze gets back.~ #18272 */
  IF ~~ THEN DO ~AddexperienceParty(900)
EscapeArea()
~ EXIT
END
