import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData162
import PairedPathRoundInstructionMatrixData163
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10400 : actualRows10400=WordField.canonicalRows actualModulus 10400 (.rotr 10322 24) := by core033_kernel_decide
theorem stats10400 : actualRows10400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10400=5124 := by core033_kernel_decide
theorem rows10401 : actualRows10401=WordField.canonicalRows actualModulus 10401 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats10401 : actualRows10401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10401=3972 := by core033_kernel_decide
theorem rows10402 : actualRows10402=WordField.canonicalRows actualModulus 10402 (.band 10400 10401) := by core033_kernel_decide
theorem stats10402 : actualRows10402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10402=5124 := by core033_kernel_decide
theorem rows10403 : actualRows10403=WordField.canonicalRows actualModulus 10403 (.rotr 10322 8) := by core033_kernel_decide
theorem stats10403 : actualRows10403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10403=5124 := by core033_kernel_decide
theorem rows10404 : actualRows10404=WordField.canonicalRows actualModulus 10404 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats10404 : actualRows10404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10404=3972 := by core033_kernel_decide
theorem rows10405 : actualRows10405=WordField.canonicalRows actualModulus 10405 (.band 10403 10404) := by core033_kernel_decide
theorem stats10405 : actualRows10405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10405=5124 := by core033_kernel_decide
theorem rows10406 : actualRows10406=WordField.canonicalRows actualModulus 10406 (.bxor 10402 10405) := by core033_kernel_decide
theorem stats10406 : actualRows10406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10406=7428 := by core033_kernel_decide
theorem rows10407 : actualRows10407=WordField.canonicalRows actualModulus 10407 (.rotr 10333 24) := by core033_kernel_decide
theorem stats10407 : actualRows10407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10407=5124 := by core033_kernel_decide
theorem rows10408 : actualRows10408=WordField.canonicalRows actualModulus 10408 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats10408 : actualRows10408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10408=3972 := by core033_kernel_decide
theorem rows10409 : actualRows10409=WordField.canonicalRows actualModulus 10409 (.band 10407 10408) := by core033_kernel_decide
theorem stats10409 : actualRows10409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10409=5124 := by core033_kernel_decide
theorem rows10410 : actualRows10410=WordField.canonicalRows actualModulus 10410 (.rotr 10333 8) := by core033_kernel_decide
theorem stats10410 : actualRows10410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10410=5124 := by core033_kernel_decide
theorem rows10411 : actualRows10411=WordField.canonicalRows actualModulus 10411 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats10411 : actualRows10411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10411=3972 := by core033_kernel_decide
theorem rows10412 : actualRows10412=WordField.canonicalRows actualModulus 10412 (.band 10410 10411) := by core033_kernel_decide
theorem stats10412 : actualRows10412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10412=5124 := by core033_kernel_decide
theorem rows10413 : actualRows10413=WordField.canonicalRows actualModulus 10413 (.bxor 10409 10412) := by core033_kernel_decide
theorem stats10413 : actualRows10413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10413=7428 := by core033_kernel_decide
theorem rows10414 : actualRows10414=WordField.canonicalRows actualModulus 10414 (.rotr 10344 24) := by core033_kernel_decide
theorem stats10414 : actualRows10414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10414=5124 := by core033_kernel_decide
theorem rows10415 : actualRows10415=WordField.canonicalRows actualModulus 10415 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats10415 : actualRows10415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10415=3972 := by core033_kernel_decide
theorem rows10416 : actualRows10416=WordField.canonicalRows actualModulus 10416 (.band 10414 10415) := by core033_kernel_decide
theorem stats10416 : actualRows10416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10416=5124 := by core033_kernel_decide
theorem rows10417 : actualRows10417=WordField.canonicalRows actualModulus 10417 (.rotr 10344 8) := by core033_kernel_decide
theorem stats10417 : actualRows10417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10417=5124 := by core033_kernel_decide
theorem rows10418 : actualRows10418=WordField.canonicalRows actualModulus 10418 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats10418 : actualRows10418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10418=3972 := by core033_kernel_decide
theorem rows10419 : actualRows10419=WordField.canonicalRows actualModulus 10419 (.band 10417 10418) := by core033_kernel_decide
theorem stats10419 : actualRows10419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10419=5124 := by core033_kernel_decide
theorem rows10420 : actualRows10420=WordField.canonicalRows actualModulus 10420 (.bxor 10416 10419) := by core033_kernel_decide
theorem stats10420 : actualRows10420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10420=7428 := by core033_kernel_decide
theorem rows10421 : actualRows10421=WordField.canonicalRows actualModulus 10421 (.rotr 10355 24) := by core033_kernel_decide
theorem stats10421 : actualRows10421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10421=5124 := by core033_kernel_decide
theorem rows10422 : actualRows10422=WordField.canonicalRows actualModulus 10422 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats10422 : actualRows10422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10422=3972 := by core033_kernel_decide
theorem rows10423 : actualRows10423=WordField.canonicalRows actualModulus 10423 (.band 10421 10422) := by core033_kernel_decide
theorem stats10423 : actualRows10423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10423=5124 := by core033_kernel_decide
theorem rows10424 : actualRows10424=WordField.canonicalRows actualModulus 10424 (.rotr 10355 8) := by core033_kernel_decide
theorem stats10424 : actualRows10424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10424=5124 := by core033_kernel_decide
theorem rows10425 : actualRows10425=WordField.canonicalRows actualModulus 10425 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats10425 : actualRows10425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10425=3972 := by core033_kernel_decide
theorem rows10426 : actualRows10426=WordField.canonicalRows actualModulus 10426 (.band 10424 10425) := by core033_kernel_decide
theorem stats10426 : actualRows10426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10426=5124 := by core033_kernel_decide
theorem rows10427 : actualRows10427=WordField.canonicalRows actualModulus 10427 (.bxor 10423 10426) := by core033_kernel_decide
theorem stats10427 : actualRows10427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10427=7428 := by core033_kernel_decide
theorem rows10428 : actualRows10428=WordField.canonicalRows actualModulus 10428 (.rotr 10366 24) := by core033_kernel_decide
theorem stats10428 : actualRows10428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10428=5124 := by core033_kernel_decide
theorem rows10429 : actualRows10429=WordField.canonicalRows actualModulus 10429 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats10429 : actualRows10429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10429=3972 := by core033_kernel_decide
theorem rows10430 : actualRows10430=WordField.canonicalRows actualModulus 10430 (.band 10428 10429) := by core033_kernel_decide
theorem stats10430 : actualRows10430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10430=5124 := by core033_kernel_decide
theorem rows10431 : actualRows10431=WordField.canonicalRows actualModulus 10431 (.rotr 10366 8) := by core033_kernel_decide
theorem stats10431 : actualRows10431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10431=5124 := by core033_kernel_decide
theorem rows10432 : actualRows10432=WordField.canonicalRows actualModulus 10432 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats10432 : actualRows10432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10432=3972 := by core033_kernel_decide
theorem rows10433 : actualRows10433=WordField.canonicalRows actualModulus 10433 (.band 10431 10432) := by core033_kernel_decide
theorem stats10433 : actualRows10433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10433=5124 := by core033_kernel_decide
theorem rows10434 : actualRows10434=WordField.canonicalRows actualModulus 10434 (.bxor 10430 10433) := by core033_kernel_decide
theorem stats10434 : actualRows10434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10434=7428 := by core033_kernel_decide
theorem rows10435 : actualRows10435=WordField.canonicalRows actualModulus 10435 (.rotr 10377 24) := by core033_kernel_decide
theorem stats10435 : actualRows10435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10435=5124 := by core033_kernel_decide
theorem rows10436 : actualRows10436=WordField.canonicalRows actualModulus 10436 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats10436 : actualRows10436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10436=3972 := by core033_kernel_decide
theorem rows10437 : actualRows10437=WordField.canonicalRows actualModulus 10437 (.band 10435 10436) := by core033_kernel_decide
theorem stats10437 : actualRows10437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10437=5124 := by core033_kernel_decide
theorem rows10438 : actualRows10438=WordField.canonicalRows actualModulus 10438 (.rotr 10377 8) := by core033_kernel_decide
theorem stats10438 : actualRows10438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10438=5124 := by core033_kernel_decide
theorem rows10439 : actualRows10439=WordField.canonicalRows actualModulus 10439 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats10439 : actualRows10439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10439=3972 := by core033_kernel_decide
theorem rows10440 : actualRows10440=WordField.canonicalRows actualModulus 10440 (.band 10438 10439) := by core033_kernel_decide
theorem stats10440 : actualRows10440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10440=5124 := by core033_kernel_decide
theorem rows10441 : actualRows10441=WordField.canonicalRows actualModulus 10441 (.bxor 10437 10440) := by core033_kernel_decide
theorem stats10441 : actualRows10441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10441=7428 := by core033_kernel_decide
theorem rows10442 : actualRows10442=WordField.canonicalRows actualModulus 10442 (.rotr 10388 24) := by core033_kernel_decide
theorem stats10442 : actualRows10442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10442=5124 := by core033_kernel_decide
theorem rows10443 : actualRows10443=WordField.canonicalRows actualModulus 10443 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats10443 : actualRows10443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10443=3972 := by core033_kernel_decide
theorem rows10444 : actualRows10444=WordField.canonicalRows actualModulus 10444 (.band 10442 10443) := by core033_kernel_decide
theorem stats10444 : actualRows10444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10444=5124 := by core033_kernel_decide
theorem rows10445 : actualRows10445=WordField.canonicalRows actualModulus 10445 (.rotr 10388 8) := by core033_kernel_decide
theorem stats10445 : actualRows10445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10445=5124 := by core033_kernel_decide
theorem rows10446 : actualRows10446=WordField.canonicalRows actualModulus 10446 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats10446 : actualRows10446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10446=3972 := by core033_kernel_decide
theorem rows10447 : actualRows10447=WordField.canonicalRows actualModulus 10447 (.band 10445 10446) := by core033_kernel_decide
theorem stats10447 : actualRows10447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10447=5124 := by core033_kernel_decide
theorem rows10448 : actualRows10448=WordField.canonicalRows actualModulus 10448 (.bxor 10444 10447) := by core033_kernel_decide
theorem stats10448 : actualRows10448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10448=7428 := by core033_kernel_decide
theorem rows10449 : actualRows10449=WordField.canonicalRows actualModulus 10449 (.rotr 10399 24) := by core033_kernel_decide
theorem stats10449 : actualRows10449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10449=5124 := by core033_kernel_decide
theorem rows10450 : actualRows10450=WordField.canonicalRows actualModulus 10450 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats10450 : actualRows10450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10450=3972 := by core033_kernel_decide
theorem rows10451 : actualRows10451=WordField.canonicalRows actualModulus 10451 (.band 10449 10450) := by core033_kernel_decide
theorem stats10451 : actualRows10451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10451=5124 := by core033_kernel_decide
theorem rows10452 : actualRows10452=WordField.canonicalRows actualModulus 10452 (.rotr 10399 8) := by core033_kernel_decide
theorem stats10452 : actualRows10452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10452=5124 := by core033_kernel_decide
theorem rows10453 : actualRows10453=WordField.canonicalRows actualModulus 10453 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats10453 : actualRows10453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10453=3972 := by core033_kernel_decide
theorem rows10454 : actualRows10454=WordField.canonicalRows actualModulus 10454 (.band 10452 10453) := by core033_kernel_decide
theorem stats10454 : actualRows10454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10454=5124 := by core033_kernel_decide
theorem rows10455 : actualRows10455=WordField.canonicalRows actualModulus 10455 (.bxor 10451 10454) := by core033_kernel_decide
theorem stats10455 : actualRows10455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10455=7428 := by core033_kernel_decide
theorem rows10456 : actualRows10456=WordField.canonicalRows actualModulus 10456 (.badd 10234 10256) := by core033_kernel_decide
theorem stats10456 : actualRows10456.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10456=5388 := by core033_kernel_decide
theorem rows10457 : actualRows10457=WordField.canonicalRows actualModulus 10457 (.badd 10245 10267) := by core033_kernel_decide
theorem stats10457 : actualRows10457.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10457=5388 := by core033_kernel_decide
theorem rows10458 : actualRows10458=WordField.canonicalRows actualModulus 10458 (.band 10234 10256) := by core033_kernel_decide
theorem stats10458 : actualRows10458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10458=5124 := by core033_kernel_decide
theorem rows10459 : actualRows10459=WordField.canonicalRows actualModulus 10459 (.bxor 10234 10256) := by core033_kernel_decide
theorem stats10459 : actualRows10459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10459=7428 := by core033_kernel_decide
theorem rows10460 : actualRows10460=WordField.canonicalRows actualModulus 10460 (.badd 10234 10256) := by core033_kernel_decide
theorem stats10460 : actualRows10460.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10460=5388 := by core033_kernel_decide
theorem rows10461 : actualRows10461=WordField.canonicalRows actualModulus 10461 (.bnot 10460) := by core033_kernel_decide
theorem stats10461 : actualRows10461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10461=6276 := by core033_kernel_decide
theorem rows10462 : actualRows10462=WordField.canonicalRows actualModulus 10462 (.band 10459 10461) := by core033_kernel_decide
theorem stats10462 : actualRows10462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10462=5124 := by core033_kernel_decide
theorem rows10463 : actualRows10463=WordField.canonicalRows actualModulus 10463 (.bxor 10458 10462) := by core033_kernel_decide
theorem stats10463 : actualRows10463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10463=7428 := by core033_kernel_decide
def partRows161 : List R1CS.Row := actualRows10400++actualRows10401++actualRows10402++actualRows10403++actualRows10404++actualRows10405++actualRows10406++actualRows10407++actualRows10408++actualRows10409++actualRows10410++actualRows10411++actualRows10412++actualRows10413++actualRows10414++actualRows10415++actualRows10416++actualRows10417++actualRows10418++actualRows10419++actualRows10420++actualRows10421++actualRows10422++actualRows10423++actualRows10424++actualRows10425++actualRows10426++actualRows10427++actualRows10428++actualRows10429++actualRows10430++actualRows10431++actualRows10432++actualRows10433++actualRows10434++actualRows10435++actualRows10436++actualRows10437++actualRows10438++actualRows10439++actualRows10440++actualRows10441++actualRows10442++actualRows10443++actualRows10444++actualRows10445++actualRows10446++actualRows10447++actualRows10448++actualRows10449++actualRows10450++actualRows10451++actualRows10452++actualRows10453++actualRows10454++actualRows10455++actualRows10456++actualRows10457++actualRows10458++actualRows10459++actualRows10460++actualRows10461++actualRows10462++actualRows10463
def partOps161 : List WordIR.Op := [.rotr 10322 24,.literal (BitVec.ofNat 32 16711935),.band 10400 10401,.rotr 10322 8,.literal (BitVec.ofNat 32 4278255360),.band 10403 10404,.bxor 10402 10405,.rotr 10333 24,.literal (BitVec.ofNat 32 16711935),.band 10407 10408,.rotr 10333 8,.literal (BitVec.ofNat 32 4278255360),.band 10410 10411,.bxor 10409 10412,.rotr 10344 24,.literal (BitVec.ofNat 32 16711935),.band 10414 10415,.rotr 10344 8,.literal (BitVec.ofNat 32 4278255360),.band 10417 10418,.bxor 10416 10419,.rotr 10355 24,.literal (BitVec.ofNat 32 16711935),.band 10421 10422,.rotr 10355 8,.literal (BitVec.ofNat 32 4278255360),.band 10424 10425,.bxor 10423 10426,.rotr 10366 24,.literal (BitVec.ofNat 32 16711935),.band 10428 10429,.rotr 10366 8,.literal (BitVec.ofNat 32 4278255360),.band 10431 10432,.bxor 10430 10433,.rotr 10377 24,.literal (BitVec.ofNat 32 16711935),.band 10435 10436,.rotr 10377 8,.literal (BitVec.ofNat 32 4278255360),.band 10438 10439,.bxor 10437 10440,.rotr 10388 24,.literal (BitVec.ofNat 32 16711935),.band 10442 10443,.rotr 10388 8,.literal (BitVec.ofNat 32 4278255360),.band 10445 10446,.bxor 10444 10447,.rotr 10399 24,.literal (BitVec.ofNat 32 16711935),.band 10449 10450,.rotr 10399 8,.literal (BitVec.ofNat 32 4278255360),.band 10452 10453,.bxor 10451 10454,.badd 10234 10256,.badd 10245 10267,.band 10234 10256,.bxor 10234 10256,.badd 10234 10256,.bnot 10460,.band 10459 10461,.bxor 10458 10462]
theorem partExact161 : partRows161=WordField.rows actualModulus 10400 partOps161 := by
  simp only [partRows161,partOps161,WordField.rows,rows10400,rows10401,rows10402,rows10403,rows10404,rows10405,rows10406,rows10407,rows10408,rows10409,rows10410,rows10411,rows10412,rows10413,rows10414,rows10415,rows10416,rows10417,rows10418,rows10419,rows10420,rows10421,rows10422,rows10423,rows10424,rows10425,rows10426,rows10427,rows10428,rows10429,rows10430,rows10431,rows10432,rows10433,rows10434,rows10435,rows10436,rows10437,rows10438,rows10439,rows10440,rows10441,rows10442,rows10443,rows10444,rows10445,rows10446,rows10447,rows10448,rows10449,rows10450,rows10451,rows10452,rows10453,rows10454,rows10455,rows10456,rows10457,rows10458,rows10459,rows10460,rows10461,rows10462,rows10463,List.append_assoc,List.append_nil]
