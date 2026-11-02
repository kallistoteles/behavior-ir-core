import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData21
import ActualMatrixData22
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1368 : actualRows1368=WordField.canonicalRows actualModulus 1368 (.bxor 1366 1367) := by core033_kernel_decide
theorem stats1368 : actualRows1368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1368=7428 := by core033_kernel_decide
theorem rows1369 : actualRows1369=WordField.canonicalRows actualModulus 1369 (.band 1348 1321) := by core033_kernel_decide
theorem stats1369 : actualRows1369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1369=5124 := by core033_kernel_decide
theorem rows1370 : actualRows1370=WordField.canonicalRows actualModulus 1370 (.band 1348 1294) := by core033_kernel_decide
theorem stats1370 : actualRows1370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1370=5124 := by core033_kernel_decide
theorem rows1371 : actualRows1371=WordField.canonicalRows actualModulus 1371 (.bxor 1369 1370) := by core033_kernel_decide
theorem stats1371 : actualRows1371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1371=7428 := by core033_kernel_decide
theorem rows1372 : actualRows1372=WordField.canonicalRows actualModulus 1372 (.band 1321 1294) := by core033_kernel_decide
theorem stats1372 : actualRows1372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1372=5124 := by core033_kernel_decide
theorem rows1373 : actualRows1373=WordField.canonicalRows actualModulus 1373 (.bxor 1371 1372) := by core033_kernel_decide
theorem stats1373 : actualRows1373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1373=7428 := by core033_kernel_decide
theorem rows1374 : actualRows1374=WordField.canonicalRows actualModulus 1374 (.badd 1368 1373) := by core033_kernel_decide
theorem stats1374 : actualRows1374.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1374=5388 := by core033_kernel_decide
theorem rows1375 : actualRows1375=WordField.canonicalRows actualModulus 1375 (.badd 1363 1374) := by core033_kernel_decide
theorem stats1375 : actualRows1375.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1375=5388 := by core033_kernel_decide
theorem rows1376 : actualRows1376=WordField.canonicalRows actualModulus 1376 (.badd 1267 1363) := by core033_kernel_decide
theorem stats1376 : actualRows1376.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1376=5388 := by core033_kernel_decide
theorem rows1377 : actualRows1377=WordField.canonicalRows actualModulus 1377 (.rotr 1376 6) := by core033_kernel_decide
theorem stats1377 : actualRows1377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1377=5124 := by core033_kernel_decide
theorem rows1378 : actualRows1378=WordField.canonicalRows actualModulus 1378 (.rotr 1376 11) := by core033_kernel_decide
theorem stats1378 : actualRows1378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1378=5124 := by core033_kernel_decide
theorem rows1379 : actualRows1379=WordField.canonicalRows actualModulus 1379 (.bxor 1377 1378) := by core033_kernel_decide
theorem stats1379 : actualRows1379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1379=7428 := by core033_kernel_decide
theorem rows1380 : actualRows1380=WordField.canonicalRows actualModulus 1380 (.rotr 1376 25) := by core033_kernel_decide
theorem stats1380 : actualRows1380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1380=5124 := by core033_kernel_decide
theorem rows1381 : actualRows1381=WordField.canonicalRows actualModulus 1381 (.bxor 1379 1380) := by core033_kernel_decide
theorem stats1381 : actualRows1381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1381=7428 := by core033_kernel_decide
theorem rows1382 : actualRows1382=WordField.canonicalRows actualModulus 1382 (.badd 1295 1381) := by core033_kernel_decide
theorem stats1382 : actualRows1382.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1382=5388 := by core033_kernel_decide
theorem rows1383 : actualRows1383=WordField.canonicalRows actualModulus 1383 (.band 1376 1349) := by core033_kernel_decide
theorem stats1383 : actualRows1383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1383=5124 := by core033_kernel_decide
theorem rows1384 : actualRows1384=WordField.canonicalRows actualModulus 1384 (.bnot 1376) := by core033_kernel_decide
theorem stats1384 : actualRows1384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1384=6276 := by core033_kernel_decide
theorem rows1385 : actualRows1385=WordField.canonicalRows actualModulus 1385 (.band 1384 1322) := by core033_kernel_decide
theorem stats1385 : actualRows1385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1385=5124 := by core033_kernel_decide
theorem rows1386 : actualRows1386=WordField.canonicalRows actualModulus 1386 (.bxor 1383 1385) := by core033_kernel_decide
theorem stats1386 : actualRows1386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1386=7428 := by core033_kernel_decide
theorem rows1387 : actualRows1387=WordField.canonicalRows actualModulus 1387 (.badd 1382 1386) := by core033_kernel_decide
theorem stats1387 : actualRows1387.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1387=5388 := by core033_kernel_decide
theorem rows1388 : actualRows1388=WordField.canonicalRows actualModulus 1388 (.literal (BitVec.ofNat 32 3210313671)) := by core033_kernel_decide
theorem stats1388 : actualRows1388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1388=4476 := by core033_kernel_decide
theorem rows1389 : actualRows1389=WordField.canonicalRows actualModulus 1389 (.badd 1387 1388) := by core033_kernel_decide
theorem stats1389 : actualRows1389.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1389=5388 := by core033_kernel_decide
theorem rows1390 : actualRows1390=WordField.canonicalRows actualModulus 1390 (.badd 1389 179) := by core033_kernel_decide
theorem stats1390 : actualRows1390.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1390=5388 := by core033_kernel_decide
theorem rows1391 : actualRows1391=WordField.canonicalRows actualModulus 1391 (.rotr 1375 2) := by core033_kernel_decide
theorem stats1391 : actualRows1391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1391=5124 := by core033_kernel_decide
theorem rows1392 : actualRows1392=WordField.canonicalRows actualModulus 1392 (.rotr 1375 13) := by core033_kernel_decide
theorem stats1392 : actualRows1392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1392=5124 := by core033_kernel_decide
theorem rows1393 : actualRows1393=WordField.canonicalRows actualModulus 1393 (.bxor 1391 1392) := by core033_kernel_decide
theorem stats1393 : actualRows1393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1393=7428 := by core033_kernel_decide
theorem rows1394 : actualRows1394=WordField.canonicalRows actualModulus 1394 (.rotr 1375 22) := by core033_kernel_decide
theorem stats1394 : actualRows1394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1394=5124 := by core033_kernel_decide
theorem rows1395 : actualRows1395=WordField.canonicalRows actualModulus 1395 (.bxor 1393 1394) := by core033_kernel_decide
theorem stats1395 : actualRows1395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1395=7428 := by core033_kernel_decide
theorem rows1396 : actualRows1396=WordField.canonicalRows actualModulus 1396 (.band 1375 1348) := by core033_kernel_decide
theorem stats1396 : actualRows1396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1396=5124 := by core033_kernel_decide
theorem rows1397 : actualRows1397=WordField.canonicalRows actualModulus 1397 (.band 1375 1321) := by core033_kernel_decide
theorem stats1397 : actualRows1397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1397=5124 := by core033_kernel_decide
theorem rows1398 : actualRows1398=WordField.canonicalRows actualModulus 1398 (.bxor 1396 1397) := by core033_kernel_decide
theorem stats1398 : actualRows1398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1398=7428 := by core033_kernel_decide
theorem rows1399 : actualRows1399=WordField.canonicalRows actualModulus 1399 (.band 1348 1321) := by core033_kernel_decide
theorem stats1399 : actualRows1399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1399=5124 := by core033_kernel_decide
theorem rows1400 : actualRows1400=WordField.canonicalRows actualModulus 1400 (.bxor 1398 1399) := by core033_kernel_decide
theorem stats1400 : actualRows1400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1400=7428 := by core033_kernel_decide
theorem rows1401 : actualRows1401=WordField.canonicalRows actualModulus 1401 (.badd 1395 1400) := by core033_kernel_decide
theorem stats1401 : actualRows1401.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1401=5388 := by core033_kernel_decide
theorem rows1402 : actualRows1402=WordField.canonicalRows actualModulus 1402 (.badd 1390 1401) := by core033_kernel_decide
theorem stats1402 : actualRows1402.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1402=5388 := by core033_kernel_decide
theorem rows1403 : actualRows1403=WordField.canonicalRows actualModulus 1403 (.badd 1294 1390) := by core033_kernel_decide
theorem stats1403 : actualRows1403.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1403=5388 := by core033_kernel_decide
theorem rows1404 : actualRows1404=WordField.canonicalRows actualModulus 1404 (.rotr 1403 6) := by core033_kernel_decide
theorem stats1404 : actualRows1404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1404=5124 := by core033_kernel_decide
theorem rows1405 : actualRows1405=WordField.canonicalRows actualModulus 1405 (.rotr 1403 11) := by core033_kernel_decide
theorem stats1405 : actualRows1405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1405=5124 := by core033_kernel_decide
theorem rows1406 : actualRows1406=WordField.canonicalRows actualModulus 1406 (.bxor 1404 1405) := by core033_kernel_decide
theorem stats1406 : actualRows1406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1406=7428 := by core033_kernel_decide
theorem rows1407 : actualRows1407=WordField.canonicalRows actualModulus 1407 (.rotr 1403 25) := by core033_kernel_decide
theorem stats1407 : actualRows1407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1407=5124 := by core033_kernel_decide
theorem rows1408 : actualRows1408=WordField.canonicalRows actualModulus 1408 (.bxor 1406 1407) := by core033_kernel_decide
theorem stats1408 : actualRows1408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1408=7428 := by core033_kernel_decide
theorem rows1409 : actualRows1409=WordField.canonicalRows actualModulus 1409 (.badd 1322 1408) := by core033_kernel_decide
theorem stats1409 : actualRows1409.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1409=5388 := by core033_kernel_decide
theorem rows1410 : actualRows1410=WordField.canonicalRows actualModulus 1410 (.band 1403 1376) := by core033_kernel_decide
theorem stats1410 : actualRows1410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1410=5124 := by core033_kernel_decide
theorem rows1411 : actualRows1411=WordField.canonicalRows actualModulus 1411 (.bnot 1403) := by core033_kernel_decide
theorem stats1411 : actualRows1411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1411=6276 := by core033_kernel_decide
theorem rows1412 : actualRows1412=WordField.canonicalRows actualModulus 1412 (.band 1411 1349) := by core033_kernel_decide
theorem stats1412 : actualRows1412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1412=5124 := by core033_kernel_decide
theorem rows1413 : actualRows1413=WordField.canonicalRows actualModulus 1413 (.bxor 1410 1412) := by core033_kernel_decide
theorem stats1413 : actualRows1413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1413=7428 := by core033_kernel_decide
theorem rows1414 : actualRows1414=WordField.canonicalRows actualModulus 1414 (.badd 1409 1413) := by core033_kernel_decide
theorem stats1414 : actualRows1414.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1414=5388 := by core033_kernel_decide
theorem rows1415 : actualRows1415=WordField.canonicalRows actualModulus 1415 (.literal (BitVec.ofNat 32 3336571891)) := by core033_kernel_decide
theorem stats1415 : actualRows1415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1415=3972 := by core033_kernel_decide
theorem rows1416 : actualRows1416=WordField.canonicalRows actualModulus 1416 (.badd 1414 1415) := by core033_kernel_decide
theorem stats1416 : actualRows1416.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1416=5388 := by core033_kernel_decide
theorem rows1417 : actualRows1417=WordField.canonicalRows actualModulus 1417 (.badd 1416 192) := by core033_kernel_decide
theorem stats1417 : actualRows1417.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1417=5388 := by core033_kernel_decide
theorem rows1418 : actualRows1418=WordField.canonicalRows actualModulus 1418 (.rotr 1402 2) := by core033_kernel_decide
theorem stats1418 : actualRows1418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1418=5124 := by core033_kernel_decide
theorem rows1419 : actualRows1419=WordField.canonicalRows actualModulus 1419 (.rotr 1402 13) := by core033_kernel_decide
theorem stats1419 : actualRows1419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1419=5124 := by core033_kernel_decide
theorem rows1420 : actualRows1420=WordField.canonicalRows actualModulus 1420 (.bxor 1418 1419) := by core033_kernel_decide
theorem stats1420 : actualRows1420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1420=7428 := by core033_kernel_decide
theorem rows1421 : actualRows1421=WordField.canonicalRows actualModulus 1421 (.rotr 1402 22) := by core033_kernel_decide
theorem stats1421 : actualRows1421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1421=5124 := by core033_kernel_decide
theorem rows1422 : actualRows1422=WordField.canonicalRows actualModulus 1422 (.bxor 1420 1421) := by core033_kernel_decide
theorem stats1422 : actualRows1422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1422=7428 := by core033_kernel_decide
theorem rows1423 : actualRows1423=WordField.canonicalRows actualModulus 1423 (.band 1402 1375) := by core033_kernel_decide
theorem stats1423 : actualRows1423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1423=5124 := by core033_kernel_decide
theorem rows1424 : actualRows1424=WordField.canonicalRows actualModulus 1424 (.band 1402 1348) := by core033_kernel_decide
theorem stats1424 : actualRows1424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1424=5124 := by core033_kernel_decide
theorem rows1425 : actualRows1425=WordField.canonicalRows actualModulus 1425 (.bxor 1423 1424) := by core033_kernel_decide
theorem stats1425 : actualRows1425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1425=7428 := by core033_kernel_decide
theorem rows1426 : actualRows1426=WordField.canonicalRows actualModulus 1426 (.band 1375 1348) := by core033_kernel_decide
theorem stats1426 : actualRows1426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1426=5124 := by core033_kernel_decide
theorem rows1427 : actualRows1427=WordField.canonicalRows actualModulus 1427 (.bxor 1425 1426) := by core033_kernel_decide
theorem stats1427 : actualRows1427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1427=7428 := by core033_kernel_decide
theorem rows1428 : actualRows1428=WordField.canonicalRows actualModulus 1428 (.badd 1422 1427) := by core033_kernel_decide
theorem stats1428 : actualRows1428.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1428=5388 := by core033_kernel_decide
theorem rows1429 : actualRows1429=WordField.canonicalRows actualModulus 1429 (.badd 1417 1428) := by core033_kernel_decide
theorem stats1429 : actualRows1429.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1429=5388 := by core033_kernel_decide
theorem rows1430 : actualRows1430=WordField.canonicalRows actualModulus 1430 (.badd 1321 1417) := by core033_kernel_decide
theorem stats1430 : actualRows1430.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1430=5388 := by core033_kernel_decide
theorem rows1431 : actualRows1431=WordField.canonicalRows actualModulus 1431 (.rotr 1430 6) := by core033_kernel_decide
theorem stats1431 : actualRows1431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1431=5124 := by core033_kernel_decide
def partRows21 : List R1CS.Row := actualRows1368++actualRows1369++actualRows1370++actualRows1371++actualRows1372++actualRows1373++actualRows1374++actualRows1375++actualRows1376++actualRows1377++actualRows1378++actualRows1379++actualRows1380++actualRows1381++actualRows1382++actualRows1383++actualRows1384++actualRows1385++actualRows1386++actualRows1387++actualRows1388++actualRows1389++actualRows1390++actualRows1391++actualRows1392++actualRows1393++actualRows1394++actualRows1395++actualRows1396++actualRows1397++actualRows1398++actualRows1399++actualRows1400++actualRows1401++actualRows1402++actualRows1403++actualRows1404++actualRows1405++actualRows1406++actualRows1407++actualRows1408++actualRows1409++actualRows1410++actualRows1411++actualRows1412++actualRows1413++actualRows1414++actualRows1415++actualRows1416++actualRows1417++actualRows1418++actualRows1419++actualRows1420++actualRows1421++actualRows1422++actualRows1423++actualRows1424++actualRows1425++actualRows1426++actualRows1427++actualRows1428++actualRows1429++actualRows1430++actualRows1431
def partOps21 : List WordIR.Op := [.bxor 1366 1367,.band 1348 1321,.band 1348 1294,.bxor 1369 1370,.band 1321 1294,.bxor 1371 1372,.badd 1368 1373,.badd 1363 1374,.badd 1267 1363,.rotr 1376 6,.rotr 1376 11,.bxor 1377 1378,.rotr 1376 25,.bxor 1379 1380,.badd 1295 1381,.band 1376 1349,.bnot 1376,.band 1384 1322,.bxor 1383 1385,.badd 1382 1386,.literal (BitVec.ofNat 32 3210313671),.badd 1387 1388,.badd 1389 179,.rotr 1375 2,.rotr 1375 13,.bxor 1391 1392,.rotr 1375 22,.bxor 1393 1394,.band 1375 1348,.band 1375 1321,.bxor 1396 1397,.band 1348 1321,.bxor 1398 1399,.badd 1395 1400,.badd 1390 1401,.badd 1294 1390,.rotr 1403 6,.rotr 1403 11,.bxor 1404 1405,.rotr 1403 25,.bxor 1406 1407,.badd 1322 1408,.band 1403 1376,.bnot 1403,.band 1411 1349,.bxor 1410 1412,.badd 1409 1413,.literal (BitVec.ofNat 32 3336571891),.badd 1414 1415,.badd 1416 192,.rotr 1402 2,.rotr 1402 13,.bxor 1418 1419,.rotr 1402 22,.bxor 1420 1421,.band 1402 1375,.band 1402 1348,.bxor 1423 1424,.band 1375 1348,.bxor 1425 1426,.badd 1422 1427,.badd 1417 1428,.badd 1321 1417,.rotr 1430 6]
theorem partRowsExact21 : partRows21=WordField.rows actualModulus 1368 partOps21 := by
  simp only [partRows21,partOps21,WordField.rows,rows1368,rows1369,rows1370,rows1371,rows1372,rows1373,rows1374,rows1375,rows1376,rows1377,rows1378,rows1379,rows1380,rows1381,rows1382,rows1383,rows1384,rows1385,rows1386,rows1387,rows1388,rows1389,rows1390,rows1391,rows1392,rows1393,rows1394,rows1395,rows1396,rows1397,rows1398,rows1399,rows1400,rows1401,rows1402,rows1403,rows1404,rows1405,rows1406,rows1407,rows1408,rows1409,rows1410,rows1411,rows1412,rows1413,rows1414,rows1415,rows1416,rows1417,rows1418,rows1419,rows1420,rows1421,rows1422,rows1423,rows1424,rows1425,rows1426,rows1427,rows1428,rows1429,rows1430,rows1431,List.append_assoc,List.append_nil]
