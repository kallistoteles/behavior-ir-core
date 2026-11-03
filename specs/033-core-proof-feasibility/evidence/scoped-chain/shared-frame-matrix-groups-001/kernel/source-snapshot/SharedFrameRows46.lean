import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData46
import SharedFrameInstructionMatrixData47
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2987 : actualRows2987=WordField.canonicalRows actualModulus 2987 (.rotr 2985 11) := by core033_kernel_decide
theorem stats2987 : actualRows2987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2987=5124 := by core033_kernel_decide
theorem rows2988 : actualRows2988=WordField.canonicalRows actualModulus 2988 (.bxor 2986 2987) := by core033_kernel_decide
theorem stats2988 : actualRows2988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2988=7428 := by core033_kernel_decide
theorem rows2989 : actualRows2989=WordField.canonicalRows actualModulus 2989 (.rotr 2985 25) := by core033_kernel_decide
theorem stats2989 : actualRows2989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2989=5124 := by core033_kernel_decide
theorem rows2990 : actualRows2990=WordField.canonicalRows actualModulus 2990 (.bxor 2988 2989) := by core033_kernel_decide
theorem stats2990 : actualRows2990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2990=7428 := by core033_kernel_decide
theorem rows2991 : actualRows2991=WordField.canonicalRows actualModulus 2991 (.badd 2907 2990) := by core033_kernel_decide
theorem stats2991 : actualRows2991.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2991=5388 := by core033_kernel_decide
theorem rows2992 : actualRows2992=WordField.canonicalRows actualModulus 2992 (.band 2985 2959) := by core033_kernel_decide
theorem stats2992 : actualRows2992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2992=5124 := by core033_kernel_decide
theorem rows2993 : actualRows2993=WordField.canonicalRows actualModulus 2993 (.bnot 2985) := by core033_kernel_decide
theorem stats2993 : actualRows2993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2993=6276 := by core033_kernel_decide
theorem rows2994 : actualRows2994=WordField.canonicalRows actualModulus 2994 (.band 2993 2933) := by core033_kernel_decide
theorem stats2994 : actualRows2994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2994=5124 := by core033_kernel_decide
theorem rows2995 : actualRows2995=WordField.canonicalRows actualModulus 2995 (.bxor 2992 2994) := by core033_kernel_decide
theorem stats2995 : actualRows2995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2995=7428 := by core033_kernel_decide
theorem rows2996 : actualRows2996=WordField.canonicalRows actualModulus 2996 (.badd 2991 2995) := by core033_kernel_decide
theorem stats2996 : actualRows2996.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2996=5388 := by core033_kernel_decide
theorem rows2997 : actualRows2997=WordField.canonicalRows actualModulus 2997 (.literal (BitVec.ofNat 32 666307205)) := by core033_kernel_decide
theorem stats2997 : actualRows2997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2997=3900 := by core033_kernel_decide
theorem rows2998 : actualRows2998=WordField.canonicalRows actualModulus 2998 (.badd 2996 2997) := by core033_kernel_decide
theorem stats2998 : actualRows2998.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2998=5388 := by core033_kernel_decide
theorem rows2999 : actualRows2999=WordField.canonicalRows actualModulus 2999 (.badd 2998 1749) := by core033_kernel_decide
theorem stats2999 : actualRows2999.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2999=5388 := by core033_kernel_decide
theorem rows3000 : actualRows3000=WordField.canonicalRows actualModulus 3000 (.rotr 2984 2) := by core033_kernel_decide
theorem stats3000 : actualRows3000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3000=5124 := by core033_kernel_decide
theorem rows3001 : actualRows3001=WordField.canonicalRows actualModulus 3001 (.rotr 2984 13) := by core033_kernel_decide
theorem stats3001 : actualRows3001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3001=5124 := by core033_kernel_decide
theorem rows3002 : actualRows3002=WordField.canonicalRows actualModulus 3002 (.bxor 3000 3001) := by core033_kernel_decide
theorem stats3002 : actualRows3002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3002=7428 := by core033_kernel_decide
theorem rows3003 : actualRows3003=WordField.canonicalRows actualModulus 3003 (.rotr 2984 22) := by core033_kernel_decide
theorem stats3003 : actualRows3003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3003=5124 := by core033_kernel_decide
theorem rows3004 : actualRows3004=WordField.canonicalRows actualModulus 3004 (.bxor 3002 3003) := by core033_kernel_decide
theorem stats3004 : actualRows3004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3004=7428 := by core033_kernel_decide
theorem rows3005 : actualRows3005=WordField.canonicalRows actualModulus 3005 (.band 2984 2958) := by core033_kernel_decide
theorem stats3005 : actualRows3005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3005=5124 := by core033_kernel_decide
theorem rows3006 : actualRows3006=WordField.canonicalRows actualModulus 3006 (.band 2984 2932) := by core033_kernel_decide
theorem stats3006 : actualRows3006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3006=5124 := by core033_kernel_decide
theorem rows3007 : actualRows3007=WordField.canonicalRows actualModulus 3007 (.bxor 3005 3006) := by core033_kernel_decide
theorem stats3007 : actualRows3007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3007=7428 := by core033_kernel_decide
theorem rows3008 : actualRows3008=WordField.canonicalRows actualModulus 3008 (.bxor 3007 2979) := by core033_kernel_decide
theorem stats3008 : actualRows3008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3008=7428 := by core033_kernel_decide
theorem rows3009 : actualRows3009=WordField.canonicalRows actualModulus 3009 (.badd 3004 3008) := by core033_kernel_decide
theorem stats3009 : actualRows3009.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3009=5388 := by core033_kernel_decide
theorem rows3010 : actualRows3010=WordField.canonicalRows actualModulus 3010 (.badd 2999 3009) := by core033_kernel_decide
theorem stats3010 : actualRows3010.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3010=5388 := by core033_kernel_decide
theorem rows3011 : actualRows3011=WordField.canonicalRows actualModulus 3011 (.badd 2906 2999) := by core033_kernel_decide
theorem stats3011 : actualRows3011.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3011=5388 := by core033_kernel_decide
theorem rows3012 : actualRows3012=WordField.canonicalRows actualModulus 3012 (.rotr 3011 6) := by core033_kernel_decide
theorem stats3012 : actualRows3012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3012=5124 := by core033_kernel_decide
theorem rows3013 : actualRows3013=WordField.canonicalRows actualModulus 3013 (.rotr 3011 11) := by core033_kernel_decide
theorem stats3013 : actualRows3013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3013=5124 := by core033_kernel_decide
theorem rows3014 : actualRows3014=WordField.canonicalRows actualModulus 3014 (.bxor 3012 3013) := by core033_kernel_decide
theorem stats3014 : actualRows3014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3014=7428 := by core033_kernel_decide
theorem rows3015 : actualRows3015=WordField.canonicalRows actualModulus 3015 (.rotr 3011 25) := by core033_kernel_decide
theorem stats3015 : actualRows3015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3015=5124 := by core033_kernel_decide
theorem rows3016 : actualRows3016=WordField.canonicalRows actualModulus 3016 (.bxor 3014 3015) := by core033_kernel_decide
theorem stats3016 : actualRows3016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3016=7428 := by core033_kernel_decide
theorem rows3017 : actualRows3017=WordField.canonicalRows actualModulus 3017 (.badd 2933 3016) := by core033_kernel_decide
theorem stats3017 : actualRows3017.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3017=5388 := by core033_kernel_decide
theorem rows3018 : actualRows3018=WordField.canonicalRows actualModulus 3018 (.band 3011 2985) := by core033_kernel_decide
theorem stats3018 : actualRows3018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3018=5124 := by core033_kernel_decide
theorem rows3019 : actualRows3019=WordField.canonicalRows actualModulus 3019 (.bnot 3011) := by core033_kernel_decide
theorem stats3019 : actualRows3019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3019=6276 := by core033_kernel_decide
theorem rows3020 : actualRows3020=WordField.canonicalRows actualModulus 3020 (.band 3019 2959) := by core033_kernel_decide
theorem stats3020 : actualRows3020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3020=5124 := by core033_kernel_decide
theorem rows3021 : actualRows3021=WordField.canonicalRows actualModulus 3021 (.bxor 3018 3020) := by core033_kernel_decide
theorem stats3021 : actualRows3021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3021=7428 := by core033_kernel_decide
theorem rows3022 : actualRows3022=WordField.canonicalRows actualModulus 3022 (.badd 3017 3021) := by core033_kernel_decide
theorem stats3022 : actualRows3022.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3022=5388 := by core033_kernel_decide
theorem rows3023 : actualRows3023=WordField.canonicalRows actualModulus 3023 (.literal (BitVec.ofNat 32 773529912)) := by core033_kernel_decide
theorem stats3023 : actualRows3023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3023=3756 := by core033_kernel_decide
theorem rows3024 : actualRows3024=WordField.canonicalRows actualModulus 3024 (.badd 3022 3023) := by core033_kernel_decide
theorem stats3024 : actualRows3024.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3024=5388 := by core033_kernel_decide
theorem rows3025 : actualRows3025=WordField.canonicalRows actualModulus 3025 (.badd 3024 1762) := by core033_kernel_decide
theorem stats3025 : actualRows3025.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3025=5388 := by core033_kernel_decide
theorem rows3026 : actualRows3026=WordField.canonicalRows actualModulus 3026 (.rotr 3010 2) := by core033_kernel_decide
theorem stats3026 : actualRows3026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3026=5124 := by core033_kernel_decide
theorem rows3027 : actualRows3027=WordField.canonicalRows actualModulus 3027 (.rotr 3010 13) := by core033_kernel_decide
theorem stats3027 : actualRows3027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3027=5124 := by core033_kernel_decide
theorem rows3028 : actualRows3028=WordField.canonicalRows actualModulus 3028 (.bxor 3026 3027) := by core033_kernel_decide
theorem stats3028 : actualRows3028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3028=7428 := by core033_kernel_decide
theorem rows3029 : actualRows3029=WordField.canonicalRows actualModulus 3029 (.rotr 3010 22) := by core033_kernel_decide
theorem stats3029 : actualRows3029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3029=5124 := by core033_kernel_decide
theorem rows3030 : actualRows3030=WordField.canonicalRows actualModulus 3030 (.bxor 3028 3029) := by core033_kernel_decide
theorem stats3030 : actualRows3030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3030=7428 := by core033_kernel_decide
theorem rows3031 : actualRows3031=WordField.canonicalRows actualModulus 3031 (.band 3010 2984) := by core033_kernel_decide
theorem stats3031 : actualRows3031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3031=5124 := by core033_kernel_decide
theorem rows3032 : actualRows3032=WordField.canonicalRows actualModulus 3032 (.band 3010 2958) := by core033_kernel_decide
theorem stats3032 : actualRows3032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3032=5124 := by core033_kernel_decide
theorem rows3033 : actualRows3033=WordField.canonicalRows actualModulus 3033 (.bxor 3031 3032) := by core033_kernel_decide
theorem stats3033 : actualRows3033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3033=7428 := by core033_kernel_decide
theorem rows3034 : actualRows3034=WordField.canonicalRows actualModulus 3034 (.bxor 3033 3005) := by core033_kernel_decide
theorem stats3034 : actualRows3034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3034=7428 := by core033_kernel_decide
theorem rows3035 : actualRows3035=WordField.canonicalRows actualModulus 3035 (.badd 3030 3034) := by core033_kernel_decide
theorem stats3035 : actualRows3035.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3035=5388 := by core033_kernel_decide
theorem rows3036 : actualRows3036=WordField.canonicalRows actualModulus 3036 (.badd 3025 3035) := by core033_kernel_decide
theorem stats3036 : actualRows3036.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3036=5388 := by core033_kernel_decide
theorem rows3037 : actualRows3037=WordField.canonicalRows actualModulus 3037 (.badd 2932 3025) := by core033_kernel_decide
theorem stats3037 : actualRows3037.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3037=5388 := by core033_kernel_decide
theorem rows3038 : actualRows3038=WordField.canonicalRows actualModulus 3038 (.rotr 3037 6) := by core033_kernel_decide
theorem stats3038 : actualRows3038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3038=5124 := by core033_kernel_decide
theorem rows3039 : actualRows3039=WordField.canonicalRows actualModulus 3039 (.rotr 3037 11) := by core033_kernel_decide
theorem stats3039 : actualRows3039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3039=5124 := by core033_kernel_decide
theorem rows3040 : actualRows3040=WordField.canonicalRows actualModulus 3040 (.bxor 3038 3039) := by core033_kernel_decide
theorem stats3040 : actualRows3040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3040=7428 := by core033_kernel_decide
theorem rows3041 : actualRows3041=WordField.canonicalRows actualModulus 3041 (.rotr 3037 25) := by core033_kernel_decide
theorem stats3041 : actualRows3041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3041=5124 := by core033_kernel_decide
theorem rows3042 : actualRows3042=WordField.canonicalRows actualModulus 3042 (.bxor 3040 3041) := by core033_kernel_decide
theorem stats3042 : actualRows3042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3042=7428 := by core033_kernel_decide
theorem rows3043 : actualRows3043=WordField.canonicalRows actualModulus 3043 (.badd 2959 3042) := by core033_kernel_decide
theorem stats3043 : actualRows3043.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3043=5388 := by core033_kernel_decide
theorem rows3044 : actualRows3044=WordField.canonicalRows actualModulus 3044 (.band 3037 3011) := by core033_kernel_decide
theorem stats3044 : actualRows3044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3044=5124 := by core033_kernel_decide
theorem rows3045 : actualRows3045=WordField.canonicalRows actualModulus 3045 (.bnot 3037) := by core033_kernel_decide
theorem stats3045 : actualRows3045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3045=6276 := by core033_kernel_decide
theorem rows3046 : actualRows3046=WordField.canonicalRows actualModulus 3046 (.band 3045 2985) := by core033_kernel_decide
theorem stats3046 : actualRows3046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3046=5124 := by core033_kernel_decide
theorem rows3047 : actualRows3047=WordField.canonicalRows actualModulus 3047 (.bxor 3044 3046) := by core033_kernel_decide
theorem stats3047 : actualRows3047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3047=7428 := by core033_kernel_decide
theorem rows3048 : actualRows3048=WordField.canonicalRows actualModulus 3048 (.badd 3043 3047) := by core033_kernel_decide
theorem stats3048 : actualRows3048.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3048=5388 := by core033_kernel_decide
theorem rows3049 : actualRows3049=WordField.canonicalRows actualModulus 3049 (.literal (BitVec.ofNat 32 1294757372)) := by core033_kernel_decide
theorem stats3049 : actualRows3049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3049=4116 := by core033_kernel_decide
theorem rows3050 : actualRows3050=WordField.canonicalRows actualModulus 3050 (.badd 3048 3049) := by core033_kernel_decide
theorem stats3050 : actualRows3050.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3050=5388 := by core033_kernel_decide
def partRows46 : List R1CS.Row := actualRows2987++actualRows2988++actualRows2989++actualRows2990++actualRows2991++actualRows2992++actualRows2993++actualRows2994++actualRows2995++actualRows2996++actualRows2997++actualRows2998++actualRows2999++actualRows3000++actualRows3001++actualRows3002++actualRows3003++actualRows3004++actualRows3005++actualRows3006++actualRows3007++actualRows3008++actualRows3009++actualRows3010++actualRows3011++actualRows3012++actualRows3013++actualRows3014++actualRows3015++actualRows3016++actualRows3017++actualRows3018++actualRows3019++actualRows3020++actualRows3021++actualRows3022++actualRows3023++actualRows3024++actualRows3025++actualRows3026++actualRows3027++actualRows3028++actualRows3029++actualRows3030++actualRows3031++actualRows3032++actualRows3033++actualRows3034++actualRows3035++actualRows3036++actualRows3037++actualRows3038++actualRows3039++actualRows3040++actualRows3041++actualRows3042++actualRows3043++actualRows3044++actualRows3045++actualRows3046++actualRows3047++actualRows3048++actualRows3049++actualRows3050
def partOps46 : List WordIR.Op := [.rotr 2985 11,.bxor 2986 2987,.rotr 2985 25,.bxor 2988 2989,.badd 2907 2990,.band 2985 2959,.bnot 2985,.band 2993 2933,.bxor 2992 2994,.badd 2991 2995,.literal (BitVec.ofNat 32 666307205),.badd 2996 2997,.badd 2998 1749,.rotr 2984 2,.rotr 2984 13,.bxor 3000 3001,.rotr 2984 22,.bxor 3002 3003,.band 2984 2958,.band 2984 2932,.bxor 3005 3006,.bxor 3007 2979,.badd 3004 3008,.badd 2999 3009,.badd 2906 2999,.rotr 3011 6,.rotr 3011 11,.bxor 3012 3013,.rotr 3011 25,.bxor 3014 3015,.badd 2933 3016,.band 3011 2985,.bnot 3011,.band 3019 2959,.bxor 3018 3020,.badd 3017 3021,.literal (BitVec.ofNat 32 773529912),.badd 3022 3023,.badd 3024 1762,.rotr 3010 2,.rotr 3010 13,.bxor 3026 3027,.rotr 3010 22,.bxor 3028 3029,.band 3010 2984,.band 3010 2958,.bxor 3031 3032,.bxor 3033 3005,.badd 3030 3034,.badd 3025 3035,.badd 2932 3025,.rotr 3037 6,.rotr 3037 11,.bxor 3038 3039,.rotr 3037 25,.bxor 3040 3041,.badd 2959 3042,.band 3037 3011,.bnot 3037,.band 3045 2985,.bxor 3044 3046,.badd 3043 3047,.literal (BitVec.ofNat 32 1294757372),.badd 3048 3049]
theorem partExact46 : partRows46=WordField.rows actualModulus 2987 partOps46 := by
  simp only [partRows46,partOps46,WordField.rows,rows2987,rows2988,rows2989,rows2990,rows2991,rows2992,rows2993,rows2994,rows2995,rows2996,rows2997,rows2998,rows2999,rows3000,rows3001,rows3002,rows3003,rows3004,rows3005,rows3006,rows3007,rows3008,rows3009,rows3010,rows3011,rows3012,rows3013,rows3014,rows3015,rows3016,rows3017,rows3018,rows3019,rows3020,rows3021,rows3022,rows3023,rows3024,rows3025,rows3026,rows3027,rows3028,rows3029,rows3030,rows3031,rows3032,rows3033,rows3034,rows3035,rows3036,rows3037,rows3038,rows3039,rows3040,rows3041,rows3042,rows3043,rows3044,rows3045,rows3046,rows3047,rows3048,rows3049,rows3050,List.append_assoc,List.append_nil]
