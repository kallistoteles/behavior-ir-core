import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData41
import AuthenticatedBranchRoundInstructionMatrixData42
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2678 : actualRows2678=WordField.canonicalRows actualModulus 2678 (.band 2676 2677) := by core033_kernel_decide
theorem stats2678 : actualRows2678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2678=5124 := by core033_kernel_decide
theorem rows2679 : actualRows2679=WordField.canonicalRows actualModulus 2679 (.shr 2208 16) := by core033_kernel_decide
theorem stats2679 : actualRows2679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2679=3972 := by core033_kernel_decide
theorem rows2680 : actualRows2680=WordField.canonicalRows actualModulus 2680 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2680 : actualRows2680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2680=3396 := by core033_kernel_decide
theorem rows2681 : actualRows2681=WordField.canonicalRows actualModulus 2681 (.band 2679 2680) := by core033_kernel_decide
theorem stats2681 : actualRows2681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2681=5124 := by core033_kernel_decide
theorem rows2682 : actualRows2682=WordField.canonicalRows actualModulus 2682 (.shr 2208 24) := by core033_kernel_decide
theorem stats2682 : actualRows2682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2682=3396 := by core033_kernel_decide
theorem rows2683 : actualRows2683=WordField.canonicalRows actualModulus 2683 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2683 : actualRows2683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2683=3396 := by core033_kernel_decide
theorem rows2684 : actualRows2684=WordField.canonicalRows actualModulus 2684 (.band 2682 2683) := by core033_kernel_decide
theorem stats2684 : actualRows2684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2684=5124 := by core033_kernel_decide
theorem rows2685 : actualRows2685=WordField.canonicalRows actualModulus 2685 (.shr 2218 0) := by core033_kernel_decide
theorem stats2685 : actualRows2685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2685=5124 := by core033_kernel_decide
theorem rows2686 : actualRows2686=WordField.canonicalRows actualModulus 2686 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2686 : actualRows2686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2686=3396 := by core033_kernel_decide
theorem rows2687 : actualRows2687=WordField.canonicalRows actualModulus 2687 (.band 2685 2686) := by core033_kernel_decide
theorem stats2687 : actualRows2687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2687=5124 := by core033_kernel_decide
theorem rows2688 : actualRows2688=WordField.canonicalRows actualModulus 2688 (.shr 2218 8) := by core033_kernel_decide
theorem stats2688 : actualRows2688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2688=4548 := by core033_kernel_decide
theorem rows2689 : actualRows2689=WordField.canonicalRows actualModulus 2689 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2689 : actualRows2689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2689=3396 := by core033_kernel_decide
theorem rows2690 : actualRows2690=WordField.canonicalRows actualModulus 2690 (.band 2688 2689) := by core033_kernel_decide
theorem stats2690 : actualRows2690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2690=5124 := by core033_kernel_decide
theorem rows2691 : actualRows2691=WordField.canonicalRows actualModulus 2691 (.shr 2218 16) := by core033_kernel_decide
theorem stats2691 : actualRows2691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2691=3972 := by core033_kernel_decide
theorem rows2692 : actualRows2692=WordField.canonicalRows actualModulus 2692 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2692 : actualRows2692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2692=3396 := by core033_kernel_decide
theorem rows2693 : actualRows2693=WordField.canonicalRows actualModulus 2693 (.band 2691 2692) := by core033_kernel_decide
theorem stats2693 : actualRows2693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2693=5124 := by core033_kernel_decide
theorem rows2694 : actualRows2694=WordField.canonicalRows actualModulus 2694 (.shr 2218 24) := by core033_kernel_decide
theorem stats2694 : actualRows2694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2694=3396 := by core033_kernel_decide
theorem rows2695 : actualRows2695=WordField.canonicalRows actualModulus 2695 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2695 : actualRows2695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2695=3396 := by core033_kernel_decide
theorem rows2696 : actualRows2696=WordField.canonicalRows actualModulus 2696 (.band 2694 2695) := by core033_kernel_decide
theorem stats2696 : actualRows2696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2696=5124 := by core033_kernel_decide
theorem rows2697 : actualRows2697=WordField.canonicalRows actualModulus 2697 (.shr 2228 0) := by core033_kernel_decide
theorem stats2697 : actualRows2697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2697=5124 := by core033_kernel_decide
theorem rows2698 : actualRows2698=WordField.canonicalRows actualModulus 2698 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2698 : actualRows2698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2698=3396 := by core033_kernel_decide
theorem rows2699 : actualRows2699=WordField.canonicalRows actualModulus 2699 (.band 2697 2698) := by core033_kernel_decide
theorem stats2699 : actualRows2699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2699=5124 := by core033_kernel_decide
theorem rows2700 : actualRows2700=WordField.canonicalRows actualModulus 2700 (.shr 2228 8) := by core033_kernel_decide
theorem stats2700 : actualRows2700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2700=4548 := by core033_kernel_decide
theorem rows2701 : actualRows2701=WordField.canonicalRows actualModulus 2701 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2701 : actualRows2701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2701=3396 := by core033_kernel_decide
theorem rows2702 : actualRows2702=WordField.canonicalRows actualModulus 2702 (.band 2700 2701) := by core033_kernel_decide
theorem stats2702 : actualRows2702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2702=5124 := by core033_kernel_decide
theorem rows2703 : actualRows2703=WordField.canonicalRows actualModulus 2703 (.shr 2228 16) := by core033_kernel_decide
theorem stats2703 : actualRows2703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2703=3972 := by core033_kernel_decide
theorem rows2704 : actualRows2704=WordField.canonicalRows actualModulus 2704 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2704 : actualRows2704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2704=3396 := by core033_kernel_decide
theorem rows2705 : actualRows2705=WordField.canonicalRows actualModulus 2705 (.band 2703 2704) := by core033_kernel_decide
theorem stats2705 : actualRows2705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2705=5124 := by core033_kernel_decide
theorem rows2706 : actualRows2706=WordField.canonicalRows actualModulus 2706 (.shr 2228 24) := by core033_kernel_decide
theorem stats2706 : actualRows2706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2706=3396 := by core033_kernel_decide
theorem rows2707 : actualRows2707=WordField.canonicalRows actualModulus 2707 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2707 : actualRows2707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2707=3396 := by core033_kernel_decide
theorem rows2708 : actualRows2708=WordField.canonicalRows actualModulus 2708 (.band 2706 2707) := by core033_kernel_decide
theorem stats2708 : actualRows2708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2708=5124 := by core033_kernel_decide
theorem rows2709 : actualRows2709=WordField.canonicalRows actualModulus 2709 (.shr 2238 0) := by core033_kernel_decide
theorem stats2709 : actualRows2709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2709=5124 := by core033_kernel_decide
theorem rows2710 : actualRows2710=WordField.canonicalRows actualModulus 2710 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2710 : actualRows2710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2710=3396 := by core033_kernel_decide
theorem rows2711 : actualRows2711=WordField.canonicalRows actualModulus 2711 (.band 2709 2710) := by core033_kernel_decide
theorem stats2711 : actualRows2711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2711=5124 := by core033_kernel_decide
theorem rows2712 : actualRows2712=WordField.canonicalRows actualModulus 2712 (.shr 2238 8) := by core033_kernel_decide
theorem stats2712 : actualRows2712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2712=4548 := by core033_kernel_decide
theorem rows2713 : actualRows2713=WordField.canonicalRows actualModulus 2713 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2713 : actualRows2713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2713=3396 := by core033_kernel_decide
theorem rows2714 : actualRows2714=WordField.canonicalRows actualModulus 2714 (.band 2712 2713) := by core033_kernel_decide
theorem stats2714 : actualRows2714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2714=5124 := by core033_kernel_decide
theorem rows2715 : actualRows2715=WordField.canonicalRows actualModulus 2715 (.shr 2238 16) := by core033_kernel_decide
theorem stats2715 : actualRows2715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2715=3972 := by core033_kernel_decide
theorem rows2716 : actualRows2716=WordField.canonicalRows actualModulus 2716 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2716 : actualRows2716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2716=3396 := by core033_kernel_decide
theorem rows2717 : actualRows2717=WordField.canonicalRows actualModulus 2717 (.band 2715 2716) := by core033_kernel_decide
theorem stats2717 : actualRows2717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2717=5124 := by core033_kernel_decide
theorem rows2718 : actualRows2718=WordField.canonicalRows actualModulus 2718 (.shr 2238 24) := by core033_kernel_decide
theorem stats2718 : actualRows2718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2718=3396 := by core033_kernel_decide
theorem rows2719 : actualRows2719=WordField.canonicalRows actualModulus 2719 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2719 : actualRows2719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2719=3396 := by core033_kernel_decide
theorem rows2720 : actualRows2720=WordField.canonicalRows actualModulus 2720 (.band 2718 2719) := by core033_kernel_decide
theorem stats2720 : actualRows2720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2720=5124 := by core033_kernel_decide
theorem rows2721 : actualRows2721=WordField.canonicalRows actualModulus 2721 (.shr 2248 0) := by core033_kernel_decide
theorem stats2721 : actualRows2721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2721=5124 := by core033_kernel_decide
theorem rows2722 : actualRows2722=WordField.canonicalRows actualModulus 2722 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2722 : actualRows2722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2722=3396 := by core033_kernel_decide
theorem rows2723 : actualRows2723=WordField.canonicalRows actualModulus 2723 (.band 2721 2722) := by core033_kernel_decide
theorem stats2723 : actualRows2723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2723=5124 := by core033_kernel_decide
theorem rows2724 : actualRows2724=WordField.canonicalRows actualModulus 2724 (.shr 2248 8) := by core033_kernel_decide
theorem stats2724 : actualRows2724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2724=4548 := by core033_kernel_decide
theorem rows2725 : actualRows2725=WordField.canonicalRows actualModulus 2725 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2725 : actualRows2725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2725=3396 := by core033_kernel_decide
theorem rows2726 : actualRows2726=WordField.canonicalRows actualModulus 2726 (.band 2724 2725) := by core033_kernel_decide
theorem stats2726 : actualRows2726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2726=5124 := by core033_kernel_decide
theorem rows2727 : actualRows2727=WordField.canonicalRows actualModulus 2727 (.shr 2248 16) := by core033_kernel_decide
theorem stats2727 : actualRows2727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2727=3972 := by core033_kernel_decide
theorem rows2728 : actualRows2728=WordField.canonicalRows actualModulus 2728 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2728 : actualRows2728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2728=3396 := by core033_kernel_decide
theorem rows2729 : actualRows2729=WordField.canonicalRows actualModulus 2729 (.band 2727 2728) := by core033_kernel_decide
theorem stats2729 : actualRows2729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2729=5124 := by core033_kernel_decide
theorem rows2730 : actualRows2730=WordField.canonicalRows actualModulus 2730 (.shr 2248 24) := by core033_kernel_decide
theorem stats2730 : actualRows2730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2730=3396 := by core033_kernel_decide
theorem rows2731 : actualRows2731=WordField.canonicalRows actualModulus 2731 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2731 : actualRows2731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2731=3396 := by core033_kernel_decide
theorem rows2732 : actualRows2732=WordField.canonicalRows actualModulus 2732 (.band 2730 2731) := by core033_kernel_decide
theorem stats2732 : actualRows2732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2732=5124 := by core033_kernel_decide
theorem rows2733 : actualRows2733=WordField.canonicalRows actualModulus 2733 (.shr 2258 0) := by core033_kernel_decide
theorem stats2733 : actualRows2733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2733=5124 := by core033_kernel_decide
theorem rows2734 : actualRows2734=WordField.canonicalRows actualModulus 2734 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2734 : actualRows2734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2734=3396 := by core033_kernel_decide
theorem rows2735 : actualRows2735=WordField.canonicalRows actualModulus 2735 (.band 2733 2734) := by core033_kernel_decide
theorem stats2735 : actualRows2735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2735=5124 := by core033_kernel_decide
theorem rows2736 : actualRows2736=WordField.canonicalRows actualModulus 2736 (.shr 2258 8) := by core033_kernel_decide
theorem stats2736 : actualRows2736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2736=4548 := by core033_kernel_decide
theorem rows2737 : actualRows2737=WordField.canonicalRows actualModulus 2737 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2737 : actualRows2737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2737=3396 := by core033_kernel_decide
theorem rows2738 : actualRows2738=WordField.canonicalRows actualModulus 2738 (.band 2736 2737) := by core033_kernel_decide
theorem stats2738 : actualRows2738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2738=5124 := by core033_kernel_decide
theorem rows2739 : actualRows2739=WordField.canonicalRows actualModulus 2739 (.shr 2258 16) := by core033_kernel_decide
theorem stats2739 : actualRows2739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2739=3972 := by core033_kernel_decide
theorem rows2740 : actualRows2740=WordField.canonicalRows actualModulus 2740 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2740 : actualRows2740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2740=3396 := by core033_kernel_decide
theorem rows2741 : actualRows2741=WordField.canonicalRows actualModulus 2741 (.band 2739 2740) := by core033_kernel_decide
theorem stats2741 : actualRows2741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2741=5124 := by core033_kernel_decide
def partRows40 : List R1CS.Row := actualRows2678++actualRows2679++actualRows2680++actualRows2681++actualRows2682++actualRows2683++actualRows2684++actualRows2685++actualRows2686++actualRows2687++actualRows2688++actualRows2689++actualRows2690++actualRows2691++actualRows2692++actualRows2693++actualRows2694++actualRows2695++actualRows2696++actualRows2697++actualRows2698++actualRows2699++actualRows2700++actualRows2701++actualRows2702++actualRows2703++actualRows2704++actualRows2705++actualRows2706++actualRows2707++actualRows2708++actualRows2709++actualRows2710++actualRows2711++actualRows2712++actualRows2713++actualRows2714++actualRows2715++actualRows2716++actualRows2717++actualRows2718++actualRows2719++actualRows2720++actualRows2721++actualRows2722++actualRows2723++actualRows2724++actualRows2725++actualRows2726++actualRows2727++actualRows2728++actualRows2729++actualRows2730++actualRows2731++actualRows2732++actualRows2733++actualRows2734++actualRows2735++actualRows2736++actualRows2737++actualRows2738++actualRows2739++actualRows2740++actualRows2741
def partOps40 : List WordIR.Op := [.band 2676 2677,.shr 2208 16,.literal (BitVec.ofNat 32 255),.band 2679 2680,.shr 2208 24,.literal (BitVec.ofNat 32 255),.band 2682 2683,.shr 2218 0,.literal (BitVec.ofNat 32 255),.band 2685 2686,.shr 2218 8,.literal (BitVec.ofNat 32 255),.band 2688 2689,.shr 2218 16,.literal (BitVec.ofNat 32 255),.band 2691 2692,.shr 2218 24,.literal (BitVec.ofNat 32 255),.band 2694 2695,.shr 2228 0,.literal (BitVec.ofNat 32 255),.band 2697 2698,.shr 2228 8,.literal (BitVec.ofNat 32 255),.band 2700 2701,.shr 2228 16,.literal (BitVec.ofNat 32 255),.band 2703 2704,.shr 2228 24,.literal (BitVec.ofNat 32 255),.band 2706 2707,.shr 2238 0,.literal (BitVec.ofNat 32 255),.band 2709 2710,.shr 2238 8,.literal (BitVec.ofNat 32 255),.band 2712 2713,.shr 2238 16,.literal (BitVec.ofNat 32 255),.band 2715 2716,.shr 2238 24,.literal (BitVec.ofNat 32 255),.band 2718 2719,.shr 2248 0,.literal (BitVec.ofNat 32 255),.band 2721 2722,.shr 2248 8,.literal (BitVec.ofNat 32 255),.band 2724 2725,.shr 2248 16,.literal (BitVec.ofNat 32 255),.band 2727 2728,.shr 2248 24,.literal (BitVec.ofNat 32 255),.band 2730 2731,.shr 2258 0,.literal (BitVec.ofNat 32 255),.band 2733 2734,.shr 2258 8,.literal (BitVec.ofNat 32 255),.band 2736 2737,.shr 2258 16,.literal (BitVec.ofNat 32 255),.band 2739 2740]
theorem partExact40 : partRows40=WordField.rows actualModulus 2678 partOps40 := by
  simp only [partRows40,partOps40,WordField.rows,rows2678,rows2679,rows2680,rows2681,rows2682,rows2683,rows2684,rows2685,rows2686,rows2687,rows2688,rows2689,rows2690,rows2691,rows2692,rows2693,rows2694,rows2695,rows2696,rows2697,rows2698,rows2699,rows2700,rows2701,rows2702,rows2703,rows2704,rows2705,rows2706,rows2707,rows2708,rows2709,rows2710,rows2711,rows2712,rows2713,rows2714,rows2715,rows2716,rows2717,rows2718,rows2719,rows2720,rows2721,rows2722,rows2723,rows2724,rows2725,rows2726,rows2727,rows2728,rows2729,rows2730,rows2731,rows2732,rows2733,rows2734,rows2735,rows2736,rows2737,rows2738,rows2739,rows2740,rows2741,List.append_assoc,List.append_nil]
