import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData68
import PathRoundDispatchInstructionMatrixData69
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4395 : actualRows4395=WordField.canonicalRows actualModulus 4395 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4395 : actualRows4395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4395=2820 := by core033_kernel_decide
theorem rows4396 : actualRows4396=WordField.canonicalRows actualModulus 4396 (.bnot 4395) := by core033_kernel_decide
theorem stats4396 : actualRows4396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4396=6276 := by core033_kernel_decide
theorem rows4397 : actualRows4397=WordField.canonicalRows actualModulus 4397 (.band 4394 4396) := by core033_kernel_decide
theorem stats4397 : actualRows4397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4397=5124 := by core033_kernel_decide
theorem rows4398 : actualRows4398=WordField.canonicalRows actualModulus 4398 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4398 : actualRows4398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4398=2892 := by core033_kernel_decide
theorem rows4399 : actualRows4399=WordField.canonicalRows actualModulus 4399 (.bxor 96 4398) := by core033_kernel_decide
theorem stats4399 : actualRows4399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4399=7428 := by core033_kernel_decide
theorem rows4400 : actualRows4400=WordField.canonicalRows actualModulus 4400 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4400 : actualRows4400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4400=2820 := by core033_kernel_decide
theorem rows4401 : actualRows4401=WordField.canonicalRows actualModulus 4401 (.bnot 4400) := by core033_kernel_decide
theorem stats4401 : actualRows4401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4401=6276 := by core033_kernel_decide
theorem rows4402 : actualRows4402=WordField.canonicalRows actualModulus 4402 (.bxor 4399 4401) := by core033_kernel_decide
theorem stats4402 : actualRows4402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4402=7428 := by core033_kernel_decide
theorem rows4403 : actualRows4403=WordField.canonicalRows actualModulus 4403 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4403 : actualRows4403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4403=2892 := by core033_kernel_decide
theorem rows4404 : actualRows4404=WordField.canonicalRows actualModulus 4404 (.bxor 96 4403) := by core033_kernel_decide
theorem stats4404 : actualRows4404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4404=7428 := by core033_kernel_decide
theorem rows4405 : actualRows4405=WordField.canonicalRows actualModulus 4405 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4405 : actualRows4405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4405=2820 := by core033_kernel_decide
theorem rows4406 : actualRows4406=WordField.canonicalRows actualModulus 4406 (.bnot 4405) := by core033_kernel_decide
theorem stats4406 : actualRows4406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4406=6276 := by core033_kernel_decide
theorem rows4407 : actualRows4407=WordField.canonicalRows actualModulus 4407 (.badd 4404 4406) := by core033_kernel_decide
theorem stats4407 : actualRows4407.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4407=5388 := by core033_kernel_decide
theorem rows4408 : actualRows4408=WordField.canonicalRows actualModulus 4408 (.bnot 4407) := by core033_kernel_decide
theorem stats4408 : actualRows4408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4408=6276 := by core033_kernel_decide
theorem rows4409 : actualRows4409=WordField.canonicalRows actualModulus 4409 (.band 4402 4408) := by core033_kernel_decide
theorem stats4409 : actualRows4409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4409=5124 := by core033_kernel_decide
theorem rows4410 : actualRows4410=WordField.canonicalRows actualModulus 4410 (.bxor 4397 4409) := by core033_kernel_decide
theorem stats4410 : actualRows4410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4410=7428 := by core033_kernel_decide
theorem rows4411 : actualRows4411=WordField.canonicalRows actualModulus 4411 (.shr 4410 31) := by core033_kernel_decide
theorem stats4411 : actualRows4411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4411=2892 := by core033_kernel_decide
theorem rows4412 : actualRows4412=WordField.canonicalRows actualModulus 4412 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4412 : actualRows4412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4412=2892 := by core033_kernel_decide
theorem rows4413 : actualRows4413=WordField.canonicalRows actualModulus 4413 (.bxor 4411 4412) := by core033_kernel_decide
theorem stats4413 : actualRows4413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4413=7428 := by core033_kernel_decide
theorem rows4414 : actualRows4414=WordField.canonicalRows actualModulus 4414 (.bnot 4413) := by core033_kernel_decide
theorem stats4414 : actualRows4414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4414=6276 := by core033_kernel_decide
theorem rows4415 : actualRows4415=WordField.canonicalRows actualModulus 4415 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4415 : actualRows4415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4415=2892 := by core033_kernel_decide
theorem rows4416 : actualRows4416=WordField.canonicalRows actualModulus 4416 (.badd 4414 4415) := by core033_kernel_decide
theorem stats4416 : actualRows4416.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4416=5388 := by core033_kernel_decide
theorem rows4417 : actualRows4417=WordField.canonicalRows actualModulus 4417 (.bnot 4416) := by core033_kernel_decide
theorem stats4417 : actualRows4417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4417=6276 := by core033_kernel_decide
theorem rows4418 : actualRows4418=WordField.canonicalRows actualModulus 4418 (.band 4417 1418) := by core033_kernel_decide
theorem stats4418 : actualRows4418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4418=5124 := by core033_kernel_decide
theorem rows4419 : actualRows4419=WordField.canonicalRows actualModulus 4419 (.bxor 4392 4418) := by core033_kernel_decide
theorem stats4419 : actualRows4419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4419=7428 := by core033_kernel_decide
theorem rows4420 : actualRows4420=WordField.canonicalRows actualModulus 4420 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4420 : actualRows4420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4420=2892 := by core033_kernel_decide
theorem rows4421 : actualRows4421=WordField.canonicalRows actualModulus 4421 (.bxor 96 4420) := by core033_kernel_decide
theorem stats4421 : actualRows4421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4421=7428 := by core033_kernel_decide
theorem rows4422 : actualRows4422=WordField.canonicalRows actualModulus 4422 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4422 : actualRows4422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4422=2820 := by core033_kernel_decide
theorem rows4423 : actualRows4423=WordField.canonicalRows actualModulus 4423 (.bnot 4422) := by core033_kernel_decide
theorem stats4423 : actualRows4423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4423=6276 := by core033_kernel_decide
theorem rows4424 : actualRows4424=WordField.canonicalRows actualModulus 4424 (.band 4421 4423) := by core033_kernel_decide
theorem stats4424 : actualRows4424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4424=5124 := by core033_kernel_decide
theorem rows4425 : actualRows4425=WordField.canonicalRows actualModulus 4425 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4425 : actualRows4425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4425=2892 := by core033_kernel_decide
theorem rows4426 : actualRows4426=WordField.canonicalRows actualModulus 4426 (.bxor 96 4425) := by core033_kernel_decide
theorem stats4426 : actualRows4426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4426=7428 := by core033_kernel_decide
theorem rows4427 : actualRows4427=WordField.canonicalRows actualModulus 4427 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4427 : actualRows4427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4427=2820 := by core033_kernel_decide
theorem rows4428 : actualRows4428=WordField.canonicalRows actualModulus 4428 (.bnot 4427) := by core033_kernel_decide
theorem stats4428 : actualRows4428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4428=6276 := by core033_kernel_decide
theorem rows4429 : actualRows4429=WordField.canonicalRows actualModulus 4429 (.bxor 4426 4428) := by core033_kernel_decide
theorem stats4429 : actualRows4429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4429=7428 := by core033_kernel_decide
theorem rows4430 : actualRows4430=WordField.canonicalRows actualModulus 4430 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4430 : actualRows4430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4430=2892 := by core033_kernel_decide
theorem rows4431 : actualRows4431=WordField.canonicalRows actualModulus 4431 (.bxor 96 4430) := by core033_kernel_decide
theorem stats4431 : actualRows4431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4431=7428 := by core033_kernel_decide
theorem rows4432 : actualRows4432=WordField.canonicalRows actualModulus 4432 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4432 : actualRows4432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4432=2820 := by core033_kernel_decide
theorem rows4433 : actualRows4433=WordField.canonicalRows actualModulus 4433 (.bnot 4432) := by core033_kernel_decide
theorem stats4433 : actualRows4433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4433=6276 := by core033_kernel_decide
theorem rows4434 : actualRows4434=WordField.canonicalRows actualModulus 4434 (.badd 4431 4433) := by core033_kernel_decide
theorem stats4434 : actualRows4434.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4434=5388 := by core033_kernel_decide
theorem rows4435 : actualRows4435=WordField.canonicalRows actualModulus 4435 (.bnot 4434) := by core033_kernel_decide
theorem stats4435 : actualRows4435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4435=6276 := by core033_kernel_decide
theorem rows4436 : actualRows4436=WordField.canonicalRows actualModulus 4436 (.band 4429 4435) := by core033_kernel_decide
theorem stats4436 : actualRows4436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4436=5124 := by core033_kernel_decide
theorem rows4437 : actualRows4437=WordField.canonicalRows actualModulus 4437 (.bxor 4424 4436) := by core033_kernel_decide
theorem stats4437 : actualRows4437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4437=7428 := by core033_kernel_decide
theorem rows4438 : actualRows4438=WordField.canonicalRows actualModulus 4438 (.shr 4437 31) := by core033_kernel_decide
theorem stats4438 : actualRows4438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4438=2892 := by core033_kernel_decide
theorem rows4439 : actualRows4439=WordField.canonicalRows actualModulus 4439 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4439 : actualRows4439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4439=2892 := by core033_kernel_decide
theorem rows4440 : actualRows4440=WordField.canonicalRows actualModulus 4440 (.bxor 4438 4439) := by core033_kernel_decide
theorem stats4440 : actualRows4440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4440=7428 := by core033_kernel_decide
theorem rows4441 : actualRows4441=WordField.canonicalRows actualModulus 4441 (.bnot 4440) := by core033_kernel_decide
theorem stats4441 : actualRows4441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4441=6276 := by core033_kernel_decide
theorem rows4442 : actualRows4442=WordField.canonicalRows actualModulus 4442 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4442 : actualRows4442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4442=2892 := by core033_kernel_decide
theorem rows4443 : actualRows4443=WordField.canonicalRows actualModulus 4443 (.badd 4441 4442) := by core033_kernel_decide
theorem stats4443 : actualRows4443.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4443=5388 := by core033_kernel_decide
theorem rows4444 : actualRows4444=WordField.canonicalRows actualModulus 4444 (.band 4443 1613) := by core033_kernel_decide
theorem stats4444 : actualRows4444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4444=5124 := by core033_kernel_decide
theorem rows4445 : actualRows4445=WordField.canonicalRows actualModulus 4445 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4445 : actualRows4445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4445=2892 := by core033_kernel_decide
theorem rows4446 : actualRows4446=WordField.canonicalRows actualModulus 4446 (.bxor 96 4445) := by core033_kernel_decide
theorem stats4446 : actualRows4446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4446=7428 := by core033_kernel_decide
theorem rows4447 : actualRows4447=WordField.canonicalRows actualModulus 4447 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4447 : actualRows4447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4447=2820 := by core033_kernel_decide
theorem rows4448 : actualRows4448=WordField.canonicalRows actualModulus 4448 (.bnot 4447) := by core033_kernel_decide
theorem stats4448 : actualRows4448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4448=6276 := by core033_kernel_decide
theorem rows4449 : actualRows4449=WordField.canonicalRows actualModulus 4449 (.band 4446 4448) := by core033_kernel_decide
theorem stats4449 : actualRows4449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4449=5124 := by core033_kernel_decide
theorem rows4450 : actualRows4450=WordField.canonicalRows actualModulus 4450 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4450 : actualRows4450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4450=2892 := by core033_kernel_decide
theorem rows4451 : actualRows4451=WordField.canonicalRows actualModulus 4451 (.bxor 96 4450) := by core033_kernel_decide
theorem stats4451 : actualRows4451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4451=7428 := by core033_kernel_decide
theorem rows4452 : actualRows4452=WordField.canonicalRows actualModulus 4452 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4452 : actualRows4452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4452=2820 := by core033_kernel_decide
theorem rows4453 : actualRows4453=WordField.canonicalRows actualModulus 4453 (.bnot 4452) := by core033_kernel_decide
theorem stats4453 : actualRows4453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4453=6276 := by core033_kernel_decide
theorem rows4454 : actualRows4454=WordField.canonicalRows actualModulus 4454 (.bxor 4451 4453) := by core033_kernel_decide
theorem stats4454 : actualRows4454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4454=7428 := by core033_kernel_decide
theorem rows4455 : actualRows4455=WordField.canonicalRows actualModulus 4455 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4455 : actualRows4455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4455=2892 := by core033_kernel_decide
theorem rows4456 : actualRows4456=WordField.canonicalRows actualModulus 4456 (.bxor 96 4455) := by core033_kernel_decide
theorem stats4456 : actualRows4456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4456=7428 := by core033_kernel_decide
theorem rows4457 : actualRows4457=WordField.canonicalRows actualModulus 4457 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4457 : actualRows4457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4457=2820 := by core033_kernel_decide
theorem rows4458 : actualRows4458=WordField.canonicalRows actualModulus 4458 (.bnot 4457) := by core033_kernel_decide
theorem stats4458 : actualRows4458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4458=6276 := by core033_kernel_decide
def partRows68 : List R1CS.Row := actualRows4395++actualRows4396++actualRows4397++actualRows4398++actualRows4399++actualRows4400++actualRows4401++actualRows4402++actualRows4403++actualRows4404++actualRows4405++actualRows4406++actualRows4407++actualRows4408++actualRows4409++actualRows4410++actualRows4411++actualRows4412++actualRows4413++actualRows4414++actualRows4415++actualRows4416++actualRows4417++actualRows4418++actualRows4419++actualRows4420++actualRows4421++actualRows4422++actualRows4423++actualRows4424++actualRows4425++actualRows4426++actualRows4427++actualRows4428++actualRows4429++actualRows4430++actualRows4431++actualRows4432++actualRows4433++actualRows4434++actualRows4435++actualRows4436++actualRows4437++actualRows4438++actualRows4439++actualRows4440++actualRows4441++actualRows4442++actualRows4443++actualRows4444++actualRows4445++actualRows4446++actualRows4447++actualRows4448++actualRows4449++actualRows4450++actualRows4451++actualRows4452++actualRows4453++actualRows4454++actualRows4455++actualRows4456++actualRows4457++actualRows4458
def partOps68 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 4395,.band 4394 4396,.literal (BitVec.ofNat 32 2),.bxor 96 4398,.literal (BitVec.ofNat 32 0),.bnot 4400,.bxor 4399 4401,.literal (BitVec.ofNat 32 2),.bxor 96 4403,.literal (BitVec.ofNat 32 0),.bnot 4405,.badd 4404 4406,.bnot 4407,.band 4402 4408,.bxor 4397 4409,.shr 4410 31,.literal (BitVec.ofNat 32 1),.bxor 4411 4412,.bnot 4413,.literal (BitVec.ofNat 32 1),.badd 4414 4415,.bnot 4416,.band 4417 1418,.bxor 4392 4418,.literal (BitVec.ofNat 32 2),.bxor 96 4420,.literal (BitVec.ofNat 32 0),.bnot 4422,.band 4421 4423,.literal (BitVec.ofNat 32 2),.bxor 96 4425,.literal (BitVec.ofNat 32 0),.bnot 4427,.bxor 4426 4428,.literal (BitVec.ofNat 32 2),.bxor 96 4430,.literal (BitVec.ofNat 32 0),.bnot 4432,.badd 4431 4433,.bnot 4434,.band 4429 4435,.bxor 4424 4436,.shr 4437 31,.literal (BitVec.ofNat 32 1),.bxor 4438 4439,.bnot 4440,.literal (BitVec.ofNat 32 1),.badd 4441 4442,.band 4443 1613,.literal (BitVec.ofNat 32 2),.bxor 96 4445,.literal (BitVec.ofNat 32 0),.bnot 4447,.band 4446 4448,.literal (BitVec.ofNat 32 2),.bxor 96 4450,.literal (BitVec.ofNat 32 0),.bnot 4452,.bxor 4451 4453,.literal (BitVec.ofNat 32 2),.bxor 96 4455,.literal (BitVec.ofNat 32 0),.bnot 4457]
theorem partExact68 : partRows68=WordField.rows actualModulus 4395 partOps68 := by
  simp only [partRows68,partOps68,WordField.rows,rows4395,rows4396,rows4397,rows4398,rows4399,rows4400,rows4401,rows4402,rows4403,rows4404,rows4405,rows4406,rows4407,rows4408,rows4409,rows4410,rows4411,rows4412,rows4413,rows4414,rows4415,rows4416,rows4417,rows4418,rows4419,rows4420,rows4421,rows4422,rows4423,rows4424,rows4425,rows4426,rows4427,rows4428,rows4429,rows4430,rows4431,rows4432,rows4433,rows4434,rows4435,rows4436,rows4437,rows4438,rows4439,rows4440,rows4441,rows4442,rows4443,rows4444,rows4445,rows4446,rows4447,rows4448,rows4449,rows4450,rows4451,rows4452,rows4453,rows4454,rows4455,rows4456,rows4457,rows4458,List.append_assoc,List.append_nil]
