import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData136
import PairedPathRoundInstructionMatrixData137
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8736 : actualRows8736=WordField.canonicalRows actualModulus 8736 (.rotr 8719 13) := by core033_kernel_decide
theorem stats8736 : actualRows8736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8736=5124 := by core033_kernel_decide
theorem rows8737 : actualRows8737=WordField.canonicalRows actualModulus 8737 (.bxor 8735 8736) := by core033_kernel_decide
theorem stats8737 : actualRows8737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8737=7428 := by core033_kernel_decide
theorem rows8738 : actualRows8738=WordField.canonicalRows actualModulus 8738 (.rotr 8719 22) := by core033_kernel_decide
theorem stats8738 : actualRows8738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8738=5124 := by core033_kernel_decide
theorem rows8739 : actualRows8739=WordField.canonicalRows actualModulus 8739 (.bxor 8737 8738) := by core033_kernel_decide
theorem stats8739 : actualRows8739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8739=7428 := by core033_kernel_decide
theorem rows8740 : actualRows8740=WordField.canonicalRows actualModulus 8740 (.band 8719 8692) := by core033_kernel_decide
theorem stats8740 : actualRows8740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8740=5124 := by core033_kernel_decide
theorem rows8741 : actualRows8741=WordField.canonicalRows actualModulus 8741 (.band 8719 8665) := by core033_kernel_decide
theorem stats8741 : actualRows8741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8741=5124 := by core033_kernel_decide
theorem rows8742 : actualRows8742=WordField.canonicalRows actualModulus 8742 (.bxor 8740 8741) := by core033_kernel_decide
theorem stats8742 : actualRows8742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8742=7428 := by core033_kernel_decide
theorem rows8743 : actualRows8743=WordField.canonicalRows actualModulus 8743 (.band 8692 8665) := by core033_kernel_decide
theorem stats8743 : actualRows8743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8743=5124 := by core033_kernel_decide
theorem rows8744 : actualRows8744=WordField.canonicalRows actualModulus 8744 (.bxor 8742 8743) := by core033_kernel_decide
theorem stats8744 : actualRows8744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8744=7428 := by core033_kernel_decide
theorem rows8745 : actualRows8745=WordField.canonicalRows actualModulus 8745 (.badd 8739 8744) := by core033_kernel_decide
theorem stats8745 : actualRows8745.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8745=5388 := by core033_kernel_decide
theorem rows8746 : actualRows8746=WordField.canonicalRows actualModulus 8746 (.badd 8734 8745) := by core033_kernel_decide
theorem stats8746 : actualRows8746.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8746=5388 := by core033_kernel_decide
theorem rows8747 : actualRows8747=WordField.canonicalRows actualModulus 8747 (.badd 8638 8734) := by core033_kernel_decide
theorem stats8747 : actualRows8747.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8747=5388 := by core033_kernel_decide
theorem rows8748 : actualRows8748=WordField.canonicalRows actualModulus 8748 (.rotr 8747 6) := by core033_kernel_decide
theorem stats8748 : actualRows8748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8748=5124 := by core033_kernel_decide
theorem rows8749 : actualRows8749=WordField.canonicalRows actualModulus 8749 (.rotr 8747 11) := by core033_kernel_decide
theorem stats8749 : actualRows8749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8749=5124 := by core033_kernel_decide
theorem rows8750 : actualRows8750=WordField.canonicalRows actualModulus 8750 (.bxor 8748 8749) := by core033_kernel_decide
theorem stats8750 : actualRows8750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8750=7428 := by core033_kernel_decide
theorem rows8751 : actualRows8751=WordField.canonicalRows actualModulus 8751 (.rotr 8747 25) := by core033_kernel_decide
theorem stats8751 : actualRows8751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8751=5124 := by core033_kernel_decide
theorem rows8752 : actualRows8752=WordField.canonicalRows actualModulus 8752 (.bxor 8750 8751) := by core033_kernel_decide
theorem stats8752 : actualRows8752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8752=7428 := by core033_kernel_decide
theorem rows8753 : actualRows8753=WordField.canonicalRows actualModulus 8753 (.badd 8666 8752) := by core033_kernel_decide
theorem stats8753 : actualRows8753.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8753=5388 := by core033_kernel_decide
theorem rows8754 : actualRows8754=WordField.canonicalRows actualModulus 8754 (.band 8747 8720) := by core033_kernel_decide
theorem stats8754 : actualRows8754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8754=5124 := by core033_kernel_decide
theorem rows8755 : actualRows8755=WordField.canonicalRows actualModulus 8755 (.bnot 8747) := by core033_kernel_decide
theorem stats8755 : actualRows8755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8755=6276 := by core033_kernel_decide
theorem rows8756 : actualRows8756=WordField.canonicalRows actualModulus 8756 (.band 8755 8693) := by core033_kernel_decide
theorem stats8756 : actualRows8756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8756=5124 := by core033_kernel_decide
theorem rows8757 : actualRows8757=WordField.canonicalRows actualModulus 8757 (.bxor 8754 8756) := by core033_kernel_decide
theorem stats8757 : actualRows8757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8757=7428 := by core033_kernel_decide
theorem rows8758 : actualRows8758=WordField.canonicalRows actualModulus 8758 (.badd 8753 8757) := by core033_kernel_decide
theorem stats8758 : actualRows8758.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8758=5388 := by core033_kernel_decide
theorem rows8759 : actualRows8759=WordField.canonicalRows actualModulus 8759 (.literal (BitVec.ofNat 32 2821834349)) := by core033_kernel_decide
theorem stats8759 : actualRows8759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8759=3900 := by core033_kernel_decide
theorem rows8760 : actualRows8760=WordField.canonicalRows actualModulus 8760 (.badd 8758 8759) := by core033_kernel_decide
theorem stats8760 : actualRows8760.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8760=5388 := by core033_kernel_decide
theorem rows8761 : actualRows8761=WordField.canonicalRows actualModulus 8761 (.badd 8760 7578) := by core033_kernel_decide
theorem stats8761 : actualRows8761.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8761=5388 := by core033_kernel_decide
theorem rows8762 : actualRows8762=WordField.canonicalRows actualModulus 8762 (.rotr 8746 2) := by core033_kernel_decide
theorem stats8762 : actualRows8762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8762=5124 := by core033_kernel_decide
theorem rows8763 : actualRows8763=WordField.canonicalRows actualModulus 8763 (.rotr 8746 13) := by core033_kernel_decide
theorem stats8763 : actualRows8763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8763=5124 := by core033_kernel_decide
theorem rows8764 : actualRows8764=WordField.canonicalRows actualModulus 8764 (.bxor 8762 8763) := by core033_kernel_decide
theorem stats8764 : actualRows8764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8764=7428 := by core033_kernel_decide
theorem rows8765 : actualRows8765=WordField.canonicalRows actualModulus 8765 (.rotr 8746 22) := by core033_kernel_decide
theorem stats8765 : actualRows8765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8765=5124 := by core033_kernel_decide
theorem rows8766 : actualRows8766=WordField.canonicalRows actualModulus 8766 (.bxor 8764 8765) := by core033_kernel_decide
theorem stats8766 : actualRows8766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8766=7428 := by core033_kernel_decide
theorem rows8767 : actualRows8767=WordField.canonicalRows actualModulus 8767 (.band 8746 8719) := by core033_kernel_decide
theorem stats8767 : actualRows8767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8767=5124 := by core033_kernel_decide
theorem rows8768 : actualRows8768=WordField.canonicalRows actualModulus 8768 (.band 8746 8692) := by core033_kernel_decide
theorem stats8768 : actualRows8768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8768=5124 := by core033_kernel_decide
theorem rows8769 : actualRows8769=WordField.canonicalRows actualModulus 8769 (.bxor 8767 8768) := by core033_kernel_decide
theorem stats8769 : actualRows8769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8769=7428 := by core033_kernel_decide
theorem rows8770 : actualRows8770=WordField.canonicalRows actualModulus 8770 (.band 8719 8692) := by core033_kernel_decide
theorem stats8770 : actualRows8770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8770=5124 := by core033_kernel_decide
theorem rows8771 : actualRows8771=WordField.canonicalRows actualModulus 8771 (.bxor 8769 8770) := by core033_kernel_decide
theorem stats8771 : actualRows8771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8771=7428 := by core033_kernel_decide
theorem rows8772 : actualRows8772=WordField.canonicalRows actualModulus 8772 (.badd 8766 8771) := by core033_kernel_decide
theorem stats8772 : actualRows8772.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8772=5388 := by core033_kernel_decide
theorem rows8773 : actualRows8773=WordField.canonicalRows actualModulus 8773 (.badd 8761 8772) := by core033_kernel_decide
theorem stats8773 : actualRows8773.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8773=5388 := by core033_kernel_decide
theorem rows8774 : actualRows8774=WordField.canonicalRows actualModulus 8774 (.badd 8665 8761) := by core033_kernel_decide
theorem stats8774 : actualRows8774.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8774=5388 := by core033_kernel_decide
theorem rows8775 : actualRows8775=WordField.canonicalRows actualModulus 8775 (.rotr 8774 6) := by core033_kernel_decide
theorem stats8775 : actualRows8775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8775=5124 := by core033_kernel_decide
theorem rows8776 : actualRows8776=WordField.canonicalRows actualModulus 8776 (.rotr 8774 11) := by core033_kernel_decide
theorem stats8776 : actualRows8776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8776=5124 := by core033_kernel_decide
theorem rows8777 : actualRows8777=WordField.canonicalRows actualModulus 8777 (.bxor 8775 8776) := by core033_kernel_decide
theorem stats8777 : actualRows8777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8777=7428 := by core033_kernel_decide
theorem rows8778 : actualRows8778=WordField.canonicalRows actualModulus 8778 (.rotr 8774 25) := by core033_kernel_decide
theorem stats8778 : actualRows8778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8778=5124 := by core033_kernel_decide
theorem rows8779 : actualRows8779=WordField.canonicalRows actualModulus 8779 (.bxor 8777 8778) := by core033_kernel_decide
theorem stats8779 : actualRows8779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8779=7428 := by core033_kernel_decide
theorem rows8780 : actualRows8780=WordField.canonicalRows actualModulus 8780 (.badd 8693 8779) := by core033_kernel_decide
theorem stats8780 : actualRows8780.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8780=5388 := by core033_kernel_decide
theorem rows8781 : actualRows8781=WordField.canonicalRows actualModulus 8781 (.band 8774 8747) := by core033_kernel_decide
theorem stats8781 : actualRows8781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8781=5124 := by core033_kernel_decide
theorem rows8782 : actualRows8782=WordField.canonicalRows actualModulus 8782 (.bnot 8774) := by core033_kernel_decide
theorem stats8782 : actualRows8782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8782=6276 := by core033_kernel_decide
theorem rows8783 : actualRows8783=WordField.canonicalRows actualModulus 8783 (.band 8782 8720) := by core033_kernel_decide
theorem stats8783 : actualRows8783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8783=5124 := by core033_kernel_decide
theorem rows8784 : actualRows8784=WordField.canonicalRows actualModulus 8784 (.bxor 8781 8783) := by core033_kernel_decide
theorem stats8784 : actualRows8784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8784=7428 := by core033_kernel_decide
theorem rows8785 : actualRows8785=WordField.canonicalRows actualModulus 8785 (.badd 8780 8784) := by core033_kernel_decide
theorem stats8785 : actualRows8785.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8785=5388 := by core033_kernel_decide
theorem rows8786 : actualRows8786=WordField.canonicalRows actualModulus 8786 (.literal (BitVec.ofNat 32 2952996808)) := by core033_kernel_decide
theorem stats8786 : actualRows8786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8786=3684 := by core033_kernel_decide
theorem rows8787 : actualRows8787=WordField.canonicalRows actualModulus 8787 (.badd 8785 8786) := by core033_kernel_decide
theorem stats8787 : actualRows8787.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8787=5388 := by core033_kernel_decide
theorem rows8788 : actualRows8788=WordField.canonicalRows actualModulus 8788 (.badd 8787 7591) := by core033_kernel_decide
theorem stats8788 : actualRows8788.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8788=5388 := by core033_kernel_decide
theorem rows8789 : actualRows8789=WordField.canonicalRows actualModulus 8789 (.rotr 8773 2) := by core033_kernel_decide
theorem stats8789 : actualRows8789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8789=5124 := by core033_kernel_decide
theorem rows8790 : actualRows8790=WordField.canonicalRows actualModulus 8790 (.rotr 8773 13) := by core033_kernel_decide
theorem stats8790 : actualRows8790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8790=5124 := by core033_kernel_decide
theorem rows8791 : actualRows8791=WordField.canonicalRows actualModulus 8791 (.bxor 8789 8790) := by core033_kernel_decide
theorem stats8791 : actualRows8791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8791=7428 := by core033_kernel_decide
theorem rows8792 : actualRows8792=WordField.canonicalRows actualModulus 8792 (.rotr 8773 22) := by core033_kernel_decide
theorem stats8792 : actualRows8792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8792=5124 := by core033_kernel_decide
theorem rows8793 : actualRows8793=WordField.canonicalRows actualModulus 8793 (.bxor 8791 8792) := by core033_kernel_decide
theorem stats8793 : actualRows8793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8793=7428 := by core033_kernel_decide
theorem rows8794 : actualRows8794=WordField.canonicalRows actualModulus 8794 (.band 8773 8746) := by core033_kernel_decide
theorem stats8794 : actualRows8794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8794=5124 := by core033_kernel_decide
theorem rows8795 : actualRows8795=WordField.canonicalRows actualModulus 8795 (.band 8773 8719) := by core033_kernel_decide
theorem stats8795 : actualRows8795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8795=5124 := by core033_kernel_decide
theorem rows8796 : actualRows8796=WordField.canonicalRows actualModulus 8796 (.bxor 8794 8795) := by core033_kernel_decide
theorem stats8796 : actualRows8796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8796=7428 := by core033_kernel_decide
theorem rows8797 : actualRows8797=WordField.canonicalRows actualModulus 8797 (.band 8746 8719) := by core033_kernel_decide
theorem stats8797 : actualRows8797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8797=5124 := by core033_kernel_decide
theorem rows8798 : actualRows8798=WordField.canonicalRows actualModulus 8798 (.bxor 8796 8797) := by core033_kernel_decide
theorem stats8798 : actualRows8798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8798=7428 := by core033_kernel_decide
theorem rows8799 : actualRows8799=WordField.canonicalRows actualModulus 8799 (.badd 8793 8798) := by core033_kernel_decide
theorem stats8799 : actualRows8799.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8799=5388 := by core033_kernel_decide
def partRows135 : List R1CS.Row := actualRows8736++actualRows8737++actualRows8738++actualRows8739++actualRows8740++actualRows8741++actualRows8742++actualRows8743++actualRows8744++actualRows8745++actualRows8746++actualRows8747++actualRows8748++actualRows8749++actualRows8750++actualRows8751++actualRows8752++actualRows8753++actualRows8754++actualRows8755++actualRows8756++actualRows8757++actualRows8758++actualRows8759++actualRows8760++actualRows8761++actualRows8762++actualRows8763++actualRows8764++actualRows8765++actualRows8766++actualRows8767++actualRows8768++actualRows8769++actualRows8770++actualRows8771++actualRows8772++actualRows8773++actualRows8774++actualRows8775++actualRows8776++actualRows8777++actualRows8778++actualRows8779++actualRows8780++actualRows8781++actualRows8782++actualRows8783++actualRows8784++actualRows8785++actualRows8786++actualRows8787++actualRows8788++actualRows8789++actualRows8790++actualRows8791++actualRows8792++actualRows8793++actualRows8794++actualRows8795++actualRows8796++actualRows8797++actualRows8798++actualRows8799
def partOps135 : List WordIR.Op := [.rotr 8719 13,.bxor 8735 8736,.rotr 8719 22,.bxor 8737 8738,.band 8719 8692,.band 8719 8665,.bxor 8740 8741,.band 8692 8665,.bxor 8742 8743,.badd 8739 8744,.badd 8734 8745,.badd 8638 8734,.rotr 8747 6,.rotr 8747 11,.bxor 8748 8749,.rotr 8747 25,.bxor 8750 8751,.badd 8666 8752,.band 8747 8720,.bnot 8747,.band 8755 8693,.bxor 8754 8756,.badd 8753 8757,.literal (BitVec.ofNat 32 2821834349),.badd 8758 8759,.badd 8760 7578,.rotr 8746 2,.rotr 8746 13,.bxor 8762 8763,.rotr 8746 22,.bxor 8764 8765,.band 8746 8719,.band 8746 8692,.bxor 8767 8768,.band 8719 8692,.bxor 8769 8770,.badd 8766 8771,.badd 8761 8772,.badd 8665 8761,.rotr 8774 6,.rotr 8774 11,.bxor 8775 8776,.rotr 8774 25,.bxor 8777 8778,.badd 8693 8779,.band 8774 8747,.bnot 8774,.band 8782 8720,.bxor 8781 8783,.badd 8780 8784,.literal (BitVec.ofNat 32 2952996808),.badd 8785 8786,.badd 8787 7591,.rotr 8773 2,.rotr 8773 13,.bxor 8789 8790,.rotr 8773 22,.bxor 8791 8792,.band 8773 8746,.band 8773 8719,.bxor 8794 8795,.band 8746 8719,.bxor 8796 8797,.badd 8793 8798]
theorem partExact135 : partRows135=WordField.rows actualModulus 8736 partOps135 := by
  simp only [partRows135,partOps135,WordField.rows,rows8736,rows8737,rows8738,rows8739,rows8740,rows8741,rows8742,rows8743,rows8744,rows8745,rows8746,rows8747,rows8748,rows8749,rows8750,rows8751,rows8752,rows8753,rows8754,rows8755,rows8756,rows8757,rows8758,rows8759,rows8760,rows8761,rows8762,rows8763,rows8764,rows8765,rows8766,rows8767,rows8768,rows8769,rows8770,rows8771,rows8772,rows8773,rows8774,rows8775,rows8776,rows8777,rows8778,rows8779,rows8780,rows8781,rows8782,rows8783,rows8784,rows8785,rows8786,rows8787,rows8788,rows8789,rows8790,rows8791,rows8792,rows8793,rows8794,rows8795,rows8796,rows8797,rows8798,rows8799,List.append_assoc,List.append_nil]
