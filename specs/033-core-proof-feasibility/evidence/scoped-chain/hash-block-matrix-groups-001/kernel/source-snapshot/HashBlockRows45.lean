import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData46
import HashBlockInstructionMatrixData47
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2952 : actualRows2952=WordField.canonicalRows actualModulus 2952 (.bxor 2949 2951) := by core033_kernel_decide
theorem stats2952 : actualRows2952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2952=7428 := by core033_kernel_decide
theorem rows2953 : actualRows2953=WordField.canonicalRows actualModulus 2953 (.badd 2948 2952) := by core033_kernel_decide
theorem stats2953 : actualRows2953.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2953=5388 := by core033_kernel_decide
theorem rows2954 : actualRows2954=WordField.canonicalRows actualModulus 2954 (.literal (BitVec.ofNat 32 1986661051)) := by core033_kernel_decide
theorem stats2954 : actualRows2954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2954=4044 := by core033_kernel_decide
theorem rows2955 : actualRows2955=WordField.canonicalRows actualModulus 2955 (.badd 2953 2954) := by core033_kernel_decide
theorem stats2955 : actualRows2955.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2955=5388 := by core033_kernel_decide
theorem rows2956 : actualRows2956=WordField.canonicalRows actualModulus 2956 (.badd 2955 1605) := by core033_kernel_decide
theorem stats2956 : actualRows2956.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2956=5388 := by core033_kernel_decide
theorem rows2957 : actualRows2957=WordField.canonicalRows actualModulus 2957 (.rotr 2941 2) := by core033_kernel_decide
theorem stats2957 : actualRows2957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2957=5124 := by core033_kernel_decide
theorem rows2958 : actualRows2958=WordField.canonicalRows actualModulus 2958 (.rotr 2941 13) := by core033_kernel_decide
theorem stats2958 : actualRows2958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2958=5124 := by core033_kernel_decide
theorem rows2959 : actualRows2959=WordField.canonicalRows actualModulus 2959 (.bxor 2957 2958) := by core033_kernel_decide
theorem stats2959 : actualRows2959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2959=7428 := by core033_kernel_decide
theorem rows2960 : actualRows2960=WordField.canonicalRows actualModulus 2960 (.rotr 2941 22) := by core033_kernel_decide
theorem stats2960 : actualRows2960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2960=5124 := by core033_kernel_decide
theorem rows2961 : actualRows2961=WordField.canonicalRows actualModulus 2961 (.bxor 2959 2960) := by core033_kernel_decide
theorem stats2961 : actualRows2961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2961=7428 := by core033_kernel_decide
theorem rows2962 : actualRows2962=WordField.canonicalRows actualModulus 2962 (.band 2941 2914) := by core033_kernel_decide
theorem stats2962 : actualRows2962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2962=5124 := by core033_kernel_decide
theorem rows2963 : actualRows2963=WordField.canonicalRows actualModulus 2963 (.band 2941 2887) := by core033_kernel_decide
theorem stats2963 : actualRows2963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2963=5124 := by core033_kernel_decide
theorem rows2964 : actualRows2964=WordField.canonicalRows actualModulus 2964 (.bxor 2962 2963) := by core033_kernel_decide
theorem stats2964 : actualRows2964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2964=7428 := by core033_kernel_decide
theorem rows2965 : actualRows2965=WordField.canonicalRows actualModulus 2965 (.band 2914 2887) := by core033_kernel_decide
theorem stats2965 : actualRows2965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2965=5124 := by core033_kernel_decide
theorem rows2966 : actualRows2966=WordField.canonicalRows actualModulus 2966 (.bxor 2964 2965) := by core033_kernel_decide
theorem stats2966 : actualRows2966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2966=7428 := by core033_kernel_decide
theorem rows2967 : actualRows2967=WordField.canonicalRows actualModulus 2967 (.badd 2961 2966) := by core033_kernel_decide
theorem stats2967 : actualRows2967.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2967=5388 := by core033_kernel_decide
theorem rows2968 : actualRows2968=WordField.canonicalRows actualModulus 2968 (.badd 2956 2967) := by core033_kernel_decide
theorem stats2968 : actualRows2968.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2968=5388 := by core033_kernel_decide
theorem rows2969 : actualRows2969=WordField.canonicalRows actualModulus 2969 (.badd 2860 2956) := by core033_kernel_decide
theorem stats2969 : actualRows2969.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2969=5388 := by core033_kernel_decide
theorem rows2970 : actualRows2970=WordField.canonicalRows actualModulus 2970 (.rotr 2969 6) := by core033_kernel_decide
theorem stats2970 : actualRows2970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2970=5124 := by core033_kernel_decide
theorem rows2971 : actualRows2971=WordField.canonicalRows actualModulus 2971 (.rotr 2969 11) := by core033_kernel_decide
theorem stats2971 : actualRows2971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2971=5124 := by core033_kernel_decide
theorem rows2972 : actualRows2972=WordField.canonicalRows actualModulus 2972 (.bxor 2970 2971) := by core033_kernel_decide
theorem stats2972 : actualRows2972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2972=7428 := by core033_kernel_decide
theorem rows2973 : actualRows2973=WordField.canonicalRows actualModulus 2973 (.rotr 2969 25) := by core033_kernel_decide
theorem stats2973 : actualRows2973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2973=5124 := by core033_kernel_decide
theorem rows2974 : actualRows2974=WordField.canonicalRows actualModulus 2974 (.bxor 2972 2973) := by core033_kernel_decide
theorem stats2974 : actualRows2974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2974=7428 := by core033_kernel_decide
theorem rows2975 : actualRows2975=WordField.canonicalRows actualModulus 2975 (.badd 2888 2974) := by core033_kernel_decide
theorem stats2975 : actualRows2975.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2975=5388 := by core033_kernel_decide
theorem rows2976 : actualRows2976=WordField.canonicalRows actualModulus 2976 (.band 2969 2942) := by core033_kernel_decide
theorem stats2976 : actualRows2976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2976=5124 := by core033_kernel_decide
theorem rows2977 : actualRows2977=WordField.canonicalRows actualModulus 2977 (.bnot 2969) := by core033_kernel_decide
theorem stats2977 : actualRows2977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2977=6276 := by core033_kernel_decide
theorem rows2978 : actualRows2978=WordField.canonicalRows actualModulus 2978 (.band 2977 2915) := by core033_kernel_decide
theorem stats2978 : actualRows2978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2978=5124 := by core033_kernel_decide
theorem rows2979 : actualRows2979=WordField.canonicalRows actualModulus 2979 (.bxor 2976 2978) := by core033_kernel_decide
theorem stats2979 : actualRows2979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2979=7428 := by core033_kernel_decide
theorem rows2980 : actualRows2980=WordField.canonicalRows actualModulus 2980 (.badd 2975 2979) := by core033_kernel_decide
theorem stats2980 : actualRows2980.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2980=5388 := by core033_kernel_decide
theorem rows2981 : actualRows2981=WordField.canonicalRows actualModulus 2981 (.literal (BitVec.ofNat 32 2177026350)) := by core033_kernel_decide
theorem stats2981 : actualRows2981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2981=3756 := by core033_kernel_decide
theorem rows2982 : actualRows2982=WordField.canonicalRows actualModulus 2982 (.badd 2980 2981) := by core033_kernel_decide
theorem stats2982 : actualRows2982.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2982=5388 := by core033_kernel_decide
theorem rows2983 : actualRows2983=WordField.canonicalRows actualModulus 2983 (.badd 2982 1618) := by core033_kernel_decide
theorem stats2983 : actualRows2983.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2983=5388 := by core033_kernel_decide
theorem rows2984 : actualRows2984=WordField.canonicalRows actualModulus 2984 (.rotr 2968 2) := by core033_kernel_decide
theorem stats2984 : actualRows2984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2984=5124 := by core033_kernel_decide
theorem rows2985 : actualRows2985=WordField.canonicalRows actualModulus 2985 (.rotr 2968 13) := by core033_kernel_decide
theorem stats2985 : actualRows2985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2985=5124 := by core033_kernel_decide
theorem rows2986 : actualRows2986=WordField.canonicalRows actualModulus 2986 (.bxor 2984 2985) := by core033_kernel_decide
theorem stats2986 : actualRows2986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2986=7428 := by core033_kernel_decide
theorem rows2987 : actualRows2987=WordField.canonicalRows actualModulus 2987 (.rotr 2968 22) := by core033_kernel_decide
theorem stats2987 : actualRows2987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2987=5124 := by core033_kernel_decide
theorem rows2988 : actualRows2988=WordField.canonicalRows actualModulus 2988 (.bxor 2986 2987) := by core033_kernel_decide
theorem stats2988 : actualRows2988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2988=7428 := by core033_kernel_decide
theorem rows2989 : actualRows2989=WordField.canonicalRows actualModulus 2989 (.band 2968 2941) := by core033_kernel_decide
theorem stats2989 : actualRows2989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2989=5124 := by core033_kernel_decide
theorem rows2990 : actualRows2990=WordField.canonicalRows actualModulus 2990 (.band 2968 2914) := by core033_kernel_decide
theorem stats2990 : actualRows2990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2990=5124 := by core033_kernel_decide
theorem rows2991 : actualRows2991=WordField.canonicalRows actualModulus 2991 (.bxor 2989 2990) := by core033_kernel_decide
theorem stats2991 : actualRows2991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2991=7428 := by core033_kernel_decide
theorem rows2992 : actualRows2992=WordField.canonicalRows actualModulus 2992 (.band 2941 2914) := by core033_kernel_decide
theorem stats2992 : actualRows2992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2992=5124 := by core033_kernel_decide
theorem rows2993 : actualRows2993=WordField.canonicalRows actualModulus 2993 (.bxor 2991 2992) := by core033_kernel_decide
theorem stats2993 : actualRows2993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2993=7428 := by core033_kernel_decide
theorem rows2994 : actualRows2994=WordField.canonicalRows actualModulus 2994 (.badd 2988 2993) := by core033_kernel_decide
theorem stats2994 : actualRows2994.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2994=5388 := by core033_kernel_decide
theorem rows2995 : actualRows2995=WordField.canonicalRows actualModulus 2995 (.badd 2983 2994) := by core033_kernel_decide
theorem stats2995 : actualRows2995.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2995=5388 := by core033_kernel_decide
theorem rows2996 : actualRows2996=WordField.canonicalRows actualModulus 2996 (.badd 2887 2983) := by core033_kernel_decide
theorem stats2996 : actualRows2996.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2996=5388 := by core033_kernel_decide
theorem rows2997 : actualRows2997=WordField.canonicalRows actualModulus 2997 (.rotr 2996 6) := by core033_kernel_decide
theorem stats2997 : actualRows2997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2997=5124 := by core033_kernel_decide
theorem rows2998 : actualRows2998=WordField.canonicalRows actualModulus 2998 (.rotr 2996 11) := by core033_kernel_decide
theorem stats2998 : actualRows2998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2998=5124 := by core033_kernel_decide
theorem rows2999 : actualRows2999=WordField.canonicalRows actualModulus 2999 (.bxor 2997 2998) := by core033_kernel_decide
theorem stats2999 : actualRows2999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2999=7428 := by core033_kernel_decide
theorem rows3000 : actualRows3000=WordField.canonicalRows actualModulus 3000 (.rotr 2996 25) := by core033_kernel_decide
theorem stats3000 : actualRows3000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3000=5124 := by core033_kernel_decide
theorem rows3001 : actualRows3001=WordField.canonicalRows actualModulus 3001 (.bxor 2999 3000) := by core033_kernel_decide
theorem stats3001 : actualRows3001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3001=7428 := by core033_kernel_decide
theorem rows3002 : actualRows3002=WordField.canonicalRows actualModulus 3002 (.badd 2915 3001) := by core033_kernel_decide
theorem stats3002 : actualRows3002.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3002=5388 := by core033_kernel_decide
theorem rows3003 : actualRows3003=WordField.canonicalRows actualModulus 3003 (.band 2996 2969) := by core033_kernel_decide
theorem stats3003 : actualRows3003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3003=5124 := by core033_kernel_decide
theorem rows3004 : actualRows3004=WordField.canonicalRows actualModulus 3004 (.bnot 2996) := by core033_kernel_decide
theorem stats3004 : actualRows3004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3004=6276 := by core033_kernel_decide
theorem rows3005 : actualRows3005=WordField.canonicalRows actualModulus 3005 (.band 3004 2942) := by core033_kernel_decide
theorem stats3005 : actualRows3005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3005=5124 := by core033_kernel_decide
theorem rows3006 : actualRows3006=WordField.canonicalRows actualModulus 3006 (.bxor 3003 3005) := by core033_kernel_decide
theorem stats3006 : actualRows3006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3006=7428 := by core033_kernel_decide
theorem rows3007 : actualRows3007=WordField.canonicalRows actualModulus 3007 (.badd 3002 3006) := by core033_kernel_decide
theorem stats3007 : actualRows3007.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3007=5388 := by core033_kernel_decide
theorem rows3008 : actualRows3008=WordField.canonicalRows actualModulus 3008 (.literal (BitVec.ofNat 32 2456956037)) := by core033_kernel_decide
theorem stats3008 : actualRows3008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3008=3756 := by core033_kernel_decide
theorem rows3009 : actualRows3009=WordField.canonicalRows actualModulus 3009 (.badd 3007 3008) := by core033_kernel_decide
theorem stats3009 : actualRows3009.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3009=5388 := by core033_kernel_decide
theorem rows3010 : actualRows3010=WordField.canonicalRows actualModulus 3010 (.badd 3009 1631) := by core033_kernel_decide
theorem stats3010 : actualRows3010.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3010=5388 := by core033_kernel_decide
theorem rows3011 : actualRows3011=WordField.canonicalRows actualModulus 3011 (.rotr 2995 2) := by core033_kernel_decide
theorem stats3011 : actualRows3011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3011=5124 := by core033_kernel_decide
theorem rows3012 : actualRows3012=WordField.canonicalRows actualModulus 3012 (.rotr 2995 13) := by core033_kernel_decide
theorem stats3012 : actualRows3012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3012=5124 := by core033_kernel_decide
theorem rows3013 : actualRows3013=WordField.canonicalRows actualModulus 3013 (.bxor 3011 3012) := by core033_kernel_decide
theorem stats3013 : actualRows3013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3013=7428 := by core033_kernel_decide
theorem rows3014 : actualRows3014=WordField.canonicalRows actualModulus 3014 (.rotr 2995 22) := by core033_kernel_decide
theorem stats3014 : actualRows3014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3014=5124 := by core033_kernel_decide
theorem rows3015 : actualRows3015=WordField.canonicalRows actualModulus 3015 (.bxor 3013 3014) := by core033_kernel_decide
theorem stats3015 : actualRows3015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3015=7428 := by core033_kernel_decide
def partRows45 : List R1CS.Row := actualRows2952++actualRows2953++actualRows2954++actualRows2955++actualRows2956++actualRows2957++actualRows2958++actualRows2959++actualRows2960++actualRows2961++actualRows2962++actualRows2963++actualRows2964++actualRows2965++actualRows2966++actualRows2967++actualRows2968++actualRows2969++actualRows2970++actualRows2971++actualRows2972++actualRows2973++actualRows2974++actualRows2975++actualRows2976++actualRows2977++actualRows2978++actualRows2979++actualRows2980++actualRows2981++actualRows2982++actualRows2983++actualRows2984++actualRows2985++actualRows2986++actualRows2987++actualRows2988++actualRows2989++actualRows2990++actualRows2991++actualRows2992++actualRows2993++actualRows2994++actualRows2995++actualRows2996++actualRows2997++actualRows2998++actualRows2999++actualRows3000++actualRows3001++actualRows3002++actualRows3003++actualRows3004++actualRows3005++actualRows3006++actualRows3007++actualRows3008++actualRows3009++actualRows3010++actualRows3011++actualRows3012++actualRows3013++actualRows3014++actualRows3015
def partOps45 : List WordIR.Op := [.bxor 2949 2951,.badd 2948 2952,.literal (BitVec.ofNat 32 1986661051),.badd 2953 2954,.badd 2955 1605,.rotr 2941 2,.rotr 2941 13,.bxor 2957 2958,.rotr 2941 22,.bxor 2959 2960,.band 2941 2914,.band 2941 2887,.bxor 2962 2963,.band 2914 2887,.bxor 2964 2965,.badd 2961 2966,.badd 2956 2967,.badd 2860 2956,.rotr 2969 6,.rotr 2969 11,.bxor 2970 2971,.rotr 2969 25,.bxor 2972 2973,.badd 2888 2974,.band 2969 2942,.bnot 2969,.band 2977 2915,.bxor 2976 2978,.badd 2975 2979,.literal (BitVec.ofNat 32 2177026350),.badd 2980 2981,.badd 2982 1618,.rotr 2968 2,.rotr 2968 13,.bxor 2984 2985,.rotr 2968 22,.bxor 2986 2987,.band 2968 2941,.band 2968 2914,.bxor 2989 2990,.band 2941 2914,.bxor 2991 2992,.badd 2988 2993,.badd 2983 2994,.badd 2887 2983,.rotr 2996 6,.rotr 2996 11,.bxor 2997 2998,.rotr 2996 25,.bxor 2999 3000,.badd 2915 3001,.band 2996 2969,.bnot 2996,.band 3004 2942,.bxor 3003 3005,.badd 3002 3006,.literal (BitVec.ofNat 32 2456956037),.badd 3007 3008,.badd 3009 1631,.rotr 2995 2,.rotr 2995 13,.bxor 3011 3012,.rotr 2995 22,.bxor 3013 3014]
theorem partExact45 : partRows45=WordField.rows actualModulus 2952 partOps45 := by
  simp only [partRows45,partOps45,WordField.rows,rows2952,rows2953,rows2954,rows2955,rows2956,rows2957,rows2958,rows2959,rows2960,rows2961,rows2962,rows2963,rows2964,rows2965,rows2966,rows2967,rows2968,rows2969,rows2970,rows2971,rows2972,rows2973,rows2974,rows2975,rows2976,rows2977,rows2978,rows2979,rows2980,rows2981,rows2982,rows2983,rows2984,rows2985,rows2986,rows2987,rows2988,rows2989,rows2990,rows2991,rows2992,rows2993,rows2994,rows2995,rows2996,rows2997,rows2998,rows2999,rows3000,rows3001,rows3002,rows3003,rows3004,rows3005,rows3006,rows3007,rows3008,rows3009,rows3010,rows3011,rows3012,rows3013,rows3014,rows3015,List.append_assoc,List.append_nil]
