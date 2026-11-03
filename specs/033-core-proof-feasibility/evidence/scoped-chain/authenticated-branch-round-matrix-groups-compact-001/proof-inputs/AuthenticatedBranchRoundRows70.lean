import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData71
import AuthenticatedBranchRoundInstructionMatrixData72
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4598 : actualRows4598=WordField.canonicalRows actualModulus 4598 (.bnot 4597) := by core033_kernel_decide
theorem stats4598 : actualRows4598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4598=6276 := by core033_kernel_decide
theorem rows4599 : actualRows4599=WordField.canonicalRows actualModulus 4599 (.band 4592 4598) := by core033_kernel_decide
theorem stats4599 : actualRows4599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4599=5124 := by core033_kernel_decide
theorem rows4600 : actualRows4600=WordField.canonicalRows actualModulus 4600 (.bxor 4587 4599) := by core033_kernel_decide
theorem stats4600 : actualRows4600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4600=7428 := by core033_kernel_decide
theorem rows4601 : actualRows4601=WordField.canonicalRows actualModulus 4601 (.shr 4600 31) := by core033_kernel_decide
theorem stats4601 : actualRows4601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4601=2892 := by core033_kernel_decide
theorem rows4602 : actualRows4602=WordField.canonicalRows actualModulus 4602 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4602 : actualRows4602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4602=2892 := by core033_kernel_decide
theorem rows4603 : actualRows4603=WordField.canonicalRows actualModulus 4603 (.bxor 4601 4602) := by core033_kernel_decide
theorem stats4603 : actualRows4603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4603=7428 := by core033_kernel_decide
theorem rows4604 : actualRows4604=WordField.canonicalRows actualModulus 4604 (.bnot 4603) := by core033_kernel_decide
theorem stats4604 : actualRows4604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4604=6276 := by core033_kernel_decide
theorem rows4605 : actualRows4605=WordField.canonicalRows actualModulus 4605 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4605 : actualRows4605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4605=2892 := by core033_kernel_decide
theorem rows4606 : actualRows4606=WordField.canonicalRows actualModulus 4606 (.badd 4604 4605) := by core033_kernel_decide
theorem stats4606 : actualRows4606.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4606=5388 := by core033_kernel_decide
theorem rows4607 : actualRows4607=WordField.canonicalRows actualModulus 4607 (.band 4606 2756) := by core033_kernel_decide
theorem stats4607 : actualRows4607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4607=5124 := by core033_kernel_decide
theorem rows4608 : actualRows4608=WordField.canonicalRows actualModulus 4608 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4608 : actualRows4608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4608=2892 := by core033_kernel_decide
theorem rows4609 : actualRows4609=WordField.canonicalRows actualModulus 4609 (.bxor 1299 4608) := by core033_kernel_decide
theorem stats4609 : actualRows4609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4609=7428 := by core033_kernel_decide
theorem rows4610 : actualRows4610=WordField.canonicalRows actualModulus 4610 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4610 : actualRows4610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4610=2820 := by core033_kernel_decide
theorem rows4611 : actualRows4611=WordField.canonicalRows actualModulus 4611 (.bnot 4610) := by core033_kernel_decide
theorem stats4611 : actualRows4611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4611=6276 := by core033_kernel_decide
theorem rows4612 : actualRows4612=WordField.canonicalRows actualModulus 4612 (.band 4609 4611) := by core033_kernel_decide
theorem stats4612 : actualRows4612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4612=5124 := by core033_kernel_decide
theorem rows4613 : actualRows4613=WordField.canonicalRows actualModulus 4613 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4613 : actualRows4613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4613=2892 := by core033_kernel_decide
theorem rows4614 : actualRows4614=WordField.canonicalRows actualModulus 4614 (.bxor 1299 4613) := by core033_kernel_decide
theorem stats4614 : actualRows4614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4614=7428 := by core033_kernel_decide
theorem rows4615 : actualRows4615=WordField.canonicalRows actualModulus 4615 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4615 : actualRows4615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4615=2820 := by core033_kernel_decide
theorem rows4616 : actualRows4616=WordField.canonicalRows actualModulus 4616 (.bnot 4615) := by core033_kernel_decide
theorem stats4616 : actualRows4616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4616=6276 := by core033_kernel_decide
theorem rows4617 : actualRows4617=WordField.canonicalRows actualModulus 4617 (.bxor 4614 4616) := by core033_kernel_decide
theorem stats4617 : actualRows4617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4617=7428 := by core033_kernel_decide
theorem rows4618 : actualRows4618=WordField.canonicalRows actualModulus 4618 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4618 : actualRows4618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4618=2892 := by core033_kernel_decide
theorem rows4619 : actualRows4619=WordField.canonicalRows actualModulus 4619 (.bxor 1299 4618) := by core033_kernel_decide
theorem stats4619 : actualRows4619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4619=7428 := by core033_kernel_decide
theorem rows4620 : actualRows4620=WordField.canonicalRows actualModulus 4620 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4620 : actualRows4620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4620=2820 := by core033_kernel_decide
theorem rows4621 : actualRows4621=WordField.canonicalRows actualModulus 4621 (.bnot 4620) := by core033_kernel_decide
theorem stats4621 : actualRows4621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4621=6276 := by core033_kernel_decide
theorem rows4622 : actualRows4622=WordField.canonicalRows actualModulus 4622 (.badd 4619 4621) := by core033_kernel_decide
theorem stats4622 : actualRows4622.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4622=5388 := by core033_kernel_decide
theorem rows4623 : actualRows4623=WordField.canonicalRows actualModulus 4623 (.bnot 4622) := by core033_kernel_decide
theorem stats4623 : actualRows4623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4623=6276 := by core033_kernel_decide
theorem rows4624 : actualRows4624=WordField.canonicalRows actualModulus 4624 (.band 4617 4623) := by core033_kernel_decide
theorem stats4624 : actualRows4624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4624=5124 := by core033_kernel_decide
theorem rows4625 : actualRows4625=WordField.canonicalRows actualModulus 4625 (.bxor 4612 4624) := by core033_kernel_decide
theorem stats4625 : actualRows4625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4625=7428 := by core033_kernel_decide
theorem rows4626 : actualRows4626=WordField.canonicalRows actualModulus 4626 (.shr 4625 31) := by core033_kernel_decide
theorem stats4626 : actualRows4626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4626=2892 := by core033_kernel_decide
theorem rows4627 : actualRows4627=WordField.canonicalRows actualModulus 4627 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4627 : actualRows4627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4627=2892 := by core033_kernel_decide
theorem rows4628 : actualRows4628=WordField.canonicalRows actualModulus 4628 (.bxor 4626 4627) := by core033_kernel_decide
theorem stats4628 : actualRows4628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4628=7428 := by core033_kernel_decide
theorem rows4629 : actualRows4629=WordField.canonicalRows actualModulus 4629 (.bnot 4628) := by core033_kernel_decide
theorem stats4629 : actualRows4629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4629=6276 := by core033_kernel_decide
theorem rows4630 : actualRows4630=WordField.canonicalRows actualModulus 4630 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4630 : actualRows4630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4630=2892 := by core033_kernel_decide
theorem rows4631 : actualRows4631=WordField.canonicalRows actualModulus 4631 (.badd 4629 4630) := by core033_kernel_decide
theorem stats4631 : actualRows4631.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4631=5388 := by core033_kernel_decide
theorem rows4632 : actualRows4632=WordField.canonicalRows actualModulus 4632 (.bnot 4631) := by core033_kernel_decide
theorem stats4632 : actualRows4632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4632=6276 := by core033_kernel_decide
theorem rows4633 : actualRows4633=WordField.canonicalRows actualModulus 4633 (.band 4632 2566) := by core033_kernel_decide
theorem stats4633 : actualRows4633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4633=5124 := by core033_kernel_decide
theorem rows4634 : actualRows4634=WordField.canonicalRows actualModulus 4634 (.bxor 4607 4633) := by core033_kernel_decide
theorem stats4634 : actualRows4634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4634=7428 := by core033_kernel_decide
theorem rows4635 : actualRows4635=WordField.canonicalRows actualModulus 4635 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4635 : actualRows4635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4635=2892 := by core033_kernel_decide
theorem rows4636 : actualRows4636=WordField.canonicalRows actualModulus 4636 (.bxor 1299 4635) := by core033_kernel_decide
theorem stats4636 : actualRows4636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4636=7428 := by core033_kernel_decide
theorem rows4637 : actualRows4637=WordField.canonicalRows actualModulus 4637 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4637 : actualRows4637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4637=2820 := by core033_kernel_decide
theorem rows4638 : actualRows4638=WordField.canonicalRows actualModulus 4638 (.bnot 4637) := by core033_kernel_decide
theorem stats4638 : actualRows4638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4638=6276 := by core033_kernel_decide
theorem rows4639 : actualRows4639=WordField.canonicalRows actualModulus 4639 (.band 4636 4638) := by core033_kernel_decide
theorem stats4639 : actualRows4639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4639=5124 := by core033_kernel_decide
theorem rows4640 : actualRows4640=WordField.canonicalRows actualModulus 4640 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4640 : actualRows4640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4640=2892 := by core033_kernel_decide
theorem rows4641 : actualRows4641=WordField.canonicalRows actualModulus 4641 (.bxor 1299 4640) := by core033_kernel_decide
theorem stats4641 : actualRows4641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4641=7428 := by core033_kernel_decide
theorem rows4642 : actualRows4642=WordField.canonicalRows actualModulus 4642 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4642 : actualRows4642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4642=2820 := by core033_kernel_decide
theorem rows4643 : actualRows4643=WordField.canonicalRows actualModulus 4643 (.bnot 4642) := by core033_kernel_decide
theorem stats4643 : actualRows4643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4643=6276 := by core033_kernel_decide
theorem rows4644 : actualRows4644=WordField.canonicalRows actualModulus 4644 (.bxor 4641 4643) := by core033_kernel_decide
theorem stats4644 : actualRows4644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4644=7428 := by core033_kernel_decide
theorem rows4645 : actualRows4645=WordField.canonicalRows actualModulus 4645 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4645 : actualRows4645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4645=2892 := by core033_kernel_decide
theorem rows4646 : actualRows4646=WordField.canonicalRows actualModulus 4646 (.bxor 1299 4645) := by core033_kernel_decide
theorem stats4646 : actualRows4646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4646=7428 := by core033_kernel_decide
theorem rows4647 : actualRows4647=WordField.canonicalRows actualModulus 4647 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4647 : actualRows4647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4647=2820 := by core033_kernel_decide
theorem rows4648 : actualRows4648=WordField.canonicalRows actualModulus 4648 (.bnot 4647) := by core033_kernel_decide
theorem stats4648 : actualRows4648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4648=6276 := by core033_kernel_decide
theorem rows4649 : actualRows4649=WordField.canonicalRows actualModulus 4649 (.badd 4646 4648) := by core033_kernel_decide
theorem stats4649 : actualRows4649.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4649=5388 := by core033_kernel_decide
theorem rows4650 : actualRows4650=WordField.canonicalRows actualModulus 4650 (.bnot 4649) := by core033_kernel_decide
theorem stats4650 : actualRows4650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4650=6276 := by core033_kernel_decide
theorem rows4651 : actualRows4651=WordField.canonicalRows actualModulus 4651 (.band 4644 4650) := by core033_kernel_decide
theorem stats4651 : actualRows4651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4651=5124 := by core033_kernel_decide
theorem rows4652 : actualRows4652=WordField.canonicalRows actualModulus 4652 (.bxor 4639 4651) := by core033_kernel_decide
theorem stats4652 : actualRows4652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4652=7428 := by core033_kernel_decide
theorem rows4653 : actualRows4653=WordField.canonicalRows actualModulus 4653 (.shr 4652 31) := by core033_kernel_decide
theorem stats4653 : actualRows4653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4653=2892 := by core033_kernel_decide
theorem rows4654 : actualRows4654=WordField.canonicalRows actualModulus 4654 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4654 : actualRows4654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4654=2892 := by core033_kernel_decide
theorem rows4655 : actualRows4655=WordField.canonicalRows actualModulus 4655 (.bxor 4653 4654) := by core033_kernel_decide
theorem stats4655 : actualRows4655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4655=7428 := by core033_kernel_decide
theorem rows4656 : actualRows4656=WordField.canonicalRows actualModulus 4656 (.bnot 4655) := by core033_kernel_decide
theorem stats4656 : actualRows4656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4656=6276 := by core033_kernel_decide
theorem rows4657 : actualRows4657=WordField.canonicalRows actualModulus 4657 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4657 : actualRows4657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4657=2892 := by core033_kernel_decide
theorem rows4658 : actualRows4658=WordField.canonicalRows actualModulus 4658 (.badd 4656 4657) := by core033_kernel_decide
theorem stats4658 : actualRows4658.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4658=5388 := by core033_kernel_decide
theorem rows4659 : actualRows4659=WordField.canonicalRows actualModulus 4659 (.band 4658 2759) := by core033_kernel_decide
theorem stats4659 : actualRows4659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4659=5124 := by core033_kernel_decide
theorem rows4660 : actualRows4660=WordField.canonicalRows actualModulus 4660 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4660 : actualRows4660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4660=2892 := by core033_kernel_decide
theorem rows4661 : actualRows4661=WordField.canonicalRows actualModulus 4661 (.bxor 1299 4660) := by core033_kernel_decide
theorem stats4661 : actualRows4661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4661=7428 := by core033_kernel_decide
def partRows70 : List R1CS.Row := actualRows4598++actualRows4599++actualRows4600++actualRows4601++actualRows4602++actualRows4603++actualRows4604++actualRows4605++actualRows4606++actualRows4607++actualRows4608++actualRows4609++actualRows4610++actualRows4611++actualRows4612++actualRows4613++actualRows4614++actualRows4615++actualRows4616++actualRows4617++actualRows4618++actualRows4619++actualRows4620++actualRows4621++actualRows4622++actualRows4623++actualRows4624++actualRows4625++actualRows4626++actualRows4627++actualRows4628++actualRows4629++actualRows4630++actualRows4631++actualRows4632++actualRows4633++actualRows4634++actualRows4635++actualRows4636++actualRows4637++actualRows4638++actualRows4639++actualRows4640++actualRows4641++actualRows4642++actualRows4643++actualRows4644++actualRows4645++actualRows4646++actualRows4647++actualRows4648++actualRows4649++actualRows4650++actualRows4651++actualRows4652++actualRows4653++actualRows4654++actualRows4655++actualRows4656++actualRows4657++actualRows4658++actualRows4659++actualRows4660++actualRows4661
def partOps70 : List WordIR.Op := [.bnot 4597,.band 4592 4598,.bxor 4587 4599,.shr 4600 31,.literal (BitVec.ofNat 32 1),.bxor 4601 4602,.bnot 4603,.literal (BitVec.ofNat 32 1),.badd 4604 4605,.band 4606 2756,.literal (BitVec.ofNat 32 2),.bxor 1299 4608,.literal (BitVec.ofNat 32 0),.bnot 4610,.band 4609 4611,.literal (BitVec.ofNat 32 2),.bxor 1299 4613,.literal (BitVec.ofNat 32 0),.bnot 4615,.bxor 4614 4616,.literal (BitVec.ofNat 32 2),.bxor 1299 4618,.literal (BitVec.ofNat 32 0),.bnot 4620,.badd 4619 4621,.bnot 4622,.band 4617 4623,.bxor 4612 4624,.shr 4625 31,.literal (BitVec.ofNat 32 1),.bxor 4626 4627,.bnot 4628,.literal (BitVec.ofNat 32 1),.badd 4629 4630,.bnot 4631,.band 4632 2566,.bxor 4607 4633,.literal (BitVec.ofNat 32 2),.bxor 1299 4635,.literal (BitVec.ofNat 32 0),.bnot 4637,.band 4636 4638,.literal (BitVec.ofNat 32 2),.bxor 1299 4640,.literal (BitVec.ofNat 32 0),.bnot 4642,.bxor 4641 4643,.literal (BitVec.ofNat 32 2),.bxor 1299 4645,.literal (BitVec.ofNat 32 0),.bnot 4647,.badd 4646 4648,.bnot 4649,.band 4644 4650,.bxor 4639 4651,.shr 4652 31,.literal (BitVec.ofNat 32 1),.bxor 4653 4654,.bnot 4655,.literal (BitVec.ofNat 32 1),.badd 4656 4657,.band 4658 2759,.literal (BitVec.ofNat 32 2),.bxor 1299 4660]
theorem partExact70 : partRows70=WordField.rows actualModulus 4598 partOps70 := by
  simp only [partRows70,partOps70,WordField.rows,rows4598,rows4599,rows4600,rows4601,rows4602,rows4603,rows4604,rows4605,rows4606,rows4607,rows4608,rows4609,rows4610,rows4611,rows4612,rows4613,rows4614,rows4615,rows4616,rows4617,rows4618,rows4619,rows4620,rows4621,rows4622,rows4623,rows4624,rows4625,rows4626,rows4627,rows4628,rows4629,rows4630,rows4631,rows4632,rows4633,rows4634,rows4635,rows4636,rows4637,rows4638,rows4639,rows4640,rows4641,rows4642,rows4643,rows4644,rows4645,rows4646,rows4647,rows4648,rows4649,rows4650,rows4651,rows4652,rows4653,rows4654,rows4655,rows4656,rows4657,rows4658,rows4659,rows4660,rows4661,List.append_assoc,List.append_nil]
