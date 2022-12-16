DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 103979 AND 104002;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 103979 AND 104002;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7718 AND 7721;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7718 AND 7721;
UPDATE `pool_template` SET `max_limit` = 14 WHERE `entry` = 2045; -- 19	Master Mineral Pool - Feralas

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140430;
SET @OBJECT_2 = 140431;
SET @OBJECT_3 = 140432;
SET @OBJECT_4 = 140433;
SET @OBJECT_5 = 140434;

SET @GROUP_ID = 10086;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -5582.610351562500, 2287.955810546875, 9.679326057434082031, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -5030.425292968750, 2119.411865234375, 33.15780258178710937, 0.733038187026977539, 0, 0, 0.358367919921875000, 0.933580458164215087, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -5313.676269531250, 2163.528564453125, 17.59467506408691406, 4.921829223632812500, 0, 0, -0.62932014465332031, 0.777146160602569580, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -3808.130126953125, 3028.036376953125, 15.41902637481689453, 3.385940074920654296, 0, 0, -0.99254608154296875, 0.121869951486587524, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -3844.812500000000, 2815.483398437500, 18.70563316345214843, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.507539391517639160, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Feralas - Small Thorium Vein | Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140440;
SET @OBJECT_2 = 140441;
SET @OBJECT_3 = 140442;
SET @OBJECT_4 = 140443;
SET @OBJECT_5 = 140444;

SET @GROUP_ID = 10087;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -5575.67871093750, 1104.0152587890625, 17.94828796386718750, 4.764749526977539062, 0, 0, -0.68835449218750000, 0.725374460220336914, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -5561.75195312500, 988.42364501953125, 16.29389381408691406, 1.291541695594787597, 0, 0, 0.601814270019531250, 0.798636078834533691, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -5580.26220703125, 1134.2769775390625, 23.24390983581542968, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -5580.58154296875, 1063.4840087890625, 18.38041877746582031, 4.694936752319335937, 0, 0, -0.71325016021728515, 0.700909554958343505, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -5509.05029296875, 1115.7363281250000, 24.38892173767089843, 3.839725255966186523, 0, 0, -0.93969249725341796, 0.342020452022552490, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Feralas - Small Thorium Vein | Truesilver Deposit (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5');
