--==========================================================================================================================
-- PROMOTION ICONS
--==========================================================================================================================	
------------------------------
-- IconTextureAtlases
------------------------------
INSERT INTO IconTextureAtlases 
			(Atlas, 								IconSize, 	Filename, 							IconsPerRow, 	IconsPerColumn)
VALUES		('UNIT_COMMON_PROMOTION_ATLAS',			32, 		'AntiFighterIcon_032.dds',			1, 				1),
			('UNIT_COMMON_PROMOTION_ATLAS',			45, 		'AntiFighterIcon_045.dds',			1, 				1),
			('UNIT_COMMON_PROMOTION_ATLAS',			64, 		'AntiFighterIcon_064.dds',			1, 				1),
			('UNIT_COMMON_PROMOTION_ATLAS',			256, 		'AntiFighterIcon_256.dds',			1, 				1),
			('UNIT_COMMON_PROMOTION_2_ATLAS',		32, 		'AntiMountedIcon_032.dds',			1, 				1),
			('UNIT_COMMON_PROMOTION_2_ATLAS',		45, 		'AntiMountedIcon_045.dds',			1, 				1),
			('UNIT_COMMON_PROMOTION_2_ATLAS',		64, 		'AntiMountedIcon_064.dds',			1, 				1),
			('UNIT_COMMON_PROMOTION_2_ATLAS',		256, 		'AntiMountedIcon_256.dds',			1, 				1),
			('UNIT_COMMON_PROMOTION_3_ATLAS',		32, 		'AntiTankIcon_032.dds',				1, 				1),
			('UNIT_COMMON_PROMOTION_3_ATLAS',		45, 		'AntiTankIcon_045.dds',				1, 				1),
			('UNIT_COMMON_PROMOTION_3_ATLAS',		64, 		'AntiTankIcon_064.dds',				1, 				1),
			('UNIT_COMMON_PROMOTION_3_ATLAS',		256, 		'AntiTankIcon_256.dds',				1, 				1),
			('UNIT_COMMON_PROMOTION_4_ATLAS',		32, 		'FlankingIcon_032.dds',				1, 				1),
			('UNIT_COMMON_PROMOTION_4_ATLAS',		45, 		'FlankingIcon_045.dds',				1, 				1),
			('UNIT_COMMON_PROMOTION_4_ATLAS',		64, 		'FlankingIcon_064.dds',				1, 				1),
			('UNIT_COMMON_PROMOTION_4_ATLAS',		256, 		'FlankingIcon_256.dds',				1, 				1),
			('UNIT_COMMON_PROMOTION_5_ATLAS',		32, 		'QuickStudyIcon_032.dds',			1, 				1),
			('UNIT_COMMON_PROMOTION_5_ATLAS',		45, 		'QuickStudyIcon_045.dds',			1, 				1),
			('UNIT_COMMON_PROMOTION_5_ATLAS',		64, 		'QuickStudyIcon_064.dds',			1, 				1),
			('UNIT_COMMON_PROMOTION_5_ATLAS',		256, 		'QuickStudyIcon_256.dds',			1, 				1);
------------------------------
-- Promotion Icons
------------------------------
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_CITY_ASSAULT';
	UPDATE UnitPromotions SET PortraitIndex = '42' WHERE Type = 'PROMOTION_CITY_ASSAULT';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_ATLATL_ATTACK';
	UPDATE UnitPromotions SET PortraitIndex = '24' WHERE Type = 'PROMOTION_ATLATL_ATTACK';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_CITY_SIEGE';
	UPDATE UnitPromotions SET PortraitIndex = '40' WHERE Type = 'PROMOTION_CITY_SIEGE';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_CITY_SIEGE_II';
	UPDATE UnitPromotions SET PortraitIndex = '41' WHERE Type = 'PROMOTION_CITY_SIEGE_II';
UPDATE UnitPromotions SET IconAtlas = 'EXPANSION2_PROMOTION_ATLAS' WHERE Type = 'PROMOTION_ANTI_SUBMARINE_I';
	UPDATE UnitPromotions SET PortraitIndex = '18' WHERE Type = 'PROMOTION_ANTI_SUBMARINE_I';
