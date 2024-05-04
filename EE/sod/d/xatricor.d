BEGIN ~XATRICOR~

IF ~~ THEN BEGIN XA_CorwinTrial_0
	SAY @0 /* ~<CHARNAME> led the assault on the castle. When the outer wall was breached, the coalition was confronted by the keep's defenders, led by Caelar's lieutenant, Ashatiel.~*/
	= @1 /* ~Ashatiel was a fierce and powerful warrior, and she challenged <CHARNAME> to a duel. <CHARNAME> accepted the challenge and defeated her in single combat.~ */
	= @2 /* ~The remaining crusaders either fled or laid down their weapons once they saw that Ashatiel was killed. Many who took part in the assault owe <CHARNAME> their lives.~ */
	IF ~~ THEN
	DO ~
		IncrementGlobal("bd_trial_hero","bd0035",1)
		IncrementGlobal("bd_trial_evil","bd0035",-1)
		IncrementGlobal("bd_trial_case","bd0035",1)
	~
	EXTERN BDBELT XAA3
END

IF ~~ THEN BEGIN XA_CorwinTrial_1
	SAY @3 /* ~If I may, sir, I've one more thing to add.~*/
	IF ~~ THEN
	EXTERN BDBELT XAA4
END

IF ~~ THEN BEGIN XA_CorwinTrial_2
	SAY @4 /* ~I've gotten to know <CHARNAME> over these past months, and in spite of <PRO_HISHER> bloodline, I don't believe that <PRO_HESHE> would ever wittingly murder an innocent like Skie. I can't explain what has happened, but I believe in <CHARNAME>'s innocence.~*/
	= @5 /* ~(For a moment your eyes meet, and your heart is filled with gratitude and hope.)~ */
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("bd_trial_hero","bd0035",1)
		IncrementGlobal("bd_trial_evil","bd0035",-1)
		IncrementGlobal("bd_trial_case","bd0035",1)
	~
	EXTERN BDBELT XAA5
END