import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData176
import AuthenticatedBranchRoundInstructionMatrixData177
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11318 : actualRows11318=WordField.canonicalRows actualModulus 11318 (.bnot 11317) := by core033_kernel_decide
theorem stats11318 : actualRows11318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11318=6276 := by core033_kernel_decide
theorem rows11319 : actualRows11319=WordField.canonicalRows actualModulus 11319 (.bxor 11316 11318) := by core033_kernel_decide
theorem stats11319 : actualRows11319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11319=7428 := by core033_kernel_decide
theorem rows11320 : actualRows11320=WordField.canonicalRows actualModulus 11320 (.shr 10983 1) := by core033_kernel_decide
theorem stats11320 : actualRows11320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11320=5052 := by core033_kernel_decide
theorem rows11321 : actualRows11321=WordField.canonicalRows actualModulus 11321 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11321 : actualRows11321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11321=2820 := by core033_kernel_decide
theorem rows11322 : actualRows11322=WordField.canonicalRows actualModulus 11322 (.bnot 11321) := by core033_kernel_decide
theorem stats11322 : actualRows11322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11322=6276 := by core033_kernel_decide
theorem rows11323 : actualRows11323=WordField.canonicalRows actualModulus 11323 (.badd 11320 11322) := by core033_kernel_decide
theorem stats11323 : actualRows11323.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11323=5388 := by core033_kernel_decide
theorem rows11324 : actualRows11324=WordField.canonicalRows actualModulus 11324 (.bnot 11323) := by core033_kernel_decide
theorem stats11324 : actualRows11324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11324=6276 := by core033_kernel_decide
theorem rows11325 : actualRows11325=WordField.canonicalRows actualModulus 11325 (.band 11319 11324) := by core033_kernel_decide
theorem stats11325 : actualRows11325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11325=5124 := by core033_kernel_decide
theorem rows11326 : actualRows11326=WordField.canonicalRows actualModulus 11326 (.bxor 11315 11325) := by core033_kernel_decide
theorem stats11326 : actualRows11326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11326=7428 := by core033_kernel_decide
theorem rows11327 : actualRows11327=WordField.canonicalRows actualModulus 11327 (.shr 11326 31) := by core033_kernel_decide
theorem stats11327 : actualRows11327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11327=2892 := by core033_kernel_decide
theorem rows11328 : actualRows11328=WordField.canonicalRows actualModulus 11328 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11328 : actualRows11328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11328=2892 := by core033_kernel_decide
theorem rows11329 : actualRows11329=WordField.canonicalRows actualModulus 11329 (.bxor 11327 11328) := by core033_kernel_decide
theorem stats11329 : actualRows11329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11329=7428 := by core033_kernel_decide
theorem rows11330 : actualRows11330=WordField.canonicalRows actualModulus 11330 (.shr 10994 1) := by core033_kernel_decide
theorem stats11330 : actualRows11330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11330=5052 := by core033_kernel_decide
theorem rows11331 : actualRows11331=WordField.canonicalRows actualModulus 11331 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11331 : actualRows11331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11331=2820 := by core033_kernel_decide
theorem rows11332 : actualRows11332=WordField.canonicalRows actualModulus 11332 (.bnot 11331) := by core033_kernel_decide
theorem stats11332 : actualRows11332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11332=6276 := by core033_kernel_decide
theorem rows11333 : actualRows11333=WordField.canonicalRows actualModulus 11333 (.band 11330 11332) := by core033_kernel_decide
theorem stats11333 : actualRows11333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11333=5124 := by core033_kernel_decide
theorem rows11334 : actualRows11334=WordField.canonicalRows actualModulus 11334 (.shr 10994 1) := by core033_kernel_decide
theorem stats11334 : actualRows11334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11334=5052 := by core033_kernel_decide
theorem rows11335 : actualRows11335=WordField.canonicalRows actualModulus 11335 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11335 : actualRows11335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11335=2820 := by core033_kernel_decide
theorem rows11336 : actualRows11336=WordField.canonicalRows actualModulus 11336 (.bnot 11335) := by core033_kernel_decide
theorem stats11336 : actualRows11336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11336=6276 := by core033_kernel_decide
theorem rows11337 : actualRows11337=WordField.canonicalRows actualModulus 11337 (.bxor 11334 11336) := by core033_kernel_decide
theorem stats11337 : actualRows11337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11337=7428 := by core033_kernel_decide
theorem rows11338 : actualRows11338=WordField.canonicalRows actualModulus 11338 (.shr 10994 1) := by core033_kernel_decide
theorem stats11338 : actualRows11338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11338=5052 := by core033_kernel_decide
theorem rows11339 : actualRows11339=WordField.canonicalRows actualModulus 11339 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11339 : actualRows11339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11339=2820 := by core033_kernel_decide
theorem rows11340 : actualRows11340=WordField.canonicalRows actualModulus 11340 (.bnot 11339) := by core033_kernel_decide
theorem stats11340 : actualRows11340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11340=6276 := by core033_kernel_decide
theorem rows11341 : actualRows11341=WordField.canonicalRows actualModulus 11341 (.badd 11338 11340) := by core033_kernel_decide
theorem stats11341 : actualRows11341.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11341=5388 := by core033_kernel_decide
theorem rows11342 : actualRows11342=WordField.canonicalRows actualModulus 11342 (.bnot 11341) := by core033_kernel_decide
theorem stats11342 : actualRows11342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11342=6276 := by core033_kernel_decide
theorem rows11343 : actualRows11343=WordField.canonicalRows actualModulus 11343 (.band 11337 11342) := by core033_kernel_decide
theorem stats11343 : actualRows11343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11343=5124 := by core033_kernel_decide
theorem rows11344 : actualRows11344=WordField.canonicalRows actualModulus 11344 (.bxor 11333 11343) := by core033_kernel_decide
theorem stats11344 : actualRows11344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11344=7428 := by core033_kernel_decide
theorem rows11345 : actualRows11345=WordField.canonicalRows actualModulus 11345 (.shr 11344 31) := by core033_kernel_decide
theorem stats11345 : actualRows11345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11345=2892 := by core033_kernel_decide
theorem rows11346 : actualRows11346=WordField.canonicalRows actualModulus 11346 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11346 : actualRows11346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11346=2892 := by core033_kernel_decide
theorem rows11347 : actualRows11347=WordField.canonicalRows actualModulus 11347 (.bxor 11345 11346) := by core033_kernel_decide
theorem stats11347 : actualRows11347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11347=7428 := by core033_kernel_decide
theorem rows11348 : actualRows11348=WordField.canonicalRows actualModulus 11348 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11348 : actualRows11348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11348=2892 := by core033_kernel_decide
theorem rows11349 : actualRows11349=WordField.canonicalRows actualModulus 11349 (.badd 10642 11348) := by core033_kernel_decide
theorem stats11349 : actualRows11349.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11349=5388 := by core033_kernel_decide
theorem rows11350 : actualRows11350=WordField.canonicalRows actualModulus 11350 (.bnot 10642) := by core033_kernel_decide
theorem stats11350 : actualRows11350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11350=6276 := by core033_kernel_decide
theorem rows11351 : actualRows11351=WordField.canonicalRows actualModulus 11351 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats11351 : actualRows11351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11351=3396 := by core033_kernel_decide
theorem rows11352 : actualRows11352=WordField.canonicalRows actualModulus 11352 (.band 11350 11351) := by core033_kernel_decide
theorem stats11352 : actualRows11352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11352=5124 := by core033_kernel_decide
theorem rows11353 : actualRows11353=WordField.canonicalRows actualModulus 11353 (.shr 10642 8) := by core033_kernel_decide
theorem stats11353 : actualRows11353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11353=4548 := by core033_kernel_decide
theorem rows11354 : actualRows11354=WordField.canonicalRows actualModulus 11354 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11354 : actualRows11354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11354=2820 := by core033_kernel_decide
theorem rows11355 : actualRows11355=WordField.canonicalRows actualModulus 11355 (.bnot 11354) := by core033_kernel_decide
theorem stats11355 : actualRows11355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11355=6276 := by core033_kernel_decide
theorem rows11356 : actualRows11356=WordField.canonicalRows actualModulus 11356 (.band 11353 11355) := by core033_kernel_decide
theorem stats11356 : actualRows11356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11356=5124 := by core033_kernel_decide
theorem rows11357 : actualRows11357=WordField.canonicalRows actualModulus 11357 (.shr 10642 8) := by core033_kernel_decide
theorem stats11357 : actualRows11357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11357=4548 := by core033_kernel_decide
theorem rows11358 : actualRows11358=WordField.canonicalRows actualModulus 11358 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11358 : actualRows11358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11358=2820 := by core033_kernel_decide
theorem rows11359 : actualRows11359=WordField.canonicalRows actualModulus 11359 (.bnot 11358) := by core033_kernel_decide
theorem stats11359 : actualRows11359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11359=6276 := by core033_kernel_decide
theorem rows11360 : actualRows11360=WordField.canonicalRows actualModulus 11360 (.bxor 11357 11359) := by core033_kernel_decide
theorem stats11360 : actualRows11360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11360=7428 := by core033_kernel_decide
theorem rows11361 : actualRows11361=WordField.canonicalRows actualModulus 11361 (.shr 10642 8) := by core033_kernel_decide
theorem stats11361 : actualRows11361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11361=4548 := by core033_kernel_decide
theorem rows11362 : actualRows11362=WordField.canonicalRows actualModulus 11362 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11362 : actualRows11362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11362=2820 := by core033_kernel_decide
theorem rows11363 : actualRows11363=WordField.canonicalRows actualModulus 11363 (.bnot 11362) := by core033_kernel_decide
theorem stats11363 : actualRows11363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11363=6276 := by core033_kernel_decide
theorem rows11364 : actualRows11364=WordField.canonicalRows actualModulus 11364 (.badd 11361 11363) := by core033_kernel_decide
theorem stats11364 : actualRows11364.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11364=5388 := by core033_kernel_decide
theorem rows11365 : actualRows11365=WordField.canonicalRows actualModulus 11365 (.bnot 11364) := by core033_kernel_decide
theorem stats11365 : actualRows11365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11365=6276 := by core033_kernel_decide
theorem rows11366 : actualRows11366=WordField.canonicalRows actualModulus 11366 (.band 11360 11365) := by core033_kernel_decide
theorem stats11366 : actualRows11366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11366=5124 := by core033_kernel_decide
theorem rows11367 : actualRows11367=WordField.canonicalRows actualModulus 11367 (.bxor 11356 11366) := by core033_kernel_decide
theorem stats11367 : actualRows11367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11367=7428 := by core033_kernel_decide
theorem rows11368 : actualRows11368=WordField.canonicalRows actualModulus 11368 (.shr 11367 31) := by core033_kernel_decide
theorem stats11368 : actualRows11368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11368=2892 := by core033_kernel_decide
theorem rows11369 : actualRows11369=WordField.canonicalRows actualModulus 11369 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11369 : actualRows11369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11369=2892 := by core033_kernel_decide
theorem rows11370 : actualRows11370=WordField.canonicalRows actualModulus 11370 (.bxor 11368 11369) := by core033_kernel_decide
theorem stats11370 : actualRows11370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11370=7428 := by core033_kernel_decide
theorem rows11371 : actualRows11371=WordField.canonicalRows actualModulus 11371 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats11371 : actualRows11371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11371=2892 := by core033_kernel_decide
theorem rows11372 : actualRows11372=WordField.canonicalRows actualModulus 11372 (.bxor 10642 11371) := by core033_kernel_decide
theorem stats11372 : actualRows11372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11372=7428 := by core033_kernel_decide
theorem rows11373 : actualRows11373=WordField.canonicalRows actualModulus 11373 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11373 : actualRows11373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11373=2820 := by core033_kernel_decide
theorem rows11374 : actualRows11374=WordField.canonicalRows actualModulus 11374 (.bnot 11373) := by core033_kernel_decide
theorem stats11374 : actualRows11374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11374=6276 := by core033_kernel_decide
theorem rows11375 : actualRows11375=WordField.canonicalRows actualModulus 11375 (.band 11372 11374) := by core033_kernel_decide
theorem stats11375 : actualRows11375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11375=5124 := by core033_kernel_decide
theorem rows11376 : actualRows11376=WordField.canonicalRows actualModulus 11376 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats11376 : actualRows11376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11376=2892 := by core033_kernel_decide
theorem rows11377 : actualRows11377=WordField.canonicalRows actualModulus 11377 (.bxor 10642 11376) := by core033_kernel_decide
theorem stats11377 : actualRows11377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11377=7428 := by core033_kernel_decide
theorem rows11378 : actualRows11378=WordField.canonicalRows actualModulus 11378 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11378 : actualRows11378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11378=2820 := by core033_kernel_decide
theorem rows11379 : actualRows11379=WordField.canonicalRows actualModulus 11379 (.bnot 11378) := by core033_kernel_decide
theorem stats11379 : actualRows11379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11379=6276 := by core033_kernel_decide
theorem rows11380 : actualRows11380=WordField.canonicalRows actualModulus 11380 (.bxor 11377 11379) := by core033_kernel_decide
theorem stats11380 : actualRows11380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11380=7428 := by core033_kernel_decide
theorem rows11381 : actualRows11381=WordField.canonicalRows actualModulus 11381 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats11381 : actualRows11381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11381=2892 := by core033_kernel_decide
def partRows175 : List R1CS.Row := actualRows11318++actualRows11319++actualRows11320++actualRows11321++actualRows11322++actualRows11323++actualRows11324++actualRows11325++actualRows11326++actualRows11327++actualRows11328++actualRows11329++actualRows11330++actualRows11331++actualRows11332++actualRows11333++actualRows11334++actualRows11335++actualRows11336++actualRows11337++actualRows11338++actualRows11339++actualRows11340++actualRows11341++actualRows11342++actualRows11343++actualRows11344++actualRows11345++actualRows11346++actualRows11347++actualRows11348++actualRows11349++actualRows11350++actualRows11351++actualRows11352++actualRows11353++actualRows11354++actualRows11355++actualRows11356++actualRows11357++actualRows11358++actualRows11359++actualRows11360++actualRows11361++actualRows11362++actualRows11363++actualRows11364++actualRows11365++actualRows11366++actualRows11367++actualRows11368++actualRows11369++actualRows11370++actualRows11371++actualRows11372++actualRows11373++actualRows11374++actualRows11375++actualRows11376++actualRows11377++actualRows11378++actualRows11379++actualRows11380++actualRows11381
def partOps175 : List WordIR.Op := [.bnot 11317,.bxor 11316 11318,.shr 10983 1,.literal (BitVec.ofNat 32 0),.bnot 11321,.badd 11320 11322,.bnot 11323,.band 11319 11324,.bxor 11315 11325,.shr 11326 31,.literal (BitVec.ofNat 32 1),.bxor 11327 11328,.shr 10994 1,.literal (BitVec.ofNat 32 0),.bnot 11331,.band 11330 11332,.shr 10994 1,.literal (BitVec.ofNat 32 0),.bnot 11335,.bxor 11334 11336,.shr 10994 1,.literal (BitVec.ofNat 32 0),.bnot 11339,.badd 11338 11340,.bnot 11341,.band 11337 11342,.bxor 11333 11343,.shr 11344 31,.literal (BitVec.ofNat 32 1),.bxor 11345 11346,.literal (BitVec.ofNat 32 1),.badd 10642 11348,.bnot 10642,.literal (BitVec.ofNat 32 255),.band 11350 11351,.shr 10642 8,.literal (BitVec.ofNat 32 0),.bnot 11354,.band 11353 11355,.shr 10642 8,.literal (BitVec.ofNat 32 0),.bnot 11358,.bxor 11357 11359,.shr 10642 8,.literal (BitVec.ofNat 32 0),.bnot 11362,.badd 11361 11363,.bnot 11364,.band 11360 11365,.bxor 11356 11366,.shr 11367 31,.literal (BitVec.ofNat 32 1),.bxor 11368 11369,.literal (BitVec.ofNat 32 256),.bxor 10642 11371,.literal (BitVec.ofNat 32 0),.bnot 11373,.band 11372 11374,.literal (BitVec.ofNat 32 256),.bxor 10642 11376,.literal (BitVec.ofNat 32 0),.bnot 11378,.bxor 11377 11379,.literal (BitVec.ofNat 32 256)]
theorem partExact175 : partRows175=WordField.rows actualModulus 11318 partOps175 := by
  simp only [partRows175,partOps175,WordField.rows,rows11318,rows11319,rows11320,rows11321,rows11322,rows11323,rows11324,rows11325,rows11326,rows11327,rows11328,rows11329,rows11330,rows11331,rows11332,rows11333,rows11334,rows11335,rows11336,rows11337,rows11338,rows11339,rows11340,rows11341,rows11342,rows11343,rows11344,rows11345,rows11346,rows11347,rows11348,rows11349,rows11350,rows11351,rows11352,rows11353,rows11354,rows11355,rows11356,rows11357,rows11358,rows11359,rows11360,rows11361,rows11362,rows11363,rows11364,rows11365,rows11366,rows11367,rows11368,rows11369,rows11370,rows11371,rows11372,rows11373,rows11374,rows11375,rows11376,rows11377,rows11378,rows11379,rows11380,rows11381,List.append_assoc,List.append_nil]
