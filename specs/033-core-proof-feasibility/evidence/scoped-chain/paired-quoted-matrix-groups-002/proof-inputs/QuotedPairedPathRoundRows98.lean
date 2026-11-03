import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData99
import PairedPathRoundInstructionMatrixData100
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6368 : actualRows6368=WordField.canonicalRows actualModulus 6368 (.bxor 6366 6367) := by core033_kernel_decide
theorem stats6368 : actualRows6368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6368=7428 := by core033_kernel_decide
theorem rows6369 : actualRows6369=WordField.canonicalRows actualModulus 6369 (.shr 3119 8) := by core033_kernel_decide
theorem stats6369 : actualRows6369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6369=4548 := by core033_kernel_decide
theorem rows6370 : actualRows6370=WordField.canonicalRows actualModulus 6370 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6370 : actualRows6370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6370=2820 := by core033_kernel_decide
theorem rows6371 : actualRows6371=WordField.canonicalRows actualModulus 6371 (.bnot 6370) := by core033_kernel_decide
theorem stats6371 : actualRows6371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6371=6276 := by core033_kernel_decide
theorem rows6372 : actualRows6372=WordField.canonicalRows actualModulus 6372 (.band 6369 6371) := by core033_kernel_decide
theorem stats6372 : actualRows6372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6372=5124 := by core033_kernel_decide
theorem rows6373 : actualRows6373=WordField.canonicalRows actualModulus 6373 (.shr 3119 8) := by core033_kernel_decide
theorem stats6373 : actualRows6373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6373=4548 := by core033_kernel_decide
theorem rows6374 : actualRows6374=WordField.canonicalRows actualModulus 6374 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6374 : actualRows6374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6374=2820 := by core033_kernel_decide
theorem rows6375 : actualRows6375=WordField.canonicalRows actualModulus 6375 (.bnot 6374) := by core033_kernel_decide
theorem stats6375 : actualRows6375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6375=6276 := by core033_kernel_decide
theorem rows6376 : actualRows6376=WordField.canonicalRows actualModulus 6376 (.bxor 6373 6375) := by core033_kernel_decide
theorem stats6376 : actualRows6376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6376=7428 := by core033_kernel_decide
theorem rows6377 : actualRows6377=WordField.canonicalRows actualModulus 6377 (.shr 3119 8) := by core033_kernel_decide
theorem stats6377 : actualRows6377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6377=4548 := by core033_kernel_decide
theorem rows6378 : actualRows6378=WordField.canonicalRows actualModulus 6378 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6378 : actualRows6378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6378=2820 := by core033_kernel_decide
theorem rows6379 : actualRows6379=WordField.canonicalRows actualModulus 6379 (.bnot 6378) := by core033_kernel_decide
theorem stats6379 : actualRows6379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6379=6276 := by core033_kernel_decide
theorem rows6380 : actualRows6380=WordField.canonicalRows actualModulus 6380 (.badd 6377 6379) := by core033_kernel_decide
theorem stats6380 : actualRows6380.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6380=5388 := by core033_kernel_decide
theorem rows6381 : actualRows6381=WordField.canonicalRows actualModulus 6381 (.bnot 6380) := by core033_kernel_decide
theorem stats6381 : actualRows6381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6381=6276 := by core033_kernel_decide
theorem rows6382 : actualRows6382=WordField.canonicalRows actualModulus 6382 (.band 6376 6381) := by core033_kernel_decide
theorem stats6382 : actualRows6382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6382=5124 := by core033_kernel_decide
theorem rows6383 : actualRows6383=WordField.canonicalRows actualModulus 6383 (.bxor 6372 6382) := by core033_kernel_decide
theorem stats6383 : actualRows6383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6383=7428 := by core033_kernel_decide
theorem rows6384 : actualRows6384=WordField.canonicalRows actualModulus 6384 (.shr 6383 31) := by core033_kernel_decide
theorem stats6384 : actualRows6384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6384=2892 := by core033_kernel_decide
theorem rows6385 : actualRows6385=WordField.canonicalRows actualModulus 6385 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6385 : actualRows6385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6385=2892 := by core033_kernel_decide
theorem rows6386 : actualRows6386=WordField.canonicalRows actualModulus 6386 (.bxor 6384 6385) := by core033_kernel_decide
theorem stats6386 : actualRows6386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6386=7428 := by core033_kernel_decide
theorem rows6387 : actualRows6387=WordField.canonicalRows actualModulus 6387 (.shr 3171 8) := by core033_kernel_decide
theorem stats6387 : actualRows6387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6387=4548 := by core033_kernel_decide
theorem rows6388 : actualRows6388=WordField.canonicalRows actualModulus 6388 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6388 : actualRows6388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6388=2820 := by core033_kernel_decide
theorem rows6389 : actualRows6389=WordField.canonicalRows actualModulus 6389 (.bnot 6388) := by core033_kernel_decide
theorem stats6389 : actualRows6389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6389=6276 := by core033_kernel_decide
theorem rows6390 : actualRows6390=WordField.canonicalRows actualModulus 6390 (.band 6387 6389) := by core033_kernel_decide
theorem stats6390 : actualRows6390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6390=5124 := by core033_kernel_decide
theorem rows6391 : actualRows6391=WordField.canonicalRows actualModulus 6391 (.shr 3171 8) := by core033_kernel_decide
theorem stats6391 : actualRows6391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6391=4548 := by core033_kernel_decide
theorem rows6392 : actualRows6392=WordField.canonicalRows actualModulus 6392 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6392 : actualRows6392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6392=2820 := by core033_kernel_decide
theorem rows6393 : actualRows6393=WordField.canonicalRows actualModulus 6393 (.bnot 6392) := by core033_kernel_decide
theorem stats6393 : actualRows6393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6393=6276 := by core033_kernel_decide
theorem rows6394 : actualRows6394=WordField.canonicalRows actualModulus 6394 (.bxor 6391 6393) := by core033_kernel_decide
theorem stats6394 : actualRows6394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6394=7428 := by core033_kernel_decide
theorem rows6395 : actualRows6395=WordField.canonicalRows actualModulus 6395 (.shr 3171 8) := by core033_kernel_decide
theorem stats6395 : actualRows6395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6395=4548 := by core033_kernel_decide
theorem rows6396 : actualRows6396=WordField.canonicalRows actualModulus 6396 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6396 : actualRows6396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6396=2820 := by core033_kernel_decide
theorem rows6397 : actualRows6397=WordField.canonicalRows actualModulus 6397 (.bnot 6396) := by core033_kernel_decide
theorem stats6397 : actualRows6397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6397=6276 := by core033_kernel_decide
theorem rows6398 : actualRows6398=WordField.canonicalRows actualModulus 6398 (.badd 6395 6397) := by core033_kernel_decide
theorem stats6398 : actualRows6398.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6398=5388 := by core033_kernel_decide
theorem rows6399 : actualRows6399=WordField.canonicalRows actualModulus 6399 (.bnot 6398) := by core033_kernel_decide
theorem stats6399 : actualRows6399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6399=6276 := by core033_kernel_decide
theorem rows6400 : actualRows6400=WordField.canonicalRows actualModulus 6400 (.band 6394 6399) := by core033_kernel_decide
theorem stats6400 : actualRows6400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6400=5124 := by core033_kernel_decide
theorem rows6401 : actualRows6401=WordField.canonicalRows actualModulus 6401 (.bxor 6390 6400) := by core033_kernel_decide
theorem stats6401 : actualRows6401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6401=7428 := by core033_kernel_decide
theorem rows6402 : actualRows6402=WordField.canonicalRows actualModulus 6402 (.shr 6401 31) := by core033_kernel_decide
theorem stats6402 : actualRows6402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6402=2892 := by core033_kernel_decide
theorem rows6403 : actualRows6403=WordField.canonicalRows actualModulus 6403 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6403 : actualRows6403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6403=2892 := by core033_kernel_decide
theorem rows6404 : actualRows6404=WordField.canonicalRows actualModulus 6404 (.bxor 6402 6403) := by core033_kernel_decide
theorem stats6404 : actualRows6404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6404=7428 := by core033_kernel_decide
theorem rows6405 : actualRows6405=WordField.canonicalRows actualModulus 6405 (.shr 3223 8) := by core033_kernel_decide
theorem stats6405 : actualRows6405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6405=4548 := by core033_kernel_decide
theorem rows6406 : actualRows6406=WordField.canonicalRows actualModulus 6406 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6406 : actualRows6406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6406=2820 := by core033_kernel_decide
theorem rows6407 : actualRows6407=WordField.canonicalRows actualModulus 6407 (.bnot 6406) := by core033_kernel_decide
theorem stats6407 : actualRows6407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6407=6276 := by core033_kernel_decide
theorem rows6408 : actualRows6408=WordField.canonicalRows actualModulus 6408 (.band 6405 6407) := by core033_kernel_decide
theorem stats6408 : actualRows6408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6408=5124 := by core033_kernel_decide
theorem rows6409 : actualRows6409=WordField.canonicalRows actualModulus 6409 (.shr 3223 8) := by core033_kernel_decide
theorem stats6409 : actualRows6409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6409=4548 := by core033_kernel_decide
theorem rows6410 : actualRows6410=WordField.canonicalRows actualModulus 6410 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6410 : actualRows6410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6410=2820 := by core033_kernel_decide
theorem rows6411 : actualRows6411=WordField.canonicalRows actualModulus 6411 (.bnot 6410) := by core033_kernel_decide
theorem stats6411 : actualRows6411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6411=6276 := by core033_kernel_decide
theorem rows6412 : actualRows6412=WordField.canonicalRows actualModulus 6412 (.bxor 6409 6411) := by core033_kernel_decide
theorem stats6412 : actualRows6412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6412=7428 := by core033_kernel_decide
theorem rows6413 : actualRows6413=WordField.canonicalRows actualModulus 6413 (.shr 3223 8) := by core033_kernel_decide
theorem stats6413 : actualRows6413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6413=4548 := by core033_kernel_decide
theorem rows6414 : actualRows6414=WordField.canonicalRows actualModulus 6414 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6414 : actualRows6414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6414=2820 := by core033_kernel_decide
theorem rows6415 : actualRows6415=WordField.canonicalRows actualModulus 6415 (.bnot 6414) := by core033_kernel_decide
theorem stats6415 : actualRows6415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6415=6276 := by core033_kernel_decide
theorem rows6416 : actualRows6416=WordField.canonicalRows actualModulus 6416 (.badd 6413 6415) := by core033_kernel_decide
theorem stats6416 : actualRows6416.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6416=5388 := by core033_kernel_decide
theorem rows6417 : actualRows6417=WordField.canonicalRows actualModulus 6417 (.bnot 6416) := by core033_kernel_decide
theorem stats6417 : actualRows6417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6417=6276 := by core033_kernel_decide
theorem rows6418 : actualRows6418=WordField.canonicalRows actualModulus 6418 (.band 6412 6417) := by core033_kernel_decide
theorem stats6418 : actualRows6418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6418=5124 := by core033_kernel_decide
theorem rows6419 : actualRows6419=WordField.canonicalRows actualModulus 6419 (.bxor 6408 6418) := by core033_kernel_decide
theorem stats6419 : actualRows6419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6419=7428 := by core033_kernel_decide
theorem rows6420 : actualRows6420=WordField.canonicalRows actualModulus 6420 (.shr 6419 31) := by core033_kernel_decide
theorem stats6420 : actualRows6420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6420=2892 := by core033_kernel_decide
theorem rows6421 : actualRows6421=WordField.canonicalRows actualModulus 6421 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6421 : actualRows6421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6421=2892 := by core033_kernel_decide
theorem rows6422 : actualRows6422=WordField.canonicalRows actualModulus 6422 (.bxor 6420 6421) := by core033_kernel_decide
theorem stats6422 : actualRows6422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6422=7428 := by core033_kernel_decide
theorem rows6423 : actualRows6423=WordField.canonicalRows actualModulus 6423 (.shr 3275 8) := by core033_kernel_decide
theorem stats6423 : actualRows6423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6423=4548 := by core033_kernel_decide
theorem rows6424 : actualRows6424=WordField.canonicalRows actualModulus 6424 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6424 : actualRows6424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6424=2820 := by core033_kernel_decide
theorem rows6425 : actualRows6425=WordField.canonicalRows actualModulus 6425 (.bnot 6424) := by core033_kernel_decide
theorem stats6425 : actualRows6425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6425=6276 := by core033_kernel_decide
theorem rows6426 : actualRows6426=WordField.canonicalRows actualModulus 6426 (.band 6423 6425) := by core033_kernel_decide
theorem stats6426 : actualRows6426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6426=5124 := by core033_kernel_decide
theorem rows6427 : actualRows6427=WordField.canonicalRows actualModulus 6427 (.shr 3275 8) := by core033_kernel_decide
theorem stats6427 : actualRows6427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6427=4548 := by core033_kernel_decide
theorem rows6428 : actualRows6428=WordField.canonicalRows actualModulus 6428 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6428 : actualRows6428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6428=2820 := by core033_kernel_decide
theorem rows6429 : actualRows6429=WordField.canonicalRows actualModulus 6429 (.bnot 6428) := by core033_kernel_decide
theorem stats6429 : actualRows6429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6429=6276 := by core033_kernel_decide
theorem rows6430 : actualRows6430=WordField.canonicalRows actualModulus 6430 (.bxor 6427 6429) := by core033_kernel_decide
theorem stats6430 : actualRows6430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6430=7428 := by core033_kernel_decide
theorem rows6431 : actualRows6431=WordField.canonicalRows actualModulus 6431 (.shr 3275 8) := by core033_kernel_decide
theorem stats6431 : actualRows6431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6431=4548 := by core033_kernel_decide
def partRows98 : List R1CS.Row := actualRows6368++actualRows6369++actualRows6370++actualRows6371++actualRows6372++actualRows6373++actualRows6374++actualRows6375++actualRows6376++actualRows6377++actualRows6378++actualRows6379++actualRows6380++actualRows6381++actualRows6382++actualRows6383++actualRows6384++actualRows6385++actualRows6386++actualRows6387++actualRows6388++actualRows6389++actualRows6390++actualRows6391++actualRows6392++actualRows6393++actualRows6394++actualRows6395++actualRows6396++actualRows6397++actualRows6398++actualRows6399++actualRows6400++actualRows6401++actualRows6402++actualRows6403++actualRows6404++actualRows6405++actualRows6406++actualRows6407++actualRows6408++actualRows6409++actualRows6410++actualRows6411++actualRows6412++actualRows6413++actualRows6414++actualRows6415++actualRows6416++actualRows6417++actualRows6418++actualRows6419++actualRows6420++actualRows6421++actualRows6422++actualRows6423++actualRows6424++actualRows6425++actualRows6426++actualRows6427++actualRows6428++actualRows6429++actualRows6430++actualRows6431
def partOps98 : List WordIR.Op := [.bxor 6366 6367,.shr 3119 8,.literal (BitVec.ofNat 32 0),.bnot 6370,.band 6369 6371,.shr 3119 8,.literal (BitVec.ofNat 32 0),.bnot 6374,.bxor 6373 6375,.shr 3119 8,.literal (BitVec.ofNat 32 0),.bnot 6378,.badd 6377 6379,.bnot 6380,.band 6376 6381,.bxor 6372 6382,.shr 6383 31,.literal (BitVec.ofNat 32 1),.bxor 6384 6385,.shr 3171 8,.literal (BitVec.ofNat 32 0),.bnot 6388,.band 6387 6389,.shr 3171 8,.literal (BitVec.ofNat 32 0),.bnot 6392,.bxor 6391 6393,.shr 3171 8,.literal (BitVec.ofNat 32 0),.bnot 6396,.badd 6395 6397,.bnot 6398,.band 6394 6399,.bxor 6390 6400,.shr 6401 31,.literal (BitVec.ofNat 32 1),.bxor 6402 6403,.shr 3223 8,.literal (BitVec.ofNat 32 0),.bnot 6406,.band 6405 6407,.shr 3223 8,.literal (BitVec.ofNat 32 0),.bnot 6410,.bxor 6409 6411,.shr 3223 8,.literal (BitVec.ofNat 32 0),.bnot 6414,.badd 6413 6415,.bnot 6416,.band 6412 6417,.bxor 6408 6418,.shr 6419 31,.literal (BitVec.ofNat 32 1),.bxor 6420 6421,.shr 3275 8,.literal (BitVec.ofNat 32 0),.bnot 6424,.band 6423 6425,.shr 3275 8,.literal (BitVec.ofNat 32 0),.bnot 6428,.bxor 6427 6429,.shr 3275 8]
theorem partExact98 : partRows98=WordField.rows actualModulus 6368 partOps98 := by
  simp only [partRows98,partOps98,WordField.rows,rows6368,rows6369,rows6370,rows6371,rows6372,rows6373,rows6374,rows6375,rows6376,rows6377,rows6378,rows6379,rows6380,rows6381,rows6382,rows6383,rows6384,rows6385,rows6386,rows6387,rows6388,rows6389,rows6390,rows6391,rows6392,rows6393,rows6394,rows6395,rows6396,rows6397,rows6398,rows6399,rows6400,rows6401,rows6402,rows6403,rows6404,rows6405,rows6406,rows6407,rows6408,rows6409,rows6410,rows6411,rows6412,rows6413,rows6414,rows6415,rows6416,rows6417,rows6418,rows6419,rows6420,rows6421,rows6422,rows6423,rows6424,rows6425,rows6426,rows6427,rows6428,rows6429,rows6430,rows6431,List.append_assoc,List.append_nil]
