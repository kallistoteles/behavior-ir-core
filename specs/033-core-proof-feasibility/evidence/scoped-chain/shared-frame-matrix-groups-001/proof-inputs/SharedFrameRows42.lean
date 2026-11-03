import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData42
import SharedFrameInstructionMatrixData43
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2731 : actualRows2731=WordField.canonicalRows actualModulus 2731 (.badd 2647 2730) := by core033_kernel_decide
theorem stats2731 : actualRows2731.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2731=5388 := by core033_kernel_decide
theorem rows2732 : actualRows2732=WordField.canonicalRows actualModulus 2732 (.band 2725 2699) := by core033_kernel_decide
theorem stats2732 : actualRows2732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2732=5124 := by core033_kernel_decide
theorem rows2733 : actualRows2733=WordField.canonicalRows actualModulus 2733 (.bnot 2725) := by core033_kernel_decide
theorem stats2733 : actualRows2733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2733=6276 := by core033_kernel_decide
theorem rows2734 : actualRows2734=WordField.canonicalRows actualModulus 2734 (.band 2733 2673) := by core033_kernel_decide
theorem stats2734 : actualRows2734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2734=5124 := by core033_kernel_decide
theorem rows2735 : actualRows2735=WordField.canonicalRows actualModulus 2735 (.bxor 2732 2734) := by core033_kernel_decide
theorem stats2735 : actualRows2735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2735=7428 := by core033_kernel_decide
theorem rows2736 : actualRows2736=WordField.canonicalRows actualModulus 2736 (.badd 2731 2735) := by core033_kernel_decide
theorem stats2736 : actualRows2736.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2736=5388 := by core033_kernel_decide
theorem rows2737 : actualRows2737=WordField.canonicalRows actualModulus 2737 (.literal (BitVec.ofNat 32 1555081692)) := by core033_kernel_decide
theorem stats2737 : actualRows2737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2737=3972 := by core033_kernel_decide
theorem rows2738 : actualRows2738=WordField.canonicalRows actualModulus 2738 (.badd 2736 2737) := by core033_kernel_decide
theorem stats2738 : actualRows2738.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2738=5388 := by core033_kernel_decide
theorem rows2739 : actualRows2739=WordField.canonicalRows actualModulus 2739 (.badd 2738 1619) := by core033_kernel_decide
theorem stats2739 : actualRows2739.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2739=5388 := by core033_kernel_decide
theorem rows2740 : actualRows2740=WordField.canonicalRows actualModulus 2740 (.rotr 2724 2) := by core033_kernel_decide
theorem stats2740 : actualRows2740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2740=5124 := by core033_kernel_decide
theorem rows2741 : actualRows2741=WordField.canonicalRows actualModulus 2741 (.rotr 2724 13) := by core033_kernel_decide
theorem stats2741 : actualRows2741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2741=5124 := by core033_kernel_decide
theorem rows2742 : actualRows2742=WordField.canonicalRows actualModulus 2742 (.bxor 2740 2741) := by core033_kernel_decide
theorem stats2742 : actualRows2742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2742=7428 := by core033_kernel_decide
theorem rows2743 : actualRows2743=WordField.canonicalRows actualModulus 2743 (.rotr 2724 22) := by core033_kernel_decide
theorem stats2743 : actualRows2743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2743=5124 := by core033_kernel_decide
theorem rows2744 : actualRows2744=WordField.canonicalRows actualModulus 2744 (.bxor 2742 2743) := by core033_kernel_decide
theorem stats2744 : actualRows2744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2744=7428 := by core033_kernel_decide
theorem rows2745 : actualRows2745=WordField.canonicalRows actualModulus 2745 (.band 2724 2698) := by core033_kernel_decide
theorem stats2745 : actualRows2745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2745=5124 := by core033_kernel_decide
theorem rows2746 : actualRows2746=WordField.canonicalRows actualModulus 2746 (.band 2724 2672) := by core033_kernel_decide
theorem stats2746 : actualRows2746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2746=5124 := by core033_kernel_decide
theorem rows2747 : actualRows2747=WordField.canonicalRows actualModulus 2747 (.bxor 2745 2746) := by core033_kernel_decide
theorem stats2747 : actualRows2747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2747=7428 := by core033_kernel_decide
theorem rows2748 : actualRows2748=WordField.canonicalRows actualModulus 2748 (.bxor 2747 2719) := by core033_kernel_decide
theorem stats2748 : actualRows2748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2748=7428 := by core033_kernel_decide
theorem rows2749 : actualRows2749=WordField.canonicalRows actualModulus 2749 (.badd 2744 2748) := by core033_kernel_decide
theorem stats2749 : actualRows2749.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2749=5388 := by core033_kernel_decide
theorem rows2750 : actualRows2750=WordField.canonicalRows actualModulus 2750 (.badd 2739 2749) := by core033_kernel_decide
theorem stats2750 : actualRows2750.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2750=5388 := by core033_kernel_decide
theorem rows2751 : actualRows2751=WordField.canonicalRows actualModulus 2751 (.badd 2646 2739) := by core033_kernel_decide
theorem stats2751 : actualRows2751.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2751=5388 := by core033_kernel_decide
theorem rows2752 : actualRows2752=WordField.canonicalRows actualModulus 2752 (.rotr 2751 6) := by core033_kernel_decide
theorem stats2752 : actualRows2752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2752=5124 := by core033_kernel_decide
theorem rows2753 : actualRows2753=WordField.canonicalRows actualModulus 2753 (.rotr 2751 11) := by core033_kernel_decide
theorem stats2753 : actualRows2753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2753=5124 := by core033_kernel_decide
theorem rows2754 : actualRows2754=WordField.canonicalRows actualModulus 2754 (.bxor 2752 2753) := by core033_kernel_decide
theorem stats2754 : actualRows2754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2754=7428 := by core033_kernel_decide
theorem rows2755 : actualRows2755=WordField.canonicalRows actualModulus 2755 (.rotr 2751 25) := by core033_kernel_decide
theorem stats2755 : actualRows2755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2755=5124 := by core033_kernel_decide
theorem rows2756 : actualRows2756=WordField.canonicalRows actualModulus 2756 (.bxor 2754 2755) := by core033_kernel_decide
theorem stats2756 : actualRows2756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2756=7428 := by core033_kernel_decide
theorem rows2757 : actualRows2757=WordField.canonicalRows actualModulus 2757 (.badd 2673 2756) := by core033_kernel_decide
theorem stats2757 : actualRows2757.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2757=5388 := by core033_kernel_decide
theorem rows2758 : actualRows2758=WordField.canonicalRows actualModulus 2758 (.band 2751 2725) := by core033_kernel_decide
theorem stats2758 : actualRows2758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2758=5124 := by core033_kernel_decide
theorem rows2759 : actualRows2759=WordField.canonicalRows actualModulus 2759 (.bnot 2751) := by core033_kernel_decide
theorem stats2759 : actualRows2759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2759=6276 := by core033_kernel_decide
theorem rows2760 : actualRows2760=WordField.canonicalRows actualModulus 2760 (.band 2759 2699) := by core033_kernel_decide
theorem stats2760 : actualRows2760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2760=5124 := by core033_kernel_decide
theorem rows2761 : actualRows2761=WordField.canonicalRows actualModulus 2761 (.bxor 2758 2760) := by core033_kernel_decide
theorem stats2761 : actualRows2761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2761=7428 := by core033_kernel_decide
theorem rows2762 : actualRows2762=WordField.canonicalRows actualModulus 2762 (.badd 2757 2761) := by core033_kernel_decide
theorem stats2762 : actualRows2762.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2762=5388 := by core033_kernel_decide
theorem rows2763 : actualRows2763=WordField.canonicalRows actualModulus 2763 (.literal (BitVec.ofNat 32 1996064986)) := by core033_kernel_decide
theorem stats2763 : actualRows2763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2763=4116 := by core033_kernel_decide
theorem rows2764 : actualRows2764=WordField.canonicalRows actualModulus 2764 (.badd 2762 2763) := by core033_kernel_decide
theorem stats2764 : actualRows2764.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2764=5388 := by core033_kernel_decide
theorem rows2765 : actualRows2765=WordField.canonicalRows actualModulus 2765 (.badd 2764 1632) := by core033_kernel_decide
theorem stats2765 : actualRows2765.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2765=5388 := by core033_kernel_decide
theorem rows2766 : actualRows2766=WordField.canonicalRows actualModulus 2766 (.rotr 2750 2) := by core033_kernel_decide
theorem stats2766 : actualRows2766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2766=5124 := by core033_kernel_decide
theorem rows2767 : actualRows2767=WordField.canonicalRows actualModulus 2767 (.rotr 2750 13) := by core033_kernel_decide
theorem stats2767 : actualRows2767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2767=5124 := by core033_kernel_decide
theorem rows2768 : actualRows2768=WordField.canonicalRows actualModulus 2768 (.bxor 2766 2767) := by core033_kernel_decide
theorem stats2768 : actualRows2768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2768=7428 := by core033_kernel_decide
theorem rows2769 : actualRows2769=WordField.canonicalRows actualModulus 2769 (.rotr 2750 22) := by core033_kernel_decide
theorem stats2769 : actualRows2769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2769=5124 := by core033_kernel_decide
theorem rows2770 : actualRows2770=WordField.canonicalRows actualModulus 2770 (.bxor 2768 2769) := by core033_kernel_decide
theorem stats2770 : actualRows2770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2770=7428 := by core033_kernel_decide
theorem rows2771 : actualRows2771=WordField.canonicalRows actualModulus 2771 (.band 2750 2724) := by core033_kernel_decide
theorem stats2771 : actualRows2771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2771=5124 := by core033_kernel_decide
theorem rows2772 : actualRows2772=WordField.canonicalRows actualModulus 2772 (.band 2750 2698) := by core033_kernel_decide
theorem stats2772 : actualRows2772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2772=5124 := by core033_kernel_decide
theorem rows2773 : actualRows2773=WordField.canonicalRows actualModulus 2773 (.bxor 2771 2772) := by core033_kernel_decide
theorem stats2773 : actualRows2773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2773=7428 := by core033_kernel_decide
theorem rows2774 : actualRows2774=WordField.canonicalRows actualModulus 2774 (.bxor 2773 2745) := by core033_kernel_decide
theorem stats2774 : actualRows2774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2774=7428 := by core033_kernel_decide
theorem rows2775 : actualRows2775=WordField.canonicalRows actualModulus 2775 (.badd 2770 2774) := by core033_kernel_decide
theorem stats2775 : actualRows2775.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2775=5388 := by core033_kernel_decide
theorem rows2776 : actualRows2776=WordField.canonicalRows actualModulus 2776 (.badd 2765 2775) := by core033_kernel_decide
theorem stats2776 : actualRows2776.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2776=5388 := by core033_kernel_decide
theorem rows2777 : actualRows2777=WordField.canonicalRows actualModulus 2777 (.badd 2672 2765) := by core033_kernel_decide
theorem stats2777 : actualRows2777.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2777=5388 := by core033_kernel_decide
theorem rows2778 : actualRows2778=WordField.canonicalRows actualModulus 2778 (.rotr 2777 6) := by core033_kernel_decide
theorem stats2778 : actualRows2778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2778=5124 := by core033_kernel_decide
theorem rows2779 : actualRows2779=WordField.canonicalRows actualModulus 2779 (.rotr 2777 11) := by core033_kernel_decide
theorem stats2779 : actualRows2779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2779=5124 := by core033_kernel_decide
theorem rows2780 : actualRows2780=WordField.canonicalRows actualModulus 2780 (.bxor 2778 2779) := by core033_kernel_decide
theorem stats2780 : actualRows2780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2780=7428 := by core033_kernel_decide
theorem rows2781 : actualRows2781=WordField.canonicalRows actualModulus 2781 (.rotr 2777 25) := by core033_kernel_decide
theorem stats2781 : actualRows2781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2781=5124 := by core033_kernel_decide
theorem rows2782 : actualRows2782=WordField.canonicalRows actualModulus 2782 (.bxor 2780 2781) := by core033_kernel_decide
theorem stats2782 : actualRows2782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2782=7428 := by core033_kernel_decide
theorem rows2783 : actualRows2783=WordField.canonicalRows actualModulus 2783 (.badd 2699 2782) := by core033_kernel_decide
theorem stats2783 : actualRows2783.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2783=5388 := by core033_kernel_decide
theorem rows2784 : actualRows2784=WordField.canonicalRows actualModulus 2784 (.band 2777 2751) := by core033_kernel_decide
theorem stats2784 : actualRows2784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2784=5124 := by core033_kernel_decide
theorem rows2785 : actualRows2785=WordField.canonicalRows actualModulus 2785 (.bnot 2777) := by core033_kernel_decide
theorem stats2785 : actualRows2785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2785=6276 := by core033_kernel_decide
theorem rows2786 : actualRows2786=WordField.canonicalRows actualModulus 2786 (.band 2785 2725) := by core033_kernel_decide
theorem stats2786 : actualRows2786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2786=5124 := by core033_kernel_decide
theorem rows2787 : actualRows2787=WordField.canonicalRows actualModulus 2787 (.bxor 2784 2786) := by core033_kernel_decide
theorem stats2787 : actualRows2787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2787=7428 := by core033_kernel_decide
theorem rows2788 : actualRows2788=WordField.canonicalRows actualModulus 2788 (.badd 2783 2787) := by core033_kernel_decide
theorem stats2788 : actualRows2788.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2788=5388 := by core033_kernel_decide
theorem rows2789 : actualRows2789=WordField.canonicalRows actualModulus 2789 (.literal (BitVec.ofNat 32 2554220882)) := by core033_kernel_decide
theorem stats2789 : actualRows2789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2789=3828 := by core033_kernel_decide
theorem rows2790 : actualRows2790=WordField.canonicalRows actualModulus 2790 (.badd 2788 2789) := by core033_kernel_decide
theorem stats2790 : actualRows2790.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2790=5388 := by core033_kernel_decide
theorem rows2791 : actualRows2791=WordField.canonicalRows actualModulus 2791 (.badd 2790 1645) := by core033_kernel_decide
theorem stats2791 : actualRows2791.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2791=5388 := by core033_kernel_decide
theorem rows2792 : actualRows2792=WordField.canonicalRows actualModulus 2792 (.rotr 2776 2) := by core033_kernel_decide
theorem stats2792 : actualRows2792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2792=5124 := by core033_kernel_decide
theorem rows2793 : actualRows2793=WordField.canonicalRows actualModulus 2793 (.rotr 2776 13) := by core033_kernel_decide
theorem stats2793 : actualRows2793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2793=5124 := by core033_kernel_decide
theorem rows2794 : actualRows2794=WordField.canonicalRows actualModulus 2794 (.bxor 2792 2793) := by core033_kernel_decide
theorem stats2794 : actualRows2794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2794=7428 := by core033_kernel_decide
def partRows42 : List R1CS.Row := actualRows2731++actualRows2732++actualRows2733++actualRows2734++actualRows2735++actualRows2736++actualRows2737++actualRows2738++actualRows2739++actualRows2740++actualRows2741++actualRows2742++actualRows2743++actualRows2744++actualRows2745++actualRows2746++actualRows2747++actualRows2748++actualRows2749++actualRows2750++actualRows2751++actualRows2752++actualRows2753++actualRows2754++actualRows2755++actualRows2756++actualRows2757++actualRows2758++actualRows2759++actualRows2760++actualRows2761++actualRows2762++actualRows2763++actualRows2764++actualRows2765++actualRows2766++actualRows2767++actualRows2768++actualRows2769++actualRows2770++actualRows2771++actualRows2772++actualRows2773++actualRows2774++actualRows2775++actualRows2776++actualRows2777++actualRows2778++actualRows2779++actualRows2780++actualRows2781++actualRows2782++actualRows2783++actualRows2784++actualRows2785++actualRows2786++actualRows2787++actualRows2788++actualRows2789++actualRows2790++actualRows2791++actualRows2792++actualRows2793++actualRows2794
def partOps42 : List WordIR.Op := [.badd 2647 2730,.band 2725 2699,.bnot 2725,.band 2733 2673,.bxor 2732 2734,.badd 2731 2735,.literal (BitVec.ofNat 32 1555081692),.badd 2736 2737,.badd 2738 1619,.rotr 2724 2,.rotr 2724 13,.bxor 2740 2741,.rotr 2724 22,.bxor 2742 2743,.band 2724 2698,.band 2724 2672,.bxor 2745 2746,.bxor 2747 2719,.badd 2744 2748,.badd 2739 2749,.badd 2646 2739,.rotr 2751 6,.rotr 2751 11,.bxor 2752 2753,.rotr 2751 25,.bxor 2754 2755,.badd 2673 2756,.band 2751 2725,.bnot 2751,.band 2759 2699,.bxor 2758 2760,.badd 2757 2761,.literal (BitVec.ofNat 32 1996064986),.badd 2762 2763,.badd 2764 1632,.rotr 2750 2,.rotr 2750 13,.bxor 2766 2767,.rotr 2750 22,.bxor 2768 2769,.band 2750 2724,.band 2750 2698,.bxor 2771 2772,.bxor 2773 2745,.badd 2770 2774,.badd 2765 2775,.badd 2672 2765,.rotr 2777 6,.rotr 2777 11,.bxor 2778 2779,.rotr 2777 25,.bxor 2780 2781,.badd 2699 2782,.band 2777 2751,.bnot 2777,.band 2785 2725,.bxor 2784 2786,.badd 2783 2787,.literal (BitVec.ofNat 32 2554220882),.badd 2788 2789,.badd 2790 1645,.rotr 2776 2,.rotr 2776 13,.bxor 2792 2793]
theorem partExact42 : partRows42=WordField.rows actualModulus 2731 partOps42 := by
  simp only [partRows42,partOps42,WordField.rows,rows2731,rows2732,rows2733,rows2734,rows2735,rows2736,rows2737,rows2738,rows2739,rows2740,rows2741,rows2742,rows2743,rows2744,rows2745,rows2746,rows2747,rows2748,rows2749,rows2750,rows2751,rows2752,rows2753,rows2754,rows2755,rows2756,rows2757,rows2758,rows2759,rows2760,rows2761,rows2762,rows2763,rows2764,rows2765,rows2766,rows2767,rows2768,rows2769,rows2770,rows2771,rows2772,rows2773,rows2774,rows2775,rows2776,rows2777,rows2778,rows2779,rows2780,rows2781,rows2782,rows2783,rows2784,rows2785,rows2786,rows2787,rows2788,rows2789,rows2790,rows2791,rows2792,rows2793,rows2794,List.append_assoc,List.append_nil]
