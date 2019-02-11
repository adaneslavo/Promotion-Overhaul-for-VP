/*
MUCfVP compatibility patch!
0 = Disabled disregarding if its detects MUCfVP by many.
1 = Enabled if it detects the MUCfVP by many.
2 = Disabled until it detects something! (Default)
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('PO-MUCfVP', 	2);

UPDATE COMMUNITY
SET Value = '1'
WHERE Type = 'PO-MUCfVP' AND EXISTS (SELECT * FROM Units WHERE Type='UNIT_ZULU_INDABA') AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=0);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Poisoned Weapon[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_ATLATL_ATTACK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '+33%[ICON_RANGE_STRENGTH]RCS [COLOR:255:230:85:255]vs Wounded Units[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_ATLATL_ATTACK_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);