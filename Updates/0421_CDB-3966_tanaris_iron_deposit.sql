UPDATE `pool_template` SET `max_limit` = 20 WHERE `entry` = 2051; -- 2051	28	Master Mineral Pool - Tanaris - down to 119 nodes from 167

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107743 AND 107814;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107743 AND 107814;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8229 AND 8240;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8229 AND 8240;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107611 AND 107730;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107611 AND 107730;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8207 AND 8226;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8207 AND 8226;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107857 AND 107862;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107857 AND 107862;
DELETE FROM `pool_pool` WHERE `pool_id` IN (8248);
DELETE FROM `pool_template` WHERE `entry` IN (8248);

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107515 AND 107544;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107515 AND 107544;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8191 AND 8195;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8191 AND 8195;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107551 AND 107592;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107551 AND 107592;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8197 AND 8203;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8197 AND 8203;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107599 AND 107604;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107599 AND 107604;
DELETE FROM `pool_pool` WHERE `pool_id` IN (8205);
DELETE FROM `pool_template` WHERE `entry` IN (8205);

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108642 AND 108653;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108642 AND 108653;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9187 AND 9188;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9187 AND 9188;

-- UPDATE `pool_gameobject` SET `chance` = '0' WHERE (`pool_entry` IN (6395, 6401, 6402, 6409, 6412, 6417, 6420, 6427, 6433)); -- cannot delete them just yet, could be valid spawns of Mithril
-- 0	Mineral Spawn Point 65 - Mithril 40%
-- 20	Mineral Spawn Point 65 - Iron
-- 10	Mineral Spawn Point 65 - Small Thorium
-- 20	Mineral Spawn Point 65 - Truesilver
-- 5	Mineral Spawn Point 65 - Gold
-- 5	Mineral Spawn Point 65 - Silver

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140140;
SET @OBJECT_2 = 140141;
SET @OBJECT_3 = 140142;
SET @OBJECT_4 = 140143;
SET @OBJECT_5 = 140144;

