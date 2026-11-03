import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData192
import PathRoundDispatchInstructionMatrixData193
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12331 : actualRows12331=WordField.canonicalRows actualModulus 12331 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12331 : actualRows12331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12331=2964 := by core033_kernel_decide
theorem rows12332 : actualRows12332=WordField.canonicalRows actualModulus 12332 (.bxor 0 12331) := by core033_kernel_decide
theorem stats12332 : actualRows12332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12332=7428 := by core033_kernel_decide
theorem rows12333 : actualRows12333=WordField.canonicalRows actualModulus 12333 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12333 : actualRows12333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12333=2820 := by core033_kernel_decide
theorem rows12334 : actualRows12334=WordField.canonicalRows actualModulus 12334 (.bnot 12333) := by core033_kernel_decide
theorem stats12334 : actualRows12334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12334=6276 := by core033_kernel_decide
theorem rows12335 : actualRows12335=WordField.canonicalRows actualModulus 12335 (.band 12332 12334) := by core033_kernel_decide
theorem stats12335 : actualRows12335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12335=5124 := by core033_kernel_decide
theorem rows12336 : actualRows12336=WordField.canonicalRows actualModulus 12336 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12336 : actualRows12336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12336=2964 := by core033_kernel_decide
theorem rows12337 : actualRows12337=WordField.canonicalRows actualModulus 12337 (.bxor 0 12336) := by core033_kernel_decide
theorem stats12337 : actualRows12337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12337=7428 := by core033_kernel_decide
theorem rows12338 : actualRows12338=WordField.canonicalRows actualModulus 12338 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12338 : actualRows12338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12338=2820 := by core033_kernel_decide
theorem rows12339 : actualRows12339=WordField.canonicalRows actualModulus 12339 (.bnot 12338) := by core033_kernel_decide
theorem stats12339 : actualRows12339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12339=6276 := by core033_kernel_decide
theorem rows12340 : actualRows12340=WordField.canonicalRows actualModulus 12340 (.bxor 12337 12339) := by core033_kernel_decide
theorem stats12340 : actualRows12340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12340=7428 := by core033_kernel_decide
theorem rows12341 : actualRows12341=WordField.canonicalRows actualModulus 12341 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12341 : actualRows12341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12341=2964 := by core033_kernel_decide
theorem rows12342 : actualRows12342=WordField.canonicalRows actualModulus 12342 (.bxor 0 12341) := by core033_kernel_decide
theorem stats12342 : actualRows12342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12342=7428 := by core033_kernel_decide
theorem rows12343 : actualRows12343=WordField.canonicalRows actualModulus 12343 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12343 : actualRows12343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12343=2820 := by core033_kernel_decide
theorem rows12344 : actualRows12344=WordField.canonicalRows actualModulus 12344 (.bnot 12343) := by core033_kernel_decide
theorem stats12344 : actualRows12344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12344=6276 := by core033_kernel_decide
theorem rows12345 : actualRows12345=WordField.canonicalRows actualModulus 12345 (.badd 12342 12344) := by core033_kernel_decide
theorem stats12345 : actualRows12345.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12345=5388 := by core033_kernel_decide
theorem rows12346 : actualRows12346=WordField.canonicalRows actualModulus 12346 (.bnot 12345) := by core033_kernel_decide
theorem stats12346 : actualRows12346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12346=6276 := by core033_kernel_decide
theorem rows12347 : actualRows12347=WordField.canonicalRows actualModulus 12347 (.band 12340 12346) := by core033_kernel_decide
theorem stats12347 : actualRows12347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12347=5124 := by core033_kernel_decide
theorem rows12348 : actualRows12348=WordField.canonicalRows actualModulus 12348 (.bxor 12335 12347) := by core033_kernel_decide
theorem stats12348 : actualRows12348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12348=7428 := by core033_kernel_decide
theorem rows12349 : actualRows12349=WordField.canonicalRows actualModulus 12349 (.shr 12348 31) := by core033_kernel_decide
theorem stats12349 : actualRows12349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12349=2892 := by core033_kernel_decide
theorem rows12350 : actualRows12350=WordField.canonicalRows actualModulus 12350 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12350 : actualRows12350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12350=2892 := by core033_kernel_decide
theorem rows12351 : actualRows12351=WordField.canonicalRows actualModulus 12351 (.bxor 12349 12350) := by core033_kernel_decide
theorem stats12351 : actualRows12351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12351=7428 := by core033_kernel_decide
theorem rows12352 : actualRows12352=WordField.canonicalRows actualModulus 12352 (.bnot 12351) := by core033_kernel_decide
theorem stats12352 : actualRows12352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12352=6276 := by core033_kernel_decide
theorem rows12353 : actualRows12353=WordField.canonicalRows actualModulus 12353 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12353 : actualRows12353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12353=2892 := by core033_kernel_decide
theorem rows12354 : actualRows12354=WordField.canonicalRows actualModulus 12354 (.badd 12352 12353) := by core033_kernel_decide
theorem stats12354 : actualRows12354.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12354=5388 := by core033_kernel_decide
theorem rows12355 : actualRows12355=WordField.canonicalRows actualModulus 12355 (.bnot 12354) := by core033_kernel_decide
theorem stats12355 : actualRows12355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12355=6276 := by core033_kernel_decide
theorem rows12356 : actualRows12356=WordField.canonicalRows actualModulus 12356 (.band 12355 9286) := by core033_kernel_decide
theorem stats12356 : actualRows12356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12356=5124 := by core033_kernel_decide
theorem rows12357 : actualRows12357=WordField.canonicalRows actualModulus 12357 (.bxor 12330 12356) := by core033_kernel_decide
theorem stats12357 : actualRows12357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12357=7428 := by core033_kernel_decide
theorem rows12358 : actualRows12358=WordField.canonicalRows actualModulus 12358 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12358 : actualRows12358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12358=2964 := by core033_kernel_decide
theorem rows12359 : actualRows12359=WordField.canonicalRows actualModulus 12359 (.bxor 0 12358) := by core033_kernel_decide
theorem stats12359 : actualRows12359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12359=7428 := by core033_kernel_decide
theorem rows12360 : actualRows12360=WordField.canonicalRows actualModulus 12360 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12360 : actualRows12360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12360=2820 := by core033_kernel_decide
theorem rows12361 : actualRows12361=WordField.canonicalRows actualModulus 12361 (.bnot 12360) := by core033_kernel_decide
theorem stats12361 : actualRows12361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12361=6276 := by core033_kernel_decide
theorem rows12362 : actualRows12362=WordField.canonicalRows actualModulus 12362 (.band 12359 12361) := by core033_kernel_decide
theorem stats12362 : actualRows12362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12362=5124 := by core033_kernel_decide
theorem rows12363 : actualRows12363=WordField.canonicalRows actualModulus 12363 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12363 : actualRows12363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12363=2964 := by core033_kernel_decide
theorem rows12364 : actualRows12364=WordField.canonicalRows actualModulus 12364 (.bxor 0 12363) := by core033_kernel_decide
theorem stats12364 : actualRows12364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12364=7428 := by core033_kernel_decide
theorem rows12365 : actualRows12365=WordField.canonicalRows actualModulus 12365 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12365 : actualRows12365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12365=2820 := by core033_kernel_decide
theorem rows12366 : actualRows12366=WordField.canonicalRows actualModulus 12366 (.bnot 12365) := by core033_kernel_decide
theorem stats12366 : actualRows12366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12366=6276 := by core033_kernel_decide
theorem rows12367 : actualRows12367=WordField.canonicalRows actualModulus 12367 (.bxor 12364 12366) := by core033_kernel_decide
theorem stats12367 : actualRows12367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12367=7428 := by core033_kernel_decide
theorem rows12368 : actualRows12368=WordField.canonicalRows actualModulus 12368 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12368 : actualRows12368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12368=2964 := by core033_kernel_decide
theorem rows12369 : actualRows12369=WordField.canonicalRows actualModulus 12369 (.bxor 0 12368) := by core033_kernel_decide
theorem stats12369 : actualRows12369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12369=7428 := by core033_kernel_decide
theorem rows12370 : actualRows12370=WordField.canonicalRows actualModulus 12370 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12370 : actualRows12370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12370=2820 := by core033_kernel_decide
theorem rows12371 : actualRows12371=WordField.canonicalRows actualModulus 12371 (.bnot 12370) := by core033_kernel_decide
theorem stats12371 : actualRows12371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12371=6276 := by core033_kernel_decide
theorem rows12372 : actualRows12372=WordField.canonicalRows actualModulus 12372 (.badd 12369 12371) := by core033_kernel_decide
theorem stats12372 : actualRows12372.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12372=5388 := by core033_kernel_decide
theorem rows12373 : actualRows12373=WordField.canonicalRows actualModulus 12373 (.bnot 12372) := by core033_kernel_decide
theorem stats12373 : actualRows12373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12373=6276 := by core033_kernel_decide
theorem rows12374 : actualRows12374=WordField.canonicalRows actualModulus 12374 (.band 12367 12373) := by core033_kernel_decide
theorem stats12374 : actualRows12374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12374=5124 := by core033_kernel_decide
theorem rows12375 : actualRows12375=WordField.canonicalRows actualModulus 12375 (.bxor 12362 12374) := by core033_kernel_decide
theorem stats12375 : actualRows12375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12375=7428 := by core033_kernel_decide
theorem rows12376 : actualRows12376=WordField.canonicalRows actualModulus 12376 (.shr 12375 31) := by core033_kernel_decide
theorem stats12376 : actualRows12376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12376=2892 := by core033_kernel_decide
theorem rows12377 : actualRows12377=WordField.canonicalRows actualModulus 12377 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12377 : actualRows12377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12377=2892 := by core033_kernel_decide
theorem rows12378 : actualRows12378=WordField.canonicalRows actualModulus 12378 (.bxor 12376 12377) := by core033_kernel_decide
theorem stats12378 : actualRows12378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12378=7428 := by core033_kernel_decide
theorem rows12379 : actualRows12379=WordField.canonicalRows actualModulus 12379 (.bnot 12378) := by core033_kernel_decide
theorem stats12379 : actualRows12379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12379=6276 := by core033_kernel_decide
theorem rows12380 : actualRows12380=WordField.canonicalRows actualModulus 12380 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12380 : actualRows12380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12380=2892 := by core033_kernel_decide
theorem rows12381 : actualRows12381=WordField.canonicalRows actualModulus 12381 (.badd 12379 12380) := by core033_kernel_decide
theorem stats12381 : actualRows12381.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12381=5388 := by core033_kernel_decide
theorem rows12382 : actualRows12382=WordField.canonicalRows actualModulus 12382 (.band 12381 9868) := by core033_kernel_decide
theorem stats12382 : actualRows12382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12382=5124 := by core033_kernel_decide
theorem rows12383 : actualRows12383=WordField.canonicalRows actualModulus 12383 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12383 : actualRows12383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12383=2964 := by core033_kernel_decide
theorem rows12384 : actualRows12384=WordField.canonicalRows actualModulus 12384 (.bxor 0 12383) := by core033_kernel_decide
theorem stats12384 : actualRows12384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12384=7428 := by core033_kernel_decide
theorem rows12385 : actualRows12385=WordField.canonicalRows actualModulus 12385 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12385 : actualRows12385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12385=2820 := by core033_kernel_decide
theorem rows12386 : actualRows12386=WordField.canonicalRows actualModulus 12386 (.bnot 12385) := by core033_kernel_decide
theorem stats12386 : actualRows12386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12386=6276 := by core033_kernel_decide
theorem rows12387 : actualRows12387=WordField.canonicalRows actualModulus 12387 (.band 12384 12386) := by core033_kernel_decide
theorem stats12387 : actualRows12387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12387=5124 := by core033_kernel_decide
theorem rows12388 : actualRows12388=WordField.canonicalRows actualModulus 12388 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12388 : actualRows12388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12388=2964 := by core033_kernel_decide
theorem rows12389 : actualRows12389=WordField.canonicalRows actualModulus 12389 (.bxor 0 12388) := by core033_kernel_decide
theorem stats12389 : actualRows12389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12389=7428 := by core033_kernel_decide
theorem rows12390 : actualRows12390=WordField.canonicalRows actualModulus 12390 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12390 : actualRows12390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12390=2820 := by core033_kernel_decide
theorem rows12391 : actualRows12391=WordField.canonicalRows actualModulus 12391 (.bnot 12390) := by core033_kernel_decide
theorem stats12391 : actualRows12391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12391=6276 := by core033_kernel_decide
theorem rows12392 : actualRows12392=WordField.canonicalRows actualModulus 12392 (.bxor 12389 12391) := by core033_kernel_decide
theorem stats12392 : actualRows12392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12392=7428 := by core033_kernel_decide
theorem rows12393 : actualRows12393=WordField.canonicalRows actualModulus 12393 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12393 : actualRows12393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12393=2964 := by core033_kernel_decide
theorem rows12394 : actualRows12394=WordField.canonicalRows actualModulus 12394 (.bxor 0 12393) := by core033_kernel_decide
theorem stats12394 : actualRows12394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12394=7428 := by core033_kernel_decide
def partRows192 : List R1CS.Row := actualRows12331++actualRows12332++actualRows12333++actualRows12334++actualRows12335++actualRows12336++actualRows12337++actualRows12338++actualRows12339++actualRows12340++actualRows12341++actualRows12342++actualRows12343++actualRows12344++actualRows12345++actualRows12346++actualRows12347++actualRows12348++actualRows12349++actualRows12350++actualRows12351++actualRows12352++actualRows12353++actualRows12354++actualRows12355++actualRows12356++actualRows12357++actualRows12358++actualRows12359++actualRows12360++actualRows12361++actualRows12362++actualRows12363++actualRows12364++actualRows12365++actualRows12366++actualRows12367++actualRows12368++actualRows12369++actualRows12370++actualRows12371++actualRows12372++actualRows12373++actualRows12374++actualRows12375++actualRows12376++actualRows12377++actualRows12378++actualRows12379++actualRows12380++actualRows12381++actualRows12382++actualRows12383++actualRows12384++actualRows12385++actualRows12386++actualRows12387++actualRows12388++actualRows12389++actualRows12390++actualRows12391++actualRows12392++actualRows12393++actualRows12394
def partOps192 : List WordIR.Op := [.literal (BitVec.ofNat 32 3),.bxor 0 12331,.literal (BitVec.ofNat 32 0),.bnot 12333,.band 12332 12334,.literal (BitVec.ofNat 32 3),.bxor 0 12336,.literal (BitVec.ofNat 32 0),.bnot 12338,.bxor 12337 12339,.literal (BitVec.ofNat 32 3),.bxor 0 12341,.literal (BitVec.ofNat 32 0),.bnot 12343,.badd 12342 12344,.bnot 12345,.band 12340 12346,.bxor 12335 12347,.shr 12348 31,.literal (BitVec.ofNat 32 1),.bxor 12349 12350,.bnot 12351,.literal (BitVec.ofNat 32 1),.badd 12352 12353,.bnot 12354,.band 12355 9286,.bxor 12330 12356,.literal (BitVec.ofNat 32 3),.bxor 0 12358,.literal (BitVec.ofNat 32 0),.bnot 12360,.band 12359 12361,.literal (BitVec.ofNat 32 3),.bxor 0 12363,.literal (BitVec.ofNat 32 0),.bnot 12365,.bxor 12364 12366,.literal (BitVec.ofNat 32 3),.bxor 0 12368,.literal (BitVec.ofNat 32 0),.bnot 12370,.badd 12369 12371,.bnot 12372,.band 12367 12373,.bxor 12362 12374,.shr 12375 31,.literal (BitVec.ofNat 32 1),.bxor 12376 12377,.bnot 12378,.literal (BitVec.ofNat 32 1),.badd 12379 12380,.band 12381 9868,.literal (BitVec.ofNat 32 3),.bxor 0 12383,.literal (BitVec.ofNat 32 0),.bnot 12385,.band 12384 12386,.literal (BitVec.ofNat 32 3),.bxor 0 12388,.literal (BitVec.ofNat 32 0),.bnot 12390,.bxor 12389 12391,.literal (BitVec.ofNat 32 3),.bxor 0 12393]
theorem partExact192 : partRows192=WordField.rows actualModulus 12331 partOps192 := by
  simp only [partRows192,partOps192,WordField.rows,rows12331,rows12332,rows12333,rows12334,rows12335,rows12336,rows12337,rows12338,rows12339,rows12340,rows12341,rows12342,rows12343,rows12344,rows12345,rows12346,rows12347,rows12348,rows12349,rows12350,rows12351,rows12352,rows12353,rows12354,rows12355,rows12356,rows12357,rows12358,rows12359,rows12360,rows12361,rows12362,rows12363,rows12364,rows12365,rows12366,rows12367,rows12368,rows12369,rows12370,rows12371,rows12372,rows12373,rows12374,rows12375,rows12376,rows12377,rows12378,rows12379,rows12380,rows12381,rows12382,rows12383,rows12384,rows12385,rows12386,rows12387,rows12388,rows12389,rows12390,rows12391,rows12392,rows12393,rows12394,List.append_assoc,List.append_nil]
