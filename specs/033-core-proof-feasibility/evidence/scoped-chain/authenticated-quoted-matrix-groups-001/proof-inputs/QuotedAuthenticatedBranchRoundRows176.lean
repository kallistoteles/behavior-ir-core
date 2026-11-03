import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData177
import AuthenticatedBranchRoundInstructionMatrixData178
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11382 : actualRows11382=WordField.canonicalRows actualModulus 11382 (.bxor 10642 11381) := by core033_kernel_decide
theorem stats11382 : actualRows11382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11382=7428 := by core033_kernel_decide
theorem rows11383 : actualRows11383=WordField.canonicalRows actualModulus 11383 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11383 : actualRows11383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11383=2820 := by core033_kernel_decide
theorem rows11384 : actualRows11384=WordField.canonicalRows actualModulus 11384 (.bnot 11383) := by core033_kernel_decide
theorem stats11384 : actualRows11384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11384=6276 := by core033_kernel_decide
theorem rows11385 : actualRows11385=WordField.canonicalRows actualModulus 11385 (.badd 11382 11384) := by core033_kernel_decide
theorem stats11385 : actualRows11385.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11385=5388 := by core033_kernel_decide
theorem rows11386 : actualRows11386=WordField.canonicalRows actualModulus 11386 (.bnot 11385) := by core033_kernel_decide
theorem stats11386 : actualRows11386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11386=6276 := by core033_kernel_decide
theorem rows11387 : actualRows11387=WordField.canonicalRows actualModulus 11387 (.band 11380 11386) := by core033_kernel_decide
theorem stats11387 : actualRows11387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11387=5124 := by core033_kernel_decide
theorem rows11388 : actualRows11388=WordField.canonicalRows actualModulus 11388 (.bxor 11375 11387) := by core033_kernel_decide
theorem stats11388 : actualRows11388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11388=7428 := by core033_kernel_decide
theorem rows11389 : actualRows11389=WordField.canonicalRows actualModulus 11389 (.shr 11388 31) := by core033_kernel_decide
theorem stats11389 : actualRows11389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11389=2892 := by core033_kernel_decide
theorem rows11390 : actualRows11390=WordField.canonicalRows actualModulus 11390 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11390 : actualRows11390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11390=2892 := by core033_kernel_decide
theorem rows11391 : actualRows11391=WordField.canonicalRows actualModulus 11391 (.bxor 11389 11390) := by core033_kernel_decide
theorem stats11391 : actualRows11391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11391=7428 := by core033_kernel_decide
theorem rows11392 : actualRows11392=WordField.canonicalRows actualModulus 11392 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats11392 : actualRows11392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11392=2892 := by core033_kernel_decide
theorem rows11393 : actualRows11393=WordField.canonicalRows actualModulus 11393 (.bnot 11392) := by core033_kernel_decide
theorem stats11393 : actualRows11393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11393=6276 := by core033_kernel_decide
theorem rows11394 : actualRows11394=WordField.canonicalRows actualModulus 11394 (.band 10642 11393) := by core033_kernel_decide
theorem stats11394 : actualRows11394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11394=5124 := by core033_kernel_decide
theorem rows11395 : actualRows11395=WordField.canonicalRows actualModulus 11395 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats11395 : actualRows11395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11395=2892 := by core033_kernel_decide
theorem rows11396 : actualRows11396=WordField.canonicalRows actualModulus 11396 (.bnot 11395) := by core033_kernel_decide
theorem stats11396 : actualRows11396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11396=6276 := by core033_kernel_decide
theorem rows11397 : actualRows11397=WordField.canonicalRows actualModulus 11397 (.bxor 10642 11396) := by core033_kernel_decide
theorem stats11397 : actualRows11397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11397=7428 := by core033_kernel_decide
theorem rows11398 : actualRows11398=WordField.canonicalRows actualModulus 11398 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats11398 : actualRows11398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11398=2892 := by core033_kernel_decide
theorem rows11399 : actualRows11399=WordField.canonicalRows actualModulus 11399 (.bnot 11398) := by core033_kernel_decide
theorem stats11399 : actualRows11399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11399=6276 := by core033_kernel_decide
theorem rows11400 : actualRows11400=WordField.canonicalRows actualModulus 11400 (.badd 10642 11399) := by core033_kernel_decide
theorem stats11400 : actualRows11400.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11400=5388 := by core033_kernel_decide
theorem rows11401 : actualRows11401=WordField.canonicalRows actualModulus 11401 (.bnot 11400) := by core033_kernel_decide
theorem stats11401 : actualRows11401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11401=6276 := by core033_kernel_decide
theorem rows11402 : actualRows11402=WordField.canonicalRows actualModulus 11402 (.band 11397 11401) := by core033_kernel_decide
theorem stats11402 : actualRows11402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11402=5124 := by core033_kernel_decide
theorem rows11403 : actualRows11403=WordField.canonicalRows actualModulus 11403 (.bxor 11394 11402) := by core033_kernel_decide
theorem stats11403 : actualRows11403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11403=7428 := by core033_kernel_decide
theorem rows11404 : actualRows11404=WordField.canonicalRows actualModulus 11404 (.shr 11403 31) := by core033_kernel_decide
theorem stats11404 : actualRows11404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11404=2892 := by core033_kernel_decide
theorem rows11405 : actualRows11405=WordField.canonicalRows actualModulus 11405 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11405 : actualRows11405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11405=2892 := by core033_kernel_decide
theorem rows11406 : actualRows11406=WordField.canonicalRows actualModulus 11406 (.bxor 11404 11405) := by core033_kernel_decide
theorem stats11406 : actualRows11406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11406=7428 := by core033_kernel_decide
theorem rows11407 : actualRows11407=WordField.canonicalRows actualModulus 11407 (.literal (BitVec.ofNat 32 4)) := by core033_kernel_decide
theorem stats11407 : actualRows11407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11407=2892 := by core033_kernel_decide
theorem rows11408 : actualRows11408=WordField.canonicalRows actualModulus 11408 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11408 : actualRows11408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11408=2964 := by core033_kernel_decide
theorem rows11409 : actualRows11409=WordField.canonicalRows actualModulus 11409 (.bxor 10620 11408) := by core033_kernel_decide
theorem stats11409 : actualRows11409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11409=7428 := by core033_kernel_decide
theorem rows11410 : actualRows11410=WordField.canonicalRows actualModulus 11410 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11410 : actualRows11410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11410=2820 := by core033_kernel_decide
theorem rows11411 : actualRows11411=WordField.canonicalRows actualModulus 11411 (.bnot 11410) := by core033_kernel_decide
theorem stats11411 : actualRows11411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11411=6276 := by core033_kernel_decide
theorem rows11412 : actualRows11412=WordField.canonicalRows actualModulus 11412 (.band 11409 11411) := by core033_kernel_decide
theorem stats11412 : actualRows11412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11412=5124 := by core033_kernel_decide
theorem rows11413 : actualRows11413=WordField.canonicalRows actualModulus 11413 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11413 : actualRows11413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11413=2964 := by core033_kernel_decide
theorem rows11414 : actualRows11414=WordField.canonicalRows actualModulus 11414 (.bxor 10620 11413) := by core033_kernel_decide
theorem stats11414 : actualRows11414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11414=7428 := by core033_kernel_decide
theorem rows11415 : actualRows11415=WordField.canonicalRows actualModulus 11415 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11415 : actualRows11415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11415=2820 := by core033_kernel_decide
theorem rows11416 : actualRows11416=WordField.canonicalRows actualModulus 11416 (.bnot 11415) := by core033_kernel_decide
theorem stats11416 : actualRows11416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11416=6276 := by core033_kernel_decide
theorem rows11417 : actualRows11417=WordField.canonicalRows actualModulus 11417 (.bxor 11414 11416) := by core033_kernel_decide
theorem stats11417 : actualRows11417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11417=7428 := by core033_kernel_decide
theorem rows11418 : actualRows11418=WordField.canonicalRows actualModulus 11418 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11418 : actualRows11418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11418=2964 := by core033_kernel_decide
theorem rows11419 : actualRows11419=WordField.canonicalRows actualModulus 11419 (.bxor 10620 11418) := by core033_kernel_decide
theorem stats11419 : actualRows11419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11419=7428 := by core033_kernel_decide
theorem rows11420 : actualRows11420=WordField.canonicalRows actualModulus 11420 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11420 : actualRows11420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11420=2820 := by core033_kernel_decide
theorem rows11421 : actualRows11421=WordField.canonicalRows actualModulus 11421 (.bnot 11420) := by core033_kernel_decide
theorem stats11421 : actualRows11421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11421=6276 := by core033_kernel_decide
theorem rows11422 : actualRows11422=WordField.canonicalRows actualModulus 11422 (.badd 11419 11421) := by core033_kernel_decide
theorem stats11422 : actualRows11422.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11422=5388 := by core033_kernel_decide
theorem rows11423 : actualRows11423=WordField.canonicalRows actualModulus 11423 (.bnot 11422) := by core033_kernel_decide
theorem stats11423 : actualRows11423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11423=6276 := by core033_kernel_decide
theorem rows11424 : actualRows11424=WordField.canonicalRows actualModulus 11424 (.band 11417 11423) := by core033_kernel_decide
theorem stats11424 : actualRows11424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11424=5124 := by core033_kernel_decide
theorem rows11425 : actualRows11425=WordField.canonicalRows actualModulus 11425 (.bxor 11412 11424) := by core033_kernel_decide
theorem stats11425 : actualRows11425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11425=7428 := by core033_kernel_decide
theorem rows11426 : actualRows11426=WordField.canonicalRows actualModulus 11426 (.shr 11425 31) := by core033_kernel_decide
theorem stats11426 : actualRows11426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11426=2892 := by core033_kernel_decide
theorem rows11427 : actualRows11427=WordField.canonicalRows actualModulus 11427 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11427 : actualRows11427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11427=2892 := by core033_kernel_decide
theorem rows11428 : actualRows11428=WordField.canonicalRows actualModulus 11428 (.bxor 11426 11427) := by core033_kernel_decide
theorem stats11428 : actualRows11428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11428=7428 := by core033_kernel_decide
theorem rows11429 : actualRows11429=WordField.canonicalRows actualModulus 11429 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11429 : actualRows11429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11429=2964 := by core033_kernel_decide
theorem rows11430 : actualRows11430=WordField.canonicalRows actualModulus 11430 (.bxor 693 11429) := by core033_kernel_decide
theorem stats11430 : actualRows11430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11430=7428 := by core033_kernel_decide
theorem rows11431 : actualRows11431=WordField.canonicalRows actualModulus 11431 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11431 : actualRows11431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11431=2820 := by core033_kernel_decide
theorem rows11432 : actualRows11432=WordField.canonicalRows actualModulus 11432 (.bnot 11431) := by core033_kernel_decide
theorem stats11432 : actualRows11432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11432=6276 := by core033_kernel_decide
theorem rows11433 : actualRows11433=WordField.canonicalRows actualModulus 11433 (.band 11430 11432) := by core033_kernel_decide
theorem stats11433 : actualRows11433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11433=5124 := by core033_kernel_decide
theorem rows11434 : actualRows11434=WordField.canonicalRows actualModulus 11434 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11434 : actualRows11434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11434=2964 := by core033_kernel_decide
theorem rows11435 : actualRows11435=WordField.canonicalRows actualModulus 11435 (.bxor 693 11434) := by core033_kernel_decide
theorem stats11435 : actualRows11435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11435=7428 := by core033_kernel_decide
theorem rows11436 : actualRows11436=WordField.canonicalRows actualModulus 11436 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11436 : actualRows11436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11436=2820 := by core033_kernel_decide
theorem rows11437 : actualRows11437=WordField.canonicalRows actualModulus 11437 (.bnot 11436) := by core033_kernel_decide
theorem stats11437 : actualRows11437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11437=6276 := by core033_kernel_decide
theorem rows11438 : actualRows11438=WordField.canonicalRows actualModulus 11438 (.bxor 11435 11437) := by core033_kernel_decide
theorem stats11438 : actualRows11438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11438=7428 := by core033_kernel_decide
theorem rows11439 : actualRows11439=WordField.canonicalRows actualModulus 11439 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11439 : actualRows11439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11439=2964 := by core033_kernel_decide
theorem rows11440 : actualRows11440=WordField.canonicalRows actualModulus 11440 (.bxor 693 11439) := by core033_kernel_decide
theorem stats11440 : actualRows11440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11440=7428 := by core033_kernel_decide
theorem rows11441 : actualRows11441=WordField.canonicalRows actualModulus 11441 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11441 : actualRows11441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11441=2820 := by core033_kernel_decide
theorem rows11442 : actualRows11442=WordField.canonicalRows actualModulus 11442 (.bnot 11441) := by core033_kernel_decide
theorem stats11442 : actualRows11442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11442=6276 := by core033_kernel_decide
theorem rows11443 : actualRows11443=WordField.canonicalRows actualModulus 11443 (.badd 11440 11442) := by core033_kernel_decide
theorem stats11443 : actualRows11443.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11443=5388 := by core033_kernel_decide
theorem rows11444 : actualRows11444=WordField.canonicalRows actualModulus 11444 (.bnot 11443) := by core033_kernel_decide
theorem stats11444 : actualRows11444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11444=6276 := by core033_kernel_decide
theorem rows11445 : actualRows11445=WordField.canonicalRows actualModulus 11445 (.band 11438 11444) := by core033_kernel_decide
theorem stats11445 : actualRows11445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11445=5124 := by core033_kernel_decide
def partRows176 : List R1CS.Row := actualRows11382++actualRows11383++actualRows11384++actualRows11385++actualRows11386++actualRows11387++actualRows11388++actualRows11389++actualRows11390++actualRows11391++actualRows11392++actualRows11393++actualRows11394++actualRows11395++actualRows11396++actualRows11397++actualRows11398++actualRows11399++actualRows11400++actualRows11401++actualRows11402++actualRows11403++actualRows11404++actualRows11405++actualRows11406++actualRows11407++actualRows11408++actualRows11409++actualRows11410++actualRows11411++actualRows11412++actualRows11413++actualRows11414++actualRows11415++actualRows11416++actualRows11417++actualRows11418++actualRows11419++actualRows11420++actualRows11421++actualRows11422++actualRows11423++actualRows11424++actualRows11425++actualRows11426++actualRows11427++actualRows11428++actualRows11429++actualRows11430++actualRows11431++actualRows11432++actualRows11433++actualRows11434++actualRows11435++actualRows11436++actualRows11437++actualRows11438++actualRows11439++actualRows11440++actualRows11441++actualRows11442++actualRows11443++actualRows11444++actualRows11445
def partOps176 : List WordIR.Op := [.bxor 10642 11381,.literal (BitVec.ofNat 32 0),.bnot 11383,.badd 11382 11384,.bnot 11385,.band 11380 11386,.bxor 11375 11387,.shr 11388 31,.literal (BitVec.ofNat 32 1),.bxor 11389 11390,.literal (BitVec.ofNat 32 256),.bnot 11392,.band 10642 11393,.literal (BitVec.ofNat 32 256),.bnot 11395,.bxor 10642 11396,.literal (BitVec.ofNat 32 256),.bnot 11398,.badd 10642 11399,.bnot 11400,.band 11397 11401,.bxor 11394 11402,.shr 11403 31,.literal (BitVec.ofNat 32 1),.bxor 11404 11405,.literal (BitVec.ofNat 32 4),.literal (BitVec.ofNat 32 3),.bxor 10620 11408,.literal (BitVec.ofNat 32 0),.bnot 11410,.band 11409 11411,.literal (BitVec.ofNat 32 3),.bxor 10620 11413,.literal (BitVec.ofNat 32 0),.bnot 11415,.bxor 11414 11416,.literal (BitVec.ofNat 32 3),.bxor 10620 11418,.literal (BitVec.ofNat 32 0),.bnot 11420,.badd 11419 11421,.bnot 11422,.band 11417 11423,.bxor 11412 11424,.shr 11425 31,.literal (BitVec.ofNat 32 1),.bxor 11426 11427,.literal (BitVec.ofNat 32 3),.bxor 693 11429,.literal (BitVec.ofNat 32 0),.bnot 11431,.band 11430 11432,.literal (BitVec.ofNat 32 3),.bxor 693 11434,.literal (BitVec.ofNat 32 0),.bnot 11436,.bxor 11435 11437,.literal (BitVec.ofNat 32 3),.bxor 693 11439,.literal (BitVec.ofNat 32 0),.bnot 11441,.badd 11440 11442,.bnot 11443,.band 11438 11444]
theorem partExact176 : partRows176=WordField.rows actualModulus 11382 partOps176 := by
  simp only [partRows176,partOps176,WordField.rows,rows11382,rows11383,rows11384,rows11385,rows11386,rows11387,rows11388,rows11389,rows11390,rows11391,rows11392,rows11393,rows11394,rows11395,rows11396,rows11397,rows11398,rows11399,rows11400,rows11401,rows11402,rows11403,rows11404,rows11405,rows11406,rows11407,rows11408,rows11409,rows11410,rows11411,rows11412,rows11413,rows11414,rows11415,rows11416,rows11417,rows11418,rows11419,rows11420,rows11421,rows11422,rows11423,rows11424,rows11425,rows11426,rows11427,rows11428,rows11429,rows11430,rows11431,rows11432,rows11433,rows11434,rows11435,rows11436,rows11437,rows11438,rows11439,rows11440,rows11441,rows11442,rows11443,rows11444,rows11445,List.append_assoc,List.append_nil]
