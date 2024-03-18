// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\WIVEN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\WIVEN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA310~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Down with your weapons, NOW! Pardon the cliché, but this can be quick and easy, or long and painful. What will it be?~ #18880 */
  IF ~~ THEN REPLY @2 /* ~I don't see anyone but you. If you're a one-woman ambush, you can't expect us to give up.~ #18881 */ GOTO 5
  IF ~~ THEN REPLY @3 /* ~Okay, okay, just ease off with your weapon. What is it that you want?~ #18882 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4 /* ~My demands are simple. Give me all your money, and you get to live. Be a hero, and you get to die.~ #18883 */
  IF ~~ THEN REPLY @5 /* ~Whose coffers are we feeding, if it ain't too rude to ask?~ #18884 */ GOTO 3
  IF ~~ THEN REPLY @6 /* ~Okay, here's all of our money. Geez, you'd think I'd be safe from bandits in the city.~ #18886 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @7 /* ~I'm not a bandit, I'm a member of the Thieves' Guild. Thanks for the money anyhow. Goodbye.~ #18887 */
  IF ~~ THEN DO ~TakePartyGold(200000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY @8 /* ~Your money goes to the Thieves' Guild. You look to be newcomers, so think of this as your initiation to Baldur's Gate.~ #18888 */
  IF ~~ THEN REPLY @9 /* ~Well, I'm not about to give all my money to one woman, so it would be best for you to draw your blade so that we can settle this nice and quick.~ #18890 */ GOTO 5
  IF ~~ THEN REPLY @10 /* ~All right, here's my money.~ #18891 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 5.1 3.1
  SAY @11 /* ~Thank you for your generous donation. See ya.~ #18892 */
  IF ~~ THEN DO ~TakePartyGold(200000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 0.0
  SAY @12 /* ~Don't you fret. I'm not a one-woman ambush, there are three more of my friends hidden among the shadows. We're the best the Thieves' Guild's got. If you want to give us trouble, then don't think you'll be walking out of here in one piece.~ #18894 */
  IF ~~ THEN REPLY @13 /* ~I'm sure you have lots of invisible friends, lady, but they don't scare us. Draw steel so that we can settle this little dilemma.~ #18895 */ GOTO 6
  IF ~~ THEN REPLY @14 /* ~I give, I give. Let's just finish this up quickly. Here's my money.~ #18896 */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @15 /* ~It's too bad it comes to this. All right, boys, take 'em out!~ #18897 */
  IF ~~ THEN DO ~CreateCreature("DIRK",[307.580],S)
CreateCreature("MEAKIN",[737.402],S)
CreateCreature("SATH",[437.364],S)
Enemy()
~ EXIT
END