theorem partLength40 : partOps40.length=64 := by decide
theorem partStats40 : partRows40.length=2176 ∧ MatrixRowBlocks.rowsWeight partRows40=273216 := by
  simp only [partRows40,List.length_append,MatrixRowBlocks.rows_weight_append,stats2678.1,stats2678.2,stats2679.1,stats2679.2,stats2680.1,stats2680.2,stats2681.1,stats2681.2,stats2682.1,stats2682.2,stats2683.1,stats2683.2,stats2684.1,stats2684.2,stats2685.1,stats2685.2,stats2686.1,stats2686.2,stats2687.1,stats2687.2,stats2688.1,stats2688.2,stats2689.1,stats2689.2,stats2690.1,stats2690.2,stats2691.1,stats2691.2,stats2692.1,stats2692.2,stats2693.1,stats2693.2,stats2694.1,stats2694.2,stats2695.1,stats2695.2,stats2696.1,stats2696.2,stats2697.1,stats2697.2,stats2698.1,stats2698.2,stats2699.1,stats2699.2,stats2700.1,stats2700.2,stats2701.1,stats2701.2,stats2702.1,stats2702.2,stats2703.1,stats2703.2,stats2704.1,stats2704.2,stats2705.1,stats2705.2,stats2706.1,stats2706.2,stats2707.1,stats2707.2,stats2708.1,stats2708.2,stats2709.1,stats2709.2,stats2710.1,stats2710.2,stats2711.1,stats2711.2,stats2712.1,stats2712.2,stats2713.1,stats2713.2,stats2714.1,stats2714.2,stats2715.1,stats2715.2,stats2716.1,stats2716.2,stats2717.1,stats2717.2,stats2718.1,stats2718.2,stats2719.1,stats2719.2,stats2720.1,stats2720.2,stats2721.1,stats2721.2,stats2722.1,stats2722.2,stats2723.1,stats2723.2,stats2724.1,stats2724.2,stats2725.1,stats2725.2,stats2726.1,stats2726.2,stats2727.1,stats2727.2,stats2728.1,stats2728.2,stats2729.1,stats2729.2,stats2730.1,stats2730.2,stats2731.1,stats2731.2,stats2732.1,stats2732.2,stats2733.1,stats2733.2,stats2734.1,stats2734.2,stats2735.1,stats2735.2,stats2736.1,stats2736.2,stats2737.1,stats2737.2,stats2738.1,stats2738.2,stats2739.1,stats2739.2,stats2740.1,stats2740.2,stats2741.1,stats2741.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
