import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData136
import AuthenticatedBranchRoundInstructionMatrixData137
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8758 : actualRows8758=WordField.canonicalRows actualModulus 8758 (.bxor 8756 8757) := by core033_kernel_decide
theorem stats8758 : actualRows8758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8758=7428 := by core033_kernel_decide
theorem rows8759 : actualRows8759=WordField.canonicalRows actualModulus 8759 (.rotr 3383 25) := by core033_kernel_decide
theorem stats8759 : actualRows8759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8759=5124 := by core033_kernel_decide
theorem rows8760 : actualRows8760=WordField.canonicalRows actualModulus 8760 (.bxor 8758 8759) := by core033_kernel_decide
theorem stats8760 : actualRows8760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8760=7428 := by core033_kernel_decide
theorem rows8761 : actualRows8761=WordField.canonicalRows actualModulus 8761 (.badd 3542 8760) := by core033_kernel_decide
theorem stats8761 : actualRows8761.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8761=5388 := by core033_kernel_decide
theorem rows8762 : actualRows8762=WordField.canonicalRows actualModulus 8762 (.band 3383 3436) := by core033_kernel_decide
theorem stats8762 : actualRows8762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8762=5124 := by core033_kernel_decide
theorem rows8763 : actualRows8763=WordField.canonicalRows actualModulus 8763 (.bnot 3383) := by core033_kernel_decide
theorem stats8763 : actualRows8763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8763=6276 := by core033_kernel_decide
theorem rows8764 : actualRows8764=WordField.canonicalRows actualModulus 8764 (.band 8763 3489) := by core033_kernel_decide
theorem stats8764 : actualRows8764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8764=5124 := by core033_kernel_decide
theorem rows8765 : actualRows8765=WordField.canonicalRows actualModulus 8765 (.bxor 8762 8764) := by core033_kernel_decide
theorem stats8765 : actualRows8765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8765=7428 := by core033_kernel_decide
theorem rows8766 : actualRows8766=WordField.canonicalRows actualModulus 8766 (.badd 8761 8765) := by core033_kernel_decide
theorem stats8766 : actualRows8766.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8766=5388 := by core033_kernel_decide
theorem rows8767 : actualRows8767=WordField.canonicalRows actualModulus 8767 (.literal (BitVec.ofNat 32 1116352408)) := by core033_kernel_decide
theorem stats8767 : actualRows8767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8767=3756 := by core033_kernel_decide
theorem rows8768 : actualRows8768=WordField.canonicalRows actualModulus 8768 (.badd 8766 8767) := by core033_kernel_decide
theorem stats8768 : actualRows8768.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8768=5388 := by core033_kernel_decide
theorem rows8769 : actualRows8769=WordField.canonicalRows actualModulus 8769 (.badd 8768 6889) := by core033_kernel_decide
theorem stats8769 : actualRows8769.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8769=5388 := by core033_kernel_decide
theorem rows8770 : actualRows8770=WordField.canonicalRows actualModulus 8770 (.rotr 3171 2) := by core033_kernel_decide
theorem stats8770 : actualRows8770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8770=5124 := by core033_kernel_decide
theorem rows8771 : actualRows8771=WordField.canonicalRows actualModulus 8771 (.rotr 3171 13) := by core033_kernel_decide
theorem stats8771 : actualRows8771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8771=5124 := by core033_kernel_decide
theorem rows8772 : actualRows8772=WordField.canonicalRows actualModulus 8772 (.bxor 8770 8771) := by core033_kernel_decide
theorem stats8772 : actualRows8772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8772=7428 := by core033_kernel_decide
theorem rows8773 : actualRows8773=WordField.canonicalRows actualModulus 8773 (.rotr 3171 22) := by core033_kernel_decide
theorem stats8773 : actualRows8773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8773=5124 := by core033_kernel_decide
theorem rows8774 : actualRows8774=WordField.canonicalRows actualModulus 8774 (.bxor 8772 8773) := by core033_kernel_decide
theorem stats8774 : actualRows8774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8774=7428 := by core033_kernel_decide
theorem rows8775 : actualRows8775=WordField.canonicalRows actualModulus 8775 (.band 3171 3224) := by core033_kernel_decide
theorem stats8775 : actualRows8775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8775=5124 := by core033_kernel_decide
theorem rows8776 : actualRows8776=WordField.canonicalRows actualModulus 8776 (.band 3171 3277) := by core033_kernel_decide
theorem stats8776 : actualRows8776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8776=5124 := by core033_kernel_decide
theorem rows8777 : actualRows8777=WordField.canonicalRows actualModulus 8777 (.bxor 8775 8776) := by core033_kernel_decide
theorem stats8777 : actualRows8777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8777=7428 := by core033_kernel_decide
theorem rows8778 : actualRows8778=WordField.canonicalRows actualModulus 8778 (.band 3224 3277) := by core033_kernel_decide
theorem stats8778 : actualRows8778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8778=5124 := by core033_kernel_decide
theorem rows8779 : actualRows8779=WordField.canonicalRows actualModulus 8779 (.bxor 8777 8778) := by core033_kernel_decide
theorem stats8779 : actualRows8779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8779=7428 := by core033_kernel_decide
theorem rows8780 : actualRows8780=WordField.canonicalRows actualModulus 8780 (.badd 8774 8779) := by core033_kernel_decide
theorem stats8780 : actualRows8780.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8780=5388 := by core033_kernel_decide
theorem rows8781 : actualRows8781=WordField.canonicalRows actualModulus 8781 (.badd 8769 8780) := by core033_kernel_decide
theorem stats8781 : actualRows8781.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8781=5388 := by core033_kernel_decide
theorem rows8782 : actualRows8782=WordField.canonicalRows actualModulus 8782 (.badd 3330 8769) := by core033_kernel_decide
theorem stats8782 : actualRows8782.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8782=5388 := by core033_kernel_decide
theorem rows8783 : actualRows8783=WordField.canonicalRows actualModulus 8783 (.rotr 8782 6) := by core033_kernel_decide
theorem stats8783 : actualRows8783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8783=5124 := by core033_kernel_decide
theorem rows8784 : actualRows8784=WordField.canonicalRows actualModulus 8784 (.rotr 8782 11) := by core033_kernel_decide
theorem stats8784 : actualRows8784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8784=5124 := by core033_kernel_decide
theorem rows8785 : actualRows8785=WordField.canonicalRows actualModulus 8785 (.bxor 8783 8784) := by core033_kernel_decide
theorem stats8785 : actualRows8785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8785=7428 := by core033_kernel_decide
theorem rows8786 : actualRows8786=WordField.canonicalRows actualModulus 8786 (.rotr 8782 25) := by core033_kernel_decide
theorem stats8786 : actualRows8786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8786=5124 := by core033_kernel_decide
theorem rows8787 : actualRows8787=WordField.canonicalRows actualModulus 8787 (.bxor 8785 8786) := by core033_kernel_decide
theorem stats8787 : actualRows8787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8787=7428 := by core033_kernel_decide
theorem rows8788 : actualRows8788=WordField.canonicalRows actualModulus 8788 (.badd 3489 8787) := by core033_kernel_decide
theorem stats8788 : actualRows8788.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8788=5388 := by core033_kernel_decide
theorem rows8789 : actualRows8789=WordField.canonicalRows actualModulus 8789 (.band 8782 3383) := by core033_kernel_decide
theorem stats8789 : actualRows8789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8789=5124 := by core033_kernel_decide
theorem rows8790 : actualRows8790=WordField.canonicalRows actualModulus 8790 (.bnot 8782) := by core033_kernel_decide
theorem stats8790 : actualRows8790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8790=6276 := by core033_kernel_decide
theorem rows8791 : actualRows8791=WordField.canonicalRows actualModulus 8791 (.band 8790 3436) := by core033_kernel_decide
theorem stats8791 : actualRows8791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8791=5124 := by core033_kernel_decide
theorem rows8792 : actualRows8792=WordField.canonicalRows actualModulus 8792 (.bxor 8789 8791) := by core033_kernel_decide
theorem stats8792 : actualRows8792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8792=7428 := by core033_kernel_decide
theorem rows8793 : actualRows8793=WordField.canonicalRows actualModulus 8793 (.badd 8788 8792) := by core033_kernel_decide
theorem stats8793 : actualRows8793.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8793=5388 := by core033_kernel_decide
theorem rows8794 : actualRows8794=WordField.canonicalRows actualModulus 8794 (.literal (BitVec.ofNat 32 1899447441)) := by core033_kernel_decide
theorem stats8794 : actualRows8794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8794=3828 := by core033_kernel_decide
theorem rows8795 : actualRows8795=WordField.canonicalRows actualModulus 8795 (.badd 8793 8794) := by core033_kernel_decide
theorem stats8795 : actualRows8795.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8795=5388 := by core033_kernel_decide
theorem rows8796 : actualRows8796=WordField.canonicalRows actualModulus 8796 (.badd 8795 6895) := by core033_kernel_decide
theorem stats8796 : actualRows8796.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8796=5388 := by core033_kernel_decide
theorem rows8797 : actualRows8797=WordField.canonicalRows actualModulus 8797 (.rotr 8781 2) := by core033_kernel_decide
theorem stats8797 : actualRows8797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8797=5124 := by core033_kernel_decide
theorem rows8798 : actualRows8798=WordField.canonicalRows actualModulus 8798 (.rotr 8781 13) := by core033_kernel_decide
theorem stats8798 : actualRows8798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8798=5124 := by core033_kernel_decide
theorem rows8799 : actualRows8799=WordField.canonicalRows actualModulus 8799 (.bxor 8797 8798) := by core033_kernel_decide
theorem stats8799 : actualRows8799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8799=7428 := by core033_kernel_decide
theorem rows8800 : actualRows8800=WordField.canonicalRows actualModulus 8800 (.rotr 8781 22) := by core033_kernel_decide
theorem stats8800 : actualRows8800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8800=5124 := by core033_kernel_decide
theorem rows8801 : actualRows8801=WordField.canonicalRows actualModulus 8801 (.bxor 8799 8800) := by core033_kernel_decide
theorem stats8801 : actualRows8801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8801=7428 := by core033_kernel_decide
theorem rows8802 : actualRows8802=WordField.canonicalRows actualModulus 8802 (.band 8781 3171) := by core033_kernel_decide
theorem stats8802 : actualRows8802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8802=5124 := by core033_kernel_decide
theorem rows8803 : actualRows8803=WordField.canonicalRows actualModulus 8803 (.band 8781 3224) := by core033_kernel_decide
theorem stats8803 : actualRows8803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8803=5124 := by core033_kernel_decide
theorem rows8804 : actualRows8804=WordField.canonicalRows actualModulus 8804 (.bxor 8802 8803) := by core033_kernel_decide
theorem stats8804 : actualRows8804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8804=7428 := by core033_kernel_decide
theorem rows8805 : actualRows8805=WordField.canonicalRows actualModulus 8805 (.band 3171 3224) := by core033_kernel_decide
theorem stats8805 : actualRows8805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8805=5124 := by core033_kernel_decide
theorem rows8806 : actualRows8806=WordField.canonicalRows actualModulus 8806 (.bxor 8804 8805) := by core033_kernel_decide
theorem stats8806 : actualRows8806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8806=7428 := by core033_kernel_decide
theorem rows8807 : actualRows8807=WordField.canonicalRows actualModulus 8807 (.badd 8801 8806) := by core033_kernel_decide
theorem stats8807 : actualRows8807.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8807=5388 := by core033_kernel_decide
theorem rows8808 : actualRows8808=WordField.canonicalRows actualModulus 8808 (.badd 8796 8807) := by core033_kernel_decide
theorem stats8808 : actualRows8808.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8808=5388 := by core033_kernel_decide
theorem rows8809 : actualRows8809=WordField.canonicalRows actualModulus 8809 (.badd 3277 8796) := by core033_kernel_decide
theorem stats8809 : actualRows8809.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8809=5388 := by core033_kernel_decide
theorem rows8810 : actualRows8810=WordField.canonicalRows actualModulus 8810 (.rotr 8809 6) := by core033_kernel_decide
theorem stats8810 : actualRows8810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8810=5124 := by core033_kernel_decide
theorem rows8811 : actualRows8811=WordField.canonicalRows actualModulus 8811 (.rotr 8809 11) := by core033_kernel_decide
theorem stats8811 : actualRows8811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8811=5124 := by core033_kernel_decide
theorem rows8812 : actualRows8812=WordField.canonicalRows actualModulus 8812 (.bxor 8810 8811) := by core033_kernel_decide
theorem stats8812 : actualRows8812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8812=7428 := by core033_kernel_decide
theorem rows8813 : actualRows8813=WordField.canonicalRows actualModulus 8813 (.rotr 8809 25) := by core033_kernel_decide
theorem stats8813 : actualRows8813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8813=5124 := by core033_kernel_decide
theorem rows8814 : actualRows8814=WordField.canonicalRows actualModulus 8814 (.bxor 8812 8813) := by core033_kernel_decide
theorem stats8814 : actualRows8814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8814=7428 := by core033_kernel_decide
theorem rows8815 : actualRows8815=WordField.canonicalRows actualModulus 8815 (.badd 3436 8814) := by core033_kernel_decide
theorem stats8815 : actualRows8815.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8815=5388 := by core033_kernel_decide
theorem rows8816 : actualRows8816=WordField.canonicalRows actualModulus 8816 (.band 8809 8782) := by core033_kernel_decide
theorem stats8816 : actualRows8816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8816=5124 := by core033_kernel_decide
theorem rows8817 : actualRows8817=WordField.canonicalRows actualModulus 8817 (.bnot 8809) := by core033_kernel_decide
theorem stats8817 : actualRows8817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8817=6276 := by core033_kernel_decide
theorem rows8818 : actualRows8818=WordField.canonicalRows actualModulus 8818 (.band 8817 3383) := by core033_kernel_decide
theorem stats8818 : actualRows8818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8818=5124 := by core033_kernel_decide
theorem rows8819 : actualRows8819=WordField.canonicalRows actualModulus 8819 (.bxor 8816 8818) := by core033_kernel_decide
theorem stats8819 : actualRows8819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8819=7428 := by core033_kernel_decide
theorem rows8820 : actualRows8820=WordField.canonicalRows actualModulus 8820 (.badd 8815 8819) := by core033_kernel_decide
theorem stats8820 : actualRows8820.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8820=5388 := by core033_kernel_decide
theorem rows8821 : actualRows8821=WordField.canonicalRows actualModulus 8821 (.literal (BitVec.ofNat 32 3049323471)) := by core033_kernel_decide
theorem stats8821 : actualRows8821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8821=4260 := by core033_kernel_decide
def partRows135 : List R1CS.Row := actualRows8758++actualRows8759++actualRows8760++actualRows8761++actualRows8762++actualRows8763++actualRows8764++actualRows8765++actualRows8766++actualRows8767++actualRows8768++actualRows8769++actualRows8770++actualRows8771++actualRows8772++actualRows8773++actualRows8774++actualRows8775++actualRows8776++actualRows8777++actualRows8778++actualRows8779++actualRows8780++actualRows8781++actualRows8782++actualRows8783++actualRows8784++actualRows8785++actualRows8786++actualRows8787++actualRows8788++actualRows8789++actualRows8790++actualRows8791++actualRows8792++actualRows8793++actualRows8794++actualRows8795++actualRows8796++actualRows8797++actualRows8798++actualRows8799++actualRows8800++actualRows8801++actualRows8802++actualRows8803++actualRows8804++actualRows8805++actualRows8806++actualRows8807++actualRows8808++actualRows8809++actualRows8810++actualRows8811++actualRows8812++actualRows8813++actualRows8814++actualRows8815++actualRows8816++actualRows8817++actualRows8818++actualRows8819++actualRows8820++actualRows8821
def partOps135 : List WordIR.Op := [.bxor 8756 8757,.rotr 3383 25,.bxor 8758 8759,.badd 3542 8760,.band 3383 3436,.bnot 3383,.band 8763 3489,.bxor 8762 8764,.badd 8761 8765,.literal (BitVec.ofNat 32 1116352408),.badd 8766 8767,.badd 8768 6889,.rotr 3171 2,.rotr 3171 13,.bxor 8770 8771,.rotr 3171 22,.bxor 8772 8773,.band 3171 3224,.band 3171 3277,.bxor 8775 8776,.band 3224 3277,.bxor 8777 8778,.badd 8774 8779,.badd 8769 8780,.badd 3330 8769,.rotr 8782 6,.rotr 8782 11,.bxor 8783 8784,.rotr 8782 25,.bxor 8785 8786,.badd 3489 8787,.band 8782 3383,.bnot 8782,.band 8790 3436,.bxor 8789 8791,.badd 8788 8792,.literal (BitVec.ofNat 32 1899447441),.badd 8793 8794,.badd 8795 6895,.rotr 8781 2,.rotr 8781 13,.bxor 8797 8798,.rotr 8781 22,.bxor 8799 8800,.band 8781 3171,.band 8781 3224,.bxor 8802 8803,.band 3171 3224,.bxor 8804 8805,.badd 8801 8806,.badd 8796 8807,.badd 3277 8796,.rotr 8809 6,.rotr 8809 11,.bxor 8810 8811,.rotr 8809 25,.bxor 8812 8813,.badd 3436 8814,.band 8809 8782,.bnot 8809,.band 8817 3383,.bxor 8816 8818,.badd 8815 8819,.literal (BitVec.ofNat 32 3049323471)]
theorem partExact135 : partRows135=WordField.rows actualModulus 8758 partOps135 := by
  simp only [partRows135,partOps135,WordField.rows,rows8758,rows8759,rows8760,rows8761,rows8762,rows8763,rows8764,rows8765,rows8766,rows8767,rows8768,rows8769,rows8770,rows8771,rows8772,rows8773,rows8774,rows8775,rows8776,rows8777,rows8778,rows8779,rows8780,rows8781,rows8782,rows8783,rows8784,rows8785,rows8786,rows8787,rows8788,rows8789,rows8790,rows8791,rows8792,rows8793,rows8794,rows8795,rows8796,rows8797,rows8798,rows8799,rows8800,rows8801,rows8802,rows8803,rows8804,rows8805,rows8806,rows8807,rows8808,rows8809,rows8810,rows8811,rows8812,rows8813,rows8814,rows8815,rows8816,rows8817,rows8818,rows8819,rows8820,rows8821,List.append_assoc,List.append_nil]
