import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData5
import HashBlockInstructionMatrixData6
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows328 : actualRows328=WordField.canonicalRows actualModulus 328 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats328 : actualRows328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows328=2892 := by core033_kernel_decide
theorem rows329 : actualRows329=WordField.canonicalRows actualModulus 329 (.bxor 327 328) := by core033_kernel_decide
theorem stats329 : actualRows329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows329=7428 := by core033_kernel_decide
theorem rows330 : actualRows330=WordField.canonicalRows actualModulus 330 (.shr 17 8) := by core033_kernel_decide
theorem stats330 : actualRows330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows330=4548 := by core033_kernel_decide
theorem rows331 : actualRows331=WordField.canonicalRows actualModulus 331 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats331 : actualRows331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows331=2820 := by core033_kernel_decide
theorem rows332 : actualRows332=WordField.canonicalRows actualModulus 332 (.bnot 331) := by core033_kernel_decide
theorem stats332 : actualRows332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows332=6276 := by core033_kernel_decide
theorem rows333 : actualRows333=WordField.canonicalRows actualModulus 333 (.band 330 332) := by core033_kernel_decide
theorem stats333 : actualRows333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows333=5124 := by core033_kernel_decide
theorem rows334 : actualRows334=WordField.canonicalRows actualModulus 334 (.shr 17 8) := by core033_kernel_decide
theorem stats334 : actualRows334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows334=4548 := by core033_kernel_decide
theorem rows335 : actualRows335=WordField.canonicalRows actualModulus 335 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats335 : actualRows335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows335=2820 := by core033_kernel_decide
theorem rows336 : actualRows336=WordField.canonicalRows actualModulus 336 (.bnot 335) := by core033_kernel_decide
theorem stats336 : actualRows336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows336=6276 := by core033_kernel_decide
theorem rows337 : actualRows337=WordField.canonicalRows actualModulus 337 (.bxor 334 336) := by core033_kernel_decide
theorem stats337 : actualRows337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows337=7428 := by core033_kernel_decide
theorem rows338 : actualRows338=WordField.canonicalRows actualModulus 338 (.shr 17 8) := by core033_kernel_decide
theorem stats338 : actualRows338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows338=4548 := by core033_kernel_decide
theorem rows339 : actualRows339=WordField.canonicalRows actualModulus 339 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats339 : actualRows339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows339=2820 := by core033_kernel_decide
theorem rows340 : actualRows340=WordField.canonicalRows actualModulus 340 (.bnot 339) := by core033_kernel_decide
theorem stats340 : actualRows340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows340=6276 := by core033_kernel_decide
theorem rows341 : actualRows341=WordField.canonicalRows actualModulus 341 (.badd 338 340) := by core033_kernel_decide
theorem stats341 : actualRows341.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows341=5388 := by core033_kernel_decide
theorem rows342 : actualRows342=WordField.canonicalRows actualModulus 342 (.bnot 341) := by core033_kernel_decide
theorem stats342 : actualRows342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows342=6276 := by core033_kernel_decide
theorem rows343 : actualRows343=WordField.canonicalRows actualModulus 343 (.band 337 342) := by core033_kernel_decide
theorem stats343 : actualRows343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows343=5124 := by core033_kernel_decide
theorem rows344 : actualRows344=WordField.canonicalRows actualModulus 344 (.bxor 333 343) := by core033_kernel_decide
theorem stats344 : actualRows344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows344=7428 := by core033_kernel_decide
theorem rows345 : actualRows345=WordField.canonicalRows actualModulus 345 (.shr 344 31) := by core033_kernel_decide
theorem stats345 : actualRows345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows345=2892 := by core033_kernel_decide
theorem rows346 : actualRows346=WordField.canonicalRows actualModulus 346 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats346 : actualRows346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows346=2892 := by core033_kernel_decide
theorem rows347 : actualRows347=WordField.canonicalRows actualModulus 347 (.bxor 345 346) := by core033_kernel_decide
theorem stats347 : actualRows347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows347=7428 := by core033_kernel_decide
theorem rows348 : actualRows348=WordField.canonicalRows actualModulus 348 (.shr 18 8) := by core033_kernel_decide
theorem stats348 : actualRows348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows348=4548 := by core033_kernel_decide
theorem rows349 : actualRows349=WordField.canonicalRows actualModulus 349 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats349 : actualRows349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows349=2820 := by core033_kernel_decide
theorem rows350 : actualRows350=WordField.canonicalRows actualModulus 350 (.bnot 349) := by core033_kernel_decide
theorem stats350 : actualRows350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows350=6276 := by core033_kernel_decide
theorem rows351 : actualRows351=WordField.canonicalRows actualModulus 351 (.band 348 350) := by core033_kernel_decide
theorem stats351 : actualRows351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows351=5124 := by core033_kernel_decide
theorem rows352 : actualRows352=WordField.canonicalRows actualModulus 352 (.shr 18 8) := by core033_kernel_decide
theorem stats352 : actualRows352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows352=4548 := by core033_kernel_decide
theorem rows353 : actualRows353=WordField.canonicalRows actualModulus 353 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats353 : actualRows353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows353=2820 := by core033_kernel_decide
theorem rows354 : actualRows354=WordField.canonicalRows actualModulus 354 (.bnot 353) := by core033_kernel_decide
theorem stats354 : actualRows354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows354=6276 := by core033_kernel_decide
theorem rows355 : actualRows355=WordField.canonicalRows actualModulus 355 (.bxor 352 354) := by core033_kernel_decide
theorem stats355 : actualRows355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows355=7428 := by core033_kernel_decide
theorem rows356 : actualRows356=WordField.canonicalRows actualModulus 356 (.shr 18 8) := by core033_kernel_decide
theorem stats356 : actualRows356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows356=4548 := by core033_kernel_decide
theorem rows357 : actualRows357=WordField.canonicalRows actualModulus 357 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats357 : actualRows357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows357=2820 := by core033_kernel_decide
theorem rows358 : actualRows358=WordField.canonicalRows actualModulus 358 (.bnot 357) := by core033_kernel_decide
theorem stats358 : actualRows358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows358=6276 := by core033_kernel_decide
theorem rows359 : actualRows359=WordField.canonicalRows actualModulus 359 (.badd 356 358) := by core033_kernel_decide
theorem stats359 : actualRows359.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows359=5388 := by core033_kernel_decide
theorem rows360 : actualRows360=WordField.canonicalRows actualModulus 360 (.bnot 359) := by core033_kernel_decide
theorem stats360 : actualRows360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows360=6276 := by core033_kernel_decide
theorem rows361 : actualRows361=WordField.canonicalRows actualModulus 361 (.band 355 360) := by core033_kernel_decide
theorem stats361 : actualRows361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows361=5124 := by core033_kernel_decide
theorem rows362 : actualRows362=WordField.canonicalRows actualModulus 362 (.bxor 351 361) := by core033_kernel_decide
theorem stats362 : actualRows362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows362=7428 := by core033_kernel_decide
theorem rows363 : actualRows363=WordField.canonicalRows actualModulus 363 (.shr 362 31) := by core033_kernel_decide
theorem stats363 : actualRows363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows363=2892 := by core033_kernel_decide
theorem rows364 : actualRows364=WordField.canonicalRows actualModulus 364 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats364 : actualRows364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows364=2892 := by core033_kernel_decide
theorem rows365 : actualRows365=WordField.canonicalRows actualModulus 365 (.bxor 363 364) := by core033_kernel_decide
theorem stats365 : actualRows365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows365=7428 := by core033_kernel_decide
theorem rows366 : actualRows366=WordField.canonicalRows actualModulus 366 (.shr 19 8) := by core033_kernel_decide
theorem stats366 : actualRows366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows366=4548 := by core033_kernel_decide
theorem rows367 : actualRows367=WordField.canonicalRows actualModulus 367 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats367 : actualRows367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows367=2820 := by core033_kernel_decide
theorem rows368 : actualRows368=WordField.canonicalRows actualModulus 368 (.bnot 367) := by core033_kernel_decide
theorem stats368 : actualRows368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows368=6276 := by core033_kernel_decide
theorem rows369 : actualRows369=WordField.canonicalRows actualModulus 369 (.band 366 368) := by core033_kernel_decide
theorem stats369 : actualRows369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows369=5124 := by core033_kernel_decide
theorem rows370 : actualRows370=WordField.canonicalRows actualModulus 370 (.shr 19 8) := by core033_kernel_decide
theorem stats370 : actualRows370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows370=4548 := by core033_kernel_decide
theorem rows371 : actualRows371=WordField.canonicalRows actualModulus 371 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats371 : actualRows371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows371=2820 := by core033_kernel_decide
theorem rows372 : actualRows372=WordField.canonicalRows actualModulus 372 (.bnot 371) := by core033_kernel_decide
theorem stats372 : actualRows372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows372=6276 := by core033_kernel_decide
theorem rows373 : actualRows373=WordField.canonicalRows actualModulus 373 (.bxor 370 372) := by core033_kernel_decide
theorem stats373 : actualRows373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows373=7428 := by core033_kernel_decide
theorem rows374 : actualRows374=WordField.canonicalRows actualModulus 374 (.shr 19 8) := by core033_kernel_decide
theorem stats374 : actualRows374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows374=4548 := by core033_kernel_decide
theorem rows375 : actualRows375=WordField.canonicalRows actualModulus 375 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats375 : actualRows375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows375=2820 := by core033_kernel_decide
theorem rows376 : actualRows376=WordField.canonicalRows actualModulus 376 (.bnot 375) := by core033_kernel_decide
theorem stats376 : actualRows376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows376=6276 := by core033_kernel_decide
theorem rows377 : actualRows377=WordField.canonicalRows actualModulus 377 (.badd 374 376) := by core033_kernel_decide
theorem stats377 : actualRows377.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows377=5388 := by core033_kernel_decide
theorem rows378 : actualRows378=WordField.canonicalRows actualModulus 378 (.bnot 377) := by core033_kernel_decide
theorem stats378 : actualRows378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows378=6276 := by core033_kernel_decide
theorem rows379 : actualRows379=WordField.canonicalRows actualModulus 379 (.band 373 378) := by core033_kernel_decide
theorem stats379 : actualRows379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows379=5124 := by core033_kernel_decide
theorem rows380 : actualRows380=WordField.canonicalRows actualModulus 380 (.bxor 369 379) := by core033_kernel_decide
theorem stats380 : actualRows380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows380=7428 := by core033_kernel_decide
theorem rows381 : actualRows381=WordField.canonicalRows actualModulus 381 (.shr 380 31) := by core033_kernel_decide
theorem stats381 : actualRows381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows381=2892 := by core033_kernel_decide
theorem rows382 : actualRows382=WordField.canonicalRows actualModulus 382 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats382 : actualRows382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows382=2892 := by core033_kernel_decide
theorem rows383 : actualRows383=WordField.canonicalRows actualModulus 383 (.bxor 381 382) := by core033_kernel_decide
theorem stats383 : actualRows383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows383=7428 := by core033_kernel_decide
theorem rows384 : actualRows384=WordField.canonicalRows actualModulus 384 (.shr 20 8) := by core033_kernel_decide
theorem stats384 : actualRows384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows384=4548 := by core033_kernel_decide
theorem rows385 : actualRows385=WordField.canonicalRows actualModulus 385 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats385 : actualRows385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows385=2820 := by core033_kernel_decide
theorem rows386 : actualRows386=WordField.canonicalRows actualModulus 386 (.bnot 385) := by core033_kernel_decide
theorem stats386 : actualRows386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows386=6276 := by core033_kernel_decide
theorem rows387 : actualRows387=WordField.canonicalRows actualModulus 387 (.band 384 386) := by core033_kernel_decide
theorem stats387 : actualRows387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows387=5124 := by core033_kernel_decide
theorem rows388 : actualRows388=WordField.canonicalRows actualModulus 388 (.shr 20 8) := by core033_kernel_decide
theorem stats388 : actualRows388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows388=4548 := by core033_kernel_decide
theorem rows389 : actualRows389=WordField.canonicalRows actualModulus 389 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats389 : actualRows389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows389=2820 := by core033_kernel_decide
theorem rows390 : actualRows390=WordField.canonicalRows actualModulus 390 (.bnot 389) := by core033_kernel_decide
theorem stats390 : actualRows390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows390=6276 := by core033_kernel_decide
theorem rows391 : actualRows391=WordField.canonicalRows actualModulus 391 (.bxor 388 390) := by core033_kernel_decide
theorem stats391 : actualRows391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows391=7428 := by core033_kernel_decide
def partRows4 : List R1CS.Row := actualRows328++actualRows329++actualRows330++actualRows331++actualRows332++actualRows333++actualRows334++actualRows335++actualRows336++actualRows337++actualRows338++actualRows339++actualRows340++actualRows341++actualRows342++actualRows343++actualRows344++actualRows345++actualRows346++actualRows347++actualRows348++actualRows349++actualRows350++actualRows351++actualRows352++actualRows353++actualRows354++actualRows355++actualRows356++actualRows357++actualRows358++actualRows359++actualRows360++actualRows361++actualRows362++actualRows363++actualRows364++actualRows365++actualRows366++actualRows367++actualRows368++actualRows369++actualRows370++actualRows371++actualRows372++actualRows373++actualRows374++actualRows375++actualRows376++actualRows377++actualRows378++actualRows379++actualRows380++actualRows381++actualRows382++actualRows383++actualRows384++actualRows385++actualRows386++actualRows387++actualRows388++actualRows389++actualRows390++actualRows391
def partOps4 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 327 328,.shr 17 8,.literal (BitVec.ofNat 32 0),.bnot 331,.band 330 332,.shr 17 8,.literal (BitVec.ofNat 32 0),.bnot 335,.bxor 334 336,.shr 17 8,.literal (BitVec.ofNat 32 0),.bnot 339,.badd 338 340,.bnot 341,.band 337 342,.bxor 333 343,.shr 344 31,.literal (BitVec.ofNat 32 1),.bxor 345 346,.shr 18 8,.literal (BitVec.ofNat 32 0),.bnot 349,.band 348 350,.shr 18 8,.literal (BitVec.ofNat 32 0),.bnot 353,.bxor 352 354,.shr 18 8,.literal (BitVec.ofNat 32 0),.bnot 357,.badd 356 358,.bnot 359,.band 355 360,.bxor 351 361,.shr 362 31,.literal (BitVec.ofNat 32 1),.bxor 363 364,.shr 19 8,.literal (BitVec.ofNat 32 0),.bnot 367,.band 366 368,.shr 19 8,.literal (BitVec.ofNat 32 0),.bnot 371,.bxor 370 372,.shr 19 8,.literal (BitVec.ofNat 32 0),.bnot 375,.badd 374 376,.bnot 377,.band 373 378,.bxor 369 379,.shr 380 31,.literal (BitVec.ofNat 32 1),.bxor 381 382,.shr 20 8,.literal (BitVec.ofNat 32 0),.bnot 385,.band 384 386,.shr 20 8,.literal (BitVec.ofNat 32 0),.bnot 389,.bxor 388 390]
theorem partExact4 : partRows4=WordField.rows actualModulus 328 partOps4 := by
  simp only [partRows4,partOps4,WordField.rows,rows328,rows329,rows330,rows331,rows332,rows333,rows334,rows335,rows336,rows337,rows338,rows339,rows340,rows341,rows342,rows343,rows344,rows345,rows346,rows347,rows348,rows349,rows350,rows351,rows352,rows353,rows354,rows355,rows356,rows357,rows358,rows359,rows360,rows361,rows362,rows363,rows364,rows365,rows366,rows367,rows368,rows369,rows370,rows371,rows372,rows373,rows374,rows375,rows376,rows377,rows378,rows379,rows380,rows381,rows382,rows383,rows384,rows385,rows386,rows387,rows388,rows389,rows390,rows391,List.append_assoc,List.append_nil]