theorem partLength45 : partOps45.length=64 := by decide
theorem partStats45 : partRows45.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows45=370080 := by
  simp only [partRows45,List.length_append,MatrixRowBlocks.rows_weight_append,stats2952.1,stats2952.2,stats2953.1,stats2953.2,stats2954.1,stats2954.2,stats2955.1,stats2955.2,stats2956.1,stats2956.2,stats2957.1,stats2957.2,stats2958.1,stats2958.2,stats2959.1,stats2959.2,stats2960.1,stats2960.2,stats2961.1,stats2961.2,stats2962.1,stats2962.2,stats2963.1,stats2963.2,stats2964.1,stats2964.2,stats2965.1,stats2965.2,stats2966.1,stats2966.2,stats2967.1,stats2967.2,stats2968.1,stats2968.2,stats2969.1,stats2969.2,stats2970.1,stats2970.2,stats2971.1,stats2971.2,stats2972.1,stats2972.2,stats2973.1,stats2973.2,stats2974.1,stats2974.2,stats2975.1,stats2975.2,stats2976.1,stats2976.2,stats2977.1,stats2977.2,stats2978.1,stats2978.2,stats2979.1,stats2979.2,stats2980.1,stats2980.2,stats2981.1,stats2981.2,stats2982.1,stats2982.2,stats2983.1,stats2983.2,stats2984.1,stats2984.2,stats2985.1,stats2985.2,stats2986.1,stats2986.2,stats2987.1,stats2987.2,stats2988.1,stats2988.2,stats2989.1,stats2989.2,stats2990.1,stats2990.2,stats2991.1,stats2991.2,stats2992.1,stats2992.2,stats2993.1,stats2993.2,stats2994.1,stats2994.2,stats2995.1,stats2995.2,stats2996.1,stats2996.2,stats2997.1,stats2997.2,stats2998.1,stats2998.2,stats2999.1,stats2999.2,stats3000.1,stats3000.2,stats3001.1,stats3001.2,stats3002.1,stats3002.2,stats3003.1,stats3003.2,stats3004.1,stats3004.2,stats3005.1,stats3005.2,stats3006.1,stats3006.2,stats3007.1,stats3007.2,stats3008.1,stats3008.2,stats3009.1,stats3009.2,stats3010.1,stats3010.2,stats3011.1,stats3011.2,stats3012.1,stats3012.2,stats3013.1,stats3013.2,stats3014.1,stats3014.2,stats3015.1,stats3015.2]
  decide
end HashBlockCheckedRows
