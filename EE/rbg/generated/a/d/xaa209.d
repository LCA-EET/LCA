// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\TICK.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\TICK.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA209~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hey, you look like sewer-running types if ever I saw any.~ #18864 */
  IF ~~ THEN REPLY @2 /* ~Watch your mouth before I bust it on your pearly whites, buddy.~ #18865 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~What do you mean?~ #18866 */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Hey, no offense, folks. Sewers are just the urban man's dungeon, you get it? And you folks don't look like you're here on no fancy-dancy shopping trip.~ #18867 */
  IF ~~ THEN REPLY @5 /* ~Who do you think you're calling fancy-dancy?~ #18868 */ GOTO 2
  IF ~~ THEN REPLY @6 /* ~Urban man's dungeon, eh? Why don't you show us the way in?~ #18869 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @7 /* ~I didn't call no one fancy-dancy, man! It's just the way I talk! I mean you guys are so cool, you swish when you walk, man— Oh, no! I didn't call you no... errr... forget about it, please? I didn't mean no harm by it. Aw hell, I gotta get me one of them dictionaries and learn me some Common, man...~ #18870 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.0 1.1
  SAY @8 /* ~No sense in me showing you. There's entrances all over the place. Just look for the sewer gratings. Most of them pop right up and you can shimmy on down, man. As I said, urban man's dungeon.~ #18871 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY @9 /* ~Sewer-running, kiddo. Takin' a crawl through the urban man's dungeon, all right?~ #18872 */
  IF ~~ THEN REPLY @10 /* ~Urban man's dungeon, is it? Why don't you show us how to get in?~ #18873 */ GOTO 3
  IF ~~ THEN REPLY @11 /* ~Who are you calling kiddo?~ #18874 */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @12 /* ~I didn't call no one kiddo, man! It's just the way I talk! I mean you guys are so cool, you swish when you walk, man— Oh, no! I didn't call you no... uhhh... forget it. I didn't mean no harm by it. Aw hell, I gotta get me one of them dictionaries and learn me some Common, man...~ #18875 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
