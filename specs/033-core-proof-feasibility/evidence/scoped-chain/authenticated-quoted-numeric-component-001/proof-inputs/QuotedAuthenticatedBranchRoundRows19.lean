import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData20
import AuthenticatedBranchRoundInstructionMatrixData21
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1334 : actualRows1334=WordField.canonicalRows actualModulus 1334 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1334 : actualRows1334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1334=2892 := by core033_kernel_decide
theorem rows1335 : actualRows1335=WordField.canonicalRows actualModulus 1335 (.badd 1333 1334) := by core033_kernel_decide
theorem stats1335 : actualRows1335.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1335=5388 := by core033_kernel_decide
theorem rows1336 : actualRows1336=WordField.canonicalRows actualModulus 1336 (.band 1335 737) := by core033_kernel_decide
theorem stats1336 : actualRows1336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1336=5124 := by core033_kernel_decide
theorem rows1337 : actualRows1337=WordField.canonicalRows actualModulus 1337 (.bnot 1288) := by core033_kernel_decide
theorem stats1337 : actualRows1337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1337=6276 := by core033_kernel_decide
theorem rows1338 : actualRows1338=WordField.canonicalRows actualModulus 1338 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1338 : actualRows1338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1338=2892 := by core033_kernel_decide
theorem rows1339 : actualRows1339=WordField.canonicalRows actualModulus 1339 (.badd 1337 1338) := by core033_kernel_decide
theorem stats1339 : actualRows1339.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1339=5388 := by core033_kernel_decide
theorem rows1340 : actualRows1340=WordField.canonicalRows actualModulus 1340 (.bnot 1339) := by core033_kernel_decide
theorem stats1340 : actualRows1340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1340=6276 := by core033_kernel_decide
theorem rows1341 : actualRows1341=WordField.canonicalRows actualModulus 1341 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1341 : actualRows1341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1341=2820 := by core033_kernel_decide
theorem rows1342 : actualRows1342=WordField.canonicalRows actualModulus 1342 (.band 1340 1341) := by core033_kernel_decide
theorem stats1342 : actualRows1342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1342=5124 := by core033_kernel_decide
theorem rows1343 : actualRows1343=WordField.canonicalRows actualModulus 1343 (.bxor 1336 1342) := by core033_kernel_decide
theorem stats1343 : actualRows1343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1343=7428 := by core033_kernel_decide
theorem rows1344 : actualRows1344=WordField.canonicalRows actualModulus 1344 (.bnot 1288) := by core033_kernel_decide
theorem stats1344 : actualRows1344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1344=6276 := by core033_kernel_decide
theorem rows1345 : actualRows1345=WordField.canonicalRows actualModulus 1345 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1345 : actualRows1345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1345=2892 := by core033_kernel_decide
theorem rows1346 : actualRows1346=WordField.canonicalRows actualModulus 1346 (.badd 1344 1345) := by core033_kernel_decide
theorem stats1346 : actualRows1346.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1346=5388 := by core033_kernel_decide
theorem rows1347 : actualRows1347=WordField.canonicalRows actualModulus 1347 (.band 1346 748) := by core033_kernel_decide
theorem stats1347 : actualRows1347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1347=5124 := by core033_kernel_decide
theorem rows1348 : actualRows1348=WordField.canonicalRows actualModulus 1348 (.bnot 1288) := by core033_kernel_decide
theorem stats1348 : actualRows1348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1348=6276 := by core033_kernel_decide
theorem rows1349 : actualRows1349=WordField.canonicalRows actualModulus 1349 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1349 : actualRows1349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1349=2892 := by core033_kernel_decide
theorem rows1350 : actualRows1350=WordField.canonicalRows actualModulus 1350 (.badd 1348 1349) := by core033_kernel_decide
theorem stats1350 : actualRows1350.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1350=5388 := by core033_kernel_decide
theorem rows1351 : actualRows1351=WordField.canonicalRows actualModulus 1351 (.bnot 1350) := by core033_kernel_decide
theorem stats1351 : actualRows1351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1351=6276 := by core033_kernel_decide
theorem rows1352 : actualRows1352=WordField.canonicalRows actualModulus 1352 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1352 : actualRows1352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1352=2820 := by core033_kernel_decide
theorem rows1353 : actualRows1353=WordField.canonicalRows actualModulus 1353 (.band 1351 1352) := by core033_kernel_decide
theorem stats1353 : actualRows1353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1353=5124 := by core033_kernel_decide
theorem rows1354 : actualRows1354=WordField.canonicalRows actualModulus 1354 (.bxor 1347 1353) := by core033_kernel_decide
theorem stats1354 : actualRows1354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1354=7428 := by core033_kernel_decide
theorem rows1355 : actualRows1355=WordField.canonicalRows actualModulus 1355 (.bnot 1288) := by core033_kernel_decide
theorem stats1355 : actualRows1355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1355=6276 := by core033_kernel_decide
theorem rows1356 : actualRows1356=WordField.canonicalRows actualModulus 1356 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1356 : actualRows1356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1356=2892 := by core033_kernel_decide
theorem rows1357 : actualRows1357=WordField.canonicalRows actualModulus 1357 (.badd 1355 1356) := by core033_kernel_decide
theorem stats1357 : actualRows1357.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1357=5388 := by core033_kernel_decide
theorem rows1358 : actualRows1358=WordField.canonicalRows actualModulus 1358 (.band 1357 759) := by core033_kernel_decide
theorem stats1358 : actualRows1358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1358=5124 := by core033_kernel_decide
theorem rows1359 : actualRows1359=WordField.canonicalRows actualModulus 1359 (.bnot 1288) := by core033_kernel_decide
theorem stats1359 : actualRows1359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1359=6276 := by core033_kernel_decide
theorem rows1360 : actualRows1360=WordField.canonicalRows actualModulus 1360 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1360 : actualRows1360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1360=2892 := by core033_kernel_decide
theorem rows1361 : actualRows1361=WordField.canonicalRows actualModulus 1361 (.badd 1359 1360) := by core033_kernel_decide
theorem stats1361 : actualRows1361.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1361=5388 := by core033_kernel_decide
theorem rows1362 : actualRows1362=WordField.canonicalRows actualModulus 1362 (.bnot 1361) := by core033_kernel_decide
theorem stats1362 : actualRows1362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1362=6276 := by core033_kernel_decide
theorem rows1363 : actualRows1363=WordField.canonicalRows actualModulus 1363 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1363 : actualRows1363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1363=2820 := by core033_kernel_decide
theorem rows1364 : actualRows1364=WordField.canonicalRows actualModulus 1364 (.band 1362 1363) := by core033_kernel_decide
theorem stats1364 : actualRows1364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1364=5124 := by core033_kernel_decide
theorem rows1365 : actualRows1365=WordField.canonicalRows actualModulus 1365 (.bxor 1358 1364) := by core033_kernel_decide
theorem stats1365 : actualRows1365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1365=7428 := by core033_kernel_decide
theorem rows1366 : actualRows1366=WordField.canonicalRows actualModulus 1366 (.bnot 1288) := by core033_kernel_decide
theorem stats1366 : actualRows1366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1366=6276 := by core033_kernel_decide
theorem rows1367 : actualRows1367=WordField.canonicalRows actualModulus 1367 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1367 : actualRows1367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1367=2892 := by core033_kernel_decide
theorem rows1368 : actualRows1368=WordField.canonicalRows actualModulus 1368 (.badd 1366 1367) := by core033_kernel_decide
theorem stats1368 : actualRows1368.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1368=5388 := by core033_kernel_decide
theorem rows1369 : actualRows1369=WordField.canonicalRows actualModulus 1369 (.band 1368 770) := by core033_kernel_decide
theorem stats1369 : actualRows1369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1369=5124 := by core033_kernel_decide
theorem rows1370 : actualRows1370=WordField.canonicalRows actualModulus 1370 (.bnot 1288) := by core033_kernel_decide
theorem stats1370 : actualRows1370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1370=6276 := by core033_kernel_decide
theorem rows1371 : actualRows1371=WordField.canonicalRows actualModulus 1371 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1371 : actualRows1371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1371=2892 := by core033_kernel_decide
theorem rows1372 : actualRows1372=WordField.canonicalRows actualModulus 1372 (.badd 1370 1371) := by core033_kernel_decide
theorem stats1372 : actualRows1372.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1372=5388 := by core033_kernel_decide
theorem rows1373 : actualRows1373=WordField.canonicalRows actualModulus 1373 (.bnot 1372) := by core033_kernel_decide
theorem stats1373 : actualRows1373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1373=6276 := by core033_kernel_decide
theorem rows1374 : actualRows1374=WordField.canonicalRows actualModulus 1374 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1374 : actualRows1374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1374=2820 := by core033_kernel_decide
theorem rows1375 : actualRows1375=WordField.canonicalRows actualModulus 1375 (.band 1373 1374) := by core033_kernel_decide
theorem stats1375 : actualRows1375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1375=5124 := by core033_kernel_decide
theorem rows1376 : actualRows1376=WordField.canonicalRows actualModulus 1376 (.bxor 1369 1375) := by core033_kernel_decide
theorem stats1376 : actualRows1376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1376=7428 := by core033_kernel_decide
theorem rows1377 : actualRows1377=WordField.canonicalRows actualModulus 1377 (.bnot 1288) := by core033_kernel_decide
theorem stats1377 : actualRows1377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1377=6276 := by core033_kernel_decide
theorem rows1378 : actualRows1378=WordField.canonicalRows actualModulus 1378 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1378 : actualRows1378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1378=2892 := by core033_kernel_decide
theorem rows1379 : actualRows1379=WordField.canonicalRows actualModulus 1379 (.badd 1377 1378) := by core033_kernel_decide
theorem stats1379 : actualRows1379.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1379=5388 := by core033_kernel_decide
theorem rows1380 : actualRows1380=WordField.canonicalRows actualModulus 1380 (.band 1379 781) := by core033_kernel_decide
theorem stats1380 : actualRows1380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1380=5124 := by core033_kernel_decide
theorem rows1381 : actualRows1381=WordField.canonicalRows actualModulus 1381 (.bnot 1288) := by core033_kernel_decide
theorem stats1381 : actualRows1381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1381=6276 := by core033_kernel_decide
theorem rows1382 : actualRows1382=WordField.canonicalRows actualModulus 1382 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1382 : actualRows1382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1382=2892 := by core033_kernel_decide
theorem rows1383 : actualRows1383=WordField.canonicalRows actualModulus 1383 (.badd 1381 1382) := by core033_kernel_decide
theorem stats1383 : actualRows1383.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1383=5388 := by core033_kernel_decide
theorem rows1384 : actualRows1384=WordField.canonicalRows actualModulus 1384 (.bnot 1383) := by core033_kernel_decide
theorem stats1384 : actualRows1384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1384=6276 := by core033_kernel_decide
theorem rows1385 : actualRows1385=WordField.canonicalRows actualModulus 1385 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1385 : actualRows1385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1385=2820 := by core033_kernel_decide
theorem rows1386 : actualRows1386=WordField.canonicalRows actualModulus 1386 (.band 1384 1385) := by core033_kernel_decide
theorem stats1386 : actualRows1386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1386=5124 := by core033_kernel_decide
theorem rows1387 : actualRows1387=WordField.canonicalRows actualModulus 1387 (.bxor 1380 1386) := by core033_kernel_decide
theorem stats1387 : actualRows1387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1387=7428 := by core033_kernel_decide
theorem rows1388 : actualRows1388=WordField.canonicalRows actualModulus 1388 (.bnot 1288) := by core033_kernel_decide
theorem stats1388 : actualRows1388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1388=6276 := by core033_kernel_decide
theorem rows1389 : actualRows1389=WordField.canonicalRows actualModulus 1389 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1389 : actualRows1389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1389=2892 := by core033_kernel_decide
theorem rows1390 : actualRows1390=WordField.canonicalRows actualModulus 1390 (.badd 1388 1389) := by core033_kernel_decide
theorem stats1390 : actualRows1390.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1390=5388 := by core033_kernel_decide
theorem rows1391 : actualRows1391=WordField.canonicalRows actualModulus 1391 (.band 1390 792) := by core033_kernel_decide
theorem stats1391 : actualRows1391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1391=5124 := by core033_kernel_decide
theorem rows1392 : actualRows1392=WordField.canonicalRows actualModulus 1392 (.bnot 1288) := by core033_kernel_decide
theorem stats1392 : actualRows1392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1392=6276 := by core033_kernel_decide
theorem rows1393 : actualRows1393=WordField.canonicalRows actualModulus 1393 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1393 : actualRows1393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1393=2892 := by core033_kernel_decide
theorem rows1394 : actualRows1394=WordField.canonicalRows actualModulus 1394 (.badd 1392 1393) := by core033_kernel_decide
theorem stats1394 : actualRows1394.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1394=5388 := by core033_kernel_decide
theorem rows1395 : actualRows1395=WordField.canonicalRows actualModulus 1395 (.bnot 1394) := by core033_kernel_decide
theorem stats1395 : actualRows1395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1395=6276 := by core033_kernel_decide
theorem rows1396 : actualRows1396=WordField.canonicalRows actualModulus 1396 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1396 : actualRows1396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1396=2820 := by core033_kernel_decide
theorem rows1397 : actualRows1397=WordField.canonicalRows actualModulus 1397 (.band 1395 1396) := by core033_kernel_decide
theorem stats1397 : actualRows1397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1397=5124 := by core033_kernel_decide
def partRows19 : List R1CS.Row := actualRows1334++actualRows1335++actualRows1336++actualRows1337++actualRows1338++actualRows1339++actualRows1340++actualRows1341++actualRows1342++actualRows1343++actualRows1344++actualRows1345++actualRows1346++actualRows1347++actualRows1348++actualRows1349++actualRows1350++actualRows1351++actualRows1352++actualRows1353++actualRows1354++actualRows1355++actualRows1356++actualRows1357++actualRows1358++actualRows1359++actualRows1360++actualRows1361++actualRows1362++actualRows1363++actualRows1364++actualRows1365++actualRows1366++actualRows1367++actualRows1368++actualRows1369++actualRows1370++actualRows1371++actualRows1372++actualRows1373++actualRows1374++actualRows1375++actualRows1376++actualRows1377++actualRows1378++actualRows1379++actualRows1380++actualRows1381++actualRows1382++actualRows1383++actualRows1384++actualRows1385++actualRows1386++actualRows1387++actualRows1388++actualRows1389++actualRows1390++actualRows1391++actualRows1392++actualRows1393++actualRows1394++actualRows1395++actualRows1396++actualRows1397
def partOps19 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 1333 1334,.band 1335 737,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1337 1338,.bnot 1339,.literal (BitVec.ofNat 32 0),.band 1340 1341,.bxor 1336 1342,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1344 1345,.band 1346 748,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1348 1349,.bnot 1350,.literal (BitVec.ofNat 32 0),.band 1351 1352,.bxor 1347 1353,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1355 1356,.band 1357 759,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1359 1360,.bnot 1361,.literal (BitVec.ofNat 32 0),.band 1362 1363,.bxor 1358 1364,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1366 1367,.band 1368 770,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1370 1371,.bnot 1372,.literal (BitVec.ofNat 32 0),.band 1373 1374,.bxor 1369 1375,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1377 1378,.band 1379 781,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1381 1382,.bnot 1383,.literal (BitVec.ofNat 32 0),.band 1384 1385,.bxor 1380 1386,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1388 1389,.band 1390 792,.bnot 1288,.literal (BitVec.ofNat 32 1),.badd 1392 1393,.bnot 1394,.literal (BitVec.ofNat 32 0),.band 1395 1396]
theorem partExact19 : partRows19=WordField.rows actualModulus 1334 partOps19 := by
  simp only [partRows19,partOps19,WordField.rows,rows1334,rows1335,rows1336,rows1337,rows1338,rows1339,rows1340,rows1341,rows1342,rows1343,rows1344,rows1345,rows1346,rows1347,rows1348,rows1349,rows1350,rows1351,rows1352,rows1353,rows1354,rows1355,rows1356,rows1357,rows1358,rows1359,rows1360,rows1361,rows1362,rows1363,rows1364,rows1365,rows1366,rows1367,rows1368,rows1369,rows1370,rows1371,rows1372,rows1373,rows1374,rows1375,rows1376,rows1377,rows1378,rows1379,rows1380,rows1381,rows1382,rows1383,rows1384,rows1385,rows1386,rows1387,rows1388,rows1389,rows1390,rows1391,rows1392,rows1393,rows1394,rows1395,rows1396,rows1397,List.append_assoc,List.append_nil]
