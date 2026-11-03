import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData20
import FrameHashControllerInstructionMatrixData21
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1323 : actualRows1323=WordField.canonicalRows actualModulus 1323 (.band 569 1322) := by core033_kernel_decide
theorem stats1323 : actualRows1323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1323=5124 := by core033_kernel_decide
theorem rows1324 : actualRows1324=WordField.canonicalRows actualModulus 1324 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1324 : actualRows1324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1324=2892 := by core033_kernel_decide
theorem rows1325 : actualRows1325=WordField.canonicalRows actualModulus 1325 (.bnot 1324) := by core033_kernel_decide
theorem stats1325 : actualRows1325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1325=6276 := by core033_kernel_decide
theorem rows1326 : actualRows1326=WordField.canonicalRows actualModulus 1326 (.bxor 569 1325) := by core033_kernel_decide
theorem stats1326 : actualRows1326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1326=7428 := by core033_kernel_decide
theorem rows1327 : actualRows1327=WordField.canonicalRows actualModulus 1327 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1327 : actualRows1327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1327=2892 := by core033_kernel_decide
theorem rows1328 : actualRows1328=WordField.canonicalRows actualModulus 1328 (.bnot 1327) := by core033_kernel_decide
theorem stats1328 : actualRows1328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1328=6276 := by core033_kernel_decide
theorem rows1329 : actualRows1329=WordField.canonicalRows actualModulus 1329 (.badd 569 1328) := by core033_kernel_decide
theorem stats1329 : actualRows1329.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1329=5388 := by core033_kernel_decide
theorem rows1330 : actualRows1330=WordField.canonicalRows actualModulus 1330 (.bnot 1329) := by core033_kernel_decide
theorem stats1330 : actualRows1330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1330=6276 := by core033_kernel_decide
theorem rows1331 : actualRows1331=WordField.canonicalRows actualModulus 1331 (.band 1326 1330) := by core033_kernel_decide
theorem stats1331 : actualRows1331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1331=5124 := by core033_kernel_decide
theorem rows1332 : actualRows1332=WordField.canonicalRows actualModulus 1332 (.bxor 1323 1331) := by core033_kernel_decide
theorem stats1332 : actualRows1332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1332=7428 := by core033_kernel_decide
theorem rows1333 : actualRows1333=WordField.canonicalRows actualModulus 1333 (.shr 1332 31) := by core033_kernel_decide
theorem stats1333 : actualRows1333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1333=2892 := by core033_kernel_decide
theorem rows1334 : actualRows1334=WordField.canonicalRows actualModulus 1334 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1334 : actualRows1334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1334=2892 := by core033_kernel_decide
theorem rows1335 : actualRows1335=WordField.canonicalRows actualModulus 1335 (.bxor 1333 1334) := by core033_kernel_decide
theorem stats1335 : actualRows1335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1335=7428 := by core033_kernel_decide
theorem rows1336 : actualRows1336=WordField.canonicalRows actualModulus 1336 (.band 1320 1335) := by core033_kernel_decide
theorem stats1336 : actualRows1336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1336=5124 := by core033_kernel_decide
theorem rows1337 : actualRows1337=WordField.canonicalRows actualModulus 1337 (.band 1305 1336) := by core033_kernel_decide
theorem stats1337 : actualRows1337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1337=5124 := by core033_kernel_decide
theorem rows1338 : actualRows1338=WordField.canonicalRows actualModulus 1338 (.badd 459 579) := by core033_kernel_decide
theorem stats1338 : actualRows1338.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1338=5388 := by core033_kernel_decide
theorem rows1339 : actualRows1339=WordField.canonicalRows actualModulus 1339 (.band 449 569) := by core033_kernel_decide
theorem stats1339 : actualRows1339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1339=5124 := by core033_kernel_decide
theorem rows1340 : actualRows1340=WordField.canonicalRows actualModulus 1340 (.bxor 449 569) := by core033_kernel_decide
theorem stats1340 : actualRows1340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1340=7428 := by core033_kernel_decide
theorem rows1341 : actualRows1341=WordField.canonicalRows actualModulus 1341 (.badd 449 569) := by core033_kernel_decide
theorem stats1341 : actualRows1341.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1341=5388 := by core033_kernel_decide
theorem rows1342 : actualRows1342=WordField.canonicalRows actualModulus 1342 (.bnot 1341) := by core033_kernel_decide
theorem stats1342 : actualRows1342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1342=6276 := by core033_kernel_decide
theorem rows1343 : actualRows1343=WordField.canonicalRows actualModulus 1343 (.band 1340 1342) := by core033_kernel_decide
theorem stats1343 : actualRows1343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1343=5124 := by core033_kernel_decide
theorem rows1344 : actualRows1344=WordField.canonicalRows actualModulus 1344 (.bxor 1339 1343) := by core033_kernel_decide
theorem stats1344 : actualRows1344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1344=7428 := by core033_kernel_decide
theorem rows1345 : actualRows1345=WordField.canonicalRows actualModulus 1345 (.shr 1344 31) := by core033_kernel_decide
theorem stats1345 : actualRows1345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1345=2892 := by core033_kernel_decide
theorem rows1346 : actualRows1346=WordField.canonicalRows actualModulus 1346 (.badd 1338 1345) := by core033_kernel_decide
theorem stats1346 : actualRows1346.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1346=5388 := by core033_kernel_decide
theorem rows1347 : actualRows1347=WordField.canonicalRows actualModulus 1347 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1347 : actualRows1347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1347=2820 := by core033_kernel_decide
theorem rows1348 : actualRows1348=WordField.canonicalRows actualModulus 1348 (.bnot 1347) := by core033_kernel_decide
theorem stats1348 : actualRows1348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1348=6276 := by core033_kernel_decide
theorem rows1349 : actualRows1349=WordField.canonicalRows actualModulus 1349 (.band 1346 1348) := by core033_kernel_decide
theorem stats1349 : actualRows1349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1349=5124 := by core033_kernel_decide
theorem rows1350 : actualRows1350=WordField.canonicalRows actualModulus 1350 (.badd 459 579) := by core033_kernel_decide
theorem stats1350 : actualRows1350.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1350=5388 := by core033_kernel_decide
theorem rows1351 : actualRows1351=WordField.canonicalRows actualModulus 1351 (.band 449 569) := by core033_kernel_decide
theorem stats1351 : actualRows1351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1351=5124 := by core033_kernel_decide
theorem rows1352 : actualRows1352=WordField.canonicalRows actualModulus 1352 (.bxor 449 569) := by core033_kernel_decide
theorem stats1352 : actualRows1352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1352=7428 := by core033_kernel_decide
theorem rows1353 : actualRows1353=WordField.canonicalRows actualModulus 1353 (.badd 449 569) := by core033_kernel_decide
theorem stats1353 : actualRows1353.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1353=5388 := by core033_kernel_decide
theorem rows1354 : actualRows1354=WordField.canonicalRows actualModulus 1354 (.bnot 1353) := by core033_kernel_decide
theorem stats1354 : actualRows1354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1354=6276 := by core033_kernel_decide
theorem rows1355 : actualRows1355=WordField.canonicalRows actualModulus 1355 (.band 1352 1354) := by core033_kernel_decide
theorem stats1355 : actualRows1355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1355=5124 := by core033_kernel_decide
theorem rows1356 : actualRows1356=WordField.canonicalRows actualModulus 1356 (.bxor 1351 1355) := by core033_kernel_decide
theorem stats1356 : actualRows1356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1356=7428 := by core033_kernel_decide
theorem rows1357 : actualRows1357=WordField.canonicalRows actualModulus 1357 (.shr 1356 31) := by core033_kernel_decide
theorem stats1357 : actualRows1357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1357=2892 := by core033_kernel_decide
theorem rows1358 : actualRows1358=WordField.canonicalRows actualModulus 1358 (.badd 1350 1357) := by core033_kernel_decide
theorem stats1358 : actualRows1358.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1358=5388 := by core033_kernel_decide
theorem rows1359 : actualRows1359=WordField.canonicalRows actualModulus 1359 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1359 : actualRows1359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1359=2820 := by core033_kernel_decide
theorem rows1360 : actualRows1360=WordField.canonicalRows actualModulus 1360 (.bnot 1359) := by core033_kernel_decide
theorem stats1360 : actualRows1360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1360=6276 := by core033_kernel_decide
theorem rows1361 : actualRows1361=WordField.canonicalRows actualModulus 1361 (.bxor 1358 1360) := by core033_kernel_decide
theorem stats1361 : actualRows1361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1361=7428 := by core033_kernel_decide
theorem rows1362 : actualRows1362=WordField.canonicalRows actualModulus 1362 (.badd 459 579) := by core033_kernel_decide
theorem stats1362 : actualRows1362.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1362=5388 := by core033_kernel_decide
theorem rows1363 : actualRows1363=WordField.canonicalRows actualModulus 1363 (.band 449 569) := by core033_kernel_decide
theorem stats1363 : actualRows1363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1363=5124 := by core033_kernel_decide
theorem rows1364 : actualRows1364=WordField.canonicalRows actualModulus 1364 (.bxor 449 569) := by core033_kernel_decide
theorem stats1364 : actualRows1364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1364=7428 := by core033_kernel_decide
theorem rows1365 : actualRows1365=WordField.canonicalRows actualModulus 1365 (.badd 449 569) := by core033_kernel_decide
theorem stats1365 : actualRows1365.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1365=5388 := by core033_kernel_decide
theorem rows1366 : actualRows1366=WordField.canonicalRows actualModulus 1366 (.bnot 1365) := by core033_kernel_decide
theorem stats1366 : actualRows1366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1366=6276 := by core033_kernel_decide
theorem rows1367 : actualRows1367=WordField.canonicalRows actualModulus 1367 (.band 1364 1366) := by core033_kernel_decide
theorem stats1367 : actualRows1367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1367=5124 := by core033_kernel_decide
theorem rows1368 : actualRows1368=WordField.canonicalRows actualModulus 1368 (.bxor 1363 1367) := by core033_kernel_decide
theorem stats1368 : actualRows1368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1368=7428 := by core033_kernel_decide
theorem rows1369 : actualRows1369=WordField.canonicalRows actualModulus 1369 (.shr 1368 31) := by core033_kernel_decide
theorem stats1369 : actualRows1369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1369=2892 := by core033_kernel_decide
theorem rows1370 : actualRows1370=WordField.canonicalRows actualModulus 1370 (.badd 1362 1369) := by core033_kernel_decide
theorem stats1370 : actualRows1370.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1370=5388 := by core033_kernel_decide
theorem rows1371 : actualRows1371=WordField.canonicalRows actualModulus 1371 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1371 : actualRows1371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1371=2820 := by core033_kernel_decide
theorem rows1372 : actualRows1372=WordField.canonicalRows actualModulus 1372 (.bnot 1371) := by core033_kernel_decide
theorem stats1372 : actualRows1372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1372=6276 := by core033_kernel_decide
theorem rows1373 : actualRows1373=WordField.canonicalRows actualModulus 1373 (.badd 1370 1372) := by core033_kernel_decide
theorem stats1373 : actualRows1373.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1373=5388 := by core033_kernel_decide
theorem rows1374 : actualRows1374=WordField.canonicalRows actualModulus 1374 (.bnot 1373) := by core033_kernel_decide
theorem stats1374 : actualRows1374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1374=6276 := by core033_kernel_decide
theorem rows1375 : actualRows1375=WordField.canonicalRows actualModulus 1375 (.band 1361 1374) := by core033_kernel_decide
theorem stats1375 : actualRows1375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1375=5124 := by core033_kernel_decide
theorem rows1376 : actualRows1376=WordField.canonicalRows actualModulus 1376 (.bxor 1349 1375) := by core033_kernel_decide
theorem stats1376 : actualRows1376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1376=7428 := by core033_kernel_decide
theorem rows1377 : actualRows1377=WordField.canonicalRows actualModulus 1377 (.shr 1376 31) := by core033_kernel_decide
theorem stats1377 : actualRows1377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1377=2892 := by core033_kernel_decide
theorem rows1378 : actualRows1378=WordField.canonicalRows actualModulus 1378 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1378 : actualRows1378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1378=2892 := by core033_kernel_decide
theorem rows1379 : actualRows1379=WordField.canonicalRows actualModulus 1379 (.bxor 1377 1378) := by core033_kernel_decide
theorem stats1379 : actualRows1379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1379=7428 := by core033_kernel_decide
theorem rows1380 : actualRows1380=WordField.canonicalRows actualModulus 1380 (.badd 449 569) := by core033_kernel_decide
theorem stats1380 : actualRows1380.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1380=5388 := by core033_kernel_decide
theorem rows1381 : actualRows1381=WordField.canonicalRows actualModulus 1381 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1381 : actualRows1381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1381=2892 := by core033_kernel_decide
theorem rows1382 : actualRows1382=WordField.canonicalRows actualModulus 1382 (.bnot 1381) := by core033_kernel_decide
theorem stats1382 : actualRows1382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1382=6276 := by core033_kernel_decide
theorem rows1383 : actualRows1383=WordField.canonicalRows actualModulus 1383 (.band 1380 1382) := by core033_kernel_decide
theorem stats1383 : actualRows1383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1383=5124 := by core033_kernel_decide
theorem rows1384 : actualRows1384=WordField.canonicalRows actualModulus 1384 (.badd 449 569) := by core033_kernel_decide
theorem stats1384 : actualRows1384.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1384=5388 := by core033_kernel_decide
theorem rows1385 : actualRows1385=WordField.canonicalRows actualModulus 1385 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1385 : actualRows1385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1385=2892 := by core033_kernel_decide
theorem rows1386 : actualRows1386=WordField.canonicalRows actualModulus 1386 (.bnot 1385) := by core033_kernel_decide
theorem stats1386 : actualRows1386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1386=6276 := by core033_kernel_decide
def partRows20 : List R1CS.Row := actualRows1323++actualRows1324++actualRows1325++actualRows1326++actualRows1327++actualRows1328++actualRows1329++actualRows1330++actualRows1331++actualRows1332++actualRows1333++actualRows1334++actualRows1335++actualRows1336++actualRows1337++actualRows1338++actualRows1339++actualRows1340++actualRows1341++actualRows1342++actualRows1343++actualRows1344++actualRows1345++actualRows1346++actualRows1347++actualRows1348++actualRows1349++actualRows1350++actualRows1351++actualRows1352++actualRows1353++actualRows1354++actualRows1355++actualRows1356++actualRows1357++actualRows1358++actualRows1359++actualRows1360++actualRows1361++actualRows1362++actualRows1363++actualRows1364++actualRows1365++actualRows1366++actualRows1367++actualRows1368++actualRows1369++actualRows1370++actualRows1371++actualRows1372++actualRows1373++actualRows1374++actualRows1375++actualRows1376++actualRows1377++actualRows1378++actualRows1379++actualRows1380++actualRows1381++actualRows1382++actualRows1383++actualRows1384++actualRows1385++actualRows1386
def partOps20 : List WordIR.Op := [.band 569 1322,.literal (BitVec.ofNat 32 1048576),.bnot 1324,.bxor 569 1325,.literal (BitVec.ofNat 32 1048576),.bnot 1327,.badd 569 1328,.bnot 1329,.band 1326 1330,.bxor 1323 1331,.shr 1332 31,.literal (BitVec.ofNat 32 1),.bxor 1333 1334,.band 1320 1335,.band 1305 1336,.badd 459 579,.band 449 569,.bxor 449 569,.badd 449 569,.bnot 1341,.band 1340 1342,.bxor 1339 1343,.shr 1344 31,.badd 1338 1345,.literal (BitVec.ofNat 32 0),.bnot 1347,.band 1346 1348,.badd 459 579,.band 449 569,.bxor 449 569,.badd 449 569,.bnot 1353,.band 1352 1354,.bxor 1351 1355,.shr 1356 31,.badd 1350 1357,.literal (BitVec.ofNat 32 0),.bnot 1359,.bxor 1358 1360,.badd 459 579,.band 449 569,.bxor 449 569,.badd 449 569,.bnot 1365,.band 1364 1366,.bxor 1363 1367,.shr 1368 31,.badd 1362 1369,.literal (BitVec.ofNat 32 0),.bnot 1371,.badd 1370 1372,.bnot 1373,.band 1361 1374,.bxor 1349 1375,.shr 1376 31,.literal (BitVec.ofNat 32 1),.bxor 1377 1378,.badd 449 569,.literal (BitVec.ofNat 32 1048576),.bnot 1381,.band 1380 1382,.badd 449 569,.literal (BitVec.ofNat 32 1048576),.bnot 1385]
theorem partExact20 : partRows20=WordField.rows actualModulus 1323 partOps20 := by
  simp only [partRows20,partOps20,WordField.rows,rows1323,rows1324,rows1325,rows1326,rows1327,rows1328,rows1329,rows1330,rows1331,rows1332,rows1333,rows1334,rows1335,rows1336,rows1337,rows1338,rows1339,rows1340,rows1341,rows1342,rows1343,rows1344,rows1345,rows1346,rows1347,rows1348,rows1349,rows1350,rows1351,rows1352,rows1353,rows1354,rows1355,rows1356,rows1357,rows1358,rows1359,rows1360,rows1361,rows1362,rows1363,rows1364,rows1365,rows1366,rows1367,rows1368,rows1369,rows1370,rows1371,rows1372,rows1373,rows1374,rows1375,rows1376,rows1377,rows1378,rows1379,rows1380,rows1381,rows1382,rows1383,rows1384,rows1385,rows1386,List.append_assoc,List.append_nil]
