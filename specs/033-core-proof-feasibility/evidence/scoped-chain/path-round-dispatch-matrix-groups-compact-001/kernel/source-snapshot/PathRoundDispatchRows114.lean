import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData114
import PathRoundDispatchInstructionMatrixData115
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7339 : actualRows7339=WordField.canonicalRows actualModulus 7339 (.rotr 7149 18) := by core033_kernel_decide
theorem stats7339 : actualRows7339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7339=5124 := by core033_kernel_decide
theorem rows7340 : actualRows7340=WordField.canonicalRows actualModulus 7340 (.bxor 7338 7339) := by core033_kernel_decide
theorem stats7340 : actualRows7340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7340=7428 := by core033_kernel_decide
theorem rows7341 : actualRows7341=WordField.canonicalRows actualModulus 7341 (.shr 7149 3) := by core033_kernel_decide
theorem stats7341 : actualRows7341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7341=4908 := by core033_kernel_decide
theorem rows7342 : actualRows7342=WordField.canonicalRows actualModulus 7342 (.bxor 7340 7341) := by core033_kernel_decide
theorem stats7342 : actualRows7342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7342=7428 := by core033_kernel_decide
theorem rows7343 : actualRows7343=WordField.canonicalRows actualModulus 7343 (.badd 7337 7342) := by core033_kernel_decide
theorem stats7343 : actualRows7343.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7343=5388 := by core033_kernel_decide
theorem rows7344 : actualRows7344=WordField.canonicalRows actualModulus 7344 (.badd 7343 7136) := by core033_kernel_decide
theorem stats7344 : actualRows7344.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7344=5388 := by core033_kernel_decide
theorem rows7345 : actualRows7345=WordField.canonicalRows actualModulus 7345 (.rotr 7331 17) := by core033_kernel_decide
theorem stats7345 : actualRows7345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7345=5124 := by core033_kernel_decide
theorem rows7346 : actualRows7346=WordField.canonicalRows actualModulus 7346 (.rotr 7331 19) := by core033_kernel_decide
theorem stats7346 : actualRows7346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7346=5124 := by core033_kernel_decide
theorem rows7347 : actualRows7347=WordField.canonicalRows actualModulus 7347 (.bxor 7345 7346) := by core033_kernel_decide
theorem stats7347 : actualRows7347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7347=7428 := by core033_kernel_decide
theorem rows7348 : actualRows7348=WordField.canonicalRows actualModulus 7348 (.shr 7331 10) := by core033_kernel_decide
theorem stats7348 : actualRows7348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7348=4404 := by core033_kernel_decide
theorem rows7349 : actualRows7349=WordField.canonicalRows actualModulus 7349 (.bxor 7347 7348) := by core033_kernel_decide
theorem stats7349 : actualRows7349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7349=7428 := by core033_kernel_decide
theorem rows7350 : actualRows7350=WordField.canonicalRows actualModulus 7350 (.badd 7349 7266) := by core033_kernel_decide
theorem stats7350 : actualRows7350.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7350=5388 := by core033_kernel_decide
theorem rows7351 : actualRows7351=WordField.canonicalRows actualModulus 7351 (.rotr 7162 7) := by core033_kernel_decide
theorem stats7351 : actualRows7351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7351=5124 := by core033_kernel_decide
theorem rows7352 : actualRows7352=WordField.canonicalRows actualModulus 7352 (.rotr 7162 18) := by core033_kernel_decide
theorem stats7352 : actualRows7352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7352=5124 := by core033_kernel_decide
theorem rows7353 : actualRows7353=WordField.canonicalRows actualModulus 7353 (.bxor 7351 7352) := by core033_kernel_decide
theorem stats7353 : actualRows7353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7353=7428 := by core033_kernel_decide
theorem rows7354 : actualRows7354=WordField.canonicalRows actualModulus 7354 (.shr 7162 3) := by core033_kernel_decide
theorem stats7354 : actualRows7354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7354=4908 := by core033_kernel_decide
theorem rows7355 : actualRows7355=WordField.canonicalRows actualModulus 7355 (.bxor 7353 7354) := by core033_kernel_decide
theorem stats7355 : actualRows7355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7355=7428 := by core033_kernel_decide
theorem rows7356 : actualRows7356=WordField.canonicalRows actualModulus 7356 (.badd 7350 7355) := by core033_kernel_decide
theorem stats7356 : actualRows7356.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7356=5388 := by core033_kernel_decide
theorem rows7357 : actualRows7357=WordField.canonicalRows actualModulus 7357 (.badd 7356 7149) := by core033_kernel_decide
theorem stats7357 : actualRows7357.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7357=5388 := by core033_kernel_decide
theorem rows7358 : actualRows7358=WordField.canonicalRows actualModulus 7358 (.rotr 7344 17) := by core033_kernel_decide
theorem stats7358 : actualRows7358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7358=5124 := by core033_kernel_decide
theorem rows7359 : actualRows7359=WordField.canonicalRows actualModulus 7359 (.rotr 7344 19) := by core033_kernel_decide
theorem stats7359 : actualRows7359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7359=5124 := by core033_kernel_decide
theorem rows7360 : actualRows7360=WordField.canonicalRows actualModulus 7360 (.bxor 7358 7359) := by core033_kernel_decide
theorem stats7360 : actualRows7360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7360=7428 := by core033_kernel_decide
theorem rows7361 : actualRows7361=WordField.canonicalRows actualModulus 7361 (.shr 7344 10) := by core033_kernel_decide
theorem stats7361 : actualRows7361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7361=4404 := by core033_kernel_decide
theorem rows7362 : actualRows7362=WordField.canonicalRows actualModulus 7362 (.bxor 7360 7361) := by core033_kernel_decide
theorem stats7362 : actualRows7362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7362=7428 := by core033_kernel_decide
theorem rows7363 : actualRows7363=WordField.canonicalRows actualModulus 7363 (.badd 7362 7279) := by core033_kernel_decide
theorem stats7363 : actualRows7363.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7363=5388 := by core033_kernel_decide
theorem rows7364 : actualRows7364=WordField.canonicalRows actualModulus 7364 (.rotr 7175 7) := by core033_kernel_decide
theorem stats7364 : actualRows7364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7364=5124 := by core033_kernel_decide
theorem rows7365 : actualRows7365=WordField.canonicalRows actualModulus 7365 (.rotr 7175 18) := by core033_kernel_decide
theorem stats7365 : actualRows7365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7365=5124 := by core033_kernel_decide
theorem rows7366 : actualRows7366=WordField.canonicalRows actualModulus 7366 (.bxor 7364 7365) := by core033_kernel_decide
theorem stats7366 : actualRows7366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7366=7428 := by core033_kernel_decide
theorem rows7367 : actualRows7367=WordField.canonicalRows actualModulus 7367 (.shr 7175 3) := by core033_kernel_decide
theorem stats7367 : actualRows7367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7367=4908 := by core033_kernel_decide
theorem rows7368 : actualRows7368=WordField.canonicalRows actualModulus 7368 (.bxor 7366 7367) := by core033_kernel_decide
theorem stats7368 : actualRows7368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7368=7428 := by core033_kernel_decide
theorem rows7369 : actualRows7369=WordField.canonicalRows actualModulus 7369 (.badd 7363 7368) := by core033_kernel_decide
theorem stats7369 : actualRows7369.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7369=5388 := by core033_kernel_decide
theorem rows7370 : actualRows7370=WordField.canonicalRows actualModulus 7370 (.badd 7369 7162) := by core033_kernel_decide
theorem stats7370 : actualRows7370.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7370=5388 := by core033_kernel_decide
theorem rows7371 : actualRows7371=WordField.canonicalRows actualModulus 7371 (.rotr 7357 17) := by core033_kernel_decide
theorem stats7371 : actualRows7371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7371=5124 := by core033_kernel_decide
theorem rows7372 : actualRows7372=WordField.canonicalRows actualModulus 7372 (.rotr 7357 19) := by core033_kernel_decide
theorem stats7372 : actualRows7372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7372=5124 := by core033_kernel_decide
theorem rows7373 : actualRows7373=WordField.canonicalRows actualModulus 7373 (.bxor 7371 7372) := by core033_kernel_decide
theorem stats7373 : actualRows7373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7373=7428 := by core033_kernel_decide
theorem rows7374 : actualRows7374=WordField.canonicalRows actualModulus 7374 (.shr 7357 10) := by core033_kernel_decide
theorem stats7374 : actualRows7374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7374=4404 := by core033_kernel_decide
theorem rows7375 : actualRows7375=WordField.canonicalRows actualModulus 7375 (.bxor 7373 7374) := by core033_kernel_decide
theorem stats7375 : actualRows7375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7375=7428 := by core033_kernel_decide
theorem rows7376 : actualRows7376=WordField.canonicalRows actualModulus 7376 (.badd 7375 7292) := by core033_kernel_decide
theorem stats7376 : actualRows7376.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7376=5388 := by core033_kernel_decide
theorem rows7377 : actualRows7377=WordField.canonicalRows actualModulus 7377 (.rotr 7188 7) := by core033_kernel_decide
theorem stats7377 : actualRows7377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7377=5124 := by core033_kernel_decide
theorem rows7378 : actualRows7378=WordField.canonicalRows actualModulus 7378 (.rotr 7188 18) := by core033_kernel_decide
theorem stats7378 : actualRows7378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7378=5124 := by core033_kernel_decide
theorem rows7379 : actualRows7379=WordField.canonicalRows actualModulus 7379 (.bxor 7377 7378) := by core033_kernel_decide
theorem stats7379 : actualRows7379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7379=7428 := by core033_kernel_decide
theorem rows7380 : actualRows7380=WordField.canonicalRows actualModulus 7380 (.shr 7188 3) := by core033_kernel_decide
theorem stats7380 : actualRows7380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7380=4908 := by core033_kernel_decide
theorem rows7381 : actualRows7381=WordField.canonicalRows actualModulus 7381 (.bxor 7379 7380) := by core033_kernel_decide
theorem stats7381 : actualRows7381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7381=7428 := by core033_kernel_decide
theorem rows7382 : actualRows7382=WordField.canonicalRows actualModulus 7382 (.badd 7376 7381) := by core033_kernel_decide
theorem stats7382 : actualRows7382.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7382=5388 := by core033_kernel_decide
theorem rows7383 : actualRows7383=WordField.canonicalRows actualModulus 7383 (.badd 7382 7175) := by core033_kernel_decide
theorem stats7383 : actualRows7383.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7383=5388 := by core033_kernel_decide
theorem rows7384 : actualRows7384=WordField.canonicalRows actualModulus 7384 (.rotr 7370 17) := by core033_kernel_decide
theorem stats7384 : actualRows7384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7384=5124 := by core033_kernel_decide
theorem rows7385 : actualRows7385=WordField.canonicalRows actualModulus 7385 (.rotr 7370 19) := by core033_kernel_decide
theorem stats7385 : actualRows7385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7385=5124 := by core033_kernel_decide
theorem rows7386 : actualRows7386=WordField.canonicalRows actualModulus 7386 (.bxor 7384 7385) := by core033_kernel_decide
theorem stats7386 : actualRows7386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7386=7428 := by core033_kernel_decide
theorem rows7387 : actualRows7387=WordField.canonicalRows actualModulus 7387 (.shr 7370 10) := by core033_kernel_decide
theorem stats7387 : actualRows7387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7387=4404 := by core033_kernel_decide
theorem rows7388 : actualRows7388=WordField.canonicalRows actualModulus 7388 (.bxor 7386 7387) := by core033_kernel_decide
theorem stats7388 : actualRows7388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7388=7428 := by core033_kernel_decide
theorem rows7389 : actualRows7389=WordField.canonicalRows actualModulus 7389 (.badd 7388 7305) := by core033_kernel_decide
theorem stats7389 : actualRows7389.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7389=5388 := by core033_kernel_decide
theorem rows7390 : actualRows7390=WordField.canonicalRows actualModulus 7390 (.rotr 7201 7) := by core033_kernel_decide
theorem stats7390 : actualRows7390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7390=5124 := by core033_kernel_decide
theorem rows7391 : actualRows7391=WordField.canonicalRows actualModulus 7391 (.rotr 7201 18) := by core033_kernel_decide
theorem stats7391 : actualRows7391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7391=5124 := by core033_kernel_decide
theorem rows7392 : actualRows7392=WordField.canonicalRows actualModulus 7392 (.bxor 7390 7391) := by core033_kernel_decide
theorem stats7392 : actualRows7392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7392=7428 := by core033_kernel_decide
theorem rows7393 : actualRows7393=WordField.canonicalRows actualModulus 7393 (.shr 7201 3) := by core033_kernel_decide
theorem stats7393 : actualRows7393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7393=4908 := by core033_kernel_decide
theorem rows7394 : actualRows7394=WordField.canonicalRows actualModulus 7394 (.bxor 7392 7393) := by core033_kernel_decide
theorem stats7394 : actualRows7394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7394=7428 := by core033_kernel_decide
theorem rows7395 : actualRows7395=WordField.canonicalRows actualModulus 7395 (.badd 7389 7394) := by core033_kernel_decide
theorem stats7395 : actualRows7395.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7395=5388 := by core033_kernel_decide
theorem rows7396 : actualRows7396=WordField.canonicalRows actualModulus 7396 (.badd 7395 7188) := by core033_kernel_decide
theorem stats7396 : actualRows7396.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7396=5388 := by core033_kernel_decide
theorem rows7397 : actualRows7397=WordField.canonicalRows actualModulus 7397 (.rotr 7383 17) := by core033_kernel_decide
theorem stats7397 : actualRows7397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7397=5124 := by core033_kernel_decide
theorem rows7398 : actualRows7398=WordField.canonicalRows actualModulus 7398 (.rotr 7383 19) := by core033_kernel_decide
theorem stats7398 : actualRows7398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7398=5124 := by core033_kernel_decide
theorem rows7399 : actualRows7399=WordField.canonicalRows actualModulus 7399 (.bxor 7397 7398) := by core033_kernel_decide
theorem stats7399 : actualRows7399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7399=7428 := by core033_kernel_decide
theorem rows7400 : actualRows7400=WordField.canonicalRows actualModulus 7400 (.shr 7383 10) := by core033_kernel_decide
theorem stats7400 : actualRows7400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7400=4404 := by core033_kernel_decide
theorem rows7401 : actualRows7401=WordField.canonicalRows actualModulus 7401 (.bxor 7399 7400) := by core033_kernel_decide
theorem stats7401 : actualRows7401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7401=7428 := by core033_kernel_decide
theorem rows7402 : actualRows7402=WordField.canonicalRows actualModulus 7402 (.badd 7401 7318) := by core033_kernel_decide
theorem stats7402 : actualRows7402.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7402=5388 := by core033_kernel_decide
def partRows114 : List R1CS.Row := actualRows7339++actualRows7340++actualRows7341++actualRows7342++actualRows7343++actualRows7344++actualRows7345++actualRows7346++actualRows7347++actualRows7348++actualRows7349++actualRows7350++actualRows7351++actualRows7352++actualRows7353++actualRows7354++actualRows7355++actualRows7356++actualRows7357++actualRows7358++actualRows7359++actualRows7360++actualRows7361++actualRows7362++actualRows7363++actualRows7364++actualRows7365++actualRows7366++actualRows7367++actualRows7368++actualRows7369++actualRows7370++actualRows7371++actualRows7372++actualRows7373++actualRows7374++actualRows7375++actualRows7376++actualRows7377++actualRows7378++actualRows7379++actualRows7380++actualRows7381++actualRows7382++actualRows7383++actualRows7384++actualRows7385++actualRows7386++actualRows7387++actualRows7388++actualRows7389++actualRows7390++actualRows7391++actualRows7392++actualRows7393++actualRows7394++actualRows7395++actualRows7396++actualRows7397++actualRows7398++actualRows7399++actualRows7400++actualRows7401++actualRows7402
def partOps114 : List WordIR.Op := [.rotr 7149 18,.bxor 7338 7339,.shr 7149 3,.bxor 7340 7341,.badd 7337 7342,.badd 7343 7136,.rotr 7331 17,.rotr 7331 19,.bxor 7345 7346,.shr 7331 10,.bxor 7347 7348,.badd 7349 7266,.rotr 7162 7,.rotr 7162 18,.bxor 7351 7352,.shr 7162 3,.bxor 7353 7354,.badd 7350 7355,.badd 7356 7149,.rotr 7344 17,.rotr 7344 19,.bxor 7358 7359,.shr 7344 10,.bxor 7360 7361,.badd 7362 7279,.rotr 7175 7,.rotr 7175 18,.bxor 7364 7365,.shr 7175 3,.bxor 7366 7367,.badd 7363 7368,.badd 7369 7162,.rotr 7357 17,.rotr 7357 19,.bxor 7371 7372,.shr 7357 10,.bxor 7373 7374,.badd 7375 7292,.rotr 7188 7,.rotr 7188 18,.bxor 7377 7378,.shr 7188 3,.bxor 7379 7380,.badd 7376 7381,.badd 7382 7175,.rotr 7370 17,.rotr 7370 19,.bxor 7384 7385,.shr 7370 10,.bxor 7386 7387,.badd 7388 7305,.rotr 7201 7,.rotr 7201 18,.bxor 7390 7391,.shr 7201 3,.bxor 7392 7393,.badd 7389 7394,.badd 7395 7188,.rotr 7383 17,.rotr 7383 19,.bxor 7397 7398,.shr 7383 10,.bxor 7399 7400,.badd 7401 7318]
theorem partExact114 : partRows114=WordField.rows actualModulus 7339 partOps114 := by
  simp only [partRows114,partOps114,WordField.rows,rows7339,rows7340,rows7341,rows7342,rows7343,rows7344,rows7345,rows7346,rows7347,rows7348,rows7349,rows7350,rows7351,rows7352,rows7353,rows7354,rows7355,rows7356,rows7357,rows7358,rows7359,rows7360,rows7361,rows7362,rows7363,rows7364,rows7365,rows7366,rows7367,rows7368,rows7369,rows7370,rows7371,rows7372,rows7373,rows7374,rows7375,rows7376,rows7377,rows7378,rows7379,rows7380,rows7381,rows7382,rows7383,rows7384,rows7385,rows7386,rows7387,rows7388,rows7389,rows7390,rows7391,rows7392,rows7393,rows7394,rows7395,rows7396,rows7397,rows7398,rows7399,rows7400,rows7401,rows7402,List.append_assoc,List.append_nil]
