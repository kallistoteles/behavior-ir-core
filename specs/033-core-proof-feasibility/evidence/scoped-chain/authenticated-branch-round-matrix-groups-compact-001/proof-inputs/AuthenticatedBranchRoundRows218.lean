import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData219
import AuthenticatedBranchRoundInstructionMatrixData220
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows14070 : actualRows14070=WordField.canonicalRows actualModulus 14070 (.band 14069 75) := by core033_kernel_decide
theorem stats14070 : actualRows14070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14070=5124 := by core033_kernel_decide
theorem rows14071 : actualRows14071=WordField.canonicalRows actualModulus 14071 (.bxor 14065 14070) := by core033_kernel_decide
theorem stats14071 : actualRows14071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14071=7428 := by core033_kernel_decide
theorem rows14072 : actualRows14072=WordField.canonicalRows actualModulus 14072 (.bnot 440) := by core033_kernel_decide
theorem stats14072 : actualRows14072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14072=6276 := by core033_kernel_decide
theorem rows14073 : actualRows14073=WordField.canonicalRows actualModulus 14073 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14073 : actualRows14073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14073=2892 := by core033_kernel_decide
theorem rows14074 : actualRows14074=WordField.canonicalRows actualModulus 14074 (.badd 14072 14073) := by core033_kernel_decide
theorem stats14074 : actualRows14074.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14074=5388 := by core033_kernel_decide
theorem rows14075 : actualRows14075=WordField.canonicalRows actualModulus 14075 (.band 14074 12936) := by core033_kernel_decide
theorem stats14075 : actualRows14075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14075=5124 := by core033_kernel_decide
theorem rows14076 : actualRows14076=WordField.canonicalRows actualModulus 14076 (.bnot 440) := by core033_kernel_decide
theorem stats14076 : actualRows14076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14076=6276 := by core033_kernel_decide
theorem rows14077 : actualRows14077=WordField.canonicalRows actualModulus 14077 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14077 : actualRows14077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14077=2892 := by core033_kernel_decide
theorem rows14078 : actualRows14078=WordField.canonicalRows actualModulus 14078 (.badd 14076 14077) := by core033_kernel_decide
theorem stats14078 : actualRows14078.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14078=5388 := by core033_kernel_decide
theorem rows14079 : actualRows14079=WordField.canonicalRows actualModulus 14079 (.bnot 14078) := by core033_kernel_decide
theorem stats14079 : actualRows14079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14079=6276 := by core033_kernel_decide
theorem rows14080 : actualRows14080=WordField.canonicalRows actualModulus 14080 (.band 14079 76) := by core033_kernel_decide
theorem stats14080 : actualRows14080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14080=5124 := by core033_kernel_decide
theorem rows14081 : actualRows14081=WordField.canonicalRows actualModulus 14081 (.bxor 14075 14080) := by core033_kernel_decide
theorem stats14081 : actualRows14081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14081=7428 := by core033_kernel_decide
theorem rows14082 : actualRows14082=WordField.canonicalRows actualModulus 14082 (.bnot 440) := by core033_kernel_decide
theorem stats14082 : actualRows14082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14082=6276 := by core033_kernel_decide
theorem rows14083 : actualRows14083=WordField.canonicalRows actualModulus 14083 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14083 : actualRows14083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14083=2892 := by core033_kernel_decide
theorem rows14084 : actualRows14084=WordField.canonicalRows actualModulus 14084 (.badd 14082 14083) := by core033_kernel_decide
theorem stats14084 : actualRows14084.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14084=5388 := by core033_kernel_decide
theorem rows14085 : actualRows14085=WordField.canonicalRows actualModulus 14085 (.band 14084 13092) := by core033_kernel_decide
theorem stats14085 : actualRows14085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14085=5124 := by core033_kernel_decide
theorem rows14086 : actualRows14086=WordField.canonicalRows actualModulus 14086 (.bnot 440) := by core033_kernel_decide
theorem stats14086 : actualRows14086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14086=6276 := by core033_kernel_decide
theorem rows14087 : actualRows14087=WordField.canonicalRows actualModulus 14087 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14087 : actualRows14087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14087=2892 := by core033_kernel_decide
theorem rows14088 : actualRows14088=WordField.canonicalRows actualModulus 14088 (.badd 14086 14087) := by core033_kernel_decide
theorem stats14088 : actualRows14088.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14088=5388 := by core033_kernel_decide
theorem rows14089 : actualRows14089=WordField.canonicalRows actualModulus 14089 (.bnot 14088) := by core033_kernel_decide
theorem stats14089 : actualRows14089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14089=6276 := by core033_kernel_decide
theorem rows14090 : actualRows14090=WordField.canonicalRows actualModulus 14090 (.band 14089 77) := by core033_kernel_decide
theorem stats14090 : actualRows14090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14090=5124 := by core033_kernel_decide
theorem rows14091 : actualRows14091=WordField.canonicalRows actualModulus 14091 (.bxor 14085 14090) := by core033_kernel_decide
theorem stats14091 : actualRows14091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14091=7428 := by core033_kernel_decide
theorem rows14092 : actualRows14092=WordField.canonicalRows actualModulus 14092 (.bnot 440) := by core033_kernel_decide
theorem stats14092 : actualRows14092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14092=6276 := by core033_kernel_decide
theorem rows14093 : actualRows14093=WordField.canonicalRows actualModulus 14093 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14093 : actualRows14093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14093=2892 := by core033_kernel_decide
theorem rows14094 : actualRows14094=WordField.canonicalRows actualModulus 14094 (.badd 14092 14093) := by core033_kernel_decide
theorem stats14094 : actualRows14094.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14094=5388 := by core033_kernel_decide
theorem rows14095 : actualRows14095=WordField.canonicalRows actualModulus 14095 (.band 14094 13196) := by core033_kernel_decide
theorem stats14095 : actualRows14095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14095=5124 := by core033_kernel_decide
theorem rows14096 : actualRows14096=WordField.canonicalRows actualModulus 14096 (.bnot 440) := by core033_kernel_decide
theorem stats14096 : actualRows14096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14096=6276 := by core033_kernel_decide
theorem rows14097 : actualRows14097=WordField.canonicalRows actualModulus 14097 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14097 : actualRows14097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14097=2892 := by core033_kernel_decide
theorem rows14098 : actualRows14098=WordField.canonicalRows actualModulus 14098 (.badd 14096 14097) := by core033_kernel_decide
theorem stats14098 : actualRows14098.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14098=5388 := by core033_kernel_decide
theorem rows14099 : actualRows14099=WordField.canonicalRows actualModulus 14099 (.bnot 14098) := by core033_kernel_decide
theorem stats14099 : actualRows14099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14099=6276 := by core033_kernel_decide
theorem rows14100 : actualRows14100=WordField.canonicalRows actualModulus 14100 (.band 14099 78) := by core033_kernel_decide
theorem stats14100 : actualRows14100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14100=5124 := by core033_kernel_decide
theorem rows14101 : actualRows14101=WordField.canonicalRows actualModulus 14101 (.bxor 14095 14100) := by core033_kernel_decide
theorem stats14101 : actualRows14101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14101=7428 := by core033_kernel_decide
def partRows218 : List R1CS.Row := actualRows14070++actualRows14071++actualRows14072++actualRows14073++actualRows14074++actualRows14075++actualRows14076++actualRows14077++actualRows14078++actualRows14079++actualRows14080++actualRows14081++actualRows14082++actualRows14083++actualRows14084++actualRows14085++actualRows14086++actualRows14087++actualRows14088++actualRows14089++actualRows14090++actualRows14091++actualRows14092++actualRows14093++actualRows14094++actualRows14095++actualRows14096++actualRows14097++actualRows14098++actualRows14099++actualRows14100++actualRows14101
def partOps218 : List WordIR.Op := [.band 14069 75,.bxor 14065 14070,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14072 14073,.band 14074 12936,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14076 14077,.bnot 14078,.band 14079 76,.bxor 14075 14080,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14082 14083,.band 14084 13092,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14086 14087,.bnot 14088,.band 14089 77,.bxor 14085 14090,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14092 14093,.band 14094 13196,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14096 14097,.bnot 14098,.band 14099 78,.bxor 14095 14100]
theorem partExact218 : partRows218=WordField.rows actualModulus 14070 partOps218 := by
  simp only [partRows218,partOps218,WordField.rows,rows14070,rows14071,rows14072,rows14073,rows14074,rows14075,rows14076,rows14077,rows14078,rows14079,rows14080,rows14081,rows14082,rows14083,rows14084,rows14085,rows14086,rows14087,rows14088,rows14089,rows14090,rows14091,rows14092,rows14093,rows14094,rows14095,rows14096,rows14097,rows14098,rows14099,rows14100,rows14101,List.append_assoc,List.append_nil]
