import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData99
import PathRoundDispatchInstructionMatrixData100
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6379 : actualRows6379=WordField.canonicalRows actualModulus 6379 (.shr 4107 8) := by core033_kernel_decide
theorem stats6379 : actualRows6379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6379=4548 := by core033_kernel_decide
theorem rows6380 : actualRows6380=WordField.canonicalRows actualModulus 6380 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6380 : actualRows6380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6380=2820 := by core033_kernel_decide
theorem rows6381 : actualRows6381=WordField.canonicalRows actualModulus 6381 (.bnot 6380) := by core033_kernel_decide
theorem stats6381 : actualRows6381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6381=6276 := by core033_kernel_decide
theorem rows6382 : actualRows6382=WordField.canonicalRows actualModulus 6382 (.badd 6379 6381) := by core033_kernel_decide
theorem stats6382 : actualRows6382.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6382=5388 := by core033_kernel_decide
theorem rows6383 : actualRows6383=WordField.canonicalRows actualModulus 6383 (.bnot 6382) := by core033_kernel_decide
theorem stats6383 : actualRows6383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6383=6276 := by core033_kernel_decide
theorem rows6384 : actualRows6384=WordField.canonicalRows actualModulus 6384 (.band 6378 6383) := by core033_kernel_decide
theorem stats6384 : actualRows6384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6384=5124 := by core033_kernel_decide
theorem rows6385 : actualRows6385=WordField.canonicalRows actualModulus 6385 (.bxor 6374 6384) := by core033_kernel_decide
theorem stats6385 : actualRows6385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6385=7428 := by core033_kernel_decide
theorem rows6386 : actualRows6386=WordField.canonicalRows actualModulus 6386 (.shr 6385 31) := by core033_kernel_decide
theorem stats6386 : actualRows6386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6386=2892 := by core033_kernel_decide
theorem rows6387 : actualRows6387=WordField.canonicalRows actualModulus 6387 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6387 : actualRows6387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6387=2892 := by core033_kernel_decide
theorem rows6388 : actualRows6388=WordField.canonicalRows actualModulus 6388 (.bxor 6386 6387) := by core033_kernel_decide
theorem stats6388 : actualRows6388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6388=7428 := by core033_kernel_decide
theorem rows6389 : actualRows6389=WordField.canonicalRows actualModulus 6389 (.shr 4159 8) := by core033_kernel_decide
theorem stats6389 : actualRows6389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6389=4548 := by core033_kernel_decide
theorem rows6390 : actualRows6390=WordField.canonicalRows actualModulus 6390 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6390 : actualRows6390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6390=2820 := by core033_kernel_decide
theorem rows6391 : actualRows6391=WordField.canonicalRows actualModulus 6391 (.bnot 6390) := by core033_kernel_decide
theorem stats6391 : actualRows6391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6391=6276 := by core033_kernel_decide
theorem rows6392 : actualRows6392=WordField.canonicalRows actualModulus 6392 (.band 6389 6391) := by core033_kernel_decide
theorem stats6392 : actualRows6392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6392=5124 := by core033_kernel_decide
theorem rows6393 : actualRows6393=WordField.canonicalRows actualModulus 6393 (.shr 4159 8) := by core033_kernel_decide
theorem stats6393 : actualRows6393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6393=4548 := by core033_kernel_decide
theorem rows6394 : actualRows6394=WordField.canonicalRows actualModulus 6394 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6394 : actualRows6394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6394=2820 := by core033_kernel_decide
theorem rows6395 : actualRows6395=WordField.canonicalRows actualModulus 6395 (.bnot 6394) := by core033_kernel_decide
theorem stats6395 : actualRows6395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6395=6276 := by core033_kernel_decide
theorem rows6396 : actualRows6396=WordField.canonicalRows actualModulus 6396 (.bxor 6393 6395) := by core033_kernel_decide
theorem stats6396 : actualRows6396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6396=7428 := by core033_kernel_decide
theorem rows6397 : actualRows6397=WordField.canonicalRows actualModulus 6397 (.shr 4159 8) := by core033_kernel_decide
theorem stats6397 : actualRows6397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6397=4548 := by core033_kernel_decide
theorem rows6398 : actualRows6398=WordField.canonicalRows actualModulus 6398 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6398 : actualRows6398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6398=2820 := by core033_kernel_decide
theorem rows6399 : actualRows6399=WordField.canonicalRows actualModulus 6399 (.bnot 6398) := by core033_kernel_decide
theorem stats6399 : actualRows6399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6399=6276 := by core033_kernel_decide
theorem rows6400 : actualRows6400=WordField.canonicalRows actualModulus 6400 (.badd 6397 6399) := by core033_kernel_decide
theorem stats6400 : actualRows6400.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6400=5388 := by core033_kernel_decide
theorem rows6401 : actualRows6401=WordField.canonicalRows actualModulus 6401 (.bnot 6400) := by core033_kernel_decide
theorem stats6401 : actualRows6401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6401=6276 := by core033_kernel_decide
theorem rows6402 : actualRows6402=WordField.canonicalRows actualModulus 6402 (.band 6396 6401) := by core033_kernel_decide
theorem stats6402 : actualRows6402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6402=5124 := by core033_kernel_decide
theorem rows6403 : actualRows6403=WordField.canonicalRows actualModulus 6403 (.bxor 6392 6402) := by core033_kernel_decide
theorem stats6403 : actualRows6403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6403=7428 := by core033_kernel_decide
theorem rows6404 : actualRows6404=WordField.canonicalRows actualModulus 6404 (.shr 6403 31) := by core033_kernel_decide
theorem stats6404 : actualRows6404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6404=2892 := by core033_kernel_decide
theorem rows6405 : actualRows6405=WordField.canonicalRows actualModulus 6405 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6405 : actualRows6405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6405=2892 := by core033_kernel_decide
theorem rows6406 : actualRows6406=WordField.canonicalRows actualModulus 6406 (.bxor 6404 6405) := by core033_kernel_decide
theorem stats6406 : actualRows6406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6406=7428 := by core033_kernel_decide
theorem rows6407 : actualRows6407=WordField.canonicalRows actualModulus 6407 (.shr 4211 8) := by core033_kernel_decide
theorem stats6407 : actualRows6407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6407=4548 := by core033_kernel_decide
theorem rows6408 : actualRows6408=WordField.canonicalRows actualModulus 6408 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6408 : actualRows6408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6408=2820 := by core033_kernel_decide
theorem rows6409 : actualRows6409=WordField.canonicalRows actualModulus 6409 (.bnot 6408) := by core033_kernel_decide
theorem stats6409 : actualRows6409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6409=6276 := by core033_kernel_decide
theorem rows6410 : actualRows6410=WordField.canonicalRows actualModulus 6410 (.band 6407 6409) := by core033_kernel_decide
theorem stats6410 : actualRows6410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6410=5124 := by core033_kernel_decide
theorem rows6411 : actualRows6411=WordField.canonicalRows actualModulus 6411 (.shr 4211 8) := by core033_kernel_decide
theorem stats6411 : actualRows6411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6411=4548 := by core033_kernel_decide
theorem rows6412 : actualRows6412=WordField.canonicalRows actualModulus 6412 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6412 : actualRows6412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6412=2820 := by core033_kernel_decide
theorem rows6413 : actualRows6413=WordField.canonicalRows actualModulus 6413 (.bnot 6412) := by core033_kernel_decide
theorem stats6413 : actualRows6413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6413=6276 := by core033_kernel_decide
theorem rows6414 : actualRows6414=WordField.canonicalRows actualModulus 6414 (.bxor 6411 6413) := by core033_kernel_decide
theorem stats6414 : actualRows6414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6414=7428 := by core033_kernel_decide
theorem rows6415 : actualRows6415=WordField.canonicalRows actualModulus 6415 (.shr 4211 8) := by core033_kernel_decide
theorem stats6415 : actualRows6415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6415=4548 := by core033_kernel_decide
theorem rows6416 : actualRows6416=WordField.canonicalRows actualModulus 6416 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6416 : actualRows6416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6416=2820 := by core033_kernel_decide
theorem rows6417 : actualRows6417=WordField.canonicalRows actualModulus 6417 (.bnot 6416) := by core033_kernel_decide
theorem stats6417 : actualRows6417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6417=6276 := by core033_kernel_decide
theorem rows6418 : actualRows6418=WordField.canonicalRows actualModulus 6418 (.badd 6415 6417) := by core033_kernel_decide
theorem stats6418 : actualRows6418.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6418=5388 := by core033_kernel_decide
theorem rows6419 : actualRows6419=WordField.canonicalRows actualModulus 6419 (.bnot 6418) := by core033_kernel_decide
theorem stats6419 : actualRows6419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6419=6276 := by core033_kernel_decide
theorem rows6420 : actualRows6420=WordField.canonicalRows actualModulus 6420 (.band 6414 6419) := by core033_kernel_decide
theorem stats6420 : actualRows6420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6420=5124 := by core033_kernel_decide
theorem rows6421 : actualRows6421=WordField.canonicalRows actualModulus 6421 (.bxor 6410 6420) := by core033_kernel_decide
theorem stats6421 : actualRows6421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6421=7428 := by core033_kernel_decide
theorem rows6422 : actualRows6422=WordField.canonicalRows actualModulus 6422 (.shr 6421 31) := by core033_kernel_decide
theorem stats6422 : actualRows6422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6422=2892 := by core033_kernel_decide
theorem rows6423 : actualRows6423=WordField.canonicalRows actualModulus 6423 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6423 : actualRows6423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6423=2892 := by core033_kernel_decide
theorem rows6424 : actualRows6424=WordField.canonicalRows actualModulus 6424 (.bxor 6422 6423) := by core033_kernel_decide
theorem stats6424 : actualRows6424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6424=7428 := by core033_kernel_decide
theorem rows6425 : actualRows6425=WordField.canonicalRows actualModulus 6425 (.shr 4263 8) := by core033_kernel_decide
theorem stats6425 : actualRows6425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6425=4548 := by core033_kernel_decide
theorem rows6426 : actualRows6426=WordField.canonicalRows actualModulus 6426 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6426 : actualRows6426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6426=2820 := by core033_kernel_decide
theorem rows6427 : actualRows6427=WordField.canonicalRows actualModulus 6427 (.bnot 6426) := by core033_kernel_decide
theorem stats6427 : actualRows6427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6427=6276 := by core033_kernel_decide
theorem rows6428 : actualRows6428=WordField.canonicalRows actualModulus 6428 (.band 6425 6427) := by core033_kernel_decide
theorem stats6428 : actualRows6428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6428=5124 := by core033_kernel_decide
theorem rows6429 : actualRows6429=WordField.canonicalRows actualModulus 6429 (.shr 4263 8) := by core033_kernel_decide
theorem stats6429 : actualRows6429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6429=4548 := by core033_kernel_decide
theorem rows6430 : actualRows6430=WordField.canonicalRows actualModulus 6430 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6430 : actualRows6430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6430=2820 := by core033_kernel_decide
theorem rows6431 : actualRows6431=WordField.canonicalRows actualModulus 6431 (.bnot 6430) := by core033_kernel_decide
theorem stats6431 : actualRows6431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6431=6276 := by core033_kernel_decide
theorem rows6432 : actualRows6432=WordField.canonicalRows actualModulus 6432 (.bxor 6429 6431) := by core033_kernel_decide
theorem stats6432 : actualRows6432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6432=7428 := by core033_kernel_decide
theorem rows6433 : actualRows6433=WordField.canonicalRows actualModulus 6433 (.shr 4263 8) := by core033_kernel_decide
theorem stats6433 : actualRows6433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6433=4548 := by core033_kernel_decide
theorem rows6434 : actualRows6434=WordField.canonicalRows actualModulus 6434 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6434 : actualRows6434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6434=2820 := by core033_kernel_decide
theorem rows6435 : actualRows6435=WordField.canonicalRows actualModulus 6435 (.bnot 6434) := by core033_kernel_decide
theorem stats6435 : actualRows6435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6435=6276 := by core033_kernel_decide
theorem rows6436 : actualRows6436=WordField.canonicalRows actualModulus 6436 (.badd 6433 6435) := by core033_kernel_decide
theorem stats6436 : actualRows6436.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6436=5388 := by core033_kernel_decide
theorem rows6437 : actualRows6437=WordField.canonicalRows actualModulus 6437 (.bnot 6436) := by core033_kernel_decide
theorem stats6437 : actualRows6437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6437=6276 := by core033_kernel_decide
theorem rows6438 : actualRows6438=WordField.canonicalRows actualModulus 6438 (.band 6432 6437) := by core033_kernel_decide
theorem stats6438 : actualRows6438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6438=5124 := by core033_kernel_decide
theorem rows6439 : actualRows6439=WordField.canonicalRows actualModulus 6439 (.bxor 6428 6438) := by core033_kernel_decide
theorem stats6439 : actualRows6439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6439=7428 := by core033_kernel_decide
theorem rows6440 : actualRows6440=WordField.canonicalRows actualModulus 6440 (.shr 6439 31) := by core033_kernel_decide
theorem stats6440 : actualRows6440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6440=2892 := by core033_kernel_decide
theorem rows6441 : actualRows6441=WordField.canonicalRows actualModulus 6441 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6441 : actualRows6441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6441=2892 := by core033_kernel_decide
theorem rows6442 : actualRows6442=WordField.canonicalRows actualModulus 6442 (.bxor 6440 6441) := by core033_kernel_decide
theorem stats6442 : actualRows6442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6442=7428 := by core033_kernel_decide
def partRows99 : List R1CS.Row := actualRows6379++actualRows6380++actualRows6381++actualRows6382++actualRows6383++actualRows6384++actualRows6385++actualRows6386++actualRows6387++actualRows6388++actualRows6389++actualRows6390++actualRows6391++actualRows6392++actualRows6393++actualRows6394++actualRows6395++actualRows6396++actualRows6397++actualRows6398++actualRows6399++actualRows6400++actualRows6401++actualRows6402++actualRows6403++actualRows6404++actualRows6405++actualRows6406++actualRows6407++actualRows6408++actualRows6409++actualRows6410++actualRows6411++actualRows6412++actualRows6413++actualRows6414++actualRows6415++actualRows6416++actualRows6417++actualRows6418++actualRows6419++actualRows6420++actualRows6421++actualRows6422++actualRows6423++actualRows6424++actualRows6425++actualRows6426++actualRows6427++actualRows6428++actualRows6429++actualRows6430++actualRows6431++actualRows6432++actualRows6433++actualRows6434++actualRows6435++actualRows6436++actualRows6437++actualRows6438++actualRows6439++actualRows6440++actualRows6441++actualRows6442
def partOps99 : List WordIR.Op := [.shr 4107 8,.literal (BitVec.ofNat 32 0),.bnot 6380,.badd 6379 6381,.bnot 6382,.band 6378 6383,.bxor 6374 6384,.shr 6385 31,.literal (BitVec.ofNat 32 1),.bxor 6386 6387,.shr 4159 8,.literal (BitVec.ofNat 32 0),.bnot 6390,.band 6389 6391,.shr 4159 8,.literal (BitVec.ofNat 32 0),.bnot 6394,.bxor 6393 6395,.shr 4159 8,.literal (BitVec.ofNat 32 0),.bnot 6398,.badd 6397 6399,.bnot 6400,.band 6396 6401,.bxor 6392 6402,.shr 6403 31,.literal (BitVec.ofNat 32 1),.bxor 6404 6405,.shr 4211 8,.literal (BitVec.ofNat 32 0),.bnot 6408,.band 6407 6409,.shr 4211 8,.literal (BitVec.ofNat 32 0),.bnot 6412,.bxor 6411 6413,.shr 4211 8,.literal (BitVec.ofNat 32 0),.bnot 6416,.badd 6415 6417,.bnot 6418,.band 6414 6419,.bxor 6410 6420,.shr 6421 31,.literal (BitVec.ofNat 32 1),.bxor 6422 6423,.shr 4263 8,.literal (BitVec.ofNat 32 0),.bnot 6426,.band 6425 6427,.shr 4263 8,.literal (BitVec.ofNat 32 0),.bnot 6430,.bxor 6429 6431,.shr 4263 8,.literal (BitVec.ofNat 32 0),.bnot 6434,.badd 6433 6435,.bnot 6436,.band 6432 6437,.bxor 6428 6438,.shr 6439 31,.literal (BitVec.ofNat 32 1),.bxor 6440 6441]
theorem partExact99 : partRows99=WordField.rows actualModulus 6379 partOps99 := by
  simp only [partRows99,partOps99,WordField.rows,rows6379,rows6380,rows6381,rows6382,rows6383,rows6384,rows6385,rows6386,rows6387,rows6388,rows6389,rows6390,rows6391,rows6392,rows6393,rows6394,rows6395,rows6396,rows6397,rows6398,rows6399,rows6400,rows6401,rows6402,rows6403,rows6404,rows6405,rows6406,rows6407,rows6408,rows6409,rows6410,rows6411,rows6412,rows6413,rows6414,rows6415,rows6416,rows6417,rows6418,rows6419,rows6420,rows6421,rows6422,rows6423,rows6424,rows6425,rows6426,rows6427,rows6428,rows6429,rows6430,rows6431,rows6432,rows6433,rows6434,rows6435,rows6436,rows6437,rows6438,rows6439,rows6440,rows6441,rows6442,List.append_assoc,List.append_nil]
