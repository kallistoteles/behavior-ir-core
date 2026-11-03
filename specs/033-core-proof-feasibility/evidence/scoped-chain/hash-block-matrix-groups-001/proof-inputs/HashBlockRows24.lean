import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData25
import HashBlockInstructionMatrixData26
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1608 : actualRows1608=WordField.canonicalRows actualModulus 1608 (.bxor 1606 1607) := by core033_kernel_decide
theorem stats1608 : actualRows1608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1608=7428 := by core033_kernel_decide
theorem rows1609 : actualRows1609=WordField.canonicalRows actualModulus 1609 (.shr 1592 10) := by core033_kernel_decide
theorem stats1609 : actualRows1609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1609=4404 := by core033_kernel_decide
theorem rows1610 : actualRows1610=WordField.canonicalRows actualModulus 1610 (.bxor 1608 1609) := by core033_kernel_decide
theorem stats1610 : actualRows1610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1610=7428 := by core033_kernel_decide
theorem rows1611 : actualRows1611=WordField.canonicalRows actualModulus 1611 (.badd 1610 1527) := by core033_kernel_decide
theorem stats1611 : actualRows1611.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1611=5388 := by core033_kernel_decide
theorem rows1612 : actualRows1612=WordField.canonicalRows actualModulus 1612 (.rotr 1423 7) := by core033_kernel_decide
theorem stats1612 : actualRows1612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1612=5124 := by core033_kernel_decide
theorem rows1613 : actualRows1613=WordField.canonicalRows actualModulus 1613 (.rotr 1423 18) := by core033_kernel_decide
theorem stats1613 : actualRows1613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1613=5124 := by core033_kernel_decide
theorem rows1614 : actualRows1614=WordField.canonicalRows actualModulus 1614 (.bxor 1612 1613) := by core033_kernel_decide
theorem stats1614 : actualRows1614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1614=7428 := by core033_kernel_decide
theorem rows1615 : actualRows1615=WordField.canonicalRows actualModulus 1615 (.shr 1423 3) := by core033_kernel_decide
theorem stats1615 : actualRows1615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1615=4908 := by core033_kernel_decide
theorem rows1616 : actualRows1616=WordField.canonicalRows actualModulus 1616 (.bxor 1614 1615) := by core033_kernel_decide
theorem stats1616 : actualRows1616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1616=7428 := by core033_kernel_decide
theorem rows1617 : actualRows1617=WordField.canonicalRows actualModulus 1617 (.badd 1611 1616) := by core033_kernel_decide
theorem stats1617 : actualRows1617.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1617=5388 := by core033_kernel_decide
theorem rows1618 : actualRows1618=WordField.canonicalRows actualModulus 1618 (.badd 1617 1410) := by core033_kernel_decide
theorem stats1618 : actualRows1618.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1618=5388 := by core033_kernel_decide
theorem rows1619 : actualRows1619=WordField.canonicalRows actualModulus 1619 (.rotr 1605 17) := by core033_kernel_decide
theorem stats1619 : actualRows1619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1619=5124 := by core033_kernel_decide
theorem rows1620 : actualRows1620=WordField.canonicalRows actualModulus 1620 (.rotr 1605 19) := by core033_kernel_decide
theorem stats1620 : actualRows1620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1620=5124 := by core033_kernel_decide
theorem rows1621 : actualRows1621=WordField.canonicalRows actualModulus 1621 (.bxor 1619 1620) := by core033_kernel_decide
theorem stats1621 : actualRows1621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1621=7428 := by core033_kernel_decide
theorem rows1622 : actualRows1622=WordField.canonicalRows actualModulus 1622 (.shr 1605 10) := by core033_kernel_decide
theorem stats1622 : actualRows1622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1622=4404 := by core033_kernel_decide
theorem rows1623 : actualRows1623=WordField.canonicalRows actualModulus 1623 (.bxor 1621 1622) := by core033_kernel_decide
theorem stats1623 : actualRows1623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1623=7428 := by core033_kernel_decide
theorem rows1624 : actualRows1624=WordField.canonicalRows actualModulus 1624 (.badd 1623 1540) := by core033_kernel_decide
theorem stats1624 : actualRows1624.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1624=5388 := by core033_kernel_decide
theorem rows1625 : actualRows1625=WordField.canonicalRows actualModulus 1625 (.rotr 1436 7) := by core033_kernel_decide
theorem stats1625 : actualRows1625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1625=5124 := by core033_kernel_decide
theorem rows1626 : actualRows1626=WordField.canonicalRows actualModulus 1626 (.rotr 1436 18) := by core033_kernel_decide
theorem stats1626 : actualRows1626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1626=5124 := by core033_kernel_decide
theorem rows1627 : actualRows1627=WordField.canonicalRows actualModulus 1627 (.bxor 1625 1626) := by core033_kernel_decide
theorem stats1627 : actualRows1627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1627=7428 := by core033_kernel_decide
theorem rows1628 : actualRows1628=WordField.canonicalRows actualModulus 1628 (.shr 1436 3) := by core033_kernel_decide
theorem stats1628 : actualRows1628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1628=4908 := by core033_kernel_decide
theorem rows1629 : actualRows1629=WordField.canonicalRows actualModulus 1629 (.bxor 1627 1628) := by core033_kernel_decide
theorem stats1629 : actualRows1629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1629=7428 := by core033_kernel_decide
theorem rows1630 : actualRows1630=WordField.canonicalRows actualModulus 1630 (.badd 1624 1629) := by core033_kernel_decide
theorem stats1630 : actualRows1630.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1630=5388 := by core033_kernel_decide
theorem rows1631 : actualRows1631=WordField.canonicalRows actualModulus 1631 (.badd 1630 1423) := by core033_kernel_decide
theorem stats1631 : actualRows1631.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1631=5388 := by core033_kernel_decide
theorem rows1632 : actualRows1632=WordField.canonicalRows actualModulus 1632 (.rotr 1618 17) := by core033_kernel_decide
theorem stats1632 : actualRows1632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1632=5124 := by core033_kernel_decide
theorem rows1633 : actualRows1633=WordField.canonicalRows actualModulus 1633 (.rotr 1618 19) := by core033_kernel_decide
theorem stats1633 : actualRows1633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1633=5124 := by core033_kernel_decide
theorem rows1634 : actualRows1634=WordField.canonicalRows actualModulus 1634 (.bxor 1632 1633) := by core033_kernel_decide
theorem stats1634 : actualRows1634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1634=7428 := by core033_kernel_decide
theorem rows1635 : actualRows1635=WordField.canonicalRows actualModulus 1635 (.shr 1618 10) := by core033_kernel_decide
theorem stats1635 : actualRows1635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1635=4404 := by core033_kernel_decide
theorem rows1636 : actualRows1636=WordField.canonicalRows actualModulus 1636 (.bxor 1634 1635) := by core033_kernel_decide
theorem stats1636 : actualRows1636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1636=7428 := by core033_kernel_decide
theorem rows1637 : actualRows1637=WordField.canonicalRows actualModulus 1637 (.badd 1636 1553) := by core033_kernel_decide
theorem stats1637 : actualRows1637.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1637=5388 := by core033_kernel_decide
theorem rows1638 : actualRows1638=WordField.canonicalRows actualModulus 1638 (.rotr 1449 7) := by core033_kernel_decide
theorem stats1638 : actualRows1638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1638=5124 := by core033_kernel_decide
theorem rows1639 : actualRows1639=WordField.canonicalRows actualModulus 1639 (.rotr 1449 18) := by core033_kernel_decide
theorem stats1639 : actualRows1639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1639=5124 := by core033_kernel_decide
theorem rows1640 : actualRows1640=WordField.canonicalRows actualModulus 1640 (.bxor 1638 1639) := by core033_kernel_decide
theorem stats1640 : actualRows1640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1640=7428 := by core033_kernel_decide
theorem rows1641 : actualRows1641=WordField.canonicalRows actualModulus 1641 (.shr 1449 3) := by core033_kernel_decide
theorem stats1641 : actualRows1641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1641=4908 := by core033_kernel_decide
theorem rows1642 : actualRows1642=WordField.canonicalRows actualModulus 1642 (.bxor 1640 1641) := by core033_kernel_decide
theorem stats1642 : actualRows1642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1642=7428 := by core033_kernel_decide
theorem rows1643 : actualRows1643=WordField.canonicalRows actualModulus 1643 (.badd 1637 1642) := by core033_kernel_decide
theorem stats1643 : actualRows1643.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1643=5388 := by core033_kernel_decide
theorem rows1644 : actualRows1644=WordField.canonicalRows actualModulus 1644 (.badd 1643 1436) := by core033_kernel_decide
theorem stats1644 : actualRows1644.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1644=5388 := by core033_kernel_decide
theorem rows1645 : actualRows1645=WordField.canonicalRows actualModulus 1645 (.rotr 1631 17) := by core033_kernel_decide
theorem stats1645 : actualRows1645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1645=5124 := by core033_kernel_decide
theorem rows1646 : actualRows1646=WordField.canonicalRows actualModulus 1646 (.rotr 1631 19) := by core033_kernel_decide
theorem stats1646 : actualRows1646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1646=5124 := by core033_kernel_decide
theorem rows1647 : actualRows1647=WordField.canonicalRows actualModulus 1647 (.bxor 1645 1646) := by core033_kernel_decide
theorem stats1647 : actualRows1647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1647=7428 := by core033_kernel_decide
theorem rows1648 : actualRows1648=WordField.canonicalRows actualModulus 1648 (.shr 1631 10) := by core033_kernel_decide
theorem stats1648 : actualRows1648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1648=4404 := by core033_kernel_decide
theorem rows1649 : actualRows1649=WordField.canonicalRows actualModulus 1649 (.bxor 1647 1648) := by core033_kernel_decide
theorem stats1649 : actualRows1649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1649=7428 := by core033_kernel_decide
theorem rows1650 : actualRows1650=WordField.canonicalRows actualModulus 1650 (.badd 1649 1566) := by core033_kernel_decide
theorem stats1650 : actualRows1650.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1650=5388 := by core033_kernel_decide
theorem rows1651 : actualRows1651=WordField.canonicalRows actualModulus 1651 (.rotr 1462 7) := by core033_kernel_decide
theorem stats1651 : actualRows1651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1651=5124 := by core033_kernel_decide
theorem rows1652 : actualRows1652=WordField.canonicalRows actualModulus 1652 (.rotr 1462 18) := by core033_kernel_decide
theorem stats1652 : actualRows1652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1652=5124 := by core033_kernel_decide
theorem rows1653 : actualRows1653=WordField.canonicalRows actualModulus 1653 (.bxor 1651 1652) := by core033_kernel_decide
theorem stats1653 : actualRows1653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1653=7428 := by core033_kernel_decide
theorem rows1654 : actualRows1654=WordField.canonicalRows actualModulus 1654 (.shr 1462 3) := by core033_kernel_decide
theorem stats1654 : actualRows1654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1654=4908 := by core033_kernel_decide
theorem rows1655 : actualRows1655=WordField.canonicalRows actualModulus 1655 (.bxor 1653 1654) := by core033_kernel_decide
theorem stats1655 : actualRows1655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1655=7428 := by core033_kernel_decide
theorem rows1656 : actualRows1656=WordField.canonicalRows actualModulus 1656 (.badd 1650 1655) := by core033_kernel_decide
theorem stats1656 : actualRows1656.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1656=5388 := by core033_kernel_decide
theorem rows1657 : actualRows1657=WordField.canonicalRows actualModulus 1657 (.badd 1656 1449) := by core033_kernel_decide
theorem stats1657 : actualRows1657.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1657=5388 := by core033_kernel_decide
theorem rows1658 : actualRows1658=WordField.canonicalRows actualModulus 1658 (.rotr 1644 17) := by core033_kernel_decide
theorem stats1658 : actualRows1658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1658=5124 := by core033_kernel_decide
theorem rows1659 : actualRows1659=WordField.canonicalRows actualModulus 1659 (.rotr 1644 19) := by core033_kernel_decide
theorem stats1659 : actualRows1659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1659=5124 := by core033_kernel_decide
theorem rows1660 : actualRows1660=WordField.canonicalRows actualModulus 1660 (.bxor 1658 1659) := by core033_kernel_decide
theorem stats1660 : actualRows1660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1660=7428 := by core033_kernel_decide
theorem rows1661 : actualRows1661=WordField.canonicalRows actualModulus 1661 (.shr 1644 10) := by core033_kernel_decide
theorem stats1661 : actualRows1661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1661=4404 := by core033_kernel_decide
theorem rows1662 : actualRows1662=WordField.canonicalRows actualModulus 1662 (.bxor 1660 1661) := by core033_kernel_decide
theorem stats1662 : actualRows1662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1662=7428 := by core033_kernel_decide
theorem rows1663 : actualRows1663=WordField.canonicalRows actualModulus 1663 (.badd 1662 1579) := by core033_kernel_decide
theorem stats1663 : actualRows1663.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1663=5388 := by core033_kernel_decide
theorem rows1664 : actualRows1664=WordField.canonicalRows actualModulus 1664 (.rotr 1475 7) := by core033_kernel_decide
theorem stats1664 : actualRows1664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1664=5124 := by core033_kernel_decide
theorem rows1665 : actualRows1665=WordField.canonicalRows actualModulus 1665 (.rotr 1475 18) := by core033_kernel_decide
theorem stats1665 : actualRows1665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1665=5124 := by core033_kernel_decide
theorem rows1666 : actualRows1666=WordField.canonicalRows actualModulus 1666 (.bxor 1664 1665) := by core033_kernel_decide
theorem stats1666 : actualRows1666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1666=7428 := by core033_kernel_decide
theorem rows1667 : actualRows1667=WordField.canonicalRows actualModulus 1667 (.shr 1475 3) := by core033_kernel_decide
theorem stats1667 : actualRows1667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1667=4908 := by core033_kernel_decide
theorem rows1668 : actualRows1668=WordField.canonicalRows actualModulus 1668 (.bxor 1666 1667) := by core033_kernel_decide
theorem stats1668 : actualRows1668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1668=7428 := by core033_kernel_decide
theorem rows1669 : actualRows1669=WordField.canonicalRows actualModulus 1669 (.badd 1663 1668) := by core033_kernel_decide
theorem stats1669 : actualRows1669.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1669=5388 := by core033_kernel_decide
theorem rows1670 : actualRows1670=WordField.canonicalRows actualModulus 1670 (.badd 1669 1462) := by core033_kernel_decide
theorem stats1670 : actualRows1670.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1670=5388 := by core033_kernel_decide
theorem rows1671 : actualRows1671=WordField.canonicalRows actualModulus 1671 (.rotr 1657 17) := by core033_kernel_decide
theorem stats1671 : actualRows1671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1671=5124 := by core033_kernel_decide
def partRows24 : List R1CS.Row := actualRows1608++actualRows1609++actualRows1610++actualRows1611++actualRows1612++actualRows1613++actualRows1614++actualRows1615++actualRows1616++actualRows1617++actualRows1618++actualRows1619++actualRows1620++actualRows1621++actualRows1622++actualRows1623++actualRows1624++actualRows1625++actualRows1626++actualRows1627++actualRows1628++actualRows1629++actualRows1630++actualRows1631++actualRows1632++actualRows1633++actualRows1634++actualRows1635++actualRows1636++actualRows1637++actualRows1638++actualRows1639++actualRows1640++actualRows1641++actualRows1642++actualRows1643++actualRows1644++actualRows1645++actualRows1646++actualRows1647++actualRows1648++actualRows1649++actualRows1650++actualRows1651++actualRows1652++actualRows1653++actualRows1654++actualRows1655++actualRows1656++actualRows1657++actualRows1658++actualRows1659++actualRows1660++actualRows1661++actualRows1662++actualRows1663++actualRows1664++actualRows1665++actualRows1666++actualRows1667++actualRows1668++actualRows1669++actualRows1670++actualRows1671
def partOps24 : List WordIR.Op := [.bxor 1606 1607,.shr 1592 10,.bxor 1608 1609,.badd 1610 1527,.rotr 1423 7,.rotr 1423 18,.bxor 1612 1613,.shr 1423 3,.bxor 1614 1615,.badd 1611 1616,.badd 1617 1410,.rotr 1605 17,.rotr 1605 19,.bxor 1619 1620,.shr 1605 10,.bxor 1621 1622,.badd 1623 1540,.rotr 1436 7,.rotr 1436 18,.bxor 1625 1626,.shr 1436 3,.bxor 1627 1628,.badd 1624 1629,.badd 1630 1423,.rotr 1618 17,.rotr 1618 19,.bxor 1632 1633,.shr 1618 10,.bxor 1634 1635,.badd 1636 1553,.rotr 1449 7,.rotr 1449 18,.bxor 1638 1639,.shr 1449 3,.bxor 1640 1641,.badd 1637 1642,.badd 1643 1436,.rotr 1631 17,.rotr 1631 19,.bxor 1645 1646,.shr 1631 10,.bxor 1647 1648,.badd 1649 1566,.rotr 1462 7,.rotr 1462 18,.bxor 1651 1652,.shr 1462 3,.bxor 1653 1654,.badd 1650 1655,.badd 1656 1449,.rotr 1644 17,.rotr 1644 19,.bxor 1658 1659,.shr 1644 10,.bxor 1660 1661,.badd 1662 1579,.rotr 1475 7,.rotr 1475 18,.bxor 1664 1665,.shr 1475 3,.bxor 1666 1667,.badd 1663 1668,.badd 1669 1462,.rotr 1657 17]
theorem partExact24 : partRows24=WordField.rows actualModulus 1608 partOps24 := by
  simp only [partRows24,partOps24,WordField.rows,rows1608,rows1609,rows1610,rows1611,rows1612,rows1613,rows1614,rows1615,rows1616,rows1617,rows1618,rows1619,rows1620,rows1621,rows1622,rows1623,rows1624,rows1625,rows1626,rows1627,rows1628,rows1629,rows1630,rows1631,rows1632,rows1633,rows1634,rows1635,rows1636,rows1637,rows1638,rows1639,rows1640,rows1641,rows1642,rows1643,rows1644,rows1645,rows1646,rows1647,rows1648,rows1649,rows1650,rows1651,rows1652,rows1653,rows1654,rows1655,rows1656,rows1657,rows1658,rows1659,rows1660,rows1661,rows1662,rows1663,rows1664,rows1665,rows1666,rows1667,rows1668,rows1669,rows1670,rows1671,List.append_assoc,List.append_nil]
