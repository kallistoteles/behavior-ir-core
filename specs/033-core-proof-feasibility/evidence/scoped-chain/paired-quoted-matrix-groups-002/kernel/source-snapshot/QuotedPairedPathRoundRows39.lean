import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData40
import PairedPathRoundInstructionMatrixData41
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2592 : actualRows2592=WordField.canonicalRows actualModulus 2592 (.literal (BitVec.ofNat 32 1013904242)) := by core033_kernel_decide
theorem stats2592 : actualRows2592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2592=4188 := by core033_kernel_decide
theorem rows2593 : actualRows2593=WordField.canonicalRows actualModulus 2593 (.band 2591 2592) := by core033_kernel_decide
theorem stats2593 : actualRows2593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2593=5124 := by core033_kernel_decide
theorem rows2594 : actualRows2594=WordField.canonicalRows actualModulus 2594 (.bxor 2566 2593) := by core033_kernel_decide
theorem stats2594 : actualRows2594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2594=7428 := by core033_kernel_decide
theorem rows2595 : actualRows2595=WordField.canonicalRows actualModulus 2595 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2595 : actualRows2595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2595=2892 := by core033_kernel_decide
theorem rows2596 : actualRows2596=WordField.canonicalRows actualModulus 2596 (.bxor 616 2595) := by core033_kernel_decide
theorem stats2596 : actualRows2596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2596=7428 := by core033_kernel_decide
theorem rows2597 : actualRows2597=WordField.canonicalRows actualModulus 2597 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2597 : actualRows2597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2597=2820 := by core033_kernel_decide
theorem rows2598 : actualRows2598=WordField.canonicalRows actualModulus 2598 (.bnot 2597) := by core033_kernel_decide
theorem stats2598 : actualRows2598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2598=6276 := by core033_kernel_decide
theorem rows2599 : actualRows2599=WordField.canonicalRows actualModulus 2599 (.band 2596 2598) := by core033_kernel_decide
theorem stats2599 : actualRows2599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2599=5124 := by core033_kernel_decide
theorem rows2600 : actualRows2600=WordField.canonicalRows actualModulus 2600 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2600 : actualRows2600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2600=2892 := by core033_kernel_decide
theorem rows2601 : actualRows2601=WordField.canonicalRows actualModulus 2601 (.bxor 616 2600) := by core033_kernel_decide
theorem stats2601 : actualRows2601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2601=7428 := by core033_kernel_decide
theorem rows2602 : actualRows2602=WordField.canonicalRows actualModulus 2602 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2602 : actualRows2602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2602=2820 := by core033_kernel_decide
theorem rows2603 : actualRows2603=WordField.canonicalRows actualModulus 2603 (.bnot 2602) := by core033_kernel_decide
theorem stats2603 : actualRows2603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2603=6276 := by core033_kernel_decide
theorem rows2604 : actualRows2604=WordField.canonicalRows actualModulus 2604 (.bxor 2601 2603) := by core033_kernel_decide
theorem stats2604 : actualRows2604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2604=7428 := by core033_kernel_decide
theorem rows2605 : actualRows2605=WordField.canonicalRows actualModulus 2605 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2605 : actualRows2605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2605=2892 := by core033_kernel_decide
theorem rows2606 : actualRows2606=WordField.canonicalRows actualModulus 2606 (.bxor 616 2605) := by core033_kernel_decide
theorem stats2606 : actualRows2606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2606=7428 := by core033_kernel_decide
theorem rows2607 : actualRows2607=WordField.canonicalRows actualModulus 2607 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2607 : actualRows2607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2607=2820 := by core033_kernel_decide
theorem rows2608 : actualRows2608=WordField.canonicalRows actualModulus 2608 (.bnot 2607) := by core033_kernel_decide
theorem stats2608 : actualRows2608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2608=6276 := by core033_kernel_decide
theorem rows2609 : actualRows2609=WordField.canonicalRows actualModulus 2609 (.badd 2606 2608) := by core033_kernel_decide
theorem stats2609 : actualRows2609.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2609=5388 := by core033_kernel_decide
theorem rows2610 : actualRows2610=WordField.canonicalRows actualModulus 2610 (.bnot 2609) := by core033_kernel_decide
theorem stats2610 : actualRows2610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2610=6276 := by core033_kernel_decide
theorem rows2611 : actualRows2611=WordField.canonicalRows actualModulus 2611 (.band 2604 2610) := by core033_kernel_decide
theorem stats2611 : actualRows2611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2611=5124 := by core033_kernel_decide
theorem rows2612 : actualRows2612=WordField.canonicalRows actualModulus 2612 (.bxor 2599 2611) := by core033_kernel_decide
theorem stats2612 : actualRows2612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2612=7428 := by core033_kernel_decide
theorem rows2613 : actualRows2613=WordField.canonicalRows actualModulus 2613 (.shr 2612 31) := by core033_kernel_decide
theorem stats2613 : actualRows2613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2613=2892 := by core033_kernel_decide
theorem rows2614 : actualRows2614=WordField.canonicalRows actualModulus 2614 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2614 : actualRows2614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2614=2892 := by core033_kernel_decide
theorem rows2615 : actualRows2615=WordField.canonicalRows actualModulus 2615 (.bxor 2613 2614) := by core033_kernel_decide
theorem stats2615 : actualRows2615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2615=7428 := by core033_kernel_decide
theorem rows2616 : actualRows2616=WordField.canonicalRows actualModulus 2616 (.bnot 2615) := by core033_kernel_decide
theorem stats2616 : actualRows2616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2616=6276 := by core033_kernel_decide
theorem rows2617 : actualRows2617=WordField.canonicalRows actualModulus 2617 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2617 : actualRows2617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2617=2892 := by core033_kernel_decide
theorem rows2618 : actualRows2618=WordField.canonicalRows actualModulus 2618 (.badd 2616 2617) := by core033_kernel_decide
theorem stats2618 : actualRows2618.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2618=5388 := by core033_kernel_decide
theorem rows2619 : actualRows2619=WordField.canonicalRows actualModulus 2619 (.band 2618 1034) := by core033_kernel_decide
theorem stats2619 : actualRows2619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2619=5124 := by core033_kernel_decide
theorem rows2620 : actualRows2620=WordField.canonicalRows actualModulus 2620 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2620 : actualRows2620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2620=2892 := by core033_kernel_decide
theorem rows2621 : actualRows2621=WordField.canonicalRows actualModulus 2621 (.bxor 616 2620) := by core033_kernel_decide
theorem stats2621 : actualRows2621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2621=7428 := by core033_kernel_decide
theorem rows2622 : actualRows2622=WordField.canonicalRows actualModulus 2622 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2622 : actualRows2622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2622=2820 := by core033_kernel_decide
theorem rows2623 : actualRows2623=WordField.canonicalRows actualModulus 2623 (.bnot 2622) := by core033_kernel_decide
theorem stats2623 : actualRows2623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2623=6276 := by core033_kernel_decide
theorem rows2624 : actualRows2624=WordField.canonicalRows actualModulus 2624 (.band 2621 2623) := by core033_kernel_decide
theorem stats2624 : actualRows2624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2624=5124 := by core033_kernel_decide
theorem rows2625 : actualRows2625=WordField.canonicalRows actualModulus 2625 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2625 : actualRows2625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2625=2892 := by core033_kernel_decide
theorem rows2626 : actualRows2626=WordField.canonicalRows actualModulus 2626 (.bxor 616 2625) := by core033_kernel_decide
theorem stats2626 : actualRows2626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2626=7428 := by core033_kernel_decide
theorem rows2627 : actualRows2627=WordField.canonicalRows actualModulus 2627 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2627 : actualRows2627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2627=2820 := by core033_kernel_decide
theorem rows2628 : actualRows2628=WordField.canonicalRows actualModulus 2628 (.bnot 2627) := by core033_kernel_decide
theorem stats2628 : actualRows2628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2628=6276 := by core033_kernel_decide
theorem rows2629 : actualRows2629=WordField.canonicalRows actualModulus 2629 (.bxor 2626 2628) := by core033_kernel_decide
theorem stats2629 : actualRows2629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2629=7428 := by core033_kernel_decide
theorem rows2630 : actualRows2630=WordField.canonicalRows actualModulus 2630 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2630 : actualRows2630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2630=2892 := by core033_kernel_decide
theorem rows2631 : actualRows2631=WordField.canonicalRows actualModulus 2631 (.bxor 616 2630) := by core033_kernel_decide
theorem stats2631 : actualRows2631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2631=7428 := by core033_kernel_decide
theorem rows2632 : actualRows2632=WordField.canonicalRows actualModulus 2632 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2632 : actualRows2632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2632=2820 := by core033_kernel_decide
theorem rows2633 : actualRows2633=WordField.canonicalRows actualModulus 2633 (.bnot 2632) := by core033_kernel_decide
theorem stats2633 : actualRows2633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2633=6276 := by core033_kernel_decide
theorem rows2634 : actualRows2634=WordField.canonicalRows actualModulus 2634 (.badd 2631 2633) := by core033_kernel_decide
theorem stats2634 : actualRows2634.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2634=5388 := by core033_kernel_decide
theorem rows2635 : actualRows2635=WordField.canonicalRows actualModulus 2635 (.bnot 2634) := by core033_kernel_decide
theorem stats2635 : actualRows2635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2635=6276 := by core033_kernel_decide
theorem rows2636 : actualRows2636=WordField.canonicalRows actualModulus 2636 (.band 2629 2635) := by core033_kernel_decide
theorem stats2636 : actualRows2636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2636=5124 := by core033_kernel_decide
theorem rows2637 : actualRows2637=WordField.canonicalRows actualModulus 2637 (.bxor 2624 2636) := by core033_kernel_decide
theorem stats2637 : actualRows2637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2637=7428 := by core033_kernel_decide
theorem rows2638 : actualRows2638=WordField.canonicalRows actualModulus 2638 (.shr 2637 31) := by core033_kernel_decide
theorem stats2638 : actualRows2638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2638=2892 := by core033_kernel_decide
theorem rows2639 : actualRows2639=WordField.canonicalRows actualModulus 2639 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2639 : actualRows2639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2639=2892 := by core033_kernel_decide
theorem rows2640 : actualRows2640=WordField.canonicalRows actualModulus 2640 (.bxor 2638 2639) := by core033_kernel_decide
theorem stats2640 : actualRows2640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2640=7428 := by core033_kernel_decide
theorem rows2641 : actualRows2641=WordField.canonicalRows actualModulus 2641 (.bnot 2640) := by core033_kernel_decide
theorem stats2641 : actualRows2641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2641=6276 := by core033_kernel_decide
theorem rows2642 : actualRows2642=WordField.canonicalRows actualModulus 2642 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2642 : actualRows2642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2642=2892 := by core033_kernel_decide
theorem rows2643 : actualRows2643=WordField.canonicalRows actualModulus 2643 (.badd 2641 2642) := by core033_kernel_decide
theorem stats2643 : actualRows2643.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2643=5388 := by core033_kernel_decide
theorem rows2644 : actualRows2644=WordField.canonicalRows actualModulus 2644 (.bnot 2643) := by core033_kernel_decide
theorem stats2644 : actualRows2644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2644=6276 := by core033_kernel_decide
theorem rows2645 : actualRows2645=WordField.canonicalRows actualModulus 2645 (.literal (BitVec.ofNat 32 2773480762)) := by core033_kernel_decide
theorem stats2645 : actualRows2645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2645=4188 := by core033_kernel_decide
theorem rows2646 : actualRows2646=WordField.canonicalRows actualModulus 2646 (.band 2644 2645) := by core033_kernel_decide
theorem stats2646 : actualRows2646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2646=5124 := by core033_kernel_decide
theorem rows2647 : actualRows2647=WordField.canonicalRows actualModulus 2647 (.bxor 2619 2646) := by core033_kernel_decide
theorem stats2647 : actualRows2647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2647=7428 := by core033_kernel_decide
theorem rows2648 : actualRows2648=WordField.canonicalRows actualModulus 2648 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2648 : actualRows2648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2648=2892 := by core033_kernel_decide
theorem rows2649 : actualRows2649=WordField.canonicalRows actualModulus 2649 (.bxor 616 2648) := by core033_kernel_decide
theorem stats2649 : actualRows2649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2649=7428 := by core033_kernel_decide
theorem rows2650 : actualRows2650=WordField.canonicalRows actualModulus 2650 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2650 : actualRows2650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2650=2820 := by core033_kernel_decide
theorem rows2651 : actualRows2651=WordField.canonicalRows actualModulus 2651 (.bnot 2650) := by core033_kernel_decide
theorem stats2651 : actualRows2651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2651=6276 := by core033_kernel_decide
theorem rows2652 : actualRows2652=WordField.canonicalRows actualModulus 2652 (.band 2649 2651) := by core033_kernel_decide
theorem stats2652 : actualRows2652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2652=5124 := by core033_kernel_decide
theorem rows2653 : actualRows2653=WordField.canonicalRows actualModulus 2653 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2653 : actualRows2653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2653=2892 := by core033_kernel_decide
theorem rows2654 : actualRows2654=WordField.canonicalRows actualModulus 2654 (.bxor 616 2653) := by core033_kernel_decide
theorem stats2654 : actualRows2654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2654=7428 := by core033_kernel_decide
theorem rows2655 : actualRows2655=WordField.canonicalRows actualModulus 2655 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2655 : actualRows2655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2655=2820 := by core033_kernel_decide
def partRows39 : List R1CS.Row := actualRows2592++actualRows2593++actualRows2594++actualRows2595++actualRows2596++actualRows2597++actualRows2598++actualRows2599++actualRows2600++actualRows2601++actualRows2602++actualRows2603++actualRows2604++actualRows2605++actualRows2606++actualRows2607++actualRows2608++actualRows2609++actualRows2610++actualRows2611++actualRows2612++actualRows2613++actualRows2614++actualRows2615++actualRows2616++actualRows2617++actualRows2618++actualRows2619++actualRows2620++actualRows2621++actualRows2622++actualRows2623++actualRows2624++actualRows2625++actualRows2626++actualRows2627++actualRows2628++actualRows2629++actualRows2630++actualRows2631++actualRows2632++actualRows2633++actualRows2634++actualRows2635++actualRows2636++actualRows2637++actualRows2638++actualRows2639++actualRows2640++actualRows2641++actualRows2642++actualRows2643++actualRows2644++actualRows2645++actualRows2646++actualRows2647++actualRows2648++actualRows2649++actualRows2650++actualRows2651++actualRows2652++actualRows2653++actualRows2654++actualRows2655
def partOps39 : List WordIR.Op := [.literal (BitVec.ofNat 32 1013904242),.band 2591 2592,.bxor 2566 2593,.literal (BitVec.ofNat 32 2),.bxor 616 2595,.literal (BitVec.ofNat 32 0),.bnot 2597,.band 2596 2598,.literal (BitVec.ofNat 32 2),.bxor 616 2600,.literal (BitVec.ofNat 32 0),.bnot 2602,.bxor 2601 2603,.literal (BitVec.ofNat 32 2),.bxor 616 2605,.literal (BitVec.ofNat 32 0),.bnot 2607,.badd 2606 2608,.bnot 2609,.band 2604 2610,.bxor 2599 2611,.shr 2612 31,.literal (BitVec.ofNat 32 1),.bxor 2613 2614,.bnot 2615,.literal (BitVec.ofNat 32 1),.badd 2616 2617,.band 2618 1034,.literal (BitVec.ofNat 32 2),.bxor 616 2620,.literal (BitVec.ofNat 32 0),.bnot 2622,.band 2621 2623,.literal (BitVec.ofNat 32 2),.bxor 616 2625,.literal (BitVec.ofNat 32 0),.bnot 2627,.bxor 2626 2628,.literal (BitVec.ofNat 32 2),.bxor 616 2630,.literal (BitVec.ofNat 32 0),.bnot 2632,.badd 2631 2633,.bnot 2634,.band 2629 2635,.bxor 2624 2636,.shr 2637 31,.literal (BitVec.ofNat 32 1),.bxor 2638 2639,.bnot 2640,.literal (BitVec.ofNat 32 1),.badd 2641 2642,.bnot 2643,.literal (BitVec.ofNat 32 2773480762),.band 2644 2645,.bxor 2619 2646,.literal (BitVec.ofNat 32 2),.bxor 616 2648,.literal (BitVec.ofNat 32 0),.bnot 2650,.band 2649 2651,.literal (BitVec.ofNat 32 2),.bxor 616 2653,.literal (BitVec.ofNat 32 0)]
theorem partExact39 : partRows39=WordField.rows actualModulus 2592 partOps39 := by
  simp only [partRows39,partOps39,WordField.rows,rows2592,rows2593,rows2594,rows2595,rows2596,rows2597,rows2598,rows2599,rows2600,rows2601,rows2602,rows2603,rows2604,rows2605,rows2606,rows2607,rows2608,rows2609,rows2610,rows2611,rows2612,rows2613,rows2614,rows2615,rows2616,rows2617,rows2618,rows2619,rows2620,rows2621,rows2622,rows2623,rows2624,rows2625,rows2626,rows2627,rows2628,rows2629,rows2630,rows2631,rows2632,rows2633,rows2634,rows2635,rows2636,rows2637,rows2638,rows2639,rows2640,rows2641,rows2642,rows2643,rows2644,rows2645,rows2646,rows2647,rows2648,rows2649,rows2650,rows2651,rows2652,rows2653,rows2654,rows2655,List.append_assoc,List.append_nil]
