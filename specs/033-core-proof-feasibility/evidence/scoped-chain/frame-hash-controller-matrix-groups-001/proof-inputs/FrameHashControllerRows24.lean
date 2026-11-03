import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData24
import FrameHashControllerInstructionMatrixData25
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1579 : actualRows1579=WordField.canonicalRows actualModulus 1579 (.bxor 1577 1578) := by core033_kernel_decide
theorem stats1579 : actualRows1579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1579=7428 := by core033_kernel_decide
theorem rows1580 : actualRows1580=WordField.canonicalRows actualModulus 1580 (.bnot 1579) := by core033_kernel_decide
theorem stats1580 : actualRows1580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1580=6276 := by core033_kernel_decide
theorem rows1581 : actualRows1581=WordField.canonicalRows actualModulus 1581 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1581 : actualRows1581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1581=2892 := by core033_kernel_decide
theorem rows1582 : actualRows1582=WordField.canonicalRows actualModulus 1582 (.badd 1580 1581) := by core033_kernel_decide
theorem stats1582 : actualRows1582.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1582=5388 := by core033_kernel_decide
theorem rows1583 : actualRows1583=WordField.canonicalRows actualModulus 1583 (.band 1582 38) := by core033_kernel_decide
theorem stats1583 : actualRows1583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1583=5124 := by core033_kernel_decide
theorem rows1584 : actualRows1584=WordField.canonicalRows actualModulus 1584 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1584 : actualRows1584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1584=2892 := by core033_kernel_decide
theorem rows1585 : actualRows1585=WordField.canonicalRows actualModulus 1585 (.bxor 0 1584) := by core033_kernel_decide
theorem stats1585 : actualRows1585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1585=7428 := by core033_kernel_decide
theorem rows1586 : actualRows1586=WordField.canonicalRows actualModulus 1586 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1586 : actualRows1586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1586=2820 := by core033_kernel_decide
theorem rows1587 : actualRows1587=WordField.canonicalRows actualModulus 1587 (.bnot 1586) := by core033_kernel_decide
theorem stats1587 : actualRows1587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1587=6276 := by core033_kernel_decide
theorem rows1588 : actualRows1588=WordField.canonicalRows actualModulus 1588 (.band 1585 1587) := by core033_kernel_decide
theorem stats1588 : actualRows1588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1588=5124 := by core033_kernel_decide
theorem rows1589 : actualRows1589=WordField.canonicalRows actualModulus 1589 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1589 : actualRows1589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1589=2892 := by core033_kernel_decide
theorem rows1590 : actualRows1590=WordField.canonicalRows actualModulus 1590 (.bxor 0 1589) := by core033_kernel_decide
theorem stats1590 : actualRows1590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1590=7428 := by core033_kernel_decide
theorem rows1591 : actualRows1591=WordField.canonicalRows actualModulus 1591 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1591 : actualRows1591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1591=2820 := by core033_kernel_decide
theorem rows1592 : actualRows1592=WordField.canonicalRows actualModulus 1592 (.bnot 1591) := by core033_kernel_decide
theorem stats1592 : actualRows1592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1592=6276 := by core033_kernel_decide
theorem rows1593 : actualRows1593=WordField.canonicalRows actualModulus 1593 (.bxor 1590 1592) := by core033_kernel_decide
theorem stats1593 : actualRows1593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1593=7428 := by core033_kernel_decide
theorem rows1594 : actualRows1594=WordField.canonicalRows actualModulus 1594 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1594 : actualRows1594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1594=2892 := by core033_kernel_decide
theorem rows1595 : actualRows1595=WordField.canonicalRows actualModulus 1595 (.bxor 0 1594) := by core033_kernel_decide
theorem stats1595 : actualRows1595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1595=7428 := by core033_kernel_decide
theorem rows1596 : actualRows1596=WordField.canonicalRows actualModulus 1596 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1596 : actualRows1596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1596=2820 := by core033_kernel_decide
theorem rows1597 : actualRows1597=WordField.canonicalRows actualModulus 1597 (.bnot 1596) := by core033_kernel_decide
theorem stats1597 : actualRows1597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1597=6276 := by core033_kernel_decide
theorem rows1598 : actualRows1598=WordField.canonicalRows actualModulus 1598 (.badd 1595 1597) := by core033_kernel_decide
theorem stats1598 : actualRows1598.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1598=5388 := by core033_kernel_decide
theorem rows1599 : actualRows1599=WordField.canonicalRows actualModulus 1599 (.bnot 1598) := by core033_kernel_decide
theorem stats1599 : actualRows1599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1599=6276 := by core033_kernel_decide
theorem rows1600 : actualRows1600=WordField.canonicalRows actualModulus 1600 (.band 1593 1599) := by core033_kernel_decide
theorem stats1600 : actualRows1600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1600=5124 := by core033_kernel_decide
theorem rows1601 : actualRows1601=WordField.canonicalRows actualModulus 1601 (.bxor 1588 1600) := by core033_kernel_decide
theorem stats1601 : actualRows1601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1601=7428 := by core033_kernel_decide
theorem rows1602 : actualRows1602=WordField.canonicalRows actualModulus 1602 (.shr 1601 31) := by core033_kernel_decide
theorem stats1602 : actualRows1602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1602=2892 := by core033_kernel_decide
theorem rows1603 : actualRows1603=WordField.canonicalRows actualModulus 1603 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1603 : actualRows1603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1603=2892 := by core033_kernel_decide
theorem rows1604 : actualRows1604=WordField.canonicalRows actualModulus 1604 (.bxor 1602 1603) := by core033_kernel_decide
theorem stats1604 : actualRows1604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1604=7428 := by core033_kernel_decide
theorem rows1605 : actualRows1605=WordField.canonicalRows actualModulus 1605 (.bnot 1604) := by core033_kernel_decide
theorem stats1605 : actualRows1605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1605=6276 := by core033_kernel_decide
theorem rows1606 : actualRows1606=WordField.canonicalRows actualModulus 1606 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1606 : actualRows1606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1606=2892 := by core033_kernel_decide
theorem rows1607 : actualRows1607=WordField.canonicalRows actualModulus 1607 (.badd 1605 1606) := by core033_kernel_decide
theorem stats1607 : actualRows1607.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1607=5388 := by core033_kernel_decide
theorem rows1608 : actualRows1608=WordField.canonicalRows actualModulus 1608 (.bnot 1607) := by core033_kernel_decide
theorem stats1608 : actualRows1608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1608=6276 := by core033_kernel_decide
theorem rows1609 : actualRows1609=WordField.canonicalRows actualModulus 1609 (.literal (BitVec.ofNat 32 2773480762)) := by core033_kernel_decide
theorem stats1609 : actualRows1609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1609=4188 := by core033_kernel_decide
theorem rows1610 : actualRows1610=WordField.canonicalRows actualModulus 1610 (.band 1608 1609) := by core033_kernel_decide
theorem stats1610 : actualRows1610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1610=5124 := by core033_kernel_decide
theorem rows1611 : actualRows1611=WordField.canonicalRows actualModulus 1611 (.bxor 1583 1610) := by core033_kernel_decide
theorem stats1611 : actualRows1611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1611=7428 := by core033_kernel_decide
theorem rows1612 : actualRows1612=WordField.canonicalRows actualModulus 1612 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1612 : actualRows1612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1612=2892 := by core033_kernel_decide
theorem rows1613 : actualRows1613=WordField.canonicalRows actualModulus 1613 (.bxor 0 1612) := by core033_kernel_decide
theorem stats1613 : actualRows1613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1613=7428 := by core033_kernel_decide
theorem rows1614 : actualRows1614=WordField.canonicalRows actualModulus 1614 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1614 : actualRows1614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1614=2820 := by core033_kernel_decide
theorem rows1615 : actualRows1615=WordField.canonicalRows actualModulus 1615 (.bnot 1614) := by core033_kernel_decide
theorem stats1615 : actualRows1615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1615=6276 := by core033_kernel_decide
theorem rows1616 : actualRows1616=WordField.canonicalRows actualModulus 1616 (.band 1613 1615) := by core033_kernel_decide
theorem stats1616 : actualRows1616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1616=5124 := by core033_kernel_decide
theorem rows1617 : actualRows1617=WordField.canonicalRows actualModulus 1617 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1617 : actualRows1617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1617=2892 := by core033_kernel_decide
theorem rows1618 : actualRows1618=WordField.canonicalRows actualModulus 1618 (.bxor 0 1617) := by core033_kernel_decide
theorem stats1618 : actualRows1618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1618=7428 := by core033_kernel_decide
theorem rows1619 : actualRows1619=WordField.canonicalRows actualModulus 1619 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1619 : actualRows1619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1619=2820 := by core033_kernel_decide
theorem rows1620 : actualRows1620=WordField.canonicalRows actualModulus 1620 (.bnot 1619) := by core033_kernel_decide
theorem stats1620 : actualRows1620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1620=6276 := by core033_kernel_decide
theorem rows1621 : actualRows1621=WordField.canonicalRows actualModulus 1621 (.bxor 1618 1620) := by core033_kernel_decide
theorem stats1621 : actualRows1621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1621=7428 := by core033_kernel_decide
theorem rows1622 : actualRows1622=WordField.canonicalRows actualModulus 1622 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1622 : actualRows1622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1622=2892 := by core033_kernel_decide
theorem rows1623 : actualRows1623=WordField.canonicalRows actualModulus 1623 (.bxor 0 1622) := by core033_kernel_decide
theorem stats1623 : actualRows1623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1623=7428 := by core033_kernel_decide
theorem rows1624 : actualRows1624=WordField.canonicalRows actualModulus 1624 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1624 : actualRows1624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1624=2820 := by core033_kernel_decide
theorem rows1625 : actualRows1625=WordField.canonicalRows actualModulus 1625 (.bnot 1624) := by core033_kernel_decide
theorem stats1625 : actualRows1625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1625=6276 := by core033_kernel_decide
theorem rows1626 : actualRows1626=WordField.canonicalRows actualModulus 1626 (.badd 1623 1625) := by core033_kernel_decide
theorem stats1626 : actualRows1626.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1626=5388 := by core033_kernel_decide
theorem rows1627 : actualRows1627=WordField.canonicalRows actualModulus 1627 (.bnot 1626) := by core033_kernel_decide
theorem stats1627 : actualRows1627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1627=6276 := by core033_kernel_decide
theorem rows1628 : actualRows1628=WordField.canonicalRows actualModulus 1628 (.band 1621 1627) := by core033_kernel_decide
theorem stats1628 : actualRows1628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1628=5124 := by core033_kernel_decide
theorem rows1629 : actualRows1629=WordField.canonicalRows actualModulus 1629 (.bxor 1616 1628) := by core033_kernel_decide
theorem stats1629 : actualRows1629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1629=7428 := by core033_kernel_decide
theorem rows1630 : actualRows1630=WordField.canonicalRows actualModulus 1630 (.shr 1629 31) := by core033_kernel_decide
theorem stats1630 : actualRows1630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1630=2892 := by core033_kernel_decide
theorem rows1631 : actualRows1631=WordField.canonicalRows actualModulus 1631 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1631 : actualRows1631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1631=2892 := by core033_kernel_decide
theorem rows1632 : actualRows1632=WordField.canonicalRows actualModulus 1632 (.bxor 1630 1631) := by core033_kernel_decide
theorem stats1632 : actualRows1632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1632=7428 := by core033_kernel_decide
theorem rows1633 : actualRows1633=WordField.canonicalRows actualModulus 1633 (.bnot 1632) := by core033_kernel_decide
theorem stats1633 : actualRows1633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1633=6276 := by core033_kernel_decide
theorem rows1634 : actualRows1634=WordField.canonicalRows actualModulus 1634 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1634 : actualRows1634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1634=2892 := by core033_kernel_decide
theorem rows1635 : actualRows1635=WordField.canonicalRows actualModulus 1635 (.badd 1633 1634) := by core033_kernel_decide
theorem stats1635 : actualRows1635.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1635=5388 := by core033_kernel_decide
theorem rows1636 : actualRows1636=WordField.canonicalRows actualModulus 1636 (.band 1635 39) := by core033_kernel_decide
theorem stats1636 : actualRows1636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1636=5124 := by core033_kernel_decide
theorem rows1637 : actualRows1637=WordField.canonicalRows actualModulus 1637 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1637 : actualRows1637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1637=2892 := by core033_kernel_decide
theorem rows1638 : actualRows1638=WordField.canonicalRows actualModulus 1638 (.bxor 0 1637) := by core033_kernel_decide
theorem stats1638 : actualRows1638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1638=7428 := by core033_kernel_decide
theorem rows1639 : actualRows1639=WordField.canonicalRows actualModulus 1639 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1639 : actualRows1639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1639=2820 := by core033_kernel_decide
theorem rows1640 : actualRows1640=WordField.canonicalRows actualModulus 1640 (.bnot 1639) := by core033_kernel_decide
theorem stats1640 : actualRows1640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1640=6276 := by core033_kernel_decide
theorem rows1641 : actualRows1641=WordField.canonicalRows actualModulus 1641 (.band 1638 1640) := by core033_kernel_decide
theorem stats1641 : actualRows1641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1641=5124 := by core033_kernel_decide
theorem rows1642 : actualRows1642=WordField.canonicalRows actualModulus 1642 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1642 : actualRows1642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1642=2892 := by core033_kernel_decide
def partRows24 : List R1CS.Row := actualRows1579++actualRows1580++actualRows1581++actualRows1582++actualRows1583++actualRows1584++actualRows1585++actualRows1586++actualRows1587++actualRows1588++actualRows1589++actualRows1590++actualRows1591++actualRows1592++actualRows1593++actualRows1594++actualRows1595++actualRows1596++actualRows1597++actualRows1598++actualRows1599++actualRows1600++actualRows1601++actualRows1602++actualRows1603++actualRows1604++actualRows1605++actualRows1606++actualRows1607++actualRows1608++actualRows1609++actualRows1610++actualRows1611++actualRows1612++actualRows1613++actualRows1614++actualRows1615++actualRows1616++actualRows1617++actualRows1618++actualRows1619++actualRows1620++actualRows1621++actualRows1622++actualRows1623++actualRows1624++actualRows1625++actualRows1626++actualRows1627++actualRows1628++actualRows1629++actualRows1630++actualRows1631++actualRows1632++actualRows1633++actualRows1634++actualRows1635++actualRows1636++actualRows1637++actualRows1638++actualRows1639++actualRows1640++actualRows1641++actualRows1642
def partOps24 : List WordIR.Op := [.bxor 1577 1578,.bnot 1579,.literal (BitVec.ofNat 32 1),.badd 1580 1581,.band 1582 38,.literal (BitVec.ofNat 32 2),.bxor 0 1584,.literal (BitVec.ofNat 32 0),.bnot 1586,.band 1585 1587,.literal (BitVec.ofNat 32 2),.bxor 0 1589,.literal (BitVec.ofNat 32 0),.bnot 1591,.bxor 1590 1592,.literal (BitVec.ofNat 32 2),.bxor 0 1594,.literal (BitVec.ofNat 32 0),.bnot 1596,.badd 1595 1597,.bnot 1598,.band 1593 1599,.bxor 1588 1600,.shr 1601 31,.literal (BitVec.ofNat 32 1),.bxor 1602 1603,.bnot 1604,.literal (BitVec.ofNat 32 1),.badd 1605 1606,.bnot 1607,.literal (BitVec.ofNat 32 2773480762),.band 1608 1609,.bxor 1583 1610,.literal (BitVec.ofNat 32 2),.bxor 0 1612,.literal (BitVec.ofNat 32 0),.bnot 1614,.band 1613 1615,.literal (BitVec.ofNat 32 2),.bxor 0 1617,.literal (BitVec.ofNat 32 0),.bnot 1619,.bxor 1618 1620,.literal (BitVec.ofNat 32 2),.bxor 0 1622,.literal (BitVec.ofNat 32 0),.bnot 1624,.badd 1623 1625,.bnot 1626,.band 1621 1627,.bxor 1616 1628,.shr 1629 31,.literal (BitVec.ofNat 32 1),.bxor 1630 1631,.bnot 1632,.literal (BitVec.ofNat 32 1),.badd 1633 1634,.band 1635 39,.literal (BitVec.ofNat 32 2),.bxor 0 1637,.literal (BitVec.ofNat 32 0),.bnot 1639,.band 1638 1640,.literal (BitVec.ofNat 32 2)]
theorem partExact24 : partRows24=WordField.rows actualModulus 1579 partOps24 := by
  simp only [partRows24,partOps24,WordField.rows,rows1579,rows1580,rows1581,rows1582,rows1583,rows1584,rows1585,rows1586,rows1587,rows1588,rows1589,rows1590,rows1591,rows1592,rows1593,rows1594,rows1595,rows1596,rows1597,rows1598,rows1599,rows1600,rows1601,rows1602,rows1603,rows1604,rows1605,rows1606,rows1607,rows1608,rows1609,rows1610,rows1611,rows1612,rows1613,rows1614,rows1615,rows1616,rows1617,rows1618,rows1619,rows1620,rows1621,rows1622,rows1623,rows1624,rows1625,rows1626,rows1627,rows1628,rows1629,rows1630,rows1631,rows1632,rows1633,rows1634,rows1635,rows1636,rows1637,rows1638,rows1639,rows1640,rows1641,rows1642,List.append_assoc,List.append_nil]
