import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData43
import AuthenticatedBranchRoundInstructionMatrixData44
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2806 : actualRows2806=WordField.canonicalRows actualModulus 2806 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2806 : actualRows2806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2806=3396 := by core033_kernel_decide
theorem rows2807 : actualRows2807=WordField.canonicalRows actualModulus 2807 (.band 2805 2806) := by core033_kernel_decide
theorem stats2807 : actualRows2807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2807=5124 := by core033_kernel_decide
theorem rows2808 : actualRows2808=WordField.canonicalRows actualModulus 2808 (.shr 2298 8) := by core033_kernel_decide
theorem stats2808 : actualRows2808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2808=4548 := by core033_kernel_decide
theorem rows2809 : actualRows2809=WordField.canonicalRows actualModulus 2809 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2809 : actualRows2809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2809=3396 := by core033_kernel_decide
theorem rows2810 : actualRows2810=WordField.canonicalRows actualModulus 2810 (.band 2808 2809) := by core033_kernel_decide
theorem stats2810 : actualRows2810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2810=5124 := by core033_kernel_decide
theorem rows2811 : actualRows2811=WordField.canonicalRows actualModulus 2811 (.shr 2298 16) := by core033_kernel_decide
theorem stats2811 : actualRows2811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2811=3972 := by core033_kernel_decide
theorem rows2812 : actualRows2812=WordField.canonicalRows actualModulus 2812 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2812 : actualRows2812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2812=3396 := by core033_kernel_decide
theorem rows2813 : actualRows2813=WordField.canonicalRows actualModulus 2813 (.band 2811 2812) := by core033_kernel_decide
theorem stats2813 : actualRows2813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2813=5124 := by core033_kernel_decide
theorem rows2814 : actualRows2814=WordField.canonicalRows actualModulus 2814 (.shr 2298 24) := by core033_kernel_decide
theorem stats2814 : actualRows2814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2814=3396 := by core033_kernel_decide
theorem rows2815 : actualRows2815=WordField.canonicalRows actualModulus 2815 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2815 : actualRows2815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2815=3396 := by core033_kernel_decide
theorem rows2816 : actualRows2816=WordField.canonicalRows actualModulus 2816 (.band 2814 2815) := by core033_kernel_decide
theorem stats2816 : actualRows2816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2816=5124 := by core033_kernel_decide
theorem rows2817 : actualRows2817=WordField.canonicalRows actualModulus 2817 (.shr 2337 0) := by core033_kernel_decide
theorem stats2817 : actualRows2817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2817=5124 := by core033_kernel_decide
theorem rows2818 : actualRows2818=WordField.canonicalRows actualModulus 2818 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2818 : actualRows2818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2818=3396 := by core033_kernel_decide
theorem rows2819 : actualRows2819=WordField.canonicalRows actualModulus 2819 (.band 2817 2818) := by core033_kernel_decide
theorem stats2819 : actualRows2819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2819=5124 := by core033_kernel_decide
theorem rows2820 : actualRows2820=WordField.canonicalRows actualModulus 2820 (.shr 2337 8) := by core033_kernel_decide
theorem stats2820 : actualRows2820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2820=4548 := by core033_kernel_decide
theorem rows2821 : actualRows2821=WordField.canonicalRows actualModulus 2821 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2821 : actualRows2821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2821=3396 := by core033_kernel_decide
theorem rows2822 : actualRows2822=WordField.canonicalRows actualModulus 2822 (.band 2820 2821) := by core033_kernel_decide
theorem stats2822 : actualRows2822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2822=5124 := by core033_kernel_decide
theorem rows2823 : actualRows2823=WordField.canonicalRows actualModulus 2823 (.shr 2337 16) := by core033_kernel_decide
theorem stats2823 : actualRows2823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2823=3972 := by core033_kernel_decide
theorem rows2824 : actualRows2824=WordField.canonicalRows actualModulus 2824 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2824 : actualRows2824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2824=3396 := by core033_kernel_decide
theorem rows2825 : actualRows2825=WordField.canonicalRows actualModulus 2825 (.band 2823 2824) := by core033_kernel_decide
theorem stats2825 : actualRows2825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2825=5124 := by core033_kernel_decide
theorem rows2826 : actualRows2826=WordField.canonicalRows actualModulus 2826 (.shr 2337 24) := by core033_kernel_decide
theorem stats2826 : actualRows2826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2826=3396 := by core033_kernel_decide
theorem rows2827 : actualRows2827=WordField.canonicalRows actualModulus 2827 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2827 : actualRows2827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2827=3396 := by core033_kernel_decide
theorem rows2828 : actualRows2828=WordField.canonicalRows actualModulus 2828 (.band 2826 2827) := by core033_kernel_decide
theorem stats2828 : actualRows2828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2828=5124 := by core033_kernel_decide
theorem rows2829 : actualRows2829=WordField.canonicalRows actualModulus 2829 (.shr 2346 0) := by core033_kernel_decide
theorem stats2829 : actualRows2829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2829=5124 := by core033_kernel_decide
theorem rows2830 : actualRows2830=WordField.canonicalRows actualModulus 2830 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2830 : actualRows2830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2830=3396 := by core033_kernel_decide
theorem rows2831 : actualRows2831=WordField.canonicalRows actualModulus 2831 (.band 2829 2830) := by core033_kernel_decide
theorem stats2831 : actualRows2831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2831=5124 := by core033_kernel_decide
theorem rows2832 : actualRows2832=WordField.canonicalRows actualModulus 2832 (.shr 2346 8) := by core033_kernel_decide
theorem stats2832 : actualRows2832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2832=4548 := by core033_kernel_decide
theorem rows2833 : actualRows2833=WordField.canonicalRows actualModulus 2833 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2833 : actualRows2833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2833=3396 := by core033_kernel_decide
theorem rows2834 : actualRows2834=WordField.canonicalRows actualModulus 2834 (.band 2832 2833) := by core033_kernel_decide
theorem stats2834 : actualRows2834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2834=5124 := by core033_kernel_decide
theorem rows2835 : actualRows2835=WordField.canonicalRows actualModulus 2835 (.shr 2346 16) := by core033_kernel_decide
theorem stats2835 : actualRows2835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2835=3972 := by core033_kernel_decide
theorem rows2836 : actualRows2836=WordField.canonicalRows actualModulus 2836 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2836 : actualRows2836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2836=3396 := by core033_kernel_decide
theorem rows2837 : actualRows2837=WordField.canonicalRows actualModulus 2837 (.band 2835 2836) := by core033_kernel_decide
theorem stats2837 : actualRows2837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2837=5124 := by core033_kernel_decide
theorem rows2838 : actualRows2838=WordField.canonicalRows actualModulus 2838 (.shr 2346 24) := by core033_kernel_decide
theorem stats2838 : actualRows2838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2838=3396 := by core033_kernel_decide
theorem rows2839 : actualRows2839=WordField.canonicalRows actualModulus 2839 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2839 : actualRows2839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2839=3396 := by core033_kernel_decide
theorem rows2840 : actualRows2840=WordField.canonicalRows actualModulus 2840 (.band 2838 2839) := by core033_kernel_decide
theorem stats2840 : actualRows2840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2840=5124 := by core033_kernel_decide
theorem rows2841 : actualRows2841=WordField.canonicalRows actualModulus 2841 (.shr 2472 0) := by core033_kernel_decide
theorem stats2841 : actualRows2841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2841=5124 := by core033_kernel_decide
theorem rows2842 : actualRows2842=WordField.canonicalRows actualModulus 2842 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2842 : actualRows2842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2842=3396 := by core033_kernel_decide
theorem rows2843 : actualRows2843=WordField.canonicalRows actualModulus 2843 (.band 2841 2842) := by core033_kernel_decide
theorem stats2843 : actualRows2843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2843=5124 := by core033_kernel_decide
theorem rows2844 : actualRows2844=WordField.canonicalRows actualModulus 2844 (.shr 2473 0) := by core033_kernel_decide
theorem stats2844 : actualRows2844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2844=5124 := by core033_kernel_decide
theorem rows2845 : actualRows2845=WordField.canonicalRows actualModulus 2845 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2845 : actualRows2845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2845=3396 := by core033_kernel_decide
theorem rows2846 : actualRows2846=WordField.canonicalRows actualModulus 2846 (.band 2844 2845) := by core033_kernel_decide
theorem stats2846 : actualRows2846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2846=5124 := by core033_kernel_decide
theorem rows2847 : actualRows2847=WordField.canonicalRows actualModulus 2847 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2847 : actualRows2847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2847=2820 := by core033_kernel_decide
theorem rows2848 : actualRows2848=WordField.canonicalRows actualModulus 2848 (.bnot 2847) := by core033_kernel_decide
theorem stats2848 : actualRows2848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2848=6276 := by core033_kernel_decide
theorem rows2849 : actualRows2849=WordField.canonicalRows actualModulus 2849 (.band 1310 2848) := by core033_kernel_decide
theorem stats2849 : actualRows2849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2849=5124 := by core033_kernel_decide
theorem rows2850 : actualRows2850=WordField.canonicalRows actualModulus 2850 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2850 : actualRows2850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2850=2820 := by core033_kernel_decide
theorem rows2851 : actualRows2851=WordField.canonicalRows actualModulus 2851 (.bnot 2850) := by core033_kernel_decide
theorem stats2851 : actualRows2851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2851=6276 := by core033_kernel_decide
theorem rows2852 : actualRows2852=WordField.canonicalRows actualModulus 2852 (.bxor 1310 2851) := by core033_kernel_decide
theorem stats2852 : actualRows2852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2852=7428 := by core033_kernel_decide
theorem rows2853 : actualRows2853=WordField.canonicalRows actualModulus 2853 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2853 : actualRows2853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2853=2820 := by core033_kernel_decide
theorem rows2854 : actualRows2854=WordField.canonicalRows actualModulus 2854 (.bnot 2853) := by core033_kernel_decide
theorem stats2854 : actualRows2854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2854=6276 := by core033_kernel_decide
theorem rows2855 : actualRows2855=WordField.canonicalRows actualModulus 2855 (.badd 1310 2854) := by core033_kernel_decide
theorem stats2855 : actualRows2855.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2855=5388 := by core033_kernel_decide
theorem rows2856 : actualRows2856=WordField.canonicalRows actualModulus 2856 (.bnot 2855) := by core033_kernel_decide
theorem stats2856 : actualRows2856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2856=6276 := by core033_kernel_decide
theorem rows2857 : actualRows2857=WordField.canonicalRows actualModulus 2857 (.band 2852 2856) := by core033_kernel_decide
theorem stats2857 : actualRows2857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2857=5124 := by core033_kernel_decide
theorem rows2858 : actualRows2858=WordField.canonicalRows actualModulus 2858 (.bxor 2849 2857) := by core033_kernel_decide
theorem stats2858 : actualRows2858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2858=7428 := by core033_kernel_decide
theorem rows2859 : actualRows2859=WordField.canonicalRows actualModulus 2859 (.shr 2858 31) := by core033_kernel_decide
theorem stats2859 : actualRows2859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2859=2892 := by core033_kernel_decide
theorem rows2860 : actualRows2860=WordField.canonicalRows actualModulus 2860 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats2860 : actualRows2860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2860=2964 := by core033_kernel_decide
theorem rows2861 : actualRows2861=WordField.canonicalRows actualModulus 2861 (.bnot 1310) := by core033_kernel_decide
theorem stats2861 : actualRows2861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2861=6276 := by core033_kernel_decide
theorem rows2862 : actualRows2862=WordField.canonicalRows actualModulus 2862 (.band 2860 2861) := by core033_kernel_decide
theorem stats2862 : actualRows2862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2862=5124 := by core033_kernel_decide
theorem rows2863 : actualRows2863=WordField.canonicalRows actualModulus 2863 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats2863 : actualRows2863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2863=2964 := by core033_kernel_decide
theorem rows2864 : actualRows2864=WordField.canonicalRows actualModulus 2864 (.bnot 1310) := by core033_kernel_decide
theorem stats2864 : actualRows2864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2864=6276 := by core033_kernel_decide
theorem rows2865 : actualRows2865=WordField.canonicalRows actualModulus 2865 (.bxor 2863 2864) := by core033_kernel_decide
theorem stats2865 : actualRows2865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2865=7428 := by core033_kernel_decide
theorem rows2866 : actualRows2866=WordField.canonicalRows actualModulus 2866 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats2866 : actualRows2866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2866=2964 := by core033_kernel_decide
theorem rows2867 : actualRows2867=WordField.canonicalRows actualModulus 2867 (.bnot 1310) := by core033_kernel_decide
theorem stats2867 : actualRows2867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2867=6276 := by core033_kernel_decide
theorem rows2868 : actualRows2868=WordField.canonicalRows actualModulus 2868 (.badd 2866 2867) := by core033_kernel_decide
theorem stats2868 : actualRows2868.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2868=5388 := by core033_kernel_decide
theorem rows2869 : actualRows2869=WordField.canonicalRows actualModulus 2869 (.bnot 2868) := by core033_kernel_decide
theorem stats2869 : actualRows2869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2869=6276 := by core033_kernel_decide
def partRows42 : List R1CS.Row := actualRows2806++actualRows2807++actualRows2808++actualRows2809++actualRows2810++actualRows2811++actualRows2812++actualRows2813++actualRows2814++actualRows2815++actualRows2816++actualRows2817++actualRows2818++actualRows2819++actualRows2820++actualRows2821++actualRows2822++actualRows2823++actualRows2824++actualRows2825++actualRows2826++actualRows2827++actualRows2828++actualRows2829++actualRows2830++actualRows2831++actualRows2832++actualRows2833++actualRows2834++actualRows2835++actualRows2836++actualRows2837++actualRows2838++actualRows2839++actualRows2840++actualRows2841++actualRows2842++actualRows2843++actualRows2844++actualRows2845++actualRows2846++actualRows2847++actualRows2848++actualRows2849++actualRows2850++actualRows2851++actualRows2852++actualRows2853++actualRows2854++actualRows2855++actualRows2856++actualRows2857++actualRows2858++actualRows2859++actualRows2860++actualRows2861++actualRows2862++actualRows2863++actualRows2864++actualRows2865++actualRows2866++actualRows2867++actualRows2868++actualRows2869
def partOps42 : List WordIR.Op := [.literal (BitVec.ofNat 32 255),.band 2805 2806,.shr 2298 8,.literal (BitVec.ofNat 32 255),.band 2808 2809,.shr 2298 16,.literal (BitVec.ofNat 32 255),.band 2811 2812,.shr 2298 24,.literal (BitVec.ofNat 32 255),.band 2814 2815,.shr 2337 0,.literal (BitVec.ofNat 32 255),.band 2817 2818,.shr 2337 8,.literal (BitVec.ofNat 32 255),.band 2820 2821,.shr 2337 16,.literal (BitVec.ofNat 32 255),.band 2823 2824,.shr 2337 24,.literal (BitVec.ofNat 32 255),.band 2826 2827,.shr 2346 0,.literal (BitVec.ofNat 32 255),.band 2829 2830,.shr 2346 8,.literal (BitVec.ofNat 32 255),.band 2832 2833,.shr 2346 16,.literal (BitVec.ofNat 32 255),.band 2835 2836,.shr 2346 24,.literal (BitVec.ofNat 32 255),.band 2838 2839,.shr 2472 0,.literal (BitVec.ofNat 32 255),.band 2841 2842,.shr 2473 0,.literal (BitVec.ofNat 32 255),.band 2844 2845,.literal (BitVec.ofNat 32 0),.bnot 2847,.band 1310 2848,.literal (BitVec.ofNat 32 0),.bnot 2850,.bxor 1310 2851,.literal (BitVec.ofNat 32 0),.bnot 2853,.badd 1310 2854,.bnot 2855,.band 2852 2856,.bxor 2849 2857,.shr 2858 31,.literal (BitVec.ofNat 32 3),.bnot 1310,.band 2860 2861,.literal (BitVec.ofNat 32 3),.bnot 1310,.bxor 2863 2864,.literal (BitVec.ofNat 32 3),.bnot 1310,.badd 2866 2867,.bnot 2868]
theorem partExact42 : partRows42=WordField.rows actualModulus 2806 partOps42 := by
  simp only [partRows42,partOps42,WordField.rows,rows2806,rows2807,rows2808,rows2809,rows2810,rows2811,rows2812,rows2813,rows2814,rows2815,rows2816,rows2817,rows2818,rows2819,rows2820,rows2821,rows2822,rows2823,rows2824,rows2825,rows2826,rows2827,rows2828,rows2829,rows2830,rows2831,rows2832,rows2833,rows2834,rows2835,rows2836,rows2837,rows2838,rows2839,rows2840,rows2841,rows2842,rows2843,rows2844,rows2845,rows2846,rows2847,rows2848,rows2849,rows2850,rows2851,rows2852,rows2853,rows2854,rows2855,rows2856,rows2857,rows2858,rows2859,rows2860,rows2861,rows2862,rows2863,rows2864,rows2865,rows2866,rows2867,rows2868,rows2869,List.append_assoc,List.append_nil]
