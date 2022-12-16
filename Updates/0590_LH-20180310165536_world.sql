-- Add your query below.
-- https://github.com/lh-server/core/commit/a5beb0c2ddc884311f5718f2d45c6883e18651ec

-- Ogre Stats (CCSDB)
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 3200 WHERE `entry` = 9196;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 9197;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 9198;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 9199;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 9200;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 9201;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 1500 WHERE `entry` = 9216;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 9217;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 9218;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 9219;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 3200 WHERE `entry` = 10584;
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2500, `ResistanceFire` = 0, `ResistanceNature` = 0, `ResistanceFrost` = 0, `ResistanceShadow` = 0, `ResistanceArcane` = 0 WHERE `entry` = 11441;
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000, `ResistanceFire` = 0, `ResistanceNature` = 0, `ResistanceFrost` = 0, `ResistanceShadow` = 0, `ResistanceArcane` = 0 WHERE `entry` = 11444;
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 11445;
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 11448;
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 11450;
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 14351;
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 1.71429, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 11501;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 11443;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 11440;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 11442;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 10601;
UPDATE `creature_template` SET `SpeedWalk` = 1.6, `SpeedRun` = 1.14286, `MeleeBaseAttackTime`= 2000 WHERE `entry` = 10602;

-- Ogre Warbead drop rate
-- https://www.wowhead.com/tbc/quest=8949/falrins-vendetta - https://www.wowhead.com/tbc/item=21982/ogre-warbeads
-- https://web.archive.org/web/20080430174156/http://wow.allakhazam.com/db/item.html?witem=21982
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` IN (11444,11441,11448,11445,11450,14351,9197,9200,9199,9198,9216,9201,10584,9196,9217,9218,9219,11501) AND `item` = 21982;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` IN (11443,11442,11440) AND `item` = 21982;
-- wotlkmangos
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10601, 21982, -40, 0, 1, 1, 0, 'Ogre Warbeads'),
(10602, 21982, -40, 0, 1, 1, 0, 'Ogre Warbeads');

-- Narain's Scrying Goggles improve drop chance
-- https://web.archive.org/web/20080422075643/http://wow.allakhazam.com/db/item.html?witem=20951
-- https://www.wowhead.com/tbc/item=20951/narains-scrying-goggles
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-2 WHERE `item`=20951; -- 1% or 5% befor
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(11667, 20951, -2, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'); -- vmangos

