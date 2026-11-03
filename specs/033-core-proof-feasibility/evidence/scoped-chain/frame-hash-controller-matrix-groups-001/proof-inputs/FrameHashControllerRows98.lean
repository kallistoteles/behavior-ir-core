import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData98
import FrameHashControllerInstructionMatrixData99
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6315 : actualRows6315=WordField.canonicalRows actualModulus 6315 (.bnot 6314) := by core033_kernel_decide
theorem stats6315 : actualRows6315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6315=6276 := by core033_kernel_decide
theorem rows6316 : actualRows6316=WordField.canonicalRows actualModulus 6316 (.badd 6313 6315) := by core033_kernel_decide
theorem stats6316 : actualRows6316.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6316=5388 := by core033_kernel_decide
theorem rows6317 : actualRows6317=WordField.canonicalRows actualModulus 6317 (.bnot 6316) := by core033_kernel_decide
theorem stats6317 : actualRows6317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6317=6276 := by core033_kernel_decide
theorem rows6318 : actualRows6318=WordField.canonicalRows actualModulus 6318 (.band 6312 6317) := by core033_kernel_decide
theorem stats6318 : actualRows6318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6318=5124 := by core033_kernel_decide
theorem rows6319 : actualRows6319=WordField.canonicalRows actualModulus 6319 (.bxor 6308 6318) := by core033_kernel_decide
theorem stats6319 : actualRows6319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6319=7428 := by core033_kernel_decide
theorem rows6320 : actualRows6320=WordField.canonicalRows actualModulus 6320 (.shr 6319 31) := by core033_kernel_decide
theorem stats6320 : actualRows6320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6320=2892 := by core033_kernel_decide
theorem rows6321 : actualRows6321=WordField.canonicalRows actualModulus 6321 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6321 : actualRows6321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6321=2892 := by core033_kernel_decide
theorem rows6322 : actualRows6322=WordField.canonicalRows actualModulus 6322 (.bxor 6320 6321) := by core033_kernel_decide
theorem stats6322 : actualRows6322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6322=7428 := by core033_kernel_decide
theorem rows6323 : actualRows6323=WordField.canonicalRows actualModulus 6323 (.shr 4952 8) := by core033_kernel_decide
theorem stats6323 : actualRows6323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6323=4548 := by core033_kernel_decide
theorem rows6324 : actualRows6324=WordField.canonicalRows actualModulus 6324 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6324 : actualRows6324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6324=2820 := by core033_kernel_decide
theorem rows6325 : actualRows6325=WordField.canonicalRows actualModulus 6325 (.bnot 6324) := by core033_kernel_decide
theorem stats6325 : actualRows6325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6325=6276 := by core033_kernel_decide
theorem rows6326 : actualRows6326=WordField.canonicalRows actualModulus 6326 (.band 6323 6325) := by core033_kernel_decide
theorem stats6326 : actualRows6326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6326=5124 := by core033_kernel_decide
theorem rows6327 : actualRows6327=WordField.canonicalRows actualModulus 6327 (.shr 4952 8) := by core033_kernel_decide
theorem stats6327 : actualRows6327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6327=4548 := by core033_kernel_decide
theorem rows6328 : actualRows6328=WordField.canonicalRows actualModulus 6328 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6328 : actualRows6328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6328=2820 := by core033_kernel_decide
theorem rows6329 : actualRows6329=WordField.canonicalRows actualModulus 6329 (.bnot 6328) := by core033_kernel_decide
theorem stats6329 : actualRows6329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6329=6276 := by core033_kernel_decide
theorem rows6330 : actualRows6330=WordField.canonicalRows actualModulus 6330 (.bxor 6327 6329) := by core033_kernel_decide
theorem stats6330 : actualRows6330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6330=7428 := by core033_kernel_decide
theorem rows6331 : actualRows6331=WordField.canonicalRows actualModulus 6331 (.shr 4952 8) := by core033_kernel_decide
theorem stats6331 : actualRows6331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6331=4548 := by core033_kernel_decide
theorem rows6332 : actualRows6332=WordField.canonicalRows actualModulus 6332 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6332 : actualRows6332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6332=2820 := by core033_kernel_decide
theorem rows6333 : actualRows6333=WordField.canonicalRows actualModulus 6333 (.bnot 6332) := by core033_kernel_decide
theorem stats6333 : actualRows6333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6333=6276 := by core033_kernel_decide
theorem rows6334 : actualRows6334=WordField.canonicalRows actualModulus 6334 (.badd 6331 6333) := by core033_kernel_decide
theorem stats6334 : actualRows6334.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6334=5388 := by core033_kernel_decide
theorem rows6335 : actualRows6335=WordField.canonicalRows actualModulus 6335 (.bnot 6334) := by core033_kernel_decide
theorem stats6335 : actualRows6335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6335=6276 := by core033_kernel_decide
theorem rows6336 : actualRows6336=WordField.canonicalRows actualModulus 6336 (.band 6330 6335) := by core033_kernel_decide
theorem stats6336 : actualRows6336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6336=5124 := by core033_kernel_decide
theorem rows6337 : actualRows6337=WordField.canonicalRows actualModulus 6337 (.bxor 6326 6336) := by core033_kernel_decide
theorem stats6337 : actualRows6337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6337=7428 := by core033_kernel_decide
theorem rows6338 : actualRows6338=WordField.canonicalRows actualModulus 6338 (.shr 6337 31) := by core033_kernel_decide
theorem stats6338 : actualRows6338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6338=2892 := by core033_kernel_decide
theorem rows6339 : actualRows6339=WordField.canonicalRows actualModulus 6339 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6339 : actualRows6339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6339=2892 := by core033_kernel_decide
theorem rows6340 : actualRows6340=WordField.canonicalRows actualModulus 6340 (.bxor 6338 6339) := by core033_kernel_decide
theorem stats6340 : actualRows6340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6340=7428 := by core033_kernel_decide
theorem rows6341 : actualRows6341=WordField.canonicalRows actualModulus 6341 (.shr 5005 8) := by core033_kernel_decide
theorem stats6341 : actualRows6341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6341=4548 := by core033_kernel_decide
theorem rows6342 : actualRows6342=WordField.canonicalRows actualModulus 6342 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6342 : actualRows6342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6342=2820 := by core033_kernel_decide
theorem rows6343 : actualRows6343=WordField.canonicalRows actualModulus 6343 (.bnot 6342) := by core033_kernel_decide
theorem stats6343 : actualRows6343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6343=6276 := by core033_kernel_decide
theorem rows6344 : actualRows6344=WordField.canonicalRows actualModulus 6344 (.band 6341 6343) := by core033_kernel_decide
theorem stats6344 : actualRows6344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6344=5124 := by core033_kernel_decide
theorem rows6345 : actualRows6345=WordField.canonicalRows actualModulus 6345 (.shr 5005 8) := by core033_kernel_decide
theorem stats6345 : actualRows6345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6345=4548 := by core033_kernel_decide
theorem rows6346 : actualRows6346=WordField.canonicalRows actualModulus 6346 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6346 : actualRows6346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6346=2820 := by core033_kernel_decide
theorem rows6347 : actualRows6347=WordField.canonicalRows actualModulus 6347 (.bnot 6346) := by core033_kernel_decide
theorem stats6347 : actualRows6347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6347=6276 := by core033_kernel_decide
theorem rows6348 : actualRows6348=WordField.canonicalRows actualModulus 6348 (.bxor 6345 6347) := by core033_kernel_decide
theorem stats6348 : actualRows6348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6348=7428 := by core033_kernel_decide
theorem rows6349 : actualRows6349=WordField.canonicalRows actualModulus 6349 (.shr 5005 8) := by core033_kernel_decide
theorem stats6349 : actualRows6349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6349=4548 := by core033_kernel_decide
theorem rows6350 : actualRows6350=WordField.canonicalRows actualModulus 6350 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6350 : actualRows6350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6350=2820 := by core033_kernel_decide
theorem rows6351 : actualRows6351=WordField.canonicalRows actualModulus 6351 (.bnot 6350) := by core033_kernel_decide
theorem stats6351 : actualRows6351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6351=6276 := by core033_kernel_decide
theorem rows6352 : actualRows6352=WordField.canonicalRows actualModulus 6352 (.badd 6349 6351) := by core033_kernel_decide
theorem stats6352 : actualRows6352.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6352=5388 := by core033_kernel_decide
theorem rows6353 : actualRows6353=WordField.canonicalRows actualModulus 6353 (.bnot 6352) := by core033_kernel_decide
theorem stats6353 : actualRows6353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6353=6276 := by core033_kernel_decide
theorem rows6354 : actualRows6354=WordField.canonicalRows actualModulus 6354 (.band 6348 6353) := by core033_kernel_decide
theorem stats6354 : actualRows6354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6354=5124 := by core033_kernel_decide
theorem rows6355 : actualRows6355=WordField.canonicalRows actualModulus 6355 (.bxor 6344 6354) := by core033_kernel_decide
theorem stats6355 : actualRows6355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6355=7428 := by core033_kernel_decide
theorem rows6356 : actualRows6356=WordField.canonicalRows actualModulus 6356 (.shr 6355 31) := by core033_kernel_decide
theorem stats6356 : actualRows6356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6356=2892 := by core033_kernel_decide
theorem rows6357 : actualRows6357=WordField.canonicalRows actualModulus 6357 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6357 : actualRows6357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6357=2892 := by core033_kernel_decide
theorem rows6358 : actualRows6358=WordField.canonicalRows actualModulus 6358 (.bxor 6356 6357) := by core033_kernel_decide
theorem stats6358 : actualRows6358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6358=7428 := by core033_kernel_decide
theorem rows6359 : actualRows6359=WordField.canonicalRows actualModulus 6359 (.shr 5058 8) := by core033_kernel_decide
theorem stats6359 : actualRows6359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6359=4548 := by core033_kernel_decide
theorem rows6360 : actualRows6360=WordField.canonicalRows actualModulus 6360 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6360 : actualRows6360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6360=2820 := by core033_kernel_decide
theorem rows6361 : actualRows6361=WordField.canonicalRows actualModulus 6361 (.bnot 6360) := by core033_kernel_decide
theorem stats6361 : actualRows6361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6361=6276 := by core033_kernel_decide
theorem rows6362 : actualRows6362=WordField.canonicalRows actualModulus 6362 (.band 6359 6361) := by core033_kernel_decide
theorem stats6362 : actualRows6362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6362=5124 := by core033_kernel_decide
theorem rows6363 : actualRows6363=WordField.canonicalRows actualModulus 6363 (.shr 5058 8) := by core033_kernel_decide
theorem stats6363 : actualRows6363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6363=4548 := by core033_kernel_decide
theorem rows6364 : actualRows6364=WordField.canonicalRows actualModulus 6364 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6364 : actualRows6364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6364=2820 := by core033_kernel_decide
theorem rows6365 : actualRows6365=WordField.canonicalRows actualModulus 6365 (.bnot 6364) := by core033_kernel_decide
theorem stats6365 : actualRows6365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6365=6276 := by core033_kernel_decide
theorem rows6366 : actualRows6366=WordField.canonicalRows actualModulus 6366 (.bxor 6363 6365) := by core033_kernel_decide
theorem stats6366 : actualRows6366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6366=7428 := by core033_kernel_decide
theorem rows6367 : actualRows6367=WordField.canonicalRows actualModulus 6367 (.shr 5058 8) := by core033_kernel_decide
theorem stats6367 : actualRows6367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6367=4548 := by core033_kernel_decide
theorem rows6368 : actualRows6368=WordField.canonicalRows actualModulus 6368 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6368 : actualRows6368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6368=2820 := by core033_kernel_decide
theorem rows6369 : actualRows6369=WordField.canonicalRows actualModulus 6369 (.bnot 6368) := by core033_kernel_decide
theorem stats6369 : actualRows6369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6369=6276 := by core033_kernel_decide
theorem rows6370 : actualRows6370=WordField.canonicalRows actualModulus 6370 (.badd 6367 6369) := by core033_kernel_decide
theorem stats6370 : actualRows6370.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6370=5388 := by core033_kernel_decide
theorem rows6371 : actualRows6371=WordField.canonicalRows actualModulus 6371 (.bnot 6370) := by core033_kernel_decide
theorem stats6371 : actualRows6371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6371=6276 := by core033_kernel_decide
theorem rows6372 : actualRows6372=WordField.canonicalRows actualModulus 6372 (.band 6366 6371) := by core033_kernel_decide
theorem stats6372 : actualRows6372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6372=5124 := by core033_kernel_decide
theorem rows6373 : actualRows6373=WordField.canonicalRows actualModulus 6373 (.bxor 6362 6372) := by core033_kernel_decide
theorem stats6373 : actualRows6373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6373=7428 := by core033_kernel_decide
theorem rows6374 : actualRows6374=WordField.canonicalRows actualModulus 6374 (.shr 6373 31) := by core033_kernel_decide
theorem stats6374 : actualRows6374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6374=2892 := by core033_kernel_decide
theorem rows6375 : actualRows6375=WordField.canonicalRows actualModulus 6375 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6375 : actualRows6375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6375=2892 := by core033_kernel_decide
theorem rows6376 : actualRows6376=WordField.canonicalRows actualModulus 6376 (.bxor 6374 6375) := by core033_kernel_decide
theorem stats6376 : actualRows6376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6376=7428 := by core033_kernel_decide
theorem rows6377 : actualRows6377=WordField.canonicalRows actualModulus 6377 (.shr 5111 8) := by core033_kernel_decide
theorem stats6377 : actualRows6377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6377=4548 := by core033_kernel_decide
theorem rows6378 : actualRows6378=WordField.canonicalRows actualModulus 6378 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6378 : actualRows6378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6378=2820 := by core033_kernel_decide
def partRows98 : List R1CS.Row := actualRows6315++actualRows6316++actualRows6317++actualRows6318++actualRows6319++actualRows6320++actualRows6321++actualRows6322++actualRows6323++actualRows6324++actualRows6325++actualRows6326++actualRows6327++actualRows6328++actualRows6329++actualRows6330++actualRows6331++actualRows6332++actualRows6333++actualRows6334++actualRows6335++actualRows6336++actualRows6337++actualRows6338++actualRows6339++actualRows6340++actualRows6341++actualRows6342++actualRows6343++actualRows6344++actualRows6345++actualRows6346++actualRows6347++actualRows6348++actualRows6349++actualRows6350++actualRows6351++actualRows6352++actualRows6353++actualRows6354++actualRows6355++actualRows6356++actualRows6357++actualRows6358++actualRows6359++actualRows6360++actualRows6361++actualRows6362++actualRows6363++actualRows6364++actualRows6365++actualRows6366++actualRows6367++actualRows6368++actualRows6369++actualRows6370++actualRows6371++actualRows6372++actualRows6373++actualRows6374++actualRows6375++actualRows6376++actualRows6377++actualRows6378
def partOps98 : List WordIR.Op := [.bnot 6314,.badd 6313 6315,.bnot 6316,.band 6312 6317,.bxor 6308 6318,.shr 6319 31,.literal (BitVec.ofNat 32 1),.bxor 6320 6321,.shr 4952 8,.literal (BitVec.ofNat 32 0),.bnot 6324,.band 6323 6325,.shr 4952 8,.literal (BitVec.ofNat 32 0),.bnot 6328,.bxor 6327 6329,.shr 4952 8,.literal (BitVec.ofNat 32 0),.bnot 6332,.badd 6331 6333,.bnot 6334,.band 6330 6335,.bxor 6326 6336,.shr 6337 31,.literal (BitVec.ofNat 32 1),.bxor 6338 6339,.shr 5005 8,.literal (BitVec.ofNat 32 0),.bnot 6342,.band 6341 6343,.shr 5005 8,.literal (BitVec.ofNat 32 0),.bnot 6346,.bxor 6345 6347,.shr 5005 8,.literal (BitVec.ofNat 32 0),.bnot 6350,.badd 6349 6351,.bnot 6352,.band 6348 6353,.bxor 6344 6354,.shr 6355 31,.literal (BitVec.ofNat 32 1),.bxor 6356 6357,.shr 5058 8,.literal (BitVec.ofNat 32 0),.bnot 6360,.band 6359 6361,.shr 5058 8,.literal (BitVec.ofNat 32 0),.bnot 6364,.bxor 6363 6365,.shr 5058 8,.literal (BitVec.ofNat 32 0),.bnot 6368,.badd 6367 6369,.bnot 6370,.band 6366 6371,.bxor 6362 6372,.shr 6373 31,.literal (BitVec.ofNat 32 1),.bxor 6374 6375,.shr 5111 8,.literal (BitVec.ofNat 32 0)]
theorem partExact98 : partRows98=WordField.rows actualModulus 6315 partOps98 := by
  simp only [partRows98,partOps98,WordField.rows,rows6315,rows6316,rows6317,rows6318,rows6319,rows6320,rows6321,rows6322,rows6323,rows6324,rows6325,rows6326,rows6327,rows6328,rows6329,rows6330,rows6331,rows6332,rows6333,rows6334,rows6335,rows6336,rows6337,rows6338,rows6339,rows6340,rows6341,rows6342,rows6343,rows6344,rows6345,rows6346,rows6347,rows6348,rows6349,rows6350,rows6351,rows6352,rows6353,rows6354,rows6355,rows6356,rows6357,rows6358,rows6359,rows6360,rows6361,rows6362,rows6363,rows6364,rows6365,rows6366,rows6367,rows6368,rows6369,rows6370,rows6371,rows6372,rows6373,rows6374,rows6375,rows6376,rows6377,rows6378,List.append_assoc,List.append_nil]
