import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData193
import PairedPathRoundInstructionMatrixData194
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12384 : actualRows12384=WordField.canonicalRows actualModulus 12384 (.bxor 442 12383) := by core033_kernel_decide
theorem stats12384 : actualRows12384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12384=7428 := by core033_kernel_decide
theorem rows12385 : actualRows12385=WordField.canonicalRows actualModulus 12385 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12385 : actualRows12385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12385=2820 := by core033_kernel_decide
theorem rows12386 : actualRows12386=WordField.canonicalRows actualModulus 12386 (.bnot 12385) := by core033_kernel_decide
theorem stats12386 : actualRows12386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12386=6276 := by core033_kernel_decide
theorem rows12387 : actualRows12387=WordField.canonicalRows actualModulus 12387 (.band 12384 12386) := by core033_kernel_decide
theorem stats12387 : actualRows12387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12387=5124 := by core033_kernel_decide
theorem rows12388 : actualRows12388=WordField.canonicalRows actualModulus 12388 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12388 : actualRows12388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12388=2964 := by core033_kernel_decide
theorem rows12389 : actualRows12389=WordField.canonicalRows actualModulus 12389 (.bxor 442 12388) := by core033_kernel_decide
theorem stats12389 : actualRows12389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12389=7428 := by core033_kernel_decide
theorem rows12390 : actualRows12390=WordField.canonicalRows actualModulus 12390 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12390 : actualRows12390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12390=2820 := by core033_kernel_decide
theorem rows12391 : actualRows12391=WordField.canonicalRows actualModulus 12391 (.bnot 12390) := by core033_kernel_decide
theorem stats12391 : actualRows12391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12391=6276 := by core033_kernel_decide
theorem rows12392 : actualRows12392=WordField.canonicalRows actualModulus 12392 (.bxor 12389 12391) := by core033_kernel_decide
theorem stats12392 : actualRows12392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12392=7428 := by core033_kernel_decide
theorem rows12393 : actualRows12393=WordField.canonicalRows actualModulus 12393 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12393 : actualRows12393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12393=2964 := by core033_kernel_decide
theorem rows12394 : actualRows12394=WordField.canonicalRows actualModulus 12394 (.bxor 442 12393) := by core033_kernel_decide
theorem stats12394 : actualRows12394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12394=7428 := by core033_kernel_decide
theorem rows12395 : actualRows12395=WordField.canonicalRows actualModulus 12395 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12395 : actualRows12395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12395=2820 := by core033_kernel_decide
theorem rows12396 : actualRows12396=WordField.canonicalRows actualModulus 12396 (.bnot 12395) := by core033_kernel_decide
theorem stats12396 : actualRows12396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12396=6276 := by core033_kernel_decide
theorem rows12397 : actualRows12397=WordField.canonicalRows actualModulus 12397 (.badd 12394 12396) := by core033_kernel_decide
theorem stats12397 : actualRows12397.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12397=5388 := by core033_kernel_decide
theorem rows12398 : actualRows12398=WordField.canonicalRows actualModulus 12398 (.bnot 12397) := by core033_kernel_decide
theorem stats12398 : actualRows12398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12398=6276 := by core033_kernel_decide
theorem rows12399 : actualRows12399=WordField.canonicalRows actualModulus 12399 (.band 12392 12398) := by core033_kernel_decide
theorem stats12399 : actualRows12399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12399=5124 := by core033_kernel_decide
theorem rows12400 : actualRows12400=WordField.canonicalRows actualModulus 12400 (.bxor 12387 12399) := by core033_kernel_decide
theorem stats12400 : actualRows12400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12400=7428 := by core033_kernel_decide
theorem rows12401 : actualRows12401=WordField.canonicalRows actualModulus 12401 (.shr 12400 31) := by core033_kernel_decide
theorem stats12401 : actualRows12401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12401=2892 := by core033_kernel_decide
theorem rows12402 : actualRows12402=WordField.canonicalRows actualModulus 12402 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12402 : actualRows12402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12402=2892 := by core033_kernel_decide
theorem rows12403 : actualRows12403=WordField.canonicalRows actualModulus 12403 (.bxor 12401 12402) := by core033_kernel_decide
theorem stats12403 : actualRows12403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12403=7428 := by core033_kernel_decide
theorem rows12404 : actualRows12404=WordField.canonicalRows actualModulus 12404 (.bnot 12403) := by core033_kernel_decide
theorem stats12404 : actualRows12404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12404=6276 := by core033_kernel_decide
theorem rows12405 : actualRows12405=WordField.canonicalRows actualModulus 12405 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12405 : actualRows12405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12405=2892 := by core033_kernel_decide
theorem rows12406 : actualRows12406=WordField.canonicalRows actualModulus 12406 (.badd 12404 12405) := by core033_kernel_decide
theorem stats12406 : actualRows12406.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12406=5388 := by core033_kernel_decide
theorem rows12407 : actualRows12407=WordField.canonicalRows actualModulus 12407 (.bnot 12406) := by core033_kernel_decide
theorem stats12407 : actualRows12407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12407=6276 := by core033_kernel_decide
theorem rows12408 : actualRows12408=WordField.canonicalRows actualModulus 12408 (.band 12407 957) := by core033_kernel_decide
theorem stats12408 : actualRows12408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12408=5124 := by core033_kernel_decide
theorem rows12409 : actualRows12409=WordField.canonicalRows actualModulus 12409 (.bxor 12382 12408) := by core033_kernel_decide
theorem stats12409 : actualRows12409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12409=7428 := by core033_kernel_decide
theorem rows12410 : actualRows12410=WordField.canonicalRows actualModulus 12410 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12410 : actualRows12410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12410=2964 := by core033_kernel_decide
theorem rows12411 : actualRows12411=WordField.canonicalRows actualModulus 12411 (.bxor 442 12410) := by core033_kernel_decide
theorem stats12411 : actualRows12411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12411=7428 := by core033_kernel_decide
theorem rows12412 : actualRows12412=WordField.canonicalRows actualModulus 12412 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12412 : actualRows12412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12412=2820 := by core033_kernel_decide
theorem rows12413 : actualRows12413=WordField.canonicalRows actualModulus 12413 (.bnot 12412) := by core033_kernel_decide
theorem stats12413 : actualRows12413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12413=6276 := by core033_kernel_decide
theorem rows12414 : actualRows12414=WordField.canonicalRows actualModulus 12414 (.band 12411 12413) := by core033_kernel_decide
theorem stats12414 : actualRows12414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12414=5124 := by core033_kernel_decide
theorem rows12415 : actualRows12415=WordField.canonicalRows actualModulus 12415 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12415 : actualRows12415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12415=2964 := by core033_kernel_decide
theorem rows12416 : actualRows12416=WordField.canonicalRows actualModulus 12416 (.bxor 442 12415) := by core033_kernel_decide
theorem stats12416 : actualRows12416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12416=7428 := by core033_kernel_decide
theorem rows12417 : actualRows12417=WordField.canonicalRows actualModulus 12417 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12417 : actualRows12417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12417=2820 := by core033_kernel_decide
theorem rows12418 : actualRows12418=WordField.canonicalRows actualModulus 12418 (.bnot 12417) := by core033_kernel_decide
theorem stats12418 : actualRows12418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12418=6276 := by core033_kernel_decide
theorem rows12419 : actualRows12419=WordField.canonicalRows actualModulus 12419 (.bxor 12416 12418) := by core033_kernel_decide
theorem stats12419 : actualRows12419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12419=7428 := by core033_kernel_decide
theorem rows12420 : actualRows12420=WordField.canonicalRows actualModulus 12420 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12420 : actualRows12420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12420=2964 := by core033_kernel_decide
theorem rows12421 : actualRows12421=WordField.canonicalRows actualModulus 12421 (.bxor 442 12420) := by core033_kernel_decide
theorem stats12421 : actualRows12421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12421=7428 := by core033_kernel_decide
theorem rows12422 : actualRows12422=WordField.canonicalRows actualModulus 12422 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12422 : actualRows12422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12422=2820 := by core033_kernel_decide
theorem rows12423 : actualRows12423=WordField.canonicalRows actualModulus 12423 (.bnot 12422) := by core033_kernel_decide
theorem stats12423 : actualRows12423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12423=6276 := by core033_kernel_decide
theorem rows12424 : actualRows12424=WordField.canonicalRows actualModulus 12424 (.badd 12421 12423) := by core033_kernel_decide
theorem stats12424 : actualRows12424.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12424=5388 := by core033_kernel_decide
theorem rows12425 : actualRows12425=WordField.canonicalRows actualModulus 12425 (.bnot 12424) := by core033_kernel_decide
theorem stats12425 : actualRows12425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12425=6276 := by core033_kernel_decide
theorem rows12426 : actualRows12426=WordField.canonicalRows actualModulus 12426 (.band 12419 12425) := by core033_kernel_decide
theorem stats12426 : actualRows12426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12426=5124 := by core033_kernel_decide
theorem rows12427 : actualRows12427=WordField.canonicalRows actualModulus 12427 (.bxor 12414 12426) := by core033_kernel_decide
theorem stats12427 : actualRows12427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12427=7428 := by core033_kernel_decide
theorem rows12428 : actualRows12428=WordField.canonicalRows actualModulus 12428 (.shr 12427 31) := by core033_kernel_decide
theorem stats12428 : actualRows12428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12428=2892 := by core033_kernel_decide
theorem rows12429 : actualRows12429=WordField.canonicalRows actualModulus 12429 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12429 : actualRows12429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12429=2892 := by core033_kernel_decide
theorem rows12430 : actualRows12430=WordField.canonicalRows actualModulus 12430 (.bxor 12428 12429) := by core033_kernel_decide
theorem stats12430 : actualRows12430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12430=7428 := by core033_kernel_decide
theorem rows12431 : actualRows12431=WordField.canonicalRows actualModulus 12431 (.bnot 12430) := by core033_kernel_decide
theorem stats12431 : actualRows12431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12431=6276 := by core033_kernel_decide
theorem rows12432 : actualRows12432=WordField.canonicalRows actualModulus 12432 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12432 : actualRows12432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12432=2892 := by core033_kernel_decide
theorem rows12433 : actualRows12433=WordField.canonicalRows actualModulus 12433 (.badd 12431 12432) := by core033_kernel_decide
theorem stats12433 : actualRows12433.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12433=5388 := by core033_kernel_decide
theorem rows12434 : actualRows12434=WordField.canonicalRows actualModulus 12434 (.band 12433 10289) := by core033_kernel_decide
theorem stats12434 : actualRows12434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12434=5124 := by core033_kernel_decide
theorem rows12435 : actualRows12435=WordField.canonicalRows actualModulus 12435 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12435 : actualRows12435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12435=2964 := by core033_kernel_decide
theorem rows12436 : actualRows12436=WordField.canonicalRows actualModulus 12436 (.bxor 442 12435) := by core033_kernel_decide
theorem stats12436 : actualRows12436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12436=7428 := by core033_kernel_decide
theorem rows12437 : actualRows12437=WordField.canonicalRows actualModulus 12437 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12437 : actualRows12437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12437=2820 := by core033_kernel_decide
theorem rows12438 : actualRows12438=WordField.canonicalRows actualModulus 12438 (.bnot 12437) := by core033_kernel_decide
theorem stats12438 : actualRows12438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12438=6276 := by core033_kernel_decide
theorem rows12439 : actualRows12439=WordField.canonicalRows actualModulus 12439 (.band 12436 12438) := by core033_kernel_decide
theorem stats12439 : actualRows12439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12439=5124 := by core033_kernel_decide
theorem rows12440 : actualRows12440=WordField.canonicalRows actualModulus 12440 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12440 : actualRows12440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12440=2964 := by core033_kernel_decide
theorem rows12441 : actualRows12441=WordField.canonicalRows actualModulus 12441 (.bxor 442 12440) := by core033_kernel_decide
theorem stats12441 : actualRows12441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12441=7428 := by core033_kernel_decide
theorem rows12442 : actualRows12442=WordField.canonicalRows actualModulus 12442 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12442 : actualRows12442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12442=2820 := by core033_kernel_decide
theorem rows12443 : actualRows12443=WordField.canonicalRows actualModulus 12443 (.bnot 12442) := by core033_kernel_decide
theorem stats12443 : actualRows12443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12443=6276 := by core033_kernel_decide
theorem rows12444 : actualRows12444=WordField.canonicalRows actualModulus 12444 (.bxor 12441 12443) := by core033_kernel_decide
theorem stats12444 : actualRows12444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12444=7428 := by core033_kernel_decide
theorem rows12445 : actualRows12445=WordField.canonicalRows actualModulus 12445 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12445 : actualRows12445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12445=2964 := by core033_kernel_decide
theorem rows12446 : actualRows12446=WordField.canonicalRows actualModulus 12446 (.bxor 442 12445) := by core033_kernel_decide
theorem stats12446 : actualRows12446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12446=7428 := by core033_kernel_decide
theorem rows12447 : actualRows12447=WordField.canonicalRows actualModulus 12447 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12447 : actualRows12447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12447=2820 := by core033_kernel_decide
def partRows192 : List R1CS.Row := actualRows12384++actualRows12385++actualRows12386++actualRows12387++actualRows12388++actualRows12389++actualRows12390++actualRows12391++actualRows12392++actualRows12393++actualRows12394++actualRows12395++actualRows12396++actualRows12397++actualRows12398++actualRows12399++actualRows12400++actualRows12401++actualRows12402++actualRows12403++actualRows12404++actualRows12405++actualRows12406++actualRows12407++actualRows12408++actualRows12409++actualRows12410++actualRows12411++actualRows12412++actualRows12413++actualRows12414++actualRows12415++actualRows12416++actualRows12417++actualRows12418++actualRows12419++actualRows12420++actualRows12421++actualRows12422++actualRows12423++actualRows12424++actualRows12425++actualRows12426++actualRows12427++actualRows12428++actualRows12429++actualRows12430++actualRows12431++actualRows12432++actualRows12433++actualRows12434++actualRows12435++actualRows12436++actualRows12437++actualRows12438++actualRows12439++actualRows12440++actualRows12441++actualRows12442++actualRows12443++actualRows12444++actualRows12445++actualRows12446++actualRows12447
def partOps192 : List WordIR.Op := [.bxor 442 12383,.literal (BitVec.ofNat 32 0),.bnot 12385,.band 12384 12386,.literal (BitVec.ofNat 32 3),.bxor 442 12388,.literal (BitVec.ofNat 32 0),.bnot 12390,.bxor 12389 12391,.literal (BitVec.ofNat 32 3),.bxor 442 12393,.literal (BitVec.ofNat 32 0),.bnot 12395,.badd 12394 12396,.bnot 12397,.band 12392 12398,.bxor 12387 12399,.shr 12400 31,.literal (BitVec.ofNat 32 1),.bxor 12401 12402,.bnot 12403,.literal (BitVec.ofNat 32 1),.badd 12404 12405,.bnot 12406,.band 12407 957,.bxor 12382 12408,.literal (BitVec.ofNat 32 3),.bxor 442 12410,.literal (BitVec.ofNat 32 0),.bnot 12412,.band 12411 12413,.literal (BitVec.ofNat 32 3),.bxor 442 12415,.literal (BitVec.ofNat 32 0),.bnot 12417,.bxor 12416 12418,.literal (BitVec.ofNat 32 3),.bxor 442 12420,.literal (BitVec.ofNat 32 0),.bnot 12422,.badd 12421 12423,.bnot 12424,.band 12419 12425,.bxor 12414 12426,.shr 12427 31,.literal (BitVec.ofNat 32 1),.bxor 12428 12429,.bnot 12430,.literal (BitVec.ofNat 32 1),.badd 12431 12432,.band 12433 10289,.literal (BitVec.ofNat 32 3),.bxor 442 12435,.literal (BitVec.ofNat 32 0),.bnot 12437,.band 12436 12438,.literal (BitVec.ofNat 32 3),.bxor 442 12440,.literal (BitVec.ofNat 32 0),.bnot 12442,.bxor 12441 12443,.literal (BitVec.ofNat 32 3),.bxor 442 12445,.literal (BitVec.ofNat 32 0)]
theorem partExact192 : partRows192=WordField.rows actualModulus 12384 partOps192 := by
  simp only [partRows192,partOps192,WordField.rows,rows12384,rows12385,rows12386,rows12387,rows12388,rows12389,rows12390,rows12391,rows12392,rows12393,rows12394,rows12395,rows12396,rows12397,rows12398,rows12399,rows12400,rows12401,rows12402,rows12403,rows12404,rows12405,rows12406,rows12407,rows12408,rows12409,rows12410,rows12411,rows12412,rows12413,rows12414,rows12415,rows12416,rows12417,rows12418,rows12419,rows12420,rows12421,rows12422,rows12423,rows12424,rows12425,rows12426,rows12427,rows12428,rows12429,rows12430,rows12431,rows12432,rows12433,rows12434,rows12435,rows12436,rows12437,rows12438,rows12439,rows12440,rows12441,rows12442,rows12443,rows12444,rows12445,rows12446,rows12447,List.append_assoc,List.append_nil]
