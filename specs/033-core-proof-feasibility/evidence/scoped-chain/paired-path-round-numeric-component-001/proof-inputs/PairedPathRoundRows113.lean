import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData114
import PairedPathRoundInstructionMatrixData115
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7328 : actualRows7328=WordField.canonicalRows actualModulus 7328 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7328 : actualRows7328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7328=2820 := by core033_kernel_decide
theorem rows7329 : actualRows7329=WordField.canonicalRows actualModulus 7329 (.bnot 7328) := by core033_kernel_decide
theorem stats7329 : actualRows7329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7329=6276 := by core033_kernel_decide
theorem rows7330 : actualRows7330=WordField.canonicalRows actualModulus 7330 (.bxor 7327 7329) := by core033_kernel_decide
theorem stats7330 : actualRows7330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7330=7428 := by core033_kernel_decide
theorem rows7331 : actualRows7331=WordField.canonicalRows actualModulus 7331 (.shr 5882 8) := by core033_kernel_decide
theorem stats7331 : actualRows7331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7331=4548 := by core033_kernel_decide
theorem rows7332 : actualRows7332=WordField.canonicalRows actualModulus 7332 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7332 : actualRows7332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7332=2820 := by core033_kernel_decide
theorem rows7333 : actualRows7333=WordField.canonicalRows actualModulus 7333 (.bnot 7332) := by core033_kernel_decide
theorem stats7333 : actualRows7333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7333=6276 := by core033_kernel_decide
theorem rows7334 : actualRows7334=WordField.canonicalRows actualModulus 7334 (.badd 7331 7333) := by core033_kernel_decide
theorem stats7334 : actualRows7334.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7334=5388 := by core033_kernel_decide
theorem rows7335 : actualRows7335=WordField.canonicalRows actualModulus 7335 (.bnot 7334) := by core033_kernel_decide
theorem stats7335 : actualRows7335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7335=6276 := by core033_kernel_decide
theorem rows7336 : actualRows7336=WordField.canonicalRows actualModulus 7336 (.band 7330 7335) := by core033_kernel_decide
theorem stats7336 : actualRows7336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7336=5124 := by core033_kernel_decide
theorem rows7337 : actualRows7337=WordField.canonicalRows actualModulus 7337 (.bxor 7326 7336) := by core033_kernel_decide
theorem stats7337 : actualRows7337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7337=7428 := by core033_kernel_decide
theorem rows7338 : actualRows7338=WordField.canonicalRows actualModulus 7338 (.shr 7337 31) := by core033_kernel_decide
theorem stats7338 : actualRows7338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7338=2892 := by core033_kernel_decide
theorem rows7339 : actualRows7339=WordField.canonicalRows actualModulus 7339 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7339 : actualRows7339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7339=2892 := by core033_kernel_decide
theorem rows7340 : actualRows7340=WordField.canonicalRows actualModulus 7340 (.bxor 7338 7339) := by core033_kernel_decide
theorem stats7340 : actualRows7340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7340=7428 := by core033_kernel_decide
theorem rows7341 : actualRows7341=WordField.canonicalRows actualModulus 7341 (.shr 5935 8) := by core033_kernel_decide
theorem stats7341 : actualRows7341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7341=4548 := by core033_kernel_decide
theorem rows7342 : actualRows7342=WordField.canonicalRows actualModulus 7342 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7342 : actualRows7342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7342=2820 := by core033_kernel_decide
theorem rows7343 : actualRows7343=WordField.canonicalRows actualModulus 7343 (.bnot 7342) := by core033_kernel_decide
theorem stats7343 : actualRows7343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7343=6276 := by core033_kernel_decide
theorem rows7344 : actualRows7344=WordField.canonicalRows actualModulus 7344 (.band 7341 7343) := by core033_kernel_decide
theorem stats7344 : actualRows7344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7344=5124 := by core033_kernel_decide
theorem rows7345 : actualRows7345=WordField.canonicalRows actualModulus 7345 (.shr 5935 8) := by core033_kernel_decide
theorem stats7345 : actualRows7345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7345=4548 := by core033_kernel_decide
theorem rows7346 : actualRows7346=WordField.canonicalRows actualModulus 7346 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7346 : actualRows7346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7346=2820 := by core033_kernel_decide
theorem rows7347 : actualRows7347=WordField.canonicalRows actualModulus 7347 (.bnot 7346) := by core033_kernel_decide
theorem stats7347 : actualRows7347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7347=6276 := by core033_kernel_decide
theorem rows7348 : actualRows7348=WordField.canonicalRows actualModulus 7348 (.bxor 7345 7347) := by core033_kernel_decide
theorem stats7348 : actualRows7348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7348=7428 := by core033_kernel_decide
theorem rows7349 : actualRows7349=WordField.canonicalRows actualModulus 7349 (.shr 5935 8) := by core033_kernel_decide
theorem stats7349 : actualRows7349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7349=4548 := by core033_kernel_decide
theorem rows7350 : actualRows7350=WordField.canonicalRows actualModulus 7350 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7350 : actualRows7350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7350=2820 := by core033_kernel_decide
theorem rows7351 : actualRows7351=WordField.canonicalRows actualModulus 7351 (.bnot 7350) := by core033_kernel_decide
theorem stats7351 : actualRows7351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7351=6276 := by core033_kernel_decide
theorem rows7352 : actualRows7352=WordField.canonicalRows actualModulus 7352 (.badd 7349 7351) := by core033_kernel_decide
theorem stats7352 : actualRows7352.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7352=5388 := by core033_kernel_decide
theorem rows7353 : actualRows7353=WordField.canonicalRows actualModulus 7353 (.bnot 7352) := by core033_kernel_decide
theorem stats7353 : actualRows7353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7353=6276 := by core033_kernel_decide
theorem rows7354 : actualRows7354=WordField.canonicalRows actualModulus 7354 (.band 7348 7353) := by core033_kernel_decide
theorem stats7354 : actualRows7354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7354=5124 := by core033_kernel_decide
theorem rows7355 : actualRows7355=WordField.canonicalRows actualModulus 7355 (.bxor 7344 7354) := by core033_kernel_decide
theorem stats7355 : actualRows7355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7355=7428 := by core033_kernel_decide
theorem rows7356 : actualRows7356=WordField.canonicalRows actualModulus 7356 (.shr 7355 31) := by core033_kernel_decide
theorem stats7356 : actualRows7356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7356=2892 := by core033_kernel_decide
theorem rows7357 : actualRows7357=WordField.canonicalRows actualModulus 7357 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7357 : actualRows7357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7357=2892 := by core033_kernel_decide
theorem rows7358 : actualRows7358=WordField.canonicalRows actualModulus 7358 (.bxor 7356 7357) := by core033_kernel_decide
theorem stats7358 : actualRows7358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7358=7428 := by core033_kernel_decide
theorem rows7359 : actualRows7359=WordField.canonicalRows actualModulus 7359 (.shr 5988 8) := by core033_kernel_decide
theorem stats7359 : actualRows7359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7359=4548 := by core033_kernel_decide
theorem rows7360 : actualRows7360=WordField.canonicalRows actualModulus 7360 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7360 : actualRows7360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7360=2820 := by core033_kernel_decide
theorem rows7361 : actualRows7361=WordField.canonicalRows actualModulus 7361 (.bnot 7360) := by core033_kernel_decide
theorem stats7361 : actualRows7361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7361=6276 := by core033_kernel_decide
theorem rows7362 : actualRows7362=WordField.canonicalRows actualModulus 7362 (.band 7359 7361) := by core033_kernel_decide
theorem stats7362 : actualRows7362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7362=5124 := by core033_kernel_decide
theorem rows7363 : actualRows7363=WordField.canonicalRows actualModulus 7363 (.shr 5988 8) := by core033_kernel_decide
theorem stats7363 : actualRows7363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7363=4548 := by core033_kernel_decide
theorem rows7364 : actualRows7364=WordField.canonicalRows actualModulus 7364 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7364 : actualRows7364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7364=2820 := by core033_kernel_decide
theorem rows7365 : actualRows7365=WordField.canonicalRows actualModulus 7365 (.bnot 7364) := by core033_kernel_decide
theorem stats7365 : actualRows7365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7365=6276 := by core033_kernel_decide
theorem rows7366 : actualRows7366=WordField.canonicalRows actualModulus 7366 (.bxor 7363 7365) := by core033_kernel_decide
theorem stats7366 : actualRows7366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7366=7428 := by core033_kernel_decide
theorem rows7367 : actualRows7367=WordField.canonicalRows actualModulus 7367 (.shr 5988 8) := by core033_kernel_decide
theorem stats7367 : actualRows7367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7367=4548 := by core033_kernel_decide
theorem rows7368 : actualRows7368=WordField.canonicalRows actualModulus 7368 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7368 : actualRows7368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7368=2820 := by core033_kernel_decide
theorem rows7369 : actualRows7369=WordField.canonicalRows actualModulus 7369 (.bnot 7368) := by core033_kernel_decide
theorem stats7369 : actualRows7369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7369=6276 := by core033_kernel_decide
theorem rows7370 : actualRows7370=WordField.canonicalRows actualModulus 7370 (.badd 7367 7369) := by core033_kernel_decide
theorem stats7370 : actualRows7370.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7370=5388 := by core033_kernel_decide
theorem rows7371 : actualRows7371=WordField.canonicalRows actualModulus 7371 (.bnot 7370) := by core033_kernel_decide
theorem stats7371 : actualRows7371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7371=6276 := by core033_kernel_decide
theorem rows7372 : actualRows7372=WordField.canonicalRows actualModulus 7372 (.band 7366 7371) := by core033_kernel_decide
theorem stats7372 : actualRows7372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7372=5124 := by core033_kernel_decide
theorem rows7373 : actualRows7373=WordField.canonicalRows actualModulus 7373 (.bxor 7362 7372) := by core033_kernel_decide
theorem stats7373 : actualRows7373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7373=7428 := by core033_kernel_decide
theorem rows7374 : actualRows7374=WordField.canonicalRows actualModulus 7374 (.shr 7373 31) := by core033_kernel_decide
theorem stats7374 : actualRows7374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7374=2892 := by core033_kernel_decide
theorem rows7375 : actualRows7375=WordField.canonicalRows actualModulus 7375 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7375 : actualRows7375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7375=2892 := by core033_kernel_decide
theorem rows7376 : actualRows7376=WordField.canonicalRows actualModulus 7376 (.bxor 7374 7375) := by core033_kernel_decide
theorem stats7376 : actualRows7376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7376=7428 := by core033_kernel_decide
theorem rows7377 : actualRows7377=WordField.canonicalRows actualModulus 7377 (.shr 6041 8) := by core033_kernel_decide
theorem stats7377 : actualRows7377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7377=4548 := by core033_kernel_decide
theorem rows7378 : actualRows7378=WordField.canonicalRows actualModulus 7378 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7378 : actualRows7378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7378=2820 := by core033_kernel_decide
theorem rows7379 : actualRows7379=WordField.canonicalRows actualModulus 7379 (.bnot 7378) := by core033_kernel_decide
theorem stats7379 : actualRows7379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7379=6276 := by core033_kernel_decide
theorem rows7380 : actualRows7380=WordField.canonicalRows actualModulus 7380 (.band 7377 7379) := by core033_kernel_decide
theorem stats7380 : actualRows7380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7380=5124 := by core033_kernel_decide
theorem rows7381 : actualRows7381=WordField.canonicalRows actualModulus 7381 (.shr 6041 8) := by core033_kernel_decide
theorem stats7381 : actualRows7381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7381=4548 := by core033_kernel_decide
theorem rows7382 : actualRows7382=WordField.canonicalRows actualModulus 7382 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7382 : actualRows7382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7382=2820 := by core033_kernel_decide
theorem rows7383 : actualRows7383=WordField.canonicalRows actualModulus 7383 (.bnot 7382) := by core033_kernel_decide
theorem stats7383 : actualRows7383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7383=6276 := by core033_kernel_decide
theorem rows7384 : actualRows7384=WordField.canonicalRows actualModulus 7384 (.bxor 7381 7383) := by core033_kernel_decide
theorem stats7384 : actualRows7384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7384=7428 := by core033_kernel_decide
theorem rows7385 : actualRows7385=WordField.canonicalRows actualModulus 7385 (.shr 6041 8) := by core033_kernel_decide
theorem stats7385 : actualRows7385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7385=4548 := by core033_kernel_decide
theorem rows7386 : actualRows7386=WordField.canonicalRows actualModulus 7386 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7386 : actualRows7386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7386=2820 := by core033_kernel_decide
theorem rows7387 : actualRows7387=WordField.canonicalRows actualModulus 7387 (.bnot 7386) := by core033_kernel_decide
theorem stats7387 : actualRows7387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7387=6276 := by core033_kernel_decide
theorem rows7388 : actualRows7388=WordField.canonicalRows actualModulus 7388 (.badd 7385 7387) := by core033_kernel_decide
theorem stats7388 : actualRows7388.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7388=5388 := by core033_kernel_decide
theorem rows7389 : actualRows7389=WordField.canonicalRows actualModulus 7389 (.bnot 7388) := by core033_kernel_decide
theorem stats7389 : actualRows7389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7389=6276 := by core033_kernel_decide
theorem rows7390 : actualRows7390=WordField.canonicalRows actualModulus 7390 (.band 7384 7389) := by core033_kernel_decide
theorem stats7390 : actualRows7390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7390=5124 := by core033_kernel_decide
theorem rows7391 : actualRows7391=WordField.canonicalRows actualModulus 7391 (.bxor 7380 7390) := by core033_kernel_decide
theorem stats7391 : actualRows7391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7391=7428 := by core033_kernel_decide
def partRows113 : List R1CS.Row := actualRows7328++actualRows7329++actualRows7330++actualRows7331++actualRows7332++actualRows7333++actualRows7334++actualRows7335++actualRows7336++actualRows7337++actualRows7338++actualRows7339++actualRows7340++actualRows7341++actualRows7342++actualRows7343++actualRows7344++actualRows7345++actualRows7346++actualRows7347++actualRows7348++actualRows7349++actualRows7350++actualRows7351++actualRows7352++actualRows7353++actualRows7354++actualRows7355++actualRows7356++actualRows7357++actualRows7358++actualRows7359++actualRows7360++actualRows7361++actualRows7362++actualRows7363++actualRows7364++actualRows7365++actualRows7366++actualRows7367++actualRows7368++actualRows7369++actualRows7370++actualRows7371++actualRows7372++actualRows7373++actualRows7374++actualRows7375++actualRows7376++actualRows7377++actualRows7378++actualRows7379++actualRows7380++actualRows7381++actualRows7382++actualRows7383++actualRows7384++actualRows7385++actualRows7386++actualRows7387++actualRows7388++actualRows7389++actualRows7390++actualRows7391
def partOps113 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 7328,.bxor 7327 7329,.shr 5882 8,.literal (BitVec.ofNat 32 0),.bnot 7332,.badd 7331 7333,.bnot 7334,.band 7330 7335,.bxor 7326 7336,.shr 7337 31,.literal (BitVec.ofNat 32 1),.bxor 7338 7339,.shr 5935 8,.literal (BitVec.ofNat 32 0),.bnot 7342,.band 7341 7343,.shr 5935 8,.literal (BitVec.ofNat 32 0),.bnot 7346,.bxor 7345 7347,.shr 5935 8,.literal (BitVec.ofNat 32 0),.bnot 7350,.badd 7349 7351,.bnot 7352,.band 7348 7353,.bxor 7344 7354,.shr 7355 31,.literal (BitVec.ofNat 32 1),.bxor 7356 7357,.shr 5988 8,.literal (BitVec.ofNat 32 0),.bnot 7360,.band 7359 7361,.shr 5988 8,.literal (BitVec.ofNat 32 0),.bnot 7364,.bxor 7363 7365,.shr 5988 8,.literal (BitVec.ofNat 32 0),.bnot 7368,.badd 7367 7369,.bnot 7370,.band 7366 7371,.bxor 7362 7372,.shr 7373 31,.literal (BitVec.ofNat 32 1),.bxor 7374 7375,.shr 6041 8,.literal (BitVec.ofNat 32 0),.bnot 7378,.band 7377 7379,.shr 6041 8,.literal (BitVec.ofNat 32 0),.bnot 7382,.bxor 7381 7383,.shr 6041 8,.literal (BitVec.ofNat 32 0),.bnot 7386,.badd 7385 7387,.bnot 7388,.band 7384 7389,.bxor 7380 7390]
theorem partExact113 : partRows113=WordField.rows actualModulus 7328 partOps113 := by
  simp only [partRows113,partOps113,WordField.rows,rows7328,rows7329,rows7330,rows7331,rows7332,rows7333,rows7334,rows7335,rows7336,rows7337,rows7338,rows7339,rows7340,rows7341,rows7342,rows7343,rows7344,rows7345,rows7346,rows7347,rows7348,rows7349,rows7350,rows7351,rows7352,rows7353,rows7354,rows7355,rows7356,rows7357,rows7358,rows7359,rows7360,rows7361,rows7362,rows7363,rows7364,rows7365,rows7366,rows7367,rows7368,rows7369,rows7370,rows7371,rows7372,rows7373,rows7374,rows7375,rows7376,rows7377,rows7378,rows7379,rows7380,rows7381,rows7382,rows7383,rows7384,rows7385,rows7386,rows7387,rows7388,rows7389,rows7390,rows7391,List.append_assoc,List.append_nil]
