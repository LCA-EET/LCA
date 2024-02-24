// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\TAXEK.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\TAXEK.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA348~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You there, stand where you are! Dammit, Michael, someone's walked in on us. Okay you, we don't want any trouble. Maybe this is your house, but right now all we want to do is leave. Don't give us any trouble, and you'll walk away from this a little poorer. Otherwise you'll be dead.~ #18898 */
  IF ~~ THEN REPLY @2 /* ~You broke into my house! You think I'm going to let you go on this one?! THINK AGAIN!~ #18899 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~You got us pegged wrong, we're thieves like you.~ #18900 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~We're not the owners of this house, but we're not about to let you make off with the hard earned possessions of whomever lives here.~ #10093 */ GOTO 6
  IF ~~ THEN REPLY @5 /* ~Take whatever you want, we don't want any trouble. Just please don't hurt us.~ #11862 */ DO ~ActionOverride("MICHAEL",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~Hey now, don't get so uptight about this whole thing. Why don't we just forget this ever happened, and we'll be out of your faces?~ #18901 */
  IF ~~ THEN REPLY @7 /* ~Hey, we're just kiddin' with ya. We're thieves like you.~ #18902 */ GOTO 3
  IF ~~ THEN REPLY @8 /* ~No easy way out for you. Give us everything you took, plus anything else you have. Do it now, or you're both dead. We aren't heavily armed just to look pretty.~ #18903 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @9 /* ~Okay, okay, here's everything we took, plus some more. Michael! Let's get outta here 'fore they change their minds.~ #18904 */
  IF ~~ THEN DO ~GiveGoldForce(210)
ActionOverride("MICHAEL",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 0.1
  SAY @10 /* ~You're thieves? I don't remember ever seeing you at the Guild. If you're thieves, then you'd probably remember the password to the main door. Well! What's the password?~ #18905 */
  IF ~~ THEN REPLY @11 /* ~Snail?~ #18906 */ GOTO 4
  IF ~~ THEN REPLY @12 /* ~Orgy?~ #18907 */ GOTO 4
  IF ~~ THEN REPLY @13 /* ~Death?~ #18908 */ GOTO 4
  IF ~~ THEN REPLY @14 /* ~Fafhrd?~ #18909 */ GOTO 5
  IF ~~ THEN REPLY @15 /* ~Eltan?~ #18910 */ GOTO 4
  IF ~~ THEN REPLY @16 /* ~Shadow?~ #18911 */ GOTO 4
  IF ~~ THEN REPLY @17 /* ~Balduran?~ #18912 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.6 3.5 3.4 3.2 3.1 3.0
  SAY @18 /* ~You got that wrong. I think you're lying. I think you're freelancing. There's only one way to deal with freelancers.~ #18913 */
  IF ~~ THEN DO ~ActionOverride("MICHAEL",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY @19 /* ~Okay, you got it right. Well, this was certainly the mix up. Go crazy in here, but I think we've already got most of the good stuff.~ #18914 */
  IF ~~ THEN DO ~ActionOverride("MICHAEL",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY @20 /* ~Double standards, huh? You can break into the house, but we thieves can't! Well, I don't think that's the way it's gonna be. Let's have at 'em, Michael.~ #10094 */
  IF ~~ THEN DO ~ActionOverride("MICHAEL",Enemy())
Enemy()
~ EXIT
END
