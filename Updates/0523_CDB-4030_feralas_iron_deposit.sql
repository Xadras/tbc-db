DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104021 AND 104044;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104021 AND 104044;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7725 AND 7728;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7725 AND 7728;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104075 AND 104110;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104075 AND 104110;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7734 AND 7739;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7734 AND 7739;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104129 AND 104134;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104129 AND 104134;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7743 AND 7743;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7743 AND 7743;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104141 AND 104152;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104141 AND 104152;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7745 AND 7746;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7745 AND 7746;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104063 AND 104074;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104063 AND 104074;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7732 AND 7733;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7732 AND 7733;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104207 AND 104212;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104207 AND 104212;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7756 AND 7756;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7756 AND 7756;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104003 AND 104008;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104003 AND 104008;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7722 AND 7722;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7722 AND 7722;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104315 AND 104320;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104315 AND 104320;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7774 AND 7774;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7774 AND 7774;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104051 AND 104056;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104051 AND 104056;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7730 AND 7730;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7730 AND 7730;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104423 AND 104428;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104423 AND 104428;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7792 AND 7792;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7792 AND 7792;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104381 AND 104392;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104381 AND 104392;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7785 AND 7786;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7785 AND 7786;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104273 AND 104278;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104273 AND 104278;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7767 AND 7767;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7767 AND 7767;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104291 AND 104296;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104291 AND 104296;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7770 AND 7770;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7770 AND 7770;

DELETE FROM `pool_gameobject` WHERE `guid` = 1050001;
DELETE FROM `gameobject` WHERE `guid` = 1050001;
UPDATE `pool_template` SET `max_limit` = 9 WHERE `entry` = 2045; -- 14	Master Mineral Pool - Feralas

-- Remove Iron Deposit 1735 from remaining nodes (56 Nodes remaining)
-- 104003	7722	0	Mineral Spawn Point 5 - Mithril 40 -> 70
-- 104004	7722	30	Mineral Spawn Point 5 - Iron
-- 104005	7722	5	Mineral Spawn Point 5 - Gold
-- 104006	7722	5	Mineral Spawn Point 5 - Silver
-- 104007	7722	15	Mineral Spawn Point 5 - Small Thorium
-- 104008	7722	5	Mineral Spawn Point 5 - Truesilver
DELETE FROM `pool_gameobject` where `description` LIKE '%Iron%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` = 2045);
DELETE FROM `gameobject` WHERE `guid` IN (104004,104010,104016,104022,104034,104040,104046,104052,104058,104106,104112,104118,104124,104136,104154,104160,
104166,104172,104178,104184,104190,104196,104202,104214,104220,104226,104232,104238,104244,104250,104256,104262,104268,104274,104280,104286,104292,104298,
104304,104310,104316,104322,104328,104334,104340,104346,104352,104358,104364,104370,104376,104382,104388,104394,104400,104424);
UPDATE `pool_pool` SET `mother_pool` = 2051, `Description` = 'Tanaris - Mineral Node' WHERE `pool_id` = 7723; -- 7723	2045	0	Mineral Spawn Point 6 - Feralas
-- Deleting other spawns not yet until they get a spawn_group rework

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140450;
SET @OBJECT_2 = 140451;
SET @OBJECT_3 = 140452;
SET @OBJECT_4 = 140453;
SET @OBJECT_5 = 140454;
SET @OBJECT_6 = 140455;

