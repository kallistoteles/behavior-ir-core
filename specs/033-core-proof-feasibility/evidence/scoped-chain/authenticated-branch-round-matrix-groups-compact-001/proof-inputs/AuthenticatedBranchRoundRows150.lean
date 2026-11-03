import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData151
import AuthenticatedBranchRoundInstructionMatrixData152
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9718 : actualRows9718=WordField.canonicalRows actualModulus 9718 (.rotr 9699 22) := by core033_kernel_decide
theorem stats9718 : actualRows9718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9718=5124 := by core033_kernel_decide
theorem rows9719 : actualRows9719=WordField.canonicalRows actualModulus 9719 (.bxor 9717 9718) := by core033_kernel_decide
theorem stats9719 : actualRows9719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9719=7428 := by core033_kernel_decide
theorem rows9720 : actualRows9720=WordField.canonicalRows actualModulus 9720 (.band 9699 9672) := by core033_kernel_decide
theorem stats9720 : actualRows9720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9720=5124 := by core033_kernel_decide
theorem rows9721 : actualRows9721=WordField.canonicalRows actualModulus 9721 (.band 9699 9645) := by core033_kernel_decide
theorem stats9721 : actualRows9721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9721=5124 := by core033_kernel_decide
theorem rows9722 : actualRows9722=WordField.canonicalRows actualModulus 9722 (.bxor 9720 9721) := by core033_kernel_decide
theorem stats9722 : actualRows9722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9722=7428 := by core033_kernel_decide
theorem rows9723 : actualRows9723=WordField.canonicalRows actualModulus 9723 (.band 9672 9645) := by core033_kernel_decide
theorem stats9723 : actualRows9723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9723=5124 := by core033_kernel_decide
theorem rows9724 : actualRows9724=WordField.canonicalRows actualModulus 9724 (.bxor 9722 9723) := by core033_kernel_decide
theorem stats9724 : actualRows9724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9724=7428 := by core033_kernel_decide
theorem rows9725 : actualRows9725=WordField.canonicalRows actualModulus 9725 (.badd 9719 9724) := by core033_kernel_decide
theorem stats9725 : actualRows9725.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9725=5388 := by core033_kernel_decide
theorem rows9726 : actualRows9726=WordField.canonicalRows actualModulus 9726 (.badd 9714 9725) := by core033_kernel_decide
theorem stats9726 : actualRows9726.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9726=5388 := by core033_kernel_decide
theorem rows9727 : actualRows9727=WordField.canonicalRows actualModulus 9727 (.badd 9618 9714) := by core033_kernel_decide
theorem stats9727 : actualRows9727.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9727=5388 := by core033_kernel_decide
theorem rows9728 : actualRows9728=WordField.canonicalRows actualModulus 9728 (.rotr 9727 6) := by core033_kernel_decide
theorem stats9728 : actualRows9728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9728=5124 := by core033_kernel_decide
theorem rows9729 : actualRows9729=WordField.canonicalRows actualModulus 9729 (.rotr 9727 11) := by core033_kernel_decide
theorem stats9729 : actualRows9729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9729=5124 := by core033_kernel_decide
theorem rows9730 : actualRows9730=WordField.canonicalRows actualModulus 9730 (.bxor 9728 9729) := by core033_kernel_decide
theorem stats9730 : actualRows9730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9730=7428 := by core033_kernel_decide
theorem rows9731 : actualRows9731=WordField.canonicalRows actualModulus 9731 (.rotr 9727 25) := by core033_kernel_decide
theorem stats9731 : actualRows9731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9731=5124 := by core033_kernel_decide
theorem rows9732 : actualRows9732=WordField.canonicalRows actualModulus 9732 (.bxor 9730 9731) := by core033_kernel_decide
theorem stats9732 : actualRows9732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9732=7428 := by core033_kernel_decide
theorem rows9733 : actualRows9733=WordField.canonicalRows actualModulus 9733 (.badd 9646 9732) := by core033_kernel_decide
theorem stats9733 : actualRows9733.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9733=5388 := by core033_kernel_decide
theorem rows9734 : actualRows9734=WordField.canonicalRows actualModulus 9734 (.band 9727 9700) := by core033_kernel_decide
theorem stats9734 : actualRows9734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9734=5124 := by core033_kernel_decide
theorem rows9735 : actualRows9735=WordField.canonicalRows actualModulus 9735 (.bnot 9727) := by core033_kernel_decide
theorem stats9735 : actualRows9735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9735=6276 := by core033_kernel_decide
theorem rows9736 : actualRows9736=WordField.canonicalRows actualModulus 9736 (.band 9735 9673) := by core033_kernel_decide
theorem stats9736 : actualRows9736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9736=5124 := by core033_kernel_decide
theorem rows9737 : actualRows9737=WordField.canonicalRows actualModulus 9737 (.bxor 9734 9736) := by core033_kernel_decide
theorem stats9737 : actualRows9737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9737=7428 := by core033_kernel_decide
theorem rows9738 : actualRows9738=WordField.canonicalRows actualModulus 9738 (.badd 9733 9737) := by core033_kernel_decide
theorem stats9738 : actualRows9738.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9738=5388 := by core033_kernel_decide
theorem rows9739 : actualRows9739=WordField.canonicalRows actualModulus 9739 (.literal (BitVec.ofNat 32 1695183700)) := by core033_kernel_decide
theorem stats9739 : actualRows9739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9739=3828 := by core033_kernel_decide
theorem rows9740 : actualRows9740=WordField.canonicalRows actualModulus 9740 (.badd 9738 9739) := by core033_kernel_decide
theorem stats9740 : actualRows9740.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9740=5388 := by core033_kernel_decide
theorem rows9741 : actualRows9741=WordField.canonicalRows actualModulus 9741 (.badd 9740 8404) := by core033_kernel_decide
theorem stats9741 : actualRows9741.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9741=5388 := by core033_kernel_decide
theorem rows9742 : actualRows9742=WordField.canonicalRows actualModulus 9742 (.rotr 9726 2) := by core033_kernel_decide
theorem stats9742 : actualRows9742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9742=5124 := by core033_kernel_decide
theorem rows9743 : actualRows9743=WordField.canonicalRows actualModulus 9743 (.rotr 9726 13) := by core033_kernel_decide
theorem stats9743 : actualRows9743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9743=5124 := by core033_kernel_decide
theorem rows9744 : actualRows9744=WordField.canonicalRows actualModulus 9744 (.bxor 9742 9743) := by core033_kernel_decide
theorem stats9744 : actualRows9744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9744=7428 := by core033_kernel_decide
theorem rows9745 : actualRows9745=WordField.canonicalRows actualModulus 9745 (.rotr 9726 22) := by core033_kernel_decide
theorem stats9745 : actualRows9745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9745=5124 := by core033_kernel_decide
theorem rows9746 : actualRows9746=WordField.canonicalRows actualModulus 9746 (.bxor 9744 9745) := by core033_kernel_decide
theorem stats9746 : actualRows9746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9746=7428 := by core033_kernel_decide
theorem rows9747 : actualRows9747=WordField.canonicalRows actualModulus 9747 (.band 9726 9699) := by core033_kernel_decide
theorem stats9747 : actualRows9747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9747=5124 := by core033_kernel_decide
theorem rows9748 : actualRows9748=WordField.canonicalRows actualModulus 9748 (.band 9726 9672) := by core033_kernel_decide
theorem stats9748 : actualRows9748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9748=5124 := by core033_kernel_decide
theorem rows9749 : actualRows9749=WordField.canonicalRows actualModulus 9749 (.bxor 9747 9748) := by core033_kernel_decide
theorem stats9749 : actualRows9749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9749=7428 := by core033_kernel_decide
theorem rows9750 : actualRows9750=WordField.canonicalRows actualModulus 9750 (.band 9699 9672) := by core033_kernel_decide
theorem stats9750 : actualRows9750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9750=5124 := by core033_kernel_decide
theorem rows9751 : actualRows9751=WordField.canonicalRows actualModulus 9751 (.bxor 9749 9750) := by core033_kernel_decide
theorem stats9751 : actualRows9751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9751=7428 := by core033_kernel_decide
theorem rows9752 : actualRows9752=WordField.canonicalRows actualModulus 9752 (.badd 9746 9751) := by core033_kernel_decide
theorem stats9752 : actualRows9752.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9752=5388 := by core033_kernel_decide
theorem rows9753 : actualRows9753=WordField.canonicalRows actualModulus 9753 (.badd 9741 9752) := by core033_kernel_decide
theorem stats9753 : actualRows9753.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9753=5388 := by core033_kernel_decide
theorem rows9754 : actualRows9754=WordField.canonicalRows actualModulus 9754 (.badd 9645 9741) := by core033_kernel_decide
theorem stats9754 : actualRows9754.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9754=5388 := by core033_kernel_decide
theorem rows9755 : actualRows9755=WordField.canonicalRows actualModulus 9755 (.rotr 9754 6) := by core033_kernel_decide
theorem stats9755 : actualRows9755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9755=5124 := by core033_kernel_decide
theorem rows9756 : actualRows9756=WordField.canonicalRows actualModulus 9756 (.rotr 9754 11) := by core033_kernel_decide
theorem stats9756 : actualRows9756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9756=5124 := by core033_kernel_decide
theorem rows9757 : actualRows9757=WordField.canonicalRows actualModulus 9757 (.bxor 9755 9756) := by core033_kernel_decide
theorem stats9757 : actualRows9757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9757=7428 := by core033_kernel_decide
theorem rows9758 : actualRows9758=WordField.canonicalRows actualModulus 9758 (.rotr 9754 25) := by core033_kernel_decide
theorem stats9758 : actualRows9758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9758=5124 := by core033_kernel_decide
theorem rows9759 : actualRows9759=WordField.canonicalRows actualModulus 9759 (.bxor 9757 9758) := by core033_kernel_decide
theorem stats9759 : actualRows9759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9759=7428 := by core033_kernel_decide
theorem rows9760 : actualRows9760=WordField.canonicalRows actualModulus 9760 (.badd 9673 9759) := by core033_kernel_decide
theorem stats9760 : actualRows9760.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9760=5388 := by core033_kernel_decide
theorem rows9761 : actualRows9761=WordField.canonicalRows actualModulus 9761 (.band 9754 9727) := by core033_kernel_decide
theorem stats9761 : actualRows9761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9761=5124 := by core033_kernel_decide
theorem rows9762 : actualRows9762=WordField.canonicalRows actualModulus 9762 (.bnot 9754) := by core033_kernel_decide
theorem stats9762 : actualRows9762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9762=6276 := by core033_kernel_decide
theorem rows9763 : actualRows9763=WordField.canonicalRows actualModulus 9763 (.band 9762 9700) := by core033_kernel_decide
theorem stats9763 : actualRows9763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9763=5124 := by core033_kernel_decide
theorem rows9764 : actualRows9764=WordField.canonicalRows actualModulus 9764 (.bxor 9761 9763) := by core033_kernel_decide
theorem stats9764 : actualRows9764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9764=7428 := by core033_kernel_decide
theorem rows9765 : actualRows9765=WordField.canonicalRows actualModulus 9765 (.badd 9760 9764) := by core033_kernel_decide
theorem stats9765 : actualRows9765.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9765=5388 := by core033_kernel_decide
theorem rows9766 : actualRows9766=WordField.canonicalRows actualModulus 9766 (.literal (BitVec.ofNat 32 1986661051)) := by core033_kernel_decide
theorem stats9766 : actualRows9766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9766=4044 := by core033_kernel_decide
theorem rows9767 : actualRows9767=WordField.canonicalRows actualModulus 9767 (.badd 9765 9766) := by core033_kernel_decide
theorem stats9767 : actualRows9767.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9767=5388 := by core033_kernel_decide
theorem rows9768 : actualRows9768=WordField.canonicalRows actualModulus 9768 (.badd 9767 8417) := by core033_kernel_decide
theorem stats9768 : actualRows9768.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9768=5388 := by core033_kernel_decide
theorem rows9769 : actualRows9769=WordField.canonicalRows actualModulus 9769 (.rotr 9753 2) := by core033_kernel_decide
theorem stats9769 : actualRows9769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9769=5124 := by core033_kernel_decide
theorem rows9770 : actualRows9770=WordField.canonicalRows actualModulus 9770 (.rotr 9753 13) := by core033_kernel_decide
theorem stats9770 : actualRows9770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9770=5124 := by core033_kernel_decide
theorem rows9771 : actualRows9771=WordField.canonicalRows actualModulus 9771 (.bxor 9769 9770) := by core033_kernel_decide
theorem stats9771 : actualRows9771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9771=7428 := by core033_kernel_decide
theorem rows9772 : actualRows9772=WordField.canonicalRows actualModulus 9772 (.rotr 9753 22) := by core033_kernel_decide
theorem stats9772 : actualRows9772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9772=5124 := by core033_kernel_decide
theorem rows9773 : actualRows9773=WordField.canonicalRows actualModulus 9773 (.bxor 9771 9772) := by core033_kernel_decide
theorem stats9773 : actualRows9773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9773=7428 := by core033_kernel_decide
theorem rows9774 : actualRows9774=WordField.canonicalRows actualModulus 9774 (.band 9753 9726) := by core033_kernel_decide
theorem stats9774 : actualRows9774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9774=5124 := by core033_kernel_decide
theorem rows9775 : actualRows9775=WordField.canonicalRows actualModulus 9775 (.band 9753 9699) := by core033_kernel_decide
theorem stats9775 : actualRows9775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9775=5124 := by core033_kernel_decide
theorem rows9776 : actualRows9776=WordField.canonicalRows actualModulus 9776 (.bxor 9774 9775) := by core033_kernel_decide
theorem stats9776 : actualRows9776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9776=7428 := by core033_kernel_decide
theorem rows9777 : actualRows9777=WordField.canonicalRows actualModulus 9777 (.band 9726 9699) := by core033_kernel_decide
theorem stats9777 : actualRows9777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9777=5124 := by core033_kernel_decide
theorem rows9778 : actualRows9778=WordField.canonicalRows actualModulus 9778 (.bxor 9776 9777) := by core033_kernel_decide
theorem stats9778 : actualRows9778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9778=7428 := by core033_kernel_decide
theorem rows9779 : actualRows9779=WordField.canonicalRows actualModulus 9779 (.badd 9773 9778) := by core033_kernel_decide
theorem stats9779 : actualRows9779.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9779=5388 := by core033_kernel_decide
theorem rows9780 : actualRows9780=WordField.canonicalRows actualModulus 9780 (.badd 9768 9779) := by core033_kernel_decide
theorem stats9780 : actualRows9780.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9780=5388 := by core033_kernel_decide
theorem rows9781 : actualRows9781=WordField.canonicalRows actualModulus 9781 (.badd 9672 9768) := by core033_kernel_decide
theorem stats9781 : actualRows9781.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9781=5388 := by core033_kernel_decide
def partRows150 : List R1CS.Row := actualRows9718++actualRows9719++actualRows9720++actualRows9721++actualRows9722++actualRows9723++actualRows9724++actualRows9725++actualRows9726++actualRows9727++actualRows9728++actualRows9729++actualRows9730++actualRows9731++actualRows9732++actualRows9733++actualRows9734++actualRows9735++actualRows9736++actualRows9737++actualRows9738++actualRows9739++actualRows9740++actualRows9741++actualRows9742++actualRows9743++actualRows9744++actualRows9745++actualRows9746++actualRows9747++actualRows9748++actualRows9749++actualRows9750++actualRows9751++actualRows9752++actualRows9753++actualRows9754++actualRows9755++actualRows9756++actualRows9757++actualRows9758++actualRows9759++actualRows9760++actualRows9761++actualRows9762++actualRows9763++actualRows9764++actualRows9765++actualRows9766++actualRows9767++actualRows9768++actualRows9769++actualRows9770++actualRows9771++actualRows9772++actualRows9773++actualRows9774++actualRows9775++actualRows9776++actualRows9777++actualRows9778++actualRows9779++actualRows9780++actualRows9781
def partOps150 : List WordIR.Op := [.rotr 9699 22,.bxor 9717 9718,.band 9699 9672,.band 9699 9645,.bxor 9720 9721,.band 9672 9645,.bxor 9722 9723,.badd 9719 9724,.badd 9714 9725,.badd 9618 9714,.rotr 9727 6,.rotr 9727 11,.bxor 9728 9729,.rotr 9727 25,.bxor 9730 9731,.badd 9646 9732,.band 9727 9700,.bnot 9727,.band 9735 9673,.bxor 9734 9736,.badd 9733 9737,.literal (BitVec.ofNat 32 1695183700),.badd 9738 9739,.badd 9740 8404,.rotr 9726 2,.rotr 9726 13,.bxor 9742 9743,.rotr 9726 22,.bxor 9744 9745,.band 9726 9699,.band 9726 9672,.bxor 9747 9748,.band 9699 9672,.bxor 9749 9750,.badd 9746 9751,.badd 9741 9752,.badd 9645 9741,.rotr 9754 6,.rotr 9754 11,.bxor 9755 9756,.rotr 9754 25,.bxor 9757 9758,.badd 9673 9759,.band 9754 9727,.bnot 9754,.band 9762 9700,.bxor 9761 9763,.badd 9760 9764,.literal (BitVec.ofNat 32 1986661051),.badd 9765 9766,.badd 9767 8417,.rotr 9753 2,.rotr 9753 13,.bxor 9769 9770,.rotr 9753 22,.bxor 9771 9772,.band 9753 9726,.band 9753 9699,.bxor 9774 9775,.band 9726 9699,.bxor 9776 9777,.badd 9773 9778,.badd 9768 9779,.badd 9672 9768]
theorem partExact150 : partRows150=WordField.rows actualModulus 9718 partOps150 := by
  simp only [partRows150,partOps150,WordField.rows,rows9718,rows9719,rows9720,rows9721,rows9722,rows9723,rows9724,rows9725,rows9726,rows9727,rows9728,rows9729,rows9730,rows9731,rows9732,rows9733,rows9734,rows9735,rows9736,rows9737,rows9738,rows9739,rows9740,rows9741,rows9742,rows9743,rows9744,rows9745,rows9746,rows9747,rows9748,rows9749,rows9750,rows9751,rows9752,rows9753,rows9754,rows9755,rows9756,rows9757,rows9758,rows9759,rows9760,rows9761,rows9762,rows9763,rows9764,rows9765,rows9766,rows9767,rows9768,rows9769,rows9770,rows9771,rows9772,rows9773,rows9774,rows9775,rows9776,rows9777,rows9778,rows9779,rows9780,rows9781,List.append_assoc,List.append_nil]
