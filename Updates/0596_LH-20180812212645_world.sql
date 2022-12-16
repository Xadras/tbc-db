-- Add your query below.
-- https://github.com/lh-server/core/commit/688b696d780b2e1ad5287c7262497709486d6380

-- Pattern: Runic Leather Headband should be sold by Jase Farlane. (Limited Supply)
-- https://web.archive.org/web/20060216103740/http://wow.allakhazam.com:80/db/item.html?witem=15756
-- https://github.com/cmangos/classic-db/commit/9190e8384e6a71670928a89800490c875128482f
-- https://www.wowhead.com/tbc/item=15756/pattern-runic-leather-headband#comments:id=5247811
-- UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 3600 WHERE `entry` = 12941 AND `item` = 15756; -- classicmangos only
DELETE FROM `npc_vendor` WHERE `entry` = 12941 AND `item` = 15756; -- tbcmangos+ trained at trainer, not sold anymore https://www.wowhead.com/tbc/npc=12941/jase-farlane

-- High Potency Radioactive Fallout should have a 2 hour duration.
-- https://vanillawowdb.com/?quest=2962
-- https://github.com/cmangos/classic-db/commit/66529dfe02cd49efcc2d307f6c2500fae331a55a
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1 WHERE `entry` = 9365; -- Realtime Duration

-- Spawn time for Waterlogged Footlocker should be 8-9 minutes.
-- https://www.wowhead.com/tbc/object=179487/waterlogged-footlocker#comments:id=247390
-- https://github.com/cmangos/classic-db/commit/dc8d847077fe22c11d9bcc13d3eb3d4d0f4178f2
-- https://www.wowhead.com/object=179487/waterlogged-footlocker#comments:id=247390

