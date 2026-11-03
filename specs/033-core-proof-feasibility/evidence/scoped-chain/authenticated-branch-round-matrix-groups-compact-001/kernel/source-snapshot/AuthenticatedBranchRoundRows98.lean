import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData99
import AuthenticatedBranchRoundInstructionMatrixData100
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6390 : actualRows6390=WordField.canonicalRows actualModulus 6390 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6390 : actualRows6390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6390=2892 := by core033_kernel_decide
theorem rows6391 : actualRows6391=WordField.canonicalRows actualModulus 6391 (.bxor 1299 6390) := by core033_kernel_decide
theorem stats6391 : actualRows6391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6391=7428 := by core033_kernel_decide
theorem rows6392 : actualRows6392=WordField.canonicalRows actualModulus 6392 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6392 : actualRows6392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6392=2820 := by core033_kernel_decide
theorem rows6393 : actualRows6393=WordField.canonicalRows actualModulus 6393 (.bnot 6392) := by core033_kernel_decide
theorem stats6393 : actualRows6393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6393=6276 := by core033_kernel_decide
theorem rows6394 : actualRows6394=WordField.canonicalRows actualModulus 6394 (.badd 6391 6393) := by core033_kernel_decide
theorem stats6394 : actualRows6394.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6394=5388 := by core033_kernel_decide
theorem rows6395 : actualRows6395=WordField.canonicalRows actualModulus 6395 (.bnot 6394) := by core033_kernel_decide
theorem stats6395 : actualRows6395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6395=6276 := by core033_kernel_decide
theorem rows6396 : actualRows6396=WordField.canonicalRows actualModulus 6396 (.band 6389 6395) := by core033_kernel_decide
theorem stats6396 : actualRows6396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6396=5124 := by core033_kernel_decide
theorem rows6397 : actualRows6397=WordField.canonicalRows actualModulus 6397 (.bxor 6384 6396) := by core033_kernel_decide
theorem stats6397 : actualRows6397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6397=7428 := by core033_kernel_decide
theorem rows6398 : actualRows6398=WordField.canonicalRows actualModulus 6398 (.shr 6397 31) := by core033_kernel_decide
theorem stats6398 : actualRows6398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6398=2892 := by core033_kernel_decide
theorem rows6399 : actualRows6399=WordField.canonicalRows actualModulus 6399 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6399 : actualRows6399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6399=2892 := by core033_kernel_decide
theorem rows6400 : actualRows6400=WordField.canonicalRows actualModulus 6400 (.bxor 6398 6399) := by core033_kernel_decide
theorem stats6400 : actualRows6400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6400=7428 := by core033_kernel_decide
theorem rows6401 : actualRows6401=WordField.canonicalRows actualModulus 6401 (.bnot 6400) := by core033_kernel_decide
theorem stats6401 : actualRows6401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6401=6276 := by core033_kernel_decide
theorem rows6402 : actualRows6402=WordField.canonicalRows actualModulus 6402 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6402 : actualRows6402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6402=2892 := by core033_kernel_decide
theorem rows6403 : actualRows6403=WordField.canonicalRows actualModulus 6403 (.badd 6401 6402) := by core033_kernel_decide
theorem stats6403 : actualRows6403.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6403=5388 := by core033_kernel_decide
theorem rows6404 : actualRows6404=WordField.canonicalRows actualModulus 6404 (.bnot 6403) := by core033_kernel_decide
theorem stats6404 : actualRows6404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6404=6276 := by core033_kernel_decide
theorem rows6405 : actualRows6405=WordField.canonicalRows actualModulus 6405 (.band 6404 2666) := by core033_kernel_decide
theorem stats6405 : actualRows6405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6405=5124 := by core033_kernel_decide
theorem rows6406 : actualRows6406=WordField.canonicalRows actualModulus 6406 (.bxor 6379 6405) := by core033_kernel_decide
theorem stats6406 : actualRows6406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6406=7428 := by core033_kernel_decide
theorem rows6407 : actualRows6407=WordField.canonicalRows actualModulus 6407 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6407 : actualRows6407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6407=2892 := by core033_kernel_decide
theorem rows6408 : actualRows6408=WordField.canonicalRows actualModulus 6408 (.bxor 1299 6407) := by core033_kernel_decide
theorem stats6408 : actualRows6408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6408=7428 := by core033_kernel_decide
theorem rows6409 : actualRows6409=WordField.canonicalRows actualModulus 6409 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6409 : actualRows6409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6409=2820 := by core033_kernel_decide
theorem rows6410 : actualRows6410=WordField.canonicalRows actualModulus 6410 (.bnot 6409) := by core033_kernel_decide
theorem stats6410 : actualRows6410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6410=6276 := by core033_kernel_decide
theorem rows6411 : actualRows6411=WordField.canonicalRows actualModulus 6411 (.band 6408 6410) := by core033_kernel_decide
theorem stats6411 : actualRows6411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6411=5124 := by core033_kernel_decide
theorem rows6412 : actualRows6412=WordField.canonicalRows actualModulus 6412 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6412 : actualRows6412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6412=2892 := by core033_kernel_decide
theorem rows6413 : actualRows6413=WordField.canonicalRows actualModulus 6413 (.bxor 1299 6412) := by core033_kernel_decide
theorem stats6413 : actualRows6413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6413=7428 := by core033_kernel_decide
theorem rows6414 : actualRows6414=WordField.canonicalRows actualModulus 6414 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6414 : actualRows6414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6414=2820 := by core033_kernel_decide
theorem rows6415 : actualRows6415=WordField.canonicalRows actualModulus 6415 (.bnot 6414) := by core033_kernel_decide
theorem stats6415 : actualRows6415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6415=6276 := by core033_kernel_decide
theorem rows6416 : actualRows6416=WordField.canonicalRows actualModulus 6416 (.bxor 6413 6415) := by core033_kernel_decide
theorem stats6416 : actualRows6416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6416=7428 := by core033_kernel_decide
theorem rows6417 : actualRows6417=WordField.canonicalRows actualModulus 6417 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6417 : actualRows6417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6417=2892 := by core033_kernel_decide
theorem rows6418 : actualRows6418=WordField.canonicalRows actualModulus 6418 (.bxor 1299 6417) := by core033_kernel_decide
theorem stats6418 : actualRows6418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6418=7428 := by core033_kernel_decide
theorem rows6419 : actualRows6419=WordField.canonicalRows actualModulus 6419 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6419 : actualRows6419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6419=2820 := by core033_kernel_decide
theorem rows6420 : actualRows6420=WordField.canonicalRows actualModulus 6420 (.bnot 6419) := by core033_kernel_decide
theorem stats6420 : actualRows6420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6420=6276 := by core033_kernel_decide
theorem rows6421 : actualRows6421=WordField.canonicalRows actualModulus 6421 (.badd 6418 6420) := by core033_kernel_decide
theorem stats6421 : actualRows6421.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6421=5388 := by core033_kernel_decide
theorem rows6422 : actualRows6422=WordField.canonicalRows actualModulus 6422 (.bnot 6421) := by core033_kernel_decide
theorem stats6422 : actualRows6422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6422=6276 := by core033_kernel_decide
theorem rows6423 : actualRows6423=WordField.canonicalRows actualModulus 6423 (.band 6416 6422) := by core033_kernel_decide
theorem stats6423 : actualRows6423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6423=5124 := by core033_kernel_decide
theorem rows6424 : actualRows6424=WordField.canonicalRows actualModulus 6424 (.bxor 6411 6423) := by core033_kernel_decide
theorem stats6424 : actualRows6424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6424=7428 := by core033_kernel_decide
theorem rows6425 : actualRows6425=WordField.canonicalRows actualModulus 6425 (.shr 6424 31) := by core033_kernel_decide
theorem stats6425 : actualRows6425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6425=2892 := by core033_kernel_decide
theorem rows6426 : actualRows6426=WordField.canonicalRows actualModulus 6426 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6426 : actualRows6426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6426=2892 := by core033_kernel_decide
theorem rows6427 : actualRows6427=WordField.canonicalRows actualModulus 6427 (.bxor 6425 6426) := by core033_kernel_decide
theorem stats6427 : actualRows6427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6427=7428 := by core033_kernel_decide
theorem rows6428 : actualRows6428=WordField.canonicalRows actualModulus 6428 (.bnot 6427) := by core033_kernel_decide
theorem stats6428 : actualRows6428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6428=6276 := by core033_kernel_decide
theorem rows6429 : actualRows6429=WordField.canonicalRows actualModulus 6429 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6429 : actualRows6429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6429=2892 := by core033_kernel_decide
theorem rows6430 : actualRows6430=WordField.canonicalRows actualModulus 6430 (.badd 6428 6429) := by core033_kernel_decide
theorem stats6430 : actualRows6430.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6430=5388 := by core033_kernel_decide
theorem rows6431 : actualRows6431=WordField.canonicalRows actualModulus 6431 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6431 : actualRows6431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6431=2820 := by core033_kernel_decide
theorem rows6432 : actualRows6432=WordField.canonicalRows actualModulus 6432 (.band 6430 6431) := by core033_kernel_decide
theorem stats6432 : actualRows6432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6432=5124 := by core033_kernel_decide
theorem rows6433 : actualRows6433=WordField.canonicalRows actualModulus 6433 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6433 : actualRows6433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6433=2892 := by core033_kernel_decide
theorem rows6434 : actualRows6434=WordField.canonicalRows actualModulus 6434 (.bxor 1299 6433) := by core033_kernel_decide
theorem stats6434 : actualRows6434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6434=7428 := by core033_kernel_decide
theorem rows6435 : actualRows6435=WordField.canonicalRows actualModulus 6435 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6435 : actualRows6435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6435=2820 := by core033_kernel_decide
theorem rows6436 : actualRows6436=WordField.canonicalRows actualModulus 6436 (.bnot 6435) := by core033_kernel_decide
theorem stats6436 : actualRows6436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6436=6276 := by core033_kernel_decide
theorem rows6437 : actualRows6437=WordField.canonicalRows actualModulus 6437 (.band 6434 6436) := by core033_kernel_decide
theorem stats6437 : actualRows6437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6437=5124 := by core033_kernel_decide
theorem rows6438 : actualRows6438=WordField.canonicalRows actualModulus 6438 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6438 : actualRows6438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6438=2892 := by core033_kernel_decide
theorem rows6439 : actualRows6439=WordField.canonicalRows actualModulus 6439 (.bxor 1299 6438) := by core033_kernel_decide
theorem stats6439 : actualRows6439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6439=7428 := by core033_kernel_decide
theorem rows6440 : actualRows6440=WordField.canonicalRows actualModulus 6440 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6440 : actualRows6440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6440=2820 := by core033_kernel_decide
theorem rows6441 : actualRows6441=WordField.canonicalRows actualModulus 6441 (.bnot 6440) := by core033_kernel_decide
theorem stats6441 : actualRows6441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6441=6276 := by core033_kernel_decide
theorem rows6442 : actualRows6442=WordField.canonicalRows actualModulus 6442 (.bxor 6439 6441) := by core033_kernel_decide
theorem stats6442 : actualRows6442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6442=7428 := by core033_kernel_decide
theorem rows6443 : actualRows6443=WordField.canonicalRows actualModulus 6443 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6443 : actualRows6443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6443=2892 := by core033_kernel_decide
theorem rows6444 : actualRows6444=WordField.canonicalRows actualModulus 6444 (.bxor 1299 6443) := by core033_kernel_decide
theorem stats6444 : actualRows6444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6444=7428 := by core033_kernel_decide
theorem rows6445 : actualRows6445=WordField.canonicalRows actualModulus 6445 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6445 : actualRows6445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6445=2820 := by core033_kernel_decide
theorem rows6446 : actualRows6446=WordField.canonicalRows actualModulus 6446 (.bnot 6445) := by core033_kernel_decide
theorem stats6446 : actualRows6446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6446=6276 := by core033_kernel_decide
theorem rows6447 : actualRows6447=WordField.canonicalRows actualModulus 6447 (.badd 6444 6446) := by core033_kernel_decide
theorem stats6447 : actualRows6447.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6447=5388 := by core033_kernel_decide
theorem rows6448 : actualRows6448=WordField.canonicalRows actualModulus 6448 (.bnot 6447) := by core033_kernel_decide
theorem stats6448 : actualRows6448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6448=6276 := by core033_kernel_decide
theorem rows6449 : actualRows6449=WordField.canonicalRows actualModulus 6449 (.band 6442 6448) := by core033_kernel_decide
theorem stats6449 : actualRows6449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6449=5124 := by core033_kernel_decide
theorem rows6450 : actualRows6450=WordField.canonicalRows actualModulus 6450 (.bxor 6437 6449) := by core033_kernel_decide
theorem stats6450 : actualRows6450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6450=7428 := by core033_kernel_decide
theorem rows6451 : actualRows6451=WordField.canonicalRows actualModulus 6451 (.shr 6450 31) := by core033_kernel_decide
theorem stats6451 : actualRows6451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6451=2892 := by core033_kernel_decide
theorem rows6452 : actualRows6452=WordField.canonicalRows actualModulus 6452 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6452 : actualRows6452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6452=2892 := by core033_kernel_decide
theorem rows6453 : actualRows6453=WordField.canonicalRows actualModulus 6453 (.bxor 6451 6452) := by core033_kernel_decide
theorem stats6453 : actualRows6453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6453=7428 := by core033_kernel_decide
def partRows98 : List R1CS.Row := actualRows6390++actualRows6391++actualRows6392++actualRows6393++actualRows6394++actualRows6395++actualRows6396++actualRows6397++actualRows6398++actualRows6399++actualRows6400++actualRows6401++actualRows6402++actualRows6403++actualRows6404++actualRows6405++actualRows6406++actualRows6407++actualRows6408++actualRows6409++actualRows6410++actualRows6411++actualRows6412++actualRows6413++actualRows6414++actualRows6415++actualRows6416++actualRows6417++actualRows6418++actualRows6419++actualRows6420++actualRows6421++actualRows6422++actualRows6423++actualRows6424++actualRows6425++actualRows6426++actualRows6427++actualRows6428++actualRows6429++actualRows6430++actualRows6431++actualRows6432++actualRows6433++actualRows6434++actualRows6435++actualRows6436++actualRows6437++actualRows6438++actualRows6439++actualRows6440++actualRows6441++actualRows6442++actualRows6443++actualRows6444++actualRows6445++actualRows6446++actualRows6447++actualRows6448++actualRows6449++actualRows6450++actualRows6451++actualRows6452++actualRows6453
def partOps98 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 1299 6390,.literal (BitVec.ofNat 32 0),.bnot 6392,.badd 6391 6393,.bnot 6394,.band 6389 6395,.bxor 6384 6396,.shr 6397 31,.literal (BitVec.ofNat 32 1),.bxor 6398 6399,.bnot 6400,.literal (BitVec.ofNat 32 1),.badd 6401 6402,.bnot 6403,.band 6404 2666,.bxor 6379 6405,.literal (BitVec.ofNat 32 2),.bxor 1299 6407,.literal (BitVec.ofNat 32 0),.bnot 6409,.band 6408 6410,.literal (BitVec.ofNat 32 2),.bxor 1299 6412,.literal (BitVec.ofNat 32 0),.bnot 6414,.bxor 6413 6415,.literal (BitVec.ofNat 32 2),.bxor 1299 6417,.literal (BitVec.ofNat 32 0),.bnot 6419,.badd 6418 6420,.bnot 6421,.band 6416 6422,.bxor 6411 6423,.shr 6424 31,.literal (BitVec.ofNat 32 1),.bxor 6425 6426,.bnot 6427,.literal (BitVec.ofNat 32 1),.badd 6428 6429,.literal (BitVec.ofNat 32 0),.band 6430 6431,.literal (BitVec.ofNat 32 2),.bxor 1299 6433,.literal (BitVec.ofNat 32 0),.bnot 6435,.band 6434 6436,.literal (BitVec.ofNat 32 2),.bxor 1299 6438,.literal (BitVec.ofNat 32 0),.bnot 6440,.bxor 6439 6441,.literal (BitVec.ofNat 32 2),.bxor 1299 6443,.literal (BitVec.ofNat 32 0),.bnot 6445,.badd 6444 6446,.bnot 6447,.band 6442 6448,.bxor 6437 6449,.shr 6450 31,.literal (BitVec.ofNat 32 1),.bxor 6451 6452]
theorem partExact98 : partRows98=WordField.rows actualModulus 6390 partOps98 := by
  simp only [partRows98,partOps98,WordField.rows,rows6390,rows6391,rows6392,rows6393,rows6394,rows6395,rows6396,rows6397,rows6398,rows6399,rows6400,rows6401,rows6402,rows6403,rows6404,rows6405,rows6406,rows6407,rows6408,rows6409,rows6410,rows6411,rows6412,rows6413,rows6414,rows6415,rows6416,rows6417,rows6418,rows6419,rows6420,rows6421,rows6422,rows6423,rows6424,rows6425,rows6426,rows6427,rows6428,rows6429,rows6430,rows6431,rows6432,rows6433,rows6434,rows6435,rows6436,rows6437,rows6438,rows6439,rows6440,rows6441,rows6442,rows6443,rows6444,rows6445,rows6446,rows6447,rows6448,rows6449,rows6450,rows6451,rows6452,rows6453,List.append_assoc,List.append_nil]