theorem partLength19 : partOps19.length=64 := by decide
theorem partStats19 : partRows19.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows19=321600 := by
  simp only [partRows19,List.length_append,MatrixRowBlocks.rows_weight_append,stats1334.1,stats1334.2,stats1335.1,stats1335.2,stats1336.1,stats1336.2,stats1337.1,stats1337.2,stats1338.1,stats1338.2,stats1339.1,stats1339.2,stats1340.1,stats1340.2,stats1341.1,stats1341.2,stats1342.1,stats1342.2,stats1343.1,stats1343.2,stats1344.1,stats1344.2,stats1345.1,stats1345.2,stats1346.1,stats1346.2,stats1347.1,stats1347.2,stats1348.1,stats1348.2,stats1349.1,stats1349.2,stats1350.1,stats1350.2,stats1351.1,stats1351.2,stats1352.1,stats1352.2,stats1353.1,stats1353.2,stats1354.1,stats1354.2,stats1355.1,stats1355.2,stats1356.1,stats1356.2,stats1357.1,stats1357.2,stats1358.1,stats1358.2,stats1359.1,stats1359.2,stats1360.1,stats1360.2,stats1361.1,stats1361.2,stats1362.1,stats1362.2,stats1363.1,stats1363.2,stats1364.1,stats1364.2,stats1365.1,stats1365.2,stats1366.1,stats1366.2,stats1367.1,stats1367.2,stats1368.1,stats1368.2,stats1369.1,stats1369.2,stats1370.1,stats1370.2,stats1371.1,stats1371.2,stats1372.1,stats1372.2,stats1373.1,stats1373.2,stats1374.1,stats1374.2,stats1375.1,stats1375.2,stats1376.1,stats1376.2,stats1377.1,stats1377.2,stats1378.1,stats1378.2,stats1379.1,stats1379.2,stats1380.1,stats1380.2,stats1381.1,stats1381.2,stats1382.1,stats1382.2,stats1383.1,stats1383.2,stats1384.1,stats1384.2,stats1385.1,stats1385.2,stats1386.1,stats1386.2,stats1387.1,stats1387.2,stats1388.1,stats1388.2,stats1389.1,stats1389.2,stats1390.1,stats1390.2,stats1391.1,stats1391.2,stats1392.1,stats1392.2,stats1393.1,stats1393.2,stats1394.1,stats1394.2,stats1395.1,stats1395.2,stats1396.1,stats1396.2,stats1397.1,stats1397.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