theorem partLength150 : partOps150.length=64 := by decide
theorem partStats150 : partRows150.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows150=371520 := by
  simp only [partRows150,List.length_append,MatrixRowBlocks.rows_weight_append,stats9718.1,stats9718.2,stats9719.1,stats9719.2,stats9720.1,stats9720.2,stats9721.1,stats9721.2,stats9722.1,stats9722.2,stats9723.1,stats9723.2,stats9724.1,stats9724.2,stats9725.1,stats9725.2,stats9726.1,stats9726.2,stats9727.1,stats9727.2,stats9728.1,stats9728.2,stats9729.1,stats9729.2,stats9730.1,stats9730.2,stats9731.1,stats9731.2,stats9732.1,stats9732.2,stats9733.1,stats9733.2,stats9734.1,stats9734.2,stats9735.1,stats9735.2,stats9736.1,stats9736.2,stats9737.1,stats9737.2,stats9738.1,stats9738.2,stats9739.1,stats9739.2,stats9740.1,stats9740.2,stats9741.1,stats9741.2,stats9742.1,stats9742.2,stats9743.1,stats9743.2,stats9744.1,stats9744.2,stats9745.1,stats9745.2,stats9746.1,stats9746.2,stats9747.1,stats9747.2,stats9748.1,stats9748.2,stats9749.1,stats9749.2,stats9750.1,stats9750.2,stats9751.1,stats9751.2,stats9752.1,stats9752.2,stats9753.1,stats9753.2,stats9754.1,stats9754.2,stats9755.1,stats9755.2,stats9756.1,stats9756.2,stats9757.1,stats9757.2,stats9758.1,stats9758.2,stats9759.1,stats9759.2,stats9760.1,stats9760.2,stats9761.1,stats9761.2,stats9762.1,stats9762.2,stats9763.1,stats9763.2,stats9764.1,stats9764.2,stats9765.1,stats9765.2,stats9766.1,stats9766.2,stats9767.1,stats9767.2,stats9768.1,stats9768.2,stats9769.1,stats9769.2,stats9770.1,stats9770.2,stats9771.1,stats9771.2,stats9772.1,stats9772.2,stats9773.1,stats9773.2,stats9774.1,stats9774.2,stats9775.1,stats9775.2,stats9776.1,stats9776.2,stats9777.1,stats9777.2,stats9778.1,stats9778.2,stats9779.1,stats9779.2,stats9780.1,stats9780.2,stats9781.1,stats9781.2]
  decide
end AuthenticatedBranchRoundCheckedRows