UPDATE UnitPromotions SET IconAtlas = 'EXPANSION2_PROMOTION_ATLAS' WHERE Type = 'PROMOTION_ANTI_SUBMARINE_II';
	UPDATE UnitPromotions SET PortraitIndex = '19' WHERE Type = 'PROMOTION_ANTI_SUBMARINE_II';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_CAN_MOVE_IMPASSABLE';
	UPDATE UnitPromotions SET PortraitIndex = '5' WHERE Type = 'PROMOTION_CAN_MOVE_IMPASSABLE';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_FASTER_HEAL';
	UPDATE UnitPromotions SET PortraitIndex = '51' WHERE Type = 'PROMOTION_FASTER_HEAL';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_PARTIAL_HEAL_IF_DESTROY_ENEMY';
	UPDATE UnitPromotions SET PortraitIndex = '26' WHERE Type = 'PROMOTION_PARTIAL_HEAL_IF_DESTROY_ENEMY';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_ADJACENT_BONUS';
	UPDATE UnitPromotions SET PortraitIndex = '30' WHERE Type = 'PROMOTION_ADJACENT_BONUS';
--10
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_CAN_MOVE_AFTER_ATTACKING';
	UPDATE UnitPromotions SET PortraitIndex = '33' WHERE Type = 'PROMOTION_CAN_MOVE_AFTER_ATTACKING';
UPDATE UnitPromotions SET IconAtlas = 'EXPANSION2_PROMOTION_ATLAS' WHERE Type = 'PROMOTION_DEFEND_NEAR_CAPITAL';
	UPDATE UnitPromotions SET PortraitIndex = '8' WHERE Type = 'PROMOTION_DEFEND_NEAR_CAPITAL';
UPDATE UnitPromotions SET IconAtlas = 'UNIT_COMMON_PROMOTION_ATLAS' WHERE Type = 'PROMOTION_ANTI_FIGHTER';
	UPDATE UnitPromotions SET PortraitIndex = '0' WHERE Type = 'PROMOTION_ANTI_FIGHTER';
UPDATE UnitPromotions SET IconAtlas = 'UNIT_COMMON_PROMOTION_2_ATLAS' WHERE Type = 'PROMOTION_ANTI_MOUNTED_I';
	UPDATE UnitPromotions SET PortraitIndex = '0' WHERE Type = 'PROMOTION_ANTI_MOUNTED_I';
UPDATE UnitPromotions SET IconAtlas = 'UNIT_COMMON_PROMOTION_2_ATLAS' WHERE Type = 'PROMOTION_ANTI_MOUNTED_II';
	UPDATE UnitPromotions SET PortraitIndex = '0' WHERE Type = 'PROMOTION_ANTI_MOUNTED_II';
UPDATE UnitPromotions SET IconAtlas = 'UNIT_COMMON_PROMOTION_3_ATLAS' WHERE Type = 'PROMOTION_ANTI_TANK';
	UPDATE UnitPromotions SET PortraitIndex = '0' WHERE Type = 'PROMOTION_ANTI_TANK';
UPDATE UnitPromotions SET IconAtlas = 'UNIT_COMMON_PROMOTION_3_ATLAS' WHERE Type = 'PROMOTION_ANTI_HELICOPTER';
	UPDATE UnitPromotions SET PortraitIndex = '0' WHERE Type = 'PROMOTION_ANTI_HELICOPTER';
UPDATE UnitPromotions SET IconAtlas = 'EXPANSION_PROMOTION_ATLAS' WHERE Type = 'PROMOTION_COERCION';
	UPDATE UnitPromotions SET PortraitIndex = '3' WHERE Type = 'PROMOTION_COERCION';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_EXTRA_SIGHT_I';
	UPDATE UnitPromotions SET PortraitIndex = '37' WHERE Type = 'PROMOTION_EXTRA_SIGHT_I';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_EXTRA_SIGHT_II';
	UPDATE UnitPromotions SET PortraitIndex = '38' WHERE Type = 'PROMOTION_EXTRA_SIGHT_II';
