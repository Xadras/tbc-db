-- GM Robe Custom Attrs 
UPDATE `item_template` SET `stat_type1`='4', `stat_value1`='9999', `stat_type2`='3', `stat_value2`='9999', `stat_type3`='5', `stat_value3`='9999', `stat_type4`='7', `stat_value4`='9999', `stat_type5`='12', `stat_value5`='9999', `stat_type6`='12', `stat_value6`='140', `stat_type7`='13', `stat_value7`='120', `stat_type8`='18', `stat_value8`='9999', `stat_type9`='6', `stat_value9`='9999', `stat_type10`='45', `stat_value10`='9999', `armor`='20000', `spellid_1`='40733', `spellid_2`='1908', `spelltrigger_2`='1' WHERE (`entry`='2586');

-- NPC NAME: Nagrand Spawn Trigger
-- ENTRY: 18263
-- FIX: Applied "CREATURE_EXTRA_FLAG_INVISIBLE" ExtraFlag to make creature invisible.
UPDATE `creature_template` SET `ExtraFlags` = 128 WHERE `entry` = 18263;
