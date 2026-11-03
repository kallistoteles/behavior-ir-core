import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData43
import FrameHashControllerInstructionMatrixData44
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2795 : actualRows2795=WordField.canonicalRows actualModulus 2795 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2795 : actualRows2795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2795=2892 := by core033_kernel_decide
theorem rows2796 : actualRows2796=WordField.canonicalRows actualModulus 2796 (.bxor 0 2795) := by core033_kernel_decide
theorem stats2796 : actualRows2796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2796=7428 := by core033_kernel_decide
theorem rows2797 : actualRows2797=WordField.canonicalRows actualModulus 2797 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2797 : actualRows2797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2797=2820 := by core033_kernel_decide
theorem rows2798 : actualRows2798=WordField.canonicalRows actualModulus 2798 (.bnot 2797) := by core033_kernel_decide
theorem stats2798 : actualRows2798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2798=6276 := by core033_kernel_decide
theorem rows2799 : actualRows2799=WordField.canonicalRows actualModulus 2799 (.badd 2796 2798) := by core033_kernel_decide
theorem stats2799 : actualRows2799.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2799=5388 := by core033_kernel_decide
theorem rows2800 : actualRows2800=WordField.canonicalRows actualModulus 2800 (.bnot 2799) := by core033_kernel_decide
theorem stats2800 : actualRows2800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2800=6276 := by core033_kernel_decide
theorem rows2801 : actualRows2801=WordField.canonicalRows actualModulus 2801 (.band 2794 2800) := by core033_kernel_decide
theorem stats2801 : actualRows2801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2801=5124 := by core033_kernel_decide
theorem rows2802 : actualRows2802=WordField.canonicalRows actualModulus 2802 (.bxor 2789 2801) := by core033_kernel_decide
theorem stats2802 : actualRows2802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2802=7428 := by core033_kernel_decide
theorem rows2803 : actualRows2803=WordField.canonicalRows actualModulus 2803 (.shr 2802 31) := by core033_kernel_decide
theorem stats2803 : actualRows2803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2803=2892 := by core033_kernel_decide
theorem rows2804 : actualRows2804=WordField.canonicalRows actualModulus 2804 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2804 : actualRows2804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2804=2892 := by core033_kernel_decide
theorem rows2805 : actualRows2805=WordField.canonicalRows actualModulus 2805 (.bxor 2803 2804) := by core033_kernel_decide
theorem stats2805 : actualRows2805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2805=7428 := by core033_kernel_decide
theorem rows2806 : actualRows2806=WordField.canonicalRows actualModulus 2806 (.bnot 2805) := by core033_kernel_decide
theorem stats2806 : actualRows2806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2806=6276 := by core033_kernel_decide
theorem rows2807 : actualRows2807=WordField.canonicalRows actualModulus 2807 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2807 : actualRows2807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2807=2892 := by core033_kernel_decide
theorem rows2808 : actualRows2808=WordField.canonicalRows actualModulus 2808 (.badd 2806 2807) := by core033_kernel_decide
theorem stats2808 : actualRows2808.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2808=5388 := by core033_kernel_decide
theorem rows2809 : actualRows2809=WordField.canonicalRows actualModulus 2809 (.bnot 2808) := by core033_kernel_decide
theorem stats2809 : actualRows2809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2809=6276 := by core033_kernel_decide
theorem rows2810 : actualRows2810=WordField.canonicalRows actualModulus 2810 (.band 2809 845) := by core033_kernel_decide
theorem stats2810 : actualRows2810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2810=5124 := by core033_kernel_decide
theorem rows2811 : actualRows2811=WordField.canonicalRows actualModulus 2811 (.bxor 2784 2810) := by core033_kernel_decide
theorem stats2811 : actualRows2811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2811=7428 := by core033_kernel_decide
theorem rows2812 : actualRows2812=WordField.canonicalRows actualModulus 2812 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2812 : actualRows2812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2812=2892 := by core033_kernel_decide
theorem rows2813 : actualRows2813=WordField.canonicalRows actualModulus 2813 (.bxor 0 2812) := by core033_kernel_decide
theorem stats2813 : actualRows2813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2813=7428 := by core033_kernel_decide
theorem rows2814 : actualRows2814=WordField.canonicalRows actualModulus 2814 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2814 : actualRows2814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2814=2820 := by core033_kernel_decide
theorem rows2815 : actualRows2815=WordField.canonicalRows actualModulus 2815 (.bnot 2814) := by core033_kernel_decide
theorem stats2815 : actualRows2815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2815=6276 := by core033_kernel_decide
theorem rows2816 : actualRows2816=WordField.canonicalRows actualModulus 2816 (.band 2813 2815) := by core033_kernel_decide
theorem stats2816 : actualRows2816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2816=5124 := by core033_kernel_decide
theorem rows2817 : actualRows2817=WordField.canonicalRows actualModulus 2817 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2817 : actualRows2817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2817=2892 := by core033_kernel_decide
theorem rows2818 : actualRows2818=WordField.canonicalRows actualModulus 2818 (.bxor 0 2817) := by core033_kernel_decide
theorem stats2818 : actualRows2818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2818=7428 := by core033_kernel_decide
theorem rows2819 : actualRows2819=WordField.canonicalRows actualModulus 2819 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2819 : actualRows2819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2819=2820 := by core033_kernel_decide
theorem rows2820 : actualRows2820=WordField.canonicalRows actualModulus 2820 (.bnot 2819) := by core033_kernel_decide
theorem stats2820 : actualRows2820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2820=6276 := by core033_kernel_decide
theorem rows2821 : actualRows2821=WordField.canonicalRows actualModulus 2821 (.bxor 2818 2820) := by core033_kernel_decide
theorem stats2821 : actualRows2821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2821=7428 := by core033_kernel_decide
theorem rows2822 : actualRows2822=WordField.canonicalRows actualModulus 2822 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2822 : actualRows2822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2822=2892 := by core033_kernel_decide
theorem rows2823 : actualRows2823=WordField.canonicalRows actualModulus 2823 (.bxor 0 2822) := by core033_kernel_decide
theorem stats2823 : actualRows2823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2823=7428 := by core033_kernel_decide
theorem rows2824 : actualRows2824=WordField.canonicalRows actualModulus 2824 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2824 : actualRows2824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2824=2820 := by core033_kernel_decide
theorem rows2825 : actualRows2825=WordField.canonicalRows actualModulus 2825 (.bnot 2824) := by core033_kernel_decide
theorem stats2825 : actualRows2825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2825=6276 := by core033_kernel_decide
theorem rows2826 : actualRows2826=WordField.canonicalRows actualModulus 2826 (.badd 2823 2825) := by core033_kernel_decide
theorem stats2826 : actualRows2826.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2826=5388 := by core033_kernel_decide
theorem rows2827 : actualRows2827=WordField.canonicalRows actualModulus 2827 (.bnot 2826) := by core033_kernel_decide
theorem stats2827 : actualRows2827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2827=6276 := by core033_kernel_decide
theorem rows2828 : actualRows2828=WordField.canonicalRows actualModulus 2828 (.band 2821 2827) := by core033_kernel_decide
theorem stats2828 : actualRows2828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2828=5124 := by core033_kernel_decide
theorem rows2829 : actualRows2829=WordField.canonicalRows actualModulus 2829 (.bxor 2816 2828) := by core033_kernel_decide
theorem stats2829 : actualRows2829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2829=7428 := by core033_kernel_decide
theorem rows2830 : actualRows2830=WordField.canonicalRows actualModulus 2830 (.shr 2829 31) := by core033_kernel_decide
theorem stats2830 : actualRows2830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2830=2892 := by core033_kernel_decide
theorem rows2831 : actualRows2831=WordField.canonicalRows actualModulus 2831 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2831 : actualRows2831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2831=2892 := by core033_kernel_decide
theorem rows2832 : actualRows2832=WordField.canonicalRows actualModulus 2832 (.bxor 2830 2831) := by core033_kernel_decide
theorem stats2832 : actualRows2832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2832=7428 := by core033_kernel_decide
theorem rows2833 : actualRows2833=WordField.canonicalRows actualModulus 2833 (.bnot 2832) := by core033_kernel_decide
theorem stats2833 : actualRows2833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2833=6276 := by core033_kernel_decide
theorem rows2834 : actualRows2834=WordField.canonicalRows actualModulus 2834 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2834 : actualRows2834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2834=2892 := by core033_kernel_decide
theorem rows2835 : actualRows2835=WordField.canonicalRows actualModulus 2835 (.badd 2833 2834) := by core033_kernel_decide
theorem stats2835 : actualRows2835.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2835=5388 := by core033_kernel_decide
theorem rows2836 : actualRows2836=WordField.canonicalRows actualModulus 2836 (.band 2835 1034) := by core033_kernel_decide
theorem stats2836 : actualRows2836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2836=5124 := by core033_kernel_decide
theorem rows2837 : actualRows2837=WordField.canonicalRows actualModulus 2837 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2837 : actualRows2837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2837=2892 := by core033_kernel_decide
theorem rows2838 : actualRows2838=WordField.canonicalRows actualModulus 2838 (.bxor 0 2837) := by core033_kernel_decide
theorem stats2838 : actualRows2838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2838=7428 := by core033_kernel_decide
theorem rows2839 : actualRows2839=WordField.canonicalRows actualModulus 2839 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2839 : actualRows2839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2839=2820 := by core033_kernel_decide
theorem rows2840 : actualRows2840=WordField.canonicalRows actualModulus 2840 (.bnot 2839) := by core033_kernel_decide
theorem stats2840 : actualRows2840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2840=6276 := by core033_kernel_decide
theorem rows2841 : actualRows2841=WordField.canonicalRows actualModulus 2841 (.band 2838 2840) := by core033_kernel_decide
theorem stats2841 : actualRows2841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2841=5124 := by core033_kernel_decide
theorem rows2842 : actualRows2842=WordField.canonicalRows actualModulus 2842 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2842 : actualRows2842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2842=2892 := by core033_kernel_decide
theorem rows2843 : actualRows2843=WordField.canonicalRows actualModulus 2843 (.bxor 0 2842) := by core033_kernel_decide
theorem stats2843 : actualRows2843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2843=7428 := by core033_kernel_decide
theorem rows2844 : actualRows2844=WordField.canonicalRows actualModulus 2844 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2844 : actualRows2844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2844=2820 := by core033_kernel_decide
theorem rows2845 : actualRows2845=WordField.canonicalRows actualModulus 2845 (.bnot 2844) := by core033_kernel_decide
theorem stats2845 : actualRows2845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2845=6276 := by core033_kernel_decide
theorem rows2846 : actualRows2846=WordField.canonicalRows actualModulus 2846 (.bxor 2843 2845) := by core033_kernel_decide
theorem stats2846 : actualRows2846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2846=7428 := by core033_kernel_decide
theorem rows2847 : actualRows2847=WordField.canonicalRows actualModulus 2847 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2847 : actualRows2847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2847=2892 := by core033_kernel_decide
theorem rows2848 : actualRows2848=WordField.canonicalRows actualModulus 2848 (.bxor 0 2847) := by core033_kernel_decide
theorem stats2848 : actualRows2848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2848=7428 := by core033_kernel_decide
theorem rows2849 : actualRows2849=WordField.canonicalRows actualModulus 2849 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2849 : actualRows2849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2849=2820 := by core033_kernel_decide
theorem rows2850 : actualRows2850=WordField.canonicalRows actualModulus 2850 (.bnot 2849) := by core033_kernel_decide
theorem stats2850 : actualRows2850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2850=6276 := by core033_kernel_decide
theorem rows2851 : actualRows2851=WordField.canonicalRows actualModulus 2851 (.badd 2848 2850) := by core033_kernel_decide
theorem stats2851 : actualRows2851.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2851=5388 := by core033_kernel_decide
theorem rows2852 : actualRows2852=WordField.canonicalRows actualModulus 2852 (.bnot 2851) := by core033_kernel_decide
theorem stats2852 : actualRows2852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2852=6276 := by core033_kernel_decide
theorem rows2853 : actualRows2853=WordField.canonicalRows actualModulus 2853 (.band 2846 2852) := by core033_kernel_decide
theorem stats2853 : actualRows2853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2853=5124 := by core033_kernel_decide
theorem rows2854 : actualRows2854=WordField.canonicalRows actualModulus 2854 (.bxor 2841 2853) := by core033_kernel_decide
theorem stats2854 : actualRows2854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2854=7428 := by core033_kernel_decide
theorem rows2855 : actualRows2855=WordField.canonicalRows actualModulus 2855 (.shr 2854 31) := by core033_kernel_decide
theorem stats2855 : actualRows2855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2855=2892 := by core033_kernel_decide
theorem rows2856 : actualRows2856=WordField.canonicalRows actualModulus 2856 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2856 : actualRows2856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2856=2892 := by core033_kernel_decide
theorem rows2857 : actualRows2857=WordField.canonicalRows actualModulus 2857 (.bxor 2855 2856) := by core033_kernel_decide
theorem stats2857 : actualRows2857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2857=7428 := by core033_kernel_decide
theorem rows2858 : actualRows2858=WordField.canonicalRows actualModulus 2858 (.bnot 2857) := by core033_kernel_decide
theorem stats2858 : actualRows2858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2858=6276 := by core033_kernel_decide
def partRows43 : List R1CS.Row := actualRows2795++actualRows2796++actualRows2797++actualRows2798++actualRows2799++actualRows2800++actualRows2801++actualRows2802++actualRows2803++actualRows2804++actualRows2805++actualRows2806++actualRows2807++actualRows2808++actualRows2809++actualRows2810++actualRows2811++actualRows2812++actualRows2813++actualRows2814++actualRows2815++actualRows2816++actualRows2817++actualRows2818++actualRows2819++actualRows2820++actualRows2821++actualRows2822++actualRows2823++actualRows2824++actualRows2825++actualRows2826++actualRows2827++actualRows2828++actualRows2829++actualRows2830++actualRows2831++actualRows2832++actualRows2833++actualRows2834++actualRows2835++actualRows2836++actualRows2837++actualRows2838++actualRows2839++actualRows2840++actualRows2841++actualRows2842++actualRows2843++actualRows2844++actualRows2845++actualRows2846++actualRows2847++actualRows2848++actualRows2849++actualRows2850++actualRows2851++actualRows2852++actualRows2853++actualRows2854++actualRows2855++actualRows2856++actualRows2857++actualRows2858
def partOps43 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 0 2795,.literal (BitVec.ofNat 32 0),.bnot 2797,.badd 2796 2798,.bnot 2799,.band 2794 2800,.bxor 2789 2801,.shr 2802 31,.literal (BitVec.ofNat 32 1),.bxor 2803 2804,.bnot 2805,.literal (BitVec.ofNat 32 1),.badd 2806 2807,.bnot 2808,.band 2809 845,.bxor 2784 2810,.literal (BitVec.ofNat 32 2),.bxor 0 2812,.literal (BitVec.ofNat 32 0),.bnot 2814,.band 2813 2815,.literal (BitVec.ofNat 32 2),.bxor 0 2817,.literal (BitVec.ofNat 32 0),.bnot 2819,.bxor 2818 2820,.literal (BitVec.ofNat 32 2),.bxor 0 2822,.literal (BitVec.ofNat 32 0),.bnot 2824,.badd 2823 2825,.bnot 2826,.band 2821 2827,.bxor 2816 2828,.shr 2829 31,.literal (BitVec.ofNat 32 1),.bxor 2830 2831,.bnot 2832,.literal (BitVec.ofNat 32 1),.badd 2833 2834,.band 2835 1034,.literal (BitVec.ofNat 32 2),.bxor 0 2837,.literal (BitVec.ofNat 32 0),.bnot 2839,.band 2838 2840,.literal (BitVec.ofNat 32 2),.bxor 0 2842,.literal (BitVec.ofNat 32 0),.bnot 2844,.bxor 2843 2845,.literal (BitVec.ofNat 32 2),.bxor 0 2847,.literal (BitVec.ofNat 32 0),.bnot 2849,.badd 2848 2850,.bnot 2851,.band 2846 2852,.bxor 2841 2853,.shr 2854 31,.literal (BitVec.ofNat 32 1),.bxor 2855 2856,.bnot 2857]
theorem partExact43 : partRows43=WordField.rows actualModulus 2795 partOps43 := by
  simp only [partRows43,partOps43,WordField.rows,rows2795,rows2796,rows2797,rows2798,rows2799,rows2800,rows2801,rows2802,rows2803,rows2804,rows2805,rows2806,rows2807,rows2808,rows2809,rows2810,rows2811,rows2812,rows2813,rows2814,rows2815,rows2816,rows2817,rows2818,rows2819,rows2820,rows2821,rows2822,rows2823,rows2824,rows2825,rows2826,rows2827,rows2828,rows2829,rows2830,rows2831,rows2832,rows2833,rows2834,rows2835,rows2836,rows2837,rows2838,rows2839,rows2840,rows2841,rows2842,rows2843,rows2844,rows2845,rows2846,rows2847,rows2848,rows2849,rows2850,rows2851,rows2852,rows2853,rows2854,rows2855,rows2856,rows2857,rows2858,List.append_assoc,List.append_nil]
