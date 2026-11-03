import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData99
import FrameHashControllerInstructionMatrixData100
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6379 : actualRows6379=WordField.canonicalRows actualModulus 6379 (.bnot 6378) := by core033_kernel_decide
theorem stats6379 : actualRows6379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6379=6276 := by core033_kernel_decide
theorem rows6380 : actualRows6380=WordField.canonicalRows actualModulus 6380 (.band 6377 6379) := by core033_kernel_decide
theorem stats6380 : actualRows6380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6380=5124 := by core033_kernel_decide
theorem rows6381 : actualRows6381=WordField.canonicalRows actualModulus 6381 (.shr 5111 8) := by core033_kernel_decide
theorem stats6381 : actualRows6381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6381=4548 := by core033_kernel_decide
theorem rows6382 : actualRows6382=WordField.canonicalRows actualModulus 6382 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6382 : actualRows6382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6382=2820 := by core033_kernel_decide
theorem rows6383 : actualRows6383=WordField.canonicalRows actualModulus 6383 (.bnot 6382) := by core033_kernel_decide
theorem stats6383 : actualRows6383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6383=6276 := by core033_kernel_decide
theorem rows6384 : actualRows6384=WordField.canonicalRows actualModulus 6384 (.bxor 6381 6383) := by core033_kernel_decide
theorem stats6384 : actualRows6384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6384=7428 := by core033_kernel_decide
theorem rows6385 : actualRows6385=WordField.canonicalRows actualModulus 6385 (.shr 5111 8) := by core033_kernel_decide
theorem stats6385 : actualRows6385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6385=4548 := by core033_kernel_decide
theorem rows6386 : actualRows6386=WordField.canonicalRows actualModulus 6386 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6386 : actualRows6386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6386=2820 := by core033_kernel_decide
theorem rows6387 : actualRows6387=WordField.canonicalRows actualModulus 6387 (.bnot 6386) := by core033_kernel_decide
theorem stats6387 : actualRows6387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6387=6276 := by core033_kernel_decide
theorem rows6388 : actualRows6388=WordField.canonicalRows actualModulus 6388 (.badd 6385 6387) := by core033_kernel_decide
theorem stats6388 : actualRows6388.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6388=5388 := by core033_kernel_decide
theorem rows6389 : actualRows6389=WordField.canonicalRows actualModulus 6389 (.bnot 6388) := by core033_kernel_decide
theorem stats6389 : actualRows6389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6389=6276 := by core033_kernel_decide
theorem rows6390 : actualRows6390=WordField.canonicalRows actualModulus 6390 (.band 6384 6389) := by core033_kernel_decide
theorem stats6390 : actualRows6390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6390=5124 := by core033_kernel_decide
theorem rows6391 : actualRows6391=WordField.canonicalRows actualModulus 6391 (.bxor 6380 6390) := by core033_kernel_decide
theorem stats6391 : actualRows6391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6391=7428 := by core033_kernel_decide
theorem rows6392 : actualRows6392=WordField.canonicalRows actualModulus 6392 (.shr 6391 31) := by core033_kernel_decide
theorem stats6392 : actualRows6392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6392=2892 := by core033_kernel_decide
theorem rows6393 : actualRows6393=WordField.canonicalRows actualModulus 6393 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6393 : actualRows6393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6393=2892 := by core033_kernel_decide
theorem rows6394 : actualRows6394=WordField.canonicalRows actualModulus 6394 (.bxor 6392 6393) := by core033_kernel_decide
theorem stats6394 : actualRows6394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6394=7428 := by core033_kernel_decide
theorem rows6395 : actualRows6395=WordField.canonicalRows actualModulus 6395 (.shr 5164 8) := by core033_kernel_decide
theorem stats6395 : actualRows6395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6395=4548 := by core033_kernel_decide
theorem rows6396 : actualRows6396=WordField.canonicalRows actualModulus 6396 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6396 : actualRows6396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6396=2820 := by core033_kernel_decide
theorem rows6397 : actualRows6397=WordField.canonicalRows actualModulus 6397 (.bnot 6396) := by core033_kernel_decide
theorem stats6397 : actualRows6397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6397=6276 := by core033_kernel_decide
theorem rows6398 : actualRows6398=WordField.canonicalRows actualModulus 6398 (.band 6395 6397) := by core033_kernel_decide
theorem stats6398 : actualRows6398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6398=5124 := by core033_kernel_decide
theorem rows6399 : actualRows6399=WordField.canonicalRows actualModulus 6399 (.shr 5164 8) := by core033_kernel_decide
theorem stats6399 : actualRows6399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6399=4548 := by core033_kernel_decide
theorem rows6400 : actualRows6400=WordField.canonicalRows actualModulus 6400 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6400 : actualRows6400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6400=2820 := by core033_kernel_decide
theorem rows6401 : actualRows6401=WordField.canonicalRows actualModulus 6401 (.bnot 6400) := by core033_kernel_decide
theorem stats6401 : actualRows6401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6401=6276 := by core033_kernel_decide
theorem rows6402 : actualRows6402=WordField.canonicalRows actualModulus 6402 (.bxor 6399 6401) := by core033_kernel_decide
theorem stats6402 : actualRows6402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6402=7428 := by core033_kernel_decide
theorem rows6403 : actualRows6403=WordField.canonicalRows actualModulus 6403 (.shr 5164 8) := by core033_kernel_decide
theorem stats6403 : actualRows6403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6403=4548 := by core033_kernel_decide
theorem rows6404 : actualRows6404=WordField.canonicalRows actualModulus 6404 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6404 : actualRows6404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6404=2820 := by core033_kernel_decide
theorem rows6405 : actualRows6405=WordField.canonicalRows actualModulus 6405 (.bnot 6404) := by core033_kernel_decide
theorem stats6405 : actualRows6405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6405=6276 := by core033_kernel_decide
theorem rows6406 : actualRows6406=WordField.canonicalRows actualModulus 6406 (.badd 6403 6405) := by core033_kernel_decide
theorem stats6406 : actualRows6406.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6406=5388 := by core033_kernel_decide
theorem rows6407 : actualRows6407=WordField.canonicalRows actualModulus 6407 (.bnot 6406) := by core033_kernel_decide
theorem stats6407 : actualRows6407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6407=6276 := by core033_kernel_decide
theorem rows6408 : actualRows6408=WordField.canonicalRows actualModulus 6408 (.band 6402 6407) := by core033_kernel_decide
theorem stats6408 : actualRows6408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6408=5124 := by core033_kernel_decide
theorem rows6409 : actualRows6409=WordField.canonicalRows actualModulus 6409 (.bxor 6398 6408) := by core033_kernel_decide
theorem stats6409 : actualRows6409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6409=7428 := by core033_kernel_decide
theorem rows6410 : actualRows6410=WordField.canonicalRows actualModulus 6410 (.shr 6409 31) := by core033_kernel_decide
theorem stats6410 : actualRows6410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6410=2892 := by core033_kernel_decide
theorem rows6411 : actualRows6411=WordField.canonicalRows actualModulus 6411 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6411 : actualRows6411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6411=2892 := by core033_kernel_decide
theorem rows6412 : actualRows6412=WordField.canonicalRows actualModulus 6412 (.bxor 6410 6411) := by core033_kernel_decide
theorem stats6412 : actualRows6412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6412=7428 := by core033_kernel_decide
theorem rows6413 : actualRows6413=WordField.canonicalRows actualModulus 6413 (.rotr 5254 17) := by core033_kernel_decide
theorem stats6413 : actualRows6413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6413=5124 := by core033_kernel_decide
theorem rows6414 : actualRows6414=WordField.canonicalRows actualModulus 6414 (.rotr 5254 19) := by core033_kernel_decide
theorem stats6414 : actualRows6414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6414=5124 := by core033_kernel_decide
theorem rows6415 : actualRows6415=WordField.canonicalRows actualModulus 6415 (.bxor 6413 6414) := by core033_kernel_decide
theorem stats6415 : actualRows6415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6415=7428 := by core033_kernel_decide
theorem rows6416 : actualRows6416=WordField.canonicalRows actualModulus 6416 (.shr 5254 10) := by core033_kernel_decide
theorem stats6416 : actualRows6416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6416=4404 := by core033_kernel_decide
theorem rows6417 : actualRows6417=WordField.canonicalRows actualModulus 6417 (.bxor 6415 6416) := by core033_kernel_decide
theorem stats6417 : actualRows6417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6417=7428 := by core033_kernel_decide
theorem rows6418 : actualRows6418=WordField.canonicalRows actualModulus 6418 (.badd 6417 5224) := by core033_kernel_decide
theorem stats6418 : actualRows6418.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6418=5388 := by core033_kernel_decide
theorem rows6419 : actualRows6419=WordField.canonicalRows actualModulus 6419 (.rotr 5176 7) := by core033_kernel_decide
theorem stats6419 : actualRows6419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6419=5124 := by core033_kernel_decide
theorem rows6420 : actualRows6420=WordField.canonicalRows actualModulus 6420 (.rotr 5176 18) := by core033_kernel_decide
theorem stats6420 : actualRows6420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6420=5124 := by core033_kernel_decide
theorem rows6421 : actualRows6421=WordField.canonicalRows actualModulus 6421 (.bxor 6419 6420) := by core033_kernel_decide
theorem stats6421 : actualRows6421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6421=7428 := by core033_kernel_decide
theorem rows6422 : actualRows6422=WordField.canonicalRows actualModulus 6422 (.shr 5176 3) := by core033_kernel_decide
theorem stats6422 : actualRows6422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6422=4908 := by core033_kernel_decide
theorem rows6423 : actualRows6423=WordField.canonicalRows actualModulus 6423 (.bxor 6421 6422) := by core033_kernel_decide
theorem stats6423 : actualRows6423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6423=7428 := by core033_kernel_decide
theorem rows6424 : actualRows6424=WordField.canonicalRows actualModulus 6424 (.badd 6418 6423) := by core033_kernel_decide
theorem stats6424 : actualRows6424.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6424=5388 := by core033_kernel_decide
theorem rows6425 : actualRows6425=WordField.canonicalRows actualModulus 6425 (.badd 6424 5170) := by core033_kernel_decide
theorem stats6425 : actualRows6425.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6425=5388 := by core033_kernel_decide
theorem rows6426 : actualRows6426=WordField.canonicalRows actualModulus 6426 (.rotr 5260 17) := by core033_kernel_decide
theorem stats6426 : actualRows6426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6426=5124 := by core033_kernel_decide
theorem rows6427 : actualRows6427=WordField.canonicalRows actualModulus 6427 (.rotr 5260 19) := by core033_kernel_decide
theorem stats6427 : actualRows6427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6427=5124 := by core033_kernel_decide
theorem rows6428 : actualRows6428=WordField.canonicalRows actualModulus 6428 (.bxor 6426 6427) := by core033_kernel_decide
theorem stats6428 : actualRows6428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6428=7428 := by core033_kernel_decide
theorem rows6429 : actualRows6429=WordField.canonicalRows actualModulus 6429 (.shr 5260 10) := by core033_kernel_decide
theorem stats6429 : actualRows6429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6429=4404 := by core033_kernel_decide
theorem rows6430 : actualRows6430=WordField.canonicalRows actualModulus 6430 (.bxor 6428 6429) := by core033_kernel_decide
theorem stats6430 : actualRows6430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6430=7428 := by core033_kernel_decide
theorem rows6431 : actualRows6431=WordField.canonicalRows actualModulus 6431 (.badd 6430 5230) := by core033_kernel_decide
theorem stats6431 : actualRows6431.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6431=5388 := by core033_kernel_decide
theorem rows6432 : actualRows6432=WordField.canonicalRows actualModulus 6432 (.rotr 5182 7) := by core033_kernel_decide
theorem stats6432 : actualRows6432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6432=5124 := by core033_kernel_decide
theorem rows6433 : actualRows6433=WordField.canonicalRows actualModulus 6433 (.rotr 5182 18) := by core033_kernel_decide
theorem stats6433 : actualRows6433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6433=5124 := by core033_kernel_decide
theorem rows6434 : actualRows6434=WordField.canonicalRows actualModulus 6434 (.bxor 6432 6433) := by core033_kernel_decide
theorem stats6434 : actualRows6434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6434=7428 := by core033_kernel_decide
theorem rows6435 : actualRows6435=WordField.canonicalRows actualModulus 6435 (.shr 5182 3) := by core033_kernel_decide
theorem stats6435 : actualRows6435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6435=4908 := by core033_kernel_decide
theorem rows6436 : actualRows6436=WordField.canonicalRows actualModulus 6436 (.bxor 6434 6435) := by core033_kernel_decide
theorem stats6436 : actualRows6436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6436=7428 := by core033_kernel_decide
theorem rows6437 : actualRows6437=WordField.canonicalRows actualModulus 6437 (.badd 6431 6436) := by core033_kernel_decide
theorem stats6437 : actualRows6437.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6437=5388 := by core033_kernel_decide
theorem rows6438 : actualRows6438=WordField.canonicalRows actualModulus 6438 (.badd 6437 5176) := by core033_kernel_decide
theorem stats6438 : actualRows6438.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6438=5388 := by core033_kernel_decide
theorem rows6439 : actualRows6439=WordField.canonicalRows actualModulus 6439 (.rotr 6425 17) := by core033_kernel_decide
theorem stats6439 : actualRows6439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6439=5124 := by core033_kernel_decide
theorem rows6440 : actualRows6440=WordField.canonicalRows actualModulus 6440 (.rotr 6425 19) := by core033_kernel_decide
theorem stats6440 : actualRows6440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6440=5124 := by core033_kernel_decide
theorem rows6441 : actualRows6441=WordField.canonicalRows actualModulus 6441 (.bxor 6439 6440) := by core033_kernel_decide
theorem stats6441 : actualRows6441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6441=7428 := by core033_kernel_decide
theorem rows6442 : actualRows6442=WordField.canonicalRows actualModulus 6442 (.shr 6425 10) := by core033_kernel_decide
theorem stats6442 : actualRows6442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6442=4404 := by core033_kernel_decide
def partRows99 : List R1CS.Row := actualRows6379++actualRows6380++actualRows6381++actualRows6382++actualRows6383++actualRows6384++actualRows6385++actualRows6386++actualRows6387++actualRows6388++actualRows6389++actualRows6390++actualRows6391++actualRows6392++actualRows6393++actualRows6394++actualRows6395++actualRows6396++actualRows6397++actualRows6398++actualRows6399++actualRows6400++actualRows6401++actualRows6402++actualRows6403++actualRows6404++actualRows6405++actualRows6406++actualRows6407++actualRows6408++actualRows6409++actualRows6410++actualRows6411++actualRows6412++actualRows6413++actualRows6414++actualRows6415++actualRows6416++actualRows6417++actualRows6418++actualRows6419++actualRows6420++actualRows6421++actualRows6422++actualRows6423++actualRows6424++actualRows6425++actualRows6426++actualRows6427++actualRows6428++actualRows6429++actualRows6430++actualRows6431++actualRows6432++actualRows6433++actualRows6434++actualRows6435++actualRows6436++actualRows6437++actualRows6438++actualRows6439++actualRows6440++actualRows6441++actualRows6442
def partOps99 : List WordIR.Op := [.bnot 6378,.band 6377 6379,.shr 5111 8,.literal (BitVec.ofNat 32 0),.bnot 6382,.bxor 6381 6383,.shr 5111 8,.literal (BitVec.ofNat 32 0),.bnot 6386,.badd 6385 6387,.bnot 6388,.band 6384 6389,.bxor 6380 6390,.shr 6391 31,.literal (BitVec.ofNat 32 1),.bxor 6392 6393,.shr 5164 8,.literal (BitVec.ofNat 32 0),.bnot 6396,.band 6395 6397,.shr 5164 8,.literal (BitVec.ofNat 32 0),.bnot 6400,.bxor 6399 6401,.shr 5164 8,.literal (BitVec.ofNat 32 0),.bnot 6404,.badd 6403 6405,.bnot 6406,.band 6402 6407,.bxor 6398 6408,.shr 6409 31,.literal (BitVec.ofNat 32 1),.bxor 6410 6411,.rotr 5254 17,.rotr 5254 19,.bxor 6413 6414,.shr 5254 10,.bxor 6415 6416,.badd 6417 5224,.rotr 5176 7,.rotr 5176 18,.bxor 6419 6420,.shr 5176 3,.bxor 6421 6422,.badd 6418 6423,.badd 6424 5170,.rotr 5260 17,.rotr 5260 19,.bxor 6426 6427,.shr 5260 10,.bxor 6428 6429,.badd 6430 5230,.rotr 5182 7,.rotr 5182 18,.bxor 6432 6433,.shr 5182 3,.bxor 6434 6435,.badd 6431 6436,.badd 6437 5176,.rotr 6425 17,.rotr 6425 19,.bxor 6439 6440,.shr 6425 10]
theorem partExact99 : partRows99=WordField.rows actualModulus 6379 partOps99 := by
  simp only [partRows99,partOps99,WordField.rows,rows6379,rows6380,rows6381,rows6382,rows6383,rows6384,rows6385,rows6386,rows6387,rows6388,rows6389,rows6390,rows6391,rows6392,rows6393,rows6394,rows6395,rows6396,rows6397,rows6398,rows6399,rows6400,rows6401,rows6402,rows6403,rows6404,rows6405,rows6406,rows6407,rows6408,rows6409,rows6410,rows6411,rows6412,rows6413,rows6414,rows6415,rows6416,rows6417,rows6418,rows6419,rows6420,rows6421,rows6422,rows6423,rows6424,rows6425,rows6426,rows6427,rows6428,rows6429,rows6430,rows6431,rows6432,rows6433,rows6434,rows6435,rows6436,rows6437,rows6438,rows6439,rows6440,rows6441,rows6442,List.append_assoc,List.append_nil]
