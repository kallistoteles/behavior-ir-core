import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData71
import FrameHashControllerInstructionMatrixData72
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4587 : actualRows4587=WordField.canonicalRows actualModulus 4587 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4587 : actualRows4587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4587=2892 := by core033_kernel_decide
theorem rows4588 : actualRows4588=WordField.canonicalRows actualModulus 4588 (.bxor 0 4587) := by core033_kernel_decide
theorem stats4588 : actualRows4588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4588=7428 := by core033_kernel_decide
theorem rows4589 : actualRows4589=WordField.canonicalRows actualModulus 4589 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4589 : actualRows4589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4589=2820 := by core033_kernel_decide
theorem rows4590 : actualRows4590=WordField.canonicalRows actualModulus 4590 (.bnot 4589) := by core033_kernel_decide
theorem stats4590 : actualRows4590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4590=6276 := by core033_kernel_decide
theorem rows4591 : actualRows4591=WordField.canonicalRows actualModulus 4591 (.bxor 4588 4590) := by core033_kernel_decide
theorem stats4591 : actualRows4591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4591=7428 := by core033_kernel_decide
theorem rows4592 : actualRows4592=WordField.canonicalRows actualModulus 4592 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4592 : actualRows4592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4592=2892 := by core033_kernel_decide
theorem rows4593 : actualRows4593=WordField.canonicalRows actualModulus 4593 (.bxor 0 4592) := by core033_kernel_decide
theorem stats4593 : actualRows4593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4593=7428 := by core033_kernel_decide
theorem rows4594 : actualRows4594=WordField.canonicalRows actualModulus 4594 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4594 : actualRows4594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4594=2820 := by core033_kernel_decide
theorem rows4595 : actualRows4595=WordField.canonicalRows actualModulus 4595 (.bnot 4594) := by core033_kernel_decide
theorem stats4595 : actualRows4595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4595=6276 := by core033_kernel_decide
theorem rows4596 : actualRows4596=WordField.canonicalRows actualModulus 4596 (.badd 4593 4595) := by core033_kernel_decide
theorem stats4596 : actualRows4596.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4596=5388 := by core033_kernel_decide
theorem rows4597 : actualRows4597=WordField.canonicalRows actualModulus 4597 (.bnot 4596) := by core033_kernel_decide
theorem stats4597 : actualRows4597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4597=6276 := by core033_kernel_decide
theorem rows4598 : actualRows4598=WordField.canonicalRows actualModulus 4598 (.band 4591 4597) := by core033_kernel_decide
theorem stats4598 : actualRows4598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4598=5124 := by core033_kernel_decide
theorem rows4599 : actualRows4599=WordField.canonicalRows actualModulus 4599 (.bxor 4586 4598) := by core033_kernel_decide
theorem stats4599 : actualRows4599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4599=7428 := by core033_kernel_decide
theorem rows4600 : actualRows4600=WordField.canonicalRows actualModulus 4600 (.shr 4599 31) := by core033_kernel_decide
theorem stats4600 : actualRows4600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4600=2892 := by core033_kernel_decide
theorem rows4601 : actualRows4601=WordField.canonicalRows actualModulus 4601 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4601 : actualRows4601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4601=2892 := by core033_kernel_decide
theorem rows4602 : actualRows4602=WordField.canonicalRows actualModulus 4602 (.bxor 4600 4601) := by core033_kernel_decide
theorem stats4602 : actualRows4602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4602=7428 := by core033_kernel_decide
theorem rows4603 : actualRows4603=WordField.canonicalRows actualModulus 4603 (.bnot 4602) := by core033_kernel_decide
theorem stats4603 : actualRows4603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4603=6276 := by core033_kernel_decide
theorem rows4604 : actualRows4604=WordField.canonicalRows actualModulus 4604 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4604 : actualRows4604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4604=2892 := by core033_kernel_decide
theorem rows4605 : actualRows4605=WordField.canonicalRows actualModulus 4605 (.badd 4603 4604) := by core033_kernel_decide
theorem stats4605 : actualRows4605.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4605=5388 := by core033_kernel_decide
theorem rows4606 : actualRows4606=WordField.canonicalRows actualModulus 4606 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4606 : actualRows4606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4606=2820 := by core033_kernel_decide
theorem rows4607 : actualRows4607=WordField.canonicalRows actualModulus 4607 (.band 4605 4606) := by core033_kernel_decide
theorem stats4607 : actualRows4607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4607=5124 := by core033_kernel_decide
theorem rows4608 : actualRows4608=WordField.canonicalRows actualModulus 4608 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4608 : actualRows4608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4608=2892 := by core033_kernel_decide
theorem rows4609 : actualRows4609=WordField.canonicalRows actualModulus 4609 (.bxor 0 4608) := by core033_kernel_decide
theorem stats4609 : actualRows4609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4609=7428 := by core033_kernel_decide
theorem rows4610 : actualRows4610=WordField.canonicalRows actualModulus 4610 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4610 : actualRows4610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4610=2820 := by core033_kernel_decide
theorem rows4611 : actualRows4611=WordField.canonicalRows actualModulus 4611 (.bnot 4610) := by core033_kernel_decide
theorem stats4611 : actualRows4611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4611=6276 := by core033_kernel_decide
theorem rows4612 : actualRows4612=WordField.canonicalRows actualModulus 4612 (.band 4609 4611) := by core033_kernel_decide
theorem stats4612 : actualRows4612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4612=5124 := by core033_kernel_decide
theorem rows4613 : actualRows4613=WordField.canonicalRows actualModulus 4613 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4613 : actualRows4613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4613=2892 := by core033_kernel_decide
theorem rows4614 : actualRows4614=WordField.canonicalRows actualModulus 4614 (.bxor 0 4613) := by core033_kernel_decide
theorem stats4614 : actualRows4614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4614=7428 := by core033_kernel_decide
theorem rows4615 : actualRows4615=WordField.canonicalRows actualModulus 4615 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4615 : actualRows4615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4615=2820 := by core033_kernel_decide
theorem rows4616 : actualRows4616=WordField.canonicalRows actualModulus 4616 (.bnot 4615) := by core033_kernel_decide
theorem stats4616 : actualRows4616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4616=6276 := by core033_kernel_decide
theorem rows4617 : actualRows4617=WordField.canonicalRows actualModulus 4617 (.bxor 4614 4616) := by core033_kernel_decide
theorem stats4617 : actualRows4617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4617=7428 := by core033_kernel_decide
theorem rows4618 : actualRows4618=WordField.canonicalRows actualModulus 4618 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4618 : actualRows4618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4618=2892 := by core033_kernel_decide
theorem rows4619 : actualRows4619=WordField.canonicalRows actualModulus 4619 (.bxor 0 4618) := by core033_kernel_decide
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
theorem rows4633 : actualRows4633=WordField.canonicalRows actualModulus 4633 (.band 4632 944) := by core033_kernel_decide
theorem stats4633 : actualRows4633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4633=5124 := by core033_kernel_decide
theorem rows4634 : actualRows4634=WordField.canonicalRows actualModulus 4634 (.bxor 4607 4633) := by core033_kernel_decide
theorem stats4634 : actualRows4634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4634=7428 := by core033_kernel_decide
theorem rows4635 : actualRows4635=WordField.canonicalRows actualModulus 4635 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4635 : actualRows4635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4635=2892 := by core033_kernel_decide
theorem rows4636 : actualRows4636=WordField.canonicalRows actualModulus 4636 (.bxor 0 4635) := by core033_kernel_decide
theorem stats4636 : actualRows4636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4636=7428 := by core033_kernel_decide
theorem rows4637 : actualRows4637=WordField.canonicalRows actualModulus 4637 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4637 : actualRows4637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4637=2820 := by core033_kernel_decide
theorem rows4638 : actualRows4638=WordField.canonicalRows actualModulus 4638 (.bnot 4637) := by core033_kernel_decide
theorem stats4638 : actualRows4638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4638=6276 := by core033_kernel_decide
theorem rows4639 : actualRows4639=WordField.canonicalRows actualModulus 4639 (.band 4636 4638) := by core033_kernel_decide
theorem stats4639 : actualRows4639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4639=5124 := by core033_kernel_decide
theorem rows4640 : actualRows4640=WordField.canonicalRows actualModulus 4640 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4640 : actualRows4640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4640=2892 := by core033_kernel_decide
theorem rows4641 : actualRows4641=WordField.canonicalRows actualModulus 4641 (.bxor 0 4640) := by core033_kernel_decide
theorem stats4641 : actualRows4641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4641=7428 := by core033_kernel_decide
theorem rows4642 : actualRows4642=WordField.canonicalRows actualModulus 4642 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4642 : actualRows4642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4642=2820 := by core033_kernel_decide
theorem rows4643 : actualRows4643=WordField.canonicalRows actualModulus 4643 (.bnot 4642) := by core033_kernel_decide
theorem stats4643 : actualRows4643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4643=6276 := by core033_kernel_decide
theorem rows4644 : actualRows4644=WordField.canonicalRows actualModulus 4644 (.bxor 4641 4643) := by core033_kernel_decide
theorem stats4644 : actualRows4644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4644=7428 := by core033_kernel_decide
theorem rows4645 : actualRows4645=WordField.canonicalRows actualModulus 4645 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4645 : actualRows4645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4645=2892 := by core033_kernel_decide
theorem rows4646 : actualRows4646=WordField.canonicalRows actualModulus 4646 (.bxor 0 4645) := by core033_kernel_decide
theorem stats4646 : actualRows4646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4646=7428 := by core033_kernel_decide
theorem rows4647 : actualRows4647=WordField.canonicalRows actualModulus 4647 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4647 : actualRows4647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4647=2820 := by core033_kernel_decide
theorem rows4648 : actualRows4648=WordField.canonicalRows actualModulus 4648 (.bnot 4647) := by core033_kernel_decide
theorem stats4648 : actualRows4648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4648=6276 := by core033_kernel_decide
theorem rows4649 : actualRows4649=WordField.canonicalRows actualModulus 4649 (.badd 4646 4648) := by core033_kernel_decide
theorem stats4649 : actualRows4649.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4649=5388 := by core033_kernel_decide
theorem rows4650 : actualRows4650=WordField.canonicalRows actualModulus 4650 (.bnot 4649) := by core033_kernel_decide
theorem stats4650 : actualRows4650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4650=6276 := by core033_kernel_decide
def partRows71 : List R1CS.Row := actualRows4587++actualRows4588++actualRows4589++actualRows4590++actualRows4591++actualRows4592++actualRows4593++actualRows4594++actualRows4595++actualRows4596++actualRows4597++actualRows4598++actualRows4599++actualRows4600++actualRows4601++actualRows4602++actualRows4603++actualRows4604++actualRows4605++actualRows4606++actualRows4607++actualRows4608++actualRows4609++actualRows4610++actualRows4611++actualRows4612++actualRows4613++actualRows4614++actualRows4615++actualRows4616++actualRows4617++actualRows4618++actualRows4619++actualRows4620++actualRows4621++actualRows4622++actualRows4623++actualRows4624++actualRows4625++actualRows4626++actualRows4627++actualRows4628++actualRows4629++actualRows4630++actualRows4631++actualRows4632++actualRows4633++actualRows4634++actualRows4635++actualRows4636++actualRows4637++actualRows4638++actualRows4639++actualRows4640++actualRows4641++actualRows4642++actualRows4643++actualRows4644++actualRows4645++actualRows4646++actualRows4647++actualRows4648++actualRows4649++actualRows4650
def partOps71 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 0 4587,.literal (BitVec.ofNat 32 0),.bnot 4589,.bxor 4588 4590,.literal (BitVec.ofNat 32 2),.bxor 0 4592,.literal (BitVec.ofNat 32 0),.bnot 4594,.badd 4593 4595,.bnot 4596,.band 4591 4597,.bxor 4586 4598,.shr 4599 31,.literal (BitVec.ofNat 32 1),.bxor 4600 4601,.bnot 4602,.literal (BitVec.ofNat 32 1),.badd 4603 4604,.literal (BitVec.ofNat 32 0),.band 4605 4606,.literal (BitVec.ofNat 32 2),.bxor 0 4608,.literal (BitVec.ofNat 32 0),.bnot 4610,.band 4609 4611,.literal (BitVec.ofNat 32 2),.bxor 0 4613,.literal (BitVec.ofNat 32 0),.bnot 4615,.bxor 4614 4616,.literal (BitVec.ofNat 32 2),.bxor 0 4618,.literal (BitVec.ofNat 32 0),.bnot 4620,.badd 4619 4621,.bnot 4622,.band 4617 4623,.bxor 4612 4624,.shr 4625 31,.literal (BitVec.ofNat 32 1),.bxor 4626 4627,.bnot 4628,.literal (BitVec.ofNat 32 1),.badd 4629 4630,.bnot 4631,.band 4632 944,.bxor 4607 4633,.literal (BitVec.ofNat 32 2),.bxor 0 4635,.literal (BitVec.ofNat 32 0),.bnot 4637,.band 4636 4638,.literal (BitVec.ofNat 32 2),.bxor 0 4640,.literal (BitVec.ofNat 32 0),.bnot 4642,.bxor 4641 4643,.literal (BitVec.ofNat 32 2),.bxor 0 4645,.literal (BitVec.ofNat 32 0),.bnot 4647,.badd 4646 4648,.bnot 4649]
theorem partExact71 : partRows71=WordField.rows actualModulus 4587 partOps71 := by
  simp only [partRows71,partOps71,WordField.rows,rows4587,rows4588,rows4589,rows4590,rows4591,rows4592,rows4593,rows4594,rows4595,rows4596,rows4597,rows4598,rows4599,rows4600,rows4601,rows4602,rows4603,rows4604,rows4605,rows4606,rows4607,rows4608,rows4609,rows4610,rows4611,rows4612,rows4613,rows4614,rows4615,rows4616,rows4617,rows4618,rows4619,rows4620,rows4621,rows4622,rows4623,rows4624,rows4625,rows4626,rows4627,rows4628,rows4629,rows4630,rows4631,rows4632,rows4633,rows4634,rows4635,rows4636,rows4637,rows4638,rows4639,rows4640,rows4641,rows4642,rows4643,rows4644,rows4645,rows4646,rows4647,rows4648,rows4649,rows4650,List.append_assoc,List.append_nil]
