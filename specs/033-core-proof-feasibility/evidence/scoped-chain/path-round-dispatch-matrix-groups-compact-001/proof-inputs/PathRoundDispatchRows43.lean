import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData43
import PathRoundDispatchInstructionMatrixData44
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2795 : actualRows2795=WordField.canonicalRows actualModulus 2795 (.badd 2792 2794) := by core033_kernel_decide
theorem stats2795 : actualRows2795.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2795=5388 := by core033_kernel_decide
theorem rows2796 : actualRows2796=WordField.canonicalRows actualModulus 2796 (.bnot 2795) := by core033_kernel_decide
theorem stats2796 : actualRows2796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2796=6276 := by core033_kernel_decide
theorem rows2797 : actualRows2797=WordField.canonicalRows actualModulus 2797 (.band 2790 2796) := by core033_kernel_decide
theorem stats2797 : actualRows2797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2797=5124 := by core033_kernel_decide
theorem rows2798 : actualRows2798=WordField.canonicalRows actualModulus 2798 (.bxor 2785 2797) := by core033_kernel_decide
theorem stats2798 : actualRows2798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2798=7428 := by core033_kernel_decide
theorem rows2799 : actualRows2799=WordField.canonicalRows actualModulus 2799 (.shr 2798 31) := by core033_kernel_decide
theorem stats2799 : actualRows2799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2799=2892 := by core033_kernel_decide
theorem rows2800 : actualRows2800=WordField.canonicalRows actualModulus 2800 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2800 : actualRows2800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2800=2892 := by core033_kernel_decide
theorem rows2801 : actualRows2801=WordField.canonicalRows actualModulus 2801 (.bxor 2799 2800) := by core033_kernel_decide
theorem stats2801 : actualRows2801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2801=7428 := by core033_kernel_decide
theorem rows2802 : actualRows2802=WordField.canonicalRows actualModulus 2802 (.bnot 2801) := by core033_kernel_decide
theorem stats2802 : actualRows2802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2802=6276 := by core033_kernel_decide
theorem rows2803 : actualRows2803=WordField.canonicalRows actualModulus 2803 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2803 : actualRows2803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2803=2892 := by core033_kernel_decide
theorem rows2804 : actualRows2804=WordField.canonicalRows actualModulus 2804 (.badd 2802 2803) := by core033_kernel_decide
theorem stats2804 : actualRows2804.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2804=5388 := by core033_kernel_decide
theorem rows2805 : actualRows2805=WordField.canonicalRows actualModulus 2805 (.bnot 2804) := by core033_kernel_decide
theorem stats2805 : actualRows2805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2805=6276 := by core033_kernel_decide
theorem rows2806 : actualRows2806=WordField.canonicalRows actualModulus 2806 (.band 2805 1351) := by core033_kernel_decide
theorem stats2806 : actualRows2806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2806=5124 := by core033_kernel_decide
theorem rows2807 : actualRows2807=WordField.canonicalRows actualModulus 2807 (.bxor 2780 2806) := by core033_kernel_decide
theorem stats2807 : actualRows2807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2807=7428 := by core033_kernel_decide
theorem rows2808 : actualRows2808=WordField.canonicalRows actualModulus 2808 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2808 : actualRows2808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2808=2892 := by core033_kernel_decide
theorem rows2809 : actualRows2809=WordField.canonicalRows actualModulus 2809 (.bxor 96 2808) := by core033_kernel_decide
theorem stats2809 : actualRows2809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2809=7428 := by core033_kernel_decide
theorem rows2810 : actualRows2810=WordField.canonicalRows actualModulus 2810 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2810 : actualRows2810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2810=2820 := by core033_kernel_decide
theorem rows2811 : actualRows2811=WordField.canonicalRows actualModulus 2811 (.bnot 2810) := by core033_kernel_decide
theorem stats2811 : actualRows2811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2811=6276 := by core033_kernel_decide
theorem rows2812 : actualRows2812=WordField.canonicalRows actualModulus 2812 (.band 2809 2811) := by core033_kernel_decide
theorem stats2812 : actualRows2812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2812=5124 := by core033_kernel_decide
theorem rows2813 : actualRows2813=WordField.canonicalRows actualModulus 2813 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2813 : actualRows2813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2813=2892 := by core033_kernel_decide
theorem rows2814 : actualRows2814=WordField.canonicalRows actualModulus 2814 (.bxor 96 2813) := by core033_kernel_decide
theorem stats2814 : actualRows2814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2814=7428 := by core033_kernel_decide
theorem rows2815 : actualRows2815=WordField.canonicalRows actualModulus 2815 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2815 : actualRows2815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2815=2820 := by core033_kernel_decide
theorem rows2816 : actualRows2816=WordField.canonicalRows actualModulus 2816 (.bnot 2815) := by core033_kernel_decide
theorem stats2816 : actualRows2816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2816=6276 := by core033_kernel_decide
theorem rows2817 : actualRows2817=WordField.canonicalRows actualModulus 2817 (.bxor 2814 2816) := by core033_kernel_decide
theorem stats2817 : actualRows2817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2817=7428 := by core033_kernel_decide
theorem rows2818 : actualRows2818=WordField.canonicalRows actualModulus 2818 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2818 : actualRows2818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2818=2892 := by core033_kernel_decide
theorem rows2819 : actualRows2819=WordField.canonicalRows actualModulus 2819 (.bxor 96 2818) := by core033_kernel_decide
theorem stats2819 : actualRows2819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2819=7428 := by core033_kernel_decide
theorem rows2820 : actualRows2820=WordField.canonicalRows actualModulus 2820 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2820 : actualRows2820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2820=2820 := by core033_kernel_decide
theorem rows2821 : actualRows2821=WordField.canonicalRows actualModulus 2821 (.bnot 2820) := by core033_kernel_decide
theorem stats2821 : actualRows2821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2821=6276 := by core033_kernel_decide
theorem rows2822 : actualRows2822=WordField.canonicalRows actualModulus 2822 (.badd 2819 2821) := by core033_kernel_decide
theorem stats2822 : actualRows2822.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2822=5388 := by core033_kernel_decide
theorem rows2823 : actualRows2823=WordField.canonicalRows actualModulus 2823 (.bnot 2822) := by core033_kernel_decide
theorem stats2823 : actualRows2823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2823=6276 := by core033_kernel_decide
theorem rows2824 : actualRows2824=WordField.canonicalRows actualModulus 2824 (.band 2817 2823) := by core033_kernel_decide
theorem stats2824 : actualRows2824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2824=5124 := by core033_kernel_decide
theorem rows2825 : actualRows2825=WordField.canonicalRows actualModulus 2825 (.bxor 2812 2824) := by core033_kernel_decide
theorem stats2825 : actualRows2825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2825=7428 := by core033_kernel_decide
theorem rows2826 : actualRows2826=WordField.canonicalRows actualModulus 2826 (.shr 2825 31) := by core033_kernel_decide
theorem stats2826 : actualRows2826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2826=2892 := by core033_kernel_decide
theorem rows2827 : actualRows2827=WordField.canonicalRows actualModulus 2827 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2827 : actualRows2827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2827=2892 := by core033_kernel_decide
theorem rows2828 : actualRows2828=WordField.canonicalRows actualModulus 2828 (.bxor 2826 2827) := by core033_kernel_decide
theorem stats2828 : actualRows2828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2828=7428 := by core033_kernel_decide
theorem rows2829 : actualRows2829=WordField.canonicalRows actualModulus 2829 (.bnot 2828) := by core033_kernel_decide
theorem stats2829 : actualRows2829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2829=6276 := by core033_kernel_decide
theorem rows2830 : actualRows2830=WordField.canonicalRows actualModulus 2830 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2830 : actualRows2830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2830=2892 := by core033_kernel_decide
theorem rows2831 : actualRows2831=WordField.canonicalRows actualModulus 2831 (.badd 2829 2830) := by core033_kernel_decide
theorem stats2831 : actualRows2831.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2831=5388 := by core033_kernel_decide
theorem rows2832 : actualRows2832=WordField.canonicalRows actualModulus 2832 (.band 2831 1520) := by core033_kernel_decide
theorem stats2832 : actualRows2832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2832=5124 := by core033_kernel_decide
theorem rows2833 : actualRows2833=WordField.canonicalRows actualModulus 2833 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2833 : actualRows2833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2833=2892 := by core033_kernel_decide
theorem rows2834 : actualRows2834=WordField.canonicalRows actualModulus 2834 (.bxor 96 2833) := by core033_kernel_decide
theorem stats2834 : actualRows2834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2834=7428 := by core033_kernel_decide
theorem rows2835 : actualRows2835=WordField.canonicalRows actualModulus 2835 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2835 : actualRows2835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2835=2820 := by core033_kernel_decide
theorem rows2836 : actualRows2836=WordField.canonicalRows actualModulus 2836 (.bnot 2835) := by core033_kernel_decide
theorem stats2836 : actualRows2836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2836=6276 := by core033_kernel_decide
theorem rows2837 : actualRows2837=WordField.canonicalRows actualModulus 2837 (.band 2834 2836) := by core033_kernel_decide
theorem stats2837 : actualRows2837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2837=5124 := by core033_kernel_decide
theorem rows2838 : actualRows2838=WordField.canonicalRows actualModulus 2838 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2838 : actualRows2838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2838=2892 := by core033_kernel_decide
theorem rows2839 : actualRows2839=WordField.canonicalRows actualModulus 2839 (.bxor 96 2838) := by core033_kernel_decide
theorem stats2839 : actualRows2839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2839=7428 := by core033_kernel_decide
theorem rows2840 : actualRows2840=WordField.canonicalRows actualModulus 2840 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2840 : actualRows2840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2840=2820 := by core033_kernel_decide
theorem rows2841 : actualRows2841=WordField.canonicalRows actualModulus 2841 (.bnot 2840) := by core033_kernel_decide
theorem stats2841 : actualRows2841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2841=6276 := by core033_kernel_decide
theorem rows2842 : actualRows2842=WordField.canonicalRows actualModulus 2842 (.bxor 2839 2841) := by core033_kernel_decide
theorem stats2842 : actualRows2842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2842=7428 := by core033_kernel_decide
theorem rows2843 : actualRows2843=WordField.canonicalRows actualModulus 2843 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2843 : actualRows2843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2843=2892 := by core033_kernel_decide
theorem rows2844 : actualRows2844=WordField.canonicalRows actualModulus 2844 (.bxor 96 2843) := by core033_kernel_decide
theorem stats2844 : actualRows2844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2844=7428 := by core033_kernel_decide
theorem rows2845 : actualRows2845=WordField.canonicalRows actualModulus 2845 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2845 : actualRows2845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2845=2820 := by core033_kernel_decide
theorem rows2846 : actualRows2846=WordField.canonicalRows actualModulus 2846 (.bnot 2845) := by core033_kernel_decide
theorem stats2846 : actualRows2846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2846=6276 := by core033_kernel_decide
theorem rows2847 : actualRows2847=WordField.canonicalRows actualModulus 2847 (.badd 2844 2846) := by core033_kernel_decide
theorem stats2847 : actualRows2847.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2847=5388 := by core033_kernel_decide
theorem rows2848 : actualRows2848=WordField.canonicalRows actualModulus 2848 (.bnot 2847) := by core033_kernel_decide
theorem stats2848 : actualRows2848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2848=6276 := by core033_kernel_decide
theorem rows2849 : actualRows2849=WordField.canonicalRows actualModulus 2849 (.band 2842 2848) := by core033_kernel_decide
theorem stats2849 : actualRows2849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2849=5124 := by core033_kernel_decide
theorem rows2850 : actualRows2850=WordField.canonicalRows actualModulus 2850 (.bxor 2837 2849) := by core033_kernel_decide
theorem stats2850 : actualRows2850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2850=7428 := by core033_kernel_decide
theorem rows2851 : actualRows2851=WordField.canonicalRows actualModulus 2851 (.shr 2850 31) := by core033_kernel_decide
theorem stats2851 : actualRows2851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2851=2892 := by core033_kernel_decide
theorem rows2852 : actualRows2852=WordField.canonicalRows actualModulus 2852 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2852 : actualRows2852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2852=2892 := by core033_kernel_decide
theorem rows2853 : actualRows2853=WordField.canonicalRows actualModulus 2853 (.bxor 2851 2852) := by core033_kernel_decide
theorem stats2853 : actualRows2853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2853=7428 := by core033_kernel_decide
theorem rows2854 : actualRows2854=WordField.canonicalRows actualModulus 2854 (.bnot 2853) := by core033_kernel_decide
theorem stats2854 : actualRows2854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2854=6276 := by core033_kernel_decide
theorem rows2855 : actualRows2855=WordField.canonicalRows actualModulus 2855 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2855 : actualRows2855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2855=2892 := by core033_kernel_decide
theorem rows2856 : actualRows2856=WordField.canonicalRows actualModulus 2856 (.badd 2854 2855) := by core033_kernel_decide
theorem stats2856 : actualRows2856.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2856=5388 := by core033_kernel_decide
theorem rows2857 : actualRows2857=WordField.canonicalRows actualModulus 2857 (.bnot 2856) := by core033_kernel_decide
theorem stats2857 : actualRows2857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2857=6276 := by core033_kernel_decide
theorem rows2858 : actualRows2858=WordField.canonicalRows actualModulus 2858 (.band 2857 1352) := by core033_kernel_decide
theorem stats2858 : actualRows2858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2858=5124 := by core033_kernel_decide
def partRows43 : List R1CS.Row := actualRows2795++actualRows2796++actualRows2797++actualRows2798++actualRows2799++actualRows2800++actualRows2801++actualRows2802++actualRows2803++actualRows2804++actualRows2805++actualRows2806++actualRows2807++actualRows2808++actualRows2809++actualRows2810++actualRows2811++actualRows2812++actualRows2813++actualRows2814++actualRows2815++actualRows2816++actualRows2817++actualRows2818++actualRows2819++actualRows2820++actualRows2821++actualRows2822++actualRows2823++actualRows2824++actualRows2825++actualRows2826++actualRows2827++actualRows2828++actualRows2829++actualRows2830++actualRows2831++actualRows2832++actualRows2833++actualRows2834++actualRows2835++actualRows2836++actualRows2837++actualRows2838++actualRows2839++actualRows2840++actualRows2841++actualRows2842++actualRows2843++actualRows2844++actualRows2845++actualRows2846++actualRows2847++actualRows2848++actualRows2849++actualRows2850++actualRows2851++actualRows2852++actualRows2853++actualRows2854++actualRows2855++actualRows2856++actualRows2857++actualRows2858
def partOps43 : List WordIR.Op := [.badd 2792 2794,.bnot 2795,.band 2790 2796,.bxor 2785 2797,.shr 2798 31,.literal (BitVec.ofNat 32 1),.bxor 2799 2800,.bnot 2801,.literal (BitVec.ofNat 32 1),.badd 2802 2803,.bnot 2804,.band 2805 1351,.bxor 2780 2806,.literal (BitVec.ofNat 32 2),.bxor 96 2808,.literal (BitVec.ofNat 32 0),.bnot 2810,.band 2809 2811,.literal (BitVec.ofNat 32 2),.bxor 96 2813,.literal (BitVec.ofNat 32 0),.bnot 2815,.bxor 2814 2816,.literal (BitVec.ofNat 32 2),.bxor 96 2818,.literal (BitVec.ofNat 32 0),.bnot 2820,.badd 2819 2821,.bnot 2822,.band 2817 2823,.bxor 2812 2824,.shr 2825 31,.literal (BitVec.ofNat 32 1),.bxor 2826 2827,.bnot 2828,.literal (BitVec.ofNat 32 1),.badd 2829 2830,.band 2831 1520,.literal (BitVec.ofNat 32 2),.bxor 96 2833,.literal (BitVec.ofNat 32 0),.bnot 2835,.band 2834 2836,.literal (BitVec.ofNat 32 2),.bxor 96 2838,.literal (BitVec.ofNat 32 0),.bnot 2840,.bxor 2839 2841,.literal (BitVec.ofNat 32 2),.bxor 96 2843,.literal (BitVec.ofNat 32 0),.bnot 2845,.badd 2844 2846,.bnot 2847,.band 2842 2848,.bxor 2837 2849,.shr 2850 31,.literal (BitVec.ofNat 32 1),.bxor 2851 2852,.bnot 2853,.literal (BitVec.ofNat 32 1),.badd 2854 2855,.bnot 2856,.band 2857 1352]
theorem partExact43 : partRows43=WordField.rows actualModulus 2795 partOps43 := by
  simp only [partRows43,partOps43,WordField.rows,rows2795,rows2796,rows2797,rows2798,rows2799,rows2800,rows2801,rows2802,rows2803,rows2804,rows2805,rows2806,rows2807,rows2808,rows2809,rows2810,rows2811,rows2812,rows2813,rows2814,rows2815,rows2816,rows2817,rows2818,rows2819,rows2820,rows2821,rows2822,rows2823,rows2824,rows2825,rows2826,rows2827,rows2828,rows2829,rows2830,rows2831,rows2832,rows2833,rows2834,rows2835,rows2836,rows2837,rows2838,rows2839,rows2840,rows2841,rows2842,rows2843,rows2844,rows2845,rows2846,rows2847,rows2848,rows2849,rows2850,rows2851,rows2852,rows2853,rows2854,rows2855,rows2856,rows2857,rows2858,List.append_assoc,List.append_nil]
