import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData180
import PathRoundDispatchInstructionMatrixData181
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11563 : actualRows11563=WordField.canonicalRows actualModulus 11563 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11563 : actualRows11563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11563=2820 := by core033_kernel_decide
theorem rows11564 : actualRows11564=WordField.canonicalRows actualModulus 11564 (.bnot 11563) := by core033_kernel_decide
theorem stats11564 : actualRows11564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11564=6276 := by core033_kernel_decide
theorem rows11565 : actualRows11565=WordField.canonicalRows actualModulus 11565 (.badd 11562 11564) := by core033_kernel_decide
theorem stats11565 : actualRows11565.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11565=5388 := by core033_kernel_decide
theorem rows11566 : actualRows11566=WordField.canonicalRows actualModulus 11566 (.bnot 11565) := by core033_kernel_decide
theorem stats11566 : actualRows11566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11566=6276 := by core033_kernel_decide
theorem rows11567 : actualRows11567=WordField.canonicalRows actualModulus 11567 (.band 11560 11566) := by core033_kernel_decide
theorem stats11567 : actualRows11567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11567=5124 := by core033_kernel_decide
theorem rows11568 : actualRows11568=WordField.canonicalRows actualModulus 11568 (.bxor 11555 11567) := by core033_kernel_decide
theorem stats11568 : actualRows11568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11568=7428 := by core033_kernel_decide
theorem rows11569 : actualRows11569=WordField.canonicalRows actualModulus 11569 (.shr 11568 31) := by core033_kernel_decide
theorem stats11569 : actualRows11569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11569=2892 := by core033_kernel_decide
theorem rows11570 : actualRows11570=WordField.canonicalRows actualModulus 11570 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11570 : actualRows11570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11570=2892 := by core033_kernel_decide
theorem rows11571 : actualRows11571=WordField.canonicalRows actualModulus 11571 (.bxor 11569 11570) := by core033_kernel_decide
theorem stats11571 : actualRows11571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11571=7428 := by core033_kernel_decide
theorem rows11572 : actualRows11572=WordField.canonicalRows actualModulus 11572 (.bnot 11571) := by core033_kernel_decide
theorem stats11572 : actualRows11572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11572=6276 := by core033_kernel_decide
theorem rows11573 : actualRows11573=WordField.canonicalRows actualModulus 11573 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11573 : actualRows11573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11573=2892 := by core033_kernel_decide
theorem rows11574 : actualRows11574=WordField.canonicalRows actualModulus 11574 (.badd 11572 11573) := by core033_kernel_decide
theorem stats11574 : actualRows11574.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11574=5388 := by core033_kernel_decide
theorem rows11575 : actualRows11575=WordField.canonicalRows actualModulus 11575 (.bnot 11574) := by core033_kernel_decide
theorem stats11575 : actualRows11575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11575=6276 := by core033_kernel_decide
theorem rows11576 : actualRows11576=WordField.canonicalRows actualModulus 11576 (.band 11575 371) := by core033_kernel_decide
theorem stats11576 : actualRows11576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11576=5124 := by core033_kernel_decide
theorem rows11577 : actualRows11577=WordField.canonicalRows actualModulus 11577 (.bxor 11550 11576) := by core033_kernel_decide
theorem stats11577 : actualRows11577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11577=7428 := by core033_kernel_decide
theorem rows11578 : actualRows11578=WordField.canonicalRows actualModulus 11578 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11578 : actualRows11578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11578=2964 := by core033_kernel_decide
theorem rows11579 : actualRows11579=WordField.canonicalRows actualModulus 11579 (.bxor 0 11578) := by core033_kernel_decide
theorem stats11579 : actualRows11579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11579=7428 := by core033_kernel_decide
theorem rows11580 : actualRows11580=WordField.canonicalRows actualModulus 11580 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11580 : actualRows11580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11580=2820 := by core033_kernel_decide
theorem rows11581 : actualRows11581=WordField.canonicalRows actualModulus 11581 (.bnot 11580) := by core033_kernel_decide
theorem stats11581 : actualRows11581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11581=6276 := by core033_kernel_decide
theorem rows11582 : actualRows11582=WordField.canonicalRows actualModulus 11582 (.band 11579 11581) := by core033_kernel_decide
theorem stats11582 : actualRows11582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11582=5124 := by core033_kernel_decide
theorem rows11583 : actualRows11583=WordField.canonicalRows actualModulus 11583 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11583 : actualRows11583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11583=2964 := by core033_kernel_decide
theorem rows11584 : actualRows11584=WordField.canonicalRows actualModulus 11584 (.bxor 0 11583) := by core033_kernel_decide
theorem stats11584 : actualRows11584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11584=7428 := by core033_kernel_decide
theorem rows11585 : actualRows11585=WordField.canonicalRows actualModulus 11585 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11585 : actualRows11585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11585=2820 := by core033_kernel_decide
theorem rows11586 : actualRows11586=WordField.canonicalRows actualModulus 11586 (.bnot 11585) := by core033_kernel_decide
theorem stats11586 : actualRows11586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11586=6276 := by core033_kernel_decide
theorem rows11587 : actualRows11587=WordField.canonicalRows actualModulus 11587 (.bxor 11584 11586) := by core033_kernel_decide
theorem stats11587 : actualRows11587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11587=7428 := by core033_kernel_decide
theorem rows11588 : actualRows11588=WordField.canonicalRows actualModulus 11588 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11588 : actualRows11588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11588=2964 := by core033_kernel_decide
theorem rows11589 : actualRows11589=WordField.canonicalRows actualModulus 11589 (.bxor 0 11588) := by core033_kernel_decide
theorem stats11589 : actualRows11589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11589=7428 := by core033_kernel_decide
theorem rows11590 : actualRows11590=WordField.canonicalRows actualModulus 11590 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11590 : actualRows11590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11590=2820 := by core033_kernel_decide
theorem rows11591 : actualRows11591=WordField.canonicalRows actualModulus 11591 (.bnot 11590) := by core033_kernel_decide
theorem stats11591 : actualRows11591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11591=6276 := by core033_kernel_decide
theorem rows11592 : actualRows11592=WordField.canonicalRows actualModulus 11592 (.badd 11589 11591) := by core033_kernel_decide
theorem stats11592 : actualRows11592.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11592=5388 := by core033_kernel_decide
theorem rows11593 : actualRows11593=WordField.canonicalRows actualModulus 11593 (.bnot 11592) := by core033_kernel_decide
theorem stats11593 : actualRows11593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11593=6276 := by core033_kernel_decide
theorem rows11594 : actualRows11594=WordField.canonicalRows actualModulus 11594 (.band 11587 11593) := by core033_kernel_decide
theorem stats11594 : actualRows11594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11594=5124 := by core033_kernel_decide
theorem rows11595 : actualRows11595=WordField.canonicalRows actualModulus 11595 (.bxor 11582 11594) := by core033_kernel_decide
theorem stats11595 : actualRows11595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11595=7428 := by core033_kernel_decide
theorem rows11596 : actualRows11596=WordField.canonicalRows actualModulus 11596 (.shr 11595 31) := by core033_kernel_decide
theorem stats11596 : actualRows11596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11596=2892 := by core033_kernel_decide
theorem rows11597 : actualRows11597=WordField.canonicalRows actualModulus 11597 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11597 : actualRows11597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11597=2892 := by core033_kernel_decide
theorem rows11598 : actualRows11598=WordField.canonicalRows actualModulus 11598 (.bxor 11596 11597) := by core033_kernel_decide
theorem stats11598 : actualRows11598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11598=7428 := by core033_kernel_decide
theorem rows11599 : actualRows11599=WordField.canonicalRows actualModulus 11599 (.bnot 11598) := by core033_kernel_decide
theorem stats11599 : actualRows11599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11599=6276 := by core033_kernel_decide
theorem rows11600 : actualRows11600=WordField.canonicalRows actualModulus 11600 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11600 : actualRows11600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11600=2892 := by core033_kernel_decide
theorem rows11601 : actualRows11601=WordField.canonicalRows actualModulus 11601 (.badd 11599 11600) := by core033_kernel_decide
theorem stats11601 : actualRows11601.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11601=5388 := by core033_kernel_decide
theorem rows11602 : actualRows11602=WordField.canonicalRows actualModulus 11602 (.band 11601 9703) := by core033_kernel_decide
theorem stats11602 : actualRows11602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11602=5124 := by core033_kernel_decide
theorem rows11603 : actualRows11603=WordField.canonicalRows actualModulus 11603 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11603 : actualRows11603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11603=2964 := by core033_kernel_decide
theorem rows11604 : actualRows11604=WordField.canonicalRows actualModulus 11604 (.bxor 0 11603) := by core033_kernel_decide
theorem stats11604 : actualRows11604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11604=7428 := by core033_kernel_decide
theorem rows11605 : actualRows11605=WordField.canonicalRows actualModulus 11605 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11605 : actualRows11605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11605=2820 := by core033_kernel_decide
theorem rows11606 : actualRows11606=WordField.canonicalRows actualModulus 11606 (.bnot 11605) := by core033_kernel_decide
theorem stats11606 : actualRows11606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11606=6276 := by core033_kernel_decide
theorem rows11607 : actualRows11607=WordField.canonicalRows actualModulus 11607 (.band 11604 11606) := by core033_kernel_decide
theorem stats11607 : actualRows11607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11607=5124 := by core033_kernel_decide
theorem rows11608 : actualRows11608=WordField.canonicalRows actualModulus 11608 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11608 : actualRows11608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11608=2964 := by core033_kernel_decide
theorem rows11609 : actualRows11609=WordField.canonicalRows actualModulus 11609 (.bxor 0 11608) := by core033_kernel_decide
theorem stats11609 : actualRows11609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11609=7428 := by core033_kernel_decide
theorem rows11610 : actualRows11610=WordField.canonicalRows actualModulus 11610 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11610 : actualRows11610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11610=2820 := by core033_kernel_decide
theorem rows11611 : actualRows11611=WordField.canonicalRows actualModulus 11611 (.bnot 11610) := by core033_kernel_decide
theorem stats11611 : actualRows11611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11611=6276 := by core033_kernel_decide
theorem rows11612 : actualRows11612=WordField.canonicalRows actualModulus 11612 (.bxor 11609 11611) := by core033_kernel_decide
theorem stats11612 : actualRows11612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11612=7428 := by core033_kernel_decide
theorem rows11613 : actualRows11613=WordField.canonicalRows actualModulus 11613 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11613 : actualRows11613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11613=2964 := by core033_kernel_decide
theorem rows11614 : actualRows11614=WordField.canonicalRows actualModulus 11614 (.bxor 0 11613) := by core033_kernel_decide
theorem stats11614 : actualRows11614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11614=7428 := by core033_kernel_decide
theorem rows11615 : actualRows11615=WordField.canonicalRows actualModulus 11615 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11615 : actualRows11615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11615=2820 := by core033_kernel_decide
theorem rows11616 : actualRows11616=WordField.canonicalRows actualModulus 11616 (.bnot 11615) := by core033_kernel_decide
theorem stats11616 : actualRows11616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11616=6276 := by core033_kernel_decide
theorem rows11617 : actualRows11617=WordField.canonicalRows actualModulus 11617 (.badd 11614 11616) := by core033_kernel_decide
theorem stats11617 : actualRows11617.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11617=5388 := by core033_kernel_decide
theorem rows11618 : actualRows11618=WordField.canonicalRows actualModulus 11618 (.bnot 11617) := by core033_kernel_decide
theorem stats11618 : actualRows11618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11618=6276 := by core033_kernel_decide
theorem rows11619 : actualRows11619=WordField.canonicalRows actualModulus 11619 (.band 11612 11618) := by core033_kernel_decide
theorem stats11619 : actualRows11619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11619=5124 := by core033_kernel_decide
theorem rows11620 : actualRows11620=WordField.canonicalRows actualModulus 11620 (.bxor 11607 11619) := by core033_kernel_decide
theorem stats11620 : actualRows11620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11620=7428 := by core033_kernel_decide
theorem rows11621 : actualRows11621=WordField.canonicalRows actualModulus 11621 (.shr 11620 31) := by core033_kernel_decide
theorem stats11621 : actualRows11621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11621=2892 := by core033_kernel_decide
theorem rows11622 : actualRows11622=WordField.canonicalRows actualModulus 11622 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11622 : actualRows11622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11622=2892 := by core033_kernel_decide
theorem rows11623 : actualRows11623=WordField.canonicalRows actualModulus 11623 (.bxor 11621 11622) := by core033_kernel_decide
theorem stats11623 : actualRows11623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11623=7428 := by core033_kernel_decide
theorem rows11624 : actualRows11624=WordField.canonicalRows actualModulus 11624 (.bnot 11623) := by core033_kernel_decide
theorem stats11624 : actualRows11624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11624=6276 := by core033_kernel_decide
theorem rows11625 : actualRows11625=WordField.canonicalRows actualModulus 11625 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11625 : actualRows11625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11625=2892 := by core033_kernel_decide
theorem rows11626 : actualRows11626=WordField.canonicalRows actualModulus 11626 (.badd 11624 11625) := by core033_kernel_decide
theorem stats11626 : actualRows11626.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11626=5388 := by core033_kernel_decide
def partRows180 : List R1CS.Row := actualRows11563++actualRows11564++actualRows11565++actualRows11566++actualRows11567++actualRows11568++actualRows11569++actualRows11570++actualRows11571++actualRows11572++actualRows11573++actualRows11574++actualRows11575++actualRows11576++actualRows11577++actualRows11578++actualRows11579++actualRows11580++actualRows11581++actualRows11582++actualRows11583++actualRows11584++actualRows11585++actualRows11586++actualRows11587++actualRows11588++actualRows11589++actualRows11590++actualRows11591++actualRows11592++actualRows11593++actualRows11594++actualRows11595++actualRows11596++actualRows11597++actualRows11598++actualRows11599++actualRows11600++actualRows11601++actualRows11602++actualRows11603++actualRows11604++actualRows11605++actualRows11606++actualRows11607++actualRows11608++actualRows11609++actualRows11610++actualRows11611++actualRows11612++actualRows11613++actualRows11614++actualRows11615++actualRows11616++actualRows11617++actualRows11618++actualRows11619++actualRows11620++actualRows11621++actualRows11622++actualRows11623++actualRows11624++actualRows11625++actualRows11626
def partOps180 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 11563,.badd 11562 11564,.bnot 11565,.band 11560 11566,.bxor 11555 11567,.shr 11568 31,.literal (BitVec.ofNat 32 1),.bxor 11569 11570,.bnot 11571,.literal (BitVec.ofNat 32 1),.badd 11572 11573,.bnot 11574,.band 11575 371,.bxor 11550 11576,.literal (BitVec.ofNat 32 3),.bxor 0 11578,.literal (BitVec.ofNat 32 0),.bnot 11580,.band 11579 11581,.literal (BitVec.ofNat 32 3),.bxor 0 11583,.literal (BitVec.ofNat 32 0),.bnot 11585,.bxor 11584 11586,.literal (BitVec.ofNat 32 3),.bxor 0 11588,.literal (BitVec.ofNat 32 0),.bnot 11590,.badd 11589 11591,.bnot 11592,.band 11587 11593,.bxor 11582 11594,.shr 11595 31,.literal (BitVec.ofNat 32 1),.bxor 11596 11597,.bnot 11598,.literal (BitVec.ofNat 32 1),.badd 11599 11600,.band 11601 9703,.literal (BitVec.ofNat 32 3),.bxor 0 11603,.literal (BitVec.ofNat 32 0),.bnot 11605,.band 11604 11606,.literal (BitVec.ofNat 32 3),.bxor 0 11608,.literal (BitVec.ofNat 32 0),.bnot 11610,.bxor 11609 11611,.literal (BitVec.ofNat 32 3),.bxor 0 11613,.literal (BitVec.ofNat 32 0),.bnot 11615,.badd 11614 11616,.bnot 11617,.band 11612 11618,.bxor 11607 11619,.shr 11620 31,.literal (BitVec.ofNat 32 1),.bxor 11621 11622,.bnot 11623,.literal (BitVec.ofNat 32 1),.badd 11624 11625]
theorem partExact180 : partRows180=WordField.rows actualModulus 11563 partOps180 := by
  simp only [partRows180,partOps180,WordField.rows,rows11563,rows11564,rows11565,rows11566,rows11567,rows11568,rows11569,rows11570,rows11571,rows11572,rows11573,rows11574,rows11575,rows11576,rows11577,rows11578,rows11579,rows11580,rows11581,rows11582,rows11583,rows11584,rows11585,rows11586,rows11587,rows11588,rows11589,rows11590,rows11591,rows11592,rows11593,rows11594,rows11595,rows11596,rows11597,rows11598,rows11599,rows11600,rows11601,rows11602,rows11603,rows11604,rows11605,rows11606,rows11607,rows11608,rows11609,rows11610,rows11611,rows11612,rows11613,rows11614,rows11615,rows11616,rows11617,rows11618,rows11619,rows11620,rows11621,rows11622,rows11623,rows11624,rows11625,rows11626,List.append_assoc,List.append_nil]
