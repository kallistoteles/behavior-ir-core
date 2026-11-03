import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData162
import AuthenticatedBranchRoundInstructionMatrixData163
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10422 : actualRows10422=WordField.canonicalRows actualModulus 10422 (.band 10401 10374) := by core033_kernel_decide
theorem stats10422 : actualRows10422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10422=5124 := by core033_kernel_decide
theorem rows10423 : actualRows10423=WordField.canonicalRows actualModulus 10423 (.band 10401 10347) := by core033_kernel_decide
theorem stats10423 : actualRows10423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10423=5124 := by core033_kernel_decide
theorem rows10424 : actualRows10424=WordField.canonicalRows actualModulus 10424 (.bxor 10422 10423) := by core033_kernel_decide
theorem stats10424 : actualRows10424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10424=7428 := by core033_kernel_decide
theorem rows10425 : actualRows10425=WordField.canonicalRows actualModulus 10425 (.band 10374 10347) := by core033_kernel_decide
theorem stats10425 : actualRows10425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10425=5124 := by core033_kernel_decide
theorem rows10426 : actualRows10426=WordField.canonicalRows actualModulus 10426 (.bxor 10424 10425) := by core033_kernel_decide
theorem stats10426 : actualRows10426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10426=7428 := by core033_kernel_decide
theorem rows10427 : actualRows10427=WordField.canonicalRows actualModulus 10427 (.badd 10421 10426) := by core033_kernel_decide
theorem stats10427 : actualRows10427.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10427=5388 := by core033_kernel_decide
theorem rows10428 : actualRows10428=WordField.canonicalRows actualModulus 10428 (.badd 10416 10427) := by core033_kernel_decide
theorem stats10428 : actualRows10428.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10428=5388 := by core033_kernel_decide
theorem rows10429 : actualRows10429=WordField.canonicalRows actualModulus 10429 (.badd 10320 10416) := by core033_kernel_decide
theorem stats10429 : actualRows10429.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10429=5388 := by core033_kernel_decide
theorem rows10430 : actualRows10430=WordField.canonicalRows actualModulus 10430 (.rotr 10429 6) := by core033_kernel_decide
theorem stats10430 : actualRows10430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10430=5124 := by core033_kernel_decide
theorem rows10431 : actualRows10431=WordField.canonicalRows actualModulus 10431 (.rotr 10429 11) := by core033_kernel_decide
theorem stats10431 : actualRows10431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10431=5124 := by core033_kernel_decide
theorem rows10432 : actualRows10432=WordField.canonicalRows actualModulus 10432 (.bxor 10430 10431) := by core033_kernel_decide
theorem stats10432 : actualRows10432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10432=7428 := by core033_kernel_decide
theorem rows10433 : actualRows10433=WordField.canonicalRows actualModulus 10433 (.rotr 10429 25) := by core033_kernel_decide
theorem stats10433 : actualRows10433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10433=5124 := by core033_kernel_decide
theorem rows10434 : actualRows10434=WordField.canonicalRows actualModulus 10434 (.bxor 10432 10433) := by core033_kernel_decide
theorem stats10434 : actualRows10434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10434=7428 := by core033_kernel_decide
theorem rows10435 : actualRows10435=WordField.canonicalRows actualModulus 10435 (.badd 10348 10434) := by core033_kernel_decide
theorem stats10435 : actualRows10435.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10435=5388 := by core033_kernel_decide
theorem rows10436 : actualRows10436=WordField.canonicalRows actualModulus 10436 (.band 10429 10402) := by core033_kernel_decide
theorem stats10436 : actualRows10436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10436=5124 := by core033_kernel_decide
theorem rows10437 : actualRows10437=WordField.canonicalRows actualModulus 10437 (.bnot 10429) := by core033_kernel_decide
theorem stats10437 : actualRows10437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10437=6276 := by core033_kernel_decide
theorem rows10438 : actualRows10438=WordField.canonicalRows actualModulus 10438 (.band 10437 10375) := by core033_kernel_decide
theorem stats10438 : actualRows10438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10438=5124 := by core033_kernel_decide
theorem rows10439 : actualRows10439=WordField.canonicalRows actualModulus 10439 (.bxor 10436 10438) := by core033_kernel_decide
theorem stats10439 : actualRows10439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10439=7428 := by core033_kernel_decide
theorem rows10440 : actualRows10440=WordField.canonicalRows actualModulus 10440 (.badd 10435 10439) := by core033_kernel_decide
theorem stats10440 : actualRows10440.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10440=5388 := by core033_kernel_decide
theorem rows10441 : actualRows10441=WordField.canonicalRows actualModulus 10441 (.literal (BitVec.ofNat 32 3204031479)) := by core033_kernel_decide
theorem stats10441 : actualRows10441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10441=4476 := by core033_kernel_decide
theorem rows10442 : actualRows10442=WordField.canonicalRows actualModulus 10442 (.badd 10440 10441) := by core033_kernel_decide
theorem stats10442 : actualRows10442.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10442=5388 := by core033_kernel_decide
theorem rows10443 : actualRows10443=WordField.canonicalRows actualModulus 10443 (.badd 10442 8742) := by core033_kernel_decide
theorem stats10443 : actualRows10443.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10443=5388 := by core033_kernel_decide
theorem rows10444 : actualRows10444=WordField.canonicalRows actualModulus 10444 (.rotr 10428 2) := by core033_kernel_decide
theorem stats10444 : actualRows10444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10444=5124 := by core033_kernel_decide
theorem rows10445 : actualRows10445=WordField.canonicalRows actualModulus 10445 (.rotr 10428 13) := by core033_kernel_decide
theorem stats10445 : actualRows10445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10445=5124 := by core033_kernel_decide
theorem rows10446 : actualRows10446=WordField.canonicalRows actualModulus 10446 (.bxor 10444 10445) := by core033_kernel_decide
theorem stats10446 : actualRows10446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10446=7428 := by core033_kernel_decide
theorem rows10447 : actualRows10447=WordField.canonicalRows actualModulus 10447 (.rotr 10428 22) := by core033_kernel_decide
theorem stats10447 : actualRows10447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10447=5124 := by core033_kernel_decide
theorem rows10448 : actualRows10448=WordField.canonicalRows actualModulus 10448 (.bxor 10446 10447) := by core033_kernel_decide
theorem stats10448 : actualRows10448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10448=7428 := by core033_kernel_decide
theorem rows10449 : actualRows10449=WordField.canonicalRows actualModulus 10449 (.band 10428 10401) := by core033_kernel_decide
theorem stats10449 : actualRows10449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10449=5124 := by core033_kernel_decide
theorem rows10450 : actualRows10450=WordField.canonicalRows actualModulus 10450 (.band 10428 10374) := by core033_kernel_decide
theorem stats10450 : actualRows10450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10450=5124 := by core033_kernel_decide
theorem rows10451 : actualRows10451=WordField.canonicalRows actualModulus 10451 (.bxor 10449 10450) := by core033_kernel_decide
theorem stats10451 : actualRows10451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10451=7428 := by core033_kernel_decide
theorem rows10452 : actualRows10452=WordField.canonicalRows actualModulus 10452 (.band 10401 10374) := by core033_kernel_decide
theorem stats10452 : actualRows10452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10452=5124 := by core033_kernel_decide
theorem rows10453 : actualRows10453=WordField.canonicalRows actualModulus 10453 (.bxor 10451 10452) := by core033_kernel_decide
theorem stats10453 : actualRows10453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10453=7428 := by core033_kernel_decide
theorem rows10454 : actualRows10454=WordField.canonicalRows actualModulus 10454 (.badd 10448 10453) := by core033_kernel_decide
theorem stats10454 : actualRows10454.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10454=5388 := by core033_kernel_decide
theorem rows10455 : actualRows10455=WordField.canonicalRows actualModulus 10455 (.badd 10443 10454) := by core033_kernel_decide
theorem stats10455 : actualRows10455.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10455=5388 := by core033_kernel_decide
theorem rows10456 : actualRows10456=WordField.canonicalRows actualModulus 10456 (.badd 10347 10443) := by core033_kernel_decide
theorem stats10456 : actualRows10456.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10456=5388 := by core033_kernel_decide
theorem rows10457 : actualRows10457=WordField.canonicalRows actualModulus 10457 (.rotr 10456 6) := by core033_kernel_decide
theorem stats10457 : actualRows10457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10457=5124 := by core033_kernel_decide
theorem rows10458 : actualRows10458=WordField.canonicalRows actualModulus 10458 (.rotr 10456 11) := by core033_kernel_decide
theorem stats10458 : actualRows10458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10458=5124 := by core033_kernel_decide
theorem rows10459 : actualRows10459=WordField.canonicalRows actualModulus 10459 (.bxor 10457 10458) := by core033_kernel_decide
theorem stats10459 : actualRows10459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10459=7428 := by core033_kernel_decide
theorem rows10460 : actualRows10460=WordField.canonicalRows actualModulus 10460 (.rotr 10456 25) := by core033_kernel_decide
theorem stats10460 : actualRows10460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10460=5124 := by core033_kernel_decide
theorem rows10461 : actualRows10461=WordField.canonicalRows actualModulus 10461 (.bxor 10459 10460) := by core033_kernel_decide
theorem stats10461 : actualRows10461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10461=7428 := by core033_kernel_decide
theorem rows10462 : actualRows10462=WordField.canonicalRows actualModulus 10462 (.badd 10375 10461) := by core033_kernel_decide
theorem stats10462 : actualRows10462.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10462=5388 := by core033_kernel_decide
theorem rows10463 : actualRows10463=WordField.canonicalRows actualModulus 10463 (.band 10456 10429) := by core033_kernel_decide
theorem stats10463 : actualRows10463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10463=5124 := by core033_kernel_decide
theorem rows10464 : actualRows10464=WordField.canonicalRows actualModulus 10464 (.bnot 10456) := by core033_kernel_decide
theorem stats10464 : actualRows10464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10464=6276 := by core033_kernel_decide
theorem rows10465 : actualRows10465=WordField.canonicalRows actualModulus 10465 (.band 10464 10402) := by core033_kernel_decide
theorem stats10465 : actualRows10465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10465=5124 := by core033_kernel_decide
theorem rows10466 : actualRows10466=WordField.canonicalRows actualModulus 10466 (.bxor 10463 10465) := by core033_kernel_decide
theorem stats10466 : actualRows10466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10466=7428 := by core033_kernel_decide
theorem rows10467 : actualRows10467=WordField.canonicalRows actualModulus 10467 (.badd 10462 10466) := by core033_kernel_decide
theorem stats10467 : actualRows10467.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10467=5388 := by core033_kernel_decide
theorem rows10468 : actualRows10468=WordField.canonicalRows actualModulus 10468 (.literal (BitVec.ofNat 32 3329325298)) := by core033_kernel_decide
theorem stats10468 : actualRows10468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10468=4044 := by core033_kernel_decide
theorem rows10469 : actualRows10469=WordField.canonicalRows actualModulus 10469 (.badd 10467 10468) := by core033_kernel_decide
theorem stats10469 : actualRows10469.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10469=5388 := by core033_kernel_decide
theorem rows10470 : actualRows10470=WordField.canonicalRows actualModulus 10470 (.badd 10469 8755) := by core033_kernel_decide
theorem stats10470 : actualRows10470.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10470=5388 := by core033_kernel_decide
theorem rows10471 : actualRows10471=WordField.canonicalRows actualModulus 10471 (.rotr 10455 2) := by core033_kernel_decide
theorem stats10471 : actualRows10471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10471=5124 := by core033_kernel_decide
theorem rows10472 : actualRows10472=WordField.canonicalRows actualModulus 10472 (.rotr 10455 13) := by core033_kernel_decide
theorem stats10472 : actualRows10472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10472=5124 := by core033_kernel_decide
theorem rows10473 : actualRows10473=WordField.canonicalRows actualModulus 10473 (.bxor 10471 10472) := by core033_kernel_decide
theorem stats10473 : actualRows10473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10473=7428 := by core033_kernel_decide
theorem rows10474 : actualRows10474=WordField.canonicalRows actualModulus 10474 (.rotr 10455 22) := by core033_kernel_decide
theorem stats10474 : actualRows10474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10474=5124 := by core033_kernel_decide
theorem rows10475 : actualRows10475=WordField.canonicalRows actualModulus 10475 (.bxor 10473 10474) := by core033_kernel_decide
theorem stats10475 : actualRows10475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10475=7428 := by core033_kernel_decide
theorem rows10476 : actualRows10476=WordField.canonicalRows actualModulus 10476 (.band 10455 10428) := by core033_kernel_decide
theorem stats10476 : actualRows10476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10476=5124 := by core033_kernel_decide
theorem rows10477 : actualRows10477=WordField.canonicalRows actualModulus 10477 (.band 10455 10401) := by core033_kernel_decide
theorem stats10477 : actualRows10477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10477=5124 := by core033_kernel_decide
theorem rows10478 : actualRows10478=WordField.canonicalRows actualModulus 10478 (.bxor 10476 10477) := by core033_kernel_decide
theorem stats10478 : actualRows10478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10478=7428 := by core033_kernel_decide
theorem rows10479 : actualRows10479=WordField.canonicalRows actualModulus 10479 (.band 10428 10401) := by core033_kernel_decide
theorem stats10479 : actualRows10479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10479=5124 := by core033_kernel_decide
theorem rows10480 : actualRows10480=WordField.canonicalRows actualModulus 10480 (.bxor 10478 10479) := by core033_kernel_decide
theorem stats10480 : actualRows10480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10480=7428 := by core033_kernel_decide
theorem rows10481 : actualRows10481=WordField.canonicalRows actualModulus 10481 (.badd 10475 10480) := by core033_kernel_decide
theorem stats10481 : actualRows10481.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10481=5388 := by core033_kernel_decide
theorem rows10482 : actualRows10482=WordField.canonicalRows actualModulus 10482 (.badd 10470 10481) := by core033_kernel_decide
theorem stats10482 : actualRows10482.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10482=5388 := by core033_kernel_decide
theorem rows10483 : actualRows10483=WordField.canonicalRows actualModulus 10483 (.badd 10374 10470) := by core033_kernel_decide
theorem stats10483 : actualRows10483.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10483=5388 := by core033_kernel_decide
theorem rows10484 : actualRows10484=WordField.canonicalRows actualModulus 10484 (.badd 3171 10482) := by core033_kernel_decide
theorem stats10484 : actualRows10484.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10484=5388 := by core033_kernel_decide
theorem rows10485 : actualRows10485=WordField.canonicalRows actualModulus 10485 (.badd 3224 10455) := by core033_kernel_decide
theorem stats10485 : actualRows10485.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10485=5388 := by core033_kernel_decide
def partRows161 : List R1CS.Row := actualRows10422++actualRows10423++actualRows10424++actualRows10425++actualRows10426++actualRows10427++actualRows10428++actualRows10429++actualRows10430++actualRows10431++actualRows10432++actualRows10433++actualRows10434++actualRows10435++actualRows10436++actualRows10437++actualRows10438++actualRows10439++actualRows10440++actualRows10441++actualRows10442++actualRows10443++actualRows10444++actualRows10445++actualRows10446++actualRows10447++actualRows10448++actualRows10449++actualRows10450++actualRows10451++actualRows10452++actualRows10453++actualRows10454++actualRows10455++actualRows10456++actualRows10457++actualRows10458++actualRows10459++actualRows10460++actualRows10461++actualRows10462++actualRows10463++actualRows10464++actualRows10465++actualRows10466++actualRows10467++actualRows10468++actualRows10469++actualRows10470++actualRows10471++actualRows10472++actualRows10473++actualRows10474++actualRows10475++actualRows10476++actualRows10477++actualRows10478++actualRows10479++actualRows10480++actualRows10481++actualRows10482++actualRows10483++actualRows10484++actualRows10485
def partOps161 : List WordIR.Op := [.band 10401 10374,.band 10401 10347,.bxor 10422 10423,.band 10374 10347,.bxor 10424 10425,.badd 10421 10426,.badd 10416 10427,.badd 10320 10416,.rotr 10429 6,.rotr 10429 11,.bxor 10430 10431,.rotr 10429 25,.bxor 10432 10433,.badd 10348 10434,.band 10429 10402,.bnot 10429,.band 10437 10375,.bxor 10436 10438,.badd 10435 10439,.literal (BitVec.ofNat 32 3204031479),.badd 10440 10441,.badd 10442 8742,.rotr 10428 2,.rotr 10428 13,.bxor 10444 10445,.rotr 10428 22,.bxor 10446 10447,.band 10428 10401,.band 10428 10374,.bxor 10449 10450,.band 10401 10374,.bxor 10451 10452,.badd 10448 10453,.badd 10443 10454,.badd 10347 10443,.rotr 10456 6,.rotr 10456 11,.bxor 10457 10458,.rotr 10456 25,.bxor 10459 10460,.badd 10375 10461,.band 10456 10429,.bnot 10456,.band 10464 10402,.bxor 10463 10465,.badd 10462 10466,.literal (BitVec.ofNat 32 3329325298),.badd 10467 10468,.badd 10469 8755,.rotr 10455 2,.rotr 10455 13,.bxor 10471 10472,.rotr 10455 22,.bxor 10473 10474,.band 10455 10428,.band 10455 10401,.bxor 10476 10477,.band 10428 10401,.bxor 10478 10479,.badd 10475 10480,.badd 10470 10481,.badd 10374 10470,.badd 3171 10482,.badd 3224 10455]
theorem partExact161 : partRows161=WordField.rows actualModulus 10422 partOps161 := by
  simp only [partRows161,partOps161,WordField.rows,rows10422,rows10423,rows10424,rows10425,rows10426,rows10427,rows10428,rows10429,rows10430,rows10431,rows10432,rows10433,rows10434,rows10435,rows10436,rows10437,rows10438,rows10439,rows10440,rows10441,rows10442,rows10443,rows10444,rows10445,rows10446,rows10447,rows10448,rows10449,rows10450,rows10451,rows10452,rows10453,rows10454,rows10455,rows10456,rows10457,rows10458,rows10459,rows10460,rows10461,rows10462,rows10463,rows10464,rows10465,rows10466,rows10467,rows10468,rows10469,rows10470,rows10471,rows10472,rows10473,rows10474,rows10475,rows10476,rows10477,rows10478,rows10479,rows10480,rows10481,rows10482,rows10483,rows10484,rows10485,List.append_assoc,List.append_nil]
