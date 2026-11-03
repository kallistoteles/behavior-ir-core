import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData41
import HashBlockInstructionMatrixData42
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2632 : actualRows2632=WordField.canonicalRows actualModulus 2632 (.badd 2631 1449) := by core033_kernel_decide
theorem stats2632 : actualRows2632.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2632=5388 := by core033_kernel_decide
theorem rows2633 : actualRows2633=WordField.canonicalRows actualModulus 2633 (.rotr 2617 2) := by core033_kernel_decide
theorem stats2633 : actualRows2633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2633=5124 := by core033_kernel_decide
theorem rows2634 : actualRows2634=WordField.canonicalRows actualModulus 2634 (.rotr 2617 13) := by core033_kernel_decide
theorem stats2634 : actualRows2634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2634=5124 := by core033_kernel_decide
theorem rows2635 : actualRows2635=WordField.canonicalRows actualModulus 2635 (.bxor 2633 2634) := by core033_kernel_decide
theorem stats2635 : actualRows2635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2635=7428 := by core033_kernel_decide
theorem rows2636 : actualRows2636=WordField.canonicalRows actualModulus 2636 (.rotr 2617 22) := by core033_kernel_decide
theorem stats2636 : actualRows2636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2636=5124 := by core033_kernel_decide
theorem rows2637 : actualRows2637=WordField.canonicalRows actualModulus 2637 (.bxor 2635 2636) := by core033_kernel_decide
theorem stats2637 : actualRows2637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2637=7428 := by core033_kernel_decide
theorem rows2638 : actualRows2638=WordField.canonicalRows actualModulus 2638 (.band 2617 2590) := by core033_kernel_decide
theorem stats2638 : actualRows2638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2638=5124 := by core033_kernel_decide
theorem rows2639 : actualRows2639=WordField.canonicalRows actualModulus 2639 (.band 2617 2563) := by core033_kernel_decide
theorem stats2639 : actualRows2639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2639=5124 := by core033_kernel_decide
theorem rows2640 : actualRows2640=WordField.canonicalRows actualModulus 2640 (.bxor 2638 2639) := by core033_kernel_decide
theorem stats2640 : actualRows2640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2640=7428 := by core033_kernel_decide
theorem rows2641 : actualRows2641=WordField.canonicalRows actualModulus 2641 (.band 2590 2563) := by core033_kernel_decide
theorem stats2641 : actualRows2641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2641=5124 := by core033_kernel_decide
theorem rows2642 : actualRows2642=WordField.canonicalRows actualModulus 2642 (.bxor 2640 2641) := by core033_kernel_decide
theorem stats2642 : actualRows2642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2642=7428 := by core033_kernel_decide
theorem rows2643 : actualRows2643=WordField.canonicalRows actualModulus 2643 (.badd 2637 2642) := by core033_kernel_decide
theorem stats2643 : actualRows2643.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2643=5388 := by core033_kernel_decide
theorem rows2644 : actualRows2644=WordField.canonicalRows actualModulus 2644 (.badd 2632 2643) := by core033_kernel_decide
theorem stats2644 : actualRows2644.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2644=5388 := by core033_kernel_decide
theorem rows2645 : actualRows2645=WordField.canonicalRows actualModulus 2645 (.badd 2536 2632) := by core033_kernel_decide
theorem stats2645 : actualRows2645.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2645=5388 := by core033_kernel_decide
theorem rows2646 : actualRows2646=WordField.canonicalRows actualModulus 2646 (.rotr 2645 6) := by core033_kernel_decide
theorem stats2646 : actualRows2646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2646=5124 := by core033_kernel_decide
theorem rows2647 : actualRows2647=WordField.canonicalRows actualModulus 2647 (.rotr 2645 11) := by core033_kernel_decide
theorem stats2647 : actualRows2647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2647=5124 := by core033_kernel_decide
theorem rows2648 : actualRows2648=WordField.canonicalRows actualModulus 2648 (.bxor 2646 2647) := by core033_kernel_decide
theorem stats2648 : actualRows2648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2648=7428 := by core033_kernel_decide
theorem rows2649 : actualRows2649=WordField.canonicalRows actualModulus 2649 (.rotr 2645 25) := by core033_kernel_decide
theorem stats2649 : actualRows2649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2649=5124 := by core033_kernel_decide
theorem rows2650 : actualRows2650=WordField.canonicalRows actualModulus 2650 (.bxor 2648 2649) := by core033_kernel_decide
theorem stats2650 : actualRows2650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2650=7428 := by core033_kernel_decide
theorem rows2651 : actualRows2651=WordField.canonicalRows actualModulus 2651 (.badd 2564 2650) := by core033_kernel_decide
theorem stats2651 : actualRows2651.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2651=5388 := by core033_kernel_decide
theorem rows2652 : actualRows2652=WordField.canonicalRows actualModulus 2652 (.band 2645 2618) := by core033_kernel_decide
theorem stats2652 : actualRows2652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2652=5124 := by core033_kernel_decide
theorem rows2653 : actualRows2653=WordField.canonicalRows actualModulus 2653 (.bnot 2645) := by core033_kernel_decide
theorem stats2653 : actualRows2653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2653=6276 := by core033_kernel_decide
theorem rows2654 : actualRows2654=WordField.canonicalRows actualModulus 2654 (.band 2653 2591) := by core033_kernel_decide
theorem stats2654 : actualRows2654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2654=5124 := by core033_kernel_decide
theorem rows2655 : actualRows2655=WordField.canonicalRows actualModulus 2655 (.bxor 2652 2654) := by core033_kernel_decide
theorem stats2655 : actualRows2655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2655=7428 := by core033_kernel_decide
theorem rows2656 : actualRows2656=WordField.canonicalRows actualModulus 2656 (.badd 2651 2655) := by core033_kernel_decide
theorem stats2656 : actualRows2656.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2656=5388 := by core033_kernel_decide
theorem rows2657 : actualRows2657=WordField.canonicalRows actualModulus 2657 (.literal (BitVec.ofNat 32 2952996808)) := by core033_kernel_decide
theorem stats2657 : actualRows2657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2657=3684 := by core033_kernel_decide
theorem rows2658 : actualRows2658=WordField.canonicalRows actualModulus 2658 (.badd 2656 2657) := by core033_kernel_decide
theorem stats2658 : actualRows2658.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2658=5388 := by core033_kernel_decide
theorem rows2659 : actualRows2659=WordField.canonicalRows actualModulus 2659 (.badd 2658 1462) := by core033_kernel_decide
theorem stats2659 : actualRows2659.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2659=5388 := by core033_kernel_decide
theorem rows2660 : actualRows2660=WordField.canonicalRows actualModulus 2660 (.rotr 2644 2) := by core033_kernel_decide
theorem stats2660 : actualRows2660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2660=5124 := by core033_kernel_decide
theorem rows2661 : actualRows2661=WordField.canonicalRows actualModulus 2661 (.rotr 2644 13) := by core033_kernel_decide
theorem stats2661 : actualRows2661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2661=5124 := by core033_kernel_decide
theorem rows2662 : actualRows2662=WordField.canonicalRows actualModulus 2662 (.bxor 2660 2661) := by core033_kernel_decide
theorem stats2662 : actualRows2662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2662=7428 := by core033_kernel_decide
theorem rows2663 : actualRows2663=WordField.canonicalRows actualModulus 2663 (.rotr 2644 22) := by core033_kernel_decide
theorem stats2663 : actualRows2663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2663=5124 := by core033_kernel_decide
theorem rows2664 : actualRows2664=WordField.canonicalRows actualModulus 2664 (.bxor 2662 2663) := by core033_kernel_decide
theorem stats2664 : actualRows2664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2664=7428 := by core033_kernel_decide
theorem rows2665 : actualRows2665=WordField.canonicalRows actualModulus 2665 (.band 2644 2617) := by core033_kernel_decide
theorem stats2665 : actualRows2665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2665=5124 := by core033_kernel_decide
theorem rows2666 : actualRows2666=WordField.canonicalRows actualModulus 2666 (.band 2644 2590) := by core033_kernel_decide
theorem stats2666 : actualRows2666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2666=5124 := by core033_kernel_decide
theorem rows2667 : actualRows2667=WordField.canonicalRows actualModulus 2667 (.bxor 2665 2666) := by core033_kernel_decide
theorem stats2667 : actualRows2667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2667=7428 := by core033_kernel_decide
theorem rows2668 : actualRows2668=WordField.canonicalRows actualModulus 2668 (.band 2617 2590) := by core033_kernel_decide
theorem stats2668 : actualRows2668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2668=5124 := by core033_kernel_decide
theorem rows2669 : actualRows2669=WordField.canonicalRows actualModulus 2669 (.bxor 2667 2668) := by core033_kernel_decide
theorem stats2669 : actualRows2669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2669=7428 := by core033_kernel_decide
theorem rows2670 : actualRows2670=WordField.canonicalRows actualModulus 2670 (.badd 2664 2669) := by core033_kernel_decide
theorem stats2670 : actualRows2670.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2670=5388 := by core033_kernel_decide
theorem rows2671 : actualRows2671=WordField.canonicalRows actualModulus 2671 (.badd 2659 2670) := by core033_kernel_decide
theorem stats2671 : actualRows2671.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2671=5388 := by core033_kernel_decide
theorem rows2672 : actualRows2672=WordField.canonicalRows actualModulus 2672 (.badd 2563 2659) := by core033_kernel_decide
theorem stats2672 : actualRows2672.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2672=5388 := by core033_kernel_decide
theorem rows2673 : actualRows2673=WordField.canonicalRows actualModulus 2673 (.rotr 2672 6) := by core033_kernel_decide
theorem stats2673 : actualRows2673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2673=5124 := by core033_kernel_decide
theorem rows2674 : actualRows2674=WordField.canonicalRows actualModulus 2674 (.rotr 2672 11) := by core033_kernel_decide
theorem stats2674 : actualRows2674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2674=5124 := by core033_kernel_decide
theorem rows2675 : actualRows2675=WordField.canonicalRows actualModulus 2675 (.bxor 2673 2674) := by core033_kernel_decide
theorem stats2675 : actualRows2675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2675=7428 := by core033_kernel_decide
theorem rows2676 : actualRows2676=WordField.canonicalRows actualModulus 2676 (.rotr 2672 25) := by core033_kernel_decide
theorem stats2676 : actualRows2676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2676=5124 := by core033_kernel_decide
theorem rows2677 : actualRows2677=WordField.canonicalRows actualModulus 2677 (.bxor 2675 2676) := by core033_kernel_decide
theorem stats2677 : actualRows2677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2677=7428 := by core033_kernel_decide
theorem rows2678 : actualRows2678=WordField.canonicalRows actualModulus 2678 (.badd 2591 2677) := by core033_kernel_decide
theorem stats2678 : actualRows2678.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2678=5388 := by core033_kernel_decide
theorem rows2679 : actualRows2679=WordField.canonicalRows actualModulus 2679 (.band 2672 2645) := by core033_kernel_decide
theorem stats2679 : actualRows2679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2679=5124 := by core033_kernel_decide
theorem rows2680 : actualRows2680=WordField.canonicalRows actualModulus 2680 (.bnot 2672) := by core033_kernel_decide
theorem stats2680 : actualRows2680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2680=6276 := by core033_kernel_decide
theorem rows2681 : actualRows2681=WordField.canonicalRows actualModulus 2681 (.band 2680 2618) := by core033_kernel_decide
theorem stats2681 : actualRows2681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2681=5124 := by core033_kernel_decide
theorem rows2682 : actualRows2682=WordField.canonicalRows actualModulus 2682 (.bxor 2679 2681) := by core033_kernel_decide
theorem stats2682 : actualRows2682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2682=7428 := by core033_kernel_decide
theorem rows2683 : actualRows2683=WordField.canonicalRows actualModulus 2683 (.badd 2678 2682) := by core033_kernel_decide
theorem stats2683 : actualRows2683.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2683=5388 := by core033_kernel_decide
theorem rows2684 : actualRows2684=WordField.canonicalRows actualModulus 2684 (.literal (BitVec.ofNat 32 3210313671)) := by core033_kernel_decide
theorem stats2684 : actualRows2684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2684=4476 := by core033_kernel_decide
theorem rows2685 : actualRows2685=WordField.canonicalRows actualModulus 2685 (.badd 2683 2684) := by core033_kernel_decide
theorem stats2685 : actualRows2685.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2685=5388 := by core033_kernel_decide
theorem rows2686 : actualRows2686=WordField.canonicalRows actualModulus 2686 (.badd 2685 1475) := by core033_kernel_decide
theorem stats2686 : actualRows2686.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2686=5388 := by core033_kernel_decide
theorem rows2687 : actualRows2687=WordField.canonicalRows actualModulus 2687 (.rotr 2671 2) := by core033_kernel_decide
theorem stats2687 : actualRows2687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2687=5124 := by core033_kernel_decide
theorem rows2688 : actualRows2688=WordField.canonicalRows actualModulus 2688 (.rotr 2671 13) := by core033_kernel_decide
theorem stats2688 : actualRows2688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2688=5124 := by core033_kernel_decide
theorem rows2689 : actualRows2689=WordField.canonicalRows actualModulus 2689 (.bxor 2687 2688) := by core033_kernel_decide
theorem stats2689 : actualRows2689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2689=7428 := by core033_kernel_decide
theorem rows2690 : actualRows2690=WordField.canonicalRows actualModulus 2690 (.rotr 2671 22) := by core033_kernel_decide
theorem stats2690 : actualRows2690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2690=5124 := by core033_kernel_decide
theorem rows2691 : actualRows2691=WordField.canonicalRows actualModulus 2691 (.bxor 2689 2690) := by core033_kernel_decide
theorem stats2691 : actualRows2691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2691=7428 := by core033_kernel_decide
theorem rows2692 : actualRows2692=WordField.canonicalRows actualModulus 2692 (.band 2671 2644) := by core033_kernel_decide
theorem stats2692 : actualRows2692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2692=5124 := by core033_kernel_decide
theorem rows2693 : actualRows2693=WordField.canonicalRows actualModulus 2693 (.band 2671 2617) := by core033_kernel_decide
theorem stats2693 : actualRows2693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2693=5124 := by core033_kernel_decide
theorem rows2694 : actualRows2694=WordField.canonicalRows actualModulus 2694 (.bxor 2692 2693) := by core033_kernel_decide
theorem stats2694 : actualRows2694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2694=7428 := by core033_kernel_decide
theorem rows2695 : actualRows2695=WordField.canonicalRows actualModulus 2695 (.band 2644 2617) := by core033_kernel_decide
theorem stats2695 : actualRows2695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2695=5124 := by core033_kernel_decide
def partRows40 : List R1CS.Row := actualRows2632++actualRows2633++actualRows2634++actualRows2635++actualRows2636++actualRows2637++actualRows2638++actualRows2639++actualRows2640++actualRows2641++actualRows2642++actualRows2643++actualRows2644++actualRows2645++actualRows2646++actualRows2647++actualRows2648++actualRows2649++actualRows2650++actualRows2651++actualRows2652++actualRows2653++actualRows2654++actualRows2655++actualRows2656++actualRows2657++actualRows2658++actualRows2659++actualRows2660++actualRows2661++actualRows2662++actualRows2663++actualRows2664++actualRows2665++actualRows2666++actualRows2667++actualRows2668++actualRows2669++actualRows2670++actualRows2671++actualRows2672++actualRows2673++actualRows2674++actualRows2675++actualRows2676++actualRows2677++actualRows2678++actualRows2679++actualRows2680++actualRows2681++actualRows2682++actualRows2683++actualRows2684++actualRows2685++actualRows2686++actualRows2687++actualRows2688++actualRows2689++actualRows2690++actualRows2691++actualRows2692++actualRows2693++actualRows2694++actualRows2695
def partOps40 : List WordIR.Op := [.badd 2631 1449,.rotr 2617 2,.rotr 2617 13,.bxor 2633 2634,.rotr 2617 22,.bxor 2635 2636,.band 2617 2590,.band 2617 2563,.bxor 2638 2639,.band 2590 2563,.bxor 2640 2641,.badd 2637 2642,.badd 2632 2643,.badd 2536 2632,.rotr 2645 6,.rotr 2645 11,.bxor 2646 2647,.rotr 2645 25,.bxor 2648 2649,.badd 2564 2650,.band 2645 2618,.bnot 2645,.band 2653 2591,.bxor 2652 2654,.badd 2651 2655,.literal (BitVec.ofNat 32 2952996808),.badd 2656 2657,.badd 2658 1462,.rotr 2644 2,.rotr 2644 13,.bxor 2660 2661,.rotr 2644 22,.bxor 2662 2663,.band 2644 2617,.band 2644 2590,.bxor 2665 2666,.band 2617 2590,.bxor 2667 2668,.badd 2664 2669,.badd 2659 2670,.badd 2563 2659,.rotr 2672 6,.rotr 2672 11,.bxor 2673 2674,.rotr 2672 25,.bxor 2675 2676,.badd 2591 2677,.band 2672 2645,.bnot 2672,.band 2680 2618,.bxor 2679 2681,.badd 2678 2682,.literal (BitVec.ofNat 32 3210313671),.badd 2683 2684,.badd 2685 1475,.rotr 2671 2,.rotr 2671 13,.bxor 2687 2688,.rotr 2671 22,.bxor 2689 2690,.band 2671 2644,.band 2671 2617,.bxor 2692 2693,.band 2644 2617]
theorem partExact40 : partRows40=WordField.rows actualModulus 2632 partOps40 := by
  simp only [partRows40,partOps40,WordField.rows,rows2632,rows2633,rows2634,rows2635,rows2636,rows2637,rows2638,rows2639,rows2640,rows2641,rows2642,rows2643,rows2644,rows2645,rows2646,rows2647,rows2648,rows2649,rows2650,rows2651,rows2652,rows2653,rows2654,rows2655,rows2656,rows2657,rows2658,rows2659,rows2660,rows2661,rows2662,rows2663,rows2664,rows2665,rows2666,rows2667,rows2668,rows2669,rows2670,rows2671,rows2672,rows2673,rows2674,rows2675,rows2676,rows2677,rows2678,rows2679,rows2680,rows2681,rows2682,rows2683,rows2684,rows2685,rows2686,rows2687,rows2688,rows2689,rows2690,rows2691,rows2692,rows2693,rows2694,rows2695,List.append_assoc,List.append_nil]
