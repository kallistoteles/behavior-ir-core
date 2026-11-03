import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData44
import AuthenticatedBranchRoundInstructionMatrixData45
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2870 : actualRows2870=WordField.canonicalRows actualModulus 2870 (.band 2865 2869) := by core033_kernel_decide
theorem stats2870 : actualRows2870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2870=5124 := by core033_kernel_decide
theorem rows2871 : actualRows2871=WordField.canonicalRows actualModulus 2871 (.bxor 2862 2870) := by core033_kernel_decide
theorem stats2871 : actualRows2871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2871=7428 := by core033_kernel_decide
theorem rows2872 : actualRows2872=WordField.canonicalRows actualModulus 2872 (.shr 2871 31) := by core033_kernel_decide
theorem stats2872 : actualRows2872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2872=2892 := by core033_kernel_decide
theorem rows2873 : actualRows2873=WordField.canonicalRows actualModulus 2873 (.band 2859 2872) := by core033_kernel_decide
theorem stats2873 : actualRows2873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2873=5124 := by core033_kernel_decide
theorem rows2874 : actualRows2874=WordField.canonicalRows actualModulus 2874 (.shr 1766 8) := by core033_kernel_decide
theorem stats2874 : actualRows2874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2874=4548 := by core033_kernel_decide
theorem rows2875 : actualRows2875=WordField.canonicalRows actualModulus 2875 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2875 : actualRows2875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2875=2820 := by core033_kernel_decide
theorem rows2876 : actualRows2876=WordField.canonicalRows actualModulus 2876 (.bnot 2875) := by core033_kernel_decide
theorem stats2876 : actualRows2876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2876=6276 := by core033_kernel_decide
theorem rows2877 : actualRows2877=WordField.canonicalRows actualModulus 2877 (.band 2874 2876) := by core033_kernel_decide
theorem stats2877 : actualRows2877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2877=5124 := by core033_kernel_decide
theorem rows2878 : actualRows2878=WordField.canonicalRows actualModulus 2878 (.shr 1766 8) := by core033_kernel_decide
theorem stats2878 : actualRows2878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2878=4548 := by core033_kernel_decide
theorem rows2879 : actualRows2879=WordField.canonicalRows actualModulus 2879 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2879 : actualRows2879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2879=2820 := by core033_kernel_decide
theorem rows2880 : actualRows2880=WordField.canonicalRows actualModulus 2880 (.bnot 2879) := by core033_kernel_decide
theorem stats2880 : actualRows2880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2880=6276 := by core033_kernel_decide
theorem rows2881 : actualRows2881=WordField.canonicalRows actualModulus 2881 (.bxor 2878 2880) := by core033_kernel_decide
theorem stats2881 : actualRows2881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2881=7428 := by core033_kernel_decide
theorem rows2882 : actualRows2882=WordField.canonicalRows actualModulus 2882 (.shr 1766 8) := by core033_kernel_decide
theorem stats2882 : actualRows2882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2882=4548 := by core033_kernel_decide
theorem rows2883 : actualRows2883=WordField.canonicalRows actualModulus 2883 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2883 : actualRows2883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2883=2820 := by core033_kernel_decide
theorem rows2884 : actualRows2884=WordField.canonicalRows actualModulus 2884 (.bnot 2883) := by core033_kernel_decide
theorem stats2884 : actualRows2884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2884=6276 := by core033_kernel_decide
theorem rows2885 : actualRows2885=WordField.canonicalRows actualModulus 2885 (.badd 2882 2884) := by core033_kernel_decide
theorem stats2885 : actualRows2885.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2885=5388 := by core033_kernel_decide
theorem rows2886 : actualRows2886=WordField.canonicalRows actualModulus 2886 (.bnot 2885) := by core033_kernel_decide
theorem stats2886 : actualRows2886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2886=6276 := by core033_kernel_decide
theorem rows2887 : actualRows2887=WordField.canonicalRows actualModulus 2887 (.band 2881 2886) := by core033_kernel_decide
theorem stats2887 : actualRows2887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2887=5124 := by core033_kernel_decide
theorem rows2888 : actualRows2888=WordField.canonicalRows actualModulus 2888 (.bxor 2877 2887) := by core033_kernel_decide
theorem stats2888 : actualRows2888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2888=7428 := by core033_kernel_decide
theorem rows2889 : actualRows2889=WordField.canonicalRows actualModulus 2889 (.shr 2888 31) := by core033_kernel_decide
theorem stats2889 : actualRows2889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2889=2892 := by core033_kernel_decide
theorem rows2890 : actualRows2890=WordField.canonicalRows actualModulus 2890 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2890 : actualRows2890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2890=2892 := by core033_kernel_decide
theorem rows2891 : actualRows2891=WordField.canonicalRows actualModulus 2891 (.bxor 2889 2890) := by core033_kernel_decide
theorem stats2891 : actualRows2891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2891=7428 := by core033_kernel_decide
theorem rows2892 : actualRows2892=WordField.canonicalRows actualModulus 2892 (.shr 2472 1) := by core033_kernel_decide
theorem stats2892 : actualRows2892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2892=5052 := by core033_kernel_decide
theorem rows2893 : actualRows2893=WordField.canonicalRows actualModulus 2893 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2893 : actualRows2893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2893=2820 := by core033_kernel_decide
theorem rows2894 : actualRows2894=WordField.canonicalRows actualModulus 2894 (.bnot 2893) := by core033_kernel_decide
theorem stats2894 : actualRows2894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2894=6276 := by core033_kernel_decide
theorem rows2895 : actualRows2895=WordField.canonicalRows actualModulus 2895 (.band 2892 2894) := by core033_kernel_decide
theorem stats2895 : actualRows2895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2895=5124 := by core033_kernel_decide
theorem rows2896 : actualRows2896=WordField.canonicalRows actualModulus 2896 (.shr 2472 1) := by core033_kernel_decide
theorem stats2896 : actualRows2896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2896=5052 := by core033_kernel_decide
theorem rows2897 : actualRows2897=WordField.canonicalRows actualModulus 2897 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2897 : actualRows2897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2897=2820 := by core033_kernel_decide
theorem rows2898 : actualRows2898=WordField.canonicalRows actualModulus 2898 (.bnot 2897) := by core033_kernel_decide
theorem stats2898 : actualRows2898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2898=6276 := by core033_kernel_decide
theorem rows2899 : actualRows2899=WordField.canonicalRows actualModulus 2899 (.bxor 2896 2898) := by core033_kernel_decide
theorem stats2899 : actualRows2899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2899=7428 := by core033_kernel_decide
theorem rows2900 : actualRows2900=WordField.canonicalRows actualModulus 2900 (.shr 2472 1) := by core033_kernel_decide
theorem stats2900 : actualRows2900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2900=5052 := by core033_kernel_decide
theorem rows2901 : actualRows2901=WordField.canonicalRows actualModulus 2901 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2901 : actualRows2901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2901=2820 := by core033_kernel_decide
theorem rows2902 : actualRows2902=WordField.canonicalRows actualModulus 2902 (.bnot 2901) := by core033_kernel_decide
theorem stats2902 : actualRows2902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2902=6276 := by core033_kernel_decide
theorem rows2903 : actualRows2903=WordField.canonicalRows actualModulus 2903 (.badd 2900 2902) := by core033_kernel_decide
theorem stats2903 : actualRows2903.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2903=5388 := by core033_kernel_decide
theorem rows2904 : actualRows2904=WordField.canonicalRows actualModulus 2904 (.bnot 2903) := by core033_kernel_decide
theorem stats2904 : actualRows2904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2904=6276 := by core033_kernel_decide
theorem rows2905 : actualRows2905=WordField.canonicalRows actualModulus 2905 (.band 2899 2904) := by core033_kernel_decide
theorem stats2905 : actualRows2905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2905=5124 := by core033_kernel_decide
theorem rows2906 : actualRows2906=WordField.canonicalRows actualModulus 2906 (.bxor 2895 2905) := by core033_kernel_decide
theorem stats2906 : actualRows2906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2906=7428 := by core033_kernel_decide
theorem rows2907 : actualRows2907=WordField.canonicalRows actualModulus 2907 (.shr 2906 31) := by core033_kernel_decide
theorem stats2907 : actualRows2907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2907=2892 := by core033_kernel_decide
theorem rows2908 : actualRows2908=WordField.canonicalRows actualModulus 2908 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2908 : actualRows2908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2908=2892 := by core033_kernel_decide
theorem rows2909 : actualRows2909=WordField.canonicalRows actualModulus 2909 (.bxor 2907 2908) := by core033_kernel_decide
theorem stats2909 : actualRows2909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2909=7428 := by core033_kernel_decide
theorem rows2910 : actualRows2910=WordField.canonicalRows actualModulus 2910 (.shr 2473 1) := by core033_kernel_decide
theorem stats2910 : actualRows2910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2910=5052 := by core033_kernel_decide
theorem rows2911 : actualRows2911=WordField.canonicalRows actualModulus 2911 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2911 : actualRows2911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2911=2820 := by core033_kernel_decide
theorem rows2912 : actualRows2912=WordField.canonicalRows actualModulus 2912 (.bnot 2911) := by core033_kernel_decide
theorem stats2912 : actualRows2912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2912=6276 := by core033_kernel_decide
theorem rows2913 : actualRows2913=WordField.canonicalRows actualModulus 2913 (.band 2910 2912) := by core033_kernel_decide
theorem stats2913 : actualRows2913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2913=5124 := by core033_kernel_decide
theorem rows2914 : actualRows2914=WordField.canonicalRows actualModulus 2914 (.shr 2473 1) := by core033_kernel_decide
theorem stats2914 : actualRows2914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2914=5052 := by core033_kernel_decide
theorem rows2915 : actualRows2915=WordField.canonicalRows actualModulus 2915 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2915 : actualRows2915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2915=2820 := by core033_kernel_decide
theorem rows2916 : actualRows2916=WordField.canonicalRows actualModulus 2916 (.bnot 2915) := by core033_kernel_decide
theorem stats2916 : actualRows2916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2916=6276 := by core033_kernel_decide
theorem rows2917 : actualRows2917=WordField.canonicalRows actualModulus 2917 (.bxor 2914 2916) := by core033_kernel_decide
theorem stats2917 : actualRows2917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2917=7428 := by core033_kernel_decide
theorem rows2918 : actualRows2918=WordField.canonicalRows actualModulus 2918 (.shr 2473 1) := by core033_kernel_decide
theorem stats2918 : actualRows2918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2918=5052 := by core033_kernel_decide
theorem rows2919 : actualRows2919=WordField.canonicalRows actualModulus 2919 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2919 : actualRows2919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2919=2820 := by core033_kernel_decide
theorem rows2920 : actualRows2920=WordField.canonicalRows actualModulus 2920 (.bnot 2919) := by core033_kernel_decide
theorem stats2920 : actualRows2920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2920=6276 := by core033_kernel_decide
theorem rows2921 : actualRows2921=WordField.canonicalRows actualModulus 2921 (.badd 2918 2920) := by core033_kernel_decide
theorem stats2921 : actualRows2921.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2921=5388 := by core033_kernel_decide
theorem rows2922 : actualRows2922=WordField.canonicalRows actualModulus 2922 (.bnot 2921) := by core033_kernel_decide
theorem stats2922 : actualRows2922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2922=6276 := by core033_kernel_decide
theorem rows2923 : actualRows2923=WordField.canonicalRows actualModulus 2923 (.band 2917 2922) := by core033_kernel_decide
theorem stats2923 : actualRows2923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2923=5124 := by core033_kernel_decide
theorem rows2924 : actualRows2924=WordField.canonicalRows actualModulus 2924 (.bxor 2913 2923) := by core033_kernel_decide
theorem stats2924 : actualRows2924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2924=7428 := by core033_kernel_decide
theorem rows2925 : actualRows2925=WordField.canonicalRows actualModulus 2925 (.shr 2924 31) := by core033_kernel_decide
theorem stats2925 : actualRows2925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2925=2892 := by core033_kernel_decide
theorem rows2926 : actualRows2926=WordField.canonicalRows actualModulus 2926 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2926 : actualRows2926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2926=2892 := by core033_kernel_decide
theorem rows2927 : actualRows2927=WordField.canonicalRows actualModulus 2927 (.bxor 2925 2926) := by core033_kernel_decide
theorem stats2927 : actualRows2927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2927=7428 := by core033_kernel_decide
theorem rows2928 : actualRows2928=WordField.canonicalRows actualModulus 2928 (.badd 2168 2288) := by core033_kernel_decide
theorem stats2928 : actualRows2928.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2928=5388 := by core033_kernel_decide
theorem rows2929 : actualRows2929=WordField.canonicalRows actualModulus 2929 (.bxor 2928 2337) := by core033_kernel_decide
theorem stats2929 : actualRows2929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2929=7428 := by core033_kernel_decide
theorem rows2930 : actualRows2930=WordField.canonicalRows actualModulus 2930 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2930 : actualRows2930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2930=2820 := by core033_kernel_decide
theorem rows2931 : actualRows2931=WordField.canonicalRows actualModulus 2931 (.bnot 2930) := by core033_kernel_decide
theorem stats2931 : actualRows2931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2931=6276 := by core033_kernel_decide
theorem rows2932 : actualRows2932=WordField.canonicalRows actualModulus 2932 (.band 2929 2931) := by core033_kernel_decide
theorem stats2932 : actualRows2932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2932=5124 := by core033_kernel_decide
theorem rows2933 : actualRows2933=WordField.canonicalRows actualModulus 2933 (.badd 2168 2288) := by core033_kernel_decide
theorem stats2933 : actualRows2933.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2933=5388 := by core033_kernel_decide
def partRows43 : List R1CS.Row := actualRows2870++actualRows2871++actualRows2872++actualRows2873++actualRows2874++actualRows2875++actualRows2876++actualRows2877++actualRows2878++actualRows2879++actualRows2880++actualRows2881++actualRows2882++actualRows2883++actualRows2884++actualRows2885++actualRows2886++actualRows2887++actualRows2888++actualRows2889++actualRows2890++actualRows2891++actualRows2892++actualRows2893++actualRows2894++actualRows2895++actualRows2896++actualRows2897++actualRows2898++actualRows2899++actualRows2900++actualRows2901++actualRows2902++actualRows2903++actualRows2904++actualRows2905++actualRows2906++actualRows2907++actualRows2908++actualRows2909++actualRows2910++actualRows2911++actualRows2912++actualRows2913++actualRows2914++actualRows2915++actualRows2916++actualRows2917++actualRows2918++actualRows2919++actualRows2920++actualRows2921++actualRows2922++actualRows2923++actualRows2924++actualRows2925++actualRows2926++actualRows2927++actualRows2928++actualRows2929++actualRows2930++actualRows2931++actualRows2932++actualRows2933
def partOps43 : List WordIR.Op := [.band 2865 2869,.bxor 2862 2870,.shr 2871 31,.band 2859 2872,.shr 1766 8,.literal (BitVec.ofNat 32 0),.bnot 2875,.band 2874 2876,.shr 1766 8,.literal (BitVec.ofNat 32 0),.bnot 2879,.bxor 2878 2880,.shr 1766 8,.literal (BitVec.ofNat 32 0),.bnot 2883,.badd 2882 2884,.bnot 2885,.band 2881 2886,.bxor 2877 2887,.shr 2888 31,.literal (BitVec.ofNat 32 1),.bxor 2889 2890,.shr 2472 1,.literal (BitVec.ofNat 32 0),.bnot 2893,.band 2892 2894,.shr 2472 1,.literal (BitVec.ofNat 32 0),.bnot 2897,.bxor 2896 2898,.shr 2472 1,.literal (BitVec.ofNat 32 0),.bnot 2901,.badd 2900 2902,.bnot 2903,.band 2899 2904,.bxor 2895 2905,.shr 2906 31,.literal (BitVec.ofNat 32 1),.bxor 2907 2908,.shr 2473 1,.literal (BitVec.ofNat 32 0),.bnot 2911,.band 2910 2912,.shr 2473 1,.literal (BitVec.ofNat 32 0),.bnot 2915,.bxor 2914 2916,.shr 2473 1,.literal (BitVec.ofNat 32 0),.bnot 2919,.badd 2918 2920,.bnot 2921,.band 2917 2922,.bxor 2913 2923,.shr 2924 31,.literal (BitVec.ofNat 32 1),.bxor 2925 2926,.badd 2168 2288,.bxor 2928 2337,.literal (BitVec.ofNat 32 0),.bnot 2930,.band 2929 2931,.badd 2168 2288]
theorem partExact43 : partRows43=WordField.rows actualModulus 2870 partOps43 := by
  simp only [partRows43,partOps43,WordField.rows,rows2870,rows2871,rows2872,rows2873,rows2874,rows2875,rows2876,rows2877,rows2878,rows2879,rows2880,rows2881,rows2882,rows2883,rows2884,rows2885,rows2886,rows2887,rows2888,rows2889,rows2890,rows2891,rows2892,rows2893,rows2894,rows2895,rows2896,rows2897,rows2898,rows2899,rows2900,rows2901,rows2902,rows2903,rows2904,rows2905,rows2906,rows2907,rows2908,rows2909,rows2910,rows2911,rows2912,rows2913,rows2914,rows2915,rows2916,rows2917,rows2918,rows2919,rows2920,rows2921,rows2922,rows2923,rows2924,rows2925,rows2926,rows2927,rows2928,rows2929,rows2930,rows2931,rows2932,rows2933,List.append_assoc,List.append_nil]
