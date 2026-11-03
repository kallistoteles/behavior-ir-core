import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData20
import PathRoundDispatchInstructionMatrixData21
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1323 : actualRows1323=WordField.canonicalRows actualModulus 1323 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1323 : actualRows1323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1323=2892 := by core033_kernel_decide
theorem rows1324 : actualRows1324=WordField.canonicalRows actualModulus 1324 (.bxor 1322 1323) := by core033_kernel_decide
theorem stats1324 : actualRows1324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1324=7428 := by core033_kernel_decide
theorem rows1325 : actualRows1325=WordField.canonicalRows actualModulus 1325 (.shr 1115 1) := by core033_kernel_decide
theorem stats1325 : actualRows1325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1325=5052 := by core033_kernel_decide
theorem rows1326 : actualRows1326=WordField.canonicalRows actualModulus 1326 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1326 : actualRows1326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1326=2820 := by core033_kernel_decide
theorem rows1327 : actualRows1327=WordField.canonicalRows actualModulus 1327 (.bnot 1326) := by core033_kernel_decide
theorem stats1327 : actualRows1327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1327=6276 := by core033_kernel_decide
theorem rows1328 : actualRows1328=WordField.canonicalRows actualModulus 1328 (.band 1325 1327) := by core033_kernel_decide
theorem stats1328 : actualRows1328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1328=5124 := by core033_kernel_decide
theorem rows1329 : actualRows1329=WordField.canonicalRows actualModulus 1329 (.shr 1115 1) := by core033_kernel_decide
theorem stats1329 : actualRows1329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1329=5052 := by core033_kernel_decide
theorem rows1330 : actualRows1330=WordField.canonicalRows actualModulus 1330 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1330 : actualRows1330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1330=2820 := by core033_kernel_decide
theorem rows1331 : actualRows1331=WordField.canonicalRows actualModulus 1331 (.bnot 1330) := by core033_kernel_decide
theorem stats1331 : actualRows1331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1331=6276 := by core033_kernel_decide
theorem rows1332 : actualRows1332=WordField.canonicalRows actualModulus 1332 (.bxor 1329 1331) := by core033_kernel_decide
theorem stats1332 : actualRows1332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1332=7428 := by core033_kernel_decide
theorem rows1333 : actualRows1333=WordField.canonicalRows actualModulus 1333 (.shr 1115 1) := by core033_kernel_decide
theorem stats1333 : actualRows1333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1333=5052 := by core033_kernel_decide
theorem rows1334 : actualRows1334=WordField.canonicalRows actualModulus 1334 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1334 : actualRows1334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1334=2820 := by core033_kernel_decide
theorem rows1335 : actualRows1335=WordField.canonicalRows actualModulus 1335 (.bnot 1334) := by core033_kernel_decide
theorem stats1335 : actualRows1335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1335=6276 := by core033_kernel_decide
theorem rows1336 : actualRows1336=WordField.canonicalRows actualModulus 1336 (.badd 1333 1335) := by core033_kernel_decide
theorem stats1336 : actualRows1336.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1336=5388 := by core033_kernel_decide
theorem rows1337 : actualRows1337=WordField.canonicalRows actualModulus 1337 (.bnot 1336) := by core033_kernel_decide
theorem stats1337 : actualRows1337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1337=6276 := by core033_kernel_decide
theorem rows1338 : actualRows1338=WordField.canonicalRows actualModulus 1338 (.band 1332 1337) := by core033_kernel_decide
theorem stats1338 : actualRows1338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1338=5124 := by core033_kernel_decide
theorem rows1339 : actualRows1339=WordField.canonicalRows actualModulus 1339 (.bxor 1328 1338) := by core033_kernel_decide
theorem stats1339 : actualRows1339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1339=7428 := by core033_kernel_decide
theorem rows1340 : actualRows1340=WordField.canonicalRows actualModulus 1340 (.shr 1339 31) := by core033_kernel_decide
theorem stats1340 : actualRows1340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1340=2892 := by core033_kernel_decide
theorem rows1341 : actualRows1341=WordField.canonicalRows actualModulus 1341 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1341 : actualRows1341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1341=2892 := by core033_kernel_decide
theorem rows1342 : actualRows1342=WordField.canonicalRows actualModulus 1342 (.bxor 1340 1341) := by core033_kernel_decide
theorem stats1342 : actualRows1342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1342=7428 := by core033_kernel_decide
theorem rows1343 : actualRows1343=WordField.canonicalRows actualModulus 1343 (.literal (BitVec.ofNat 32 99)) := by core033_kernel_decide
theorem stats1343 : actualRows1343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1343=3108 := by core033_kernel_decide
theorem rows1344 : actualRows1344=WordField.canonicalRows actualModulus 1344 (.literal (BitVec.ofNat 32 111)) := by core033_kernel_decide
theorem stats1344 : actualRows1344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1344=3252 := by core033_kernel_decide
theorem rows1345 : actualRows1345=WordField.canonicalRows actualModulus 1345 (.literal (BitVec.ofNat 32 114)) := by core033_kernel_decide
theorem stats1345 : actualRows1345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1345=3108 := by core033_kernel_decide
theorem rows1346 : actualRows1346=WordField.canonicalRows actualModulus 1346 (.literal (BitVec.ofNat 32 101)) := by core033_kernel_decide
theorem stats1346 : actualRows1346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1346=3108 := by core033_kernel_decide
theorem rows1347 : actualRows1347=WordField.canonicalRows actualModulus 1347 (.literal (BitVec.ofNat 32 48)) := by core033_kernel_decide
theorem stats1347 : actualRows1347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1347=2964 := by core033_kernel_decide
theorem rows1348 : actualRows1348=WordField.canonicalRows actualModulus 1348 (.literal (BitVec.ofNat 32 51)) := by core033_kernel_decide
theorem stats1348 : actualRows1348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1348=3108 := by core033_kernel_decide
theorem rows1349 : actualRows1349=WordField.canonicalRows actualModulus 1349 (.literal (BitVec.ofNat 32 51)) := by core033_kernel_decide
theorem stats1349 : actualRows1349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1349=3108 := by core033_kernel_decide
theorem rows1350 : actualRows1350=WordField.canonicalRows actualModulus 1350 (.literal (BitVec.ofNat 32 46)) := by core033_kernel_decide
theorem stats1350 : actualRows1350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1350=3108 := by core033_kernel_decide
theorem rows1351 : actualRows1351=WordField.canonicalRows actualModulus 1351 (.literal (BitVec.ofNat 32 115)) := by core033_kernel_decide
theorem stats1351 : actualRows1351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1351=3180 := by core033_kernel_decide
theorem rows1352 : actualRows1352=WordField.canonicalRows actualModulus 1352 (.literal (BitVec.ofNat 32 101)) := by core033_kernel_decide
theorem stats1352 : actualRows1352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1352=3108 := by core033_kernel_decide
theorem rows1353 : actualRows1353=WordField.canonicalRows actualModulus 1353 (.literal (BitVec.ofNat 32 109)) := by core033_kernel_decide
theorem stats1353 : actualRows1353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1353=3180 := by core033_kernel_decide
theorem rows1354 : actualRows1354=WordField.canonicalRows actualModulus 1354 (.literal (BitVec.ofNat 32 97)) := by core033_kernel_decide
theorem stats1354 : actualRows1354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1354=3036 := by core033_kernel_decide
theorem rows1355 : actualRows1355=WordField.canonicalRows actualModulus 1355 (.literal (BitVec.ofNat 32 110)) := by core033_kernel_decide
theorem stats1355 : actualRows1355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1355=3180 := by core033_kernel_decide
theorem rows1356 : actualRows1356=WordField.canonicalRows actualModulus 1356 (.literal (BitVec.ofNat 32 116)) := by core033_kernel_decide
theorem stats1356 : actualRows1356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1356=3108 := by core033_kernel_decide
theorem rows1357 : actualRows1357=WordField.canonicalRows actualModulus 1357 (.literal (BitVec.ofNat 32 105)) := by core033_kernel_decide
theorem stats1357 : actualRows1357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1357=3108 := by core033_kernel_decide
theorem rows1358 : actualRows1358=WordField.canonicalRows actualModulus 1358 (.literal (BitVec.ofNat 32 99)) := by core033_kernel_decide
theorem stats1358 : actualRows1358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1358=3108 := by core033_kernel_decide
theorem rows1359 : actualRows1359=WordField.canonicalRows actualModulus 1359 (.literal (BitVec.ofNat 32 46)) := by core033_kernel_decide
theorem stats1359 : actualRows1359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1359=3108 := by core033_kernel_decide
theorem rows1360 : actualRows1360=WordField.canonicalRows actualModulus 1360 (.literal (BitVec.ofNat 32 118)) := by core033_kernel_decide
theorem stats1360 : actualRows1360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1360=3180 := by core033_kernel_decide
theorem rows1361 : actualRows1361=WordField.canonicalRows actualModulus 1361 (.literal (BitVec.ofNat 32 49)) := by core033_kernel_decide
theorem stats1361 : actualRows1361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1361=3036 := by core033_kernel_decide
theorem rows1362 : actualRows1362=WordField.canonicalRows actualModulus 1362 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1362 : actualRows1362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1362=2820 := by core033_kernel_decide
theorem rows1363 : actualRows1363=WordField.canonicalRows actualModulus 1363 (.literal (BitVec.ofNat 32 81)) := by core033_kernel_decide
theorem stats1363 : actualRows1363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1363=3036 := by core033_kernel_decide
theorem rows1364 : actualRows1364=WordField.canonicalRows actualModulus 1364 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1364 : actualRows1364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1364=2820 := by core033_kernel_decide
theorem rows1365 : actualRows1365=WordField.canonicalRows actualModulus 1365 (.shr 107 0) := by core033_kernel_decide
theorem stats1365 : actualRows1365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1365=5124 := by core033_kernel_decide
theorem rows1366 : actualRows1366=WordField.canonicalRows actualModulus 1366 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1366 : actualRows1366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1366=3396 := by core033_kernel_decide
theorem rows1367 : actualRows1367=WordField.canonicalRows actualModulus 1367 (.band 1365 1366) := by core033_kernel_decide
theorem stats1367 : actualRows1367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1367=5124 := by core033_kernel_decide
theorem rows1368 : actualRows1368=WordField.canonicalRows actualModulus 1368 (.shr 563 0) := by core033_kernel_decide
theorem stats1368 : actualRows1368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1368=5124 := by core033_kernel_decide
theorem rows1369 : actualRows1369=WordField.canonicalRows actualModulus 1369 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1369 : actualRows1369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1369=3396 := by core033_kernel_decide
theorem rows1370 : actualRows1370=WordField.canonicalRows actualModulus 1370 (.band 1368 1369) := by core033_kernel_decide
theorem stats1370 : actualRows1370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1370=5124 := by core033_kernel_decide
theorem rows1371 : actualRows1371=WordField.canonicalRows actualModulus 1371 (.shr 563 8) := by core033_kernel_decide
theorem stats1371 : actualRows1371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1371=4548 := by core033_kernel_decide
theorem rows1372 : actualRows1372=WordField.canonicalRows actualModulus 1372 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1372 : actualRows1372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1372=3396 := by core033_kernel_decide
theorem rows1373 : actualRows1373=WordField.canonicalRows actualModulus 1373 (.band 1371 1372) := by core033_kernel_decide
theorem stats1373 : actualRows1373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1373=5124 := by core033_kernel_decide
theorem rows1374 : actualRows1374=WordField.canonicalRows actualModulus 1374 (.shr 885 0) := by core033_kernel_decide
theorem stats1374 : actualRows1374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1374=5124 := by core033_kernel_decide
theorem rows1375 : actualRows1375=WordField.canonicalRows actualModulus 1375 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1375 : actualRows1375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1375=3396 := by core033_kernel_decide
theorem rows1376 : actualRows1376=WordField.canonicalRows actualModulus 1376 (.band 1374 1375) := by core033_kernel_decide
theorem stats1376 : actualRows1376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1376=5124 := by core033_kernel_decide
theorem rows1377 : actualRows1377=WordField.canonicalRows actualModulus 1377 (.shr 885 8) := by core033_kernel_decide
theorem stats1377 : actualRows1377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1377=4548 := by core033_kernel_decide
theorem rows1378 : actualRows1378=WordField.canonicalRows actualModulus 1378 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1378 : actualRows1378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1378=3396 := by core033_kernel_decide
theorem rows1379 : actualRows1379=WordField.canonicalRows actualModulus 1379 (.band 1377 1378) := by core033_kernel_decide
theorem stats1379 : actualRows1379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1379=5124 := by core033_kernel_decide
theorem rows1380 : actualRows1380=WordField.canonicalRows actualModulus 1380 (.shr 885 16) := by core033_kernel_decide
theorem stats1380 : actualRows1380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1380=3972 := by core033_kernel_decide
theorem rows1381 : actualRows1381=WordField.canonicalRows actualModulus 1381 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1381 : actualRows1381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1381=3396 := by core033_kernel_decide
theorem rows1382 : actualRows1382=WordField.canonicalRows actualModulus 1382 (.band 1380 1381) := by core033_kernel_decide
theorem stats1382 : actualRows1382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1382=5124 := by core033_kernel_decide
theorem rows1383 : actualRows1383=WordField.canonicalRows actualModulus 1383 (.shr 885 24) := by core033_kernel_decide
theorem stats1383 : actualRows1383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1383=3396 := by core033_kernel_decide
theorem rows1384 : actualRows1384=WordField.canonicalRows actualModulus 1384 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1384 : actualRows1384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1384=3396 := by core033_kernel_decide
theorem rows1385 : actualRows1385=WordField.canonicalRows actualModulus 1385 (.band 1383 1384) := by core033_kernel_decide
theorem stats1385 : actualRows1385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1385=5124 := by core033_kernel_decide
theorem rows1386 : actualRows1386=WordField.canonicalRows actualModulus 1386 (.shr 895 0) := by core033_kernel_decide
theorem stats1386 : actualRows1386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1386=5124 := by core033_kernel_decide
def partRows20 : List R1CS.Row := actualRows1323++actualRows1324++actualRows1325++actualRows1326++actualRows1327++actualRows1328++actualRows1329++actualRows1330++actualRows1331++actualRows1332++actualRows1333++actualRows1334++actualRows1335++actualRows1336++actualRows1337++actualRows1338++actualRows1339++actualRows1340++actualRows1341++actualRows1342++actualRows1343++actualRows1344++actualRows1345++actualRows1346++actualRows1347++actualRows1348++actualRows1349++actualRows1350++actualRows1351++actualRows1352++actualRows1353++actualRows1354++actualRows1355++actualRows1356++actualRows1357++actualRows1358++actualRows1359++actualRows1360++actualRows1361++actualRows1362++actualRows1363++actualRows1364++actualRows1365++actualRows1366++actualRows1367++actualRows1368++actualRows1369++actualRows1370++actualRows1371++actualRows1372++actualRows1373++actualRows1374++actualRows1375++actualRows1376++actualRows1377++actualRows1378++actualRows1379++actualRows1380++actualRows1381++actualRows1382++actualRows1383++actualRows1384++actualRows1385++actualRows1386
def partOps20 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 1322 1323,.shr 1115 1,.literal (BitVec.ofNat 32 0),.bnot 1326,.band 1325 1327,.shr 1115 1,.literal (BitVec.ofNat 32 0),.bnot 1330,.bxor 1329 1331,.shr 1115 1,.literal (BitVec.ofNat 32 0),.bnot 1334,.badd 1333 1335,.bnot 1336,.band 1332 1337,.bxor 1328 1338,.shr 1339 31,.literal (BitVec.ofNat 32 1),.bxor 1340 1341,.literal (BitVec.ofNat 32 99),.literal (BitVec.ofNat 32 111),.literal (BitVec.ofNat 32 114),.literal (BitVec.ofNat 32 101),.literal (BitVec.ofNat 32 48),.literal (BitVec.ofNat 32 51),.literal (BitVec.ofNat 32 51),.literal (BitVec.ofNat 32 46),.literal (BitVec.ofNat 32 115),.literal (BitVec.ofNat 32 101),.literal (BitVec.ofNat 32 109),.literal (BitVec.ofNat 32 97),.literal (BitVec.ofNat 32 110),.literal (BitVec.ofNat 32 116),.literal (BitVec.ofNat 32 105),.literal (BitVec.ofNat 32 99),.literal (BitVec.ofNat 32 46),.literal (BitVec.ofNat 32 118),.literal (BitVec.ofNat 32 49),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 81),.literal (BitVec.ofNat 32 0),.shr 107 0,.literal (BitVec.ofNat 32 255),.band 1365 1366,.shr 563 0,.literal (BitVec.ofNat 32 255),.band 1368 1369,.shr 563 8,.literal (BitVec.ofNat 32 255),.band 1371 1372,.shr 885 0,.literal (BitVec.ofNat 32 255),.band 1374 1375,.shr 885 8,.literal (BitVec.ofNat 32 255),.band 1377 1378,.shr 885 16,.literal (BitVec.ofNat 32 255),.band 1380 1381,.shr 885 24,.literal (BitVec.ofNat 32 255),.band 1383 1384,.shr 895 0]
theorem partExact20 : partRows20=WordField.rows actualModulus 1323 partOps20 := by
  simp only [partRows20,partOps20,WordField.rows,rows1323,rows1324,rows1325,rows1326,rows1327,rows1328,rows1329,rows1330,rows1331,rows1332,rows1333,rows1334,rows1335,rows1336,rows1337,rows1338,rows1339,rows1340,rows1341,rows1342,rows1343,rows1344,rows1345,rows1346,rows1347,rows1348,rows1349,rows1350,rows1351,rows1352,rows1353,rows1354,rows1355,rows1356,rows1357,rows1358,rows1359,rows1360,rows1361,rows1362,rows1363,rows1364,rows1365,rows1366,rows1367,rows1368,rows1369,rows1370,rows1371,rows1372,rows1373,rows1374,rows1375,rows1376,rows1377,rows1378,rows1379,rows1380,rows1381,rows1382,rows1383,rows1384,rows1385,rows1386,List.append_assoc,List.append_nil]
