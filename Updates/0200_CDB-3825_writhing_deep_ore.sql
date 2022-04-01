DELETE FROM `gameobject` WHERE `guid` BETWEEN 104405 AND 104422;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104429 AND 104520;
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN	(7789,7790,7791,7793,7794,7795,7796,7797,7798,7799,7800,7801,7802,7803,7804,7805,7806,7807,7808,7809,7810,7811,7812,7813,7814,7815);
DELETE FROM `pool_template` WHERE `entry` IN 		(7789,7790,7791,7793,7794,7795,7796,7797,7798,7799,7800,7801,7802,7803,7804,7805,7806,7807,7808,7809,7810,7811,7812,7813,7814,7815);
DELETE FROM `pool_pool` WHERE `pool_id` IN			(7789,7790,7791,7793,7794,7795,7796,7797,7798,7799,7800,7801,7802,7803,7804,7805,7806,7807,7808,7809,7810,7811,7812,7813,7814,7815);
DELETE FROM `pool_template` WHERE `entry` = 2046; -- Master Mineral Pool - Feralas (Ooze Covered Mineral GOs)

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 15424;
SET @OBJECT_2 = 15425;
SET @OBJECT_3 = 15428;

SET @GROUP_ID = 10012;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '1', '1', '-5394.11132812500', '263.010650634765625', '21.0198402404785156250', '3.28123855590820312500', '0', '0', '-0.99756336212158203125', '0.06976614892482757568359375', '900', '1800', '100', '1'), -- left
(@OBJECT_2, '0', '1', '1', '-5320.53369140625', '451.726776123046875', '9.51992416381835937500', '3.94444584846496582031', '0', '0', '-0.92050457000732421875', '0.39073181152343750000000000', '900', '1800', '100', '1'), -- left
(@OBJECT_3, '0', '1', '1', '-5229.70556640625', '287.214630126953125', '9.80464267730712890625', '4.06662034988403320312', '0', '0', '-0.89493370056152343750', '0.44619917869567871093750000', '900', '1800', '100', '1'); -- left

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '123309'), (@OBJECT_1, '123848'),
(@OBJECT_2, '123309'), (@OBJECT_2, '123848'),
(@OBJECT_3, '123309'), (@OBJECT_3, '123848');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Feralas - The Writhing Deep - Ooze Covered Truesilver Deposit | Ooze Covered Thorium Vein (1) Ore 000', '1', '1', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 15431;
SET @OBJECT_2 = 15432;
SET @OBJECT_3 = 15433;
SET @OBJECT_4 = 15434;

SET @GROUP_ID = 10013;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '1', '1', '-5362.42138671875', '297.725921630859375', '22.079803466796875000', '1.32644820213317871094', '0', '0', '0.615660667419433593750', '0.78801137208938598632812500', '900', '1800', '100', '1'), -- left
(@OBJECT_2, '0', '1', '1', '-5353.74755859375', '397.499359130859375', '17.013156890869140625', '2.96704101562500000000', '0', '0', '0.996193885803222656250', '0.08716504275798797607421875', '900', '1800', '100', '1'), -- left
(@OBJECT_3, '0', '1', '1', '-5254.64697265625', '330.452697753906250', '17.559551239013671875', '5.56760072708129882812', '0', '0', '-0.35020732879638671875', '0.93667221069335937500000000', '900', '1800', '100', '1'), -- left
(@OBJECT_4, '0', '1', '1', '-5335.88134765625', '330.337036132812500', '19.520336151123046875', '0.61086344718933105469', '0', '0', '0.300704956054687500000', '0.95371723175048828125000000', '900', '1800', '100', '1'); -- left

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '73941'), (@OBJECT_1, '123310'), (@OBJECT_1, '123309'),
(@OBJECT_2, '73941'), (@OBJECT_2, '123310'), (@OBJECT_2, '123309'),
(@OBJECT_3, '73941'), (@OBJECT_3, '123310'), (@OBJECT_3, '123309'),
(@OBJECT_4, '73941'), (@OBJECT_4, '123310'), (@OBJECT_4, '123309');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Feralas - The Writhing Deep - Ooze Covered Gold Vein | Ooze Covered Mithril Deposit | Ooze Covered Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 15435;
SET @OBJECT_2 = 15436;
SET @OBJECT_3 = 15438;
SET @OBJECT_4 = 15439;
SET @OBJECT_5 = 15440;

