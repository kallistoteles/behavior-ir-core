import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData42
import AuthenticatedBranchRoundInstructionMatrixData43
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2742 : actualRows2742=WordField.canonicalRows actualModulus 2742 (.shr 2258 24) := by core033_kernel_decide
theorem stats2742 : actualRows2742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2742=3396 := by core033_kernel_decide
theorem rows2743 : actualRows2743=WordField.canonicalRows actualModulus 2743 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2743 : actualRows2743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2743=3396 := by core033_kernel_decide
theorem rows2744 : actualRows2744=WordField.canonicalRows actualModulus 2744 (.band 2742 2743) := by core033_kernel_decide
theorem stats2744 : actualRows2744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2744=5124 := by core033_kernel_decide
theorem rows2745 : actualRows2745=WordField.canonicalRows actualModulus 2745 (.shr 2268 0) := by core033_kernel_decide
theorem stats2745 : actualRows2745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2745=5124 := by core033_kernel_decide
theorem rows2746 : actualRows2746=WordField.canonicalRows actualModulus 2746 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2746 : actualRows2746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2746=3396 := by core033_kernel_decide
theorem rows2747 : actualRows2747=WordField.canonicalRows actualModulus 2747 (.band 2745 2746) := by core033_kernel_decide
theorem stats2747 : actualRows2747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2747=5124 := by core033_kernel_decide
theorem rows2748 : actualRows2748=WordField.canonicalRows actualModulus 2748 (.shr 2268 8) := by core033_kernel_decide
theorem stats2748 : actualRows2748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2748=4548 := by core033_kernel_decide
theorem rows2749 : actualRows2749=WordField.canonicalRows actualModulus 2749 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2749 : actualRows2749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2749=3396 := by core033_kernel_decide
theorem rows2750 : actualRows2750=WordField.canonicalRows actualModulus 2750 (.band 2748 2749) := by core033_kernel_decide
theorem stats2750 : actualRows2750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2750=5124 := by core033_kernel_decide
theorem rows2751 : actualRows2751=WordField.canonicalRows actualModulus 2751 (.shr 2268 16) := by core033_kernel_decide
theorem stats2751 : actualRows2751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2751=3972 := by core033_kernel_decide
theorem rows2752 : actualRows2752=WordField.canonicalRows actualModulus 2752 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2752 : actualRows2752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2752=3396 := by core033_kernel_decide
theorem rows2753 : actualRows2753=WordField.canonicalRows actualModulus 2753 (.band 2751 2752) := by core033_kernel_decide
theorem stats2753 : actualRows2753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2753=5124 := by core033_kernel_decide
theorem rows2754 : actualRows2754=WordField.canonicalRows actualModulus 2754 (.shr 2268 24) := by core033_kernel_decide
theorem stats2754 : actualRows2754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2754=3396 := by core033_kernel_decide
theorem rows2755 : actualRows2755=WordField.canonicalRows actualModulus 2755 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2755 : actualRows2755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2755=3396 := by core033_kernel_decide
theorem rows2756 : actualRows2756=WordField.canonicalRows actualModulus 2756 (.band 2754 2755) := by core033_kernel_decide
theorem stats2756 : actualRows2756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2756=5124 := by core033_kernel_decide
theorem rows2757 : actualRows2757=WordField.canonicalRows actualModulus 2757 (.shr 2278 0) := by core033_kernel_decide
theorem stats2757 : actualRows2757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2757=5124 := by core033_kernel_decide
theorem rows2758 : actualRows2758=WordField.canonicalRows actualModulus 2758 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2758 : actualRows2758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2758=3396 := by core033_kernel_decide
theorem rows2759 : actualRows2759=WordField.canonicalRows actualModulus 2759 (.band 2757 2758) := by core033_kernel_decide
theorem stats2759 : actualRows2759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2759=5124 := by core033_kernel_decide
theorem rows2760 : actualRows2760=WordField.canonicalRows actualModulus 2760 (.shr 2278 8) := by core033_kernel_decide
theorem stats2760 : actualRows2760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2760=4548 := by core033_kernel_decide
theorem rows2761 : actualRows2761=WordField.canonicalRows actualModulus 2761 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2761 : actualRows2761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2761=3396 := by core033_kernel_decide
theorem rows2762 : actualRows2762=WordField.canonicalRows actualModulus 2762 (.band 2760 2761) := by core033_kernel_decide
theorem stats2762 : actualRows2762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2762=5124 := by core033_kernel_decide
theorem rows2763 : actualRows2763=WordField.canonicalRows actualModulus 2763 (.shr 2278 16) := by core033_kernel_decide
theorem stats2763 : actualRows2763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2763=3972 := by core033_kernel_decide
theorem rows2764 : actualRows2764=WordField.canonicalRows actualModulus 2764 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2764 : actualRows2764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2764=3396 := by core033_kernel_decide
theorem rows2765 : actualRows2765=WordField.canonicalRows actualModulus 2765 (.band 2763 2764) := by core033_kernel_decide
theorem stats2765 : actualRows2765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2765=5124 := by core033_kernel_decide
theorem rows2766 : actualRows2766=WordField.canonicalRows actualModulus 2766 (.shr 2278 24) := by core033_kernel_decide
theorem stats2766 : actualRows2766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2766=3396 := by core033_kernel_decide
theorem rows2767 : actualRows2767=WordField.canonicalRows actualModulus 2767 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2767 : actualRows2767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2767=3396 := by core033_kernel_decide
theorem rows2768 : actualRows2768=WordField.canonicalRows actualModulus 2768 (.band 2766 2767) := by core033_kernel_decide
theorem stats2768 : actualRows2768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2768=5124 := by core033_kernel_decide
theorem rows2769 : actualRows2769=WordField.canonicalRows actualModulus 2769 (.shr 2168 0) := by core033_kernel_decide
theorem stats2769 : actualRows2769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2769=5124 := by core033_kernel_decide
theorem rows2770 : actualRows2770=WordField.canonicalRows actualModulus 2770 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2770 : actualRows2770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2770=3396 := by core033_kernel_decide
theorem rows2771 : actualRows2771=WordField.canonicalRows actualModulus 2771 (.band 2769 2770) := by core033_kernel_decide
theorem stats2771 : actualRows2771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2771=5124 := by core033_kernel_decide
theorem rows2772 : actualRows2772=WordField.canonicalRows actualModulus 2772 (.shr 2168 8) := by core033_kernel_decide
theorem stats2772 : actualRows2772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2772=4548 := by core033_kernel_decide
theorem rows2773 : actualRows2773=WordField.canonicalRows actualModulus 2773 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2773 : actualRows2773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2773=3396 := by core033_kernel_decide
theorem rows2774 : actualRows2774=WordField.canonicalRows actualModulus 2774 (.band 2772 2773) := by core033_kernel_decide
theorem stats2774 : actualRows2774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2774=5124 := by core033_kernel_decide
theorem rows2775 : actualRows2775=WordField.canonicalRows actualModulus 2775 (.shr 2168 16) := by core033_kernel_decide
theorem stats2775 : actualRows2775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2775=3972 := by core033_kernel_decide
theorem rows2776 : actualRows2776=WordField.canonicalRows actualModulus 2776 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2776 : actualRows2776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2776=3396 := by core033_kernel_decide
theorem rows2777 : actualRows2777=WordField.canonicalRows actualModulus 2777 (.band 2775 2776) := by core033_kernel_decide
theorem stats2777 : actualRows2777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2777=5124 := by core033_kernel_decide
theorem rows2778 : actualRows2778=WordField.canonicalRows actualModulus 2778 (.shr 2168 24) := by core033_kernel_decide
theorem stats2778 : actualRows2778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2778=3396 := by core033_kernel_decide
theorem rows2779 : actualRows2779=WordField.canonicalRows actualModulus 2779 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2779 : actualRows2779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2779=3396 := by core033_kernel_decide
theorem rows2780 : actualRows2780=WordField.canonicalRows actualModulus 2780 (.band 2778 2779) := by core033_kernel_decide
theorem stats2780 : actualRows2780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2780=5124 := by core033_kernel_decide
theorem rows2781 : actualRows2781=WordField.canonicalRows actualModulus 2781 (.shr 2178 0) := by core033_kernel_decide
theorem stats2781 : actualRows2781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2781=5124 := by core033_kernel_decide
theorem rows2782 : actualRows2782=WordField.canonicalRows actualModulus 2782 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2782 : actualRows2782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2782=3396 := by core033_kernel_decide
theorem rows2783 : actualRows2783=WordField.canonicalRows actualModulus 2783 (.band 2781 2782) := by core033_kernel_decide
theorem stats2783 : actualRows2783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2783=5124 := by core033_kernel_decide
theorem rows2784 : actualRows2784=WordField.canonicalRows actualModulus 2784 (.shr 2178 8) := by core033_kernel_decide
theorem stats2784 : actualRows2784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2784=4548 := by core033_kernel_decide
theorem rows2785 : actualRows2785=WordField.canonicalRows actualModulus 2785 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2785 : actualRows2785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2785=3396 := by core033_kernel_decide
theorem rows2786 : actualRows2786=WordField.canonicalRows actualModulus 2786 (.band 2784 2785) := by core033_kernel_decide
theorem stats2786 : actualRows2786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2786=5124 := by core033_kernel_decide
theorem rows2787 : actualRows2787=WordField.canonicalRows actualModulus 2787 (.shr 2178 16) := by core033_kernel_decide
theorem stats2787 : actualRows2787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2787=3972 := by core033_kernel_decide
theorem rows2788 : actualRows2788=WordField.canonicalRows actualModulus 2788 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2788 : actualRows2788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2788=3396 := by core033_kernel_decide
theorem rows2789 : actualRows2789=WordField.canonicalRows actualModulus 2789 (.band 2787 2788) := by core033_kernel_decide
theorem stats2789 : actualRows2789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2789=5124 := by core033_kernel_decide
theorem rows2790 : actualRows2790=WordField.canonicalRows actualModulus 2790 (.shr 2178 24) := by core033_kernel_decide
theorem stats2790 : actualRows2790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2790=3396 := by core033_kernel_decide
theorem rows2791 : actualRows2791=WordField.canonicalRows actualModulus 2791 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2791 : actualRows2791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2791=3396 := by core033_kernel_decide
theorem rows2792 : actualRows2792=WordField.canonicalRows actualModulus 2792 (.band 2790 2791) := by core033_kernel_decide
theorem stats2792 : actualRows2792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2792=5124 := by core033_kernel_decide
theorem rows2793 : actualRows2793=WordField.canonicalRows actualModulus 2793 (.shr 2288 0) := by core033_kernel_decide
theorem stats2793 : actualRows2793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2793=5124 := by core033_kernel_decide
theorem rows2794 : actualRows2794=WordField.canonicalRows actualModulus 2794 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2794 : actualRows2794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2794=3396 := by core033_kernel_decide
theorem rows2795 : actualRows2795=WordField.canonicalRows actualModulus 2795 (.band 2793 2794) := by core033_kernel_decide
theorem stats2795 : actualRows2795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2795=5124 := by core033_kernel_decide
theorem rows2796 : actualRows2796=WordField.canonicalRows actualModulus 2796 (.shr 2288 8) := by core033_kernel_decide
theorem stats2796 : actualRows2796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2796=4548 := by core033_kernel_decide
theorem rows2797 : actualRows2797=WordField.canonicalRows actualModulus 2797 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2797 : actualRows2797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2797=3396 := by core033_kernel_decide
theorem rows2798 : actualRows2798=WordField.canonicalRows actualModulus 2798 (.band 2796 2797) := by core033_kernel_decide
theorem stats2798 : actualRows2798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2798=5124 := by core033_kernel_decide
theorem rows2799 : actualRows2799=WordField.canonicalRows actualModulus 2799 (.shr 2288 16) := by core033_kernel_decide
theorem stats2799 : actualRows2799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2799=3972 := by core033_kernel_decide
theorem rows2800 : actualRows2800=WordField.canonicalRows actualModulus 2800 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2800 : actualRows2800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2800=3396 := by core033_kernel_decide
theorem rows2801 : actualRows2801=WordField.canonicalRows actualModulus 2801 (.band 2799 2800) := by core033_kernel_decide
theorem stats2801 : actualRows2801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2801=5124 := by core033_kernel_decide
theorem rows2802 : actualRows2802=WordField.canonicalRows actualModulus 2802 (.shr 2288 24) := by core033_kernel_decide
theorem stats2802 : actualRows2802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2802=3396 := by core033_kernel_decide
theorem rows2803 : actualRows2803=WordField.canonicalRows actualModulus 2803 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2803 : actualRows2803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2803=3396 := by core033_kernel_decide
theorem rows2804 : actualRows2804=WordField.canonicalRows actualModulus 2804 (.band 2802 2803) := by core033_kernel_decide
theorem stats2804 : actualRows2804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2804=5124 := by core033_kernel_decide
theorem rows2805 : actualRows2805=WordField.canonicalRows actualModulus 2805 (.shr 2298 0) := by core033_kernel_decide
theorem stats2805 : actualRows2805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2805=5124 := by core033_kernel_decide
def partRows41 : List R1CS.Row := actualRows2742++actualRows2743++actualRows2744++actualRows2745++actualRows2746++actualRows2747++actualRows2748++actualRows2749++actualRows2750++actualRows2751++actualRows2752++actualRows2753++actualRows2754++actualRows2755++actualRows2756++actualRows2757++actualRows2758++actualRows2759++actualRows2760++actualRows2761++actualRows2762++actualRows2763++actualRows2764++actualRows2765++actualRows2766++actualRows2767++actualRows2768++actualRows2769++actualRows2770++actualRows2771++actualRows2772++actualRows2773++actualRows2774++actualRows2775++actualRows2776++actualRows2777++actualRows2778++actualRows2779++actualRows2780++actualRows2781++actualRows2782++actualRows2783++actualRows2784++actualRows2785++actualRows2786++actualRows2787++actualRows2788++actualRows2789++actualRows2790++actualRows2791++actualRows2792++actualRows2793++actualRows2794++actualRows2795++actualRows2796++actualRows2797++actualRows2798++actualRows2799++actualRows2800++actualRows2801++actualRows2802++actualRows2803++actualRows2804++actualRows2805
def partOps41 : List WordIR.Op := [.shr 2258 24,.literal (BitVec.ofNat 32 255),.band 2742 2743,.shr 2268 0,.literal (BitVec.ofNat 32 255),.band 2745 2746,.shr 2268 8,.literal (BitVec.ofNat 32 255),.band 2748 2749,.shr 2268 16,.literal (BitVec.ofNat 32 255),.band 2751 2752,.shr 2268 24,.literal (BitVec.ofNat 32 255),.band 2754 2755,.shr 2278 0,.literal (BitVec.ofNat 32 255),.band 2757 2758,.shr 2278 8,.literal (BitVec.ofNat 32 255),.band 2760 2761,.shr 2278 16,.literal (BitVec.ofNat 32 255),.band 2763 2764,.shr 2278 24,.literal (BitVec.ofNat 32 255),.band 2766 2767,.shr 2168 0,.literal (BitVec.ofNat 32 255),.band 2769 2770,.shr 2168 8,.literal (BitVec.ofNat 32 255),.band 2772 2773,.shr 2168 16,.literal (BitVec.ofNat 32 255),.band 2775 2776,.shr 2168 24,.literal (BitVec.ofNat 32 255),.band 2778 2779,.shr 2178 0,.literal (BitVec.ofNat 32 255),.band 2781 2782,.shr 2178 8,.literal (BitVec.ofNat 32 255),.band 2784 2785,.shr 2178 16,.literal (BitVec.ofNat 32 255),.band 2787 2788,.shr 2178 24,.literal (BitVec.ofNat 32 255),.band 2790 2791,.shr 2288 0,.literal (BitVec.ofNat 32 255),.band 2793 2794,.shr 2288 8,.literal (BitVec.ofNat 32 255),.band 2796 2797,.shr 2288 16,.literal (BitVec.ofNat 32 255),.band 2799 2800,.shr 2288 24,.literal (BitVec.ofNat 32 255),.band 2802 2803,.shr 2298 0]
theorem partExact41 : partRows41=WordField.rows actualModulus 2742 partOps41 := by
  simp only [partRows41,partOps41,WordField.rows,rows2742,rows2743,rows2744,rows2745,rows2746,rows2747,rows2748,rows2749,rows2750,rows2751,rows2752,rows2753,rows2754,rows2755,rows2756,rows2757,rows2758,rows2759,rows2760,rows2761,rows2762,rows2763,rows2764,rows2765,rows2766,rows2767,rows2768,rows2769,rows2770,rows2771,rows2772,rows2773,rows2774,rows2775,rows2776,rows2777,rows2778,rows2779,rows2780,rows2781,rows2782,rows2783,rows2784,rows2785,rows2786,rows2787,rows2788,rows2789,rows2790,rows2791,rows2792,rows2793,rows2794,rows2795,rows2796,rows2797,rows2798,rows2799,rows2800,rows2801,rows2802,rows2803,rows2804,rows2805,List.append_assoc,List.append_nil]
