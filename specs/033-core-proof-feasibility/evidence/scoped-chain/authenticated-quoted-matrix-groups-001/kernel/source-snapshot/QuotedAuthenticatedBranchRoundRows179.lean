import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData180
import AuthenticatedBranchRoundInstructionMatrixData181
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11574 : actualRows11574=WordField.canonicalRows actualModulus 11574 (.band 11567 11573) := by core033_kernel_decide
theorem stats11574 : actualRows11574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11574=5124 := by core033_kernel_decide
theorem rows11575 : actualRows11575=WordField.canonicalRows actualModulus 11575 (.bxor 11562 11574) := by core033_kernel_decide
theorem stats11575 : actualRows11575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11575=7428 := by core033_kernel_decide
theorem rows11576 : actualRows11576=WordField.canonicalRows actualModulus 11576 (.shr 11575 31) := by core033_kernel_decide
theorem stats11576 : actualRows11576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11576=2892 := by core033_kernel_decide
theorem rows11577 : actualRows11577=WordField.canonicalRows actualModulus 11577 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11577 : actualRows11577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11577=2892 := by core033_kernel_decide
theorem rows11578 : actualRows11578=WordField.canonicalRows actualModulus 11578 (.bxor 11576 11577) := by core033_kernel_decide
theorem stats11578 : actualRows11578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11578=7428 := by core033_kernel_decide
theorem rows11579 : actualRows11579=WordField.canonicalRows actualModulus 11579 (.bnot 11578) := by core033_kernel_decide
theorem stats11579 : actualRows11579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11579=6276 := by core033_kernel_decide
theorem rows11580 : actualRows11580=WordField.canonicalRows actualModulus 11580 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11580 : actualRows11580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11580=2892 := by core033_kernel_decide
theorem rows11581 : actualRows11581=WordField.canonicalRows actualModulus 11581 (.badd 11579 11580) := by core033_kernel_decide
theorem stats11581 : actualRows11581.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11581=5388 := by core033_kernel_decide
theorem rows11582 : actualRows11582=WordField.canonicalRows actualModulus 11582 (.bnot 11581) := by core033_kernel_decide
theorem stats11582 : actualRows11582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11582=6276 := by core033_kernel_decide
theorem rows11583 : actualRows11583=WordField.canonicalRows actualModulus 11583 (.band 11582 1321) := by core033_kernel_decide
theorem stats11583 : actualRows11583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11583=5124 := by core033_kernel_decide
theorem rows11584 : actualRows11584=WordField.canonicalRows actualModulus 11584 (.bxor 11557 11583) := by core033_kernel_decide
theorem stats11584 : actualRows11584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11584=7428 := by core033_kernel_decide
theorem rows11585 : actualRows11585=WordField.canonicalRows actualModulus 11585 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11585 : actualRows11585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11585=2964 := by core033_kernel_decide
theorem rows11586 : actualRows11586=WordField.canonicalRows actualModulus 11586 (.bxor 693 11585) := by core033_kernel_decide
theorem stats11586 : actualRows11586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11586=7428 := by core033_kernel_decide
theorem rows11587 : actualRows11587=WordField.canonicalRows actualModulus 11587 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11587 : actualRows11587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11587=2820 := by core033_kernel_decide
theorem rows11588 : actualRows11588=WordField.canonicalRows actualModulus 11588 (.bnot 11587) := by core033_kernel_decide
theorem stats11588 : actualRows11588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11588=6276 := by core033_kernel_decide
theorem rows11589 : actualRows11589=WordField.canonicalRows actualModulus 11589 (.band 11586 11588) := by core033_kernel_decide
theorem stats11589 : actualRows11589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11589=5124 := by core033_kernel_decide
theorem rows11590 : actualRows11590=WordField.canonicalRows actualModulus 11590 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11590 : actualRows11590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11590=2964 := by core033_kernel_decide
theorem rows11591 : actualRows11591=WordField.canonicalRows actualModulus 11591 (.bxor 693 11590) := by core033_kernel_decide
theorem stats11591 : actualRows11591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11591=7428 := by core033_kernel_decide
theorem rows11592 : actualRows11592=WordField.canonicalRows actualModulus 11592 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11592 : actualRows11592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11592=2820 := by core033_kernel_decide
theorem rows11593 : actualRows11593=WordField.canonicalRows actualModulus 11593 (.bnot 11592) := by core033_kernel_decide
theorem stats11593 : actualRows11593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11593=6276 := by core033_kernel_decide
theorem rows11594 : actualRows11594=WordField.canonicalRows actualModulus 11594 (.bxor 11591 11593) := by core033_kernel_decide
theorem stats11594 : actualRows11594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11594=7428 := by core033_kernel_decide
theorem rows11595 : actualRows11595=WordField.canonicalRows actualModulus 11595 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11595 : actualRows11595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11595=2964 := by core033_kernel_decide
theorem rows11596 : actualRows11596=WordField.canonicalRows actualModulus 11596 (.bxor 693 11595) := by core033_kernel_decide
theorem stats11596 : actualRows11596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11596=7428 := by core033_kernel_decide
theorem rows11597 : actualRows11597=WordField.canonicalRows actualModulus 11597 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11597 : actualRows11597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11597=2820 := by core033_kernel_decide
theorem rows11598 : actualRows11598=WordField.canonicalRows actualModulus 11598 (.bnot 11597) := by core033_kernel_decide
theorem stats11598 : actualRows11598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11598=6276 := by core033_kernel_decide
theorem rows11599 : actualRows11599=WordField.canonicalRows actualModulus 11599 (.badd 11596 11598) := by core033_kernel_decide
theorem stats11599 : actualRows11599.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11599=5388 := by core033_kernel_decide
theorem rows11600 : actualRows11600=WordField.canonicalRows actualModulus 11600 (.bnot 11599) := by core033_kernel_decide
theorem stats11600 : actualRows11600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11600=6276 := by core033_kernel_decide
theorem rows11601 : actualRows11601=WordField.canonicalRows actualModulus 11601 (.band 11594 11600) := by core033_kernel_decide
theorem stats11601 : actualRows11601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11601=5124 := by core033_kernel_decide
theorem rows11602 : actualRows11602=WordField.canonicalRows actualModulus 11602 (.bxor 11589 11601) := by core033_kernel_decide
theorem stats11602 : actualRows11602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11602=7428 := by core033_kernel_decide
theorem rows11603 : actualRows11603=WordField.canonicalRows actualModulus 11603 (.shr 11602 31) := by core033_kernel_decide
theorem stats11603 : actualRows11603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11603=2892 := by core033_kernel_decide
theorem rows11604 : actualRows11604=WordField.canonicalRows actualModulus 11604 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11604 : actualRows11604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11604=2892 := by core033_kernel_decide
theorem rows11605 : actualRows11605=WordField.canonicalRows actualModulus 11605 (.bxor 11603 11604) := by core033_kernel_decide
theorem stats11605 : actualRows11605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11605=7428 := by core033_kernel_decide
theorem rows11606 : actualRows11606=WordField.canonicalRows actualModulus 11606 (.bnot 11605) := by core033_kernel_decide
theorem stats11606 : actualRows11606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11606=6276 := by core033_kernel_decide
theorem rows11607 : actualRows11607=WordField.canonicalRows actualModulus 11607 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11607 : actualRows11607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11607=2892 := by core033_kernel_decide
theorem rows11608 : actualRows11608=WordField.canonicalRows actualModulus 11608 (.badd 11606 11607) := by core033_kernel_decide
theorem stats11608 : actualRows11608.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11608=5388 := by core033_kernel_decide
theorem rows11609 : actualRows11609=WordField.canonicalRows actualModulus 11609 (.band 11608 10653) := by core033_kernel_decide
theorem stats11609 : actualRows11609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11609=5124 := by core033_kernel_decide
theorem rows11610 : actualRows11610=WordField.canonicalRows actualModulus 11610 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11610 : actualRows11610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11610=2964 := by core033_kernel_decide
theorem rows11611 : actualRows11611=WordField.canonicalRows actualModulus 11611 (.bxor 693 11610) := by core033_kernel_decide
theorem stats11611 : actualRows11611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11611=7428 := by core033_kernel_decide
theorem rows11612 : actualRows11612=WordField.canonicalRows actualModulus 11612 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11612 : actualRows11612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11612=2820 := by core033_kernel_decide
theorem rows11613 : actualRows11613=WordField.canonicalRows actualModulus 11613 (.bnot 11612) := by core033_kernel_decide
theorem stats11613 : actualRows11613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11613=6276 := by core033_kernel_decide
theorem rows11614 : actualRows11614=WordField.canonicalRows actualModulus 11614 (.band 11611 11613) := by core033_kernel_decide
theorem stats11614 : actualRows11614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11614=5124 := by core033_kernel_decide
theorem rows11615 : actualRows11615=WordField.canonicalRows actualModulus 11615 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11615 : actualRows11615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11615=2964 := by core033_kernel_decide
theorem rows11616 : actualRows11616=WordField.canonicalRows actualModulus 11616 (.bxor 693 11615) := by core033_kernel_decide
theorem stats11616 : actualRows11616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11616=7428 := by core033_kernel_decide
theorem rows11617 : actualRows11617=WordField.canonicalRows actualModulus 11617 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11617 : actualRows11617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11617=2820 := by core033_kernel_decide
theorem rows11618 : actualRows11618=WordField.canonicalRows actualModulus 11618 (.bnot 11617) := by core033_kernel_decide
theorem stats11618 : actualRows11618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11618=6276 := by core033_kernel_decide
theorem rows11619 : actualRows11619=WordField.canonicalRows actualModulus 11619 (.bxor 11616 11618) := by core033_kernel_decide
theorem stats11619 : actualRows11619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11619=7428 := by core033_kernel_decide
theorem rows11620 : actualRows11620=WordField.canonicalRows actualModulus 11620 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11620 : actualRows11620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11620=2964 := by core033_kernel_decide
theorem rows11621 : actualRows11621=WordField.canonicalRows actualModulus 11621 (.bxor 693 11620) := by core033_kernel_decide
theorem stats11621 : actualRows11621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11621=7428 := by core033_kernel_decide
theorem rows11622 : actualRows11622=WordField.canonicalRows actualModulus 11622 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11622 : actualRows11622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11622=2820 := by core033_kernel_decide
theorem rows11623 : actualRows11623=WordField.canonicalRows actualModulus 11623 (.bnot 11622) := by core033_kernel_decide
theorem stats11623 : actualRows11623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11623=6276 := by core033_kernel_decide
theorem rows11624 : actualRows11624=WordField.canonicalRows actualModulus 11624 (.badd 11621 11623) := by core033_kernel_decide
theorem stats11624 : actualRows11624.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11624=5388 := by core033_kernel_decide
theorem rows11625 : actualRows11625=WordField.canonicalRows actualModulus 11625 (.bnot 11624) := by core033_kernel_decide
theorem stats11625 : actualRows11625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11625=6276 := by core033_kernel_decide
theorem rows11626 : actualRows11626=WordField.canonicalRows actualModulus 11626 (.band 11619 11625) := by core033_kernel_decide
theorem stats11626 : actualRows11626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11626=5124 := by core033_kernel_decide
theorem rows11627 : actualRows11627=WordField.canonicalRows actualModulus 11627 (.bxor 11614 11626) := by core033_kernel_decide
theorem stats11627 : actualRows11627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11627=7428 := by core033_kernel_decide
theorem rows11628 : actualRows11628=WordField.canonicalRows actualModulus 11628 (.shr 11627 31) := by core033_kernel_decide
theorem stats11628 : actualRows11628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11628=2892 := by core033_kernel_decide
theorem rows11629 : actualRows11629=WordField.canonicalRows actualModulus 11629 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11629 : actualRows11629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11629=2892 := by core033_kernel_decide
theorem rows11630 : actualRows11630=WordField.canonicalRows actualModulus 11630 (.bxor 11628 11629) := by core033_kernel_decide
theorem stats11630 : actualRows11630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11630=7428 := by core033_kernel_decide
theorem rows11631 : actualRows11631=WordField.canonicalRows actualModulus 11631 (.bnot 11630) := by core033_kernel_decide
theorem stats11631 : actualRows11631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11631=6276 := by core033_kernel_decide
theorem rows11632 : actualRows11632=WordField.canonicalRows actualModulus 11632 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11632 : actualRows11632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11632=2892 := by core033_kernel_decide
theorem rows11633 : actualRows11633=WordField.canonicalRows actualModulus 11633 (.badd 11631 11632) := by core033_kernel_decide
theorem stats11633 : actualRows11633.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11633=5388 := by core033_kernel_decide
theorem rows11634 : actualRows11634=WordField.canonicalRows actualModulus 11634 (.bnot 11633) := by core033_kernel_decide
theorem stats11634 : actualRows11634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11634=6276 := by core033_kernel_decide
theorem rows11635 : actualRows11635=WordField.canonicalRows actualModulus 11635 (.band 11634 1332) := by core033_kernel_decide
theorem stats11635 : actualRows11635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11635=5124 := by core033_kernel_decide
theorem rows11636 : actualRows11636=WordField.canonicalRows actualModulus 11636 (.bxor 11609 11635) := by core033_kernel_decide
theorem stats11636 : actualRows11636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11636=7428 := by core033_kernel_decide
theorem rows11637 : actualRows11637=WordField.canonicalRows actualModulus 11637 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11637 : actualRows11637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11637=2964 := by core033_kernel_decide
def partRows179 : List R1CS.Row := actualRows11574++actualRows11575++actualRows11576++actualRows11577++actualRows11578++actualRows11579++actualRows11580++actualRows11581++actualRows11582++actualRows11583++actualRows11584++actualRows11585++actualRows11586++actualRows11587++actualRows11588++actualRows11589++actualRows11590++actualRows11591++actualRows11592++actualRows11593++actualRows11594++actualRows11595++actualRows11596++actualRows11597++actualRows11598++actualRows11599++actualRows11600++actualRows11601++actualRows11602++actualRows11603++actualRows11604++actualRows11605++actualRows11606++actualRows11607++actualRows11608++actualRows11609++actualRows11610++actualRows11611++actualRows11612++actualRows11613++actualRows11614++actualRows11615++actualRows11616++actualRows11617++actualRows11618++actualRows11619++actualRows11620++actualRows11621++actualRows11622++actualRows11623++actualRows11624++actualRows11625++actualRows11626++actualRows11627++actualRows11628++actualRows11629++actualRows11630++actualRows11631++actualRows11632++actualRows11633++actualRows11634++actualRows11635++actualRows11636++actualRows11637
def partOps179 : List WordIR.Op := [.band 11567 11573,.bxor 11562 11574,.shr 11575 31,.literal (BitVec.ofNat 32 1),.bxor 11576 11577,.bnot 11578,.literal (BitVec.ofNat 32 1),.badd 11579 11580,.bnot 11581,.band 11582 1321,.bxor 11557 11583,.literal (BitVec.ofNat 32 3),.bxor 693 11585,.literal (BitVec.ofNat 32 0),.bnot 11587,.band 11586 11588,.literal (BitVec.ofNat 32 3),.bxor 693 11590,.literal (BitVec.ofNat 32 0),.bnot 11592,.bxor 11591 11593,.literal (BitVec.ofNat 32 3),.bxor 693 11595,.literal (BitVec.ofNat 32 0),.bnot 11597,.badd 11596 11598,.bnot 11599,.band 11594 11600,.bxor 11589 11601,.shr 11602 31,.literal (BitVec.ofNat 32 1),.bxor 11603 11604,.bnot 11605,.literal (BitVec.ofNat 32 1),.badd 11606 11607,.band 11608 10653,.literal (BitVec.ofNat 32 3),.bxor 693 11610,.literal (BitVec.ofNat 32 0),.bnot 11612,.band 11611 11613,.literal (BitVec.ofNat 32 3),.bxor 693 11615,.literal (BitVec.ofNat 32 0),.bnot 11617,.bxor 11616 11618,.literal (BitVec.ofNat 32 3),.bxor 693 11620,.literal (BitVec.ofNat 32 0),.bnot 11622,.badd 11621 11623,.bnot 11624,.band 11619 11625,.bxor 11614 11626,.shr 11627 31,.literal (BitVec.ofNat 32 1),.bxor 11628 11629,.bnot 11630,.literal (BitVec.ofNat 32 1),.badd 11631 11632,.bnot 11633,.band 11634 1332,.bxor 11609 11635,.literal (BitVec.ofNat 32 3)]
theorem partExact179 : partRows179=WordField.rows actualModulus 11574 partOps179 := by
  simp only [partRows179,partOps179,WordField.rows,rows11574,rows11575,rows11576,rows11577,rows11578,rows11579,rows11580,rows11581,rows11582,rows11583,rows11584,rows11585,rows11586,rows11587,rows11588,rows11589,rows11590,rows11591,rows11592,rows11593,rows11594,rows11595,rows11596,rows11597,rows11598,rows11599,rows11600,rows11601,rows11602,rows11603,rows11604,rows11605,rows11606,rows11607,rows11608,rows11609,rows11610,rows11611,rows11612,rows11613,rows11614,rows11615,rows11616,rows11617,rows11618,rows11619,rows11620,rows11621,rows11622,rows11623,rows11624,rows11625,rows11626,rows11627,rows11628,rows11629,rows11630,rows11631,rows11632,rows11633,rows11634,rows11635,rows11636,rows11637,List.append_assoc,List.append_nil]
