-- Dun Morogh
-- Ironforge Mountaineer 727
UPDATE creature SET position_x = -5684.3076, position_y = -482.65714, position_z = 395.93985, spawndist = 0, MovementType = 4 WHERE guid = 187; -- linear
UPDATE creature SET position_x = -5718.614, position_y = -546.7613, position_z = 398.93054, spawndist = 0, MovementType = 4 WHERE guid = 225; -- linear
UPDATE creature SET position_x = -6019.493, position_y = 52.113934, position_z = 405.42926, spawndist = 0, MovementType = 4 WHERE guid = 245; -- linear
DELETE FROM creature_movement WHERE Id IN (187,225,245);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 187 - Single Guard pathing through Kharanos
(187,1 ,-5684.3076,-482.65714,395.93985,100,1000,0),
(187,2 ,-5646.1147,-484.47397,396.28467,100,0,0),
(187,3 ,-5623.959,-485.37436,396.98026,100,0,0),
(187,4 ,-5610.264,-482.24133,396.98026,100,0,0),
(187,5 ,-5588.652,-484.579,396.99762,100,0,0),
(187,6 ,-5562.226,-479.35147,397.56244,100,0,0),
(187,7 ,-5533.865,-484.72397,397.4872,100,0,0),
(187,8 ,-5521.0923,-494.6748,397.4607,100,0,0),
(187,9 ,-5507.2773,-514.5727,397.4607,100,0,0),
(187,10,-5466.6,-520.7313,397.4607,100,0,0),
(187,11,-5433.19,-516.805,395.90656,100,0,0),
(187,12,-5399.757,-516.54395,392.0496,100,0,0),
(187,13,-5366.9062,-521.47626,391.49332,100,0,0),
(187,14,-5347.8613,-522.5091,391.49332,100,1000,0),
-- 225 - SE from Kharanos
(225,1 ,-5718.614,-546.7613,398.93054,100,1000,0),
(225,2 ,-5710.5054,-551.1133,398.51938,100,0,0),
(225,3 ,-5701.13,-556.43274,399.44922,100,0,0),
(225,4 ,-5689.9126,-561.7245,399.60287,100,0,0),
(225,5 ,-5683.6533,-570.796,401.20007,100,0,0),
(225,6 ,-5688.0454,-570.8251,401.3193,100,0,0),
(225,7 ,-5694.256,-562.9922,400.09,100,0,0),
(225,8 ,-5704.6533,-558.71204,399.36368,100,0,0),
(225,9 ,-5712.108,-554.62836,398.485,100,0,0),
(225,10,-5719.586,-550.4644,398.66025,100,1000,0),
-- 245 - From Coldridge Pass
(245,1 ,-6019.493,52.113934,405.42926,100,1000,0),
(245,2 ,-5982.7754,63.682728,398.94522,100,0,0),
(245,3 ,-5963.5522,60.133465,392.5952,100,0,0),
(245,4 ,-5934.9854,63.696724,381.0262,100,0,0),
(245,5 ,-5916.697,56.15462,373.61502,100,0,0),
(245,6 ,-5904.774,33.585396,367.90573,100,0,0),
(245,7 ,-5914.293,-0.076389,368.4636,100,0,0),
(245,8 ,-5923.1953,-33.374893,374.38068,100,0,0),
(245,9 ,-5933.084,-66.70562,382.17706 ,100,0,0),
(245,10,-5949.813,-99.963974,393.06274,100,0,0),
(245,11,-5966.448,-133.30978,397.00146,100,0,0),
(245,12,-5978.012,-166.57965,400.93893,100,0,0),
(245,13,-5988.583,-199.88672,405.42993,100,0,0),
(245,14,-5999.792,-233.24274,410.15417,100,0,0),
(245,15,-6009.476,-266.51227,416.20264,100,0,0),
(245,16,-6006.173,-300.0627,419.07382,100,0,0),
(245,17,-6000.0996,-333.23038,419.20288,100,0,0),
(245,18,-5989.484,-366.57367,416.56152,100,0,0),
(245,19,-5968.261,-399.92395,412.9964,100,0,0),
(245,20,-5944.8184,-433.1479,412.9467,100,0,0),
(245,21,-5912.8794,-466.73068,412.59198,100,0,0),
(245,22,-5900.2793,-479.29895,411.21722,100,0,0),
(245,23,-5866.729,-483.48038,408.8789,100,0,0),
(245,24,-5846.416,-499.73047,407.6045,100,0,0),
(245,25,-5833.874,-508.1898,405.93723,100,0,0),
(245,26,-5800.089,-508.31207,403.2781,100,1000,0);
-- Groups
-- Spawn Group 1
DELETE FROM creature_addon WHERE guid IN (4479,4480,4481);
DELETE FROM creature_movement WHERE Id IN (4479,4480,4481);
DELETE FROM creature_linking WHERE master_guid = 4481;
UPDATE creature SET position_x = -5506.9634, position_y = -2033.7249, position_z = 399.37518, spawndist = 0, MovementType = 0 WHERE guid IN (4479,4480,4481);
DELETE FROM `spawn_group` WHERE id = 19928;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19928, 'Dun Morogh - Ironforge Mountaineer 7271 x3 - Patrol 1', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19928;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19928, 4479, 0),
(19928, 4480, 1),
(19928, 4481, 2);
DELETE FROM `spawn_group_formation` WHERE id = 19928;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19928, 3, 1, 0, 19928, 4, 'Dun Morogh - Ironforge Mountaineer 7271 x3 - Patrol 1'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 19928;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19928,'Dun Morogh - Ironforge Mountaineer 7271 x3 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId = 19928;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19928,1 ,-5506.9634,-2033.7249,399.37518,100,1000,0),
(19928,2 ,-5510.5674,-2000.046,399.37518,100,0,0),
(19928,3 ,-5508.8696,-1966.9395,399.37518,100,0,0),
(19928,4 ,-5492.3916,-1933.0013,398.45685,100,0,0),
(19928,5 ,-5493.69,-1899.954,397.10245,100,0,0),
(19928,6 ,-5512.361,-1866.3016,397.15704,100,0,0),
(19928,7 ,-5514.8276,-1833.995,397.10245,100,0,0),
(19928,8 ,-5513.1196,-1800.1426,397.1565,100,0,0),
(19928,9 ,-5509.9673,-1767.2572,397.2187,100,0,0),
(19928,10,-5511.722,-1733.2396,397.18314,100,0,0),
(19928,11,-5521.068,-1699.9651,396.045,100,0,0),
(19928,12,-5533.732,-1690.2285,394.29462,100,0,0),
(19928,13,-5542.764,-1683.4751,392.8478,100,0,0),
(19928,14,-5544.9297,-1666.145,391.77515,100,0,0),
(19928,15,-5551.3877,-1632.8317,391.77515,100,0,0),
(19928,16,-5560.192,-1613.153,391.77515,100,0,0),
(19928,17,-5554.8965,-1584.1869,396.08664,100,0,0),
(19928,18,-5568.5767,-1553.5103,399.03442,100,0,0),
(19928,19,-5600.815,-1544.3837,399.20514,100,0,0),
(19928,20,-5613.1523,-1514.6211,399.06738,100,1000,0);
-- Spawn Group 2
DELETE FROM creature_addon WHERE guid IN (4089,4090); -- FREE for all 3 DBS
DELETE FROM creature_movement WHERE Id IN (4089,4090);
DELETE FROM game_event_creature WHERE guid IN (4089,4090);
DELETE FROM game_event_creature_data WHERE guid IN (4089,4090);
DELETE FROM creature_battleground WHERE guid IN (4089,4090);
DELETE FROM creature_linking WHERE guid IN (4089,4090) 
OR master_guid IN (4089,4090);
DELETE FROM creature WHERE guid IN (4089,4090);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(4089,727,0,1,-5261.7256,-489.1352,386.77216,0,300,300,0,0),
(4090,727,0,1,-5261.7256,-489.1352,386.77216,0,300,300,0,0);
DELETE FROM `spawn_group` WHERE id = 19927;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19927, 'Dun Morogh - Ironforge Mountaineer 7271 x2 - Patrol 2', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19927;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19927, 4089, 0),
(19927, 4090, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19927;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19927, 2, 1, 0, 19927, 4, 'Dun Morogh - Ironforge Mountaineer 7271 x2 - Patrol 2'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 19927;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19927,'Dun Morogh - Ironforge Mountaineer 7271 x2 - Patrol 2');
DELETE FROM `waypoint_path` WHERE PathId = 19927;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19927,1 ,-5261.7256,-489.1352,386.77216,100,1000,0),
(19927,2 ,-5295.799,-507.94293,391.48163,100,0,0),
(19927,3 ,-5333.296,-517.08453,391.49332,100,0,0),
(19927,4 ,-5352.134,-533.1839,391.5357,100,0,0),
(19927,5 ,-5357.6196,-566.56335,391.49335,100,0,0),
(19927,6 ,-5379.194,-600.0013,391.47107,100,0,0),
(19927,7 ,-5395.071,-633.54034,391.71756,100,0,0),
(19927,8 ,-5408.4976,-666.6967,392.9682,100,0,0),
(19927,9 ,-5424.699,-700.179,393.47885,100,0,0),
(19927,10,-5439.3735,-733.23425,393.74448,100,0,0),
(19927,11,-5442.0454,-766.76105,394.05994,100,0,0),
(19927,12,-5424.2163,-800.1314,392.3248,100,0,0),
(19927,13,-5398.037,-833.3683,392.2597,100,0,0),
(19927,14,-5384.9287,-866.7958,391.97937,100,0,0),
(19927,15,-5390.577,-899.81445,392.23535,100,0,0),
(19927,16,-5407.956,-920.0989,392.2115,100,0,0),
(19927,17,-5425.412,-966.9361,392.2125,100,0,0),
(19927,18,-5450.83,-979.2663,392.21295,100,0,0),
(19927,19,-5466.8853,-1000.9667,392.2127,100,0,0),
(19927,20,-5499.975,-1012.0164,393.10855,100,0,0),
(19927,21,-5533.4053,-1019.3673,392.9466,100,0,0),
(19927,22,-5566.4014,-1014.0233,392.81146,100,1000,0);
-- Spawn Group 3
DELETE FROM creature_movement WHERE Id IN (2283,2284);
UPDATE creature SET position_x = -5248.21, position_y = -484.53397, position_z = 386.3095, spawndist = 0, MovementType = 0 WHERE guid IN (2283,2284);
DELETE FROM `spawn_group` WHERE id = 19926;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19926, 'Dun Morogh - Ironforge Mountaineer 7271 x2 - Patrol 3', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19926;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19926, 2283, 0),
(19926, 2284, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19926;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19926, 2, 1, 0, 19926, 4, 'Dun Morogh - Ironforge Mountaineer 7271 x2 - Patrol 3'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 19926;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19926,'Dun Morogh - Ironforge Mountaineer 7271 x2 - Patrol 3');
DELETE FROM `waypoint_path` WHERE PathId = 19926;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19926,1 ,-5248.21,-484.53397,386.3095,100,1000,0),
(19926,2 ,-5223.3896,-466.12076,386.33145,100,0,0),
(19926,3 ,-5204.75,-431.14377,386.33145,100,0,0),
(19926,4 ,-5166.685,-405.39822,388.62732,100,0,0),
(19926,5 ,-5133.1855,-389.67047,388.70523,100,0,0),
(19926,6 ,-5099.7407,-383.3596,391.7831,100,0,0),
(19926,7 ,-5066.399,-384.54492,392.61066,100,0,0),
(19926,8 ,-5033.055,-380.96332,392.73505,100,0,0),
(19926,9 ,-4999.8276,-379.0178,392.31833,100,0,0),
(19926,10,-4966.4272,-375.5689,391.572,100,0,0),
(19926,11,-4933.3022,-346.86783,389.6191,100,0,0),
(19926,12,-4919.983,-333.24762,389.49002,100,0,0),
(19926,13,-4911.958,-299.84564,386.89774,100,0,0),
(19926,14,-4914.8965,-266.699,384.65384,100,0,0),
(19926,15,-4913.927,-233.25363,382.23596,100,0,0),
(19926,16,-4914.0103,-200.06711,380.17422,100,0,0),
(19926,17,-4919.1895,-166.67725,378.09308,100,0,0),
(19926,18,-4919.8228,-127.78489,376.13007,100,0,0),
(19926,19,-4945.9985,-100.30485,378.58276,100,0,0),
(19926,20,-4948.487,-66.631294,381.79535,100,0,0),
(19926,21,-4945.5054,-50.604385,385.429 ,100,0,0),
(19926,22,-4952.1255,-33.164497,386.3241,100,0,0),
(19926,23,-4951.852,0.263835,386.3328,100,0,0),
(19926,24,-4947.4976,33.20139,386.48392,100,0,0),
(19926,25,-4955.928,66.76085,386.6726,100,1000,0);