theorem partLength98 : partOps98.length=64 := by decide
theorem partStats98 : partRows98.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows98=324552 := by
  simp only [partRows98,List.length_append,MatrixRowBlocks.rows_weight_append,stats6368.1,stats6368.2,stats6369.1,stats6369.2,stats6370.1,stats6370.2,stats6371.1,stats6371.2,stats6372.1,stats6372.2,stats6373.1,stats6373.2,stats6374.1,stats6374.2,stats6375.1,stats6375.2,stats6376.1,stats6376.2,stats6377.1,stats6377.2,stats6378.1,stats6378.2,stats6379.1,stats6379.2,stats6380.1,stats6380.2,stats6381.1,stats6381.2,stats6382.1,stats6382.2,stats6383.1,stats6383.2,stats6384.1,stats6384.2,stats6385.1,stats6385.2,stats6386.1,stats6386.2,stats6387.1,stats6387.2,stats6388.1,stats6388.2,stats6389.1,stats6389.2,stats6390.1,stats6390.2,stats6391.1,stats6391.2,stats6392.1,stats6392.2,stats6393.1,stats6393.2,stats6394.1,stats6394.2,stats6395.1,stats6395.2,stats6396.1,stats6396.2,stats6397.1,stats6397.2,stats6398.1,stats6398.2,stats6399.1,stats6399.2,stats6400.1,stats6400.2,stats6401.1,stats6401.2,stats6402.1,stats6402.2,stats6403.1,stats6403.2,stats6404.1,stats6404.2,stats6405.1,stats6405.2,stats6406.1,stats6406.2,stats6407.1,stats6407.2,stats6408.1,stats6408.2,stats6409.1,stats6409.2,stats6410.1,stats6410.2,stats6411.1,stats6411.2,stats6412.1,stats6412.2,stats6413.1,stats6413.2,stats6414.1,stats6414.2,stats6415.1,stats6415.2,stats6416.1,stats6416.2,stats6417.1,stats6417.2,stats6418.1,stats6418.2,stats6419.1,stats6419.2,stats6420.1,stats6420.2,stats6421.1,stats6421.2,stats6422.1,stats6422.2,stats6423.1,stats6423.2,stats6424.1,stats6424.2,stats6425.1,stats6425.2,stats6426.1,stats6426.2,stats6427.1,stats6427.2,stats6428.1,stats6428.2,stats6429.1,stats6429.2,stats6430.1,stats6430.2,stats6431.1,stats6431.2]
  decide
end QuotedPairedPathRoundCheckedRows
