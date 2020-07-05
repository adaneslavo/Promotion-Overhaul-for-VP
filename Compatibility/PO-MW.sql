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
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Panama Canal[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_PANAMA_CANAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MW' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Toy Train[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_DARJEELING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MW' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Holy Mountain[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_KAILASH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MW' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Old Tribes[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_ULURU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MW' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]For the King[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SOLOMONS_MINES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MW' AND Value= 1);