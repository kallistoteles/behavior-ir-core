import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData40
import AuthenticatedBranchRoundInstructionMatrixData41
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2614 : actualRows2614=WordField.canonicalRows actualModulus 2614 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2614 : actualRows2614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2614=3396 := by core033_kernel_decide
theorem rows2615 : actualRows2615=WordField.canonicalRows actualModulus 2615 (.band 2613 2614) := by core033_kernel_decide
theorem stats2615 : actualRows2615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2615=5124 := by core033_kernel_decide
theorem rows2616 : actualRows2616=WordField.canonicalRows actualModulus 2616 (.shr 2118 8) := by core033_kernel_decide
theorem stats2616 : actualRows2616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2616=4548 := by core033_kernel_decide
theorem rows2617 : actualRows2617=WordField.canonicalRows actualModulus 2617 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2617 : actualRows2617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2617=3396 := by core033_kernel_decide
theorem rows2618 : actualRows2618=WordField.canonicalRows actualModulus 2618 (.band 2616 2617) := by core033_kernel_decide
theorem stats2618 : actualRows2618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2618=5124 := by core033_kernel_decide
theorem rows2619 : actualRows2619=WordField.canonicalRows actualModulus 2619 (.shr 2118 16) := by core033_kernel_decide
theorem stats2619 : actualRows2619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2619=3972 := by core033_kernel_decide
theorem rows2620 : actualRows2620=WordField.canonicalRows actualModulus 2620 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2620 : actualRows2620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2620=3396 := by core033_kernel_decide
theorem rows2621 : actualRows2621=WordField.canonicalRows actualModulus 2621 (.band 2619 2620) := by core033_kernel_decide
theorem stats2621 : actualRows2621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2621=5124 := by core033_kernel_decide
theorem rows2622 : actualRows2622=WordField.canonicalRows actualModulus 2622 (.shr 2118 24) := by core033_kernel_decide
theorem stats2622 : actualRows2622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2622=3396 := by core033_kernel_decide
theorem rows2623 : actualRows2623=WordField.canonicalRows actualModulus 2623 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2623 : actualRows2623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2623=3396 := by core033_kernel_decide
theorem rows2624 : actualRows2624=WordField.canonicalRows actualModulus 2624 (.band 2622 2623) := by core033_kernel_decide
theorem stats2624 : actualRows2624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2624=5124 := by core033_kernel_decide
theorem rows2625 : actualRows2625=WordField.canonicalRows actualModulus 2625 (.shr 2128 0) := by core033_kernel_decide
theorem stats2625 : actualRows2625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2625=5124 := by core033_kernel_decide
theorem rows2626 : actualRows2626=WordField.canonicalRows actualModulus 2626 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2626 : actualRows2626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2626=3396 := by core033_kernel_decide
theorem rows2627 : actualRows2627=WordField.canonicalRows actualModulus 2627 (.band 2625 2626) := by core033_kernel_decide
theorem stats2627 : actualRows2627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2627=5124 := by core033_kernel_decide
theorem rows2628 : actualRows2628=WordField.canonicalRows actualModulus 2628 (.shr 2128 8) := by core033_kernel_decide
theorem stats2628 : actualRows2628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2628=4548 := by core033_kernel_decide
theorem rows2629 : actualRows2629=WordField.canonicalRows actualModulus 2629 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2629 : actualRows2629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2629=3396 := by core033_kernel_decide
theorem rows2630 : actualRows2630=WordField.canonicalRows actualModulus 2630 (.band 2628 2629) := by core033_kernel_decide
theorem stats2630 : actualRows2630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2630=5124 := by core033_kernel_decide
theorem rows2631 : actualRows2631=WordField.canonicalRows actualModulus 2631 (.shr 2128 16) := by core033_kernel_decide
theorem stats2631 : actualRows2631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2631=3972 := by core033_kernel_decide
theorem rows2632 : actualRows2632=WordField.canonicalRows actualModulus 2632 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2632 : actualRows2632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2632=3396 := by core033_kernel_decide
theorem rows2633 : actualRows2633=WordField.canonicalRows actualModulus 2633 (.band 2631 2632) := by core033_kernel_decide
theorem stats2633 : actualRows2633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2633=5124 := by core033_kernel_decide
theorem rows2634 : actualRows2634=WordField.canonicalRows actualModulus 2634 (.shr 2128 24) := by core033_kernel_decide
theorem stats2634 : actualRows2634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2634=3396 := by core033_kernel_decide
theorem rows2635 : actualRows2635=WordField.canonicalRows actualModulus 2635 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2635 : actualRows2635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2635=3396 := by core033_kernel_decide
theorem rows2636 : actualRows2636=WordField.canonicalRows actualModulus 2636 (.band 2634 2635) := by core033_kernel_decide
theorem stats2636 : actualRows2636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2636=5124 := by core033_kernel_decide
theorem rows2637 : actualRows2637=WordField.canonicalRows actualModulus 2637 (.shr 2138 0) := by core033_kernel_decide
theorem stats2637 : actualRows2637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2637=5124 := by core033_kernel_decide
theorem rows2638 : actualRows2638=WordField.canonicalRows actualModulus 2638 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2638 : actualRows2638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2638=3396 := by core033_kernel_decide
theorem rows2639 : actualRows2639=WordField.canonicalRows actualModulus 2639 (.band 2637 2638) := by core033_kernel_decide
theorem stats2639 : actualRows2639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2639=5124 := by core033_kernel_decide
theorem rows2640 : actualRows2640=WordField.canonicalRows actualModulus 2640 (.shr 2138 8) := by core033_kernel_decide
theorem stats2640 : actualRows2640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2640=4548 := by core033_kernel_decide
theorem rows2641 : actualRows2641=WordField.canonicalRows actualModulus 2641 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2641 : actualRows2641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2641=3396 := by core033_kernel_decide
theorem rows2642 : actualRows2642=WordField.canonicalRows actualModulus 2642 (.band 2640 2641) := by core033_kernel_decide
theorem stats2642 : actualRows2642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2642=5124 := by core033_kernel_decide
theorem rows2643 : actualRows2643=WordField.canonicalRows actualModulus 2643 (.shr 2138 16) := by core033_kernel_decide
theorem stats2643 : actualRows2643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2643=3972 := by core033_kernel_decide
theorem rows2644 : actualRows2644=WordField.canonicalRows actualModulus 2644 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2644 : actualRows2644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2644=3396 := by core033_kernel_decide
theorem rows2645 : actualRows2645=WordField.canonicalRows actualModulus 2645 (.band 2643 2644) := by core033_kernel_decide
theorem stats2645 : actualRows2645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2645=5124 := by core033_kernel_decide
theorem rows2646 : actualRows2646=WordField.canonicalRows actualModulus 2646 (.shr 2138 24) := by core033_kernel_decide
theorem stats2646 : actualRows2646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2646=3396 := by core033_kernel_decide
theorem rows2647 : actualRows2647=WordField.canonicalRows actualModulus 2647 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2647 : actualRows2647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2647=3396 := by core033_kernel_decide
theorem rows2648 : actualRows2648=WordField.canonicalRows actualModulus 2648 (.band 2646 2647) := by core033_kernel_decide
theorem stats2648 : actualRows2648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2648=5124 := by core033_kernel_decide
theorem rows2649 : actualRows2649=WordField.canonicalRows actualModulus 2649 (.shr 2148 0) := by core033_kernel_decide
theorem stats2649 : actualRows2649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2649=5124 := by core033_kernel_decide
theorem rows2650 : actualRows2650=WordField.canonicalRows actualModulus 2650 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2650 : actualRows2650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2650=3396 := by core033_kernel_decide
theorem rows2651 : actualRows2651=WordField.canonicalRows actualModulus 2651 (.band 2649 2650) := by core033_kernel_decide
theorem stats2651 : actualRows2651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2651=5124 := by core033_kernel_decide
theorem rows2652 : actualRows2652=WordField.canonicalRows actualModulus 2652 (.shr 2148 8) := by core033_kernel_decide
theorem stats2652 : actualRows2652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2652=4548 := by core033_kernel_decide
theorem rows2653 : actualRows2653=WordField.canonicalRows actualModulus 2653 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2653 : actualRows2653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2653=3396 := by core033_kernel_decide
theorem rows2654 : actualRows2654=WordField.canonicalRows actualModulus 2654 (.band 2652 2653) := by core033_kernel_decide
theorem stats2654 : actualRows2654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2654=5124 := by core033_kernel_decide
theorem rows2655 : actualRows2655=WordField.canonicalRows actualModulus 2655 (.shr 2148 16) := by core033_kernel_decide
theorem stats2655 : actualRows2655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2655=3972 := by core033_kernel_decide
theorem rows2656 : actualRows2656=WordField.canonicalRows actualModulus 2656 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2656 : actualRows2656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2656=3396 := by core033_kernel_decide
theorem rows2657 : actualRows2657=WordField.canonicalRows actualModulus 2657 (.band 2655 2656) := by core033_kernel_decide
theorem stats2657 : actualRows2657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2657=5124 := by core033_kernel_decide
theorem rows2658 : actualRows2658=WordField.canonicalRows actualModulus 2658 (.shr 2148 24) := by core033_kernel_decide
theorem stats2658 : actualRows2658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2658=3396 := by core033_kernel_decide
theorem rows2659 : actualRows2659=WordField.canonicalRows actualModulus 2659 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2659 : actualRows2659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2659=3396 := by core033_kernel_decide
theorem rows2660 : actualRows2660=WordField.canonicalRows actualModulus 2660 (.band 2658 2659) := by core033_kernel_decide
theorem stats2660 : actualRows2660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2660=5124 := by core033_kernel_decide
theorem rows2661 : actualRows2661=WordField.canonicalRows actualModulus 2661 (.shr 2158 0) := by core033_kernel_decide
theorem stats2661 : actualRows2661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2661=5124 := by core033_kernel_decide
theorem rows2662 : actualRows2662=WordField.canonicalRows actualModulus 2662 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2662 : actualRows2662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2662=3396 := by core033_kernel_decide
theorem rows2663 : actualRows2663=WordField.canonicalRows actualModulus 2663 (.band 2661 2662) := by core033_kernel_decide
theorem stats2663 : actualRows2663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2663=5124 := by core033_kernel_decide
theorem rows2664 : actualRows2664=WordField.canonicalRows actualModulus 2664 (.shr 2158 8) := by core033_kernel_decide
theorem stats2664 : actualRows2664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2664=4548 := by core033_kernel_decide
theorem rows2665 : actualRows2665=WordField.canonicalRows actualModulus 2665 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2665 : actualRows2665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2665=3396 := by core033_kernel_decide
theorem rows2666 : actualRows2666=WordField.canonicalRows actualModulus 2666 (.band 2664 2665) := by core033_kernel_decide
theorem stats2666 : actualRows2666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2666=5124 := by core033_kernel_decide
theorem rows2667 : actualRows2667=WordField.canonicalRows actualModulus 2667 (.shr 2158 16) := by core033_kernel_decide
theorem stats2667 : actualRows2667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2667=3972 := by core033_kernel_decide
theorem rows2668 : actualRows2668=WordField.canonicalRows actualModulus 2668 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2668 : actualRows2668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2668=3396 := by core033_kernel_decide
theorem rows2669 : actualRows2669=WordField.canonicalRows actualModulus 2669 (.band 2667 2668) := by core033_kernel_decide
theorem stats2669 : actualRows2669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2669=5124 := by core033_kernel_decide
theorem rows2670 : actualRows2670=WordField.canonicalRows actualModulus 2670 (.shr 2158 24) := by core033_kernel_decide
theorem stats2670 : actualRows2670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2670=3396 := by core033_kernel_decide
theorem rows2671 : actualRows2671=WordField.canonicalRows actualModulus 2671 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2671 : actualRows2671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2671=3396 := by core033_kernel_decide
theorem rows2672 : actualRows2672=WordField.canonicalRows actualModulus 2672 (.band 2670 2671) := by core033_kernel_decide
theorem stats2672 : actualRows2672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2672=5124 := by core033_kernel_decide
theorem rows2673 : actualRows2673=WordField.canonicalRows actualModulus 2673 (.shr 2208 0) := by core033_kernel_decide
theorem stats2673 : actualRows2673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2673=5124 := by core033_kernel_decide
theorem rows2674 : actualRows2674=WordField.canonicalRows actualModulus 2674 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2674 : actualRows2674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2674=3396 := by core033_kernel_decide
theorem rows2675 : actualRows2675=WordField.canonicalRows actualModulus 2675 (.band 2673 2674) := by core033_kernel_decide
theorem stats2675 : actualRows2675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2675=5124 := by core033_kernel_decide
theorem rows2676 : actualRows2676=WordField.canonicalRows actualModulus 2676 (.shr 2208 8) := by core033_kernel_decide
theorem stats2676 : actualRows2676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2676=4548 := by core033_kernel_decide
theorem rows2677 : actualRows2677=WordField.canonicalRows actualModulus 2677 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2677 : actualRows2677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2677=3396 := by core033_kernel_decide
def partRows39 : List R1CS.Row := actualRows2614++actualRows2615++actualRows2616++actualRows2617++actualRows2618++actualRows2619++actualRows2620++actualRows2621++actualRows2622++actualRows2623++actualRows2624++actualRows2625++actualRows2626++actualRows2627++actualRows2628++actualRows2629++actualRows2630++actualRows2631++actualRows2632++actualRows2633++actualRows2634++actualRows2635++actualRows2636++actualRows2637++actualRows2638++actualRows2639++actualRows2640++actualRows2641++actualRows2642++actualRows2643++actualRows2644++actualRows2645++actualRows2646++actualRows2647++actualRows2648++actualRows2649++actualRows2650++actualRows2651++actualRows2652++actualRows2653++actualRows2654++actualRows2655++actualRows2656++actualRows2657++actualRows2658++actualRows2659++actualRows2660++actualRows2661++actualRows2662++actualRows2663++actualRows2664++actualRows2665++actualRows2666++actualRows2667++actualRows2668++actualRows2669++actualRows2670++actualRows2671++actualRows2672++actualRows2673++actualRows2674++actualRows2675++actualRows2676++actualRows2677
def partOps39 : List WordIR.Op := [.literal (BitVec.ofNat 32 255),.band 2613 2614,.shr 2118 8,.literal (BitVec.ofNat 32 255),.band 2616 2617,.shr 2118 16,.literal (BitVec.ofNat 32 255),.band 2619 2620,.shr 2118 24,.literal (BitVec.ofNat 32 255),.band 2622 2623,.shr 2128 0,.literal (BitVec.ofNat 32 255),.band 2625 2626,.shr 2128 8,.literal (BitVec.ofNat 32 255),.band 2628 2629,.shr 2128 16,.literal (BitVec.ofNat 32 255),.band 2631 2632,.shr 2128 24,.literal (BitVec.ofNat 32 255),.band 2634 2635,.shr 2138 0,.literal (BitVec.ofNat 32 255),.band 2637 2638,.shr 2138 8,.literal (BitVec.ofNat 32 255),.band 2640 2641,.shr 2138 16,.literal (BitVec.ofNat 32 255),.band 2643 2644,.shr 2138 24,.literal (BitVec.ofNat 32 255),.band 2646 2647,.shr 2148 0,.literal (BitVec.ofNat 32 255),.band 2649 2650,.shr 2148 8,.literal (BitVec.ofNat 32 255),.band 2652 2653,.shr 2148 16,.literal (BitVec.ofNat 32 255),.band 2655 2656,.shr 2148 24,.literal (BitVec.ofNat 32 255),.band 2658 2659,.shr 2158 0,.literal (BitVec.ofNat 32 255),.band 2661 2662,.shr 2158 8,.literal (BitVec.ofNat 32 255),.band 2664 2665,.shr 2158 16,.literal (BitVec.ofNat 32 255),.band 2667 2668,.shr 2158 24,.literal (BitVec.ofNat 32 255),.band 2670 2671,.shr 2208 0,.literal (BitVec.ofNat 32 255),.band 2673 2674,.shr 2208 8,.literal (BitVec.ofNat 32 255)]
theorem partExact39 : partRows39=WordField.rows actualModulus 2614 partOps39 := by
  simp only [partRows39,partOps39,WordField.rows,rows2614,rows2615,rows2616,rows2617,rows2618,rows2619,rows2620,rows2621,rows2622,rows2623,rows2624,rows2625,rows2626,rows2627,rows2628,rows2629,rows2630,rows2631,rows2632,rows2633,rows2634,rows2635,rows2636,rows2637,rows2638,rows2639,rows2640,rows2641,rows2642,rows2643,rows2644,rows2645,rows2646,rows2647,rows2648,rows2649,rows2650,rows2651,rows2652,rows2653,rows2654,rows2655,rows2656,rows2657,rows2658,rows2659,rows2660,rows2661,rows2662,rows2663,rows2664,rows2665,rows2666,rows2667,rows2668,rows2669,rows2670,rows2671,rows2672,rows2673,rows2674,rows2675,rows2676,rows2677,List.append_assoc,List.append_nil]
