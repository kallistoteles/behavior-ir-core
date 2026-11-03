import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData42
import PairedPathRoundInstructionMatrixData43
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2720 : actualRows2720=WordField.canonicalRows actualModulus 2720 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2720 : actualRows2720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2720=2892 := by core033_kernel_decide
theorem rows2721 : actualRows2721=WordField.canonicalRows actualModulus 2721 (.bxor 2719 2720) := by core033_kernel_decide
theorem stats2721 : actualRows2721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2721=7428 := by core033_kernel_decide
theorem rows2722 : actualRows2722=WordField.canonicalRows actualModulus 2722 (.bnot 2721) := by core033_kernel_decide
theorem stats2722 : actualRows2722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2722=6276 := by core033_kernel_decide
theorem rows2723 : actualRows2723=WordField.canonicalRows actualModulus 2723 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2723 : actualRows2723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2723=2892 := by core033_kernel_decide
theorem rows2724 : actualRows2724=WordField.canonicalRows actualModulus 2724 (.badd 2722 2723) := by core033_kernel_decide
theorem stats2724 : actualRows2724.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2724=5388 := by core033_kernel_decide
theorem rows2725 : actualRows2725=WordField.canonicalRows actualModulus 2725 (.band 2724 1056) := by core033_kernel_decide
theorem stats2725 : actualRows2725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2725=5124 := by core033_kernel_decide
theorem rows2726 : actualRows2726=WordField.canonicalRows actualModulus 2726 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2726 : actualRows2726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2726=2892 := by core033_kernel_decide
theorem rows2727 : actualRows2727=WordField.canonicalRows actualModulus 2727 (.bxor 616 2726) := by core033_kernel_decide
theorem stats2727 : actualRows2727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2727=7428 := by core033_kernel_decide
theorem rows2728 : actualRows2728=WordField.canonicalRows actualModulus 2728 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2728 : actualRows2728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2728=2820 := by core033_kernel_decide
theorem rows2729 : actualRows2729=WordField.canonicalRows actualModulus 2729 (.bnot 2728) := by core033_kernel_decide
theorem stats2729 : actualRows2729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2729=6276 := by core033_kernel_decide
theorem rows2730 : actualRows2730=WordField.canonicalRows actualModulus 2730 (.band 2727 2729) := by core033_kernel_decide
theorem stats2730 : actualRows2730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2730=5124 := by core033_kernel_decide
theorem rows2731 : actualRows2731=WordField.canonicalRows actualModulus 2731 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2731 : actualRows2731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2731=2892 := by core033_kernel_decide
theorem rows2732 : actualRows2732=WordField.canonicalRows actualModulus 2732 (.bxor 616 2731) := by core033_kernel_decide
theorem stats2732 : actualRows2732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2732=7428 := by core033_kernel_decide
theorem rows2733 : actualRows2733=WordField.canonicalRows actualModulus 2733 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2733 : actualRows2733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2733=2820 := by core033_kernel_decide
theorem rows2734 : actualRows2734=WordField.canonicalRows actualModulus 2734 (.bnot 2733) := by core033_kernel_decide
theorem stats2734 : actualRows2734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2734=6276 := by core033_kernel_decide
theorem rows2735 : actualRows2735=WordField.canonicalRows actualModulus 2735 (.bxor 2732 2734) := by core033_kernel_decide
theorem stats2735 : actualRows2735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2735=7428 := by core033_kernel_decide
theorem rows2736 : actualRows2736=WordField.canonicalRows actualModulus 2736 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2736 : actualRows2736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2736=2892 := by core033_kernel_decide
theorem rows2737 : actualRows2737=WordField.canonicalRows actualModulus 2737 (.bxor 616 2736) := by core033_kernel_decide
theorem stats2737 : actualRows2737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2737=7428 := by core033_kernel_decide
theorem rows2738 : actualRows2738=WordField.canonicalRows actualModulus 2738 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2738 : actualRows2738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2738=2820 := by core033_kernel_decide
theorem rows2739 : actualRows2739=WordField.canonicalRows actualModulus 2739 (.bnot 2738) := by core033_kernel_decide
theorem stats2739 : actualRows2739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2739=6276 := by core033_kernel_decide
theorem rows2740 : actualRows2740=WordField.canonicalRows actualModulus 2740 (.badd 2737 2739) := by core033_kernel_decide
theorem stats2740 : actualRows2740.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2740=5388 := by core033_kernel_decide
theorem rows2741 : actualRows2741=WordField.canonicalRows actualModulus 2741 (.bnot 2740) := by core033_kernel_decide
theorem stats2741 : actualRows2741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2741=6276 := by core033_kernel_decide
theorem rows2742 : actualRows2742=WordField.canonicalRows actualModulus 2742 (.band 2735 2741) := by core033_kernel_decide
theorem stats2742 : actualRows2742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2742=5124 := by core033_kernel_decide
theorem rows2743 : actualRows2743=WordField.canonicalRows actualModulus 2743 (.bxor 2730 2742) := by core033_kernel_decide
theorem stats2743 : actualRows2743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2743=7428 := by core033_kernel_decide
theorem rows2744 : actualRows2744=WordField.canonicalRows actualModulus 2744 (.shr 2743 31) := by core033_kernel_decide
theorem stats2744 : actualRows2744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2744=2892 := by core033_kernel_decide
theorem rows2745 : actualRows2745=WordField.canonicalRows actualModulus 2745 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2745 : actualRows2745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2745=2892 := by core033_kernel_decide
theorem rows2746 : actualRows2746=WordField.canonicalRows actualModulus 2746 (.bxor 2744 2745) := by core033_kernel_decide
theorem stats2746 : actualRows2746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2746=7428 := by core033_kernel_decide
theorem rows2747 : actualRows2747=WordField.canonicalRows actualModulus 2747 (.bnot 2746) := by core033_kernel_decide
theorem stats2747 : actualRows2747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2747=6276 := by core033_kernel_decide
theorem rows2748 : actualRows2748=WordField.canonicalRows actualModulus 2748 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2748 : actualRows2748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2748=2892 := by core033_kernel_decide
theorem rows2749 : actualRows2749=WordField.canonicalRows actualModulus 2749 (.badd 2747 2748) := by core033_kernel_decide
theorem stats2749 : actualRows2749.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2749=5388 := by core033_kernel_decide
theorem rows2750 : actualRows2750=WordField.canonicalRows actualModulus 2750 (.bnot 2749) := by core033_kernel_decide
theorem stats2750 : actualRows2750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2750=6276 := by core033_kernel_decide
theorem rows2751 : actualRows2751=WordField.canonicalRows actualModulus 2751 (.literal (BitVec.ofNat 32 2600822924)) := by core033_kernel_decide
theorem stats2751 : actualRows2751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2751=3756 := by core033_kernel_decide
theorem rows2752 : actualRows2752=WordField.canonicalRows actualModulus 2752 (.band 2750 2751) := by core033_kernel_decide
theorem stats2752 : actualRows2752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2752=5124 := by core033_kernel_decide
theorem rows2753 : actualRows2753=WordField.canonicalRows actualModulus 2753 (.bxor 2725 2752) := by core033_kernel_decide
theorem stats2753 : actualRows2753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2753=7428 := by core033_kernel_decide
theorem rows2754 : actualRows2754=WordField.canonicalRows actualModulus 2754 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2754 : actualRows2754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2754=2892 := by core033_kernel_decide
theorem rows2755 : actualRows2755=WordField.canonicalRows actualModulus 2755 (.bxor 616 2754) := by core033_kernel_decide
theorem stats2755 : actualRows2755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2755=7428 := by core033_kernel_decide
theorem rows2756 : actualRows2756=WordField.canonicalRows actualModulus 2756 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2756 : actualRows2756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2756=2820 := by core033_kernel_decide
theorem rows2757 : actualRows2757=WordField.canonicalRows actualModulus 2757 (.bnot 2756) := by core033_kernel_decide
theorem stats2757 : actualRows2757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2757=6276 := by core033_kernel_decide
theorem rows2758 : actualRows2758=WordField.canonicalRows actualModulus 2758 (.band 2755 2757) := by core033_kernel_decide
theorem stats2758 : actualRows2758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2758=5124 := by core033_kernel_decide
theorem rows2759 : actualRows2759=WordField.canonicalRows actualModulus 2759 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2759 : actualRows2759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2759=2892 := by core033_kernel_decide
theorem rows2760 : actualRows2760=WordField.canonicalRows actualModulus 2760 (.bxor 616 2759) := by core033_kernel_decide
theorem stats2760 : actualRows2760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2760=7428 := by core033_kernel_decide
theorem rows2761 : actualRows2761=WordField.canonicalRows actualModulus 2761 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2761 : actualRows2761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2761=2820 := by core033_kernel_decide
theorem rows2762 : actualRows2762=WordField.canonicalRows actualModulus 2762 (.bnot 2761) := by core033_kernel_decide
theorem stats2762 : actualRows2762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2762=6276 := by core033_kernel_decide
theorem rows2763 : actualRows2763=WordField.canonicalRows actualModulus 2763 (.bxor 2760 2762) := by core033_kernel_decide
theorem stats2763 : actualRows2763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2763=7428 := by core033_kernel_decide
theorem rows2764 : actualRows2764=WordField.canonicalRows actualModulus 2764 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2764 : actualRows2764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2764=2892 := by core033_kernel_decide
theorem rows2765 : actualRows2765=WordField.canonicalRows actualModulus 2765 (.bxor 616 2764) := by core033_kernel_decide
theorem stats2765 : actualRows2765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2765=7428 := by core033_kernel_decide
theorem rows2766 : actualRows2766=WordField.canonicalRows actualModulus 2766 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2766 : actualRows2766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2766=2820 := by core033_kernel_decide
theorem rows2767 : actualRows2767=WordField.canonicalRows actualModulus 2767 (.bnot 2766) := by core033_kernel_decide
theorem stats2767 : actualRows2767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2767=6276 := by core033_kernel_decide
theorem rows2768 : actualRows2768=WordField.canonicalRows actualModulus 2768 (.badd 2765 2767) := by core033_kernel_decide
theorem stats2768 : actualRows2768.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2768=5388 := by core033_kernel_decide
theorem rows2769 : actualRows2769=WordField.canonicalRows actualModulus 2769 (.bnot 2768) := by core033_kernel_decide
theorem stats2769 : actualRows2769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2769=6276 := by core033_kernel_decide
theorem rows2770 : actualRows2770=WordField.canonicalRows actualModulus 2770 (.band 2763 2769) := by core033_kernel_decide
theorem stats2770 : actualRows2770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2770=5124 := by core033_kernel_decide
theorem rows2771 : actualRows2771=WordField.canonicalRows actualModulus 2771 (.bxor 2758 2770) := by core033_kernel_decide
theorem stats2771 : actualRows2771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2771=7428 := by core033_kernel_decide
theorem rows2772 : actualRows2772=WordField.canonicalRows actualModulus 2772 (.shr 2771 31) := by core033_kernel_decide
theorem stats2772 : actualRows2772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2772=2892 := by core033_kernel_decide
theorem rows2773 : actualRows2773=WordField.canonicalRows actualModulus 2773 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2773 : actualRows2773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2773=2892 := by core033_kernel_decide
theorem rows2774 : actualRows2774=WordField.canonicalRows actualModulus 2774 (.bxor 2772 2773) := by core033_kernel_decide
theorem stats2774 : actualRows2774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2774=7428 := by core033_kernel_decide
theorem rows2775 : actualRows2775=WordField.canonicalRows actualModulus 2775 (.bnot 2774) := by core033_kernel_decide
theorem stats2775 : actualRows2775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2775=6276 := by core033_kernel_decide
theorem rows2776 : actualRows2776=WordField.canonicalRows actualModulus 2776 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2776 : actualRows2776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2776=2892 := by core033_kernel_decide
theorem rows2777 : actualRows2777=WordField.canonicalRows actualModulus 2777 (.badd 2775 2776) := by core033_kernel_decide
theorem stats2777 : actualRows2777.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2777=5388 := by core033_kernel_decide
theorem rows2778 : actualRows2778=WordField.canonicalRows actualModulus 2778 (.band 2777 1067) := by core033_kernel_decide
theorem stats2778 : actualRows2778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2778=5124 := by core033_kernel_decide
theorem rows2779 : actualRows2779=WordField.canonicalRows actualModulus 2779 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2779 : actualRows2779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2779=2892 := by core033_kernel_decide
theorem rows2780 : actualRows2780=WordField.canonicalRows actualModulus 2780 (.bxor 616 2779) := by core033_kernel_decide
theorem stats2780 : actualRows2780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2780=7428 := by core033_kernel_decide
theorem rows2781 : actualRows2781=WordField.canonicalRows actualModulus 2781 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2781 : actualRows2781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2781=2820 := by core033_kernel_decide
theorem rows2782 : actualRows2782=WordField.canonicalRows actualModulus 2782 (.bnot 2781) := by core033_kernel_decide
theorem stats2782 : actualRows2782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2782=6276 := by core033_kernel_decide
theorem rows2783 : actualRows2783=WordField.canonicalRows actualModulus 2783 (.band 2780 2782) := by core033_kernel_decide
theorem stats2783 : actualRows2783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2783=5124 := by core033_kernel_decide
def partRows41 : List R1CS.Row := actualRows2720++actualRows2721++actualRows2722++actualRows2723++actualRows2724++actualRows2725++actualRows2726++actualRows2727++actualRows2728++actualRows2729++actualRows2730++actualRows2731++actualRows2732++actualRows2733++actualRows2734++actualRows2735++actualRows2736++actualRows2737++actualRows2738++actualRows2739++actualRows2740++actualRows2741++actualRows2742++actualRows2743++actualRows2744++actualRows2745++actualRows2746++actualRows2747++actualRows2748++actualRows2749++actualRows2750++actualRows2751++actualRows2752++actualRows2753++actualRows2754++actualRows2755++actualRows2756++actualRows2757++actualRows2758++actualRows2759++actualRows2760++actualRows2761++actualRows2762++actualRows2763++actualRows2764++actualRows2765++actualRows2766++actualRows2767++actualRows2768++actualRows2769++actualRows2770++actualRows2771++actualRows2772++actualRows2773++actualRows2774++actualRows2775++actualRows2776++actualRows2777++actualRows2778++actualRows2779++actualRows2780++actualRows2781++actualRows2782++actualRows2783
def partOps41 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 2719 2720,.bnot 2721,.literal (BitVec.ofNat 32 1),.badd 2722 2723,.band 2724 1056,.literal (BitVec.ofNat 32 2),.bxor 616 2726,.literal (BitVec.ofNat 32 0),.bnot 2728,.band 2727 2729,.literal (BitVec.ofNat 32 2),.bxor 616 2731,.literal (BitVec.ofNat 32 0),.bnot 2733,.bxor 2732 2734,.literal (BitVec.ofNat 32 2),.bxor 616 2736,.literal (BitVec.ofNat 32 0),.bnot 2738,.badd 2737 2739,.bnot 2740,.band 2735 2741,.bxor 2730 2742,.shr 2743 31,.literal (BitVec.ofNat 32 1),.bxor 2744 2745,.bnot 2746,.literal (BitVec.ofNat 32 1),.badd 2747 2748,.bnot 2749,.literal (BitVec.ofNat 32 2600822924),.band 2750 2751,.bxor 2725 2752,.literal (BitVec.ofNat 32 2),.bxor 616 2754,.literal (BitVec.ofNat 32 0),.bnot 2756,.band 2755 2757,.literal (BitVec.ofNat 32 2),.bxor 616 2759,.literal (BitVec.ofNat 32 0),.bnot 2761,.bxor 2760 2762,.literal (BitVec.ofNat 32 2),.bxor 616 2764,.literal (BitVec.ofNat 32 0),.bnot 2766,.badd 2765 2767,.bnot 2768,.band 2763 2769,.bxor 2758 2770,.shr 2771 31,.literal (BitVec.ofNat 32 1),.bxor 2772 2773,.bnot 2774,.literal (BitVec.ofNat 32 1),.badd 2775 2776,.band 2777 1067,.literal (BitVec.ofNat 32 2),.bxor 616 2779,.literal (BitVec.ofNat 32 0),.bnot 2781,.band 2780 2782]
theorem partExact41 : partRows41=WordField.rows actualModulus 2720 partOps41 := by
  simp only [partRows41,partOps41,WordField.rows,rows2720,rows2721,rows2722,rows2723,rows2724,rows2725,rows2726,rows2727,rows2728,rows2729,rows2730,rows2731,rows2732,rows2733,rows2734,rows2735,rows2736,rows2737,rows2738,rows2739,rows2740,rows2741,rows2742,rows2743,rows2744,rows2745,rows2746,rows2747,rows2748,rows2749,rows2750,rows2751,rows2752,rows2753,rows2754,rows2755,rows2756,rows2757,rows2758,rows2759,rows2760,rows2761,rows2762,rows2763,rows2764,rows2765,rows2766,rows2767,rows2768,rows2769,rows2770,rows2771,rows2772,rows2773,rows2774,rows2775,rows2776,rows2777,rows2778,rows2779,rows2780,rows2781,rows2782,rows2783,List.append_assoc,List.append_nil]