theorem partLength179 : partOps179.length=64 := by decide
theorem partStats179 : partRows179.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows179=332064 := by
  simp only [partRows179,List.length_append,MatrixRowBlocks.rows_weight_append,stats11574.1,stats11574.2,stats11575.1,stats11575.2,stats11576.1,stats11576.2,stats11577.1,stats11577.2,stats11578.1,stats11578.2,stats11579.1,stats11579.2,stats11580.1,stats11580.2,stats11581.1,stats11581.2,stats11582.1,stats11582.2,stats11583.1,stats11583.2,stats11584.1,stats11584.2,stats11585.1,stats11585.2,stats11586.1,stats11586.2,stats11587.1,stats11587.2,stats11588.1,stats11588.2,stats11589.1,stats11589.2,stats11590.1,stats11590.2,stats11591.1,stats11591.2,stats11592.1,stats11592.2,stats11593.1,stats11593.2,stats11594.1,stats11594.2,stats11595.1,stats11595.2,stats11596.1,stats11596.2,stats11597.1,stats11597.2,stats11598.1,stats11598.2,stats11599.1,stats11599.2,stats11600.1,stats11600.2,stats11601.1,stats11601.2,stats11602.1,stats11602.2,stats11603.1,stats11603.2,stats11604.1,stats11604.2,stats11605.1,stats11605.2,stats11606.1,stats11606.2,stats11607.1,stats11607.2,stats11608.1,stats11608.2,stats11609.1,stats11609.2,stats11610.1,stats11610.2,stats11611.1,stats11611.2,stats11612.1,stats11612.2,stats11613.1,stats11613.2,stats11614.1,stats11614.2,stats11615.1,stats11615.2,stats11616.1,stats11616.2,stats11617.1,stats11617.2,stats11618.1,stats11618.2,stats11619.1,stats11619.2,stats11620.1,stats11620.2,stats11621.1,stats11621.2,stats11622.1,stats11622.2,stats11623.1,stats11623.2,stats11624.1,stats11624.2,stats11625.1,stats11625.2,stats11626.1,stats11626.2,stats11627.1,stats11627.2,stats11628.1,stats11628.2,stats11629.1,stats11629.2,stats11630.1,stats11630.2,stats11631.1,stats11631.2,stats11632.1,stats11632.2,stats11633.1,stats11633.2,stats11634.1,stats11634.2,stats11635.1,stats11635.2,stats11636.1,stats11636.2,stats11637.1,stats11637.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
