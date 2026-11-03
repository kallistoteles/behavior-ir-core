import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData21
import HashBlockInstructionMatrixData22
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1352 : actualRows1352=WordField.canonicalRows actualModulus 1352 (.rotr 95 7) := by core033_kernel_decide
theorem stats1352 : actualRows1352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1352=5124 := by core033_kernel_decide
theorem rows1353 : actualRows1353=WordField.canonicalRows actualModulus 1353 (.rotr 95 18) := by core033_kernel_decide
theorem stats1353 : actualRows1353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1353=5124 := by core033_kernel_decide
theorem rows1354 : actualRows1354=WordField.canonicalRows actualModulus 1354 (.bxor 1352 1353) := by core033_kernel_decide
theorem stats1354 : actualRows1354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1354=7428 := by core033_kernel_decide
theorem rows1355 : actualRows1355=WordField.canonicalRows actualModulus 1355 (.shr 95 3) := by core033_kernel_decide
theorem stats1355 : actualRows1355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1355=4908 := by core033_kernel_decide
theorem rows1356 : actualRows1356=WordField.canonicalRows actualModulus 1356 (.bxor 1354 1355) := by core033_kernel_decide
theorem stats1356 : actualRows1356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1356=7428 := by core033_kernel_decide
theorem rows1357 : actualRows1357=WordField.canonicalRows actualModulus 1357 (.badd 1351 1356) := by core033_kernel_decide
theorem stats1357 : actualRows1357.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1357=5388 := by core033_kernel_decide
theorem rows1358 : actualRows1358=WordField.canonicalRows actualModulus 1358 (.badd 1357 89) := by core033_kernel_decide
theorem stats1358 : actualRows1358.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1358=5388 := by core033_kernel_decide
theorem rows1359 : actualRows1359=WordField.canonicalRows actualModulus 1359 (.rotr 1345 17) := by core033_kernel_decide
theorem stats1359 : actualRows1359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1359=5124 := by core033_kernel_decide
theorem rows1360 : actualRows1360=WordField.canonicalRows actualModulus 1360 (.rotr 1345 19) := by core033_kernel_decide
theorem stats1360 : actualRows1360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1360=5124 := by core033_kernel_decide
theorem rows1361 : actualRows1361=WordField.canonicalRows actualModulus 1361 (.bxor 1359 1360) := by core033_kernel_decide
theorem stats1361 : actualRows1361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1361=7428 := by core033_kernel_decide
theorem rows1362 : actualRows1362=WordField.canonicalRows actualModulus 1362 (.shr 1345 10) := by core033_kernel_decide
theorem stats1362 : actualRows1362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1362=4404 := by core033_kernel_decide
theorem rows1363 : actualRows1363=WordField.canonicalRows actualModulus 1363 (.bxor 1361 1362) := by core033_kernel_decide
theorem stats1363 : actualRows1363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1363=7428 := by core033_kernel_decide
theorem rows1364 : actualRows1364=WordField.canonicalRows actualModulus 1364 (.badd 1363 149) := by core033_kernel_decide
theorem stats1364 : actualRows1364.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1364=5388 := by core033_kernel_decide
theorem rows1365 : actualRows1365=WordField.canonicalRows actualModulus 1365 (.rotr 101 7) := by core033_kernel_decide
theorem stats1365 : actualRows1365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1365=5124 := by core033_kernel_decide
theorem rows1366 : actualRows1366=WordField.canonicalRows actualModulus 1366 (.rotr 101 18) := by core033_kernel_decide
theorem stats1366 : actualRows1366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1366=5124 := by core033_kernel_decide
theorem rows1367 : actualRows1367=WordField.canonicalRows actualModulus 1367 (.bxor 1365 1366) := by core033_kernel_decide
theorem stats1367 : actualRows1367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1367=7428 := by core033_kernel_decide
theorem rows1368 : actualRows1368=WordField.canonicalRows actualModulus 1368 (.shr 101 3) := by core033_kernel_decide
theorem stats1368 : actualRows1368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1368=4908 := by core033_kernel_decide
theorem rows1369 : actualRows1369=WordField.canonicalRows actualModulus 1369 (.bxor 1367 1368) := by core033_kernel_decide
theorem stats1369 : actualRows1369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1369=7428 := by core033_kernel_decide
theorem rows1370 : actualRows1370=WordField.canonicalRows actualModulus 1370 (.badd 1364 1369) := by core033_kernel_decide
theorem stats1370 : actualRows1370.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1370=5388 := by core033_kernel_decide
theorem rows1371 : actualRows1371=WordField.canonicalRows actualModulus 1371 (.badd 1370 95) := by core033_kernel_decide
theorem stats1371 : actualRows1371.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1371=5388 := by core033_kernel_decide
theorem rows1372 : actualRows1372=WordField.canonicalRows actualModulus 1372 (.rotr 1358 17) := by core033_kernel_decide
theorem stats1372 : actualRows1372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1372=5124 := by core033_kernel_decide
theorem rows1373 : actualRows1373=WordField.canonicalRows actualModulus 1373 (.rotr 1358 19) := by core033_kernel_decide
theorem stats1373 : actualRows1373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1373=5124 := by core033_kernel_decide
theorem rows1374 : actualRows1374=WordField.canonicalRows actualModulus 1374 (.bxor 1372 1373) := by core033_kernel_decide
theorem stats1374 : actualRows1374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1374=7428 := by core033_kernel_decide
theorem rows1375 : actualRows1375=WordField.canonicalRows actualModulus 1375 (.shr 1358 10) := by core033_kernel_decide
theorem stats1375 : actualRows1375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1375=4404 := by core033_kernel_decide
theorem rows1376 : actualRows1376=WordField.canonicalRows actualModulus 1376 (.bxor 1374 1375) := by core033_kernel_decide
theorem stats1376 : actualRows1376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1376=7428 := by core033_kernel_decide
theorem rows1377 : actualRows1377=WordField.canonicalRows actualModulus 1377 (.badd 1376 155) := by core033_kernel_decide
theorem stats1377 : actualRows1377.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1377=5388 := by core033_kernel_decide
theorem rows1378 : actualRows1378=WordField.canonicalRows actualModulus 1378 (.rotr 107 7) := by core033_kernel_decide
theorem stats1378 : actualRows1378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1378=5124 := by core033_kernel_decide
theorem rows1379 : actualRows1379=WordField.canonicalRows actualModulus 1379 (.rotr 107 18) := by core033_kernel_decide
theorem stats1379 : actualRows1379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1379=5124 := by core033_kernel_decide
theorem rows1380 : actualRows1380=WordField.canonicalRows actualModulus 1380 (.bxor 1378 1379) := by core033_kernel_decide
theorem stats1380 : actualRows1380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1380=7428 := by core033_kernel_decide
theorem rows1381 : actualRows1381=WordField.canonicalRows actualModulus 1381 (.shr 107 3) := by core033_kernel_decide
theorem stats1381 : actualRows1381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1381=4908 := by core033_kernel_decide
theorem rows1382 : actualRows1382=WordField.canonicalRows actualModulus 1382 (.bxor 1380 1381) := by core033_kernel_decide
theorem stats1382 : actualRows1382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1382=7428 := by core033_kernel_decide
theorem rows1383 : actualRows1383=WordField.canonicalRows actualModulus 1383 (.badd 1377 1382) := by core033_kernel_decide
theorem stats1383 : actualRows1383.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1383=5388 := by core033_kernel_decide
theorem rows1384 : actualRows1384=WordField.canonicalRows actualModulus 1384 (.badd 1383 101) := by core033_kernel_decide
theorem stats1384 : actualRows1384.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1384=5388 := by core033_kernel_decide
theorem rows1385 : actualRows1385=WordField.canonicalRows actualModulus 1385 (.rotr 1371 17) := by core033_kernel_decide
theorem stats1385 : actualRows1385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1385=5124 := by core033_kernel_decide
theorem rows1386 : actualRows1386=WordField.canonicalRows actualModulus 1386 (.rotr 1371 19) := by core033_kernel_decide
theorem stats1386 : actualRows1386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1386=5124 := by core033_kernel_decide
theorem rows1387 : actualRows1387=WordField.canonicalRows actualModulus 1387 (.bxor 1385 1386) := by core033_kernel_decide
theorem stats1387 : actualRows1387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1387=7428 := by core033_kernel_decide
theorem rows1388 : actualRows1388=WordField.canonicalRows actualModulus 1388 (.shr 1371 10) := by core033_kernel_decide
theorem stats1388 : actualRows1388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1388=4404 := by core033_kernel_decide
theorem rows1389 : actualRows1389=WordField.canonicalRows actualModulus 1389 (.bxor 1387 1388) := by core033_kernel_decide
theorem stats1389 : actualRows1389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1389=7428 := by core033_kernel_decide
theorem rows1390 : actualRows1390=WordField.canonicalRows actualModulus 1390 (.badd 1389 161) := by core033_kernel_decide
theorem stats1390 : actualRows1390.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1390=5388 := by core033_kernel_decide
theorem rows1391 : actualRows1391=WordField.canonicalRows actualModulus 1391 (.rotr 113 7) := by core033_kernel_decide
theorem stats1391 : actualRows1391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1391=5124 := by core033_kernel_decide
theorem rows1392 : actualRows1392=WordField.canonicalRows actualModulus 1392 (.rotr 113 18) := by core033_kernel_decide
theorem stats1392 : actualRows1392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1392=5124 := by core033_kernel_decide
theorem rows1393 : actualRows1393=WordField.canonicalRows actualModulus 1393 (.bxor 1391 1392) := by core033_kernel_decide
theorem stats1393 : actualRows1393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1393=7428 := by core033_kernel_decide
theorem rows1394 : actualRows1394=WordField.canonicalRows actualModulus 1394 (.shr 113 3) := by core033_kernel_decide
theorem stats1394 : actualRows1394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1394=4908 := by core033_kernel_decide
theorem rows1395 : actualRows1395=WordField.canonicalRows actualModulus 1395 (.bxor 1393 1394) := by core033_kernel_decide
theorem stats1395 : actualRows1395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1395=7428 := by core033_kernel_decide
theorem rows1396 : actualRows1396=WordField.canonicalRows actualModulus 1396 (.badd 1390 1395) := by core033_kernel_decide
theorem stats1396 : actualRows1396.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1396=5388 := by core033_kernel_decide
theorem rows1397 : actualRows1397=WordField.canonicalRows actualModulus 1397 (.badd 1396 107) := by core033_kernel_decide
theorem stats1397 : actualRows1397.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1397=5388 := by core033_kernel_decide
theorem rows1398 : actualRows1398=WordField.canonicalRows actualModulus 1398 (.rotr 1384 17) := by core033_kernel_decide
theorem stats1398 : actualRows1398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1398=5124 := by core033_kernel_decide
theorem rows1399 : actualRows1399=WordField.canonicalRows actualModulus 1399 (.rotr 1384 19) := by core033_kernel_decide
theorem stats1399 : actualRows1399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1399=5124 := by core033_kernel_decide
theorem rows1400 : actualRows1400=WordField.canonicalRows actualModulus 1400 (.bxor 1398 1399) := by core033_kernel_decide
theorem stats1400 : actualRows1400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1400=7428 := by core033_kernel_decide
theorem rows1401 : actualRows1401=WordField.canonicalRows actualModulus 1401 (.shr 1384 10) := by core033_kernel_decide
theorem stats1401 : actualRows1401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1401=4404 := by core033_kernel_decide
theorem rows1402 : actualRows1402=WordField.canonicalRows actualModulus 1402 (.bxor 1400 1401) := by core033_kernel_decide
theorem stats1402 : actualRows1402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1402=7428 := by core033_kernel_decide
theorem rows1403 : actualRows1403=WordField.canonicalRows actualModulus 1403 (.badd 1402 167) := by core033_kernel_decide
theorem stats1403 : actualRows1403.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1403=5388 := by core033_kernel_decide
theorem rows1404 : actualRows1404=WordField.canonicalRows actualModulus 1404 (.rotr 119 7) := by core033_kernel_decide
theorem stats1404 : actualRows1404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1404=5124 := by core033_kernel_decide
theorem rows1405 : actualRows1405=WordField.canonicalRows actualModulus 1405 (.rotr 119 18) := by core033_kernel_decide
theorem stats1405 : actualRows1405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1405=5124 := by core033_kernel_decide
theorem rows1406 : actualRows1406=WordField.canonicalRows actualModulus 1406 (.bxor 1404 1405) := by core033_kernel_decide
theorem stats1406 : actualRows1406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1406=7428 := by core033_kernel_decide
theorem rows1407 : actualRows1407=WordField.canonicalRows actualModulus 1407 (.shr 119 3) := by core033_kernel_decide
theorem stats1407 : actualRows1407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1407=4908 := by core033_kernel_decide
theorem rows1408 : actualRows1408=WordField.canonicalRows actualModulus 1408 (.bxor 1406 1407) := by core033_kernel_decide
theorem stats1408 : actualRows1408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1408=7428 := by core033_kernel_decide
theorem rows1409 : actualRows1409=WordField.canonicalRows actualModulus 1409 (.badd 1403 1408) := by core033_kernel_decide
theorem stats1409 : actualRows1409.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1409=5388 := by core033_kernel_decide
theorem rows1410 : actualRows1410=WordField.canonicalRows actualModulus 1410 (.badd 1409 113) := by core033_kernel_decide
theorem stats1410 : actualRows1410.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1410=5388 := by core033_kernel_decide
theorem rows1411 : actualRows1411=WordField.canonicalRows actualModulus 1411 (.rotr 1397 17) := by core033_kernel_decide
theorem stats1411 : actualRows1411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1411=5124 := by core033_kernel_decide
theorem rows1412 : actualRows1412=WordField.canonicalRows actualModulus 1412 (.rotr 1397 19) := by core033_kernel_decide
theorem stats1412 : actualRows1412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1412=5124 := by core033_kernel_decide
theorem rows1413 : actualRows1413=WordField.canonicalRows actualModulus 1413 (.bxor 1411 1412) := by core033_kernel_decide
theorem stats1413 : actualRows1413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1413=7428 := by core033_kernel_decide
theorem rows1414 : actualRows1414=WordField.canonicalRows actualModulus 1414 (.shr 1397 10) := by core033_kernel_decide
theorem stats1414 : actualRows1414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1414=4404 := by core033_kernel_decide
theorem rows1415 : actualRows1415=WordField.canonicalRows actualModulus 1415 (.bxor 1413 1414) := by core033_kernel_decide
theorem stats1415 : actualRows1415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1415=7428 := by core033_kernel_decide
def partRows20 : List R1CS.Row := actualRows1352++actualRows1353++actualRows1354++actualRows1355++actualRows1356++actualRows1357++actualRows1358++actualRows1359++actualRows1360++actualRows1361++actualRows1362++actualRows1363++actualRows1364++actualRows1365++actualRows1366++actualRows1367++actualRows1368++actualRows1369++actualRows1370++actualRows1371++actualRows1372++actualRows1373++actualRows1374++actualRows1375++actualRows1376++actualRows1377++actualRows1378++actualRows1379++actualRows1380++actualRows1381++actualRows1382++actualRows1383++actualRows1384++actualRows1385++actualRows1386++actualRows1387++actualRows1388++actualRows1389++actualRows1390++actualRows1391++actualRows1392++actualRows1393++actualRows1394++actualRows1395++actualRows1396++actualRows1397++actualRows1398++actualRows1399++actualRows1400++actualRows1401++actualRows1402++actualRows1403++actualRows1404++actualRows1405++actualRows1406++actualRows1407++actualRows1408++actualRows1409++actualRows1410++actualRows1411++actualRows1412++actualRows1413++actualRows1414++actualRows1415
def partOps20 : List WordIR.Op := [.rotr 95 7,.rotr 95 18,.bxor 1352 1353,.shr 95 3,.bxor 1354 1355,.badd 1351 1356,.badd 1357 89,.rotr 1345 17,.rotr 1345 19,.bxor 1359 1360,.shr 1345 10,.bxor 1361 1362,.badd 1363 149,.rotr 101 7,.rotr 101 18,.bxor 1365 1366,.shr 101 3,.bxor 1367 1368,.badd 1364 1369,.badd 1370 95,.rotr 1358 17,.rotr 1358 19,.bxor 1372 1373,.shr 1358 10,.bxor 1374 1375,.badd 1376 155,.rotr 107 7,.rotr 107 18,.bxor 1378 1379,.shr 107 3,.bxor 1380 1381,.badd 1377 1382,.badd 1383 101,.rotr 1371 17,.rotr 1371 19,.bxor 1385 1386,.shr 1371 10,.bxor 1387 1388,.badd 1389 161,.rotr 113 7,.rotr 113 18,.bxor 1391 1392,.shr 113 3,.bxor 1393 1394,.badd 1390 1395,.badd 1396 107,.rotr 1384 17,.rotr 1384 19,.bxor 1398 1399,.shr 1384 10,.bxor 1400 1401,.badd 1402 167,.rotr 119 7,.rotr 119 18,.bxor 1404 1405,.shr 119 3,.bxor 1406 1407,.badd 1403 1408,.badd 1409 113,.rotr 1397 17,.rotr 1397 19,.bxor 1411 1412,.shr 1397 10,.bxor 1413 1414]
theorem partExact20 : partRows20=WordField.rows actualModulus 1352 partOps20 := by
  simp only [partRows20,partOps20,WordField.rows,rows1352,rows1353,rows1354,rows1355,rows1356,rows1357,rows1358,rows1359,rows1360,rows1361,rows1362,rows1363,rows1364,rows1365,rows1366,rows1367,rows1368,rows1369,rows1370,rows1371,rows1372,rows1373,rows1374,rows1375,rows1376,rows1377,rows1378,rows1379,rows1380,rows1381,rows1382,rows1383,rows1384,rows1385,rows1386,rows1387,rows1388,rows1389,rows1390,rows1391,rows1392,rows1393,rows1394,rows1395,rows1396,rows1397,rows1398,rows1399,rows1400,rows1401,rows1402,rows1403,rows1404,rows1405,rows1406,rows1407,rows1408,rows1409,rows1410,rows1411,rows1412,rows1413,rows1414,rows1415,List.append_assoc,List.append_nil]
