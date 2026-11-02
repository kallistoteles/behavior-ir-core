import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData20
import ActualMatrixData21
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1304 : actualRows1304=WordField.canonicalRows actualModulus 1304 (.band 1303 1241) := by core033_kernel_decide
theorem stats1304 : actualRows1304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1304=5124 := by core033_kernel_decide
theorem rows1305 : actualRows1305=WordField.canonicalRows actualModulus 1305 (.bxor 1302 1304) := by core033_kernel_decide
theorem stats1305 : actualRows1305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1305=7428 := by core033_kernel_decide
theorem rows1306 : actualRows1306=WordField.canonicalRows actualModulus 1306 (.badd 1301 1305) := by core033_kernel_decide
theorem stats1306 : actualRows1306.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1306=5388 := by core033_kernel_decide
theorem rows1307 : actualRows1307=WordField.canonicalRows actualModulus 1307 (.literal (BitVec.ofNat 32 2554220882)) := by core033_kernel_decide
theorem stats1307 : actualRows1307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1307=3828 := by core033_kernel_decide
theorem rows1308 : actualRows1308=WordField.canonicalRows actualModulus 1308 (.badd 1306 1307) := by core033_kernel_decide
theorem stats1308 : actualRows1308.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1308=5388 := by core033_kernel_decide
theorem rows1309 : actualRows1309=WordField.canonicalRows actualModulus 1309 (.badd 1308 140) := by core033_kernel_decide
theorem stats1309 : actualRows1309.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1309=5388 := by core033_kernel_decide
theorem rows1310 : actualRows1310=WordField.canonicalRows actualModulus 1310 (.rotr 1294 2) := by core033_kernel_decide
theorem stats1310 : actualRows1310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1310=5124 := by core033_kernel_decide
theorem rows1311 : actualRows1311=WordField.canonicalRows actualModulus 1311 (.rotr 1294 13) := by core033_kernel_decide
theorem stats1311 : actualRows1311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1311=5124 := by core033_kernel_decide
theorem rows1312 : actualRows1312=WordField.canonicalRows actualModulus 1312 (.bxor 1310 1311) := by core033_kernel_decide
theorem stats1312 : actualRows1312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1312=7428 := by core033_kernel_decide
theorem rows1313 : actualRows1313=WordField.canonicalRows actualModulus 1313 (.rotr 1294 22) := by core033_kernel_decide
theorem stats1313 : actualRows1313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1313=5124 := by core033_kernel_decide
theorem rows1314 : actualRows1314=WordField.canonicalRows actualModulus 1314 (.bxor 1312 1313) := by core033_kernel_decide
theorem stats1314 : actualRows1314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1314=7428 := by core033_kernel_decide
theorem rows1315 : actualRows1315=WordField.canonicalRows actualModulus 1315 (.band 1294 1267) := by core033_kernel_decide
theorem stats1315 : actualRows1315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1315=5124 := by core033_kernel_decide
theorem rows1316 : actualRows1316=WordField.canonicalRows actualModulus 1316 (.band 1294 1240) := by core033_kernel_decide
theorem stats1316 : actualRows1316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1316=5124 := by core033_kernel_decide
theorem rows1317 : actualRows1317=WordField.canonicalRows actualModulus 1317 (.bxor 1315 1316) := by core033_kernel_decide
theorem stats1317 : actualRows1317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1317=7428 := by core033_kernel_decide
theorem rows1318 : actualRows1318=WordField.canonicalRows actualModulus 1318 (.band 1267 1240) := by core033_kernel_decide
theorem stats1318 : actualRows1318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1318=5124 := by core033_kernel_decide
theorem rows1319 : actualRows1319=WordField.canonicalRows actualModulus 1319 (.bxor 1317 1318) := by core033_kernel_decide
theorem stats1319 : actualRows1319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1319=7428 := by core033_kernel_decide
theorem rows1320 : actualRows1320=WordField.canonicalRows actualModulus 1320 (.badd 1314 1319) := by core033_kernel_decide
theorem stats1320 : actualRows1320.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1320=5388 := by core033_kernel_decide
theorem rows1321 : actualRows1321=WordField.canonicalRows actualModulus 1321 (.badd 1309 1320) := by core033_kernel_decide
theorem stats1321 : actualRows1321.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1321=5388 := by core033_kernel_decide
theorem rows1322 : actualRows1322=WordField.canonicalRows actualModulus 1322 (.badd 1213 1309) := by core033_kernel_decide
theorem stats1322 : actualRows1322.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1322=5388 := by core033_kernel_decide
theorem rows1323 : actualRows1323=WordField.canonicalRows actualModulus 1323 (.rotr 1322 6) := by core033_kernel_decide
theorem stats1323 : actualRows1323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1323=5124 := by core033_kernel_decide
theorem rows1324 : actualRows1324=WordField.canonicalRows actualModulus 1324 (.rotr 1322 11) := by core033_kernel_decide
theorem stats1324 : actualRows1324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1324=5124 := by core033_kernel_decide
theorem rows1325 : actualRows1325=WordField.canonicalRows actualModulus 1325 (.bxor 1323 1324) := by core033_kernel_decide
theorem stats1325 : actualRows1325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1325=7428 := by core033_kernel_decide
theorem rows1326 : actualRows1326=WordField.canonicalRows actualModulus 1326 (.rotr 1322 25) := by core033_kernel_decide
theorem stats1326 : actualRows1326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1326=5124 := by core033_kernel_decide
theorem rows1327 : actualRows1327=WordField.canonicalRows actualModulus 1327 (.bxor 1325 1326) := by core033_kernel_decide
theorem stats1327 : actualRows1327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1327=7428 := by core033_kernel_decide
theorem rows1328 : actualRows1328=WordField.canonicalRows actualModulus 1328 (.badd 1241 1327) := by core033_kernel_decide
theorem stats1328 : actualRows1328.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1328=5388 := by core033_kernel_decide
theorem rows1329 : actualRows1329=WordField.canonicalRows actualModulus 1329 (.band 1322 1295) := by core033_kernel_decide
theorem stats1329 : actualRows1329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1329=5124 := by core033_kernel_decide
theorem rows1330 : actualRows1330=WordField.canonicalRows actualModulus 1330 (.bnot 1322) := by core033_kernel_decide
theorem stats1330 : actualRows1330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1330=6276 := by core033_kernel_decide
theorem rows1331 : actualRows1331=WordField.canonicalRows actualModulus 1331 (.band 1330 1268) := by core033_kernel_decide
theorem stats1331 : actualRows1331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1331=5124 := by core033_kernel_decide
theorem rows1332 : actualRows1332=WordField.canonicalRows actualModulus 1332 (.bxor 1329 1331) := by core033_kernel_decide
theorem stats1332 : actualRows1332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1332=7428 := by core033_kernel_decide
theorem rows1333 : actualRows1333=WordField.canonicalRows actualModulus 1333 (.badd 1328 1332) := by core033_kernel_decide
theorem stats1333 : actualRows1333.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1333=5388 := by core033_kernel_decide
theorem rows1334 : actualRows1334=WordField.canonicalRows actualModulus 1334 (.literal (BitVec.ofNat 32 2821834349)) := by core033_kernel_decide
theorem stats1334 : actualRows1334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1334=3900 := by core033_kernel_decide
theorem rows1335 : actualRows1335=WordField.canonicalRows actualModulus 1335 (.badd 1333 1334) := by core033_kernel_decide
theorem stats1335 : actualRows1335.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1335=5388 := by core033_kernel_decide
theorem rows1336 : actualRows1336=WordField.canonicalRows actualModulus 1336 (.badd 1335 153) := by core033_kernel_decide
theorem stats1336 : actualRows1336.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1336=5388 := by core033_kernel_decide
theorem rows1337 : actualRows1337=WordField.canonicalRows actualModulus 1337 (.rotr 1321 2) := by core033_kernel_decide
theorem stats1337 : actualRows1337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1337=5124 := by core033_kernel_decide
theorem rows1338 : actualRows1338=WordField.canonicalRows actualModulus 1338 (.rotr 1321 13) := by core033_kernel_decide
theorem stats1338 : actualRows1338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1338=5124 := by core033_kernel_decide
theorem rows1339 : actualRows1339=WordField.canonicalRows actualModulus 1339 (.bxor 1337 1338) := by core033_kernel_decide
theorem stats1339 : actualRows1339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1339=7428 := by core033_kernel_decide
theorem rows1340 : actualRows1340=WordField.canonicalRows actualModulus 1340 (.rotr 1321 22) := by core033_kernel_decide
theorem stats1340 : actualRows1340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1340=5124 := by core033_kernel_decide
theorem rows1341 : actualRows1341=WordField.canonicalRows actualModulus 1341 (.bxor 1339 1340) := by core033_kernel_decide
theorem stats1341 : actualRows1341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1341=7428 := by core033_kernel_decide
theorem rows1342 : actualRows1342=WordField.canonicalRows actualModulus 1342 (.band 1321 1294) := by core033_kernel_decide
theorem stats1342 : actualRows1342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1342=5124 := by core033_kernel_decide
theorem rows1343 : actualRows1343=WordField.canonicalRows actualModulus 1343 (.band 1321 1267) := by core033_kernel_decide
theorem stats1343 : actualRows1343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1343=5124 := by core033_kernel_decide
theorem rows1344 : actualRows1344=WordField.canonicalRows actualModulus 1344 (.bxor 1342 1343) := by core033_kernel_decide
theorem stats1344 : actualRows1344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1344=7428 := by core033_kernel_decide
theorem rows1345 : actualRows1345=WordField.canonicalRows actualModulus 1345 (.band 1294 1267) := by core033_kernel_decide
theorem stats1345 : actualRows1345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1345=5124 := by core033_kernel_decide
theorem rows1346 : actualRows1346=WordField.canonicalRows actualModulus 1346 (.bxor 1344 1345) := by core033_kernel_decide
theorem stats1346 : actualRows1346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1346=7428 := by core033_kernel_decide
theorem rows1347 : actualRows1347=WordField.canonicalRows actualModulus 1347 (.badd 1341 1346) := by core033_kernel_decide
theorem stats1347 : actualRows1347.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1347=5388 := by core033_kernel_decide
theorem rows1348 : actualRows1348=WordField.canonicalRows actualModulus 1348 (.badd 1336 1347) := by core033_kernel_decide
theorem stats1348 : actualRows1348.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1348=5388 := by core033_kernel_decide
theorem rows1349 : actualRows1349=WordField.canonicalRows actualModulus 1349 (.badd 1240 1336) := by core033_kernel_decide
theorem stats1349 : actualRows1349.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1349=5388 := by core033_kernel_decide
theorem rows1350 : actualRows1350=WordField.canonicalRows actualModulus 1350 (.rotr 1349 6) := by core033_kernel_decide
theorem stats1350 : actualRows1350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1350=5124 := by core033_kernel_decide
theorem rows1351 : actualRows1351=WordField.canonicalRows actualModulus 1351 (.rotr 1349 11) := by core033_kernel_decide
theorem stats1351 : actualRows1351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1351=5124 := by core033_kernel_decide
theorem rows1352 : actualRows1352=WordField.canonicalRows actualModulus 1352 (.bxor 1350 1351) := by core033_kernel_decide
theorem stats1352 : actualRows1352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1352=7428 := by core033_kernel_decide
theorem rows1353 : actualRows1353=WordField.canonicalRows actualModulus 1353 (.rotr 1349 25) := by core033_kernel_decide
theorem stats1353 : actualRows1353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1353=5124 := by core033_kernel_decide
theorem rows1354 : actualRows1354=WordField.canonicalRows actualModulus 1354 (.bxor 1352 1353) := by core033_kernel_decide
theorem stats1354 : actualRows1354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1354=7428 := by core033_kernel_decide
theorem rows1355 : actualRows1355=WordField.canonicalRows actualModulus 1355 (.badd 1268 1354) := by core033_kernel_decide
theorem stats1355 : actualRows1355.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1355=5388 := by core033_kernel_decide
theorem rows1356 : actualRows1356=WordField.canonicalRows actualModulus 1356 (.band 1349 1322) := by core033_kernel_decide
theorem stats1356 : actualRows1356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1356=5124 := by core033_kernel_decide
theorem rows1357 : actualRows1357=WordField.canonicalRows actualModulus 1357 (.bnot 1349) := by core033_kernel_decide
theorem stats1357 : actualRows1357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1357=6276 := by core033_kernel_decide
theorem rows1358 : actualRows1358=WordField.canonicalRows actualModulus 1358 (.band 1357 1295) := by core033_kernel_decide
theorem stats1358 : actualRows1358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1358=5124 := by core033_kernel_decide
theorem rows1359 : actualRows1359=WordField.canonicalRows actualModulus 1359 (.bxor 1356 1358) := by core033_kernel_decide
theorem stats1359 : actualRows1359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1359=7428 := by core033_kernel_decide
theorem rows1360 : actualRows1360=WordField.canonicalRows actualModulus 1360 (.badd 1355 1359) := by core033_kernel_decide
theorem stats1360 : actualRows1360.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1360=5388 := by core033_kernel_decide
theorem rows1361 : actualRows1361=WordField.canonicalRows actualModulus 1361 (.literal (BitVec.ofNat 32 2952996808)) := by core033_kernel_decide
theorem stats1361 : actualRows1361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1361=3684 := by core033_kernel_decide
theorem rows1362 : actualRows1362=WordField.canonicalRows actualModulus 1362 (.badd 1360 1361) := by core033_kernel_decide
theorem stats1362 : actualRows1362.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1362=5388 := by core033_kernel_decide
theorem rows1363 : actualRows1363=WordField.canonicalRows actualModulus 1363 (.badd 1362 166) := by core033_kernel_decide
theorem stats1363 : actualRows1363.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1363=5388 := by core033_kernel_decide
theorem rows1364 : actualRows1364=WordField.canonicalRows actualModulus 1364 (.rotr 1348 2) := by core033_kernel_decide
theorem stats1364 : actualRows1364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1364=5124 := by core033_kernel_decide
theorem rows1365 : actualRows1365=WordField.canonicalRows actualModulus 1365 (.rotr 1348 13) := by core033_kernel_decide
theorem stats1365 : actualRows1365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1365=5124 := by core033_kernel_decide
theorem rows1366 : actualRows1366=WordField.canonicalRows actualModulus 1366 (.bxor 1364 1365) := by core033_kernel_decide
theorem stats1366 : actualRows1366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1366=7428 := by core033_kernel_decide
theorem rows1367 : actualRows1367=WordField.canonicalRows actualModulus 1367 (.rotr 1348 22) := by core033_kernel_decide
theorem stats1367 : actualRows1367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1367=5124 := by core033_kernel_decide
def partRows20 : List R1CS.Row := actualRows1304++actualRows1305++actualRows1306++actualRows1307++actualRows1308++actualRows1309++actualRows1310++actualRows1311++actualRows1312++actualRows1313++actualRows1314++actualRows1315++actualRows1316++actualRows1317++actualRows1318++actualRows1319++actualRows1320++actualRows1321++actualRows1322++actualRows1323++actualRows1324++actualRows1325++actualRows1326++actualRows1327++actualRows1328++actualRows1329++actualRows1330++actualRows1331++actualRows1332++actualRows1333++actualRows1334++actualRows1335++actualRows1336++actualRows1337++actualRows1338++actualRows1339++actualRows1340++actualRows1341++actualRows1342++actualRows1343++actualRows1344++actualRows1345++actualRows1346++actualRows1347++actualRows1348++actualRows1349++actualRows1350++actualRows1351++actualRows1352++actualRows1353++actualRows1354++actualRows1355++actualRows1356++actualRows1357++actualRows1358++actualRows1359++actualRows1360++actualRows1361++actualRows1362++actualRows1363++actualRows1364++actualRows1365++actualRows1366++actualRows1367
def partOps20 : List WordIR.Op := [.band 1303 1241,.bxor 1302 1304,.badd 1301 1305,.literal (BitVec.ofNat 32 2554220882),.badd 1306 1307,.badd 1308 140,.rotr 1294 2,.rotr 1294 13,.bxor 1310 1311,.rotr 1294 22,.bxor 1312 1313,.band 1294 1267,.band 1294 1240,.bxor 1315 1316,.band 1267 1240,.bxor 1317 1318,.badd 1314 1319,.badd 1309 1320,.badd 1213 1309,.rotr 1322 6,.rotr 1322 11,.bxor 1323 1324,.rotr 1322 25,.bxor 1325 1326,.badd 1241 1327,.band 1322 1295,.bnot 1322,.band 1330 1268,.bxor 1329 1331,.badd 1328 1332,.literal (BitVec.ofNat 32 2821834349),.badd 1333 1334,.badd 1335 153,.rotr 1321 2,.rotr 1321 13,.bxor 1337 1338,.rotr 1321 22,.bxor 1339 1340,.band 1321 1294,.band 1321 1267,.bxor 1342 1343,.band 1294 1267,.bxor 1344 1345,.badd 1341 1346,.badd 1336 1347,.badd 1240 1336,.rotr 1349 6,.rotr 1349 11,.bxor 1350 1351,.rotr 1349 25,.bxor 1352 1353,.badd 1268 1354,.band 1349 1322,.bnot 1349,.band 1357 1295,.bxor 1356 1358,.badd 1355 1359,.literal (BitVec.ofNat 32 2952996808),.badd 1360 1361,.badd 1362 166,.rotr 1348 2,.rotr 1348 13,.bxor 1364 1365,.rotr 1348 22]
theorem partRowsExact20 : partRows20=WordField.rows actualModulus 1304 partOps20 := by
  simp only [partRows20,partOps20,WordField.rows,rows1304,rows1305,rows1306,rows1307,rows1308,rows1309,rows1310,rows1311,rows1312,rows1313,rows1314,rows1315,rows1316,rows1317,rows1318,rows1319,rows1320,rows1321,rows1322,rows1323,rows1324,rows1325,rows1326,rows1327,rows1328,rows1329,rows1330,rows1331,rows1332,rows1333,rows1334,rows1335,rows1336,rows1337,rows1338,rows1339,rows1340,rows1341,rows1342,rows1343,rows1344,rows1345,rows1346,rows1347,rows1348,rows1349,rows1350,rows1351,rows1352,rows1353,rows1354,rows1355,rows1356,rows1357,rows1358,rows1359,rows1360,rows1361,rows1362,rows1363,rows1364,rows1365,rows1366,rows1367,List.append_assoc,List.append_nil]
