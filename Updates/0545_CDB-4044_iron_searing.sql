UPDATE `pool_template` SET `max_limit` = 13 WHERE `entry` = 2021; -- 19	Master Mineral Pool - Searing Gorge (West Section) (61 + 2)
UPDATE `pool_template` SET `max_limit` = 6 WHERE `entry` = 2022; -- 10	Master Mineral Pool - Searing Gorge (East Section) (29 + 3)
UPDATE `pool_template` SET `max_limit` = 50 WHERE `entry` = 2007; -- 61	Master Mineral Pool - Burning Steppes (243 + 5)
UPDATE `pool_template` SET `max_limit` = 50 WHERE `entry` = 2041; -- 60	Master Mineral Pool - Durotar (simple pool 167 / 2, limit 50 e.g elwynn currently has 40)
UPDATE `pool_template` SET `max_limit` = 50 WHERE `entry` = 2052; -- 54	Master Mineral Pool - The Barrens (Main Section) (206 + 92, limit 50)
UPDATE `pool_template` SET `max_limit` = 50 WHERE `entry` = 2055; -- 66	Master Mineral Pool - Thousand Needles (261 + 18, limit 50)

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76578 AND 76582;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76578 AND 76582;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6171 AND 6171;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6171 AND 6171;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76618 AND 76622;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76618 AND 76622;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6179 AND 6179;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6179 AND 6179;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76593 AND 76602;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76593 AND 76602;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6174 AND 6175;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6174 AND 6175;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76633 AND 76637;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76633 AND 76637;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6182 AND 6182;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6182 AND 6182;

-- Remove Iron Deposit from remaining nodes in Searing Gorge, can only spawn at these ~4 nodes (105 Nodes remaining)
DELETE FROM `pool_gameobject` where `description` LIKE '%- Iron%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` IN (2021,2022));
DELETE FROM `gameobject` WHERE `guid` IN (75526,76586,76591,76606,76611,76616,76626,76631,76641,76646,76651,76656,76661,76666,76671,76676,76681,76686,76691,76696,
76701,76706,76711,76716,76721,76726,76731,76736,76741,76746,76751,76756,76761);

-- Remove Silver Vein from remaining nodes in Searing Gorge, can only spawn at these ~4 nodes (105 Nodes remaining)
DELETE FROM `pool_gameobject` where `description` LIKE '%- Silver%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` IN (2021,2022));
DELETE FROM `gameobject` WHERE `guid` IN (75527,76587,76592,76607,76612,76617,76627,76632,76642,76647,76652,76657,76662,76667,76672,76677,76682,76687,76692,76697,
76702,76707,76712,76717,76722,76727,76732,76737,76742,76747,76752,76757,76762);

-- Reduce Gold to 5% from 10%
UPDATE `pool_gameobject` SET `Chance` = 5 WHERE `pool_entry` IN (SELECT `pool_id` from `pool_pool` where `mother_pool` IN (2021,2022)) AND `description` LIKE '%Gold%';

-- 76758	6207	0	Mineral Spawn Point 37 - Mithril 65
-- 76759	6207	30	Mineral Spawn Point 37 - Dark Iron classicmangos now has 50% currently due to deleted thorium, befor 25%
-- 76760	6207	10	Mineral Spawn Point 37 - Gold -> 5

-- 76568	6169	0	Mineral Spawn Point 72 - Mithril
-- 76569	6169	20	Mineral Spawn Point 72 - Small Thorium
-- 76570	6169	20	Mineral Spawn Point 72 - Dark Iron (ranges between 20 and 30 now)
-- 76571	6169	10	Mineral Spawn Point 72 - Gold -> 5
-- 76572	6169	3	Mineral Spawn Point 72 - Truesilver

-- Remove some wrong nodes
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76628 AND 76630;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76628 AND 76630;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6181 AND 6181;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6181 AND 6181;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76608 AND 76610;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76608 AND 76610;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6177 AND 6177;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6177 AND 6177;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76458 AND 76462;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76458 AND 76462;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6147 AND 6147;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6147 AND 6147;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76508 AND 76512;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76508 AND 76512;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6157 AND 6157;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6157 AND 6157;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76533 AND 76537;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76533 AND 76537;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6162 AND 6162;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6162 AND 6162;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76443 AND 76447;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76443 AND 76447;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6144 AND 6144;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6144 AND 6144;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76413 AND 76417;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76413 AND 76417;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6138 AND 6138;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6138 AND 6138;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76258 AND 76262;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76258 AND 76262;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6107 AND 6107;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6107 AND 6107;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76573 AND 76577;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76573 AND 76577;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6170 AND 6170;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6170 AND 6170;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76363 AND 76367;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76363 AND 76367;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6128 AND 6128;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6128 AND 6128;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76693 AND 76695;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76693 AND 76695;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6194 AND 6194;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6194 AND 6194;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76483 AND 76487;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76483 AND 76487;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6152 AND 6152;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6152 AND 6152;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76563 AND 76567;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76563 AND 76567;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6168 AND 6168;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6168 AND 6168;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76308 AND 76312;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76308 AND 76312;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6117 AND 6117;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6117 AND 6117;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76683 AND 76685;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76683 AND 76685;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6192 AND 6192;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6192 AND 6192;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140730;
SET @OBJECT_2 = 140731;
SET @OBJECT_3 = 140732;
SET @OBJECT_4 = 140733;

SET @GROUP_ID = 75;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -6833.31103515625, -1762.7951660156250, 260.022277832031250, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -7237.18750000000, -1572.5925292968750, 269.550262451171875, 0.069811686873435974, 0, 0, 0.034898757934570312, 0.999390840530395507, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -6662.31884765625, -1800.0909423828125, 258.574096679687500, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -7218.89892578125, -1842.1958007812500, 292.805633544921875, 3.281238555908203125, 0, 0, -0.99756336212158203, 0.069766148924827575, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Searing Gorge - Iron Deposit | Silver Vein | Gold Vein (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');
