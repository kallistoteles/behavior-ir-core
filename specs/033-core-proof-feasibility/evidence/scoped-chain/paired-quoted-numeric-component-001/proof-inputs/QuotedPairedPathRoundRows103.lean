import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData104
import PairedPathRoundInstructionMatrixData105
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6688 : actualRows6688=WordField.canonicalRows actualModulus 6688 (.band 6682 6687) := by core033_kernel_decide
theorem stats6688 : actualRows6688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6688=5124 := by core033_kernel_decide
theorem rows6689 : actualRows6689=WordField.canonicalRows actualModulus 6689 (.bxor 6678 6688) := by core033_kernel_decide
theorem stats6689 : actualRows6689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6689=7428 := by core033_kernel_decide
theorem rows6690 : actualRows6690=WordField.canonicalRows actualModulus 6690 (.shr 6689 31) := by core033_kernel_decide
theorem stats6690 : actualRows6690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6690=2892 := by core033_kernel_decide
theorem rows6691 : actualRows6691=WordField.canonicalRows actualModulus 6691 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6691 : actualRows6691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6691=2892 := by core033_kernel_decide
theorem rows6692 : actualRows6692=WordField.canonicalRows actualModulus 6692 (.bxor 6690 6691) := by core033_kernel_decide
theorem stats6692 : actualRows6692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6692=7428 := by core033_kernel_decide
theorem rows6693 : actualRows6693=WordField.canonicalRows actualModulus 6693 (.shr 4055 8) := by core033_kernel_decide
theorem stats6693 : actualRows6693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6693=4548 := by core033_kernel_decide
theorem rows6694 : actualRows6694=WordField.canonicalRows actualModulus 6694 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6694 : actualRows6694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6694=2820 := by core033_kernel_decide
theorem rows6695 : actualRows6695=WordField.canonicalRows actualModulus 6695 (.bnot 6694) := by core033_kernel_decide
theorem stats6695 : actualRows6695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6695=6276 := by core033_kernel_decide
theorem rows6696 : actualRows6696=WordField.canonicalRows actualModulus 6696 (.band 6693 6695) := by core033_kernel_decide
theorem stats6696 : actualRows6696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6696=5124 := by core033_kernel_decide
theorem rows6697 : actualRows6697=WordField.canonicalRows actualModulus 6697 (.shr 4055 8) := by core033_kernel_decide
theorem stats6697 : actualRows6697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6697=4548 := by core033_kernel_decide
theorem rows6698 : actualRows6698=WordField.canonicalRows actualModulus 6698 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6698 : actualRows6698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6698=2820 := by core033_kernel_decide
theorem rows6699 : actualRows6699=WordField.canonicalRows actualModulus 6699 (.bnot 6698) := by core033_kernel_decide
theorem stats6699 : actualRows6699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6699=6276 := by core033_kernel_decide
theorem rows6700 : actualRows6700=WordField.canonicalRows actualModulus 6700 (.bxor 6697 6699) := by core033_kernel_decide
theorem stats6700 : actualRows6700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6700=7428 := by core033_kernel_decide
theorem rows6701 : actualRows6701=WordField.canonicalRows actualModulus 6701 (.shr 4055 8) := by core033_kernel_decide
theorem stats6701 : actualRows6701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6701=4548 := by core033_kernel_decide
theorem rows6702 : actualRows6702=WordField.canonicalRows actualModulus 6702 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6702 : actualRows6702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6702=2820 := by core033_kernel_decide
theorem rows6703 : actualRows6703=WordField.canonicalRows actualModulus 6703 (.bnot 6702) := by core033_kernel_decide
theorem stats6703 : actualRows6703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6703=6276 := by core033_kernel_decide
theorem rows6704 : actualRows6704=WordField.canonicalRows actualModulus 6704 (.badd 6701 6703) := by core033_kernel_decide
theorem stats6704 : actualRows6704.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6704=5388 := by core033_kernel_decide
theorem rows6705 : actualRows6705=WordField.canonicalRows actualModulus 6705 (.bnot 6704) := by core033_kernel_decide
theorem stats6705 : actualRows6705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6705=6276 := by core033_kernel_decide
theorem rows6706 : actualRows6706=WordField.canonicalRows actualModulus 6706 (.band 6700 6705) := by core033_kernel_decide
theorem stats6706 : actualRows6706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6706=5124 := by core033_kernel_decide
theorem rows6707 : actualRows6707=WordField.canonicalRows actualModulus 6707 (.bxor 6696 6706) := by core033_kernel_decide
theorem stats6707 : actualRows6707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6707=7428 := by core033_kernel_decide
theorem rows6708 : actualRows6708=WordField.canonicalRows actualModulus 6708 (.shr 6707 31) := by core033_kernel_decide
theorem stats6708 : actualRows6708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6708=2892 := by core033_kernel_decide
theorem rows6709 : actualRows6709=WordField.canonicalRows actualModulus 6709 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6709 : actualRows6709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6709=2892 := by core033_kernel_decide
theorem rows6710 : actualRows6710=WordField.canonicalRows actualModulus 6710 (.bxor 6708 6709) := by core033_kernel_decide
theorem stats6710 : actualRows6710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6710=7428 := by core033_kernel_decide
theorem rows6711 : actualRows6711=WordField.canonicalRows actualModulus 6711 (.shr 4107 8) := by core033_kernel_decide
theorem stats6711 : actualRows6711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6711=4548 := by core033_kernel_decide
theorem rows6712 : actualRows6712=WordField.canonicalRows actualModulus 6712 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6712 : actualRows6712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6712=2820 := by core033_kernel_decide
theorem rows6713 : actualRows6713=WordField.canonicalRows actualModulus 6713 (.bnot 6712) := by core033_kernel_decide
theorem stats6713 : actualRows6713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6713=6276 := by core033_kernel_decide
theorem rows6714 : actualRows6714=WordField.canonicalRows actualModulus 6714 (.band 6711 6713) := by core033_kernel_decide
theorem stats6714 : actualRows6714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6714=5124 := by core033_kernel_decide
theorem rows6715 : actualRows6715=WordField.canonicalRows actualModulus 6715 (.shr 4107 8) := by core033_kernel_decide
theorem stats6715 : actualRows6715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6715=4548 := by core033_kernel_decide
theorem rows6716 : actualRows6716=WordField.canonicalRows actualModulus 6716 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6716 : actualRows6716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6716=2820 := by core033_kernel_decide
theorem rows6717 : actualRows6717=WordField.canonicalRows actualModulus 6717 (.bnot 6716) := by core033_kernel_decide
theorem stats6717 : actualRows6717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6717=6276 := by core033_kernel_decide
theorem rows6718 : actualRows6718=WordField.canonicalRows actualModulus 6718 (.bxor 6715 6717) := by core033_kernel_decide
theorem stats6718 : actualRows6718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6718=7428 := by core033_kernel_decide
theorem rows6719 : actualRows6719=WordField.canonicalRows actualModulus 6719 (.shr 4107 8) := by core033_kernel_decide
theorem stats6719 : actualRows6719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6719=4548 := by core033_kernel_decide
theorem rows6720 : actualRows6720=WordField.canonicalRows actualModulus 6720 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6720 : actualRows6720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6720=2820 := by core033_kernel_decide
theorem rows6721 : actualRows6721=WordField.canonicalRows actualModulus 6721 (.bnot 6720) := by core033_kernel_decide
theorem stats6721 : actualRows6721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6721=6276 := by core033_kernel_decide
theorem rows6722 : actualRows6722=WordField.canonicalRows actualModulus 6722 (.badd 6719 6721) := by core033_kernel_decide
theorem stats6722 : actualRows6722.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6722=5388 := by core033_kernel_decide
theorem rows6723 : actualRows6723=WordField.canonicalRows actualModulus 6723 (.bnot 6722) := by core033_kernel_decide
theorem stats6723 : actualRows6723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6723=6276 := by core033_kernel_decide
theorem rows6724 : actualRows6724=WordField.canonicalRows actualModulus 6724 (.band 6718 6723) := by core033_kernel_decide
theorem stats6724 : actualRows6724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6724=5124 := by core033_kernel_decide
theorem rows6725 : actualRows6725=WordField.canonicalRows actualModulus 6725 (.bxor 6714 6724) := by core033_kernel_decide
theorem stats6725 : actualRows6725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6725=7428 := by core033_kernel_decide
theorem rows6726 : actualRows6726=WordField.canonicalRows actualModulus 6726 (.shr 6725 31) := by core033_kernel_decide
theorem stats6726 : actualRows6726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6726=2892 := by core033_kernel_decide
theorem rows6727 : actualRows6727=WordField.canonicalRows actualModulus 6727 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6727 : actualRows6727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6727=2892 := by core033_kernel_decide
theorem rows6728 : actualRows6728=WordField.canonicalRows actualModulus 6728 (.bxor 6726 6727) := by core033_kernel_decide
theorem stats6728 : actualRows6728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6728=7428 := by core033_kernel_decide
theorem rows6729 : actualRows6729=WordField.canonicalRows actualModulus 6729 (.shr 4159 8) := by core033_kernel_decide
theorem stats6729 : actualRows6729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6729=4548 := by core033_kernel_decide
theorem rows6730 : actualRows6730=WordField.canonicalRows actualModulus 6730 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6730 : actualRows6730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6730=2820 := by core033_kernel_decide
theorem rows6731 : actualRows6731=WordField.canonicalRows actualModulus 6731 (.bnot 6730) := by core033_kernel_decide
theorem stats6731 : actualRows6731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6731=6276 := by core033_kernel_decide
theorem rows6732 : actualRows6732=WordField.canonicalRows actualModulus 6732 (.band 6729 6731) := by core033_kernel_decide
theorem stats6732 : actualRows6732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6732=5124 := by core033_kernel_decide
theorem rows6733 : actualRows6733=WordField.canonicalRows actualModulus 6733 (.shr 4159 8) := by core033_kernel_decide
theorem stats6733 : actualRows6733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6733=4548 := by core033_kernel_decide
theorem rows6734 : actualRows6734=WordField.canonicalRows actualModulus 6734 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6734 : actualRows6734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6734=2820 := by core033_kernel_decide
theorem rows6735 : actualRows6735=WordField.canonicalRows actualModulus 6735 (.bnot 6734) := by core033_kernel_decide
theorem stats6735 : actualRows6735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6735=6276 := by core033_kernel_decide
theorem rows6736 : actualRows6736=WordField.canonicalRows actualModulus 6736 (.bxor 6733 6735) := by core033_kernel_decide
theorem stats6736 : actualRows6736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6736=7428 := by core033_kernel_decide
theorem rows6737 : actualRows6737=WordField.canonicalRows actualModulus 6737 (.shr 4159 8) := by core033_kernel_decide
theorem stats6737 : actualRows6737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6737=4548 := by core033_kernel_decide
theorem rows6738 : actualRows6738=WordField.canonicalRows actualModulus 6738 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6738 : actualRows6738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6738=2820 := by core033_kernel_decide
theorem rows6739 : actualRows6739=WordField.canonicalRows actualModulus 6739 (.bnot 6738) := by core033_kernel_decide
theorem stats6739 : actualRows6739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6739=6276 := by core033_kernel_decide
theorem rows6740 : actualRows6740=WordField.canonicalRows actualModulus 6740 (.badd 6737 6739) := by core033_kernel_decide
theorem stats6740 : actualRows6740.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6740=5388 := by core033_kernel_decide
theorem rows6741 : actualRows6741=WordField.canonicalRows actualModulus 6741 (.bnot 6740) := by core033_kernel_decide
theorem stats6741 : actualRows6741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6741=6276 := by core033_kernel_decide
theorem rows6742 : actualRows6742=WordField.canonicalRows actualModulus 6742 (.band 6736 6741) := by core033_kernel_decide
theorem stats6742 : actualRows6742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6742=5124 := by core033_kernel_decide
theorem rows6743 : actualRows6743=WordField.canonicalRows actualModulus 6743 (.bxor 6732 6742) := by core033_kernel_decide
theorem stats6743 : actualRows6743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6743=7428 := by core033_kernel_decide
theorem rows6744 : actualRows6744=WordField.canonicalRows actualModulus 6744 (.shr 6743 31) := by core033_kernel_decide
theorem stats6744 : actualRows6744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6744=2892 := by core033_kernel_decide
theorem rows6745 : actualRows6745=WordField.canonicalRows actualModulus 6745 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6745 : actualRows6745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6745=2892 := by core033_kernel_decide
theorem rows6746 : actualRows6746=WordField.canonicalRows actualModulus 6746 (.bxor 6744 6745) := by core033_kernel_decide
theorem stats6746 : actualRows6746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6746=7428 := by core033_kernel_decide
theorem rows6747 : actualRows6747=WordField.canonicalRows actualModulus 6747 (.shr 4211 8) := by core033_kernel_decide
theorem stats6747 : actualRows6747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6747=4548 := by core033_kernel_decide
theorem rows6748 : actualRows6748=WordField.canonicalRows actualModulus 6748 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6748 : actualRows6748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6748=2820 := by core033_kernel_decide
theorem rows6749 : actualRows6749=WordField.canonicalRows actualModulus 6749 (.bnot 6748) := by core033_kernel_decide
theorem stats6749 : actualRows6749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6749=6276 := by core033_kernel_decide
theorem rows6750 : actualRows6750=WordField.canonicalRows actualModulus 6750 (.band 6747 6749) := by core033_kernel_decide
theorem stats6750 : actualRows6750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6750=5124 := by core033_kernel_decide
theorem rows6751 : actualRows6751=WordField.canonicalRows actualModulus 6751 (.shr 4211 8) := by core033_kernel_decide
theorem stats6751 : actualRows6751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6751=4548 := by core033_kernel_decide
def partRows103 : List R1CS.Row := actualRows6688++actualRows6689++actualRows6690++actualRows6691++actualRows6692++actualRows6693++actualRows6694++actualRows6695++actualRows6696++actualRows6697++actualRows6698++actualRows6699++actualRows6700++actualRows6701++actualRows6702++actualRows6703++actualRows6704++actualRows6705++actualRows6706++actualRows6707++actualRows6708++actualRows6709++actualRows6710++actualRows6711++actualRows6712++actualRows6713++actualRows6714++actualRows6715++actualRows6716++actualRows6717++actualRows6718++actualRows6719++actualRows6720++actualRows6721++actualRows6722++actualRows6723++actualRows6724++actualRows6725++actualRows6726++actualRows6727++actualRows6728++actualRows6729++actualRows6730++actualRows6731++actualRows6732++actualRows6733++actualRows6734++actualRows6735++actualRows6736++actualRows6737++actualRows6738++actualRows6739++actualRows6740++actualRows6741++actualRows6742++actualRows6743++actualRows6744++actualRows6745++actualRows6746++actualRows6747++actualRows6748++actualRows6749++actualRows6750++actualRows6751
def partOps103 : List WordIR.Op := [.band 6682 6687,.bxor 6678 6688,.shr 6689 31,.literal (BitVec.ofNat 32 1),.bxor 6690 6691,.shr 4055 8,.literal (BitVec.ofNat 32 0),.bnot 6694,.band 6693 6695,.shr 4055 8,.literal (BitVec.ofNat 32 0),.bnot 6698,.bxor 6697 6699,.shr 4055 8,.literal (BitVec.ofNat 32 0),.bnot 6702,.badd 6701 6703,.bnot 6704,.band 6700 6705,.bxor 6696 6706,.shr 6707 31,.literal (BitVec.ofNat 32 1),.bxor 6708 6709,.shr 4107 8,.literal (BitVec.ofNat 32 0),.bnot 6712,.band 6711 6713,.shr 4107 8,.literal (BitVec.ofNat 32 0),.bnot 6716,.bxor 6715 6717,.shr 4107 8,.literal (BitVec.ofNat 32 0),.bnot 6720,.badd 6719 6721,.bnot 6722,.band 6718 6723,.bxor 6714 6724,.shr 6725 31,.literal (BitVec.ofNat 32 1),.bxor 6726 6727,.shr 4159 8,.literal (BitVec.ofNat 32 0),.bnot 6730,.band 6729 6731,.shr 4159 8,.literal (BitVec.ofNat 32 0),.bnot 6734,.bxor 6733 6735,.shr 4159 8,.literal (BitVec.ofNat 32 0),.bnot 6738,.badd 6737 6739,.bnot 6740,.band 6736 6741,.bxor 6732 6742,.shr 6743 31,.literal (BitVec.ofNat 32 1),.bxor 6744 6745,.shr 4211 8,.literal (BitVec.ofNat 32 0),.bnot 6748,.band 6747 6749,.shr 4211 8]
theorem partExact103 : partRows103=WordField.rows actualModulus 6688 partOps103 := by
  simp only [partRows103,partOps103,WordField.rows,rows6688,rows6689,rows6690,rows6691,rows6692,rows6693,rows6694,rows6695,rows6696,rows6697,rows6698,rows6699,rows6700,rows6701,rows6702,rows6703,rows6704,rows6705,rows6706,rows6707,rows6708,rows6709,rows6710,rows6711,rows6712,rows6713,rows6714,rows6715,rows6716,rows6717,rows6718,rows6719,rows6720,rows6721,rows6722,rows6723,rows6724,rows6725,rows6726,rows6727,rows6728,rows6729,rows6730,rows6731,rows6732,rows6733,rows6734,rows6735,rows6736,rows6737,rows6738,rows6739,rows6740,rows6741,rows6742,rows6743,rows6744,rows6745,rows6746,rows6747,rows6748,rows6749,rows6750,rows6751,List.append_assoc,List.append_nil]