theorem partLength42 : partOps42.length=64 := by decide
theorem partStats42 : partRows42.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows42=369552 := by
  simp only [partRows42,List.length_append,MatrixRowBlocks.rows_weight_append,stats2731.1,stats2731.2,stats2732.1,stats2732.2,stats2733.1,stats2733.2,stats2734.1,stats2734.2,stats2735.1,stats2735.2,stats2736.1,stats2736.2,stats2737.1,stats2737.2,stats2738.1,stats2738.2,stats2739.1,stats2739.2,stats2740.1,stats2740.2,stats2741.1,stats2741.2,stats2742.1,stats2742.2,stats2743.1,stats2743.2,stats2744.1,stats2744.2,stats2745.1,stats2745.2,stats2746.1,stats2746.2,stats2747.1,stats2747.2,stats2748.1,stats2748.2,stats2749.1,stats2749.2,stats2750.1,stats2750.2,stats2751.1,stats2751.2,stats2752.1,stats2752.2,stats2753.1,stats2753.2,stats2754.1,stats2754.2,stats2755.1,stats2755.2,stats2756.1,stats2756.2,stats2757.1,stats2757.2,stats2758.1,stats2758.2,stats2759.1,stats2759.2,stats2760.1,stats2760.2,stats2761.1,stats2761.2,stats2762.1,stats2762.2,stats2763.1,stats2763.2,stats2764.1,stats2764.2,stats2765.1,stats2765.2,stats2766.1,stats2766.2,stats2767.1,stats2767.2,stats2768.1,stats2768.2,stats2769.1,stats2769.2,stats2770.1,stats2770.2,stats2771.1,stats2771.2,stats2772.1,stats2772.2,stats2773.1,stats2773.2,stats2774.1,stats2774.2,stats2775.1,stats2775.2,stats2776.1,stats2776.2,stats2777.1,stats2777.2,stats2778.1,stats2778.2,stats2779.1,stats2779.2,stats2780.1,stats2780.2,stats2781.1,stats2781.2,stats2782.1,stats2782.2,stats2783.1,stats2783.2,stats2784.1,stats2784.2,stats2785.1,stats2785.2,stats2786.1,stats2786.2,stats2787.1,stats2787.2,stats2788.1,stats2788.2,stats2789.1,stats2789.2,stats2790.1,stats2790.2,stats2791.1,stats2791.2,stats2792.1,stats2792.2,stats2793.1,stats2793.2,stats2794.1,stats2794.2]
  decide
end SharedFrameCheckedRows
