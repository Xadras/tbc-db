-- 17131 pooled ore nodes remaining
UPDATE `pool_template` SET `max_limit` = 24 WHERE `entry` = 2004; -- 42	Master Mineral Pool - Badlands (120)
UPDATE `pool_template` SET `max_limit` = 48 WHERE `entry` = 2007; -- 50	Master Mineral Pool - Burning Steppes (237 + 5)

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71350 AND 71369;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 71350 AND 71369;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3750 AND 3753;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3750 AND 3753;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71220 AND 71234;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 71220 AND 71234;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3724 AND 3726;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3724 AND 3726;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70855 AND 70859;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70855 AND 70859;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3651 AND 3651;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3651 AND 3651;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71315 AND 71339;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 71315 AND 71339;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3743 AND 3747;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3743 AND 3747;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70685 AND 70689;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70685 AND 70689;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3617 AND 3617;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3617 AND 3617;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70730 AND 70749;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70730 AND 70749;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3626 AND 3629;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3626 AND 3629;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70670 AND 70674;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70670 AND 70674;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3614 AND 3614;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3614 AND 3614;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70600 AND 70604;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70600 AND 70604;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3600 AND 3600;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3600 AND 3600;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70870 AND 70874;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70870 AND 70874;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3654 AND 3654;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3654 AND 3654;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70710 AND 70719;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70710 AND 70719;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3622 AND 3623;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3622 AND 3623;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 72486 AND 72491;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 72486 AND 72491;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4181 AND 4181;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4181 AND 4181;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 72444 AND 72449;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 72444 AND 72449;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4174 AND 4174;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4174 AND 4174;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70840 AND 70844;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70840 AND 70844;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3648 AND 3648;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3648 AND 3648;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71240 AND 71254;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 71240 AND 71254;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3728 AND 3730;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3728 AND 3730;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71260 AND 71264;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 71260 AND 71264;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3732 AND 3732;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3732 AND 3732;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70950 AND 70954;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70950 AND 70954;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3670 AND 3670;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3670 AND 3670;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70885 AND 70894;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70885 AND 70894;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3657 AND 3658;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3657 AND 3658;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70825 AND 70829;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70825 AND 70829;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3645 AND 3645;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3645 AND 3645;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70760 AND 70764;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70760 AND 70764;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3632 AND 3632;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3632 AND 3632;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70810 AND 70814;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70810 AND 70814;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3642 AND 3642;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3642 AND 3642;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71433 AND 71437;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 71433 AND 71437;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3763 AND 3763;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3763 AND 3763;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70610 AND 70619;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70610 AND 70619;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3602 AND 3603;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3602 AND 3603;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70905 AND 70909;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70905 AND 70909;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3661 AND 3661;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3661 AND 3661;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70640 AND 70649;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70640 AND 70649;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3608 AND 3609;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3608 AND 3609;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70985 AND 70989;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70985 AND 70989;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3677 AND 3677;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3677 AND 3677;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71275 AND 71279;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 71275 AND 71279;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3735 AND 3735;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3735 AND 3735;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71115 AND 71119;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 71115 AND 71119;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3703 AND 3703;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3703 AND 3703;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71290 AND 71294;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 71290 AND 71294;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3738 AND 3738;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3738 AND 3738;

DELETE FROM `pool_gameobject` WHERE `guid` = 1046001; -- reconfirmed silver node
DELETE FROM `gameobject` WHERE `guid` = 1046001;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71305 AND 71309;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 71305 AND 71309;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3741 AND 3741;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3741 AND 3741;

UPDATE `pool_pool` SET `mother_pool` = 2004, `description` = 'Badlands - Mineral Node' WHERE `pool_id` = 4290;
UPDATE `pool_pool` SET `mother_pool` = 2004, `description` = 'Badlands - Mineral Node' WHERE `pool_id` = 4282;

-- more bad burning steps spawns in badlands
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 72480 AND 72485;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 72480 AND 72485;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4180 AND 4180;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4180 AND 4180;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70720 AND 70724;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70720 AND 70724;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3624 AND 3624;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3624 AND 3624;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 72852 AND 72857;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 72852 AND 72857;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4242 AND 4242;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4242 AND 4242;

