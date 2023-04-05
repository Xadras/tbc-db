-- Aedis Brom 1478 & Christoph Faral 1477 - RP
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id IN (1478,1477);
DELETE FROM creature_movement WHERE id IN (79752,79753);

-- moved to spawn_groups
DELETE FROM `spawn_group` WHERE id = 19953;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19953, 'Stormwind - Aedis Brom 1478 & Christoph Faral 1477 - Patrol', 0, 0, 0, 3);

DELETE FROM `spawn_group_spawn` WHERE id = 19953;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19953, 79752, 0),
(19953, 79753, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19953;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19953, 2, 1, 0, 19953, 2, 'Stormwind - Aedis Brom 1478 & Christoph Faral 1477 - Patrol');

DELETE FROM `waypoint_path_name` WHERE PathId = 19953;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19953,'Stormwind - Aedis Brom 1478 & Christoph Faral 1477 - Patrol');

DELETE FROM `waypoint_path` WHERE PathId = 19953;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19953,1,-8605.97,388.4096,102.97197,5.4105,1000,147801),
(19953,2,-8615.929,400.54318,102.953995,100,0,0),
(19953,3,-8620.224,397.57468,103.03687,100,0,0),
(19953,4,-8624.569,402.52734,103.754,100,0,0),
(19953,5,-8618.544,407.22418,103.754005,100,0,0),
(19953,6,-8628.692,419.52127,103.754,100,0,0),
(19953,7,-8634.286,415.20206,103.754,100,0,0),
(19953,8,-8638.026,419.93945,103.754,100,0,0),
(19953,9,-8642.033,424.81836,102.16646,100,0,0),
(19953,10,-8642.151,433.82864,101.42854,100,0,0),
(19953,11,-8633.741,444.01736,102.23632,100,0,0),
(19953,12,-8633.092,456.96573,102.250786,100,0,0),
(19953,13,-8638.692,467.63065,102.49093,100,0,0),
(19953,14,-8643.612,475.33984,102.554,100,0,0),
(19953,15,-8643.295,480.56836,102.55401,100,0,0),
(19953,16,-8625.0625,494.12045,102.8298,100,0,0),
(19953,17,-8610.885,505.98193,103.59259,100,0,0),
(19953,18,-8612.364,512.1572,103.594025,100,0,0),
(19953,19,-8624.841,526.0164,101.78771,100,0,0),
(19953,20,-8643.122,540.7465,99.26007,100,0,0),
(19953,21,-8653.31,552.87823,96.89987,100,0,0),
(19953,22,-8669.695,554.65643,97.20698,100,0,0),
(19953,23,-8681.281,546.71765,97.61576,100,0,0),
(19953,24,-8696.231,532.1369,97.84881,100,0,0),
(19953,25,-8709.895,521.8699,97.64783,100,0,0),
(19953,26,-8715.708,522.2867,97.58467,100,0,0),
(19953,27,-8725.747,535.2737,100.57344,100,0,0),
(19953,28,-8744.877,556.65735,97.936424,100,0,0),
(19953,29,-8746.912,563.9735,97.67403,100,0,0),
(19953,30,-8736.927,574.81903,97.46091,100,0,0),
(19953,31,-8726.303,586.199,98.628975,100,0,0),
(19953,32,-8719.493,592.2099,98.6251,100,0,0),
(19953,33,-8709.483,594.6732,98.70881,100,0,0),
(19953,34,-8703.497,610.8787,99.84038,100,0,0),
(19953,35,-8704.691,626.0755,100.60811,100,0,0),
(19953,36,-8710.41,649.86957,99.810875,100,0,0),
(19953,37,-8725.239,676.7979,98.93681,100,0,0),
(19953,38,-8730.646,692.6099,98.754,100,0,0),
(19953,39,-8736.637,700.1723,98.75399,100,0,0),
(19953,40,-8755.577,685.3889,100.96096,100,0,0),
(19953,41,-8774.462,670.64886,103.178154,100,0,0),
(19953,42,-8778.6875,671.30554,103.15679,100,0,0),
(19953,43,-8786.1,679.61523,102.563644,100,0,0),
(19953,44,-8791.541,677.17816,102.06446,100,0,0),
(19953,45,-8793.349,672.4512,101.71669,100,0,0),
(19953,46,-8799.878,652.563,94.782776,100,0,0),
(19953,47,-8797.231,637.9676,94.37699,100,0,0),
(19953,48,-8806.819,630.0441,94.354004,100,0,0),
(19953,49,-8822.546,616.98285,94.865295,100,0,0),
(19953,50,-8810.571,605.6124,96.113594,100,0,0),
(19953,51,-8800.414,592.4336,97.43857,100,0,0),
(19953,52,-8793.606,590.27386,97.6437,100,0,0),
(19953,53,-8781.114,599.73615,97.3905,100,0,0),
(19953,54,-8773.069,606.1068,97.2737,100,0,0),
(19953,55,-8767.997,606.94574,97.06388,100,0,0),
(19953,56,-8754.502,592.4987,97.354004,100,0,0),
(19953,57,-8740.98,578.93317,97.64419,100,0,0),
(19953,58,-8740.328,572.2801,97.53914,100,0,0),
(19953,59,-8747.14,564.15356,97.67506,100,0,0),
(19953,60,-8744.572,556.1684,98.07408,100,0,0),
(19953,61,-8732.456,543.0781,101.263306,100,0,0),
(19953,62,-8715.822,522.1786,97.56944,100,0,0),
(19953,63,-8716.61,516.9273,96.89181,100,0,0),
(19953,64,-8720.618,513.0137,96.724236,100,0,0),
(19953,65,-8720.439,509.4529,96.554,100,0,0),
(19953,66,-8706.044,490.81604,95.754,100,0,0),
(19953,67,-8695.015,477.3199,95.35401,100,0,0),
(19953,68,-8695.984,472.0918,95.68767,100,0,0),
(19953,69,-8703.266,466.3863,96.18977,100,0,0),
(19953,70,-8716.398,451.86023,97.29427,100,0,0),
(19953,71,-8722.37,423.59375,97.954,100,0,0),
(19953,72,-8727.422,414.86594,97.72824,100,0,0),
(19953,73,-8725.157,406.2984,97.795715,100,0,0),
(19953,74,-8711.432,404.89563,98.59457,100,0,0),
(19953,75,-8693.382,396.9513,101.524185,100,0,0),
(19953,76,-8678.048,399.6886,103.18709,100,0,0),
(19953,77,-8664.13,410.0662,102.92235,100,0,0),
(19953,78,-8648.308,423.268,101.81905,100,0,0),
(19953,79,-8642.75,423.51215,102.22586,100,0,0),
(19953,80,-8637.774,419.75607,103.754,100,0,0),
(19953,81,-8634.319,415.1174,103.754,100,0,0),
(19953,82,-8640.62,410.46158,103.754,100,0,0),
(19953,83,-8630.059,398.44034,103.754,100,0,0),
(19953,84,-8624.607,402.54407,103.754,100,0,0),
(19953,85,-8620.2705,397.51996,103.01035,100,0,0),
(19953,86,-8615.882,400.5037,102.953995,100,0,0),
(19953,87,-8606.981,388.76346,102.996574,100,0,0),
(19953,88,-8605.97,388.4096,102.97197,5.41052,600000,147802);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (147801,147802);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 147801
(147801,1,31,1477,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 1477'),
(147801,10,0,0,0,0,0,0,0x04,431,0,0,0,0,0,0,0,'1477 - say'),
(147801,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(147801,101,21,1,0,0,1477,50,0x04,0,0,0,0,0,0,0,0,'active - 1477'),
(147801,300,35,6,100,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 6'),
(147801,5000,21,0,0,0,1477,50,0x04,0,0,0,0,0,0,0,0,'unactive - 1477'),
(147801,5001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
-- 147802
(147802,1,31,1477,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 1477'),
(147802,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(147802,101,21,1,0,0,1477,50,0x04,0,0,0,0,0,0,0,0,'active - 1477'),
(147802,110,35,5,100,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 5'),
(147802,200,3,0,0,0,1477,50,7,0,0,0,0,-8607.489,387.3263,102.973206,5.3930,'Christoph Faral 1477 - move'),
(147802,100,0,0,0,0,1477,50,7,432,0,0,0,0,0,0,0,'1477 - say'),
(147802,4002,21,0,0,0,1477,50,0x04,0,0,0,0,0,0,0,0,'unactive - 1477'),
(147802,4003,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');

DELETE FROM `dbscript_random_templates` WHERE `id` BETWEEN 30 AND 33; 
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(30, 0, 400, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 1-1'),
(30, 0, 401, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 1-2'),
(30, 0, 402, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 1-3'),
(30, 0, 403, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 1-4'),
(30, 0, 399, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 1-5'),
(30, 0, 405, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 1-6'),
(30, 0, 407, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 1-7'),
(31, 0, 408, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 2-1'),
(31, 0, 409, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 2-2'),
(31, 0, 410, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 2-3'),
(31, 0, 411, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 2-4'),
(31, 0, 413, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 2-5'),
(31, 0, 414, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 2-6'),
(31, 0, 415, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 2-7'),
(31, 0, 416, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 2-8'),
(32, 0, 417, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 3-1'),
(32, 0, 418, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 3-2'),
(32, 0, 419, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 3-3'),
(32, 0, 420, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 3-4'),
(32, 0, 421, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 3-5'),
(32, 0, 422, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 3-6'),
(32, 0, 423, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 3-7'),
(32, 0, 424, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Text Group 3-8'),
(33, 1, 9992, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Script 1'),
(33, 1, 9993, 0, 'Aedis Brom 1478/Christoph Faral 1477 - RP - Random Script 2');

DELETE FROM dbscripts_on_relay WHERE id BETWEEN 9992 AND 9993;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9992,1,31,1477,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Aedis Brom 1478 EAI: search for 1477'),
(9992,100,0,30,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Aedis Brom 1478 EAI: Say Random text'),
(9992,3000,31,1477,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Aedis Brom 1478 EAI: search for 1477'),
(9992,3100,0,31,0,0,1477,50,0x04,0,0,0,0,0,0,0,0,'Part of Aedis Brom 1478 EAI: 1477 - Say Random text'),
(9992,6000,0,32,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Aedis Brom 1478 EAI: Say Random text'),
(9993,1,31,1477,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Aedis Brom 1478 EAI: search for 1477'),
(9993,100,0,30,0,0,1477,50,0x04,0,0,0,0,0,0,0,0,'Part of Aedis Brom 1478 EAI: 1477 - Say Random text'),
(9993,3100,0,31,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Aedis Brom 1478 EAI: Say Random text'),
(9993,5900,31,1477,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Aedis Brom 1478 EAI: search for 1477'),
(9993,6000,0,32,0,0,1477,50,0x04,0,0,0,0,0,0,0,0,'Part of Aedis Brom 1478 EAI: 1477 - Say Random text');