theorem partOpsLength21 : partOps21.length=64 := by decide
theorem partStats21 : partRows21.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows21=372096 := by
  simp only [partRows21,List.length_append,MatrixRowBlocks.rows_weight_append,stats1368.1,stats1368.2,stats1369.1,stats1369.2,stats1370.1,stats1370.2,stats1371.1,stats1371.2,stats1372.1,stats1372.2,stats1373.1,stats1373.2,stats1374.1,stats1374.2,stats1375.1,stats1375.2,stats1376.1,stats1376.2,stats1377.1,stats1377.2,stats1378.1,stats1378.2,stats1379.1,stats1379.2,stats1380.1,stats1380.2,stats1381.1,stats1381.2,stats1382.1,stats1382.2,stats1383.1,stats1383.2,stats1384.1,stats1384.2,stats1385.1,stats1385.2,stats1386.1,stats1386.2,stats1387.1,stats1387.2,stats1388.1,stats1388.2,stats1389.1,stats1389.2,stats1390.1,stats1390.2,stats1391.1,stats1391.2,stats1392.1,stats1392.2,stats1393.1,stats1393.2,stats1394.1,stats1394.2,stats1395.1,stats1395.2,stats1396.1,stats1396.2,stats1397.1,stats1397.2,stats1398.1,stats1398.2,stats1399.1,stats1399.2,stats1400.1,stats1400.2,stats1401.1,stats1401.2,stats1402.1,stats1402.2,stats1403.1,stats1403.2,stats1404.1,stats1404.2,stats1405.1,stats1405.2,stats1406.1,stats1406.2,stats1407.1,stats1407.2,stats1408.1,stats1408.2,stats1409.1,stats1409.2,stats1410.1,stats1410.2,stats1411.1,stats1411.2,stats1412.1,stats1412.2,stats1413.1,stats1413.2,stats1414.1,stats1414.2,stats1415.1,stats1415.2,stats1416.1,stats1416.2,stats1417.1,stats1417.2,stats1418.1,stats1418.2,stats1419.1,stats1419.2,stats1420.1,stats1420.2,stats1421.1,stats1421.2,stats1422.1,stats1422.2,stats1423.1,stats1423.2,stats1424.1,stats1424.2,stats1425.1,stats1425.2,stats1426.1,stats1426.2,stats1427.1,stats1427.2,stats1428.1,stats1428.2,stats1429.1,stats1429.2,stats1430.1,stats1430.2,stats1431.1,stats1431.2]
  decide
end ActualSHAMatrixRows
