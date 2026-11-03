import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData45
import AuthenticatedBranchRoundInstructionMatrixData46
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2934 : actualRows2934=WordField.canonicalRows actualModulus 2934 (.bxor 2933 2337) := by core033_kernel_decide
theorem stats2934 : actualRows2934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2934=7428 := by core033_kernel_decide
theorem rows2935 : actualRows2935=WordField.canonicalRows actualModulus 2935 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2935 : actualRows2935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2935=2820 := by core033_kernel_decide
theorem rows2936 : actualRows2936=WordField.canonicalRows actualModulus 2936 (.bnot 2935) := by core033_kernel_decide
theorem stats2936 : actualRows2936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2936=6276 := by core033_kernel_decide
theorem rows2937 : actualRows2937=WordField.canonicalRows actualModulus 2937 (.bxor 2934 2936) := by core033_kernel_decide
theorem stats2937 : actualRows2937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2937=7428 := by core033_kernel_decide
theorem rows2938 : actualRows2938=WordField.canonicalRows actualModulus 2938 (.badd 2168 2288) := by core033_kernel_decide
theorem stats2938 : actualRows2938.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2938=5388 := by core033_kernel_decide
theorem rows2939 : actualRows2939=WordField.canonicalRows actualModulus 2939 (.bxor 2938 2337) := by core033_kernel_decide
theorem stats2939 : actualRows2939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2939=7428 := by core033_kernel_decide
theorem rows2940 : actualRows2940=WordField.canonicalRows actualModulus 2940 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2940 : actualRows2940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2940=2820 := by core033_kernel_decide
theorem rows2941 : actualRows2941=WordField.canonicalRows actualModulus 2941 (.bnot 2940) := by core033_kernel_decide
theorem stats2941 : actualRows2941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2941=6276 := by core033_kernel_decide
theorem rows2942 : actualRows2942=WordField.canonicalRows actualModulus 2942 (.badd 2939 2941) := by core033_kernel_decide
theorem stats2942 : actualRows2942.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2942=5388 := by core033_kernel_decide
theorem rows2943 : actualRows2943=WordField.canonicalRows actualModulus 2943 (.bnot 2942) := by core033_kernel_decide
theorem stats2943 : actualRows2943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2943=6276 := by core033_kernel_decide
theorem rows2944 : actualRows2944=WordField.canonicalRows actualModulus 2944 (.band 2937 2943) := by core033_kernel_decide
theorem stats2944 : actualRows2944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2944=5124 := by core033_kernel_decide
theorem rows2945 : actualRows2945=WordField.canonicalRows actualModulus 2945 (.bxor 2932 2944) := by core033_kernel_decide
theorem stats2945 : actualRows2945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2945=7428 := by core033_kernel_decide
theorem rows2946 : actualRows2946=WordField.canonicalRows actualModulus 2946 (.shr 2945 31) := by core033_kernel_decide
theorem stats2946 : actualRows2946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2946=2892 := by core033_kernel_decide
theorem rows2947 : actualRows2947=WordField.canonicalRows actualModulus 2947 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2947 : actualRows2947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2947=2892 := by core033_kernel_decide
theorem rows2948 : actualRows2948=WordField.canonicalRows actualModulus 2948 (.bxor 2946 2947) := by core033_kernel_decide
theorem stats2948 : actualRows2948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2948=7428 := by core033_kernel_decide
theorem rows2949 : actualRows2949=WordField.canonicalRows actualModulus 2949 (.badd 2178 2298) := by core033_kernel_decide
theorem stats2949 : actualRows2949.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2949=5388 := by core033_kernel_decide
theorem rows2950 : actualRows2950=WordField.canonicalRows actualModulus 2950 (.band 2168 2288) := by core033_kernel_decide
theorem stats2950 : actualRows2950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2950=5124 := by core033_kernel_decide
theorem rows2951 : actualRows2951=WordField.canonicalRows actualModulus 2951 (.bxor 2168 2288) := by core033_kernel_decide
theorem stats2951 : actualRows2951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2951=7428 := by core033_kernel_decide
theorem rows2952 : actualRows2952=WordField.canonicalRows actualModulus 2952 (.badd 2168 2288) := by core033_kernel_decide
theorem stats2952 : actualRows2952.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2952=5388 := by core033_kernel_decide
theorem rows2953 : actualRows2953=WordField.canonicalRows actualModulus 2953 (.bnot 2952) := by core033_kernel_decide
theorem stats2953 : actualRows2953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2953=6276 := by core033_kernel_decide
theorem rows2954 : actualRows2954=WordField.canonicalRows actualModulus 2954 (.band 2951 2953) := by core033_kernel_decide
theorem stats2954 : actualRows2954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2954=5124 := by core033_kernel_decide
theorem rows2955 : actualRows2955=WordField.canonicalRows actualModulus 2955 (.bxor 2950 2954) := by core033_kernel_decide
theorem stats2955 : actualRows2955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2955=7428 := by core033_kernel_decide
theorem rows2956 : actualRows2956=WordField.canonicalRows actualModulus 2956 (.shr 2955 31) := by core033_kernel_decide
theorem stats2956 : actualRows2956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2956=2892 := by core033_kernel_decide
theorem rows2957 : actualRows2957=WordField.canonicalRows actualModulus 2957 (.badd 2949 2956) := by core033_kernel_decide
theorem stats2957 : actualRows2957.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2957=5388 := by core033_kernel_decide
theorem rows2958 : actualRows2958=WordField.canonicalRows actualModulus 2958 (.bxor 2957 2346) := by core033_kernel_decide
theorem stats2958 : actualRows2958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2958=7428 := by core033_kernel_decide
theorem rows2959 : actualRows2959=WordField.canonicalRows actualModulus 2959 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2959 : actualRows2959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2959=2820 := by core033_kernel_decide
theorem rows2960 : actualRows2960=WordField.canonicalRows actualModulus 2960 (.bnot 2959) := by core033_kernel_decide
theorem stats2960 : actualRows2960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2960=6276 := by core033_kernel_decide
theorem rows2961 : actualRows2961=WordField.canonicalRows actualModulus 2961 (.band 2958 2960) := by core033_kernel_decide
theorem stats2961 : actualRows2961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2961=5124 := by core033_kernel_decide
theorem rows2962 : actualRows2962=WordField.canonicalRows actualModulus 2962 (.badd 2178 2298) := by core033_kernel_decide
theorem stats2962 : actualRows2962.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2962=5388 := by core033_kernel_decide
theorem rows2963 : actualRows2963=WordField.canonicalRows actualModulus 2963 (.band 2168 2288) := by core033_kernel_decide
theorem stats2963 : actualRows2963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2963=5124 := by core033_kernel_decide
theorem rows2964 : actualRows2964=WordField.canonicalRows actualModulus 2964 (.bxor 2168 2288) := by core033_kernel_decide
theorem stats2964 : actualRows2964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2964=7428 := by core033_kernel_decide
theorem rows2965 : actualRows2965=WordField.canonicalRows actualModulus 2965 (.badd 2168 2288) := by core033_kernel_decide
theorem stats2965 : actualRows2965.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2965=5388 := by core033_kernel_decide
theorem rows2966 : actualRows2966=WordField.canonicalRows actualModulus 2966 (.bnot 2965) := by core033_kernel_decide
theorem stats2966 : actualRows2966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2966=6276 := by core033_kernel_decide
theorem rows2967 : actualRows2967=WordField.canonicalRows actualModulus 2967 (.band 2964 2966) := by core033_kernel_decide
theorem stats2967 : actualRows2967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2967=5124 := by core033_kernel_decide
theorem rows2968 : actualRows2968=WordField.canonicalRows actualModulus 2968 (.bxor 2963 2967) := by core033_kernel_decide
theorem stats2968 : actualRows2968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2968=7428 := by core033_kernel_decide
theorem rows2969 : actualRows2969=WordField.canonicalRows actualModulus 2969 (.shr 2968 31) := by core033_kernel_decide
theorem stats2969 : actualRows2969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2969=2892 := by core033_kernel_decide
theorem rows2970 : actualRows2970=WordField.canonicalRows actualModulus 2970 (.badd 2962 2969) := by core033_kernel_decide
theorem stats2970 : actualRows2970.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2970=5388 := by core033_kernel_decide
theorem rows2971 : actualRows2971=WordField.canonicalRows actualModulus 2971 (.bxor 2970 2346) := by core033_kernel_decide
theorem stats2971 : actualRows2971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2971=7428 := by core033_kernel_decide
theorem rows2972 : actualRows2972=WordField.canonicalRows actualModulus 2972 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2972 : actualRows2972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2972=2820 := by core033_kernel_decide
theorem rows2973 : actualRows2973=WordField.canonicalRows actualModulus 2973 (.bnot 2972) := by core033_kernel_decide
theorem stats2973 : actualRows2973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2973=6276 := by core033_kernel_decide
theorem rows2974 : actualRows2974=WordField.canonicalRows actualModulus 2974 (.bxor 2971 2973) := by core033_kernel_decide
theorem stats2974 : actualRows2974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2974=7428 := by core033_kernel_decide
theorem rows2975 : actualRows2975=WordField.canonicalRows actualModulus 2975 (.badd 2178 2298) := by core033_kernel_decide
theorem stats2975 : actualRows2975.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2975=5388 := by core033_kernel_decide
theorem rows2976 : actualRows2976=WordField.canonicalRows actualModulus 2976 (.band 2168 2288) := by core033_kernel_decide
theorem stats2976 : actualRows2976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2976=5124 := by core033_kernel_decide
theorem rows2977 : actualRows2977=WordField.canonicalRows actualModulus 2977 (.bxor 2168 2288) := by core033_kernel_decide
theorem stats2977 : actualRows2977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2977=7428 := by core033_kernel_decide
theorem rows2978 : actualRows2978=WordField.canonicalRows actualModulus 2978 (.badd 2168 2288) := by core033_kernel_decide
theorem stats2978 : actualRows2978.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2978=5388 := by core033_kernel_decide
theorem rows2979 : actualRows2979=WordField.canonicalRows actualModulus 2979 (.bnot 2978) := by core033_kernel_decide
theorem stats2979 : actualRows2979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2979=6276 := by core033_kernel_decide
theorem rows2980 : actualRows2980=WordField.canonicalRows actualModulus 2980 (.band 2977 2979) := by core033_kernel_decide
theorem stats2980 : actualRows2980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2980=5124 := by core033_kernel_decide
theorem rows2981 : actualRows2981=WordField.canonicalRows actualModulus 2981 (.bxor 2976 2980) := by core033_kernel_decide
theorem stats2981 : actualRows2981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2981=7428 := by core033_kernel_decide
theorem rows2982 : actualRows2982=WordField.canonicalRows actualModulus 2982 (.shr 2981 31) := by core033_kernel_decide
theorem stats2982 : actualRows2982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2982=2892 := by core033_kernel_decide
theorem rows2983 : actualRows2983=WordField.canonicalRows actualModulus 2983 (.badd 2975 2982) := by core033_kernel_decide
theorem stats2983 : actualRows2983.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2983=5388 := by core033_kernel_decide
theorem rows2984 : actualRows2984=WordField.canonicalRows actualModulus 2984 (.bxor 2983 2346) := by core033_kernel_decide
theorem stats2984 : actualRows2984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2984=7428 := by core033_kernel_decide
theorem rows2985 : actualRows2985=WordField.canonicalRows actualModulus 2985 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2985 : actualRows2985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2985=2820 := by core033_kernel_decide
theorem rows2986 : actualRows2986=WordField.canonicalRows actualModulus 2986 (.bnot 2985) := by core033_kernel_decide
theorem stats2986 : actualRows2986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2986=6276 := by core033_kernel_decide
theorem rows2987 : actualRows2987=WordField.canonicalRows actualModulus 2987 (.badd 2984 2986) := by core033_kernel_decide
theorem stats2987 : actualRows2987.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2987=5388 := by core033_kernel_decide
theorem rows2988 : actualRows2988=WordField.canonicalRows actualModulus 2988 (.bnot 2987) := by core033_kernel_decide
theorem stats2988 : actualRows2988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2988=6276 := by core033_kernel_decide
theorem rows2989 : actualRows2989=WordField.canonicalRows actualModulus 2989 (.band 2974 2988) := by core033_kernel_decide
theorem stats2989 : actualRows2989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2989=5124 := by core033_kernel_decide
theorem rows2990 : actualRows2990=WordField.canonicalRows actualModulus 2990 (.bxor 2961 2989) := by core033_kernel_decide
theorem stats2990 : actualRows2990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2990=7428 := by core033_kernel_decide
theorem rows2991 : actualRows2991=WordField.canonicalRows actualModulus 2991 (.shr 2990 31) := by core033_kernel_decide
theorem stats2991 : actualRows2991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2991=2892 := by core033_kernel_decide
theorem rows2992 : actualRows2992=WordField.canonicalRows actualModulus 2992 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2992 : actualRows2992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2992=2892 := by core033_kernel_decide
theorem rows2993 : actualRows2993=WordField.canonicalRows actualModulus 2993 (.bxor 2991 2992) := by core033_kernel_decide
theorem stats2993 : actualRows2993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2993=7428 := by core033_kernel_decide
theorem rows2994 : actualRows2994=WordField.canonicalRows actualModulus 2994 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2994 : actualRows2994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2994=2820 := by core033_kernel_decide
theorem rows2995 : actualRows2995=WordField.canonicalRows actualModulus 2995 (.bnot 2994) := by core033_kernel_decide
theorem stats2995 : actualRows2995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2995=6276 := by core033_kernel_decide
theorem rows2996 : actualRows2996=WordField.canonicalRows actualModulus 2996 (.band 2178 2995) := by core033_kernel_decide
theorem stats2996 : actualRows2996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2996=5124 := by core033_kernel_decide
theorem rows2997 : actualRows2997=WordField.canonicalRows actualModulus 2997 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2997 : actualRows2997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2997=2820 := by core033_kernel_decide
def partRows44 : List R1CS.Row := actualRows2934++actualRows2935++actualRows2936++actualRows2937++actualRows2938++actualRows2939++actualRows2940++actualRows2941++actualRows2942++actualRows2943++actualRows2944++actualRows2945++actualRows2946++actualRows2947++actualRows2948++actualRows2949++actualRows2950++actualRows2951++actualRows2952++actualRows2953++actualRows2954++actualRows2955++actualRows2956++actualRows2957++actualRows2958++actualRows2959++actualRows2960++actualRows2961++actualRows2962++actualRows2963++actualRows2964++actualRows2965++actualRows2966++actualRows2967++actualRows2968++actualRows2969++actualRows2970++actualRows2971++actualRows2972++actualRows2973++actualRows2974++actualRows2975++actualRows2976++actualRows2977++actualRows2978++actualRows2979++actualRows2980++actualRows2981++actualRows2982++actualRows2983++actualRows2984++actualRows2985++actualRows2986++actualRows2987++actualRows2988++actualRows2989++actualRows2990++actualRows2991++actualRows2992++actualRows2993++actualRows2994++actualRows2995++actualRows2996++actualRows2997
def partOps44 : List WordIR.Op := [.bxor 2933 2337,.literal (BitVec.ofNat 32 0),.bnot 2935,.bxor 2934 2936,.badd 2168 2288,.bxor 2938 2337,.literal (BitVec.ofNat 32 0),.bnot 2940,.badd 2939 2941,.bnot 2942,.band 2937 2943,.bxor 2932 2944,.shr 2945 31,.literal (BitVec.ofNat 32 1),.bxor 2946 2947,.badd 2178 2298,.band 2168 2288,.bxor 2168 2288,.badd 2168 2288,.bnot 2952,.band 2951 2953,.bxor 2950 2954,.shr 2955 31,.badd 2949 2956,.bxor 2957 2346,.literal (BitVec.ofNat 32 0),.bnot 2959,.band 2958 2960,.badd 2178 2298,.band 2168 2288,.bxor 2168 2288,.badd 2168 2288,.bnot 2965,.band 2964 2966,.bxor 2963 2967,.shr 2968 31,.badd 2962 2969,.bxor 2970 2346,.literal (BitVec.ofNat 32 0),.bnot 2972,.bxor 2971 2973,.badd 2178 2298,.band 2168 2288,.bxor 2168 2288,.badd 2168 2288,.bnot 2978,.band 2977 2979,.bxor 2976 2980,.shr 2981 31,.badd 2975 2982,.bxor 2983 2346,.literal (BitVec.ofNat 32 0),.bnot 2985,.badd 2984 2986,.bnot 2987,.band 2974 2988,.bxor 2961 2989,.shr 2990 31,.literal (BitVec.ofNat 32 1),.bxor 2991 2992,.literal (BitVec.ofNat 32 0),.bnot 2994,.band 2178 2995,.literal (BitVec.ofNat 32 0)]
theorem partExact44 : partRows44=WordField.rows actualModulus 2934 partOps44 := by
  simp only [partRows44,partOps44,WordField.rows,rows2934,rows2935,rows2936,rows2937,rows2938,rows2939,rows2940,rows2941,rows2942,rows2943,rows2944,rows2945,rows2946,rows2947,rows2948,rows2949,rows2950,rows2951,rows2952,rows2953,rows2954,rows2955,rows2956,rows2957,rows2958,rows2959,rows2960,rows2961,rows2962,rows2963,rows2964,rows2965,rows2966,rows2967,rows2968,rows2969,rows2970,rows2971,rows2972,rows2973,rows2974,rows2975,rows2976,rows2977,rows2978,rows2979,rows2980,rows2981,rows2982,rows2983,rows2984,rows2985,rows2986,rows2987,rows2988,rows2989,rows2990,rows2991,rows2992,rows2993,rows2994,rows2995,rows2996,rows2997,List.append_assoc,List.append_nil]
