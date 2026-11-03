import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData25
import PairedPathRoundInstructionMatrixData26
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1632 : actualRows1632=WordField.canonicalRows actualModulus 1632 (.badd 1630 1631) := by core033_kernel_decide
theorem stats1632 : actualRows1632.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1632=5388 := by core033_kernel_decide
theorem rows1633 : actualRows1633=WordField.canonicalRows actualModulus 1633 (.bnot 1632) := by core033_kernel_decide
theorem stats1633 : actualRows1633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1633=6276 := by core033_kernel_decide
theorem rows1634 : actualRows1634=WordField.canonicalRows actualModulus 1634 (.band 1633 990) := by core033_kernel_decide
theorem stats1634 : actualRows1634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1634=5124 := by core033_kernel_decide
theorem rows1635 : actualRows1635=WordField.canonicalRows actualModulus 1635 (.bxor 1629 1634) := by core033_kernel_decide
theorem stats1635 : actualRows1635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1635=7428 := by core033_kernel_decide
theorem rows1636 : actualRows1636=WordField.canonicalRows actualModulus 1636 (.shr 1395 1) := by core033_kernel_decide
theorem stats1636 : actualRows1636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1636=5052 := by core033_kernel_decide
theorem rows1637 : actualRows1637=WordField.canonicalRows actualModulus 1637 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1637 : actualRows1637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1637=2820 := by core033_kernel_decide
theorem rows1638 : actualRows1638=WordField.canonicalRows actualModulus 1638 (.bnot 1637) := by core033_kernel_decide
theorem stats1638 : actualRows1638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1638=6276 := by core033_kernel_decide
theorem rows1639 : actualRows1639=WordField.canonicalRows actualModulus 1639 (.band 1636 1638) := by core033_kernel_decide
theorem stats1639 : actualRows1639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1639=5124 := by core033_kernel_decide
theorem rows1640 : actualRows1640=WordField.canonicalRows actualModulus 1640 (.shr 1395 1) := by core033_kernel_decide
theorem stats1640 : actualRows1640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1640=5052 := by core033_kernel_decide
theorem rows1641 : actualRows1641=WordField.canonicalRows actualModulus 1641 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1641 : actualRows1641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1641=2820 := by core033_kernel_decide
theorem rows1642 : actualRows1642=WordField.canonicalRows actualModulus 1642 (.bnot 1641) := by core033_kernel_decide
theorem stats1642 : actualRows1642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1642=6276 := by core033_kernel_decide
theorem rows1643 : actualRows1643=WordField.canonicalRows actualModulus 1643 (.bxor 1640 1642) := by core033_kernel_decide
theorem stats1643 : actualRows1643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1643=7428 := by core033_kernel_decide
theorem rows1644 : actualRows1644=WordField.canonicalRows actualModulus 1644 (.shr 1395 1) := by core033_kernel_decide
theorem stats1644 : actualRows1644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1644=5052 := by core033_kernel_decide
theorem rows1645 : actualRows1645=WordField.canonicalRows actualModulus 1645 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1645 : actualRows1645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1645=2820 := by core033_kernel_decide
theorem rows1646 : actualRows1646=WordField.canonicalRows actualModulus 1646 (.bnot 1645) := by core033_kernel_decide
theorem stats1646 : actualRows1646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1646=6276 := by core033_kernel_decide
theorem rows1647 : actualRows1647=WordField.canonicalRows actualModulus 1647 (.badd 1644 1646) := by core033_kernel_decide
theorem stats1647 : actualRows1647.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1647=5388 := by core033_kernel_decide
theorem rows1648 : actualRows1648=WordField.canonicalRows actualModulus 1648 (.bnot 1647) := by core033_kernel_decide
theorem stats1648 : actualRows1648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1648=6276 := by core033_kernel_decide
theorem rows1649 : actualRows1649=WordField.canonicalRows actualModulus 1649 (.band 1643 1648) := by core033_kernel_decide
theorem stats1649 : actualRows1649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1649=5124 := by core033_kernel_decide
theorem rows1650 : actualRows1650=WordField.canonicalRows actualModulus 1650 (.bxor 1639 1649) := by core033_kernel_decide
theorem stats1650 : actualRows1650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1650=7428 := by core033_kernel_decide
theorem rows1651 : actualRows1651=WordField.canonicalRows actualModulus 1651 (.shr 1650 31) := by core033_kernel_decide
theorem stats1651 : actualRows1651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1651=2892 := by core033_kernel_decide
theorem rows1652 : actualRows1652=WordField.canonicalRows actualModulus 1652 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1652 : actualRows1652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1652=2892 := by core033_kernel_decide
theorem rows1653 : actualRows1653=WordField.canonicalRows actualModulus 1653 (.bxor 1651 1652) := by core033_kernel_decide
theorem stats1653 : actualRows1653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1653=7428 := by core033_kernel_decide
theorem rows1654 : actualRows1654=WordField.canonicalRows actualModulus 1654 (.badd 1485 1605) := by core033_kernel_decide
theorem stats1654 : actualRows1654.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1654=5388 := by core033_kernel_decide
theorem rows1655 : actualRows1655=WordField.canonicalRows actualModulus 1655 (.badd 1495 1615) := by core033_kernel_decide
theorem stats1655 : actualRows1655.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1655=5388 := by core033_kernel_decide
theorem rows1656 : actualRows1656=WordField.canonicalRows actualModulus 1656 (.band 1485 1605) := by core033_kernel_decide
theorem stats1656 : actualRows1656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1656=5124 := by core033_kernel_decide
theorem rows1657 : actualRows1657=WordField.canonicalRows actualModulus 1657 (.bxor 1485 1605) := by core033_kernel_decide
theorem stats1657 : actualRows1657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1657=7428 := by core033_kernel_decide
theorem rows1658 : actualRows1658=WordField.canonicalRows actualModulus 1658 (.badd 1485 1605) := by core033_kernel_decide
theorem stats1658 : actualRows1658.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1658=5388 := by core033_kernel_decide
theorem rows1659 : actualRows1659=WordField.canonicalRows actualModulus 1659 (.bnot 1658) := by core033_kernel_decide
theorem stats1659 : actualRows1659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1659=6276 := by core033_kernel_decide
theorem rows1660 : actualRows1660=WordField.canonicalRows actualModulus 1660 (.band 1657 1659) := by core033_kernel_decide
theorem stats1660 : actualRows1660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1660=5124 := by core033_kernel_decide
theorem rows1661 : actualRows1661=WordField.canonicalRows actualModulus 1661 (.bxor 1656 1660) := by core033_kernel_decide
theorem stats1661 : actualRows1661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1661=7428 := by core033_kernel_decide
theorem rows1662 : actualRows1662=WordField.canonicalRows actualModulus 1662 (.shr 1661 31) := by core033_kernel_decide
theorem stats1662 : actualRows1662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1662=2892 := by core033_kernel_decide
theorem rows1663 : actualRows1663=WordField.canonicalRows actualModulus 1663 (.badd 1655 1662) := by core033_kernel_decide
theorem stats1663 : actualRows1663.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1663=5388 := by core033_kernel_decide
theorem rows1664 : actualRows1664=WordField.canonicalRows actualModulus 1664 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1664 : actualRows1664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1664=2820 := by core033_kernel_decide
theorem rows1665 : actualRows1665=WordField.canonicalRows actualModulus 1665 (.bnot 1664) := by core033_kernel_decide
theorem stats1665 : actualRows1665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1665=6276 := by core033_kernel_decide
theorem rows1666 : actualRows1666=WordField.canonicalRows actualModulus 1666 (.band 1495 1665) := by core033_kernel_decide
theorem stats1666 : actualRows1666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1666=5124 := by core033_kernel_decide
theorem rows1667 : actualRows1667=WordField.canonicalRows actualModulus 1667 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1667 : actualRows1667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1667=2820 := by core033_kernel_decide
theorem rows1668 : actualRows1668=WordField.canonicalRows actualModulus 1668 (.bnot 1667) := by core033_kernel_decide
theorem stats1668 : actualRows1668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1668=6276 := by core033_kernel_decide
theorem rows1669 : actualRows1669=WordField.canonicalRows actualModulus 1669 (.bxor 1495 1668) := by core033_kernel_decide
theorem stats1669 : actualRows1669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1669=7428 := by core033_kernel_decide
theorem rows1670 : actualRows1670=WordField.canonicalRows actualModulus 1670 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1670 : actualRows1670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1670=2820 := by core033_kernel_decide
theorem rows1671 : actualRows1671=WordField.canonicalRows actualModulus 1671 (.bnot 1670) := by core033_kernel_decide
theorem stats1671 : actualRows1671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1671=6276 := by core033_kernel_decide
theorem rows1672 : actualRows1672=WordField.canonicalRows actualModulus 1672 (.badd 1495 1671) := by core033_kernel_decide
theorem stats1672 : actualRows1672.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1672=5388 := by core033_kernel_decide
theorem rows1673 : actualRows1673=WordField.canonicalRows actualModulus 1673 (.bnot 1672) := by core033_kernel_decide
theorem stats1673 : actualRows1673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1673=6276 := by core033_kernel_decide
theorem rows1674 : actualRows1674=WordField.canonicalRows actualModulus 1674 (.band 1669 1673) := by core033_kernel_decide
theorem stats1674 : actualRows1674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1674=5124 := by core033_kernel_decide
theorem rows1675 : actualRows1675=WordField.canonicalRows actualModulus 1675 (.bxor 1666 1674) := by core033_kernel_decide
theorem stats1675 : actualRows1675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1675=7428 := by core033_kernel_decide
theorem rows1676 : actualRows1676=WordField.canonicalRows actualModulus 1676 (.shr 1675 31) := by core033_kernel_decide
theorem stats1676 : actualRows1676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1676=2892 := by core033_kernel_decide
theorem rows1677 : actualRows1677=WordField.canonicalRows actualModulus 1677 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1677 : actualRows1677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1677=2892 := by core033_kernel_decide
theorem rows1678 : actualRows1678=WordField.canonicalRows actualModulus 1678 (.bxor 1676 1677) := by core033_kernel_decide
theorem stats1678 : actualRows1678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1678=7428 := by core033_kernel_decide
theorem rows1679 : actualRows1679=WordField.canonicalRows actualModulus 1679 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1679 : actualRows1679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1679=2892 := by core033_kernel_decide
theorem rows1680 : actualRows1680=WordField.canonicalRows actualModulus 1680 (.bnot 1679) := by core033_kernel_decide
theorem stats1680 : actualRows1680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1680=6276 := by core033_kernel_decide
theorem rows1681 : actualRows1681=WordField.canonicalRows actualModulus 1681 (.band 1485 1680) := by core033_kernel_decide
theorem stats1681 : actualRows1681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1681=5124 := by core033_kernel_decide
theorem rows1682 : actualRows1682=WordField.canonicalRows actualModulus 1682 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1682 : actualRows1682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1682=2892 := by core033_kernel_decide
theorem rows1683 : actualRows1683=WordField.canonicalRows actualModulus 1683 (.bnot 1682) := by core033_kernel_decide
theorem stats1683 : actualRows1683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1683=6276 := by core033_kernel_decide
theorem rows1684 : actualRows1684=WordField.canonicalRows actualModulus 1684 (.bxor 1485 1683) := by core033_kernel_decide
theorem stats1684 : actualRows1684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1684=7428 := by core033_kernel_decide
theorem rows1685 : actualRows1685=WordField.canonicalRows actualModulus 1685 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1685 : actualRows1685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1685=2892 := by core033_kernel_decide
theorem rows1686 : actualRows1686=WordField.canonicalRows actualModulus 1686 (.bnot 1685) := by core033_kernel_decide
theorem stats1686 : actualRows1686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1686=6276 := by core033_kernel_decide
theorem rows1687 : actualRows1687=WordField.canonicalRows actualModulus 1687 (.badd 1485 1686) := by core033_kernel_decide
theorem stats1687 : actualRows1687.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1687=5388 := by core033_kernel_decide
theorem rows1688 : actualRows1688=WordField.canonicalRows actualModulus 1688 (.bnot 1687) := by core033_kernel_decide
theorem stats1688 : actualRows1688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1688=6276 := by core033_kernel_decide
theorem rows1689 : actualRows1689=WordField.canonicalRows actualModulus 1689 (.band 1684 1688) := by core033_kernel_decide
theorem stats1689 : actualRows1689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1689=5124 := by core033_kernel_decide
theorem rows1690 : actualRows1690=WordField.canonicalRows actualModulus 1690 (.bxor 1681 1689) := by core033_kernel_decide
theorem stats1690 : actualRows1690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1690=7428 := by core033_kernel_decide
theorem rows1691 : actualRows1691=WordField.canonicalRows actualModulus 1691 (.shr 1690 31) := by core033_kernel_decide
theorem stats1691 : actualRows1691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1691=2892 := by core033_kernel_decide
theorem rows1692 : actualRows1692=WordField.canonicalRows actualModulus 1692 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1692 : actualRows1692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1692=2892 := by core033_kernel_decide
theorem rows1693 : actualRows1693=WordField.canonicalRows actualModulus 1693 (.bxor 1691 1692) := by core033_kernel_decide
theorem stats1693 : actualRows1693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1693=7428 := by core033_kernel_decide
theorem rows1694 : actualRows1694=WordField.canonicalRows actualModulus 1694 (.band 1678 1693) := by core033_kernel_decide
theorem stats1694 : actualRows1694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1694=5124 := by core033_kernel_decide
theorem rows1695 : actualRows1695=WordField.canonicalRows actualModulus 1695 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1695 : actualRows1695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1695=2820 := by core033_kernel_decide
def partRows24 : List R1CS.Row := actualRows1632++actualRows1633++actualRows1634++actualRows1635++actualRows1636++actualRows1637++actualRows1638++actualRows1639++actualRows1640++actualRows1641++actualRows1642++actualRows1643++actualRows1644++actualRows1645++actualRows1646++actualRows1647++actualRows1648++actualRows1649++actualRows1650++actualRows1651++actualRows1652++actualRows1653++actualRows1654++actualRows1655++actualRows1656++actualRows1657++actualRows1658++actualRows1659++actualRows1660++actualRows1661++actualRows1662++actualRows1663++actualRows1664++actualRows1665++actualRows1666++actualRows1667++actualRows1668++actualRows1669++actualRows1670++actualRows1671++actualRows1672++actualRows1673++actualRows1674++actualRows1675++actualRows1676++actualRows1677++actualRows1678++actualRows1679++actualRows1680++actualRows1681++actualRows1682++actualRows1683++actualRows1684++actualRows1685++actualRows1686++actualRows1687++actualRows1688++actualRows1689++actualRows1690++actualRows1691++actualRows1692++actualRows1693++actualRows1694++actualRows1695
def partOps24 : List WordIR.Op := [.badd 1630 1631,.bnot 1632,.band 1633 990,.bxor 1629 1634,.shr 1395 1,.literal (BitVec.ofNat 32 0),.bnot 1637,.band 1636 1638,.shr 1395 1,.literal (BitVec.ofNat 32 0),.bnot 1641,.bxor 1640 1642,.shr 1395 1,.literal (BitVec.ofNat 32 0),.bnot 1645,.badd 1644 1646,.bnot 1647,.band 1643 1648,.bxor 1639 1649,.shr 1650 31,.literal (BitVec.ofNat 32 1),.bxor 1651 1652,.badd 1485 1605,.badd 1495 1615,.band 1485 1605,.bxor 1485 1605,.badd 1485 1605,.bnot 1658,.band 1657 1659,.bxor 1656 1660,.shr 1661 31,.badd 1655 1662,.literal (BitVec.ofNat 32 0),.bnot 1664,.band 1495 1665,.literal (BitVec.ofNat 32 0),.bnot 1667,.bxor 1495 1668,.literal (BitVec.ofNat 32 0),.bnot 1670,.badd 1495 1671,.bnot 1672,.band 1669 1673,.bxor 1666 1674,.shr 1675 31,.literal (BitVec.ofNat 32 1),.bxor 1676 1677,.literal (BitVec.ofNat 32 1048576),.bnot 1679,.band 1485 1680,.literal (BitVec.ofNat 32 1048576),.bnot 1682,.bxor 1485 1683,.literal (BitVec.ofNat 32 1048576),.bnot 1685,.badd 1485 1686,.bnot 1687,.band 1684 1688,.bxor 1681 1689,.shr 1690 31,.literal (BitVec.ofNat 32 1),.bxor 1691 1692,.band 1678 1693,.literal (BitVec.ofNat 32 0)]
theorem partExact24 : partRows24=WordField.rows actualModulus 1632 partOps24 := by
  simp only [partRows24,partOps24,WordField.rows,rows1632,rows1633,rows1634,rows1635,rows1636,rows1637,rows1638,rows1639,rows1640,rows1641,rows1642,rows1643,rows1644,rows1645,rows1646,rows1647,rows1648,rows1649,rows1650,rows1651,rows1652,rows1653,rows1654,rows1655,rows1656,rows1657,rows1658,rows1659,rows1660,rows1661,rows1662,rows1663,rows1664,rows1665,rows1666,rows1667,rows1668,rows1669,rows1670,rows1671,rows1672,rows1673,rows1674,rows1675,rows1676,rows1677,rows1678,rows1679,rows1680,rows1681,rows1682,rows1683,rows1684,rows1685,rows1686,rows1687,rows1688,rows1689,rows1690,rows1691,rows1692,rows1693,rows1694,rows1695,List.append_assoc,List.append_nil]
