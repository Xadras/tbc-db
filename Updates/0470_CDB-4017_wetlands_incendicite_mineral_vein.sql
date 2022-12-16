UPDATE `pool_template` SET `max_limit` = 26 WHERE `entry` = 2031; -- 2031	33	Master Mineral Pool - Wetlands (Main Section) down to 128
UPDATE `pool_template` SET `max_limit` = 3 WHERE `entry` = 2032; -- 2032	4	Master Mineral Pool - Wetlands (Thelgen Rock) down to 13

-- https://youtu.be/-R2ZqTWUhQA?t=54 - CCSDB shows as 1 but clearly not
UPDATE `gameobject_template` SET `Size` = 1 WHERE `entry` IN (1610,1667);

-- Remove bad other nodes in the cave
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 100015 AND 100018;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 100015 AND 100018;
DELETE FROM `pool_template` WHERE (`entry` IN (6990));
DELETE FROM `pool_pool` WHERE (`pool_id` IN (6990));

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 100069 AND 100070;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 100069 AND 100070;
DELETE FROM `pool_template` WHERE (`entry` IN (7003));
DELETE FROM `pool_pool` WHERE (`pool_id` IN (7003));

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 79670 AND 79674;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 79670 AND 79674;
DELETE FROM `pool_template` WHERE (`entry` IN (6921));
DELETE FROM `pool_pool` WHERE (`pool_id` IN (6921));

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 100053 AND 100054;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 100053 AND 100054;
DELETE FROM `pool_template` WHERE (`entry` IN (6999));
DELETE FROM `pool_pool` WHERE (`pool_id` IN (6999));

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 100085 AND 100086;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 100085 AND 100086;
DELETE FROM `pool_template` WHERE (`entry` IN (7007));
DELETE FROM `pool_pool` WHERE (`pool_id` IN (7007));

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 100125 AND 100126;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 100125 AND 100126;
DELETE FROM `pool_template` WHERE (`entry` IN (7017));
DELETE FROM `pool_pool` WHERE (`pool_id` IN (7017));

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 100081 AND 100082;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 100081 AND 100082;
DELETE FROM `pool_template` WHERE (`entry` IN (7006));
DELETE FROM `pool_pool` WHERE (`pool_id` IN (7006));

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 100073 AND 100074;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 100073 AND 100074;
DELETE FROM `pool_template` WHERE (`entry` IN (7004));
DELETE FROM `pool_pool` WHERE (`pool_id` IN (7004));

-- Remove Incendicite Mineral Vein from unconfirmed
DELETE FROM `gameobject` WHERE `guid` IN (SELECT `guid` FROM `pool_gameobject` WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` IN (2031,2032)) and id IN (1610,1667)); -- 40
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` IN (2031,2032)) and description LIKE '%Incendicite%'; -- 40 total with 74% chance, now fallback to mithril with 85%
-- 100039	6996	0	Mineral Spawn Point 7 - Incendicite - removed
-- 100040	6996	40	Mineral Spawn Point 7 - Incendicite - removed
-- 100041	6996	21	Mineral Spawn Point 7 - Tin -> 0
-- 100042	6996	5	Mineral Spawn Point 7 - Silver
UPDATE `pool_gameobject` SET `chance` = 0, `description` = 'Wetlands (Thelgen Rock) - Tin Vein' WHERE `pool_entry` IN (6990,6996,6997,6998,6999,7000,7001,7003,7004,7005,7006,7007,7011,7012,7013,7014,7015,7016,7017) and description LIKE '%Tin%'; -- 19 total with 50% chance, now fallback to mithril with 85%
UPDATE `pool_gameobject` SET `chance` = 0, `description` = 'Wetlands - Tin Vein' WHERE `pool_entry` = 3584 and description LIKE '%Tin%'; -- 1 total with 74% chance, now fallback to mithril with 85%
-- DELETE FROM `gameobject` WHERE (`guid` IN (100123, 100124, 100115, 100116, 100111, 100112, 100107, 100108, 100095, 100096, 100091, 100092, 100087, 100088, 100083, 100084, 100067, 100068, 100063, 100064, 100059, 100060, 100055, 100056, 100051,
-- 100052, 100043, 100044, 100039, 100040, 100035, 100036, 100023, 100024, 100120, 100119, 100103, 100104, 100099, 100100, 100079, 100080, 100075, 100076, 100071, 100072, 100047, 100048, 100031, 100032, 100027, 100028, 100019, 100020, 100015,
-- 100016, 105228, 105229));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (100123, 100124, 100115, 100116, 100111, 100112, 100107, 100108, 100095, 100096, 100091, 100092, 100087, 100088, 100083, 100084, 100067, 100068, 100063, 100064, 100059, 100060, 100055, 100056, 100051,
-- 100052, 100043, 100044, 100039, 100040, 100035, 100036, 100023, 100024, 100120, 100119, 100103, 100104, 100099, 100100, 100079, 100080, 100075, 100076, 100071, 100072, 100047, 100048, 100031, 100032, 100027, 100028, 100019, 100020, 100015,
-- 100016, 105228, 105229));
-- DELETE FROM `gameobject` WHERE (`guid` IN (100021, 100022, 100025, 100026, 100029, 100030, 100033, 100034, 100037, 100038, 100089, 100090, 100093, 100094, 100097, 100098));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (100021, 100022, 100025, 100026, 100029, 100030, 100033, 100034, 100037, 100038, 100089, 100090, 100093, 100094, 100097, 100098));

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 100063 AND 100066;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 100063 AND 100066;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 100087 AND 100098;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 100087 AND 100098;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 100019 AND 100038;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 100019 AND 100038;
DELETE FROM `pool_template` WHERE (`entry` IN (6991,6992,7002,6995,6993,6994,7008,7009,7010));
DELETE FROM `pool_pool` WHERE (`pool_id` IN (6991,6992,7002,6995,6993,6994,7008,7009,7010));

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140260;
SET @OBJECT_2 = 140261;
SET @OBJECT_3 = 140262;
SET @OBJECT_4 = 140263;