theorem partLength42 : partOps42.length=64 := by decide
theorem partStats42 : partRows42.length=2178 ∧ MatrixRowBlocks.rowsWeight partRows42=294408 := by
  simp only [partRows42,List.length_append,MatrixRowBlocks.rows_weight_append,stats2806.1,stats2806.2,stats2807.1,stats2807.2,stats2808.1,stats2808.2,stats2809.1,stats2809.2,stats2810.1,stats2810.2,stats2811.1,stats2811.2,stats2812.1,stats2812.2,stats2813.1,stats2813.2,stats2814.1,stats2814.2,stats2815.1,stats2815.2,stats2816.1,stats2816.2,stats2817.1,stats2817.2,stats2818.1,stats2818.2,stats2819.1,stats2819.2,stats2820.1,stats2820.2,stats2821.1,stats2821.2,stats2822.1,stats2822.2,stats2823.1,stats2823.2,stats2824.1,stats2824.2,stats2825.1,stats2825.2,stats2826.1,stats2826.2,stats2827.1,stats2827.2,stats2828.1,stats2828.2,stats2829.1,stats2829.2,stats2830.1,stats2830.2,stats2831.1,stats2831.2,stats2832.1,stats2832.2,stats2833.1,stats2833.2,stats2834.1,stats2834.2,stats2835.1,stats2835.2,stats2836.1,stats2836.2,stats2837.1,stats2837.2,stats2838.1,stats2838.2,stats2839.1,stats2839.2,stats2840.1,stats2840.2,stats2841.1,stats2841.2,stats2842.1,stats2842.2,stats2843.1,stats2843.2,stats2844.1,stats2844.2,stats2845.1,stats2845.2,stats2846.1,stats2846.2,stats2847.1,stats2847.2,stats2848.1,stats2848.2,stats2849.1,stats2849.2,stats2850.1,stats2850.2,stats2851.1,stats2851.2,stats2852.1,stats2852.2,stats2853.1,stats2853.2,stats2854.1,stats2854.2,stats2855.1,stats2855.2,stats2856.1,stats2856.2,stats2857.1,stats2857.2,stats2858.1,stats2858.2,stats2859.1,stats2859.2,stats2860.1,stats2860.2,stats2861.1,stats2861.2,stats2862.1,stats2862.2,stats2863.1,stats2863.2,stats2864.1,stats2864.2,stats2865.1,stats2865.2,stats2866.1,stats2866.2,stats2867.1,stats2867.2,stats2868.1,stats2868.2,stats2869.1,stats2869.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
