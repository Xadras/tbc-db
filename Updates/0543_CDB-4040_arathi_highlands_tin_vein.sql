-- 2002	54	Master Mineral Pool - Arathi Highlands (Main Section) (232 + 6)
UPDATE `pool_template` SET `max_limit` = 30 WHERE `entry` = 2002; -- only iron, silver, gold left (x10)

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 68804 AND 68826;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 68804 AND 68826;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3234 AND 3237;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3234 AND 3237;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70509 AND 70513;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70509 AND 70513;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3523 AND 3523;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3523 AND 3523;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 68648 AND 68718;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 68648 AND 68718;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3208 AND 3219;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3208 AND 3219;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 68630 AND 68640;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 68630 AND 68640;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3205 AND 3206;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3205 AND 3206;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 68600 AND 68622;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 68600 AND 68622;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3200 AND 3203;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3200 AND 3203;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 69962 AND 69966;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 69962 AND 69966;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3427 AND 3427;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3427 AND 3427;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 69044 AND 69048;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 69044 AND 69048;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3274 AND 3274;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3274 AND 3274;

-- directly pooled new gos
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 1038001 AND 1038004;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 1038001 AND 1038004;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 69176 AND 69180;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 69176 AND 69180;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3296 AND 3296;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3296 AND 3296;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 69614 AND 69618;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 69614 AND 69618;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3369 AND 3369;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3369 AND 3369;

-- Remove Tin Vein from remaining nodes in Arathi Highlands, can only spawn at these ~30 nodes (233 Nodes remaining)
DELETE FROM `pool_gameobject` where `description` LIKE '%Tin%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` IN (2002,2003));
DELETE FROM `gameobject` WHERE `guid` IN (68626,68722,68728,68734,68740,68746,68752,68758,68764,68770,68776,68788,68794,68800,68836,68842,68854,68860,68866,68872,68878,68884,68890,68896,68902,68908,68914,68920,
68926,68932,68938,68944,68956,68962,68968,68974,68980,68986,68992,68998,69004,69010,69016,69022,69028,69034,69040,69052,69058,69064,69070,69082,69094,69100,69106,69112,69118,69124,69130,69136,69142,69148,69154,
69160,69166,69172,69178,69184,69190,69196,69202,69208,69214,69220,69226,69238,69244,69250,69256,69262,69268,69274,69280,69286,69292,69298,69304,69310,69316,69322,69328,69334,69340,69346,69352,69358,69370,69376,
69382,69388,69400,69406,69412,69418,69424,69430,69436,69442,69448,69454,69460,69466,69472,69478,69484,69490,69496,69502,69508,69514,69520,69526,69532,69544,69550,69556,69562,69580,69592,69598,69604,69610,69616,
69622,69628,69634,69640,69646,69658,69664,69670,69676,69682,69688,69700,69706,69712,69718,69724,69730,69736,69748,69754,69760,69766,69772,69778,69784,69790,69796,69802,69808,69814,69820,69826,69838,69856,69862,
69874,69886,69898,69910,69928,69934,69940,69946,69952,69958,69970,69982,69988,69994,70000,70012,70018,70024,70030,70036,70042,70048,70054,70060,70072,70078,70084,70090,70096,70102,70108,70114,70120,70126,70132,
70144,70150,70156,70168,70174,70180,70192,70198,70204,70210,70246,70252,70282,70288,70294,70300,70306,70312,70318,70324,70330,70336,70342,70348,70517,70523,70529,70535,70547,70559);

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140650;
SET @OBJECT_2 = 140651;
SET @OBJECT_3 = 140652;
SET @OBJECT_4 = 140653;

