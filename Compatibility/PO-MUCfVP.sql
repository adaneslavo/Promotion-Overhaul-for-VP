/*
MUCfVP compatibility patch!
0 = Disabled disregarding if its detects MUCfVP by many.
1 = Enabled if it detects the MUCfVP by many.
2 = Disabled until it detects something! (Default)
*/
/*
INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('PO-MUCfVP', 	2);

UPDATE COMMUNITY
SET Value = '1'
WHERE Type = 'PO-MUCfVP' AND EXISTS (SELECT * FROM Units WHERE Type='UNIT_ZULU_INDABA') AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=0);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Poisoned Weapon[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_ATLATL_ATTACK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+33%[ICON_RANGE_STRENGTH]RCS [COLOR:255:230:85:255]vs Wounded Units[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_ATLATL_ATTACK_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Proxenos[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_GREECE_PROXENOS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+2 [ICON_GOLD]Gold in [ICON_CAPITAL]Capital and +5 [ICON_INFLUENCE] Influence [COLOR:255:230:85:255]after Diplomatic Mission[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_GREECE_PROXENOS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Santa Mar�a[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_SPAIN_SANTA_MARIA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = 'Unit gains [ICON_GREAT_ADMIRAL] Great Admiral Points [COLOR:255:230:85:255]on Kill[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_SPAIN_SANTA_MARIA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Invincible[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_SPAIN_INVINCIBLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+4[ICON_STRENGTH]CS if [COLOR:255:230:85:255]at full Health[ENDCOLOR]. [COLOR:255:230:85:255]On Kill[ENDCOLOR], all Armadas [COLOR:255:230:85:255]within 5-tile range[ENDCOLOR] gain 2 XP. [COLOR_NEGATIVE_TEXT]Lost after unit upgrade[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_SPAIN_INVINCIBLE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Mingghan[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_MONGOLIA_MINGGHAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+5 XP [COLOR:255:230:85:255]on Pillage[ENDCOLOR]. +20%[ICON_STRENGTH]CS [COLOR:255:230:85:255]on Pillaged Tile[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_MONGOLIA_MINGGHAN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Embrasure[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_POLAND_BARBICAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+33%[ICON_RANGE_STRENGTH]RCS if unit [COLOR:255:230:85:255]is Garrisoned in the City[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_POLAND_BARBICAN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Legatus Legionis[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ROME_LEGATUS_LEGIONIS_ON_BALLISTA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+1[ICON_MOVES]Movement Point [COLOR:255:230:85:255]if unit [COLOR:255:230:85:255]starts turn within 2 tiles from Great General[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ROME_LEGATUS_LEGIONIS_ON_BALLISTA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Siege Mobility[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ROME_LEGATUS_LEGIONIS_EFFECT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+1[ICON_MOVES]Movement Point.' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ROME_LEGATUS_LEGIONIS_EFFECT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Fighting Cock[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_PORTUGAL_CACADOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = 'Unit gets a free Trailblazer or Survivalism promotion [COLOR:255:230:85:255]on Leveling[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_PORTUGAL_CACADOR_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Chasquiwasi[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_INCA_CHASQUIWASI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+1[ICON_MOVES]Movement Point if unit [COLOR:255:230:85:255]is inside Friendly Territory[ENDCOLOR]. +10 HP [COLOR:255:230:85:255]on Heal[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_INCA_CHASQUIWASI_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Razzia[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_MOROCCO_RAZZIA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = 'Nearest Coastal Friendly City gains [ICON_FOOD]Food and [ICON_PRODUCTION]Production [COLOR:255:230:85:255]on Kill, Pillage or Trade Route Plunder[ENDCOLOR]. Unit [COLOR:255:230:85:255]can Enter Enemy Territory without Open Borders Agreement[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_MOROCCO_RAZZIA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Epic[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_INDIA_EPIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = 'Unit gains [ICON_CULTURE]Culture and extra XP [COLOR:255:230:85:255]on Kill[ENDCOLOR]. [ICON_CULTURE]Culture doubled [COLOR:255:230:85:255]on Barbarian Kills[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_INDIA_EPIC_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Dhanurvidya[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_INDIA_DHANURVIDYA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = 'Unit gains [ICON_CULTURE]Culture and [ICON_PEACE]Faith [COLOR:255:230:85:255]on Leveling[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_INDIA_DHANURVIDYA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Greek Fire[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BYZANTIUM_GREEK_FIRE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:255:230:85:255]After Attack[ENDCOLOR] Defending Enemy Unit is marked. [COLOR:255:230:85:255]At the beginning of its turn[ENDCOLOR] it takes an additional 10 "fire" Damage for every mark. Effect can stack up to [COLOR:255:230:85:255]3[ENDCOLOR] times after battles with 3 different units.' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BYZANTIUM_GREEK_FIRE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Fire[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BYZANTIUM_GREEK_FIRE_ON_UNIT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = 'Unit takes 10 Damage [COLOR:255:230:85:255]at the start of its turn[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BYZANTIUM_GREEK_FIRE_ON_UNIT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Huge Fire[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BYZANTIUM_GREEK_FIRE_2_ON_UNIT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = 'Unit takes 20 Damage [COLOR:255:230:85:255]at the start of its turn[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BYZANTIUM_GREEK_FIRE_2_ON_UNIT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Raging Fire[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BYZANTIUM_GREEK_FIRE_3_ON_UNIT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = 'Unit takes 30 Damage [COLOR:255:230:85:255]at the start of its turn[ENDCOLOR].' WHERE Tag = '' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Captives of War[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_AZTEC_CAPTIVES_OF_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = 'Unit [COLOR:255:230:85:255]can spawn Worker Unit on Kill[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_AZTEC_CAPTIVES_OF_WAR_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Lost Codices[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_MAYA_SCOUT_GOODY_BONUS_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = 'Unit gains [ICON_RESEARCH]Science and [ICON_CULTURE]Culture [COLOR:255:230:85:255]from Ancient Ruins[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_MAYA_SCOUT_GOODY_BONUS_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:250:100:100:255]Siege Inaccuracy II[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_OTTOMANS_SIEGE_INACCURACY_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '-50%[ICON_RANGE_STRENGTH]RCS [COLOR:255:230:85:255]vs Land Units[ENDCOLOR]. [COLOR_NEGATIVE_TEXT]Lost after unit upgrade[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_OTTOMANS_SIEGE_INACCURACY_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:190:180:45:255]Sahi Topu[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_OTTOMANS_SAHI_TOPU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+10 HP [COLOR:255:230:85:255]on Heal inside Friendly Territory[ENDCOLOR]. Unit deals 20 Damage to itself [COLOR:255:230:85:255]on Attack[ENDCOLOR]. [COLOR_NEGATIVE_TEXT]Lost after unit upgrade[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_OTTOMANS_SAHI_TOPU_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Goedendag![ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_NETHERLANDS_GOEDENDAG' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+25%[ICON_STRENGTH]CS [COLOR:255:230:85:255]vs Mounted Units[ENDCOLOR]. +10%[ICON_STRENGTH]CS [COLOR:255:230:85:255]to all adjacent Friendly Units for one turn[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_NETHERLANDS_GOEDENDAG_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Golden Spurs[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_NETHERLANDS_GOEDENDAG_EFFECT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+10%[ICON_STRENGTH]CS.' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_NETHERLANDS_GOEDENDAG_EFFECT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Burgemeeste[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_NETHERLANDS_BURGEMEESTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+50%[ICON_STRENGTH]CS if unit [COLOR:255:230:85:255]starts its turn Garrisoned in a City[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_NETHERLANDS_BURGEMEESTE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Merchant Militia[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_NETHERLANDS_BURGEMEESTE_EFFECT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+50%[ICON_STRENGTH]CS.' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_NETHERLANDS_BURGEMEESTE_EFFECT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Garland Mine[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ARABIA_GARLAND_MINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = 'Unit uses [COLOR:255:230:85:255]no[ENDCOLOR][ICON_MOVES]Movement Points [COLOR:255:230:85:255]on Pillage[ENDCOLOR]. All [COLOR:255:230:85:255]adjacent Enemy Units[ENDCOLOR] take 10 Damage [COLOR:255:230:85:255]on Pillage[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ARABIA_GARLAND_MINE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Desert Raider[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ARABIA_DESERT_RAIDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = 'Double[ICON_MOVES]Movement and +25%[ICON_STRENGTH]CS [COLOR:255:230:85:255]on Desert[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ARABIA_DESERT_RAIDER_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Fury of Nergal[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ASSYRIA_FURY_OF_NERGAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+7%[ICON_STRENGTH]CS [COLOR:255:230:85:255]for each adjacent Enemy Unit[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ASSYRIA_FURY_OF_NERGAL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Hard and Fast[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ASSYRIA_IRON_AND_HORSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+2[ICON_STRENGTH]CS if [COLOR:255:230:85:255]Player has more Horses or Iron than Iron Chariot Units[ENDCOLOR]. Bonuses can stack. [COLOR_NEGATIVE_TEXT]Lost after unit upgrade[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ASSYRIA_IRON_AND_HORSE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Ibutho[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ZULU_IBUTHO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = 'Friendly Units stacked with this unit gain extra XP [COLOR:255:230:85:255]on Attack[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ZULU_IBUTHO_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Iqawe[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ZULU_IQAWE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:255:230:85:255]On Expending[ENDCOLOR], [COLOR:255:230:85:255]grants XP[ENDCOLOR] to a stacked Friendly Unit and [COLOR:255:230:85:255]inflicts Damage to every adjacent Enemy Unit[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_ZULU_IQAWE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Mercy[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_EGYPT_MERCY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+30%[ICON_STRENGTH]CS [COLOR:255:230:85:255]vs Units at or below 50 HP[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_EGYPT_MERCY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Legacy[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+10%[ICON_STRENGTH]Defensive CS [COLOR:255:230:85:255]vs Ranged Attacks[ENDCOLOR]. Unit gets +8%[ICON_STRENGTH]CS [COLOR:255:230:85:255]on levels 2, 4, 6, 8 and 10[ENDCOLOR], +10%[ICON_STRENGTH]CS [COLOR:255:230:85:255]on level 12[ENDCOLOR] and +25%[ICON_STRENGTH]CS [COLOR:255:230:85:255]on level 15[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Legacy I[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+8%[ICON_STRENGTH]CS.' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_1_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Legacy II[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+16%[ICON_STRENGTH]CS.' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_2_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Legacy III[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_3' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+24%[ICON_STRENGTH]CS.' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_3_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Legacy IV[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_4' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+32%[ICON_STRENGTH]CS.' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_4_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Legacy V[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_5' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+40%[ICON_STRENGTH]CS.' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_5_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Legacy VI[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_6' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+50%[ICON_STRENGTH]CS.' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_6_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]A Winner is You[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_7' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '+75%[ICON_STRENGTH]CS.' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_BABYLON_LEGACY_7_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255]Philhellenism[ENDCOLOR]' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_GREECE_PHILHELLENISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = 'Unit gains [ICON_PRODUCTION]Production in the [ICON_CAPITAL]Capital and [ICON_GOLD]Gold for every City-State Ally or Friend on [COLOR:255:230:85:255]Ranged Attack[ENDCOLOR].' WHERE Tag = 'TXT_KEY_PROMOTION_UNIT_GREECE_PHILHELLENISM_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255][ENDCOLOR]' WHERE Tag = '' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '' WHERE Tag = '' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255][ENDCOLOR]' WHERE Tag = '' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '' WHERE Tag = '' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '[COLOR:140:155:255:255][ENDCOLOR]' WHERE Tag = '' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);
UPDATE Language_en_US SET Text = '' WHERE Tag = '' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='PO-MUCfVP' AND Value=1);

		<Row Tag="TXT_KEY_PROMOTION_UNIT_POLYNESIA_KAPU_KUIALUA">
			<Text>Kapu Ku'ialua</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_POLYNESIA_KAPU_KUIALUA_HELP">
			<Text>[COLOR:255:230:85:255]After Attack[ENDCOLOR] Defending Enemy Unit is marked. [COLOR:255:230:85:255]At the beginning of its turn[ENDCOLOR] it takes an additional 10 "bleed" Damage for every mark. Effect can stack up to [COLOR:255:230:85:255]3[ENDCOLOR] times after battles with 3 different units.</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_POLYNESIA_KAPU_KUIALUA_ON_UNIT">
			<Text>Leiomano</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_POLYNESIA_KAPU_KUIALUA_ON_UNIT_HELP">
			<Text>-20 Maximum HP and -10 HP [COLOR:255:230:85:255]on Heal[ENDCOLOR]. Both effects last [COLOR:255:230:85:255]2[ENDCOLOR] turns.</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_KOREA_COAST_MOVE">
			<Text>Coastal Patrol</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_KOREA_COAST_MOVE_HELP">
			<Text>Half[ICON_MOVES]Movement Point [COLOR:255:230:85:255]in Deep Ocean[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_KOREA_DECK_SPIKES">
			<Text>Deck Spikes</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_KOREA_DECK_SPIKES_HELP">
			<Text>+25%[ICON_STRENGTH]CS [COLOR:255:230:85:255]vs Naval Melee Units[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_AUSTRIA_YORKSCHER_MARCHE">
			<Text>Regimentsmarsche</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_AUSTRIA_YORKSCHER_MARCHE_HELP">
			<Text>Unit gains [ICON_CULTURE]Culture if unit [COLOR:255:230:85:255]is Garrisoned or is standing in a Fort or Citadel inside Owned Territory[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_DENMARK_VIKING_EXPLORATION">
			<Text>Viking Exploration</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_DENMARK_VIKING_EXPLORATION_HELP">
			<Text>[COLOR:255:230:85:255]Embarked Units[ENDCOLOR] starting in the same tile as a unit with this promotion [COLOR:255:230:85:255]can cross Ocean[ENDCOLOR]. Promotion stays until Embarked Unit leaves the Ocean.</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_DENMARK_VIKING_EXPLORATION_CAN_CROSS_OCEAN">
			<Text>Free to Explore</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_DENMARK_VIKING_EXPLORATION_CAN_CROSS_OCEAN_HELP">
			<Text>Unit [COLOR:255:230:85:255]can cross Ocean Tiles[ENDCOLOR].</Text>
		</Row>		
		<Row Tag="TXT_KEY_PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_ON_LEGION">
			<Text>Praefectus Castrorum</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_ON_LEGION_HELP">
			<Text>+60% [ICON_WORKER] Work Rate if unit [COLOR:255:230:85:255]starts turn within 2 tiles from Great General[ENDCOLOR]</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_EFFECT">
			<Text>Camp Management</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_EFFECT_HELP">
			<Text>+60% [ICON_WORKER] Work Rate [COLOR:255:230:85:255]from Great General[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_RUSSIA_GRAPESHOT">
			<Text>Grapeshot</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_RUSSIA_GRAPESHOT_HELP">
			<Text>+50%[ICON_RANGE_STRENGTH]RCS [COLOR:255:230:85:255]vs Melee and Gunpowder Units[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_ENGLAND_AGINCOURT">
			<Text>Agincourt</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_ENGLAND_AGINCOURT_HELP">
			<Text>+20% [ICON_RANGED_STRENGTH] Attack Bonus and +20%[ICON_STRENGTH]Defensive CS Bonus [COLOR:255:230:85:255]vs Armor and Mounted Units[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_AMERICA_MONITOR">
			<Text>Harbor Defense</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_AMERICA_MONITOR_HELP">
			<Text>+5%[ICON_STRENGTH]CS [COLOR:255:230:85:255]to adjacent Friendly Cities[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_AMERICA_HARDENED">
			<Text>Hardened</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_AMERICA_HARDENED_HELP">
			<Text>All incoming Damage is reduced by 3.</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_MAYA_KATUN_AHAW">
			<Text>K'atun Ahaw</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_MAYA_KATUN_AHAW_HELP">
			<Text>Unit gets unique ability [COLOR:255:230:85:255]every 20 Game Turns[ENDCOLOR]. Effect can be extended [COLOR:255:230:85:255]4[ENDCOLOR] times.</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_MAYA_KATUN_AHAW_1">
			<Text>Hun K'atun Ahaw</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_MAYA_KATUN_AHAW_1_HELP">
			<Text>+5 XP. +5% [ICON_DEFENSE] Combat Strength.</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_MAYA_KATUN_AHAW_2">
			<Text>Ka'a K'atun Ahaw</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_MAYA_KATUN_AHAW_2_HELP">
			<Text>+10 XP. +10% [ICON_DEFENSE] Combat Strength. +5% [ICON_DEFENSE] Combat Strength [COLOR:255:230:85:255]in Forest and Jungle[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_MAYA_KATUN_AHAW_3">
			<Text>Oox K'atun Ahaw</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_MAYA_KATUN_AHAW_3_HELP">
			<Text>+10 XP. +10% [ICON_DEFENSE] Combat Strength. +15% [ICON_DEFENSE] Combat Strength [COLOR:255:230:85:255]in Forest and Jungle[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_MAYA_KATUN_AHAW_4">
			<Text>Kan K'atun Ahaw</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_MAYA_KATUN_AHAW_4_HELP">
			<Text>+15 XP. +10% [ICON_DEFENSE] Combat Strength. +5% [ICON_DEFENSE] Combat Strength [COLOR:255:230:85:255]in Forest and Jungle[ENDCOLOR]. +10 HP [COLOR:255:230:85:255]on Heal inside Friendly Territory[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_POLAND_BOGURODZICA">
			<Text>Bogurodzica</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_POLAND_BOGURODZICA_HELP">
			<Text>Unit gains [ICON_PEACE]Faith [COLOR:255:230:85:255]on Kill[ENDCOLOR]. Bonus doubled [COLOR:255:230:85:255]on Barbarian Kills[ENDCOLOR]. +25%[ICON_STRENGTH]Defensive CS Bonus.</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_INDONESIA_FLYING_THE_AMA">
			<Text>Flying the Ama</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_INDONESIA_FLYING_THE_AMA_HELP">
			<Text>+2[ICON_MOVES]Movement Points. [COLOR_NEGATIVE_TEXT]Lost after unit upgrade[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_BRAZIL_EXPEDITIONARY_FORCE">
			<Text>Expeditionary Force</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_BRAZIL_EXPEDITIONARY_FORCE_HELP">
			<Text>+1%[ICON_STRENGTH]CS [COLOR:255:230:85:255]for every tile between unit and [ICON_CAPITAL]Capital[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_BRAZIL_TOURISM">
			<Text>Glorious Banner</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_BRAZIL_TOURISM_HELP">
			<Text>Unit gains [ICON_TOURISM] Tourism [COLOR:255:230:85:255]toward all Civilizations on Kill[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_PERSIA_SAFAVI_AGITATOR">
			<Text>Safavi Agitator</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_PERSIA_SAFAVI_AGITATOR_HELP">
			<Text>Unit gains [ICON_PEACE]Faith, [ICON_GOLD]Gold and [ICON_GOLDEN_AGE]Golden Age Points each turn if it is standing [COLOR:255:230:85:255]inside Enemy Territory[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_IROQUOIS_DIPLOMATIC_RECIPROCITY">
			<Text>Reciprocity</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_IROQUOIS_DIPLOMATIC_RECIPROCITY_HELP">
			<Text>After creating an [COLOR:255:230:85:255]Embassy[ENDCOLOR] its yields are permanently added to your [ICON_CAPITAL]Capital's revenue if target City-State [COLOR:255:230:85:255]is an Ally[ENDCOLOR] or only half, if it [COLOR_NEGATIVE_TEXT]is not[ENDCOLOR] one.</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_CELTS_SCYTHE">
			<Text>Rend</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_CELTS_SCYTHE_HELP">
			<Text>[COLOR:255:230:85:255]On Move[ENDCOLOR] unit inflicts 10 [COLOR:255:230:85:255]to all new adjacent Enemy Units[ENDCOLOR]. Ignores Zone of Control.</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_CELTS_CARNYX">
			<Text>Carnyx</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_CELTS_CARNYX_HELP">
			<Text>+10%[ICON_RANGE_STRENGTH]RCS [COLOR:255:230:85:255]vs Archer and Melee Units[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_SIAM_COASTAL_CANNON">
			<Text>Coastal Cannon</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_SIAM_COASTAL_CANNON_HELP">
			<Text>+25%[ICON_RANGE_STRENGTH]RCS [COLOR:255:230:85:255]vs Naval Units[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_SIAM_CROACHING_TIGER">
			<Text>Crouching Tiger</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_SIAM_CROACHING_TIGER_HELP">
			<Text>15 Bonus Damage [COLOR:255:230:85:255]for every Remaining Movement Point[ENDCOLOR] on Attack.</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_CARTHAGE_GENERAL">
			<Text>Admiralty</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_CARTHAGE_GENERAL_HELP">
			<Text>Unit turns into Great Admiral [COLOR:255:230:85:255]on Embark[ENDCOLOR]. [COLOR:255:230:85:255]From the beginning of the turn to its end[ENDCOLOR], same tile or adjacent Friendly Units [COLOR:255:230:85:255]ignore ZOC[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_CARTHAGE_ADMIRAL">
			<Text>Commandeering</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_CARTHAGE_ADMIRAL_HELP">
			<Text>Unit turns into Great General if it [COLOR:255:230:85:255]is standing in City[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_CARTHAGE_ZOC">
			<Text>Great Tactician</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_CARTHAGE_ZOC_HELP">
			<Text>Unit [COLOR:255:230:85:255]ignores Zone of Control[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_ETHIOPIA_MAIM">
			<Text>Maim</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_ETHIOPIA_MAIM_HELP">
			<Text>[COLOR:255:230:85:255]After Attack[ENDCOLOR] Defending Enemy Unit is marked. Marked unit has reduced[ICON_MOVES]Movement Point [COLOR:255:230:85:255]next turn[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_ETHIOPIA_MAIM_ON_UNIT">
			<Text>Maimed</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_ETHIOPIA_MAIM_ON_UNIT_HELP">
			<Text>-1[ICON_MOVES]Movement Point.</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_ETHIOPIA_HOOKED_WEAPON">
			<Text>Hooked Weapon</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_ETHIOPIA_HOOKED_WEAPON_HELP">
			<Text>+25%[ICON_STRENGTH]CS [COLOR:255:230:85:255]vs Mounted Units[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_GERMANY_FUROR_TEUTONICUS">
			<Text>Furor Teutonicus</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_GERMANY_FUROR_TEUTONICUS_HELP">
			<Text>+50%[ICON_STRENGTH]CS [COLOR:255:230:85:255]vs Barbarians[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_GERMANY_BARBARIAN_ALLIANCE">
			<Text>Barbarian Alliance</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_GERMANY_BARBARIAN_ALLIANCE_HELP">
			<Text>Unit [COLOR:255:230:85:255]can convert Barbarian Unit[ENDCOLOR] to your side [COLOR:255:230:85:255]on Kill[ENDCOLOR]. +5 [ICON_INFLUENCE] Influence to the nearest City-State [COLOR:255:230:85:255]on Conversion[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_SONGHAI_HORSE_FATHER">
			<Text>Father of the Horse</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_SONGHAI_HORSE_FATHER_HELP">
			<Text>+15%[ICON_STRENGTH]CS [COLOR:255:230:85:255]to all Friendly Mounted Units within 2 tiles[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_SONGHAI_HORSE_FATHER_EFFECT">
			<Text>Nearby Sofa</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_SONGHAI_HORSE_FATHER_EFFECT_HELP">
			<Text>+15%[ICON_STRENGTH]CS [COLOR:255:230:85:255]from Sofa[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_COCA">
			<Text>Coca Leaves</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_COCA_HELP">
			<Text>Unit [COLOR:255:230:85:255]can cross Mountains[ENDCOLOR]. +15% [ICON_WORKER] Work Rate.</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_HUNS_HORSE_ARCHER">
			<Text>Last Chance</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_HUNS_HORSE_ARCHER_HELP">
			<Text>Unit Attacks a valid target automatically [COLOR:255:230:85:255]if spent all[ICON_MOVES]Movement Points without Attacking[ENDCOlOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_HUNS_MIGRATION">
			<Text>Migration</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_HUNS_MIGRATION_HELP">
			<Text>+1[ICON_MOVES]Movement Point to Workers and Settlers [COLOR:255:230:85:255]that begin the turn stacked with this unit[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_HUNS_SACKER">
			<Text>Bellum Alet</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_HUNS_SACKER_HELP">
			<Text>10 HP to all adjacent Friendly Units [COLOR:255:230:85:255]on Pillage[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_PORTUGAL_AGE_OF_DISCOVERY">
			<Text>Age of Discovery</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_PORTUGAL_AGE_OF_DISCOVERY_HELP">
			<Text>Gain [ICON_GOLD]Gold [COLOR:255:230:85:255]for revealing new areas[ENDCOLOR] on the map.</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_CHINA_KOWTOW">
			<Text>Kowtow</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_CHINA_KOWTOW_HELP">
			<Text>Unit [COLOR:255:230:85:255]can Enter Enemy Territory[ENDCOLOR] without Open Borders Agreement. +2 [ICON_INFLUENCE] Influence per turn [COLOR:255:230:85:255]inside City-State Territory[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_JAPAN_YAMATO">
			<Text>Taikan Kyohosyugi</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_JAPAN_YAMATO_HELP">
			<Text>Unit gains [ICON_GREAT_ADMIRAL] Great Admiral Points [COLOR:255:230:85:255]on Kill[ENDCOLOR].</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_SHOSHONE_BIG_HORSE_DANCE">
			<Text>Big Horse Dance</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_SHOSHONE_BIG_HORSE_DANCE_HELP">
			<Text>Adds[ICON_STRENGTH]Defensive CS Bonus [COLOR:255:230:85:255]on Fortifying[ENDCOLOR]. Fights at full strength when Damaged.</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_SHOSHONE_BIG_HORSE_DANCE_PERFORMED">
			<Text>Big Horse Dance Performed</Text>
		</Row>
		<Row Tag="TXT_KEY_PROMOTION_UNIT_SHOSHONE_BIG_HORSE_DANCE_PERFORMED_HELP">
			<Text>Unit [COLOR:255:230:85:255]is Fortified[ENDCOLOR].[ICON_STRENGTH]Defensive CS Bonus added.</Text>
		</Row>

