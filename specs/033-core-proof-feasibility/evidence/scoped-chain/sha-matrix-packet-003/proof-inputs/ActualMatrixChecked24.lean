import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData24
import ActualMatrixData25
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1560 : actualRows1560=WordField.canonicalRows actualModulus 1560 (.bxor 1558 1559) := by core033_kernel_decide
theorem stats1560 : actualRows1560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1560=7428 := by core033_kernel_decide
theorem rows1561 : actualRows1561=WordField.canonicalRows actualModulus 1561 (.band 1510 1483) := by core033_kernel_decide
theorem stats1561 : actualRows1561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1561=5124 := by core033_kernel_decide
theorem rows1562 : actualRows1562=WordField.canonicalRows actualModulus 1562 (.bxor 1560 1561) := by core033_kernel_decide
theorem stats1562 : actualRows1562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1562=7428 := by core033_kernel_decide
theorem rows1563 : actualRows1563=WordField.canonicalRows actualModulus 1563 (.badd 1557 1562) := by core033_kernel_decide
theorem stats1563 : actualRows1563.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1563=5388 := by core033_kernel_decide
theorem rows1564 : actualRows1564=WordField.canonicalRows actualModulus 1564 (.badd 1552 1563) := by core033_kernel_decide
theorem stats1564 : actualRows1564.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1564=5388 := by core033_kernel_decide
theorem rows1565 : actualRows1565=WordField.canonicalRows actualModulus 1565 (.badd 1456 1552) := by core033_kernel_decide
theorem stats1565 : actualRows1565.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1565=5388 := by core033_kernel_decide
theorem rows1566 : actualRows1566=WordField.canonicalRows actualModulus 1566 (.rotr 1565 6) := by core033_kernel_decide
theorem stats1566 : actualRows1566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1566=5124 := by core033_kernel_decide
theorem rows1567 : actualRows1567=WordField.canonicalRows actualModulus 1567 (.rotr 1565 11) := by core033_kernel_decide
theorem stats1567 : actualRows1567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1567=5124 := by core033_kernel_decide
theorem rows1568 : actualRows1568=WordField.canonicalRows actualModulus 1568 (.bxor 1566 1567) := by core033_kernel_decide
theorem stats1568 : actualRows1568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1568=7428 := by core033_kernel_decide
theorem rows1569 : actualRows1569=WordField.canonicalRows actualModulus 1569 (.rotr 1565 25) := by core033_kernel_decide
theorem stats1569 : actualRows1569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1569=5124 := by core033_kernel_decide
theorem rows1570 : actualRows1570=WordField.canonicalRows actualModulus 1570 (.bxor 1568 1569) := by core033_kernel_decide
theorem stats1570 : actualRows1570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1570=7428 := by core033_kernel_decide
theorem rows1571 : actualRows1571=WordField.canonicalRows actualModulus 1571 (.badd 1484 1570) := by core033_kernel_decide
theorem stats1571 : actualRows1571.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1571=5388 := by core033_kernel_decide
theorem rows1572 : actualRows1572=WordField.canonicalRows actualModulus 1572 (.band 1565 1538) := by core033_kernel_decide
theorem stats1572 : actualRows1572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1572=5124 := by core033_kernel_decide
theorem rows1573 : actualRows1573=WordField.canonicalRows actualModulus 1573 (.bnot 1565) := by core033_kernel_decide
theorem stats1573 : actualRows1573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1573=6276 := by core033_kernel_decide
theorem rows1574 : actualRows1574=WordField.canonicalRows actualModulus 1574 (.band 1573 1511) := by core033_kernel_decide
theorem stats1574 : actualRows1574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1574=5124 := by core033_kernel_decide
theorem rows1575 : actualRows1575=WordField.canonicalRows actualModulus 1575 (.bxor 1572 1574) := by core033_kernel_decide
theorem stats1575 : actualRows1575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1575=7428 := by core033_kernel_decide
theorem rows1576 : actualRows1576=WordField.canonicalRows actualModulus 1576 (.badd 1571 1575) := by core033_kernel_decide
theorem stats1576 : actualRows1576.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1576=5388 := by core033_kernel_decide
theorem rows1577 : actualRows1577=WordField.canonicalRows actualModulus 1577 (.literal (BitVec.ofNat 32 1294757372)) := by core033_kernel_decide
theorem stats1577 : actualRows1577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1577=4116 := by core033_kernel_decide
theorem rows1578 : actualRows1578=WordField.canonicalRows actualModulus 1578 (.badd 1576 1577) := by core033_kernel_decide
theorem stats1578 : actualRows1578.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1578=5388 := by core033_kernel_decide
theorem rows1579 : actualRows1579=WordField.canonicalRows actualModulus 1579 (.badd 1578 270) := by core033_kernel_decide
theorem stats1579 : actualRows1579.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1579=5388 := by core033_kernel_decide
theorem rows1580 : actualRows1580=WordField.canonicalRows actualModulus 1580 (.rotr 1564 2) := by core033_kernel_decide
theorem stats1580 : actualRows1580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1580=5124 := by core033_kernel_decide
theorem rows1581 : actualRows1581=WordField.canonicalRows actualModulus 1581 (.rotr 1564 13) := by core033_kernel_decide
theorem stats1581 : actualRows1581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1581=5124 := by core033_kernel_decide
theorem rows1582 : actualRows1582=WordField.canonicalRows actualModulus 1582 (.bxor 1580 1581) := by core033_kernel_decide
theorem stats1582 : actualRows1582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1582=7428 := by core033_kernel_decide
theorem rows1583 : actualRows1583=WordField.canonicalRows actualModulus 1583 (.rotr 1564 22) := by core033_kernel_decide
theorem stats1583 : actualRows1583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1583=5124 := by core033_kernel_decide
theorem rows1584 : actualRows1584=WordField.canonicalRows actualModulus 1584 (.bxor 1582 1583) := by core033_kernel_decide
theorem stats1584 : actualRows1584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1584=7428 := by core033_kernel_decide
theorem rows1585 : actualRows1585=WordField.canonicalRows actualModulus 1585 (.band 1564 1537) := by core033_kernel_decide
theorem stats1585 : actualRows1585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1585=5124 := by core033_kernel_decide
theorem rows1586 : actualRows1586=WordField.canonicalRows actualModulus 1586 (.band 1564 1510) := by core033_kernel_decide
theorem stats1586 : actualRows1586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1586=5124 := by core033_kernel_decide
theorem rows1587 : actualRows1587=WordField.canonicalRows actualModulus 1587 (.bxor 1585 1586) := by core033_kernel_decide
theorem stats1587 : actualRows1587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1587=7428 := by core033_kernel_decide
theorem rows1588 : actualRows1588=WordField.canonicalRows actualModulus 1588 (.band 1537 1510) := by core033_kernel_decide
theorem stats1588 : actualRows1588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1588=5124 := by core033_kernel_decide
theorem rows1589 : actualRows1589=WordField.canonicalRows actualModulus 1589 (.bxor 1587 1588) := by core033_kernel_decide
theorem stats1589 : actualRows1589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1589=7428 := by core033_kernel_decide
theorem rows1590 : actualRows1590=WordField.canonicalRows actualModulus 1590 (.badd 1584 1589) := by core033_kernel_decide
theorem stats1590 : actualRows1590.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1590=5388 := by core033_kernel_decide
theorem rows1591 : actualRows1591=WordField.canonicalRows actualModulus 1591 (.badd 1579 1590) := by core033_kernel_decide
theorem stats1591 : actualRows1591.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1591=5388 := by core033_kernel_decide
theorem rows1592 : actualRows1592=WordField.canonicalRows actualModulus 1592 (.badd 1483 1579) := by core033_kernel_decide
theorem stats1592 : actualRows1592.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1592=5388 := by core033_kernel_decide
theorem rows1593 : actualRows1593=WordField.canonicalRows actualModulus 1593 (.rotr 1592 6) := by core033_kernel_decide
theorem stats1593 : actualRows1593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1593=5124 := by core033_kernel_decide
theorem rows1594 : actualRows1594=WordField.canonicalRows actualModulus 1594 (.rotr 1592 11) := by core033_kernel_decide
theorem stats1594 : actualRows1594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1594=5124 := by core033_kernel_decide
theorem rows1595 : actualRows1595=WordField.canonicalRows actualModulus 1595 (.bxor 1593 1594) := by core033_kernel_decide
theorem stats1595 : actualRows1595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1595=7428 := by core033_kernel_decide
theorem rows1596 : actualRows1596=WordField.canonicalRows actualModulus 1596 (.rotr 1592 25) := by core033_kernel_decide
theorem stats1596 : actualRows1596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1596=5124 := by core033_kernel_decide
theorem rows1597 : actualRows1597=WordField.canonicalRows actualModulus 1597 (.bxor 1595 1596) := by core033_kernel_decide
theorem stats1597 : actualRows1597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1597=7428 := by core033_kernel_decide
theorem rows1598 : actualRows1598=WordField.canonicalRows actualModulus 1598 (.badd 1511 1597) := by core033_kernel_decide
theorem stats1598 : actualRows1598.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1598=5388 := by core033_kernel_decide
theorem rows1599 : actualRows1599=WordField.canonicalRows actualModulus 1599 (.band 1592 1565) := by core033_kernel_decide
theorem stats1599 : actualRows1599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1599=5124 := by core033_kernel_decide
theorem rows1600 : actualRows1600=WordField.canonicalRows actualModulus 1600 (.bnot 1592) := by core033_kernel_decide
theorem stats1600 : actualRows1600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1600=6276 := by core033_kernel_decide
theorem rows1601 : actualRows1601=WordField.canonicalRows actualModulus 1601 (.band 1600 1538) := by core033_kernel_decide
theorem stats1601 : actualRows1601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1601=5124 := by core033_kernel_decide
theorem rows1602 : actualRows1602=WordField.canonicalRows actualModulus 1602 (.bxor 1599 1601) := by core033_kernel_decide
theorem stats1602 : actualRows1602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1602=7428 := by core033_kernel_decide
theorem rows1603 : actualRows1603=WordField.canonicalRows actualModulus 1603 (.badd 1598 1602) := by core033_kernel_decide
theorem stats1603 : actualRows1603.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1603=5388 := by core033_kernel_decide
theorem rows1604 : actualRows1604=WordField.canonicalRows actualModulus 1604 (.literal (BitVec.ofNat 32 1396182291)) := by core033_kernel_decide
theorem stats1604 : actualRows1604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1604=3756 := by core033_kernel_decide
theorem rows1605 : actualRows1605=WordField.canonicalRows actualModulus 1605 (.badd 1603 1604) := by core033_kernel_decide
theorem stats1605 : actualRows1605.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1605=5388 := by core033_kernel_decide
theorem rows1606 : actualRows1606=WordField.canonicalRows actualModulus 1606 (.badd 1605 283) := by core033_kernel_decide
theorem stats1606 : actualRows1606.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1606=5388 := by core033_kernel_decide
theorem rows1607 : actualRows1607=WordField.canonicalRows actualModulus 1607 (.rotr 1591 2) := by core033_kernel_decide
theorem stats1607 : actualRows1607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1607=5124 := by core033_kernel_decide
theorem rows1608 : actualRows1608=WordField.canonicalRows actualModulus 1608 (.rotr 1591 13) := by core033_kernel_decide
theorem stats1608 : actualRows1608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1608=5124 := by core033_kernel_decide
theorem rows1609 : actualRows1609=WordField.canonicalRows actualModulus 1609 (.bxor 1607 1608) := by core033_kernel_decide
theorem stats1609 : actualRows1609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1609=7428 := by core033_kernel_decide
theorem rows1610 : actualRows1610=WordField.canonicalRows actualModulus 1610 (.rotr 1591 22) := by core033_kernel_decide
theorem stats1610 : actualRows1610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1610=5124 := by core033_kernel_decide
theorem rows1611 : actualRows1611=WordField.canonicalRows actualModulus 1611 (.bxor 1609 1610) := by core033_kernel_decide
theorem stats1611 : actualRows1611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1611=7428 := by core033_kernel_decide
theorem rows1612 : actualRows1612=WordField.canonicalRows actualModulus 1612 (.band 1591 1564) := by core033_kernel_decide
theorem stats1612 : actualRows1612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1612=5124 := by core033_kernel_decide
theorem rows1613 : actualRows1613=WordField.canonicalRows actualModulus 1613 (.band 1591 1537) := by core033_kernel_decide
theorem stats1613 : actualRows1613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1613=5124 := by core033_kernel_decide
theorem rows1614 : actualRows1614=WordField.canonicalRows actualModulus 1614 (.bxor 1612 1613) := by core033_kernel_decide
theorem stats1614 : actualRows1614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1614=7428 := by core033_kernel_decide
theorem rows1615 : actualRows1615=WordField.canonicalRows actualModulus 1615 (.band 1564 1537) := by core033_kernel_decide
theorem stats1615 : actualRows1615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1615=5124 := by core033_kernel_decide
theorem rows1616 : actualRows1616=WordField.canonicalRows actualModulus 1616 (.bxor 1614 1615) := by core033_kernel_decide
theorem stats1616 : actualRows1616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1616=7428 := by core033_kernel_decide
theorem rows1617 : actualRows1617=WordField.canonicalRows actualModulus 1617 (.badd 1611 1616) := by core033_kernel_decide
theorem stats1617 : actualRows1617.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1617=5388 := by core033_kernel_decide
theorem rows1618 : actualRows1618=WordField.canonicalRows actualModulus 1618 (.badd 1606 1617) := by core033_kernel_decide
theorem stats1618 : actualRows1618.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1618=5388 := by core033_kernel_decide
theorem rows1619 : actualRows1619=WordField.canonicalRows actualModulus 1619 (.badd 1510 1606) := by core033_kernel_decide
theorem stats1619 : actualRows1619.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1619=5388 := by core033_kernel_decide
theorem rows1620 : actualRows1620=WordField.canonicalRows actualModulus 1620 (.rotr 1619 6) := by core033_kernel_decide
theorem stats1620 : actualRows1620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1620=5124 := by core033_kernel_decide
theorem rows1621 : actualRows1621=WordField.canonicalRows actualModulus 1621 (.rotr 1619 11) := by core033_kernel_decide
theorem stats1621 : actualRows1621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1621=5124 := by core033_kernel_decide
theorem rows1622 : actualRows1622=WordField.canonicalRows actualModulus 1622 (.bxor 1620 1621) := by core033_kernel_decide
theorem stats1622 : actualRows1622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1622=7428 := by core033_kernel_decide
theorem rows1623 : actualRows1623=WordField.canonicalRows actualModulus 1623 (.rotr 1619 25) := by core033_kernel_decide
theorem stats1623 : actualRows1623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1623=5124 := by core033_kernel_decide
def partRows24 : List R1CS.Row := actualRows1560++actualRows1561++actualRows1562++actualRows1563++actualRows1564++actualRows1565++actualRows1566++actualRows1567++actualRows1568++actualRows1569++actualRows1570++actualRows1571++actualRows1572++actualRows1573++actualRows1574++actualRows1575++actualRows1576++actualRows1577++actualRows1578++actualRows1579++actualRows1580++actualRows1581++actualRows1582++actualRows1583++actualRows1584++actualRows1585++actualRows1586++actualRows1587++actualRows1588++actualRows1589++actualRows1590++actualRows1591++actualRows1592++actualRows1593++actualRows1594++actualRows1595++actualRows1596++actualRows1597++actualRows1598++actualRows1599++actualRows1600++actualRows1601++actualRows1602++actualRows1603++actualRows1604++actualRows1605++actualRows1606++actualRows1607++actualRows1608++actualRows1609++actualRows1610++actualRows1611++actualRows1612++actualRows1613++actualRows1614++actualRows1615++actualRows1616++actualRows1617++actualRows1618++actualRows1619++actualRows1620++actualRows1621++actualRows1622++actualRows1623
def partOps24 : List WordIR.Op := [.bxor 1558 1559,.band 1510 1483,.bxor 1560 1561,.badd 1557 1562,.badd 1552 1563,.badd 1456 1552,.rotr 1565 6,.rotr 1565 11,.bxor 1566 1567,.rotr 1565 25,.bxor 1568 1569,.badd 1484 1570,.band 1565 1538,.bnot 1565,.band 1573 1511,.bxor 1572 1574,.badd 1571 1575,.literal (BitVec.ofNat 32 1294757372),.badd 1576 1577,.badd 1578 270,.rotr 1564 2,.rotr 1564 13,.bxor 1580 1581,.rotr 1564 22,.bxor 1582 1583,.band 1564 1537,.band 1564 1510,.bxor 1585 1586,.band 1537 1510,.bxor 1587 1588,.badd 1584 1589,.badd 1579 1590,.badd 1483 1579,.rotr 1592 6,.rotr 1592 11,.bxor 1593 1594,.rotr 1592 25,.bxor 1595 1596,.badd 1511 1597,.band 1592 1565,.bnot 1592,.band 1600 1538,.bxor 1599 1601,.badd 1598 1602,.literal (BitVec.ofNat 32 1396182291),.badd 1603 1604,.badd 1605 283,.rotr 1591 2,.rotr 1591 13,.bxor 1607 1608,.rotr 1591 22,.bxor 1609 1610,.band 1591 1564,.band 1591 1537,.bxor 1612 1613,.band 1564 1537,.bxor 1614 1615,.badd 1611 1616,.badd 1606 1617,.badd 1510 1606,.rotr 1619 6,.rotr 1619 11,.bxor 1620 1621,.rotr 1619 25]
theorem partRowsExact24 : partRows24=WordField.rows actualModulus 1560 partOps24 := by
  simp only [partRows24,partOps24,WordField.rows,rows1560,rows1561,rows1562,rows1563,rows1564,rows1565,rows1566,rows1567,rows1568,rows1569,rows1570,rows1571,rows1572,rows1573,rows1574,rows1575,rows1576,rows1577,rows1578,rows1579,rows1580,rows1581,rows1582,rows1583,rows1584,rows1585,rows1586,rows1587,rows1588,rows1589,rows1590,rows1591,rows1592,rows1593,rows1594,rows1595,rows1596,rows1597,rows1598,rows1599,rows1600,rows1601,rows1602,rows1603,rows1604,rows1605,rows1606,rows1607,rows1608,rows1609,rows1610,rows1611,rows1612,rows1613,rows1614,rows1615,rows1616,rows1617,rows1618,rows1619,rows1620,rows1621,rows1622,rows1623,List.append_assoc,List.append_nil]