-- Respawn Gameobject data1 = 16464
-- 179486 Battered Footlocker
-- 179487 Waterlogged Footlocker
-- 179488 Battered Footlocker
-- 179489 Waterlogged Footlocker
SET @GUID1 := 171100;
DELETE FROM `gameobject` WHERE `id` = 179486; -- (-32 / +111)
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@GUID1 := @GUID1 + 1, 179486, 0, -3310.85, -1004.25, 7.65514, 3.83973, 0, 0, -0.939692, 0.34202, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3297.66, -908.377, 0.793502, 1.81514, 0, 0, 0.788011, 0.615662, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3286.68, -1161.27, 8.09106, 3.31614, 0, 0, -0.996194, 0.087165, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3260.83, -1094.46, 7.53431, 0.750491, 0, 0, 0.366501, 0.930418, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3250.55, -930.144, 8.67531, 1.88495, 0, 0, 0.809016, 0.587786, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3243.73, -1312.03, 6.06156, 6.03884, 0, 0, -0.121869, 0.992546, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3239.02, -1042.47, 7.59312, 0.0523589, 0, 0, 0.0261765, 0.999657, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3234.56, -1227.86, 8.19779, 5.20108, 0, 0, -0.515038, 0.857168, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3230.34, -1403.67, 8.9191, 4.72984, 0, 0, -0.700909, 0.713251, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3223.31, -989.095, 5.42115, 2.56563, 0, 0, 0.958819, 0.284016, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3204, -1087.91, 9.14602, 3.45576, 0, 0, -0.987688, 0.156436, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3187.43, -1176.53, 7.97092, 0.785397, 0, 0, 0.382683, 0.92388, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3175.31, -1339.34, 7.79502, 3.54302, 0, 0, -0.979924, 0.19937, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3173.54, -924.95, 7.74012, 1.55334, 0, 0, 0.700909, 0.713251, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3159.01, -1022.51, 7.19671, 5.00909, 0, 0, -0.594823, 0.803857, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3144.5, -1101.39, 8.22152, 1.3439, 0, 0, 0.622514, 0.782609, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3139.77, -1226.99, 7.55713, 4.57276, 0, 0, -0.754709, 0.656059, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3138.7, -981.94, 7.86911, 3.21142, 0, 0, -0.999391, 0.0349061, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3123.85, -1240.93, 2.26409, 5.8294, 0, 0, -0.224951, 0.97437, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3122.36, -1420.57, 11.2572, 5.02655, 0, 0, -0.587785, 0.809017, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3092.38, -1276.26, 7.68682, 0.191985, 0, 0, 0.0958452, 0.995396, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3091.55, -1133.3, 8.17147, 3.63029, 0, 0, -0.970295, 0.241925, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3083.1, -1062.89, 8.07908, 3.01941, 0, 0, 0.998135, 0.0610518, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3077.5, -934.708, 5.50814, 0.994837, 0, 0, 0.477159, 0.878817, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3050.55, -1210.72, 7.88541, 5.09636, 0, 0, -0.559193, 0.829038, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3031.18, -1100.91, 6.25554, 1.02974, 0, 0, 0.492423, 0.870356, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3028.16, -1249.71, 7.59117, 1.76278, 0, 0, 0.771625, 0.636078, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3027.38, -1348.24, 2.4894, 4.67748, 0, 0, -0.719339, 0.694659, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3014.69, -1033.26, 7.44476, 1.93731, 0, 0, 0.824125, 0.566408, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3009.9, -1150.78, 9.15748, 2.51327, 0, 0, 0.951056, 0.309017, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -3006.84, -1297.63, 9.81489, 5.5676, 0, 0, -0.350207, 0.936672, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -2966.98, -1147.13, 7.30024, 4.7473, 0, 0, -0.694658, 0.71934, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -2953.72, -1035, 7.84795, 5.25344, 0, 0, -0.492423, 0.870356, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -601.285, -1529.93, 53.66, 0.418879, 0, 0, 0.207911, 0.978148, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -598.473, -1502.89, 54.0429, 4.50295, 0, 0, -0.777145, 0.629321, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -590.885, -1479.43, 53.846, 2.75761, 0, 0, 0.981627, 0.190812, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -590.016, -1460.08, 53.7956, 4.27606, 0, 0, -0.843391, 0.5373, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -584.293, -1474.19, 53.3182, 5.8294, 0, 0, -0.224951, 0.97437, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -583.034, -1517.14, 52.6381, 2.51327, 0, 0, 0.951056, 0.309017, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -580.359, -1460.68, 52.4409, 1.13446, 0, 0, 0.537299, 0.843392, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -578.57, -1543.06, 53.5969, 5.79449, 0, 0, -0.241921, 0.970296, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -570.178, -1555.09, 53.4028, 1.0821, 0, 0, 0.515038, 0.857168, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -565.42, -1499.83, 52.5574, 2.00713, 0, 0, 0.843391, 0.5373, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -552.433, -1438.01, 52.4409, 3.54302, 0, 0, -0.979924, 0.19937, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -549.894, -1460.29, 52.6552, 3.05433, 0, 0, 0.999048, 0.0436193, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -548.937, -1544.72, 52.5503, 1.11701, 0, 0, 0.529919, 0.848048, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -548.366, -1488.67, 52.4409, 3.45576, 0, 0, -0.987688, 0.156436, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -545.406, -1413.07, 53.4511, 5.68977, 0, 0, -0.292372, 0.956305, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -544.115, -1559.32, 52.5438, 5.86431, 0, 0, -0.207911, 0.978148, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -541.082, -1515.59, 53.3401, 3.927, 0, 0, -0.923879, 0.382686, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -531.949, -1420.86, 54.4529, 2.54818, 0, 0, 0.956305, 0.292372, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -516.654, -1362.59, 52.4409, 3.87463, 0, 0, -0.93358, 0.358368, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -507.908, -1585.03, 52.818, 1.23918, 0, 0, 0.580703, 0.814116, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -496.892, -1355.18, 53.6745, 2.30383, 0, 0, 0.913545, 0.406738, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -496.88, -1396.31, 52.4617, 3.85718, 0, 0, -0.936671, 0.35021, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -490.905, -1365.88, 52.4414, 4.93928, 0, 0, -0.622514, 0.782609, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -489.764, -1554.22, 53.2001, 4.18879, 0, 0, -0.866025, 0.500001, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -488.138, -1338.01, 53.637, 3.83973, 0, 0, -0.939692, 0.34202, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -475.535, -1576.44, 53.669, 2.74016, 0, 0, 0.979924, 0.19937, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -474.349, -1331.79, 52.4409, 2.61799, 0, 0, 0.965925, 0.258821, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -473.703, -1366.01, 52.4819, 4.25861, 0, 0, -0.848047, 0.529921, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -468.091, -1383.6, 52.5109, 1.83259, 0, 0, 0.793353, 0.608762, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -454.786, -1351.8, 53.604, 1.02974, 0, 0, 0.492423, 0.870356, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -453.322, -1335.52, 53.8442, 4.13643, 0, 0, -0.878817, 0.47716, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 0, -450.625, -1358.9, 52.4847, 4.11898, 0, 0, -0.882947, 0.469473, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1027.94, 5.94765, 14.068, 0.994837, 0, 0, 0.477159, 0.878817, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1041.27, 108.798, 16.5837, 6.26573, 0, 0, -0.00872612, 0.999962, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1053.41, -434.463, 3.52878, 0.95993, 0, 0, 0.461748, 0.887011, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1067.31, -245.852, 4.23911, 6.23083, 0, 0, -0.0261765, 0.999657, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1071.13, -324.198, -8.96346, 6.21337, 0, 0, -0.0348988, 0.999391, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1074.21, -67.168, 9.75521, 5.89921, 0, 0, -0.190808, 0.981627, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1087.92, -431.242, 0.979811, 1.16937, 0, 0, 0.551936, 0.833886, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1097.99, 145.711, 5.48243, 3.08918, 0, 0, 0.999657, 0.0262016, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1107.43, 249.567, 16.722, 5.23599, 0, 0, -0.5, 0.866025, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1120.22, -360.83, -0.368548, 2.19911, 0, 0, 0.891006, 0.453991, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1123.68, 28.9255, 4.57795, 1.67551, 0, 0, 0.743144, 0.669131, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1133.32, -158.61, 2.92415, 1.44862, 0, 0, 0.66262, 0.748956, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1134.98, -98.4274, 2.25652, 6.12611, 0, 0, -0.0784588, 0.996917, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1142.94, -258.566, -2.10636, 0.436332, 0, 0, 0.216439, 0.976296, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1156.75, -181.654, 1.68444, 0.383971, 0, 0, 0.190808, 0.981627, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1160.72, 191.981, 4.09873, 2.51327, 0, 0, 0.951056, 0.309017, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1174.1, 328.936, 25.3013, 5.91667, 0, 0, -0.182235, 0.983255, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1182.92, -416.675, 16.2559, 1.76278, 0, 0, 0.771625, 0.636078, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1185.02, 173.503, 2.90554, 5.65487, 0, 0, -0.309016, 0.951057, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1196, 84.5773, -6.96745, 3.35105, 0, 0, -0.994521, 0.104536, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1202.77, -239.405, -20.4256, 2.32129, 0, 0, 0.91706, 0.39875, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1203.5, -31.3563, -2.82677, 3.45576, 0, 0, -0.987688, 0.156436, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1219.48, -323.364, 4.34928, 1.16937, 0, 0, 0.551936, 0.833886, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1239.45, 222.891, 14.8428, 3.17653, 0, 0, -0.999847, 0.0174693, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1247.54, 83.1062, -2.83286, 2.1293, 0, 0, 0.874619, 0.48481, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1249.3, 154.684, 4.96865, 5.25344, 0, 0, -0.492423, 0.870356, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1259.45, 18.4913, -6.00124, 2.42601, 0, 0, 0.936672, 0.350207, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1269.38, -182.082, 5.46835, 5.58505, 0, 0, -0.34202, 0.939693, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1270.48, -90.5138, 2.7399, 2.3911, 0, 0, 0.930417, 0.366502, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1272.48, 208.63, 12.1666, 4.79966, 0, 0, -0.67559, 0.737278, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1303.87, -263.335, 2.5265, 2.82743, 0, 0, 0.987688, 0.156436, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1317.26, -326.386, 10.6947, 1.85005, 0, 0, 0.798635, 0.601815, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1318.57, 99.8749, 3.27564, 3.68265, 0, 0, -0.96363, 0.267241, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1326.78, -31.8027, 7.5694, 2.00713, 0, 0, 0.843391, 0.5373, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1327.62, 46.2403, 13.1024, 3.83973, 0, 0, -0.939692, 0.34202, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1329.49, -181.49, 5.93555, 2.58308, 0, 0, 0.961261, 0.27564, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1344.6, -221.029, -4.98569, 3.85718, 0, 0, -0.936671, 0.35021, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1349.64, 225.174, 13.3361, 4.60767, 0, 0, -0.743144, 0.669131, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1360.1, -356.289, 14.8436, 2.14675, 0, 0, 0.878817, 0.47716, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1362.49, 121.718, 12.9175, 1.78023, 0, 0, 0.777145, 0.629321, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1363.94, -130.593, 0.77537, 2.49582, 0, 0, 0.948323, 0.317306, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1368.76, 14.8609, 7.23989, 2.60054, 0, 0, 0.96363, 0.267241, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1400.45, 79.8333, 16.0442, 2.25147, 0, 0, 0.902585, 0.430512, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1417.42, -122.598, 17.4324, 5.044, 0, 0, -0.580703, 0.814116, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1430.5, -32.8395, 26.4264, 4.2237, 0, 0, -0.857167, 0.515038, 480, 540, 255, 1),
(@GUID1 := @GUID1 + 1, 179486, 1, 1447.52, 90.7417, 19.8746, 3.01941, 0, 0, 0.998135, 0.0610518, 480, 540, 255, 1);

