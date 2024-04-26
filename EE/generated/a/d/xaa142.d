// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LOTHAN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LOTHAN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA142~

IF ~  OR(2)
Global("LothanderMove","GLOBAL",3)
Global("LothanderMove","GLOBAL",9)
Global("HelpLothander","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I am Lothander, partner of the assassin Marek. I do not wish you harm.~ #1323 */
  IF ~~ THEN REPLY @2 /* ~We don't have time to listen to an assassin of the Iron Throne.~ #1338 */ DO ~SetGlobalTimer("PoisonParty","GLOBAL",ONE_DAY)
SetGlobalTimer("PoisonParty2","GLOBAL",TEN_DAYS)
~ GOTO 3
  IF ~~ THEN REPLY @3 /* ~We'll give you a chance. Make it quick.~ #1339 */ DO ~SetGlobalTimer("PoisonParty","GLOBAL",ONE_DAY)
SetGlobalTimer("PoisonParty2","GLOBAL",TEN_DAYS)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4 /* ~My partner, Marek, has poisoned you. While you slept, he slipped a slow-acting magical poison into your rations. You have about ten days to live. Common priest spells won't help you. Only one thing can, and that's the antidote. I can help you find it, if you help me first.~ #1324 */
  IF ~~ THEN REPLY @6 /* ~Why don't we just kill you and take the antidote ourselves?~ #1340 */ UNSOLVED_JOURNAL @5 /* ~Marek and Lothander
The Iron Throne assassin Lothander told me that his partner Marek has poisoned me. I'll die in a week or two without the antidote. Lothander offers to give it to me if we help him.~ #27240 */ GOTO 2
  IF ~~ THEN REPLY @7 /* ~Okay, what do you want us to do?~ #1341 */ UNSOLVED_JOURNAL @5 /* ~Marek and Lothander
The Iron Throne assassin Lothander told me that his partner Marek has poisoned me. I'll die in a week or two without the antidote. Lothander offers to give it to me if we help him.~ #27240 */ GOTO 4
  IF ~~ THEN REPLY @8 /* ~Don't try to lie to us, scum!~ #1342 */ UNSOLVED_JOURNAL @5 /* ~Marek and Lothander
The Iron Throne assassin Lothander told me that his partner Marek has poisoned me. I'll die in a week or two without the antidote. Lothander offers to give it to me if we help him.~ #27240 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @9 /* ~Do you take me for an idiot? I don't have the antidote, I only know where it can be found.~ #1325 */
  IF ~~ THEN REPLY @10 /* ~Okay, we'll help you.~ #1343 */ GOTO 4
  IF ~~ THEN REPLY @11 /* ~We don't need your help, assassin.~ #1344 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 1.2 0.0
  SAY @12 /* ~Your mistake, and most probably your last.~ #1326 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 1.1
  SAY @13 /* ~My problem is this: I don't work for the Iron Throne because I wish to but rather because I have been forced. I have been enspelled with a geas. If I do not obey everything that Marek orders of me the spell will take effect and I shall waste away. I need a way to rid myself of the spell. I know of a diviner at the market square who may have the answers I seek, but I don't have the money to pay him. Will you help me?~ #1327 */
  IF ~~ THEN REPLY @14 /* ~We don't have the money, and we're not interested in dealing with an assassin.~ #1345 */ GOTO 6
  IF ~~ THEN REPLY @15 /* ~Sorry, but you can find someone else; we can find this antidote on our own.~ #1346 */ GOTO 6
  IF ~~ THEN REPLY @16 /* ~We'll help you. Take us to this diviner.~ #1347 */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 6.0
  SAY @17 /* ~You can kill me then; it does not matter. If I were to help you find the antidote, the geas would take effect, and I would die.~ #1328 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.0
  SAY @18 /* ~You must help me! Now that I have actively tried to have the geas removed, my life is forfeit. Please reconsider.~ #1329 */
  IF ~~ THEN REPLY @19 /* ~Sorry, we can't help you.~ #1348 */ GOTO 5
  IF ~~ THEN REPLY @20 /* ~Okay, we've changed our minds, we'll help you. Take us to this diviner.~ #1349 */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 4.2
  SAY @21 /* ~Step in here to the diviner's tent.~ #1330 */
  IF ~~ THEN DO ~SetGlobal("HelpLothander","GLOBAL",1)
SetGlobal("LothanderMove","GLOBAL",1)
MoveToPoint([2571.876])
Face(SSW)
~ UNSOLVED_JOURNAL @22 /* ~Marek and Lothander
I have agreed to help Lothander escape his geas in exchange for the antidote to the poison Marek used on me. I am to visit a diviner in the marketplace.~ #27241 */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY @23 /* ~I thought you said you would help? We have little time, hurry!~ #1332 */
  IF ~~ THEN EXIT
END

IF ~  Global("LothanderMove","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY @24 /* ~This is where the diviner stays during the day. I'll wait here until you finish talking with the diviner.~ #1331 */
  IF ~~ THEN EXIT
END

IF ~  Global("LothanderMove","GLOBAL",9)
!GlobalGT("DivinerAsked","GLOBAL",0)
Global("HelpLothander","GLOBAL",1)
~ THEN BEGIN 10 // from:
  SAY @25 /* ~What were you doing?! You asked the wrong question! You idiot, now we're all dead.~ #1333 */
  IF ~~ THEN EXIT
END

IF ~  OR(2)
Global("LothanderMove","GLOBAL",4)
Global("DivinerAsked","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY @26 /* ~You should go to the Water Queen's House. It's also known as the temple of Umberlee. I'll be at the Blade and Stars Inn. Meet me there when you've found a way to reverse the geas.~ #1334 */
  IF ~~ THEN DO ~SetGlobal("LothanderMove","GLOBAL",2)
SetGlobal("DivinerAsked","GLOBAL",2)
EscapeAreaMove("AR0106",259,198,S)
~ UNSOLVED_JOURNAL @27 /* ~Marek and Lothander
I can find Lothander at the Blade and Stars Inn after I've learned how to remove his curse.~ #27242 */ EXIT
END

IF ~  OR(2)
Global("LothanderMove","GLOBAL",2)
GlobalGT("DivinerAsked","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY @28 /* ~So, how did you fare? Do you have the cure to my geas?~ #1335 */
  IF ~  !PartyHasItem("SCRLJALA")
OR(3)
Dead("pumberl")
Dead("Jalantha")
Dead("Tenya2")
~ THEN REPLY @29 /* ~We had an earlier... encounter... in the temple of Umberlee. It may prove impossible to reverse the geas.~ #26790 */ GOTO 16
  IF ~~ THEN REPLY @30 /* ~No, we don't.~ #1350 */ GOTO 13
  IF ~  PartyHasItem("SCRLJALA")
~ THEN REPLY @31 /* ~We have your cure, now where is the antidote to the poison?~ #1351 */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @32 /* ~What are you doing here then?! Go back and find the cure to the geas; there isn't much time.~ #1336 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY @33 /* ~All right then, here's my half of the antidote. Marek, my partner, possesses the other half of the antidote. You'll find him at the Blushing Mermaid inn. I can't help you other than that.~ #1337 */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
AddexperienceParty(1500)
TakePartyItem("SCRLJALA")
GiveItemCreate("LOPOTN20",LastTalkedToBy(Myself),0,0,0)
SetGlobal("MarekMove","GLOBAL",1)
SetGlobal("LothanderMove","GLOBAL",5)
MoveToPoint([435.149])
EscapeArea()
~ UNSOLVED_JOURNAL @34 /* ~Marek and Lothander
Lothander gave me half the antidote and sent me to the Blushing Mermaid inn to collect the other half from Marek.~ #27243 */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY @35 /* ~If you want to get the antidote, you'll have to find Marek. You can find him at the Blushing Mermaid.~ #6290 */
  IF ~~ THEN UNSOLVED_JOURNAL @34 /* ~Marek and Lothander
Lothander gave me half the antidote and sent me to the Blushing Mermaid inn to collect the other half from Marek.~ #27243 */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.0
  SAY @36 /* ~What?! How could you! But... maybe... I am dead...~ #26791 */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @37 /* ~...and so fate catches up. Here, take my half of the antidote. Marek has the other. You'll find him at the Blushing Mermaid inn. I must go. I need to see her... need to say goodbye...~ #26792 */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
GiveItemCreate("LOPOTN20",LastTalkedToBy(Myself),0,0,0)
SetGlobal("MarekMove","GLOBAL",1)
SetGlobal("LothanderMove","GLOBAL",5)
MoveToPoint([435.149])
EscapeArea()
~ UNSOLVED_JOURNAL @38 /* ~Marek and Lothander
Even though we couldn't help Lothander, he gave me half the antidote and sent me to the Blushing Mermaid inn to collect the other half from Marek.~ #26793 */ EXIT
END
