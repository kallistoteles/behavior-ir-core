import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData68
import PairedPathRoundInstructionMatrixData69
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4384 : actualRows4384=WordField.canonicalRows actualModulus 4384 (.band 4377 4383) := by core033_kernel_decide
theorem stats4384 : actualRows4384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4384=5124 := by core033_kernel_decide
theorem rows4385 : actualRows4385=WordField.canonicalRows actualModulus 4385 (.bxor 4372 4384) := by core033_kernel_decide
theorem stats4385 : actualRows4385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4385=7428 := by core033_kernel_decide
theorem rows4386 : actualRows4386=WordField.canonicalRows actualModulus 4386 (.shr 4385 31) := by core033_kernel_decide
theorem stats4386 : actualRows4386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4386=2892 := by core033_kernel_decide
theorem rows4387 : actualRows4387=WordField.canonicalRows actualModulus 4387 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4387 : actualRows4387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4387=2892 := by core033_kernel_decide
theorem rows4388 : actualRows4388=WordField.canonicalRows actualModulus 4388 (.bxor 4386 4387) := by core033_kernel_decide
theorem stats4388 : actualRows4388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4388=7428 := by core033_kernel_decide
theorem rows4389 : actualRows4389=WordField.canonicalRows actualModulus 4389 (.bnot 4388) := by core033_kernel_decide
theorem stats4389 : actualRows4389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4389=6276 := by core033_kernel_decide
theorem rows4390 : actualRows4390=WordField.canonicalRows actualModulus 4390 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4390 : actualRows4390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4390=2892 := by core033_kernel_decide
theorem rows4391 : actualRows4391=WordField.canonicalRows actualModulus 4391 (.badd 4389 4390) := by core033_kernel_decide
theorem stats4391 : actualRows4391.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4391=5388 := by core033_kernel_decide
theorem rows4392 : actualRows4392=WordField.canonicalRows actualModulus 4392 (.band 4391 2100) := by core033_kernel_decide
theorem stats4392 : actualRows4392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4392=5124 := by core033_kernel_decide
theorem rows4393 : actualRows4393=WordField.canonicalRows actualModulus 4393 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4393 : actualRows4393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4393=2892 := by core033_kernel_decide
theorem rows4394 : actualRows4394=WordField.canonicalRows actualModulus 4394 (.bxor 616 4393) := by core033_kernel_decide
theorem stats4394 : actualRows4394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4394=7428 := by core033_kernel_decide
theorem rows4395 : actualRows4395=WordField.canonicalRows actualModulus 4395 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4395 : actualRows4395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4395=2820 := by core033_kernel_decide
theorem rows4396 : actualRows4396=WordField.canonicalRows actualModulus 4396 (.bnot 4395) := by core033_kernel_decide
theorem stats4396 : actualRows4396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4396=6276 := by core033_kernel_decide
theorem rows4397 : actualRows4397=WordField.canonicalRows actualModulus 4397 (.band 4394 4396) := by core033_kernel_decide
theorem stats4397 : actualRows4397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4397=5124 := by core033_kernel_decide
theorem rows4398 : actualRows4398=WordField.canonicalRows actualModulus 4398 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4398 : actualRows4398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4398=2892 := by core033_kernel_decide
theorem rows4399 : actualRows4399=WordField.canonicalRows actualModulus 4399 (.bxor 616 4398) := by core033_kernel_decide
theorem stats4399 : actualRows4399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4399=7428 := by core033_kernel_decide
theorem rows4400 : actualRows4400=WordField.canonicalRows actualModulus 4400 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4400 : actualRows4400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4400=2820 := by core033_kernel_decide
theorem rows4401 : actualRows4401=WordField.canonicalRows actualModulus 4401 (.bnot 4400) := by core033_kernel_decide
theorem stats4401 : actualRows4401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4401=6276 := by core033_kernel_decide
theorem rows4402 : actualRows4402=WordField.canonicalRows actualModulus 4402 (.bxor 4399 4401) := by core033_kernel_decide
theorem stats4402 : actualRows4402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4402=7428 := by core033_kernel_decide
theorem rows4403 : actualRows4403=WordField.canonicalRows actualModulus 4403 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4403 : actualRows4403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4403=2892 := by core033_kernel_decide
theorem rows4404 : actualRows4404=WordField.canonicalRows actualModulus 4404 (.bxor 616 4403) := by core033_kernel_decide
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
theorem rows4418 : actualRows4418=WordField.canonicalRows actualModulus 4418 (.band 4417 1908) := by core033_kernel_decide
theorem stats4418 : actualRows4418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4418=5124 := by core033_kernel_decide
theorem rows4419 : actualRows4419=WordField.canonicalRows actualModulus 4419 (.bxor 4392 4418) := by core033_kernel_decide
theorem stats4419 : actualRows4419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4419=7428 := by core033_kernel_decide
theorem rows4420 : actualRows4420=WordField.canonicalRows actualModulus 4420 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4420 : actualRows4420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4420=2892 := by core033_kernel_decide
theorem rows4421 : actualRows4421=WordField.canonicalRows actualModulus 4421 (.bxor 616 4420) := by core033_kernel_decide
theorem stats4421 : actualRows4421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4421=7428 := by core033_kernel_decide
theorem rows4422 : actualRows4422=WordField.canonicalRows actualModulus 4422 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4422 : actualRows4422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4422=2820 := by core033_kernel_decide
theorem rows4423 : actualRows4423=WordField.canonicalRows actualModulus 4423 (.bnot 4422) := by core033_kernel_decide
theorem stats4423 : actualRows4423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4423=6276 := by core033_kernel_decide
theorem rows4424 : actualRows4424=WordField.canonicalRows actualModulus 4424 (.band 4421 4423) := by core033_kernel_decide
theorem stats4424 : actualRows4424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4424=5124 := by core033_kernel_decide
theorem rows4425 : actualRows4425=WordField.canonicalRows actualModulus 4425 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4425 : actualRows4425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4425=2892 := by core033_kernel_decide
theorem rows4426 : actualRows4426=WordField.canonicalRows actualModulus 4426 (.bxor 616 4425) := by core033_kernel_decide
theorem stats4426 : actualRows4426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4426=7428 := by core033_kernel_decide
theorem rows4427 : actualRows4427=WordField.canonicalRows actualModulus 4427 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4427 : actualRows4427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4427=2820 := by core033_kernel_decide
theorem rows4428 : actualRows4428=WordField.canonicalRows actualModulus 4428 (.bnot 4427) := by core033_kernel_decide
theorem stats4428 : actualRows4428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4428=6276 := by core033_kernel_decide
theorem rows4429 : actualRows4429=WordField.canonicalRows actualModulus 4429 (.bxor 4426 4428) := by core033_kernel_decide
theorem stats4429 : actualRows4429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4429=7428 := by core033_kernel_decide
theorem rows4430 : actualRows4430=WordField.canonicalRows actualModulus 4430 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4430 : actualRows4430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4430=2892 := by core033_kernel_decide
theorem rows4431 : actualRows4431=WordField.canonicalRows actualModulus 4431 (.bxor 616 4430) := by core033_kernel_decide
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
theorem rows4444 : actualRows4444=WordField.canonicalRows actualModulus 4444 (.band 4443 2103) := by core033_kernel_decide
theorem stats4444 : actualRows4444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4444=5124 := by core033_kernel_decide
theorem rows4445 : actualRows4445=WordField.canonicalRows actualModulus 4445 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4445 : actualRows4445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4445=2892 := by core033_kernel_decide
theorem rows4446 : actualRows4446=WordField.canonicalRows actualModulus 4446 (.bxor 616 4445) := by core033_kernel_decide
theorem stats4446 : actualRows4446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4446=7428 := by core033_kernel_decide
theorem rows4447 : actualRows4447=WordField.canonicalRows actualModulus 4447 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4447 : actualRows4447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4447=2820 := by core033_kernel_decide
def partRows67 : List R1CS.Row := actualRows4384++actualRows4385++actualRows4386++actualRows4387++actualRows4388++actualRows4389++actualRows4390++actualRows4391++actualRows4392++actualRows4393++actualRows4394++actualRows4395++actualRows4396++actualRows4397++actualRows4398++actualRows4399++actualRows4400++actualRows4401++actualRows4402++actualRows4403++actualRows4404++actualRows4405++actualRows4406++actualRows4407++actualRows4408++actualRows4409++actualRows4410++actualRows4411++actualRows4412++actualRows4413++actualRows4414++actualRows4415++actualRows4416++actualRows4417++actualRows4418++actualRows4419++actualRows4420++actualRows4421++actualRows4422++actualRows4423++actualRows4424++actualRows4425++actualRows4426++actualRows4427++actualRows4428++actualRows4429++actualRows4430++actualRows4431++actualRows4432++actualRows4433++actualRows4434++actualRows4435++actualRows4436++actualRows4437++actualRows4438++actualRows4439++actualRows4440++actualRows4441++actualRows4442++actualRows4443++actualRows4444++actualRows4445++actualRows4446++actualRows4447
def partOps67 : List WordIR.Op := [.band 4377 4383,.bxor 4372 4384,.shr 4385 31,.literal (BitVec.ofNat 32 1),.bxor 4386 4387,.bnot 4388,.literal (BitVec.ofNat 32 1),.badd 4389 4390,.band 4391 2100,.literal (BitVec.ofNat 32 2),.bxor 616 4393,.literal (BitVec.ofNat 32 0),.bnot 4395,.band 4394 4396,.literal (BitVec.ofNat 32 2),.bxor 616 4398,.literal (BitVec.ofNat 32 0),.bnot 4400,.bxor 4399 4401,.literal (BitVec.ofNat 32 2),.bxor 616 4403,.literal (BitVec.ofNat 32 0),.bnot 4405,.badd 4404 4406,.bnot 4407,.band 4402 4408,.bxor 4397 4409,.shr 4410 31,.literal (BitVec.ofNat 32 1),.bxor 4411 4412,.bnot 4413,.literal (BitVec.ofNat 32 1),.badd 4414 4415,.bnot 4416,.band 4417 1908,.bxor 4392 4418,.literal (BitVec.ofNat 32 2),.bxor 616 4420,.literal (BitVec.ofNat 32 0),.bnot 4422,.band 4421 4423,.literal (BitVec.ofNat 32 2),.bxor 616 4425,.literal (BitVec.ofNat 32 0),.bnot 4427,.bxor 4426 4428,.literal (BitVec.ofNat 32 2),.bxor 616 4430,.literal (BitVec.ofNat 32 0),.bnot 4432,.badd 4431 4433,.bnot 4434,.band 4429 4435,.bxor 4424 4436,.shr 4437 31,.literal (BitVec.ofNat 32 1),.bxor 4438 4439,.bnot 4440,.literal (BitVec.ofNat 32 1),.badd 4441 4442,.band 4443 2103,.literal (BitVec.ofNat 32 2),.bxor 616 4445,.literal (BitVec.ofNat 32 0)]
theorem partExact67 : partRows67=WordField.rows actualModulus 4384 partOps67 := by
  simp only [partRows67,partOps67,WordField.rows,rows4384,rows4385,rows4386,rows4387,rows4388,rows4389,rows4390,rows4391,rows4392,rows4393,rows4394,rows4395,rows4396,rows4397,rows4398,rows4399,rows4400,rows4401,rows4402,rows4403,rows4404,rows4405,rows4406,rows4407,rows4408,rows4409,rows4410,rows4411,rows4412,rows4413,rows4414,rows4415,rows4416,rows4417,rows4418,rows4419,rows4420,rows4421,rows4422,rows4423,rows4424,rows4425,rows4426,rows4427,rows4428,rows4429,rows4430,rows4431,rows4432,rows4433,rows4434,rows4435,rows4436,rows4437,rows4438,rows4439,rows4440,rows4441,rows4442,rows4443,rows4444,rows4445,rows4446,rows4447,List.append_assoc,List.append_nil]