theorem partOpsLength20 : partOps20.length=64 := by decide
theorem partStats20 : partRows20.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows20=367632 := by
  simp only [partRows20,List.length_append,MatrixRowBlocks.rows_weight_append,stats1304.1,stats1304.2,stats1305.1,stats1305.2,stats1306.1,stats1306.2,stats1307.1,stats1307.2,stats1308.1,stats1308.2,stats1309.1,stats1309.2,stats1310.1,stats1310.2,stats1311.1,stats1311.2,stats1312.1,stats1312.2,stats1313.1,stats1313.2,stats1314.1,stats1314.2,stats1315.1,stats1315.2,stats1316.1,stats1316.2,stats1317.1,stats1317.2,stats1318.1,stats1318.2,stats1319.1,stats1319.2,stats1320.1,stats1320.2,stats1321.1,stats1321.2,stats1322.1,stats1322.2,stats1323.1,stats1323.2,stats1324.1,stats1324.2,stats1325.1,stats1325.2,stats1326.1,stats1326.2,stats1327.1,stats1327.2,stats1328.1,stats1328.2,stats1329.1,stats1329.2,stats1330.1,stats1330.2,stats1331.1,stats1331.2,stats1332.1,stats1332.2,stats1333.1,stats1333.2,stats1334.1,stats1334.2,stats1335.1,stats1335.2,stats1336.1,stats1336.2,stats1337.1,stats1337.2,stats1338.1,stats1338.2,stats1339.1,stats1339.2,stats1340.1,stats1340.2,stats1341.1,stats1341.2,stats1342.1,stats1342.2,stats1343.1,stats1343.2,stats1344.1,stats1344.2,stats1345.1,stats1345.2,stats1346.1,stats1346.2,stats1347.1,stats1347.2,stats1348.1,stats1348.2,stats1349.1,stats1349.2,stats1350.1,stats1350.2,stats1351.1,stats1351.2,stats1352.1,stats1352.2,stats1353.1,stats1353.2,stats1354.1,stats1354.2,stats1355.1,stats1355.2,stats1356.1,stats1356.2,stats1357.1,stats1357.2,stats1358.1,stats1358.2,stats1359.1,stats1359.2,stats1360.1,stats1360.2,stats1361.1,stats1361.2,stats1362.1,stats1362.2,stats1363.1,stats1363.2,stats1364.1,stats1364.2,stats1365.1,stats1365.2,stats1366.1,stats1366.2,stats1367.1,stats1367.2]
  decide
end ActualSHAMatrixRows
