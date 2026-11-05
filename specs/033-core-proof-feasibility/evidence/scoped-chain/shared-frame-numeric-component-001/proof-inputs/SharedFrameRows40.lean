import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData40
import SharedFrameInstructionMatrixData41
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2603 : actualRows2603=WordField.canonicalRows actualModulus 2603 (.bnot 2595) := by core033_kernel_decide
theorem stats2603 : actualRows2603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2603=6276 := by core033_kernel_decide
theorem rows2604 : actualRows2604=WordField.canonicalRows actualModulus 2604 (.band 2603 2543) := by core033_kernel_decide
theorem stats2604 : actualRows2604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2604=5124 := by core033_kernel_decide
theorem rows2605 : actualRows2605=WordField.canonicalRows actualModulus 2605 (.bxor 2602 2604) := by core033_kernel_decide
theorem stats2605 : actualRows2605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2605=7428 := by core033_kernel_decide
theorem rows2606 : actualRows2606=WordField.canonicalRows actualModulus 2606 (.badd 2601 2605) := by core033_kernel_decide
theorem stats2606 : actualRows2606.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2606=5388 := by core033_kernel_decide
theorem rows2607 : actualRows2607=WordField.canonicalRows actualModulus 2607 (.literal (BitVec.ofNat 32 4022224774)) := by core033_kernel_decide
theorem stats2607 : actualRows2607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2607=4260 := by core033_kernel_decide
theorem rows2608 : actualRows2608=WordField.canonicalRows actualModulus 2608 (.badd 2606 2607) := by core033_kernel_decide
theorem stats2608 : actualRows2608.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2608=5388 := by core033_kernel_decide
theorem rows2609 : actualRows2609=WordField.canonicalRows actualModulus 2609 (.badd 2608 1554) := by core033_kernel_decide
theorem stats2609 : actualRows2609.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2609=5388 := by core033_kernel_decide
theorem rows2610 : actualRows2610=WordField.canonicalRows actualModulus 2610 (.rotr 2594 2) := by core033_kernel_decide
theorem stats2610 : actualRows2610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2610=5124 := by core033_kernel_decide
theorem rows2611 : actualRows2611=WordField.canonicalRows actualModulus 2611 (.rotr 2594 13) := by core033_kernel_decide
theorem stats2611 : actualRows2611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2611=5124 := by core033_kernel_decide
theorem rows2612 : actualRows2612=WordField.canonicalRows actualModulus 2612 (.bxor 2610 2611) := by core033_kernel_decide
theorem stats2612 : actualRows2612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2612=7428 := by core033_kernel_decide
theorem rows2613 : actualRows2613=WordField.canonicalRows actualModulus 2613 (.rotr 2594 22) := by core033_kernel_decide
theorem stats2613 : actualRows2613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2613=5124 := by core033_kernel_decide
theorem rows2614 : actualRows2614=WordField.canonicalRows actualModulus 2614 (.bxor 2612 2613) := by core033_kernel_decide
theorem stats2614 : actualRows2614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2614=7428 := by core033_kernel_decide
theorem rows2615 : actualRows2615=WordField.canonicalRows actualModulus 2615 (.band 2594 2568) := by core033_kernel_decide
theorem stats2615 : actualRows2615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2615=5124 := by core033_kernel_decide
theorem rows2616 : actualRows2616=WordField.canonicalRows actualModulus 2616 (.band 2594 2542) := by core033_kernel_decide
theorem stats2616 : actualRows2616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2616=5124 := by core033_kernel_decide
theorem rows2617 : actualRows2617=WordField.canonicalRows actualModulus 2617 (.bxor 2615 2616) := by core033_kernel_decide
theorem stats2617 : actualRows2617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2617=7428 := by core033_kernel_decide
theorem rows2618 : actualRows2618=WordField.canonicalRows actualModulus 2618 (.bxor 2617 2589) := by core033_kernel_decide
theorem stats2618 : actualRows2618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2618=7428 := by core033_kernel_decide
theorem rows2619 : actualRows2619=WordField.canonicalRows actualModulus 2619 (.badd 2614 2618) := by core033_kernel_decide
theorem stats2619 : actualRows2619.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2619=5388 := by core033_kernel_decide
theorem rows2620 : actualRows2620=WordField.canonicalRows actualModulus 2620 (.badd 2609 2619) := by core033_kernel_decide
theorem stats2620 : actualRows2620.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2620=5388 := by core033_kernel_decide
theorem rows2621 : actualRows2621=WordField.canonicalRows actualModulus 2621 (.badd 2516 2609) := by core033_kernel_decide
theorem stats2621 : actualRows2621.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2621=5388 := by core033_kernel_decide
theorem rows2622 : actualRows2622=WordField.canonicalRows actualModulus 2622 (.rotr 2621 6) := by core033_kernel_decide
theorem stats2622 : actualRows2622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2622=5124 := by core033_kernel_decide
theorem rows2623 : actualRows2623=WordField.canonicalRows actualModulus 2623 (.rotr 2621 11) := by core033_kernel_decide
theorem stats2623 : actualRows2623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2623=5124 := by core033_kernel_decide
theorem rows2624 : actualRows2624=WordField.canonicalRows actualModulus 2624 (.bxor 2622 2623) := by core033_kernel_decide
theorem stats2624 : actualRows2624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2624=7428 := by core033_kernel_decide
theorem rows2625 : actualRows2625=WordField.canonicalRows actualModulus 2625 (.rotr 2621 25) := by core033_kernel_decide
theorem stats2625 : actualRows2625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2625=5124 := by core033_kernel_decide
theorem rows2626 : actualRows2626=WordField.canonicalRows actualModulus 2626 (.bxor 2624 2625) := by core033_kernel_decide
theorem stats2626 : actualRows2626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2626=7428 := by core033_kernel_decide
theorem rows2627 : actualRows2627=WordField.canonicalRows actualModulus 2627 (.badd 2543 2626) := by core033_kernel_decide
theorem stats2627 : actualRows2627.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2627=5388 := by core033_kernel_decide
theorem rows2628 : actualRows2628=WordField.canonicalRows actualModulus 2628 (.band 2621 2595) := by core033_kernel_decide
theorem stats2628 : actualRows2628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2628=5124 := by core033_kernel_decide
theorem rows2629 : actualRows2629=WordField.canonicalRows actualModulus 2629 (.bnot 2621) := by core033_kernel_decide
theorem stats2629 : actualRows2629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2629=6276 := by core033_kernel_decide
theorem rows2630 : actualRows2630=WordField.canonicalRows actualModulus 2630 (.band 2629 2569) := by core033_kernel_decide
theorem stats2630 : actualRows2630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2630=5124 := by core033_kernel_decide
theorem rows2631 : actualRows2631=WordField.canonicalRows actualModulus 2631 (.bxor 2628 2630) := by core033_kernel_decide
theorem stats2631 : actualRows2631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2631=7428 := by core033_kernel_decide
theorem rows2632 : actualRows2632=WordField.canonicalRows actualModulus 2632 (.badd 2627 2631) := by core033_kernel_decide
theorem stats2632 : actualRows2632.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2632=5388 := by core033_kernel_decide
theorem rows2633 : actualRows2633=WordField.canonicalRows actualModulus 2633 (.literal (BitVec.ofNat 32 264347078)) := by core033_kernel_decide
theorem stats2633 : actualRows2633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2633=3972 := by core033_kernel_decide
theorem rows2634 : actualRows2634=WordField.canonicalRows actualModulus 2634 (.badd 2632 2633) := by core033_kernel_decide
theorem stats2634 : actualRows2634.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2634=5388 := by core033_kernel_decide
theorem rows2635 : actualRows2635=WordField.canonicalRows actualModulus 2635 (.badd 2634 1567) := by core033_kernel_decide
theorem stats2635 : actualRows2635.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2635=5388 := by core033_kernel_decide
theorem rows2636 : actualRows2636=WordField.canonicalRows actualModulus 2636 (.rotr 2620 2) := by core033_kernel_decide
theorem stats2636 : actualRows2636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2636=5124 := by core033_kernel_decide
theorem rows2637 : actualRows2637=WordField.canonicalRows actualModulus 2637 (.rotr 2620 13) := by core033_kernel_decide
theorem stats2637 : actualRows2637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2637=5124 := by core033_kernel_decide
theorem rows2638 : actualRows2638=WordField.canonicalRows actualModulus 2638 (.bxor 2636 2637) := by core033_kernel_decide
theorem stats2638 : actualRows2638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2638=7428 := by core033_kernel_decide
theorem rows2639 : actualRows2639=WordField.canonicalRows actualModulus 2639 (.rotr 2620 22) := by core033_kernel_decide
theorem stats2639 : actualRows2639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2639=5124 := by core033_kernel_decide
theorem rows2640 : actualRows2640=WordField.canonicalRows actualModulus 2640 (.bxor 2638 2639) := by core033_kernel_decide
theorem stats2640 : actualRows2640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2640=7428 := by core033_kernel_decide
theorem rows2641 : actualRows2641=WordField.canonicalRows actualModulus 2641 (.band 2620 2594) := by core033_kernel_decide
theorem stats2641 : actualRows2641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2641=5124 := by core033_kernel_decide
theorem rows2642 : actualRows2642=WordField.canonicalRows actualModulus 2642 (.band 2620 2568) := by core033_kernel_decide
theorem stats2642 : actualRows2642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2642=5124 := by core033_kernel_decide
theorem rows2643 : actualRows2643=WordField.canonicalRows actualModulus 2643 (.bxor 2641 2642) := by core033_kernel_decide
theorem stats2643 : actualRows2643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2643=7428 := by core033_kernel_decide
theorem rows2644 : actualRows2644=WordField.canonicalRows actualModulus 2644 (.bxor 2643 2615) := by core033_kernel_decide
theorem stats2644 : actualRows2644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2644=7428 := by core033_kernel_decide
theorem rows2645 : actualRows2645=WordField.canonicalRows actualModulus 2645 (.badd 2640 2644) := by core033_kernel_decide
theorem stats2645 : actualRows2645.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2645=5388 := by core033_kernel_decide
theorem rows2646 : actualRows2646=WordField.canonicalRows actualModulus 2646 (.badd 2635 2645) := by core033_kernel_decide
theorem stats2646 : actualRows2646.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2646=5388 := by core033_kernel_decide
theorem rows2647 : actualRows2647=WordField.canonicalRows actualModulus 2647 (.badd 2542 2635) := by core033_kernel_decide
theorem stats2647 : actualRows2647.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2647=5388 := by core033_kernel_decide
theorem rows2648 : actualRows2648=WordField.canonicalRows actualModulus 2648 (.rotr 2647 6) := by core033_kernel_decide
theorem stats2648 : actualRows2648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2648=5124 := by core033_kernel_decide
theorem rows2649 : actualRows2649=WordField.canonicalRows actualModulus 2649 (.rotr 2647 11) := by core033_kernel_decide
theorem stats2649 : actualRows2649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2649=5124 := by core033_kernel_decide
theorem rows2650 : actualRows2650=WordField.canonicalRows actualModulus 2650 (.bxor 2648 2649) := by core033_kernel_decide
theorem stats2650 : actualRows2650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2650=7428 := by core033_kernel_decide
theorem rows2651 : actualRows2651=WordField.canonicalRows actualModulus 2651 (.rotr 2647 25) := by core033_kernel_decide
theorem stats2651 : actualRows2651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2651=5124 := by core033_kernel_decide
theorem rows2652 : actualRows2652=WordField.canonicalRows actualModulus 2652 (.bxor 2650 2651) := by core033_kernel_decide
theorem stats2652 : actualRows2652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2652=7428 := by core033_kernel_decide
theorem rows2653 : actualRows2653=WordField.canonicalRows actualModulus 2653 (.badd 2569 2652) := by core033_kernel_decide
theorem stats2653 : actualRows2653.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2653=5388 := by core033_kernel_decide
theorem rows2654 : actualRows2654=WordField.canonicalRows actualModulus 2654 (.band 2647 2621) := by core033_kernel_decide
theorem stats2654 : actualRows2654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2654=5124 := by core033_kernel_decide
theorem rows2655 : actualRows2655=WordField.canonicalRows actualModulus 2655 (.bnot 2647) := by core033_kernel_decide
theorem stats2655 : actualRows2655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2655=6276 := by core033_kernel_decide
theorem rows2656 : actualRows2656=WordField.canonicalRows actualModulus 2656 (.band 2655 2595) := by core033_kernel_decide
theorem stats2656 : actualRows2656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2656=5124 := by core033_kernel_decide
theorem rows2657 : actualRows2657=WordField.canonicalRows actualModulus 2657 (.bxor 2654 2656) := by core033_kernel_decide
theorem stats2657 : actualRows2657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2657=7428 := by core033_kernel_decide
theorem rows2658 : actualRows2658=WordField.canonicalRows actualModulus 2658 (.badd 2653 2657) := by core033_kernel_decide
theorem stats2658 : actualRows2658.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2658=5388 := by core033_kernel_decide
theorem rows2659 : actualRows2659=WordField.canonicalRows actualModulus 2659 (.literal (BitVec.ofNat 32 604807628)) := by core033_kernel_decide
theorem stats2659 : actualRows2659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2659=3612 := by core033_kernel_decide
theorem rows2660 : actualRows2660=WordField.canonicalRows actualModulus 2660 (.badd 2658 2659) := by core033_kernel_decide
theorem stats2660 : actualRows2660.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2660=5388 := by core033_kernel_decide
theorem rows2661 : actualRows2661=WordField.canonicalRows actualModulus 2661 (.badd 2660 1580) := by core033_kernel_decide
theorem stats2661 : actualRows2661.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2661=5388 := by core033_kernel_decide
theorem rows2662 : actualRows2662=WordField.canonicalRows actualModulus 2662 (.rotr 2646 2) := by core033_kernel_decide
theorem stats2662 : actualRows2662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2662=5124 := by core033_kernel_decide
theorem rows2663 : actualRows2663=WordField.canonicalRows actualModulus 2663 (.rotr 2646 13) := by core033_kernel_decide
theorem stats2663 : actualRows2663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2663=5124 := by core033_kernel_decide
theorem rows2664 : actualRows2664=WordField.canonicalRows actualModulus 2664 (.bxor 2662 2663) := by core033_kernel_decide
theorem stats2664 : actualRows2664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2664=7428 := by core033_kernel_decide
theorem rows2665 : actualRows2665=WordField.canonicalRows actualModulus 2665 (.rotr 2646 22) := by core033_kernel_decide
theorem stats2665 : actualRows2665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2665=5124 := by core033_kernel_decide
theorem rows2666 : actualRows2666=WordField.canonicalRows actualModulus 2666 (.bxor 2664 2665) := by core033_kernel_decide
theorem stats2666 : actualRows2666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2666=7428 := by core033_kernel_decide
def partRows40 : List R1CS.Row := actualRows2603++actualRows2604++actualRows2605++actualRows2606++actualRows2607++actualRows2608++actualRows2609++actualRows2610++actualRows2611++actualRows2612++actualRows2613++actualRows2614++actualRows2615++actualRows2616++actualRows2617++actualRows2618++actualRows2619++actualRows2620++actualRows2621++actualRows2622++actualRows2623++actualRows2624++actualRows2625++actualRows2626++actualRows2627++actualRows2628++actualRows2629++actualRows2630++actualRows2631++actualRows2632++actualRows2633++actualRows2634++actualRows2635++actualRows2636++actualRows2637++actualRows2638++actualRows2639++actualRows2640++actualRows2641++actualRows2642++actualRows2643++actualRows2644++actualRows2645++actualRows2646++actualRows2647++actualRows2648++actualRows2649++actualRows2650++actualRows2651++actualRows2652++actualRows2653++actualRows2654++actualRows2655++actualRows2656++actualRows2657++actualRows2658++actualRows2659++actualRows2660++actualRows2661++actualRows2662++actualRows2663++actualRows2664++actualRows2665++actualRows2666
def partOps40 : List WordIR.Op := [.bnot 2595,.band 2603 2543,.bxor 2602 2604,.badd 2601 2605,.literal (BitVec.ofNat 32 4022224774),.badd 2606 2607,.badd 2608 1554,.rotr 2594 2,.rotr 2594 13,.bxor 2610 2611,.rotr 2594 22,.bxor 2612 2613,.band 2594 2568,.band 2594 2542,.bxor 2615 2616,.bxor 2617 2589,.badd 2614 2618,.badd 2609 2619,.badd 2516 2609,.rotr 2621 6,.rotr 2621 11,.bxor 2622 2623,.rotr 2621 25,.bxor 2624 2625,.badd 2543 2626,.band 2621 2595,.bnot 2621,.band 2629 2569,.bxor 2628 2630,.badd 2627 2631,.literal (BitVec.ofNat 32 264347078),.badd 2632 2633,.badd 2634 1567,.rotr 2620 2,.rotr 2620 13,.bxor 2636 2637,.rotr 2620 22,.bxor 2638 2639,.band 2620 2594,.band 2620 2568,.bxor 2641 2642,.bxor 2643 2615,.badd 2640 2644,.badd 2635 2645,.badd 2542 2635,.rotr 2647 6,.rotr 2647 11,.bxor 2648 2649,.rotr 2647 25,.bxor 2650 2651,.badd 2569 2652,.band 2647 2621,.bnot 2647,.band 2655 2595,.bxor 2654 2656,.badd 2653 2657,.literal (BitVec.ofNat 32 604807628),.badd 2658 2659,.badd 2660 1580,.rotr 2646 2,.rotr 2646 13,.bxor 2662 2663,.rotr 2646 22,.bxor 2664 2665]
theorem partExact40 : partRows40=WordField.rows actualModulus 2603 partOps40 := by
  simp only [partRows40,partOps40,WordField.rows,rows2603,rows2604,rows2605,rows2606,rows2607,rows2608,rows2609,rows2610,rows2611,rows2612,rows2613,rows2614,rows2615,rows2616,rows2617,rows2618,rows2619,rows2620,rows2621,rows2622,rows2623,rows2624,rows2625,rows2626,rows2627,rows2628,rows2629,rows2630,rows2631,rows2632,rows2633,rows2634,rows2635,rows2636,rows2637,rows2638,rows2639,rows2640,rows2641,rows2642,rows2643,rows2644,rows2645,rows2646,rows2647,rows2648,rows2649,rows2650,rows2651,rows2652,rows2653,rows2654,rows2655,rows2656,rows2657,rows2658,rows2659,rows2660,rows2661,rows2662,rows2663,rows2664,rows2665,rows2666,List.append_assoc,List.append_nil]
