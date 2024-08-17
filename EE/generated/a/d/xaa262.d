// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NIEMAI.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NIEMAI.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA262~

IF ~  InParty("XZAR")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Mmm... Xzar has spoken highly of you in his reports.~ #18139 */
  IF ~~ THEN REPLY @2 /* ~Xzar is an addled fool.~ #18140 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Reports? What reports? Who are you?~ #18141 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~Of course he has. Am I not among the finest beings to have ever trod the surface of the realms?~ #18142 */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~Yes, but a necessary one and a useful tool, wouldn't you agree? Like yourselves, we are no friends of the Iron Throne. I have instructed Xzar to accompany you to the Iron Throne tower in the west end of the city. Even madness has its place, yes?~ #18143 */
  IF ~~ THEN REPLY @6 /* ~Thank you for your assistance.~ #18144 */ GOTO 2
  IF ~~ THEN REPLY @7 /* ~Xzar, Montaron, you, these men around you... Who am I dealing with here?~ #18145 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @8 /* ~Keep to the shadows.~ #18146 */
  IF ~~ THEN DO ~ActionOverride("WHEBER",EscapeArea())
ActionOverride("OULAM",EscapeArea())
ActionOverride("WILLIAM",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 0.1
  SAY @9 /* ~Has Xzar not told you? Perhaps I have spoken too soon. We are the Zhentarim and I am Xzar's superior. He has been making regular reports to me about your party and the progress of your investigations into the iron crisis. Your work has been exemplary and of great service to our cause. Now go, purge this city of the Iron Throne's presence. They have become more than a nuisance to us... They have become a threat.~ #18148 */
  IF ~~ THEN DO ~ActionOverride("WHEBER",EscapeArea())
ActionOverride("OULAM",EscapeArea())
ActionOverride("WILLIAM",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY @10 /* ~Yes, he did mention your arrogance... The Iron Throne is based in a tower in the city's west end. I have recommended to Xzar that you focus your investigations there. Now, please, leave us be. It is not wise to speak of these things as openly as we are now.~ #18150 */
  IF ~~ THEN DO ~ActionOverride("WHEBER",EscapeArea())
ActionOverride("OULAM",EscapeArea())
ActionOverride("WILLIAM",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~  InParty("MONTARON")
~ THEN BEGIN 5 // from:
  SAY @11 /* ~I see Montaron is with you but what of Xzar? By all that is dark, this does not bode well for our plans.~ #18151 */
  IF ~~ THEN REPLY @12 /* ~What plans?~ #18153 */ GOTO 6
  IF ~~ THEN REPLY @13 /* ~Who are you?~ #18154 */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @14 /* ~Xzar did not have time to tell you, then... The Iron Throne has many enemies. I am one of them. Xzar was another. He had been making regular reports to me about your party and the progress of your investigations into the present crisis. When the last few reports didn't come, I assumed that the messengers had been forced to take a more lengthy route due to the bandit activity. But this, this is far worse. Alone, Montaron is of little use to us and you... I do not know if you can be trusted... Please, leave us be. It is time for us to revise our thinking on this entire matter.~ #18156 */
  IF ~~ THEN DO ~ActionOverride("WHEBER",EscapeArea())
ActionOverride("OULAM",EscapeArea())
ActionOverride("WILLIAM",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @15 /* ~If Xzar were still with you, I would tell you more. Suffice to say that we are enemies of the Iron Throne and, for that reason, friends of yours. They are based in a tower on the west end of the city. I would urge you to focus your investigations there.~ #18160 */
  IF ~~ THEN DO ~ActionOverride("WHEBER",EscapeArea())
ActionOverride("OULAM",EscapeArea())
ActionOverride("WILLIAM",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~  True()
~ THEN BEGIN 8 // from:
  SAY @16 /* ~Oh, look what a cute little party... invading our space! We were preparing a ritual, and you all but ruined it.~ #18161 */
  IF ~~ THEN REPLY @17 /* ~What do you mean your space? This is a store and I'm a customer.~ #18163 */ GOTO 9
  IF ~~ THEN REPLY @18 /* ~I'm sorry. Am I interrupting something?~ #18162 */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @19 /* ~Thank you for that wonderful display of simian logic. Now scram.~ #18164 */
  IF ~~ THEN REPLY @20 /* ~What's a simian?~ #18165 */ GOTO 10
  IF ~~ THEN REPLY @21 /* ~For your information, a number of important sociological and psychological theorists have posited that stores exist in an intermediate space, neither private nor public in nature but combining elements of both. Displays in store windows, for instance, can best be viewed as mental constructs projected onto the public consciousness as a means of engendering mass conformity derived solely from the supposedly private domain of consumer choice.~ #18166 */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @22 /* ~A monkey, a moron, a chimp... Boys, put this one out of its misery.~ #18167 */
  IF ~~ THEN DO ~ActionOverride("OULAM",Enemy())
ActionOverride("WHEBER",Enemy())
ActionOverride("WILLIAM",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @23 /* ~Ack! It's enough to drive one mad... Make it stop, make it stop!~ #18168 */
  IF ~~ THEN DO ~ActionOverride("OULAM",Enemy())
ActionOverride("WHEBER",Enemy())
ActionOverride("WILLIAM",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY @24 /* ~Like an extremely difficult spell, perchance? Yes, I would have to say that maybe you ARE interrupting something!~ #18169 */
  IF ~~ THEN REPLY @25 /* ~I'm very, very sorry. I'll leave now.~ #18170 */ GOTO 13
  IF ~~ THEN REPLY @26 /* ~Then go do it someplace a little more private.~ #18171 */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @27 /* ~*sigh* What does it matter now? Do what you will...~ #18172 */
  IF ~~ THEN DO ~ActionOverride("WHEBER",EscapeArea())
ActionOverride("OULAM",EscapeArea())
ActionOverride("WILLIAM",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @28 /* ~How about a fireball up your arse? Is that a little more private? Go ahead, let's see you interrupt this one!~ #18173 */
  IF ~~ THEN DO ~ActionOverride("OULAM",Enemy())
ActionOverride("WHEBER",Enemy())
ActionOverride("WILLIAM",Enemy())
Enemy()
~ EXIT
END