theorem partLength20 : partOps20.length=64 := by decide
theorem partStats20 : partRows20.length=2177 ∧ MatrixRowBlocks.rowsWeight partRows20=267216 := by
  simp only [partRows20,List.length_append,MatrixRowBlocks.rows_weight_append,stats1323.1,stats1323.2,stats1324.1,stats1324.2,stats1325.1,stats1325.2,stats1326.1,stats1326.2,stats1327.1,stats1327.2,stats1328.1,stats1328.2,stats1329.1,stats1329.2,stats1330.1,stats1330.2,stats1331.1,stats1331.2,stats1332.1,stats1332.2,stats1333.1,stats1333.2,stats1334.1,stats1334.2,stats1335.1,stats1335.2,stats1336.1,stats1336.2,stats1337.1,stats1337.2,stats1338.1,stats1338.2,stats1339.1,stats1339.2,stats1340.1,stats1340.2,stats1341.1,stats1341.2,stats1342.1,stats1342.2,stats1343.1,stats1343.2,stats1344.1,stats1344.2,stats1345.1,stats1345.2,stats1346.1,stats1346.2,stats1347.1,stats1347.2,stats1348.1,stats1348.2,stats1349.1,stats1349.2,stats1350.1,stats1350.2,stats1351.1,stats1351.2,stats1352.1,stats1352.2,stats1353.1,stats1353.2,stats1354.1,stats1354.2,stats1355.1,stats1355.2,stats1356.1,stats1356.2,stats1357.1,stats1357.2,stats1358.1,stats1358.2,stats1359.1,stats1359.2,stats1360.1,stats1360.2,stats1361.1,stats1361.2,stats1362.1,stats1362.2,stats1363.1,stats1363.2,stats1364.1,stats1364.2,stats1365.1,stats1365.2,stats1366.1,stats1366.2,stats1367.1,stats1367.2,stats1368.1,stats1368.2,stats1369.1,stats1369.2,stats1370.1,stats1370.2,stats1371.1,stats1371.2,stats1372.1,stats1372.2,stats1373.1,stats1373.2,stats1374.1,stats1374.2,stats1375.1,stats1375.2,stats1376.1,stats1376.2,stats1377.1,stats1377.2,stats1378.1,stats1378.2,stats1379.1,stats1379.2,stats1380.1,stats1380.2,stats1381.1,stats1381.2,stats1382.1,stats1382.2,stats1383.1,stats1383.2,stats1384.1,stats1384.2,stats1385.1,stats1385.2,stats1386.1,stats1386.2]
  decide
end PathRoundDispatchCheckedRows