theorem partLength43 : partOps43.length=64 := by decide
theorem partStats43 : partRows43.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows43=328752 := by
  simp only [partRows43,List.length_append,MatrixRowBlocks.rows_weight_append,stats2870.1,stats2870.2,stats2871.1,stats2871.2,stats2872.1,stats2872.2,stats2873.1,stats2873.2,stats2874.1,stats2874.2,stats2875.1,stats2875.2,stats2876.1,stats2876.2,stats2877.1,stats2877.2,stats2878.1,stats2878.2,stats2879.1,stats2879.2,stats2880.1,stats2880.2,stats2881.1,stats2881.2,stats2882.1,stats2882.2,stats2883.1,stats2883.2,stats2884.1,stats2884.2,stats2885.1,stats2885.2,stats2886.1,stats2886.2,stats2887.1,stats2887.2,stats2888.1,stats2888.2,stats2889.1,stats2889.2,stats2890.1,stats2890.2,stats2891.1,stats2891.2,stats2892.1,stats2892.2,stats2893.1,stats2893.2,stats2894.1,stats2894.2,stats2895.1,stats2895.2,stats2896.1,stats2896.2,stats2897.1,stats2897.2,stats2898.1,stats2898.2,stats2899.1,stats2899.2,stats2900.1,stats2900.2,stats2901.1,stats2901.2,stats2902.1,stats2902.2,stats2903.1,stats2903.2,stats2904.1,stats2904.2,stats2905.1,stats2905.2,stats2906.1,stats2906.2,stats2907.1,stats2907.2,stats2908.1,stats2908.2,stats2909.1,stats2909.2,stats2910.1,stats2910.2,stats2911.1,stats2911.2,stats2912.1,stats2912.2,stats2913.1,stats2913.2,stats2914.1,stats2914.2,stats2915.1,stats2915.2,stats2916.1,stats2916.2,stats2917.1,stats2917.2,stats2918.1,stats2918.2,stats2919.1,stats2919.2,stats2920.1,stats2920.2,stats2921.1,stats2921.2,stats2922.1,stats2922.2,stats2923.1,stats2923.2,stats2924.1,stats2924.2,stats2925.1,stats2925.2,stats2926.1,stats2926.2,stats2927.1,stats2927.2,stats2928.1,stats2928.2,stats2929.1,stats2929.2,stats2930.1,stats2930.2,stats2931.1,stats2931.2,stats2932.1,stats2932.2,stats2933.1,stats2933.2]
  decide
end AuthenticatedBranchRoundCheckedRows
