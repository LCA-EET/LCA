// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SUTHIE.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SUTHIE.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA135~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 7 8 even though they appear after this state */
~  Global("Chapter","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~ 'Ere, friend. A thief n'er had it so good as here at Sanctuary. That Silence be a saint if e're my eye have seen one.~ #3104 */
  IF ~~ THEN REPLY @2 /* ~Well met, stranger. Why have you come here?~ #3105 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Get lost, you rummy alley-rat. I've no time for you.~ #3106 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 5.0 3.0 0.0
  SAY @4 /* ~It's rough going on the streets these days. Used to be that a few gold would turn a guard's eye, but The Flaming Fist have put a good number of me fellows in the pokey lately. I figures they are still a touch angered by the death of that Scar fellow. His replacement Angelo seems is a bit more... driven. If ye wish to keep to the streets, ye had best be a better sneaksman than I.~ #3109 */
  IF ~~ THEN REPLY @6 /* ~Get lost ye rummy alley-rat. I've no time for you.~ #3122 */ JOURNAL @5 /* ~The Thieves' Guild has had a lot of troubles since Angelo became commander of the Flaming Fist.~ #7120 */ GOTO 2
  IF ~~ THEN REPLY @7 /* ~What of the Thieves' Guild? Could you not remain there?~ #3124 */ JOURNAL @5 /* ~The Thieves' Guild has had a lot of troubles since Angelo became commander of the Flaming Fist.~ #7120 */ GOTO 3
  IF ~~ THEN REPLY @8 /* ~It can't be as bad as everyone says. Thanks for the chat but I'll have to check it out myself.~ #3126 */ JOURNAL @5 /* ~The Thieves' Guild has had a lot of troubles since Angelo became commander of the Flaming Fist.~ #7120 */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 5.1 3.1 1.0 0.1
  SAY @9 /* ~There be no call for that at all! If'n we weren't in the Sanctuary, you'd be a stain on me blade! Take yer words back!~ #3110 */
  IF ~~ THEN REPLY @10 /* ~Ah, your mother wore crampons.~ #3113 */ GOTO 4
  IF ~~ THEN REPLY @11 /* ~I fear the problems of the day have addled my nerves. Forgive my outburst.~ #3114 */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 5.2 1.1
  SAY @12 /* ~The guild be all but gone. It's not just the thievery that suffers neither. The Fist seem to wish a lock on every person with skill in the magic or the blade. The average Joe Regular has never known such peace, but it is a horrible constraint on all else. Adventurers usually about have taken to the countryside, or places like this, rather than lose their arms.~ #3111 */
  IF ~~ THEN REPLY @13 /* ~Why have you come here?~ #3116 */ GOTO 1
  IF ~~ THEN REPLY @6 /* ~Get lost ye rummy alley-rat. I've no time for you.~ #3123 */ GOTO 2
  IF ~~ THEN REPLY @8 /* ~It can't be as bad as everyone says. Thanks for the chat but I'll have to check it out myself.~ #3127 */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY @14 /* ~Right, I'll do you for that! Just... not here. But just you wait! Ooo, you're gonna get it!~ #3112 */
  IF ~~ THEN DO ~SetGlobal("Thief_Insulted","AR0809",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @15 /* ~Well... I suppose. Only 'cause a nightman needs all the LIVE friends he can get these days.~ #3115 */
  IF ~~ THEN REPLY @13 /* ~Why have you come here?~ #3116 */ GOTO 1
  IF ~~ THEN REPLY @6 /* ~Get lost ye rummy alley-rat. I've no time for you.~ #3117 */ GOTO 2
  IF ~~ THEN REPLY @7 /* ~What of the Thieves' Guild? Could you not remain there?~ #3118 */ GOTO 3
  IF ~~ THEN REPLY @16 /* ~It can't be as bad as everyone says. Thanks for the chat, but I'll have to check it out myself.~ #3119 */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.3 3.2 1.2
  SAY @17 /* ~Suit yourself as best you please, but I'm off tonight. Luck to you.~ #3128 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 7 // from:
  SAY @18 /* ~There's a bunch a rumors on the streets these days. Stories about bandits, faulty iron, Amnian aggression, Zhentish trickery and some chap named Sarevok. I can't really remember anything specific though.~ #6386 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  Global("Thief_Insulted","AR0809",1)
~ THEN BEGIN 8 // from:
  SAY @19 /* ~Get away from me or you'll be dead by morn!~ #9090 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  GlobalLT("Chapter","GLOBAL",7)
~ THEN BEGIN 9 // from:
  SAY @20 /* ~ 'Ere there, a word wit' you I would have. House rules you be needin' to know. This here be Sanctuary, and Silence be our patron saint. You do anythin' to harm either, an' every thief, assassin, and scoundrel within 1,000 leagues will want ye dead. I dunno the magics that keep this place secure, but 'taint nowhere else where a night-sneak can sleep sound. It's neutral ground, and you leave your fightin' outside. Be on yer best behavior, 'cuz banishment for life is the nicest punishment Silence knows.~ #3066 */
  IF ~~ THEN EXIT
END
