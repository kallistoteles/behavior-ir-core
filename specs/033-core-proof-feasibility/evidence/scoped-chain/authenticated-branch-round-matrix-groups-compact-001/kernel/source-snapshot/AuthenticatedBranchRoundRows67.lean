import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData68
import AuthenticatedBranchRoundInstructionMatrixData69
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4406 : actualRows4406=WordField.canonicalRows actualModulus 4406 (.bxor 1299 4405) := by core033_kernel_decide
theorem stats4406 : actualRows4406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4406=7428 := by core033_kernel_decide
theorem rows4407 : actualRows4407=WordField.canonicalRows actualModulus 4407 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4407 : actualRows4407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4407=2820 := by core033_kernel_decide
theorem rows4408 : actualRows4408=WordField.canonicalRows actualModulus 4408 (.bnot 4407) := by core033_kernel_decide
theorem stats4408 : actualRows4408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4408=6276 := by core033_kernel_decide
theorem rows4409 : actualRows4409=WordField.canonicalRows actualModulus 4409 (.bxor 4406 4408) := by core033_kernel_decide
theorem stats4409 : actualRows4409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4409=7428 := by core033_kernel_decide
theorem rows4410 : actualRows4410=WordField.canonicalRows actualModulus 4410 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4410 : actualRows4410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4410=2892 := by core033_kernel_decide
theorem rows4411 : actualRows4411=WordField.canonicalRows actualModulus 4411 (.bxor 1299 4410) := by core033_kernel_decide
theorem stats4411 : actualRows4411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4411=7428 := by core033_kernel_decide
theorem rows4412 : actualRows4412=WordField.canonicalRows actualModulus 4412 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4412 : actualRows4412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4412=2820 := by core033_kernel_decide
theorem rows4413 : actualRows4413=WordField.canonicalRows actualModulus 4413 (.bnot 4412) := by core033_kernel_decide
theorem stats4413 : actualRows4413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4413=6276 := by core033_kernel_decide
theorem rows4414 : actualRows4414=WordField.canonicalRows actualModulus 4414 (.badd 4411 4413) := by core033_kernel_decide
theorem stats4414 : actualRows4414.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4414=5388 := by core033_kernel_decide
theorem rows4415 : actualRows4415=WordField.canonicalRows actualModulus 4415 (.bnot 4414) := by core033_kernel_decide
theorem stats4415 : actualRows4415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4415=6276 := by core033_kernel_decide
theorem rows4416 : actualRows4416=WordField.canonicalRows actualModulus 4416 (.band 4409 4415) := by core033_kernel_decide
theorem stats4416 : actualRows4416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4416=5124 := by core033_kernel_decide
theorem rows4417 : actualRows4417=WordField.canonicalRows actualModulus 4417 (.bxor 4404 4416) := by core033_kernel_decide
theorem stats4417 : actualRows4417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4417=7428 := by core033_kernel_decide
theorem rows4418 : actualRows4418=WordField.canonicalRows actualModulus 4418 (.shr 4417 31) := by core033_kernel_decide
theorem stats4418 : actualRows4418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4418=2892 := by core033_kernel_decide
theorem rows4419 : actualRows4419=WordField.canonicalRows actualModulus 4419 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4419 : actualRows4419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4419=2892 := by core033_kernel_decide
theorem rows4420 : actualRows4420=WordField.canonicalRows actualModulus 4420 (.bxor 4418 4419) := by core033_kernel_decide
theorem stats4420 : actualRows4420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4420=7428 := by core033_kernel_decide
theorem rows4421 : actualRows4421=WordField.canonicalRows actualModulus 4421 (.bnot 4420) := by core033_kernel_decide
theorem stats4421 : actualRows4421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4421=6276 := by core033_kernel_decide
theorem rows4422 : actualRows4422=WordField.canonicalRows actualModulus 4422 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4422 : actualRows4422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4422=2892 := by core033_kernel_decide
theorem rows4423 : actualRows4423=WordField.canonicalRows actualModulus 4423 (.badd 4421 4422) := by core033_kernel_decide
theorem stats4423 : actualRows4423.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4423=5388 := by core033_kernel_decide
theorem rows4424 : actualRows4424=WordField.canonicalRows actualModulus 4424 (.bnot 4423) := by core033_kernel_decide
theorem stats4424 : actualRows4424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4424=6276 := by core033_kernel_decide
theorem rows4425 : actualRows4425=WordField.canonicalRows actualModulus 4425 (.band 4424 2562) := by core033_kernel_decide
theorem stats4425 : actualRows4425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4425=5124 := by core033_kernel_decide
theorem rows4426 : actualRows4426=WordField.canonicalRows actualModulus 4426 (.bxor 4399 4425) := by core033_kernel_decide
theorem stats4426 : actualRows4426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4426=7428 := by core033_kernel_decide
theorem rows4427 : actualRows4427=WordField.canonicalRows actualModulus 4427 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4427 : actualRows4427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4427=2892 := by core033_kernel_decide
theorem rows4428 : actualRows4428=WordField.canonicalRows actualModulus 4428 (.bxor 1299 4427) := by core033_kernel_decide
theorem stats4428 : actualRows4428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4428=7428 := by core033_kernel_decide
theorem rows4429 : actualRows4429=WordField.canonicalRows actualModulus 4429 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4429 : actualRows4429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4429=2820 := by core033_kernel_decide
theorem rows4430 : actualRows4430=WordField.canonicalRows actualModulus 4430 (.bnot 4429) := by core033_kernel_decide
theorem stats4430 : actualRows4430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4430=6276 := by core033_kernel_decide
theorem rows4431 : actualRows4431=WordField.canonicalRows actualModulus 4431 (.band 4428 4430) := by core033_kernel_decide
theorem stats4431 : actualRows4431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4431=5124 := by core033_kernel_decide
theorem rows4432 : actualRows4432=WordField.canonicalRows actualModulus 4432 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4432 : actualRows4432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4432=2892 := by core033_kernel_decide
theorem rows4433 : actualRows4433=WordField.canonicalRows actualModulus 4433 (.bxor 1299 4432) := by core033_kernel_decide
theorem stats4433 : actualRows4433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4433=7428 := by core033_kernel_decide
theorem rows4434 : actualRows4434=WordField.canonicalRows actualModulus 4434 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4434 : actualRows4434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4434=2820 := by core033_kernel_decide
theorem rows4435 : actualRows4435=WordField.canonicalRows actualModulus 4435 (.bnot 4434) := by core033_kernel_decide
theorem stats4435 : actualRows4435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4435=6276 := by core033_kernel_decide
theorem rows4436 : actualRows4436=WordField.canonicalRows actualModulus 4436 (.bxor 4433 4435) := by core033_kernel_decide
theorem stats4436 : actualRows4436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4436=7428 := by core033_kernel_decide
theorem rows4437 : actualRows4437=WordField.canonicalRows actualModulus 4437 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4437 : actualRows4437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4437=2892 := by core033_kernel_decide
theorem rows4438 : actualRows4438=WordField.canonicalRows actualModulus 4438 (.bxor 1299 4437) := by core033_kernel_decide
theorem stats4438 : actualRows4438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4438=7428 := by core033_kernel_decide
theorem rows4439 : actualRows4439=WordField.canonicalRows actualModulus 4439 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4439 : actualRows4439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4439=2820 := by core033_kernel_decide
theorem rows4440 : actualRows4440=WordField.canonicalRows actualModulus 4440 (.bnot 4439) := by core033_kernel_decide
theorem stats4440 : actualRows4440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4440=6276 := by core033_kernel_decide
theorem rows4441 : actualRows4441=WordField.canonicalRows actualModulus 4441 (.badd 4438 4440) := by core033_kernel_decide
theorem stats4441 : actualRows4441.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4441=5388 := by core033_kernel_decide
theorem rows4442 : actualRows4442=WordField.canonicalRows actualModulus 4442 (.bnot 4441) := by core033_kernel_decide
theorem stats4442 : actualRows4442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4442=6276 := by core033_kernel_decide
theorem rows4443 : actualRows4443=WordField.canonicalRows actualModulus 4443 (.band 4436 4442) := by core033_kernel_decide
theorem stats4443 : actualRows4443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4443=5124 := by core033_kernel_decide
theorem rows4444 : actualRows4444=WordField.canonicalRows actualModulus 4444 (.bxor 4431 4443) := by core033_kernel_decide
theorem stats4444 : actualRows4444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4444=7428 := by core033_kernel_decide
theorem rows4445 : actualRows4445=WordField.canonicalRows actualModulus 4445 (.shr 4444 31) := by core033_kernel_decide
theorem stats4445 : actualRows4445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4445=2892 := by core033_kernel_decide
theorem rows4446 : actualRows4446=WordField.canonicalRows actualModulus 4446 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4446 : actualRows4446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4446=2892 := by core033_kernel_decide
theorem rows4447 : actualRows4447=WordField.canonicalRows actualModulus 4447 (.bxor 4445 4446) := by core033_kernel_decide
theorem stats4447 : actualRows4447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4447=7428 := by core033_kernel_decide
theorem rows4448 : actualRows4448=WordField.canonicalRows actualModulus 4448 (.bnot 4447) := by core033_kernel_decide
theorem stats4448 : actualRows4448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4448=6276 := by core033_kernel_decide
theorem rows4449 : actualRows4449=WordField.canonicalRows actualModulus 4449 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4449 : actualRows4449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4449=2892 := by core033_kernel_decide
theorem rows4450 : actualRows4450=WordField.canonicalRows actualModulus 4450 (.badd 4448 4449) := by core033_kernel_decide
theorem stats4450 : actualRows4450.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4450=5388 := by core033_kernel_decide
theorem rows4451 : actualRows4451=WordField.canonicalRows actualModulus 4451 (.band 4450 2747) := by core033_kernel_decide
theorem stats4451 : actualRows4451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4451=5124 := by core033_kernel_decide
theorem rows4452 : actualRows4452=WordField.canonicalRows actualModulus 4452 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4452 : actualRows4452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4452=2892 := by core033_kernel_decide
theorem rows4453 : actualRows4453=WordField.canonicalRows actualModulus 4453 (.bxor 1299 4452) := by core033_kernel_decide
theorem stats4453 : actualRows4453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4453=7428 := by core033_kernel_decide
theorem rows4454 : actualRows4454=WordField.canonicalRows actualModulus 4454 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4454 : actualRows4454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4454=2820 := by core033_kernel_decide
theorem rows4455 : actualRows4455=WordField.canonicalRows actualModulus 4455 (.bnot 4454) := by core033_kernel_decide
theorem stats4455 : actualRows4455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4455=6276 := by core033_kernel_decide
theorem rows4456 : actualRows4456=WordField.canonicalRows actualModulus 4456 (.band 4453 4455) := by core033_kernel_decide
theorem stats4456 : actualRows4456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4456=5124 := by core033_kernel_decide
theorem rows4457 : actualRows4457=WordField.canonicalRows actualModulus 4457 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4457 : actualRows4457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4457=2892 := by core033_kernel_decide
theorem rows4458 : actualRows4458=WordField.canonicalRows actualModulus 4458 (.bxor 1299 4457) := by core033_kernel_decide
theorem stats4458 : actualRows4458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4458=7428 := by core033_kernel_decide
theorem rows4459 : actualRows4459=WordField.canonicalRows actualModulus 4459 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4459 : actualRows4459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4459=2820 := by core033_kernel_decide
theorem rows4460 : actualRows4460=WordField.canonicalRows actualModulus 4460 (.bnot 4459) := by core033_kernel_decide
theorem stats4460 : actualRows4460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4460=6276 := by core033_kernel_decide
theorem rows4461 : actualRows4461=WordField.canonicalRows actualModulus 4461 (.bxor 4458 4460) := by core033_kernel_decide
theorem stats4461 : actualRows4461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4461=7428 := by core033_kernel_decide
theorem rows4462 : actualRows4462=WordField.canonicalRows actualModulus 4462 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4462 : actualRows4462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4462=2892 := by core033_kernel_decide
theorem rows4463 : actualRows4463=WordField.canonicalRows actualModulus 4463 (.bxor 1299 4462) := by core033_kernel_decide
theorem stats4463 : actualRows4463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4463=7428 := by core033_kernel_decide
theorem rows4464 : actualRows4464=WordField.canonicalRows actualModulus 4464 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4464 : actualRows4464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4464=2820 := by core033_kernel_decide
theorem rows4465 : actualRows4465=WordField.canonicalRows actualModulus 4465 (.bnot 4464) := by core033_kernel_decide
theorem stats4465 : actualRows4465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4465=6276 := by core033_kernel_decide
theorem rows4466 : actualRows4466=WordField.canonicalRows actualModulus 4466 (.badd 4463 4465) := by core033_kernel_decide
theorem stats4466 : actualRows4466.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4466=5388 := by core033_kernel_decide
theorem rows4467 : actualRows4467=WordField.canonicalRows actualModulus 4467 (.bnot 4466) := by core033_kernel_decide
theorem stats4467 : actualRows4467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4467=6276 := by core033_kernel_decide
theorem rows4468 : actualRows4468=WordField.canonicalRows actualModulus 4468 (.band 4461 4467) := by core033_kernel_decide
theorem stats4468 : actualRows4468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4468=5124 := by core033_kernel_decide
theorem rows4469 : actualRows4469=WordField.canonicalRows actualModulus 4469 (.bxor 4456 4468) := by core033_kernel_decide
theorem stats4469 : actualRows4469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4469=7428 := by core033_kernel_decide
def partRows67 : List R1CS.Row := actualRows4406++actualRows4407++actualRows4408++actualRows4409++actualRows4410++actualRows4411++actualRows4412++actualRows4413++actualRows4414++actualRows4415++actualRows4416++actualRows4417++actualRows4418++actualRows4419++actualRows4420++actualRows4421++actualRows4422++actualRows4423++actualRows4424++actualRows4425++actualRows4426++actualRows4427++actualRows4428++actualRows4429++actualRows4430++actualRows4431++actualRows4432++actualRows4433++actualRows4434++actualRows4435++actualRows4436++actualRows4437++actualRows4438++actualRows4439++actualRows4440++actualRows4441++actualRows4442++actualRows4443++actualRows4444++actualRows4445++actualRows4446++actualRows4447++actualRows4448++actualRows4449++actualRows4450++actualRows4451++actualRows4452++actualRows4453++actualRows4454++actualRows4455++actualRows4456++actualRows4457++actualRows4458++actualRows4459++actualRows4460++actualRows4461++actualRows4462++actualRows4463++actualRows4464++actualRows4465++actualRows4466++actualRows4467++actualRows4468++actualRows4469
def partOps67 : List WordIR.Op := [.bxor 1299 4405,.literal (BitVec.ofNat 32 0),.bnot 4407,.bxor 4406 4408,.literal (BitVec.ofNat 32 2),.bxor 1299 4410,.literal (BitVec.ofNat 32 0),.bnot 4412,.badd 4411 4413,.bnot 4414,.band 4409 4415,.bxor 4404 4416,.shr 4417 31,.literal (BitVec.ofNat 32 1),.bxor 4418 4419,.bnot 4420,.literal (BitVec.ofNat 32 1),.badd 4421 4422,.bnot 4423,.band 4424 2562,.bxor 4399 4425,.literal (BitVec.ofNat 32 2),.bxor 1299 4427,.literal (BitVec.ofNat 32 0),.bnot 4429,.band 4428 4430,.literal (BitVec.ofNat 32 2),.bxor 1299 4432,.literal (BitVec.ofNat 32 0),.bnot 4434,.bxor 4433 4435,.literal (BitVec.ofNat 32 2),.bxor 1299 4437,.literal (BitVec.ofNat 32 0),.bnot 4439,.badd 4438 4440,.bnot 4441,.band 4436 4442,.bxor 4431 4443,.shr 4444 31,.literal (BitVec.ofNat 32 1),.bxor 4445 4446,.bnot 4447,.literal (BitVec.ofNat 32 1),.badd 4448 4449,.band 4450 2747,.literal (BitVec.ofNat 32 2),.bxor 1299 4452,.literal (BitVec.ofNat 32 0),.bnot 4454,.band 4453 4455,.literal (BitVec.ofNat 32 2),.bxor 1299 4457,.literal (BitVec.ofNat 32 0),.bnot 4459,.bxor 4458 4460,.literal (BitVec.ofNat 32 2),.bxor 1299 4462,.literal (BitVec.ofNat 32 0),.bnot 4464,.badd 4463 4465,.bnot 4466,.band 4461 4467,.bxor 4456 4468]
theorem partExact67 : partRows67=WordField.rows actualModulus 4406 partOps67 := by
  simp only [partRows67,partOps67,WordField.rows,rows4406,rows4407,rows4408,rows4409,rows4410,rows4411,rows4412,rows4413,rows4414,rows4415,rows4416,rows4417,rows4418,rows4419,rows4420,rows4421,rows4422,rows4423,rows4424,rows4425,rows4426,rows4427,rows4428,rows4429,rows4430,rows4431,rows4432,rows4433,rows4434,rows4435,rows4436,rows4437,rows4438,rows4439,rows4440,rows4441,rows4442,rows4443,rows4444,rows4445,rows4446,rows4447,rows4448,rows4449,rows4450,rows4451,rows4452,rows4453,rows4454,rows4455,rows4456,rows4457,rows4458,rows4459,rows4460,rows4461,rows4462,rows4463,rows4464,rows4465,rows4466,rows4467,rows4468,rows4469,List.append_assoc,List.append_nil]
