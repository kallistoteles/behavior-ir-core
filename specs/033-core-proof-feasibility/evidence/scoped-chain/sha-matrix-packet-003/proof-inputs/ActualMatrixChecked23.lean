import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData23
import ActualMatrixData24
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1496 : actualRows1496=WordField.canonicalRows actualModulus 1496 (.literal (BitVec.ofNat 32 338241895)) := by core033_kernel_decide
theorem stats1496 : actualRows1496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1496=3756 := by core033_kernel_decide
theorem rows1497 : actualRows1497=WordField.canonicalRows actualModulus 1497 (.badd 1495 1496) := by core033_kernel_decide
theorem stats1497 : actualRows1497.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1497=5388 := by core033_kernel_decide
theorem rows1498 : actualRows1498=WordField.canonicalRows actualModulus 1498 (.badd 1497 231) := by core033_kernel_decide
theorem stats1498 : actualRows1498.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1498=5388 := by core033_kernel_decide
theorem rows1499 : actualRows1499=WordField.canonicalRows actualModulus 1499 (.rotr 1483 2) := by core033_kernel_decide
theorem stats1499 : actualRows1499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1499=5124 := by core033_kernel_decide
theorem rows1500 : actualRows1500=WordField.canonicalRows actualModulus 1500 (.rotr 1483 13) := by core033_kernel_decide
theorem stats1500 : actualRows1500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1500=5124 := by core033_kernel_decide
theorem rows1501 : actualRows1501=WordField.canonicalRows actualModulus 1501 (.bxor 1499 1500) := by core033_kernel_decide
theorem stats1501 : actualRows1501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1501=7428 := by core033_kernel_decide
theorem rows1502 : actualRows1502=WordField.canonicalRows actualModulus 1502 (.rotr 1483 22) := by core033_kernel_decide
theorem stats1502 : actualRows1502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1502=5124 := by core033_kernel_decide
theorem rows1503 : actualRows1503=WordField.canonicalRows actualModulus 1503 (.bxor 1501 1502) := by core033_kernel_decide
theorem stats1503 : actualRows1503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1503=7428 := by core033_kernel_decide
theorem rows1504 : actualRows1504=WordField.canonicalRows actualModulus 1504 (.band 1483 1456) := by core033_kernel_decide
theorem stats1504 : actualRows1504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1504=5124 := by core033_kernel_decide
theorem rows1505 : actualRows1505=WordField.canonicalRows actualModulus 1505 (.band 1483 1429) := by core033_kernel_decide
theorem stats1505 : actualRows1505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1505=5124 := by core033_kernel_decide
theorem rows1506 : actualRows1506=WordField.canonicalRows actualModulus 1506 (.bxor 1504 1505) := by core033_kernel_decide
theorem stats1506 : actualRows1506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1506=7428 := by core033_kernel_decide
theorem rows1507 : actualRows1507=WordField.canonicalRows actualModulus 1507 (.band 1456 1429) := by core033_kernel_decide
theorem stats1507 : actualRows1507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1507=5124 := by core033_kernel_decide
theorem rows1508 : actualRows1508=WordField.canonicalRows actualModulus 1508 (.bxor 1506 1507) := by core033_kernel_decide
theorem stats1508 : actualRows1508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1508=7428 := by core033_kernel_decide
theorem rows1509 : actualRows1509=WordField.canonicalRows actualModulus 1509 (.badd 1503 1508) := by core033_kernel_decide
theorem stats1509 : actualRows1509.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1509=5388 := by core033_kernel_decide
theorem rows1510 : actualRows1510=WordField.canonicalRows actualModulus 1510 (.badd 1498 1509) := by core033_kernel_decide
theorem stats1510 : actualRows1510.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1510=5388 := by core033_kernel_decide
theorem rows1511 : actualRows1511=WordField.canonicalRows actualModulus 1511 (.badd 1402 1498) := by core033_kernel_decide
theorem stats1511 : actualRows1511.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1511=5388 := by core033_kernel_decide
theorem rows1512 : actualRows1512=WordField.canonicalRows actualModulus 1512 (.rotr 1511 6) := by core033_kernel_decide
theorem stats1512 : actualRows1512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1512=5124 := by core033_kernel_decide
theorem rows1513 : actualRows1513=WordField.canonicalRows actualModulus 1513 (.rotr 1511 11) := by core033_kernel_decide
theorem stats1513 : actualRows1513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1513=5124 := by core033_kernel_decide
theorem rows1514 : actualRows1514=WordField.canonicalRows actualModulus 1514 (.bxor 1512 1513) := by core033_kernel_decide
theorem stats1514 : actualRows1514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1514=7428 := by core033_kernel_decide
theorem rows1515 : actualRows1515=WordField.canonicalRows actualModulus 1515 (.rotr 1511 25) := by core033_kernel_decide
theorem stats1515 : actualRows1515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1515=5124 := by core033_kernel_decide
theorem rows1516 : actualRows1516=WordField.canonicalRows actualModulus 1516 (.bxor 1514 1515) := by core033_kernel_decide
theorem stats1516 : actualRows1516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1516=7428 := by core033_kernel_decide
theorem rows1517 : actualRows1517=WordField.canonicalRows actualModulus 1517 (.badd 1430 1516) := by core033_kernel_decide
theorem stats1517 : actualRows1517.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1517=5388 := by core033_kernel_decide
theorem rows1518 : actualRows1518=WordField.canonicalRows actualModulus 1518 (.band 1511 1484) := by core033_kernel_decide
theorem stats1518 : actualRows1518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1518=5124 := by core033_kernel_decide
theorem rows1519 : actualRows1519=WordField.canonicalRows actualModulus 1519 (.bnot 1511) := by core033_kernel_decide
theorem stats1519 : actualRows1519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1519=6276 := by core033_kernel_decide
theorem rows1520 : actualRows1520=WordField.canonicalRows actualModulus 1520 (.band 1519 1457) := by core033_kernel_decide
theorem stats1520 : actualRows1520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1520=5124 := by core033_kernel_decide
theorem rows1521 : actualRows1521=WordField.canonicalRows actualModulus 1521 (.bxor 1518 1520) := by core033_kernel_decide
theorem stats1521 : actualRows1521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1521=7428 := by core033_kernel_decide
theorem rows1522 : actualRows1522=WordField.canonicalRows actualModulus 1522 (.badd 1517 1521) := by core033_kernel_decide
theorem stats1522 : actualRows1522.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1522=5388 := by core033_kernel_decide
theorem rows1523 : actualRows1523=WordField.canonicalRows actualModulus 1523 (.literal (BitVec.ofNat 32 666307205)) := by core033_kernel_decide
theorem stats1523 : actualRows1523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1523=3900 := by core033_kernel_decide
theorem rows1524 : actualRows1524=WordField.canonicalRows actualModulus 1524 (.badd 1522 1523) := by core033_kernel_decide
theorem stats1524 : actualRows1524.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1524=5388 := by core033_kernel_decide
theorem rows1525 : actualRows1525=WordField.canonicalRows actualModulus 1525 (.badd 1524 244) := by core033_kernel_decide
theorem stats1525 : actualRows1525.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1525=5388 := by core033_kernel_decide
theorem rows1526 : actualRows1526=WordField.canonicalRows actualModulus 1526 (.rotr 1510 2) := by core033_kernel_decide
theorem stats1526 : actualRows1526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1526=5124 := by core033_kernel_decide
theorem rows1527 : actualRows1527=WordField.canonicalRows actualModulus 1527 (.rotr 1510 13) := by core033_kernel_decide
theorem stats1527 : actualRows1527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1527=5124 := by core033_kernel_decide
theorem rows1528 : actualRows1528=WordField.canonicalRows actualModulus 1528 (.bxor 1526 1527) := by core033_kernel_decide
theorem stats1528 : actualRows1528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1528=7428 := by core033_kernel_decide
theorem rows1529 : actualRows1529=WordField.canonicalRows actualModulus 1529 (.rotr 1510 22) := by core033_kernel_decide
theorem stats1529 : actualRows1529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1529=5124 := by core033_kernel_decide
theorem rows1530 : actualRows1530=WordField.canonicalRows actualModulus 1530 (.bxor 1528 1529) := by core033_kernel_decide
theorem stats1530 : actualRows1530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1530=7428 := by core033_kernel_decide
theorem rows1531 : actualRows1531=WordField.canonicalRows actualModulus 1531 (.band 1510 1483) := by core033_kernel_decide
theorem stats1531 : actualRows1531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1531=5124 := by core033_kernel_decide
theorem rows1532 : actualRows1532=WordField.canonicalRows actualModulus 1532 (.band 1510 1456) := by core033_kernel_decide
theorem stats1532 : actualRows1532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1532=5124 := by core033_kernel_decide
theorem rows1533 : actualRows1533=WordField.canonicalRows actualModulus 1533 (.bxor 1531 1532) := by core033_kernel_decide
theorem stats1533 : actualRows1533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1533=7428 := by core033_kernel_decide
theorem rows1534 : actualRows1534=WordField.canonicalRows actualModulus 1534 (.band 1483 1456) := by core033_kernel_decide
theorem stats1534 : actualRows1534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1534=5124 := by core033_kernel_decide
theorem rows1535 : actualRows1535=WordField.canonicalRows actualModulus 1535 (.bxor 1533 1534) := by core033_kernel_decide
theorem stats1535 : actualRows1535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1535=7428 := by core033_kernel_decide
theorem rows1536 : actualRows1536=WordField.canonicalRows actualModulus 1536 (.badd 1530 1535) := by core033_kernel_decide
theorem stats1536 : actualRows1536.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1536=5388 := by core033_kernel_decide
theorem rows1537 : actualRows1537=WordField.canonicalRows actualModulus 1537 (.badd 1525 1536) := by core033_kernel_decide
theorem stats1537 : actualRows1537.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1537=5388 := by core033_kernel_decide
theorem rows1538 : actualRows1538=WordField.canonicalRows actualModulus 1538 (.badd 1429 1525) := by core033_kernel_decide
theorem stats1538 : actualRows1538.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1538=5388 := by core033_kernel_decide
theorem rows1539 : actualRows1539=WordField.canonicalRows actualModulus 1539 (.rotr 1538 6) := by core033_kernel_decide
theorem stats1539 : actualRows1539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1539=5124 := by core033_kernel_decide
theorem rows1540 : actualRows1540=WordField.canonicalRows actualModulus 1540 (.rotr 1538 11) := by core033_kernel_decide
theorem stats1540 : actualRows1540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1540=5124 := by core033_kernel_decide
theorem rows1541 : actualRows1541=WordField.canonicalRows actualModulus 1541 (.bxor 1539 1540) := by core033_kernel_decide
theorem stats1541 : actualRows1541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1541=7428 := by core033_kernel_decide
theorem rows1542 : actualRows1542=WordField.canonicalRows actualModulus 1542 (.rotr 1538 25) := by core033_kernel_decide
theorem stats1542 : actualRows1542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1542=5124 := by core033_kernel_decide
theorem rows1543 : actualRows1543=WordField.canonicalRows actualModulus 1543 (.bxor 1541 1542) := by core033_kernel_decide
theorem stats1543 : actualRows1543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1543=7428 := by core033_kernel_decide
theorem rows1544 : actualRows1544=WordField.canonicalRows actualModulus 1544 (.badd 1457 1543) := by core033_kernel_decide
theorem stats1544 : actualRows1544.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1544=5388 := by core033_kernel_decide
theorem rows1545 : actualRows1545=WordField.canonicalRows actualModulus 1545 (.band 1538 1511) := by core033_kernel_decide
theorem stats1545 : actualRows1545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1545=5124 := by core033_kernel_decide
theorem rows1546 : actualRows1546=WordField.canonicalRows actualModulus 1546 (.bnot 1538) := by core033_kernel_decide
theorem stats1546 : actualRows1546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1546=6276 := by core033_kernel_decide
theorem rows1547 : actualRows1547=WordField.canonicalRows actualModulus 1547 (.band 1546 1484) := by core033_kernel_decide
theorem stats1547 : actualRows1547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1547=5124 := by core033_kernel_decide
theorem rows1548 : actualRows1548=WordField.canonicalRows actualModulus 1548 (.bxor 1545 1547) := by core033_kernel_decide
theorem stats1548 : actualRows1548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1548=7428 := by core033_kernel_decide
theorem rows1549 : actualRows1549=WordField.canonicalRows actualModulus 1549 (.badd 1544 1548) := by core033_kernel_decide
theorem stats1549 : actualRows1549.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1549=5388 := by core033_kernel_decide
theorem rows1550 : actualRows1550=WordField.canonicalRows actualModulus 1550 (.literal (BitVec.ofNat 32 773529912)) := by core033_kernel_decide
theorem stats1550 : actualRows1550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1550=3756 := by core033_kernel_decide
theorem rows1551 : actualRows1551=WordField.canonicalRows actualModulus 1551 (.badd 1549 1550) := by core033_kernel_decide
theorem stats1551 : actualRows1551.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1551=5388 := by core033_kernel_decide
theorem rows1552 : actualRows1552=WordField.canonicalRows actualModulus 1552 (.badd 1551 257) := by core033_kernel_decide
theorem stats1552 : actualRows1552.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1552=5388 := by core033_kernel_decide
theorem rows1553 : actualRows1553=WordField.canonicalRows actualModulus 1553 (.rotr 1537 2) := by core033_kernel_decide
theorem stats1553 : actualRows1553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1553=5124 := by core033_kernel_decide
theorem rows1554 : actualRows1554=WordField.canonicalRows actualModulus 1554 (.rotr 1537 13) := by core033_kernel_decide
theorem stats1554 : actualRows1554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1554=5124 := by core033_kernel_decide
theorem rows1555 : actualRows1555=WordField.canonicalRows actualModulus 1555 (.bxor 1553 1554) := by core033_kernel_decide
theorem stats1555 : actualRows1555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1555=7428 := by core033_kernel_decide
theorem rows1556 : actualRows1556=WordField.canonicalRows actualModulus 1556 (.rotr 1537 22) := by core033_kernel_decide
theorem stats1556 : actualRows1556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1556=5124 := by core033_kernel_decide
theorem rows1557 : actualRows1557=WordField.canonicalRows actualModulus 1557 (.bxor 1555 1556) := by core033_kernel_decide
theorem stats1557 : actualRows1557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1557=7428 := by core033_kernel_decide
theorem rows1558 : actualRows1558=WordField.canonicalRows actualModulus 1558 (.band 1537 1510) := by core033_kernel_decide
theorem stats1558 : actualRows1558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1558=5124 := by core033_kernel_decide
theorem rows1559 : actualRows1559=WordField.canonicalRows actualModulus 1559 (.band 1537 1483) := by core033_kernel_decide
theorem stats1559 : actualRows1559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1559=5124 := by core033_kernel_decide
def partRows23 : List R1CS.Row := actualRows1496++actualRows1497++actualRows1498++actualRows1499++actualRows1500++actualRows1501++actualRows1502++actualRows1503++actualRows1504++actualRows1505++actualRows1506++actualRows1507++actualRows1508++actualRows1509++actualRows1510++actualRows1511++actualRows1512++actualRows1513++actualRows1514++actualRows1515++actualRows1516++actualRows1517++actualRows1518++actualRows1519++actualRows1520++actualRows1521++actualRows1522++actualRows1523++actualRows1524++actualRows1525++actualRows1526++actualRows1527++actualRows1528++actualRows1529++actualRows1530++actualRows1531++actualRows1532++actualRows1533++actualRows1534++actualRows1535++actualRows1536++actualRows1537++actualRows1538++actualRows1539++actualRows1540++actualRows1541++actualRows1542++actualRows1543++actualRows1544++actualRows1545++actualRows1546++actualRows1547++actualRows1548++actualRows1549++actualRows1550++actualRows1551++actualRows1552++actualRows1553++actualRows1554++actualRows1555++actualRows1556++actualRows1557++actualRows1558++actualRows1559
def partOps23 : List WordIR.Op := [.literal (BitVec.ofNat 32 338241895),.badd 1495 1496,.badd 1497 231,.rotr 1483 2,.rotr 1483 13,.bxor 1499 1500,.rotr 1483 22,.bxor 1501 1502,.band 1483 1456,.band 1483 1429,.bxor 1504 1505,.band 1456 1429,.bxor 1506 1507,.badd 1503 1508,.badd 1498 1509,.badd 1402 1498,.rotr 1511 6,.rotr 1511 11,.bxor 1512 1513,.rotr 1511 25,.bxor 1514 1515,.badd 1430 1516,.band 1511 1484,.bnot 1511,.band 1519 1457,.bxor 1518 1520,.badd 1517 1521,.literal (BitVec.ofNat 32 666307205),.badd 1522 1523,.badd 1524 244,.rotr 1510 2,.rotr 1510 13,.bxor 1526 1527,.rotr 1510 22,.bxor 1528 1529,.band 1510 1483,.band 1510 1456,.bxor 1531 1532,.band 1483 1456,.bxor 1533 1534,.badd 1530 1535,.badd 1525 1536,.badd 1429 1525,.rotr 1538 6,.rotr 1538 11,.bxor 1539 1540,.rotr 1538 25,.bxor 1541 1542,.badd 1457 1543,.band 1538 1511,.bnot 1538,.band 1546 1484,.bxor 1545 1547,.badd 1544 1548,.literal (BitVec.ofNat 32 773529912),.badd 1549 1550,.badd 1551 257,.rotr 1537 2,.rotr 1537 13,.bxor 1553 1554,.rotr 1537 22,.bxor 1555 1556,.band 1537 1510,.band 1537 1483]
theorem partRowsExact23 : partRows23=WordField.rows actualModulus 1496 partOps23 := by
  simp only [partRows23,partOps23,WordField.rows,rows1496,rows1497,rows1498,rows1499,rows1500,rows1501,rows1502,rows1503,rows1504,rows1505,rows1506,rows1507,rows1508,rows1509,rows1510,rows1511,rows1512,rows1513,rows1514,rows1515,rows1516,rows1517,rows1518,rows1519,rows1520,rows1521,rows1522,rows1523,rows1524,rows1525,rows1526,rows1527,rows1528,rows1529,rows1530,rows1531,rows1532,rows1533,rows1534,rows1535,rows1536,rows1537,rows1538,rows1539,rows1540,rows1541,rows1542,rows1543,rows1544,rows1545,rows1546,rows1547,rows1548,rows1549,rows1550,rows1551,rows1552,rows1553,rows1554,rows1555,rows1556,rows1557,rows1558,rows1559,List.append_assoc,List.append_nil]