theorem partLength135 : partOps135.length=64 := by decide
theorem partStats135 : partRows135.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows135=373008 := by
  simp only [partRows135,List.length_append,MatrixRowBlocks.rows_weight_append,stats8736.1,stats8736.2,stats8737.1,stats8737.2,stats8738.1,stats8738.2,stats8739.1,stats8739.2,stats8740.1,stats8740.2,stats8741.1,stats8741.2,stats8742.1,stats8742.2,stats8743.1,stats8743.2,stats8744.1,stats8744.2,stats8745.1,stats8745.2,stats8746.1,stats8746.2,stats8747.1,stats8747.2,stats8748.1,stats8748.2,stats8749.1,stats8749.2,stats8750.1,stats8750.2,stats8751.1,stats8751.2,stats8752.1,stats8752.2,stats8753.1,stats8753.2,stats8754.1,stats8754.2,stats8755.1,stats8755.2,stats8756.1,stats8756.2,stats8757.1,stats8757.2,stats8758.1,stats8758.2,stats8759.1,stats8759.2,stats8760.1,stats8760.2,stats8761.1,stats8761.2,stats8762.1,stats8762.2,stats8763.1,stats8763.2,stats8764.1,stats8764.2,stats8765.1,stats8765.2,stats8766.1,stats8766.2,stats8767.1,stats8767.2,stats8768.1,stats8768.2,stats8769.1,stats8769.2,stats8770.1,stats8770.2,stats8771.1,stats8771.2,stats8772.1,stats8772.2,stats8773.1,stats8773.2,stats8774.1,stats8774.2,stats8775.1,stats8775.2,stats8776.1,stats8776.2,stats8777.1,stats8777.2,stats8778.1,stats8778.2,stats8779.1,stats8779.2,stats8780.1,stats8780.2,stats8781.1,stats8781.2,stats8782.1,stats8782.2,stats8783.1,stats8783.2,stats8784.1,stats8784.2,stats8785.1,stats8785.2,stats8786.1,stats8786.2,stats8787.1,stats8787.2,stats8788.1,stats8788.2,stats8789.1,stats8789.2,stats8790.1,stats8790.2,stats8791.1,stats8791.2,stats8792.1,stats8792.2,stats8793.1,stats8793.2,stats8794.1,stats8794.2,stats8795.1,stats8795.2,stats8796.1,stats8796.2,stats8797.1,stats8797.2,stats8798.1,stats8798.2,stats8799.1,stats8799.2]
  decide
end QuotedPairedPathRoundCheckedRows
