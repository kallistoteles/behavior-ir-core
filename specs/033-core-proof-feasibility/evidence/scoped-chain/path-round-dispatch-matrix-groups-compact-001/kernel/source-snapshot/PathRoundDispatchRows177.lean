import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData177
import PathRoundDispatchInstructionMatrixData178
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11371 : actualRows11371=WordField.canonicalRows actualModulus 11371 (.bxor 0 11370) := by core033_kernel_decide
theorem stats11371 : actualRows11371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11371=7428 := by core033_kernel_decide
theorem rows11372 : actualRows11372=WordField.canonicalRows actualModulus 11372 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11372 : actualRows11372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11372=2820 := by core033_kernel_decide
theorem rows11373 : actualRows11373=WordField.canonicalRows actualModulus 11373 (.bnot 11372) := by core033_kernel_decide
theorem stats11373 : actualRows11373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11373=6276 := by core033_kernel_decide
theorem rows11374 : actualRows11374=WordField.canonicalRows actualModulus 11374 (.band 11371 11373) := by core033_kernel_decide
theorem stats11374 : actualRows11374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11374=5124 := by core033_kernel_decide
theorem rows11375 : actualRows11375=WordField.canonicalRows actualModulus 11375 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11375 : actualRows11375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11375=2964 := by core033_kernel_decide
theorem rows11376 : actualRows11376=WordField.canonicalRows actualModulus 11376 (.bxor 0 11375) := by core033_kernel_decide
theorem stats11376 : actualRows11376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11376=7428 := by core033_kernel_decide
theorem rows11377 : actualRows11377=WordField.canonicalRows actualModulus 11377 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11377 : actualRows11377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11377=2820 := by core033_kernel_decide
theorem rows11378 : actualRows11378=WordField.canonicalRows actualModulus 11378 (.bnot 11377) := by core033_kernel_decide
theorem stats11378 : actualRows11378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11378=6276 := by core033_kernel_decide
theorem rows11379 : actualRows11379=WordField.canonicalRows actualModulus 11379 (.bxor 11376 11378) := by core033_kernel_decide
theorem stats11379 : actualRows11379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11379=7428 := by core033_kernel_decide
theorem rows11380 : actualRows11380=WordField.canonicalRows actualModulus 11380 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11380 : actualRows11380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11380=2964 := by core033_kernel_decide
theorem rows11381 : actualRows11381=WordField.canonicalRows actualModulus 11381 (.bxor 0 11380) := by core033_kernel_decide
theorem stats11381 : actualRows11381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11381=7428 := by core033_kernel_decide
theorem rows11382 : actualRows11382=WordField.canonicalRows actualModulus 11382 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11382 : actualRows11382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11382=2820 := by core033_kernel_decide
theorem rows11383 : actualRows11383=WordField.canonicalRows actualModulus 11383 (.bnot 11382) := by core033_kernel_decide
theorem stats11383 : actualRows11383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11383=6276 := by core033_kernel_decide
theorem rows11384 : actualRows11384=WordField.canonicalRows actualModulus 11384 (.badd 11381 11383) := by core033_kernel_decide
theorem stats11384 : actualRows11384.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11384=5388 := by core033_kernel_decide
theorem rows11385 : actualRows11385=WordField.canonicalRows actualModulus 11385 (.bnot 11384) := by core033_kernel_decide
theorem stats11385 : actualRows11385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11385=6276 := by core033_kernel_decide
theorem rows11386 : actualRows11386=WordField.canonicalRows actualModulus 11386 (.band 11379 11385) := by core033_kernel_decide
theorem stats11386 : actualRows11386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11386=5124 := by core033_kernel_decide
theorem rows11387 : actualRows11387=WordField.canonicalRows actualModulus 11387 (.bxor 11374 11386) := by core033_kernel_decide
theorem stats11387 : actualRows11387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11387=7428 := by core033_kernel_decide
theorem rows11388 : actualRows11388=WordField.canonicalRows actualModulus 11388 (.shr 11387 31) := by core033_kernel_decide
theorem stats11388 : actualRows11388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11388=2892 := by core033_kernel_decide
theorem rows11389 : actualRows11389=WordField.canonicalRows actualModulus 11389 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11389 : actualRows11389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11389=2892 := by core033_kernel_decide
theorem rows11390 : actualRows11390=WordField.canonicalRows actualModulus 11390 (.bxor 11388 11389) := by core033_kernel_decide
theorem stats11390 : actualRows11390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11390=7428 := by core033_kernel_decide
theorem rows11391 : actualRows11391=WordField.canonicalRows actualModulus 11391 (.bnot 11390) := by core033_kernel_decide
theorem stats11391 : actualRows11391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11391=6276 := by core033_kernel_decide
theorem rows11392 : actualRows11392=WordField.canonicalRows actualModulus 11392 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11392 : actualRows11392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11392=2892 := by core033_kernel_decide
theorem rows11393 : actualRows11393=WordField.canonicalRows actualModulus 11393 (.badd 11391 11392) := by core033_kernel_decide
theorem stats11393 : actualRows11393.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11393=5388 := by core033_kernel_decide
theorem rows11394 : actualRows11394=WordField.canonicalRows actualModulus 11394 (.band 11393 9659) := by core033_kernel_decide
theorem stats11394 : actualRows11394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11394=5124 := by core033_kernel_decide
theorem rows11395 : actualRows11395=WordField.canonicalRows actualModulus 11395 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11395 : actualRows11395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11395=2964 := by core033_kernel_decide
theorem rows11396 : actualRows11396=WordField.canonicalRows actualModulus 11396 (.bxor 0 11395) := by core033_kernel_decide
theorem stats11396 : actualRows11396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11396=7428 := by core033_kernel_decide
theorem rows11397 : actualRows11397=WordField.canonicalRows actualModulus 11397 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11397 : actualRows11397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11397=2820 := by core033_kernel_decide
theorem rows11398 : actualRows11398=WordField.canonicalRows actualModulus 11398 (.bnot 11397) := by core033_kernel_decide
theorem stats11398 : actualRows11398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11398=6276 := by core033_kernel_decide
theorem rows11399 : actualRows11399=WordField.canonicalRows actualModulus 11399 (.band 11396 11398) := by core033_kernel_decide
theorem stats11399 : actualRows11399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11399=5124 := by core033_kernel_decide
theorem rows11400 : actualRows11400=WordField.canonicalRows actualModulus 11400 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11400 : actualRows11400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11400=2964 := by core033_kernel_decide
theorem rows11401 : actualRows11401=WordField.canonicalRows actualModulus 11401 (.bxor 0 11400) := by core033_kernel_decide
theorem stats11401 : actualRows11401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11401=7428 := by core033_kernel_decide
theorem rows11402 : actualRows11402=WordField.canonicalRows actualModulus 11402 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11402 : actualRows11402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11402=2820 := by core033_kernel_decide
theorem rows11403 : actualRows11403=WordField.canonicalRows actualModulus 11403 (.bnot 11402) := by core033_kernel_decide
theorem stats11403 : actualRows11403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11403=6276 := by core033_kernel_decide
theorem rows11404 : actualRows11404=WordField.canonicalRows actualModulus 11404 (.bxor 11401 11403) := by core033_kernel_decide
theorem stats11404 : actualRows11404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11404=7428 := by core033_kernel_decide
theorem rows11405 : actualRows11405=WordField.canonicalRows actualModulus 11405 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11405 : actualRows11405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11405=2964 := by core033_kernel_decide
theorem rows11406 : actualRows11406=WordField.canonicalRows actualModulus 11406 (.bxor 0 11405) := by core033_kernel_decide
theorem stats11406 : actualRows11406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11406=7428 := by core033_kernel_decide
theorem rows11407 : actualRows11407=WordField.canonicalRows actualModulus 11407 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11407 : actualRows11407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11407=2820 := by core033_kernel_decide
theorem rows11408 : actualRows11408=WordField.canonicalRows actualModulus 11408 (.bnot 11407) := by core033_kernel_decide
theorem stats11408 : actualRows11408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11408=6276 := by core033_kernel_decide
theorem rows11409 : actualRows11409=WordField.canonicalRows actualModulus 11409 (.badd 11406 11408) := by core033_kernel_decide
theorem stats11409 : actualRows11409.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11409=5388 := by core033_kernel_decide
theorem rows11410 : actualRows11410=WordField.canonicalRows actualModulus 11410 (.bnot 11409) := by core033_kernel_decide
theorem stats11410 : actualRows11410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11410=6276 := by core033_kernel_decide
theorem rows11411 : actualRows11411=WordField.canonicalRows actualModulus 11411 (.band 11404 11410) := by core033_kernel_decide
theorem stats11411 : actualRows11411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11411=5124 := by core033_kernel_decide
theorem rows11412 : actualRows11412=WordField.canonicalRows actualModulus 11412 (.bxor 11399 11411) := by core033_kernel_decide
theorem stats11412 : actualRows11412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11412=7428 := by core033_kernel_decide
theorem rows11413 : actualRows11413=WordField.canonicalRows actualModulus 11413 (.shr 11412 31) := by core033_kernel_decide
theorem stats11413 : actualRows11413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11413=2892 := by core033_kernel_decide
theorem rows11414 : actualRows11414=WordField.canonicalRows actualModulus 11414 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11414 : actualRows11414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11414=2892 := by core033_kernel_decide
theorem rows11415 : actualRows11415=WordField.canonicalRows actualModulus 11415 (.bxor 11413 11414) := by core033_kernel_decide
theorem stats11415 : actualRows11415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11415=7428 := by core033_kernel_decide
theorem rows11416 : actualRows11416=WordField.canonicalRows actualModulus 11416 (.bnot 11415) := by core033_kernel_decide
theorem stats11416 : actualRows11416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11416=6276 := by core033_kernel_decide
theorem rows11417 : actualRows11417=WordField.canonicalRows actualModulus 11417 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11417 : actualRows11417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11417=2892 := by core033_kernel_decide
theorem rows11418 : actualRows11418=WordField.canonicalRows actualModulus 11418 (.badd 11416 11417) := by core033_kernel_decide
theorem stats11418 : actualRows11418.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11418=5388 := by core033_kernel_decide
theorem rows11419 : actualRows11419=WordField.canonicalRows actualModulus 11419 (.bnot 11418) := by core033_kernel_decide
theorem stats11419 : actualRows11419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11419=6276 := by core033_kernel_decide
theorem rows11420 : actualRows11420=WordField.canonicalRows actualModulus 11420 (.band 11419 338) := by core033_kernel_decide
theorem stats11420 : actualRows11420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11420=5124 := by core033_kernel_decide
theorem rows11421 : actualRows11421=WordField.canonicalRows actualModulus 11421 (.bxor 11394 11420) := by core033_kernel_decide
theorem stats11421 : actualRows11421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11421=7428 := by core033_kernel_decide
theorem rows11422 : actualRows11422=WordField.canonicalRows actualModulus 11422 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11422 : actualRows11422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11422=2964 := by core033_kernel_decide
theorem rows11423 : actualRows11423=WordField.canonicalRows actualModulus 11423 (.bxor 0 11422) := by core033_kernel_decide
theorem stats11423 : actualRows11423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11423=7428 := by core033_kernel_decide
theorem rows11424 : actualRows11424=WordField.canonicalRows actualModulus 11424 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11424 : actualRows11424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11424=2820 := by core033_kernel_decide
theorem rows11425 : actualRows11425=WordField.canonicalRows actualModulus 11425 (.bnot 11424) := by core033_kernel_decide
theorem stats11425 : actualRows11425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11425=6276 := by core033_kernel_decide
theorem rows11426 : actualRows11426=WordField.canonicalRows actualModulus 11426 (.band 11423 11425) := by core033_kernel_decide
theorem stats11426 : actualRows11426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11426=5124 := by core033_kernel_decide
theorem rows11427 : actualRows11427=WordField.canonicalRows actualModulus 11427 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11427 : actualRows11427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11427=2964 := by core033_kernel_decide
theorem rows11428 : actualRows11428=WordField.canonicalRows actualModulus 11428 (.bxor 0 11427) := by core033_kernel_decide
theorem stats11428 : actualRows11428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11428=7428 := by core033_kernel_decide
theorem rows11429 : actualRows11429=WordField.canonicalRows actualModulus 11429 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11429 : actualRows11429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11429=2820 := by core033_kernel_decide
theorem rows11430 : actualRows11430=WordField.canonicalRows actualModulus 11430 (.bnot 11429) := by core033_kernel_decide
theorem stats11430 : actualRows11430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11430=6276 := by core033_kernel_decide
theorem rows11431 : actualRows11431=WordField.canonicalRows actualModulus 11431 (.bxor 11428 11430) := by core033_kernel_decide
theorem stats11431 : actualRows11431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11431=7428 := by core033_kernel_decide
theorem rows11432 : actualRows11432=WordField.canonicalRows actualModulus 11432 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11432 : actualRows11432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11432=2964 := by core033_kernel_decide
theorem rows11433 : actualRows11433=WordField.canonicalRows actualModulus 11433 (.bxor 0 11432) := by core033_kernel_decide
theorem stats11433 : actualRows11433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11433=7428 := by core033_kernel_decide
theorem rows11434 : actualRows11434=WordField.canonicalRows actualModulus 11434 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11434 : actualRows11434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11434=2820 := by core033_kernel_decide
def partRows177 : List R1CS.Row := actualRows11371++actualRows11372++actualRows11373++actualRows11374++actualRows11375++actualRows11376++actualRows11377++actualRows11378++actualRows11379++actualRows11380++actualRows11381++actualRows11382++actualRows11383++actualRows11384++actualRows11385++actualRows11386++actualRows11387++actualRows11388++actualRows11389++actualRows11390++actualRows11391++actualRows11392++actualRows11393++actualRows11394++actualRows11395++actualRows11396++actualRows11397++actualRows11398++actualRows11399++actualRows11400++actualRows11401++actualRows11402++actualRows11403++actualRows11404++actualRows11405++actualRows11406++actualRows11407++actualRows11408++actualRows11409++actualRows11410++actualRows11411++actualRows11412++actualRows11413++actualRows11414++actualRows11415++actualRows11416++actualRows11417++actualRows11418++actualRows11419++actualRows11420++actualRows11421++actualRows11422++actualRows11423++actualRows11424++actualRows11425++actualRows11426++actualRows11427++actualRows11428++actualRows11429++actualRows11430++actualRows11431++actualRows11432++actualRows11433++actualRows11434
def partOps177 : List WordIR.Op := [.bxor 0 11370,.literal (BitVec.ofNat 32 0),.bnot 11372,.band 11371 11373,.literal (BitVec.ofNat 32 3),.bxor 0 11375,.literal (BitVec.ofNat 32 0),.bnot 11377,.bxor 11376 11378,.literal (BitVec.ofNat 32 3),.bxor 0 11380,.literal (BitVec.ofNat 32 0),.bnot 11382,.badd 11381 11383,.bnot 11384,.band 11379 11385,.bxor 11374 11386,.shr 11387 31,.literal (BitVec.ofNat 32 1),.bxor 11388 11389,.bnot 11390,.literal (BitVec.ofNat 32 1),.badd 11391 11392,.band 11393 9659,.literal (BitVec.ofNat 32 3),.bxor 0 11395,.literal (BitVec.ofNat 32 0),.bnot 11397,.band 11396 11398,.literal (BitVec.ofNat 32 3),.bxor 0 11400,.literal (BitVec.ofNat 32 0),.bnot 11402,.bxor 11401 11403,.literal (BitVec.ofNat 32 3),.bxor 0 11405,.literal (BitVec.ofNat 32 0),.bnot 11407,.badd 11406 11408,.bnot 11409,.band 11404 11410,.bxor 11399 11411,.shr 11412 31,.literal (BitVec.ofNat 32 1),.bxor 11413 11414,.bnot 11415,.literal (BitVec.ofNat 32 1),.badd 11416 11417,.bnot 11418,.band 11419 338,.bxor 11394 11420,.literal (BitVec.ofNat 32 3),.bxor 0 11422,.literal (BitVec.ofNat 32 0),.bnot 11424,.band 11423 11425,.literal (BitVec.ofNat 32 3),.bxor 0 11427,.literal (BitVec.ofNat 32 0),.bnot 11429,.bxor 11428 11430,.literal (BitVec.ofNat 32 3),.bxor 0 11432,.literal (BitVec.ofNat 32 0)]
theorem partExact177 : partRows177=WordField.rows actualModulus 11371 partOps177 := by
  simp only [partRows177,partOps177,WordField.rows,rows11371,rows11372,rows11373,rows11374,rows11375,rows11376,rows11377,rows11378,rows11379,rows11380,rows11381,rows11382,rows11383,rows11384,rows11385,rows11386,rows11387,rows11388,rows11389,rows11390,rows11391,rows11392,rows11393,rows11394,rows11395,rows11396,rows11397,rows11398,rows11399,rows11400,rows11401,rows11402,rows11403,rows11404,rows11405,rows11406,rows11407,rows11408,rows11409,rows11410,rows11411,rows11412,rows11413,rows11414,rows11415,rows11416,rows11417,rows11418,rows11419,rows11420,rows11421,rows11422,rows11423,rows11424,rows11425,rows11426,rows11427,rows11428,rows11429,rows11430,rows11431,rows11432,rows11433,rows11434,List.append_assoc,List.append_nil]
