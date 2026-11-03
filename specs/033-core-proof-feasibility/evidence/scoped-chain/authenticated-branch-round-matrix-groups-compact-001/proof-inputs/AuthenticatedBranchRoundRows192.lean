import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData193
import AuthenticatedBranchRoundInstructionMatrixData194
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12406 : actualRows12406=WordField.canonicalRows actualModulus 12406 (.band 12399 12405) := by core033_kernel_decide
theorem stats12406 : actualRows12406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12406=5124 := by core033_kernel_decide
theorem rows12407 : actualRows12407=WordField.canonicalRows actualModulus 12407 (.bxor 12394 12406) := by core033_kernel_decide
theorem stats12407 : actualRows12407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12407=7428 := by core033_kernel_decide
theorem rows12408 : actualRows12408=WordField.canonicalRows actualModulus 12408 (.shr 12407 31) := by core033_kernel_decide
theorem stats12408 : actualRows12408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12408=2892 := by core033_kernel_decide
theorem rows12409 : actualRows12409=WordField.canonicalRows actualModulus 12409 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12409 : actualRows12409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12409=2892 := by core033_kernel_decide
theorem rows12410 : actualRows12410=WordField.canonicalRows actualModulus 12410 (.bxor 12408 12409) := by core033_kernel_decide
theorem stats12410 : actualRows12410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12410=7428 := by core033_kernel_decide
theorem rows12411 : actualRows12411=WordField.canonicalRows actualModulus 12411 (.bnot 12410) := by core033_kernel_decide
theorem stats12411 : actualRows12411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12411=6276 := by core033_kernel_decide
theorem rows12412 : actualRows12412=WordField.canonicalRows actualModulus 12412 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12412 : actualRows12412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12412=2892 := by core033_kernel_decide
theorem rows12413 : actualRows12413=WordField.canonicalRows actualModulus 12413 (.badd 12411 12412) := by core033_kernel_decide
theorem stats12413 : actualRows12413.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12413=5388 := by core033_kernel_decide
theorem rows12414 : actualRows12414=WordField.canonicalRows actualModulus 12414 (.bnot 12413) := by core033_kernel_decide
theorem stats12414 : actualRows12414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12414=6276 := by core033_kernel_decide
theorem rows12415 : actualRows12415=WordField.canonicalRows actualModulus 12415 (.band 12414 1497) := by core033_kernel_decide
theorem stats12415 : actualRows12415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12415=5124 := by core033_kernel_decide
theorem rows12416 : actualRows12416=WordField.canonicalRows actualModulus 12416 (.bxor 12389 12415) := by core033_kernel_decide
theorem stats12416 : actualRows12416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12416=7428 := by core033_kernel_decide
theorem rows12417 : actualRows12417=WordField.canonicalRows actualModulus 12417 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12417 : actualRows12417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12417=2964 := by core033_kernel_decide
theorem rows12418 : actualRows12418=WordField.canonicalRows actualModulus 12418 (.bxor 693 12417) := by core033_kernel_decide
theorem stats12418 : actualRows12418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12418=7428 := by core033_kernel_decide
theorem rows12419 : actualRows12419=WordField.canonicalRows actualModulus 12419 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12419 : actualRows12419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12419=2820 := by core033_kernel_decide
theorem rows12420 : actualRows12420=WordField.canonicalRows actualModulus 12420 (.bnot 12419) := by core033_kernel_decide
theorem stats12420 : actualRows12420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12420=6276 := by core033_kernel_decide
theorem rows12421 : actualRows12421=WordField.canonicalRows actualModulus 12421 (.band 12418 12420) := by core033_kernel_decide
theorem stats12421 : actualRows12421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12421=5124 := by core033_kernel_decide
theorem rows12422 : actualRows12422=WordField.canonicalRows actualModulus 12422 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12422 : actualRows12422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12422=2964 := by core033_kernel_decide
theorem rows12423 : actualRows12423=WordField.canonicalRows actualModulus 12423 (.bxor 693 12422) := by core033_kernel_decide
theorem stats12423 : actualRows12423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12423=7428 := by core033_kernel_decide
theorem rows12424 : actualRows12424=WordField.canonicalRows actualModulus 12424 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12424 : actualRows12424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12424=2820 := by core033_kernel_decide
theorem rows12425 : actualRows12425=WordField.canonicalRows actualModulus 12425 (.bnot 12424) := by core033_kernel_decide
theorem stats12425 : actualRows12425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12425=6276 := by core033_kernel_decide
theorem rows12426 : actualRows12426=WordField.canonicalRows actualModulus 12426 (.bxor 12423 12425) := by core033_kernel_decide
theorem stats12426 : actualRows12426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12426=7428 := by core033_kernel_decide
theorem rows12427 : actualRows12427=WordField.canonicalRows actualModulus 12427 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12427 : actualRows12427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12427=2964 := by core033_kernel_decide
theorem rows12428 : actualRows12428=WordField.canonicalRows actualModulus 12428 (.bxor 693 12427) := by core033_kernel_decide
theorem stats12428 : actualRows12428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12428=7428 := by core033_kernel_decide
theorem rows12429 : actualRows12429=WordField.canonicalRows actualModulus 12429 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12429 : actualRows12429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12429=2820 := by core033_kernel_decide
theorem rows12430 : actualRows12430=WordField.canonicalRows actualModulus 12430 (.bnot 12429) := by core033_kernel_decide
theorem stats12430 : actualRows12430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12430=6276 := by core033_kernel_decide
theorem rows12431 : actualRows12431=WordField.canonicalRows actualModulus 12431 (.badd 12428 12430) := by core033_kernel_decide
theorem stats12431 : actualRows12431.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12431=5388 := by core033_kernel_decide
theorem rows12432 : actualRows12432=WordField.canonicalRows actualModulus 12432 (.bnot 12431) := by core033_kernel_decide
theorem stats12432 : actualRows12432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12432=6276 := by core033_kernel_decide
theorem rows12433 : actualRows12433=WordField.canonicalRows actualModulus 12433 (.band 12426 12432) := by core033_kernel_decide
theorem stats12433 : actualRows12433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12433=5124 := by core033_kernel_decide
theorem rows12434 : actualRows12434=WordField.canonicalRows actualModulus 12434 (.bxor 12421 12433) := by core033_kernel_decide
theorem stats12434 : actualRows12434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12434=7428 := by core033_kernel_decide
theorem rows12435 : actualRows12435=WordField.canonicalRows actualModulus 12435 (.shr 12434 31) := by core033_kernel_decide
theorem stats12435 : actualRows12435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12435=2892 := by core033_kernel_decide
theorem rows12436 : actualRows12436=WordField.canonicalRows actualModulus 12436 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12436 : actualRows12436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12436=2892 := by core033_kernel_decide
theorem rows12437 : actualRows12437=WordField.canonicalRows actualModulus 12437 (.bxor 12435 12436) := by core033_kernel_decide
theorem stats12437 : actualRows12437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12437=7428 := by core033_kernel_decide
theorem rows12438 : actualRows12438=WordField.canonicalRows actualModulus 12438 (.bnot 12437) := by core033_kernel_decide
theorem stats12438 : actualRows12438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12438=6276 := by core033_kernel_decide
theorem rows12439 : actualRows12439=WordField.canonicalRows actualModulus 12439 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12439 : actualRows12439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12439=2892 := by core033_kernel_decide
theorem rows12440 : actualRows12440=WordField.canonicalRows actualModulus 12440 (.badd 12438 12439) := by core033_kernel_decide
theorem stats12440 : actualRows12440.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12440=5388 := by core033_kernel_decide
theorem rows12441 : actualRows12441=WordField.canonicalRows actualModulus 12441 (.band 12440 10829) := by core033_kernel_decide
theorem stats12441 : actualRows12441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12441=5124 := by core033_kernel_decide
theorem rows12442 : actualRows12442=WordField.canonicalRows actualModulus 12442 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12442 : actualRows12442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12442=2964 := by core033_kernel_decide
theorem rows12443 : actualRows12443=WordField.canonicalRows actualModulus 12443 (.bxor 693 12442) := by core033_kernel_decide
theorem stats12443 : actualRows12443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12443=7428 := by core033_kernel_decide
theorem rows12444 : actualRows12444=WordField.canonicalRows actualModulus 12444 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12444 : actualRows12444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12444=2820 := by core033_kernel_decide
theorem rows12445 : actualRows12445=WordField.canonicalRows actualModulus 12445 (.bnot 12444) := by core033_kernel_decide
theorem stats12445 : actualRows12445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12445=6276 := by core033_kernel_decide
theorem rows12446 : actualRows12446=WordField.canonicalRows actualModulus 12446 (.band 12443 12445) := by core033_kernel_decide
theorem stats12446 : actualRows12446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12446=5124 := by core033_kernel_decide
theorem rows12447 : actualRows12447=WordField.canonicalRows actualModulus 12447 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12447 : actualRows12447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12447=2964 := by core033_kernel_decide
theorem rows12448 : actualRows12448=WordField.canonicalRows actualModulus 12448 (.bxor 693 12447) := by core033_kernel_decide
theorem stats12448 : actualRows12448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12448=7428 := by core033_kernel_decide
theorem rows12449 : actualRows12449=WordField.canonicalRows actualModulus 12449 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12449 : actualRows12449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12449=2820 := by core033_kernel_decide
theorem rows12450 : actualRows12450=WordField.canonicalRows actualModulus 12450 (.bnot 12449) := by core033_kernel_decide
theorem stats12450 : actualRows12450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12450=6276 := by core033_kernel_decide
theorem rows12451 : actualRows12451=WordField.canonicalRows actualModulus 12451 (.bxor 12448 12450) := by core033_kernel_decide
theorem stats12451 : actualRows12451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12451=7428 := by core033_kernel_decide
theorem rows12452 : actualRows12452=WordField.canonicalRows actualModulus 12452 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12452 : actualRows12452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12452=2964 := by core033_kernel_decide
theorem rows12453 : actualRows12453=WordField.canonicalRows actualModulus 12453 (.bxor 693 12452) := by core033_kernel_decide
theorem stats12453 : actualRows12453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12453=7428 := by core033_kernel_decide
theorem rows12454 : actualRows12454=WordField.canonicalRows actualModulus 12454 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12454 : actualRows12454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12454=2820 := by core033_kernel_decide
theorem rows12455 : actualRows12455=WordField.canonicalRows actualModulus 12455 (.bnot 12454) := by core033_kernel_decide
theorem stats12455 : actualRows12455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12455=6276 := by core033_kernel_decide
theorem rows12456 : actualRows12456=WordField.canonicalRows actualModulus 12456 (.badd 12453 12455) := by core033_kernel_decide
theorem stats12456 : actualRows12456.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12456=5388 := by core033_kernel_decide
theorem rows12457 : actualRows12457=WordField.canonicalRows actualModulus 12457 (.bnot 12456) := by core033_kernel_decide
theorem stats12457 : actualRows12457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12457=6276 := by core033_kernel_decide
theorem rows12458 : actualRows12458=WordField.canonicalRows actualModulus 12458 (.band 12451 12457) := by core033_kernel_decide
theorem stats12458 : actualRows12458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12458=5124 := by core033_kernel_decide
theorem rows12459 : actualRows12459=WordField.canonicalRows actualModulus 12459 (.bxor 12446 12458) := by core033_kernel_decide
theorem stats12459 : actualRows12459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12459=7428 := by core033_kernel_decide
theorem rows12460 : actualRows12460=WordField.canonicalRows actualModulus 12460 (.shr 12459 31) := by core033_kernel_decide
theorem stats12460 : actualRows12460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12460=2892 := by core033_kernel_decide
theorem rows12461 : actualRows12461=WordField.canonicalRows actualModulus 12461 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12461 : actualRows12461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12461=2892 := by core033_kernel_decide
theorem rows12462 : actualRows12462=WordField.canonicalRows actualModulus 12462 (.bxor 12460 12461) := by core033_kernel_decide
theorem stats12462 : actualRows12462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12462=7428 := by core033_kernel_decide
theorem rows12463 : actualRows12463=WordField.canonicalRows actualModulus 12463 (.bnot 12462) := by core033_kernel_decide
theorem stats12463 : actualRows12463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12463=6276 := by core033_kernel_decide
theorem rows12464 : actualRows12464=WordField.canonicalRows actualModulus 12464 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12464 : actualRows12464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12464=2892 := by core033_kernel_decide
theorem rows12465 : actualRows12465=WordField.canonicalRows actualModulus 12465 (.badd 12463 12464) := by core033_kernel_decide
theorem stats12465 : actualRows12465.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12465=5388 := by core033_kernel_decide
theorem rows12466 : actualRows12466=WordField.canonicalRows actualModulus 12466 (.bnot 12465) := by core033_kernel_decide
theorem stats12466 : actualRows12466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12466=6276 := by core033_kernel_decide
theorem rows12467 : actualRows12467=WordField.canonicalRows actualModulus 12467 (.band 12466 1508) := by core033_kernel_decide
theorem stats12467 : actualRows12467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12467=5124 := by core033_kernel_decide
theorem rows12468 : actualRows12468=WordField.canonicalRows actualModulus 12468 (.bxor 12441 12467) := by core033_kernel_decide
theorem stats12468 : actualRows12468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12468=7428 := by core033_kernel_decide
theorem rows12469 : actualRows12469=WordField.canonicalRows actualModulus 12469 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12469 : actualRows12469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12469=2964 := by core033_kernel_decide
def partRows192 : List R1CS.Row := actualRows12406++actualRows12407++actualRows12408++actualRows12409++actualRows12410++actualRows12411++actualRows12412++actualRows12413++actualRows12414++actualRows12415++actualRows12416++actualRows12417++actualRows12418++actualRows12419++actualRows12420++actualRows12421++actualRows12422++actualRows12423++actualRows12424++actualRows12425++actualRows12426++actualRows12427++actualRows12428++actualRows12429++actualRows12430++actualRows12431++actualRows12432++actualRows12433++actualRows12434++actualRows12435++actualRows12436++actualRows12437++actualRows12438++actualRows12439++actualRows12440++actualRows12441++actualRows12442++actualRows12443++actualRows12444++actualRows12445++actualRows12446++actualRows12447++actualRows12448++actualRows12449++actualRows12450++actualRows12451++actualRows12452++actualRows12453++actualRows12454++actualRows12455++actualRows12456++actualRows12457++actualRows12458++actualRows12459++actualRows12460++actualRows12461++actualRows12462++actualRows12463++actualRows12464++actualRows12465++actualRows12466++actualRows12467++actualRows12468++actualRows12469
def partOps192 : List WordIR.Op := [.band 12399 12405,.bxor 12394 12406,.shr 12407 31,.literal (BitVec.ofNat 32 1),.bxor 12408 12409,.bnot 12410,.literal (BitVec.ofNat 32 1),.badd 12411 12412,.bnot 12413,.band 12414 1497,.bxor 12389 12415,.literal (BitVec.ofNat 32 3),.bxor 693 12417,.literal (BitVec.ofNat 32 0),.bnot 12419,.band 12418 12420,.literal (BitVec.ofNat 32 3),.bxor 693 12422,.literal (BitVec.ofNat 32 0),.bnot 12424,.bxor 12423 12425,.literal (BitVec.ofNat 32 3),.bxor 693 12427,.literal (BitVec.ofNat 32 0),.bnot 12429,.badd 12428 12430,.bnot 12431,.band 12426 12432,.bxor 12421 12433,.shr 12434 31,.literal (BitVec.ofNat 32 1),.bxor 12435 12436,.bnot 12437,.literal (BitVec.ofNat 32 1),.badd 12438 12439,.band 12440 10829,.literal (BitVec.ofNat 32 3),.bxor 693 12442,.literal (BitVec.ofNat 32 0),.bnot 12444,.band 12443 12445,.literal (BitVec.ofNat 32 3),.bxor 693 12447,.literal (BitVec.ofNat 32 0),.bnot 12449,.bxor 12448 12450,.literal (BitVec.ofNat 32 3),.bxor 693 12452,.literal (BitVec.ofNat 32 0),.bnot 12454,.badd 12453 12455,.bnot 12456,.band 12451 12457,.bxor 12446 12458,.shr 12459 31,.literal (BitVec.ofNat 32 1),.bxor 12460 12461,.bnot 12462,.literal (BitVec.ofNat 32 1),.badd 12463 12464,.bnot 12465,.band 12466 1508,.bxor 12441 12467,.literal (BitVec.ofNat 32 3)]
theorem partExact192 : partRows192=WordField.rows actualModulus 12406 partOps192 := by
  simp only [partRows192,partOps192,WordField.rows,rows12406,rows12407,rows12408,rows12409,rows12410,rows12411,rows12412,rows12413,rows12414,rows12415,rows12416,rows12417,rows12418,rows12419,rows12420,rows12421,rows12422,rows12423,rows12424,rows12425,rows12426,rows12427,rows12428,rows12429,rows12430,rows12431,rows12432,rows12433,rows12434,rows12435,rows12436,rows12437,rows12438,rows12439,rows12440,rows12441,rows12442,rows12443,rows12444,rows12445,rows12446,rows12447,rows12448,rows12449,rows12450,rows12451,rows12452,rows12453,rows12454,rows12455,rows12456,rows12457,rows12458,rows12459,rows12460,rows12461,rows12462,rows12463,rows12464,rows12465,rows12466,rows12467,rows12468,rows12469,List.append_assoc,List.append_nil]
