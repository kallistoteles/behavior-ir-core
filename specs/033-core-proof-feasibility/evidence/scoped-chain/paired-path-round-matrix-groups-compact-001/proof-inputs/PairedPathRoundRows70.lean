import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData71
import PairedPathRoundInstructionMatrixData72
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4576 : actualRows4576=WordField.canonicalRows actualModulus 4576 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4576 : actualRows4576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4576=2892 := by core033_kernel_decide
theorem rows4577 : actualRows4577=WordField.canonicalRows actualModulus 4577 (.bxor 616 4576) := by core033_kernel_decide
theorem stats4577 : actualRows4577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4577=7428 := by core033_kernel_decide
theorem rows4578 : actualRows4578=WordField.canonicalRows actualModulus 4578 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4578 : actualRows4578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4578=2820 := by core033_kernel_decide
theorem rows4579 : actualRows4579=WordField.canonicalRows actualModulus 4579 (.bnot 4578) := by core033_kernel_decide
theorem stats4579 : actualRows4579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4579=6276 := by core033_kernel_decide
theorem rows4580 : actualRows4580=WordField.canonicalRows actualModulus 4580 (.band 4577 4579) := by core033_kernel_decide
theorem stats4580 : actualRows4580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4580=5124 := by core033_kernel_decide
theorem rows4581 : actualRows4581=WordField.canonicalRows actualModulus 4581 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4581 : actualRows4581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4581=2892 := by core033_kernel_decide
theorem rows4582 : actualRows4582=WordField.canonicalRows actualModulus 4582 (.bxor 616 4581) := by core033_kernel_decide
theorem stats4582 : actualRows4582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4582=7428 := by core033_kernel_decide
theorem rows4583 : actualRows4583=WordField.canonicalRows actualModulus 4583 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4583 : actualRows4583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4583=2820 := by core033_kernel_decide
theorem rows4584 : actualRows4584=WordField.canonicalRows actualModulus 4584 (.bnot 4583) := by core033_kernel_decide
theorem stats4584 : actualRows4584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4584=6276 := by core033_kernel_decide
theorem rows4585 : actualRows4585=WordField.canonicalRows actualModulus 4585 (.bxor 4582 4584) := by core033_kernel_decide
theorem stats4585 : actualRows4585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4585=7428 := by core033_kernel_decide
theorem rows4586 : actualRows4586=WordField.canonicalRows actualModulus 4586 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4586 : actualRows4586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4586=2892 := by core033_kernel_decide
theorem rows4587 : actualRows4587=WordField.canonicalRows actualModulus 4587 (.bxor 616 4586) := by core033_kernel_decide
theorem stats4587 : actualRows4587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4587=7428 := by core033_kernel_decide
theorem rows4588 : actualRows4588=WordField.canonicalRows actualModulus 4588 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4588 : actualRows4588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4588=2820 := by core033_kernel_decide
theorem rows4589 : actualRows4589=WordField.canonicalRows actualModulus 4589 (.bnot 4588) := by core033_kernel_decide
theorem stats4589 : actualRows4589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4589=6276 := by core033_kernel_decide
theorem rows4590 : actualRows4590=WordField.canonicalRows actualModulus 4590 (.badd 4587 4589) := by core033_kernel_decide
theorem stats4590 : actualRows4590.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4590=5388 := by core033_kernel_decide
theorem rows4591 : actualRows4591=WordField.canonicalRows actualModulus 4591 (.bnot 4590) := by core033_kernel_decide
theorem stats4591 : actualRows4591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4591=6276 := by core033_kernel_decide
theorem rows4592 : actualRows4592=WordField.canonicalRows actualModulus 4592 (.band 4585 4591) := by core033_kernel_decide
theorem stats4592 : actualRows4592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4592=5124 := by core033_kernel_decide
theorem rows4593 : actualRows4593=WordField.canonicalRows actualModulus 4593 (.bxor 4580 4592) := by core033_kernel_decide
theorem stats4593 : actualRows4593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4593=7428 := by core033_kernel_decide
theorem rows4594 : actualRows4594=WordField.canonicalRows actualModulus 4594 (.shr 4593 31) := by core033_kernel_decide
theorem stats4594 : actualRows4594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4594=2892 := by core033_kernel_decide
theorem rows4595 : actualRows4595=WordField.canonicalRows actualModulus 4595 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4595 : actualRows4595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4595=2892 := by core033_kernel_decide
theorem rows4596 : actualRows4596=WordField.canonicalRows actualModulus 4596 (.bxor 4594 4595) := by core033_kernel_decide
theorem stats4596 : actualRows4596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4596=7428 := by core033_kernel_decide
theorem rows4597 : actualRows4597=WordField.canonicalRows actualModulus 4597 (.bnot 4596) := by core033_kernel_decide
theorem stats4597 : actualRows4597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4597=6276 := by core033_kernel_decide
theorem rows4598 : actualRows4598=WordField.canonicalRows actualModulus 4598 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4598 : actualRows4598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4598=2892 := by core033_kernel_decide
theorem rows4599 : actualRows4599=WordField.canonicalRows actualModulus 4599 (.badd 4597 4598) := by core033_kernel_decide
theorem stats4599 : actualRows4599.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4599=5388 := by core033_kernel_decide
theorem rows4600 : actualRows4600=WordField.canonicalRows actualModulus 4600 (.band 4599 2112) := by core033_kernel_decide
theorem stats4600 : actualRows4600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4600=5124 := by core033_kernel_decide
theorem rows4601 : actualRows4601=WordField.canonicalRows actualModulus 4601 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4601 : actualRows4601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4601=2892 := by core033_kernel_decide
theorem rows4602 : actualRows4602=WordField.canonicalRows actualModulus 4602 (.bxor 616 4601) := by core033_kernel_decide
theorem stats4602 : actualRows4602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4602=7428 := by core033_kernel_decide
theorem rows4603 : actualRows4603=WordField.canonicalRows actualModulus 4603 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4603 : actualRows4603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4603=2820 := by core033_kernel_decide
theorem rows4604 : actualRows4604=WordField.canonicalRows actualModulus 4604 (.bnot 4603) := by core033_kernel_decide
theorem stats4604 : actualRows4604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4604=6276 := by core033_kernel_decide
theorem rows4605 : actualRows4605=WordField.canonicalRows actualModulus 4605 (.band 4602 4604) := by core033_kernel_decide
theorem stats4605 : actualRows4605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4605=5124 := by core033_kernel_decide
theorem rows4606 : actualRows4606=WordField.canonicalRows actualModulus 4606 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4606 : actualRows4606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4606=2892 := by core033_kernel_decide
theorem rows4607 : actualRows4607=WordField.canonicalRows actualModulus 4607 (.bxor 616 4606) := by core033_kernel_decide
theorem stats4607 : actualRows4607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4607=7428 := by core033_kernel_decide
theorem rows4608 : actualRows4608=WordField.canonicalRows actualModulus 4608 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4608 : actualRows4608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4608=2820 := by core033_kernel_decide
theorem rows4609 : actualRows4609=WordField.canonicalRows actualModulus 4609 (.bnot 4608) := by core033_kernel_decide
theorem stats4609 : actualRows4609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4609=6276 := by core033_kernel_decide
theorem rows4610 : actualRows4610=WordField.canonicalRows actualModulus 4610 (.bxor 4607 4609) := by core033_kernel_decide
theorem stats4610 : actualRows4610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4610=7428 := by core033_kernel_decide
theorem rows4611 : actualRows4611=WordField.canonicalRows actualModulus 4611 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4611 : actualRows4611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4611=2892 := by core033_kernel_decide
theorem rows4612 : actualRows4612=WordField.canonicalRows actualModulus 4612 (.bxor 616 4611) := by core033_kernel_decide
theorem stats4612 : actualRows4612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4612=7428 := by core033_kernel_decide
theorem rows4613 : actualRows4613=WordField.canonicalRows actualModulus 4613 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4613 : actualRows4613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4613=2820 := by core033_kernel_decide
theorem rows4614 : actualRows4614=WordField.canonicalRows actualModulus 4614 (.bnot 4613) := by core033_kernel_decide
theorem stats4614 : actualRows4614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4614=6276 := by core033_kernel_decide
theorem rows4615 : actualRows4615=WordField.canonicalRows actualModulus 4615 (.badd 4612 4614) := by core033_kernel_decide
theorem stats4615 : actualRows4615.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4615=5388 := by core033_kernel_decide
theorem rows4616 : actualRows4616=WordField.canonicalRows actualModulus 4616 (.bnot 4615) := by core033_kernel_decide
theorem stats4616 : actualRows4616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4616=6276 := by core033_kernel_decide
theorem rows4617 : actualRows4617=WordField.canonicalRows actualModulus 4617 (.band 4610 4616) := by core033_kernel_decide
theorem stats4617 : actualRows4617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4617=5124 := by core033_kernel_decide
theorem rows4618 : actualRows4618=WordField.canonicalRows actualModulus 4618 (.bxor 4605 4617) := by core033_kernel_decide
theorem stats4618 : actualRows4618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4618=7428 := by core033_kernel_decide
theorem rows4619 : actualRows4619=WordField.canonicalRows actualModulus 4619 (.shr 4618 31) := by core033_kernel_decide
theorem stats4619 : actualRows4619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4619=2892 := by core033_kernel_decide
theorem rows4620 : actualRows4620=WordField.canonicalRows actualModulus 4620 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4620 : actualRows4620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4620=2892 := by core033_kernel_decide
theorem rows4621 : actualRows4621=WordField.canonicalRows actualModulus 4621 (.bxor 4619 4620) := by core033_kernel_decide
theorem stats4621 : actualRows4621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4621=7428 := by core033_kernel_decide
theorem rows4622 : actualRows4622=WordField.canonicalRows actualModulus 4622 (.bnot 4621) := by core033_kernel_decide
theorem stats4622 : actualRows4622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4622=6276 := by core033_kernel_decide
theorem rows4623 : actualRows4623=WordField.canonicalRows actualModulus 4623 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4623 : actualRows4623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4623=2892 := by core033_kernel_decide
theorem rows4624 : actualRows4624=WordField.canonicalRows actualModulus 4624 (.badd 4622 4623) := by core033_kernel_decide
theorem stats4624 : actualRows4624.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4624=5388 := by core033_kernel_decide
theorem rows4625 : actualRows4625=WordField.canonicalRows actualModulus 4625 (.bnot 4624) := by core033_kernel_decide
theorem stats4625 : actualRows4625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4625=6276 := by core033_kernel_decide
theorem rows4626 : actualRows4626=WordField.canonicalRows actualModulus 4626 (.band 4625 1920) := by core033_kernel_decide
theorem stats4626 : actualRows4626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4626=5124 := by core033_kernel_decide
theorem rows4627 : actualRows4627=WordField.canonicalRows actualModulus 4627 (.bxor 4600 4626) := by core033_kernel_decide
theorem stats4627 : actualRows4627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4627=7428 := by core033_kernel_decide
theorem rows4628 : actualRows4628=WordField.canonicalRows actualModulus 4628 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4628 : actualRows4628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4628=2892 := by core033_kernel_decide
theorem rows4629 : actualRows4629=WordField.canonicalRows actualModulus 4629 (.bxor 616 4628) := by core033_kernel_decide
theorem stats4629 : actualRows4629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4629=7428 := by core033_kernel_decide
theorem rows4630 : actualRows4630=WordField.canonicalRows actualModulus 4630 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4630 : actualRows4630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4630=2820 := by core033_kernel_decide
theorem rows4631 : actualRows4631=WordField.canonicalRows actualModulus 4631 (.bnot 4630) := by core033_kernel_decide
theorem stats4631 : actualRows4631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4631=6276 := by core033_kernel_decide
theorem rows4632 : actualRows4632=WordField.canonicalRows actualModulus 4632 (.band 4629 4631) := by core033_kernel_decide
theorem stats4632 : actualRows4632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4632=5124 := by core033_kernel_decide
theorem rows4633 : actualRows4633=WordField.canonicalRows actualModulus 4633 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4633 : actualRows4633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4633=2892 := by core033_kernel_decide
theorem rows4634 : actualRows4634=WordField.canonicalRows actualModulus 4634 (.bxor 616 4633) := by core033_kernel_decide
theorem stats4634 : actualRows4634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4634=7428 := by core033_kernel_decide
theorem rows4635 : actualRows4635=WordField.canonicalRows actualModulus 4635 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4635 : actualRows4635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4635=2820 := by core033_kernel_decide
theorem rows4636 : actualRows4636=WordField.canonicalRows actualModulus 4636 (.bnot 4635) := by core033_kernel_decide
theorem stats4636 : actualRows4636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4636=6276 := by core033_kernel_decide
theorem rows4637 : actualRows4637=WordField.canonicalRows actualModulus 4637 (.bxor 4634 4636) := by core033_kernel_decide
theorem stats4637 : actualRows4637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4637=7428 := by core033_kernel_decide
theorem rows4638 : actualRows4638=WordField.canonicalRows actualModulus 4638 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4638 : actualRows4638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4638=2892 := by core033_kernel_decide
theorem rows4639 : actualRows4639=WordField.canonicalRows actualModulus 4639 (.bxor 616 4638) := by core033_kernel_decide
theorem stats4639 : actualRows4639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4639=7428 := by core033_kernel_decide
def partRows70 : List R1CS.Row := actualRows4576++actualRows4577++actualRows4578++actualRows4579++actualRows4580++actualRows4581++actualRows4582++actualRows4583++actualRows4584++actualRows4585++actualRows4586++actualRows4587++actualRows4588++actualRows4589++actualRows4590++actualRows4591++actualRows4592++actualRows4593++actualRows4594++actualRows4595++actualRows4596++actualRows4597++actualRows4598++actualRows4599++actualRows4600++actualRows4601++actualRows4602++actualRows4603++actualRows4604++actualRows4605++actualRows4606++actualRows4607++actualRows4608++actualRows4609++actualRows4610++actualRows4611++actualRows4612++actualRows4613++actualRows4614++actualRows4615++actualRows4616++actualRows4617++actualRows4618++actualRows4619++actualRows4620++actualRows4621++actualRows4622++actualRows4623++actualRows4624++actualRows4625++actualRows4626++actualRows4627++actualRows4628++actualRows4629++actualRows4630++actualRows4631++actualRows4632++actualRows4633++actualRows4634++actualRows4635++actualRows4636++actualRows4637++actualRows4638++actualRows4639
def partOps70 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 616 4576,.literal (BitVec.ofNat 32 0),.bnot 4578,.band 4577 4579,.literal (BitVec.ofNat 32 2),.bxor 616 4581,.literal (BitVec.ofNat 32 0),.bnot 4583,.bxor 4582 4584,.literal (BitVec.ofNat 32 2),.bxor 616 4586,.literal (BitVec.ofNat 32 0),.bnot 4588,.badd 4587 4589,.bnot 4590,.band 4585 4591,.bxor 4580 4592,.shr 4593 31,.literal (BitVec.ofNat 32 1),.bxor 4594 4595,.bnot 4596,.literal (BitVec.ofNat 32 1),.badd 4597 4598,.band 4599 2112,.literal (BitVec.ofNat 32 2),.bxor 616 4601,.literal (BitVec.ofNat 32 0),.bnot 4603,.band 4602 4604,.literal (BitVec.ofNat 32 2),.bxor 616 4606,.literal (BitVec.ofNat 32 0),.bnot 4608,.bxor 4607 4609,.literal (BitVec.ofNat 32 2),.bxor 616 4611,.literal (BitVec.ofNat 32 0),.bnot 4613,.badd 4612 4614,.bnot 4615,.band 4610 4616,.bxor 4605 4617,.shr 4618 31,.literal (BitVec.ofNat 32 1),.bxor 4619 4620,.bnot 4621,.literal (BitVec.ofNat 32 1),.badd 4622 4623,.bnot 4624,.band 4625 1920,.bxor 4600 4626,.literal (BitVec.ofNat 32 2),.bxor 616 4628,.literal (BitVec.ofNat 32 0),.bnot 4630,.band 4629 4631,.literal (BitVec.ofNat 32 2),.bxor 616 4633,.literal (BitVec.ofNat 32 0),.bnot 4635,.bxor 4634 4636,.literal (BitVec.ofNat 32 2),.bxor 616 4638]
theorem partExact70 : partRows70=WordField.rows actualModulus 4576 partOps70 := by
  simp only [partRows70,partOps70,WordField.rows,rows4576,rows4577,rows4578,rows4579,rows4580,rows4581,rows4582,rows4583,rows4584,rows4585,rows4586,rows4587,rows4588,rows4589,rows4590,rows4591,rows4592,rows4593,rows4594,rows4595,rows4596,rows4597,rows4598,rows4599,rows4600,rows4601,rows4602,rows4603,rows4604,rows4605,rows4606,rows4607,rows4608,rows4609,rows4610,rows4611,rows4612,rows4613,rows4614,rows4615,rows4616,rows4617,rows4618,rows4619,rows4620,rows4621,rows4622,rows4623,rows4624,rows4625,rows4626,rows4627,rows4628,rows4629,rows4630,rows4631,rows4632,rows4633,rows4634,rows4635,rows4636,rows4637,rows4638,rows4639,List.append_assoc,List.append_nil]