theorem partLength175 : partOps175.length=64 := by decide
theorem partStats175 : partRows175.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows175=325968 := by
  simp only [partRows175,List.length_append,MatrixRowBlocks.rows_weight_append,stats11318.1,stats11318.2,stats11319.1,stats11319.2,stats11320.1,stats11320.2,stats11321.1,stats11321.2,stats11322.1,stats11322.2,stats11323.1,stats11323.2,stats11324.1,stats11324.2,stats11325.1,stats11325.2,stats11326.1,stats11326.2,stats11327.1,stats11327.2,stats11328.1,stats11328.2,stats11329.1,stats11329.2,stats11330.1,stats11330.2,stats11331.1,stats11331.2,stats11332.1,stats11332.2,stats11333.1,stats11333.2,stats11334.1,stats11334.2,stats11335.1,stats11335.2,stats11336.1,stats11336.2,stats11337.1,stats11337.2,stats11338.1,stats11338.2,stats11339.1,stats11339.2,stats11340.1,stats11340.2,stats11341.1,stats11341.2,stats11342.1,stats11342.2,stats11343.1,stats11343.2,stats11344.1,stats11344.2,stats11345.1,stats11345.2,stats11346.1,stats11346.2,stats11347.1,stats11347.2,stats11348.1,stats11348.2,stats11349.1,stats11349.2,stats11350.1,stats11350.2,stats11351.1,stats11351.2,stats11352.1,stats11352.2,stats11353.1,stats11353.2,stats11354.1,stats11354.2,stats11355.1,stats11355.2,stats11356.1,stats11356.2,stats11357.1,stats11357.2,stats11358.1,stats11358.2,stats11359.1,stats11359.2,stats11360.1,stats11360.2,stats11361.1,stats11361.2,stats11362.1,stats11362.2,stats11363.1,stats11363.2,stats11364.1,stats11364.2,stats11365.1,stats11365.2,stats11366.1,stats11366.2,stats11367.1,stats11367.2,stats11368.1,stats11368.2,stats11369.1,stats11369.2,stats11370.1,stats11370.2,stats11371.1,stats11371.2,stats11372.1,stats11372.2,stats11373.1,stats11373.2,stats11374.1,stats11374.2,stats11375.1,stats11375.2,stats11376.1,stats11376.2,stats11377.1,stats11377.2,stats11378.1,stats11378.2,stats11379.1,stats11379.2,stats11380.1,stats11380.2,stats11381.1,stats11381.2]
  decide
end AuthenticatedBranchRoundCheckedRows