theorem partLength192 : partOps192.length=64 := by decide
theorem partStats192 : partRows192.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows192=331872 := by
  simp only [partRows192,List.length_append,MatrixRowBlocks.rows_weight_append,stats12331.1,stats12331.2,stats12332.1,stats12332.2,stats12333.1,stats12333.2,stats12334.1,stats12334.2,stats12335.1,stats12335.2,stats12336.1,stats12336.2,stats12337.1,stats12337.2,stats12338.1,stats12338.2,stats12339.1,stats12339.2,stats12340.1,stats12340.2,stats12341.1,stats12341.2,stats12342.1,stats12342.2,stats12343.1,stats12343.2,stats12344.1,stats12344.2,stats12345.1,stats12345.2,stats12346.1,stats12346.2,stats12347.1,stats12347.2,stats12348.1,stats12348.2,stats12349.1,stats12349.2,stats12350.1,stats12350.2,stats12351.1,stats12351.2,stats12352.1,stats12352.2,stats12353.1,stats12353.2,stats12354.1,stats12354.2,stats12355.1,stats12355.2,stats12356.1,stats12356.2,stats12357.1,stats12357.2,stats12358.1,stats12358.2,stats12359.1,stats12359.2,stats12360.1,stats12360.2,stats12361.1,stats12361.2,stats12362.1,stats12362.2,stats12363.1,stats12363.2,stats12364.1,stats12364.2,stats12365.1,stats12365.2,stats12366.1,stats12366.2,stats12367.1,stats12367.2,stats12368.1,stats12368.2,stats12369.1,stats12369.2,stats12370.1,stats12370.2,stats12371.1,stats12371.2,stats12372.1,stats12372.2,stats12373.1,stats12373.2,stats12374.1,stats12374.2,stats12375.1,stats12375.2,stats12376.1,stats12376.2,stats12377.1,stats12377.2,stats12378.1,stats12378.2,stats12379.1,stats12379.2,stats12380.1,stats12380.2,stats12381.1,stats12381.2,stats12382.1,stats12382.2,stats12383.1,stats12383.2,stats12384.1,stats12384.2,stats12385.1,stats12385.2,stats12386.1,stats12386.2,stats12387.1,stats12387.2,stats12388.1,stats12388.2,stats12389.1,stats12389.2,stats12390.1,stats12390.2,stats12391.1,stats12391.2,stats12392.1,stats12392.2,stats12393.1,stats12393.2,stats12394.1,stats12394.2]
  decide
end PathRoundDispatchCheckedRows