theorem partLength39 : partOps39.length=64 := by decide
theorem partStats39 : partRows39.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows39=328128 := by
  simp only [partRows39,List.length_append,MatrixRowBlocks.rows_weight_append,stats2592.1,stats2592.2,stats2593.1,stats2593.2,stats2594.1,stats2594.2,stats2595.1,stats2595.2,stats2596.1,stats2596.2,stats2597.1,stats2597.2,stats2598.1,stats2598.2,stats2599.1,stats2599.2,stats2600.1,stats2600.2,stats2601.1,stats2601.2,stats2602.1,stats2602.2,stats2603.1,stats2603.2,stats2604.1,stats2604.2,stats2605.1,stats2605.2,stats2606.1,stats2606.2,stats2607.1,stats2607.2,stats2608.1,stats2608.2,stats2609.1,stats2609.2,stats2610.1,stats2610.2,stats2611.1,stats2611.2,stats2612.1,stats2612.2,stats2613.1,stats2613.2,stats2614.1,stats2614.2,stats2615.1,stats2615.2,stats2616.1,stats2616.2,stats2617.1,stats2617.2,stats2618.1,stats2618.2,stats2619.1,stats2619.2,stats2620.1,stats2620.2,stats2621.1,stats2621.2,stats2622.1,stats2622.2,stats2623.1,stats2623.2,stats2624.1,stats2624.2,stats2625.1,stats2625.2,stats2626.1,stats2626.2,stats2627.1,stats2627.2,stats2628.1,stats2628.2,stats2629.1,stats2629.2,stats2630.1,stats2630.2,stats2631.1,stats2631.2,stats2632.1,stats2632.2,stats2633.1,stats2633.2,stats2634.1,stats2634.2,stats2635.1,stats2635.2,stats2636.1,stats2636.2,stats2637.1,stats2637.2,stats2638.1,stats2638.2,stats2639.1,stats2639.2,stats2640.1,stats2640.2,stats2641.1,stats2641.2,stats2642.1,stats2642.2,stats2643.1,stats2643.2,stats2644.1,stats2644.2,stats2645.1,stats2645.2,stats2646.1,stats2646.2,stats2647.1,stats2647.2,stats2648.1,stats2648.2,stats2649.1,stats2649.2,stats2650.1,stats2650.2,stats2651.1,stats2651.2,stats2652.1,stats2652.2,stats2653.1,stats2653.2,stats2654.1,stats2654.2,stats2655.1,stats2655.2]
  decide
end QuotedPairedPathRoundCheckedRows