theorem partLength39 : partOps39.length=64 := by decide
theorem partStats39 : partRows39.length=2176 ∧ MatrixRowBlocks.rowsWeight partRows39=272064 := by
  simp only [partRows39,List.length_append,MatrixRowBlocks.rows_weight_append,stats2614.1,stats2614.2,stats2615.1,stats2615.2,stats2616.1,stats2616.2,stats2617.1,stats2617.2,stats2618.1,stats2618.2,stats2619.1,stats2619.2,stats2620.1,stats2620.2,stats2621.1,stats2621.2,stats2622.1,stats2622.2,stats2623.1,stats2623.2,stats2624.1,stats2624.2,stats2625.1,stats2625.2,stats2626.1,stats2626.2,stats2627.1,stats2627.2,stats2628.1,stats2628.2,stats2629.1,stats2629.2,stats2630.1,stats2630.2,stats2631.1,stats2631.2,stats2632.1,stats2632.2,stats2633.1,stats2633.2,stats2634.1,stats2634.2,stats2635.1,stats2635.2,stats2636.1,stats2636.2,stats2637.1,stats2637.2,stats2638.1,stats2638.2,stats2639.1,stats2639.2,stats2640.1,stats2640.2,stats2641.1,stats2641.2,stats2642.1,stats2642.2,stats2643.1,stats2643.2,stats2644.1,stats2644.2,stats2645.1,stats2645.2,stats2646.1,stats2646.2,stats2647.1,stats2647.2,stats2648.1,stats2648.2,stats2649.1,stats2649.2,stats2650.1,stats2650.2,stats2651.1,stats2651.2,stats2652.1,stats2652.2,stats2653.1,stats2653.2,stats2654.1,stats2654.2,stats2655.1,stats2655.2,stats2656.1,stats2656.2,stats2657.1,stats2657.2,stats2658.1,stats2658.2,stats2659.1,stats2659.2,stats2660.1,stats2660.2,stats2661.1,stats2661.2,stats2662.1,stats2662.2,stats2663.1,stats2663.2,stats2664.1,stats2664.2,stats2665.1,stats2665.2,stats2666.1,stats2666.2,stats2667.1,stats2667.2,stats2668.1,stats2668.2,stats2669.1,stats2669.2,stats2670.1,stats2670.2,stats2671.1,stats2671.2,stats2672.1,stats2672.2,stats2673.1,stats2673.2,stats2674.1,stats2674.2,stats2675.1,stats2675.2,stats2676.1,stats2676.2,stats2677.1,stats2677.2]
  decide
end AuthenticatedBranchRoundCheckedRows