theorem partLength70 : partOps70.length=64 := by decide
theorem partStats70 : partRows70.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows70=331224 := by
  simp only [partRows70,List.length_append,MatrixRowBlocks.rows_weight_append,stats4576.1,stats4576.2,stats4577.1,stats4577.2,stats4578.1,stats4578.2,stats4579.1,stats4579.2,stats4580.1,stats4580.2,stats4581.1,stats4581.2,stats4582.1,stats4582.2,stats4583.1,stats4583.2,stats4584.1,stats4584.2,stats4585.1,stats4585.2,stats4586.1,stats4586.2,stats4587.1,stats4587.2,stats4588.1,stats4588.2,stats4589.1,stats4589.2,stats4590.1,stats4590.2,stats4591.1,stats4591.2,stats4592.1,stats4592.2,stats4593.1,stats4593.2,stats4594.1,stats4594.2,stats4595.1,stats4595.2,stats4596.1,stats4596.2,stats4597.1,stats4597.2,stats4598.1,stats4598.2,stats4599.1,stats4599.2,stats4600.1,stats4600.2,stats4601.1,stats4601.2,stats4602.1,stats4602.2,stats4603.1,stats4603.2,stats4604.1,stats4604.2,stats4605.1,stats4605.2,stats4606.1,stats4606.2,stats4607.1,stats4607.2,stats4608.1,stats4608.2,stats4609.1,stats4609.2,stats4610.1,stats4610.2,stats4611.1,stats4611.2,stats4612.1,stats4612.2,stats4613.1,stats4613.2,stats4614.1,stats4614.2,stats4615.1,stats4615.2,stats4616.1,stats4616.2,stats4617.1,stats4617.2,stats4618.1,stats4618.2,stats4619.1,stats4619.2,stats4620.1,stats4620.2,stats4621.1,stats4621.2,stats4622.1,stats4622.2,stats4623.1,stats4623.2,stats4624.1,stats4624.2,stats4625.1,stats4625.2,stats4626.1,stats4626.2,stats4627.1,stats4627.2,stats4628.1,stats4628.2,stats4629.1,stats4629.2,stats4630.1,stats4630.2,stats4631.1,stats4631.2,stats4632.1,stats4632.2,stats4633.1,stats4633.2,stats4634.1,stats4634.2,stats4635.1,stats4635.2,stats4636.1,stats4636.2,stats4637.1,stats4637.2,stats4638.1,stats4638.2,stats4639.1,stats4639.2]
  decide
end PairedPathRoundCheckedRows
