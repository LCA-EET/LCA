//Portions of this dialog were created by SilentGuy2011 and used with his expressed permission.
//Check out his DA page at https://www.deviantart.com/silentguy2011, particularly the Baldur's Gate fanfictions.

BEGIN ~XAWTREX~

IF ~  RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~The Sword Coast owes you a debt of gratitude.~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~The crusade never stood a chance against the combined might of the soldiers of Waterdeep and the hero of Baldur's Gate.~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Well met, and well done. You've done the Sword Coast a great service this day.~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(4,4)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~You should come to Waterdeep. See what a real city's like.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_KissReaction
	SAY @0 /* ~Whoo! Get some, hero!~ */
	
	IF ~~ THEN
	EXTERN XAFISTEX XA_KissReaction
END