theorem partLength114 : partOps114.length=64 := by decide
theorem partStats114 : partRows114.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows114=373296 := by
  simp only [partRows114,List.length_append,MatrixRowBlocks.rows_weight_append,stats7339.1,stats7339.2,stats7340.1,stats7340.2,stats7341.1,stats7341.2,stats7342.1,stats7342.2,stats7343.1,stats7343.2,stats7344.1,stats7344.2,stats7345.1,stats7345.2,stats7346.1,stats7346.2,stats7347.1,stats7347.2,stats7348.1,stats7348.2,stats7349.1,stats7349.2,stats7350.1,stats7350.2,stats7351.1,stats7351.2,stats7352.1,stats7352.2,stats7353.1,stats7353.2,stats7354.1,stats7354.2,stats7355.1,stats7355.2,stats7356.1,stats7356.2,stats7357.1,stats7357.2,stats7358.1,stats7358.2,stats7359.1,stats7359.2,stats7360.1,stats7360.2,stats7361.1,stats7361.2,stats7362.1,stats7362.2,stats7363.1,stats7363.2,stats7364.1,stats7364.2,stats7365.1,stats7365.2,stats7366.1,stats7366.2,stats7367.1,stats7367.2,stats7368.1,stats7368.2,stats7369.1,stats7369.2,stats7370.1,stats7370.2,stats7371.1,stats7371.2,stats7372.1,stats7372.2,stats7373.1,stats7373.2,stats7374.1,stats7374.2,stats7375.1,stats7375.2,stats7376.1,stats7376.2,stats7377.1,stats7377.2,stats7378.1,stats7378.2,stats7379.1,stats7379.2,stats7380.1,stats7380.2,stats7381.1,stats7381.2,stats7382.1,stats7382.2,stats7383.1,stats7383.2,stats7384.1,stats7384.2,stats7385.1,stats7385.2,stats7386.1,stats7386.2,stats7387.1,stats7387.2,stats7388.1,stats7388.2,stats7389.1,stats7389.2,stats7390.1,stats7390.2,stats7391.1,stats7391.2,stats7392.1,stats7392.2,stats7393.1,stats7393.2,stats7394.1,stats7394.2,stats7395.1,stats7395.2,stats7396.1,stats7396.2,stats7397.1,stats7397.2,stats7398.1,stats7398.2,stats7399.1,stats7399.2,stats7400.1,stats7400.2,stats7401.1,stats7401.2,stats7402.1,stats7402.2]
  decide
end PathRoundDispatchCheckedRows