theorem partLength46 : partOps46.length=64 := by decide
theorem partStats46 : partRows46.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows46=371448 := by
  simp only [partRows46,List.length_append,MatrixRowBlocks.rows_weight_append,stats2987.1,stats2987.2,stats2988.1,stats2988.2,stats2989.1,stats2989.2,stats2990.1,stats2990.2,stats2991.1,stats2991.2,stats2992.1,stats2992.2,stats2993.1,stats2993.2,stats2994.1,stats2994.2,stats2995.1,stats2995.2,stats2996.1,stats2996.2,stats2997.1,stats2997.2,stats2998.1,stats2998.2,stats2999.1,stats2999.2,stats3000.1,stats3000.2,stats3001.1,stats3001.2,stats3002.1,stats3002.2,stats3003.1,stats3003.2,stats3004.1,stats3004.2,stats3005.1,stats3005.2,stats3006.1,stats3006.2,stats3007.1,stats3007.2,stats3008.1,stats3008.2,stats3009.1,stats3009.2,stats3010.1,stats3010.2,stats3011.1,stats3011.2,stats3012.1,stats3012.2,stats3013.1,stats3013.2,stats3014.1,stats3014.2,stats3015.1,stats3015.2,stats3016.1,stats3016.2,stats3017.1,stats3017.2,stats3018.1,stats3018.2,stats3019.1,stats3019.2,stats3020.1,stats3020.2,stats3021.1,stats3021.2,stats3022.1,stats3022.2,stats3023.1,stats3023.2,stats3024.1,stats3024.2,stats3025.1,stats3025.2,stats3026.1,stats3026.2,stats3027.1,stats3027.2,stats3028.1,stats3028.2,stats3029.1,stats3029.2,stats3030.1,stats3030.2,stats3031.1,stats3031.2,stats3032.1,stats3032.2,stats3033.1,stats3033.2,stats3034.1,stats3034.2,stats3035.1,stats3035.2,stats3036.1,stats3036.2,stats3037.1,stats3037.2,stats3038.1,stats3038.2,stats3039.1,stats3039.2,stats3040.1,stats3040.2,stats3041.1,stats3041.2,stats3042.1,stats3042.2,stats3043.1,stats3043.2,stats3044.1,stats3044.2,stats3045.1,stats3045.2,stats3046.1,stats3046.2,stats3047.1,stats3047.2,stats3048.1,stats3048.2,stats3049.1,stats3049.2,stats3050.1,stats3050.2]
  decide
end SharedFrameCheckedRows