theorem partLength99 : partOps99.length=64 := by decide
theorem partStats99 : partRows99.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows99=347904 := by
  simp only [partRows99,List.length_append,MatrixRowBlocks.rows_weight_append,stats6379.1,stats6379.2,stats6380.1,stats6380.2,stats6381.1,stats6381.2,stats6382.1,stats6382.2,stats6383.1,stats6383.2,stats6384.1,stats6384.2,stats6385.1,stats6385.2,stats6386.1,stats6386.2,stats6387.1,stats6387.2,stats6388.1,stats6388.2,stats6389.1,stats6389.2,stats6390.1,stats6390.2,stats6391.1,stats6391.2,stats6392.1,stats6392.2,stats6393.1,stats6393.2,stats6394.1,stats6394.2,stats6395.1,stats6395.2,stats6396.1,stats6396.2,stats6397.1,stats6397.2,stats6398.1,stats6398.2,stats6399.1,stats6399.2,stats6400.1,stats6400.2,stats6401.1,stats6401.2,stats6402.1,stats6402.2,stats6403.1,stats6403.2,stats6404.1,stats6404.2,stats6405.1,stats6405.2,stats6406.1,stats6406.2,stats6407.1,stats6407.2,stats6408.1,stats6408.2,stats6409.1,stats6409.2,stats6410.1,stats6410.2,stats6411.1,stats6411.2,stats6412.1,stats6412.2,stats6413.1,stats6413.2,stats6414.1,stats6414.2,stats6415.1,stats6415.2,stats6416.1,stats6416.2,stats6417.1,stats6417.2,stats6418.1,stats6418.2,stats6419.1,stats6419.2,stats6420.1,stats6420.2,stats6421.1,stats6421.2,stats6422.1,stats6422.2,stats6423.1,stats6423.2,stats6424.1,stats6424.2,stats6425.1,stats6425.2,stats6426.1,stats6426.2,stats6427.1,stats6427.2,stats6428.1,stats6428.2,stats6429.1,stats6429.2,stats6430.1,stats6430.2,stats6431.1,stats6431.2,stats6432.1,stats6432.2,stats6433.1,stats6433.2,stats6434.1,stats6434.2,stats6435.1,stats6435.2,stats6436.1,stats6436.2,stats6437.1,stats6437.2,stats6438.1,stats6438.2,stats6439.1,stats6439.2,stats6440.1,stats6440.2,stats6441.1,stats6441.2,stats6442.1,stats6442.2]
  decide
end FrameHashControllerCheckedRows
