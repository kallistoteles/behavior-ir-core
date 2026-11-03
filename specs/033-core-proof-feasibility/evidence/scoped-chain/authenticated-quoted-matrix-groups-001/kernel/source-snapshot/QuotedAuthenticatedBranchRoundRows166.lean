import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData167
import AuthenticatedBranchRoundInstructionMatrixData168
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10742 : actualRows10742=WordField.canonicalRows actualModulus 10742 (.bnot 10609) := by core033_kernel_decide
theorem stats10742 : actualRows10742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10742=6276 := by core033_kernel_decide
theorem rows10743 : actualRows10743=WordField.canonicalRows actualModulus 10743 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10743 : actualRows10743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10743=2892 := by core033_kernel_decide
theorem rows10744 : actualRows10744=WordField.canonicalRows actualModulus 10744 (.badd 10742 10743) := by core033_kernel_decide
theorem stats10744 : actualRows10744.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10744=5388 := by core033_kernel_decide
theorem rows10745 : actualRows10745=WordField.canonicalRows actualModulus 10745 (.band 10744 843) := by core033_kernel_decide
theorem stats10745 : actualRows10745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10745=5124 := by core033_kernel_decide
theorem rows10746 : actualRows10746=WordField.canonicalRows actualModulus 10746 (.bnot 10609) := by core033_kernel_decide
theorem stats10746 : actualRows10746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10746=6276 := by core033_kernel_decide
theorem rows10747 : actualRows10747=WordField.canonicalRows actualModulus 10747 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10747 : actualRows10747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10747=2892 := by core033_kernel_decide
theorem rows10748 : actualRows10748=WordField.canonicalRows actualModulus 10748 (.badd 10746 10747) := by core033_kernel_decide
theorem stats10748 : actualRows10748.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10748=5388 := by core033_kernel_decide
theorem rows10749 : actualRows10749=WordField.canonicalRows actualModulus 10749 (.bnot 10748) := by core033_kernel_decide
theorem stats10749 : actualRows10749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10749=6276 := by core033_kernel_decide
theorem rows10750 : actualRows10750=WordField.canonicalRows actualModulus 10750 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10750 : actualRows10750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10750=2820 := by core033_kernel_decide
theorem rows10751 : actualRows10751=WordField.canonicalRows actualModulus 10751 (.band 10749 10750) := by core033_kernel_decide
theorem stats10751 : actualRows10751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10751=5124 := by core033_kernel_decide
theorem rows10752 : actualRows10752=WordField.canonicalRows actualModulus 10752 (.bxor 10745 10751) := by core033_kernel_decide
theorem stats10752 : actualRows10752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10752=7428 := by core033_kernel_decide
theorem rows10753 : actualRows10753=WordField.canonicalRows actualModulus 10753 (.bnot 10609) := by core033_kernel_decide
theorem stats10753 : actualRows10753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10753=6276 := by core033_kernel_decide
theorem rows10754 : actualRows10754=WordField.canonicalRows actualModulus 10754 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10754 : actualRows10754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10754=2892 := by core033_kernel_decide
theorem rows10755 : actualRows10755=WordField.canonicalRows actualModulus 10755 (.badd 10753 10754) := by core033_kernel_decide
theorem stats10755 : actualRows10755.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10755=5388 := by core033_kernel_decide
theorem rows10756 : actualRows10756=WordField.canonicalRows actualModulus 10756 (.band 10755 863) := by core033_kernel_decide
theorem stats10756 : actualRows10756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10756=5124 := by core033_kernel_decide
theorem rows10757 : actualRows10757=WordField.canonicalRows actualModulus 10757 (.bnot 10609) := by core033_kernel_decide
theorem stats10757 : actualRows10757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10757=6276 := by core033_kernel_decide
theorem rows10758 : actualRows10758=WordField.canonicalRows actualModulus 10758 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10758 : actualRows10758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10758=2892 := by core033_kernel_decide
theorem rows10759 : actualRows10759=WordField.canonicalRows actualModulus 10759 (.badd 10757 10758) := by core033_kernel_decide
theorem stats10759 : actualRows10759.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10759=5388 := by core033_kernel_decide
theorem rows10760 : actualRows10760=WordField.canonicalRows actualModulus 10760 (.bnot 10759) := by core033_kernel_decide
theorem stats10760 : actualRows10760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10760=6276 := by core033_kernel_decide
theorem rows10761 : actualRows10761=WordField.canonicalRows actualModulus 10761 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10761 : actualRows10761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10761=2820 := by core033_kernel_decide
theorem rows10762 : actualRows10762=WordField.canonicalRows actualModulus 10762 (.band 10760 10761) := by core033_kernel_decide
theorem stats10762 : actualRows10762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10762=5124 := by core033_kernel_decide
theorem rows10763 : actualRows10763=WordField.canonicalRows actualModulus 10763 (.bxor 10756 10762) := by core033_kernel_decide
theorem stats10763 : actualRows10763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10763=7428 := by core033_kernel_decide
theorem rows10764 : actualRows10764=WordField.canonicalRows actualModulus 10764 (.bnot 10609) := by core033_kernel_decide
theorem stats10764 : actualRows10764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10764=6276 := by core033_kernel_decide
theorem rows10765 : actualRows10765=WordField.canonicalRows actualModulus 10765 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10765 : actualRows10765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10765=2892 := by core033_kernel_decide
theorem rows10766 : actualRows10766=WordField.canonicalRows actualModulus 10766 (.badd 10764 10765) := by core033_kernel_decide
theorem stats10766 : actualRows10766.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10766=5388 := by core033_kernel_decide
theorem rows10767 : actualRows10767=WordField.canonicalRows actualModulus 10767 (.band 10766 883) := by core033_kernel_decide
theorem stats10767 : actualRows10767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10767=5124 := by core033_kernel_decide
theorem rows10768 : actualRows10768=WordField.canonicalRows actualModulus 10768 (.bnot 10609) := by core033_kernel_decide
theorem stats10768 : actualRows10768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10768=6276 := by core033_kernel_decide
theorem rows10769 : actualRows10769=WordField.canonicalRows actualModulus 10769 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10769 : actualRows10769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10769=2892 := by core033_kernel_decide
theorem rows10770 : actualRows10770=WordField.canonicalRows actualModulus 10770 (.badd 10768 10769) := by core033_kernel_decide
theorem stats10770 : actualRows10770.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10770=5388 := by core033_kernel_decide
theorem rows10771 : actualRows10771=WordField.canonicalRows actualModulus 10771 (.bnot 10770) := by core033_kernel_decide
theorem stats10771 : actualRows10771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10771=6276 := by core033_kernel_decide
theorem rows10772 : actualRows10772=WordField.canonicalRows actualModulus 10772 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10772 : actualRows10772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10772=2820 := by core033_kernel_decide
theorem rows10773 : actualRows10773=WordField.canonicalRows actualModulus 10773 (.band 10771 10772) := by core033_kernel_decide
theorem stats10773 : actualRows10773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10773=5124 := by core033_kernel_decide
theorem rows10774 : actualRows10774=WordField.canonicalRows actualModulus 10774 (.bxor 10767 10773) := by core033_kernel_decide
theorem stats10774 : actualRows10774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10774=7428 := by core033_kernel_decide
theorem rows10775 : actualRows10775=WordField.canonicalRows actualModulus 10775 (.bnot 10609) := by core033_kernel_decide
theorem stats10775 : actualRows10775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10775=6276 := by core033_kernel_decide
theorem rows10776 : actualRows10776=WordField.canonicalRows actualModulus 10776 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10776 : actualRows10776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10776=2892 := by core033_kernel_decide
theorem rows10777 : actualRows10777=WordField.canonicalRows actualModulus 10777 (.badd 10775 10776) := by core033_kernel_decide
theorem stats10777 : actualRows10777.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10777=5388 := by core033_kernel_decide
theorem rows10778 : actualRows10778=WordField.canonicalRows actualModulus 10778 (.band 10777 903) := by core033_kernel_decide
theorem stats10778 : actualRows10778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10778=5124 := by core033_kernel_decide
theorem rows10779 : actualRows10779=WordField.canonicalRows actualModulus 10779 (.bnot 10609) := by core033_kernel_decide
theorem stats10779 : actualRows10779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10779=6276 := by core033_kernel_decide
theorem rows10780 : actualRows10780=WordField.canonicalRows actualModulus 10780 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10780 : actualRows10780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10780=2892 := by core033_kernel_decide
theorem rows10781 : actualRows10781=WordField.canonicalRows actualModulus 10781 (.badd 10779 10780) := by core033_kernel_decide
theorem stats10781 : actualRows10781.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10781=5388 := by core033_kernel_decide
theorem rows10782 : actualRows10782=WordField.canonicalRows actualModulus 10782 (.bnot 10781) := by core033_kernel_decide
theorem stats10782 : actualRows10782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10782=6276 := by core033_kernel_decide
theorem rows10783 : actualRows10783=WordField.canonicalRows actualModulus 10783 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10783 : actualRows10783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10783=2820 := by core033_kernel_decide
theorem rows10784 : actualRows10784=WordField.canonicalRows actualModulus 10784 (.band 10782 10783) := by core033_kernel_decide
theorem stats10784 : actualRows10784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10784=5124 := by core033_kernel_decide
theorem rows10785 : actualRows10785=WordField.canonicalRows actualModulus 10785 (.bxor 10778 10784) := by core033_kernel_decide
theorem stats10785 : actualRows10785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10785=7428 := by core033_kernel_decide
theorem rows10786 : actualRows10786=WordField.canonicalRows actualModulus 10786 (.bnot 10609) := by core033_kernel_decide
theorem stats10786 : actualRows10786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10786=6276 := by core033_kernel_decide
theorem rows10787 : actualRows10787=WordField.canonicalRows actualModulus 10787 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10787 : actualRows10787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10787=2892 := by core033_kernel_decide
theorem rows10788 : actualRows10788=WordField.canonicalRows actualModulus 10788 (.badd 10786 10787) := by core033_kernel_decide
theorem stats10788 : actualRows10788.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10788=5388 := by core033_kernel_decide
theorem rows10789 : actualRows10789=WordField.canonicalRows actualModulus 10789 (.band 10788 923) := by core033_kernel_decide
theorem stats10789 : actualRows10789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10789=5124 := by core033_kernel_decide
theorem rows10790 : actualRows10790=WordField.canonicalRows actualModulus 10790 (.bnot 10609) := by core033_kernel_decide
theorem stats10790 : actualRows10790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10790=6276 := by core033_kernel_decide
theorem rows10791 : actualRows10791=WordField.canonicalRows actualModulus 10791 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10791 : actualRows10791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10791=2892 := by core033_kernel_decide
theorem rows10792 : actualRows10792=WordField.canonicalRows actualModulus 10792 (.badd 10790 10791) := by core033_kernel_decide
theorem stats10792 : actualRows10792.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10792=5388 := by core033_kernel_decide
theorem rows10793 : actualRows10793=WordField.canonicalRows actualModulus 10793 (.bnot 10792) := by core033_kernel_decide
theorem stats10793 : actualRows10793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10793=6276 := by core033_kernel_decide
theorem rows10794 : actualRows10794=WordField.canonicalRows actualModulus 10794 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10794 : actualRows10794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10794=2820 := by core033_kernel_decide
theorem rows10795 : actualRows10795=WordField.canonicalRows actualModulus 10795 (.band 10793 10794) := by core033_kernel_decide
theorem stats10795 : actualRows10795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10795=5124 := by core033_kernel_decide
theorem rows10796 : actualRows10796=WordField.canonicalRows actualModulus 10796 (.bxor 10789 10795) := by core033_kernel_decide
theorem stats10796 : actualRows10796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10796=7428 := by core033_kernel_decide
theorem rows10797 : actualRows10797=WordField.canonicalRows actualModulus 10797 (.bnot 10609) := by core033_kernel_decide
theorem stats10797 : actualRows10797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10797=6276 := by core033_kernel_decide
theorem rows10798 : actualRows10798=WordField.canonicalRows actualModulus 10798 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10798 : actualRows10798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10798=2892 := by core033_kernel_decide
theorem rows10799 : actualRows10799=WordField.canonicalRows actualModulus 10799 (.badd 10797 10798) := by core033_kernel_decide
theorem stats10799 : actualRows10799.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10799=5388 := by core033_kernel_decide
theorem rows10800 : actualRows10800=WordField.canonicalRows actualModulus 10800 (.band 10799 943) := by core033_kernel_decide
theorem stats10800 : actualRows10800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10800=5124 := by core033_kernel_decide
theorem rows10801 : actualRows10801=WordField.canonicalRows actualModulus 10801 (.bnot 10609) := by core033_kernel_decide
theorem stats10801 : actualRows10801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10801=6276 := by core033_kernel_decide
theorem rows10802 : actualRows10802=WordField.canonicalRows actualModulus 10802 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10802 : actualRows10802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10802=2892 := by core033_kernel_decide
theorem rows10803 : actualRows10803=WordField.canonicalRows actualModulus 10803 (.badd 10801 10802) := by core033_kernel_decide
theorem stats10803 : actualRows10803.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10803=5388 := by core033_kernel_decide
theorem rows10804 : actualRows10804=WordField.canonicalRows actualModulus 10804 (.bnot 10803) := by core033_kernel_decide
theorem stats10804 : actualRows10804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10804=6276 := by core033_kernel_decide
theorem rows10805 : actualRows10805=WordField.canonicalRows actualModulus 10805 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10805 : actualRows10805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10805=2820 := by core033_kernel_decide
def partRows166 : List R1CS.Row := actualRows10742++actualRows10743++actualRows10744++actualRows10745++actualRows10746++actualRows10747++actualRows10748++actualRows10749++actualRows10750++actualRows10751++actualRows10752++actualRows10753++actualRows10754++actualRows10755++actualRows10756++actualRows10757++actualRows10758++actualRows10759++actualRows10760++actualRows10761++actualRows10762++actualRows10763++actualRows10764++actualRows10765++actualRows10766++actualRows10767++actualRows10768++actualRows10769++actualRows10770++actualRows10771++actualRows10772++actualRows10773++actualRows10774++actualRows10775++actualRows10776++actualRows10777++actualRows10778++actualRows10779++actualRows10780++actualRows10781++actualRows10782++actualRows10783++actualRows10784++actualRows10785++actualRows10786++actualRows10787++actualRows10788++actualRows10789++actualRows10790++actualRows10791++actualRows10792++actualRows10793++actualRows10794++actualRows10795++actualRows10796++actualRows10797++actualRows10798++actualRows10799++actualRows10800++actualRows10801++actualRows10802++actualRows10803++actualRows10804++actualRows10805
def partOps166 : List WordIR.Op := [.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10742 10743,.band 10744 843,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10746 10747,.bnot 10748,.literal (BitVec.ofNat 32 0),.band 10749 10750,.bxor 10745 10751,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10753 10754,.band 10755 863,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10757 10758,.bnot 10759,.literal (BitVec.ofNat 32 0),.band 10760 10761,.bxor 10756 10762,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10764 10765,.band 10766 883,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10768 10769,.bnot 10770,.literal (BitVec.ofNat 32 0),.band 10771 10772,.bxor 10767 10773,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10775 10776,.band 10777 903,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10779 10780,.bnot 10781,.literal (BitVec.ofNat 32 0),.band 10782 10783,.bxor 10778 10784,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10786 10787,.band 10788 923,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10790 10791,.bnot 10792,.literal (BitVec.ofNat 32 0),.band 10793 10794,.bxor 10789 10795,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10797 10798,.band 10799 943,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10801 10802,.bnot 10803,.literal (BitVec.ofNat 32 0)]
theorem partExact166 : partRows166=WordField.rows actualModulus 10742 partOps166 := by
  simp only [partRows166,partOps166,WordField.rows,rows10742,rows10743,rows10744,rows10745,rows10746,rows10747,rows10748,rows10749,rows10750,rows10751,rows10752,rows10753,rows10754,rows10755,rows10756,rows10757,rows10758,rows10759,rows10760,rows10761,rows10762,rows10763,rows10764,rows10765,rows10766,rows10767,rows10768,rows10769,rows10770,rows10771,rows10772,rows10773,rows10774,rows10775,rows10776,rows10777,rows10778,rows10779,rows10780,rows10781,rows10782,rows10783,rows10784,rows10785,rows10786,rows10787,rows10788,rows10789,rows10790,rows10791,rows10792,rows10793,rows10794,rows10795,rows10796,rows10797,rows10798,rows10799,rows10800,rows10801,rows10802,rows10803,rows10804,rows10805,List.append_assoc,List.append_nil]
