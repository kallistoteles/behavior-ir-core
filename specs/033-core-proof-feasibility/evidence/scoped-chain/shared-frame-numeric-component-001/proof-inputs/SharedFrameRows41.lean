import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData41
import SharedFrameInstructionMatrixData42
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2667 : actualRows2667=WordField.canonicalRows actualModulus 2667 (.band 2646 2620) := by core033_kernel_decide
theorem stats2667 : actualRows2667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2667=5124 := by core033_kernel_decide
theorem rows2668 : actualRows2668=WordField.canonicalRows actualModulus 2668 (.band 2646 2594) := by core033_kernel_decide
theorem stats2668 : actualRows2668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2668=5124 := by core033_kernel_decide
theorem rows2669 : actualRows2669=WordField.canonicalRows actualModulus 2669 (.bxor 2667 2668) := by core033_kernel_decide
theorem stats2669 : actualRows2669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2669=7428 := by core033_kernel_decide
theorem rows2670 : actualRows2670=WordField.canonicalRows actualModulus 2670 (.bxor 2669 2641) := by core033_kernel_decide
theorem stats2670 : actualRows2670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2670=7428 := by core033_kernel_decide
theorem rows2671 : actualRows2671=WordField.canonicalRows actualModulus 2671 (.badd 2666 2670) := by core033_kernel_decide
theorem stats2671 : actualRows2671.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2671=5388 := by core033_kernel_decide
theorem rows2672 : actualRows2672=WordField.canonicalRows actualModulus 2672 (.badd 2661 2671) := by core033_kernel_decide
theorem stats2672 : actualRows2672.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2672=5388 := by core033_kernel_decide
theorem rows2673 : actualRows2673=WordField.canonicalRows actualModulus 2673 (.badd 2568 2661) := by core033_kernel_decide
theorem stats2673 : actualRows2673.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2673=5388 := by core033_kernel_decide
theorem rows2674 : actualRows2674=WordField.canonicalRows actualModulus 2674 (.rotr 2673 6) := by core033_kernel_decide
theorem stats2674 : actualRows2674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2674=5124 := by core033_kernel_decide
theorem rows2675 : actualRows2675=WordField.canonicalRows actualModulus 2675 (.rotr 2673 11) := by core033_kernel_decide
theorem stats2675 : actualRows2675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2675=5124 := by core033_kernel_decide
theorem rows2676 : actualRows2676=WordField.canonicalRows actualModulus 2676 (.bxor 2674 2675) := by core033_kernel_decide
theorem stats2676 : actualRows2676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2676=7428 := by core033_kernel_decide
theorem rows2677 : actualRows2677=WordField.canonicalRows actualModulus 2677 (.rotr 2673 25) := by core033_kernel_decide
theorem stats2677 : actualRows2677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2677=5124 := by core033_kernel_decide
theorem rows2678 : actualRows2678=WordField.canonicalRows actualModulus 2678 (.bxor 2676 2677) := by core033_kernel_decide
theorem stats2678 : actualRows2678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2678=7428 := by core033_kernel_decide
theorem rows2679 : actualRows2679=WordField.canonicalRows actualModulus 2679 (.badd 2595 2678) := by core033_kernel_decide
theorem stats2679 : actualRows2679.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2679=5388 := by core033_kernel_decide
theorem rows2680 : actualRows2680=WordField.canonicalRows actualModulus 2680 (.band 2673 2647) := by core033_kernel_decide
theorem stats2680 : actualRows2680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2680=5124 := by core033_kernel_decide
theorem rows2681 : actualRows2681=WordField.canonicalRows actualModulus 2681 (.bnot 2673) := by core033_kernel_decide
theorem stats2681 : actualRows2681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2681=6276 := by core033_kernel_decide
theorem rows2682 : actualRows2682=WordField.canonicalRows actualModulus 2682 (.band 2681 2621) := by core033_kernel_decide
theorem stats2682 : actualRows2682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2682=5124 := by core033_kernel_decide
theorem rows2683 : actualRows2683=WordField.canonicalRows actualModulus 2683 (.bxor 2680 2682) := by core033_kernel_decide
theorem stats2683 : actualRows2683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2683=7428 := by core033_kernel_decide
theorem rows2684 : actualRows2684=WordField.canonicalRows actualModulus 2684 (.badd 2679 2683) := by core033_kernel_decide
theorem stats2684 : actualRows2684.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2684=5388 := by core033_kernel_decide
theorem rows2685 : actualRows2685=WordField.canonicalRows actualModulus 2685 (.literal (BitVec.ofNat 32 770255983)) := by core033_kernel_decide
theorem stats2685 : actualRows2685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2685=4116 := by core033_kernel_decide
theorem rows2686 : actualRows2686=WordField.canonicalRows actualModulus 2686 (.badd 2684 2685) := by core033_kernel_decide
theorem stats2686 : actualRows2686.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2686=5388 := by core033_kernel_decide
theorem rows2687 : actualRows2687=WordField.canonicalRows actualModulus 2687 (.badd 2686 1593) := by core033_kernel_decide
theorem stats2687 : actualRows2687.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2687=5388 := by core033_kernel_decide
theorem rows2688 : actualRows2688=WordField.canonicalRows actualModulus 2688 (.rotr 2672 2) := by core033_kernel_decide
theorem stats2688 : actualRows2688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2688=5124 := by core033_kernel_decide
theorem rows2689 : actualRows2689=WordField.canonicalRows actualModulus 2689 (.rotr 2672 13) := by core033_kernel_decide
theorem stats2689 : actualRows2689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2689=5124 := by core033_kernel_decide
theorem rows2690 : actualRows2690=WordField.canonicalRows actualModulus 2690 (.bxor 2688 2689) := by core033_kernel_decide
theorem stats2690 : actualRows2690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2690=7428 := by core033_kernel_decide
theorem rows2691 : actualRows2691=WordField.canonicalRows actualModulus 2691 (.rotr 2672 22) := by core033_kernel_decide
theorem stats2691 : actualRows2691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2691=5124 := by core033_kernel_decide
theorem rows2692 : actualRows2692=WordField.canonicalRows actualModulus 2692 (.bxor 2690 2691) := by core033_kernel_decide
theorem stats2692 : actualRows2692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2692=7428 := by core033_kernel_decide
theorem rows2693 : actualRows2693=WordField.canonicalRows actualModulus 2693 (.band 2672 2646) := by core033_kernel_decide
theorem stats2693 : actualRows2693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2693=5124 := by core033_kernel_decide
theorem rows2694 : actualRows2694=WordField.canonicalRows actualModulus 2694 (.band 2672 2620) := by core033_kernel_decide
theorem stats2694 : actualRows2694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2694=5124 := by core033_kernel_decide
theorem rows2695 : actualRows2695=WordField.canonicalRows actualModulus 2695 (.bxor 2693 2694) := by core033_kernel_decide
theorem stats2695 : actualRows2695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2695=7428 := by core033_kernel_decide
theorem rows2696 : actualRows2696=WordField.canonicalRows actualModulus 2696 (.bxor 2695 2667) := by core033_kernel_decide
theorem stats2696 : actualRows2696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2696=7428 := by core033_kernel_decide
theorem rows2697 : actualRows2697=WordField.canonicalRows actualModulus 2697 (.badd 2692 2696) := by core033_kernel_decide
theorem stats2697 : actualRows2697.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2697=5388 := by core033_kernel_decide
theorem rows2698 : actualRows2698=WordField.canonicalRows actualModulus 2698 (.badd 2687 2697) := by core033_kernel_decide
theorem stats2698 : actualRows2698.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2698=5388 := by core033_kernel_decide
theorem rows2699 : actualRows2699=WordField.canonicalRows actualModulus 2699 (.badd 2594 2687) := by core033_kernel_decide
theorem stats2699 : actualRows2699.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2699=5388 := by core033_kernel_decide
theorem rows2700 : actualRows2700=WordField.canonicalRows actualModulus 2700 (.rotr 2699 6) := by core033_kernel_decide
theorem stats2700 : actualRows2700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2700=5124 := by core033_kernel_decide
theorem rows2701 : actualRows2701=WordField.canonicalRows actualModulus 2701 (.rotr 2699 11) := by core033_kernel_decide
theorem stats2701 : actualRows2701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2701=5124 := by core033_kernel_decide
theorem rows2702 : actualRows2702=WordField.canonicalRows actualModulus 2702 (.bxor 2700 2701) := by core033_kernel_decide
theorem stats2702 : actualRows2702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2702=7428 := by core033_kernel_decide
theorem rows2703 : actualRows2703=WordField.canonicalRows actualModulus 2703 (.rotr 2699 25) := by core033_kernel_decide
theorem stats2703 : actualRows2703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2703=5124 := by core033_kernel_decide
theorem rows2704 : actualRows2704=WordField.canonicalRows actualModulus 2704 (.bxor 2702 2703) := by core033_kernel_decide
theorem stats2704 : actualRows2704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2704=7428 := by core033_kernel_decide
theorem rows2705 : actualRows2705=WordField.canonicalRows actualModulus 2705 (.badd 2621 2704) := by core033_kernel_decide
theorem stats2705 : actualRows2705.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2705=5388 := by core033_kernel_decide
theorem rows2706 : actualRows2706=WordField.canonicalRows actualModulus 2706 (.band 2699 2673) := by core033_kernel_decide
theorem stats2706 : actualRows2706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2706=5124 := by core033_kernel_decide
theorem rows2707 : actualRows2707=WordField.canonicalRows actualModulus 2707 (.bnot 2699) := by core033_kernel_decide
theorem stats2707 : actualRows2707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2707=6276 := by core033_kernel_decide
theorem rows2708 : actualRows2708=WordField.canonicalRows actualModulus 2708 (.band 2707 2647) := by core033_kernel_decide
theorem stats2708 : actualRows2708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2708=5124 := by core033_kernel_decide
theorem rows2709 : actualRows2709=WordField.canonicalRows actualModulus 2709 (.bxor 2706 2708) := by core033_kernel_decide
theorem stats2709 : actualRows2709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2709=7428 := by core033_kernel_decide
theorem rows2710 : actualRows2710=WordField.canonicalRows actualModulus 2710 (.badd 2705 2709) := by core033_kernel_decide
theorem stats2710 : actualRows2710.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2710=5388 := by core033_kernel_decide
theorem rows2711 : actualRows2711=WordField.canonicalRows actualModulus 2711 (.literal (BitVec.ofNat 32 1249150122)) := by core033_kernel_decide
theorem stats2711 : actualRows2711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2711=3756 := by core033_kernel_decide
theorem rows2712 : actualRows2712=WordField.canonicalRows actualModulus 2712 (.badd 2710 2711) := by core033_kernel_decide
theorem stats2712 : actualRows2712.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2712=5388 := by core033_kernel_decide
theorem rows2713 : actualRows2713=WordField.canonicalRows actualModulus 2713 (.badd 2712 1606) := by core033_kernel_decide
theorem stats2713 : actualRows2713.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2713=5388 := by core033_kernel_decide
theorem rows2714 : actualRows2714=WordField.canonicalRows actualModulus 2714 (.rotr 2698 2) := by core033_kernel_decide
theorem stats2714 : actualRows2714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2714=5124 := by core033_kernel_decide
theorem rows2715 : actualRows2715=WordField.canonicalRows actualModulus 2715 (.rotr 2698 13) := by core033_kernel_decide
theorem stats2715 : actualRows2715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2715=5124 := by core033_kernel_decide
theorem rows2716 : actualRows2716=WordField.canonicalRows actualModulus 2716 (.bxor 2714 2715) := by core033_kernel_decide
theorem stats2716 : actualRows2716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2716=7428 := by core033_kernel_decide
theorem rows2717 : actualRows2717=WordField.canonicalRows actualModulus 2717 (.rotr 2698 22) := by core033_kernel_decide
theorem stats2717 : actualRows2717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2717=5124 := by core033_kernel_decide
theorem rows2718 : actualRows2718=WordField.canonicalRows actualModulus 2718 (.bxor 2716 2717) := by core033_kernel_decide
theorem stats2718 : actualRows2718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2718=7428 := by core033_kernel_decide
theorem rows2719 : actualRows2719=WordField.canonicalRows actualModulus 2719 (.band 2698 2672) := by core033_kernel_decide
theorem stats2719 : actualRows2719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2719=5124 := by core033_kernel_decide
theorem rows2720 : actualRows2720=WordField.canonicalRows actualModulus 2720 (.band 2698 2646) := by core033_kernel_decide
theorem stats2720 : actualRows2720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2720=5124 := by core033_kernel_decide
theorem rows2721 : actualRows2721=WordField.canonicalRows actualModulus 2721 (.bxor 2719 2720) := by core033_kernel_decide
theorem stats2721 : actualRows2721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2721=7428 := by core033_kernel_decide
theorem rows2722 : actualRows2722=WordField.canonicalRows actualModulus 2722 (.bxor 2721 2693) := by core033_kernel_decide
theorem stats2722 : actualRows2722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2722=7428 := by core033_kernel_decide
theorem rows2723 : actualRows2723=WordField.canonicalRows actualModulus 2723 (.badd 2718 2722) := by core033_kernel_decide
theorem stats2723 : actualRows2723.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2723=5388 := by core033_kernel_decide
theorem rows2724 : actualRows2724=WordField.canonicalRows actualModulus 2724 (.badd 2713 2723) := by core033_kernel_decide
theorem stats2724 : actualRows2724.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2724=5388 := by core033_kernel_decide
theorem rows2725 : actualRows2725=WordField.canonicalRows actualModulus 2725 (.badd 2620 2713) := by core033_kernel_decide
theorem stats2725 : actualRows2725.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2725=5388 := by core033_kernel_decide
theorem rows2726 : actualRows2726=WordField.canonicalRows actualModulus 2726 (.rotr 2725 6) := by core033_kernel_decide
theorem stats2726 : actualRows2726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2726=5124 := by core033_kernel_decide
theorem rows2727 : actualRows2727=WordField.canonicalRows actualModulus 2727 (.rotr 2725 11) := by core033_kernel_decide
theorem stats2727 : actualRows2727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2727=5124 := by core033_kernel_decide
theorem rows2728 : actualRows2728=WordField.canonicalRows actualModulus 2728 (.bxor 2726 2727) := by core033_kernel_decide
theorem stats2728 : actualRows2728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2728=7428 := by core033_kernel_decide
theorem rows2729 : actualRows2729=WordField.canonicalRows actualModulus 2729 (.rotr 2725 25) := by core033_kernel_decide
theorem stats2729 : actualRows2729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2729=5124 := by core033_kernel_decide
theorem rows2730 : actualRows2730=WordField.canonicalRows actualModulus 2730 (.bxor 2728 2729) := by core033_kernel_decide
theorem stats2730 : actualRows2730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2730=7428 := by core033_kernel_decide
def partRows41 : List R1CS.Row := actualRows2667++actualRows2668++actualRows2669++actualRows2670++actualRows2671++actualRows2672++actualRows2673++actualRows2674++actualRows2675++actualRows2676++actualRows2677++actualRows2678++actualRows2679++actualRows2680++actualRows2681++actualRows2682++actualRows2683++actualRows2684++actualRows2685++actualRows2686++actualRows2687++actualRows2688++actualRows2689++actualRows2690++actualRows2691++actualRows2692++actualRows2693++actualRows2694++actualRows2695++actualRows2696++actualRows2697++actualRows2698++actualRows2699++actualRows2700++actualRows2701++actualRows2702++actualRows2703++actualRows2704++actualRows2705++actualRows2706++actualRows2707++actualRows2708++actualRows2709++actualRows2710++actualRows2711++actualRows2712++actualRows2713++actualRows2714++actualRows2715++actualRows2716++actualRows2717++actualRows2718++actualRows2719++actualRows2720++actualRows2721++actualRows2722++actualRows2723++actualRows2724++actualRows2725++actualRows2726++actualRows2727++actualRows2728++actualRows2729++actualRows2730
def partOps41 : List WordIR.Op := [.band 2646 2620,.band 2646 2594,.bxor 2667 2668,.bxor 2669 2641,.badd 2666 2670,.badd 2661 2671,.badd 2568 2661,.rotr 2673 6,.rotr 2673 11,.bxor 2674 2675,.rotr 2673 25,.bxor 2676 2677,.badd 2595 2678,.band 2673 2647,.bnot 2673,.band 2681 2621,.bxor 2680 2682,.badd 2679 2683,.literal (BitVec.ofNat 32 770255983),.badd 2684 2685,.badd 2686 1593,.rotr 2672 2,.rotr 2672 13,.bxor 2688 2689,.rotr 2672 22,.bxor 2690 2691,.band 2672 2646,.band 2672 2620,.bxor 2693 2694,.bxor 2695 2667,.badd 2692 2696,.badd 2687 2697,.badd 2594 2687,.rotr 2699 6,.rotr 2699 11,.bxor 2700 2701,.rotr 2699 25,.bxor 2702 2703,.badd 2621 2704,.band 2699 2673,.bnot 2699,.band 2707 2647,.bxor 2706 2708,.badd 2705 2709,.literal (BitVec.ofNat 32 1249150122),.badd 2710 2711,.badd 2712 1606,.rotr 2698 2,.rotr 2698 13,.bxor 2714 2715,.rotr 2698 22,.bxor 2716 2717,.band 2698 2672,.band 2698 2646,.bxor 2719 2720,.bxor 2721 2693,.badd 2718 2722,.badd 2713 2723,.badd 2620 2713,.rotr 2725 6,.rotr 2725 11,.bxor 2726 2727,.rotr 2725 25,.bxor 2728 2729]
theorem partExact41 : partRows41=WordField.rows actualModulus 2667 partOps41 := by
  simp only [partRows41,partOps41,WordField.rows,rows2667,rows2668,rows2669,rows2670,rows2671,rows2672,rows2673,rows2674,rows2675,rows2676,rows2677,rows2678,rows2679,rows2680,rows2681,rows2682,rows2683,rows2684,rows2685,rows2686,rows2687,rows2688,rows2689,rows2690,rows2691,rows2692,rows2693,rows2694,rows2695,rows2696,rows2697,rows2698,rows2699,rows2700,rows2701,rows2702,rows2703,rows2704,rows2705,rows2706,rows2707,rows2708,rows2709,rows2710,rows2711,rows2712,rows2713,rows2714,rows2715,rows2716,rows2717,rows2718,rows2719,rows2720,rows2721,rows2722,rows2723,rows2724,rows2725,rows2726,rows2727,rows2728,rows2729,rows2730,List.append_assoc,List.append_nil]