SET @GUID2 := 171300;
DELETE FROM `gameobject` WHERE `id` = 179487; -- (-23 / +62)
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@GUID2 := @GUID2 + 1, 179487, 0, -9535.76, -2469.39, 39.6929, 5.79449, -0.241921, 0.970296, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9511.57, -2655.24, 46.1449, 5.044, -0.580703, 0.814116, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9508.27, -2513.24, 44.242, 0.942477, 0.45399, 0.891007, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9507.71, -2422.95, 53.7339, 5.5676, -0.350207, 0.936672, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9507.08, -2696.54, 43.0157, 0.645772, 0.317305, 0.948324, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9495.78, -2562.44, 50.6315, 0.680677, 0.333806, 0.942642, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9484.73, -2616.82, 45.5676, 2.44346, 0.939692, 0.34202, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9482.21, -2474.54, 39.2688, 4.64258, -0.731354, 0.681998, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9478.94, -2538.47, 46.8134, 6.16101, -0.0610485, 0.998135, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9471.57, -2425.39, 53.3882, 5.37562, -0.438371, 0.898794, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9464.15, -2597.7, 42.5076, 0.767944, 0.374606, 0.927184, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9462.51, -2703.37, 38.6959, 2.79252, 0.984807, 0.173652, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9452.85, -2625.65, 41.1664, 2.87979, 0.991445, 0.130528, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9451.81, -2573.72, 37.0704, 3.07177, 0.999391, 0.0349061, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9451.42, -2521.37, 32.5952, 0.331611, 0.165047, 0.986286, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9447.61, -2466.74, 41.1327, 4.76475, -0.688354, 0.725374, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9436.4, -2736.28, 42.7393, 1.8675, 0.803857, 0.594823, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9431.91, -2438.22, 49.7343, 5.25344, -0.492423, 0.870356, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9431.7, -2605.68, 43.5151, 3.01941, 0.998135, 0.0610518, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9429.94, -2544.85, 34.8912, 1.88495, 0.809016, 0.587786, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9427.09, -2391.39, 53.9951, 4.7473, -0.694658, 0.71934, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9419.08, -2647.09, 45.5531, 2.14675, 0.878817, 0.47716, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9417.94, -2486.43, 32.0577, 5.25344, -0.492423, 0.870356, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9409.14, -2700.31, 49.0647, 2.44346, 0.939692, 0.34202, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9404.34, -2575.55, 47.9735, 2.37364, 0.927183, 0.374608, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9398.21, -2524.62, 24.717, 3.33359, -0.995396, 0.0958512, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9387.96, -2626.23, 37.9692, 1.69297, 0.748956, 0.66262, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9385.64, -2541.61, 28.9328, 1.32645, 0.615661, 0.788011, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9373.02, -2661.57, 53.3449, 2.54818, 0.956305, 0.292372, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9369.86, -2570.58, 36.8449, 0.575957, 0.284015, 0.95882, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 0, -9360.87, -2610.81, 27.6731, 2.53072, 0.953716, 0.300708, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3483.46, 914.158, 5.34739, 0.0174525, 0.00872612, 0.999962, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3514.91, 1013.07, 2.22407, 0.0174525, 0.00872612, 0.999962, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3516.24, 1073.22, 12.6221, 4.50295, -0.777145, 0.629321, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3535.29, 948.418, 3.52732, 4.97419, -0.608761, 0.793354, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3538.53, 915.577, 4.53245, 6.23083, -0.0261765, 0.999657, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3557.53, 1023.29, -1.39948, 5.044, -0.580703, 0.814116, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3570.23, 937.069, 2.06354, 0.645772, 0.317305, 0.948324, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3595.42, 1129.77, 1.17463, 5.00909, -0.594823, 0.803857, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3616.25, 878.275, -2.91687, 0.488691, 0.241921, 0.970296, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3632.12, 927.901, 2.67977, 3.15906, -0.999962, 0.00873464, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3635.48, 1058.9, 1.27651, 4.36332, -0.819152, 0.573577, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3667.58, 842.233, 5.34729, 6.17847, -0.0523357, 0.99863, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3667.76, 943.347, 3.40273, 4.15388, -0.874619, 0.48481, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3686.23, 896.725, 1.30081, 2.70526, 0.976295, 0.216442, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3694.63, 985.968, 2.10302, 4.4855, -0.782608, 0.622515, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3707.46, 836.31, 5.42599, 2.89725, 0.992546, 0.12187, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3715.52, 943.629, -4.40278, 0.383971, 0.190808, 0.981627, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3722.14, 904.603, 0.96701, 2.02458, 0.848047, 0.529921, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3786.11, 867.023, 0.436485, 3.78737, -0.948323, 0.317306, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3822.12, 815.942, 2.11093, 0.802851, 0.390731, 0.920505, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3897.08, 848.288, 4.98377, 3.45576, -0.987688, 0.156436, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3905.87, 955.496, 1.75919, 2.28638, 0.909961, 0.414694, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3909.48, 892.834, -4.36562, 4.38078, -0.814116, 0.580703, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 3944.02, 799.561, 9.05761, 1.64061, 0.731353, 0.681999, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 4015.32, 830.45, 3.50855, 2.28638, 0.909961, 0.414694, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 4049.47, 883.908, -0.795611, 1.62316, 0.725374, 0.688355, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 4068.43, 1004.95, 1.45224, 5.68977, -0.292372, 0.956305, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 4097.43, 924.64, 5.39245, 2.63544, 0.968147, 0.250381, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 4127.8, 1288.31, 1.7341, 4.92183, -0.62932, 0.777146, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 4158.51, 1055.2, 1.27445, 2.26893, 0.906307, 0.422619, 480, 540, 255, 1),
(@GUID2 := @GUID2 + 1, 179487, 1, 4191.96, 1288.67, 0.907915, 5.25344, -0.492423, 0.870356, 480, 540, 255, 1);