theorem partLength98 : partOps98.length=64 := by decide
theorem partStats98 : partRows98.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows98=329184 := by
  simp only [partRows98,List.length_append,MatrixRowBlocks.rows_weight_append,stats6390.1,stats6390.2,stats6391.1,stats6391.2,stats6392.1,stats6392.2,stats6393.1,stats6393.2,stats6394.1,stats6394.2,stats6395.1,stats6395.2,stats6396.1,stats6396.2,stats6397.1,stats6397.2,stats6398.1,stats6398.2,stats6399.1,stats6399.2,stats6400.1,stats6400.2,stats6401.1,stats6401.2,stats6402.1,stats6402.2,stats6403.1,stats6403.2,stats6404.1,stats6404.2,stats6405.1,stats6405.2,stats6406.1,stats6406.2,stats6407.1,stats6407.2,stats6408.1,stats6408.2,stats6409.1,stats6409.2,stats6410.1,stats6410.2,stats6411.1,stats6411.2,stats6412.1,stats6412.2,stats6413.1,stats6413.2,stats6414.1,stats6414.2,stats6415.1,stats6415.2,stats6416.1,stats6416.2,stats6417.1,stats6417.2,stats6418.1,stats6418.2,stats6419.1,stats6419.2,stats6420.1,stats6420.2,stats6421.1,stats6421.2,stats6422.1,stats6422.2,stats6423.1,stats6423.2,stats6424.1,stats6424.2,stats6425.1,stats6425.2,stats6426.1,stats6426.2,stats6427.1,stats6427.2,stats6428.1,stats6428.2,stats6429.1,stats6429.2,stats6430.1,stats6430.2,stats6431.1,stats6431.2,stats6432.1,stats6432.2,stats6433.1,stats6433.2,stats6434.1,stats6434.2,stats6435.1,stats6435.2,stats6436.1,stats6436.2,stats6437.1,stats6437.2,stats6438.1,stats6438.2,stats6439.1,stats6439.2,stats6440.1,stats6440.2,stats6441.1,stats6441.2,stats6442.1,stats6442.2,stats6443.1,stats6443.2,stats6444.1,stats6444.2,stats6445.1,stats6445.2,stats6446.1,stats6446.2,stats6447.1,stats6447.2,stats6448.1,stats6448.2,stats6449.1,stats6449.2,stats6450.1,stats6450.2,stats6451.1,stats6451.2,stats6452.1,stats6452.2,stats6453.1,stats6453.2]
  decide
end AuthenticatedBranchRoundCheckedRows