theorem partLength41 : partOps41.length=64 := by decide
theorem partStats41 : partRows41.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows41=373824 := by
  simp only [partRows41,List.length_append,MatrixRowBlocks.rows_weight_append,stats2667.1,stats2667.2,stats2668.1,stats2668.2,stats2669.1,stats2669.2,stats2670.1,stats2670.2,stats2671.1,stats2671.2,stats2672.1,stats2672.2,stats2673.1,stats2673.2,stats2674.1,stats2674.2,stats2675.1,stats2675.2,stats2676.1,stats2676.2,stats2677.1,stats2677.2,stats2678.1,stats2678.2,stats2679.1,stats2679.2,stats2680.1,stats2680.2,stats2681.1,stats2681.2,stats2682.1,stats2682.2,stats2683.1,stats2683.2,stats2684.1,stats2684.2,stats2685.1,stats2685.2,stats2686.1,stats2686.2,stats2687.1,stats2687.2,stats2688.1,stats2688.2,stats2689.1,stats2689.2,stats2690.1,stats2690.2,stats2691.1,stats2691.2,stats2692.1,stats2692.2,stats2693.1,stats2693.2,stats2694.1,stats2694.2,stats2695.1,stats2695.2,stats2696.1,stats2696.2,stats2697.1,stats2697.2,stats2698.1,stats2698.2,stats2699.1,stats2699.2,stats2700.1,stats2700.2,stats2701.1,stats2701.2,stats2702.1,stats2702.2,stats2703.1,stats2703.2,stats2704.1,stats2704.2,stats2705.1,stats2705.2,stats2706.1,stats2706.2,stats2707.1,stats2707.2,stats2708.1,stats2708.2,stats2709.1,stats2709.2,stats2710.1,stats2710.2,stats2711.1,stats2711.2,stats2712.1,stats2712.2,stats2713.1,stats2713.2,stats2714.1,stats2714.2,stats2715.1,stats2715.2,stats2716.1,stats2716.2,stats2717.1,stats2717.2,stats2718.1,stats2718.2,stats2719.1,stats2719.2,stats2720.1,stats2720.2,stats2721.1,stats2721.2,stats2722.1,stats2722.2,stats2723.1,stats2723.2,stats2724.1,stats2724.2,stats2725.1,stats2725.2,stats2726.1,stats2726.2,stats2727.1,stats2727.2,stats2728.1,stats2728.2,stats2729.1,stats2729.2,stats2730.1,stats2730.2]
  decide
end SharedFrameCheckedRows
