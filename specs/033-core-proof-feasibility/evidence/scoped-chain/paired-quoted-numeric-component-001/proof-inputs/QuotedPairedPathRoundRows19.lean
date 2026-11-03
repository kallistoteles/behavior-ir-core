import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData20
import PairedPathRoundInstructionMatrixData21
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1312 : actualRows1312=WordField.canonicalRows actualModulus 1312 (.badd 1310 1311) := by core033_kernel_decide
theorem stats1312 : actualRows1312.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1312=5388 := by core033_kernel_decide
theorem rows1313 : actualRows1313=WordField.canonicalRows actualModulus 1313 (.shr 1306 2) := by core033_kernel_decide
theorem stats1313 : actualRows1313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1313=4980 := by core033_kernel_decide
theorem rows1314 : actualRows1314=WordField.canonicalRows actualModulus 1314 (.band 1312 1313) := by core033_kernel_decide
theorem stats1314 : actualRows1314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1314=5124 := by core033_kernel_decide
theorem rows1315 : actualRows1315=WordField.canonicalRows actualModulus 1315 (.shr 1141 1) := by core033_kernel_decide
theorem stats1315 : actualRows1315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1315=5052 := by core033_kernel_decide
theorem rows1316 : actualRows1316=WordField.canonicalRows actualModulus 1316 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1316 : actualRows1316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1316=2892 := by core033_kernel_decide
theorem rows1317 : actualRows1317=WordField.canonicalRows actualModulus 1317 (.band 1315 1316) := by core033_kernel_decide
theorem stats1317 : actualRows1317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1317=5124 := by core033_kernel_decide
theorem rows1318 : actualRows1318=WordField.canonicalRows actualModulus 1318 (.bnot 1317) := by core033_kernel_decide
theorem stats1318 : actualRows1318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1318=6276 := by core033_kernel_decide
theorem rows1319 : actualRows1319=WordField.canonicalRows actualModulus 1319 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1319 : actualRows1319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1319=2892 := by core033_kernel_decide
theorem rows1320 : actualRows1320=WordField.canonicalRows actualModulus 1320 (.badd 1318 1319) := by core033_kernel_decide
theorem stats1320 : actualRows1320.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1320=5388 := by core033_kernel_decide
theorem rows1321 : actualRows1321=WordField.canonicalRows actualModulus 1321 (.bnot 1320) := by core033_kernel_decide
theorem stats1321 : actualRows1321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1321=6276 := by core033_kernel_decide
theorem rows1322 : actualRows1322=WordField.canonicalRows actualModulus 1322 (.band 1321 1306) := by core033_kernel_decide
theorem stats1322 : actualRows1322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1322=5124 := by core033_kernel_decide
theorem rows1323 : actualRows1323=WordField.canonicalRows actualModulus 1323 (.bxor 1314 1322) := by core033_kernel_decide
theorem stats1323 : actualRows1323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1323=7428 := by core033_kernel_decide
theorem rows1324 : actualRows1324=WordField.canonicalRows actualModulus 1324 (.shr 1141 2) := by core033_kernel_decide
theorem stats1324 : actualRows1324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1324=4980 := by core033_kernel_decide
theorem rows1325 : actualRows1325=WordField.canonicalRows actualModulus 1325 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1325 : actualRows1325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1325=2892 := by core033_kernel_decide
theorem rows1326 : actualRows1326=WordField.canonicalRows actualModulus 1326 (.band 1324 1325) := by core033_kernel_decide
theorem stats1326 : actualRows1326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1326=5124 := by core033_kernel_decide
theorem rows1327 : actualRows1327=WordField.canonicalRows actualModulus 1327 (.bnot 1326) := by core033_kernel_decide
theorem stats1327 : actualRows1327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1327=6276 := by core033_kernel_decide
theorem rows1328 : actualRows1328=WordField.canonicalRows actualModulus 1328 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1328 : actualRows1328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1328=2892 := by core033_kernel_decide
theorem rows1329 : actualRows1329=WordField.canonicalRows actualModulus 1329 (.badd 1327 1328) := by core033_kernel_decide
theorem stats1329 : actualRows1329.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1329=5388 := by core033_kernel_decide
theorem rows1330 : actualRows1330=WordField.canonicalRows actualModulus 1330 (.shr 1323 4) := by core033_kernel_decide
theorem stats1330 : actualRows1330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1330=4836 := by core033_kernel_decide
theorem rows1331 : actualRows1331=WordField.canonicalRows actualModulus 1331 (.band 1329 1330) := by core033_kernel_decide
theorem stats1331 : actualRows1331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1331=5124 := by core033_kernel_decide
theorem rows1332 : actualRows1332=WordField.canonicalRows actualModulus 1332 (.shr 1141 2) := by core033_kernel_decide
theorem stats1332 : actualRows1332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1332=4980 := by core033_kernel_decide
theorem rows1333 : actualRows1333=WordField.canonicalRows actualModulus 1333 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1333 : actualRows1333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1333=2892 := by core033_kernel_decide
theorem rows1334 : actualRows1334=WordField.canonicalRows actualModulus 1334 (.band 1332 1333) := by core033_kernel_decide
theorem stats1334 : actualRows1334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1334=5124 := by core033_kernel_decide
theorem rows1335 : actualRows1335=WordField.canonicalRows actualModulus 1335 (.bnot 1334) := by core033_kernel_decide
theorem stats1335 : actualRows1335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1335=6276 := by core033_kernel_decide
theorem rows1336 : actualRows1336=WordField.canonicalRows actualModulus 1336 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1336 : actualRows1336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1336=2892 := by core033_kernel_decide
theorem rows1337 : actualRows1337=WordField.canonicalRows actualModulus 1337 (.badd 1335 1336) := by core033_kernel_decide
theorem stats1337 : actualRows1337.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1337=5388 := by core033_kernel_decide
theorem rows1338 : actualRows1338=WordField.canonicalRows actualModulus 1338 (.bnot 1337) := by core033_kernel_decide
theorem stats1338 : actualRows1338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1338=6276 := by core033_kernel_decide
theorem rows1339 : actualRows1339=WordField.canonicalRows actualModulus 1339 (.band 1338 1323) := by core033_kernel_decide
theorem stats1339 : actualRows1339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1339=5124 := by core033_kernel_decide
theorem rows1340 : actualRows1340=WordField.canonicalRows actualModulus 1340 (.bxor 1331 1339) := by core033_kernel_decide
theorem stats1340 : actualRows1340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1340=7428 := by core033_kernel_decide
theorem rows1341 : actualRows1341=WordField.canonicalRows actualModulus 1341 (.shr 1141 3) := by core033_kernel_decide
theorem stats1341 : actualRows1341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1341=4908 := by core033_kernel_decide
theorem rows1342 : actualRows1342=WordField.canonicalRows actualModulus 1342 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1342 : actualRows1342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1342=2892 := by core033_kernel_decide
theorem rows1343 : actualRows1343=WordField.canonicalRows actualModulus 1343 (.band 1341 1342) := by core033_kernel_decide
theorem stats1343 : actualRows1343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1343=5124 := by core033_kernel_decide
theorem rows1344 : actualRows1344=WordField.canonicalRows actualModulus 1344 (.bnot 1343) := by core033_kernel_decide
theorem stats1344 : actualRows1344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1344=6276 := by core033_kernel_decide
theorem rows1345 : actualRows1345=WordField.canonicalRows actualModulus 1345 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1345 : actualRows1345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1345=2892 := by core033_kernel_decide
theorem rows1346 : actualRows1346=WordField.canonicalRows actualModulus 1346 (.badd 1344 1345) := by core033_kernel_decide
theorem stats1346 : actualRows1346.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1346=5388 := by core033_kernel_decide
theorem rows1347 : actualRows1347=WordField.canonicalRows actualModulus 1347 (.shr 1340 8) := by core033_kernel_decide
theorem stats1347 : actualRows1347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1347=4548 := by core033_kernel_decide
theorem rows1348 : actualRows1348=WordField.canonicalRows actualModulus 1348 (.band 1346 1347) := by core033_kernel_decide
theorem stats1348 : actualRows1348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1348=5124 := by core033_kernel_decide
theorem rows1349 : actualRows1349=WordField.canonicalRows actualModulus 1349 (.shr 1141 3) := by core033_kernel_decide
theorem stats1349 : actualRows1349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1349=4908 := by core033_kernel_decide
theorem rows1350 : actualRows1350=WordField.canonicalRows actualModulus 1350 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1350 : actualRows1350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1350=2892 := by core033_kernel_decide
theorem rows1351 : actualRows1351=WordField.canonicalRows actualModulus 1351 (.band 1349 1350) := by core033_kernel_decide
theorem stats1351 : actualRows1351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1351=5124 := by core033_kernel_decide
theorem rows1352 : actualRows1352=WordField.canonicalRows actualModulus 1352 (.bnot 1351) := by core033_kernel_decide
theorem stats1352 : actualRows1352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1352=6276 := by core033_kernel_decide
theorem rows1353 : actualRows1353=WordField.canonicalRows actualModulus 1353 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1353 : actualRows1353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1353=2892 := by core033_kernel_decide
theorem rows1354 : actualRows1354=WordField.canonicalRows actualModulus 1354 (.badd 1352 1353) := by core033_kernel_decide
theorem stats1354 : actualRows1354.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1354=5388 := by core033_kernel_decide
theorem rows1355 : actualRows1355=WordField.canonicalRows actualModulus 1355 (.bnot 1354) := by core033_kernel_decide
theorem stats1355 : actualRows1355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1355=6276 := by core033_kernel_decide
theorem rows1356 : actualRows1356=WordField.canonicalRows actualModulus 1356 (.band 1355 1340) := by core033_kernel_decide
theorem stats1356 : actualRows1356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1356=5124 := by core033_kernel_decide
theorem rows1357 : actualRows1357=WordField.canonicalRows actualModulus 1357 (.bxor 1348 1356) := by core033_kernel_decide
theorem stats1357 : actualRows1357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1357=7428 := by core033_kernel_decide
theorem rows1358 : actualRows1358=WordField.canonicalRows actualModulus 1358 (.shr 1141 4) := by core033_kernel_decide
theorem stats1358 : actualRows1358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1358=4836 := by core033_kernel_decide
theorem rows1359 : actualRows1359=WordField.canonicalRows actualModulus 1359 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1359 : actualRows1359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1359=2892 := by core033_kernel_decide
theorem rows1360 : actualRows1360=WordField.canonicalRows actualModulus 1360 (.band 1358 1359) := by core033_kernel_decide
theorem stats1360 : actualRows1360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1360=5124 := by core033_kernel_decide
theorem rows1361 : actualRows1361=WordField.canonicalRows actualModulus 1361 (.bnot 1360) := by core033_kernel_decide
theorem stats1361 : actualRows1361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1361=6276 := by core033_kernel_decide
theorem rows1362 : actualRows1362=WordField.canonicalRows actualModulus 1362 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1362 : actualRows1362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1362=2892 := by core033_kernel_decide
theorem rows1363 : actualRows1363=WordField.canonicalRows actualModulus 1363 (.badd 1361 1362) := by core033_kernel_decide
theorem stats1363 : actualRows1363.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1363=5388 := by core033_kernel_decide
theorem rows1364 : actualRows1364=WordField.canonicalRows actualModulus 1364 (.shr 1357 16) := by core033_kernel_decide
theorem stats1364 : actualRows1364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1364=3972 := by core033_kernel_decide
theorem rows1365 : actualRows1365=WordField.canonicalRows actualModulus 1365 (.band 1363 1364) := by core033_kernel_decide
theorem stats1365 : actualRows1365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1365=5124 := by core033_kernel_decide
theorem rows1366 : actualRows1366=WordField.canonicalRows actualModulus 1366 (.shr 1141 4) := by core033_kernel_decide
theorem stats1366 : actualRows1366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1366=4836 := by core033_kernel_decide
theorem rows1367 : actualRows1367=WordField.canonicalRows actualModulus 1367 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1367 : actualRows1367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1367=2892 := by core033_kernel_decide
theorem rows1368 : actualRows1368=WordField.canonicalRows actualModulus 1368 (.band 1366 1367) := by core033_kernel_decide
theorem stats1368 : actualRows1368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1368=5124 := by core033_kernel_decide
theorem rows1369 : actualRows1369=WordField.canonicalRows actualModulus 1369 (.bnot 1368) := by core033_kernel_decide
theorem stats1369 : actualRows1369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1369=6276 := by core033_kernel_decide
theorem rows1370 : actualRows1370=WordField.canonicalRows actualModulus 1370 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1370 : actualRows1370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1370=2892 := by core033_kernel_decide
theorem rows1371 : actualRows1371=WordField.canonicalRows actualModulus 1371 (.badd 1369 1370) := by core033_kernel_decide
theorem stats1371 : actualRows1371.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1371=5388 := by core033_kernel_decide
theorem rows1372 : actualRows1372=WordField.canonicalRows actualModulus 1372 (.bnot 1371) := by core033_kernel_decide
theorem stats1372 : actualRows1372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1372=6276 := by core033_kernel_decide
theorem rows1373 : actualRows1373=WordField.canonicalRows actualModulus 1373 (.band 1372 1357) := by core033_kernel_decide
theorem stats1373 : actualRows1373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1373=5124 := by core033_kernel_decide
theorem rows1374 : actualRows1374=WordField.canonicalRows actualModulus 1374 (.bxor 1365 1373) := by core033_kernel_decide
theorem stats1374 : actualRows1374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1374=7428 := by core033_kernel_decide
theorem rows1375 : actualRows1375=WordField.canonicalRows actualModulus 1375 (.shr 1141 5) := by core033_kernel_decide
theorem stats1375 : actualRows1375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1375=4764 := by core033_kernel_decide
def partRows19 : List R1CS.Row := actualRows1312++actualRows1313++actualRows1314++actualRows1315++actualRows1316++actualRows1317++actualRows1318++actualRows1319++actualRows1320++actualRows1321++actualRows1322++actualRows1323++actualRows1324++actualRows1325++actualRows1326++actualRows1327++actualRows1328++actualRows1329++actualRows1330++actualRows1331++actualRows1332++actualRows1333++actualRows1334++actualRows1335++actualRows1336++actualRows1337++actualRows1338++actualRows1339++actualRows1340++actualRows1341++actualRows1342++actualRows1343++actualRows1344++actualRows1345++actualRows1346++actualRows1347++actualRows1348++actualRows1349++actualRows1350++actualRows1351++actualRows1352++actualRows1353++actualRows1354++actualRows1355++actualRows1356++actualRows1357++actualRows1358++actualRows1359++actualRows1360++actualRows1361++actualRows1362++actualRows1363++actualRows1364++actualRows1365++actualRows1366++actualRows1367++actualRows1368++actualRows1369++actualRows1370++actualRows1371++actualRows1372++actualRows1373++actualRows1374++actualRows1375
def partOps19 : List WordIR.Op := [.badd 1310 1311,.shr 1306 2,.band 1312 1313,.shr 1141 1,.literal (BitVec.ofNat 32 1),.band 1315 1316,.bnot 1317,.literal (BitVec.ofNat 32 1),.badd 1318 1319,.bnot 1320,.band 1321 1306,.bxor 1314 1322,.shr 1141 2,.literal (BitVec.ofNat 32 1),.band 1324 1325,.bnot 1326,.literal (BitVec.ofNat 32 1),.badd 1327 1328,.shr 1323 4,.band 1329 1330,.shr 1141 2,.literal (BitVec.ofNat 32 1),.band 1332 1333,.bnot 1334,.literal (BitVec.ofNat 32 1),.badd 1335 1336,.bnot 1337,.band 1338 1323,.bxor 1331 1339,.shr 1141 3,.literal (BitVec.ofNat 32 1),.band 1341 1342,.bnot 1343,.literal (BitVec.ofNat 32 1),.badd 1344 1345,.shr 1340 8,.band 1346 1347,.shr 1141 3,.literal (BitVec.ofNat 32 1),.band 1349 1350,.bnot 1351,.literal (BitVec.ofNat 32 1),.badd 1352 1353,.bnot 1354,.band 1355 1340,.bxor 1348 1356,.shr 1141 4,.literal (BitVec.ofNat 32 1),.band 1358 1359,.bnot 1360,.literal (BitVec.ofNat 32 1),.badd 1361 1362,.shr 1357 16,.band 1363 1364,.shr 1141 4,.literal (BitVec.ofNat 32 1),.band 1366 1367,.bnot 1368,.literal (BitVec.ofNat 32 1),.badd 1369 1370,.bnot 1371,.band 1372 1357,.bxor 1365 1373,.shr 1141 5]
theorem partExact19 : partRows19=WordField.rows actualModulus 1312 partOps19 := by
  simp only [partRows19,partOps19,WordField.rows,rows1312,rows1313,rows1314,rows1315,rows1316,rows1317,rows1318,rows1319,rows1320,rows1321,rows1322,rows1323,rows1324,rows1325,rows1326,rows1327,rows1328,rows1329,rows1330,rows1331,rows1332,rows1333,rows1334,rows1335,rows1336,rows1337,rows1338,rows1339,rows1340,rows1341,rows1342,rows1343,rows1344,rows1345,rows1346,rows1347,rows1348,rows1349,rows1350,rows1351,rows1352,rows1353,rows1354,rows1355,rows1356,rows1357,rows1358,rows1359,rows1360,rows1361,rows1362,rows1363,rows1364,rows1365,rows1366,rows1367,rows1368,rows1369,rows1370,rows1371,rows1372,rows1373,rows1374,rows1375,List.append_assoc,List.append_nil]