theorem partLength41 : partOps41.length=64 := by decide
theorem partStats41 : partRows41.length=2176 ∧ MatrixRowBlocks.rowsWeight partRows41=272640 := by
  simp only [partRows41,List.length_append,MatrixRowBlocks.rows_weight_append,stats2742.1,stats2742.2,stats2743.1,stats2743.2,stats2744.1,stats2744.2,stats2745.1,stats2745.2,stats2746.1,stats2746.2,stats2747.1,stats2747.2,stats2748.1,stats2748.2,stats2749.1,stats2749.2,stats2750.1,stats2750.2,stats2751.1,stats2751.2,stats2752.1,stats2752.2,stats2753.1,stats2753.2,stats2754.1,stats2754.2,stats2755.1,stats2755.2,stats2756.1,stats2756.2,stats2757.1,stats2757.2,stats2758.1,stats2758.2,stats2759.1,stats2759.2,stats2760.1,stats2760.2,stats2761.1,stats2761.2,stats2762.1,stats2762.2,stats2763.1,stats2763.2,stats2764.1,stats2764.2,stats2765.1,stats2765.2,stats2766.1,stats2766.2,stats2767.1,stats2767.2,stats2768.1,stats2768.2,stats2769.1,stats2769.2,stats2770.1,stats2770.2,stats2771.1,stats2771.2,stats2772.1,stats2772.2,stats2773.1,stats2773.2,stats2774.1,stats2774.2,stats2775.1,stats2775.2,stats2776.1,stats2776.2,stats2777.1,stats2777.2,stats2778.1,stats2778.2,stats2779.1,stats2779.2,stats2780.1,stats2780.2,stats2781.1,stats2781.2,stats2782.1,stats2782.2,stats2783.1,stats2783.2,stats2784.1,stats2784.2,stats2785.1,stats2785.2,stats2786.1,stats2786.2,stats2787.1,stats2787.2,stats2788.1,stats2788.2,stats2789.1,stats2789.2,stats2790.1,stats2790.2,stats2791.1,stats2791.2,stats2792.1,stats2792.2,stats2793.1,stats2793.2,stats2794.1,stats2794.2,stats2795.1,stats2795.2,stats2796.1,stats2796.2,stats2797.1,stats2797.2,stats2798.1,stats2798.2,stats2799.1,stats2799.2,stats2800.1,stats2800.2,stats2801.1,stats2801.2,stats2802.1,stats2802.2,stats2803.1,stats2803.2,stats2804.1,stats2804.2,stats2805.1,stats2805.2]
  decide
end AuthenticatedBranchRoundCheckedRows
