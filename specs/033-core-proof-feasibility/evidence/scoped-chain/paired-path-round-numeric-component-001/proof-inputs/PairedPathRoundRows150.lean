import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData151
import PairedPathRoundInstructionMatrixData152
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9696 : actualRows9696=WordField.canonicalRows actualModulus 9696 (.rotr 9692 25) := by core033_kernel_decide
theorem stats9696 : actualRows9696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9696=5124 := by core033_kernel_decide
theorem rows9697 : actualRows9697=WordField.canonicalRows actualModulus 9697 (.bxor 9695 9696) := by core033_kernel_decide
theorem stats9697 : actualRows9697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9697=7428 := by core033_kernel_decide
theorem rows9698 : actualRows9698=WordField.canonicalRows actualModulus 9698 (.badd 9611 9697) := by core033_kernel_decide
theorem stats9698 : actualRows9698.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9698=5388 := by core033_kernel_decide
theorem rows9699 : actualRows9699=WordField.canonicalRows actualModulus 9699 (.band 9692 9665) := by core033_kernel_decide
theorem stats9699 : actualRows9699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9699=5124 := by core033_kernel_decide
theorem rows9700 : actualRows9700=WordField.canonicalRows actualModulus 9700 (.bnot 9692) := by core033_kernel_decide
theorem stats9700 : actualRows9700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9700=6276 := by core033_kernel_decide
theorem rows9701 : actualRows9701=WordField.canonicalRows actualModulus 9701 (.band 9700 9638) := by core033_kernel_decide
theorem stats9701 : actualRows9701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9701=5124 := by core033_kernel_decide
theorem rows9702 : actualRows9702=WordField.canonicalRows actualModulus 9702 (.bxor 9699 9701) := by core033_kernel_decide
theorem stats9702 : actualRows9702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9702=7428 := by core033_kernel_decide
theorem rows9703 : actualRows9703=WordField.canonicalRows actualModulus 9703 (.badd 9698 9702) := by core033_kernel_decide
theorem stats9703 : actualRows9703.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9703=5388 := by core033_kernel_decide
theorem rows9704 : actualRows9704=WordField.canonicalRows actualModulus 9704 (.literal (BitVec.ofNat 32 2428436474)) := by core033_kernel_decide
theorem stats9704 : actualRows9704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9704=4404 := by core033_kernel_decide
theorem rows9705 : actualRows9705=WordField.canonicalRows actualModulus 9705 (.badd 9703 9704) := by core033_kernel_decide
theorem stats9705 : actualRows9705.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9705=5388 := by core033_kernel_decide
theorem rows9706 : actualRows9706=WordField.canonicalRows actualModulus 9706 (.badd 9705 8033) := by core033_kernel_decide
theorem stats9706 : actualRows9706.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9706=5388 := by core033_kernel_decide
theorem rows9707 : actualRows9707=WordField.canonicalRows actualModulus 9707 (.rotr 9691 2) := by core033_kernel_decide
theorem stats9707 : actualRows9707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9707=5124 := by core033_kernel_decide
theorem rows9708 : actualRows9708=WordField.canonicalRows actualModulus 9708 (.rotr 9691 13) := by core033_kernel_decide
theorem stats9708 : actualRows9708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9708=5124 := by core033_kernel_decide
theorem rows9709 : actualRows9709=WordField.canonicalRows actualModulus 9709 (.bxor 9707 9708) := by core033_kernel_decide
theorem stats9709 : actualRows9709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9709=7428 := by core033_kernel_decide
theorem rows9710 : actualRows9710=WordField.canonicalRows actualModulus 9710 (.rotr 9691 22) := by core033_kernel_decide
theorem stats9710 : actualRows9710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9710=5124 := by core033_kernel_decide
theorem rows9711 : actualRows9711=WordField.canonicalRows actualModulus 9711 (.bxor 9709 9710) := by core033_kernel_decide
theorem stats9711 : actualRows9711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9711=7428 := by core033_kernel_decide
theorem rows9712 : actualRows9712=WordField.canonicalRows actualModulus 9712 (.band 9691 9664) := by core033_kernel_decide
theorem stats9712 : actualRows9712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9712=5124 := by core033_kernel_decide
theorem rows9713 : actualRows9713=WordField.canonicalRows actualModulus 9713 (.band 9691 9637) := by core033_kernel_decide
theorem stats9713 : actualRows9713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9713=5124 := by core033_kernel_decide
theorem rows9714 : actualRows9714=WordField.canonicalRows actualModulus 9714 (.bxor 9712 9713) := by core033_kernel_decide
theorem stats9714 : actualRows9714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9714=7428 := by core033_kernel_decide
theorem rows9715 : actualRows9715=WordField.canonicalRows actualModulus 9715 (.band 9664 9637) := by core033_kernel_decide
theorem stats9715 : actualRows9715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9715=5124 := by core033_kernel_decide
theorem rows9716 : actualRows9716=WordField.canonicalRows actualModulus 9716 (.bxor 9714 9715) := by core033_kernel_decide
theorem stats9716 : actualRows9716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9716=7428 := by core033_kernel_decide
theorem rows9717 : actualRows9717=WordField.canonicalRows actualModulus 9717 (.badd 9711 9716) := by core033_kernel_decide
theorem stats9717 : actualRows9717.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9717=5388 := by core033_kernel_decide
theorem rows9718 : actualRows9718=WordField.canonicalRows actualModulus 9718 (.badd 9706 9717) := by core033_kernel_decide
theorem stats9718 : actualRows9718.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9718=5388 := by core033_kernel_decide
theorem rows9719 : actualRows9719=WordField.canonicalRows actualModulus 9719 (.badd 9610 9706) := by core033_kernel_decide
theorem stats9719 : actualRows9719.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9719=5388 := by core033_kernel_decide
theorem rows9720 : actualRows9720=WordField.canonicalRows actualModulus 9720 (.rotr 9719 6) := by core033_kernel_decide
theorem stats9720 : actualRows9720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9720=5124 := by core033_kernel_decide
theorem rows9721 : actualRows9721=WordField.canonicalRows actualModulus 9721 (.rotr 9719 11) := by core033_kernel_decide
theorem stats9721 : actualRows9721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9721=5124 := by core033_kernel_decide
theorem rows9722 : actualRows9722=WordField.canonicalRows actualModulus 9722 (.bxor 9720 9721) := by core033_kernel_decide
theorem stats9722 : actualRows9722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9722=7428 := by core033_kernel_decide
theorem rows9723 : actualRows9723=WordField.canonicalRows actualModulus 9723 (.rotr 9719 25) := by core033_kernel_decide
theorem stats9723 : actualRows9723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9723=5124 := by core033_kernel_decide
theorem rows9724 : actualRows9724=WordField.canonicalRows actualModulus 9724 (.bxor 9722 9723) := by core033_kernel_decide
theorem stats9724 : actualRows9724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9724=7428 := by core033_kernel_decide
theorem rows9725 : actualRows9725=WordField.canonicalRows actualModulus 9725 (.badd 9638 9724) := by core033_kernel_decide
theorem stats9725 : actualRows9725.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9725=5388 := by core033_kernel_decide
theorem rows9726 : actualRows9726=WordField.canonicalRows actualModulus 9726 (.band 9719 9692) := by core033_kernel_decide
theorem stats9726 : actualRows9726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9726=5124 := by core033_kernel_decide
theorem rows9727 : actualRows9727=WordField.canonicalRows actualModulus 9727 (.bnot 9719) := by core033_kernel_decide
theorem stats9727 : actualRows9727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9727=6276 := by core033_kernel_decide
theorem rows9728 : actualRows9728=WordField.canonicalRows actualModulus 9728 (.band 9727 9665) := by core033_kernel_decide
theorem stats9728 : actualRows9728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9728=5124 := by core033_kernel_decide
theorem rows9729 : actualRows9729=WordField.canonicalRows actualModulus 9729 (.bxor 9726 9728) := by core033_kernel_decide
theorem stats9729 : actualRows9729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9729=7428 := by core033_kernel_decide
theorem rows9730 : actualRows9730=WordField.canonicalRows actualModulus 9730 (.badd 9725 9729) := by core033_kernel_decide
theorem stats9730 : actualRows9730.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9730=5388 := by core033_kernel_decide
theorem rows9731 : actualRows9731=WordField.canonicalRows actualModulus 9731 (.literal (BitVec.ofNat 32 2756734187)) := by core033_kernel_decide
theorem stats9731 : actualRows9731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9731=3900 := by core033_kernel_decide
theorem rows9732 : actualRows9732=WordField.canonicalRows actualModulus 9732 (.badd 9730 9731) := by core033_kernel_decide
theorem stats9732 : actualRows9732.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9732=5388 := by core033_kernel_decide
theorem rows9733 : actualRows9733=WordField.canonicalRows actualModulus 9733 (.badd 9732 8046) := by core033_kernel_decide
theorem stats9733 : actualRows9733.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9733=5388 := by core033_kernel_decide
theorem rows9734 : actualRows9734=WordField.canonicalRows actualModulus 9734 (.rotr 9718 2) := by core033_kernel_decide
theorem stats9734 : actualRows9734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9734=5124 := by core033_kernel_decide
theorem rows9735 : actualRows9735=WordField.canonicalRows actualModulus 9735 (.rotr 9718 13) := by core033_kernel_decide
theorem stats9735 : actualRows9735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9735=5124 := by core033_kernel_decide
theorem rows9736 : actualRows9736=WordField.canonicalRows actualModulus 9736 (.bxor 9734 9735) := by core033_kernel_decide
theorem stats9736 : actualRows9736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9736=7428 := by core033_kernel_decide
theorem rows9737 : actualRows9737=WordField.canonicalRows actualModulus 9737 (.rotr 9718 22) := by core033_kernel_decide
theorem stats9737 : actualRows9737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9737=5124 := by core033_kernel_decide
theorem rows9738 : actualRows9738=WordField.canonicalRows actualModulus 9738 (.bxor 9736 9737) := by core033_kernel_decide
theorem stats9738 : actualRows9738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9738=7428 := by core033_kernel_decide
theorem rows9739 : actualRows9739=WordField.canonicalRows actualModulus 9739 (.band 9718 9691) := by core033_kernel_decide
theorem stats9739 : actualRows9739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9739=5124 := by core033_kernel_decide
theorem rows9740 : actualRows9740=WordField.canonicalRows actualModulus 9740 (.band 9718 9664) := by core033_kernel_decide
theorem stats9740 : actualRows9740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9740=5124 := by core033_kernel_decide
theorem rows9741 : actualRows9741=WordField.canonicalRows actualModulus 9741 (.bxor 9739 9740) := by core033_kernel_decide
theorem stats9741 : actualRows9741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9741=7428 := by core033_kernel_decide
theorem rows9742 : actualRows9742=WordField.canonicalRows actualModulus 9742 (.band 9691 9664) := by core033_kernel_decide
theorem stats9742 : actualRows9742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9742=5124 := by core033_kernel_decide
theorem rows9743 : actualRows9743=WordField.canonicalRows actualModulus 9743 (.bxor 9741 9742) := by core033_kernel_decide
theorem stats9743 : actualRows9743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9743=7428 := by core033_kernel_decide
theorem rows9744 : actualRows9744=WordField.canonicalRows actualModulus 9744 (.badd 9738 9743) := by core033_kernel_decide
theorem stats9744 : actualRows9744.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9744=5388 := by core033_kernel_decide
theorem rows9745 : actualRows9745=WordField.canonicalRows actualModulus 9745 (.badd 9733 9744) := by core033_kernel_decide
theorem stats9745 : actualRows9745.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9745=5388 := by core033_kernel_decide
theorem rows9746 : actualRows9746=WordField.canonicalRows actualModulus 9746 (.badd 9637 9733) := by core033_kernel_decide
theorem stats9746 : actualRows9746.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9746=5388 := by core033_kernel_decide
theorem rows9747 : actualRows9747=WordField.canonicalRows actualModulus 9747 (.rotr 9746 6) := by core033_kernel_decide
theorem stats9747 : actualRows9747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9747=5124 := by core033_kernel_decide
theorem rows9748 : actualRows9748=WordField.canonicalRows actualModulus 9748 (.rotr 9746 11) := by core033_kernel_decide
theorem stats9748 : actualRows9748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9748=5124 := by core033_kernel_decide
theorem rows9749 : actualRows9749=WordField.canonicalRows actualModulus 9749 (.bxor 9747 9748) := by core033_kernel_decide
theorem stats9749 : actualRows9749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9749=7428 := by core033_kernel_decide
theorem rows9750 : actualRows9750=WordField.canonicalRows actualModulus 9750 (.rotr 9746 25) := by core033_kernel_decide
theorem stats9750 : actualRows9750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9750=5124 := by core033_kernel_decide
theorem rows9751 : actualRows9751=WordField.canonicalRows actualModulus 9751 (.bxor 9749 9750) := by core033_kernel_decide
theorem stats9751 : actualRows9751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9751=7428 := by core033_kernel_decide
theorem rows9752 : actualRows9752=WordField.canonicalRows actualModulus 9752 (.badd 9665 9751) := by core033_kernel_decide
theorem stats9752 : actualRows9752.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9752=5388 := by core033_kernel_decide
theorem rows9753 : actualRows9753=WordField.canonicalRows actualModulus 9753 (.band 9746 9719) := by core033_kernel_decide
theorem stats9753 : actualRows9753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9753=5124 := by core033_kernel_decide
theorem rows9754 : actualRows9754=WordField.canonicalRows actualModulus 9754 (.bnot 9746) := by core033_kernel_decide
theorem stats9754 : actualRows9754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9754=6276 := by core033_kernel_decide
theorem rows9755 : actualRows9755=WordField.canonicalRows actualModulus 9755 (.band 9754 9692) := by core033_kernel_decide
theorem stats9755 : actualRows9755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9755=5124 := by core033_kernel_decide
theorem rows9756 : actualRows9756=WordField.canonicalRows actualModulus 9756 (.bxor 9753 9755) := by core033_kernel_decide
theorem stats9756 : actualRows9756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9756=7428 := by core033_kernel_decide
theorem rows9757 : actualRows9757=WordField.canonicalRows actualModulus 9757 (.badd 9752 9756) := by core033_kernel_decide
theorem stats9757 : actualRows9757.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9757=5388 := by core033_kernel_decide
theorem rows9758 : actualRows9758=WordField.canonicalRows actualModulus 9758 (.literal (BitVec.ofNat 32 3204031479)) := by core033_kernel_decide
theorem stats9758 : actualRows9758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9758=4476 := by core033_kernel_decide
theorem rows9759 : actualRows9759=WordField.canonicalRows actualModulus 9759 (.badd 9757 9758) := by core033_kernel_decide
theorem stats9759 : actualRows9759.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9759=5388 := by core033_kernel_decide
def partRows150 : List R1CS.Row := actualRows9696++actualRows9697++actualRows9698++actualRows9699++actualRows9700++actualRows9701++actualRows9702++actualRows9703++actualRows9704++actualRows9705++actualRows9706++actualRows9707++actualRows9708++actualRows9709++actualRows9710++actualRows9711++actualRows9712++actualRows9713++actualRows9714++actualRows9715++actualRows9716++actualRows9717++actualRows9718++actualRows9719++actualRows9720++actualRows9721++actualRows9722++actualRows9723++actualRows9724++actualRows9725++actualRows9726++actualRows9727++actualRows9728++actualRows9729++actualRows9730++actualRows9731++actualRows9732++actualRows9733++actualRows9734++actualRows9735++actualRows9736++actualRows9737++actualRows9738++actualRows9739++actualRows9740++actualRows9741++actualRows9742++actualRows9743++actualRows9744++actualRows9745++actualRows9746++actualRows9747++actualRows9748++actualRows9749++actualRows9750++actualRows9751++actualRows9752++actualRows9753++actualRows9754++actualRows9755++actualRows9756++actualRows9757++actualRows9758++actualRows9759
def partOps150 : List WordIR.Op := [.rotr 9692 25,.bxor 9695 9696,.badd 9611 9697,.band 9692 9665,.bnot 9692,.band 9700 9638,.bxor 9699 9701,.badd 9698 9702,.literal (BitVec.ofNat 32 2428436474),.badd 9703 9704,.badd 9705 8033,.rotr 9691 2,.rotr 9691 13,.bxor 9707 9708,.rotr 9691 22,.bxor 9709 9710,.band 9691 9664,.band 9691 9637,.bxor 9712 9713,.band 9664 9637,.bxor 9714 9715,.badd 9711 9716,.badd 9706 9717,.badd 9610 9706,.rotr 9719 6,.rotr 9719 11,.bxor 9720 9721,.rotr 9719 25,.bxor 9722 9723,.badd 9638 9724,.band 9719 9692,.bnot 9719,.band 9727 9665,.bxor 9726 9728,.badd 9725 9729,.literal (BitVec.ofNat 32 2756734187),.badd 9730 9731,.badd 9732 8046,.rotr 9718 2,.rotr 9718 13,.bxor 9734 9735,.rotr 9718 22,.bxor 9736 9737,.band 9718 9691,.band 9718 9664,.bxor 9739 9740,.band 9691 9664,.bxor 9741 9742,.badd 9738 9743,.badd 9733 9744,.badd 9637 9733,.rotr 9746 6,.rotr 9746 11,.bxor 9747 9748,.rotr 9746 25,.bxor 9749 9750,.badd 9665 9751,.band 9746 9719,.bnot 9746,.band 9754 9692,.bxor 9753 9755,.badd 9752 9756,.literal (BitVec.ofNat 32 3204031479),.badd 9757 9758]
theorem partExact150 : partRows150=WordField.rows actualModulus 9696 partOps150 := by
  simp only [partRows150,partOps150,WordField.rows,rows9696,rows9697,rows9698,rows9699,rows9700,rows9701,rows9702,rows9703,rows9704,rows9705,rows9706,rows9707,rows9708,rows9709,rows9710,rows9711,rows9712,rows9713,rows9714,rows9715,rows9716,rows9717,rows9718,rows9719,rows9720,rows9721,rows9722,rows9723,rows9724,rows9725,rows9726,rows9727,rows9728,rows9729,rows9730,rows9731,rows9732,rows9733,rows9734,rows9735,rows9736,rows9737,rows9738,rows9739,rows9740,rows9741,rows9742,rows9743,rows9744,rows9745,rows9746,rows9747,rows9748,rows9749,rows9750,rows9751,rows9752,rows9753,rows9754,rows9755,rows9756,rows9757,rows9758,rows9759,List.append_assoc,List.append_nil]