-- Remove Iron Deposit from remaining nodes in Badlands, can only spawn at these ~49 nodes (119 Nodes remaining)
DELETE FROM `pool_gameobject` where `description` LIKE '%- Iron%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` = 2004);
DELETE FROM `gameobject` WHERE `guid` IN (70605,70620,70625,70630,70635,70650,70655,70660,70665,70675,70680,70690,70695,70700,70705,70720,70725,70750,
70755,70765,70770,70775,70780,70785,70790,70800,70805,70815,70820,70830,70835,70845,70850,70860,70865,70875,70880,70895,70900,70910,70915,70920,70925,
70930,70935,70940,70945,70955,70960,70965,70970,70975,70980,70990,70995,71000,71005,71010,71015,71020,71025,71030,71035,71040,71045,71050,71055,71060,
71065,71070,71075,71080,71085,71090,71095,71100,71105,71110,71120,71125,71130,71135,71140,71145,71150,71155,71160,71165,71170,71175,71180,71185,71190,
71195,71200,71205,71210,71215,71235,71255,71265,71270,71280,71285,71295,71300,71310,71340,71370,71375,71380,71385,71390,71395,71400,71405,71428,105232,105237);

-- Remove Silver Vein from remaining nodes in Badlands, can only spawn at these ~49 nodes (118 Nodes remaining)
DELETE FROM `pool_gameobject` where `description` LIKE '%- Silver%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` = 2004);
DELETE FROM `gameobject` WHERE `guid` IN (70608,70623,70628,70633,70638,70653,70658,70663,70668,70678,70683,70693,70698,70703,70708,70723,70728,70753,
70758,70768,70773,70778,70783,70788,70793,70803,70808,70818,70823,70833,70838,70848,70853,70863,70868,70878,70883,70898,70903,70913,70918,70923,70928,
70933,70938,70943,70948,70958,70963,70968,70973,70978,70983,70993,70998,71003,71008,71013,71018,71023,71028,71033,71038,71043,71048,71053,71058,71063,
71068,71073,71078,71083,71088,71093,71098,71103,71108,71113,71123,71128,71133,71138,71143,71148,71153,71158,71163,71168,71173,71178,71183,71188,71193,
71198,71203,71208,71213,71218,71238,71258,71268,71273,71283,71288,71298,71303,71313,71343,71373,71378,71383,71388,71393,71398,71403,71408,71431,105235,105240);

-- Remove Small Thorium Vein from Badlands Nodes (4282,4290)
DELETE FROM `pool_gameobject` where `description` LIKE '%Small Thorium%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` = 2004);
DELETE FROM `gameobject` WHERE `guid` IN (73092,73140);

-- Remove Dark Iron Deposit from Badlands Nodes
DELETE FROM `pool_gameobject` where `description` LIKE '%Dark Iron%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` = 2004);
DELETE FROM `gameobject` WHERE `guid` IN (73097,73145);

-- Remove Rich Thorium Vein from Badlands Nodes
DELETE FROM `pool_gameobject` where `description` LIKE '%Rich Thorium%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` = 2004);
DELETE FROM `gameobject` WHERE `guid` IN (73093,73141);

-- Reduce Gold to 5% from 10%
UPDATE `pool_gameobject` SET `Chance` = 5 WHERE `pool_entry` IN (SELECT `pool_id` from `pool_pool` where `mother_pool` = 2004) AND `description` LIKE '%Gold%';

-- Reduce Truesilver to lower then Gold Value
UPDATE `pool_gameobject` SET `Chance` = 2 WHERE `pool_entry` IN (SELECT `pool_id` from `pool_pool` where `mother_pool` = 2004) AND `description` LIKE '%Truesilver%';

-- Make Mithril Main Node Spawn
UPDATE `pool_gameobject` SET `Chance` = 0 WHERE `pool_entry` IN (SELECT `pool_id` from `pool_pool` where `mother_pool` = 2004) AND `description` LIKE '%Mithril%';

-- 70946	3669	25	Mineral Spawn Point 70 - Mithril -> 0
-- 70947	3669	10	Mineral Spawn Point 70 - Gold -> 5
-- 70949	3669	5	Mineral Spawn Point 70 - Truesilver -> 2

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140740;
SET @OBJECT_2 = 140741;
SET @OBJECT_3 = 140742;

SET @GROUP_ID = 76;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -6464.19140625000, -2450.207031250000, 311.6828613281250000, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -6478.42089843750, -2465.057373046875, 306.1914978027343750, 3.089183330535888671, 0, 0, 0.999656677246093750, 0.026201646775007247, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -6460.72363281250, -2489.192871093750, 307.9708557128906250, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Badlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140750;
SET @OBJECT_2 = 140751;
SET @OBJECT_3 = 140752;
SET @OBJECT_4 = 140753;