theorem partLength71 : partOps71.length=64 := by decide
theorem partStats71 : partRows71.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows71=330264 := by
  simp only [partRows71,List.length_append,MatrixRowBlocks.rows_weight_append,stats4587.1,stats4587.2,stats4588.1,stats4588.2,stats4589.1,stats4589.2,stats4590.1,stats4590.2,stats4591.1,stats4591.2,stats4592.1,stats4592.2,stats4593.1,stats4593.2,stats4594.1,stats4594.2,stats4595.1,stats4595.2,stats4596.1,stats4596.2,stats4597.1,stats4597.2,stats4598.1,stats4598.2,stats4599.1,stats4599.2,stats4600.1,stats4600.2,stats4601.1,stats4601.2,stats4602.1,stats4602.2,stats4603.1,stats4603.2,stats4604.1,stats4604.2,stats4605.1,stats4605.2,stats4606.1,stats4606.2,stats4607.1,stats4607.2,stats4608.1,stats4608.2,stats4609.1,stats4609.2,stats4610.1,stats4610.2,stats4611.1,stats4611.2,stats4612.1,stats4612.2,stats4613.1,stats4613.2,stats4614.1,stats4614.2,stats4615.1,stats4615.2,stats4616.1,stats4616.2,stats4617.1,stats4617.2,stats4618.1,stats4618.2,stats4619.1,stats4619.2,stats4620.1,stats4620.2,stats4621.1,stats4621.2,stats4622.1,stats4622.2,stats4623.1,stats4623.2,stats4624.1,stats4624.2,stats4625.1,stats4625.2,stats4626.1,stats4626.2,stats4627.1,stats4627.2,stats4628.1,stats4628.2,stats4629.1,stats4629.2,stats4630.1,stats4630.2,stats4631.1,stats4631.2,stats4632.1,stats4632.2,stats4633.1,stats4633.2,stats4634.1,stats4634.2,stats4635.1,stats4635.2,stats4636.1,stats4636.2,stats4637.1,stats4637.2,stats4638.1,stats4638.2,stats4639.1,stats4639.2,stats4640.1,stats4640.2,stats4641.1,stats4641.2,stats4642.1,stats4642.2,stats4643.1,stats4643.2,stats4644.1,stats4644.2,stats4645.1,stats4645.2,stats4646.1,stats4646.2,stats4647.1,stats4647.2,stats4648.1,stats4648.2,stats4649.1,stats4649.2,stats4650.1,stats4650.2]
  decide
end FrameHashControllerCheckedRows