SET @GUID3 := 171400;
DELETE FROM `gameobject` WHERE `id` = 179488; -- (-23 / +52)
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@GUID3 := @GUID3 + 1, 179488, 0, -3291.57, -953.24, 9.11977, 3.12412, 0, 0, 0.999962, 0.00873464, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3287.25, -943.397, 8.92945, 2.05949, 0, 0, 0.857167, 0.515038, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3281.44, -956.815, 8.60494, 0.104719, 0, 0, 0.0523357, 0.99863, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3241.39, -1137.58, 8.76748, 2.96704, 0, 0, 0.996194, 0.087165, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3235.09, -1148.29, 8.72373, 3.73501, 0, 0, -0.956305, 0.292372, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3230.19, -1147.53, 7.79682, 0.122173, 0, 0, 0.0610485, 0.998135, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3221.37, -1020.48, 7.92467, 3.61284, 0, 0, -0.972369, 0.233448, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3208.96, -1023, 10.0995, 0, 0, 0, 0, 1, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3201.64, -957.986, 8.90404, 5.13127, 0, 0, -0.544639, 0.838671, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3198.15, -941.809, 9.54875, 2.80998, 0, 0, 0.986285, 0.16505, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3145.93, -1054.7, 8.56969, 2.60054, 0, 0, 0.96363, 0.267241, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3132.61, -1061.62, 9.86605, 5.95157, 0, 0, -0.165047, 0.986286, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3106.28, -960.787, 8.48963, 2.65289, 0, 0, 0.970295, 0.241925, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3104.77, -947.625, 8.90692, 2.51327, 0, 0, 0.951056, 0.309017, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3053.2, -988.194, 8.76575, 4.10153, 0, 0, -0.887011, 0.461749, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3050.98, -981.896, 8.94378, 3.01941, 0, 0, 0.998135, 0.0610518, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -3048.99, -969.674, 9.01211, 2.00713, 0, 0, 0.843391, 0.5373, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -2996.25, -1067.17, 9.36874, 3.194, 0, 0, -0.999657, 0.0262016, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -2992.43, -1082.74, 8.07506, 0.0174525, 0, 0, 0.00872612, 0.999962, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -2987.6, -1062.95, 7.83829, 0.0698117, 0, 0, 0.0348988, 0.999391, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -617.808, -1554.5, 64.8736, 1.76278, 0, 0, 0.771625, 0.636078, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -596.135, -1434.1, 65.0242, 2.1293, 0, 0, 0.874619, 0.48481, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -586.978, -1398.59, 64.8736, 0.767944, 0, 0, 0.374606, 0.927184, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -544.347, -1379.27, 64.757, 3.10665, 0, 0, 0.999847, 0.0174693, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -538.906, -1586.92, 64.7883, 1.79769, 0, 0, 0.782608, 0.622515, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -535.313, -1338.79, 64.8361, 5.55015, 0, 0, -0.358368, 0.93358, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -528.988, -1438.78, 65.8266, 5.65487, 0, 0, -0.309016, 0.951057, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -487.744, -1490.33, 87.7138, 3.80482, 0, 0, -0.945518, 0.325568, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -480.84, -1444.27, 87.685, 1.8675, 0, 0, 0.803857, 0.594823, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -479.151, -1529.03, 65.2002, 4.41568, 0, 0, -0.803857, 0.594823, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -477.884, -1472.52, 87.8191, 2.70526, 0, 0, 0.976295, 0.216442, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -464.953, -1614.66, 64.8736, 2.61799, 0, 0, 0.965925, 0.258821, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -464.596, -1510.61, 89.6376, 2.47837, 0, 0, 0.945518, 0.325568, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -464.1, -1308.28, 64.7549, 4.46804, 0, 0, -0.788011, 0.615662, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -452.439, -1591.42, 64.9381, 2.72271, 0, 0, 0.978148, 0.207912, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -440.542, -1558.91, 64.9393, 3.15906, 0, 0, -0.999962, 0.00873464, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -434.04, -1425.26, 99.7115, 4.85202, 0, 0, -0.656058, 0.75471, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -432.836, -1412.54, 98.9434, 1.74533, 0, 0, 0.766044, 0.642789, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -425.479, -1321.48, 64.8703, 5.16618, 0, 0, -0.529919, 0.848048, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 0, -404.957, -1336.19, 64.8962, 3.21142, 0, 0, -0.999391, 0.0349061, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 1, 861.138, -294.96, 18.0027, -0.383972, 0, 0, 0.190809, -0.981627, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 1, 870.456, -273.91, 6.66752, 0.139624, 0, 0, 0.0697556, 0.997564, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 1, 916.904, -316.866, 19.5442, 4.50295, 0, 0, -0.777145, 0.629321, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 1, 929.189, -277.671, 18.1227, -2.37365, 0, 0, 0.927184, -0.374607, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 1, 954.485, -282.887, -0.139864, 5.2709, 0, 0, -0.484809, 0.87462, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 1, 957.002, -358.111, 5.45155, 0.314158, 0, 0, 0.156434, 0.987688, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 1, 959.733, -323.349, -0.973847, 1.46608, 0, 0, 0.66913, 0.743145, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 1, 962.366, -351.622, 17.3785, 5.75959, 0, 0, -0.258819, 0.965926, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 1, 966.441, -332.969, 22.2485, 1.76278, 0, 0, 0.771625, 0.636078, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 1, 977.922, -379.317, 8.87022, 4.62512, 0, 0, -0.737277, 0.675591, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 1, 981.934, -369.518, 16.1245, 2.21657, 0, 0, 0.894934, 0.446199, 480, 540, 255, 1),
(@GUID3 := @GUID3 + 1, 179488, 1, 990.512, -375.106, 8.20421, 0.59341, 0, 0, 0.292371, 0.956305, 480, 540, 255, 1);

