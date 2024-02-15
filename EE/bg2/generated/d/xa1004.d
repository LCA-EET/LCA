// creator  : F:\BGModding - LCA\Game\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDFFMAGE.DLG
// game     : F:\BGModding - LCA\Game\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDFFMAGE.DLG
// dialog   : F:\BGModding - LCA\Game\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XA1004~

IF ~  Global("bd_plot","global",485)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I detect powerful alteration magic, tinged with evil. Illusion magic is in play as well. We'd best be cautious in penetrating this vault.~ #65613 */
  IF ~~ THEN DO ~SetGlobal("bd_illusion_magic_response","GLOBAL",1)
~ EXTERN ~BDBENCE~ 105
END
