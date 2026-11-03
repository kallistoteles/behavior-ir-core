import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData104
import FrameHashControllerInstructionMatrixData105
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6699 : actualRows6699=WordField.canonicalRows actualModulus 6699 (.rotr 6685 17) := by core033_kernel_decide
theorem stats6699 : actualRows6699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6699=5124 := by core033_kernel_decide
theorem rows6700 : actualRows6700=WordField.canonicalRows actualModulus 6700 (.rotr 6685 19) := by core033_kernel_decide
theorem stats6700 : actualRows6700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6700=5124 := by core033_kernel_decide
theorem rows6701 : actualRows6701=WordField.canonicalRows actualModulus 6701 (.bxor 6699 6700) := by core033_kernel_decide
theorem stats6701 : actualRows6701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6701=7428 := by core033_kernel_decide
theorem rows6702 : actualRows6702=WordField.canonicalRows actualModulus 6702 (.shr 6685 10) := by core033_kernel_decide
theorem stats6702 : actualRows6702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6702=4404 := by core033_kernel_decide
theorem rows6703 : actualRows6703=WordField.canonicalRows actualModulus 6703 (.bxor 6701 6702) := by core033_kernel_decide
theorem stats6703 : actualRows6703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6703=7428 := by core033_kernel_decide
theorem rows6704 : actualRows6704=WordField.canonicalRows actualModulus 6704 (.badd 6703 6620) := by core033_kernel_decide
theorem stats6704 : actualRows6704.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6704=5388 := by core033_kernel_decide
theorem rows6705 : actualRows6705=WordField.canonicalRows actualModulus 6705 (.rotr 6516 7) := by core033_kernel_decide
theorem stats6705 : actualRows6705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6705=5124 := by core033_kernel_decide
theorem rows6706 : actualRows6706=WordField.canonicalRows actualModulus 6706 (.rotr 6516 18) := by core033_kernel_decide
theorem stats6706 : actualRows6706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6706=5124 := by core033_kernel_decide
theorem rows6707 : actualRows6707=WordField.canonicalRows actualModulus 6707 (.bxor 6705 6706) := by core033_kernel_decide
theorem stats6707 : actualRows6707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6707=7428 := by core033_kernel_decide
theorem rows6708 : actualRows6708=WordField.canonicalRows actualModulus 6708 (.shr 6516 3) := by core033_kernel_decide
theorem stats6708 : actualRows6708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6708=4908 := by core033_kernel_decide
theorem rows6709 : actualRows6709=WordField.canonicalRows actualModulus 6709 (.bxor 6707 6708) := by core033_kernel_decide
theorem stats6709 : actualRows6709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6709=7428 := by core033_kernel_decide
theorem rows6710 : actualRows6710=WordField.canonicalRows actualModulus 6710 (.badd 6704 6709) := by core033_kernel_decide
theorem stats6710 : actualRows6710.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6710=5388 := by core033_kernel_decide
theorem rows6711 : actualRows6711=WordField.canonicalRows actualModulus 6711 (.badd 6710 6503) := by core033_kernel_decide
theorem stats6711 : actualRows6711.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6711=5388 := by core033_kernel_decide
theorem rows6712 : actualRows6712=WordField.canonicalRows actualModulus 6712 (.rotr 6698 17) := by core033_kernel_decide
theorem stats6712 : actualRows6712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6712=5124 := by core033_kernel_decide
theorem rows6713 : actualRows6713=WordField.canonicalRows actualModulus 6713 (.rotr 6698 19) := by core033_kernel_decide
theorem stats6713 : actualRows6713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6713=5124 := by core033_kernel_decide
theorem rows6714 : actualRows6714=WordField.canonicalRows actualModulus 6714 (.bxor 6712 6713) := by core033_kernel_decide
theorem stats6714 : actualRows6714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6714=7428 := by core033_kernel_decide
theorem rows6715 : actualRows6715=WordField.canonicalRows actualModulus 6715 (.shr 6698 10) := by core033_kernel_decide
theorem stats6715 : actualRows6715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6715=4404 := by core033_kernel_decide
theorem rows6716 : actualRows6716=WordField.canonicalRows actualModulus 6716 (.bxor 6714 6715) := by core033_kernel_decide
theorem stats6716 : actualRows6716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6716=7428 := by core033_kernel_decide
theorem rows6717 : actualRows6717=WordField.canonicalRows actualModulus 6717 (.badd 6716 6633) := by core033_kernel_decide
theorem stats6717 : actualRows6717.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6717=5388 := by core033_kernel_decide
theorem rows6718 : actualRows6718=WordField.canonicalRows actualModulus 6718 (.rotr 6529 7) := by core033_kernel_decide
theorem stats6718 : actualRows6718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6718=5124 := by core033_kernel_decide
theorem rows6719 : actualRows6719=WordField.canonicalRows actualModulus 6719 (.rotr 6529 18) := by core033_kernel_decide
theorem stats6719 : actualRows6719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6719=5124 := by core033_kernel_decide
theorem rows6720 : actualRows6720=WordField.canonicalRows actualModulus 6720 (.bxor 6718 6719) := by core033_kernel_decide
theorem stats6720 : actualRows6720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6720=7428 := by core033_kernel_decide
theorem rows6721 : actualRows6721=WordField.canonicalRows actualModulus 6721 (.shr 6529 3) := by core033_kernel_decide
theorem stats6721 : actualRows6721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6721=4908 := by core033_kernel_decide
theorem rows6722 : actualRows6722=WordField.canonicalRows actualModulus 6722 (.bxor 6720 6721) := by core033_kernel_decide
theorem stats6722 : actualRows6722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6722=7428 := by core033_kernel_decide
theorem rows6723 : actualRows6723=WordField.canonicalRows actualModulus 6723 (.badd 6717 6722) := by core033_kernel_decide
theorem stats6723 : actualRows6723.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6723=5388 := by core033_kernel_decide
theorem rows6724 : actualRows6724=WordField.canonicalRows actualModulus 6724 (.badd 6723 6516) := by core033_kernel_decide
theorem stats6724 : actualRows6724.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6724=5388 := by core033_kernel_decide
theorem rows6725 : actualRows6725=WordField.canonicalRows actualModulus 6725 (.rotr 6711 17) := by core033_kernel_decide
theorem stats6725 : actualRows6725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6725=5124 := by core033_kernel_decide
theorem rows6726 : actualRows6726=WordField.canonicalRows actualModulus 6726 (.rotr 6711 19) := by core033_kernel_decide
theorem stats6726 : actualRows6726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6726=5124 := by core033_kernel_decide
theorem rows6727 : actualRows6727=WordField.canonicalRows actualModulus 6727 (.bxor 6725 6726) := by core033_kernel_decide
theorem stats6727 : actualRows6727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6727=7428 := by core033_kernel_decide
theorem rows6728 : actualRows6728=WordField.canonicalRows actualModulus 6728 (.shr 6711 10) := by core033_kernel_decide
theorem stats6728 : actualRows6728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6728=4404 := by core033_kernel_decide
theorem rows6729 : actualRows6729=WordField.canonicalRows actualModulus 6729 (.bxor 6727 6728) := by core033_kernel_decide
theorem stats6729 : actualRows6729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6729=7428 := by core033_kernel_decide
theorem rows6730 : actualRows6730=WordField.canonicalRows actualModulus 6730 (.badd 6729 6646) := by core033_kernel_decide
theorem stats6730 : actualRows6730.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6730=5388 := by core033_kernel_decide
theorem rows6731 : actualRows6731=WordField.canonicalRows actualModulus 6731 (.rotr 6542 7) := by core033_kernel_decide
theorem stats6731 : actualRows6731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6731=5124 := by core033_kernel_decide
theorem rows6732 : actualRows6732=WordField.canonicalRows actualModulus 6732 (.rotr 6542 18) := by core033_kernel_decide
theorem stats6732 : actualRows6732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6732=5124 := by core033_kernel_decide
theorem rows6733 : actualRows6733=WordField.canonicalRows actualModulus 6733 (.bxor 6731 6732) := by core033_kernel_decide
theorem stats6733 : actualRows6733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6733=7428 := by core033_kernel_decide
theorem rows6734 : actualRows6734=WordField.canonicalRows actualModulus 6734 (.shr 6542 3) := by core033_kernel_decide
theorem stats6734 : actualRows6734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6734=4908 := by core033_kernel_decide
theorem rows6735 : actualRows6735=WordField.canonicalRows actualModulus 6735 (.bxor 6733 6734) := by core033_kernel_decide
theorem stats6735 : actualRows6735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6735=7428 := by core033_kernel_decide
theorem rows6736 : actualRows6736=WordField.canonicalRows actualModulus 6736 (.badd 6730 6735) := by core033_kernel_decide
theorem stats6736 : actualRows6736.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6736=5388 := by core033_kernel_decide
theorem rows6737 : actualRows6737=WordField.canonicalRows actualModulus 6737 (.badd 6736 6529) := by core033_kernel_decide
theorem stats6737 : actualRows6737.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6737=5388 := by core033_kernel_decide
theorem rows6738 : actualRows6738=WordField.canonicalRows actualModulus 6738 (.rotr 6724 17) := by core033_kernel_decide
theorem stats6738 : actualRows6738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6738=5124 := by core033_kernel_decide
theorem rows6739 : actualRows6739=WordField.canonicalRows actualModulus 6739 (.rotr 6724 19) := by core033_kernel_decide
theorem stats6739 : actualRows6739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6739=5124 := by core033_kernel_decide
theorem rows6740 : actualRows6740=WordField.canonicalRows actualModulus 6740 (.bxor 6738 6739) := by core033_kernel_decide
theorem stats6740 : actualRows6740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6740=7428 := by core033_kernel_decide
theorem rows6741 : actualRows6741=WordField.canonicalRows actualModulus 6741 (.shr 6724 10) := by core033_kernel_decide
theorem stats6741 : actualRows6741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6741=4404 := by core033_kernel_decide
theorem rows6742 : actualRows6742=WordField.canonicalRows actualModulus 6742 (.bxor 6740 6741) := by core033_kernel_decide
theorem stats6742 : actualRows6742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6742=7428 := by core033_kernel_decide
theorem rows6743 : actualRows6743=WordField.canonicalRows actualModulus 6743 (.badd 6742 6659) := by core033_kernel_decide
theorem stats6743 : actualRows6743.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6743=5388 := by core033_kernel_decide
theorem rows6744 : actualRows6744=WordField.canonicalRows actualModulus 6744 (.rotr 6555 7) := by core033_kernel_decide
theorem stats6744 : actualRows6744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6744=5124 := by core033_kernel_decide
theorem rows6745 : actualRows6745=WordField.canonicalRows actualModulus 6745 (.rotr 6555 18) := by core033_kernel_decide
theorem stats6745 : actualRows6745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6745=5124 := by core033_kernel_decide
theorem rows6746 : actualRows6746=WordField.canonicalRows actualModulus 6746 (.bxor 6744 6745) := by core033_kernel_decide
theorem stats6746 : actualRows6746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6746=7428 := by core033_kernel_decide
theorem rows6747 : actualRows6747=WordField.canonicalRows actualModulus 6747 (.shr 6555 3) := by core033_kernel_decide
theorem stats6747 : actualRows6747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6747=4908 := by core033_kernel_decide
theorem rows6748 : actualRows6748=WordField.canonicalRows actualModulus 6748 (.bxor 6746 6747) := by core033_kernel_decide
theorem stats6748 : actualRows6748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6748=7428 := by core033_kernel_decide
theorem rows6749 : actualRows6749=WordField.canonicalRows actualModulus 6749 (.badd 6743 6748) := by core033_kernel_decide
theorem stats6749 : actualRows6749.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6749=5388 := by core033_kernel_decide
theorem rows6750 : actualRows6750=WordField.canonicalRows actualModulus 6750 (.badd 6749 6542) := by core033_kernel_decide
theorem stats6750 : actualRows6750.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6750=5388 := by core033_kernel_decide
theorem rows6751 : actualRows6751=WordField.canonicalRows actualModulus 6751 (.rotr 6737 17) := by core033_kernel_decide
theorem stats6751 : actualRows6751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6751=5124 := by core033_kernel_decide
theorem rows6752 : actualRows6752=WordField.canonicalRows actualModulus 6752 (.rotr 6737 19) := by core033_kernel_decide
theorem stats6752 : actualRows6752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6752=5124 := by core033_kernel_decide
theorem rows6753 : actualRows6753=WordField.canonicalRows actualModulus 6753 (.bxor 6751 6752) := by core033_kernel_decide
theorem stats6753 : actualRows6753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6753=7428 := by core033_kernel_decide
theorem rows6754 : actualRows6754=WordField.canonicalRows actualModulus 6754 (.shr 6737 10) := by core033_kernel_decide
theorem stats6754 : actualRows6754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6754=4404 := by core033_kernel_decide
theorem rows6755 : actualRows6755=WordField.canonicalRows actualModulus 6755 (.bxor 6753 6754) := by core033_kernel_decide
theorem stats6755 : actualRows6755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6755=7428 := by core033_kernel_decide
theorem rows6756 : actualRows6756=WordField.canonicalRows actualModulus 6756 (.badd 6755 6672) := by core033_kernel_decide
theorem stats6756 : actualRows6756.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6756=5388 := by core033_kernel_decide
theorem rows6757 : actualRows6757=WordField.canonicalRows actualModulus 6757 (.rotr 6568 7) := by core033_kernel_decide
theorem stats6757 : actualRows6757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6757=5124 := by core033_kernel_decide
theorem rows6758 : actualRows6758=WordField.canonicalRows actualModulus 6758 (.rotr 6568 18) := by core033_kernel_decide
theorem stats6758 : actualRows6758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6758=5124 := by core033_kernel_decide
theorem rows6759 : actualRows6759=WordField.canonicalRows actualModulus 6759 (.bxor 6757 6758) := by core033_kernel_decide
theorem stats6759 : actualRows6759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6759=7428 := by core033_kernel_decide
theorem rows6760 : actualRows6760=WordField.canonicalRows actualModulus 6760 (.shr 6568 3) := by core033_kernel_decide
theorem stats6760 : actualRows6760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6760=4908 := by core033_kernel_decide
theorem rows6761 : actualRows6761=WordField.canonicalRows actualModulus 6761 (.bxor 6759 6760) := by core033_kernel_decide
theorem stats6761 : actualRows6761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6761=7428 := by core033_kernel_decide
theorem rows6762 : actualRows6762=WordField.canonicalRows actualModulus 6762 (.badd 6756 6761) := by core033_kernel_decide
theorem stats6762 : actualRows6762.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6762=5388 := by core033_kernel_decide
def partRows104 : List R1CS.Row := actualRows6699++actualRows6700++actualRows6701++actualRows6702++actualRows6703++actualRows6704++actualRows6705++actualRows6706++actualRows6707++actualRows6708++actualRows6709++actualRows6710++actualRows6711++actualRows6712++actualRows6713++actualRows6714++actualRows6715++actualRows6716++actualRows6717++actualRows6718++actualRows6719++actualRows6720++actualRows6721++actualRows6722++actualRows6723++actualRows6724++actualRows6725++actualRows6726++actualRows6727++actualRows6728++actualRows6729++actualRows6730++actualRows6731++actualRows6732++actualRows6733++actualRows6734++actualRows6735++actualRows6736++actualRows6737++actualRows6738++actualRows6739++actualRows6740++actualRows6741++actualRows6742++actualRows6743++actualRows6744++actualRows6745++actualRows6746++actualRows6747++actualRows6748++actualRows6749++actualRows6750++actualRows6751++actualRows6752++actualRows6753++actualRows6754++actualRows6755++actualRows6756++actualRows6757++actualRows6758++actualRows6759++actualRows6760++actualRows6761++actualRows6762
def partOps104 : List WordIR.Op := [.rotr 6685 17,.rotr 6685 19,.bxor 6699 6700,.shr 6685 10,.bxor 6701 6702,.badd 6703 6620,.rotr 6516 7,.rotr 6516 18,.bxor 6705 6706,.shr 6516 3,.bxor 6707 6708,.badd 6704 6709,.badd 6710 6503,.rotr 6698 17,.rotr 6698 19,.bxor 6712 6713,.shr 6698 10,.bxor 6714 6715,.badd 6716 6633,.rotr 6529 7,.rotr 6529 18,.bxor 6718 6719,.shr 6529 3,.bxor 6720 6721,.badd 6717 6722,.badd 6723 6516,.rotr 6711 17,.rotr 6711 19,.bxor 6725 6726,.shr 6711 10,.bxor 6727 6728,.badd 6729 6646,.rotr 6542 7,.rotr 6542 18,.bxor 6731 6732,.shr 6542 3,.bxor 6733 6734,.badd 6730 6735,.badd 6736 6529,.rotr 6724 17,.rotr 6724 19,.bxor 6738 6739,.shr 6724 10,.bxor 6740 6741,.badd 6742 6659,.rotr 6555 7,.rotr 6555 18,.bxor 6744 6745,.shr 6555 3,.bxor 6746 6747,.badd 6743 6748,.badd 6749 6542,.rotr 6737 17,.rotr 6737 19,.bxor 6751 6752,.shr 6737 10,.bxor 6753 6754,.badd 6755 6672,.rotr 6568 7,.rotr 6568 18,.bxor 6757 6758,.shr 6568 3,.bxor 6759 6760,.badd 6756 6761]
theorem partExact104 : partRows104=WordField.rows actualModulus 6699 partOps104 := by
  simp only [partRows104,partOps104,WordField.rows,rows6699,rows6700,rows6701,rows6702,rows6703,rows6704,rows6705,rows6706,rows6707,rows6708,rows6709,rows6710,rows6711,rows6712,rows6713,rows6714,rows6715,rows6716,rows6717,rows6718,rows6719,rows6720,rows6721,rows6722,rows6723,rows6724,rows6725,rows6726,rows6727,rows6728,rows6729,rows6730,rows6731,rows6732,rows6733,rows6734,rows6735,rows6736,rows6737,rows6738,rows6739,rows6740,rows6741,rows6742,rows6743,rows6744,rows6745,rows6746,rows6747,rows6748,rows6749,rows6750,rows6751,rows6752,rows6753,rows6754,rows6755,rows6756,rows6757,rows6758,rows6759,rows6760,rows6761,rows6762,List.append_assoc,List.append_nil]
