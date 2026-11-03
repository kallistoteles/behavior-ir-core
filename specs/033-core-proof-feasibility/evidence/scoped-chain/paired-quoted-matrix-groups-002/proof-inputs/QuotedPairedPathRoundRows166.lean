import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData167
import PairedPathRoundInstructionMatrixData168
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10720 : actualRows10720=WordField.canonicalRows actualModulus 10720 (.bxor 10711 10719) := by core033_kernel_decide
theorem stats10720 : actualRows10720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10720=7428 := by core033_kernel_decide
theorem rows10721 : actualRows10721=WordField.canonicalRows actualModulus 10721 (.shr 10720 31) := by core033_kernel_decide
theorem stats10721 : actualRows10721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10721=2892 := by core033_kernel_decide
theorem rows10722 : actualRows10722=WordField.canonicalRows actualModulus 10722 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10722 : actualRows10722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10722=2892 := by core033_kernel_decide
theorem rows10723 : actualRows10723=WordField.canonicalRows actualModulus 10723 (.bxor 10721 10722) := by core033_kernel_decide
theorem stats10723 : actualRows10723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10723=7428 := by core033_kernel_decide
theorem rows10724 : actualRows10724=WordField.canonicalRows actualModulus 10724 (.literal (BitVec.ofNat 32 4)) := by core033_kernel_decide
theorem stats10724 : actualRows10724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10724=2892 := by core033_kernel_decide
theorem rows10725 : actualRows10725=WordField.canonicalRows actualModulus 10725 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10725 : actualRows10725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10725=2964 := by core033_kernel_decide
theorem rows10726 : actualRows10726=WordField.canonicalRows actualModulus 10726 (.bxor 9937 10725) := by core033_kernel_decide
theorem stats10726 : actualRows10726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10726=7428 := by core033_kernel_decide
theorem rows10727 : actualRows10727=WordField.canonicalRows actualModulus 10727 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10727 : actualRows10727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10727=2820 := by core033_kernel_decide
theorem rows10728 : actualRows10728=WordField.canonicalRows actualModulus 10728 (.bnot 10727) := by core033_kernel_decide
theorem stats10728 : actualRows10728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10728=6276 := by core033_kernel_decide
theorem rows10729 : actualRows10729=WordField.canonicalRows actualModulus 10729 (.band 10726 10728) := by core033_kernel_decide
theorem stats10729 : actualRows10729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10729=5124 := by core033_kernel_decide
theorem rows10730 : actualRows10730=WordField.canonicalRows actualModulus 10730 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10730 : actualRows10730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10730=2964 := by core033_kernel_decide
theorem rows10731 : actualRows10731=WordField.canonicalRows actualModulus 10731 (.bxor 9937 10730) := by core033_kernel_decide
theorem stats10731 : actualRows10731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10731=7428 := by core033_kernel_decide
theorem rows10732 : actualRows10732=WordField.canonicalRows actualModulus 10732 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10732 : actualRows10732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10732=2820 := by core033_kernel_decide
theorem rows10733 : actualRows10733=WordField.canonicalRows actualModulus 10733 (.bnot 10732) := by core033_kernel_decide
theorem stats10733 : actualRows10733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10733=6276 := by core033_kernel_decide
theorem rows10734 : actualRows10734=WordField.canonicalRows actualModulus 10734 (.bxor 10731 10733) := by core033_kernel_decide
theorem stats10734 : actualRows10734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10734=7428 := by core033_kernel_decide
theorem rows10735 : actualRows10735=WordField.canonicalRows actualModulus 10735 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10735 : actualRows10735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10735=2964 := by core033_kernel_decide
theorem rows10736 : actualRows10736=WordField.canonicalRows actualModulus 10736 (.bxor 9937 10735) := by core033_kernel_decide
theorem stats10736 : actualRows10736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10736=7428 := by core033_kernel_decide
theorem rows10737 : actualRows10737=WordField.canonicalRows actualModulus 10737 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10737 : actualRows10737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10737=2820 := by core033_kernel_decide
theorem rows10738 : actualRows10738=WordField.canonicalRows actualModulus 10738 (.bnot 10737) := by core033_kernel_decide
theorem stats10738 : actualRows10738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10738=6276 := by core033_kernel_decide
theorem rows10739 : actualRows10739=WordField.canonicalRows actualModulus 10739 (.badd 10736 10738) := by core033_kernel_decide
theorem stats10739 : actualRows10739.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10739=5388 := by core033_kernel_decide
theorem rows10740 : actualRows10740=WordField.canonicalRows actualModulus 10740 (.bnot 10739) := by core033_kernel_decide
theorem stats10740 : actualRows10740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10740=6276 := by core033_kernel_decide
theorem rows10741 : actualRows10741=WordField.canonicalRows actualModulus 10741 (.band 10734 10740) := by core033_kernel_decide
theorem stats10741 : actualRows10741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10741=5124 := by core033_kernel_decide
theorem rows10742 : actualRows10742=WordField.canonicalRows actualModulus 10742 (.bxor 10729 10741) := by core033_kernel_decide
theorem stats10742 : actualRows10742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10742=7428 := by core033_kernel_decide
theorem rows10743 : actualRows10743=WordField.canonicalRows actualModulus 10743 (.shr 10742 31) := by core033_kernel_decide
theorem stats10743 : actualRows10743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10743=2892 := by core033_kernel_decide
theorem rows10744 : actualRows10744=WordField.canonicalRows actualModulus 10744 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10744 : actualRows10744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10744=2892 := by core033_kernel_decide
theorem rows10745 : actualRows10745=WordField.canonicalRows actualModulus 10745 (.bxor 10743 10744) := by core033_kernel_decide
theorem stats10745 : actualRows10745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10745=7428 := by core033_kernel_decide
theorem rows10746 : actualRows10746=WordField.canonicalRows actualModulus 10746 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10746 : actualRows10746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10746=2964 := by core033_kernel_decide
theorem rows10747 : actualRows10747=WordField.canonicalRows actualModulus 10747 (.bxor 442 10746) := by core033_kernel_decide
theorem stats10747 : actualRows10747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10747=7428 := by core033_kernel_decide
theorem rows10748 : actualRows10748=WordField.canonicalRows actualModulus 10748 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10748 : actualRows10748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10748=2820 := by core033_kernel_decide
theorem rows10749 : actualRows10749=WordField.canonicalRows actualModulus 10749 (.bnot 10748) := by core033_kernel_decide
theorem stats10749 : actualRows10749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10749=6276 := by core033_kernel_decide
theorem rows10750 : actualRows10750=WordField.canonicalRows actualModulus 10750 (.band 10747 10749) := by core033_kernel_decide
theorem stats10750 : actualRows10750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10750=5124 := by core033_kernel_decide
theorem rows10751 : actualRows10751=WordField.canonicalRows actualModulus 10751 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10751 : actualRows10751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10751=2964 := by core033_kernel_decide
theorem rows10752 : actualRows10752=WordField.canonicalRows actualModulus 10752 (.bxor 442 10751) := by core033_kernel_decide
theorem stats10752 : actualRows10752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10752=7428 := by core033_kernel_decide
theorem rows10753 : actualRows10753=WordField.canonicalRows actualModulus 10753 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10753 : actualRows10753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10753=2820 := by core033_kernel_decide
theorem rows10754 : actualRows10754=WordField.canonicalRows actualModulus 10754 (.bnot 10753) := by core033_kernel_decide
theorem stats10754 : actualRows10754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10754=6276 := by core033_kernel_decide
theorem rows10755 : actualRows10755=WordField.canonicalRows actualModulus 10755 (.bxor 10752 10754) := by core033_kernel_decide
theorem stats10755 : actualRows10755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10755=7428 := by core033_kernel_decide
theorem rows10756 : actualRows10756=WordField.canonicalRows actualModulus 10756 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10756 : actualRows10756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10756=2964 := by core033_kernel_decide
theorem rows10757 : actualRows10757=WordField.canonicalRows actualModulus 10757 (.bxor 442 10756) := by core033_kernel_decide
theorem stats10757 : actualRows10757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10757=7428 := by core033_kernel_decide
theorem rows10758 : actualRows10758=WordField.canonicalRows actualModulus 10758 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10758 : actualRows10758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10758=2820 := by core033_kernel_decide
theorem rows10759 : actualRows10759=WordField.canonicalRows actualModulus 10759 (.bnot 10758) := by core033_kernel_decide
theorem stats10759 : actualRows10759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10759=6276 := by core033_kernel_decide
theorem rows10760 : actualRows10760=WordField.canonicalRows actualModulus 10760 (.badd 10757 10759) := by core033_kernel_decide
theorem stats10760 : actualRows10760.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10760=5388 := by core033_kernel_decide
theorem rows10761 : actualRows10761=WordField.canonicalRows actualModulus 10761 (.bnot 10760) := by core033_kernel_decide
theorem stats10761 : actualRows10761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10761=6276 := by core033_kernel_decide
theorem rows10762 : actualRows10762=WordField.canonicalRows actualModulus 10762 (.band 10755 10761) := by core033_kernel_decide
theorem stats10762 : actualRows10762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10762=5124 := by core033_kernel_decide
theorem rows10763 : actualRows10763=WordField.canonicalRows actualModulus 10763 (.bxor 10750 10762) := by core033_kernel_decide
theorem stats10763 : actualRows10763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10763=7428 := by core033_kernel_decide
theorem rows10764 : actualRows10764=WordField.canonicalRows actualModulus 10764 (.shr 10763 31) := by core033_kernel_decide
theorem stats10764 : actualRows10764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10764=2892 := by core033_kernel_decide
theorem rows10765 : actualRows10765=WordField.canonicalRows actualModulus 10765 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10765 : actualRows10765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10765=2892 := by core033_kernel_decide
theorem rows10766 : actualRows10766=WordField.canonicalRows actualModulus 10766 (.bxor 10764 10765) := by core033_kernel_decide
theorem stats10766 : actualRows10766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10766=7428 := by core033_kernel_decide
theorem rows10767 : actualRows10767=WordField.canonicalRows actualModulus 10767 (.bnot 10766) := by core033_kernel_decide
theorem stats10767 : actualRows10767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10767=6276 := by core033_kernel_decide
theorem rows10768 : actualRows10768=WordField.canonicalRows actualModulus 10768 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10768 : actualRows10768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10768=2892 := by core033_kernel_decide
theorem rows10769 : actualRows10769=WordField.canonicalRows actualModulus 10769 (.badd 10767 10768) := by core033_kernel_decide
theorem stats10769 : actualRows10769.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10769=5388 := by core033_kernel_decide
theorem rows10770 : actualRows10770=WordField.canonicalRows actualModulus 10770 (.band 10769 10724) := by core033_kernel_decide
theorem stats10770 : actualRows10770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10770=5124 := by core033_kernel_decide
theorem rows10771 : actualRows10771=WordField.canonicalRows actualModulus 10771 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10771 : actualRows10771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10771=2964 := by core033_kernel_decide
theorem rows10772 : actualRows10772=WordField.canonicalRows actualModulus 10772 (.bxor 442 10771) := by core033_kernel_decide
theorem stats10772 : actualRows10772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10772=7428 := by core033_kernel_decide
theorem rows10773 : actualRows10773=WordField.canonicalRows actualModulus 10773 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10773 : actualRows10773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10773=2820 := by core033_kernel_decide
theorem rows10774 : actualRows10774=WordField.canonicalRows actualModulus 10774 (.bnot 10773) := by core033_kernel_decide
theorem stats10774 : actualRows10774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10774=6276 := by core033_kernel_decide
theorem rows10775 : actualRows10775=WordField.canonicalRows actualModulus 10775 (.band 10772 10774) := by core033_kernel_decide
theorem stats10775 : actualRows10775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10775=5124 := by core033_kernel_decide
theorem rows10776 : actualRows10776=WordField.canonicalRows actualModulus 10776 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10776 : actualRows10776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10776=2964 := by core033_kernel_decide
theorem rows10777 : actualRows10777=WordField.canonicalRows actualModulus 10777 (.bxor 442 10776) := by core033_kernel_decide
theorem stats10777 : actualRows10777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10777=7428 := by core033_kernel_decide
theorem rows10778 : actualRows10778=WordField.canonicalRows actualModulus 10778 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10778 : actualRows10778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10778=2820 := by core033_kernel_decide
theorem rows10779 : actualRows10779=WordField.canonicalRows actualModulus 10779 (.bnot 10778) := by core033_kernel_decide
theorem stats10779 : actualRows10779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10779=6276 := by core033_kernel_decide
theorem rows10780 : actualRows10780=WordField.canonicalRows actualModulus 10780 (.bxor 10777 10779) := by core033_kernel_decide
theorem stats10780 : actualRows10780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10780=7428 := by core033_kernel_decide
theorem rows10781 : actualRows10781=WordField.canonicalRows actualModulus 10781 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10781 : actualRows10781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10781=2964 := by core033_kernel_decide
theorem rows10782 : actualRows10782=WordField.canonicalRows actualModulus 10782 (.bxor 442 10781) := by core033_kernel_decide
theorem stats10782 : actualRows10782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10782=7428 := by core033_kernel_decide
theorem rows10783 : actualRows10783=WordField.canonicalRows actualModulus 10783 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10783 : actualRows10783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10783=2820 := by core033_kernel_decide
def partRows166 : List R1CS.Row := actualRows10720++actualRows10721++actualRows10722++actualRows10723++actualRows10724++actualRows10725++actualRows10726++actualRows10727++actualRows10728++actualRows10729++actualRows10730++actualRows10731++actualRows10732++actualRows10733++actualRows10734++actualRows10735++actualRows10736++actualRows10737++actualRows10738++actualRows10739++actualRows10740++actualRows10741++actualRows10742++actualRows10743++actualRows10744++actualRows10745++actualRows10746++actualRows10747++actualRows10748++actualRows10749++actualRows10750++actualRows10751++actualRows10752++actualRows10753++actualRows10754++actualRows10755++actualRows10756++actualRows10757++actualRows10758++actualRows10759++actualRows10760++actualRows10761++actualRows10762++actualRows10763++actualRows10764++actualRows10765++actualRows10766++actualRows10767++actualRows10768++actualRows10769++actualRows10770++actualRows10771++actualRows10772++actualRows10773++actualRows10774++actualRows10775++actualRows10776++actualRows10777++actualRows10778++actualRows10779++actualRows10780++actualRows10781++actualRows10782++actualRows10783
def partOps166 : List WordIR.Op := [.bxor 10711 10719,.shr 10720 31,.literal (BitVec.ofNat 32 1),.bxor 10721 10722,.literal (BitVec.ofNat 32 4),.literal (BitVec.ofNat 32 3),.bxor 9937 10725,.literal (BitVec.ofNat 32 0),.bnot 10727,.band 10726 10728,.literal (BitVec.ofNat 32 3),.bxor 9937 10730,.literal (BitVec.ofNat 32 0),.bnot 10732,.bxor 10731 10733,.literal (BitVec.ofNat 32 3),.bxor 9937 10735,.literal (BitVec.ofNat 32 0),.bnot 10737,.badd 10736 10738,.bnot 10739,.band 10734 10740,.bxor 10729 10741,.shr 10742 31,.literal (BitVec.ofNat 32 1),.bxor 10743 10744,.literal (BitVec.ofNat 32 3),.bxor 442 10746,.literal (BitVec.ofNat 32 0),.bnot 10748,.band 10747 10749,.literal (BitVec.ofNat 32 3),.bxor 442 10751,.literal (BitVec.ofNat 32 0),.bnot 10753,.bxor 10752 10754,.literal (BitVec.ofNat 32 3),.bxor 442 10756,.literal (BitVec.ofNat 32 0),.bnot 10758,.badd 10757 10759,.bnot 10760,.band 10755 10761,.bxor 10750 10762,.shr 10763 31,.literal (BitVec.ofNat 32 1),.bxor 10764 10765,.bnot 10766,.literal (BitVec.ofNat 32 1),.badd 10767 10768,.band 10769 10724,.literal (BitVec.ofNat 32 3),.bxor 442 10771,.literal (BitVec.ofNat 32 0),.bnot 10773,.band 10772 10774,.literal (BitVec.ofNat 32 3),.bxor 442 10776,.literal (BitVec.ofNat 32 0),.bnot 10778,.bxor 10777 10779,.literal (BitVec.ofNat 32 3),.bxor 442 10781,.literal (BitVec.ofNat 32 0)]
theorem partExact166 : partRows166=WordField.rows actualModulus 10720 partOps166 := by
  simp only [partRows166,partOps166,WordField.rows,rows10720,rows10721,rows10722,rows10723,rows10724,rows10725,rows10726,rows10727,rows10728,rows10729,rows10730,rows10731,rows10732,rows10733,rows10734,rows10735,rows10736,rows10737,rows10738,rows10739,rows10740,rows10741,rows10742,rows10743,rows10744,rows10745,rows10746,rows10747,rows10748,rows10749,rows10750,rows10751,rows10752,rows10753,rows10754,rows10755,rows10756,rows10757,rows10758,rows10759,rows10760,rows10761,rows10762,rows10763,rows10764,rows10765,rows10766,rows10767,rows10768,rows10769,rows10770,rows10771,rows10772,rows10773,rows10774,rows10775,rows10776,rows10777,rows10778,rows10779,rows10780,rows10781,rows10782,rows10783,List.append_assoc,List.append_nil]