SET @GROUP_ID = 10014;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '1', '1', '-5457.47558593750', '113.7773437500000000', '28.8222122192382812500', '5.44542789459228515625', '0', '0', '-0.40673637390136718750', '0.9135455489158630371093750000', '900', '1800', '100', '1'), -- right
(@OBJECT_2, '0', '1', '1', '-5412.78369140625', '67.69998168945312500', '37.7754402160644531250', '5.34070873260498046875', '0', '0', '-0.45398998260498046875', '0.8910067677497863769531250000', '900', '1800', '100', '1'), -- right
(@OBJECT_3, '0', '1', '1', '-5286.74072265625', '-14.0224609375000000', '21.2351245880126953125', '2.40855431556701660156', '0', '0', '0.933580398559570312500', '0.3583680093288421630859375000', '900', '1800', '100', '1'), -- right
(@OBJECT_4, '0', '1', '1', '-5221.92968750000', '98.67686462402343750', '31.7133579254150390625', '3.56047272682189941406', '0', '0', '-0.97814750671386718750', '0.2079120874404907226562500000', '900', '1800', '100', '1'), -- right
(@OBJECT_5, '0', '1', '1', '-5276.19042968750', '75.25521087646484375', '27.2858695983886718750', '3.15906238555908203125', '0', '0', '-0.99996185302734375000', '0.0087346406653523445129394531', '900', '1800', '100', '1'); -- right

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '73941'), (@OBJECT_1, '123310'), (@OBJECT_1, '123309'),
(@OBJECT_2, '73941'), (@OBJECT_2, '123310'), (@OBJECT_2, '123309'),
(@OBJECT_3, '73941'), (@OBJECT_3, '123310'), (@OBJECT_3, '123309'),
(@OBJECT_4, '73941'), (@OBJECT_4, '123310'), (@OBJECT_4, '123309'),
(@OBJECT_5, '73941'), (@OBJECT_5, '123310'), (@OBJECT_5, '123309');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Feralas - The Writhing Deep - Ooze Covered Gold Vein | Ooze Covered Mithril Deposit | Ooze Covered Truesilver Deposit (1) Ore 001', '1', '1', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 15441;
SET @OBJECT_2 = 15442;
SET @OBJECT_3 = 15446;
SET @OBJECT_4 = 15448;
SET @OBJECT_5 = 15451;

SET @GROUP_ID = 10015;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, '0', '1', '1', '-5391.47705078125', '36.0513229370117187500', '27.3817405700683593750', '1.90240895748138427734', '0', '0', '0.8141155242919921875', '0.5807029604911804199218750', '900', '1800', '100', '1'), -- right
(@OBJECT_2, '0', '1', '1', '-5297.62158203125', '51.8753242492675781250', '28.9363880157470703125', '1.27408826351165771484', '0', '0', '0.5948219299316406250', '0.8038574457168579101562500', '900', '1800', '100', '1'), -- right
(@OBJECT_3, '0', '1', '1', '-5279.86767578125', '101.923721313476562500', '24.4587841033935546875', '5.30580234527587890625', '0', '0', '-0.469470977783203125', '0.8829479217529296875000000', '900', '1800', '100', '1'), -- right
(@OBJECT_4, '0', '1', '1', '-5275.56494140625', '-42.493923187255859375', '8.31682968139648437500', '3.75246238708496093750', '0', '0', '-0.953716278076171875', '0.3007079064846038818359375', '900', '1800', '100', '1'), -- right
(@OBJECT_5, '0', '1', '1', '-5397.78173828125', '-61.582466125488281250', '30.3492698669433593750', '0.45378506183624267578', '0', '0', '0.2249507904052734375', '0.9743701219558715820312500', '900', '1800', '100', '1'); -- right

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '73941'), (@OBJECT_1, '123310'), (@OBJECT_1, '123309'),
(@OBJECT_2, '73941'), (@OBJECT_2, '123310'), (@OBJECT_2, '123309'),
(@OBJECT_3, '73941'), (@OBJECT_3, '123310'), (@OBJECT_3, '123309'),
(@OBJECT_4, '73941'), (@OBJECT_4, '123310'), (@OBJECT_4, '123309'),
(@OBJECT_5, '73941'), (@OBJECT_5, '123310'), (@OBJECT_5, '123309');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Feralas - The Writhing Deep - Ooze Covered Gold Vein | Ooze Covered Mithril Deposit | Ooze Covered Truesilver Deposit (1) Ore 002', '1', '1', '0', '0');