theorem partLength99 : partOps99.length=64 := by decide
theorem partStats99 : partRows99.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows99=323808 := by
  simp only [partRows99,List.length_append,MatrixRowBlocks.rows_weight_append,stats6379.1,stats6379.2,stats6380.1,stats6380.2,stats6381.1,stats6381.2,stats6382.1,stats6382.2,stats6383.1,stats6383.2,stats6384.1,stats6384.2,stats6385.1,stats6385.2,stats6386.1,stats6386.2,stats6387.1,stats6387.2,stats6388.1,stats6388.2,stats6389.1,stats6389.2,stats6390.1,stats6390.2,stats6391.1,stats6391.2,stats6392.1,stats6392.2,stats6393.1,stats6393.2,stats6394.1,stats6394.2,stats6395.1,stats6395.2,stats6396.1,stats6396.2,stats6397.1,stats6397.2,stats6398.1,stats6398.2,stats6399.1,stats6399.2,stats6400.1,stats6400.2,stats6401.1,stats6401.2,stats6402.1,stats6402.2,stats6403.1,stats6403.2,stats6404.1,stats6404.2,stats6405.1,stats6405.2,stats6406.1,stats6406.2,stats6407.1,stats6407.2,stats6408.1,stats6408.2,stats6409.1,stats6409.2,stats6410.1,stats6410.2,stats6411.1,stats6411.2,stats6412.1,stats6412.2,stats6413.1,stats6413.2,stats6414.1,stats6414.2,stats6415.1,stats6415.2,stats6416.1,stats6416.2,stats6417.1,stats6417.2,stats6418.1,stats6418.2,stats6419.1,stats6419.2,stats6420.1,stats6420.2,stats6421.1,stats6421.2,stats6422.1,stats6422.2,stats6423.1,stats6423.2,stats6424.1,stats6424.2,stats6425.1,stats6425.2,stats6426.1,stats6426.2,stats6427.1,stats6427.2,stats6428.1,stats6428.2,stats6429.1,stats6429.2,stats6430.1,stats6430.2,stats6431.1,stats6431.2,stats6432.1,stats6432.2,stats6433.1,stats6433.2,stats6434.1,stats6434.2,stats6435.1,stats6435.2,stats6436.1,stats6436.2,stats6437.1,stats6437.2,stats6438.1,stats6438.2,stats6439.1,stats6439.2,stats6440.1,stats6440.2,stats6441.1,stats6441.2,stats6442.1,stats6442.2]
  decide
end PathRoundDispatchCheckedRows