theorem partLength40 : partOps40.length=64 := by decide
theorem partStats40 : partRows40.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows40=371280 := by
  simp only [partRows40,List.length_append,MatrixRowBlocks.rows_weight_append,stats2632.1,stats2632.2,stats2633.1,stats2633.2,stats2634.1,stats2634.2,stats2635.1,stats2635.2,stats2636.1,stats2636.2,stats2637.1,stats2637.2,stats2638.1,stats2638.2,stats2639.1,stats2639.2,stats2640.1,stats2640.2,stats2641.1,stats2641.2,stats2642.1,stats2642.2,stats2643.1,stats2643.2,stats2644.1,stats2644.2,stats2645.1,stats2645.2,stats2646.1,stats2646.2,stats2647.1,stats2647.2,stats2648.1,stats2648.2,stats2649.1,stats2649.2,stats2650.1,stats2650.2,stats2651.1,stats2651.2,stats2652.1,stats2652.2,stats2653.1,stats2653.2,stats2654.1,stats2654.2,stats2655.1,stats2655.2,stats2656.1,stats2656.2,stats2657.1,stats2657.2,stats2658.1,stats2658.2,stats2659.1,stats2659.2,stats2660.1,stats2660.2,stats2661.1,stats2661.2,stats2662.1,stats2662.2,stats2663.1,stats2663.2,stats2664.1,stats2664.2,stats2665.1,stats2665.2,stats2666.1,stats2666.2,stats2667.1,stats2667.2,stats2668.1,stats2668.2,stats2669.1,stats2669.2,stats2670.1,stats2670.2,stats2671.1,stats2671.2,stats2672.1,stats2672.2,stats2673.1,stats2673.2,stats2674.1,stats2674.2,stats2675.1,stats2675.2,stats2676.1,stats2676.2,stats2677.1,stats2677.2,stats2678.1,stats2678.2,stats2679.1,stats2679.2,stats2680.1,stats2680.2,stats2681.1,stats2681.2,stats2682.1,stats2682.2,stats2683.1,stats2683.2,stats2684.1,stats2684.2,stats2685.1,stats2685.2,stats2686.1,stats2686.2,stats2687.1,stats2687.2,stats2688.1,stats2688.2,stats2689.1,stats2689.2,stats2690.1,stats2690.2,stats2691.1,stats2691.2,stats2692.1,stats2692.2,stats2693.1,stats2693.2,stats2694.1,stats2694.2,stats2695.1,stats2695.2]
  decide
end HashBlockCheckedRows