SET @GROUP_ID = 77;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -6696.16357421875, -2446.623046875000, 281.1942443847656250, 3.787367343902587890, 0, 0, -0.94832324981689453, 0.317305892705917358, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -6792.97119140625, -2452.853759765625, 265.0015258789062500, 4.974189758300781250, 0, 0, -0.60876083374023437, 0.793353796005249023, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -6866.99560546875, -2399.523681640625, 250.5250701904296875, 2.199114561080932617, 0, 0, 0.891006469726562500, 0.453990638256072998, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -6807.24267578125, -2348.273925781250, 279.9227600097656250, 3.281238555908203125, 0, 0, -0.99756336212158203, 0.069766148924827575, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Badlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140760;
SET @OBJECT_2 = 140761;
SET @OBJECT_3 = 140762;
SET @OBJECT_4 = 140763;

SET @GROUP_ID = 78;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -7339.03808593750, -2265.614990234375, 240.0454101562500000, 0.296705186367034912, 0, 0, 0.147809028625488281, 0.989015936851501464, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -7385.69775390625, -2300.571044921875, 238.5171966552734375, 4.834563255310058593, 0, 0, -0.66261959075927734, 0.748956084251403808, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -7410.57128906250, -2264.202392578125, 235.5852813720703125, 2.548179388046264648, 0, 0, 0.956304550170898437, 0.292372345924377441, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -7445.41503906250, -2269.324951171875, 231.4329223632812500, 0.733038187026977539, 0, 0, 0.358367919921875000, 0.933580458164215087, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Badlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 002', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140770;
SET @OBJECT_2 = 140771;
SET @OBJECT_3 = 140772;
SET @OBJECT_4 = 140773;

SET @GROUP_ID = 79;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -7054.83837890625, -2526.407958984375, 269.8959655761718750, 1.623155713081359863, 0, 0, 0.725374221801757812, 0.688354730606079101, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -6958.95166015625, -2579.467773437500, 276.9915466308593750, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -7129.29541015625, -2539.651855468750, 299.3111267089843750, 0.087265998125076293, 0, 0, 0.043619155883789062, 0.999048233032226562, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -7104.97656250000, -2640.138183593750, 264.9817199707031250, 1.972219824790954589, 0, 0, 0.833885192871093750, 0.551937937736511230, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Badlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 003', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140780;
SET @OBJECT_2 = 140781;
SET @OBJECT_3 = 140782;
SET @OBJECT_4 = 140783;

SET @GROUP_ID = 80;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -6907.06835937500, -2581.966552734375, 249.2646026611328125, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -6905.35839843750, -2668.860351562500, 250.1319732666015625, 1.151916384696960449, 0, 0, 0.544638633728027343, 0.838670849800109863, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -7077.13378906250, -2696.514404296875, 255.9472961425781250, 1.500982880592346191, 0, 0, 0.681998252868652343, 0.731353819370269775, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -6998.15039062500, -2744.322998046875, 248.5381469726562500, 5.724681377410888671, 0, 0, -0.27563667297363281, 0.961261868476867675, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Badlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 004', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140790;
SET @OBJECT_2 = 140791;
SET @OBJECT_3 = 140792;
SET @OBJECT_4 = 140793;

SET @GROUP_ID = 81;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -6893.84960937500, -2792.911376953125, 242.5473175048828125, 3.054326534271240234, 0, 0, 0.999048233032226562, 0.043619260191917419, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -6770.47119140625, -2845.887451171875, 246.3511505126953125, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -6750.14599609375, -2931.605712890625, 249.8667755126953125, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -6787.09716796875, -2965.444091796875, 249.6989440917968750, 2.286378860473632812, 0, 0, 0.909960746765136718, 0.414694398641586303, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Badlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 005', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140800;
SET @OBJECT_2 = 140801;
SET @OBJECT_3 = 140802;
SET @OBJECT_4 = 140803;

SET @GROUP_ID = 82;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -6620.90771484375, -2883.360595703125, 256.7507629394531250, 4.904376029968261718, 0, 0, -0.63607788085937500, 0.771624863147735595, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -6681.35888671875, -3014.649169921875, 260.1384582519531250, 3.560472726821899414, 0, 0, -0.97814750671386718, 0.207912087440490722, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -6742.13330078125, -3092.778076171875, 280.7618103027343750, 0.733038187026977539, 0, 0, 0.358367919921875000, 0.933580458164215087, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -6709.36181640625, -3182.673095703125, 267.6290588378906250, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Badlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 006', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140810;
SET @OBJECT_2 = 140811;
SET @OBJECT_3 = 140812;
SET @OBJECT_4 = 140813;

