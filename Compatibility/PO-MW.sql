/*
MW compatibility patch!
0 = Disabled disregarding if its detects MW by Infixo and adan_eslavo.
1 = Enabled if it detects the MW by Infixo and adan_eslavo.
2 = Disabled until it detects something! (Default)
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('PO-MW', 		2);

UPDATE COMMUNITY
SET Value = '1'
WHERE Type = 'PO-MW' AND EXISTS (SELECT * FROM UnitPromotions WHERE Type='PROMOTION_MARAE') AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MW' AND Value= 0);

-- Main Compatibility Code
	-- updating texts for new promotions
	------------------------------
	-- Promotion Names
	------------------------------
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Marae[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_MARAE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MW' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Arahurahu[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_ARAHURAHU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MW' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Damascus Steel[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_DAMASCUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MW' AND Value= 1);