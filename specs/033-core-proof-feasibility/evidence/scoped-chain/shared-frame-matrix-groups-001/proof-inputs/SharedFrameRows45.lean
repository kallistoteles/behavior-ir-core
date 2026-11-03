import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData45
import SharedFrameInstructionMatrixData46
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2923 : actualRows2923=WordField.canonicalRows actualModulus 2923 (.rotr 2906 13) := by core033_kernel_decide
theorem stats2923 : actualRows2923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2923=5124 := by core033_kernel_decide
theorem rows2924 : actualRows2924=WordField.canonicalRows actualModulus 2924 (.bxor 2922 2923) := by core033_kernel_decide
theorem stats2924 : actualRows2924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2924=7428 := by core033_kernel_decide
theorem rows2925 : actualRows2925=WordField.canonicalRows actualModulus 2925 (.rotr 2906 22) := by core033_kernel_decide
theorem stats2925 : actualRows2925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2925=5124 := by core033_kernel_decide
theorem rows2926 : actualRows2926=WordField.canonicalRows actualModulus 2926 (.bxor 2924 2925) := by core033_kernel_decide
theorem stats2926 : actualRows2926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2926=7428 := by core033_kernel_decide
theorem rows2927 : actualRows2927=WordField.canonicalRows actualModulus 2927 (.band 2906 2880) := by core033_kernel_decide
theorem stats2927 : actualRows2927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2927=5124 := by core033_kernel_decide
theorem rows2928 : actualRows2928=WordField.canonicalRows actualModulus 2928 (.band 2906 2854) := by core033_kernel_decide
theorem stats2928 : actualRows2928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2928=5124 := by core033_kernel_decide
theorem rows2929 : actualRows2929=WordField.canonicalRows actualModulus 2929 (.bxor 2927 2928) := by core033_kernel_decide
theorem stats2929 : actualRows2929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2929=7428 := by core033_kernel_decide
theorem rows2930 : actualRows2930=WordField.canonicalRows actualModulus 2930 (.bxor 2929 2901) := by core033_kernel_decide
theorem stats2930 : actualRows2930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2930=7428 := by core033_kernel_decide
theorem rows2931 : actualRows2931=WordField.canonicalRows actualModulus 2931 (.badd 2926 2930) := by core033_kernel_decide
theorem stats2931 : actualRows2931.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2931=5388 := by core033_kernel_decide
theorem rows2932 : actualRows2932=WordField.canonicalRows actualModulus 2932 (.badd 2921 2931) := by core033_kernel_decide
theorem stats2932 : actualRows2932.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2932=5388 := by core033_kernel_decide
theorem rows2933 : actualRows2933=WordField.canonicalRows actualModulus 2933 (.badd 2828 2921) := by core033_kernel_decide
theorem stats2933 : actualRows2933.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2933=5388 := by core033_kernel_decide
theorem rows2934 : actualRows2934=WordField.canonicalRows actualModulus 2934 (.rotr 2933 6) := by core033_kernel_decide
theorem stats2934 : actualRows2934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2934=5124 := by core033_kernel_decide
theorem rows2935 : actualRows2935=WordField.canonicalRows actualModulus 2935 (.rotr 2933 11) := by core033_kernel_decide
theorem stats2935 : actualRows2935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2935=5124 := by core033_kernel_decide
theorem rows2936 : actualRows2936=WordField.canonicalRows actualModulus 2936 (.bxor 2934 2935) := by core033_kernel_decide
theorem stats2936 : actualRows2936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2936=7428 := by core033_kernel_decide
theorem rows2937 : actualRows2937=WordField.canonicalRows actualModulus 2937 (.rotr 2933 25) := by core033_kernel_decide
theorem stats2937 : actualRows2937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2937=5124 := by core033_kernel_decide
theorem rows2938 : actualRows2938=WordField.canonicalRows actualModulus 2938 (.bxor 2936 2937) := by core033_kernel_decide
theorem stats2938 : actualRows2938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2938=7428 := by core033_kernel_decide
theorem rows2939 : actualRows2939=WordField.canonicalRows actualModulus 2939 (.badd 2855 2938) := by core033_kernel_decide
theorem stats2939 : actualRows2939.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2939=5388 := by core033_kernel_decide
theorem rows2940 : actualRows2940=WordField.canonicalRows actualModulus 2940 (.band 2933 2907) := by core033_kernel_decide
theorem stats2940 : actualRows2940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2940=5124 := by core033_kernel_decide
theorem rows2941 : actualRows2941=WordField.canonicalRows actualModulus 2941 (.bnot 2933) := by core033_kernel_decide
theorem stats2941 : actualRows2941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2941=6276 := by core033_kernel_decide
theorem rows2942 : actualRows2942=WordField.canonicalRows actualModulus 2942 (.band 2941 2881) := by core033_kernel_decide
theorem stats2942 : actualRows2942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2942=5124 := by core033_kernel_decide
theorem rows2943 : actualRows2943=WordField.canonicalRows actualModulus 2943 (.bxor 2940 2942) := by core033_kernel_decide
theorem stats2943 : actualRows2943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2943=7428 := by core033_kernel_decide
theorem rows2944 : actualRows2944=WordField.canonicalRows actualModulus 2944 (.badd 2939 2943) := by core033_kernel_decide
theorem stats2944 : actualRows2944.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2944=5388 := by core033_kernel_decide
theorem rows2945 : actualRows2945=WordField.canonicalRows actualModulus 2945 (.literal (BitVec.ofNat 32 113926993)) := by core033_kernel_decide
theorem stats2945 : actualRows2945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2945=3756 := by core033_kernel_decide
theorem rows2946 : actualRows2946=WordField.canonicalRows actualModulus 2946 (.badd 2944 2945) := by core033_kernel_decide
theorem stats2946 : actualRows2946.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2946=5388 := by core033_kernel_decide
theorem rows2947 : actualRows2947=WordField.canonicalRows actualModulus 2947 (.badd 2946 1723) := by core033_kernel_decide
theorem stats2947 : actualRows2947.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2947=5388 := by core033_kernel_decide
theorem rows2948 : actualRows2948=WordField.canonicalRows actualModulus 2948 (.rotr 2932 2) := by core033_kernel_decide
theorem stats2948 : actualRows2948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2948=5124 := by core033_kernel_decide
theorem rows2949 : actualRows2949=WordField.canonicalRows actualModulus 2949 (.rotr 2932 13) := by core033_kernel_decide
theorem stats2949 : actualRows2949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2949=5124 := by core033_kernel_decide
theorem rows2950 : actualRows2950=WordField.canonicalRows actualModulus 2950 (.bxor 2948 2949) := by core033_kernel_decide
theorem stats2950 : actualRows2950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2950=7428 := by core033_kernel_decide
theorem rows2951 : actualRows2951=WordField.canonicalRows actualModulus 2951 (.rotr 2932 22) := by core033_kernel_decide
theorem stats2951 : actualRows2951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2951=5124 := by core033_kernel_decide
theorem rows2952 : actualRows2952=WordField.canonicalRows actualModulus 2952 (.bxor 2950 2951) := by core033_kernel_decide
theorem stats2952 : actualRows2952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2952=7428 := by core033_kernel_decide
theorem rows2953 : actualRows2953=WordField.canonicalRows actualModulus 2953 (.band 2932 2906) := by core033_kernel_decide
theorem stats2953 : actualRows2953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2953=5124 := by core033_kernel_decide
theorem rows2954 : actualRows2954=WordField.canonicalRows actualModulus 2954 (.band 2932 2880) := by core033_kernel_decide
theorem stats2954 : actualRows2954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2954=5124 := by core033_kernel_decide
theorem rows2955 : actualRows2955=WordField.canonicalRows actualModulus 2955 (.bxor 2953 2954) := by core033_kernel_decide
theorem stats2955 : actualRows2955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2955=7428 := by core033_kernel_decide
theorem rows2956 : actualRows2956=WordField.canonicalRows actualModulus 2956 (.bxor 2955 2927) := by core033_kernel_decide
theorem stats2956 : actualRows2956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2956=7428 := by core033_kernel_decide
theorem rows2957 : actualRows2957=WordField.canonicalRows actualModulus 2957 (.badd 2952 2956) := by core033_kernel_decide
theorem stats2957 : actualRows2957.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2957=5388 := by core033_kernel_decide
theorem rows2958 : actualRows2958=WordField.canonicalRows actualModulus 2958 (.badd 2947 2957) := by core033_kernel_decide
theorem stats2958 : actualRows2958.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2958=5388 := by core033_kernel_decide
theorem rows2959 : actualRows2959=WordField.canonicalRows actualModulus 2959 (.badd 2854 2947) := by core033_kernel_decide
theorem stats2959 : actualRows2959.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2959=5388 := by core033_kernel_decide
theorem rows2960 : actualRows2960=WordField.canonicalRows actualModulus 2960 (.rotr 2959 6) := by core033_kernel_decide
theorem stats2960 : actualRows2960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2960=5124 := by core033_kernel_decide
theorem rows2961 : actualRows2961=WordField.canonicalRows actualModulus 2961 (.rotr 2959 11) := by core033_kernel_decide
theorem stats2961 : actualRows2961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2961=5124 := by core033_kernel_decide
theorem rows2962 : actualRows2962=WordField.canonicalRows actualModulus 2962 (.bxor 2960 2961) := by core033_kernel_decide
theorem stats2962 : actualRows2962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2962=7428 := by core033_kernel_decide
theorem rows2963 : actualRows2963=WordField.canonicalRows actualModulus 2963 (.rotr 2959 25) := by core033_kernel_decide
theorem stats2963 : actualRows2963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2963=5124 := by core033_kernel_decide
theorem rows2964 : actualRows2964=WordField.canonicalRows actualModulus 2964 (.bxor 2962 2963) := by core033_kernel_decide
theorem stats2964 : actualRows2964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2964=7428 := by core033_kernel_decide
theorem rows2965 : actualRows2965=WordField.canonicalRows actualModulus 2965 (.badd 2881 2964) := by core033_kernel_decide
theorem stats2965 : actualRows2965.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2965=5388 := by core033_kernel_decide
theorem rows2966 : actualRows2966=WordField.canonicalRows actualModulus 2966 (.band 2959 2933) := by core033_kernel_decide
theorem stats2966 : actualRows2966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2966=5124 := by core033_kernel_decide
theorem rows2967 : actualRows2967=WordField.canonicalRows actualModulus 2967 (.bnot 2959) := by core033_kernel_decide
theorem stats2967 : actualRows2967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2967=6276 := by core033_kernel_decide
theorem rows2968 : actualRows2968=WordField.canonicalRows actualModulus 2968 (.band 2967 2907) := by core033_kernel_decide
theorem stats2968 : actualRows2968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2968=5124 := by core033_kernel_decide
theorem rows2969 : actualRows2969=WordField.canonicalRows actualModulus 2969 (.bxor 2966 2968) := by core033_kernel_decide
theorem stats2969 : actualRows2969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2969=7428 := by core033_kernel_decide
theorem rows2970 : actualRows2970=WordField.canonicalRows actualModulus 2970 (.badd 2965 2969) := by core033_kernel_decide
theorem stats2970 : actualRows2970.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2970=5388 := by core033_kernel_decide
theorem rows2971 : actualRows2971=WordField.canonicalRows actualModulus 2971 (.literal (BitVec.ofNat 32 338241895)) := by core033_kernel_decide
theorem stats2971 : actualRows2971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2971=3756 := by core033_kernel_decide
theorem rows2972 : actualRows2972=WordField.canonicalRows actualModulus 2972 (.badd 2970 2971) := by core033_kernel_decide
theorem stats2972 : actualRows2972.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2972=5388 := by core033_kernel_decide
theorem rows2973 : actualRows2973=WordField.canonicalRows actualModulus 2973 (.badd 2972 1736) := by core033_kernel_decide
theorem stats2973 : actualRows2973.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2973=5388 := by core033_kernel_decide
theorem rows2974 : actualRows2974=WordField.canonicalRows actualModulus 2974 (.rotr 2958 2) := by core033_kernel_decide
theorem stats2974 : actualRows2974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2974=5124 := by core033_kernel_decide
theorem rows2975 : actualRows2975=WordField.canonicalRows actualModulus 2975 (.rotr 2958 13) := by core033_kernel_decide
theorem stats2975 : actualRows2975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2975=5124 := by core033_kernel_decide
theorem rows2976 : actualRows2976=WordField.canonicalRows actualModulus 2976 (.bxor 2974 2975) := by core033_kernel_decide
theorem stats2976 : actualRows2976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2976=7428 := by core033_kernel_decide
theorem rows2977 : actualRows2977=WordField.canonicalRows actualModulus 2977 (.rotr 2958 22) := by core033_kernel_decide
theorem stats2977 : actualRows2977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2977=5124 := by core033_kernel_decide
theorem rows2978 : actualRows2978=WordField.canonicalRows actualModulus 2978 (.bxor 2976 2977) := by core033_kernel_decide
theorem stats2978 : actualRows2978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2978=7428 := by core033_kernel_decide
theorem rows2979 : actualRows2979=WordField.canonicalRows actualModulus 2979 (.band 2958 2932) := by core033_kernel_decide
theorem stats2979 : actualRows2979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2979=5124 := by core033_kernel_decide
theorem rows2980 : actualRows2980=WordField.canonicalRows actualModulus 2980 (.band 2958 2906) := by core033_kernel_decide
theorem stats2980 : actualRows2980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2980=5124 := by core033_kernel_decide
theorem rows2981 : actualRows2981=WordField.canonicalRows actualModulus 2981 (.bxor 2979 2980) := by core033_kernel_decide
theorem stats2981 : actualRows2981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2981=7428 := by core033_kernel_decide
theorem rows2982 : actualRows2982=WordField.canonicalRows actualModulus 2982 (.bxor 2981 2953) := by core033_kernel_decide
theorem stats2982 : actualRows2982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2982=7428 := by core033_kernel_decide
theorem rows2983 : actualRows2983=WordField.canonicalRows actualModulus 2983 (.badd 2978 2982) := by core033_kernel_decide
theorem stats2983 : actualRows2983.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2983=5388 := by core033_kernel_decide
theorem rows2984 : actualRows2984=WordField.canonicalRows actualModulus 2984 (.badd 2973 2983) := by core033_kernel_decide
theorem stats2984 : actualRows2984.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2984=5388 := by core033_kernel_decide
theorem rows2985 : actualRows2985=WordField.canonicalRows actualModulus 2985 (.badd 2880 2973) := by core033_kernel_decide
theorem stats2985 : actualRows2985.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2985=5388 := by core033_kernel_decide
theorem rows2986 : actualRows2986=WordField.canonicalRows actualModulus 2986 (.rotr 2985 6) := by core033_kernel_decide
theorem stats2986 : actualRows2986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2986=5124 := by core033_kernel_decide
def partRows45 : List R1CS.Row := actualRows2923++actualRows2924++actualRows2925++actualRows2926++actualRows2927++actualRows2928++actualRows2929++actualRows2930++actualRows2931++actualRows2932++actualRows2933++actualRows2934++actualRows2935++actualRows2936++actualRows2937++actualRows2938++actualRows2939++actualRows2940++actualRows2941++actualRows2942++actualRows2943++actualRows2944++actualRows2945++actualRows2946++actualRows2947++actualRows2948++actualRows2949++actualRows2950++actualRows2951++actualRows2952++actualRows2953++actualRows2954++actualRows2955++actualRows2956++actualRows2957++actualRows2958++actualRows2959++actualRows2960++actualRows2961++actualRows2962++actualRows2963++actualRows2964++actualRows2965++actualRows2966++actualRows2967++actualRows2968++actualRows2969++actualRows2970++actualRows2971++actualRows2972++actualRows2973++actualRows2974++actualRows2975++actualRows2976++actualRows2977++actualRows2978++actualRows2979++actualRows2980++actualRows2981++actualRows2982++actualRows2983++actualRows2984++actualRows2985++actualRows2986
def partOps45 : List WordIR.Op := [.rotr 2906 13,.bxor 2922 2923,.rotr 2906 22,.bxor 2924 2925,.band 2906 2880,.band 2906 2854,.bxor 2927 2928,.bxor 2929 2901,.badd 2926 2930,.badd 2921 2931,.badd 2828 2921,.rotr 2933 6,.rotr 2933 11,.bxor 2934 2935,.rotr 2933 25,.bxor 2936 2937,.badd 2855 2938,.band 2933 2907,.bnot 2933,.band 2941 2881,.bxor 2940 2942,.badd 2939 2943,.literal (BitVec.ofNat 32 113926993),.badd 2944 2945,.badd 2946 1723,.rotr 2932 2,.rotr 2932 13,.bxor 2948 2949,.rotr 2932 22,.bxor 2950 2951,.band 2932 2906,.band 2932 2880,.bxor 2953 2954,.bxor 2955 2927,.badd 2952 2956,.badd 2947 2957,.badd 2854 2947,.rotr 2959 6,.rotr 2959 11,.bxor 2960 2961,.rotr 2959 25,.bxor 2962 2963,.badd 2881 2964,.band 2959 2933,.bnot 2959,.band 2967 2907,.bxor 2966 2968,.badd 2965 2969,.literal (BitVec.ofNat 32 338241895),.badd 2970 2971,.badd 2972 1736,.rotr 2958 2,.rotr 2958 13,.bxor 2974 2975,.rotr 2958 22,.bxor 2976 2977,.band 2958 2932,.band 2958 2906,.bxor 2979 2980,.bxor 2981 2953,.badd 2978 2982,.badd 2973 2983,.badd 2880 2973,.rotr 2985 6]
theorem partExact45 : partRows45=WordField.rows actualModulus 2923 partOps45 := by
  simp only [partRows45,partOps45,WordField.rows,rows2923,rows2924,rows2925,rows2926,rows2927,rows2928,rows2929,rows2930,rows2931,rows2932,rows2933,rows2934,rows2935,rows2936,rows2937,rows2938,rows2939,rows2940,rows2941,rows2942,rows2943,rows2944,rows2945,rows2946,rows2947,rows2948,rows2949,rows2950,rows2951,rows2952,rows2953,rows2954,rows2955,rows2956,rows2957,rows2958,rows2959,rows2960,rows2961,rows2962,rows2963,rows2964,rows2965,rows2966,rows2967,rows2968,rows2969,rows2970,rows2971,rows2972,rows2973,rows2974,rows2975,rows2976,rows2977,rows2978,rows2979,rows2980,rows2981,rows2982,rows2983,rows2984,rows2985,rows2986,List.append_assoc,List.append_nil]
