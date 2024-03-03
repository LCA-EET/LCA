// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBW7.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBW7.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA422~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~Frightfully sorry, but you must have "mistakenly" entered the wrong room. Please make haste in your retreat, as I do not wish to make a fuss.~ #8392 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~The Helm and Cloak provides excellent service and quiet atmosphere. I do not wish to repay the house by getting blood on their carpets and disturbing the other guests. To this end, I wish you to retreat from my room before I call the house guards.~ #8393 */
  IF ~~ THEN REPLY @3 /* ~Sorry, lady, but we're here for your money, or your life. It's your choice and you better make it quick.~ #11249 */ GOTO 7
  IF ~~ THEN REPLY @4 /* ~We're sorry for bothering you. We'll be on our way out.~ #11250 */ GOTO 6
  IF ~~ THEN REPLY @5 /* ~Who are you to be so, that you have guards posted at your door?~ #11251 */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from:
  SAY @6 /* ~By the planes, who the blazes are you! Get out of my room!~ #8394 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @7 /* ~I have no recourse! Guards!~ #8395 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @8 /* ~Even though it is not decent for me to mingle with those beneath my station, I find that you possess a certain irresistible charm. I am willing to tell whatever you wish to hear. Perhaps you'd like to know about the last ball I attended. It was wondrous; I was at the forefront of everyone's mind.~ #8396 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 5 // from:
  SAY @9 /* ~I'll not have you near me!~ #9127 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @10 /* ~Good, and don't come back!~ #11252 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY @11 /* ~You don't know what you do! I am from the great nation of Amn, and am a guest of this city. Take my money, but know that you won't get away with this for long.~ #11253 */
  IF ~~ THEN DO ~GiveGoldForce(189)
ReputationInc(-2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY @12 /* ~I am Sarah, an emissary from the nation of Amn. I have been sent to this barbaric city to help bridge the misunderstandings between our two peoples. Now that you know of my importance, get out of my room!~ #11254 */
  IF ~~ THEN EXIT
END
