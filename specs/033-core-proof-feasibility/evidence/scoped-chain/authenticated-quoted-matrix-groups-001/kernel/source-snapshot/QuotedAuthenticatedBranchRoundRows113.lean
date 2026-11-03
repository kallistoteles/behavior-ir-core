import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData114
import AuthenticatedBranchRoundInstructionMatrixData115
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7350 : actualRows7350=WordField.canonicalRows actualModulus 7350 (.bnot 7349) := by core033_kernel_decide
theorem stats7350 : actualRows7350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7350=6276 := by core033_kernel_decide
theorem rows7351 : actualRows7351=WordField.canonicalRows actualModulus 7351 (.badd 7348 7350) := by core033_kernel_decide
theorem stats7351 : actualRows7351.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7351=5388 := by core033_kernel_decide
theorem rows7352 : actualRows7352=WordField.canonicalRows actualModulus 7352 (.bnot 7351) := by core033_kernel_decide
theorem stats7352 : actualRows7352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7352=6276 := by core033_kernel_decide
theorem rows7353 : actualRows7353=WordField.canonicalRows actualModulus 7353 (.band 7347 7352) := by core033_kernel_decide
theorem stats7353 : actualRows7353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7353=5124 := by core033_kernel_decide
theorem rows7354 : actualRows7354=WordField.canonicalRows actualModulus 7354 (.bxor 7343 7353) := by core033_kernel_decide
theorem stats7354 : actualRows7354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7354=7428 := by core033_kernel_decide
theorem rows7355 : actualRows7355=WordField.canonicalRows actualModulus 7355 (.shr 7354 31) := by core033_kernel_decide
theorem stats7355 : actualRows7355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7355=2892 := by core033_kernel_decide
theorem rows7356 : actualRows7356=WordField.canonicalRows actualModulus 7356 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7356 : actualRows7356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7356=2892 := by core033_kernel_decide
theorem rows7357 : actualRows7357=WordField.canonicalRows actualModulus 7357 (.bxor 7355 7356) := by core033_kernel_decide
theorem stats7357 : actualRows7357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7357=7428 := by core033_kernel_decide
theorem rows7358 : actualRows7358=WordField.canonicalRows actualModulus 7358 (.shr 4686 8) := by core033_kernel_decide
theorem stats7358 : actualRows7358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7358=4548 := by core033_kernel_decide
theorem rows7359 : actualRows7359=WordField.canonicalRows actualModulus 7359 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7359 : actualRows7359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7359=2820 := by core033_kernel_decide
theorem rows7360 : actualRows7360=WordField.canonicalRows actualModulus 7360 (.bnot 7359) := by core033_kernel_decide
theorem stats7360 : actualRows7360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7360=6276 := by core033_kernel_decide
theorem rows7361 : actualRows7361=WordField.canonicalRows actualModulus 7361 (.band 7358 7360) := by core033_kernel_decide
theorem stats7361 : actualRows7361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7361=5124 := by core033_kernel_decide
theorem rows7362 : actualRows7362=WordField.canonicalRows actualModulus 7362 (.shr 4686 8) := by core033_kernel_decide
theorem stats7362 : actualRows7362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7362=4548 := by core033_kernel_decide
theorem rows7363 : actualRows7363=WordField.canonicalRows actualModulus 7363 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7363 : actualRows7363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7363=2820 := by core033_kernel_decide
theorem rows7364 : actualRows7364=WordField.canonicalRows actualModulus 7364 (.bnot 7363) := by core033_kernel_decide
theorem stats7364 : actualRows7364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7364=6276 := by core033_kernel_decide
theorem rows7365 : actualRows7365=WordField.canonicalRows actualModulus 7365 (.bxor 7362 7364) := by core033_kernel_decide
theorem stats7365 : actualRows7365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7365=7428 := by core033_kernel_decide
theorem rows7366 : actualRows7366=WordField.canonicalRows actualModulus 7366 (.shr 4686 8) := by core033_kernel_decide
theorem stats7366 : actualRows7366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7366=4548 := by core033_kernel_decide
theorem rows7367 : actualRows7367=WordField.canonicalRows actualModulus 7367 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7367 : actualRows7367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7367=2820 := by core033_kernel_decide
theorem rows7368 : actualRows7368=WordField.canonicalRows actualModulus 7368 (.bnot 7367) := by core033_kernel_decide
theorem stats7368 : actualRows7368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7368=6276 := by core033_kernel_decide
theorem rows7369 : actualRows7369=WordField.canonicalRows actualModulus 7369 (.badd 7366 7368) := by core033_kernel_decide
theorem stats7369 : actualRows7369.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7369=5388 := by core033_kernel_decide
theorem rows7370 : actualRows7370=WordField.canonicalRows actualModulus 7370 (.bnot 7369) := by core033_kernel_decide
theorem stats7370 : actualRows7370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7370=6276 := by core033_kernel_decide
theorem rows7371 : actualRows7371=WordField.canonicalRows actualModulus 7371 (.band 7365 7370) := by core033_kernel_decide
theorem stats7371 : actualRows7371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7371=5124 := by core033_kernel_decide
theorem rows7372 : actualRows7372=WordField.canonicalRows actualModulus 7372 (.bxor 7361 7371) := by core033_kernel_decide
theorem stats7372 : actualRows7372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7372=7428 := by core033_kernel_decide
theorem rows7373 : actualRows7373=WordField.canonicalRows actualModulus 7373 (.shr 7372 31) := by core033_kernel_decide
theorem stats7373 : actualRows7373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7373=2892 := by core033_kernel_decide
theorem rows7374 : actualRows7374=WordField.canonicalRows actualModulus 7374 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7374 : actualRows7374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7374=2892 := by core033_kernel_decide
theorem rows7375 : actualRows7375=WordField.canonicalRows actualModulus 7375 (.bxor 7373 7374) := by core033_kernel_decide
theorem stats7375 : actualRows7375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7375=7428 := by core033_kernel_decide
theorem rows7376 : actualRows7376=WordField.canonicalRows actualModulus 7376 (.shr 4738 8) := by core033_kernel_decide
theorem stats7376 : actualRows7376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7376=4548 := by core033_kernel_decide
theorem rows7377 : actualRows7377=WordField.canonicalRows actualModulus 7377 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7377 : actualRows7377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7377=2820 := by core033_kernel_decide
theorem rows7378 : actualRows7378=WordField.canonicalRows actualModulus 7378 (.bnot 7377) := by core033_kernel_decide
theorem stats7378 : actualRows7378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7378=6276 := by core033_kernel_decide
theorem rows7379 : actualRows7379=WordField.canonicalRows actualModulus 7379 (.band 7376 7378) := by core033_kernel_decide
theorem stats7379 : actualRows7379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7379=5124 := by core033_kernel_decide
theorem rows7380 : actualRows7380=WordField.canonicalRows actualModulus 7380 (.shr 4738 8) := by core033_kernel_decide
theorem stats7380 : actualRows7380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7380=4548 := by core033_kernel_decide
theorem rows7381 : actualRows7381=WordField.canonicalRows actualModulus 7381 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7381 : actualRows7381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7381=2820 := by core033_kernel_decide
theorem rows7382 : actualRows7382=WordField.canonicalRows actualModulus 7382 (.bnot 7381) := by core033_kernel_decide
theorem stats7382 : actualRows7382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7382=6276 := by core033_kernel_decide
theorem rows7383 : actualRows7383=WordField.canonicalRows actualModulus 7383 (.bxor 7380 7382) := by core033_kernel_decide
theorem stats7383 : actualRows7383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7383=7428 := by core033_kernel_decide
theorem rows7384 : actualRows7384=WordField.canonicalRows actualModulus 7384 (.shr 4738 8) := by core033_kernel_decide
theorem stats7384 : actualRows7384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7384=4548 := by core033_kernel_decide
theorem rows7385 : actualRows7385=WordField.canonicalRows actualModulus 7385 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7385 : actualRows7385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7385=2820 := by core033_kernel_decide
theorem rows7386 : actualRows7386=WordField.canonicalRows actualModulus 7386 (.bnot 7385) := by core033_kernel_decide
theorem stats7386 : actualRows7386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7386=6276 := by core033_kernel_decide
theorem rows7387 : actualRows7387=WordField.canonicalRows actualModulus 7387 (.badd 7384 7386) := by core033_kernel_decide
theorem stats7387 : actualRows7387.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7387=5388 := by core033_kernel_decide
theorem rows7388 : actualRows7388=WordField.canonicalRows actualModulus 7388 (.bnot 7387) := by core033_kernel_decide
theorem stats7388 : actualRows7388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7388=6276 := by core033_kernel_decide
theorem rows7389 : actualRows7389=WordField.canonicalRows actualModulus 7389 (.band 7383 7388) := by core033_kernel_decide
theorem stats7389 : actualRows7389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7389=5124 := by core033_kernel_decide
theorem rows7390 : actualRows7390=WordField.canonicalRows actualModulus 7390 (.bxor 7379 7389) := by core033_kernel_decide
theorem stats7390 : actualRows7390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7390=7428 := by core033_kernel_decide
theorem rows7391 : actualRows7391=WordField.canonicalRows actualModulus 7391 (.shr 7390 31) := by core033_kernel_decide
theorem stats7391 : actualRows7391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7391=2892 := by core033_kernel_decide
theorem rows7392 : actualRows7392=WordField.canonicalRows actualModulus 7392 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7392 : actualRows7392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7392=2892 := by core033_kernel_decide
theorem rows7393 : actualRows7393=WordField.canonicalRows actualModulus 7393 (.bxor 7391 7392) := by core033_kernel_decide
theorem stats7393 : actualRows7393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7393=7428 := by core033_kernel_decide
theorem rows7394 : actualRows7394=WordField.canonicalRows actualModulus 7394 (.shr 4790 8) := by core033_kernel_decide
theorem stats7394 : actualRows7394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7394=4548 := by core033_kernel_decide
theorem rows7395 : actualRows7395=WordField.canonicalRows actualModulus 7395 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7395 : actualRows7395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7395=2820 := by core033_kernel_decide
theorem rows7396 : actualRows7396=WordField.canonicalRows actualModulus 7396 (.bnot 7395) := by core033_kernel_decide
theorem stats7396 : actualRows7396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7396=6276 := by core033_kernel_decide
theorem rows7397 : actualRows7397=WordField.canonicalRows actualModulus 7397 (.band 7394 7396) := by core033_kernel_decide
theorem stats7397 : actualRows7397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7397=5124 := by core033_kernel_decide
theorem rows7398 : actualRows7398=WordField.canonicalRows actualModulus 7398 (.shr 4790 8) := by core033_kernel_decide
theorem stats7398 : actualRows7398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7398=4548 := by core033_kernel_decide
theorem rows7399 : actualRows7399=WordField.canonicalRows actualModulus 7399 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7399 : actualRows7399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7399=2820 := by core033_kernel_decide
theorem rows7400 : actualRows7400=WordField.canonicalRows actualModulus 7400 (.bnot 7399) := by core033_kernel_decide
theorem stats7400 : actualRows7400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7400=6276 := by core033_kernel_decide
theorem rows7401 : actualRows7401=WordField.canonicalRows actualModulus 7401 (.bxor 7398 7400) := by core033_kernel_decide
theorem stats7401 : actualRows7401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7401=7428 := by core033_kernel_decide
theorem rows7402 : actualRows7402=WordField.canonicalRows actualModulus 7402 (.shr 4790 8) := by core033_kernel_decide
theorem stats7402 : actualRows7402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7402=4548 := by core033_kernel_decide
theorem rows7403 : actualRows7403=WordField.canonicalRows actualModulus 7403 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7403 : actualRows7403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7403=2820 := by core033_kernel_decide
theorem rows7404 : actualRows7404=WordField.canonicalRows actualModulus 7404 (.bnot 7403) := by core033_kernel_decide
theorem stats7404 : actualRows7404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7404=6276 := by core033_kernel_decide
theorem rows7405 : actualRows7405=WordField.canonicalRows actualModulus 7405 (.badd 7402 7404) := by core033_kernel_decide
theorem stats7405 : actualRows7405.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7405=5388 := by core033_kernel_decide
theorem rows7406 : actualRows7406=WordField.canonicalRows actualModulus 7406 (.bnot 7405) := by core033_kernel_decide
theorem stats7406 : actualRows7406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7406=6276 := by core033_kernel_decide
theorem rows7407 : actualRows7407=WordField.canonicalRows actualModulus 7407 (.band 7401 7406) := by core033_kernel_decide
theorem stats7407 : actualRows7407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7407=5124 := by core033_kernel_decide
theorem rows7408 : actualRows7408=WordField.canonicalRows actualModulus 7408 (.bxor 7397 7407) := by core033_kernel_decide
theorem stats7408 : actualRows7408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7408=7428 := by core033_kernel_decide
theorem rows7409 : actualRows7409=WordField.canonicalRows actualModulus 7409 (.shr 7408 31) := by core033_kernel_decide
theorem stats7409 : actualRows7409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7409=2892 := by core033_kernel_decide
theorem rows7410 : actualRows7410=WordField.canonicalRows actualModulus 7410 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7410 : actualRows7410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7410=2892 := by core033_kernel_decide
theorem rows7411 : actualRows7411=WordField.canonicalRows actualModulus 7411 (.bxor 7409 7410) := by core033_kernel_decide
theorem stats7411 : actualRows7411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7411=7428 := by core033_kernel_decide
theorem rows7412 : actualRows7412=WordField.canonicalRows actualModulus 7412 (.shr 4842 8) := by core033_kernel_decide
theorem stats7412 : actualRows7412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7412=4548 := by core033_kernel_decide
theorem rows7413 : actualRows7413=WordField.canonicalRows actualModulus 7413 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7413 : actualRows7413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7413=2820 := by core033_kernel_decide
def partRows113 : List R1CS.Row := actualRows7350++actualRows7351++actualRows7352++actualRows7353++actualRows7354++actualRows7355++actualRows7356++actualRows7357++actualRows7358++actualRows7359++actualRows7360++actualRows7361++actualRows7362++actualRows7363++actualRows7364++actualRows7365++actualRows7366++actualRows7367++actualRows7368++actualRows7369++actualRows7370++actualRows7371++actualRows7372++actualRows7373++actualRows7374++actualRows7375++actualRows7376++actualRows7377++actualRows7378++actualRows7379++actualRows7380++actualRows7381++actualRows7382++actualRows7383++actualRows7384++actualRows7385++actualRows7386++actualRows7387++actualRows7388++actualRows7389++actualRows7390++actualRows7391++actualRows7392++actualRows7393++actualRows7394++actualRows7395++actualRows7396++actualRows7397++actualRows7398++actualRows7399++actualRows7400++actualRows7401++actualRows7402++actualRows7403++actualRows7404++actualRows7405++actualRows7406++actualRows7407++actualRows7408++actualRows7409++actualRows7410++actualRows7411++actualRows7412++actualRows7413
def partOps113 : List WordIR.Op := [.bnot 7349,.badd 7348 7350,.bnot 7351,.band 7347 7352,.bxor 7343 7353,.shr 7354 31,.literal (BitVec.ofNat 32 1),.bxor 7355 7356,.shr 4686 8,.literal (BitVec.ofNat 32 0),.bnot 7359,.band 7358 7360,.shr 4686 8,.literal (BitVec.ofNat 32 0),.bnot 7363,.bxor 7362 7364,.shr 4686 8,.literal (BitVec.ofNat 32 0),.bnot 7367,.badd 7366 7368,.bnot 7369,.band 7365 7370,.bxor 7361 7371,.shr 7372 31,.literal (BitVec.ofNat 32 1),.bxor 7373 7374,.shr 4738 8,.literal (BitVec.ofNat 32 0),.bnot 7377,.band 7376 7378,.shr 4738 8,.literal (BitVec.ofNat 32 0),.bnot 7381,.bxor 7380 7382,.shr 4738 8,.literal (BitVec.ofNat 32 0),.bnot 7385,.badd 7384 7386,.bnot 7387,.band 7383 7388,.bxor 7379 7389,.shr 7390 31,.literal (BitVec.ofNat 32 1),.bxor 7391 7392,.shr 4790 8,.literal (BitVec.ofNat 32 0),.bnot 7395,.band 7394 7396,.shr 4790 8,.literal (BitVec.ofNat 32 0),.bnot 7399,.bxor 7398 7400,.shr 4790 8,.literal (BitVec.ofNat 32 0),.bnot 7403,.badd 7402 7404,.bnot 7405,.band 7401 7406,.bxor 7397 7407,.shr 7408 31,.literal (BitVec.ofNat 32 1),.bxor 7409 7410,.shr 4842 8,.literal (BitVec.ofNat 32 0)]
theorem partExact113 : partRows113=WordField.rows actualModulus 7350 partOps113 := by
  simp only [partRows113,partOps113,WordField.rows,rows7350,rows7351,rows7352,rows7353,rows7354,rows7355,rows7356,rows7357,rows7358,rows7359,rows7360,rows7361,rows7362,rows7363,rows7364,rows7365,rows7366,rows7367,rows7368,rows7369,rows7370,rows7371,rows7372,rows7373,rows7374,rows7375,rows7376,rows7377,rows7378,rows7379,rows7380,rows7381,rows7382,rows7383,rows7384,rows7385,rows7386,rows7387,rows7388,rows7389,rows7390,rows7391,rows7392,rows7393,rows7394,rows7395,rows7396,rows7397,rows7398,rows7399,rows7400,rows7401,rows7402,rows7403,rows7404,rows7405,rows7406,rows7407,rows7408,rows7409,rows7410,rows7411,rows7412,rows7413,List.append_assoc,List.append_nil]