theorem partLength70 : partOps70.length=64 := by decide
theorem partStats70 : partRows70.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows70=331560 := by
  simp only [partRows70,List.length_append,MatrixRowBlocks.rows_weight_append,stats4598.1,stats4598.2,stats4599.1,stats4599.2,stats4600.1,stats4600.2,stats4601.1,stats4601.2,stats4602.1,stats4602.2,stats4603.1,stats4603.2,stats4604.1,stats4604.2,stats4605.1,stats4605.2,stats4606.1,stats4606.2,stats4607.1,stats4607.2,stats4608.1,stats4608.2,stats4609.1,stats4609.2,stats4610.1,stats4610.2,stats4611.1,stats4611.2,stats4612.1,stats4612.2,stats4613.1,stats4613.2,stats4614.1,stats4614.2,stats4615.1,stats4615.2,stats4616.1,stats4616.2,stats4617.1,stats4617.2,stats4618.1,stats4618.2,stats4619.1,stats4619.2,stats4620.1,stats4620.2,stats4621.1,stats4621.2,stats4622.1,stats4622.2,stats4623.1,stats4623.2,stats4624.1,stats4624.2,stats4625.1,stats4625.2,stats4626.1,stats4626.2,stats4627.1,stats4627.2,stats4628.1,stats4628.2,stats4629.1,stats4629.2,stats4630.1,stats4630.2,stats4631.1,stats4631.2,stats4632.1,stats4632.2,stats4633.1,stats4633.2,stats4634.1,stats4634.2,stats4635.1,stats4635.2,stats4636.1,stats4636.2,stats4637.1,stats4637.2,stats4638.1,stats4638.2,stats4639.1,stats4639.2,stats4640.1,stats4640.2,stats4641.1,stats4641.2,stats4642.1,stats4642.2,stats4643.1,stats4643.2,stats4644.1,stats4644.2,stats4645.1,stats4645.2,stats4646.1,stats4646.2,stats4647.1,stats4647.2,stats4648.1,stats4648.2,stats4649.1,stats4649.2,stats4650.1,stats4650.2,stats4651.1,stats4651.2,stats4652.1,stats4652.2,stats4653.1,stats4653.2,stats4654.1,stats4654.2,stats4655.1,stats4655.2,stats4656.1,stats4656.2,stats4657.1,stats4657.2,stats4658.1,stats4658.2,stats4659.1,stats4659.2,stats4660.1,stats4660.2,stats4661.1,stats4661.2]
  decide
end AuthenticatedBranchRoundCheckedRows
