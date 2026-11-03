import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData136
import FrameHashControllerInstructionMatrixData137
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8747 : actualRows8747=WordField.canonicalRows actualModulus 8747 (.bxor 8744 8746) := by core033_kernel_decide
theorem stats8747 : actualRows8747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8747=7428 := by core033_kernel_decide
theorem rows8748 : actualRows8748=WordField.canonicalRows actualModulus 8748 (.badd 8743 8747) := by core033_kernel_decide
theorem stats8748 : actualRows8748.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8748=5388 := by core033_kernel_decide
theorem rows8749 : actualRows8749=WordField.canonicalRows actualModulus 8749 (.literal (BitVec.ofNat 32 3329325298)) := by core033_kernel_decide
theorem stats8749 : actualRows8749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8749=4044 := by core033_kernel_decide
theorem rows8750 : actualRows8750=WordField.canonicalRows actualModulus 8750 (.badd 8748 8749) := by core033_kernel_decide
theorem stats8750 : actualRows8750.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8750=5388 := by core033_kernel_decide
theorem rows8751 : actualRows8751=WordField.canonicalRows actualModulus 8751 (.badd 8750 7036) := by core033_kernel_decide
theorem stats8751 : actualRows8751.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8751=5388 := by core033_kernel_decide
theorem rows8752 : actualRows8752=WordField.canonicalRows actualModulus 8752 (.rotr 8736 2) := by core033_kernel_decide
theorem stats8752 : actualRows8752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8752=5124 := by core033_kernel_decide
theorem rows8753 : actualRows8753=WordField.canonicalRows actualModulus 8753 (.rotr 8736 13) := by core033_kernel_decide
theorem stats8753 : actualRows8753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8753=5124 := by core033_kernel_decide
theorem rows8754 : actualRows8754=WordField.canonicalRows actualModulus 8754 (.bxor 8752 8753) := by core033_kernel_decide
theorem stats8754 : actualRows8754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8754=7428 := by core033_kernel_decide
theorem rows8755 : actualRows8755=WordField.canonicalRows actualModulus 8755 (.rotr 8736 22) := by core033_kernel_decide
theorem stats8755 : actualRows8755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8755=5124 := by core033_kernel_decide
theorem rows8756 : actualRows8756=WordField.canonicalRows actualModulus 8756 (.bxor 8754 8755) := by core033_kernel_decide
theorem stats8756 : actualRows8756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8756=7428 := by core033_kernel_decide
theorem rows8757 : actualRows8757=WordField.canonicalRows actualModulus 8757 (.band 8736 8709) := by core033_kernel_decide
theorem stats8757 : actualRows8757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8757=5124 := by core033_kernel_decide
theorem rows8758 : actualRows8758=WordField.canonicalRows actualModulus 8758 (.band 8736 8682) := by core033_kernel_decide
theorem stats8758 : actualRows8758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8758=5124 := by core033_kernel_decide
theorem rows8759 : actualRows8759=WordField.canonicalRows actualModulus 8759 (.bxor 8757 8758) := by core033_kernel_decide
theorem stats8759 : actualRows8759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8759=7428 := by core033_kernel_decide
theorem rows8760 : actualRows8760=WordField.canonicalRows actualModulus 8760 (.band 8709 8682) := by core033_kernel_decide
theorem stats8760 : actualRows8760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8760=5124 := by core033_kernel_decide
theorem rows8761 : actualRows8761=WordField.canonicalRows actualModulus 8761 (.bxor 8759 8760) := by core033_kernel_decide
theorem stats8761 : actualRows8761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8761=7428 := by core033_kernel_decide
theorem rows8762 : actualRows8762=WordField.canonicalRows actualModulus 8762 (.badd 8756 8761) := by core033_kernel_decide
theorem stats8762 : actualRows8762.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8762=5388 := by core033_kernel_decide
theorem rows8763 : actualRows8763=WordField.canonicalRows actualModulus 8763 (.badd 8751 8762) := by core033_kernel_decide
theorem stats8763 : actualRows8763.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8763=5388 := by core033_kernel_decide
theorem rows8764 : actualRows8764=WordField.canonicalRows actualModulus 8764 (.badd 8655 8751) := by core033_kernel_decide
theorem stats8764 : actualRows8764.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8764=5388 := by core033_kernel_decide
theorem rows8765 : actualRows8765=WordField.canonicalRows actualModulus 8765 (.badd 1452 8763) := by core033_kernel_decide
theorem stats8765 : actualRows8765.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8765=5388 := by core033_kernel_decide
theorem rows8766 : actualRows8766=WordField.canonicalRows actualModulus 8766 (.badd 1505 8736) := by core033_kernel_decide
theorem stats8766 : actualRows8766.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8766=5388 := by core033_kernel_decide
theorem rows8767 : actualRows8767=WordField.canonicalRows actualModulus 8767 (.badd 1558 8709) := by core033_kernel_decide
theorem stats8767 : actualRows8767.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8767=5388 := by core033_kernel_decide
theorem rows8768 : actualRows8768=WordField.canonicalRows actualModulus 8768 (.badd 1611 8682) := by core033_kernel_decide
theorem stats8768 : actualRows8768.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8768=5388 := by core033_kernel_decide
theorem rows8769 : actualRows8769=WordField.canonicalRows actualModulus 8769 (.badd 1664 8764) := by core033_kernel_decide
theorem stats8769 : actualRows8769.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8769=5388 := by core033_kernel_decide
theorem rows8770 : actualRows8770=WordField.canonicalRows actualModulus 8770 (.badd 1717 8737) := by core033_kernel_decide
theorem stats8770 : actualRows8770.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8770=5388 := by core033_kernel_decide
theorem rows8771 : actualRows8771=WordField.canonicalRows actualModulus 8771 (.badd 1770 8710) := by core033_kernel_decide
theorem stats8771 : actualRows8771.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8771=5388 := by core033_kernel_decide
theorem rows8772 : actualRows8772=WordField.canonicalRows actualModulus 8772 (.badd 1823 8683) := by core033_kernel_decide
theorem stats8772 : actualRows8772.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8772=5388 := by core033_kernel_decide
theorem rows8773 : actualRows8773=WordField.canonicalRows actualModulus 8773 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats8773 : actualRows8773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8773=2892 := by core033_kernel_decide
theorem rows8774 : actualRows8774=WordField.canonicalRows actualModulus 8774 (.bxor 0 8773) := by core033_kernel_decide
theorem stats8774 : actualRows8774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8774=7428 := by core033_kernel_decide
theorem rows8775 : actualRows8775=WordField.canonicalRows actualModulus 8775 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8775 : actualRows8775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8775=2820 := by core033_kernel_decide
theorem rows8776 : actualRows8776=WordField.canonicalRows actualModulus 8776 (.bnot 8775) := by core033_kernel_decide
theorem stats8776 : actualRows8776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8776=6276 := by core033_kernel_decide
theorem rows8777 : actualRows8777=WordField.canonicalRows actualModulus 8777 (.band 8774 8776) := by core033_kernel_decide
theorem stats8777 : actualRows8777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8777=5124 := by core033_kernel_decide
theorem rows8778 : actualRows8778=WordField.canonicalRows actualModulus 8778 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats8778 : actualRows8778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8778=2892 := by core033_kernel_decide
theorem rows8779 : actualRows8779=WordField.canonicalRows actualModulus 8779 (.bxor 0 8778) := by core033_kernel_decide
theorem stats8779 : actualRows8779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8779=7428 := by core033_kernel_decide
theorem rows8780 : actualRows8780=WordField.canonicalRows actualModulus 8780 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8780 : actualRows8780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8780=2820 := by core033_kernel_decide
theorem rows8781 : actualRows8781=WordField.canonicalRows actualModulus 8781 (.bnot 8780) := by core033_kernel_decide
theorem stats8781 : actualRows8781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8781=6276 := by core033_kernel_decide
theorem rows8782 : actualRows8782=WordField.canonicalRows actualModulus 8782 (.bxor 8779 8781) := by core033_kernel_decide
theorem stats8782 : actualRows8782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8782=7428 := by core033_kernel_decide
theorem rows8783 : actualRows8783=WordField.canonicalRows actualModulus 8783 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats8783 : actualRows8783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8783=2892 := by core033_kernel_decide
theorem rows8784 : actualRows8784=WordField.canonicalRows actualModulus 8784 (.bxor 0 8783) := by core033_kernel_decide
theorem stats8784 : actualRows8784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8784=7428 := by core033_kernel_decide
theorem rows8785 : actualRows8785=WordField.canonicalRows actualModulus 8785 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8785 : actualRows8785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8785=2820 := by core033_kernel_decide
theorem rows8786 : actualRows8786=WordField.canonicalRows actualModulus 8786 (.bnot 8785) := by core033_kernel_decide
theorem stats8786 : actualRows8786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8786=6276 := by core033_kernel_decide
theorem rows8787 : actualRows8787=WordField.canonicalRows actualModulus 8787 (.badd 8784 8786) := by core033_kernel_decide
theorem stats8787 : actualRows8787.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8787=5388 := by core033_kernel_decide
theorem rows8788 : actualRows8788=WordField.canonicalRows actualModulus 8788 (.bnot 8787) := by core033_kernel_decide
theorem stats8788 : actualRows8788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8788=6276 := by core033_kernel_decide
theorem rows8789 : actualRows8789=WordField.canonicalRows actualModulus 8789 (.band 8782 8788) := by core033_kernel_decide
theorem stats8789 : actualRows8789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8789=5124 := by core033_kernel_decide
theorem rows8790 : actualRows8790=WordField.canonicalRows actualModulus 8790 (.bxor 8777 8789) := by core033_kernel_decide
theorem stats8790 : actualRows8790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8790=7428 := by core033_kernel_decide
theorem rows8791 : actualRows8791=WordField.canonicalRows actualModulus 8791 (.shr 8790 31) := by core033_kernel_decide
theorem stats8791 : actualRows8791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8791=2892 := by core033_kernel_decide
theorem rows8792 : actualRows8792=WordField.canonicalRows actualModulus 8792 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8792 : actualRows8792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8792=2892 := by core033_kernel_decide
theorem rows8793 : actualRows8793=WordField.canonicalRows actualModulus 8793 (.bxor 8791 8792) := by core033_kernel_decide
theorem stats8793 : actualRows8793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8793=7428 := by core033_kernel_decide
theorem rows8794 : actualRows8794=WordField.canonicalRows actualModulus 8794 (.bnot 8793) := by core033_kernel_decide
theorem stats8794 : actualRows8794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8794=6276 := by core033_kernel_decide
theorem rows8795 : actualRows8795=WordField.canonicalRows actualModulus 8795 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8795 : actualRows8795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8795=2892 := by core033_kernel_decide
theorem rows8796 : actualRows8796=WordField.canonicalRows actualModulus 8796 (.badd 8794 8795) := by core033_kernel_decide
theorem stats8796 : actualRows8796.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8796=5388 := by core033_kernel_decide
theorem rows8797 : actualRows8797=WordField.canonicalRows actualModulus 8797 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats8797 : actualRows8797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8797=2964 := by core033_kernel_decide
theorem rows8798 : actualRows8798=WordField.canonicalRows actualModulus 8798 (.band 8796 8797) := by core033_kernel_decide
theorem stats8798 : actualRows8798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8798=5124 := by core033_kernel_decide
theorem rows8799 : actualRows8799=WordField.canonicalRows actualModulus 8799 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats8799 : actualRows8799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8799=2892 := by core033_kernel_decide
theorem rows8800 : actualRows8800=WordField.canonicalRows actualModulus 8800 (.bxor 0 8799) := by core033_kernel_decide
theorem stats8800 : actualRows8800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8800=7428 := by core033_kernel_decide
theorem rows8801 : actualRows8801=WordField.canonicalRows actualModulus 8801 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8801 : actualRows8801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8801=2820 := by core033_kernel_decide
theorem rows8802 : actualRows8802=WordField.canonicalRows actualModulus 8802 (.bnot 8801) := by core033_kernel_decide
theorem stats8802 : actualRows8802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8802=6276 := by core033_kernel_decide
theorem rows8803 : actualRows8803=WordField.canonicalRows actualModulus 8803 (.band 8800 8802) := by core033_kernel_decide
theorem stats8803 : actualRows8803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8803=5124 := by core033_kernel_decide
theorem rows8804 : actualRows8804=WordField.canonicalRows actualModulus 8804 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats8804 : actualRows8804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8804=2892 := by core033_kernel_decide
theorem rows8805 : actualRows8805=WordField.canonicalRows actualModulus 8805 (.bxor 0 8804) := by core033_kernel_decide
theorem stats8805 : actualRows8805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8805=7428 := by core033_kernel_decide
theorem rows8806 : actualRows8806=WordField.canonicalRows actualModulus 8806 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8806 : actualRows8806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8806=2820 := by core033_kernel_decide
theorem rows8807 : actualRows8807=WordField.canonicalRows actualModulus 8807 (.bnot 8806) := by core033_kernel_decide
theorem stats8807 : actualRows8807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8807=6276 := by core033_kernel_decide
theorem rows8808 : actualRows8808=WordField.canonicalRows actualModulus 8808 (.bxor 8805 8807) := by core033_kernel_decide
theorem stats8808 : actualRows8808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8808=7428 := by core033_kernel_decide
theorem rows8809 : actualRows8809=WordField.canonicalRows actualModulus 8809 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats8809 : actualRows8809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8809=2892 := by core033_kernel_decide
theorem rows8810 : actualRows8810=WordField.canonicalRows actualModulus 8810 (.bxor 0 8809) := by core033_kernel_decide
theorem stats8810 : actualRows8810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8810=7428 := by core033_kernel_decide
def partRows136 : List R1CS.Row := actualRows8747++actualRows8748++actualRows8749++actualRows8750++actualRows8751++actualRows8752++actualRows8753++actualRows8754++actualRows8755++actualRows8756++actualRows8757++actualRows8758++actualRows8759++actualRows8760++actualRows8761++actualRows8762++actualRows8763++actualRows8764++actualRows8765++actualRows8766++actualRows8767++actualRows8768++actualRows8769++actualRows8770++actualRows8771++actualRows8772++actualRows8773++actualRows8774++actualRows8775++actualRows8776++actualRows8777++actualRows8778++actualRows8779++actualRows8780++actualRows8781++actualRows8782++actualRows8783++actualRows8784++actualRows8785++actualRows8786++actualRows8787++actualRows8788++actualRows8789++actualRows8790++actualRows8791++actualRows8792++actualRows8793++actualRows8794++actualRows8795++actualRows8796++actualRows8797++actualRows8798++actualRows8799++actualRows8800++actualRows8801++actualRows8802++actualRows8803++actualRows8804++actualRows8805++actualRows8806++actualRows8807++actualRows8808++actualRows8809++actualRows8810
def partOps136 : List WordIR.Op := [.bxor 8744 8746,.badd 8743 8747,.literal (BitVec.ofNat 32 3329325298),.badd 8748 8749,.badd 8750 7036,.rotr 8736 2,.rotr 8736 13,.bxor 8752 8753,.rotr 8736 22,.bxor 8754 8755,.band 8736 8709,.band 8736 8682,.bxor 8757 8758,.band 8709 8682,.bxor 8759 8760,.badd 8756 8761,.badd 8751 8762,.badd 8655 8751,.badd 1452 8763,.badd 1505 8736,.badd 1558 8709,.badd 1611 8682,.badd 1664 8764,.badd 1717 8737,.badd 1770 8710,.badd 1823 8683,.literal (BitVec.ofNat 32 2),.bxor 0 8773,.literal (BitVec.ofNat 32 0),.bnot 8775,.band 8774 8776,.literal (BitVec.ofNat 32 2),.bxor 0 8778,.literal (BitVec.ofNat 32 0),.bnot 8780,.bxor 8779 8781,.literal (BitVec.ofNat 32 2),.bxor 0 8783,.literal (BitVec.ofNat 32 0),.bnot 8785,.badd 8784 8786,.bnot 8787,.band 8782 8788,.bxor 8777 8789,.shr 8790 31,.literal (BitVec.ofNat 32 1),.bxor 8791 8792,.bnot 8793,.literal (BitVec.ofNat 32 1),.badd 8794 8795,.literal (BitVec.ofNat 32 3),.band 8796 8797,.literal (BitVec.ofNat 32 2),.bxor 0 8799,.literal (BitVec.ofNat 32 0),.bnot 8801,.band 8800 8802,.literal (BitVec.ofNat 32 2),.bxor 0 8804,.literal (BitVec.ofNat 32 0),.bnot 8806,.bxor 8805 8807,.literal (BitVec.ofNat 32 2),.bxor 0 8809]
theorem partExact136 : partRows136=WordField.rows actualModulus 8747 partOps136 := by
  simp only [partRows136,partOps136,WordField.rows,rows8747,rows8748,rows8749,rows8750,rows8751,rows8752,rows8753,rows8754,rows8755,rows8756,rows8757,rows8758,rows8759,rows8760,rows8761,rows8762,rows8763,rows8764,rows8765,rows8766,rows8767,rows8768,rows8769,rows8770,rows8771,rows8772,rows8773,rows8774,rows8775,rows8776,rows8777,rows8778,rows8779,rows8780,rows8781,rows8782,rows8783,rows8784,rows8785,rows8786,rows8787,rows8788,rows8789,rows8790,rows8791,rows8792,rows8793,rows8794,rows8795,rows8796,rows8797,rows8798,rows8799,rows8800,rows8801,rows8802,rows8803,rows8804,rows8805,rows8806,rows8807,rows8808,rows8809,rows8810,List.append_assoc,List.append_nil]