theorem partLength176 : partOps176.length=64 := by decide
theorem partStats176 : partRows176.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows176=330576 := by
  simp only [partRows176,List.length_append,MatrixRowBlocks.rows_weight_append,stats11382.1,stats11382.2,stats11383.1,stats11383.2,stats11384.1,stats11384.2,stats11385.1,stats11385.2,stats11386.1,stats11386.2,stats11387.1,stats11387.2,stats11388.1,stats11388.2,stats11389.1,stats11389.2,stats11390.1,stats11390.2,stats11391.1,stats11391.2,stats11392.1,stats11392.2,stats11393.1,stats11393.2,stats11394.1,stats11394.2,stats11395.1,stats11395.2,stats11396.1,stats11396.2,stats11397.1,stats11397.2,stats11398.1,stats11398.2,stats11399.1,stats11399.2,stats11400.1,stats11400.2,stats11401.1,stats11401.2,stats11402.1,stats11402.2,stats11403.1,stats11403.2,stats11404.1,stats11404.2,stats11405.1,stats11405.2,stats11406.1,stats11406.2,stats11407.1,stats11407.2,stats11408.1,stats11408.2,stats11409.1,stats11409.2,stats11410.1,stats11410.2,stats11411.1,stats11411.2,stats11412.1,stats11412.2,stats11413.1,stats11413.2,stats11414.1,stats11414.2,stats11415.1,stats11415.2,stats11416.1,stats11416.2,stats11417.1,stats11417.2,stats11418.1,stats11418.2,stats11419.1,stats11419.2,stats11420.1,stats11420.2,stats11421.1,stats11421.2,stats11422.1,stats11422.2,stats11423.1,stats11423.2,stats11424.1,stats11424.2,stats11425.1,stats11425.2,stats11426.1,stats11426.2,stats11427.1,stats11427.2,stats11428.1,stats11428.2,stats11429.1,stats11429.2,stats11430.1,stats11430.2,stats11431.1,stats11431.2,stats11432.1,stats11432.2,stats11433.1,stats11433.2,stats11434.1,stats11434.2,stats11435.1,stats11435.2,stats11436.1,stats11436.2,stats11437.1,stats11437.2,stats11438.1,stats11438.2,stats11439.1,stats11439.2,stats11440.1,stats11440.2,stats11441.1,stats11441.2,stats11442.1,stats11442.2,stats11443.1,stats11443.2,stats11444.1,stats11444.2,stats11445.1,stats11445.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
