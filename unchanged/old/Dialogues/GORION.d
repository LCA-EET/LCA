// creator  : weidu (version 24700)
// argument : GORION.DLG
// game     : .
// source   : ./override/GORION.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~GORION~

IF ~  Detect(Player1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~This is very unnerving, I know, but you must trust me. It is very important that you pack your possessions so that we may leave Candlekeep immediately. Hurry, for there is no time to tarry! The keep is well protected but not invulnerable.~ #200903 */
  IF ~~ THEN REPLY @2 /* ~I'm ready to go right now.~ #215592 */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ch1cut01",FALSE)
~ EXIT
  IF ~~ THEN REPLY @3 /* ~Just wait a little longer. There are a few more things I must do.~ #215593 */ DO ~SetGlobal("TalkedToGorion","GLOBAL",1)
  GiveItem("LCSTDAG",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY @4 /* ~Please father, tell me where we will be going.~ #216424 */ GOTO 9
  IF ~~ THEN REPLY @5 /* ~What could possibly harm us here? This place is a fortress, and guarded beyond measure.~ #216425 */ GOTO 8
  IF ~~ THEN REPLY @6 /* ~What should I bring with me on this journey? If you would just give some clue as to what I will need...~ #216433 */ GOTO 7
END

IF ~~ THEN BEGIN 1 // from:
  SAY @7 /* ~Listen carefully! If we ever become separated, it is imperative that you make your way to the Friendly Arm Inn. There you will meet Khalid and Jaheira. They have long been my friends, and you can trust them.~ #202779 */
  IF ~~ THEN GOTO 2
END

IF ~  False()
~ THEN BEGIN 2 // from: 1.0
  SAY @8 /* ~Let's hurry, child! The night can only get worse so we must find shelter soon. Don't worry, I will explain everything as soon as there is time.~ #202910 */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @9 /* ~Wait! There is something wrong. We are in an ambush. Prepare yourself!~ #202911 */
  IF ~~ THEN EXTERN ~SAREVO~ 22
END

IF ~~ THEN BEGIN 4 // from:
  SAY @10 /* ~You're a fool if you believe I would trust your benevolence. Step aside and you and your lackeys will be unhurt.~ [GORIN12] #202913 */
  IF ~~ THEN EXTERN ~SAREVO~ 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY @11 /* ~Run, child! Get out of here!~ #202914 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @12 /* ~I am sorry for ~ #216040 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 9.3 8.3 0.4
  SAY @13 /* ~My dear child, you should know yourself well enough to purchase the gear you need. I have given you what I can spare, so hurry off to the inn and speak with Winthrop. Use your skills as a reference and buy what basics you must, though spend wisely. His prices are fair, but you may not have enough gold to purchase all that you would want.~ #216434 */
  IF ~~ THEN REPLY @2 /* ~I'm ready to go right now.~ #216435 */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ch1cut01",FALSE)
~ EXIT
  IF ~~ THEN REPLY @3 /* ~Just wait a little longer. There are a few more things I must do.~ #216436 */ DO ~SetGlobal("TalkedToGorion","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY @4 /* ~Please father, tell me where we will be going.~ #216437 */ GOTO 9
  IF ~~ THEN REPLY @5 /* ~What could possibly harm us here? This place is a fortress, and guarded beyond measure.~ #216438 */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 9.2 7.3 0.3
  SAY @14 /* ~Candlekeep is indeed a formidable obstacle for ne'er-do-wells, but it is not insurmountable. No matter how thick the mesh, at least one mosquito always finds its way through. No my child, we must leave as soon as possible, for our safety, and for that of our friends here.~ #216439 */
  IF ~~ THEN REPLY @2 /* ~I'm ready to go right now.~ #216440 */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ch1cut01",FALSE)
~ EXIT
  IF ~~ THEN REPLY @3 /* ~Just wait a little longer. There are a few more things I must do.~ #216441 */ DO ~SetGlobal("TalkedToGorion","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY @4 /* ~Please father, tell me where we will be going.~ #216442 */ GOTO 9
  IF ~~ THEN REPLY @15 /* ~What should I bring with me on this journey? If you would just give some clue as to what I will need.~ #216443 */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.2 7.2 0.2
  SAY @16 /* ~Alas, I cannot, for I have not truly decided yet. All that is certain is that we will be far safer on the move. Perhaps the woods might offer some secluded security, or perhaps the city of Baldur's Gate would offer cover amidst its teeming throngs of people. I do not know where we shall end up, but I have a few friends here and there. Hmm, I will think on this.~ #216444 */
  IF ~~ THEN REPLY @2 /* ~I'm ready to go right now.~ #216445 */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("ch1cut01",FALSE)
~ EXIT
  IF ~~ THEN REPLY @3 /* ~Just wait a little longer. There are a few more things I must do.~ #216446 */ DO ~SetGlobal("TalkedToGorion","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY @5 /* ~What could possibly harm us here? This place is a fortress, and guarded beyond measure.~ #216447 */ GOTO 8
  IF ~~ THEN REPLY @6 /* ~What should I bring with me on this journey? If you would just give some clue as to what I will need...~ #216448 */ GOTO 7
END