theorem partLength24 : partOps24.length=64 := by decide
theorem partStats24 : partRows24.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows24=373296 := by
  simp only [partRows24,List.length_append,MatrixRowBlocks.rows_weight_append,stats1608.1,stats1608.2,stats1609.1,stats1609.2,stats1610.1,stats1610.2,stats1611.1,stats1611.2,stats1612.1,stats1612.2,stats1613.1,stats1613.2,stats1614.1,stats1614.2,stats1615.1,stats1615.2,stats1616.1,stats1616.2,stats1617.1,stats1617.2,stats1618.1,stats1618.2,stats1619.1,stats1619.2,stats1620.1,stats1620.2,stats1621.1,stats1621.2,stats1622.1,stats1622.2,stats1623.1,stats1623.2,stats1624.1,stats1624.2,stats1625.1,stats1625.2,stats1626.1,stats1626.2,stats1627.1,stats1627.2,stats1628.1,stats1628.2,stats1629.1,stats1629.2,stats1630.1,stats1630.2,stats1631.1,stats1631.2,stats1632.1,stats1632.2,stats1633.1,stats1633.2,stats1634.1,stats1634.2,stats1635.1,stats1635.2,stats1636.1,stats1636.2,stats1637.1,stats1637.2,stats1638.1,stats1638.2,stats1639.1,stats1639.2,stats1640.1,stats1640.2,stats1641.1,stats1641.2,stats1642.1,stats1642.2,stats1643.1,stats1643.2,stats1644.1,stats1644.2,stats1645.1,stats1645.2,stats1646.1,stats1646.2,stats1647.1,stats1647.2,stats1648.1,stats1648.2,stats1649.1,stats1649.2,stats1650.1,stats1650.2,stats1651.1,stats1651.2,stats1652.1,stats1652.2,stats1653.1,stats1653.2,stats1654.1,stats1654.2,stats1655.1,stats1655.2,stats1656.1,stats1656.2,stats1657.1,stats1657.2,stats1658.1,stats1658.2,stats1659.1,stats1659.2,stats1660.1,stats1660.2,stats1661.1,stats1661.2,stats1662.1,stats1662.2,stats1663.1,stats1663.2,stats1664.1,stats1664.2,stats1665.1,stats1665.2,stats1666.1,stats1666.2,stats1667.1,stats1667.2,stats1668.1,stats1668.2,stats1669.1,stats1669.2,stats1670.1,stats1670.2,stats1671.1,stats1671.2]
  decide
end HashBlockCheckedRows
