import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData114
import FrameHashControllerInstructionMatrixData115
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7339 : actualRows7339=WordField.canonicalRows actualModulus 7339 (.badd 7252 7338) := by core033_kernel_decide
theorem stats7339 : actualRows7339.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7339=5388 := by core033_kernel_decide
theorem rows7340 : actualRows7340=WordField.canonicalRows actualModulus 7340 (.band 7333 7306) := by core033_kernel_decide
theorem stats7340 : actualRows7340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7340=5124 := by core033_kernel_decide
theorem rows7341 : actualRows7341=WordField.canonicalRows actualModulus 7341 (.bnot 7333) := by core033_kernel_decide
theorem stats7341 : actualRows7341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7341=6276 := by core033_kernel_decide
theorem rows7342 : actualRows7342=WordField.canonicalRows actualModulus 7342 (.band 7341 7279) := by core033_kernel_decide
theorem stats7342 : actualRows7342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7342=5124 := by core033_kernel_decide
theorem rows7343 : actualRows7343=WordField.canonicalRows actualModulus 7343 (.bxor 7340 7342) := by core033_kernel_decide
theorem stats7343 : actualRows7343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7343=7428 := by core033_kernel_decide
theorem rows7344 : actualRows7344=WordField.canonicalRows actualModulus 7344 (.badd 7339 7343) := by core033_kernel_decide
theorem stats7344 : actualRows7344.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7344=5388 := by core033_kernel_decide
theorem rows7345 : actualRows7345=WordField.canonicalRows actualModulus 7345 (.literal (BitVec.ofNat 32 1426881987)) := by core033_kernel_decide
theorem stats7345 : actualRows7345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7345=3972 := by core033_kernel_decide
theorem rows7346 : actualRows7346=WordField.canonicalRows actualModulus 7346 (.badd 7344 7345) := by core033_kernel_decide
theorem stats7346 : actualRows7346.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7346=5388 := by core033_kernel_decide
theorem rows7347 : actualRows7347=WordField.canonicalRows actualModulus 7347 (.badd 7346 5236) := by core033_kernel_decide
theorem stats7347 : actualRows7347.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7347=5388 := by core033_kernel_decide
theorem rows7348 : actualRows7348=WordField.canonicalRows actualModulus 7348 (.rotr 7332 2) := by core033_kernel_decide
theorem stats7348 : actualRows7348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7348=5124 := by core033_kernel_decide
theorem rows7349 : actualRows7349=WordField.canonicalRows actualModulus 7349 (.rotr 7332 13) := by core033_kernel_decide
theorem stats7349 : actualRows7349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7349=5124 := by core033_kernel_decide
theorem rows7350 : actualRows7350=WordField.canonicalRows actualModulus 7350 (.bxor 7348 7349) := by core033_kernel_decide
theorem stats7350 : actualRows7350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7350=7428 := by core033_kernel_decide
theorem rows7351 : actualRows7351=WordField.canonicalRows actualModulus 7351 (.rotr 7332 22) := by core033_kernel_decide
theorem stats7351 : actualRows7351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7351=5124 := by core033_kernel_decide
theorem rows7352 : actualRows7352=WordField.canonicalRows actualModulus 7352 (.bxor 7350 7351) := by core033_kernel_decide
theorem stats7352 : actualRows7352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7352=7428 := by core033_kernel_decide
theorem rows7353 : actualRows7353=WordField.canonicalRows actualModulus 7353 (.band 7332 7305) := by core033_kernel_decide
theorem stats7353 : actualRows7353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7353=5124 := by core033_kernel_decide
theorem rows7354 : actualRows7354=WordField.canonicalRows actualModulus 7354 (.band 7332 7278) := by core033_kernel_decide
theorem stats7354 : actualRows7354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7354=5124 := by core033_kernel_decide
theorem rows7355 : actualRows7355=WordField.canonicalRows actualModulus 7355 (.bxor 7353 7354) := by core033_kernel_decide
theorem stats7355 : actualRows7355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7355=7428 := by core033_kernel_decide
theorem rows7356 : actualRows7356=WordField.canonicalRows actualModulus 7356 (.band 7305 7278) := by core033_kernel_decide
theorem stats7356 : actualRows7356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7356=5124 := by core033_kernel_decide
theorem rows7357 : actualRows7357=WordField.canonicalRows actualModulus 7357 (.bxor 7355 7356) := by core033_kernel_decide
theorem stats7357 : actualRows7357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7357=7428 := by core033_kernel_decide
theorem rows7358 : actualRows7358=WordField.canonicalRows actualModulus 7358 (.badd 7352 7357) := by core033_kernel_decide
theorem stats7358 : actualRows7358.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7358=5388 := by core033_kernel_decide
theorem rows7359 : actualRows7359=WordField.canonicalRows actualModulus 7359 (.badd 7347 7358) := by core033_kernel_decide
theorem stats7359 : actualRows7359.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7359=5388 := by core033_kernel_decide
theorem rows7360 : actualRows7360=WordField.canonicalRows actualModulus 7360 (.badd 7251 7347) := by core033_kernel_decide
theorem stats7360 : actualRows7360.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7360=5388 := by core033_kernel_decide
theorem rows7361 : actualRows7361=WordField.canonicalRows actualModulus 7361 (.rotr 7360 6) := by core033_kernel_decide
theorem stats7361 : actualRows7361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7361=5124 := by core033_kernel_decide
theorem rows7362 : actualRows7362=WordField.canonicalRows actualModulus 7362 (.rotr 7360 11) := by core033_kernel_decide
theorem stats7362 : actualRows7362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7362=5124 := by core033_kernel_decide
theorem rows7363 : actualRows7363=WordField.canonicalRows actualModulus 7363 (.bxor 7361 7362) := by core033_kernel_decide
theorem stats7363 : actualRows7363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7363=7428 := by core033_kernel_decide
theorem rows7364 : actualRows7364=WordField.canonicalRows actualModulus 7364 (.rotr 7360 25) := by core033_kernel_decide
theorem stats7364 : actualRows7364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7364=5124 := by core033_kernel_decide
theorem rows7365 : actualRows7365=WordField.canonicalRows actualModulus 7365 (.bxor 7363 7364) := by core033_kernel_decide
theorem stats7365 : actualRows7365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7365=7428 := by core033_kernel_decide
theorem rows7366 : actualRows7366=WordField.canonicalRows actualModulus 7366 (.badd 7279 7365) := by core033_kernel_decide
theorem stats7366 : actualRows7366.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7366=5388 := by core033_kernel_decide
theorem rows7367 : actualRows7367=WordField.canonicalRows actualModulus 7367 (.band 7360 7333) := by core033_kernel_decide
theorem stats7367 : actualRows7367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7367=5124 := by core033_kernel_decide
theorem rows7368 : actualRows7368=WordField.canonicalRows actualModulus 7368 (.bnot 7360) := by core033_kernel_decide
theorem stats7368 : actualRows7368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7368=6276 := by core033_kernel_decide
theorem rows7369 : actualRows7369=WordField.canonicalRows actualModulus 7369 (.band 7368 7306) := by core033_kernel_decide
theorem stats7369 : actualRows7369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7369=5124 := by core033_kernel_decide
theorem rows7370 : actualRows7370=WordField.canonicalRows actualModulus 7370 (.bxor 7367 7369) := by core033_kernel_decide
theorem stats7370 : actualRows7370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7370=7428 := by core033_kernel_decide
theorem rows7371 : actualRows7371=WordField.canonicalRows actualModulus 7371 (.badd 7366 7370) := by core033_kernel_decide
theorem stats7371 : actualRows7371.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7371=5388 := by core033_kernel_decide
theorem rows7372 : actualRows7372=WordField.canonicalRows actualModulus 7372 (.literal (BitVec.ofNat 32 1925078388)) := by core033_kernel_decide
theorem stats7372 : actualRows7372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7372=4188 := by core033_kernel_decide
theorem rows7373 : actualRows7373=WordField.canonicalRows actualModulus 7373 (.badd 7371 7372) := by core033_kernel_decide
theorem stats7373 : actualRows7373.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7373=5388 := by core033_kernel_decide
theorem rows7374 : actualRows7374=WordField.canonicalRows actualModulus 7374 (.badd 7373 5242) := by core033_kernel_decide
theorem stats7374 : actualRows7374.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7374=5388 := by core033_kernel_decide
theorem rows7375 : actualRows7375=WordField.canonicalRows actualModulus 7375 (.rotr 7359 2) := by core033_kernel_decide
theorem stats7375 : actualRows7375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7375=5124 := by core033_kernel_decide
theorem rows7376 : actualRows7376=WordField.canonicalRows actualModulus 7376 (.rotr 7359 13) := by core033_kernel_decide
theorem stats7376 : actualRows7376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7376=5124 := by core033_kernel_decide
theorem rows7377 : actualRows7377=WordField.canonicalRows actualModulus 7377 (.bxor 7375 7376) := by core033_kernel_decide
theorem stats7377 : actualRows7377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7377=7428 := by core033_kernel_decide
theorem rows7378 : actualRows7378=WordField.canonicalRows actualModulus 7378 (.rotr 7359 22) := by core033_kernel_decide
theorem stats7378 : actualRows7378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7378=5124 := by core033_kernel_decide
theorem rows7379 : actualRows7379=WordField.canonicalRows actualModulus 7379 (.bxor 7377 7378) := by core033_kernel_decide
theorem stats7379 : actualRows7379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7379=7428 := by core033_kernel_decide
theorem rows7380 : actualRows7380=WordField.canonicalRows actualModulus 7380 (.band 7359 7332) := by core033_kernel_decide
theorem stats7380 : actualRows7380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7380=5124 := by core033_kernel_decide
theorem rows7381 : actualRows7381=WordField.canonicalRows actualModulus 7381 (.band 7359 7305) := by core033_kernel_decide
theorem stats7381 : actualRows7381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7381=5124 := by core033_kernel_decide
theorem rows7382 : actualRows7382=WordField.canonicalRows actualModulus 7382 (.bxor 7380 7381) := by core033_kernel_decide
theorem stats7382 : actualRows7382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7382=7428 := by core033_kernel_decide
theorem rows7383 : actualRows7383=WordField.canonicalRows actualModulus 7383 (.band 7332 7305) := by core033_kernel_decide
theorem stats7383 : actualRows7383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7383=5124 := by core033_kernel_decide
theorem rows7384 : actualRows7384=WordField.canonicalRows actualModulus 7384 (.bxor 7382 7383) := by core033_kernel_decide
theorem stats7384 : actualRows7384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7384=7428 := by core033_kernel_decide
theorem rows7385 : actualRows7385=WordField.canonicalRows actualModulus 7385 (.badd 7379 7384) := by core033_kernel_decide
theorem stats7385 : actualRows7385.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7385=5388 := by core033_kernel_decide
theorem rows7386 : actualRows7386=WordField.canonicalRows actualModulus 7386 (.badd 7374 7385) := by core033_kernel_decide
theorem stats7386 : actualRows7386.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7386=5388 := by core033_kernel_decide
theorem rows7387 : actualRows7387=WordField.canonicalRows actualModulus 7387 (.badd 7278 7374) := by core033_kernel_decide
theorem stats7387 : actualRows7387.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7387=5388 := by core033_kernel_decide
theorem rows7388 : actualRows7388=WordField.canonicalRows actualModulus 7388 (.rotr 7387 6) := by core033_kernel_decide
theorem stats7388 : actualRows7388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7388=5124 := by core033_kernel_decide
theorem rows7389 : actualRows7389=WordField.canonicalRows actualModulus 7389 (.rotr 7387 11) := by core033_kernel_decide
theorem stats7389 : actualRows7389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7389=5124 := by core033_kernel_decide
theorem rows7390 : actualRows7390=WordField.canonicalRows actualModulus 7390 (.bxor 7388 7389) := by core033_kernel_decide
theorem stats7390 : actualRows7390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7390=7428 := by core033_kernel_decide
theorem rows7391 : actualRows7391=WordField.canonicalRows actualModulus 7391 (.rotr 7387 25) := by core033_kernel_decide
theorem stats7391 : actualRows7391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7391=5124 := by core033_kernel_decide
theorem rows7392 : actualRows7392=WordField.canonicalRows actualModulus 7392 (.bxor 7390 7391) := by core033_kernel_decide
theorem stats7392 : actualRows7392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7392=7428 := by core033_kernel_decide
theorem rows7393 : actualRows7393=WordField.canonicalRows actualModulus 7393 (.badd 7306 7392) := by core033_kernel_decide
theorem stats7393 : actualRows7393.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7393=5388 := by core033_kernel_decide
theorem rows7394 : actualRows7394=WordField.canonicalRows actualModulus 7394 (.band 7387 7360) := by core033_kernel_decide
theorem stats7394 : actualRows7394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7394=5124 := by core033_kernel_decide
theorem rows7395 : actualRows7395=WordField.canonicalRows actualModulus 7395 (.bnot 7387) := by core033_kernel_decide
theorem stats7395 : actualRows7395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7395=6276 := by core033_kernel_decide
theorem rows7396 : actualRows7396=WordField.canonicalRows actualModulus 7396 (.band 7395 7333) := by core033_kernel_decide
theorem stats7396 : actualRows7396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7396=5124 := by core033_kernel_decide
theorem rows7397 : actualRows7397=WordField.canonicalRows actualModulus 7397 (.bxor 7394 7396) := by core033_kernel_decide
theorem stats7397 : actualRows7397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7397=7428 := by core033_kernel_decide
theorem rows7398 : actualRows7398=WordField.canonicalRows actualModulus 7398 (.badd 7393 7397) := by core033_kernel_decide
theorem stats7398 : actualRows7398.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7398=5388 := by core033_kernel_decide
theorem rows7399 : actualRows7399=WordField.canonicalRows actualModulus 7399 (.literal (BitVec.ofNat 32 2162078206)) := by core033_kernel_decide
theorem stats7399 : actualRows7399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7399=4116 := by core033_kernel_decide
theorem rows7400 : actualRows7400=WordField.canonicalRows actualModulus 7400 (.badd 7398 7399) := by core033_kernel_decide
theorem stats7400 : actualRows7400.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7400=5388 := by core033_kernel_decide
theorem rows7401 : actualRows7401=WordField.canonicalRows actualModulus 7401 (.badd 7400 5248) := by core033_kernel_decide
theorem stats7401 : actualRows7401.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7401=5388 := by core033_kernel_decide
theorem rows7402 : actualRows7402=WordField.canonicalRows actualModulus 7402 (.rotr 7386 2) := by core033_kernel_decide
theorem stats7402 : actualRows7402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7402=5124 := by core033_kernel_decide
def partRows114 : List R1CS.Row := actualRows7339++actualRows7340++actualRows7341++actualRows7342++actualRows7343++actualRows7344++actualRows7345++actualRows7346++actualRows7347++actualRows7348++actualRows7349++actualRows7350++actualRows7351++actualRows7352++actualRows7353++actualRows7354++actualRows7355++actualRows7356++actualRows7357++actualRows7358++actualRows7359++actualRows7360++actualRows7361++actualRows7362++actualRows7363++actualRows7364++actualRows7365++actualRows7366++actualRows7367++actualRows7368++actualRows7369++actualRows7370++actualRows7371++actualRows7372++actualRows7373++actualRows7374++actualRows7375++actualRows7376++actualRows7377++actualRows7378++actualRows7379++actualRows7380++actualRows7381++actualRows7382++actualRows7383++actualRows7384++actualRows7385++actualRows7386++actualRows7387++actualRows7388++actualRows7389++actualRows7390++actualRows7391++actualRows7392++actualRows7393++actualRows7394++actualRows7395++actualRows7396++actualRows7397++actualRows7398++actualRows7399++actualRows7400++actualRows7401++actualRows7402
def partOps114 : List WordIR.Op := [.badd 7252 7338,.band 7333 7306,.bnot 7333,.band 7341 7279,.bxor 7340 7342,.badd 7339 7343,.literal (BitVec.ofNat 32 1426881987),.badd 7344 7345,.badd 7346 5236,.rotr 7332 2,.rotr 7332 13,.bxor 7348 7349,.rotr 7332 22,.bxor 7350 7351,.band 7332 7305,.band 7332 7278,.bxor 7353 7354,.band 7305 7278,.bxor 7355 7356,.badd 7352 7357,.badd 7347 7358,.badd 7251 7347,.rotr 7360 6,.rotr 7360 11,.bxor 7361 7362,.rotr 7360 25,.bxor 7363 7364,.badd 7279 7365,.band 7360 7333,.bnot 7360,.band 7368 7306,.bxor 7367 7369,.badd 7366 7370,.literal (BitVec.ofNat 32 1925078388),.badd 7371 7372,.badd 7373 5242,.rotr 7359 2,.rotr 7359 13,.bxor 7375 7376,.rotr 7359 22,.bxor 7377 7378,.band 7359 7332,.band 7359 7305,.bxor 7380 7381,.band 7332 7305,.bxor 7382 7383,.badd 7379 7384,.badd 7374 7385,.badd 7278 7374,.rotr 7387 6,.rotr 7387 11,.bxor 7388 7389,.rotr 7387 25,.bxor 7390 7391,.badd 7306 7392,.band 7387 7360,.bnot 7387,.band 7395 7333,.bxor 7394 7396,.badd 7393 7397,.literal (BitVec.ofNat 32 2162078206),.badd 7398 7399,.badd 7400 5248,.rotr 7386 2]
theorem partExact114 : partRows114=WordField.rows actualModulus 7339 partOps114 := by
  simp only [partRows114,partOps114,WordField.rows,rows7339,rows7340,rows7341,rows7342,rows7343,rows7344,rows7345,rows7346,rows7347,rows7348,rows7349,rows7350,rows7351,rows7352,rows7353,rows7354,rows7355,rows7356,rows7357,rows7358,rows7359,rows7360,rows7361,rows7362,rows7363,rows7364,rows7365,rows7366,rows7367,rows7368,rows7369,rows7370,rows7371,rows7372,rows7373,rows7374,rows7375,rows7376,rows7377,rows7378,rows7379,rows7380,rows7381,rows7382,rows7383,rows7384,rows7385,rows7386,rows7387,rows7388,rows7389,rows7390,rows7391,rows7392,rows7393,rows7394,rows7395,rows7396,rows7397,rows7398,rows7399,rows7400,rows7401,rows7402,List.append_assoc,List.append_nil]
