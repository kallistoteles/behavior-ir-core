import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData5
import ActualMatrixData6
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows344 : actualRows344=WordField.canonicalRows actualModulus 344 (.bxor 342 343) := by core033_kernel_decide
theorem stats344 : actualRows344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows344=7428 := by core033_kernel_decide
theorem rows345 : actualRows345=WordField.canonicalRows actualModulus 345 (.shr 153 3) := by core033_kernel_decide
theorem stats345 : actualRows345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows345=4908 := by core033_kernel_decide
theorem rows346 : actualRows346=WordField.canonicalRows actualModulus 346 (.bxor 344 345) := by core033_kernel_decide
theorem stats346 : actualRows346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows346=7428 := by core033_kernel_decide
theorem rows347 : actualRows347=WordField.canonicalRows actualModulus 347 (.badd 341 346) := by core033_kernel_decide
theorem stats347 : actualRows347.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows347=5388 := by core033_kernel_decide
theorem rows348 : actualRows348=WordField.canonicalRows actualModulus 348 (.badd 347 140) := by core033_kernel_decide
theorem stats348 : actualRows348.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows348=5388 := by core033_kernel_decide
theorem rows349 : actualRows349=WordField.canonicalRows actualModulus 349 (.rotr 335 17) := by core033_kernel_decide
theorem stats349 : actualRows349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows349=5124 := by core033_kernel_decide
theorem rows350 : actualRows350=WordField.canonicalRows actualModulus 350 (.rotr 335 19) := by core033_kernel_decide
theorem stats350 : actualRows350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows350=5124 := by core033_kernel_decide
theorem rows351 : actualRows351=WordField.canonicalRows actualModulus 351 (.bxor 349 350) := by core033_kernel_decide
theorem stats351 : actualRows351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows351=7428 := by core033_kernel_decide
theorem rows352 : actualRows352=WordField.canonicalRows actualModulus 352 (.shr 335 10) := by core033_kernel_decide
theorem stats352 : actualRows352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows352=4404 := by core033_kernel_decide
theorem rows353 : actualRows353=WordField.canonicalRows actualModulus 353 (.bxor 351 352) := by core033_kernel_decide
theorem stats353 : actualRows353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows353=7428 := by core033_kernel_decide
theorem rows354 : actualRows354=WordField.canonicalRows actualModulus 354 (.badd 353 270) := by core033_kernel_decide
theorem stats354 : actualRows354.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows354=5388 := by core033_kernel_decide
theorem rows355 : actualRows355=WordField.canonicalRows actualModulus 355 (.rotr 166 7) := by core033_kernel_decide
theorem stats355 : actualRows355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows355=5124 := by core033_kernel_decide
theorem rows356 : actualRows356=WordField.canonicalRows actualModulus 356 (.rotr 166 18) := by core033_kernel_decide
theorem stats356 : actualRows356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows356=5124 := by core033_kernel_decide
theorem rows357 : actualRows357=WordField.canonicalRows actualModulus 357 (.bxor 355 356) := by core033_kernel_decide
theorem stats357 : actualRows357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows357=7428 := by core033_kernel_decide
theorem rows358 : actualRows358=WordField.canonicalRows actualModulus 358 (.shr 166 3) := by core033_kernel_decide
theorem stats358 : actualRows358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows358=4908 := by core033_kernel_decide
theorem rows359 : actualRows359=WordField.canonicalRows actualModulus 359 (.bxor 357 358) := by core033_kernel_decide
theorem stats359 : actualRows359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows359=7428 := by core033_kernel_decide
theorem rows360 : actualRows360=WordField.canonicalRows actualModulus 360 (.badd 354 359) := by core033_kernel_decide
theorem stats360 : actualRows360.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows360=5388 := by core033_kernel_decide
theorem rows361 : actualRows361=WordField.canonicalRows actualModulus 361 (.badd 360 153) := by core033_kernel_decide
theorem stats361 : actualRows361.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows361=5388 := by core033_kernel_decide
theorem rows362 : actualRows362=WordField.canonicalRows actualModulus 362 (.rotr 348 17) := by core033_kernel_decide
theorem stats362 : actualRows362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows362=5124 := by core033_kernel_decide
theorem rows363 : actualRows363=WordField.canonicalRows actualModulus 363 (.rotr 348 19) := by core033_kernel_decide
theorem stats363 : actualRows363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows363=5124 := by core033_kernel_decide
theorem rows364 : actualRows364=WordField.canonicalRows actualModulus 364 (.bxor 362 363) := by core033_kernel_decide
theorem stats364 : actualRows364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows364=7428 := by core033_kernel_decide
theorem rows365 : actualRows365=WordField.canonicalRows actualModulus 365 (.shr 348 10) := by core033_kernel_decide
theorem stats365 : actualRows365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows365=4404 := by core033_kernel_decide
theorem rows366 : actualRows366=WordField.canonicalRows actualModulus 366 (.bxor 364 365) := by core033_kernel_decide
theorem stats366 : actualRows366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows366=7428 := by core033_kernel_decide
theorem rows367 : actualRows367=WordField.canonicalRows actualModulus 367 (.badd 366 283) := by core033_kernel_decide
theorem stats367 : actualRows367.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows367=5388 := by core033_kernel_decide
theorem rows368 : actualRows368=WordField.canonicalRows actualModulus 368 (.rotr 179 7) := by core033_kernel_decide
theorem stats368 : actualRows368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows368=5124 := by core033_kernel_decide
theorem rows369 : actualRows369=WordField.canonicalRows actualModulus 369 (.rotr 179 18) := by core033_kernel_decide
theorem stats369 : actualRows369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows369=5124 := by core033_kernel_decide
theorem rows370 : actualRows370=WordField.canonicalRows actualModulus 370 (.bxor 368 369) := by core033_kernel_decide
theorem stats370 : actualRows370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows370=7428 := by core033_kernel_decide
theorem rows371 : actualRows371=WordField.canonicalRows actualModulus 371 (.shr 179 3) := by core033_kernel_decide
theorem stats371 : actualRows371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows371=4908 := by core033_kernel_decide
theorem rows372 : actualRows372=WordField.canonicalRows actualModulus 372 (.bxor 370 371) := by core033_kernel_decide
theorem stats372 : actualRows372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows372=7428 := by core033_kernel_decide
theorem rows373 : actualRows373=WordField.canonicalRows actualModulus 373 (.badd 367 372) := by core033_kernel_decide
theorem stats373 : actualRows373.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows373=5388 := by core033_kernel_decide
theorem rows374 : actualRows374=WordField.canonicalRows actualModulus 374 (.badd 373 166) := by core033_kernel_decide
theorem stats374 : actualRows374.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows374=5388 := by core033_kernel_decide
theorem rows375 : actualRows375=WordField.canonicalRows actualModulus 375 (.rotr 361 17) := by core033_kernel_decide
theorem stats375 : actualRows375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows375=5124 := by core033_kernel_decide
theorem rows376 : actualRows376=WordField.canonicalRows actualModulus 376 (.rotr 361 19) := by core033_kernel_decide
theorem stats376 : actualRows376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows376=5124 := by core033_kernel_decide
theorem rows377 : actualRows377=WordField.canonicalRows actualModulus 377 (.bxor 375 376) := by core033_kernel_decide
theorem stats377 : actualRows377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows377=7428 := by core033_kernel_decide
theorem rows378 : actualRows378=WordField.canonicalRows actualModulus 378 (.shr 361 10) := by core033_kernel_decide
theorem stats378 : actualRows378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows378=4404 := by core033_kernel_decide
theorem rows379 : actualRows379=WordField.canonicalRows actualModulus 379 (.bxor 377 378) := by core033_kernel_decide
theorem stats379 : actualRows379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows379=7428 := by core033_kernel_decide
theorem rows380 : actualRows380=WordField.canonicalRows actualModulus 380 (.badd 379 296) := by core033_kernel_decide
theorem stats380 : actualRows380.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows380=5388 := by core033_kernel_decide
theorem rows381 : actualRows381=WordField.canonicalRows actualModulus 381 (.rotr 192 7) := by core033_kernel_decide
theorem stats381 : actualRows381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows381=5124 := by core033_kernel_decide
theorem rows382 : actualRows382=WordField.canonicalRows actualModulus 382 (.rotr 192 18) := by core033_kernel_decide
theorem stats382 : actualRows382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows382=5124 := by core033_kernel_decide
theorem rows383 : actualRows383=WordField.canonicalRows actualModulus 383 (.bxor 381 382) := by core033_kernel_decide
theorem stats383 : actualRows383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows383=7428 := by core033_kernel_decide
theorem rows384 : actualRows384=WordField.canonicalRows actualModulus 384 (.shr 192 3) := by core033_kernel_decide
theorem stats384 : actualRows384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows384=4908 := by core033_kernel_decide
theorem rows385 : actualRows385=WordField.canonicalRows actualModulus 385 (.bxor 383 384) := by core033_kernel_decide
theorem stats385 : actualRows385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows385=7428 := by core033_kernel_decide
theorem rows386 : actualRows386=WordField.canonicalRows actualModulus 386 (.badd 380 385) := by core033_kernel_decide
theorem stats386 : actualRows386.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows386=5388 := by core033_kernel_decide
theorem rows387 : actualRows387=WordField.canonicalRows actualModulus 387 (.badd 386 179) := by core033_kernel_decide
theorem stats387 : actualRows387.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows387=5388 := by core033_kernel_decide
theorem rows388 : actualRows388=WordField.canonicalRows actualModulus 388 (.rotr 374 17) := by core033_kernel_decide
theorem stats388 : actualRows388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows388=5124 := by core033_kernel_decide
theorem rows389 : actualRows389=WordField.canonicalRows actualModulus 389 (.rotr 374 19) := by core033_kernel_decide
theorem stats389 : actualRows389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows389=5124 := by core033_kernel_decide
theorem rows390 : actualRows390=WordField.canonicalRows actualModulus 390 (.bxor 388 389) := by core033_kernel_decide
theorem stats390 : actualRows390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows390=7428 := by core033_kernel_decide
theorem rows391 : actualRows391=WordField.canonicalRows actualModulus 391 (.shr 374 10) := by core033_kernel_decide
theorem stats391 : actualRows391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows391=4404 := by core033_kernel_decide
theorem rows392 : actualRows392=WordField.canonicalRows actualModulus 392 (.bxor 390 391) := by core033_kernel_decide
theorem stats392 : actualRows392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows392=7428 := by core033_kernel_decide
theorem rows393 : actualRows393=WordField.canonicalRows actualModulus 393 (.badd 392 309) := by core033_kernel_decide
theorem stats393 : actualRows393.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows393=5388 := by core033_kernel_decide
theorem rows394 : actualRows394=WordField.canonicalRows actualModulus 394 (.rotr 205 7) := by core033_kernel_decide
theorem stats394 : actualRows394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows394=5124 := by core033_kernel_decide
theorem rows395 : actualRows395=WordField.canonicalRows actualModulus 395 (.rotr 205 18) := by core033_kernel_decide
theorem stats395 : actualRows395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows395=5124 := by core033_kernel_decide
theorem rows396 : actualRows396=WordField.canonicalRows actualModulus 396 (.bxor 394 395) := by core033_kernel_decide
theorem stats396 : actualRows396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows396=7428 := by core033_kernel_decide
theorem rows397 : actualRows397=WordField.canonicalRows actualModulus 397 (.shr 205 3) := by core033_kernel_decide
theorem stats397 : actualRows397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows397=4908 := by core033_kernel_decide
theorem rows398 : actualRows398=WordField.canonicalRows actualModulus 398 (.bxor 396 397) := by core033_kernel_decide
theorem stats398 : actualRows398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows398=7428 := by core033_kernel_decide
theorem rows399 : actualRows399=WordField.canonicalRows actualModulus 399 (.badd 393 398) := by core033_kernel_decide
theorem stats399 : actualRows399.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows399=5388 := by core033_kernel_decide
theorem rows400 : actualRows400=WordField.canonicalRows actualModulus 400 (.badd 399 192) := by core033_kernel_decide
theorem stats400 : actualRows400.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows400=5388 := by core033_kernel_decide
theorem rows401 : actualRows401=WordField.canonicalRows actualModulus 401 (.rotr 387 17) := by core033_kernel_decide
theorem stats401 : actualRows401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows401=5124 := by core033_kernel_decide
theorem rows402 : actualRows402=WordField.canonicalRows actualModulus 402 (.rotr 387 19) := by core033_kernel_decide
theorem stats402 : actualRows402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows402=5124 := by core033_kernel_decide
theorem rows403 : actualRows403=WordField.canonicalRows actualModulus 403 (.bxor 401 402) := by core033_kernel_decide
theorem stats403 : actualRows403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows403=7428 := by core033_kernel_decide
theorem rows404 : actualRows404=WordField.canonicalRows actualModulus 404 (.shr 387 10) := by core033_kernel_decide
theorem stats404 : actualRows404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows404=4404 := by core033_kernel_decide
theorem rows405 : actualRows405=WordField.canonicalRows actualModulus 405 (.bxor 403 404) := by core033_kernel_decide
theorem stats405 : actualRows405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows405=7428 := by core033_kernel_decide
theorem rows406 : actualRows406=WordField.canonicalRows actualModulus 406 (.badd 405 322) := by core033_kernel_decide
theorem stats406 : actualRows406.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows406=5388 := by core033_kernel_decide
theorem rows407 : actualRows407=WordField.canonicalRows actualModulus 407 (.rotr 218 7) := by core033_kernel_decide
theorem stats407 : actualRows407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows407=5124 := by core033_kernel_decide
def partRows5 : List R1CS.Row := actualRows344++actualRows345++actualRows346++actualRows347++actualRows348++actualRows349++actualRows350++actualRows351++actualRows352++actualRows353++actualRows354++actualRows355++actualRows356++actualRows357++actualRows358++actualRows359++actualRows360++actualRows361++actualRows362++actualRows363++actualRows364++actualRows365++actualRows366++actualRows367++actualRows368++actualRows369++actualRows370++actualRows371++actualRows372++actualRows373++actualRows374++actualRows375++actualRows376++actualRows377++actualRows378++actualRows379++actualRows380++actualRows381++actualRows382++actualRows383++actualRows384++actualRows385++actualRows386++actualRows387++actualRows388++actualRows389++actualRows390++actualRows391++actualRows392++actualRows393++actualRows394++actualRows395++actualRows396++actualRows397++actualRows398++actualRows399++actualRows400++actualRows401++actualRows402++actualRows403++actualRows404++actualRows405++actualRows406++actualRows407
def partOps5 : List WordIR.Op := [.bxor 342 343,.shr 153 3,.bxor 344 345,.badd 341 346,.badd 347 140,.rotr 335 17,.rotr 335 19,.bxor 349 350,.shr 335 10,.bxor 351 352,.badd 353 270,.rotr 166 7,.rotr 166 18,.bxor 355 356,.shr 166 3,.bxor 357 358,.badd 354 359,.badd 360 153,.rotr 348 17,.rotr 348 19,.bxor 362 363,.shr 348 10,.bxor 364 365,.badd 366 283,.rotr 179 7,.rotr 179 18,.bxor 368 369,.shr 179 3,.bxor 370 371,.badd 367 372,.badd 373 166,.rotr 361 17,.rotr 361 19,.bxor 375 376,.shr 361 10,.bxor 377 378,.badd 379 296,.rotr 192 7,.rotr 192 18,.bxor 381 382,.shr 192 3,.bxor 383 384,.badd 380 385,.badd 386 179,.rotr 374 17,.rotr 374 19,.bxor 388 389,.shr 374 10,.bxor 390 391,.badd 392 309,.rotr 205 7,.rotr 205 18,.bxor 394 395,.shr 205 3,.bxor 396 397,.badd 393 398,.badd 399 192,.rotr 387 17,.rotr 387 19,.bxor 401 402,.shr 387 10,.bxor 403 404,.badd 405 322,.rotr 218 7]
theorem partRowsExact5 : partRows5=WordField.rows actualModulus 344 partOps5 := by
  simp only [partRows5,partOps5,WordField.rows,rows344,rows345,rows346,rows347,rows348,rows349,rows350,rows351,rows352,rows353,rows354,rows355,rows356,rows357,rows358,rows359,rows360,rows361,rows362,rows363,rows364,rows365,rows366,rows367,rows368,rows369,rows370,rows371,rows372,rows373,rows374,rows375,rows376,rows377,rows378,rows379,rows380,rows381,rows382,rows383,rows384,rows385,rows386,rows387,rows388,rows389,rows390,rows391,rows392,rows393,rows394,rows395,rows396,rows397,rows398,rows399,rows400,rows401,rows402,rows403,rows404,rows405,rows406,rows407,List.append_assoc,List.append_nil]
