import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData104
import AuthenticatedBranchRoundInstructionMatrixData105
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6710 : actualRows6710=WordField.canonicalRows actualModulus 6710 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6710 : actualRows6710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6710=2820 := by core033_kernel_decide
theorem rows6711 : actualRows6711=WordField.canonicalRows actualModulus 6711 (.bnot 6710) := by core033_kernel_decide
theorem stats6711 : actualRows6711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6711=6276 := by core033_kernel_decide
theorem rows6712 : actualRows6712=WordField.canonicalRows actualModulus 6712 (.badd 6709 6711) := by core033_kernel_decide
theorem stats6712 : actualRows6712.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6712=5388 := by core033_kernel_decide
theorem rows6713 : actualRows6713=WordField.canonicalRows actualModulus 6713 (.bnot 6712) := by core033_kernel_decide
theorem stats6713 : actualRows6713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6713=6276 := by core033_kernel_decide
theorem rows6714 : actualRows6714=WordField.canonicalRows actualModulus 6714 (.band 6707 6713) := by core033_kernel_decide
theorem stats6714 : actualRows6714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6714=5124 := by core033_kernel_decide
theorem rows6715 : actualRows6715=WordField.canonicalRows actualModulus 6715 (.bxor 6702 6714) := by core033_kernel_decide
theorem stats6715 : actualRows6715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6715=7428 := by core033_kernel_decide
theorem rows6716 : actualRows6716=WordField.canonicalRows actualModulus 6716 (.shr 6715 31) := by core033_kernel_decide
theorem stats6716 : actualRows6716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6716=2892 := by core033_kernel_decide
theorem rows6717 : actualRows6717=WordField.canonicalRows actualModulus 6717 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6717 : actualRows6717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6717=2892 := by core033_kernel_decide
theorem rows6718 : actualRows6718=WordField.canonicalRows actualModulus 6718 (.bxor 6716 6717) := by core033_kernel_decide
theorem stats6718 : actualRows6718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6718=7428 := by core033_kernel_decide
theorem rows6719 : actualRows6719=WordField.canonicalRows actualModulus 6719 (.bnot 6718) := by core033_kernel_decide
theorem stats6719 : actualRows6719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6719=6276 := by core033_kernel_decide
theorem rows6720 : actualRows6720=WordField.canonicalRows actualModulus 6720 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6720 : actualRows6720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6720=2892 := by core033_kernel_decide
theorem rows6721 : actualRows6721=WordField.canonicalRows actualModulus 6721 (.badd 6719 6720) := by core033_kernel_decide
theorem stats6721 : actualRows6721.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6721=5388 := by core033_kernel_decide
theorem rows6722 : actualRows6722=WordField.canonicalRows actualModulus 6722 (.bnot 6721) := by core033_kernel_decide
theorem stats6722 : actualRows6722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6722=6276 := by core033_kernel_decide
theorem rows6723 : actualRows6723=WordField.canonicalRows actualModulus 6723 (.band 6722 2684) := by core033_kernel_decide
theorem stats6723 : actualRows6723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6723=5124 := by core033_kernel_decide
theorem rows6724 : actualRows6724=WordField.canonicalRows actualModulus 6724 (.bxor 6697 6723) := by core033_kernel_decide
theorem stats6724 : actualRows6724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6724=7428 := by core033_kernel_decide
theorem rows6725 : actualRows6725=WordField.canonicalRows actualModulus 6725 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6725 : actualRows6725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6725=2892 := by core033_kernel_decide
theorem rows6726 : actualRows6726=WordField.canonicalRows actualModulus 6726 (.bxor 1299 6725) := by core033_kernel_decide
theorem stats6726 : actualRows6726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6726=7428 := by core033_kernel_decide
theorem rows6727 : actualRows6727=WordField.canonicalRows actualModulus 6727 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6727 : actualRows6727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6727=2820 := by core033_kernel_decide
theorem rows6728 : actualRows6728=WordField.canonicalRows actualModulus 6728 (.bnot 6727) := by core033_kernel_decide
theorem stats6728 : actualRows6728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6728=6276 := by core033_kernel_decide
theorem rows6729 : actualRows6729=WordField.canonicalRows actualModulus 6729 (.band 6726 6728) := by core033_kernel_decide
theorem stats6729 : actualRows6729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6729=5124 := by core033_kernel_decide
theorem rows6730 : actualRows6730=WordField.canonicalRows actualModulus 6730 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6730 : actualRows6730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6730=2892 := by core033_kernel_decide
theorem rows6731 : actualRows6731=WordField.canonicalRows actualModulus 6731 (.bxor 1299 6730) := by core033_kernel_decide
theorem stats6731 : actualRows6731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6731=7428 := by core033_kernel_decide
theorem rows6732 : actualRows6732=WordField.canonicalRows actualModulus 6732 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6732 : actualRows6732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6732=2820 := by core033_kernel_decide
theorem rows6733 : actualRows6733=WordField.canonicalRows actualModulus 6733 (.bnot 6732) := by core033_kernel_decide
theorem stats6733 : actualRows6733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6733=6276 := by core033_kernel_decide
theorem rows6734 : actualRows6734=WordField.canonicalRows actualModulus 6734 (.bxor 6731 6733) := by core033_kernel_decide
theorem stats6734 : actualRows6734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6734=7428 := by core033_kernel_decide
theorem rows6735 : actualRows6735=WordField.canonicalRows actualModulus 6735 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6735 : actualRows6735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6735=2892 := by core033_kernel_decide
theorem rows6736 : actualRows6736=WordField.canonicalRows actualModulus 6736 (.bxor 1299 6735) := by core033_kernel_decide
theorem stats6736 : actualRows6736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6736=7428 := by core033_kernel_decide
theorem rows6737 : actualRows6737=WordField.canonicalRows actualModulus 6737 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6737 : actualRows6737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6737=2820 := by core033_kernel_decide
theorem rows6738 : actualRows6738=WordField.canonicalRows actualModulus 6738 (.bnot 6737) := by core033_kernel_decide
theorem stats6738 : actualRows6738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6738=6276 := by core033_kernel_decide
theorem rows6739 : actualRows6739=WordField.canonicalRows actualModulus 6739 (.badd 6736 6738) := by core033_kernel_decide
theorem stats6739 : actualRows6739.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6739=5388 := by core033_kernel_decide
theorem rows6740 : actualRows6740=WordField.canonicalRows actualModulus 6740 (.bnot 6739) := by core033_kernel_decide
theorem stats6740 : actualRows6740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6740=6276 := by core033_kernel_decide
theorem rows6741 : actualRows6741=WordField.canonicalRows actualModulus 6741 (.band 6734 6740) := by core033_kernel_decide
theorem stats6741 : actualRows6741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6741=5124 := by core033_kernel_decide
theorem rows6742 : actualRows6742=WordField.canonicalRows actualModulus 6742 (.bxor 6729 6741) := by core033_kernel_decide
theorem stats6742 : actualRows6742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6742=7428 := by core033_kernel_decide
theorem rows6743 : actualRows6743=WordField.canonicalRows actualModulus 6743 (.shr 6742 31) := by core033_kernel_decide
theorem stats6743 : actualRows6743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6743=2892 := by core033_kernel_decide
theorem rows6744 : actualRows6744=WordField.canonicalRows actualModulus 6744 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6744 : actualRows6744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6744=2892 := by core033_kernel_decide
theorem rows6745 : actualRows6745=WordField.canonicalRows actualModulus 6745 (.bxor 6743 6744) := by core033_kernel_decide
theorem stats6745 : actualRows6745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6745=7428 := by core033_kernel_decide
theorem rows6746 : actualRows6746=WordField.canonicalRows actualModulus 6746 (.bnot 6745) := by core033_kernel_decide
theorem stats6746 : actualRows6746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6746=6276 := by core033_kernel_decide
theorem rows6747 : actualRows6747=WordField.canonicalRows actualModulus 6747 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6747 : actualRows6747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6747=2892 := by core033_kernel_decide
theorem rows6748 : actualRows6748=WordField.canonicalRows actualModulus 6748 (.badd 6746 6747) := by core033_kernel_decide
theorem stats6748 : actualRows6748.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6748=5388 := by core033_kernel_decide
theorem rows6749 : actualRows6749=WordField.canonicalRows actualModulus 6749 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6749 : actualRows6749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6749=2820 := by core033_kernel_decide
theorem rows6750 : actualRows6750=WordField.canonicalRows actualModulus 6750 (.band 6748 6749) := by core033_kernel_decide
theorem stats6750 : actualRows6750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6750=5124 := by core033_kernel_decide
theorem rows6751 : actualRows6751=WordField.canonicalRows actualModulus 6751 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6751 : actualRows6751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6751=2892 := by core033_kernel_decide
theorem rows6752 : actualRows6752=WordField.canonicalRows actualModulus 6752 (.bxor 1299 6751) := by core033_kernel_decide
theorem stats6752 : actualRows6752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6752=7428 := by core033_kernel_decide
theorem rows6753 : actualRows6753=WordField.canonicalRows actualModulus 6753 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6753 : actualRows6753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6753=2820 := by core033_kernel_decide
theorem rows6754 : actualRows6754=WordField.canonicalRows actualModulus 6754 (.bnot 6753) := by core033_kernel_decide
theorem stats6754 : actualRows6754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6754=6276 := by core033_kernel_decide
theorem rows6755 : actualRows6755=WordField.canonicalRows actualModulus 6755 (.band 6752 6754) := by core033_kernel_decide
theorem stats6755 : actualRows6755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6755=5124 := by core033_kernel_decide
theorem rows6756 : actualRows6756=WordField.canonicalRows actualModulus 6756 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6756 : actualRows6756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6756=2892 := by core033_kernel_decide
theorem rows6757 : actualRows6757=WordField.canonicalRows actualModulus 6757 (.bxor 1299 6756) := by core033_kernel_decide
theorem stats6757 : actualRows6757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6757=7428 := by core033_kernel_decide
theorem rows6758 : actualRows6758=WordField.canonicalRows actualModulus 6758 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6758 : actualRows6758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6758=2820 := by core033_kernel_decide
theorem rows6759 : actualRows6759=WordField.canonicalRows actualModulus 6759 (.bnot 6758) := by core033_kernel_decide
theorem stats6759 : actualRows6759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6759=6276 := by core033_kernel_decide
theorem rows6760 : actualRows6760=WordField.canonicalRows actualModulus 6760 (.bxor 6757 6759) := by core033_kernel_decide
theorem stats6760 : actualRows6760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6760=7428 := by core033_kernel_decide
theorem rows6761 : actualRows6761=WordField.canonicalRows actualModulus 6761 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6761 : actualRows6761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6761=2892 := by core033_kernel_decide
theorem rows6762 : actualRows6762=WordField.canonicalRows actualModulus 6762 (.bxor 1299 6761) := by core033_kernel_decide
theorem stats6762 : actualRows6762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6762=7428 := by core033_kernel_decide
theorem rows6763 : actualRows6763=WordField.canonicalRows actualModulus 6763 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6763 : actualRows6763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6763=2820 := by core033_kernel_decide
theorem rows6764 : actualRows6764=WordField.canonicalRows actualModulus 6764 (.bnot 6763) := by core033_kernel_decide
theorem stats6764 : actualRows6764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6764=6276 := by core033_kernel_decide
theorem rows6765 : actualRows6765=WordField.canonicalRows actualModulus 6765 (.badd 6762 6764) := by core033_kernel_decide
theorem stats6765 : actualRows6765.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6765=5388 := by core033_kernel_decide
theorem rows6766 : actualRows6766=WordField.canonicalRows actualModulus 6766 (.bnot 6765) := by core033_kernel_decide
theorem stats6766 : actualRows6766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6766=6276 := by core033_kernel_decide
theorem rows6767 : actualRows6767=WordField.canonicalRows actualModulus 6767 (.band 6760 6766) := by core033_kernel_decide
theorem stats6767 : actualRows6767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6767=5124 := by core033_kernel_decide
theorem rows6768 : actualRows6768=WordField.canonicalRows actualModulus 6768 (.bxor 6755 6767) := by core033_kernel_decide
theorem stats6768 : actualRows6768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6768=7428 := by core033_kernel_decide
theorem rows6769 : actualRows6769=WordField.canonicalRows actualModulus 6769 (.shr 6768 31) := by core033_kernel_decide
theorem stats6769 : actualRows6769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6769=2892 := by core033_kernel_decide
theorem rows6770 : actualRows6770=WordField.canonicalRows actualModulus 6770 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6770 : actualRows6770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6770=2892 := by core033_kernel_decide
theorem rows6771 : actualRows6771=WordField.canonicalRows actualModulus 6771 (.bxor 6769 6770) := by core033_kernel_decide
theorem stats6771 : actualRows6771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6771=7428 := by core033_kernel_decide
theorem rows6772 : actualRows6772=WordField.canonicalRows actualModulus 6772 (.bnot 6771) := by core033_kernel_decide
theorem stats6772 : actualRows6772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6772=6276 := by core033_kernel_decide
theorem rows6773 : actualRows6773=WordField.canonicalRows actualModulus 6773 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6773 : actualRows6773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6773=2892 := by core033_kernel_decide
def partRows103 : List R1CS.Row := actualRows6710++actualRows6711++actualRows6712++actualRows6713++actualRows6714++actualRows6715++actualRows6716++actualRows6717++actualRows6718++actualRows6719++actualRows6720++actualRows6721++actualRows6722++actualRows6723++actualRows6724++actualRows6725++actualRows6726++actualRows6727++actualRows6728++actualRows6729++actualRows6730++actualRows6731++actualRows6732++actualRows6733++actualRows6734++actualRows6735++actualRows6736++actualRows6737++actualRows6738++actualRows6739++actualRows6740++actualRows6741++actualRows6742++actualRows6743++actualRows6744++actualRows6745++actualRows6746++actualRows6747++actualRows6748++actualRows6749++actualRows6750++actualRows6751++actualRows6752++actualRows6753++actualRows6754++actualRows6755++actualRows6756++actualRows6757++actualRows6758++actualRows6759++actualRows6760++actualRows6761++actualRows6762++actualRows6763++actualRows6764++actualRows6765++actualRows6766++actualRows6767++actualRows6768++actualRows6769++actualRows6770++actualRows6771++actualRows6772++actualRows6773
def partOps103 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 6710,.badd 6709 6711,.bnot 6712,.band 6707 6713,.bxor 6702 6714,.shr 6715 31,.literal (BitVec.ofNat 32 1),.bxor 6716 6717,.bnot 6718,.literal (BitVec.ofNat 32 1),.badd 6719 6720,.bnot 6721,.band 6722 2684,.bxor 6697 6723,.literal (BitVec.ofNat 32 2),.bxor 1299 6725,.literal (BitVec.ofNat 32 0),.bnot 6727,.band 6726 6728,.literal (BitVec.ofNat 32 2),.bxor 1299 6730,.literal (BitVec.ofNat 32 0),.bnot 6732,.bxor 6731 6733,.literal (BitVec.ofNat 32 2),.bxor 1299 6735,.literal (BitVec.ofNat 32 0),.bnot 6737,.badd 6736 6738,.bnot 6739,.band 6734 6740,.bxor 6729 6741,.shr 6742 31,.literal (BitVec.ofNat 32 1),.bxor 6743 6744,.bnot 6745,.literal (BitVec.ofNat 32 1),.badd 6746 6747,.literal (BitVec.ofNat 32 0),.band 6748 6749,.literal (BitVec.ofNat 32 2),.bxor 1299 6751,.literal (BitVec.ofNat 32 0),.bnot 6753,.band 6752 6754,.literal (BitVec.ofNat 32 2),.bxor 1299 6756,.literal (BitVec.ofNat 32 0),.bnot 6758,.bxor 6757 6759,.literal (BitVec.ofNat 32 2),.bxor 1299 6761,.literal (BitVec.ofNat 32 0),.bnot 6763,.badd 6762 6764,.bnot 6765,.band 6760 6766,.bxor 6755 6767,.shr 6768 31,.literal (BitVec.ofNat 32 1),.bxor 6769 6770,.bnot 6771,.literal (BitVec.ofNat 32 1)]
theorem partExact103 : partRows103=WordField.rows actualModulus 6710 partOps103 := by
  simp only [partRows103,partOps103,WordField.rows,rows6710,rows6711,rows6712,rows6713,rows6714,rows6715,rows6716,rows6717,rows6718,rows6719,rows6720,rows6721,rows6722,rows6723,rows6724,rows6725,rows6726,rows6727,rows6728,rows6729,rows6730,rows6731,rows6732,rows6733,rows6734,rows6735,rows6736,rows6737,rows6738,rows6739,rows6740,rows6741,rows6742,rows6743,rows6744,rows6745,rows6746,rows6747,rows6748,rows6749,rows6750,rows6751,rows6752,rows6753,rows6754,rows6755,rows6756,rows6757,rows6758,rows6759,rows6760,rows6761,rows6762,rows6763,rows6764,rows6765,rows6766,rows6767,rows6768,rows6769,rows6770,rows6771,rows6772,rows6773,List.append_assoc,List.append_nil]
