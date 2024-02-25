EXTEND_BOTTOM XALCDBG 10
	IF ~~ THEN REPLY @6000 /* ~RBG Debug~ */
	GOTO XA_RBG_Debug
END

APPEND ~XALCDBG~

	IF ~~ THEN BEGIN XA_RBG_Debug
		SAY @6000 /* ~Return to Baldur's Gate Debug~*/
	
		IF ~~ THEN REPLY @6001 /* ~Item Test~*/
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO 10
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT	
	END
	
	IF ~~ THEN BEGIN XA_RBG_ItemTest
		SAY @6001 /*  ~Item Test~ */
		 				
		IF ~~ THEN REPLY @6003/* ~Engagement Rings (Unenchanted)~*/
		DO ~
			GiveItemCreate("xaringj", Player1, 0,0,0)
			GiveItemCreate("xaringa", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6004/* ~Engagement Rings (Minor Enchantment)~*/
		DO ~
			GiveItemCreate("xarng07a", Player1, 0,0,0)
			GiveItemCreate("xarng11a", Player1, 0,0,0)
			GiveItemCreate("xarng13a", Player1, 0,0,0)
			GiveItemCreate("xarng14a", Player1, 0,0,0)
			GiveItemCreate("xarng19a", Player1, 0,0,0)
			GiveItemCreate("xarng21a", Player1, 0,0,0)
			GiveItemCreate("xarng22a", Player1, 0,0,0)
			GiveItemCreate("xarng25a", Player1, 0,0,0)
			GiveItemCreate("xarng26a", Player1, 0,0,0)
			GiveItemCreate("xarng28a", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6007/* ~Engagement Rings (Major Enchantment)~*/
		DO ~
			GiveItemCreate("xaring07", Player1, 0,0,0)
			GiveItemCreate("xaring11", Player1, 0,0,0)
			GiveItemCreate("xaring13", Player1, 0,0,0)
			GiveItemCreate("xaring14", Player1, 0,0,0)
			GiveItemCreate("xaring19", Player1, 0,0,0)
			GiveItemCreate("xaring21", Player1, 0,0,0)
			GiveItemCreate("xaring22", Player1, 0,0,0)
			GiveItemCreate("xaring25", Player1, 0,0,0)
			GiveItemCreate("xaring26", Player1, 0,0,0)
			GiveItemCreate("xaring28", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6005/* ~Lyriel's Gratitude~*/
		DO ~
			GiveItemCreate("xalyamul", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6006/* ~Demon's Gifts~*/
		DO ~
			GiveItemCreate("xachick", Player1, 0,0,0)
			GiveItemCreate("xasword", Player1, 0,0,0)
			GiveItemCreate("xaquiver", Player1, 0,0,0)
			GiveItemCreate("xamsring", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6008/* ~Beno's Head~*/
		DO ~
			GiveItemCreate("xabenohd", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6009/* ~Ledger~*/
		DO ~
			GiveItemCreate("xaledger", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6010/* ~Dragonspear Medal~*/
		DO ~
			GiveItemCreate("xamedal", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6011/* ~Shipping Manifest~*/
		DO ~
			GiveItemCreate("xamanfst", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @6013/* ~Rohma's Doll~*/
		DO ~
			GiveItemCreate("xardoll", Player1, 0,0,0)
		~
		GOTO XA_RBG_ItemTest
		
		IF ~~ THEN REPLY @3011/* ~Return to the previous menu.~*/
		GOTO XA_RBG_Debug
		
		IF ~~ THEN REPLY @3012 /*~Exit.~ */
		GOTO 6
		
		IF ~~ THEN REPLY @3013 /*~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
		
	END
END	