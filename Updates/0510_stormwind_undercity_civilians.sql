-- Make Stormwind & Undercity Inhabitants Civilians - Source: classic-db ACID
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|65536 WHERE `entry` IN (223,1498,2050,2055,2227,2308,2458,2459,2492,2799,2802,2934,4486,4549,4550,4552,4553,4554,4555,4556,4557,4558,4559,4560,4561,4562,4563,4564,4565,4566,4567,4568,4569,4570,4571,4572,4573,4574,4575,4576,4577,4578,4580,4581,4582,4584,4585,4586,4587,4588,4589,4590,4591,4592,4593,4594,4595,4596,4597,4598,4599,4600,4601,4602,4603,4604,4605,4606,4607,4609,4610,4611,4612,4613,4614,4615,4616,4617,4775,5052,5190,5204,5651,5662,5663,5664,5665,5666,5668,5669,5670,5675,5693,5696,5698,5699,5700,5701,5702,5703,5704,5705,5706,5707,
-- 5731, -- Apothecary Vallia seemingly has "civilian" = 1
5732,5733,5734,5744,5747,5753,5754,5819,5820,5821,6293,6395,6411,6467,6522,6566,7087,7297,7683,7825,8390,8403,8672,8721,10053,10136,10781,10879,11031,11044,11048,11049,11067,11750,11870,13429,14402,14403,14404,14729,15007,15675,15676,15682,15683,15684,15686,277,279,297,331,332,338,340,376,461,466,482,483,656,914,928,957,1141,1212,1257,1275,1285,1286,1287,1289,1291,1292,1294,1295,1297,1298,1299,1300,1301,1302,1303,1304,1305,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1323,1324,1325,1326,1327,1328,1333,1339,1341,1346,1347,1348,1349,1350,1351,1395,1402,1405,1413,1414,1415,1416,1419,1427,1428,1429,1431,1432,1433,1435,1439,1440,1444,1472,1477,1478,1646,1721,1747,1750,1751,1752,2198,2285,2327,2330,2331,2439,2455,2456,2457,2485,2504,2795,2879,3513,3518,3520,3626,3627,3628,3629,4078,4959,4960,4974,4981,4984,5081,5193,5384,5386,5413,5479,5480,5482,5483,5484,5489,5491,5492,5493,5494,5495,5496,5497,5498,5499,5500,5502,5503,5504,5505,5506,5509,5510,5511,5512,5513,5514,5515,5516,5517,5518,5519,5520,5564,5565,5566,5567,5694,6089,6122,6171,6173,6174,6267,6579,6946,7207,7232,7295,7766,7798,7917,8118,8383,8670,8719,9584,9977,10782,11026,11068,11069,11096,11397,11827,11828,11867,11916,12336,12480,12481,12778,12779,12780,12781,12783,12784,12785,12786,12787,14423,14438,14439,14450,14481,14497,14722,14981,15008,15659,15708,15766,16002,16005,16105,16106,17804);