theorem partLength136 : partOps136.length=64 := by decide
theorem partStats136 : partRows136.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows136=339936 := by
  simp only [partRows136,List.length_append,MatrixRowBlocks.rows_weight_append,stats8747.1,stats8747.2,stats8748.1,stats8748.2,stats8749.1,stats8749.2,stats8750.1,stats8750.2,stats8751.1,stats8751.2,stats8752.1,stats8752.2,stats8753.1,stats8753.2,stats8754.1,stats8754.2,stats8755.1,stats8755.2,stats8756.1,stats8756.2,stats8757.1,stats8757.2,stats8758.1,stats8758.2,stats8759.1,stats8759.2,stats8760.1,stats8760.2,stats8761.1,stats8761.2,stats8762.1,stats8762.2,stats8763.1,stats8763.2,stats8764.1,stats8764.2,stats8765.1,stats8765.2,stats8766.1,stats8766.2,stats8767.1,stats8767.2,stats8768.1,stats8768.2,stats8769.1,stats8769.2,stats8770.1,stats8770.2,stats8771.1,stats8771.2,stats8772.1,stats8772.2,stats8773.1,stats8773.2,stats8774.1,stats8774.2,stats8775.1,stats8775.2,stats8776.1,stats8776.2,stats8777.1,stats8777.2,stats8778.1,stats8778.2,stats8779.1,stats8779.2,stats8780.1,stats8780.2,stats8781.1,stats8781.2,stats8782.1,stats8782.2,stats8783.1,stats8783.2,stats8784.1,stats8784.2,stats8785.1,stats8785.2,stats8786.1,stats8786.2,stats8787.1,stats8787.2,stats8788.1,stats8788.2,stats8789.1,stats8789.2,stats8790.1,stats8790.2,stats8791.1,stats8791.2,stats8792.1,stats8792.2,stats8793.1,stats8793.2,stats8794.1,stats8794.2,stats8795.1,stats8795.2,stats8796.1,stats8796.2,stats8797.1,stats8797.2,stats8798.1,stats8798.2,stats8799.1,stats8799.2,stats8800.1,stats8800.2,stats8801.1,stats8801.2,stats8802.1,stats8802.2,stats8803.1,stats8803.2,stats8804.1,stats8804.2,stats8805.1,stats8805.2,stats8806.1,stats8806.2,stats8807.1,stats8807.2,stats8808.1,stats8808.2,stats8809.1,stats8809.2,stats8810.1,stats8810.2]
  decide
end FrameHashControllerCheckedRows
