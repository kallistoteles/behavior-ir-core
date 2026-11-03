import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData22
import HashBlockInstructionMatrixData23
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1416 : actualRows1416=WordField.canonicalRows actualModulus 1416 (.badd 1415 1332) := by core033_kernel_decide
theorem stats1416 : actualRows1416.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1416=5388 := by core033_kernel_decide
theorem rows1417 : actualRows1417=WordField.canonicalRows actualModulus 1417 (.rotr 125 7) := by core033_kernel_decide
theorem stats1417 : actualRows1417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1417=5124 := by core033_kernel_decide
theorem rows1418 : actualRows1418=WordField.canonicalRows actualModulus 1418 (.rotr 125 18) := by core033_kernel_decide
theorem stats1418 : actualRows1418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1418=5124 := by core033_kernel_decide
theorem rows1419 : actualRows1419=WordField.canonicalRows actualModulus 1419 (.bxor 1417 1418) := by core033_kernel_decide
theorem stats1419 : actualRows1419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1419=7428 := by core033_kernel_decide
theorem rows1420 : actualRows1420=WordField.canonicalRows actualModulus 1420 (.shr 125 3) := by core033_kernel_decide
theorem stats1420 : actualRows1420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1420=4908 := by core033_kernel_decide
theorem rows1421 : actualRows1421=WordField.canonicalRows actualModulus 1421 (.bxor 1419 1420) := by core033_kernel_decide
theorem stats1421 : actualRows1421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1421=7428 := by core033_kernel_decide
theorem rows1422 : actualRows1422=WordField.canonicalRows actualModulus 1422 (.badd 1416 1421) := by core033_kernel_decide
theorem stats1422 : actualRows1422.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1422=5388 := by core033_kernel_decide
theorem rows1423 : actualRows1423=WordField.canonicalRows actualModulus 1423 (.badd 1422 119) := by core033_kernel_decide
theorem stats1423 : actualRows1423.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1423=5388 := by core033_kernel_decide
theorem rows1424 : actualRows1424=WordField.canonicalRows actualModulus 1424 (.rotr 1410 17) := by core033_kernel_decide
theorem stats1424 : actualRows1424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1424=5124 := by core033_kernel_decide
theorem rows1425 : actualRows1425=WordField.canonicalRows actualModulus 1425 (.rotr 1410 19) := by core033_kernel_decide
theorem stats1425 : actualRows1425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1425=5124 := by core033_kernel_decide
theorem rows1426 : actualRows1426=WordField.canonicalRows actualModulus 1426 (.bxor 1424 1425) := by core033_kernel_decide
theorem stats1426 : actualRows1426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1426=7428 := by core033_kernel_decide
theorem rows1427 : actualRows1427=WordField.canonicalRows actualModulus 1427 (.shr 1410 10) := by core033_kernel_decide
theorem stats1427 : actualRows1427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1427=4404 := by core033_kernel_decide
theorem rows1428 : actualRows1428=WordField.canonicalRows actualModulus 1428 (.bxor 1426 1427) := by core033_kernel_decide
theorem stats1428 : actualRows1428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1428=7428 := by core033_kernel_decide
theorem rows1429 : actualRows1429=WordField.canonicalRows actualModulus 1429 (.badd 1428 1345) := by core033_kernel_decide
theorem stats1429 : actualRows1429.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1429=5388 := by core033_kernel_decide
theorem rows1430 : actualRows1430=WordField.canonicalRows actualModulus 1430 (.rotr 131 7) := by core033_kernel_decide
theorem stats1430 : actualRows1430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1430=5124 := by core033_kernel_decide
theorem rows1431 : actualRows1431=WordField.canonicalRows actualModulus 1431 (.rotr 131 18) := by core033_kernel_decide
theorem stats1431 : actualRows1431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1431=5124 := by core033_kernel_decide
theorem rows1432 : actualRows1432=WordField.canonicalRows actualModulus 1432 (.bxor 1430 1431) := by core033_kernel_decide
theorem stats1432 : actualRows1432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1432=7428 := by core033_kernel_decide
theorem rows1433 : actualRows1433=WordField.canonicalRows actualModulus 1433 (.shr 131 3) := by core033_kernel_decide
theorem stats1433 : actualRows1433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1433=4908 := by core033_kernel_decide
theorem rows1434 : actualRows1434=WordField.canonicalRows actualModulus 1434 (.bxor 1432 1433) := by core033_kernel_decide
theorem stats1434 : actualRows1434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1434=7428 := by core033_kernel_decide
theorem rows1435 : actualRows1435=WordField.canonicalRows actualModulus 1435 (.badd 1429 1434) := by core033_kernel_decide
theorem stats1435 : actualRows1435.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1435=5388 := by core033_kernel_decide
theorem rows1436 : actualRows1436=WordField.canonicalRows actualModulus 1436 (.badd 1435 125) := by core033_kernel_decide
theorem stats1436 : actualRows1436.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1436=5388 := by core033_kernel_decide
theorem rows1437 : actualRows1437=WordField.canonicalRows actualModulus 1437 (.rotr 1423 17) := by core033_kernel_decide
theorem stats1437 : actualRows1437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1437=5124 := by core033_kernel_decide
theorem rows1438 : actualRows1438=WordField.canonicalRows actualModulus 1438 (.rotr 1423 19) := by core033_kernel_decide
theorem stats1438 : actualRows1438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1438=5124 := by core033_kernel_decide
theorem rows1439 : actualRows1439=WordField.canonicalRows actualModulus 1439 (.bxor 1437 1438) := by core033_kernel_decide
theorem stats1439 : actualRows1439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1439=7428 := by core033_kernel_decide
theorem rows1440 : actualRows1440=WordField.canonicalRows actualModulus 1440 (.shr 1423 10) := by core033_kernel_decide
theorem stats1440 : actualRows1440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1440=4404 := by core033_kernel_decide
theorem rows1441 : actualRows1441=WordField.canonicalRows actualModulus 1441 (.bxor 1439 1440) := by core033_kernel_decide
theorem stats1441 : actualRows1441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1441=7428 := by core033_kernel_decide
theorem rows1442 : actualRows1442=WordField.canonicalRows actualModulus 1442 (.badd 1441 1358) := by core033_kernel_decide
theorem stats1442 : actualRows1442.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1442=5388 := by core033_kernel_decide
theorem rows1443 : actualRows1443=WordField.canonicalRows actualModulus 1443 (.rotr 137 7) := by core033_kernel_decide
theorem stats1443 : actualRows1443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1443=5124 := by core033_kernel_decide
theorem rows1444 : actualRows1444=WordField.canonicalRows actualModulus 1444 (.rotr 137 18) := by core033_kernel_decide
theorem stats1444 : actualRows1444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1444=5124 := by core033_kernel_decide
theorem rows1445 : actualRows1445=WordField.canonicalRows actualModulus 1445 (.bxor 1443 1444) := by core033_kernel_decide
theorem stats1445 : actualRows1445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1445=7428 := by core033_kernel_decide
theorem rows1446 : actualRows1446=WordField.canonicalRows actualModulus 1446 (.shr 137 3) := by core033_kernel_decide
theorem stats1446 : actualRows1446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1446=4908 := by core033_kernel_decide
theorem rows1447 : actualRows1447=WordField.canonicalRows actualModulus 1447 (.bxor 1445 1446) := by core033_kernel_decide
theorem stats1447 : actualRows1447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1447=7428 := by core033_kernel_decide
theorem rows1448 : actualRows1448=WordField.canonicalRows actualModulus 1448 (.badd 1442 1447) := by core033_kernel_decide
theorem stats1448 : actualRows1448.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1448=5388 := by core033_kernel_decide
theorem rows1449 : actualRows1449=WordField.canonicalRows actualModulus 1449 (.badd 1448 131) := by core033_kernel_decide
theorem stats1449 : actualRows1449.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1449=5388 := by core033_kernel_decide
theorem rows1450 : actualRows1450=WordField.canonicalRows actualModulus 1450 (.rotr 1436 17) := by core033_kernel_decide
theorem stats1450 : actualRows1450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1450=5124 := by core033_kernel_decide
theorem rows1451 : actualRows1451=WordField.canonicalRows actualModulus 1451 (.rotr 1436 19) := by core033_kernel_decide
theorem stats1451 : actualRows1451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1451=5124 := by core033_kernel_decide
theorem rows1452 : actualRows1452=WordField.canonicalRows actualModulus 1452 (.bxor 1450 1451) := by core033_kernel_decide
theorem stats1452 : actualRows1452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1452=7428 := by core033_kernel_decide
theorem rows1453 : actualRows1453=WordField.canonicalRows actualModulus 1453 (.shr 1436 10) := by core033_kernel_decide
theorem stats1453 : actualRows1453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1453=4404 := by core033_kernel_decide
theorem rows1454 : actualRows1454=WordField.canonicalRows actualModulus 1454 (.bxor 1452 1453) := by core033_kernel_decide
theorem stats1454 : actualRows1454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1454=7428 := by core033_kernel_decide
theorem rows1455 : actualRows1455=WordField.canonicalRows actualModulus 1455 (.badd 1454 1371) := by core033_kernel_decide
theorem stats1455 : actualRows1455.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1455=5388 := by core033_kernel_decide
theorem rows1456 : actualRows1456=WordField.canonicalRows actualModulus 1456 (.rotr 143 7) := by core033_kernel_decide
theorem stats1456 : actualRows1456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1456=5124 := by core033_kernel_decide
theorem rows1457 : actualRows1457=WordField.canonicalRows actualModulus 1457 (.rotr 143 18) := by core033_kernel_decide
theorem stats1457 : actualRows1457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1457=5124 := by core033_kernel_decide
theorem rows1458 : actualRows1458=WordField.canonicalRows actualModulus 1458 (.bxor 1456 1457) := by core033_kernel_decide
theorem stats1458 : actualRows1458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1458=7428 := by core033_kernel_decide
theorem rows1459 : actualRows1459=WordField.canonicalRows actualModulus 1459 (.shr 143 3) := by core033_kernel_decide
theorem stats1459 : actualRows1459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1459=4908 := by core033_kernel_decide
theorem rows1460 : actualRows1460=WordField.canonicalRows actualModulus 1460 (.bxor 1458 1459) := by core033_kernel_decide
theorem stats1460 : actualRows1460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1460=7428 := by core033_kernel_decide
theorem rows1461 : actualRows1461=WordField.canonicalRows actualModulus 1461 (.badd 1455 1460) := by core033_kernel_decide
theorem stats1461 : actualRows1461.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1461=5388 := by core033_kernel_decide
theorem rows1462 : actualRows1462=WordField.canonicalRows actualModulus 1462 (.badd 1461 137) := by core033_kernel_decide
theorem stats1462 : actualRows1462.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1462=5388 := by core033_kernel_decide
theorem rows1463 : actualRows1463=WordField.canonicalRows actualModulus 1463 (.rotr 1449 17) := by core033_kernel_decide
theorem stats1463 : actualRows1463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1463=5124 := by core033_kernel_decide
theorem rows1464 : actualRows1464=WordField.canonicalRows actualModulus 1464 (.rotr 1449 19) := by core033_kernel_decide
theorem stats1464 : actualRows1464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1464=5124 := by core033_kernel_decide
theorem rows1465 : actualRows1465=WordField.canonicalRows actualModulus 1465 (.bxor 1463 1464) := by core033_kernel_decide
theorem stats1465 : actualRows1465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1465=7428 := by core033_kernel_decide
theorem rows1466 : actualRows1466=WordField.canonicalRows actualModulus 1466 (.shr 1449 10) := by core033_kernel_decide
theorem stats1466 : actualRows1466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1466=4404 := by core033_kernel_decide
theorem rows1467 : actualRows1467=WordField.canonicalRows actualModulus 1467 (.bxor 1465 1466) := by core033_kernel_decide
theorem stats1467 : actualRows1467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1467=7428 := by core033_kernel_decide
theorem rows1468 : actualRows1468=WordField.canonicalRows actualModulus 1468 (.badd 1467 1384) := by core033_kernel_decide
theorem stats1468 : actualRows1468.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1468=5388 := by core033_kernel_decide
theorem rows1469 : actualRows1469=WordField.canonicalRows actualModulus 1469 (.rotr 149 7) := by core033_kernel_decide
theorem stats1469 : actualRows1469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1469=5124 := by core033_kernel_decide
theorem rows1470 : actualRows1470=WordField.canonicalRows actualModulus 1470 (.rotr 149 18) := by core033_kernel_decide
theorem stats1470 : actualRows1470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1470=5124 := by core033_kernel_decide
theorem rows1471 : actualRows1471=WordField.canonicalRows actualModulus 1471 (.bxor 1469 1470) := by core033_kernel_decide
theorem stats1471 : actualRows1471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1471=7428 := by core033_kernel_decide
theorem rows1472 : actualRows1472=WordField.canonicalRows actualModulus 1472 (.shr 149 3) := by core033_kernel_decide
theorem stats1472 : actualRows1472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1472=4908 := by core033_kernel_decide
theorem rows1473 : actualRows1473=WordField.canonicalRows actualModulus 1473 (.bxor 1471 1472) := by core033_kernel_decide
theorem stats1473 : actualRows1473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1473=7428 := by core033_kernel_decide
theorem rows1474 : actualRows1474=WordField.canonicalRows actualModulus 1474 (.badd 1468 1473) := by core033_kernel_decide
theorem stats1474 : actualRows1474.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1474=5388 := by core033_kernel_decide
theorem rows1475 : actualRows1475=WordField.canonicalRows actualModulus 1475 (.badd 1474 143) := by core033_kernel_decide
theorem stats1475 : actualRows1475.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1475=5388 := by core033_kernel_decide
theorem rows1476 : actualRows1476=WordField.canonicalRows actualModulus 1476 (.rotr 1462 17) := by core033_kernel_decide
theorem stats1476 : actualRows1476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1476=5124 := by core033_kernel_decide
theorem rows1477 : actualRows1477=WordField.canonicalRows actualModulus 1477 (.rotr 1462 19) := by core033_kernel_decide
theorem stats1477 : actualRows1477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1477=5124 := by core033_kernel_decide
theorem rows1478 : actualRows1478=WordField.canonicalRows actualModulus 1478 (.bxor 1476 1477) := by core033_kernel_decide
theorem stats1478 : actualRows1478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1478=7428 := by core033_kernel_decide
theorem rows1479 : actualRows1479=WordField.canonicalRows actualModulus 1479 (.shr 1462 10) := by core033_kernel_decide
theorem stats1479 : actualRows1479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1479=4404 := by core033_kernel_decide
def partRows21 : List R1CS.Row := actualRows1416++actualRows1417++actualRows1418++actualRows1419++actualRows1420++actualRows1421++actualRows1422++actualRows1423++actualRows1424++actualRows1425++actualRows1426++actualRows1427++actualRows1428++actualRows1429++actualRows1430++actualRows1431++actualRows1432++actualRows1433++actualRows1434++actualRows1435++actualRows1436++actualRows1437++actualRows1438++actualRows1439++actualRows1440++actualRows1441++actualRows1442++actualRows1443++actualRows1444++actualRows1445++actualRows1446++actualRows1447++actualRows1448++actualRows1449++actualRows1450++actualRows1451++actualRows1452++actualRows1453++actualRows1454++actualRows1455++actualRows1456++actualRows1457++actualRows1458++actualRows1459++actualRows1460++actualRows1461++actualRows1462++actualRows1463++actualRows1464++actualRows1465++actualRows1466++actualRows1467++actualRows1468++actualRows1469++actualRows1470++actualRows1471++actualRows1472++actualRows1473++actualRows1474++actualRows1475++actualRows1476++actualRows1477++actualRows1478++actualRows1479
def partOps21 : List WordIR.Op := [.badd 1415 1332,.rotr 125 7,.rotr 125 18,.bxor 1417 1418,.shr 125 3,.bxor 1419 1420,.badd 1416 1421,.badd 1422 119,.rotr 1410 17,.rotr 1410 19,.bxor 1424 1425,.shr 1410 10,.bxor 1426 1427,.badd 1428 1345,.rotr 131 7,.rotr 131 18,.bxor 1430 1431,.shr 131 3,.bxor 1432 1433,.badd 1429 1434,.badd 1435 125,.rotr 1423 17,.rotr 1423 19,.bxor 1437 1438,.shr 1423 10,.bxor 1439 1440,.badd 1441 1358,.rotr 137 7,.rotr 137 18,.bxor 1443 1444,.shr 137 3,.bxor 1445 1446,.badd 1442 1447,.badd 1448 131,.rotr 1436 17,.rotr 1436 19,.bxor 1450 1451,.shr 1436 10,.bxor 1452 1453,.badd 1454 1371,.rotr 143 7,.rotr 143 18,.bxor 1456 1457,.shr 143 3,.bxor 1458 1459,.badd 1455 1460,.badd 1461 137,.rotr 1449 17,.rotr 1449 19,.bxor 1463 1464,.shr 1449 10,.bxor 1465 1466,.badd 1467 1384,.rotr 149 7,.rotr 149 18,.bxor 1469 1470,.shr 149 3,.bxor 1471 1472,.badd 1468 1473,.badd 1474 143,.rotr 1462 17,.rotr 1462 19,.bxor 1476 1477,.shr 1462 10]
theorem partExact21 : partRows21=WordField.rows actualModulus 1416 partOps21 := by
  simp only [partRows21,partOps21,WordField.rows,rows1416,rows1417,rows1418,rows1419,rows1420,rows1421,rows1422,rows1423,rows1424,rows1425,rows1426,rows1427,rows1428,rows1429,rows1430,rows1431,rows1432,rows1433,rows1434,rows1435,rows1436,rows1437,rows1438,rows1439,rows1440,rows1441,rows1442,rows1443,rows1444,rows1445,rows1446,rows1447,rows1448,rows1449,rows1450,rows1451,rows1452,rows1453,rows1454,rows1455,rows1456,rows1457,rows1458,rows1459,rows1460,rows1461,rows1462,rows1463,rows1464,rows1465,rows1466,rows1467,rows1468,rows1469,rows1470,rows1471,rows1472,rows1473,rows1474,rows1475,rows1476,rows1477,rows1478,rows1479,List.append_assoc,List.append_nil]
