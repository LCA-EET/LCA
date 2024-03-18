// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHVERT.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHVERT.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA302~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Schtopp where you are, pale child.~ #19878 */
  IF ~~ THEN REPLY @2 /* ~Your flesh! It's all green and alive and—and crawling! What has done this to you?!~ #19886 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Stand aside and grant me passage—I have no fear of ye.~ #19894 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~I have heard that foul things breed in these sewer's airs and now I have seen it for my own eyes. Let me put you out of your misery, whatever you may be.~ #19904 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~Foolisch one, you mishtake a... schlopshe... a blesching for a curshe... schollpsh... What isss thish meager flesch in the facshe of shusch terrific beauty? It isss Schlumpsha who hassh done thisch to me and you would be blesshed schould he grant you the shame priveledge...~ #19913 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~Aye, scho it be, then. Scho it be... All are welcome here amongsht the schewerfolk. Heh, scho it be...~ #19914 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @7 /* ~Hah, weak abovelings! We Children of Schlumpsha have freed ourshelvesss from the cloying fearsh of death. Hah heh hee hee heeeeee...~ #19915 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
