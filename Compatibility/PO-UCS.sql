/*
UCS compatibility patch!
0 = Disabled disregarding if its detects UCS by Enginseer.
1 = Enabled if it detects the UCS by Enginseer.
2 = Disabled until it detects something! (Default)
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('PO-UCS', 	2);

UPDATE COMMUNITY
SET Value = '1'
WHERE Type = 'PO-UCS' AND EXISTS (SELECT * FROM MinorCivilizations WHERE Type='MINOR_CIV_HONDURAS') AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 0);

-- Main Compatibility Code
	-- updating texts for new promotions
	------------------------------
	-- Promotion Names
	------------------------------
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Sellsword Army[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_MILITARISTIC_NEUTRAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Pirate Haven (Antananarivo)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_ANTANANARIVO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]The White Fortress (Belgrade)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_BELGRADE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Patriotism (Hanoi)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_HANOI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Manikongo Glory (M''banza Kongo)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_MBANZA_KONGO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Neighborhood Bully (Sidon)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIDON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Art of War (Yerevan)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_YEREVAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Crusader''s Zeal (Clermont)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Blessing of Clermont (Clermont)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Onward with Haste! (Clermont)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]United We Stand! (Clermont)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT3' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Charge! (Clermont)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT4' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Reinforce! (Clermont)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT5' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Glory to God! (Clermont)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT6' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Spartan Discipline (Sparta)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_LACONIA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Lord of the Hunt (Odenso)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_ODENSO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Mercenaries of Pyrrhus (Ambracia)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_AMBRACIA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Sail in the Wilderness (Dodoma)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_DODOMA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Spoils of War (Faya)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_FAYA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Magnificence in Flying Machines (Surrey)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SURREY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Destroyers of Bau (Levuka)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_LEVUKA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Qolla Kapachayuh (Iskanwaya)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_ISKANWAYA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Mujahideen (Kabul)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_KABUL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Peaceful Resistance (Parihaka)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_AUCKLAND' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	
	------------------------------
	-- Promotion Help
	------------------------------
	UPDATE Language_en_US SET Text = '+20% XP [COLOR:255:230:85:255]on Fight[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_MILITARISTIC_NEUTRAL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit gains [ICON_GOLD] [COLOR:255:230:85:255]on Kill[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_ANTANANARIVO_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+25[ICON_PLUS]Total HP.' WHERE Tag = 'TXT_KEY_PROMOTION_BELGRADE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+10%[ICON_STRENGTH]CS [COLOR:255:230:85:255]inside Friendly Territory[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_HANOI_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+15%[ICON_STRENGTH]CS [COLOR:255:230:85:255]in Forest, Jungle, Marsh or Flood Plains[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_MBANZA_KONGO_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+5 HP [COLOR:255:230:85:255]on Heal inside Enemy Territory[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SIDON_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit gains [ICON_CULTURE] [COLOR:255:230:85:255]on Kill[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_YEREVAN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+15% XP [COLOR:255:230:85:255]on Fight[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:255:230:85:255]After first Combat[ENDCOLOR] this promotion is replaced with a randomly chosen new special 10-turn promotion.' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+2[ICON_ARROW_RIGHT]Movement Points. Unit [COLOR:255:230:85:255]can Move again[ENDCOLOR] after Attack.' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+20%[ICON_STRENGTH]CS if unit [COLOR:255:230:85:255]is adjacent to another Friendly Unit[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT3_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+10%[ICON_STRENGTH]Offensive CS. +15%[ICON_STRENGTH]CS [COLOR:255:230:85:255]vs Fortified Units[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT4_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+15%[ICON_STRENGTH]Defensive CS. Unit [COLOR:255:230:85:255]Heals every turn[ENDCOLOR], even after performing an action.' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT5_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit [COLOR:255:230:85:255]imitates Great General buffs[ENDCOLOR]. +5 HP [COLOR:255:230:85:255]on Heal for this and all adjacent Friendly Units[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT6_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+15%[ICON_STRENGTH]CS if unit [COLOR:255:230:85:255]is adjacent to another Friendly Unit[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_LACONIA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+1[ICON_VIEW_CITY]Sight. +5 HP [COLOR:255:230:85:255]on Heal inside Neutral Territory[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_ODENSO_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);	
	UPDATE Language_en_US SET Text = 'Unit generates +5% [ICON_PRODUCTION], if it [COLOR:255:230:85:255]is Garrisoned on Land[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_AMBRACIA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+2[ICON_MOVES]Movement Point.' WHERE Tag = 'TXT_KEY_PROMOTION_DODOMA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit gains [ICON_RESEARCH] [COLOR:255:230:85:255]on Kill[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_FAYA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);	
	UPDATE Language_en_US SET Text = '+10%[ICON_RANGE_STRENGTH]RCS [COLOR:255:230:85:255]vs Land and Naval Units[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SURREY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit gains [ICON_FOOD] [COLOR:255:230:85:255]on Barbarian Kills[ENDCOLOR] and [COLOR:255:230:85:255]for clearing Barbarian Camps[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_LEVUKA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit [COLOR:255:230:85:255]Heals every turn[ENDCOLOR], if it [COLOR:255:230:85:255]is next to owned Missionary, Holy Site or Mountain[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_ISKANWAYA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+25%[ICON_STRENGTH]Defensive CS.' WHERE Tag = 'TXT_KEY_PROMOTION_KABUL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit generates [ICON_FOOD] and [ICON_GOLDEN_AGE], if it [COLOR:255:230:85:255]is Garrisoned on Land[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_AUCKLAND_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);