theorem partLength192 : partOps192.length=64 := by decide
theorem partStats192 : partRows192.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows192=332064 := by
  simp only [partRows192,List.length_append,MatrixRowBlocks.rows_weight_append,stats12406.1,stats12406.2,stats12407.1,stats12407.2,stats12408.1,stats12408.2,stats12409.1,stats12409.2,stats12410.1,stats12410.2,stats12411.1,stats12411.2,stats12412.1,stats12412.2,stats12413.1,stats12413.2,stats12414.1,stats12414.2,stats12415.1,stats12415.2,stats12416.1,stats12416.2,stats12417.1,stats12417.2,stats12418.1,stats12418.2,stats12419.1,stats12419.2,stats12420.1,stats12420.2,stats12421.1,stats12421.2,stats12422.1,stats12422.2,stats12423.1,stats12423.2,stats12424.1,stats12424.2,stats12425.1,stats12425.2,stats12426.1,stats12426.2,stats12427.1,stats12427.2,stats12428.1,stats12428.2,stats12429.1,stats12429.2,stats12430.1,stats12430.2,stats12431.1,stats12431.2,stats12432.1,stats12432.2,stats12433.1,stats12433.2,stats12434.1,stats12434.2,stats12435.1,stats12435.2,stats12436.1,stats12436.2,stats12437.1,stats12437.2,stats12438.1,stats12438.2,stats12439.1,stats12439.2,stats12440.1,stats12440.2,stats12441.1,stats12441.2,stats12442.1,stats12442.2,stats12443.1,stats12443.2,stats12444.1,stats12444.2,stats12445.1,stats12445.2,stats12446.1,stats12446.2,stats12447.1,stats12447.2,stats12448.1,stats12448.2,stats12449.1,stats12449.2,stats12450.1,stats12450.2,stats12451.1,stats12451.2,stats12452.1,stats12452.2,stats12453.1,stats12453.2,stats12454.1,stats12454.2,stats12455.1,stats12455.2,stats12456.1,stats12456.2,stats12457.1,stats12457.2,stats12458.1,stats12458.2,stats12459.1,stats12459.2,stats12460.1,stats12460.2,stats12461.1,stats12461.2,stats12462.1,stats12462.2,stats12463.1,stats12463.2,stats12464.1,stats12464.2,stats12465.1,stats12465.2,stats12466.1,stats12466.2,stats12467.1,stats12467.2,stats12468.1,stats12468.2,stats12469.1,stats12469.2]
  decide
end AuthenticatedBranchRoundCheckedRows