theorem partLength24 : partOps24.length=64 := by decide
theorem partStats24 : partRows24.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows24=328248 := by
  simp only [partRows24,List.length_append,MatrixRowBlocks.rows_weight_append,stats1579.1,stats1579.2,stats1580.1,stats1580.2,stats1581.1,stats1581.2,stats1582.1,stats1582.2,stats1583.1,stats1583.2,stats1584.1,stats1584.2,stats1585.1,stats1585.2,stats1586.1,stats1586.2,stats1587.1,stats1587.2,stats1588.1,stats1588.2,stats1589.1,stats1589.2,stats1590.1,stats1590.2,stats1591.1,stats1591.2,stats1592.1,stats1592.2,stats1593.1,stats1593.2,stats1594.1,stats1594.2,stats1595.1,stats1595.2,stats1596.1,stats1596.2,stats1597.1,stats1597.2,stats1598.1,stats1598.2,stats1599.1,stats1599.2,stats1600.1,stats1600.2,stats1601.1,stats1601.2,stats1602.1,stats1602.2,stats1603.1,stats1603.2,stats1604.1,stats1604.2,stats1605.1,stats1605.2,stats1606.1,stats1606.2,stats1607.1,stats1607.2,stats1608.1,stats1608.2,stats1609.1,stats1609.2,stats1610.1,stats1610.2,stats1611.1,stats1611.2,stats1612.1,stats1612.2,stats1613.1,stats1613.2,stats1614.1,stats1614.2,stats1615.1,stats1615.2,stats1616.1,stats1616.2,stats1617.1,stats1617.2,stats1618.1,stats1618.2,stats1619.1,stats1619.2,stats1620.1,stats1620.2,stats1621.1,stats1621.2,stats1622.1,stats1622.2,stats1623.1,stats1623.2,stats1624.1,stats1624.2,stats1625.1,stats1625.2,stats1626.1,stats1626.2,stats1627.1,stats1627.2,stats1628.1,stats1628.2,stats1629.1,stats1629.2,stats1630.1,stats1630.2,stats1631.1,stats1631.2,stats1632.1,stats1632.2,stats1633.1,stats1633.2,stats1634.1,stats1634.2,stats1635.1,stats1635.2,stats1636.1,stats1636.2,stats1637.1,stats1637.2,stats1638.1,stats1638.2,stats1639.1,stats1639.2,stats1640.1,stats1640.2,stats1641.1,stats1641.2,stats1642.1,stats1642.2]
  decide
end FrameHashControllerCheckedRows
