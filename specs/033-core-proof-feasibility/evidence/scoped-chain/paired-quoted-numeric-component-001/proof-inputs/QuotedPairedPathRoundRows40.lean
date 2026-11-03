import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData41
import PairedPathRoundInstructionMatrixData42
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2656 : actualRows2656=WordField.canonicalRows actualModulus 2656 (.bnot 2655) := by core033_kernel_decide
theorem stats2656 : actualRows2656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2656=6276 := by core033_kernel_decide
theorem rows2657 : actualRows2657=WordField.canonicalRows actualModulus 2657 (.bxor 2654 2656) := by core033_kernel_decide
theorem stats2657 : actualRows2657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2657=7428 := by core033_kernel_decide
theorem rows2658 : actualRows2658=WordField.canonicalRows actualModulus 2658 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2658 : actualRows2658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2658=2892 := by core033_kernel_decide
theorem rows2659 : actualRows2659=WordField.canonicalRows actualModulus 2659 (.bxor 616 2658) := by core033_kernel_decide
theorem stats2659 : actualRows2659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2659=7428 := by core033_kernel_decide
theorem rows2660 : actualRows2660=WordField.canonicalRows actualModulus 2660 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2660 : actualRows2660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2660=2820 := by core033_kernel_decide
theorem rows2661 : actualRows2661=WordField.canonicalRows actualModulus 2661 (.bnot 2660) := by core033_kernel_decide
theorem stats2661 : actualRows2661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2661=6276 := by core033_kernel_decide
theorem rows2662 : actualRows2662=WordField.canonicalRows actualModulus 2662 (.badd 2659 2661) := by core033_kernel_decide
theorem stats2662 : actualRows2662.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2662=5388 := by core033_kernel_decide
theorem rows2663 : actualRows2663=WordField.canonicalRows actualModulus 2663 (.bnot 2662) := by core033_kernel_decide
theorem stats2663 : actualRows2663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2663=6276 := by core033_kernel_decide
theorem rows2664 : actualRows2664=WordField.canonicalRows actualModulus 2664 (.band 2657 2663) := by core033_kernel_decide
theorem stats2664 : actualRows2664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2664=5124 := by core033_kernel_decide
theorem rows2665 : actualRows2665=WordField.canonicalRows actualModulus 2665 (.bxor 2652 2664) := by core033_kernel_decide
theorem stats2665 : actualRows2665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2665=7428 := by core033_kernel_decide
theorem rows2666 : actualRows2666=WordField.canonicalRows actualModulus 2666 (.shr 2665 31) := by core033_kernel_decide
theorem stats2666 : actualRows2666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2666=2892 := by core033_kernel_decide
theorem rows2667 : actualRows2667=WordField.canonicalRows actualModulus 2667 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2667 : actualRows2667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2667=2892 := by core033_kernel_decide
theorem rows2668 : actualRows2668=WordField.canonicalRows actualModulus 2668 (.bxor 2666 2667) := by core033_kernel_decide
theorem stats2668 : actualRows2668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2668=7428 := by core033_kernel_decide
theorem rows2669 : actualRows2669=WordField.canonicalRows actualModulus 2669 (.bnot 2668) := by core033_kernel_decide
theorem stats2669 : actualRows2669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2669=6276 := by core033_kernel_decide
theorem rows2670 : actualRows2670=WordField.canonicalRows actualModulus 2670 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2670 : actualRows2670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2670=2892 := by core033_kernel_decide
theorem rows2671 : actualRows2671=WordField.canonicalRows actualModulus 2671 (.badd 2669 2670) := by core033_kernel_decide
theorem stats2671 : actualRows2671.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2671=5388 := by core033_kernel_decide
theorem rows2672 : actualRows2672=WordField.canonicalRows actualModulus 2672 (.band 2671 1045) := by core033_kernel_decide
theorem stats2672 : actualRows2672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2672=5124 := by core033_kernel_decide
theorem rows2673 : actualRows2673=WordField.canonicalRows actualModulus 2673 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2673 : actualRows2673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2673=2892 := by core033_kernel_decide
theorem rows2674 : actualRows2674=WordField.canonicalRows actualModulus 2674 (.bxor 616 2673) := by core033_kernel_decide
theorem stats2674 : actualRows2674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2674=7428 := by core033_kernel_decide
theorem rows2675 : actualRows2675=WordField.canonicalRows actualModulus 2675 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2675 : actualRows2675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2675=2820 := by core033_kernel_decide
theorem rows2676 : actualRows2676=WordField.canonicalRows actualModulus 2676 (.bnot 2675) := by core033_kernel_decide
theorem stats2676 : actualRows2676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2676=6276 := by core033_kernel_decide
theorem rows2677 : actualRows2677=WordField.canonicalRows actualModulus 2677 (.band 2674 2676) := by core033_kernel_decide
theorem stats2677 : actualRows2677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2677=5124 := by core033_kernel_decide
theorem rows2678 : actualRows2678=WordField.canonicalRows actualModulus 2678 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2678 : actualRows2678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2678=2892 := by core033_kernel_decide
theorem rows2679 : actualRows2679=WordField.canonicalRows actualModulus 2679 (.bxor 616 2678) := by core033_kernel_decide
theorem stats2679 : actualRows2679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2679=7428 := by core033_kernel_decide
theorem rows2680 : actualRows2680=WordField.canonicalRows actualModulus 2680 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2680 : actualRows2680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2680=2820 := by core033_kernel_decide
theorem rows2681 : actualRows2681=WordField.canonicalRows actualModulus 2681 (.bnot 2680) := by core033_kernel_decide
theorem stats2681 : actualRows2681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2681=6276 := by core033_kernel_decide
theorem rows2682 : actualRows2682=WordField.canonicalRows actualModulus 2682 (.bxor 2679 2681) := by core033_kernel_decide
theorem stats2682 : actualRows2682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2682=7428 := by core033_kernel_decide
theorem rows2683 : actualRows2683=WordField.canonicalRows actualModulus 2683 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2683 : actualRows2683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2683=2892 := by core033_kernel_decide
theorem rows2684 : actualRows2684=WordField.canonicalRows actualModulus 2684 (.bxor 616 2683) := by core033_kernel_decide
theorem stats2684 : actualRows2684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2684=7428 := by core033_kernel_decide
theorem rows2685 : actualRows2685=WordField.canonicalRows actualModulus 2685 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2685 : actualRows2685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2685=2820 := by core033_kernel_decide
theorem rows2686 : actualRows2686=WordField.canonicalRows actualModulus 2686 (.bnot 2685) := by core033_kernel_decide
theorem stats2686 : actualRows2686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2686=6276 := by core033_kernel_decide
theorem rows2687 : actualRows2687=WordField.canonicalRows actualModulus 2687 (.badd 2684 2686) := by core033_kernel_decide
theorem stats2687 : actualRows2687.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2687=5388 := by core033_kernel_decide
theorem rows2688 : actualRows2688=WordField.canonicalRows actualModulus 2688 (.bnot 2687) := by core033_kernel_decide
theorem stats2688 : actualRows2688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2688=6276 := by core033_kernel_decide
theorem rows2689 : actualRows2689=WordField.canonicalRows actualModulus 2689 (.band 2682 2688) := by core033_kernel_decide
theorem stats2689 : actualRows2689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2689=5124 := by core033_kernel_decide
theorem rows2690 : actualRows2690=WordField.canonicalRows actualModulus 2690 (.bxor 2677 2689) := by core033_kernel_decide
theorem stats2690 : actualRows2690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2690=7428 := by core033_kernel_decide
theorem rows2691 : actualRows2691=WordField.canonicalRows actualModulus 2691 (.shr 2690 31) := by core033_kernel_decide
theorem stats2691 : actualRows2691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2691=2892 := by core033_kernel_decide
theorem rows2692 : actualRows2692=WordField.canonicalRows actualModulus 2692 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2692 : actualRows2692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2692=2892 := by core033_kernel_decide
theorem rows2693 : actualRows2693=WordField.canonicalRows actualModulus 2693 (.bxor 2691 2692) := by core033_kernel_decide
theorem stats2693 : actualRows2693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2693=7428 := by core033_kernel_decide
theorem rows2694 : actualRows2694=WordField.canonicalRows actualModulus 2694 (.bnot 2693) := by core033_kernel_decide
theorem stats2694 : actualRows2694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2694=6276 := by core033_kernel_decide
theorem rows2695 : actualRows2695=WordField.canonicalRows actualModulus 2695 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2695 : actualRows2695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2695=2892 := by core033_kernel_decide
theorem rows2696 : actualRows2696=WordField.canonicalRows actualModulus 2696 (.badd 2694 2695) := by core033_kernel_decide
theorem stats2696 : actualRows2696.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2696=5388 := by core033_kernel_decide
theorem rows2697 : actualRows2697=WordField.canonicalRows actualModulus 2697 (.bnot 2696) := by core033_kernel_decide
theorem stats2697 : actualRows2697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2697=6276 := by core033_kernel_decide
theorem rows2698 : actualRows2698=WordField.canonicalRows actualModulus 2698 (.literal (BitVec.ofNat 32 1359893119)) := by core033_kernel_decide
theorem stats2698 : actualRows2698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2698=3972 := by core033_kernel_decide
theorem rows2699 : actualRows2699=WordField.canonicalRows actualModulus 2699 (.band 2697 2698) := by core033_kernel_decide
theorem stats2699 : actualRows2699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2699=5124 := by core033_kernel_decide
theorem rows2700 : actualRows2700=WordField.canonicalRows actualModulus 2700 (.bxor 2672 2699) := by core033_kernel_decide
theorem stats2700 : actualRows2700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2700=7428 := by core033_kernel_decide
theorem rows2701 : actualRows2701=WordField.canonicalRows actualModulus 2701 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2701 : actualRows2701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2701=2892 := by core033_kernel_decide
theorem rows2702 : actualRows2702=WordField.canonicalRows actualModulus 2702 (.bxor 616 2701) := by core033_kernel_decide
theorem stats2702 : actualRows2702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2702=7428 := by core033_kernel_decide
theorem rows2703 : actualRows2703=WordField.canonicalRows actualModulus 2703 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2703 : actualRows2703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2703=2820 := by core033_kernel_decide
theorem rows2704 : actualRows2704=WordField.canonicalRows actualModulus 2704 (.bnot 2703) := by core033_kernel_decide
theorem stats2704 : actualRows2704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2704=6276 := by core033_kernel_decide
theorem rows2705 : actualRows2705=WordField.canonicalRows actualModulus 2705 (.band 2702 2704) := by core033_kernel_decide
theorem stats2705 : actualRows2705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2705=5124 := by core033_kernel_decide
theorem rows2706 : actualRows2706=WordField.canonicalRows actualModulus 2706 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2706 : actualRows2706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2706=2892 := by core033_kernel_decide
theorem rows2707 : actualRows2707=WordField.canonicalRows actualModulus 2707 (.bxor 616 2706) := by core033_kernel_decide
theorem stats2707 : actualRows2707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2707=7428 := by core033_kernel_decide
theorem rows2708 : actualRows2708=WordField.canonicalRows actualModulus 2708 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2708 : actualRows2708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2708=2820 := by core033_kernel_decide
theorem rows2709 : actualRows2709=WordField.canonicalRows actualModulus 2709 (.bnot 2708) := by core033_kernel_decide
theorem stats2709 : actualRows2709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2709=6276 := by core033_kernel_decide
theorem rows2710 : actualRows2710=WordField.canonicalRows actualModulus 2710 (.bxor 2707 2709) := by core033_kernel_decide
theorem stats2710 : actualRows2710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2710=7428 := by core033_kernel_decide
theorem rows2711 : actualRows2711=WordField.canonicalRows actualModulus 2711 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2711 : actualRows2711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2711=2892 := by core033_kernel_decide
theorem rows2712 : actualRows2712=WordField.canonicalRows actualModulus 2712 (.bxor 616 2711) := by core033_kernel_decide
theorem stats2712 : actualRows2712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2712=7428 := by core033_kernel_decide
theorem rows2713 : actualRows2713=WordField.canonicalRows actualModulus 2713 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2713 : actualRows2713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2713=2820 := by core033_kernel_decide
theorem rows2714 : actualRows2714=WordField.canonicalRows actualModulus 2714 (.bnot 2713) := by core033_kernel_decide
theorem stats2714 : actualRows2714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2714=6276 := by core033_kernel_decide
theorem rows2715 : actualRows2715=WordField.canonicalRows actualModulus 2715 (.badd 2712 2714) := by core033_kernel_decide
theorem stats2715 : actualRows2715.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2715=5388 := by core033_kernel_decide
theorem rows2716 : actualRows2716=WordField.canonicalRows actualModulus 2716 (.bnot 2715) := by core033_kernel_decide
theorem stats2716 : actualRows2716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2716=6276 := by core033_kernel_decide
theorem rows2717 : actualRows2717=WordField.canonicalRows actualModulus 2717 (.band 2710 2716) := by core033_kernel_decide
theorem stats2717 : actualRows2717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2717=5124 := by core033_kernel_decide
theorem rows2718 : actualRows2718=WordField.canonicalRows actualModulus 2718 (.bxor 2705 2717) := by core033_kernel_decide
theorem stats2718 : actualRows2718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2718=7428 := by core033_kernel_decide
theorem rows2719 : actualRows2719=WordField.canonicalRows actualModulus 2719 (.shr 2718 31) := by core033_kernel_decide
theorem stats2719 : actualRows2719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2719=2892 := by core033_kernel_decide
def partRows40 : List R1CS.Row := actualRows2656++actualRows2657++actualRows2658++actualRows2659++actualRows2660++actualRows2661++actualRows2662++actualRows2663++actualRows2664++actualRows2665++actualRows2666++actualRows2667++actualRows2668++actualRows2669++actualRows2670++actualRows2671++actualRows2672++actualRows2673++actualRows2674++actualRows2675++actualRows2676++actualRows2677++actualRows2678++actualRows2679++actualRows2680++actualRows2681++actualRows2682++actualRows2683++actualRows2684++actualRows2685++actualRows2686++actualRows2687++actualRows2688++actualRows2689++actualRows2690++actualRows2691++actualRows2692++actualRows2693++actualRows2694++actualRows2695++actualRows2696++actualRows2697++actualRows2698++actualRows2699++actualRows2700++actualRows2701++actualRows2702++actualRows2703++actualRows2704++actualRows2705++actualRows2706++actualRows2707++actualRows2708++actualRows2709++actualRows2710++actualRows2711++actualRows2712++actualRows2713++actualRows2714++actualRows2715++actualRows2716++actualRows2717++actualRows2718++actualRows2719
def partOps40 : List WordIR.Op := [.bnot 2655,.bxor 2654 2656,.literal (BitVec.ofNat 32 2),.bxor 616 2658,.literal (BitVec.ofNat 32 0),.bnot 2660,.badd 2659 2661,.bnot 2662,.band 2657 2663,.bxor 2652 2664,.shr 2665 31,.literal (BitVec.ofNat 32 1),.bxor 2666 2667,.bnot 2668,.literal (BitVec.ofNat 32 1),.badd 2669 2670,.band 2671 1045,.literal (BitVec.ofNat 32 2),.bxor 616 2673,.literal (BitVec.ofNat 32 0),.bnot 2675,.band 2674 2676,.literal (BitVec.ofNat 32 2),.bxor 616 2678,.literal (BitVec.ofNat 32 0),.bnot 2680,.bxor 2679 2681,.literal (BitVec.ofNat 32 2),.bxor 616 2683,.literal (BitVec.ofNat 32 0),.bnot 2685,.badd 2684 2686,.bnot 2687,.band 2682 2688,.bxor 2677 2689,.shr 2690 31,.literal (BitVec.ofNat 32 1),.bxor 2691 2692,.bnot 2693,.literal (BitVec.ofNat 32 1),.badd 2694 2695,.bnot 2696,.literal (BitVec.ofNat 32 1359893119),.band 2697 2698,.bxor 2672 2699,.literal (BitVec.ofNat 32 2),.bxor 616 2701,.literal (BitVec.ofNat 32 0),.bnot 2703,.band 2702 2704,.literal (BitVec.ofNat 32 2),.bxor 616 2706,.literal (BitVec.ofNat 32 0),.bnot 2708,.bxor 2707 2709,.literal (BitVec.ofNat 32 2),.bxor 616 2711,.literal (BitVec.ofNat 32 0),.bnot 2713,.badd 2712 2714,.bnot 2715,.band 2710 2716,.bxor 2705 2717,.shr 2718 31]
theorem partExact40 : partRows40=WordField.rows actualModulus 2656 partOps40 := by
  simp only [partRows40,partOps40,WordField.rows,rows2656,rows2657,rows2658,rows2659,rows2660,rows2661,rows2662,rows2663,rows2664,rows2665,rows2666,rows2667,rows2668,rows2669,rows2670,rows2671,rows2672,rows2673,rows2674,rows2675,rows2676,rows2677,rows2678,rows2679,rows2680,rows2681,rows2682,rows2683,rows2684,rows2685,rows2686,rows2687,rows2688,rows2689,rows2690,rows2691,rows2692,rows2693,rows2694,rows2695,rows2696,rows2697,rows2698,rows2699,rows2700,rows2701,rows2702,rows2703,rows2704,rows2705,rows2706,rows2707,rows2708,rows2709,rows2710,rows2711,rows2712,rows2713,rows2714,rows2715,rows2716,rows2717,rows2718,rows2719,List.append_assoc,List.append_nil]