theorem partLength19 : partOps19.length=64 := by decide
theorem partStats19 : partRows19.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows19=316800 := by
  simp only [partRows19,List.length_append,MatrixRowBlocks.rows_weight_append,stats1312.1,stats1312.2,stats1313.1,stats1313.2,stats1314.1,stats1314.2,stats1315.1,stats1315.2,stats1316.1,stats1316.2,stats1317.1,stats1317.2,stats1318.1,stats1318.2,stats1319.1,stats1319.2,stats1320.1,stats1320.2,stats1321.1,stats1321.2,stats1322.1,stats1322.2,stats1323.1,stats1323.2,stats1324.1,stats1324.2,stats1325.1,stats1325.2,stats1326.1,stats1326.2,stats1327.1,stats1327.2,stats1328.1,stats1328.2,stats1329.1,stats1329.2,stats1330.1,stats1330.2,stats1331.1,stats1331.2,stats1332.1,stats1332.2,stats1333.1,stats1333.2,stats1334.1,stats1334.2,stats1335.1,stats1335.2,stats1336.1,stats1336.2,stats1337.1,stats1337.2,stats1338.1,stats1338.2,stats1339.1,stats1339.2,stats1340.1,stats1340.2,stats1341.1,stats1341.2,stats1342.1,stats1342.2,stats1343.1,stats1343.2,stats1344.1,stats1344.2,stats1345.1,stats1345.2,stats1346.1,stats1346.2,stats1347.1,stats1347.2,stats1348.1,stats1348.2,stats1349.1,stats1349.2,stats1350.1,stats1350.2,stats1351.1,stats1351.2,stats1352.1,stats1352.2,stats1353.1,stats1353.2,stats1354.1,stats1354.2,stats1355.1,stats1355.2,stats1356.1,stats1356.2,stats1357.1,stats1357.2,stats1358.1,stats1358.2,stats1359.1,stats1359.2,stats1360.1,stats1360.2,stats1361.1,stats1361.2,stats1362.1,stats1362.2,stats1363.1,stats1363.2,stats1364.1,stats1364.2,stats1365.1,stats1365.2,stats1366.1,stats1366.2,stats1367.1,stats1367.2,stats1368.1,stats1368.2,stats1369.1,stats1369.2,stats1370.1,stats1370.2,stats1371.1,stats1371.2,stats1372.1,stats1372.2,stats1373.1,stats1373.2,stats1374.1,stats1374.2,stats1375.1,stats1375.2]
  decide
end QuotedPairedPathRoundCheckedRows
