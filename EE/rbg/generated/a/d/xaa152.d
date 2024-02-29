// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\KERRAC.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\KERRAC.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA152~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Ho there, watch your step on the wharfs hereabouts. The sea spray can make the cobbles a touch treacherous... My name is Kerrachus. Is there anything I can help you with?~ #18795 */
  IF ~~ THEN REPLY @2 /* ~What do you do here?~ #18797 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~I've never seen such a big city!~ #18799 */ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Aye, I be the dukes' own dockhand, if you will... Well, all right, I'm just a dockhand like any other, but I've been aboard the royal galleys to unload wares from the New World.~ #18801 */
  IF ~~ THEN REPLY @5 /* ~A "New World"? Is there some sort of dimensional portal in the middle of the sea through which you pass to get there?~ #18804 */ GOTO 2
  IF ~~ THEN REPLY @6 /* ~Well, you shall always have the title of Dockhand to the Dukes in my mind, Kerrachus. Alas, I cannot tarry here. Perhaps we'll talk another day.~ #18806 */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @7 /* ~ 'Tis better yet! They say now that the world is no longer flat, that it has become round, a perfect sphere wrapped 'round itself like a wizard's crystal. We perch atop its upright half and the New World of Maztica clings to its underside like so many bats! Someday I shall sneak aboard one of these ships that I may see such wonders!~ #18807 */
  IF ~~ THEN REPLY @8 /* ~Your New World is no hero's quest but rather a blind fool's errand. I have read that between the brutality of the Flaming Fist and the witless terror of Amn, your precious New World has been coated with the blood of its innocents ten times over!~ #18809 */ GOTO 3
  IF ~~ THEN REPLY @9 /* ~Your ravings breathe with more fantasy than fact! I will stick to my theories of dimensions and portals for, if nothing else, they contain a greater potential for truth than your fictions!~ #18811 */ GOTO 4
  IF ~~ THEN REPLY @10 /* ~Hurrah to your New World, then, Kerrachus, whatever shape it takes. Alas, I cannot tarry here. Perhaps we'll talk another day.~ #10274 */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @11 /* ~Aye, the New World's conquerors may be fools but its historians shall be wiser. Regardless of how red run the rivers now, the pages of history shall read only as we write them: rivers pristine and blue and a lush and open continent void of all inhabitants. Therein lies the secret strength of empires—they can afford the folly of constructed memories.~ #18815 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @12 /* ~Nothing changes with as much rapidity and stealth as the iron truths of science...~ #18817 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 1.1
  SAY @13 /* ~If I haven't stowed myself away in the hold of one of these ships in your absence, that is.~ #18818 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @14 /* ~True, but they say Waterdeep to the north is even ten times the size. I hope to sail there someday and rest awhile in its bustling port.~ #18819 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