theorem partLength166 : partOps166.length=64 := by decide
theorem partStats166 : partRows166.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows166=324840 := by
  simp only [partRows166,List.length_append,MatrixRowBlocks.rows_weight_append,stats10720.1,stats10720.2,stats10721.1,stats10721.2,stats10722.1,stats10722.2,stats10723.1,stats10723.2,stats10724.1,stats10724.2,stats10725.1,stats10725.2,stats10726.1,stats10726.2,stats10727.1,stats10727.2,stats10728.1,stats10728.2,stats10729.1,stats10729.2,stats10730.1,stats10730.2,stats10731.1,stats10731.2,stats10732.1,stats10732.2,stats10733.1,stats10733.2,stats10734.1,stats10734.2,stats10735.1,stats10735.2,stats10736.1,stats10736.2,stats10737.1,stats10737.2,stats10738.1,stats10738.2,stats10739.1,stats10739.2,stats10740.1,stats10740.2,stats10741.1,stats10741.2,stats10742.1,stats10742.2,stats10743.1,stats10743.2,stats10744.1,stats10744.2,stats10745.1,stats10745.2,stats10746.1,stats10746.2,stats10747.1,stats10747.2,stats10748.1,stats10748.2,stats10749.1,stats10749.2,stats10750.1,stats10750.2,stats10751.1,stats10751.2,stats10752.1,stats10752.2,stats10753.1,stats10753.2,stats10754.1,stats10754.2,stats10755.1,stats10755.2,stats10756.1,stats10756.2,stats10757.1,stats10757.2,stats10758.1,stats10758.2,stats10759.1,stats10759.2,stats10760.1,stats10760.2,stats10761.1,stats10761.2,stats10762.1,stats10762.2,stats10763.1,stats10763.2,stats10764.1,stats10764.2,stats10765.1,stats10765.2,stats10766.1,stats10766.2,stats10767.1,stats10767.2,stats10768.1,stats10768.2,stats10769.1,stats10769.2,stats10770.1,stats10770.2,stats10771.1,stats10771.2,stats10772.1,stats10772.2,stats10773.1,stats10773.2,stats10774.1,stats10774.2,stats10775.1,stats10775.2,stats10776.1,stats10776.2,stats10777.1,stats10777.2,stats10778.1,stats10778.2,stats10779.1,stats10779.2,stats10780.1,stats10780.2,stats10781.1,stats10781.2,stats10782.1,stats10782.2,stats10783.1,stats10783.2]
  decide
end QuotedPairedPathRoundCheckedRows
