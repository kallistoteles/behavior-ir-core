import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData44
import SharedFrameInstructionMatrixData45
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2859 : actualRows2859=WordField.canonicalRows actualModulus 2859 (.rotr 2855 25) := by core033_kernel_decide
theorem stats2859 : actualRows2859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2859=5124 := by core033_kernel_decide
theorem rows2860 : actualRows2860=WordField.canonicalRows actualModulus 2860 (.bxor 2858 2859) := by core033_kernel_decide
theorem stats2860 : actualRows2860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2860=7428 := by core033_kernel_decide
theorem rows2861 : actualRows2861=WordField.canonicalRows actualModulus 2861 (.badd 2777 2860) := by core033_kernel_decide
theorem stats2861 : actualRows2861.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2861=5388 := by core033_kernel_decide
theorem rows2862 : actualRows2862=WordField.canonicalRows actualModulus 2862 (.band 2855 2829) := by core033_kernel_decide
theorem stats2862 : actualRows2862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2862=5124 := by core033_kernel_decide
theorem rows2863 : actualRows2863=WordField.canonicalRows actualModulus 2863 (.bnot 2855) := by core033_kernel_decide
theorem stats2863 : actualRows2863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2863=6276 := by core033_kernel_decide
theorem rows2864 : actualRows2864=WordField.canonicalRows actualModulus 2864 (.band 2863 2803) := by core033_kernel_decide
theorem stats2864 : actualRows2864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2864=5124 := by core033_kernel_decide
theorem rows2865 : actualRows2865=WordField.canonicalRows actualModulus 2865 (.bxor 2862 2864) := by core033_kernel_decide
theorem stats2865 : actualRows2865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2865=7428 := by core033_kernel_decide
theorem rows2866 : actualRows2866=WordField.canonicalRows actualModulus 2866 (.badd 2861 2865) := by core033_kernel_decide
theorem stats2866 : actualRows2866.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2866=5388 := by core033_kernel_decide
theorem rows2867 : actualRows2867=WordField.canonicalRows actualModulus 2867 (.literal (BitVec.ofNat 32 3210313671)) := by core033_kernel_decide
theorem stats2867 : actualRows2867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2867=4476 := by core033_kernel_decide
theorem rows2868 : actualRows2868=WordField.canonicalRows actualModulus 2868 (.badd 2866 2867) := by core033_kernel_decide
theorem stats2868 : actualRows2868.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2868=5388 := by core033_kernel_decide
theorem rows2869 : actualRows2869=WordField.canonicalRows actualModulus 2869 (.badd 2868 1684) := by core033_kernel_decide
theorem stats2869 : actualRows2869.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2869=5388 := by core033_kernel_decide
theorem rows2870 : actualRows2870=WordField.canonicalRows actualModulus 2870 (.rotr 2854 2) := by core033_kernel_decide
theorem stats2870 : actualRows2870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2870=5124 := by core033_kernel_decide
theorem rows2871 : actualRows2871=WordField.canonicalRows actualModulus 2871 (.rotr 2854 13) := by core033_kernel_decide
theorem stats2871 : actualRows2871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2871=5124 := by core033_kernel_decide
theorem rows2872 : actualRows2872=WordField.canonicalRows actualModulus 2872 (.bxor 2870 2871) := by core033_kernel_decide
theorem stats2872 : actualRows2872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2872=7428 := by core033_kernel_decide
theorem rows2873 : actualRows2873=WordField.canonicalRows actualModulus 2873 (.rotr 2854 22) := by core033_kernel_decide
theorem stats2873 : actualRows2873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2873=5124 := by core033_kernel_decide
theorem rows2874 : actualRows2874=WordField.canonicalRows actualModulus 2874 (.bxor 2872 2873) := by core033_kernel_decide
theorem stats2874 : actualRows2874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2874=7428 := by core033_kernel_decide
theorem rows2875 : actualRows2875=WordField.canonicalRows actualModulus 2875 (.band 2854 2828) := by core033_kernel_decide
theorem stats2875 : actualRows2875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2875=5124 := by core033_kernel_decide
theorem rows2876 : actualRows2876=WordField.canonicalRows actualModulus 2876 (.band 2854 2802) := by core033_kernel_decide
theorem stats2876 : actualRows2876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2876=5124 := by core033_kernel_decide
theorem rows2877 : actualRows2877=WordField.canonicalRows actualModulus 2877 (.bxor 2875 2876) := by core033_kernel_decide
theorem stats2877 : actualRows2877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2877=7428 := by core033_kernel_decide
theorem rows2878 : actualRows2878=WordField.canonicalRows actualModulus 2878 (.bxor 2877 2849) := by core033_kernel_decide
theorem stats2878 : actualRows2878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2878=7428 := by core033_kernel_decide
theorem rows2879 : actualRows2879=WordField.canonicalRows actualModulus 2879 (.badd 2874 2878) := by core033_kernel_decide
theorem stats2879 : actualRows2879.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2879=5388 := by core033_kernel_decide
theorem rows2880 : actualRows2880=WordField.canonicalRows actualModulus 2880 (.badd 2869 2879) := by core033_kernel_decide
theorem stats2880 : actualRows2880.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2880=5388 := by core033_kernel_decide
theorem rows2881 : actualRows2881=WordField.canonicalRows actualModulus 2881 (.badd 2776 2869) := by core033_kernel_decide
theorem stats2881 : actualRows2881.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2881=5388 := by core033_kernel_decide
theorem rows2882 : actualRows2882=WordField.canonicalRows actualModulus 2882 (.rotr 2881 6) := by core033_kernel_decide
theorem stats2882 : actualRows2882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2882=5124 := by core033_kernel_decide
theorem rows2883 : actualRows2883=WordField.canonicalRows actualModulus 2883 (.rotr 2881 11) := by core033_kernel_decide
theorem stats2883 : actualRows2883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2883=5124 := by core033_kernel_decide
theorem rows2884 : actualRows2884=WordField.canonicalRows actualModulus 2884 (.bxor 2882 2883) := by core033_kernel_decide
theorem stats2884 : actualRows2884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2884=7428 := by core033_kernel_decide
theorem rows2885 : actualRows2885=WordField.canonicalRows actualModulus 2885 (.rotr 2881 25) := by core033_kernel_decide
theorem stats2885 : actualRows2885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2885=5124 := by core033_kernel_decide
theorem rows2886 : actualRows2886=WordField.canonicalRows actualModulus 2886 (.bxor 2884 2885) := by core033_kernel_decide
theorem stats2886 : actualRows2886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2886=7428 := by core033_kernel_decide
theorem rows2887 : actualRows2887=WordField.canonicalRows actualModulus 2887 (.badd 2803 2886) := by core033_kernel_decide
theorem stats2887 : actualRows2887.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2887=5388 := by core033_kernel_decide
theorem rows2888 : actualRows2888=WordField.canonicalRows actualModulus 2888 (.band 2881 2855) := by core033_kernel_decide
theorem stats2888 : actualRows2888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2888=5124 := by core033_kernel_decide
theorem rows2889 : actualRows2889=WordField.canonicalRows actualModulus 2889 (.bnot 2881) := by core033_kernel_decide
theorem stats2889 : actualRows2889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2889=6276 := by core033_kernel_decide
theorem rows2890 : actualRows2890=WordField.canonicalRows actualModulus 2890 (.band 2889 2829) := by core033_kernel_decide
theorem stats2890 : actualRows2890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2890=5124 := by core033_kernel_decide
theorem rows2891 : actualRows2891=WordField.canonicalRows actualModulus 2891 (.bxor 2888 2890) := by core033_kernel_decide
theorem stats2891 : actualRows2891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2891=7428 := by core033_kernel_decide
theorem rows2892 : actualRows2892=WordField.canonicalRows actualModulus 2892 (.badd 2887 2891) := by core033_kernel_decide
theorem stats2892 : actualRows2892.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2892=5388 := by core033_kernel_decide
theorem rows2893 : actualRows2893=WordField.canonicalRows actualModulus 2893 (.literal (BitVec.ofNat 32 3336571891)) := by core033_kernel_decide
theorem stats2893 : actualRows2893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2893=3972 := by core033_kernel_decide
theorem rows2894 : actualRows2894=WordField.canonicalRows actualModulus 2894 (.badd 2892 2893) := by core033_kernel_decide
theorem stats2894 : actualRows2894.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2894=5388 := by core033_kernel_decide
theorem rows2895 : actualRows2895=WordField.canonicalRows actualModulus 2895 (.badd 2894 1697) := by core033_kernel_decide
theorem stats2895 : actualRows2895.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2895=5388 := by core033_kernel_decide
theorem rows2896 : actualRows2896=WordField.canonicalRows actualModulus 2896 (.rotr 2880 2) := by core033_kernel_decide
theorem stats2896 : actualRows2896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2896=5124 := by core033_kernel_decide
theorem rows2897 : actualRows2897=WordField.canonicalRows actualModulus 2897 (.rotr 2880 13) := by core033_kernel_decide
theorem stats2897 : actualRows2897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2897=5124 := by core033_kernel_decide
theorem rows2898 : actualRows2898=WordField.canonicalRows actualModulus 2898 (.bxor 2896 2897) := by core033_kernel_decide
theorem stats2898 : actualRows2898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2898=7428 := by core033_kernel_decide
theorem rows2899 : actualRows2899=WordField.canonicalRows actualModulus 2899 (.rotr 2880 22) := by core033_kernel_decide
theorem stats2899 : actualRows2899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2899=5124 := by core033_kernel_decide
theorem rows2900 : actualRows2900=WordField.canonicalRows actualModulus 2900 (.bxor 2898 2899) := by core033_kernel_decide
theorem stats2900 : actualRows2900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2900=7428 := by core033_kernel_decide
theorem rows2901 : actualRows2901=WordField.canonicalRows actualModulus 2901 (.band 2880 2854) := by core033_kernel_decide
theorem stats2901 : actualRows2901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2901=5124 := by core033_kernel_decide
theorem rows2902 : actualRows2902=WordField.canonicalRows actualModulus 2902 (.band 2880 2828) := by core033_kernel_decide
theorem stats2902 : actualRows2902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2902=5124 := by core033_kernel_decide
theorem rows2903 : actualRows2903=WordField.canonicalRows actualModulus 2903 (.bxor 2901 2902) := by core033_kernel_decide
theorem stats2903 : actualRows2903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2903=7428 := by core033_kernel_decide
theorem rows2904 : actualRows2904=WordField.canonicalRows actualModulus 2904 (.bxor 2903 2875) := by core033_kernel_decide
theorem stats2904 : actualRows2904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2904=7428 := by core033_kernel_decide
theorem rows2905 : actualRows2905=WordField.canonicalRows actualModulus 2905 (.badd 2900 2904) := by core033_kernel_decide
theorem stats2905 : actualRows2905.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2905=5388 := by core033_kernel_decide
theorem rows2906 : actualRows2906=WordField.canonicalRows actualModulus 2906 (.badd 2895 2905) := by core033_kernel_decide
theorem stats2906 : actualRows2906.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2906=5388 := by core033_kernel_decide
theorem rows2907 : actualRows2907=WordField.canonicalRows actualModulus 2907 (.badd 2802 2895) := by core033_kernel_decide
theorem stats2907 : actualRows2907.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2907=5388 := by core033_kernel_decide
theorem rows2908 : actualRows2908=WordField.canonicalRows actualModulus 2908 (.rotr 2907 6) := by core033_kernel_decide
theorem stats2908 : actualRows2908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2908=5124 := by core033_kernel_decide
theorem rows2909 : actualRows2909=WordField.canonicalRows actualModulus 2909 (.rotr 2907 11) := by core033_kernel_decide
theorem stats2909 : actualRows2909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2909=5124 := by core033_kernel_decide
theorem rows2910 : actualRows2910=WordField.canonicalRows actualModulus 2910 (.bxor 2908 2909) := by core033_kernel_decide
theorem stats2910 : actualRows2910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2910=7428 := by core033_kernel_decide
theorem rows2911 : actualRows2911=WordField.canonicalRows actualModulus 2911 (.rotr 2907 25) := by core033_kernel_decide
theorem stats2911 : actualRows2911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2911=5124 := by core033_kernel_decide
theorem rows2912 : actualRows2912=WordField.canonicalRows actualModulus 2912 (.bxor 2910 2911) := by core033_kernel_decide
theorem stats2912 : actualRows2912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2912=7428 := by core033_kernel_decide
theorem rows2913 : actualRows2913=WordField.canonicalRows actualModulus 2913 (.badd 2829 2912) := by core033_kernel_decide
theorem stats2913 : actualRows2913.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2913=5388 := by core033_kernel_decide
theorem rows2914 : actualRows2914=WordField.canonicalRows actualModulus 2914 (.band 2907 2881) := by core033_kernel_decide
theorem stats2914 : actualRows2914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2914=5124 := by core033_kernel_decide
theorem rows2915 : actualRows2915=WordField.canonicalRows actualModulus 2915 (.bnot 2907) := by core033_kernel_decide
theorem stats2915 : actualRows2915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2915=6276 := by core033_kernel_decide
theorem rows2916 : actualRows2916=WordField.canonicalRows actualModulus 2916 (.band 2915 2855) := by core033_kernel_decide
theorem stats2916 : actualRows2916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2916=5124 := by core033_kernel_decide
theorem rows2917 : actualRows2917=WordField.canonicalRows actualModulus 2917 (.bxor 2914 2916) := by core033_kernel_decide
theorem stats2917 : actualRows2917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2917=7428 := by core033_kernel_decide
theorem rows2918 : actualRows2918=WordField.canonicalRows actualModulus 2918 (.badd 2913 2917) := by core033_kernel_decide
theorem stats2918 : actualRows2918.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2918=5388 := by core033_kernel_decide
theorem rows2919 : actualRows2919=WordField.canonicalRows actualModulus 2919 (.literal (BitVec.ofNat 32 3584528711)) := by core033_kernel_decide
theorem stats2919 : actualRows2919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2919=4044 := by core033_kernel_decide
theorem rows2920 : actualRows2920=WordField.canonicalRows actualModulus 2920 (.badd 2918 2919) := by core033_kernel_decide
theorem stats2920 : actualRows2920.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2920=5388 := by core033_kernel_decide
theorem rows2921 : actualRows2921=WordField.canonicalRows actualModulus 2921 (.badd 2920 1710) := by core033_kernel_decide
theorem stats2921 : actualRows2921.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2921=5388 := by core033_kernel_decide
theorem rows2922 : actualRows2922=WordField.canonicalRows actualModulus 2922 (.rotr 2906 2) := by core033_kernel_decide
theorem stats2922 : actualRows2922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2922=5124 := by core033_kernel_decide
def partRows44 : List R1CS.Row := actualRows2859++actualRows2860++actualRows2861++actualRows2862++actualRows2863++actualRows2864++actualRows2865++actualRows2866++actualRows2867++actualRows2868++actualRows2869++actualRows2870++actualRows2871++actualRows2872++actualRows2873++actualRows2874++actualRows2875++actualRows2876++actualRows2877++actualRows2878++actualRows2879++actualRows2880++actualRows2881++actualRows2882++actualRows2883++actualRows2884++actualRows2885++actualRows2886++actualRows2887++actualRows2888++actualRows2889++actualRows2890++actualRows2891++actualRows2892++actualRows2893++actualRows2894++actualRows2895++actualRows2896++actualRows2897++actualRows2898++actualRows2899++actualRows2900++actualRows2901++actualRows2902++actualRows2903++actualRows2904++actualRows2905++actualRows2906++actualRows2907++actualRows2908++actualRows2909++actualRows2910++actualRows2911++actualRows2912++actualRows2913++actualRows2914++actualRows2915++actualRows2916++actualRows2917++actualRows2918++actualRows2919++actualRows2920++actualRows2921++actualRows2922
def partOps44 : List WordIR.Op := [.rotr 2855 25,.bxor 2858 2859,.badd 2777 2860,.band 2855 2829,.bnot 2855,.band 2863 2803,.bxor 2862 2864,.badd 2861 2865,.literal (BitVec.ofNat 32 3210313671),.badd 2866 2867,.badd 2868 1684,.rotr 2854 2,.rotr 2854 13,.bxor 2870 2871,.rotr 2854 22,.bxor 2872 2873,.band 2854 2828,.band 2854 2802,.bxor 2875 2876,.bxor 2877 2849,.badd 2874 2878,.badd 2869 2879,.badd 2776 2869,.rotr 2881 6,.rotr 2881 11,.bxor 2882 2883,.rotr 2881 25,.bxor 2884 2885,.badd 2803 2886,.band 2881 2855,.bnot 2881,.band 2889 2829,.bxor 2888 2890,.badd 2887 2891,.literal (BitVec.ofNat 32 3336571891),.badd 2892 2893,.badd 2894 1697,.rotr 2880 2,.rotr 2880 13,.bxor 2896 2897,.rotr 2880 22,.bxor 2898 2899,.band 2880 2854,.band 2880 2828,.bxor 2901 2902,.bxor 2903 2875,.badd 2900 2904,.badd 2895 2905,.badd 2802 2895,.rotr 2907 6,.rotr 2907 11,.bxor 2908 2909,.rotr 2907 25,.bxor 2910 2911,.badd 2829 2912,.band 2907 2881,.bnot 2907,.band 2915 2855,.bxor 2914 2916,.badd 2913 2917,.literal (BitVec.ofNat 32 3584528711),.badd 2918 2919,.badd 2920 1710,.rotr 2906 2]
theorem partExact44 : partRows44=WordField.rows actualModulus 2859 partOps44 := by
  simp only [partRows44,partOps44,WordField.rows,rows2859,rows2860,rows2861,rows2862,rows2863,rows2864,rows2865,rows2866,rows2867,rows2868,rows2869,rows2870,rows2871,rows2872,rows2873,rows2874,rows2875,rows2876,rows2877,rows2878,rows2879,rows2880,rows2881,rows2882,rows2883,rows2884,rows2885,rows2886,rows2887,rows2888,rows2889,rows2890,rows2891,rows2892,rows2893,rows2894,rows2895,rows2896,rows2897,rows2898,rows2899,rows2900,rows2901,rows2902,rows2903,rows2904,rows2905,rows2906,rows2907,rows2908,rows2909,rows2910,rows2911,rows2912,rows2913,rows2914,rows2915,rows2916,rows2917,rows2918,rows2919,rows2920,rows2921,rows2922,List.append_assoc,List.append_nil]