theorem partOpsLength23 : partOps23.length=64 := by decide
theorem partStats23 : partRows23.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows23=367368 := by
  simp only [partRows23,List.length_append,MatrixRowBlocks.rows_weight_append,stats1496.1,stats1496.2,stats1497.1,stats1497.2,stats1498.1,stats1498.2,stats1499.1,stats1499.2,stats1500.1,stats1500.2,stats1501.1,stats1501.2,stats1502.1,stats1502.2,stats1503.1,stats1503.2,stats1504.1,stats1504.2,stats1505.1,stats1505.2,stats1506.1,stats1506.2,stats1507.1,stats1507.2,stats1508.1,stats1508.2,stats1509.1,stats1509.2,stats1510.1,stats1510.2,stats1511.1,stats1511.2,stats1512.1,stats1512.2,stats1513.1,stats1513.2,stats1514.1,stats1514.2,stats1515.1,stats1515.2,stats1516.1,stats1516.2,stats1517.1,stats1517.2,stats1518.1,stats1518.2,stats1519.1,stats1519.2,stats1520.1,stats1520.2,stats1521.1,stats1521.2,stats1522.1,stats1522.2,stats1523.1,stats1523.2,stats1524.1,stats1524.2,stats1525.1,stats1525.2,stats1526.1,stats1526.2,stats1527.1,stats1527.2,stats1528.1,stats1528.2,stats1529.1,stats1529.2,stats1530.1,stats1530.2,stats1531.1,stats1531.2,stats1532.1,stats1532.2,stats1533.1,stats1533.2,stats1534.1,stats1534.2,stats1535.1,stats1535.2,stats1536.1,stats1536.2,stats1537.1,stats1537.2,stats1538.1,stats1538.2,stats1539.1,stats1539.2,stats1540.1,stats1540.2,stats1541.1,stats1541.2,stats1542.1,stats1542.2,stats1543.1,stats1543.2,stats1544.1,stats1544.2,stats1545.1,stats1545.2,stats1546.1,stats1546.2,stats1547.1,stats1547.2,stats1548.1,stats1548.2,stats1549.1,stats1549.2,stats1550.1,stats1550.2,stats1551.1,stats1551.2,stats1552.1,stats1552.2,stats1553.1,stats1553.2,stats1554.1,stats1554.2,stats1555.1,stats1555.2,stats1556.1,stats1556.2,stats1557.1,stats1557.2,stats1558.1,stats1558.2,stats1559.1,stats1559.2]
  decide
end ActualSHAMatrixRows
