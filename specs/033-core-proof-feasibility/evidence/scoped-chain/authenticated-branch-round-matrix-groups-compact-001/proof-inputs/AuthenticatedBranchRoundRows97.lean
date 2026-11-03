import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData98
import AuthenticatedBranchRoundInstructionMatrixData99
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6326 : actualRows6326=WordField.canonicalRows actualModulus 6326 (.band 6324 6325) := by core033_kernel_decide
theorem stats6326 : actualRows6326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6326=5124 := by core033_kernel_decide
theorem rows6327 : actualRows6327=WordField.canonicalRows actualModulus 6327 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6327 : actualRows6327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6327=2892 := by core033_kernel_decide
theorem rows6328 : actualRows6328=WordField.canonicalRows actualModulus 6328 (.bxor 1299 6327) := by core033_kernel_decide
theorem stats6328 : actualRows6328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6328=7428 := by core033_kernel_decide
theorem rows6329 : actualRows6329=WordField.canonicalRows actualModulus 6329 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6329 : actualRows6329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6329=2820 := by core033_kernel_decide
theorem rows6330 : actualRows6330=WordField.canonicalRows actualModulus 6330 (.bnot 6329) := by core033_kernel_decide
theorem stats6330 : actualRows6330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6330=6276 := by core033_kernel_decide
theorem rows6331 : actualRows6331=WordField.canonicalRows actualModulus 6331 (.band 6328 6330) := by core033_kernel_decide
theorem stats6331 : actualRows6331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6331=5124 := by core033_kernel_decide
theorem rows6332 : actualRows6332=WordField.canonicalRows actualModulus 6332 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6332 : actualRows6332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6332=2892 := by core033_kernel_decide
theorem rows6333 : actualRows6333=WordField.canonicalRows actualModulus 6333 (.bxor 1299 6332) := by core033_kernel_decide
theorem stats6333 : actualRows6333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6333=7428 := by core033_kernel_decide
theorem rows6334 : actualRows6334=WordField.canonicalRows actualModulus 6334 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6334 : actualRows6334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6334=2820 := by core033_kernel_decide
theorem rows6335 : actualRows6335=WordField.canonicalRows actualModulus 6335 (.bnot 6334) := by core033_kernel_decide
theorem stats6335 : actualRows6335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6335=6276 := by core033_kernel_decide
theorem rows6336 : actualRows6336=WordField.canonicalRows actualModulus 6336 (.bxor 6333 6335) := by core033_kernel_decide
theorem stats6336 : actualRows6336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6336=7428 := by core033_kernel_decide
theorem rows6337 : actualRows6337=WordField.canonicalRows actualModulus 6337 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6337 : actualRows6337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6337=2892 := by core033_kernel_decide
theorem rows6338 : actualRows6338=WordField.canonicalRows actualModulus 6338 (.bxor 1299 6337) := by core033_kernel_decide
theorem stats6338 : actualRows6338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6338=7428 := by core033_kernel_decide
theorem rows6339 : actualRows6339=WordField.canonicalRows actualModulus 6339 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6339 : actualRows6339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6339=2820 := by core033_kernel_decide
theorem rows6340 : actualRows6340=WordField.canonicalRows actualModulus 6340 (.bnot 6339) := by core033_kernel_decide
theorem stats6340 : actualRows6340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6340=6276 := by core033_kernel_decide
theorem rows6341 : actualRows6341=WordField.canonicalRows actualModulus 6341 (.badd 6338 6340) := by core033_kernel_decide
theorem stats6341 : actualRows6341.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6341=5388 := by core033_kernel_decide
theorem rows6342 : actualRows6342=WordField.canonicalRows actualModulus 6342 (.bnot 6341) := by core033_kernel_decide
theorem stats6342 : actualRows6342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6342=6276 := by core033_kernel_decide
theorem rows6343 : actualRows6343=WordField.canonicalRows actualModulus 6343 (.band 6336 6342) := by core033_kernel_decide
theorem stats6343 : actualRows6343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6343=5124 := by core033_kernel_decide
theorem rows6344 : actualRows6344=WordField.canonicalRows actualModulus 6344 (.bxor 6331 6343) := by core033_kernel_decide
theorem stats6344 : actualRows6344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6344=7428 := by core033_kernel_decide
theorem rows6345 : actualRows6345=WordField.canonicalRows actualModulus 6345 (.shr 6344 31) := by core033_kernel_decide
theorem stats6345 : actualRows6345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6345=2892 := by core033_kernel_decide
theorem rows6346 : actualRows6346=WordField.canonicalRows actualModulus 6346 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6346 : actualRows6346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6346=2892 := by core033_kernel_decide
theorem rows6347 : actualRows6347=WordField.canonicalRows actualModulus 6347 (.bxor 6345 6346) := by core033_kernel_decide
theorem stats6347 : actualRows6347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6347=7428 := by core033_kernel_decide
theorem rows6348 : actualRows6348=WordField.canonicalRows actualModulus 6348 (.bnot 6347) := by core033_kernel_decide
theorem stats6348 : actualRows6348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6348=6276 := by core033_kernel_decide
theorem rows6349 : actualRows6349=WordField.canonicalRows actualModulus 6349 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6349 : actualRows6349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6349=2892 := by core033_kernel_decide
theorem rows6350 : actualRows6350=WordField.canonicalRows actualModulus 6350 (.badd 6348 6349) := by core033_kernel_decide
theorem stats6350 : actualRows6350.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6350=5388 := by core033_kernel_decide
theorem rows6351 : actualRows6351=WordField.canonicalRows actualModulus 6351 (.bnot 6350) := by core033_kernel_decide
theorem stats6351 : actualRows6351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6351=6276 := by core033_kernel_decide
theorem rows6352 : actualRows6352=WordField.canonicalRows actualModulus 6352 (.band 6351 2663) := by core033_kernel_decide
theorem stats6352 : actualRows6352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6352=5124 := by core033_kernel_decide
theorem rows6353 : actualRows6353=WordField.canonicalRows actualModulus 6353 (.bxor 6326 6352) := by core033_kernel_decide
theorem stats6353 : actualRows6353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6353=7428 := by core033_kernel_decide
theorem rows6354 : actualRows6354=WordField.canonicalRows actualModulus 6354 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6354 : actualRows6354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6354=2892 := by core033_kernel_decide
theorem rows6355 : actualRows6355=WordField.canonicalRows actualModulus 6355 (.bxor 1299 6354) := by core033_kernel_decide
theorem stats6355 : actualRows6355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6355=7428 := by core033_kernel_decide
theorem rows6356 : actualRows6356=WordField.canonicalRows actualModulus 6356 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6356 : actualRows6356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6356=2820 := by core033_kernel_decide
theorem rows6357 : actualRows6357=WordField.canonicalRows actualModulus 6357 (.bnot 6356) := by core033_kernel_decide
theorem stats6357 : actualRows6357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6357=6276 := by core033_kernel_decide
theorem rows6358 : actualRows6358=WordField.canonicalRows actualModulus 6358 (.band 6355 6357) := by core033_kernel_decide
theorem stats6358 : actualRows6358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6358=5124 := by core033_kernel_decide
theorem rows6359 : actualRows6359=WordField.canonicalRows actualModulus 6359 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6359 : actualRows6359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6359=2892 := by core033_kernel_decide
theorem rows6360 : actualRows6360=WordField.canonicalRows actualModulus 6360 (.bxor 1299 6359) := by core033_kernel_decide
theorem stats6360 : actualRows6360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6360=7428 := by core033_kernel_decide
theorem rows6361 : actualRows6361=WordField.canonicalRows actualModulus 6361 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6361 : actualRows6361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6361=2820 := by core033_kernel_decide
theorem rows6362 : actualRows6362=WordField.canonicalRows actualModulus 6362 (.bnot 6361) := by core033_kernel_decide
theorem stats6362 : actualRows6362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6362=6276 := by core033_kernel_decide
theorem rows6363 : actualRows6363=WordField.canonicalRows actualModulus 6363 (.bxor 6360 6362) := by core033_kernel_decide
theorem stats6363 : actualRows6363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6363=7428 := by core033_kernel_decide
theorem rows6364 : actualRows6364=WordField.canonicalRows actualModulus 6364 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6364 : actualRows6364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6364=2892 := by core033_kernel_decide
theorem rows6365 : actualRows6365=WordField.canonicalRows actualModulus 6365 (.bxor 1299 6364) := by core033_kernel_decide
theorem stats6365 : actualRows6365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6365=7428 := by core033_kernel_decide
theorem rows6366 : actualRows6366=WordField.canonicalRows actualModulus 6366 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6366 : actualRows6366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6366=2820 := by core033_kernel_decide
theorem rows6367 : actualRows6367=WordField.canonicalRows actualModulus 6367 (.bnot 6366) := by core033_kernel_decide
theorem stats6367 : actualRows6367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6367=6276 := by core033_kernel_decide
theorem rows6368 : actualRows6368=WordField.canonicalRows actualModulus 6368 (.badd 6365 6367) := by core033_kernel_decide
theorem stats6368 : actualRows6368.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6368=5388 := by core033_kernel_decide
theorem rows6369 : actualRows6369=WordField.canonicalRows actualModulus 6369 (.bnot 6368) := by core033_kernel_decide
theorem stats6369 : actualRows6369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6369=6276 := by core033_kernel_decide
theorem rows6370 : actualRows6370=WordField.canonicalRows actualModulus 6370 (.band 6363 6369) := by core033_kernel_decide
theorem stats6370 : actualRows6370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6370=5124 := by core033_kernel_decide
theorem rows6371 : actualRows6371=WordField.canonicalRows actualModulus 6371 (.bxor 6358 6370) := by core033_kernel_decide
theorem stats6371 : actualRows6371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6371=7428 := by core033_kernel_decide
theorem rows6372 : actualRows6372=WordField.canonicalRows actualModulus 6372 (.shr 6371 31) := by core033_kernel_decide
theorem stats6372 : actualRows6372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6372=2892 := by core033_kernel_decide
theorem rows6373 : actualRows6373=WordField.canonicalRows actualModulus 6373 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6373 : actualRows6373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6373=2892 := by core033_kernel_decide
theorem rows6374 : actualRows6374=WordField.canonicalRows actualModulus 6374 (.bxor 6372 6373) := by core033_kernel_decide
theorem stats6374 : actualRows6374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6374=7428 := by core033_kernel_decide
theorem rows6375 : actualRows6375=WordField.canonicalRows actualModulus 6375 (.bnot 6374) := by core033_kernel_decide
theorem stats6375 : actualRows6375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6375=6276 := by core033_kernel_decide
theorem rows6376 : actualRows6376=WordField.canonicalRows actualModulus 6376 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6376 : actualRows6376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6376=2892 := by core033_kernel_decide
theorem rows6377 : actualRows6377=WordField.canonicalRows actualModulus 6377 (.badd 6375 6376) := by core033_kernel_decide
theorem stats6377 : actualRows6377.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6377=5388 := by core033_kernel_decide
theorem rows6378 : actualRows6378=WordField.canonicalRows actualModulus 6378 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6378 : actualRows6378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6378=2820 := by core033_kernel_decide
theorem rows6379 : actualRows6379=WordField.canonicalRows actualModulus 6379 (.band 6377 6378) := by core033_kernel_decide
theorem stats6379 : actualRows6379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6379=5124 := by core033_kernel_decide
theorem rows6380 : actualRows6380=WordField.canonicalRows actualModulus 6380 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6380 : actualRows6380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6380=2892 := by core033_kernel_decide
theorem rows6381 : actualRows6381=WordField.canonicalRows actualModulus 6381 (.bxor 1299 6380) := by core033_kernel_decide
theorem stats6381 : actualRows6381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6381=7428 := by core033_kernel_decide
theorem rows6382 : actualRows6382=WordField.canonicalRows actualModulus 6382 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6382 : actualRows6382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6382=2820 := by core033_kernel_decide
theorem rows6383 : actualRows6383=WordField.canonicalRows actualModulus 6383 (.bnot 6382) := by core033_kernel_decide
theorem stats6383 : actualRows6383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6383=6276 := by core033_kernel_decide
theorem rows6384 : actualRows6384=WordField.canonicalRows actualModulus 6384 (.band 6381 6383) := by core033_kernel_decide
theorem stats6384 : actualRows6384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6384=5124 := by core033_kernel_decide
theorem rows6385 : actualRows6385=WordField.canonicalRows actualModulus 6385 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6385 : actualRows6385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6385=2892 := by core033_kernel_decide
theorem rows6386 : actualRows6386=WordField.canonicalRows actualModulus 6386 (.bxor 1299 6385) := by core033_kernel_decide
theorem stats6386 : actualRows6386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6386=7428 := by core033_kernel_decide
theorem rows6387 : actualRows6387=WordField.canonicalRows actualModulus 6387 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6387 : actualRows6387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6387=2820 := by core033_kernel_decide
theorem rows6388 : actualRows6388=WordField.canonicalRows actualModulus 6388 (.bnot 6387) := by core033_kernel_decide
theorem stats6388 : actualRows6388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6388=6276 := by core033_kernel_decide
theorem rows6389 : actualRows6389=WordField.canonicalRows actualModulus 6389 (.bxor 6386 6388) := by core033_kernel_decide
theorem stats6389 : actualRows6389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6389=7428 := by core033_kernel_decide
def partRows97 : List R1CS.Row := actualRows6326++actualRows6327++actualRows6328++actualRows6329++actualRows6330++actualRows6331++actualRows6332++actualRows6333++actualRows6334++actualRows6335++actualRows6336++actualRows6337++actualRows6338++actualRows6339++actualRows6340++actualRows6341++actualRows6342++actualRows6343++actualRows6344++actualRows6345++actualRows6346++actualRows6347++actualRows6348++actualRows6349++actualRows6350++actualRows6351++actualRows6352++actualRows6353++actualRows6354++actualRows6355++actualRows6356++actualRows6357++actualRows6358++actualRows6359++actualRows6360++actualRows6361++actualRows6362++actualRows6363++actualRows6364++actualRows6365++actualRows6366++actualRows6367++actualRows6368++actualRows6369++actualRows6370++actualRows6371++actualRows6372++actualRows6373++actualRows6374++actualRows6375++actualRows6376++actualRows6377++actualRows6378++actualRows6379++actualRows6380++actualRows6381++actualRows6382++actualRows6383++actualRows6384++actualRows6385++actualRows6386++actualRows6387++actualRows6388++actualRows6389
def partOps97 : List WordIR.Op := [.band 6324 6325,.literal (BitVec.ofNat 32 2),.bxor 1299 6327,.literal (BitVec.ofNat 32 0),.bnot 6329,.band 6328 6330,.literal (BitVec.ofNat 32 2),.bxor 1299 6332,.literal (BitVec.ofNat 32 0),.bnot 6334,.bxor 6333 6335,.literal (BitVec.ofNat 32 2),.bxor 1299 6337,.literal (BitVec.ofNat 32 0),.bnot 6339,.badd 6338 6340,.bnot 6341,.band 6336 6342,.bxor 6331 6343,.shr 6344 31,.literal (BitVec.ofNat 32 1),.bxor 6345 6346,.bnot 6347,.literal (BitVec.ofNat 32 1),.badd 6348 6349,.bnot 6350,.band 6351 2663,.bxor 6326 6352,.literal (BitVec.ofNat 32 2),.bxor 1299 6354,.literal (BitVec.ofNat 32 0),.bnot 6356,.band 6355 6357,.literal (BitVec.ofNat 32 2),.bxor 1299 6359,.literal (BitVec.ofNat 32 0),.bnot 6361,.bxor 6360 6362,.literal (BitVec.ofNat 32 2),.bxor 1299 6364,.literal (BitVec.ofNat 32 0),.bnot 6366,.badd 6365 6367,.bnot 6368,.band 6363 6369,.bxor 6358 6370,.shr 6371 31,.literal (BitVec.ofNat 32 1),.bxor 6372 6373,.bnot 6374,.literal (BitVec.ofNat 32 1),.badd 6375 6376,.literal (BitVec.ofNat 32 0),.band 6377 6378,.literal (BitVec.ofNat 32 2),.bxor 1299 6380,.literal (BitVec.ofNat 32 0),.bnot 6382,.band 6381 6383,.literal (BitVec.ofNat 32 2),.bxor 1299 6385,.literal (BitVec.ofNat 32 0),.bnot 6387,.bxor 6386 6388]
theorem partExact97 : partRows97=WordField.rows actualModulus 6326 partOps97 := by
  simp only [partRows97,partOps97,WordField.rows,rows6326,rows6327,rows6328,rows6329,rows6330,rows6331,rows6332,rows6333,rows6334,rows6335,rows6336,rows6337,rows6338,rows6339,rows6340,rows6341,rows6342,rows6343,rows6344,rows6345,rows6346,rows6347,rows6348,rows6349,rows6350,rows6351,rows6352,rows6353,rows6354,rows6355,rows6356,rows6357,rows6358,rows6359,rows6360,rows6361,rows6362,rows6363,rows6364,rows6365,rows6366,rows6367,rows6368,rows6369,rows6370,rows6371,rows6372,rows6373,rows6374,rows6375,rows6376,rows6377,rows6378,rows6379,rows6380,rows6381,rows6382,rows6383,rows6384,rows6385,rows6386,rows6387,rows6388,rows6389,List.append_assoc,List.append_nil]
