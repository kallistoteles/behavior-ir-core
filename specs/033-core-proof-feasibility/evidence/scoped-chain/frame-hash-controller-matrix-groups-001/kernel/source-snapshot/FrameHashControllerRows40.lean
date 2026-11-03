import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData40
import FrameHashControllerInstructionMatrixData41
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2603 : actualRows2603=WordField.canonicalRows actualModulus 2603 (.bxor 2576 2602) := by core033_kernel_decide
theorem stats2603 : actualRows2603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2603=7428 := by core033_kernel_decide
theorem rows2604 : actualRows2604=WordField.canonicalRows actualModulus 2604 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2604 : actualRows2604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2604=2892 := by core033_kernel_decide
theorem rows2605 : actualRows2605=WordField.canonicalRows actualModulus 2605 (.bxor 0 2604) := by core033_kernel_decide
theorem stats2605 : actualRows2605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2605=7428 := by core033_kernel_decide
theorem rows2606 : actualRows2606=WordField.canonicalRows actualModulus 2606 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2606 : actualRows2606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2606=2820 := by core033_kernel_decide
theorem rows2607 : actualRows2607=WordField.canonicalRows actualModulus 2607 (.bnot 2606) := by core033_kernel_decide
theorem stats2607 : actualRows2607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2607=6276 := by core033_kernel_decide
theorem rows2608 : actualRows2608=WordField.canonicalRows actualModulus 2608 (.band 2605 2607) := by core033_kernel_decide
theorem stats2608 : actualRows2608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2608=5124 := by core033_kernel_decide
theorem rows2609 : actualRows2609=WordField.canonicalRows actualModulus 2609 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2609 : actualRows2609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2609=2892 := by core033_kernel_decide
theorem rows2610 : actualRows2610=WordField.canonicalRows actualModulus 2610 (.bxor 0 2609) := by core033_kernel_decide
theorem stats2610 : actualRows2610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2610=7428 := by core033_kernel_decide
theorem rows2611 : actualRows2611=WordField.canonicalRows actualModulus 2611 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2611 : actualRows2611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2611=2820 := by core033_kernel_decide
theorem rows2612 : actualRows2612=WordField.canonicalRows actualModulus 2612 (.bnot 2611) := by core033_kernel_decide
theorem stats2612 : actualRows2612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2612=6276 := by core033_kernel_decide
theorem rows2613 : actualRows2613=WordField.canonicalRows actualModulus 2613 (.bxor 2610 2612) := by core033_kernel_decide
theorem stats2613 : actualRows2613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2613=7428 := by core033_kernel_decide
theorem rows2614 : actualRows2614=WordField.canonicalRows actualModulus 2614 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2614 : actualRows2614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2614=2892 := by core033_kernel_decide
theorem rows2615 : actualRows2615=WordField.canonicalRows actualModulus 2615 (.bxor 0 2614) := by core033_kernel_decide
theorem stats2615 : actualRows2615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2615=7428 := by core033_kernel_decide
theorem rows2616 : actualRows2616=WordField.canonicalRows actualModulus 2616 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2616 : actualRows2616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2616=2820 := by core033_kernel_decide
theorem rows2617 : actualRows2617=WordField.canonicalRows actualModulus 2617 (.bnot 2616) := by core033_kernel_decide
theorem stats2617 : actualRows2617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2617=6276 := by core033_kernel_decide
theorem rows2618 : actualRows2618=WordField.canonicalRows actualModulus 2618 (.badd 2615 2617) := by core033_kernel_decide
theorem stats2618 : actualRows2618.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2618=5388 := by core033_kernel_decide
theorem rows2619 : actualRows2619=WordField.canonicalRows actualModulus 2619 (.bnot 2618) := by core033_kernel_decide
theorem stats2619 : actualRows2619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2619=6276 := by core033_kernel_decide
theorem rows2620 : actualRows2620=WordField.canonicalRows actualModulus 2620 (.band 2613 2619) := by core033_kernel_decide
theorem stats2620 : actualRows2620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2620=5124 := by core033_kernel_decide
theorem rows2621 : actualRows2621=WordField.canonicalRows actualModulus 2621 (.bxor 2608 2620) := by core033_kernel_decide
theorem stats2621 : actualRows2621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2621=7428 := by core033_kernel_decide
theorem rows2622 : actualRows2622=WordField.canonicalRows actualModulus 2622 (.shr 2621 31) := by core033_kernel_decide
theorem stats2622 : actualRows2622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2622=2892 := by core033_kernel_decide
theorem rows2623 : actualRows2623=WordField.canonicalRows actualModulus 2623 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2623 : actualRows2623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2623=2892 := by core033_kernel_decide
theorem rows2624 : actualRows2624=WordField.canonicalRows actualModulus 2624 (.bxor 2622 2623) := by core033_kernel_decide
theorem stats2624 : actualRows2624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2624=7428 := by core033_kernel_decide
theorem rows2625 : actualRows2625=WordField.canonicalRows actualModulus 2625 (.bnot 2624) := by core033_kernel_decide
theorem stats2625 : actualRows2625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2625=6276 := by core033_kernel_decide
theorem rows2626 : actualRows2626=WordField.canonicalRows actualModulus 2626 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2626 : actualRows2626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2626=2892 := by core033_kernel_decide
theorem rows2627 : actualRows2627=WordField.canonicalRows actualModulus 2627 (.badd 2625 2626) := by core033_kernel_decide
theorem stats2627 : actualRows2627.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2627=5388 := by core033_kernel_decide
theorem rows2628 : actualRows2628=WordField.canonicalRows actualModulus 2628 (.band 2627 1022) := by core033_kernel_decide
theorem stats2628 : actualRows2628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2628=5124 := by core033_kernel_decide
theorem rows2629 : actualRows2629=WordField.canonicalRows actualModulus 2629 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2629 : actualRows2629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2629=2892 := by core033_kernel_decide
theorem rows2630 : actualRows2630=WordField.canonicalRows actualModulus 2630 (.bxor 0 2629) := by core033_kernel_decide
theorem stats2630 : actualRows2630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2630=7428 := by core033_kernel_decide
theorem rows2631 : actualRows2631=WordField.canonicalRows actualModulus 2631 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2631 : actualRows2631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2631=2820 := by core033_kernel_decide
theorem rows2632 : actualRows2632=WordField.canonicalRows actualModulus 2632 (.bnot 2631) := by core033_kernel_decide
theorem stats2632 : actualRows2632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2632=6276 := by core033_kernel_decide
theorem rows2633 : actualRows2633=WordField.canonicalRows actualModulus 2633 (.band 2630 2632) := by core033_kernel_decide
theorem stats2633 : actualRows2633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2633=5124 := by core033_kernel_decide
theorem rows2634 : actualRows2634=WordField.canonicalRows actualModulus 2634 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2634 : actualRows2634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2634=2892 := by core033_kernel_decide
theorem rows2635 : actualRows2635=WordField.canonicalRows actualModulus 2635 (.bxor 0 2634) := by core033_kernel_decide
theorem stats2635 : actualRows2635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2635=7428 := by core033_kernel_decide
theorem rows2636 : actualRows2636=WordField.canonicalRows actualModulus 2636 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2636 : actualRows2636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2636=2820 := by core033_kernel_decide
theorem rows2637 : actualRows2637=WordField.canonicalRows actualModulus 2637 (.bnot 2636) := by core033_kernel_decide
theorem stats2637 : actualRows2637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2637=6276 := by core033_kernel_decide
theorem rows2638 : actualRows2638=WordField.canonicalRows actualModulus 2638 (.bxor 2635 2637) := by core033_kernel_decide
theorem stats2638 : actualRows2638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2638=7428 := by core033_kernel_decide
theorem rows2639 : actualRows2639=WordField.canonicalRows actualModulus 2639 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2639 : actualRows2639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2639=2892 := by core033_kernel_decide
theorem rows2640 : actualRows2640=WordField.canonicalRows actualModulus 2640 (.bxor 0 2639) := by core033_kernel_decide
theorem stats2640 : actualRows2640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2640=7428 := by core033_kernel_decide
theorem rows2641 : actualRows2641=WordField.canonicalRows actualModulus 2641 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2641 : actualRows2641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2641=2820 := by core033_kernel_decide
theorem rows2642 : actualRows2642=WordField.canonicalRows actualModulus 2642 (.bnot 2641) := by core033_kernel_decide
theorem stats2642 : actualRows2642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2642=6276 := by core033_kernel_decide
theorem rows2643 : actualRows2643=WordField.canonicalRows actualModulus 2643 (.badd 2640 2642) := by core033_kernel_decide
theorem stats2643 : actualRows2643.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2643=5388 := by core033_kernel_decide
theorem rows2644 : actualRows2644=WordField.canonicalRows actualModulus 2644 (.bnot 2643) := by core033_kernel_decide
theorem stats2644 : actualRows2644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2644=6276 := by core033_kernel_decide
theorem rows2645 : actualRows2645=WordField.canonicalRows actualModulus 2645 (.band 2638 2644) := by core033_kernel_decide
theorem stats2645 : actualRows2645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2645=5124 := by core033_kernel_decide
theorem rows2646 : actualRows2646=WordField.canonicalRows actualModulus 2646 (.bxor 2633 2645) := by core033_kernel_decide
theorem stats2646 : actualRows2646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2646=7428 := by core033_kernel_decide
theorem rows2647 : actualRows2647=WordField.canonicalRows actualModulus 2647 (.shr 2646 31) := by core033_kernel_decide
theorem stats2647 : actualRows2647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2647=2892 := by core033_kernel_decide
theorem rows2648 : actualRows2648=WordField.canonicalRows actualModulus 2648 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2648 : actualRows2648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2648=2892 := by core033_kernel_decide
theorem rows2649 : actualRows2649=WordField.canonicalRows actualModulus 2649 (.bxor 2647 2648) := by core033_kernel_decide
theorem stats2649 : actualRows2649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2649=7428 := by core033_kernel_decide
theorem rows2650 : actualRows2650=WordField.canonicalRows actualModulus 2650 (.bnot 2649) := by core033_kernel_decide
theorem stats2650 : actualRows2650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2650=6276 := by core033_kernel_decide
theorem rows2651 : actualRows2651=WordField.canonicalRows actualModulus 2651 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2651 : actualRows2651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2651=2892 := by core033_kernel_decide
theorem rows2652 : actualRows2652=WordField.canonicalRows actualModulus 2652 (.badd 2650 2651) := by core033_kernel_decide
theorem stats2652 : actualRows2652.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2652=5388 := by core033_kernel_decide
theorem rows2653 : actualRows2653=WordField.canonicalRows actualModulus 2653 (.bnot 2652) := by core033_kernel_decide
theorem stats2653 : actualRows2653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2653=6276 := by core033_kernel_decide
theorem rows2654 : actualRows2654=WordField.canonicalRows actualModulus 2654 (.band 2653 842) := by core033_kernel_decide
theorem stats2654 : actualRows2654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2654=5124 := by core033_kernel_decide
theorem rows2655 : actualRows2655=WordField.canonicalRows actualModulus 2655 (.bxor 2628 2654) := by core033_kernel_decide
theorem stats2655 : actualRows2655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2655=7428 := by core033_kernel_decide
theorem rows2656 : actualRows2656=WordField.canonicalRows actualModulus 2656 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2656 : actualRows2656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2656=2892 := by core033_kernel_decide
theorem rows2657 : actualRows2657=WordField.canonicalRows actualModulus 2657 (.bxor 0 2656) := by core033_kernel_decide
theorem stats2657 : actualRows2657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2657=7428 := by core033_kernel_decide
theorem rows2658 : actualRows2658=WordField.canonicalRows actualModulus 2658 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2658 : actualRows2658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2658=2820 := by core033_kernel_decide
theorem rows2659 : actualRows2659=WordField.canonicalRows actualModulus 2659 (.bnot 2658) := by core033_kernel_decide
theorem stats2659 : actualRows2659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2659=6276 := by core033_kernel_decide
theorem rows2660 : actualRows2660=WordField.canonicalRows actualModulus 2660 (.band 2657 2659) := by core033_kernel_decide
theorem stats2660 : actualRows2660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2660=5124 := by core033_kernel_decide
theorem rows2661 : actualRows2661=WordField.canonicalRows actualModulus 2661 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2661 : actualRows2661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2661=2892 := by core033_kernel_decide
theorem rows2662 : actualRows2662=WordField.canonicalRows actualModulus 2662 (.bxor 0 2661) := by core033_kernel_decide
theorem stats2662 : actualRows2662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2662=7428 := by core033_kernel_decide
theorem rows2663 : actualRows2663=WordField.canonicalRows actualModulus 2663 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2663 : actualRows2663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2663=2820 := by core033_kernel_decide
theorem rows2664 : actualRows2664=WordField.canonicalRows actualModulus 2664 (.bnot 2663) := by core033_kernel_decide
theorem stats2664 : actualRows2664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2664=6276 := by core033_kernel_decide
theorem rows2665 : actualRows2665=WordField.canonicalRows actualModulus 2665 (.bxor 2662 2664) := by core033_kernel_decide
theorem stats2665 : actualRows2665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2665=7428 := by core033_kernel_decide
theorem rows2666 : actualRows2666=WordField.canonicalRows actualModulus 2666 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2666 : actualRows2666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2666=2892 := by core033_kernel_decide
def partRows40 : List R1CS.Row := actualRows2603++actualRows2604++actualRows2605++actualRows2606++actualRows2607++actualRows2608++actualRows2609++actualRows2610++actualRows2611++actualRows2612++actualRows2613++actualRows2614++actualRows2615++actualRows2616++actualRows2617++actualRows2618++actualRows2619++actualRows2620++actualRows2621++actualRows2622++actualRows2623++actualRows2624++actualRows2625++actualRows2626++actualRows2627++actualRows2628++actualRows2629++actualRows2630++actualRows2631++actualRows2632++actualRows2633++actualRows2634++actualRows2635++actualRows2636++actualRows2637++actualRows2638++actualRows2639++actualRows2640++actualRows2641++actualRows2642++actualRows2643++actualRows2644++actualRows2645++actualRows2646++actualRows2647++actualRows2648++actualRows2649++actualRows2650++actualRows2651++actualRows2652++actualRows2653++actualRows2654++actualRows2655++actualRows2656++actualRows2657++actualRows2658++actualRows2659++actualRows2660++actualRows2661++actualRows2662++actualRows2663++actualRows2664++actualRows2665++actualRows2666
def partOps40 : List WordIR.Op := [.bxor 2576 2602,.literal (BitVec.ofNat 32 2),.bxor 0 2604,.literal (BitVec.ofNat 32 0),.bnot 2606,.band 2605 2607,.literal (BitVec.ofNat 32 2),.bxor 0 2609,.literal (BitVec.ofNat 32 0),.bnot 2611,.bxor 2610 2612,.literal (BitVec.ofNat 32 2),.bxor 0 2614,.literal (BitVec.ofNat 32 0),.bnot 2616,.badd 2615 2617,.bnot 2618,.band 2613 2619,.bxor 2608 2620,.shr 2621 31,.literal (BitVec.ofNat 32 1),.bxor 2622 2623,.bnot 2624,.literal (BitVec.ofNat 32 1),.badd 2625 2626,.band 2627 1022,.literal (BitVec.ofNat 32 2),.bxor 0 2629,.literal (BitVec.ofNat 32 0),.bnot 2631,.band 2630 2632,.literal (BitVec.ofNat 32 2),.bxor 0 2634,.literal (BitVec.ofNat 32 0),.bnot 2636,.bxor 2635 2637,.literal (BitVec.ofNat 32 2),.bxor 0 2639,.literal (BitVec.ofNat 32 0),.bnot 2641,.badd 2640 2642,.bnot 2643,.band 2638 2644,.bxor 2633 2645,.shr 2646 31,.literal (BitVec.ofNat 32 1),.bxor 2647 2648,.bnot 2649,.literal (BitVec.ofNat 32 1),.badd 2650 2651,.bnot 2652,.band 2653 842,.bxor 2628 2654,.literal (BitVec.ofNat 32 2),.bxor 0 2656,.literal (BitVec.ofNat 32 0),.bnot 2658,.band 2657 2659,.literal (BitVec.ofNat 32 2),.bxor 0 2661,.literal (BitVec.ofNat 32 0),.bnot 2663,.bxor 2662 2664,.literal (BitVec.ofNat 32 2)]
theorem partExact40 : partRows40=WordField.rows actualModulus 2603 partOps40 := by
  simp only [partRows40,partOps40,WordField.rows,rows2603,rows2604,rows2605,rows2606,rows2607,rows2608,rows2609,rows2610,rows2611,rows2612,rows2613,rows2614,rows2615,rows2616,rows2617,rows2618,rows2619,rows2620,rows2621,rows2622,rows2623,rows2624,rows2625,rows2626,rows2627,rows2628,rows2629,rows2630,rows2631,rows2632,rows2633,rows2634,rows2635,rows2636,rows2637,rows2638,rows2639,rows2640,rows2641,rows2642,rows2643,rows2644,rows2645,rows2646,rows2647,rows2648,rows2649,rows2650,rows2651,rows2652,rows2653,rows2654,rows2655,rows2656,rows2657,rows2658,rows2659,rows2660,rows2661,rows2662,rows2663,rows2664,rows2665,rows2666,List.append_assoc,List.append_nil]