theorem partLength113 : partOps113.length=64 := by decide
theorem partStats113 : partRows113.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows113=327120 := by
  simp only [partRows113,List.length_append,MatrixRowBlocks.rows_weight_append,stats7328.1,stats7328.2,stats7329.1,stats7329.2,stats7330.1,stats7330.2,stats7331.1,stats7331.2,stats7332.1,stats7332.2,stats7333.1,stats7333.2,stats7334.1,stats7334.2,stats7335.1,stats7335.2,stats7336.1,stats7336.2,stats7337.1,stats7337.2,stats7338.1,stats7338.2,stats7339.1,stats7339.2,stats7340.1,stats7340.2,stats7341.1,stats7341.2,stats7342.1,stats7342.2,stats7343.1,stats7343.2,stats7344.1,stats7344.2,stats7345.1,stats7345.2,stats7346.1,stats7346.2,stats7347.1,stats7347.2,stats7348.1,stats7348.2,stats7349.1,stats7349.2,stats7350.1,stats7350.2,stats7351.1,stats7351.2,stats7352.1,stats7352.2,stats7353.1,stats7353.2,stats7354.1,stats7354.2,stats7355.1,stats7355.2,stats7356.1,stats7356.2,stats7357.1,stats7357.2,stats7358.1,stats7358.2,stats7359.1,stats7359.2,stats7360.1,stats7360.2,stats7361.1,stats7361.2,stats7362.1,stats7362.2,stats7363.1,stats7363.2,stats7364.1,stats7364.2,stats7365.1,stats7365.2,stats7366.1,stats7366.2,stats7367.1,stats7367.2,stats7368.1,stats7368.2,stats7369.1,stats7369.2,stats7370.1,stats7370.2,stats7371.1,stats7371.2,stats7372.1,stats7372.2,stats7373.1,stats7373.2,stats7374.1,stats7374.2,stats7375.1,stats7375.2,stats7376.1,stats7376.2,stats7377.1,stats7377.2,stats7378.1,stats7378.2,stats7379.1,stats7379.2,stats7380.1,stats7380.2,stats7381.1,stats7381.2,stats7382.1,stats7382.2,stats7383.1,stats7383.2,stats7384.1,stats7384.2,stats7385.1,stats7385.2,stats7386.1,stats7386.2,stats7387.1,stats7387.2,stats7388.1,stats7388.2,stats7389.1,stats7389.2,stats7390.1,stats7390.2,stats7391.1,stats7391.2]
  decide
end PairedPathRoundCheckedRows