theorem partLength103 : partOps103.length=64 := by decide
theorem partStats103 : partRows103.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows103=328032 := by
  simp only [partRows103,List.length_append,MatrixRowBlocks.rows_weight_append,stats6710.1,stats6710.2,stats6711.1,stats6711.2,stats6712.1,stats6712.2,stats6713.1,stats6713.2,stats6714.1,stats6714.2,stats6715.1,stats6715.2,stats6716.1,stats6716.2,stats6717.1,stats6717.2,stats6718.1,stats6718.2,stats6719.1,stats6719.2,stats6720.1,stats6720.2,stats6721.1,stats6721.2,stats6722.1,stats6722.2,stats6723.1,stats6723.2,stats6724.1,stats6724.2,stats6725.1,stats6725.2,stats6726.1,stats6726.2,stats6727.1,stats6727.2,stats6728.1,stats6728.2,stats6729.1,stats6729.2,stats6730.1,stats6730.2,stats6731.1,stats6731.2,stats6732.1,stats6732.2,stats6733.1,stats6733.2,stats6734.1,stats6734.2,stats6735.1,stats6735.2,stats6736.1,stats6736.2,stats6737.1,stats6737.2,stats6738.1,stats6738.2,stats6739.1,stats6739.2,stats6740.1,stats6740.2,stats6741.1,stats6741.2,stats6742.1,stats6742.2,stats6743.1,stats6743.2,stats6744.1,stats6744.2,stats6745.1,stats6745.2,stats6746.1,stats6746.2,stats6747.1,stats6747.2,stats6748.1,stats6748.2,stats6749.1,stats6749.2,stats6750.1,stats6750.2,stats6751.1,stats6751.2,stats6752.1,stats6752.2,stats6753.1,stats6753.2,stats6754.1,stats6754.2,stats6755.1,stats6755.2,stats6756.1,stats6756.2,stats6757.1,stats6757.2,stats6758.1,stats6758.2,stats6759.1,stats6759.2,stats6760.1,stats6760.2,stats6761.1,stats6761.2,stats6762.1,stats6762.2,stats6763.1,stats6763.2,stats6764.1,stats6764.2,stats6765.1,stats6765.2,stats6766.1,stats6766.2,stats6767.1,stats6767.2,stats6768.1,stats6768.2,stats6769.1,stats6769.2,stats6770.1,stats6770.2,stats6771.1,stats6771.2,stats6772.1,stats6772.2,stats6773.1,stats6773.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
