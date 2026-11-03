import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData192
import AuthenticatedBranchRoundInstructionMatrixData193
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12342 : actualRows12342=WordField.canonicalRows actualModulus 12342 (.band 12339 12341) := by core033_kernel_decide
theorem stats12342 : actualRows12342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12342=5124 := by core033_kernel_decide
theorem rows12343 : actualRows12343=WordField.canonicalRows actualModulus 12343 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12343 : actualRows12343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12343=2964 := by core033_kernel_decide
theorem rows12344 : actualRows12344=WordField.canonicalRows actualModulus 12344 (.bxor 693 12343) := by core033_kernel_decide
theorem stats12344 : actualRows12344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12344=7428 := by core033_kernel_decide
theorem rows12345 : actualRows12345=WordField.canonicalRows actualModulus 12345 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12345 : actualRows12345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12345=2820 := by core033_kernel_decide
theorem rows12346 : actualRows12346=WordField.canonicalRows actualModulus 12346 (.bnot 12345) := by core033_kernel_decide
theorem stats12346 : actualRows12346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12346=6276 := by core033_kernel_decide
theorem rows12347 : actualRows12347=WordField.canonicalRows actualModulus 12347 (.bxor 12344 12346) := by core033_kernel_decide
theorem stats12347 : actualRows12347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12347=7428 := by core033_kernel_decide
theorem rows12348 : actualRows12348=WordField.canonicalRows actualModulus 12348 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12348 : actualRows12348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12348=2964 := by core033_kernel_decide
theorem rows12349 : actualRows12349=WordField.canonicalRows actualModulus 12349 (.bxor 693 12348) := by core033_kernel_decide
theorem stats12349 : actualRows12349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12349=7428 := by core033_kernel_decide
theorem rows12350 : actualRows12350=WordField.canonicalRows actualModulus 12350 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12350 : actualRows12350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12350=2820 := by core033_kernel_decide
theorem rows12351 : actualRows12351=WordField.canonicalRows actualModulus 12351 (.bnot 12350) := by core033_kernel_decide
theorem stats12351 : actualRows12351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12351=6276 := by core033_kernel_decide
theorem rows12352 : actualRows12352=WordField.canonicalRows actualModulus 12352 (.badd 12349 12351) := by core033_kernel_decide
theorem stats12352 : actualRows12352.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12352=5388 := by core033_kernel_decide
theorem rows12353 : actualRows12353=WordField.canonicalRows actualModulus 12353 (.bnot 12352) := by core033_kernel_decide
theorem stats12353 : actualRows12353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12353=6276 := by core033_kernel_decide
theorem rows12354 : actualRows12354=WordField.canonicalRows actualModulus 12354 (.band 12347 12353) := by core033_kernel_decide
theorem stats12354 : actualRows12354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12354=5124 := by core033_kernel_decide
theorem rows12355 : actualRows12355=WordField.canonicalRows actualModulus 12355 (.bxor 12342 12354) := by core033_kernel_decide
theorem stats12355 : actualRows12355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12355=7428 := by core033_kernel_decide
theorem rows12356 : actualRows12356=WordField.canonicalRows actualModulus 12356 (.shr 12355 31) := by core033_kernel_decide
theorem stats12356 : actualRows12356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12356=2892 := by core033_kernel_decide
theorem rows12357 : actualRows12357=WordField.canonicalRows actualModulus 12357 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12357 : actualRows12357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12357=2892 := by core033_kernel_decide
theorem rows12358 : actualRows12358=WordField.canonicalRows actualModulus 12358 (.bxor 12356 12357) := by core033_kernel_decide
theorem stats12358 : actualRows12358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12358=7428 := by core033_kernel_decide
theorem rows12359 : actualRows12359=WordField.canonicalRows actualModulus 12359 (.bnot 12358) := by core033_kernel_decide
theorem stats12359 : actualRows12359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12359=6276 := by core033_kernel_decide
theorem rows12360 : actualRows12360=WordField.canonicalRows actualModulus 12360 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12360 : actualRows12360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12360=2892 := by core033_kernel_decide
theorem rows12361 : actualRows12361=WordField.canonicalRows actualModulus 12361 (.badd 12359 12360) := by core033_kernel_decide
theorem stats12361 : actualRows12361.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12361=5388 := by core033_kernel_decide
theorem rows12362 : actualRows12362=WordField.canonicalRows actualModulus 12362 (.bnot 12361) := by core033_kernel_decide
theorem stats12362 : actualRows12362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12362=6276 := by core033_kernel_decide
theorem rows12363 : actualRows12363=WordField.canonicalRows actualModulus 12363 (.band 12362 1486) := by core033_kernel_decide
theorem stats12363 : actualRows12363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12363=5124 := by core033_kernel_decide
theorem rows12364 : actualRows12364=WordField.canonicalRows actualModulus 12364 (.bxor 12337 12363) := by core033_kernel_decide
theorem stats12364 : actualRows12364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12364=7428 := by core033_kernel_decide
theorem rows12365 : actualRows12365=WordField.canonicalRows actualModulus 12365 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12365 : actualRows12365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12365=2964 := by core033_kernel_decide
theorem rows12366 : actualRows12366=WordField.canonicalRows actualModulus 12366 (.bxor 693 12365) := by core033_kernel_decide
theorem stats12366 : actualRows12366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12366=7428 := by core033_kernel_decide
theorem rows12367 : actualRows12367=WordField.canonicalRows actualModulus 12367 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12367 : actualRows12367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12367=2820 := by core033_kernel_decide
theorem rows12368 : actualRows12368=WordField.canonicalRows actualModulus 12368 (.bnot 12367) := by core033_kernel_decide
theorem stats12368 : actualRows12368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12368=6276 := by core033_kernel_decide
theorem rows12369 : actualRows12369=WordField.canonicalRows actualModulus 12369 (.band 12366 12368) := by core033_kernel_decide
theorem stats12369 : actualRows12369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12369=5124 := by core033_kernel_decide
theorem rows12370 : actualRows12370=WordField.canonicalRows actualModulus 12370 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12370 : actualRows12370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12370=2964 := by core033_kernel_decide
theorem rows12371 : actualRows12371=WordField.canonicalRows actualModulus 12371 (.bxor 693 12370) := by core033_kernel_decide
theorem stats12371 : actualRows12371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12371=7428 := by core033_kernel_decide
theorem rows12372 : actualRows12372=WordField.canonicalRows actualModulus 12372 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12372 : actualRows12372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12372=2820 := by core033_kernel_decide
theorem rows12373 : actualRows12373=WordField.canonicalRows actualModulus 12373 (.bnot 12372) := by core033_kernel_decide
theorem stats12373 : actualRows12373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12373=6276 := by core033_kernel_decide
theorem rows12374 : actualRows12374=WordField.canonicalRows actualModulus 12374 (.bxor 12371 12373) := by core033_kernel_decide
theorem stats12374 : actualRows12374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12374=7428 := by core033_kernel_decide
theorem rows12375 : actualRows12375=WordField.canonicalRows actualModulus 12375 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12375 : actualRows12375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12375=2964 := by core033_kernel_decide
theorem rows12376 : actualRows12376=WordField.canonicalRows actualModulus 12376 (.bxor 693 12375) := by core033_kernel_decide
theorem stats12376 : actualRows12376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12376=7428 := by core033_kernel_decide
theorem rows12377 : actualRows12377=WordField.canonicalRows actualModulus 12377 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12377 : actualRows12377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12377=2820 := by core033_kernel_decide
theorem rows12378 : actualRows12378=WordField.canonicalRows actualModulus 12378 (.bnot 12377) := by core033_kernel_decide
theorem stats12378 : actualRows12378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12378=6276 := by core033_kernel_decide
theorem rows12379 : actualRows12379=WordField.canonicalRows actualModulus 12379 (.badd 12376 12378) := by core033_kernel_decide
theorem stats12379 : actualRows12379.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12379=5388 := by core033_kernel_decide
theorem rows12380 : actualRows12380=WordField.canonicalRows actualModulus 12380 (.bnot 12379) := by core033_kernel_decide
theorem stats12380 : actualRows12380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12380=6276 := by core033_kernel_decide
theorem rows12381 : actualRows12381=WordField.canonicalRows actualModulus 12381 (.band 12374 12380) := by core033_kernel_decide
theorem stats12381 : actualRows12381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12381=5124 := by core033_kernel_decide
theorem rows12382 : actualRows12382=WordField.canonicalRows actualModulus 12382 (.bxor 12369 12381) := by core033_kernel_decide
theorem stats12382 : actualRows12382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12382=7428 := by core033_kernel_decide
theorem rows12383 : actualRows12383=WordField.canonicalRows actualModulus 12383 (.shr 12382 31) := by core033_kernel_decide
theorem stats12383 : actualRows12383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12383=2892 := by core033_kernel_decide
theorem rows12384 : actualRows12384=WordField.canonicalRows actualModulus 12384 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12384 : actualRows12384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12384=2892 := by core033_kernel_decide
theorem rows12385 : actualRows12385=WordField.canonicalRows actualModulus 12385 (.bxor 12383 12384) := by core033_kernel_decide
theorem stats12385 : actualRows12385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12385=7428 := by core033_kernel_decide
theorem rows12386 : actualRows12386=WordField.canonicalRows actualModulus 12386 (.bnot 12385) := by core033_kernel_decide
theorem stats12386 : actualRows12386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12386=6276 := by core033_kernel_decide
theorem rows12387 : actualRows12387=WordField.canonicalRows actualModulus 12387 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12387 : actualRows12387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12387=2892 := by core033_kernel_decide
theorem rows12388 : actualRows12388=WordField.canonicalRows actualModulus 12388 (.badd 12386 12387) := by core033_kernel_decide
theorem stats12388 : actualRows12388.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12388=5388 := by core033_kernel_decide
theorem rows12389 : actualRows12389=WordField.canonicalRows actualModulus 12389 (.band 12388 11138) := by core033_kernel_decide
theorem stats12389 : actualRows12389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12389=5124 := by core033_kernel_decide
theorem rows12390 : actualRows12390=WordField.canonicalRows actualModulus 12390 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12390 : actualRows12390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12390=2964 := by core033_kernel_decide
theorem rows12391 : actualRows12391=WordField.canonicalRows actualModulus 12391 (.bxor 693 12390) := by core033_kernel_decide
theorem stats12391 : actualRows12391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12391=7428 := by core033_kernel_decide
theorem rows12392 : actualRows12392=WordField.canonicalRows actualModulus 12392 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12392 : actualRows12392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12392=2820 := by core033_kernel_decide
theorem rows12393 : actualRows12393=WordField.canonicalRows actualModulus 12393 (.bnot 12392) := by core033_kernel_decide
theorem stats12393 : actualRows12393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12393=6276 := by core033_kernel_decide
theorem rows12394 : actualRows12394=WordField.canonicalRows actualModulus 12394 (.band 12391 12393) := by core033_kernel_decide
theorem stats12394 : actualRows12394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12394=5124 := by core033_kernel_decide
theorem rows12395 : actualRows12395=WordField.canonicalRows actualModulus 12395 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12395 : actualRows12395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12395=2964 := by core033_kernel_decide
theorem rows12396 : actualRows12396=WordField.canonicalRows actualModulus 12396 (.bxor 693 12395) := by core033_kernel_decide
theorem stats12396 : actualRows12396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12396=7428 := by core033_kernel_decide
theorem rows12397 : actualRows12397=WordField.canonicalRows actualModulus 12397 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12397 : actualRows12397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12397=2820 := by core033_kernel_decide
theorem rows12398 : actualRows12398=WordField.canonicalRows actualModulus 12398 (.bnot 12397) := by core033_kernel_decide
theorem stats12398 : actualRows12398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12398=6276 := by core033_kernel_decide
theorem rows12399 : actualRows12399=WordField.canonicalRows actualModulus 12399 (.bxor 12396 12398) := by core033_kernel_decide
theorem stats12399 : actualRows12399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12399=7428 := by core033_kernel_decide
theorem rows12400 : actualRows12400=WordField.canonicalRows actualModulus 12400 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12400 : actualRows12400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12400=2964 := by core033_kernel_decide
theorem rows12401 : actualRows12401=WordField.canonicalRows actualModulus 12401 (.bxor 693 12400) := by core033_kernel_decide
theorem stats12401 : actualRows12401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12401=7428 := by core033_kernel_decide
theorem rows12402 : actualRows12402=WordField.canonicalRows actualModulus 12402 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12402 : actualRows12402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12402=2820 := by core033_kernel_decide
theorem rows12403 : actualRows12403=WordField.canonicalRows actualModulus 12403 (.bnot 12402) := by core033_kernel_decide
theorem stats12403 : actualRows12403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12403=6276 := by core033_kernel_decide
theorem rows12404 : actualRows12404=WordField.canonicalRows actualModulus 12404 (.badd 12401 12403) := by core033_kernel_decide
theorem stats12404 : actualRows12404.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12404=5388 := by core033_kernel_decide
theorem rows12405 : actualRows12405=WordField.canonicalRows actualModulus 12405 (.bnot 12404) := by core033_kernel_decide
theorem stats12405 : actualRows12405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12405=6276 := by core033_kernel_decide
def partRows191 : List R1CS.Row := actualRows12342++actualRows12343++actualRows12344++actualRows12345++actualRows12346++actualRows12347++actualRows12348++actualRows12349++actualRows12350++actualRows12351++actualRows12352++actualRows12353++actualRows12354++actualRows12355++actualRows12356++actualRows12357++actualRows12358++actualRows12359++actualRows12360++actualRows12361++actualRows12362++actualRows12363++actualRows12364++actualRows12365++actualRows12366++actualRows12367++actualRows12368++actualRows12369++actualRows12370++actualRows12371++actualRows12372++actualRows12373++actualRows12374++actualRows12375++actualRows12376++actualRows12377++actualRows12378++actualRows12379++actualRows12380++actualRows12381++actualRows12382++actualRows12383++actualRows12384++actualRows12385++actualRows12386++actualRows12387++actualRows12388++actualRows12389++actualRows12390++actualRows12391++actualRows12392++actualRows12393++actualRows12394++actualRows12395++actualRows12396++actualRows12397++actualRows12398++actualRows12399++actualRows12400++actualRows12401++actualRows12402++actualRows12403++actualRows12404++actualRows12405
def partOps191 : List WordIR.Op := [.band 12339 12341,.literal (BitVec.ofNat 32 3),.bxor 693 12343,.literal (BitVec.ofNat 32 0),.bnot 12345,.bxor 12344 12346,.literal (BitVec.ofNat 32 3),.bxor 693 12348,.literal (BitVec.ofNat 32 0),.bnot 12350,.badd 12349 12351,.bnot 12352,.band 12347 12353,.bxor 12342 12354,.shr 12355 31,.literal (BitVec.ofNat 32 1),.bxor 12356 12357,.bnot 12358,.literal (BitVec.ofNat 32 1),.badd 12359 12360,.bnot 12361,.band 12362 1486,.bxor 12337 12363,.literal (BitVec.ofNat 32 3),.bxor 693 12365,.literal (BitVec.ofNat 32 0),.bnot 12367,.band 12366 12368,.literal (BitVec.ofNat 32 3),.bxor 693 12370,.literal (BitVec.ofNat 32 0),.bnot 12372,.bxor 12371 12373,.literal (BitVec.ofNat 32 3),.bxor 693 12375,.literal (BitVec.ofNat 32 0),.bnot 12377,.badd 12376 12378,.bnot 12379,.band 12374 12380,.bxor 12369 12381,.shr 12382 31,.literal (BitVec.ofNat 32 1),.bxor 12383 12384,.bnot 12385,.literal (BitVec.ofNat 32 1),.badd 12386 12387,.band 12388 11138,.literal (BitVec.ofNat 32 3),.bxor 693 12390,.literal (BitVec.ofNat 32 0),.bnot 12392,.band 12391 12393,.literal (BitVec.ofNat 32 3),.bxor 693 12395,.literal (BitVec.ofNat 32 0),.bnot 12397,.bxor 12396 12398,.literal (BitVec.ofNat 32 3),.bxor 693 12400,.literal (BitVec.ofNat 32 0),.bnot 12402,.badd 12401 12403,.bnot 12404]
theorem partExact191 : partRows191=WordField.rows actualModulus 12342 partOps191 := by
  simp only [partRows191,partOps191,WordField.rows,rows12342,rows12343,rows12344,rows12345,rows12346,rows12347,rows12348,rows12349,rows12350,rows12351,rows12352,rows12353,rows12354,rows12355,rows12356,rows12357,rows12358,rows12359,rows12360,rows12361,rows12362,rows12363,rows12364,rows12365,rows12366,rows12367,rows12368,rows12369,rows12370,rows12371,rows12372,rows12373,rows12374,rows12375,rows12376,rows12377,rows12378,rows12379,rows12380,rows12381,rows12382,rows12383,rows12384,rows12385,rows12386,rows12387,rows12388,rows12389,rows12390,rows12391,rows12392,rows12393,rows12394,rows12395,rows12396,rows12397,rows12398,rows12399,rows12400,rows12401,rows12402,rows12403,rows12404,rows12405,List.append_assoc,List.append_nil]