theorem partLength98 : partOps98.length=64 := by decide
theorem partStats98 : partRows98.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows98=323808 := by
  simp only [partRows98,List.length_append,MatrixRowBlocks.rows_weight_append,stats6315.1,stats6315.2,stats6316.1,stats6316.2,stats6317.1,stats6317.2,stats6318.1,stats6318.2,stats6319.1,stats6319.2,stats6320.1,stats6320.2,stats6321.1,stats6321.2,stats6322.1,stats6322.2,stats6323.1,stats6323.2,stats6324.1,stats6324.2,stats6325.1,stats6325.2,stats6326.1,stats6326.2,stats6327.1,stats6327.2,stats6328.1,stats6328.2,stats6329.1,stats6329.2,stats6330.1,stats6330.2,stats6331.1,stats6331.2,stats6332.1,stats6332.2,stats6333.1,stats6333.2,stats6334.1,stats6334.2,stats6335.1,stats6335.2,stats6336.1,stats6336.2,stats6337.1,stats6337.2,stats6338.1,stats6338.2,stats6339.1,stats6339.2,stats6340.1,stats6340.2,stats6341.1,stats6341.2,stats6342.1,stats6342.2,stats6343.1,stats6343.2,stats6344.1,stats6344.2,stats6345.1,stats6345.2,stats6346.1,stats6346.2,stats6347.1,stats6347.2,stats6348.1,stats6348.2,stats6349.1,stats6349.2,stats6350.1,stats6350.2,stats6351.1,stats6351.2,stats6352.1,stats6352.2,stats6353.1,stats6353.2,stats6354.1,stats6354.2,stats6355.1,stats6355.2,stats6356.1,stats6356.2,stats6357.1,stats6357.2,stats6358.1,stats6358.2,stats6359.1,stats6359.2,stats6360.1,stats6360.2,stats6361.1,stats6361.2,stats6362.1,stats6362.2,stats6363.1,stats6363.2,stats6364.1,stats6364.2,stats6365.1,stats6365.2,stats6366.1,stats6366.2,stats6367.1,stats6367.2,stats6368.1,stats6368.2,stats6369.1,stats6369.2,stats6370.1,stats6370.2,stats6371.1,stats6371.2,stats6372.1,stats6372.2,stats6373.1,stats6373.2,stats6374.1,stats6374.2,stats6375.1,stats6375.2,stats6376.1,stats6376.2,stats6377.1,stats6377.2,stats6378.1,stats6378.2]
  decide
end FrameHashControllerCheckedRows