theorem partLength24 : partOps24.length=64 := by decide
theorem partStats24 : partRows24.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows24=335160 := by
  simp only [partRows24,List.length_append,MatrixRowBlocks.rows_weight_append,stats1632.1,stats1632.2,stats1633.1,stats1633.2,stats1634.1,stats1634.2,stats1635.1,stats1635.2,stats1636.1,stats1636.2,stats1637.1,stats1637.2,stats1638.1,stats1638.2,stats1639.1,stats1639.2,stats1640.1,stats1640.2,stats1641.1,stats1641.2,stats1642.1,stats1642.2,stats1643.1,stats1643.2,stats1644.1,stats1644.2,stats1645.1,stats1645.2,stats1646.1,stats1646.2,stats1647.1,stats1647.2,stats1648.1,stats1648.2,stats1649.1,stats1649.2,stats1650.1,stats1650.2,stats1651.1,stats1651.2,stats1652.1,stats1652.2,stats1653.1,stats1653.2,stats1654.1,stats1654.2,stats1655.1,stats1655.2,stats1656.1,stats1656.2,stats1657.1,stats1657.2,stats1658.1,stats1658.2,stats1659.1,stats1659.2,stats1660.1,stats1660.2,stats1661.1,stats1661.2,stats1662.1,stats1662.2,stats1663.1,stats1663.2,stats1664.1,stats1664.2,stats1665.1,stats1665.2,stats1666.1,stats1666.2,stats1667.1,stats1667.2,stats1668.1,stats1668.2,stats1669.1,stats1669.2,stats1670.1,stats1670.2,stats1671.1,stats1671.2,stats1672.1,stats1672.2,stats1673.1,stats1673.2,stats1674.1,stats1674.2,stats1675.1,stats1675.2,stats1676.1,stats1676.2,stats1677.1,stats1677.2,stats1678.1,stats1678.2,stats1679.1,stats1679.2,stats1680.1,stats1680.2,stats1681.1,stats1681.2,stats1682.1,stats1682.2,stats1683.1,stats1683.2,stats1684.1,stats1684.2,stats1685.1,stats1685.2,stats1686.1,stats1686.2,stats1687.1,stats1687.2,stats1688.1,stats1688.2,stats1689.1,stats1689.2,stats1690.1,stats1690.2,stats1691.1,stats1691.2,stats1692.1,stats1692.2,stats1693.1,stats1693.2,stats1694.1,stats1694.2,stats1695.1,stats1695.2]
  decide
end PairedPathRoundCheckedRows