theorem partLength192 : partOps192.length=64 := by decide
theorem partStats192 : partRows192.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows192=331728 := by
  simp only [partRows192,List.length_append,MatrixRowBlocks.rows_weight_append,stats12384.1,stats12384.2,stats12385.1,stats12385.2,stats12386.1,stats12386.2,stats12387.1,stats12387.2,stats12388.1,stats12388.2,stats12389.1,stats12389.2,stats12390.1,stats12390.2,stats12391.1,stats12391.2,stats12392.1,stats12392.2,stats12393.1,stats12393.2,stats12394.1,stats12394.2,stats12395.1,stats12395.2,stats12396.1,stats12396.2,stats12397.1,stats12397.2,stats12398.1,stats12398.2,stats12399.1,stats12399.2,stats12400.1,stats12400.2,stats12401.1,stats12401.2,stats12402.1,stats12402.2,stats12403.1,stats12403.2,stats12404.1,stats12404.2,stats12405.1,stats12405.2,stats12406.1,stats12406.2,stats12407.1,stats12407.2,stats12408.1,stats12408.2,stats12409.1,stats12409.2,stats12410.1,stats12410.2,stats12411.1,stats12411.2,stats12412.1,stats12412.2,stats12413.1,stats12413.2,stats12414.1,stats12414.2,stats12415.1,stats12415.2,stats12416.1,stats12416.2,stats12417.1,stats12417.2,stats12418.1,stats12418.2,stats12419.1,stats12419.2,stats12420.1,stats12420.2,stats12421.1,stats12421.2,stats12422.1,stats12422.2,stats12423.1,stats12423.2,stats12424.1,stats12424.2,stats12425.1,stats12425.2,stats12426.1,stats12426.2,stats12427.1,stats12427.2,stats12428.1,stats12428.2,stats12429.1,stats12429.2,stats12430.1,stats12430.2,stats12431.1,stats12431.2,stats12432.1,stats12432.2,stats12433.1,stats12433.2,stats12434.1,stats12434.2,stats12435.1,stats12435.2,stats12436.1,stats12436.2,stats12437.1,stats12437.2,stats12438.1,stats12438.2,stats12439.1,stats12439.2,stats12440.1,stats12440.2,stats12441.1,stats12441.2,stats12442.1,stats12442.2,stats12443.1,stats12443.2,stats12444.1,stats12444.2,stats12445.1,stats12445.2,stats12446.1,stats12446.2,stats12447.1,stats12447.2]
  decide
end PairedPathRoundCheckedRows