theorem partLength103 : partOps103.length=64 := by decide
theorem partStats103 : partRows103.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows103=321816 := by
  simp only [partRows103,List.length_append,MatrixRowBlocks.rows_weight_append,stats6688.1,stats6688.2,stats6689.1,stats6689.2,stats6690.1,stats6690.2,stats6691.1,stats6691.2,stats6692.1,stats6692.2,stats6693.1,stats6693.2,stats6694.1,stats6694.2,stats6695.1,stats6695.2,stats6696.1,stats6696.2,stats6697.1,stats6697.2,stats6698.1,stats6698.2,stats6699.1,stats6699.2,stats6700.1,stats6700.2,stats6701.1,stats6701.2,stats6702.1,stats6702.2,stats6703.1,stats6703.2,stats6704.1,stats6704.2,stats6705.1,stats6705.2,stats6706.1,stats6706.2,stats6707.1,stats6707.2,stats6708.1,stats6708.2,stats6709.1,stats6709.2,stats6710.1,stats6710.2,stats6711.1,stats6711.2,stats6712.1,stats6712.2,stats6713.1,stats6713.2,stats6714.1,stats6714.2,stats6715.1,stats6715.2,stats6716.1,stats6716.2,stats6717.1,stats6717.2,stats6718.1,stats6718.2,stats6719.1,stats6719.2,stats6720.1,stats6720.2,stats6721.1,stats6721.2,stats6722.1,stats6722.2,stats6723.1,stats6723.2,stats6724.1,stats6724.2,stats6725.1,stats6725.2,stats6726.1,stats6726.2,stats6727.1,stats6727.2,stats6728.1,stats6728.2,stats6729.1,stats6729.2,stats6730.1,stats6730.2,stats6731.1,stats6731.2,stats6732.1,stats6732.2,stats6733.1,stats6733.2,stats6734.1,stats6734.2,stats6735.1,stats6735.2,stats6736.1,stats6736.2,stats6737.1,stats6737.2,stats6738.1,stats6738.2,stats6739.1,stats6739.2,stats6740.1,stats6740.2,stats6741.1,stats6741.2,stats6742.1,stats6742.2,stats6743.1,stats6743.2,stats6744.1,stats6744.2,stats6745.1,stats6745.2,stats6746.1,stats6746.2,stats6747.1,stats6747.2,stats6748.1,stats6748.2,stats6749.1,stats6749.2,stats6750.1,stats6750.2,stats6751.1,stats6751.2]
  decide
end QuotedPairedPathRoundCheckedRows