theorem partLength67 : partOps67.length=64 := by decide
theorem partStats67 : partRows67.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows67=328104 := by
  simp only [partRows67,List.length_append,MatrixRowBlocks.rows_weight_append,stats4384.1,stats4384.2,stats4385.1,stats4385.2,stats4386.1,stats4386.2,stats4387.1,stats4387.2,stats4388.1,stats4388.2,stats4389.1,stats4389.2,stats4390.1,stats4390.2,stats4391.1,stats4391.2,stats4392.1,stats4392.2,stats4393.1,stats4393.2,stats4394.1,stats4394.2,stats4395.1,stats4395.2,stats4396.1,stats4396.2,stats4397.1,stats4397.2,stats4398.1,stats4398.2,stats4399.1,stats4399.2,stats4400.1,stats4400.2,stats4401.1,stats4401.2,stats4402.1,stats4402.2,stats4403.1,stats4403.2,stats4404.1,stats4404.2,stats4405.1,stats4405.2,stats4406.1,stats4406.2,stats4407.1,stats4407.2,stats4408.1,stats4408.2,stats4409.1,stats4409.2,stats4410.1,stats4410.2,stats4411.1,stats4411.2,stats4412.1,stats4412.2,stats4413.1,stats4413.2,stats4414.1,stats4414.2,stats4415.1,stats4415.2,stats4416.1,stats4416.2,stats4417.1,stats4417.2,stats4418.1,stats4418.2,stats4419.1,stats4419.2,stats4420.1,stats4420.2,stats4421.1,stats4421.2,stats4422.1,stats4422.2,stats4423.1,stats4423.2,stats4424.1,stats4424.2,stats4425.1,stats4425.2,stats4426.1,stats4426.2,stats4427.1,stats4427.2,stats4428.1,stats4428.2,stats4429.1,stats4429.2,stats4430.1,stats4430.2,stats4431.1,stats4431.2,stats4432.1,stats4432.2,stats4433.1,stats4433.2,stats4434.1,stats4434.2,stats4435.1,stats4435.2,stats4436.1,stats4436.2,stats4437.1,stats4437.2,stats4438.1,stats4438.2,stats4439.1,stats4439.2,stats4440.1,stats4440.2,stats4441.1,stats4441.2,stats4442.1,stats4442.2,stats4443.1,stats4443.2,stats4444.1,stats4444.2,stats4445.1,stats4445.2,stats4446.1,stats4446.2,stats4447.1,stats4447.2]
  decide
end PairedPathRoundCheckedRows
