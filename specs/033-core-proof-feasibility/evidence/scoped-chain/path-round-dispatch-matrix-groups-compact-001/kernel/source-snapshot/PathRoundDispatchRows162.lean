import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData162
import PathRoundDispatchInstructionMatrixData163
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10411 : actualRows10411=WordField.canonicalRows actualModulus 10411 (.band 10408 10410) := by core033_kernel_decide
theorem stats10411 : actualRows10411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10411=5124 := by core033_kernel_decide
theorem rows10412 : actualRows10412=WordField.canonicalRows actualModulus 10412 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10412 : actualRows10412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10412=2964 := by core033_kernel_decide
theorem rows10413 : actualRows10413=WordField.canonicalRows actualModulus 10413 (.bxor 0 10412) := by core033_kernel_decide
theorem stats10413 : actualRows10413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10413=7428 := by core033_kernel_decide
theorem rows10414 : actualRows10414=WordField.canonicalRows actualModulus 10414 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10414 : actualRows10414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10414=2820 := by core033_kernel_decide
theorem rows10415 : actualRows10415=WordField.canonicalRows actualModulus 10415 (.bnot 10414) := by core033_kernel_decide
theorem stats10415 : actualRows10415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10415=6276 := by core033_kernel_decide
theorem rows10416 : actualRows10416=WordField.canonicalRows actualModulus 10416 (.bxor 10413 10415) := by core033_kernel_decide
theorem stats10416 : actualRows10416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10416=7428 := by core033_kernel_decide
theorem rows10417 : actualRows10417=WordField.canonicalRows actualModulus 10417 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10417 : actualRows10417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10417=2964 := by core033_kernel_decide
theorem rows10418 : actualRows10418=WordField.canonicalRows actualModulus 10418 (.bxor 0 10417) := by core033_kernel_decide
theorem stats10418 : actualRows10418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10418=7428 := by core033_kernel_decide
theorem rows10419 : actualRows10419=WordField.canonicalRows actualModulus 10419 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10419 : actualRows10419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10419=2820 := by core033_kernel_decide
theorem rows10420 : actualRows10420=WordField.canonicalRows actualModulus 10420 (.bnot 10419) := by core033_kernel_decide
theorem stats10420 : actualRows10420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10420=6276 := by core033_kernel_decide
theorem rows10421 : actualRows10421=WordField.canonicalRows actualModulus 10421 (.badd 10418 10420) := by core033_kernel_decide
theorem stats10421 : actualRows10421.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10421=5388 := by core033_kernel_decide
theorem rows10422 : actualRows10422=WordField.canonicalRows actualModulus 10422 (.bnot 10421) := by core033_kernel_decide
theorem stats10422 : actualRows10422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10422=6276 := by core033_kernel_decide
theorem rows10423 : actualRows10423=WordField.canonicalRows actualModulus 10423 (.band 10416 10422) := by core033_kernel_decide
theorem stats10423 : actualRows10423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10423=5124 := by core033_kernel_decide
theorem rows10424 : actualRows10424=WordField.canonicalRows actualModulus 10424 (.bxor 10411 10423) := by core033_kernel_decide
theorem stats10424 : actualRows10424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10424=7428 := by core033_kernel_decide
theorem rows10425 : actualRows10425=WordField.canonicalRows actualModulus 10425 (.shr 10424 31) := by core033_kernel_decide
theorem stats10425 : actualRows10425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10425=2892 := by core033_kernel_decide
theorem rows10426 : actualRows10426=WordField.canonicalRows actualModulus 10426 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10426 : actualRows10426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10426=2892 := by core033_kernel_decide
theorem rows10427 : actualRows10427=WordField.canonicalRows actualModulus 10427 (.bxor 10425 10426) := by core033_kernel_decide
theorem stats10427 : actualRows10427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10427=7428 := by core033_kernel_decide
theorem rows10428 : actualRows10428=WordField.canonicalRows actualModulus 10428 (.bnot 10427) := by core033_kernel_decide
theorem stats10428 : actualRows10428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10428=6276 := by core033_kernel_decide
theorem rows10429 : actualRows10429=WordField.canonicalRows actualModulus 10429 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10429 : actualRows10429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10429=2892 := by core033_kernel_decide
theorem rows10430 : actualRows10430=WordField.canonicalRows actualModulus 10430 (.badd 10428 10429) := by core033_kernel_decide
theorem stats10430 : actualRows10430.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10430=5388 := by core033_kernel_decide
theorem rows10431 : actualRows10431=WordField.canonicalRows actualModulus 10431 (.bnot 10430) := by core033_kernel_decide
theorem stats10431 : actualRows10431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10431=6276 := by core033_kernel_decide
theorem rows10432 : actualRows10432=WordField.canonicalRows actualModulus 10432 (.band 10431 129) := by core033_kernel_decide
theorem stats10432 : actualRows10432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10432=5124 := by core033_kernel_decide
theorem rows10433 : actualRows10433=WordField.canonicalRows actualModulus 10433 (.bxor 10406 10432) := by core033_kernel_decide
theorem stats10433 : actualRows10433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10433=7428 := by core033_kernel_decide
theorem rows10434 : actualRows10434=WordField.canonicalRows actualModulus 10434 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10434 : actualRows10434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10434=2964 := by core033_kernel_decide
theorem rows10435 : actualRows10435=WordField.canonicalRows actualModulus 10435 (.bxor 0 10434) := by core033_kernel_decide
theorem stats10435 : actualRows10435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10435=7428 := by core033_kernel_decide
theorem rows10436 : actualRows10436=WordField.canonicalRows actualModulus 10436 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10436 : actualRows10436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10436=2820 := by core033_kernel_decide
theorem rows10437 : actualRows10437=WordField.canonicalRows actualModulus 10437 (.bnot 10436) := by core033_kernel_decide
theorem stats10437 : actualRows10437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10437=6276 := by core033_kernel_decide
theorem rows10438 : actualRows10438=WordField.canonicalRows actualModulus 10438 (.band 10435 10437) := by core033_kernel_decide
theorem stats10438 : actualRows10438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10438=5124 := by core033_kernel_decide
theorem rows10439 : actualRows10439=WordField.canonicalRows actualModulus 10439 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10439 : actualRows10439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10439=2964 := by core033_kernel_decide
theorem rows10440 : actualRows10440=WordField.canonicalRows actualModulus 10440 (.bxor 0 10439) := by core033_kernel_decide
theorem stats10440 : actualRows10440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10440=7428 := by core033_kernel_decide
theorem rows10441 : actualRows10441=WordField.canonicalRows actualModulus 10441 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10441 : actualRows10441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10441=2820 := by core033_kernel_decide
theorem rows10442 : actualRows10442=WordField.canonicalRows actualModulus 10442 (.bnot 10441) := by core033_kernel_decide
theorem stats10442 : actualRows10442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10442=6276 := by core033_kernel_decide
theorem rows10443 : actualRows10443=WordField.canonicalRows actualModulus 10443 (.bxor 10440 10442) := by core033_kernel_decide
theorem stats10443 : actualRows10443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10443=7428 := by core033_kernel_decide
theorem rows10444 : actualRows10444=WordField.canonicalRows actualModulus 10444 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10444 : actualRows10444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10444=2964 := by core033_kernel_decide
theorem rows10445 : actualRows10445=WordField.canonicalRows actualModulus 10445 (.bxor 0 10444) := by core033_kernel_decide
theorem stats10445 : actualRows10445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10445=7428 := by core033_kernel_decide
theorem rows10446 : actualRows10446=WordField.canonicalRows actualModulus 10446 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10446 : actualRows10446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10446=2820 := by core033_kernel_decide
theorem rows10447 : actualRows10447=WordField.canonicalRows actualModulus 10447 (.bnot 10446) := by core033_kernel_decide
theorem stats10447 : actualRows10447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10447=6276 := by core033_kernel_decide
theorem rows10448 : actualRows10448=WordField.canonicalRows actualModulus 10448 (.badd 10445 10447) := by core033_kernel_decide
theorem stats10448 : actualRows10448.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10448=5388 := by core033_kernel_decide
theorem rows10449 : actualRows10449=WordField.canonicalRows actualModulus 10449 (.bnot 10448) := by core033_kernel_decide
theorem stats10449 : actualRows10449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10449=6276 := by core033_kernel_decide
theorem rows10450 : actualRows10450=WordField.canonicalRows actualModulus 10450 (.band 10443 10449) := by core033_kernel_decide
theorem stats10450 : actualRows10450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10450=5124 := by core033_kernel_decide
theorem rows10451 : actualRows10451=WordField.canonicalRows actualModulus 10451 (.bxor 10438 10450) := by core033_kernel_decide
theorem stats10451 : actualRows10451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10451=7428 := by core033_kernel_decide
theorem rows10452 : actualRows10452=WordField.canonicalRows actualModulus 10452 (.shr 10451 31) := by core033_kernel_decide
theorem stats10452 : actualRows10452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10452=2892 := by core033_kernel_decide
theorem rows10453 : actualRows10453=WordField.canonicalRows actualModulus 10453 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10453 : actualRows10453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10453=2892 := by core033_kernel_decide
theorem rows10454 : actualRows10454=WordField.canonicalRows actualModulus 10454 (.bxor 10452 10453) := by core033_kernel_decide
theorem stats10454 : actualRows10454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10454=7428 := by core033_kernel_decide
theorem rows10455 : actualRows10455=WordField.canonicalRows actualModulus 10455 (.bnot 10454) := by core033_kernel_decide
theorem stats10455 : actualRows10455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10455=6276 := by core033_kernel_decide
theorem rows10456 : actualRows10456=WordField.canonicalRows actualModulus 10456 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10456 : actualRows10456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10456=2892 := by core033_kernel_decide
theorem rows10457 : actualRows10457=WordField.canonicalRows actualModulus 10457 (.badd 10455 10456) := by core033_kernel_decide
theorem stats10457 : actualRows10457.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10457=5388 := by core033_kernel_decide
theorem rows10458 : actualRows10458=WordField.canonicalRows actualModulus 10458 (.band 10457 9461) := by core033_kernel_decide
theorem stats10458 : actualRows10458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10458=5124 := by core033_kernel_decide
theorem rows10459 : actualRows10459=WordField.canonicalRows actualModulus 10459 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10459 : actualRows10459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10459=2964 := by core033_kernel_decide
theorem rows10460 : actualRows10460=WordField.canonicalRows actualModulus 10460 (.bxor 0 10459) := by core033_kernel_decide
theorem stats10460 : actualRows10460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10460=7428 := by core033_kernel_decide
theorem rows10461 : actualRows10461=WordField.canonicalRows actualModulus 10461 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10461 : actualRows10461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10461=2820 := by core033_kernel_decide
theorem rows10462 : actualRows10462=WordField.canonicalRows actualModulus 10462 (.bnot 10461) := by core033_kernel_decide
theorem stats10462 : actualRows10462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10462=6276 := by core033_kernel_decide
theorem rows10463 : actualRows10463=WordField.canonicalRows actualModulus 10463 (.band 10460 10462) := by core033_kernel_decide
theorem stats10463 : actualRows10463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10463=5124 := by core033_kernel_decide
theorem rows10464 : actualRows10464=WordField.canonicalRows actualModulus 10464 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10464 : actualRows10464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10464=2964 := by core033_kernel_decide
theorem rows10465 : actualRows10465=WordField.canonicalRows actualModulus 10465 (.bxor 0 10464) := by core033_kernel_decide
theorem stats10465 : actualRows10465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10465=7428 := by core033_kernel_decide
theorem rows10466 : actualRows10466=WordField.canonicalRows actualModulus 10466 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10466 : actualRows10466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10466=2820 := by core033_kernel_decide
theorem rows10467 : actualRows10467=WordField.canonicalRows actualModulus 10467 (.bnot 10466) := by core033_kernel_decide
theorem stats10467 : actualRows10467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10467=6276 := by core033_kernel_decide
theorem rows10468 : actualRows10468=WordField.canonicalRows actualModulus 10468 (.bxor 10465 10467) := by core033_kernel_decide
theorem stats10468 : actualRows10468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10468=7428 := by core033_kernel_decide
theorem rows10469 : actualRows10469=WordField.canonicalRows actualModulus 10469 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10469 : actualRows10469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10469=2964 := by core033_kernel_decide
theorem rows10470 : actualRows10470=WordField.canonicalRows actualModulus 10470 (.bxor 0 10469) := by core033_kernel_decide
theorem stats10470 : actualRows10470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10470=7428 := by core033_kernel_decide
theorem rows10471 : actualRows10471=WordField.canonicalRows actualModulus 10471 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10471 : actualRows10471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10471=2820 := by core033_kernel_decide
theorem rows10472 : actualRows10472=WordField.canonicalRows actualModulus 10472 (.bnot 10471) := by core033_kernel_decide
theorem stats10472 : actualRows10472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10472=6276 := by core033_kernel_decide
theorem rows10473 : actualRows10473=WordField.canonicalRows actualModulus 10473 (.badd 10470 10472) := by core033_kernel_decide
theorem stats10473 : actualRows10473.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10473=5388 := by core033_kernel_decide
theorem rows10474 : actualRows10474=WordField.canonicalRows actualModulus 10474 (.bnot 10473) := by core033_kernel_decide
theorem stats10474 : actualRows10474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10474=6276 := by core033_kernel_decide
def partRows162 : List R1CS.Row := actualRows10411++actualRows10412++actualRows10413++actualRows10414++actualRows10415++actualRows10416++actualRows10417++actualRows10418++actualRows10419++actualRows10420++actualRows10421++actualRows10422++actualRows10423++actualRows10424++actualRows10425++actualRows10426++actualRows10427++actualRows10428++actualRows10429++actualRows10430++actualRows10431++actualRows10432++actualRows10433++actualRows10434++actualRows10435++actualRows10436++actualRows10437++actualRows10438++actualRows10439++actualRows10440++actualRows10441++actualRows10442++actualRows10443++actualRows10444++actualRows10445++actualRows10446++actualRows10447++actualRows10448++actualRows10449++actualRows10450++actualRows10451++actualRows10452++actualRows10453++actualRows10454++actualRows10455++actualRows10456++actualRows10457++actualRows10458++actualRows10459++actualRows10460++actualRows10461++actualRows10462++actualRows10463++actualRows10464++actualRows10465++actualRows10466++actualRows10467++actualRows10468++actualRows10469++actualRows10470++actualRows10471++actualRows10472++actualRows10473++actualRows10474
def partOps162 : List WordIR.Op := [.band 10408 10410,.literal (BitVec.ofNat 32 3),.bxor 0 10412,.literal (BitVec.ofNat 32 0),.bnot 10414,.bxor 10413 10415,.literal (BitVec.ofNat 32 3),.bxor 0 10417,.literal (BitVec.ofNat 32 0),.bnot 10419,.badd 10418 10420,.bnot 10421,.band 10416 10422,.bxor 10411 10423,.shr 10424 31,.literal (BitVec.ofNat 32 1),.bxor 10425 10426,.bnot 10427,.literal (BitVec.ofNat 32 1),.badd 10428 10429,.bnot 10430,.band 10431 129,.bxor 10406 10432,.literal (BitVec.ofNat 32 3),.bxor 0 10434,.literal (BitVec.ofNat 32 0),.bnot 10436,.band 10435 10437,.literal (BitVec.ofNat 32 3),.bxor 0 10439,.literal (BitVec.ofNat 32 0),.bnot 10441,.bxor 10440 10442,.literal (BitVec.ofNat 32 3),.bxor 0 10444,.literal (BitVec.ofNat 32 0),.bnot 10446,.badd 10445 10447,.bnot 10448,.band 10443 10449,.bxor 10438 10450,.shr 10451 31,.literal (BitVec.ofNat 32 1),.bxor 10452 10453,.bnot 10454,.literal (BitVec.ofNat 32 1),.badd 10455 10456,.band 10457 9461,.literal (BitVec.ofNat 32 3),.bxor 0 10459,.literal (BitVec.ofNat 32 0),.bnot 10461,.band 10460 10462,.literal (BitVec.ofNat 32 3),.bxor 0 10464,.literal (BitVec.ofNat 32 0),.bnot 10466,.bxor 10465 10467,.literal (BitVec.ofNat 32 3),.bxor 0 10469,.literal (BitVec.ofNat 32 0),.bnot 10471,.badd 10470 10472,.bnot 10473]
theorem partExact162 : partRows162=WordField.rows actualModulus 10411 partOps162 := by
  simp only [partRows162,partOps162,WordField.rows,rows10411,rows10412,rows10413,rows10414,rows10415,rows10416,rows10417,rows10418,rows10419,rows10420,rows10421,rows10422,rows10423,rows10424,rows10425,rows10426,rows10427,rows10428,rows10429,rows10430,rows10431,rows10432,rows10433,rows10434,rows10435,rows10436,rows10437,rows10438,rows10439,rows10440,rows10441,rows10442,rows10443,rows10444,rows10445,rows10446,rows10447,rows10448,rows10449,rows10450,rows10451,rows10452,rows10453,rows10454,rows10455,rows10456,rows10457,rows10458,rows10459,rows10460,rows10461,rows10462,rows10463,rows10464,rows10465,rows10466,rows10467,rows10468,rows10469,rows10470,rows10471,rows10472,rows10473,rows10474,List.append_assoc,List.append_nil]