theorem partLength41 : partOps41.length=64 := by decide
theorem partStats41 : partRows41.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows41=327816 := by
  simp only [partRows41,List.length_append,MatrixRowBlocks.rows_weight_append,stats2720.1,stats2720.2,stats2721.1,stats2721.2,stats2722.1,stats2722.2,stats2723.1,stats2723.2,stats2724.1,stats2724.2,stats2725.1,stats2725.2,stats2726.1,stats2726.2,stats2727.1,stats2727.2,stats2728.1,stats2728.2,stats2729.1,stats2729.2,stats2730.1,stats2730.2,stats2731.1,stats2731.2,stats2732.1,stats2732.2,stats2733.1,stats2733.2,stats2734.1,stats2734.2,stats2735.1,stats2735.2,stats2736.1,stats2736.2,stats2737.1,stats2737.2,stats2738.1,stats2738.2,stats2739.1,stats2739.2,stats2740.1,stats2740.2,stats2741.1,stats2741.2,stats2742.1,stats2742.2,stats2743.1,stats2743.2,stats2744.1,stats2744.2,stats2745.1,stats2745.2,stats2746.1,stats2746.2,stats2747.1,stats2747.2,stats2748.1,stats2748.2,stats2749.1,stats2749.2,stats2750.1,stats2750.2,stats2751.1,stats2751.2,stats2752.1,stats2752.2,stats2753.1,stats2753.2,stats2754.1,stats2754.2,stats2755.1,stats2755.2,stats2756.1,stats2756.2,stats2757.1,stats2757.2,stats2758.1,stats2758.2,stats2759.1,stats2759.2,stats2760.1,stats2760.2,stats2761.1,stats2761.2,stats2762.1,stats2762.2,stats2763.1,stats2763.2,stats2764.1,stats2764.2,stats2765.1,stats2765.2,stats2766.1,stats2766.2,stats2767.1,stats2767.2,stats2768.1,stats2768.2,stats2769.1,stats2769.2,stats2770.1,stats2770.2,stats2771.1,stats2771.2,stats2772.1,stats2772.2,stats2773.1,stats2773.2,stats2774.1,stats2774.2,stats2775.1,stats2775.2,stats2776.1,stats2776.2,stats2777.1,stats2777.2,stats2778.1,stats2778.2,stats2779.1,stats2779.2,stats2780.1,stats2780.2,stats2781.1,stats2781.2,stats2782.1,stats2782.2,stats2783.1,stats2783.2]
  decide
end PairedPathRoundCheckedRows
