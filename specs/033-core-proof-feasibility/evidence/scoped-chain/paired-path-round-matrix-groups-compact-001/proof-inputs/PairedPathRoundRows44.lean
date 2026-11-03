import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData45
import PairedPathRoundInstructionMatrixData46
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2912 : actualRows2912=WordField.canonicalRows actualModulus 2912 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2912 : actualRows2912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2912=2892 := by core033_kernel_decide
theorem rows2913 : actualRows2913=WordField.canonicalRows actualModulus 2913 (.bxor 616 2912) := by core033_kernel_decide
theorem stats2913 : actualRows2913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2913=7428 := by core033_kernel_decide
theorem rows2914 : actualRows2914=WordField.canonicalRows actualModulus 2914 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2914 : actualRows2914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2914=2820 := by core033_kernel_decide
theorem rows2915 : actualRows2915=WordField.canonicalRows actualModulus 2915 (.bnot 2914) := by core033_kernel_decide
theorem stats2915 : actualRows2915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2915=6276 := by core033_kernel_decide
theorem rows2916 : actualRows2916=WordField.canonicalRows actualModulus 2916 (.band 2913 2915) := by core033_kernel_decide
theorem stats2916 : actualRows2916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2916=5124 := by core033_kernel_decide
theorem rows2917 : actualRows2917=WordField.canonicalRows actualModulus 2917 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2917 : actualRows2917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2917=2892 := by core033_kernel_decide
theorem rows2918 : actualRows2918=WordField.canonicalRows actualModulus 2918 (.bxor 616 2917) := by core033_kernel_decide
theorem stats2918 : actualRows2918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2918=7428 := by core033_kernel_decide
theorem rows2919 : actualRows2919=WordField.canonicalRows actualModulus 2919 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2919 : actualRows2919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2919=2820 := by core033_kernel_decide
theorem rows2920 : actualRows2920=WordField.canonicalRows actualModulus 2920 (.bnot 2919) := by core033_kernel_decide
theorem stats2920 : actualRows2920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2920=6276 := by core033_kernel_decide
theorem rows2921 : actualRows2921=WordField.canonicalRows actualModulus 2921 (.bxor 2918 2920) := by core033_kernel_decide
theorem stats2921 : actualRows2921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2921=7428 := by core033_kernel_decide
theorem rows2922 : actualRows2922=WordField.canonicalRows actualModulus 2922 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2922 : actualRows2922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2922=2892 := by core033_kernel_decide
theorem rows2923 : actualRows2923=WordField.canonicalRows actualModulus 2923 (.bxor 616 2922) := by core033_kernel_decide
theorem stats2923 : actualRows2923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2923=7428 := by core033_kernel_decide
theorem rows2924 : actualRows2924=WordField.canonicalRows actualModulus 2924 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2924 : actualRows2924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2924=2820 := by core033_kernel_decide
theorem rows2925 : actualRows2925=WordField.canonicalRows actualModulus 2925 (.bnot 2924) := by core033_kernel_decide
theorem stats2925 : actualRows2925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2925=6276 := by core033_kernel_decide
theorem rows2926 : actualRows2926=WordField.canonicalRows actualModulus 2926 (.badd 2923 2925) := by core033_kernel_decide
theorem stats2926 : actualRows2926.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2926=5388 := by core033_kernel_decide
theorem rows2927 : actualRows2927=WordField.canonicalRows actualModulus 2927 (.bnot 2926) := by core033_kernel_decide
theorem stats2927 : actualRows2927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2927=6276 := by core033_kernel_decide
theorem rows2928 : actualRows2928=WordField.canonicalRows actualModulus 2928 (.band 2921 2927) := by core033_kernel_decide
theorem stats2928 : actualRows2928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2928=5124 := by core033_kernel_decide
theorem rows2929 : actualRows2929=WordField.canonicalRows actualModulus 2929 (.bxor 2916 2928) := by core033_kernel_decide
theorem stats2929 : actualRows2929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2929=7428 := by core033_kernel_decide
theorem rows2930 : actualRows2930=WordField.canonicalRows actualModulus 2930 (.shr 2929 31) := by core033_kernel_decide
theorem stats2930 : actualRows2930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2930=2892 := by core033_kernel_decide
theorem rows2931 : actualRows2931=WordField.canonicalRows actualModulus 2931 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2931 : actualRows2931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2931=2892 := by core033_kernel_decide
theorem rows2932 : actualRows2932=WordField.canonicalRows actualModulus 2932 (.bxor 2930 2931) := by core033_kernel_decide
theorem stats2932 : actualRows2932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2932=7428 := by core033_kernel_decide
theorem rows2933 : actualRows2933=WordField.canonicalRows actualModulus 2933 (.bnot 2932) := by core033_kernel_decide
theorem stats2933 : actualRows2933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2933=6276 := by core033_kernel_decide
theorem rows2934 : actualRows2934=WordField.canonicalRows actualModulus 2934 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2934 : actualRows2934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2934=2892 := by core033_kernel_decide
theorem rows2935 : actualRows2935=WordField.canonicalRows actualModulus 2935 (.badd 2933 2934) := by core033_kernel_decide
theorem stats2935 : actualRows2935.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2935=5388 := by core033_kernel_decide
theorem rows2936 : actualRows2936=WordField.canonicalRows actualModulus 2936 (.band 2935 2016) := by core033_kernel_decide
theorem stats2936 : actualRows2936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2936=5124 := by core033_kernel_decide
theorem rows2937 : actualRows2937=WordField.canonicalRows actualModulus 2937 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2937 : actualRows2937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2937=2892 := by core033_kernel_decide
theorem rows2938 : actualRows2938=WordField.canonicalRows actualModulus 2938 (.bxor 616 2937) := by core033_kernel_decide
theorem stats2938 : actualRows2938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2938=7428 := by core033_kernel_decide
theorem rows2939 : actualRows2939=WordField.canonicalRows actualModulus 2939 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2939 : actualRows2939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2939=2820 := by core033_kernel_decide
theorem rows2940 : actualRows2940=WordField.canonicalRows actualModulus 2940 (.bnot 2939) := by core033_kernel_decide
theorem stats2940 : actualRows2940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2940=6276 := by core033_kernel_decide
theorem rows2941 : actualRows2941=WordField.canonicalRows actualModulus 2941 (.band 2938 2940) := by core033_kernel_decide
theorem stats2941 : actualRows2941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2941=5124 := by core033_kernel_decide
theorem rows2942 : actualRows2942=WordField.canonicalRows actualModulus 2942 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2942 : actualRows2942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2942=2892 := by core033_kernel_decide
theorem rows2943 : actualRows2943=WordField.canonicalRows actualModulus 2943 (.bxor 616 2942) := by core033_kernel_decide
theorem stats2943 : actualRows2943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2943=7428 := by core033_kernel_decide
theorem rows2944 : actualRows2944=WordField.canonicalRows actualModulus 2944 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2944 : actualRows2944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2944=2820 := by core033_kernel_decide
theorem rows2945 : actualRows2945=WordField.canonicalRows actualModulus 2945 (.bnot 2944) := by core033_kernel_decide
theorem stats2945 : actualRows2945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2945=6276 := by core033_kernel_decide
theorem rows2946 : actualRows2946=WordField.canonicalRows actualModulus 2946 (.bxor 2943 2945) := by core033_kernel_decide
theorem stats2946 : actualRows2946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2946=7428 := by core033_kernel_decide
theorem rows2947 : actualRows2947=WordField.canonicalRows actualModulus 2947 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2947 : actualRows2947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2947=2892 := by core033_kernel_decide
theorem rows2948 : actualRows2948=WordField.canonicalRows actualModulus 2948 (.bxor 616 2947) := by core033_kernel_decide
theorem stats2948 : actualRows2948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2948=7428 := by core033_kernel_decide
theorem rows2949 : actualRows2949=WordField.canonicalRows actualModulus 2949 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2949 : actualRows2949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2949=2820 := by core033_kernel_decide
theorem rows2950 : actualRows2950=WordField.canonicalRows actualModulus 2950 (.bnot 2949) := by core033_kernel_decide
theorem stats2950 : actualRows2950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2950=6276 := by core033_kernel_decide
theorem rows2951 : actualRows2951=WordField.canonicalRows actualModulus 2951 (.badd 2948 2950) := by core033_kernel_decide
theorem stats2951 : actualRows2951.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2951=5388 := by core033_kernel_decide
theorem rows2952 : actualRows2952=WordField.canonicalRows actualModulus 2952 (.bnot 2951) := by core033_kernel_decide
theorem stats2952 : actualRows2952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2952=6276 := by core033_kernel_decide
theorem rows2953 : actualRows2953=WordField.canonicalRows actualModulus 2953 (.band 2946 2952) := by core033_kernel_decide
theorem stats2953 : actualRows2953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2953=5124 := by core033_kernel_decide
theorem rows2954 : actualRows2954=WordField.canonicalRows actualModulus 2954 (.bxor 2941 2953) := by core033_kernel_decide
theorem stats2954 : actualRows2954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2954=7428 := by core033_kernel_decide
theorem rows2955 : actualRows2955=WordField.canonicalRows actualModulus 2955 (.shr 2954 31) := by core033_kernel_decide
theorem stats2955 : actualRows2955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2955=2892 := by core033_kernel_decide
theorem rows2956 : actualRows2956=WordField.canonicalRows actualModulus 2956 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2956 : actualRows2956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2956=2892 := by core033_kernel_decide
theorem rows2957 : actualRows2957=WordField.canonicalRows actualModulus 2957 (.bxor 2955 2956) := by core033_kernel_decide
theorem stats2957 : actualRows2957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2957=7428 := by core033_kernel_decide
theorem rows2958 : actualRows2958=WordField.canonicalRows actualModulus 2958 (.bnot 2957) := by core033_kernel_decide
theorem stats2958 : actualRows2958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2958=6276 := by core033_kernel_decide
theorem rows2959 : actualRows2959=WordField.canonicalRows actualModulus 2959 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2959 : actualRows2959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2959=2892 := by core033_kernel_decide
theorem rows2960 : actualRows2960=WordField.canonicalRows actualModulus 2960 (.badd 2958 2959) := by core033_kernel_decide
theorem stats2960 : actualRows2960.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2960=5388 := by core033_kernel_decide
theorem rows2961 : actualRows2961=WordField.canonicalRows actualModulus 2961 (.bnot 2960) := by core033_kernel_decide
theorem stats2961 : actualRows2961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2961=6276 := by core033_kernel_decide
theorem rows2962 : actualRows2962=WordField.canonicalRows actualModulus 2962 (.band 2961 1864) := by core033_kernel_decide
theorem stats2962 : actualRows2962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2962=5124 := by core033_kernel_decide
theorem rows2963 : actualRows2963=WordField.canonicalRows actualModulus 2963 (.bxor 2936 2962) := by core033_kernel_decide
theorem stats2963 : actualRows2963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2963=7428 := by core033_kernel_decide
theorem rows2964 : actualRows2964=WordField.canonicalRows actualModulus 2964 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2964 : actualRows2964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2964=2892 := by core033_kernel_decide
theorem rows2965 : actualRows2965=WordField.canonicalRows actualModulus 2965 (.bxor 616 2964) := by core033_kernel_decide
theorem stats2965 : actualRows2965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2965=7428 := by core033_kernel_decide
theorem rows2966 : actualRows2966=WordField.canonicalRows actualModulus 2966 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2966 : actualRows2966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2966=2820 := by core033_kernel_decide
theorem rows2967 : actualRows2967=WordField.canonicalRows actualModulus 2967 (.bnot 2966) := by core033_kernel_decide
theorem stats2967 : actualRows2967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2967=6276 := by core033_kernel_decide
theorem rows2968 : actualRows2968=WordField.canonicalRows actualModulus 2968 (.band 2965 2967) := by core033_kernel_decide
theorem stats2968 : actualRows2968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2968=5124 := by core033_kernel_decide
theorem rows2969 : actualRows2969=WordField.canonicalRows actualModulus 2969 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2969 : actualRows2969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2969=2892 := by core033_kernel_decide
theorem rows2970 : actualRows2970=WordField.canonicalRows actualModulus 2970 (.bxor 616 2969) := by core033_kernel_decide
theorem stats2970 : actualRows2970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2970=7428 := by core033_kernel_decide
theorem rows2971 : actualRows2971=WordField.canonicalRows actualModulus 2971 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2971 : actualRows2971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2971=2820 := by core033_kernel_decide
theorem rows2972 : actualRows2972=WordField.canonicalRows actualModulus 2972 (.bnot 2971) := by core033_kernel_decide
theorem stats2972 : actualRows2972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2972=6276 := by core033_kernel_decide
theorem rows2973 : actualRows2973=WordField.canonicalRows actualModulus 2973 (.bxor 2970 2972) := by core033_kernel_decide
theorem stats2973 : actualRows2973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2973=7428 := by core033_kernel_decide
theorem rows2974 : actualRows2974=WordField.canonicalRows actualModulus 2974 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2974 : actualRows2974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2974=2892 := by core033_kernel_decide
theorem rows2975 : actualRows2975=WordField.canonicalRows actualModulus 2975 (.bxor 616 2974) := by core033_kernel_decide
theorem stats2975 : actualRows2975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2975=7428 := by core033_kernel_decide
def partRows44 : List R1CS.Row := actualRows2912++actualRows2913++actualRows2914++actualRows2915++actualRows2916++actualRows2917++actualRows2918++actualRows2919++actualRows2920++actualRows2921++actualRows2922++actualRows2923++actualRows2924++actualRows2925++actualRows2926++actualRows2927++actualRows2928++actualRows2929++actualRows2930++actualRows2931++actualRows2932++actualRows2933++actualRows2934++actualRows2935++actualRows2936++actualRows2937++actualRows2938++actualRows2939++actualRows2940++actualRows2941++actualRows2942++actualRows2943++actualRows2944++actualRows2945++actualRows2946++actualRows2947++actualRows2948++actualRows2949++actualRows2950++actualRows2951++actualRows2952++actualRows2953++actualRows2954++actualRows2955++actualRows2956++actualRows2957++actualRows2958++actualRows2959++actualRows2960++actualRows2961++actualRows2962++actualRows2963++actualRows2964++actualRows2965++actualRows2966++actualRows2967++actualRows2968++actualRows2969++actualRows2970++actualRows2971++actualRows2972++actualRows2973++actualRows2974++actualRows2975
def partOps44 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 616 2912,.literal (BitVec.ofNat 32 0),.bnot 2914,.band 2913 2915,.literal (BitVec.ofNat 32 2),.bxor 616 2917,.literal (BitVec.ofNat 32 0),.bnot 2919,.bxor 2918 2920,.literal (BitVec.ofNat 32 2),.bxor 616 2922,.literal (BitVec.ofNat 32 0),.bnot 2924,.badd 2923 2925,.bnot 2926,.band 2921 2927,.bxor 2916 2928,.shr 2929 31,.literal (BitVec.ofNat 32 1),.bxor 2930 2931,.bnot 2932,.literal (BitVec.ofNat 32 1),.badd 2933 2934,.band 2935 2016,.literal (BitVec.ofNat 32 2),.bxor 616 2937,.literal (BitVec.ofNat 32 0),.bnot 2939,.band 2938 2940,.literal (BitVec.ofNat 32 2),.bxor 616 2942,.literal (BitVec.ofNat 32 0),.bnot 2944,.bxor 2943 2945,.literal (BitVec.ofNat 32 2),.bxor 616 2947,.literal (BitVec.ofNat 32 0),.bnot 2949,.badd 2948 2950,.bnot 2951,.band 2946 2952,.bxor 2941 2953,.shr 2954 31,.literal (BitVec.ofNat 32 1),.bxor 2955 2956,.bnot 2957,.literal (BitVec.ofNat 32 1),.badd 2958 2959,.bnot 2960,.band 2961 1864,.bxor 2936 2962,.literal (BitVec.ofNat 32 2),.bxor 616 2964,.literal (BitVec.ofNat 32 0),.bnot 2966,.band 2965 2967,.literal (BitVec.ofNat 32 2),.bxor 616 2969,.literal (BitVec.ofNat 32 0),.bnot 2971,.bxor 2970 2972,.literal (BitVec.ofNat 32 2),.bxor 616 2974]
theorem partExact44 : partRows44=WordField.rows actualModulus 2912 partOps44 := by
  simp only [partRows44,partOps44,WordField.rows,rows2912,rows2913,rows2914,rows2915,rows2916,rows2917,rows2918,rows2919,rows2920,rows2921,rows2922,rows2923,rows2924,rows2925,rows2926,rows2927,rows2928,rows2929,rows2930,rows2931,rows2932,rows2933,rows2934,rows2935,rows2936,rows2937,rows2938,rows2939,rows2940,rows2941,rows2942,rows2943,rows2944,rows2945,rows2946,rows2947,rows2948,rows2949,rows2950,rows2951,rows2952,rows2953,rows2954,rows2955,rows2956,rows2957,rows2958,rows2959,rows2960,rows2961,rows2962,rows2963,rows2964,rows2965,rows2966,rows2967,rows2968,rows2969,rows2970,rows2971,rows2972,rows2973,rows2974,rows2975,List.append_assoc,List.append_nil]