theorem partLength44 : partOps44.length=64 := by decide
theorem partStats44 : partRows44.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows44=351192 := by
  simp only [partRows44,List.length_append,MatrixRowBlocks.rows_weight_append,stats2934.1,stats2934.2,stats2935.1,stats2935.2,stats2936.1,stats2936.2,stats2937.1,stats2937.2,stats2938.1,stats2938.2,stats2939.1,stats2939.2,stats2940.1,stats2940.2,stats2941.1,stats2941.2,stats2942.1,stats2942.2,stats2943.1,stats2943.2,stats2944.1,stats2944.2,stats2945.1,stats2945.2,stats2946.1,stats2946.2,stats2947.1,stats2947.2,stats2948.1,stats2948.2,stats2949.1,stats2949.2,stats2950.1,stats2950.2,stats2951.1,stats2951.2,stats2952.1,stats2952.2,stats2953.1,stats2953.2,stats2954.1,stats2954.2,stats2955.1,stats2955.2,stats2956.1,stats2956.2,stats2957.1,stats2957.2,stats2958.1,stats2958.2,stats2959.1,stats2959.2,stats2960.1,stats2960.2,stats2961.1,stats2961.2,stats2962.1,stats2962.2,stats2963.1,stats2963.2,stats2964.1,stats2964.2,stats2965.1,stats2965.2,stats2966.1,stats2966.2,stats2967.1,stats2967.2,stats2968.1,stats2968.2,stats2969.1,stats2969.2,stats2970.1,stats2970.2,stats2971.1,stats2971.2,stats2972.1,stats2972.2,stats2973.1,stats2973.2,stats2974.1,stats2974.2,stats2975.1,stats2975.2,stats2976.1,stats2976.2,stats2977.1,stats2977.2,stats2978.1,stats2978.2,stats2979.1,stats2979.2,stats2980.1,stats2980.2,stats2981.1,stats2981.2,stats2982.1,stats2982.2,stats2983.1,stats2983.2,stats2984.1,stats2984.2,stats2985.1,stats2985.2,stats2986.1,stats2986.2,stats2987.1,stats2987.2,stats2988.1,stats2988.2,stats2989.1,stats2989.2,stats2990.1,stats2990.2,stats2991.1,stats2991.2,stats2992.1,stats2992.2,stats2993.1,stats2993.2,stats2994.1,stats2994.2,stats2995.1,stats2995.2,stats2996.1,stats2996.2,stats2997.1,stats2997.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