theorem partLength43 : partOps43.length=64 := by decide
theorem partStats43 : partRows43.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows43=332640 := by
  simp only [partRows43,List.length_append,MatrixRowBlocks.rows_weight_append,stats2795.1,stats2795.2,stats2796.1,stats2796.2,stats2797.1,stats2797.2,stats2798.1,stats2798.2,stats2799.1,stats2799.2,stats2800.1,stats2800.2,stats2801.1,stats2801.2,stats2802.1,stats2802.2,stats2803.1,stats2803.2,stats2804.1,stats2804.2,stats2805.1,stats2805.2,stats2806.1,stats2806.2,stats2807.1,stats2807.2,stats2808.1,stats2808.2,stats2809.1,stats2809.2,stats2810.1,stats2810.2,stats2811.1,stats2811.2,stats2812.1,stats2812.2,stats2813.1,stats2813.2,stats2814.1,stats2814.2,stats2815.1,stats2815.2,stats2816.1,stats2816.2,stats2817.1,stats2817.2,stats2818.1,stats2818.2,stats2819.1,stats2819.2,stats2820.1,stats2820.2,stats2821.1,stats2821.2,stats2822.1,stats2822.2,stats2823.1,stats2823.2,stats2824.1,stats2824.2,stats2825.1,stats2825.2,stats2826.1,stats2826.2,stats2827.1,stats2827.2,stats2828.1,stats2828.2,stats2829.1,stats2829.2,stats2830.1,stats2830.2,stats2831.1,stats2831.2,stats2832.1,stats2832.2,stats2833.1,stats2833.2,stats2834.1,stats2834.2,stats2835.1,stats2835.2,stats2836.1,stats2836.2,stats2837.1,stats2837.2,stats2838.1,stats2838.2,stats2839.1,stats2839.2,stats2840.1,stats2840.2,stats2841.1,stats2841.2,stats2842.1,stats2842.2,stats2843.1,stats2843.2,stats2844.1,stats2844.2,stats2845.1,stats2845.2,stats2846.1,stats2846.2,stats2847.1,stats2847.2,stats2848.1,stats2848.2,stats2849.1,stats2849.2,stats2850.1,stats2850.2,stats2851.1,stats2851.2,stats2852.1,stats2852.2,stats2853.1,stats2853.2,stats2854.1,stats2854.2,stats2855.1,stats2855.2,stats2856.1,stats2856.2,stats2857.1,stats2857.2,stats2858.1,stats2858.2]
  decide
end FrameHashControllerCheckedRows