--20
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_EXTRA_SIGHT_III';
	UPDATE UnitPromotions SET PortraitIndex = '39' WHERE Type = 'PROMOTION_EXTRA_SIGHT_III';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_EXTRA_SIGHT_IV';
	UPDATE UnitPromotions SET PortraitIndex = '43' WHERE Type = 'PROMOTION_EXTRA_SIGHT_IV';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_EXTRA_MOVES_I';
	UPDATE UnitPromotions SET PortraitIndex = '33' WHERE Type = 'PROMOTION_EXTRA_MOVES_I';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_EVASION_I';
	UPDATE UnitPromotions SET PortraitIndex = '44' WHERE Type = 'PROMOTION_EVASION_I';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_EVASION_II';
	UPDATE UnitPromotions SET PortraitIndex = '45' WHERE Type = 'PROMOTION_EVASION_II';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_EMBARKED_SIGHT';
	UPDATE UnitPromotions SET PortraitIndex = '37' WHERE Type = 'PROMOTION_EMBARKED_SIGHT';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_EVERLASTING_YOUTH';
	UPDATE UnitPromotions SET PortraitIndex = '32' WHERE Type = 'PROMOTION_EVERLASTING_YOUTH';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_ATTACK_BONUS';
	UPDATE UnitPromotions SET PortraitIndex = '19' WHERE Type = 'PROMOTION_ATTACK_BONUS';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_ATTACK_BONUS_SWEDEN';
	UPDATE UnitPromotions SET PortraitIndex = '19' WHERE Type = 'PROMOTION_ATTACK_BONUS_SWEDEN';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_FAST_ADMIRAL';
	UPDATE UnitPromotions SET PortraitIndex = '33' WHERE Type = 'PROMOTION_FAST_ADMIRAL';
--30
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_FAST_GENERAL';
	UPDATE UnitPromotions SET PortraitIndex = '33' WHERE Type = 'PROMOTION_FAST_GENERAL';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_FASTER_GENERAL';
	UPDATE UnitPromotions SET PortraitIndex = '33' WHERE Type = 'PROMOTION_FASTER_GENERAL';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_FIRE_SUPPORT';
	UPDATE UnitPromotions SET PortraitIndex = '40' WHERE Type = 'PROMOTION_FIRE_SUPPORT';
UPDATE UnitPromotions SET IconAtlas = 'UNIT_COMMON_PROMOTION_4_ATLAS' WHERE Type = 'PROMOTION_FLANK_ATTACK_BONUS';
	UPDATE UnitPromotions SET PortraitIndex = '0' WHERE Type = 'PROMOTION_FLANK_ATTACK_BONUS';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_FEARED_ELEPHANT';
	UPDATE UnitPromotions SET PortraitIndex = '13' WHERE Type = 'PROMOTION_FEARED_ELEPHANT';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_SKI_INFANTRY';
	UPDATE UnitPromotions SET PortraitIndex = '23' WHERE Type = 'PROMOTION_SKI_INFANTRY';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_FOREIGN_LANDS';
	UPDATE UnitPromotions SET PortraitIndex = '9' WHERE Type = 'PROMOTION_FOREIGN_LANDS';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_FREE_PILLAGE_MOVES';
	UPDATE UnitPromotions SET PortraitIndex = '33' WHERE Type = 'PROMOTION_FREE_PILLAGE_MOVES';
UPDATE UnitPromotions SET IconAtlas = 'UNIT_COMMON_PROMOTION_5_ATLAS' WHERE Type = 'PROMOTION_GAIN_EXPERIENCE';
	UPDATE UnitPromotions SET PortraitIndex = '0' WHERE Type = 'PROMOTION_GAIN_EXPERIENCE';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_GENERAL_STACKING';
	UPDATE UnitPromotions SET PortraitIndex = '13' WHERE Type = 'PROMOTION_GENERAL_STACKING';
--40
UPDATE UnitPromotions SET IconAtlas = 'UNIT_PERSIA_PROMOTION_ATLAS' WHERE Type = 'PROMOTION_GOLDEN_AGE_POINTS';
	UPDATE UnitPromotions SET PortraitIndex = '0' WHERE Type = 'PROMOTION_GOLDEN_AGE_POINTS';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_GREAT_ADMIRAL';
	UPDATE UnitPromotions SET PortraitIndex = '16' WHERE Type = 'PROMOTION_GREAT_ADMIRAL';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_GREAT_GENERAL';
	UPDATE UnitPromotions SET PortraitIndex = '16' WHERE Type = 'PROMOTION_GREAT_GENERAL';