SET @GROUP_ID = 10088;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -4152.166503906250, -196.632598876953125, 63.74401092529296875, 4.398232460021972656, 0, 0, -0.80901622772216796, 0.587786316871643066, 300, 600, 100, 1),
(@OBJECT_2, 0, 1, 1, -3878.533447265625, 222.9194946289062500, 114.3123779296875000, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679, 300, 600, 100, 1),
(@OBJECT_3, 0, 1, 1, -3703.246582031250, 280.9817810058593750, 142.2508087158203125, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701, 300, 600, 100, 1),
(@OBJECT_4, 0, 1, 1, -4017.339355468750, 529.4856567382812500, 99.24900054931640625, 5.061456203460693359, 0, 0, -0.57357597351074218, 0.819152355194091796, 300, 600, 100, 1),
(@OBJECT_5, 0, 1, 1, -4172.121582031250, 681.2667236328125000, 84.22830963134765625, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738, 300, 600, 100, 1),
(@OBJECT_6, 0, 1, 1, -4391.701660156250, 726.7888793945312500, 115.6001968383789062, 4.241150379180908203, 0, 0, -0.85264015197753906, 0.522498607635498046, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Feralas - Iron Deposit | Silver Vein | Gold Vein (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140460;
SET @OBJECT_2 = 140461;
SET @OBJECT_3 = 140462;
SET @OBJECT_4 = 140463;
SET @OBJECT_5 = 140464;

SET @GROUP_ID = 10089;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -4558.377441406250, -139.326385498046875, 109.7595214843750000, 5.864306926727294921, 0, 0, -0.20791149139404296, 0.978147625923156738, 300, 600, 100, 1),
(@OBJECT_2, 0, 1, 1, -4493.304199218750, 761.9758300781250000, 69.70719909667968750, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023, 300, 600, 100, 1),
(@OBJECT_3, 0, 1, 1, -5052.277832031250, 1176.743774414062500, 61.57779312133789062, 0.366517573595046997, 0, 0, 0.182234764099121093, 0.983255028724670410, 300, 600, 100, 1),
(@OBJECT_4, 0, 1, 1, -5360.648437500000, 1689.734375000000000, 73.22116851806640625, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255, 300, 600, 100, 1),
(@OBJECT_5, 0, 1, 1, -4684.720703125000, 1672.386962890625000, 114.7423400878906250, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Feralas - Iron Deposit | Silver Vein | Gold Vein (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140470;
SET @OBJECT_2 = 140471;
SET @OBJECT_3 = 140472;
SET @OBJECT_4 = 140473;

SET @GROUP_ID = 10090;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -4950.170410156250, 1679.011596679687500, 63.53710937500000000, 3.333590030670166015, 0, 0, -0.99539566040039062, 0.095851235091686248, 300, 600, 100, 1),
(@OBJECT_2, 0, 1, 1, -4971.010253906250, 1753.826782226562500, 65.77416229248046875, 1.745326757431030273, 0, 0, 0.766043663024902343, 0.642788589000701904, 300, 600, 100, 1),
(@OBJECT_3, 0, 1, 1, -5040.290039062500, 1781.076538085937500, 71.50718688964843750, 0.000000000000000000, 0, 0, 0.000000000000000000, 1.000000000000000000, 300, 600, 100, 1),
(@OBJECT_4, 0, 1, 1, -5113.679199218750, 1772.987792968750000, 79.80777740478515625, 3.787367343902587890, 0, 0, -0.94832324981689453, 0.317305892705917358, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Feralas - Iron Deposit | Silver Vein | Gold Vein (1) Ore 002', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140480;
SET @OBJECT_2 = 140481;
SET @OBJECT_3 = 140482;
SET @OBJECT_4 = 140483;

SET @GROUP_ID = 10091;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -4963.411132812500, 1607.134521484375000, 70.10864257812500000, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468, 300, 600, 100, 1),
(@OBJECT_2, 0, 1, 1, -5062.033203125000, 1830.189086914062500, 78.56870269775390625, 1.623155713081359863, 0, 0, 0.725374221801757812, 0.688354730606079101, 300, 600, 100, 1),
(@OBJECT_3, 0, 1, 1, -5003.420410156250, 1838.757812500000000, 78.24241638183593750, 4.555310726165771484, 0, 0, -0.76040554046630859, 0.649448513984680175, 300, 600, 100, 1),
(@OBJECT_4, 0, 1, 1, -5092.580078125000, 1902.765380859375000, 89.69250488281250000, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Feralas - Iron Deposit | Silver Vein | Gold Vein (1) Ore 003', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');