theorem partLength104 : partOps104.length=64 := by decide
theorem partStats104 : partRows104.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows104=373032 := by
  simp only [partRows104,List.length_append,MatrixRowBlocks.rows_weight_append,stats6699.1,stats6699.2,stats6700.1,stats6700.2,stats6701.1,stats6701.2,stats6702.1,stats6702.2,stats6703.1,stats6703.2,stats6704.1,stats6704.2,stats6705.1,stats6705.2,stats6706.1,stats6706.2,stats6707.1,stats6707.2,stats6708.1,stats6708.2,stats6709.1,stats6709.2,stats6710.1,stats6710.2,stats6711.1,stats6711.2,stats6712.1,stats6712.2,stats6713.1,stats6713.2,stats6714.1,stats6714.2,stats6715.1,stats6715.2,stats6716.1,stats6716.2,stats6717.1,stats6717.2,stats6718.1,stats6718.2,stats6719.1,stats6719.2,stats6720.1,stats6720.2,stats6721.1,stats6721.2,stats6722.1,stats6722.2,stats6723.1,stats6723.2,stats6724.1,stats6724.2,stats6725.1,stats6725.2,stats6726.1,stats6726.2,stats6727.1,stats6727.2,stats6728.1,stats6728.2,stats6729.1,stats6729.2,stats6730.1,stats6730.2,stats6731.1,stats6731.2,stats6732.1,stats6732.2,stats6733.1,stats6733.2,stats6734.1,stats6734.2,stats6735.1,stats6735.2,stats6736.1,stats6736.2,stats6737.1,stats6737.2,stats6738.1,stats6738.2,stats6739.1,stats6739.2,stats6740.1,stats6740.2,stats6741.1,stats6741.2,stats6742.1,stats6742.2,stats6743.1,stats6743.2,stats6744.1,stats6744.2,stats6745.1,stats6745.2,stats6746.1,stats6746.2,stats6747.1,stats6747.2,stats6748.1,stats6748.2,stats6749.1,stats6749.2,stats6750.1,stats6750.2,stats6751.1,stats6751.2,stats6752.1,stats6752.2,stats6753.1,stats6753.2,stats6754.1,stats6754.2,stats6755.1,stats6755.2,stats6756.1,stats6756.2,stats6757.1,stats6757.2,stats6758.1,stats6758.2,stats6759.1,stats6759.2,stats6760.1,stats6760.2,stats6761.1,stats6761.2,stats6762.1,stats6762.2]
  decide
end FrameHashControllerCheckedRows