SET @GROUP_ID = 83;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -6975.78320312500, -3110.128173828125, 260.8544921875000000, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -6869.99804687500, -3135.923583984375, 262.5574951171875000, 5.515241622924804687, 0, 0, -0.37460613250732421, 0.927184045314788818, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -6794.99365234375, -3219.907226562500, 265.9178771972656250, 1.413715124130249023, 0, 0, 0.649447441101074218, 0.760406434535980224, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -6854.86474609375, -3306.802734375000, 267.7060546875000000, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Badlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 007', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140820;
SET @OBJECT_2 = 140821;
SET @OBJECT_3 = 140822;
SET @OBJECT_4 = 140823;

SET @GROUP_ID = 84;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -7185.94042968750, -2707.732177734375, 269.0558471679687500, 1.466075778007507324, 0, 0, 0.669130325317382812, 0.743145048618316650, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -7158.78564453125, -2875.651123046875, 253.3928985595703125, 4.590216159820556640, 0, 0, -0.74895572662353515, 0.662620067596435546, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -7141.56738281250, -2991.897216796875, 263.9761047363281250, 5.724681377410888671, 0, 0, -0.27563667297363281, 0.961261868476867675, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -7181.32421875000, -3132.522949218750, 274.3910522460937500, 4.363324165344238281, 0, 0, -0.81915187835693359, 0.573576688766479492, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Badlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 008', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140830;
SET @OBJECT_2 = 140831;
SET @OBJECT_3 = 140832;
SET @OBJECT_4 = 140833;
SET @OBJECT_5 = 140834;
SET @OBJECT_6 = 140835;

SET @GROUP_ID = 85;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -7157.41455078125, -3201.896728515625, 249.2929687500000000, 4.450590610504150390, 0, 0, -0.79335308074951171, 0.608761727809906005, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -7175.96728515625, -3348.390625000000, 250.4168090820312500, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -7146.90917968750, -3493.607666015625, 264.6698913574218750, 4.572763919830322265, 0, 0, -0.75470924377441406, 0.656059443950653076, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -7109.92822265625, -3613.911621093750, 256.7212829589843750, 6.195919513702392578, 0, 0, -0.04361915588378906, 0.999048233032226562, 300, 600, 100, 1),
(@OBJECT_5, 0, 0, 1, -7084.08349609375, -3686.767333984375, 254.6282501220703125, 1.151916384696960449, 0, 0, 0.544638633728027343, 0.838670849800109863, 300, 600, 100, 1),
(@OBJECT_6, 0, 0, 1, -6944.75634765625, -3657.784667968750, 252.3726654052734375, 2.722712755203247070, 0, 0, 0.978147506713867187, 0.207912087440490722, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Badlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 009', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140840;
SET @OBJECT_2 = 140841;
SET @OBJECT_3 = 140842;
SET @OBJECT_4 = 140843;

SET @GROUP_ID = 86;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -6605.60742187500, -3705.262939453125, 269.6285705566406250, 2.303830623626708984, 0, 0, 0.913544654846191406, 0.406738430261611938, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -6649.95849609375, -3543.350830078125, 249.8427276611328125, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -6656.68750000000, -3375.806884765625, 260.0360717773437500, 5.724681377410888671, 0, 0, -0.27563667297363281, 0.961261868476867675, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -6484.89843750000, -3383.260742187500, 261.8721923828125000, 1.448621988296508789, 0, 0, 0.662619590759277343, 0.748956084251403808, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Badlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 010', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140850;
SET @OBJECT_2 = 140851;
SET @OBJECT_3 = 140852;
SET @OBJECT_4 = 140853;

SET @GROUP_ID = 87;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -6299.70996093750, -3558.395751953125, 251.8469238281250000, 1.727874636650085449, 0, 0, 0.760405540466308593, 0.649448513984680175, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -6234.93408203125, -3475.953125000000, 250.0174407958984375, 4.450590610504150390, 0, 0, -0.79335308074951171, 0.608761727809906005, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -6170.33496093750, -3384.251220703125, 244.0618286132812500, 5.619962215423583984, 0, 0, -0.32556724548339843, 0.945518851280212402, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -6110.05712890625, -3428.188476562500, 265.8377685546875000, 6.230826377868652343, 0, 0, -0.02617645263671875, 0.999657332897186279, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Badlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 011', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