theorem partLength180 : partOps180.length=64 := by decide
theorem partStats180 : partRows180.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows180=331032 := by
  simp only [partRows180,List.length_append,MatrixRowBlocks.rows_weight_append,stats11563.1,stats11563.2,stats11564.1,stats11564.2,stats11565.1,stats11565.2,stats11566.1,stats11566.2,stats11567.1,stats11567.2,stats11568.1,stats11568.2,stats11569.1,stats11569.2,stats11570.1,stats11570.2,stats11571.1,stats11571.2,stats11572.1,stats11572.2,stats11573.1,stats11573.2,stats11574.1,stats11574.2,stats11575.1,stats11575.2,stats11576.1,stats11576.2,stats11577.1,stats11577.2,stats11578.1,stats11578.2,stats11579.1,stats11579.2,stats11580.1,stats11580.2,stats11581.1,stats11581.2,stats11582.1,stats11582.2,stats11583.1,stats11583.2,stats11584.1,stats11584.2,stats11585.1,stats11585.2,stats11586.1,stats11586.2,stats11587.1,stats11587.2,stats11588.1,stats11588.2,stats11589.1,stats11589.2,stats11590.1,stats11590.2,stats11591.1,stats11591.2,stats11592.1,stats11592.2,stats11593.1,stats11593.2,stats11594.1,stats11594.2,stats11595.1,stats11595.2,stats11596.1,stats11596.2,stats11597.1,stats11597.2,stats11598.1,stats11598.2,stats11599.1,stats11599.2,stats11600.1,stats11600.2,stats11601.1,stats11601.2,stats11602.1,stats11602.2,stats11603.1,stats11603.2,stats11604.1,stats11604.2,stats11605.1,stats11605.2,stats11606.1,stats11606.2,stats11607.1,stats11607.2,stats11608.1,stats11608.2,stats11609.1,stats11609.2,stats11610.1,stats11610.2,stats11611.1,stats11611.2,stats11612.1,stats11612.2,stats11613.1,stats11613.2,stats11614.1,stats11614.2,stats11615.1,stats11615.2,stats11616.1,stats11616.2,stats11617.1,stats11617.2,stats11618.1,stats11618.2,stats11619.1,stats11619.2,stats11620.1,stats11620.2,stats11621.1,stats11621.2,stats11622.1,stats11622.2,stats11623.1,stats11623.2,stats11624.1,stats11624.2,stats11625.1,stats11625.2,stats11626.1,stats11626.2]
  decide
end PathRoundDispatchCheckedRows
