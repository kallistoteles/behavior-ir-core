import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData104
import PathRoundDispatchInstructionMatrixData105
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6699 : actualRows6699=WordField.canonicalRows actualModulus 6699 (.shr 5044 8) := by core033_kernel_decide
theorem stats6699 : actualRows6699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6699=4548 := by core033_kernel_decide
theorem rows6700 : actualRows6700=WordField.canonicalRows actualModulus 6700 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6700 : actualRows6700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6700=2820 := by core033_kernel_decide
theorem rows6701 : actualRows6701=WordField.canonicalRows actualModulus 6701 (.bnot 6700) := by core033_kernel_decide
theorem stats6701 : actualRows6701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6701=6276 := by core033_kernel_decide
theorem rows6702 : actualRows6702=WordField.canonicalRows actualModulus 6702 (.bxor 6699 6701) := by core033_kernel_decide
theorem stats6702 : actualRows6702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6702=7428 := by core033_kernel_decide
theorem rows6703 : actualRows6703=WordField.canonicalRows actualModulus 6703 (.shr 5044 8) := by core033_kernel_decide
theorem stats6703 : actualRows6703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6703=4548 := by core033_kernel_decide
theorem rows6704 : actualRows6704=WordField.canonicalRows actualModulus 6704 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6704 : actualRows6704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6704=2820 := by core033_kernel_decide
theorem rows6705 : actualRows6705=WordField.canonicalRows actualModulus 6705 (.bnot 6704) := by core033_kernel_decide
theorem stats6705 : actualRows6705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6705=6276 := by core033_kernel_decide
theorem rows6706 : actualRows6706=WordField.canonicalRows actualModulus 6706 (.badd 6703 6705) := by core033_kernel_decide
theorem stats6706 : actualRows6706.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6706=5388 := by core033_kernel_decide
theorem rows6707 : actualRows6707=WordField.canonicalRows actualModulus 6707 (.bnot 6706) := by core033_kernel_decide
theorem stats6707 : actualRows6707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6707=6276 := by core033_kernel_decide
theorem rows6708 : actualRows6708=WordField.canonicalRows actualModulus 6708 (.band 6702 6707) := by core033_kernel_decide
theorem stats6708 : actualRows6708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6708=5124 := by core033_kernel_decide
theorem rows6709 : actualRows6709=WordField.canonicalRows actualModulus 6709 (.bxor 6698 6708) := by core033_kernel_decide
theorem stats6709 : actualRows6709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6709=7428 := by core033_kernel_decide
theorem rows6710 : actualRows6710=WordField.canonicalRows actualModulus 6710 (.shr 6709 31) := by core033_kernel_decide
theorem stats6710 : actualRows6710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6710=2892 := by core033_kernel_decide
theorem rows6711 : actualRows6711=WordField.canonicalRows actualModulus 6711 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6711 : actualRows6711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6711=2892 := by core033_kernel_decide
theorem rows6712 : actualRows6712=WordField.canonicalRows actualModulus 6712 (.bxor 6710 6711) := by core033_kernel_decide
theorem stats6712 : actualRows6712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6712=7428 := by core033_kernel_decide
theorem rows6713 : actualRows6713=WordField.canonicalRows actualModulus 6713 (.shr 5097 8) := by core033_kernel_decide
theorem stats6713 : actualRows6713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6713=4548 := by core033_kernel_decide
theorem rows6714 : actualRows6714=WordField.canonicalRows actualModulus 6714 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6714 : actualRows6714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6714=2820 := by core033_kernel_decide
theorem rows6715 : actualRows6715=WordField.canonicalRows actualModulus 6715 (.bnot 6714) := by core033_kernel_decide
theorem stats6715 : actualRows6715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6715=6276 := by core033_kernel_decide
theorem rows6716 : actualRows6716=WordField.canonicalRows actualModulus 6716 (.band 6713 6715) := by core033_kernel_decide
theorem stats6716 : actualRows6716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6716=5124 := by core033_kernel_decide
theorem rows6717 : actualRows6717=WordField.canonicalRows actualModulus 6717 (.shr 5097 8) := by core033_kernel_decide
theorem stats6717 : actualRows6717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6717=4548 := by core033_kernel_decide
theorem rows6718 : actualRows6718=WordField.canonicalRows actualModulus 6718 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6718 : actualRows6718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6718=2820 := by core033_kernel_decide
theorem rows6719 : actualRows6719=WordField.canonicalRows actualModulus 6719 (.bnot 6718) := by core033_kernel_decide
theorem stats6719 : actualRows6719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6719=6276 := by core033_kernel_decide
theorem rows6720 : actualRows6720=WordField.canonicalRows actualModulus 6720 (.bxor 6717 6719) := by core033_kernel_decide
theorem stats6720 : actualRows6720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6720=7428 := by core033_kernel_decide
theorem rows6721 : actualRows6721=WordField.canonicalRows actualModulus 6721 (.shr 5097 8) := by core033_kernel_decide
theorem stats6721 : actualRows6721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6721=4548 := by core033_kernel_decide
theorem rows6722 : actualRows6722=WordField.canonicalRows actualModulus 6722 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6722 : actualRows6722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6722=2820 := by core033_kernel_decide
theorem rows6723 : actualRows6723=WordField.canonicalRows actualModulus 6723 (.bnot 6722) := by core033_kernel_decide
theorem stats6723 : actualRows6723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6723=6276 := by core033_kernel_decide
theorem rows6724 : actualRows6724=WordField.canonicalRows actualModulus 6724 (.badd 6721 6723) := by core033_kernel_decide
theorem stats6724 : actualRows6724.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6724=5388 := by core033_kernel_decide
theorem rows6725 : actualRows6725=WordField.canonicalRows actualModulus 6725 (.bnot 6724) := by core033_kernel_decide
theorem stats6725 : actualRows6725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6725=6276 := by core033_kernel_decide
theorem rows6726 : actualRows6726=WordField.canonicalRows actualModulus 6726 (.band 6720 6725) := by core033_kernel_decide
theorem stats6726 : actualRows6726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6726=5124 := by core033_kernel_decide
theorem rows6727 : actualRows6727=WordField.canonicalRows actualModulus 6727 (.bxor 6716 6726) := by core033_kernel_decide
theorem stats6727 : actualRows6727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6727=7428 := by core033_kernel_decide
theorem rows6728 : actualRows6728=WordField.canonicalRows actualModulus 6728 (.shr 6727 31) := by core033_kernel_decide
theorem stats6728 : actualRows6728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6728=2892 := by core033_kernel_decide
theorem rows6729 : actualRows6729=WordField.canonicalRows actualModulus 6729 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6729 : actualRows6729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6729=2892 := by core033_kernel_decide
theorem rows6730 : actualRows6730=WordField.canonicalRows actualModulus 6730 (.bxor 6728 6729) := by core033_kernel_decide
theorem stats6730 : actualRows6730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6730=7428 := by core033_kernel_decide
theorem rows6731 : actualRows6731=WordField.canonicalRows actualModulus 6731 (.shr 5150 8) := by core033_kernel_decide
theorem stats6731 : actualRows6731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6731=4548 := by core033_kernel_decide
theorem rows6732 : actualRows6732=WordField.canonicalRows actualModulus 6732 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6732 : actualRows6732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6732=2820 := by core033_kernel_decide
theorem rows6733 : actualRows6733=WordField.canonicalRows actualModulus 6733 (.bnot 6732) := by core033_kernel_decide
theorem stats6733 : actualRows6733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6733=6276 := by core033_kernel_decide
theorem rows6734 : actualRows6734=WordField.canonicalRows actualModulus 6734 (.band 6731 6733) := by core033_kernel_decide
theorem stats6734 : actualRows6734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6734=5124 := by core033_kernel_decide
theorem rows6735 : actualRows6735=WordField.canonicalRows actualModulus 6735 (.shr 5150 8) := by core033_kernel_decide
theorem stats6735 : actualRows6735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6735=4548 := by core033_kernel_decide
theorem rows6736 : actualRows6736=WordField.canonicalRows actualModulus 6736 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6736 : actualRows6736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6736=2820 := by core033_kernel_decide
theorem rows6737 : actualRows6737=WordField.canonicalRows actualModulus 6737 (.bnot 6736) := by core033_kernel_decide
theorem stats6737 : actualRows6737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6737=6276 := by core033_kernel_decide
theorem rows6738 : actualRows6738=WordField.canonicalRows actualModulus 6738 (.bxor 6735 6737) := by core033_kernel_decide
theorem stats6738 : actualRows6738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6738=7428 := by core033_kernel_decide
theorem rows6739 : actualRows6739=WordField.canonicalRows actualModulus 6739 (.shr 5150 8) := by core033_kernel_decide
theorem stats6739 : actualRows6739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6739=4548 := by core033_kernel_decide
theorem rows6740 : actualRows6740=WordField.canonicalRows actualModulus 6740 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6740 : actualRows6740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6740=2820 := by core033_kernel_decide
theorem rows6741 : actualRows6741=WordField.canonicalRows actualModulus 6741 (.bnot 6740) := by core033_kernel_decide
theorem stats6741 : actualRows6741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6741=6276 := by core033_kernel_decide
theorem rows6742 : actualRows6742=WordField.canonicalRows actualModulus 6742 (.badd 6739 6741) := by core033_kernel_decide
theorem stats6742 : actualRows6742.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6742=5388 := by core033_kernel_decide
theorem rows6743 : actualRows6743=WordField.canonicalRows actualModulus 6743 (.bnot 6742) := by core033_kernel_decide
theorem stats6743 : actualRows6743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6743=6276 := by core033_kernel_decide
theorem rows6744 : actualRows6744=WordField.canonicalRows actualModulus 6744 (.band 6738 6743) := by core033_kernel_decide
theorem stats6744 : actualRows6744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6744=5124 := by core033_kernel_decide
theorem rows6745 : actualRows6745=WordField.canonicalRows actualModulus 6745 (.bxor 6734 6744) := by core033_kernel_decide
theorem stats6745 : actualRows6745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6745=7428 := by core033_kernel_decide
theorem rows6746 : actualRows6746=WordField.canonicalRows actualModulus 6746 (.shr 6745 31) := by core033_kernel_decide
theorem stats6746 : actualRows6746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6746=2892 := by core033_kernel_decide
theorem rows6747 : actualRows6747=WordField.canonicalRows actualModulus 6747 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6747 : actualRows6747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6747=2892 := by core033_kernel_decide
theorem rows6748 : actualRows6748=WordField.canonicalRows actualModulus 6748 (.bxor 6746 6747) := by core033_kernel_decide
theorem stats6748 : actualRows6748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6748=7428 := by core033_kernel_decide
theorem rows6749 : actualRows6749=WordField.canonicalRows actualModulus 6749 (.shr 5203 8) := by core033_kernel_decide
theorem stats6749 : actualRows6749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6749=4548 := by core033_kernel_decide
theorem rows6750 : actualRows6750=WordField.canonicalRows actualModulus 6750 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6750 : actualRows6750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6750=2820 := by core033_kernel_decide
theorem rows6751 : actualRows6751=WordField.canonicalRows actualModulus 6751 (.bnot 6750) := by core033_kernel_decide
theorem stats6751 : actualRows6751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6751=6276 := by core033_kernel_decide
theorem rows6752 : actualRows6752=WordField.canonicalRows actualModulus 6752 (.band 6749 6751) := by core033_kernel_decide
theorem stats6752 : actualRows6752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6752=5124 := by core033_kernel_decide
theorem rows6753 : actualRows6753=WordField.canonicalRows actualModulus 6753 (.shr 5203 8) := by core033_kernel_decide
theorem stats6753 : actualRows6753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6753=4548 := by core033_kernel_decide
theorem rows6754 : actualRows6754=WordField.canonicalRows actualModulus 6754 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6754 : actualRows6754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6754=2820 := by core033_kernel_decide
theorem rows6755 : actualRows6755=WordField.canonicalRows actualModulus 6755 (.bnot 6754) := by core033_kernel_decide
theorem stats6755 : actualRows6755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6755=6276 := by core033_kernel_decide
theorem rows6756 : actualRows6756=WordField.canonicalRows actualModulus 6756 (.bxor 6753 6755) := by core033_kernel_decide
theorem stats6756 : actualRows6756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6756=7428 := by core033_kernel_decide
theorem rows6757 : actualRows6757=WordField.canonicalRows actualModulus 6757 (.shr 5203 8) := by core033_kernel_decide
theorem stats6757 : actualRows6757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6757=4548 := by core033_kernel_decide
theorem rows6758 : actualRows6758=WordField.canonicalRows actualModulus 6758 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6758 : actualRows6758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6758=2820 := by core033_kernel_decide
theorem rows6759 : actualRows6759=WordField.canonicalRows actualModulus 6759 (.bnot 6758) := by core033_kernel_decide
theorem stats6759 : actualRows6759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6759=6276 := by core033_kernel_decide
theorem rows6760 : actualRows6760=WordField.canonicalRows actualModulus 6760 (.badd 6757 6759) := by core033_kernel_decide
theorem stats6760 : actualRows6760.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6760=5388 := by core033_kernel_decide
theorem rows6761 : actualRows6761=WordField.canonicalRows actualModulus 6761 (.bnot 6760) := by core033_kernel_decide
theorem stats6761 : actualRows6761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6761=6276 := by core033_kernel_decide
theorem rows6762 : actualRows6762=WordField.canonicalRows actualModulus 6762 (.band 6756 6761) := by core033_kernel_decide
theorem stats6762 : actualRows6762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6762=5124 := by core033_kernel_decide
def partRows104 : List R1CS.Row := actualRows6699++actualRows6700++actualRows6701++actualRows6702++actualRows6703++actualRows6704++actualRows6705++actualRows6706++actualRows6707++actualRows6708++actualRows6709++actualRows6710++actualRows6711++actualRows6712++actualRows6713++actualRows6714++actualRows6715++actualRows6716++actualRows6717++actualRows6718++actualRows6719++actualRows6720++actualRows6721++actualRows6722++actualRows6723++actualRows6724++actualRows6725++actualRows6726++actualRows6727++actualRows6728++actualRows6729++actualRows6730++actualRows6731++actualRows6732++actualRows6733++actualRows6734++actualRows6735++actualRows6736++actualRows6737++actualRows6738++actualRows6739++actualRows6740++actualRows6741++actualRows6742++actualRows6743++actualRows6744++actualRows6745++actualRows6746++actualRows6747++actualRows6748++actualRows6749++actualRows6750++actualRows6751++actualRows6752++actualRows6753++actualRows6754++actualRows6755++actualRows6756++actualRows6757++actualRows6758++actualRows6759++actualRows6760++actualRows6761++actualRows6762
def partOps104 : List WordIR.Op := [.shr 5044 8,.literal (BitVec.ofNat 32 0),.bnot 6700,.bxor 6699 6701,.shr 5044 8,.literal (BitVec.ofNat 32 0),.bnot 6704,.badd 6703 6705,.bnot 6706,.band 6702 6707,.bxor 6698 6708,.shr 6709 31,.literal (BitVec.ofNat 32 1),.bxor 6710 6711,.shr 5097 8,.literal (BitVec.ofNat 32 0),.bnot 6714,.band 6713 6715,.shr 5097 8,.literal (BitVec.ofNat 32 0),.bnot 6718,.bxor 6717 6719,.shr 5097 8,.literal (BitVec.ofNat 32 0),.bnot 6722,.badd 6721 6723,.bnot 6724,.band 6720 6725,.bxor 6716 6726,.shr 6727 31,.literal (BitVec.ofNat 32 1),.bxor 6728 6729,.shr 5150 8,.literal (BitVec.ofNat 32 0),.bnot 6732,.band 6731 6733,.shr 5150 8,.literal (BitVec.ofNat 32 0),.bnot 6736,.bxor 6735 6737,.shr 5150 8,.literal (BitVec.ofNat 32 0),.bnot 6740,.badd 6739 6741,.bnot 6742,.band 6738 6743,.bxor 6734 6744,.shr 6745 31,.literal (BitVec.ofNat 32 1),.bxor 6746 6747,.shr 5203 8,.literal (BitVec.ofNat 32 0),.bnot 6750,.band 6749 6751,.shr 5203 8,.literal (BitVec.ofNat 32 0),.bnot 6754,.bxor 6753 6755,.shr 5203 8,.literal (BitVec.ofNat 32 0),.bnot 6758,.badd 6757 6759,.bnot 6760,.band 6756 6761]
theorem partExact104 : partRows104=WordField.rows actualModulus 6699 partOps104 := by
  simp only [partRows104,partOps104,WordField.rows,rows6699,rows6700,rows6701,rows6702,rows6703,rows6704,rows6705,rows6706,rows6707,rows6708,rows6709,rows6710,rows6711,rows6712,rows6713,rows6714,rows6715,rows6716,rows6717,rows6718,rows6719,rows6720,rows6721,rows6722,rows6723,rows6724,rows6725,rows6726,rows6727,rows6728,rows6729,rows6730,rows6731,rows6732,rows6733,rows6734,rows6735,rows6736,rows6737,rows6738,rows6739,rows6740,rows6741,rows6742,rows6743,rows6744,rows6745,rows6746,rows6747,rows6748,rows6749,rows6750,rows6751,rows6752,rows6753,rows6754,rows6755,rows6756,rows6757,rows6758,rows6759,rows6760,rows6761,rows6762,List.append_assoc,List.append_nil]