theorem partLength20 : partOps20.length=64 := by decide
theorem partStats20 : partRows20.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows20=373032 := by
  simp only [partRows20,List.length_append,MatrixRowBlocks.rows_weight_append,stats1352.1,stats1352.2,stats1353.1,stats1353.2,stats1354.1,stats1354.2,stats1355.1,stats1355.2,stats1356.1,stats1356.2,stats1357.1,stats1357.2,stats1358.1,stats1358.2,stats1359.1,stats1359.2,stats1360.1,stats1360.2,stats1361.1,stats1361.2,stats1362.1,stats1362.2,stats1363.1,stats1363.2,stats1364.1,stats1364.2,stats1365.1,stats1365.2,stats1366.1,stats1366.2,stats1367.1,stats1367.2,stats1368.1,stats1368.2,stats1369.1,stats1369.2,stats1370.1,stats1370.2,stats1371.1,stats1371.2,stats1372.1,stats1372.2,stats1373.1,stats1373.2,stats1374.1,stats1374.2,stats1375.1,stats1375.2,stats1376.1,stats1376.2,stats1377.1,stats1377.2,stats1378.1,stats1378.2,stats1379.1,stats1379.2,stats1380.1,stats1380.2,stats1381.1,stats1381.2,stats1382.1,stats1382.2,stats1383.1,stats1383.2,stats1384.1,stats1384.2,stats1385.1,stats1385.2,stats1386.1,stats1386.2,stats1387.1,stats1387.2,stats1388.1,stats1388.2,stats1389.1,stats1389.2,stats1390.1,stats1390.2,stats1391.1,stats1391.2,stats1392.1,stats1392.2,stats1393.1,stats1393.2,stats1394.1,stats1394.2,stats1395.1,stats1395.2,stats1396.1,stats1396.2,stats1397.1,stats1397.2,stats1398.1,stats1398.2,stats1399.1,stats1399.2,stats1400.1,stats1400.2,stats1401.1,stats1401.2,stats1402.1,stats1402.2,stats1403.1,stats1403.2,stats1404.1,stats1404.2,stats1405.1,stats1405.2,stats1406.1,stats1406.2,stats1407.1,stats1407.2,stats1408.1,stats1408.2,stats1409.1,stats1409.2,stats1410.1,stats1410.2,stats1411.1,stats1411.2,stats1412.1,stats1412.2,stats1413.1,stats1413.2,stats1414.1,stats1414.2,stats1415.1,stats1415.2]
  decide
end HashBlockCheckedRows