SET @GROUP_ID = 67;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -692.26605224609375, -2099.6125488281250, 56.21727371215820312, 5.235987663269042968, 0, 0, -0.50000000000000000, 0.866025388240814208, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -915.04516601562500, -1890.8763427734375, 72.89493560791015625, 2.914689540863037109, 0, 0, 0.993571281433105468, 0.113208353519439697, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -842.21527099609375, -1726.9498291015625, 56.92533493041992187, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -1194.7504882812500, -1983.3786621093750, 73.96939849853515625, 2.617989301681518554, 0, 0, 0.965925216674804687, 0.258821308612823486, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Arathi Highlands - Tin Vein | Silver Vein (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1732', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140660;
SET @OBJECT_2 = 140661;
SET @OBJECT_3 = 140662;
SET @OBJECT_4 = 140663;
SET @OBJECT_5 = 140664;
SET @OBJECT_6 = 140665;

SET @GROUP_ID = 68;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -1080.3287353515625, -1610.2447509765625, 51.87411880493164062, 2.268925428390502929, 0, 0, 0.906307220458984375, 0.422619491815567016, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -1179.4268798828125, -1668.4078369140625, 52.74800491333007812, 2.042035102844238281, 0, 0, 0.852640151977539062, 0.522498607635498046, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -1278.3930664062500, -1489.2136230468750, 65.22196197509765625, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -1398.5877685546875, -1485.9903564453125, 67.59436798095703125, 1.117009282112121582, 0, 0, 0.529918670654296875, 0.848048448562622070, 300, 600, 100, 1),
(@OBJECT_5, 0, 0, 1, -1482.4343261718750, -1532.4497070312500, 62.72485351562500000, 5.829400539398193359, 0, 0, -0.22495079040527343, 0.974370121955871582, 300, 600, 100, 1),
(@OBJECT_6, 0, 0, 1, -1436.6883544921875, -1717.9509277343750, 56.18729782104492187, 0.034906249493360519, 0, 0, 0.017452239990234375, 0.999847710132598876, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Arathi Highlands - Tin Vein | Silver Vein (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1732', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140670;
SET @OBJECT_2 = 140671;
SET @OBJECT_3 = 140672;
SET @OBJECT_4 = 140673;

SET @GROUP_ID = 69;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -1114.41101074218750, -2361.251220703125, 51.89079666137695312, 6.143560886383056640, 0, 0, -0.06975555419921875, 0.997564136981964111, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -1125.29992675781250, -2600.460449218750, 62.63924026489257812, 5.253442287445068359, 0, 0, -0.49242305755615234, 0.870355963706970214, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -1005.17938232421875, -2712.794433593750, 62.65482711791992187, 0.052358884364366531, 0, 0, 0.026176452636718750, 0.999657332897186279, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -955.413940429687500, -2974.046386718750, 75.81394195556640625, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Arathi Highlands - Tin Vein | Silver Vein (1) Ore 002', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1732', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140680;
SET @OBJECT_2 = 140681;
SET @OBJECT_3 = 140682;
SET @OBJECT_4 = 140683;
SET @OBJECT_5 = 140684;

SET @GROUP_ID = 70;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -1309.5791015625000, -2312.318359375000, 64.86754608154296875, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -1216.1098632812500, -2781.918457031250, 55.71466827392578125, 1.588248729705810546, 0, 0, 0.713250160217285156, 0.700909554958343505, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -1391.1636962890625, -2574.251464843750, 84.40067291259765625, 5.445427894592285156, 0, 0, -0.40673637390136718, 0.913545548915863037, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -1539.8200683593750, -2277.772705078125, 34.78148651123046875, 4.590216159820556640, 0, 0, -0.74895572662353515, 0.662620067596435546, 300, 600, 100, 1),
(@OBJECT_5, 0, 0, 1, -1614.1060791015625, -1993.646728515625, 36.89469528198242187, 3.106652259826660156, 0, 0, 0.999847412109375000, 0.017469281330704689, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Arathi Highlands - Tin Vein | Silver Vein (1) Ore 003', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1732', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140690;
SET @OBJECT_2 = 140691;
SET @OBJECT_3 = 140692;
SET @OBJECT_4 = 140693;
SET @OBJECT_5 = 140694;
SET @OBJECT_6 = 140695;

SET @GROUP_ID = 71;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -1585.1147460937500, -2329.294677734375, 87.48463439941406250, 1.239183306694030761, 0, 0, 0.580702781677246093, 0.814115643501281738, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -1441.1872558593750, -2172.016113281250, 23.71311950683593750, 1.588248729705810546, 0, 0, 0.713250160217285156, 0.700909554958343505, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -1568.4918212890625, -2074.032226562500, 37.95443344116210937, 2.268925428390502929, 0, 0, 0.906307220458984375, 0.422619491815567016, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -1709.3974609375000, -2137.953613281250, 43.65903472900390625, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881, 300, 600, 100, 1),
(@OBJECT_5, 0, 0, 1, -1786.0303955078125, -2230.229248046875, 59.29436111450195312, 3.543023586273193359, 0, 0, -0.97992420196533203, 0.199370384216308593, 300, 600, 100, 1),
(@OBJECT_6, 0, 0, 1, -1887.2418212890625, -2292.260009765625, 61.26863479614257812, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Arathi Highlands - Tin Vein | Silver Vein (1) Ore 004', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1732', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140700;
SET @OBJECT_2 = 140701;
SET @OBJECT_3 = 140702;
SET @OBJECT_4 = 140703;
SET @OBJECT_5 = 140704;

SET @GROUP_ID = 72;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -1678.0048828125000, -2606.309570312500, 61.67825698852539062, 4.590216159820556640, 0, 0, -0.74895572662353515, 0.662620067596435546, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -1734.9826660156250, -3102.700927734375, 25.04621315002441406, 2.426007747650146484, 0, 0, 0.936672210693359375, 0.350207358598709106, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -1835.6988525390625, -3131.751708984375, 45.43363189697265625, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -1735.0574951171875, -3433.710693359375, 55.84041976928710937, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076, 300, 600, 100, 1),
(@OBJECT_5, 0, 0, 1, -1572.9711914062500, -3472.313720703125, 64.10147094726562500, 3.455755710601806640, 0, 0, -0.98768806457519531, 0.156436234712600708, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Arathi Highlands - Tin Vein | Silver Vein (1) Ore 005', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1732', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5');

