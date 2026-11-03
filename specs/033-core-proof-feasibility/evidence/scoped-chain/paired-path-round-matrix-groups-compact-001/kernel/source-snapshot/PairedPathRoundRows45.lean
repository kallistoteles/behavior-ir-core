import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData46
import PairedPathRoundInstructionMatrixData47
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2976 : actualRows2976=WordField.canonicalRows actualModulus 2976 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2976 : actualRows2976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2976=2820 := by core033_kernel_decide
theorem rows2977 : actualRows2977=WordField.canonicalRows actualModulus 2977 (.bnot 2976) := by core033_kernel_decide
theorem stats2977 : actualRows2977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2977=6276 := by core033_kernel_decide
theorem rows2978 : actualRows2978=WordField.canonicalRows actualModulus 2978 (.badd 2975 2977) := by core033_kernel_decide
theorem stats2978 : actualRows2978.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2978=5388 := by core033_kernel_decide
theorem rows2979 : actualRows2979=WordField.canonicalRows actualModulus 2979 (.bnot 2978) := by core033_kernel_decide
theorem stats2979 : actualRows2979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2979=6276 := by core033_kernel_decide
theorem rows2980 : actualRows2980=WordField.canonicalRows actualModulus 2980 (.band 2973 2979) := by core033_kernel_decide
theorem stats2980 : actualRows2980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2980=5124 := by core033_kernel_decide
theorem rows2981 : actualRows2981=WordField.canonicalRows actualModulus 2981 (.bxor 2968 2980) := by core033_kernel_decide
theorem stats2981 : actualRows2981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2981=7428 := by core033_kernel_decide
theorem rows2982 : actualRows2982=WordField.canonicalRows actualModulus 2982 (.shr 2981 31) := by core033_kernel_decide
theorem stats2982 : actualRows2982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2982=2892 := by core033_kernel_decide
theorem rows2983 : actualRows2983=WordField.canonicalRows actualModulus 2983 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2983 : actualRows2983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2983=2892 := by core033_kernel_decide
theorem rows2984 : actualRows2984=WordField.canonicalRows actualModulus 2984 (.bxor 2982 2983) := by core033_kernel_decide
theorem stats2984 : actualRows2984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2984=7428 := by core033_kernel_decide
theorem rows2985 : actualRows2985=WordField.canonicalRows actualModulus 2985 (.bnot 2984) := by core033_kernel_decide
theorem stats2985 : actualRows2985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2985=6276 := by core033_kernel_decide
theorem rows2986 : actualRows2986=WordField.canonicalRows actualModulus 2986 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2986 : actualRows2986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2986=2892 := by core033_kernel_decide
theorem rows2987 : actualRows2987=WordField.canonicalRows actualModulus 2987 (.badd 2985 2986) := by core033_kernel_decide
theorem stats2987 : actualRows2987.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2987=5388 := by core033_kernel_decide
theorem rows2988 : actualRows2988=WordField.canonicalRows actualModulus 2988 (.band 2987 2019) := by core033_kernel_decide
theorem stats2988 : actualRows2988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2988=5124 := by core033_kernel_decide
theorem rows2989 : actualRows2989=WordField.canonicalRows actualModulus 2989 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2989 : actualRows2989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2989=2892 := by core033_kernel_decide
theorem rows2990 : actualRows2990=WordField.canonicalRows actualModulus 2990 (.bxor 616 2989) := by core033_kernel_decide
theorem stats2990 : actualRows2990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2990=7428 := by core033_kernel_decide
theorem rows2991 : actualRows2991=WordField.canonicalRows actualModulus 2991 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2991 : actualRows2991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2991=2820 := by core033_kernel_decide
theorem rows2992 : actualRows2992=WordField.canonicalRows actualModulus 2992 (.bnot 2991) := by core033_kernel_decide
theorem stats2992 : actualRows2992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2992=6276 := by core033_kernel_decide
theorem rows2993 : actualRows2993=WordField.canonicalRows actualModulus 2993 (.band 2990 2992) := by core033_kernel_decide
theorem stats2993 : actualRows2993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2993=5124 := by core033_kernel_decide
theorem rows2994 : actualRows2994=WordField.canonicalRows actualModulus 2994 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2994 : actualRows2994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2994=2892 := by core033_kernel_decide
theorem rows2995 : actualRows2995=WordField.canonicalRows actualModulus 2995 (.bxor 616 2994) := by core033_kernel_decide
theorem stats2995 : actualRows2995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2995=7428 := by core033_kernel_decide
theorem rows2996 : actualRows2996=WordField.canonicalRows actualModulus 2996 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2996 : actualRows2996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2996=2820 := by core033_kernel_decide
theorem rows2997 : actualRows2997=WordField.canonicalRows actualModulus 2997 (.bnot 2996) := by core033_kernel_decide
theorem stats2997 : actualRows2997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2997=6276 := by core033_kernel_decide
theorem rows2998 : actualRows2998=WordField.canonicalRows actualModulus 2998 (.bxor 2995 2997) := by core033_kernel_decide
theorem stats2998 : actualRows2998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2998=7428 := by core033_kernel_decide
theorem rows2999 : actualRows2999=WordField.canonicalRows actualModulus 2999 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2999 : actualRows2999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2999=2892 := by core033_kernel_decide
theorem rows3000 : actualRows3000=WordField.canonicalRows actualModulus 3000 (.bxor 616 2999) := by core033_kernel_decide
theorem stats3000 : actualRows3000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3000=7428 := by core033_kernel_decide
theorem rows3001 : actualRows3001=WordField.canonicalRows actualModulus 3001 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3001 : actualRows3001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3001=2820 := by core033_kernel_decide
theorem rows3002 : actualRows3002=WordField.canonicalRows actualModulus 3002 (.bnot 3001) := by core033_kernel_decide
theorem stats3002 : actualRows3002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3002=6276 := by core033_kernel_decide
theorem rows3003 : actualRows3003=WordField.canonicalRows actualModulus 3003 (.badd 3000 3002) := by core033_kernel_decide
theorem stats3003 : actualRows3003.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3003=5388 := by core033_kernel_decide
theorem rows3004 : actualRows3004=WordField.canonicalRows actualModulus 3004 (.bnot 3003) := by core033_kernel_decide
theorem stats3004 : actualRows3004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3004=6276 := by core033_kernel_decide
theorem rows3005 : actualRows3005=WordField.canonicalRows actualModulus 3005 (.band 2998 3004) := by core033_kernel_decide
theorem stats3005 : actualRows3005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3005=5124 := by core033_kernel_decide
theorem rows3006 : actualRows3006=WordField.canonicalRows actualModulus 3006 (.bxor 2993 3005) := by core033_kernel_decide
theorem stats3006 : actualRows3006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3006=7428 := by core033_kernel_decide
theorem rows3007 : actualRows3007=WordField.canonicalRows actualModulus 3007 (.shr 3006 31) := by core033_kernel_decide
theorem stats3007 : actualRows3007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3007=2892 := by core033_kernel_decide
theorem rows3008 : actualRows3008=WordField.canonicalRows actualModulus 3008 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3008 : actualRows3008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3008=2892 := by core033_kernel_decide
theorem rows3009 : actualRows3009=WordField.canonicalRows actualModulus 3009 (.bxor 3007 3008) := by core033_kernel_decide
theorem stats3009 : actualRows3009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3009=7428 := by core033_kernel_decide
theorem rows3010 : actualRows3010=WordField.canonicalRows actualModulus 3010 (.bnot 3009) := by core033_kernel_decide
theorem stats3010 : actualRows3010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3010=6276 := by core033_kernel_decide
theorem rows3011 : actualRows3011=WordField.canonicalRows actualModulus 3011 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3011 : actualRows3011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3011=2892 := by core033_kernel_decide
theorem rows3012 : actualRows3012=WordField.canonicalRows actualModulus 3012 (.badd 3010 3011) := by core033_kernel_decide
theorem stats3012 : actualRows3012.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3012=5388 := by core033_kernel_decide
theorem rows3013 : actualRows3013=WordField.canonicalRows actualModulus 3013 (.bnot 3012) := by core033_kernel_decide
theorem stats3013 : actualRows3013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3013=6276 := by core033_kernel_decide
theorem rows3014 : actualRows3014=WordField.canonicalRows actualModulus 3014 (.band 3013 1865) := by core033_kernel_decide
theorem stats3014 : actualRows3014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3014=5124 := by core033_kernel_decide
theorem rows3015 : actualRows3015=WordField.canonicalRows actualModulus 3015 (.bxor 2988 3014) := by core033_kernel_decide
theorem stats3015 : actualRows3015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3015=7428 := by core033_kernel_decide
theorem rows3016 : actualRows3016=WordField.canonicalRows actualModulus 3016 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3016 : actualRows3016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3016=2892 := by core033_kernel_decide
theorem rows3017 : actualRows3017=WordField.canonicalRows actualModulus 3017 (.bxor 616 3016) := by core033_kernel_decide
theorem stats3017 : actualRows3017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3017=7428 := by core033_kernel_decide
theorem rows3018 : actualRows3018=WordField.canonicalRows actualModulus 3018 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3018 : actualRows3018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3018=2820 := by core033_kernel_decide
theorem rows3019 : actualRows3019=WordField.canonicalRows actualModulus 3019 (.bnot 3018) := by core033_kernel_decide
theorem stats3019 : actualRows3019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3019=6276 := by core033_kernel_decide
theorem rows3020 : actualRows3020=WordField.canonicalRows actualModulus 3020 (.band 3017 3019) := by core033_kernel_decide
theorem stats3020 : actualRows3020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3020=5124 := by core033_kernel_decide
theorem rows3021 : actualRows3021=WordField.canonicalRows actualModulus 3021 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3021 : actualRows3021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3021=2892 := by core033_kernel_decide
theorem rows3022 : actualRows3022=WordField.canonicalRows actualModulus 3022 (.bxor 616 3021) := by core033_kernel_decide
theorem stats3022 : actualRows3022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3022=7428 := by core033_kernel_decide
theorem rows3023 : actualRows3023=WordField.canonicalRows actualModulus 3023 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3023 : actualRows3023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3023=2820 := by core033_kernel_decide
theorem rows3024 : actualRows3024=WordField.canonicalRows actualModulus 3024 (.bnot 3023) := by core033_kernel_decide
theorem stats3024 : actualRows3024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3024=6276 := by core033_kernel_decide
theorem rows3025 : actualRows3025=WordField.canonicalRows actualModulus 3025 (.bxor 3022 3024) := by core033_kernel_decide
theorem stats3025 : actualRows3025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3025=7428 := by core033_kernel_decide
theorem rows3026 : actualRows3026=WordField.canonicalRows actualModulus 3026 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3026 : actualRows3026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3026=2892 := by core033_kernel_decide
theorem rows3027 : actualRows3027=WordField.canonicalRows actualModulus 3027 (.bxor 616 3026) := by core033_kernel_decide
theorem stats3027 : actualRows3027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3027=7428 := by core033_kernel_decide
theorem rows3028 : actualRows3028=WordField.canonicalRows actualModulus 3028 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3028 : actualRows3028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3028=2820 := by core033_kernel_decide
theorem rows3029 : actualRows3029=WordField.canonicalRows actualModulus 3029 (.bnot 3028) := by core033_kernel_decide
theorem stats3029 : actualRows3029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3029=6276 := by core033_kernel_decide
theorem rows3030 : actualRows3030=WordField.canonicalRows actualModulus 3030 (.badd 3027 3029) := by core033_kernel_decide
theorem stats3030 : actualRows3030.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3030=5388 := by core033_kernel_decide
theorem rows3031 : actualRows3031=WordField.canonicalRows actualModulus 3031 (.bnot 3030) := by core033_kernel_decide
theorem stats3031 : actualRows3031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3031=6276 := by core033_kernel_decide
theorem rows3032 : actualRows3032=WordField.canonicalRows actualModulus 3032 (.band 3025 3031) := by core033_kernel_decide
theorem stats3032 : actualRows3032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3032=5124 := by core033_kernel_decide
theorem rows3033 : actualRows3033=WordField.canonicalRows actualModulus 3033 (.bxor 3020 3032) := by core033_kernel_decide
theorem stats3033 : actualRows3033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3033=7428 := by core033_kernel_decide
theorem rows3034 : actualRows3034=WordField.canonicalRows actualModulus 3034 (.shr 3033 31) := by core033_kernel_decide
theorem stats3034 : actualRows3034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3034=2892 := by core033_kernel_decide
theorem rows3035 : actualRows3035=WordField.canonicalRows actualModulus 3035 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3035 : actualRows3035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3035=2892 := by core033_kernel_decide
theorem rows3036 : actualRows3036=WordField.canonicalRows actualModulus 3036 (.bxor 3034 3035) := by core033_kernel_decide
theorem stats3036 : actualRows3036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3036=7428 := by core033_kernel_decide
theorem rows3037 : actualRows3037=WordField.canonicalRows actualModulus 3037 (.bnot 3036) := by core033_kernel_decide
theorem stats3037 : actualRows3037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3037=6276 := by core033_kernel_decide
theorem rows3038 : actualRows3038=WordField.canonicalRows actualModulus 3038 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3038 : actualRows3038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3038=2892 := by core033_kernel_decide
theorem rows3039 : actualRows3039=WordField.canonicalRows actualModulus 3039 (.badd 3037 3038) := by core033_kernel_decide
theorem stats3039 : actualRows3039.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3039=5388 := by core033_kernel_decide
def partRows45 : List R1CS.Row := actualRows2976++actualRows2977++actualRows2978++actualRows2979++actualRows2980++actualRows2981++actualRows2982++actualRows2983++actualRows2984++actualRows2985++actualRows2986++actualRows2987++actualRows2988++actualRows2989++actualRows2990++actualRows2991++actualRows2992++actualRows2993++actualRows2994++actualRows2995++actualRows2996++actualRows2997++actualRows2998++actualRows2999++actualRows3000++actualRows3001++actualRows3002++actualRows3003++actualRows3004++actualRows3005++actualRows3006++actualRows3007++actualRows3008++actualRows3009++actualRows3010++actualRows3011++actualRows3012++actualRows3013++actualRows3014++actualRows3015++actualRows3016++actualRows3017++actualRows3018++actualRows3019++actualRows3020++actualRows3021++actualRows3022++actualRows3023++actualRows3024++actualRows3025++actualRows3026++actualRows3027++actualRows3028++actualRows3029++actualRows3030++actualRows3031++actualRows3032++actualRows3033++actualRows3034++actualRows3035++actualRows3036++actualRows3037++actualRows3038++actualRows3039
def partOps45 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 2976,.badd 2975 2977,.bnot 2978,.band 2973 2979,.bxor 2968 2980,.shr 2981 31,.literal (BitVec.ofNat 32 1),.bxor 2982 2983,.bnot 2984,.literal (BitVec.ofNat 32 1),.badd 2985 2986,.band 2987 2019,.literal (BitVec.ofNat 32 2),.bxor 616 2989,.literal (BitVec.ofNat 32 0),.bnot 2991,.band 2990 2992,.literal (BitVec.ofNat 32 2),.bxor 616 2994,.literal (BitVec.ofNat 32 0),.bnot 2996,.bxor 2995 2997,.literal (BitVec.ofNat 32 2),.bxor 616 2999,.literal (BitVec.ofNat 32 0),.bnot 3001,.badd 3000 3002,.bnot 3003,.band 2998 3004,.bxor 2993 3005,.shr 3006 31,.literal (BitVec.ofNat 32 1),.bxor 3007 3008,.bnot 3009,.literal (BitVec.ofNat 32 1),.badd 3010 3011,.bnot 3012,.band 3013 1865,.bxor 2988 3014,.literal (BitVec.ofNat 32 2),.bxor 616 3016,.literal (BitVec.ofNat 32 0),.bnot 3018,.band 3017 3019,.literal (BitVec.ofNat 32 2),.bxor 616 3021,.literal (BitVec.ofNat 32 0),.bnot 3023,.bxor 3022 3024,.literal (BitVec.ofNat 32 2),.bxor 616 3026,.literal (BitVec.ofNat 32 0),.bnot 3028,.badd 3027 3029,.bnot 3030,.band 3025 3031,.bxor 3020 3032,.shr 3033 31,.literal (BitVec.ofNat 32 1),.bxor 3034 3035,.bnot 3036,.literal (BitVec.ofNat 32 1),.badd 3037 3038]
theorem partExact45 : partRows45=WordField.rows actualModulus 2976 partOps45 := by
  simp only [partRows45,partOps45,WordField.rows,rows2976,rows2977,rows2978,rows2979,rows2980,rows2981,rows2982,rows2983,rows2984,rows2985,rows2986,rows2987,rows2988,rows2989,rows2990,rows2991,rows2992,rows2993,rows2994,rows2995,rows2996,rows2997,rows2998,rows2999,rows3000,rows3001,rows3002,rows3003,rows3004,rows3005,rows3006,rows3007,rows3008,rows3009,rows3010,rows3011,rows3012,rows3013,rows3014,rows3015,rows3016,rows3017,rows3018,rows3019,rows3020,rows3021,rows3022,rows3023,rows3024,rows3025,rows3026,rows3027,rows3028,rows3029,rows3030,rows3031,rows3032,rows3033,rows3034,rows3035,rows3036,rows3037,rows3038,rows3039,List.append_assoc,List.append_nil]