theorem partLength161 : partOps161.length=64 := by decide
theorem partStats161 : partRows161.length=2195 ∧ MatrixRowBlocks.rowsWeight partRows161=370392 := by
  simp only [partRows161,List.length_append,MatrixRowBlocks.rows_weight_append,stats10422.1,stats10422.2,stats10423.1,stats10423.2,stats10424.1,stats10424.2,stats10425.1,stats10425.2,stats10426.1,stats10426.2,stats10427.1,stats10427.2,stats10428.1,stats10428.2,stats10429.1,stats10429.2,stats10430.1,stats10430.2,stats10431.1,stats10431.2,stats10432.1,stats10432.2,stats10433.1,stats10433.2,stats10434.1,stats10434.2,stats10435.1,stats10435.2,stats10436.1,stats10436.2,stats10437.1,stats10437.2,stats10438.1,stats10438.2,stats10439.1,stats10439.2,stats10440.1,stats10440.2,stats10441.1,stats10441.2,stats10442.1,stats10442.2,stats10443.1,stats10443.2,stats10444.1,stats10444.2,stats10445.1,stats10445.2,stats10446.1,stats10446.2,stats10447.1,stats10447.2,stats10448.1,stats10448.2,stats10449.1,stats10449.2,stats10450.1,stats10450.2,stats10451.1,stats10451.2,stats10452.1,stats10452.2,stats10453.1,stats10453.2,stats10454.1,stats10454.2,stats10455.1,stats10455.2,stats10456.1,stats10456.2,stats10457.1,stats10457.2,stats10458.1,stats10458.2,stats10459.1,stats10459.2,stats10460.1,stats10460.2,stats10461.1,stats10461.2,stats10462.1,stats10462.2,stats10463.1,stats10463.2,stats10464.1,stats10464.2,stats10465.1,stats10465.2,stats10466.1,stats10466.2,stats10467.1,stats10467.2,stats10468.1,stats10468.2,stats10469.1,stats10469.2,stats10470.1,stats10470.2,stats10471.1,stats10471.2,stats10472.1,stats10472.2,stats10473.1,stats10473.2,stats10474.1,stats10474.2,stats10475.1,stats10475.2,stats10476.1,stats10476.2,stats10477.1,stats10477.2,stats10478.1,stats10478.2,stats10479.1,stats10479.2,stats10480.1,stats10480.2,stats10481.1,stats10481.2,stats10482.1,stats10482.2,stats10483.1,stats10483.2,stats10484.1,stats10484.2,stats10485.1,stats10485.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