theorem partLength218 : partOps218.length=32 := by decide
theorem partStats218 : partRows218.length=1094 ∧ MatrixRowBlocks.rowsWeight partRows218=171744 := by
  simp only [partRows218,List.length_append,MatrixRowBlocks.rows_weight_append,stats14070.1,stats14070.2,stats14071.1,stats14071.2,stats14072.1,stats14072.2,stats14073.1,stats14073.2,stats14074.1,stats14074.2,stats14075.1,stats14075.2,stats14076.1,stats14076.2,stats14077.1,stats14077.2,stats14078.1,stats14078.2,stats14079.1,stats14079.2,stats14080.1,stats14080.2,stats14081.1,stats14081.2,stats14082.1,stats14082.2,stats14083.1,stats14083.2,stats14084.1,stats14084.2,stats14085.1,stats14085.2,stats14086.1,stats14086.2,stats14087.1,stats14087.2,stats14088.1,stats14088.2,stats14089.1,stats14089.2,stats14090.1,stats14090.2,stats14091.1,stats14091.2,stats14092.1,stats14092.2,stats14093.1,stats14093.2,stats14094.1,stats14094.2,stats14095.1,stats14095.2,stats14096.1,stats14096.2,stats14097.1,stats14097.2,stats14098.1,stats14098.2,stats14099.1,stats14099.2,stats14100.1,stats14100.2,stats14101.1,stats14101.2]
  decide
end AuthenticatedBranchRoundCheckedRows