theorem partLength45 : partOps45.length=64 := by decide
theorem partStats45 : partRows45.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows45=330600 := by
  simp only [partRows45,List.length_append,MatrixRowBlocks.rows_weight_append,stats2976.1,stats2976.2,stats2977.1,stats2977.2,stats2978.1,stats2978.2,stats2979.1,stats2979.2,stats2980.1,stats2980.2,stats2981.1,stats2981.2,stats2982.1,stats2982.2,stats2983.1,stats2983.2,stats2984.1,stats2984.2,stats2985.1,stats2985.2,stats2986.1,stats2986.2,stats2987.1,stats2987.2,stats2988.1,stats2988.2,stats2989.1,stats2989.2,stats2990.1,stats2990.2,stats2991.1,stats2991.2,stats2992.1,stats2992.2,stats2993.1,stats2993.2,stats2994.1,stats2994.2,stats2995.1,stats2995.2,stats2996.1,stats2996.2,stats2997.1,stats2997.2,stats2998.1,stats2998.2,stats2999.1,stats2999.2,stats3000.1,stats3000.2,stats3001.1,stats3001.2,stats3002.1,stats3002.2,stats3003.1,stats3003.2,stats3004.1,stats3004.2,stats3005.1,stats3005.2,stats3006.1,stats3006.2,stats3007.1,stats3007.2,stats3008.1,stats3008.2,stats3009.1,stats3009.2,stats3010.1,stats3010.2,stats3011.1,stats3011.2,stats3012.1,stats3012.2,stats3013.1,stats3013.2,stats3014.1,stats3014.2,stats3015.1,stats3015.2,stats3016.1,stats3016.2,stats3017.1,stats3017.2,stats3018.1,stats3018.2,stats3019.1,stats3019.2,stats3020.1,stats3020.2,stats3021.1,stats3021.2,stats3022.1,stats3022.2,stats3023.1,stats3023.2,stats3024.1,stats3024.2,stats3025.1,stats3025.2,stats3026.1,stats3026.2,stats3027.1,stats3027.2,stats3028.1,stats3028.2,stats3029.1,stats3029.2,stats3030.1,stats3030.2,stats3031.1,stats3031.2,stats3032.1,stats3032.2,stats3033.1,stats3033.2,stats3034.1,stats3034.2,stats3035.1,stats3035.2,stats3036.1,stats3036.2,stats3037.1,stats3037.2,stats3038.1,stats3038.2,stats3039.1,stats3039.2]
  decide
end PairedPathRoundCheckedRows