theorem partLength21 : partOps21.length=64 := by decide
theorem partStats21 : partRows21.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows21=370992 := by
  simp only [partRows21,List.length_append,MatrixRowBlocks.rows_weight_append,stats1416.1,stats1416.2,stats1417.1,stats1417.2,stats1418.1,stats1418.2,stats1419.1,stats1419.2,stats1420.1,stats1420.2,stats1421.1,stats1421.2,stats1422.1,stats1422.2,stats1423.1,stats1423.2,stats1424.1,stats1424.2,stats1425.1,stats1425.2,stats1426.1,stats1426.2,stats1427.1,stats1427.2,stats1428.1,stats1428.2,stats1429.1,stats1429.2,stats1430.1,stats1430.2,stats1431.1,stats1431.2,stats1432.1,stats1432.2,stats1433.1,stats1433.2,stats1434.1,stats1434.2,stats1435.1,stats1435.2,stats1436.1,stats1436.2,stats1437.1,stats1437.2,stats1438.1,stats1438.2,stats1439.1,stats1439.2,stats1440.1,stats1440.2,stats1441.1,stats1441.2,stats1442.1,stats1442.2,stats1443.1,stats1443.2,stats1444.1,stats1444.2,stats1445.1,stats1445.2,stats1446.1,stats1446.2,stats1447.1,stats1447.2,stats1448.1,stats1448.2,stats1449.1,stats1449.2,stats1450.1,stats1450.2,stats1451.1,stats1451.2,stats1452.1,stats1452.2,stats1453.1,stats1453.2,stats1454.1,stats1454.2,stats1455.1,stats1455.2,stats1456.1,stats1456.2,stats1457.1,stats1457.2,stats1458.1,stats1458.2,stats1459.1,stats1459.2,stats1460.1,stats1460.2,stats1461.1,stats1461.2,stats1462.1,stats1462.2,stats1463.1,stats1463.2,stats1464.1,stats1464.2,stats1465.1,stats1465.2,stats1466.1,stats1466.2,stats1467.1,stats1467.2,stats1468.1,stats1468.2,stats1469.1,stats1469.2,stats1470.1,stats1470.2,stats1471.1,stats1471.2,stats1472.1,stats1472.2,stats1473.1,stats1473.2,stats1474.1,stats1474.2,stats1475.1,stats1475.2,stats1476.1,stats1476.2,stats1477.1,stats1477.2,stats1478.1,stats1478.2,stats1479.1,stats1479.2]
  decide
end HashBlockCheckedRows