SET @GROUP_ID = 10070;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -7989.82568359375, -5303.541503906250, 1.821349024772644042, 5.201082706451416015, 0, 0, -0.51503753662109375, 0.857167601585388183, 300, 600, 100, 1),
(@OBJECT_2, 0, 1, 1, -8121.61572265625, -5194.753417968750, 17.82640838623046875, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592, 300, 600, 100, 1),
(@OBJECT_3, 0, 1, 1, -7965.87158203125, -5080.337890625000, 19.40280342102050781, 0.977383077144622802, 0, 0, 0.469470977783203125, 0.882947921752929687, 300, 600, 100, 1),
(@OBJECT_4, 0, 1, 1, -8055.05224609375, -5113.918945312500, 14.37695503234863281, 3.211419343948364257, 0, 0, -0.99939060211181640, 0.034906134009361267, 300, 600, 100, 1),
(@OBJECT_5, 0, 1, 1, -7879.22656250000, -5001.199707031250, 18.15205764770507812, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Tanaris - Iron Deposit | Silver Vein | Gold Vein (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '1735', '0', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140150;
SET @OBJECT_2 = 140151;
SET @OBJECT_3 = 140152;
SET @OBJECT_4 = 140153;
SET @OBJECT_5 = 140154;

SET @GROUP_ID = 10071;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -8231.05175781250, -2637.931884765625, 11.71840476989746093, 1.623155713081359863, 0, 0, 0.725374221801757812, 0.688354730606079101, 300, 600, 100, 1),
(@OBJECT_2, 0, 1, 1, -7735.28662109375, -2826.042236328125, 12.22250747680664062, 4.660029888153076171, 0, 0, -0.72537422180175781, 0.688354730606079101, 300, 600, 100, 1),
(@OBJECT_3, 0, 1, 1, -8081.04345703125, -2728.150878906250, 13.63619613647460937, 2.565631866455078125, 0, 0, 0.958819389343261718, 0.284016460180282592, 300, 600, 100, 1),
(@OBJECT_4, 0, 1, 1, -7963.94531250000, -2809.080810546875, 32.99222183227539062, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.951056778430938720, 300, 600, 100, 1),
(@OBJECT_5, 0, 1, 1, -8275.46679687500, -2368.377929687500, 10.65166091918945312, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Tanaris - Iron Deposit | Silver Vein | Gold Vein (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '1735', '0', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140160;
SET @OBJECT_2 = 140161;
SET @OBJECT_3 = 140162;
SET @OBJECT_4 = 140163;
SET @OBJECT_5 = 140164;

SET @GROUP_ID = 10072;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -8950.98828125000, -3635.419189453125, 12.20802307128906250, 3.141592741012573242, 0, 0, -00000000000000001.0, 0.000000000000000000, 300, 600, 100, 1),
(@OBJECT_2, 0, 1, 1, -9142.91015625000, -3588.432861328125, 11.23573970794677734, 2.111847877502441406, 0, 0, 0.870355606079101562, 0.492423713207244873, 300, 600, 100, 1),
(@OBJECT_3, 0, 1, 1, -8756.42871093750, -4210.460937500000, 13.82471370697021484, 2.042035102844238281, 0, 0, 0.852640151977539062, 0.522498607635498046, 300, 600, 100, 1),
(@OBJECT_4, 0, 1, 1, -8691.68554687500, -4020.383789062500, 43.89756774902343750, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437, 300, 600, 100, 1),
(@OBJECT_5, 0, 1, 1, -8809.96679687500, -3823.415283203125, 37.53596878051757812, 1.797688722610473632, 0, 0, 0.782608032226562500, 0.622514784336090087, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Tanaris - Iron Deposit | Silver Vein | Gold Vein (1) Ore 002', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '1735', '0', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140170;
SET @OBJECT_2 = 140171;
SET @OBJECT_3 = 140172;
SET @OBJECT_4 = 140173;
SET @OBJECT_5 = 140174;

SET @GROUP_ID = 10073;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -7717.81689453125, -4544.330078125000, 9.155508995056152343, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294, 300, 600, 100, 1),
(@OBJECT_2, 0, 1, 1, -7523.68994140625, -4725.073242187500, 9.270635604858398437, 4.049167633056640625, 0, 0, -0.89879322052001953, 0.438372820615768432, 300, 600, 100, 1),
(@OBJECT_3, 0, 1, 1, -7369.77099609375, -4287.442871093750, 9.054375648498535156, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675, 300, 600, 100, 1),
(@OBJECT_4, 0, 1, 1, -7591.08154296875, -4094.746093750000, 11.66102600097656250, 0.593410074710845947, 0, 0, 0.292370796203613281, 0.956305027008056640, 300, 600, 100, 1),
(@OBJECT_5, 0, 1, 1, -7825.65283203125, -4809.041503906250, 12.01389789581298828, 3.176533222198486328, 0, 0, -0.99984741210937500, 0.017469281330704689, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Tanaris - Iron Deposit | Silver Vein | Gold Vein (1) Ore 003', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '1735', '0', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140180;
SET @OBJECT_2 = 140181;
SET @OBJECT_3 = 140182;
SET @OBJECT_4 = 140183;

SET @GROUP_ID = 10074;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -7255.51513671875, -4241.096191406250, 18.26091957092285156, 1.134462952613830566, 0, 0, 0.537299156188964843, 0.843391716480255126, 300, 600, 100, 1),
(@OBJECT_2, 0, 1, 1, -7517.91064453125, -4357.269042968750, 12.18122863769531250, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222, 300, 600, 100, 1),
(@OBJECT_3, 0, 1, 1, -7385.07226562500, -4483.871582031250, 13.92693710327148437, 0.296705186367034912, 0, 0, 0.147809028625488281, 0.989015936851501464, 300, 600, 100, 1),
(@OBJECT_4, 0, 1, 1, -7092.50976562500, -4016.928955078125, 16.91165542602539062, 5.864306926727294921, 0, 0, -0.20791149139404296, 0.978147625923156738, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Tanaris - Iron Deposit | Silver Vein | Gold Vein (1) Ore 004', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '1735', '0', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140190;
SET @OBJECT_2 = 140191;
SET @OBJECT_3 = 140192;
SET @OBJECT_4 = 140193;

SET @GROUP_ID = 10075;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -7769.17871093750, -4483.898925781250, 13.70209980010986328, 4.904376029968261718, 0, 0, -0.63607788085937500, 0.771624863147735595, 300, 600, 100, 1),
(@OBJECT_2, 0, 1, 1, -8088.91845703125, -4297.962890625000, 16.77848434448242187, 4.537858963012695312, 0, 0, -0.76604366302490234, 0.642788589000701904, 300, 600, 100, 1),
(@OBJECT_3, 0, 1, 1, -7648.39404296875, -4168.194335937500, 18.22732734680175781, 4.398232460021972656, 0, 0, -0.80901622772216796, 0.587786316871643066, 300, 600, 100, 1),
(@OBJECT_4, 0, 1, 1, -7474.51123046875, -3903.374267578125, 9.638382911682128906, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Tanaris - Iron Deposit | Silver Vein | Gold Vein (1) Ore 005', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '1735', '0', '0', '0');