theorem partLength20 : partOps20.length=64 := by decide
theorem partStats20 : partRows20.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows20=341376 := by
  simp only [partRows20,List.length_append,MatrixRowBlocks.rows_weight_append,stats1323.1,stats1323.2,stats1324.1,stats1324.2,stats1325.1,stats1325.2,stats1326.1,stats1326.2,stats1327.1,stats1327.2,stats1328.1,stats1328.2,stats1329.1,stats1329.2,stats1330.1,stats1330.2,stats1331.1,stats1331.2,stats1332.1,stats1332.2,stats1333.1,stats1333.2,stats1334.1,stats1334.2,stats1335.1,stats1335.2,stats1336.1,stats1336.2,stats1337.1,stats1337.2,stats1338.1,stats1338.2,stats1339.1,stats1339.2,stats1340.1,stats1340.2,stats1341.1,stats1341.2,stats1342.1,stats1342.2,stats1343.1,stats1343.2,stats1344.1,stats1344.2,stats1345.1,stats1345.2,stats1346.1,stats1346.2,stats1347.1,stats1347.2,stats1348.1,stats1348.2,stats1349.1,stats1349.2,stats1350.1,stats1350.2,stats1351.1,stats1351.2,stats1352.1,stats1352.2,stats1353.1,stats1353.2,stats1354.1,stats1354.2,stats1355.1,stats1355.2,stats1356.1,stats1356.2,stats1357.1,stats1357.2,stats1358.1,stats1358.2,stats1359.1,stats1359.2,stats1360.1,stats1360.2,stats1361.1,stats1361.2,stats1362.1,stats1362.2,stats1363.1,stats1363.2,stats1364.1,stats1364.2,stats1365.1,stats1365.2,stats1366.1,stats1366.2,stats1367.1,stats1367.2,stats1368.1,stats1368.2,stats1369.1,stats1369.2,stats1370.1,stats1370.2,stats1371.1,stats1371.2,stats1372.1,stats1372.2,stats1373.1,stats1373.2,stats1374.1,stats1374.2,stats1375.1,stats1375.2,stats1376.1,stats1376.2,stats1377.1,stats1377.2,stats1378.1,stats1378.2,stats1379.1,stats1379.2,stats1380.1,stats1380.2,stats1381.1,stats1381.2,stats1382.1,stats1382.2,stats1383.1,stats1383.2,stats1384.1,stats1384.2,stats1385.1,stats1385.2,stats1386.1,stats1386.2]
  decide
end FrameHashControllerCheckedRows
