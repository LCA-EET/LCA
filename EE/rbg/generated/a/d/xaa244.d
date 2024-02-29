// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GHORAK.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\GHORAK.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA244~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 3 5 even though they appear after this state */
~  Global("HelpGhorak","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Diseased! Diseased! Stand well back... Diseased! Diseased!~ #15216 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("HelpAgnasia","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~For your own health and that of your children, come no closer. I was cursed with this fell disease as punishment for my wickedness... Diseased! Diseased! Stand well back...~ #15217 */
  IF ~~ THEN REPLY @3 /* ~Let us cure you of your affliction.~ #17177 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~I'm sorry, but there is little that we can do to help you.~ #17178 */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5 /* ~No, your potions and magics are of little use. The only way to cure this sickness is to right the wrongs of the past. Behind a painting at the Three Old Kegs, you will find the skull of my brother, Kereph. Take it to Agnasia in The Lady's Hall. She will know what to do with it.~ #15221 */
  IF ~~ THEN DO ~SetGlobal("HelpGhorak","GLOBAL",1)
~ UNSOLVED_JOURNAL @6 /* ~Ghorak the Diseased
When I offered to cure Ghorak the diseased, he asked me to fetch his brother's skull from its hiding place behind a painting in the Three Old Kegs. Then Ghorak wants me to present Kereph's skull to Agnasia in The Lady's Hall. I can't wait to hear what she has to say about that.~ #27128 */ EXIT
END

IF WEIGHT #1 ~  Global("HelpAgnasia","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY @7 /* ~I— I am cured. After all these long years of rotting away, an end has come. Blessed be Tymora and may my brother at last have peace. You are kinder than you'll ever know.~ #15222 */
  IF ~~ THEN DO ~EraseJournalEntry(@6)
EraseJournalEntry(@9)
Polymorph(FIGHTER_MALE_HUMAN)
~ SOLVED_JOURNAL @8 /* ~Ghorak the Cured!
As expected, returning Kereph's skull to a follower of Tymora lifted the wasting curse from Ghorak. At last, both brothers have found peace.~ #27130 */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 5 even though they appear after this state */
~  True()
~ THEN BEGIN 4 // from:
  SAY @10 /* ~Not diseased! Not diseased! Come as close as you want... Not diseased! Not diseased!~ #15223 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  False()
~ THEN BEGIN 5 // from:
  SAY @11 /* ~I have nothing but my past and, I assure you, you do not want it.~ #15224 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