theorem partLength40 : partOps40.length=64 := by decide
theorem partStats40 : partRows40.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows40=333720 := by
  simp only [partRows40,List.length_append,MatrixRowBlocks.rows_weight_append,stats2656.1,stats2656.2,stats2657.1,stats2657.2,stats2658.1,stats2658.2,stats2659.1,stats2659.2,stats2660.1,stats2660.2,stats2661.1,stats2661.2,stats2662.1,stats2662.2,stats2663.1,stats2663.2,stats2664.1,stats2664.2,stats2665.1,stats2665.2,stats2666.1,stats2666.2,stats2667.1,stats2667.2,stats2668.1,stats2668.2,stats2669.1,stats2669.2,stats2670.1,stats2670.2,stats2671.1,stats2671.2,stats2672.1,stats2672.2,stats2673.1,stats2673.2,stats2674.1,stats2674.2,stats2675.1,stats2675.2,stats2676.1,stats2676.2,stats2677.1,stats2677.2,stats2678.1,stats2678.2,stats2679.1,stats2679.2,stats2680.1,stats2680.2,stats2681.1,stats2681.2,stats2682.1,stats2682.2,stats2683.1,stats2683.2,stats2684.1,stats2684.2,stats2685.1,stats2685.2,stats2686.1,stats2686.2,stats2687.1,stats2687.2,stats2688.1,stats2688.2,stats2689.1,stats2689.2,stats2690.1,stats2690.2,stats2691.1,stats2691.2,stats2692.1,stats2692.2,stats2693.1,stats2693.2,stats2694.1,stats2694.2,stats2695.1,stats2695.2,stats2696.1,stats2696.2,stats2697.1,stats2697.2,stats2698.1,stats2698.2,stats2699.1,stats2699.2,stats2700.1,stats2700.2,stats2701.1,stats2701.2,stats2702.1,stats2702.2,stats2703.1,stats2703.2,stats2704.1,stats2704.2,stats2705.1,stats2705.2,stats2706.1,stats2706.2,stats2707.1,stats2707.2,stats2708.1,stats2708.2,stats2709.1,stats2709.2,stats2710.1,stats2710.2,stats2711.1,stats2711.2,stats2712.1,stats2712.2,stats2713.1,stats2713.2,stats2714.1,stats2714.2,stats2715.1,stats2715.2,stats2716.1,stats2716.2,stats2717.1,stats2717.2,stats2718.1,stats2718.2,stats2719.1,stats2719.2]
  decide
end QuotedPairedPathRoundCheckedRows