theorem partLength68 : partOps68.length=64 := by decide
theorem partStats68 : partRows68.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows68=330000 := by
  simp only [partRows68,List.length_append,MatrixRowBlocks.rows_weight_append,stats4395.1,stats4395.2,stats4396.1,stats4396.2,stats4397.1,stats4397.2,stats4398.1,stats4398.2,stats4399.1,stats4399.2,stats4400.1,stats4400.2,stats4401.1,stats4401.2,stats4402.1,stats4402.2,stats4403.1,stats4403.2,stats4404.1,stats4404.2,stats4405.1,stats4405.2,stats4406.1,stats4406.2,stats4407.1,stats4407.2,stats4408.1,stats4408.2,stats4409.1,stats4409.2,stats4410.1,stats4410.2,stats4411.1,stats4411.2,stats4412.1,stats4412.2,stats4413.1,stats4413.2,stats4414.1,stats4414.2,stats4415.1,stats4415.2,stats4416.1,stats4416.2,stats4417.1,stats4417.2,stats4418.1,stats4418.2,stats4419.1,stats4419.2,stats4420.1,stats4420.2,stats4421.1,stats4421.2,stats4422.1,stats4422.2,stats4423.1,stats4423.2,stats4424.1,stats4424.2,stats4425.1,stats4425.2,stats4426.1,stats4426.2,stats4427.1,stats4427.2,stats4428.1,stats4428.2,stats4429.1,stats4429.2,stats4430.1,stats4430.2,stats4431.1,stats4431.2,stats4432.1,stats4432.2,stats4433.1,stats4433.2,stats4434.1,stats4434.2,stats4435.1,stats4435.2,stats4436.1,stats4436.2,stats4437.1,stats4437.2,stats4438.1,stats4438.2,stats4439.1,stats4439.2,stats4440.1,stats4440.2,stats4441.1,stats4441.2,stats4442.1,stats4442.2,stats4443.1,stats4443.2,stats4444.1,stats4444.2,stats4445.1,stats4445.2,stats4446.1,stats4446.2,stats4447.1,stats4447.2,stats4448.1,stats4448.2,stats4449.1,stats4449.2,stats4450.1,stats4450.2,stats4451.1,stats4451.2,stats4452.1,stats4452.2,stats4453.1,stats4453.2,stats4454.1,stats4454.2,stats4455.1,stats4455.2,stats4456.1,stats4456.2,stats4457.1,stats4457.2,stats4458.1,stats4458.2]
  decide
end PathRoundDispatchCheckedRows