-- Dun Morogh Mountaineer 13076
UPDATE creature SET position_x = -5344.7095, position_y = 297.23123, position_z = 394.85376, spawndist = 0, MovementType = 2 WHERE guid = 3022;
DELETE FROM creature_movement WHERE Id IN (3022);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 3022 - Single Guard pathing around Brewnall Village
(3022,1 ,-5344.7095,297.23123,394.85376,100,0,0),
(3022,2 ,-5344.1665,284.8842,392.60022,100,0,0),
(3022,3 ,-5355.671,286.34836,393.79327,100,0,0),
(3022,4 ,-5361.5913,273.78265,394.28275,100,0,0),
(3022,5 ,-5374.7886,277.40152,394.24207,100,0,0),
(3022,6 ,-5387.133,287.22083,394.20886,100,0,0),
(3022,7 ,-5396.0156,300.03586,395.1969,100,0,0),
(3022,8 ,-5397.9546,306.35065,395.66504,100,0,0),
(3022,9 ,-5394.629,317.15128,395.49338,100,0,0),
(3022,10,-5388.8613,320.6727,394.78964,100,0,0),
(3022,11,-5377.795,325.183,394.52866,100,0,0),
(3022,12,-5363.9287,327.5,394.46777,100,0,0),
(3022,13,-5351.942,323.8969,394.24677,100,0,0),
(3022,14,-5346.827,313.973,394.66827,100,0,0),
(3022,15,-5353.341,304.57877,394.27753,100,0,0);