theorem partLength44 : partOps44.length=64 := by decide
theorem partStats44 : partRows44.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows44=370128 := by
  simp only [partRows44,List.length_append,MatrixRowBlocks.rows_weight_append,stats2859.1,stats2859.2,stats2860.1,stats2860.2,stats2861.1,stats2861.2,stats2862.1,stats2862.2,stats2863.1,stats2863.2,stats2864.1,stats2864.2,stats2865.1,stats2865.2,stats2866.1,stats2866.2,stats2867.1,stats2867.2,stats2868.1,stats2868.2,stats2869.1,stats2869.2,stats2870.1,stats2870.2,stats2871.1,stats2871.2,stats2872.1,stats2872.2,stats2873.1,stats2873.2,stats2874.1,stats2874.2,stats2875.1,stats2875.2,stats2876.1,stats2876.2,stats2877.1,stats2877.2,stats2878.1,stats2878.2,stats2879.1,stats2879.2,stats2880.1,stats2880.2,stats2881.1,stats2881.2,stats2882.1,stats2882.2,stats2883.1,stats2883.2,stats2884.1,stats2884.2,stats2885.1,stats2885.2,stats2886.1,stats2886.2,stats2887.1,stats2887.2,stats2888.1,stats2888.2,stats2889.1,stats2889.2,stats2890.1,stats2890.2,stats2891.1,stats2891.2,stats2892.1,stats2892.2,stats2893.1,stats2893.2,stats2894.1,stats2894.2,stats2895.1,stats2895.2,stats2896.1,stats2896.2,stats2897.1,stats2897.2,stats2898.1,stats2898.2,stats2899.1,stats2899.2,stats2900.1,stats2900.2,stats2901.1,stats2901.2,stats2902.1,stats2902.2,stats2903.1,stats2903.2,stats2904.1,stats2904.2,stats2905.1,stats2905.2,stats2906.1,stats2906.2,stats2907.1,stats2907.2,stats2908.1,stats2908.2,stats2909.1,stats2909.2,stats2910.1,stats2910.2,stats2911.1,stats2911.2,stats2912.1,stats2912.2,stats2913.1,stats2913.2,stats2914.1,stats2914.2,stats2915.1,stats2915.2,stats2916.1,stats2916.2,stats2917.1,stats2917.2,stats2918.1,stats2918.2,stats2919.1,stats2919.2,stats2920.1,stats2920.2,stats2921.1,stats2921.2,stats2922.1,stats2922.2]
  decide
end SharedFrameCheckedRows