theorem partLength135 : partOps135.length=64 := by decide
theorem partStats135 : partRows135.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows135=371256 := by
  simp only [partRows135,List.length_append,MatrixRowBlocks.rows_weight_append,stats8758.1,stats8758.2,stats8759.1,stats8759.2,stats8760.1,stats8760.2,stats8761.1,stats8761.2,stats8762.1,stats8762.2,stats8763.1,stats8763.2,stats8764.1,stats8764.2,stats8765.1,stats8765.2,stats8766.1,stats8766.2,stats8767.1,stats8767.2,stats8768.1,stats8768.2,stats8769.1,stats8769.2,stats8770.1,stats8770.2,stats8771.1,stats8771.2,stats8772.1,stats8772.2,stats8773.1,stats8773.2,stats8774.1,stats8774.2,stats8775.1,stats8775.2,stats8776.1,stats8776.2,stats8777.1,stats8777.2,stats8778.1,stats8778.2,stats8779.1,stats8779.2,stats8780.1,stats8780.2,stats8781.1,stats8781.2,stats8782.1,stats8782.2,stats8783.1,stats8783.2,stats8784.1,stats8784.2,stats8785.1,stats8785.2,stats8786.1,stats8786.2,stats8787.1,stats8787.2,stats8788.1,stats8788.2,stats8789.1,stats8789.2,stats8790.1,stats8790.2,stats8791.1,stats8791.2,stats8792.1,stats8792.2,stats8793.1,stats8793.2,stats8794.1,stats8794.2,stats8795.1,stats8795.2,stats8796.1,stats8796.2,stats8797.1,stats8797.2,stats8798.1,stats8798.2,stats8799.1,stats8799.2,stats8800.1,stats8800.2,stats8801.1,stats8801.2,stats8802.1,stats8802.2,stats8803.1,stats8803.2,stats8804.1,stats8804.2,stats8805.1,stats8805.2,stats8806.1,stats8806.2,stats8807.1,stats8807.2,stats8808.1,stats8808.2,stats8809.1,stats8809.2,stats8810.1,stats8810.2,stats8811.1,stats8811.2,stats8812.1,stats8812.2,stats8813.1,stats8813.2,stats8814.1,stats8814.2,stats8815.1,stats8815.2,stats8816.1,stats8816.2,stats8817.1,stats8817.2,stats8818.1,stats8818.2,stats8819.1,stats8819.2,stats8820.1,stats8820.2,stats8821.1,stats8821.2]
  decide
end AuthenticatedBranchRoundCheckedRows