theorem partLength97 : partOps97.length=64 := by decide
theorem partStats97 : partRows97.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows97=328848 := by
  simp only [partRows97,List.length_append,MatrixRowBlocks.rows_weight_append,stats6326.1,stats6326.2,stats6327.1,stats6327.2,stats6328.1,stats6328.2,stats6329.1,stats6329.2,stats6330.1,stats6330.2,stats6331.1,stats6331.2,stats6332.1,stats6332.2,stats6333.1,stats6333.2,stats6334.1,stats6334.2,stats6335.1,stats6335.2,stats6336.1,stats6336.2,stats6337.1,stats6337.2,stats6338.1,stats6338.2,stats6339.1,stats6339.2,stats6340.1,stats6340.2,stats6341.1,stats6341.2,stats6342.1,stats6342.2,stats6343.1,stats6343.2,stats6344.1,stats6344.2,stats6345.1,stats6345.2,stats6346.1,stats6346.2,stats6347.1,stats6347.2,stats6348.1,stats6348.2,stats6349.1,stats6349.2,stats6350.1,stats6350.2,stats6351.1,stats6351.2,stats6352.1,stats6352.2,stats6353.1,stats6353.2,stats6354.1,stats6354.2,stats6355.1,stats6355.2,stats6356.1,stats6356.2,stats6357.1,stats6357.2,stats6358.1,stats6358.2,stats6359.1,stats6359.2,stats6360.1,stats6360.2,stats6361.1,stats6361.2,stats6362.1,stats6362.2,stats6363.1,stats6363.2,stats6364.1,stats6364.2,stats6365.1,stats6365.2,stats6366.1,stats6366.2,stats6367.1,stats6367.2,stats6368.1,stats6368.2,stats6369.1,stats6369.2,stats6370.1,stats6370.2,stats6371.1,stats6371.2,stats6372.1,stats6372.2,stats6373.1,stats6373.2,stats6374.1,stats6374.2,stats6375.1,stats6375.2,stats6376.1,stats6376.2,stats6377.1,stats6377.2,stats6378.1,stats6378.2,stats6379.1,stats6379.2,stats6380.1,stats6380.2,stats6381.1,stats6381.2,stats6382.1,stats6382.2,stats6383.1,stats6383.2,stats6384.1,stats6384.2,stats6385.1,stats6385.2,stats6386.1,stats6386.2,stats6387.1,stats6387.2,stats6388.1,stats6388.2,stats6389.1,stats6389.2]
  decide
end AuthenticatedBranchRoundCheckedRows