theorem partLength4 : partOps4.length=64 := by decide
theorem partStats4 : partRows4.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows4=322896 := by
  simp only [partRows4,List.length_append,MatrixRowBlocks.rows_weight_append,stats328.1,stats328.2,stats329.1,stats329.2,stats330.1,stats330.2,stats331.1,stats331.2,stats332.1,stats332.2,stats333.1,stats333.2,stats334.1,stats334.2,stats335.1,stats335.2,stats336.1,stats336.2,stats337.1,stats337.2,stats338.1,stats338.2,stats339.1,stats339.2,stats340.1,stats340.2,stats341.1,stats341.2,stats342.1,stats342.2,stats343.1,stats343.2,stats344.1,stats344.2,stats345.1,stats345.2,stats346.1,stats346.2,stats347.1,stats347.2,stats348.1,stats348.2,stats349.1,stats349.2,stats350.1,stats350.2,stats351.1,stats351.2,stats352.1,stats352.2,stats353.1,stats353.2,stats354.1,stats354.2,stats355.1,stats355.2,stats356.1,stats356.2,stats357.1,stats357.2,stats358.1,stats358.2,stats359.1,stats359.2,stats360.1,stats360.2,stats361.1,stats361.2,stats362.1,stats362.2,stats363.1,stats363.2,stats364.1,stats364.2,stats365.1,stats365.2,stats366.1,stats366.2,stats367.1,stats367.2,stats368.1,stats368.2,stats369.1,stats369.2,stats370.1,stats370.2,stats371.1,stats371.2,stats372.1,stats372.2,stats373.1,stats373.2,stats374.1,stats374.2,stats375.1,stats375.2,stats376.1,stats376.2,stats377.1,stats377.2,stats378.1,stats378.2,stats379.1,stats379.2,stats380.1,stats380.2,stats381.1,stats381.2,stats382.1,stats382.2,stats383.1,stats383.2,stats384.1,stats384.2,stats385.1,stats385.2,stats386.1,stats386.2,stats387.1,stats387.2,stats388.1,stats388.2,stats389.1,stats389.2,stats390.1,stats390.2,stats391.1,stats391.2]
  decide
end HashBlockCheckedRows
