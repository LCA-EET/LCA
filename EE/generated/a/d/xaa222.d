// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SAILJOS.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SAILJOS.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA222~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~What do ya do wit' a drunken sailor?
What do ya do wit' a drunken sailor?
What do ya do wit' a drunken sailor,
Er-lye in the marnin'?~ #19629 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Put 'im in the lockup 'til 'e's sober!
Put 'im in the lockup 'til 'e's sober!
Put 'im in the lockup 'til 'e's sober,
Er-lye in the marnin'!~ #19630 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(2)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Strap 'im to the anchor an' throw 'im over!
Strap 'im to the anchor an' throw 'im over!
Strap 'im to the anchor an' throw 'im over,
Er-lye in the marnin'!~ #19631 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(3)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Strip 'im to 'is skivvies an' piss all over!
Strip 'im to 'is skivvies an' piss all over!
Strip 'im to 'is skivvies an' piss all over,
Er-lye in the marnin'!~ #19632 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 4 // from:
  SAY @5 /* ~Stuff 'im in a crate an' send 'im to 'is mother!
Stuff 'im in a crate an' send 'im to 'is mother!
Stuff 'im in a crate an' send 'im to 'is mother
Er-lye in the marnin'!~ #19633 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