theorem partLength45 : partOps45.length=64 := by decide
theorem partStats45 : partRows45.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows45=373464 := by
  simp only [partRows45,List.length_append,MatrixRowBlocks.rows_weight_append,stats2923.1,stats2923.2,stats2924.1,stats2924.2,stats2925.1,stats2925.2,stats2926.1,stats2926.2,stats2927.1,stats2927.2,stats2928.1,stats2928.2,stats2929.1,stats2929.2,stats2930.1,stats2930.2,stats2931.1,stats2931.2,stats2932.1,stats2932.2,stats2933.1,stats2933.2,stats2934.1,stats2934.2,stats2935.1,stats2935.2,stats2936.1,stats2936.2,stats2937.1,stats2937.2,stats2938.1,stats2938.2,stats2939.1,stats2939.2,stats2940.1,stats2940.2,stats2941.1,stats2941.2,stats2942.1,stats2942.2,stats2943.1,stats2943.2,stats2944.1,stats2944.2,stats2945.1,stats2945.2,stats2946.1,stats2946.2,stats2947.1,stats2947.2,stats2948.1,stats2948.2,stats2949.1,stats2949.2,stats2950.1,stats2950.2,stats2951.1,stats2951.2,stats2952.1,stats2952.2,stats2953.1,stats2953.2,stats2954.1,stats2954.2,stats2955.1,stats2955.2,stats2956.1,stats2956.2,stats2957.1,stats2957.2,stats2958.1,stats2958.2,stats2959.1,stats2959.2,stats2960.1,stats2960.2,stats2961.1,stats2961.2,stats2962.1,stats2962.2,stats2963.1,stats2963.2,stats2964.1,stats2964.2,stats2965.1,stats2965.2,stats2966.1,stats2966.2,stats2967.1,stats2967.2,stats2968.1,stats2968.2,stats2969.1,stats2969.2,stats2970.1,stats2970.2,stats2971.1,stats2971.2,stats2972.1,stats2972.2,stats2973.1,stats2973.2,stats2974.1,stats2974.2,stats2975.1,stats2975.2,stats2976.1,stats2976.2,stats2977.1,stats2977.2,stats2978.1,stats2978.2,stats2979.1,stats2979.2,stats2980.1,stats2980.2,stats2981.1,stats2981.2,stats2982.1,stats2982.2,stats2983.1,stats2983.2,stats2984.1,stats2984.2,stats2985.1,stats2985.2,stats2986.1,stats2986.2]
  decide
end SharedFrameCheckedRows
