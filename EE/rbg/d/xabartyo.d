BEGIN ~XABARTYO~

IF ~  RandomNum(3,1)
~ THEN BEGIN 0 // from:
  SAY @0 /* ~I help run a clean establishment here. Don't go messin' it up. So, would you like a drink?~ */
  IF ~~ THEN REPLY @3 /* ~Yes.~ */ DO ~StartStore("tav0721",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @4 /* ~No.~ */ EXIT
  
  IF ~
	GlobalLT("XA_AskAboutSlime", "LOCALS", 1)
  ~ THEN REPLY @7 /*~Nice to see that this place has reopened. Had a bit of a slime problem, if I recall.~*/ 
  DO ~
	SetGlobal("XA_AskAboutSlime", "LOCALS", 1)
  ~
  GOTO XA_AskAboutSlime
  
END

IF ~  RandomNum(3,2)
~ THEN BEGIN 1 // from:
  SAY @1 /* ~Whatever your poison, you're sure to find it somewhere in Baldur's Gate. So, would you like a drink?~ */
  IF ~~ THEN REPLY @3 /* ~Yes.~ */ DO ~StartStore("tav0721",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @4 /* ~No.~ */ EXIT
  
  IF ~
	GlobalLT("XA_AskAboutSlime", "LOCALS", 1)
  ~ THEN REPLY @7 /*~Nice to see that this place has reopened. Had a bit of a slime problem, if I recall.~*/ 
  DO ~
	SetGlobal("XA_AskAboutSlime", "LOCALS", 1)
  ~
  GOTO XA_AskAboutSlime
END

IF ~  RandomNum(3,3)
~ THEN BEGIN 2 // from:
  SAY @2 /* ~If you've complaints about the service, there's a wall out back that'll be glad to hear 'em. So, would you like a drink?~ */
  IF ~~ THEN REPLY @3 /* ~Yes.~ */ DO ~StartStore("tav0721",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @4 /* ~No.~ */ EXIT
  
  IF ~
	GlobalLT("XA_AskAboutSlime", "LOCALS", 1)
  ~ THEN REPLY @7 /*~Nice to see that this place has reopened. Had a bit of a slime problem, if I recall.~*/ 
  DO ~
	SetGlobal("XA_AskAboutSlime", "LOCALS", 1)
  ~
  GOTO XA_AskAboutSlime
END

IF ~~ THEN BEGIN XA_AskAboutSlime
	SAY @6 /* @6 = ~A bit? Heh, those slimes were the work of that neer do well wizard, Ramazith. Word is some adventurers did him in his own tower. Good riddance to bad rubbish, I say. So, can I get ya anything?~ */
	
	IF ~~ THEN REPLY @3 /* ~Yes.~ */ DO ~StartStore("tav0721",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @4 /* ~No.~ */ EXIT
END