theorem partLength161 : partOps161.length=64 := by decide
theorem partStats161 : partRows161.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows161=334488 := by
  simp only [partRows161,List.length_append,MatrixRowBlocks.rows_weight_append,stats10400.1,stats10400.2,stats10401.1,stats10401.2,stats10402.1,stats10402.2,stats10403.1,stats10403.2,stats10404.1,stats10404.2,stats10405.1,stats10405.2,stats10406.1,stats10406.2,stats10407.1,stats10407.2,stats10408.1,stats10408.2,stats10409.1,stats10409.2,stats10410.1,stats10410.2,stats10411.1,stats10411.2,stats10412.1,stats10412.2,stats10413.1,stats10413.2,stats10414.1,stats10414.2,stats10415.1,stats10415.2,stats10416.1,stats10416.2,stats10417.1,stats10417.2,stats10418.1,stats10418.2,stats10419.1,stats10419.2,stats10420.1,stats10420.2,stats10421.1,stats10421.2,stats10422.1,stats10422.2,stats10423.1,stats10423.2,stats10424.1,stats10424.2,stats10425.1,stats10425.2,stats10426.1,stats10426.2,stats10427.1,stats10427.2,stats10428.1,stats10428.2,stats10429.1,stats10429.2,stats10430.1,stats10430.2,stats10431.1,stats10431.2,stats10432.1,stats10432.2,stats10433.1,stats10433.2,stats10434.1,stats10434.2,stats10435.1,stats10435.2,stats10436.1,stats10436.2,stats10437.1,stats10437.2,stats10438.1,stats10438.2,stats10439.1,stats10439.2,stats10440.1,stats10440.2,stats10441.1,stats10441.2,stats10442.1,stats10442.2,stats10443.1,stats10443.2,stats10444.1,stats10444.2,stats10445.1,stats10445.2,stats10446.1,stats10446.2,stats10447.1,stats10447.2,stats10448.1,stats10448.2,stats10449.1,stats10449.2,stats10450.1,stats10450.2,stats10451.1,stats10451.2,stats10452.1,stats10452.2,stats10453.1,stats10453.2,stats10454.1,stats10454.2,stats10455.1,stats10455.2,stats10456.1,stats10456.2,stats10457.1,stats10457.2,stats10458.1,stats10458.2,stats10459.1,stats10459.2,stats10460.1,stats10460.2,stats10461.1,stats10461.2,stats10462.1,stats10462.2,stats10463.1,stats10463.2]
  decide
end PairedPathRoundCheckedRows