theorem partLength113 : partOps113.length=64 := by decide
theorem partStats113 : partRows113.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows113=323808 := by
  simp only [partRows113,List.length_append,MatrixRowBlocks.rows_weight_append,stats7350.1,stats7350.2,stats7351.1,stats7351.2,stats7352.1,stats7352.2,stats7353.1,stats7353.2,stats7354.1,stats7354.2,stats7355.1,stats7355.2,stats7356.1,stats7356.2,stats7357.1,stats7357.2,stats7358.1,stats7358.2,stats7359.1,stats7359.2,stats7360.1,stats7360.2,stats7361.1,stats7361.2,stats7362.1,stats7362.2,stats7363.1,stats7363.2,stats7364.1,stats7364.2,stats7365.1,stats7365.2,stats7366.1,stats7366.2,stats7367.1,stats7367.2,stats7368.1,stats7368.2,stats7369.1,stats7369.2,stats7370.1,stats7370.2,stats7371.1,stats7371.2,stats7372.1,stats7372.2,stats7373.1,stats7373.2,stats7374.1,stats7374.2,stats7375.1,stats7375.2,stats7376.1,stats7376.2,stats7377.1,stats7377.2,stats7378.1,stats7378.2,stats7379.1,stats7379.2,stats7380.1,stats7380.2,stats7381.1,stats7381.2,stats7382.1,stats7382.2,stats7383.1,stats7383.2,stats7384.1,stats7384.2,stats7385.1,stats7385.2,stats7386.1,stats7386.2,stats7387.1,stats7387.2,stats7388.1,stats7388.2,stats7389.1,stats7389.2,stats7390.1,stats7390.2,stats7391.1,stats7391.2,stats7392.1,stats7392.2,stats7393.1,stats7393.2,stats7394.1,stats7394.2,stats7395.1,stats7395.2,stats7396.1,stats7396.2,stats7397.1,stats7397.2,stats7398.1,stats7398.2,stats7399.1,stats7399.2,stats7400.1,stats7400.2,stats7401.1,stats7401.2,stats7402.1,stats7402.2,stats7403.1,stats7403.2,stats7404.1,stats7404.2,stats7405.1,stats7405.2,stats7406.1,stats7406.2,stats7407.1,stats7407.2,stats7408.1,stats7408.2,stats7409.1,stats7409.2,stats7410.1,stats7410.2,stats7411.1,stats7411.2,stats7412.1,stats7412.2,stats7413.1,stats7413.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