theorem partLength44 : partOps44.length=64 := by decide
theorem partStats44 : partRows44.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows44=331224 := by
  simp only [partRows44,List.length_append,MatrixRowBlocks.rows_weight_append,stats2912.1,stats2912.2,stats2913.1,stats2913.2,stats2914.1,stats2914.2,stats2915.1,stats2915.2,stats2916.1,stats2916.2,stats2917.1,stats2917.2,stats2918.1,stats2918.2,stats2919.1,stats2919.2,stats2920.1,stats2920.2,stats2921.1,stats2921.2,stats2922.1,stats2922.2,stats2923.1,stats2923.2,stats2924.1,stats2924.2,stats2925.1,stats2925.2,stats2926.1,stats2926.2,stats2927.1,stats2927.2,stats2928.1,stats2928.2,stats2929.1,stats2929.2,stats2930.1,stats2930.2,stats2931.1,stats2931.2,stats2932.1,stats2932.2,stats2933.1,stats2933.2,stats2934.1,stats2934.2,stats2935.1,stats2935.2,stats2936.1,stats2936.2,stats2937.1,stats2937.2,stats2938.1,stats2938.2,stats2939.1,stats2939.2,stats2940.1,stats2940.2,stats2941.1,stats2941.2,stats2942.1,stats2942.2,stats2943.1,stats2943.2,stats2944.1,stats2944.2,stats2945.1,stats2945.2,stats2946.1,stats2946.2,stats2947.1,stats2947.2,stats2948.1,stats2948.2,stats2949.1,stats2949.2,stats2950.1,stats2950.2,stats2951.1,stats2951.2,stats2952.1,stats2952.2,stats2953.1,stats2953.2,stats2954.1,stats2954.2,stats2955.1,stats2955.2,stats2956.1,stats2956.2,stats2957.1,stats2957.2,stats2958.1,stats2958.2,stats2959.1,stats2959.2,stats2960.1,stats2960.2,stats2961.1,stats2961.2,stats2962.1,stats2962.2,stats2963.1,stats2963.2,stats2964.1,stats2964.2,stats2965.1,stats2965.2,stats2966.1,stats2966.2,stats2967.1,stats2967.2,stats2968.1,stats2968.2,stats2969.1,stats2969.2,stats2970.1,stats2970.2,stats2971.1,stats2971.2,stats2972.1,stats2972.2,stats2973.1,stats2973.2,stats2974.1,stats2974.2,stats2975.1,stats2975.2]
  decide
end PairedPathRoundCheckedRows
