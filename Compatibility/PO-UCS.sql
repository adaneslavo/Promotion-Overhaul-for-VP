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
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](C) Blessing of Clermont (Clermont)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](C) Onward with Haste! (Clermont)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](C) United We Stand! (Clermont)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT3' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](C) Charge! (Clermont)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT4' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](C) Reinforce! (Clermont)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT5' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](C) Glory to God! (Clermont)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT6' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](C) Deus Vult! (Clermont)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT7' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
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
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Iwarefa (Ife)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_IFE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Climber of Mount Athos (Karyes)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_KARYES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Master of Cold Waters (SGaang Gwaay)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SGANG_GWAAY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Scythian Arrow Barrage (Daergraevs)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_POKROVKA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Siberian Education (Pelym)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_PELYM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Siida Training (Karasjohka)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_KARASJOHKA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Battle of Vaslui (Suceava)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SUCEAVA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Futuh Al-Habash (Dakkar)[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_DAKKAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);

	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Guardia Svizzera Pontificia[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_GUARDIA_SVIZZERA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Katzbalger[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_KATZBALGER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Sikh Warrior[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Khanda[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_SWORD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Dori Kirpan[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_KNIFE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Chakram[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_DISC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Trehsool Mukh[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_TRIDENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Katar[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_DAGGER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Kamaan[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_BOW' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Toradar[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_MUSKET' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Dhal[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_SHIELD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Sanjo[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_CHAINMAIL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Chola[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_ROBE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Jangi Mojeh[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_SHOES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Dastar Bunga[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_TURBAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Shastar Vidia[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_MARTIAL_ART' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255](S) Jangi Kara[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_BRACELET' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '[COLOR:100:155:60:255]Scythian Arrow Barrage[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_SCYTHIAN_BARRAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);

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
	UPDATE Language_en_US SET Text = '[COLOR:255:230:85:255]After first Combat[ENDCOLOR] this promotion is replaced with a randomly chosen new special promotion.' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+1[ICON_ARROW_RIGHT]Movement Points. Unit [COLOR:255:230:85:255]can Move again[ENDCOLOR] after Attack.' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+15%[ICON_STRENGTH]CS if unit [COLOR:255:230:85:255]is adjacent to another Friendly Unit[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT3_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+5%[ICON_STRENGTH]Offensive CS. +15%[ICON_STRENGTH]CS [COLOR:255:230:85:255]vs Fortified Units[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT4_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+5%[ICON_STRENGTH]Defensive CS. Unit [COLOR:255:230:85:255]Heals every turn[ENDCOLOR], even after performing an action.' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT5_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit [COLOR:255:230:85:255]imitates Great General buffs[ENDCOLOR]. +5 HP [COLOR:255:230:85:255]on Heal for all adjacent Friendly Units[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT6_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+1[ICON_VIEW_CITY]Sight. Unit gains [ICON_PEACE] [COLOR:255:230:85:255]on Kill[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_CLERMONT7_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);	
	UPDATE Language_en_US SET Text = '+15%[ICON_STRENGTH]CS if unit [COLOR:255:230:85:255]is adjacent to another Friendly Unit[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_LACONIA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+1[ICON_VIEW_CITY]Sight. +5 HP [COLOR:255:230:85:255]on Heal inside Neutral Territory[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_ODENSO_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);	
	UPDATE Language_en_US SET Text = 'Unit generates +5% [ICON_PRODUCTION], if it [COLOR:255:230:85:255]is Garrisoned on Land[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_AMBRACIA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+2[ICON_MOVES]Movement Points.' WHERE Tag = 'TXT_KEY_PROMOTION_DODOMA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit gains [ICON_RESEARCH] [COLOR:255:230:85:255]on Kill[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_FAYA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);	
	UPDATE Language_en_US SET Text = '+10%[ICON_RANGE_STRENGTH]RCS [COLOR:255:230:85:255]vs Land and Naval Units[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SURREY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit gains [ICON_FOOD] [COLOR:255:230:85:255]on Barbarian Kills[ENDCOLOR] and [COLOR:255:230:85:255]for clearing Barbarian Camps[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_LEVUKA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit [COLOR:255:230:85:255]Heals every turn[ENDCOLOR], if it [COLOR:255:230:85:255]is next to owned Missionary, Holy Site or Mountain[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_ISKANWAYA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+25%[ICON_STRENGTH]Defensive CS.' WHERE Tag = 'TXT_KEY_PROMOTION_KABUL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit generates [ICON_FOOD] and [ICON_GOLDEN_AGE], if it [COLOR:255:230:85:255]is Garrisoned on Land[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_AUCKLAND_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+1[ICON_MOVES]Movement Point. +1[ICON_VIEW_CITY]Sight. +10 [ICON_INFLUENCE] Influence [COLOR:255:230:85:255]after Diplomatic Mission[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_IFE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit [COLOR:255:230:85:255]can cross Mountains[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_KARYES_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit [COLOR:255:230:85:255]can enter Ice[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SGANG_GWAAY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit [COLOR:255:230:85:255]deals 5 Damage on turn start[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_POKROVKA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Double[ICON_MOVES]Movement and +10%[ICON_STRENGTH]CS [COLOR:255:230:85:255]on Tundra and Snow[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_PELYM_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+5%[ICON_STRENGTH]Offensive CS/[ICON_RANGE_STRENGTH]Offensive RCS. +10%[ICON_STRENGTH]Offensive CS/[ICON_RANGE_STRENGTH]Offensive RCS [COLOR:255:230:85:255]in Forest[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_KARASJOHKA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+10%[ICON_STRENGTH]Defensive CS. Unit gains [ICON_PEACE] [COLOR:255:230:85:255]on Kill[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SUCEAVA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+5[ICON_STRENGTH]CS and/or +5[ICON_RANGE_STRENGTH]RCS.' WHERE Tag = 'TXT_KEY_PROMOTION_DAKKAR_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);

	UPDATE Language_en_US SET Text = 'Unit heals [COLOR:255:230:85:255]on Kill[ENDCOLOR], if it [COLOR:255:230:85:255]is in range of a City[ENDCOLOR] (10 HP), [COLOR:255:230:85:255]Capital[ENDCOLOR] (30 HP) or [COLOR:255:230:85:255]Holy City[ENDCOLOR] (40 HP)[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_GUARDIA_SVIZZERA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit generates [ICON_PEACE], [ICON_CULTURE] (after [COLOR_CYAN]Radio[ENDCOLOR]) and [ICON_TOURISM] (after [COLOR_CYAN]Telecommunications[ENDCOLOR]).' WHERE Tag = 'TXT_KEY_PROMOTION_KATZBALGER_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+30% XP [COLOR:255:230:85:255]on Fight[ENDCOLOR]. Unit gains [ICON_PEACE] [COLOR:255:230:85:255]on Kill[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+1[ICON_STRENGTH]CS. +10%[ICON_STRENGTH]Offensive CS' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_SWORD_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+3[ICON_STRENGTH]CS. +15%[ICON_STRENGTH]Offensive CS [COLOR:255:230:85:255]vs Units at or below 50% HP[ENDCOLOR]. Requires [ICON_RESEARCH][COLOR_RESEARCH_STORED]Chemistry[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_KNIFE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+20%[ICON_STRENGTH]CS [COLOR:255:230:85:255]inside Friendly Territory[ENDCOLOR]. Requires [ICON_RESEARCH][COLOR_RESEARCH_STORED]Metallurgy[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_DISC_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+3[ICON_STRENGTH]CS. When attacked, [COLOR:255:230:85:255]unit returns 10% of the damage taken[ENDCOLOR]. Requires [ICON_RESEARCH][COLOR_RESEARCH_STORED]Dynamite[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_TRIDENT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+4[ICON_STRENGTH]CS. +20%[ICON_STRENGTH]CS [COLOR:255:230:85:255]vs Wounded Units[ENDCOLOR]. Requires [ICON_RESEARCH][COLOR_RESEARCH_STORED]Replaceable Parts[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_DAGGER_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+3[ICON_STRENGTH]CS. +15%[ICON_STRENGTH]CS [COLOR:255:230:85:255]vs Units with full Health[ENDCOLOR]. Requires [ICON_RESEARCH][COLOR_RESEARCH_STORED]Rifling[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_BOW_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+4[ICON_STRENGTH]CS. Before melee Attack [COLOR:255:230:85:255]unit performs an additional Range attack[ENDCOLOR] at 50% of its [ICON_STRENGTH]CS. Requires [ICON_RESEARCH][COLOR_RESEARCH_STORED]Dynamite[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_MUSKET_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+1[ICON_STRENGTH]CS. +20%[ICON_STRENGTH]Defensive CS [COLOR:255:230:85:255]vs Ranged Attacks[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_SHIELD_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+2[ICON_STRENGTH]CS. +10%[ICON_STRENGTH]Defensive CS. +15 HP. Requires [ICON_RESEARCH][COLOR_RESEARCH_STORED]Gunpowder[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_CHAINMAIL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+1[ICON_STRENGTH]CS. +10% XP [COLOR:255:230:85:255]on Fight[ENDCOLOR]. +25%[ICON_ARROW_LEFT]Retreat Chance [COLOR:255:230:85:255]on Enemy Unit[ENDCOLOR] after Attack.' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_ROBE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+3[ICON_STRENGTH]CS. +1[ICON_MOVES]Movement Point. [COLOR:255:230:85:255]On Move[ENDCOLOR] unit inflicts 5 Damage [COLOR:255:230:85:255]to all new adjacent Enemy Land Units[ENDCOLOR]. Requires [ICON_RESEARCH][COLOR_RESEARCH_STORED]Metallurgy[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_SHOES_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+4[ICON_STRENGTH]CS. [COLOR:255:230:85:255]On Kill[ENDCOLOR] unit advances and inflicts 10 Damage [COLOR:255:230:85:255]to all new adjacent Enemy Land Units[ENDCOLOR]. Requires [ICON_RESEARCH][COLOR_RESEARCH_STORED]Military Science[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_MARTIAL_ART_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+1[ICON_STRENGTH]CS. +1[ICON_VIEW_CITY]Sight. +25% XP [COLOR:255:230:85:255]on Fight[ENDCOLOR]. Requires [ICON_RESEARCH][COLOR_RESEARCH_STORED]Machinery[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_TURBAN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = '+6[ICON_STRENGTH]CS. Unit gains even more [ICON_PEACE] [COLOR:255:230:85:255]on Kill[ENDCOLOR]. Requires [ICON_RESEARCH][COLOR_RESEARCH_STORED]Ballistics[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SIKH_BRACELET_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);
	UPDATE Language_en_US SET Text = 'Unit [COLOR:255:230:85:255]deals 5 Damage on turn start[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_SCYTHIAN_BARRAGE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-UCS' AND Value= 1);