theorem partLength43 : partOps43.length=64 := by decide
theorem partStats43 : partRows43.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows43=332904 := by
  simp only [partRows43,List.length_append,MatrixRowBlocks.rows_weight_append,stats2795.1,stats2795.2,stats2796.1,stats2796.2,stats2797.1,stats2797.2,stats2798.1,stats2798.2,stats2799.1,stats2799.2,stats2800.1,stats2800.2,stats2801.1,stats2801.2,stats2802.1,stats2802.2,stats2803.1,stats2803.2,stats2804.1,stats2804.2,stats2805.1,stats2805.2,stats2806.1,stats2806.2,stats2807.1,stats2807.2,stats2808.1,stats2808.2,stats2809.1,stats2809.2,stats2810.1,stats2810.2,stats2811.1,stats2811.2,stats2812.1,stats2812.2,stats2813.1,stats2813.2,stats2814.1,stats2814.2,stats2815.1,stats2815.2,stats2816.1,stats2816.2,stats2817.1,stats2817.2,stats2818.1,stats2818.2,stats2819.1,stats2819.2,stats2820.1,stats2820.2,stats2821.1,stats2821.2,stats2822.1,stats2822.2,stats2823.1,stats2823.2,stats2824.1,stats2824.2,stats2825.1,stats2825.2,stats2826.1,stats2826.2,stats2827.1,stats2827.2,stats2828.1,stats2828.2,stats2829.1,stats2829.2,stats2830.1,stats2830.2,stats2831.1,stats2831.2,stats2832.1,stats2832.2,stats2833.1,stats2833.2,stats2834.1,stats2834.2,stats2835.1,stats2835.2,stats2836.1,stats2836.2,stats2837.1,stats2837.2,stats2838.1,stats2838.2,stats2839.1,stats2839.2,stats2840.1,stats2840.2,stats2841.1,stats2841.2,stats2842.1,stats2842.2,stats2843.1,stats2843.2,stats2844.1,stats2844.2,stats2845.1,stats2845.2,stats2846.1,stats2846.2,stats2847.1,stats2847.2,stats2848.1,stats2848.2,stats2849.1,stats2849.2,stats2850.1,stats2850.2,stats2851.1,stats2851.2,stats2852.1,stats2852.2,stats2853.1,stats2853.2,stats2854.1,stats2854.2,stats2855.1,stats2855.2,stats2856.1,stats2856.2,stats2857.1,stats2857.2,stats2858.1,stats2858.2]
  decide
end PathRoundDispatchCheckedRows