theorem partOpsLength5 : partOps5.length=64 := by decide
theorem partStats5 : partRows5.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows5=373296 := by
  simp only [partRows5,List.length_append,MatrixRowBlocks.rows_weight_append,stats344.1,stats344.2,stats345.1,stats345.2,stats346.1,stats346.2,stats347.1,stats347.2,stats348.1,stats348.2,stats349.1,stats349.2,stats350.1,stats350.2,stats351.1,stats351.2,stats352.1,stats352.2,stats353.1,stats353.2,stats354.1,stats354.2,stats355.1,stats355.2,stats356.1,stats356.2,stats357.1,stats357.2,stats358.1,stats358.2,stats359.1,stats359.2,stats360.1,stats360.2,stats361.1,stats361.2,stats362.1,stats362.2,stats363.1,stats363.2,stats364.1,stats364.2,stats365.1,stats365.2,stats366.1,stats366.2,stats367.1,stats367.2,stats368.1,stats368.2,stats369.1,stats369.2,stats370.1,stats370.2,stats371.1,stats371.2,stats372.1,stats372.2,stats373.1,stats373.2,stats374.1,stats374.2,stats375.1,stats375.2,stats376.1,stats376.2,stats377.1,stats377.2,stats378.1,stats378.2,stats379.1,stats379.2,stats380.1,stats380.2,stats381.1,stats381.2,stats382.1,stats382.2,stats383.1,stats383.2,stats384.1,stats384.2,stats385.1,stats385.2,stats386.1,stats386.2,stats387.1,stats387.2,stats388.1,stats388.2,stats389.1,stats389.2,stats390.1,stats390.2,stats391.1,stats391.2,stats392.1,stats392.2,stats393.1,stats393.2,stats394.1,stats394.2,stats395.1,stats395.2,stats396.1,stats396.2,stats397.1,stats397.2,stats398.1,stats398.2,stats399.1,stats399.2,stats400.1,stats400.2,stats401.1,stats401.2,stats402.1,stats402.2,stats403.1,stats403.2,stats404.1,stats404.2,stats405.1,stats405.2,stats406.1,stats406.2,stats407.1,stats407.2]
  decide
end ActualSHAMatrixRows