theorem partLength166 : partOps166.length=64 := by decide
theorem partStats166 : partRows166.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows166=322752 := by
  simp only [partRows166,List.length_append,MatrixRowBlocks.rows_weight_append,stats10742.1,stats10742.2,stats10743.1,stats10743.2,stats10744.1,stats10744.2,stats10745.1,stats10745.2,stats10746.1,stats10746.2,stats10747.1,stats10747.2,stats10748.1,stats10748.2,stats10749.1,stats10749.2,stats10750.1,stats10750.2,stats10751.1,stats10751.2,stats10752.1,stats10752.2,stats10753.1,stats10753.2,stats10754.1,stats10754.2,stats10755.1,stats10755.2,stats10756.1,stats10756.2,stats10757.1,stats10757.2,stats10758.1,stats10758.2,stats10759.1,stats10759.2,stats10760.1,stats10760.2,stats10761.1,stats10761.2,stats10762.1,stats10762.2,stats10763.1,stats10763.2,stats10764.1,stats10764.2,stats10765.1,stats10765.2,stats10766.1,stats10766.2,stats10767.1,stats10767.2,stats10768.1,stats10768.2,stats10769.1,stats10769.2,stats10770.1,stats10770.2,stats10771.1,stats10771.2,stats10772.1,stats10772.2,stats10773.1,stats10773.2,stats10774.1,stats10774.2,stats10775.1,stats10775.2,stats10776.1,stats10776.2,stats10777.1,stats10777.2,stats10778.1,stats10778.2,stats10779.1,stats10779.2,stats10780.1,stats10780.2,stats10781.1,stats10781.2,stats10782.1,stats10782.2,stats10783.1,stats10783.2,stats10784.1,stats10784.2,stats10785.1,stats10785.2,stats10786.1,stats10786.2,stats10787.1,stats10787.2,stats10788.1,stats10788.2,stats10789.1,stats10789.2,stats10790.1,stats10790.2,stats10791.1,stats10791.2,stats10792.1,stats10792.2,stats10793.1,stats10793.2,stats10794.1,stats10794.2,stats10795.1,stats10795.2,stats10796.1,stats10796.2,stats10797.1,stats10797.2,stats10798.1,stats10798.2,stats10799.1,stats10799.2,stats10800.1,stats10800.2,stats10801.1,stats10801.2,stats10802.1,stats10802.2,stats10803.1,stats10803.2,stats10804.1,stats10804.2,stats10805.1,stats10805.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
