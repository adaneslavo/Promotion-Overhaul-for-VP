/*
ENW compatibility patch!
0 = Disabled disregarding if its detects ENW by Infixo and Asterix Rage.
1 = Enabled if it detects the ENW by Infixo and Asterix Rage.
2 = Disabled until it detects something! (Default)
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('PO-ENW', 		2);

UPDATE COMMUNITY
SET Value = '1'
WHERE Type = 'PO-ENW' AND EXISTS (SELECT * FROM UnitPromotions WHERE Type='PROMOTION_DIVE_I') AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-ENW' AND Value= 0);

-- Main Compatibility Code
	-- updating texts for new promotions
	------------------------------
	-- Promotion Names
	------------------------------
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Light Cover[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_LIGHT_COVER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-ENW' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Hull I[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_COASTAL_RAIDER_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-ENW' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Hull II[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_COASTAL_RAIDER_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-ENW' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Hull III[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_COASTAL_RAIDER_3' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-ENW' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Dive I[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_DIVE_I' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-ENW' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Dive II[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_DIVE_II' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-ENW' AND Value= 1);

	------------------------------
	-- Promotion Help
	------------------------------
	UPDATE Language_en_US SET Text = '+15%[ICON_STRENGTH]Defensive CS [COLOR:255:230:85:255]vs Range Attacks[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_LIGHT_COVER_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-ENW' AND Value= 1);
	UPDATE Language_en_US SET Text = Text||' [COLOR_NEGATIVE_TEXT]Lost after unit upgrade[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_CARGO_I_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-ENW' AND Value= 1);
	UPDATE Language_en_US SET Text = Text||' [COLOR_NEGATIVE_TEXT]Lost after unit upgrade[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_ANTI_SUBMARINE_I_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-ENW' AND Value= 1);
	UPDATE Language_en_US SET Text = '+10%[ICON_STRENGTH]Defensive CS [COLOR:255:230:85:255]vs Range Attacks[ENDCOLOR]. +10%[ICON_ARROW_LEFT]Withdrawal Chance against Melee Attack.' WHERE Tag = 'TXT_KEY_PROMOTION_DIVE_I_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-ENW' AND Value= 1);
	UPDATE Language_en_US SET Text = '+20%[ICON_STRENGTH]Defensive CS [COLOR:255:230:85:255]vs Range Attacks[ENDCOLOR]. +20%[ICON_ARROW_LEFT]Withdrawal Chance against Melee Attack.' WHERE Tag = 'TXT_KEY_PROMOTION_DIVE_II_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-ENW' AND Value= 1);
	UPDATE Language_en_US SET Text = '+20%[ICON_ARROW_LEFT]Withdrawal Chance against Melee Attack. +30%[ICON_RANGE_STRENGTH]Offensive RCS.' WHERE Tag = 'TXT_KEY_PROMOTION_WOLFPACK_3_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-ENW' AND Value= 1);