SET @GROUP_ID = 51;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -3864.541748046875, -2323.016601562500, 44.05804443359375000, 1.082102894783020019, 0, 0, 0.515037536621093750, 0.857167601585388183, 300, 600, 100, 1), -- 6992
(@OBJECT_2, 0, 0, 1, -3870.253173828125, -2383.634033203125, 26.57918357849121093, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511, 300, 600, 100, 1), -- 7002
(@OBJECT_3, 0, 0, 1, -3929.862548828125, -2318.629882812500, 23.00192070007324218, 5.934120178222656250, 0, 0, -0.17364788055419921, 0.984807789325714111, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -3813.829101562500, -2279.432373046875, 33.75302505493164062, 4.153884887695312500, 0, 0, -0.87461948394775390, 0.484810054302215576, 300, 600, 100, 1); -- 6995

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Wetlands - Incendicite Mineral Vein (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1610', '0', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140270;
SET @OBJECT_2 = 140271;
SET @OBJECT_3 = 140272;
SET @OBJECT_4 = 140273;

SET @GROUP_ID = 52;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -3799.523925781250, -2390.446533203125, 28.52526473999023437, 2.670347690582275390, 0, 0, 0.972369194030761718, 0.233448356389999389, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -3863.123779296875, -2476.619873046875, 41.49351501464843750, 6.213373661041259765, 0, 0, -0.03489875793457031, 0.999390840530395507, 300, 600, 100, 1), -- 6993
(@OBJECT_3, 0, 0, 1, -3837.114257812500, -2527.333984375000, 38.98861312866210937, 5.183629035949707031, 0, 0, -0.52249813079833984, 0.852640450000762939, 300, 600, 100, 1), -- 6994
(@OBJECT_4, 0, 0, 1, -3805.749511718750, -2471.302001953125, 27.46855545043945312, 5.497788906097412109, 0, 0, -0.38268280029296875, 0.923879802227020263, 300, 600, 100, 1); -- 6991

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Wetlands - Incendicite Mineral Vein (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1610', '0', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140280;
SET @OBJECT_2 = 140281;
SET @OBJECT_3 = 140282;
SET @OBJECT_4 = 140283;

SET @GROUP_ID = 53;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -3785.216064453125, -2375.884033203125, 30.60120010375976562, 3.316144466400146484, 0, 0, -0.99619388580322265, 0.087165042757987976, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -3895.699707031250, -2362.616455078125, 22.89193534851074218, 0.994837164878845214, 0, 0, 0.477158546447753906, 0.878817260265350341, 300, 600, 100, 1), -- 7010
(@OBJECT_3, 0, 0, 1, -3856.977050781250, -2304.951904296875, 43.17952728271484375, 2.513273954391479492, 0, 0, 0.951056480407714843, 0.309017121791839599, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -3833.576904296875, -2299.875976562500, 30.47358512878417968, 4.468043327331542968, 0, 0, -0.78801059722900390, 0.615661680698394775, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Wetlands - Incendicite Mineral Vein (1) Ore 002', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1667', '0', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140290;
SET @OBJECT_2 = 140291;
SET @OBJECT_3 = 140292;
SET @OBJECT_4 = 140293;

SET @GROUP_ID = 54;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -3830.569580078125, -2431.703369140625, 26.52615928649902343, 2.670347690582275390, 0, 0, 0.972369194030761718, 0.233448356389999389, 300, 600, 100, 1), -- 7009
(@OBJECT_2, 0, 0, 1, -3877.418457031250, -2484.441894531250, 41.59187698364257812, 4.450590610504150390, 0, 0, -0.79335308074951171, 0.608761727809906005, 300, 600, 100, 1), -- z=41.59187698364257812, 39.364895
(@OBJECT_3, 0, 0, 1, -3758.245605468750, -2456.140625000000, 28.31234550476074218, 4.171337604522705078, 0, 0, -0.87035560607910156, 0.492423713207244873, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -3884.854980468750, -2310.755126953125, 25.41123199462890625, 2.897245407104492187, 0, 0, 0.992546081542968750, 0.121869951486587524, 300, 600, 100, 1); -- 7008

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Wetlands - Incendicite Mineral Vein (1) Ore 003', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1667', '0', '0', '0');