UPDATE UnitPromotions SET IconAtlas = 'EXPANSION2_PROMOTION_ATLAS' WHERE Type = 'PROMOTION_GREAT_MERCHANT';
	UPDATE UnitPromotions SET PortraitIndex = '2' WHERE Type = 'PROMOTION_GREAT_MERCHANT';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_GUERILLA_FIGHTER';
	UPDATE UnitPromotions SET PortraitIndex = '21' WHERE Type = 'PROMOTION_GUERILLA_FIGHTER';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_HAKA_WAR_DANCE';
	UPDATE UnitPromotions SET PortraitIndex = '13' WHERE Type = 'PROMOTION_HAKA_WAR_DANCE';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_HEAL_IF_DESTROY_ENEMY';
	UPDATE UnitPromotions SET PortraitIndex = '26' WHERE Type = 'PROMOTION_HEAL_IF_DESTROY_ENEMY';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_HEAVY_PAYLOAD';
	UPDATE UnitPromotions SET PortraitIndex = '4' WHERE Type = 'PROMOTION_HEAVY_PAYLOAD';
UPDATE UnitPromotions SET IconAtlas = 'EXPANSION2_PROMOTION_ATLAS' WHERE Type = 'PROMOTION_HIMEJI_CASTLE';
	UPDATE UnitPromotions SET PortraitIndex = '10' WHERE Type = 'PROMOTION_HIMEJI_CASTLE';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_HONOR_BONUS';
	UPDATE UnitPromotions SET PortraitIndex = '19' WHERE Type = 'PROMOTION_HONOR_BONUS';
--50
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_IGNORE_TERRAIN_COST';
	UPDATE UnitPromotions SET PortraitIndex = '33' WHERE Type = 'PROMOTION_IGNORE_TERRAIN_COST';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_JAGUAR';
	UPDATE UnitPromotions SET PortraitIndex = '56' WHERE Type = 'PROMOTION_JAGUAR';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_KILL_HEAL';
	UPDATE UnitPromotions SET PortraitIndex = '26' WHERE Type = 'PROMOTION_KILL_HEAL';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_KNOCKOUT_I';
	UPDATE UnitPromotions SET PortraitIndex = '30' WHERE Type = 'PROMOTION_KNOCKOUT_I';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_KNOCKOUT_II';
	UPDATE UnitPromotions SET PortraitIndex = '30' WHERE Type = 'PROMOTION_KNOCKOUT_II';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_MEDIC_GENERAL';
	UPDATE UnitPromotions SET PortraitIndex = '32' WHERE Type = 'PROMOTION_MEDIC_GENERAL';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_MOHAWK';
	UPDATE UnitPromotions SET PortraitIndex = '35' WHERE Type = 'PROMOTION_MOHAWK';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_MORALE';
	UPDATE UnitPromotions SET PortraitIndex = '44' WHERE Type = 'PROMOTION_MORALE';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_MORALE_EVENT';
	UPDATE UnitPromotions SET PortraitIndex = '44' WHERE Type = 'PROMOTION_MORALE_EVENT';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_MOVEMENT_TO_GENERAL';
	UPDATE UnitPromotions SET PortraitIndex = '33' WHERE Type = 'PROMOTION_MOVEMENT_TO_GENERAL';
--60
UPDATE UnitPromotions SET IconAtlas = 'EXPANSION2_PROMOTION_ATLAS' WHERE Type = 'PROMOTION_NATIONALISM';
	UPDATE UnitPromotions SET PortraitIndex = '10' WHERE Type = 'PROMOTION_NATIONALISM';
UPDATE UnitPromotions SET IconAtlas = 'EXPANSION2_PROMOTION_ATLAS' WHERE Type = 'PROMOTION_NAVAL_BONUS';
	UPDATE UnitPromotions SET PortraitIndex = '18' WHERE Type = 'PROMOTION_NAVAL_BONUS';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_MOON_STRIKER';
	UPDATE UnitPromotions SET PortraitIndex = '33' WHERE Type = 'PROMOTION_MOON_STRIKER';
UPDATE UnitPromotions SET IconAtlas = 'PROMOTION_ATLAS' WHERE Type = 'PROMOTION_LITERACY';
	UPDATE UnitPromotions SET PortraitIndex = '33' WHERE Type = 'PROMOTION_LITERACY';