theorem partLength67 : partOps67.length=64 := by decide
theorem partStats67 : partRows67.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows67=337104 := by
  simp only [partRows67,List.length_append,MatrixRowBlocks.rows_weight_append,stats4406.1,stats4406.2,stats4407.1,stats4407.2,stats4408.1,stats4408.2,stats4409.1,stats4409.2,stats4410.1,stats4410.2,stats4411.1,stats4411.2,stats4412.1,stats4412.2,stats4413.1,stats4413.2,stats4414.1,stats4414.2,stats4415.1,stats4415.2,stats4416.1,stats4416.2,stats4417.1,stats4417.2,stats4418.1,stats4418.2,stats4419.1,stats4419.2,stats4420.1,stats4420.2,stats4421.1,stats4421.2,stats4422.1,stats4422.2,stats4423.1,stats4423.2,stats4424.1,stats4424.2,stats4425.1,stats4425.2,stats4426.1,stats4426.2,stats4427.1,stats4427.2,stats4428.1,stats4428.2,stats4429.1,stats4429.2,stats4430.1,stats4430.2,stats4431.1,stats4431.2,stats4432.1,stats4432.2,stats4433.1,stats4433.2,stats4434.1,stats4434.2,stats4435.1,stats4435.2,stats4436.1,stats4436.2,stats4437.1,stats4437.2,stats4438.1,stats4438.2,stats4439.1,stats4439.2,stats4440.1,stats4440.2,stats4441.1,stats4441.2,stats4442.1,stats4442.2,stats4443.1,stats4443.2,stats4444.1,stats4444.2,stats4445.1,stats4445.2,stats4446.1,stats4446.2,stats4447.1,stats4447.2,stats4448.1,stats4448.2,stats4449.1,stats4449.2,stats4450.1,stats4450.2,stats4451.1,stats4451.2,stats4452.1,stats4452.2,stats4453.1,stats4453.2,stats4454.1,stats4454.2,stats4455.1,stats4455.2,stats4456.1,stats4456.2,stats4457.1,stats4457.2,stats4458.1,stats4458.2,stats4459.1,stats4459.2,stats4460.1,stats4460.2,stats4461.1,stats4461.2,stats4462.1,stats4462.2,stats4463.1,stats4463.2,stats4464.1,stats4464.2,stats4465.1,stats4465.2,stats4466.1,stats4466.2,stats4467.1,stats4467.2,stats4468.1,stats4468.2,stats4469.1,stats4469.2]
  decide
end AuthenticatedBranchRoundCheckedRows
