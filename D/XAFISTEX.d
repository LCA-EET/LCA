//Portions of this dialog were created by SilentGuy2011 and used with his expressed permission.
//Check out his DA page at https://www.deviantart.com/silentguy2011, particularly the Baldur's Gate fanfictions.

BEGIN ~XAFISTEX~

IF ~  RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Baldur's Gate is in your debt once again.~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I bet the Shining Lady rues the day she caught the attention of the hero of Baldur's Gate.~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~That was some fine work you did with Caelar. Your city's proud of you.~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(4,4)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~The Shining Lady picked a fight she couldn't win when she raised arms against you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_KissReaction
	SAY @0 /* ~Get your man, Captain Corwin!~ */
	
	IF ~~ THEN
	EXTERN BDCORWIJ XA_KissEnd
END