theorem partLength114 : partOps114.length=64 := by decide
theorem partStats114 : partRows114.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows114=367608 := by
  simp only [partRows114,List.length_append,MatrixRowBlocks.rows_weight_append,stats7339.1,stats7339.2,stats7340.1,stats7340.2,stats7341.1,stats7341.2,stats7342.1,stats7342.2,stats7343.1,stats7343.2,stats7344.1,stats7344.2,stats7345.1,stats7345.2,stats7346.1,stats7346.2,stats7347.1,stats7347.2,stats7348.1,stats7348.2,stats7349.1,stats7349.2,stats7350.1,stats7350.2,stats7351.1,stats7351.2,stats7352.1,stats7352.2,stats7353.1,stats7353.2,stats7354.1,stats7354.2,stats7355.1,stats7355.2,stats7356.1,stats7356.2,stats7357.1,stats7357.2,stats7358.1,stats7358.2,stats7359.1,stats7359.2,stats7360.1,stats7360.2,stats7361.1,stats7361.2,stats7362.1,stats7362.2,stats7363.1,stats7363.2,stats7364.1,stats7364.2,stats7365.1,stats7365.2,stats7366.1,stats7366.2,stats7367.1,stats7367.2,stats7368.1,stats7368.2,stats7369.1,stats7369.2,stats7370.1,stats7370.2,stats7371.1,stats7371.2,stats7372.1,stats7372.2,stats7373.1,stats7373.2,stats7374.1,stats7374.2,stats7375.1,stats7375.2,stats7376.1,stats7376.2,stats7377.1,stats7377.2,stats7378.1,stats7378.2,stats7379.1,stats7379.2,stats7380.1,stats7380.2,stats7381.1,stats7381.2,stats7382.1,stats7382.2,stats7383.1,stats7383.2,stats7384.1,stats7384.2,stats7385.1,stats7385.2,stats7386.1,stats7386.2,stats7387.1,stats7387.2,stats7388.1,stats7388.2,stats7389.1,stats7389.2,stats7390.1,stats7390.2,stats7391.1,stats7391.2,stats7392.1,stats7392.2,stats7393.1,stats7393.2,stats7394.1,stats7394.2,stats7395.1,stats7395.2,stats7396.1,stats7396.2,stats7397.1,stats7397.2,stats7398.1,stats7398.2,stats7399.1,stats7399.2,stats7400.1,stats7400.2,stats7401.1,stats7401.2,stats7402.1,stats7402.2]
  decide
end FrameHashControllerCheckedRows