SET @GUID4 := 171500;
DELETE FROM `gameobject` WHERE `id` = 179489; -- (-2 / +15)
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@GUID4 := @GUID4 + 1, 179489, 1, 3510.62, 1146.26, -9.0148, 1.78023, 0, 0, 0.777145, 0.629321, 480, 540, 255, 1),
(@GUID4 := @GUID4 + 1, 179489, 1, 3521.32, 1236.32, -47.8199, 0.855211, 0, 0, 0.414693, 0.909961, 480, 540, 255, 1),
(@GUID4 := @GUID4 + 1, 179489, 1, 3574.67, 1274.13, -71.0363, 5.00909, 0, 0, -0.594823, 0.803857, 480, 540, 255, 1),
(@GUID4 := @GUID4 + 1, 179489, 1, 3719.96, 1252.63, -58.0381, 1.13446, 0, 0, 0.537299, 0.843392, 480, 540, 255, 1),
(@GUID4 := @GUID4 + 1, 179489, 1, 3784.83, 1106.24, -35.5465, 1.58825, 0, 0, 0.71325, 0.70091, 480, 540, 255, 1),
(@GUID4 := @GUID4 + 1, 179489, 1, 3835.16, 1193.29, -50.3636, 1.62316, 0, 0, 0.725374, 0.688355, 480, 540, 255, 1),
(@GUID4 := @GUID4 + 1, 179489, 1, 3874.98, 1152.07, -34.3129, 3.12412, 0, 0, 0.999962, 0.00873464, 480, 540, 255, 1),
(@GUID4 := @GUID4 + 1, 179489, 1, 3884.94, 1023.95, -19.8452, 2.1293, 0, 0, 0.874619, 0.48481, 480, 540, 255, 1),
(@GUID4 := @GUID4 + 1, 179489, 1, 3924.88, 1199.25, -47.6976, 3.08918, 0, 0, 0.999657, 0.0262016, 480, 540, 255, 1),
(@GUID4 := @GUID4 + 1, 179489, 1, 3994.74, 1327.9, -26.2946, 5.60251, 0, 0, -0.333807, 0.942641, 480, 540, 255, 1),
(@GUID4 := @GUID4 + 1, 179489, 1, 4009.84, 1083.78, -20.1928, 2.40855, 0, 0, 0.93358, 0.358368, 480, 540, 255, 1),
(@GUID4 := @GUID4 + 1, 179489, 1, 4015.19, 1242.51, -34.1204, 2.93214, 0, 0, 0.994521, 0.104536, 480, 540, 255, 1),
(@GUID4 := @GUID4 + 1, 179489, 1, 4028.78, 1178.43, -21.5397, 2.21657, 0, 0, 0.894934, 0.446199, 480, 540, 255, 1),
(@GUID4 := @GUID4 + 1, 179489, 1, 4062.42, 1247.23, -27.3153, 3.83973, 0, 0, -0.939692, 0.34202, 480, 540, 255, 1),
(@GUID4 := @GUID4 + 1, 179489, 1, 4102.22, 1216.48, -22.2307, 3.05433, 0, 0, 0.999048, 0.0436193, 480, 540, 255, 1);

-- Some Items might have a AREA restriction, because all 4 entries share the same loot table
-- https://web.archive.org/web/20080420142023/http://wow.allakhazam.com:80/db/object.html?wobject=420
DELETE FROM `gameobject_loot_template` WHERE `entry` = 16464;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16464, 3770, 0, 1, 1, 1, 0, 'Mutton Chop'),
(16464, 4606, 0, 1, 1, 1, 0, 'Spongy Morel'),
(16464, 1205, 0, 1, 1, 1, 0, 'Melon Juice'),
(16464, 4542, 0, 1, 1, 1, 0, 'Moist Cornbread'),
(16464, 422, 0, 1, 1, 1, 0, 'Dwarven Mild'),
(16464, 4538, 0, 1, 1, 1, 0, 'Snapvine Watermelon'),
(16464, 929, 5, 2, 1, 1, 0, 'Healing Potion'),
(16464, 1705, 0.75, 3, 1, 1, 0, 'Lesser Moonstone'),
(16464, 1206, 0.25, 3, 1, 1, 0, 'Moss Agate');