theorem partOpsLength24 : partOps24.length=64 := by decide
theorem partStats24 : partRows24.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows24=371520 := by
  simp only [partRows24,List.length_append,MatrixRowBlocks.rows_weight_append,stats1560.1,stats1560.2,stats1561.1,stats1561.2,stats1562.1,stats1562.2,stats1563.1,stats1563.2,stats1564.1,stats1564.2,stats1565.1,stats1565.2,stats1566.1,stats1566.2,stats1567.1,stats1567.2,stats1568.1,stats1568.2,stats1569.1,stats1569.2,stats1570.1,stats1570.2,stats1571.1,stats1571.2,stats1572.1,stats1572.2,stats1573.1,stats1573.2,stats1574.1,stats1574.2,stats1575.1,stats1575.2,stats1576.1,stats1576.2,stats1577.1,stats1577.2,stats1578.1,stats1578.2,stats1579.1,stats1579.2,stats1580.1,stats1580.2,stats1581.1,stats1581.2,stats1582.1,stats1582.2,stats1583.1,stats1583.2,stats1584.1,stats1584.2,stats1585.1,stats1585.2,stats1586.1,stats1586.2,stats1587.1,stats1587.2,stats1588.1,stats1588.2,stats1589.1,stats1589.2,stats1590.1,stats1590.2,stats1591.1,stats1591.2,stats1592.1,stats1592.2,stats1593.1,stats1593.2,stats1594.1,stats1594.2,stats1595.1,stats1595.2,stats1596.1,stats1596.2,stats1597.1,stats1597.2,stats1598.1,stats1598.2,stats1599.1,stats1599.2,stats1600.1,stats1600.2,stats1601.1,stats1601.2,stats1602.1,stats1602.2,stats1603.1,stats1603.2,stats1604.1,stats1604.2,stats1605.1,stats1605.2,stats1606.1,stats1606.2,stats1607.1,stats1607.2,stats1608.1,stats1608.2,stats1609.1,stats1609.2,stats1610.1,stats1610.2,stats1611.1,stats1611.2,stats1612.1,stats1612.2,stats1613.1,stats1613.2,stats1614.1,stats1614.2,stats1615.1,stats1615.2,stats1616.1,stats1616.2,stats1617.1,stats1617.2,stats1618.1,stats1618.2,stats1619.1,stats1619.2,stats1620.1,stats1620.2,stats1621.1,stats1621.2,stats1622.1,stats1622.2,stats1623.1,stats1623.2]
  decide
end ActualSHAMatrixRows