theorem partLength104 : partOps104.length=64 := by decide
theorem partStats104 : partRows104.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows104=324240 := by
  simp only [partRows104,List.length_append,MatrixRowBlocks.rows_weight_append,stats6699.1,stats6699.2,stats6700.1,stats6700.2,stats6701.1,stats6701.2,stats6702.1,stats6702.2,stats6703.1,stats6703.2,stats6704.1,stats6704.2,stats6705.1,stats6705.2,stats6706.1,stats6706.2,stats6707.1,stats6707.2,stats6708.1,stats6708.2,stats6709.1,stats6709.2,stats6710.1,stats6710.2,stats6711.1,stats6711.2,stats6712.1,stats6712.2,stats6713.1,stats6713.2,stats6714.1,stats6714.2,stats6715.1,stats6715.2,stats6716.1,stats6716.2,stats6717.1,stats6717.2,stats6718.1,stats6718.2,stats6719.1,stats6719.2,stats6720.1,stats6720.2,stats6721.1,stats6721.2,stats6722.1,stats6722.2,stats6723.1,stats6723.2,stats6724.1,stats6724.2,stats6725.1,stats6725.2,stats6726.1,stats6726.2,stats6727.1,stats6727.2,stats6728.1,stats6728.2,stats6729.1,stats6729.2,stats6730.1,stats6730.2,stats6731.1,stats6731.2,stats6732.1,stats6732.2,stats6733.1,stats6733.2,stats6734.1,stats6734.2,stats6735.1,stats6735.2,stats6736.1,stats6736.2,stats6737.1,stats6737.2,stats6738.1,stats6738.2,stats6739.1,stats6739.2,stats6740.1,stats6740.2,stats6741.1,stats6741.2,stats6742.1,stats6742.2,stats6743.1,stats6743.2,stats6744.1,stats6744.2,stats6745.1,stats6745.2,stats6746.1,stats6746.2,stats6747.1,stats6747.2,stats6748.1,stats6748.2,stats6749.1,stats6749.2,stats6750.1,stats6750.2,stats6751.1,stats6751.2,stats6752.1,stats6752.2,stats6753.1,stats6753.2,stats6754.1,stats6754.2,stats6755.1,stats6755.2,stats6756.1,stats6756.2,stats6757.1,stats6757.2,stats6758.1,stats6758.2,stats6759.1,stats6759.2,stats6760.1,stats6760.2,stats6761.1,stats6761.2,stats6762.1,stats6762.2]
  decide
end PathRoundDispatchCheckedRows