theorem partLength150 : partOps150.length=64 := by decide
theorem partStats150 : partRows150.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows150=370152 := by
  simp only [partRows150,List.length_append,MatrixRowBlocks.rows_weight_append,stats9696.1,stats9696.2,stats9697.1,stats9697.2,stats9698.1,stats9698.2,stats9699.1,stats9699.2,stats9700.1,stats9700.2,stats9701.1,stats9701.2,stats9702.1,stats9702.2,stats9703.1,stats9703.2,stats9704.1,stats9704.2,stats9705.1,stats9705.2,stats9706.1,stats9706.2,stats9707.1,stats9707.2,stats9708.1,stats9708.2,stats9709.1,stats9709.2,stats9710.1,stats9710.2,stats9711.1,stats9711.2,stats9712.1,stats9712.2,stats9713.1,stats9713.2,stats9714.1,stats9714.2,stats9715.1,stats9715.2,stats9716.1,stats9716.2,stats9717.1,stats9717.2,stats9718.1,stats9718.2,stats9719.1,stats9719.2,stats9720.1,stats9720.2,stats9721.1,stats9721.2,stats9722.1,stats9722.2,stats9723.1,stats9723.2,stats9724.1,stats9724.2,stats9725.1,stats9725.2,stats9726.1,stats9726.2,stats9727.1,stats9727.2,stats9728.1,stats9728.2,stats9729.1,stats9729.2,stats9730.1,stats9730.2,stats9731.1,stats9731.2,stats9732.1,stats9732.2,stats9733.1,stats9733.2,stats9734.1,stats9734.2,stats9735.1,stats9735.2,stats9736.1,stats9736.2,stats9737.1,stats9737.2,stats9738.1,stats9738.2,stats9739.1,stats9739.2,stats9740.1,stats9740.2,stats9741.1,stats9741.2,stats9742.1,stats9742.2,stats9743.1,stats9743.2,stats9744.1,stats9744.2,stats9745.1,stats9745.2,stats9746.1,stats9746.2,stats9747.1,stats9747.2,stats9748.1,stats9748.2,stats9749.1,stats9749.2,stats9750.1,stats9750.2,stats9751.1,stats9751.2,stats9752.1,stats9752.2,stats9753.1,stats9753.2,stats9754.1,stats9754.2,stats9755.1,stats9755.2,stats9756.1,stats9756.2,stats9757.1,stats9757.2,stats9758.1,stats9758.2,stats9759.1,stats9759.2]
  decide
end PairedPathRoundCheckedRows
