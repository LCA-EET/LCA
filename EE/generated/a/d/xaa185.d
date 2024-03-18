// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SILENC.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SILENC.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA185~

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You may stay in Sanctuary for as long as you like. Friends like yerselves are hard to come by, I don't wish you to come to trouble on the streets.~ #6384 */
  IF ~~ THEN DO ~SetGlobal("SeenSanctuary","GLOBAL",1)
StartStore("xaa105",LastTalkedToBy(Myself))
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
!Global("Chapter","GLOBAL",7)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Night children wayward, are you? Well, you are welcome here so long as you keep your manners about you. There is a cost for each head kept safe, but I do not feel like charging today. Please, rest a while with no worries.~ #3056 */
  IF ~~ THEN DO ~SetGlobal("SeenSanctuary","GLOBAL",1)
StartStore("xaa105",LastTalkedToBy(Myself))
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
!Global("Chapter","GLOBAL",7)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Walk yourself slowly in, and keep your arms at your sides. This is no inn and you get no smiling welcome. I expect payment for your safekeeping, and you pay by the day and by the head! The risk I take harboring you low-grade hooligans is simply not worth it. 5 gold up front now, if you please.~ #3057 */
  IF ~~ THEN REPLY @4 /* ~Sorry, we can't pay.~ #6380 */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY @5 /* ~Here is your 5 gold.~ #6381 */ DO ~SetGlobal("SeenSanctuary","GLOBAL",1)
TakePartyGold(5)
StartStore("xaa105",LastTalkedToBy(Myself))
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
!Global("Chapter","GLOBAL",7)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN BEGIN 3 // from:
  SAY @6 /* ~This be your one warning! Walk ye slowly back out with your hands where I can see 'em! You twitch an eye and you're a fine red mist, instead o' the thick sludge you are now! Sanctuary ain't open to just any pig-stealin' knicker!~ #3058 */
  IF ~~ THEN DO ~SetGlobal("NoPayment","GLOBAL",1)
~ EXIT
END

IF ~  Global("Chapter","GLOBAL",7)
Global("SeenSanctuary","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY @7 /* ~I know you not, but I'll not be turning away any of the night's children nowadays. It's almost with a vengeance that the Flaming Fist keep a lock on the streets now. Sanctuary be free of charge for the immediate future. Come in and rest you well.~ #3062 */
  IF ~~ THEN DO ~SetGlobal("SeenSanctuary","GLOBAL",1)
StartStore("xaa105",LastTalkedToBy(Myself))
~ JOURNAL @8 /* ~The Closing Fist
Silence says the Flaming Fist has been coming down hard on guildmembers of late.~ #27434 */ EXIT
END

IF ~  Global("Chapter","GLOBAL",7)
Global("SeenSanctuary","GLOBAL",1)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~I recall you. Hard to forget a face when I see so few nowadays. Many a sneaksman has been lost to the guard, now that they seem intent on cleaning the streets to the bone. Sanctuary is free for the time being. Rest well.~ #3063 */
  IF ~~ THEN DO ~StartStore("xaa105",LastTalkedToBy(Myself))
~ EXIT
END

IF ~  Global("NoPayment","GLOBAL",1)
!Global("Chapter","GLOBAL",7)
~ THEN BEGIN 6 // from:
  SAY @10 /* ~You canna say I didn't warn you. Please move along before Mongo makes you.~ #3061 */
  IF ~~ THEN DO ~SetGlobal("NoPayment","GLOBAL",2)
~ EXIT
END

IF ~  Global("NoPayment","GLOBAL",0)
!Global("Chapter","GLOBAL",7)
NumTimesTalkedToGT(4)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN BEGIN 7 // from:
  SAY @11 /* ~Payment-time! 5 gold or you hit the bricks! Everybody have your rent ready.~ #3059 */
  IF ~~ THEN REPLY @12 /* ~We have not the money to pay you with.~ #6382 */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY @13 /* ~Here's your coin.~ #6383 */ DO ~TakePartyGold(5)
SetNumTimesTalkedTo(1)
StartStore("xaa105",LastTalkedToBy(Myself))
~ EXIT
END

IF ~  Global("NoPayment","GLOBAL",2)
~ THEN BEGIN 8 // from:
  SAY @14 /* ~Lost your chance with me, you did! Get lost! I'll have you quartered and halved if you're not gone soon enough!~ #9092 */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
Wait(3)
CreateCreature("mongo",[661.372],NW)
Enemy()
~ EXIT
END

IF ~  True()
~ THEN BEGIN 9 // from:
  SAY @15 /* ~I've crossed this realm time and again, and I am thoroughly convinced that many a fight could have been avoided if the combatants simply had a good night's sleep aforehand. Sanctuary be not so much for hiding as it is for resting nervous bones.~ #3064 */
  IF ~~ THEN DO ~StartStore("xaa105",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 2.0
  SAY @16 /* ~You've not the coin? I don't run a charity here! You've got till I get my muscle to be gone. After that, you'll hit the bricks a touch harder.~ #3060 */
  IF ~~ THEN DO ~SetGlobal("NoPayment","GLOBAL",1)
~ EXIT
END