theorem partLength162 : partOps162.length=64 := by decide
theorem partStats162 : partRows162.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows162=333144 := by
  simp only [partRows162,List.length_append,MatrixRowBlocks.rows_weight_append,stats10411.1,stats10411.2,stats10412.1,stats10412.2,stats10413.1,stats10413.2,stats10414.1,stats10414.2,stats10415.1,stats10415.2,stats10416.1,stats10416.2,stats10417.1,stats10417.2,stats10418.1,stats10418.2,stats10419.1,stats10419.2,stats10420.1,stats10420.2,stats10421.1,stats10421.2,stats10422.1,stats10422.2,stats10423.1,stats10423.2,stats10424.1,stats10424.2,stats10425.1,stats10425.2,stats10426.1,stats10426.2,stats10427.1,stats10427.2,stats10428.1,stats10428.2,stats10429.1,stats10429.2,stats10430.1,stats10430.2,stats10431.1,stats10431.2,stats10432.1,stats10432.2,stats10433.1,stats10433.2,stats10434.1,stats10434.2,stats10435.1,stats10435.2,stats10436.1,stats10436.2,stats10437.1,stats10437.2,stats10438.1,stats10438.2,stats10439.1,stats10439.2,stats10440.1,stats10440.2,stats10441.1,stats10441.2,stats10442.1,stats10442.2,stats10443.1,stats10443.2,stats10444.1,stats10444.2,stats10445.1,stats10445.2,stats10446.1,stats10446.2,stats10447.1,stats10447.2,stats10448.1,stats10448.2,stats10449.1,stats10449.2,stats10450.1,stats10450.2,stats10451.1,stats10451.2,stats10452.1,stats10452.2,stats10453.1,stats10453.2,stats10454.1,stats10454.2,stats10455.1,stats10455.2,stats10456.1,stats10456.2,stats10457.1,stats10457.2,stats10458.1,stats10458.2,stats10459.1,stats10459.2,stats10460.1,stats10460.2,stats10461.1,stats10461.2,stats10462.1,stats10462.2,stats10463.1,stats10463.2,stats10464.1,stats10464.2,stats10465.1,stats10465.2,stats10466.1,stats10466.2,stats10467.1,stats10467.2,stats10468.1,stats10468.2,stats10469.1,stats10469.2,stats10470.1,stats10470.2,stats10471.1,stats10471.2,stats10472.1,stats10472.2,stats10473.1,stats10473.2,stats10474.1,stats10474.2]
  decide
end PathRoundDispatchCheckedRows