theorem partLength40 : partOps40.length=64 := by decide
theorem partStats40 : partRows40.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows40=331224 := by
  simp only [partRows40,List.length_append,MatrixRowBlocks.rows_weight_append,stats2603.1,stats2603.2,stats2604.1,stats2604.2,stats2605.1,stats2605.2,stats2606.1,stats2606.2,stats2607.1,stats2607.2,stats2608.1,stats2608.2,stats2609.1,stats2609.2,stats2610.1,stats2610.2,stats2611.1,stats2611.2,stats2612.1,stats2612.2,stats2613.1,stats2613.2,stats2614.1,stats2614.2,stats2615.1,stats2615.2,stats2616.1,stats2616.2,stats2617.1,stats2617.2,stats2618.1,stats2618.2,stats2619.1,stats2619.2,stats2620.1,stats2620.2,stats2621.1,stats2621.2,stats2622.1,stats2622.2,stats2623.1,stats2623.2,stats2624.1,stats2624.2,stats2625.1,stats2625.2,stats2626.1,stats2626.2,stats2627.1,stats2627.2,stats2628.1,stats2628.2,stats2629.1,stats2629.2,stats2630.1,stats2630.2,stats2631.1,stats2631.2,stats2632.1,stats2632.2,stats2633.1,stats2633.2,stats2634.1,stats2634.2,stats2635.1,stats2635.2,stats2636.1,stats2636.2,stats2637.1,stats2637.2,stats2638.1,stats2638.2,stats2639.1,stats2639.2,stats2640.1,stats2640.2,stats2641.1,stats2641.2,stats2642.1,stats2642.2,stats2643.1,stats2643.2,stats2644.1,stats2644.2,stats2645.1,stats2645.2,stats2646.1,stats2646.2,stats2647.1,stats2647.2,stats2648.1,stats2648.2,stats2649.1,stats2649.2,stats2650.1,stats2650.2,stats2651.1,stats2651.2,stats2652.1,stats2652.2,stats2653.1,stats2653.2,stats2654.1,stats2654.2,stats2655.1,stats2655.2,stats2656.1,stats2656.2,stats2657.1,stats2657.2,stats2658.1,stats2658.2,stats2659.1,stats2659.2,stats2660.1,stats2660.2,stats2661.1,stats2661.2,stats2662.1,stats2662.2,stats2663.1,stats2663.2,stats2664.1,stats2664.2,stats2665.1,stats2665.2,stats2666.1,stats2666.2]
  decide
end FrameHashControllerCheckedRows