theorem partLength177 : partOps177.length=64 := by decide
theorem partStats177 : partRows177.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows177=331728 := by
  simp only [partRows177,List.length_append,MatrixRowBlocks.rows_weight_append,stats11371.1,stats11371.2,stats11372.1,stats11372.2,stats11373.1,stats11373.2,stats11374.1,stats11374.2,stats11375.1,stats11375.2,stats11376.1,stats11376.2,stats11377.1,stats11377.2,stats11378.1,stats11378.2,stats11379.1,stats11379.2,stats11380.1,stats11380.2,stats11381.1,stats11381.2,stats11382.1,stats11382.2,stats11383.1,stats11383.2,stats11384.1,stats11384.2,stats11385.1,stats11385.2,stats11386.1,stats11386.2,stats11387.1,stats11387.2,stats11388.1,stats11388.2,stats11389.1,stats11389.2,stats11390.1,stats11390.2,stats11391.1,stats11391.2,stats11392.1,stats11392.2,stats11393.1,stats11393.2,stats11394.1,stats11394.2,stats11395.1,stats11395.2,stats11396.1,stats11396.2,stats11397.1,stats11397.2,stats11398.1,stats11398.2,stats11399.1,stats11399.2,stats11400.1,stats11400.2,stats11401.1,stats11401.2,stats11402.1,stats11402.2,stats11403.1,stats11403.2,stats11404.1,stats11404.2,stats11405.1,stats11405.2,stats11406.1,stats11406.2,stats11407.1,stats11407.2,stats11408.1,stats11408.2,stats11409.1,stats11409.2,stats11410.1,stats11410.2,stats11411.1,stats11411.2,stats11412.1,stats11412.2,stats11413.1,stats11413.2,stats11414.1,stats11414.2,stats11415.1,stats11415.2,stats11416.1,stats11416.2,stats11417.1,stats11417.2,stats11418.1,stats11418.2,stats11419.1,stats11419.2,stats11420.1,stats11420.2,stats11421.1,stats11421.2,stats11422.1,stats11422.2,stats11423.1,stats11423.2,stats11424.1,stats11424.2,stats11425.1,stats11425.2,stats11426.1,stats11426.2,stats11427.1,stats11427.2,stats11428.1,stats11428.2,stats11429.1,stats11429.2,stats11430.1,stats11430.2,stats11431.1,stats11431.2,stats11432.1,stats11432.2,stats11433.1,stats11433.2,stats11434.1,stats11434.2]
  decide
end PathRoundDispatchCheckedRows
