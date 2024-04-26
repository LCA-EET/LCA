// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\KESHEE.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\KESHEE.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA150~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Aye there young 'un, how be you this fine day? Come for a stroll about the docks, have ye? A better place for thinking there cannot be. Many's the time I've walked these rails and boards, and me cares just wash away, by gum.~ #19688 */
  IF ~~ THEN REPLY @2 /* ~Have you lived here your whole life?~ #19689 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Any tales of the sea you'd like to share?~ #19690 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~I've no time to talk to you.~ #19699 */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~Not yet. HAW! Not yet, I says! You asked if I had lived here all my life, and I says not yet! I can still make 'em laugh, by gum. That joke used to have the boys on deck rolling around like flounders flopping on the poop deck. Of course they stopped laughing so much a few years back after they had heard it for the thousandth time. Come to think of it, you're not laughing all that much either. Ehh, I'll just go stand over here a while.~ #19711 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~Oh, the sea harbors more tales than you have days left to live, young one. Why, I could go on all night with stories of pirates that sail the Nelanther Isles, or strange merchants with goods that defy description. I wager I know what tale you would be keen on hearing though, the tale of old Balduran himself. A great man he was, and he sailed farther than most of us could dream. 'Twas his coin that built the great wall that protects our fair city, and none of us would be here save for his efforts.~ #19734 */
  IF ~~ THEN REPLY @7 /* ~He sounds like a great man. What happened to him?~ #19736 */ GOTO 4
  IF ~~ THEN REPLY @8 /* ~It sounds as if he was no more than a smuggler whose story has been overinflated through time.~ #19737 */ GOTO 5
  IF ~~ THEN REPLY @9 /* ~Sorry, but I don't have time for a tale as long as this.~ #19738 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2 0.2
  SAY @10 /* ~As you will, but if you've not the patience to listen to the past, your future will be bleak indeed. At least take the time to admire the docks and ships at port. The workmanship is inspiring, even if ye know little of the ways of the sea.~ #19735 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY @11 /* ~As is often the case with great men, no one knows what became of him. He set out one day for the fabled isles of Anchorome and was not seen again. Some occasionally say that they see the rigging of his ship on the horizon, and the more romantic tales speak of him sailing the stars themselves. Many a cynic claims that he simply foundered on some deserted isle, but talk like that around here and you'll likely be fed your teeth. I've talked your ear off, I have. I'll let you be on your way.~ #19739 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @12 /* ~Them's dangerous words around here. The only reason you don't get a slap from me is because I can see you are young and obviously foolish. Experienced at commerce he was, but Balduran was no common smuggler. His efforts paved the way for the founders of this city, and you would do well to display the proper respect. Leave me be; I don't feel like talking to you anymore.~ #19740 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