theorem partLength40 : partOps40.length=64 := by decide
theorem partStats40 : partRows40.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows40=371520 := by
  simp only [partRows40,List.length_append,MatrixRowBlocks.rows_weight_append,stats2603.1,stats2603.2,stats2604.1,stats2604.2,stats2605.1,stats2605.2,stats2606.1,stats2606.2,stats2607.1,stats2607.2,stats2608.1,stats2608.2,stats2609.1,stats2609.2,stats2610.1,stats2610.2,stats2611.1,stats2611.2,stats2612.1,stats2612.2,stats2613.1,stats2613.2,stats2614.1,stats2614.2,stats2615.1,stats2615.2,stats2616.1,stats2616.2,stats2617.1,stats2617.2,stats2618.1,stats2618.2,stats2619.1,stats2619.2,stats2620.1,stats2620.2,stats2621.1,stats2621.2,stats2622.1,stats2622.2,stats2623.1,stats2623.2,stats2624.1,stats2624.2,stats2625.1,stats2625.2,stats2626.1,stats2626.2,stats2627.1,stats2627.2,stats2628.1,stats2628.2,stats2629.1,stats2629.2,stats2630.1,stats2630.2,stats2631.1,stats2631.2,stats2632.1,stats2632.2,stats2633.1,stats2633.2,stats2634.1,stats2634.2,stats2635.1,stats2635.2,stats2636.1,stats2636.2,stats2637.1,stats2637.2,stats2638.1,stats2638.2,stats2639.1,stats2639.2,stats2640.1,stats2640.2,stats2641.1,stats2641.2,stats2642.1,stats2642.2,stats2643.1,stats2643.2,stats2644.1,stats2644.2,stats2645.1,stats2645.2,stats2646.1,stats2646.2,stats2647.1,stats2647.2,stats2648.1,stats2648.2,stats2649.1,stats2649.2,stats2650.1,stats2650.2,stats2651.1,stats2651.2,stats2652.1,stats2652.2,stats2653.1,stats2653.2,stats2654.1,stats2654.2,stats2655.1,stats2655.2,stats2656.1,stats2656.2,stats2657.1,stats2657.2,stats2658.1,stats2658.2,stats2659.1,stats2659.2,stats2660.1,stats2660.2,stats2661.1,stats2661.2,stats2662.1,stats2662.2,stats2663.1,stats2663.2,stats2664.1,stats2664.2,stats2665.1,stats2665.2,stats2666.1,stats2666.2]
  decide
end SharedFrameCheckedRows