theorem partLength191 : partOps191.length=64 := by decide
theorem partStats191 : partRows191.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows191=333144 := by
  simp only [partRows191,List.length_append,MatrixRowBlocks.rows_weight_append,stats12342.1,stats12342.2,stats12343.1,stats12343.2,stats12344.1,stats12344.2,stats12345.1,stats12345.2,stats12346.1,stats12346.2,stats12347.1,stats12347.2,stats12348.1,stats12348.2,stats12349.1,stats12349.2,stats12350.1,stats12350.2,stats12351.1,stats12351.2,stats12352.1,stats12352.2,stats12353.1,stats12353.2,stats12354.1,stats12354.2,stats12355.1,stats12355.2,stats12356.1,stats12356.2,stats12357.1,stats12357.2,stats12358.1,stats12358.2,stats12359.1,stats12359.2,stats12360.1,stats12360.2,stats12361.1,stats12361.2,stats12362.1,stats12362.2,stats12363.1,stats12363.2,stats12364.1,stats12364.2,stats12365.1,stats12365.2,stats12366.1,stats12366.2,stats12367.1,stats12367.2,stats12368.1,stats12368.2,stats12369.1,stats12369.2,stats12370.1,stats12370.2,stats12371.1,stats12371.2,stats12372.1,stats12372.2,stats12373.1,stats12373.2,stats12374.1,stats12374.2,stats12375.1,stats12375.2,stats12376.1,stats12376.2,stats12377.1,stats12377.2,stats12378.1,stats12378.2,stats12379.1,stats12379.2,stats12380.1,stats12380.2,stats12381.1,stats12381.2,stats12382.1,stats12382.2,stats12383.1,stats12383.2,stats12384.1,stats12384.2,stats12385.1,stats12385.2,stats12386.1,stats12386.2,stats12387.1,stats12387.2,stats12388.1,stats12388.2,stats12389.1,stats12389.2,stats12390.1,stats12390.2,stats12391.1,stats12391.2,stats12392.1,stats12392.2,stats12393.1,stats12393.2,stats12394.1,stats12394.2,stats12395.1,stats12395.2,stats12396.1,stats12396.2,stats12397.1,stats12397.2,stats12398.1,stats12398.2,stats12399.1,stats12399.2,stats12400.1,stats12400.2,stats12401.1,stats12401.2,stats12402.1,stats12402.2,stats12403.1,stats12403.2,stats12404.1,stats12404.2,stats12405.1,stats12405.2]
  decide
end AuthenticatedBranchRoundCheckedRows
