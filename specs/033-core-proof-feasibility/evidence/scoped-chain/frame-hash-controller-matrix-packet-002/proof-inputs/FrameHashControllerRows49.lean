import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData49
import FrameHashControllerInstructionMatrixData50
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3179 : actualRows3179=WordField.canonicalRows actualModulus 3179 (.bnot 3178) := by core033_kernel_decide
theorem stats3179 : actualRows3179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3179=6276 := by core033_kernel_decide
theorem rows3180 : actualRows3180=WordField.canonicalRows actualModulus 3180 (.band 3177 3179) := by core033_kernel_decide
theorem stats3180 : actualRows3180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3180=5124 := by core033_kernel_decide
theorem rows3181 : actualRows3181=WordField.canonicalRows actualModulus 3181 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3181 : actualRows3181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3181=2892 := by core033_kernel_decide
theorem rows3182 : actualRows3182=WordField.canonicalRows actualModulus 3182 (.bxor 0 3181) := by core033_kernel_decide
theorem stats3182 : actualRows3182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3182=7428 := by core033_kernel_decide
theorem rows3183 : actualRows3183=WordField.canonicalRows actualModulus 3183 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3183 : actualRows3183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3183=2820 := by core033_kernel_decide
theorem rows3184 : actualRows3184=WordField.canonicalRows actualModulus 3184 (.bnot 3183) := by core033_kernel_decide
theorem stats3184 : actualRows3184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3184=6276 := by core033_kernel_decide
theorem rows3185 : actualRows3185=WordField.canonicalRows actualModulus 3185 (.bxor 3182 3184) := by core033_kernel_decide
theorem stats3185 : actualRows3185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3185=7428 := by core033_kernel_decide
theorem rows3186 : actualRows3186=WordField.canonicalRows actualModulus 3186 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3186 : actualRows3186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3186=2892 := by core033_kernel_decide
theorem rows3187 : actualRows3187=WordField.canonicalRows actualModulus 3187 (.bxor 0 3186) := by core033_kernel_decide
theorem stats3187 : actualRows3187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3187=7428 := by core033_kernel_decide
theorem rows3188 : actualRows3188=WordField.canonicalRows actualModulus 3188 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3188 : actualRows3188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3188=2820 := by core033_kernel_decide
theorem rows3189 : actualRows3189=WordField.canonicalRows actualModulus 3189 (.bnot 3188) := by core033_kernel_decide
theorem stats3189 : actualRows3189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3189=6276 := by core033_kernel_decide
theorem rows3190 : actualRows3190=WordField.canonicalRows actualModulus 3190 (.badd 3187 3189) := by core033_kernel_decide
theorem stats3190 : actualRows3190.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3190=5388 := by core033_kernel_decide
theorem rows3191 : actualRows3191=WordField.canonicalRows actualModulus 3191 (.bnot 3190) := by core033_kernel_decide
theorem stats3191 : actualRows3191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3191=6276 := by core033_kernel_decide
theorem rows3192 : actualRows3192=WordField.canonicalRows actualModulus 3192 (.band 3185 3191) := by core033_kernel_decide
theorem stats3192 : actualRows3192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3192=5124 := by core033_kernel_decide
theorem rows3193 : actualRows3193=WordField.canonicalRows actualModulus 3193 (.bxor 3180 3192) := by core033_kernel_decide
theorem stats3193 : actualRows3193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3193=7428 := by core033_kernel_decide
theorem rows3194 : actualRows3194=WordField.canonicalRows actualModulus 3194 (.shr 3193 31) := by core033_kernel_decide
theorem stats3194 : actualRows3194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3194=2892 := by core033_kernel_decide
theorem rows3195 : actualRows3195=WordField.canonicalRows actualModulus 3195 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3195 : actualRows3195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3195=2892 := by core033_kernel_decide
theorem rows3196 : actualRows3196=WordField.canonicalRows actualModulus 3196 (.bxor 3194 3195) := by core033_kernel_decide
theorem stats3196 : actualRows3196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3196=7428 := by core033_kernel_decide
theorem rows3197 : actualRows3197=WordField.canonicalRows actualModulus 3197 (.bnot 3196) := by core033_kernel_decide
theorem stats3197 : actualRows3197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3197=6276 := by core033_kernel_decide
theorem rows3198 : actualRows3198=WordField.canonicalRows actualModulus 3198 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3198 : actualRows3198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3198=2892 := by core033_kernel_decide
theorem rows3199 : actualRows3199=WordField.canonicalRows actualModulus 3199 (.badd 3197 3198) := by core033_kernel_decide
theorem stats3199 : actualRows3199.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3199=5388 := by core033_kernel_decide
theorem rows3200 : actualRows3200=WordField.canonicalRows actualModulus 3200 (.band 3199 1055) := by core033_kernel_decide
theorem stats3200 : actualRows3200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3200=5124 := by core033_kernel_decide
theorem rows3201 : actualRows3201=WordField.canonicalRows actualModulus 3201 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3201 : actualRows3201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3201=2892 := by core033_kernel_decide
theorem rows3202 : actualRows3202=WordField.canonicalRows actualModulus 3202 (.bxor 0 3201) := by core033_kernel_decide
theorem stats3202 : actualRows3202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3202=7428 := by core033_kernel_decide
theorem rows3203 : actualRows3203=WordField.canonicalRows actualModulus 3203 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3203 : actualRows3203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3203=2820 := by core033_kernel_decide
theorem rows3204 : actualRows3204=WordField.canonicalRows actualModulus 3204 (.bnot 3203) := by core033_kernel_decide
theorem stats3204 : actualRows3204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3204=6276 := by core033_kernel_decide
theorem rows3205 : actualRows3205=WordField.canonicalRows actualModulus 3205 (.band 3202 3204) := by core033_kernel_decide
theorem stats3205 : actualRows3205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3205=5124 := by core033_kernel_decide
theorem rows3206 : actualRows3206=WordField.canonicalRows actualModulus 3206 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3206 : actualRows3206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3206=2892 := by core033_kernel_decide
theorem rows3207 : actualRows3207=WordField.canonicalRows actualModulus 3207 (.bxor 0 3206) := by core033_kernel_decide
theorem stats3207 : actualRows3207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3207=7428 := by core033_kernel_decide
theorem rows3208 : actualRows3208=WordField.canonicalRows actualModulus 3208 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3208 : actualRows3208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3208=2820 := by core033_kernel_decide
theorem rows3209 : actualRows3209=WordField.canonicalRows actualModulus 3209 (.bnot 3208) := by core033_kernel_decide
theorem stats3209 : actualRows3209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3209=6276 := by core033_kernel_decide
theorem rows3210 : actualRows3210=WordField.canonicalRows actualModulus 3210 (.bxor 3207 3209) := by core033_kernel_decide
theorem stats3210 : actualRows3210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3210=7428 := by core033_kernel_decide
theorem rows3211 : actualRows3211=WordField.canonicalRows actualModulus 3211 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3211 : actualRows3211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3211=2892 := by core033_kernel_decide
theorem rows3212 : actualRows3212=WordField.canonicalRows actualModulus 3212 (.bxor 0 3211) := by core033_kernel_decide
theorem stats3212 : actualRows3212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3212=7428 := by core033_kernel_decide
theorem rows3213 : actualRows3213=WordField.canonicalRows actualModulus 3213 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3213 : actualRows3213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3213=2820 := by core033_kernel_decide
theorem rows3214 : actualRows3214=WordField.canonicalRows actualModulus 3214 (.bnot 3213) := by core033_kernel_decide
theorem stats3214 : actualRows3214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3214=6276 := by core033_kernel_decide
theorem rows3215 : actualRows3215=WordField.canonicalRows actualModulus 3215 (.badd 3212 3214) := by core033_kernel_decide
theorem stats3215 : actualRows3215.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3215=5388 := by core033_kernel_decide
theorem rows3216 : actualRows3216=WordField.canonicalRows actualModulus 3216 (.bnot 3215) := by core033_kernel_decide
theorem stats3216 : actualRows3216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3216=6276 := by core033_kernel_decide
theorem rows3217 : actualRows3217=WordField.canonicalRows actualModulus 3217 (.band 3210 3216) := by core033_kernel_decide
theorem stats3217 : actualRows3217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3217=5124 := by core033_kernel_decide
theorem rows3218 : actualRows3218=WordField.canonicalRows actualModulus 3218 (.bxor 3205 3217) := by core033_kernel_decide
theorem stats3218 : actualRows3218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3218=7428 := by core033_kernel_decide
theorem rows3219 : actualRows3219=WordField.canonicalRows actualModulus 3219 (.shr 3218 31) := by core033_kernel_decide
theorem stats3219 : actualRows3219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3219=2892 := by core033_kernel_decide
theorem rows3220 : actualRows3220=WordField.canonicalRows actualModulus 3220 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3220 : actualRows3220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3220=2892 := by core033_kernel_decide
theorem rows3221 : actualRows3221=WordField.canonicalRows actualModulus 3221 (.bxor 3219 3220) := by core033_kernel_decide
theorem stats3221 : actualRows3221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3221=7428 := by core033_kernel_decide
theorem rows3222 : actualRows3222=WordField.canonicalRows actualModulus 3222 (.bnot 3221) := by core033_kernel_decide
theorem stats3222 : actualRows3222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3222=6276 := by core033_kernel_decide
theorem rows3223 : actualRows3223=WordField.canonicalRows actualModulus 3223 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3223 : actualRows3223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3223=2892 := by core033_kernel_decide
theorem rows3224 : actualRows3224=WordField.canonicalRows actualModulus 3224 (.badd 3222 3223) := by core033_kernel_decide
theorem stats3224 : actualRows3224.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3224=5388 := by core033_kernel_decide
theorem rows3225 : actualRows3225=WordField.canonicalRows actualModulus 3225 (.bnot 3224) := by core033_kernel_decide
theorem stats3225 : actualRows3225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3225=6276 := by core033_kernel_decide
theorem rows3226 : actualRows3226=WordField.canonicalRows actualModulus 3226 (.band 3225 863) := by core033_kernel_decide
theorem stats3226 : actualRows3226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3226=5124 := by core033_kernel_decide
theorem rows3227 : actualRows3227=WordField.canonicalRows actualModulus 3227 (.bxor 3200 3226) := by core033_kernel_decide
theorem stats3227 : actualRows3227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3227=7428 := by core033_kernel_decide
theorem rows3228 : actualRows3228=WordField.canonicalRows actualModulus 3228 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3228 : actualRows3228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3228=2892 := by core033_kernel_decide
theorem rows3229 : actualRows3229=WordField.canonicalRows actualModulus 3229 (.bxor 0 3228) := by core033_kernel_decide
theorem stats3229 : actualRows3229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3229=7428 := by core033_kernel_decide
theorem rows3230 : actualRows3230=WordField.canonicalRows actualModulus 3230 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3230 : actualRows3230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3230=2820 := by core033_kernel_decide
theorem rows3231 : actualRows3231=WordField.canonicalRows actualModulus 3231 (.bnot 3230) := by core033_kernel_decide
theorem stats3231 : actualRows3231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3231=6276 := by core033_kernel_decide
theorem rows3232 : actualRows3232=WordField.canonicalRows actualModulus 3232 (.band 3229 3231) := by core033_kernel_decide
theorem stats3232 : actualRows3232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3232=5124 := by core033_kernel_decide
theorem rows3233 : actualRows3233=WordField.canonicalRows actualModulus 3233 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3233 : actualRows3233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3233=2892 := by core033_kernel_decide
theorem rows3234 : actualRows3234=WordField.canonicalRows actualModulus 3234 (.bxor 0 3233) := by core033_kernel_decide
theorem stats3234 : actualRows3234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3234=7428 := by core033_kernel_decide
theorem rows3235 : actualRows3235=WordField.canonicalRows actualModulus 3235 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3235 : actualRows3235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3235=2820 := by core033_kernel_decide
theorem rows3236 : actualRows3236=WordField.canonicalRows actualModulus 3236 (.bnot 3235) := by core033_kernel_decide
theorem stats3236 : actualRows3236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3236=6276 := by core033_kernel_decide
theorem rows3237 : actualRows3237=WordField.canonicalRows actualModulus 3237 (.bxor 3234 3236) := by core033_kernel_decide
theorem stats3237 : actualRows3237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3237=7428 := by core033_kernel_decide
theorem rows3238 : actualRows3238=WordField.canonicalRows actualModulus 3238 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3238 : actualRows3238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3238=2892 := by core033_kernel_decide
theorem rows3239 : actualRows3239=WordField.canonicalRows actualModulus 3239 (.bxor 0 3238) := by core033_kernel_decide
theorem stats3239 : actualRows3239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3239=7428 := by core033_kernel_decide
theorem rows3240 : actualRows3240=WordField.canonicalRows actualModulus 3240 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3240 : actualRows3240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3240=2820 := by core033_kernel_decide
theorem rows3241 : actualRows3241=WordField.canonicalRows actualModulus 3241 (.bnot 3240) := by core033_kernel_decide
theorem stats3241 : actualRows3241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3241=6276 := by core033_kernel_decide
theorem rows3242 : actualRows3242=WordField.canonicalRows actualModulus 3242 (.badd 3239 3241) := by core033_kernel_decide
theorem stats3242 : actualRows3242.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3242=5388 := by core033_kernel_decide
def partRows49 : List R1CS.Row := actualRows3179++actualRows3180++actualRows3181++actualRows3182++actualRows3183++actualRows3184++actualRows3185++actualRows3186++actualRows3187++actualRows3188++actualRows3189++actualRows3190++actualRows3191++actualRows3192++actualRows3193++actualRows3194++actualRows3195++actualRows3196++actualRows3197++actualRows3198++actualRows3199++actualRows3200++actualRows3201++actualRows3202++actualRows3203++actualRows3204++actualRows3205++actualRows3206++actualRows3207++actualRows3208++actualRows3209++actualRows3210++actualRows3211++actualRows3212++actualRows3213++actualRows3214++actualRows3215++actualRows3216++actualRows3217++actualRows3218++actualRows3219++actualRows3220++actualRows3221++actualRows3222++actualRows3223++actualRows3224++actualRows3225++actualRows3226++actualRows3227++actualRows3228++actualRows3229++actualRows3230++actualRows3231++actualRows3232++actualRows3233++actualRows3234++actualRows3235++actualRows3236++actualRows3237++actualRows3238++actualRows3239++actualRows3240++actualRows3241++actualRows3242
def partOps49 : List WordIR.Op := [.bnot 3178,.band 3177 3179,.literal (BitVec.ofNat 32 2),.bxor 0 3181,.literal (BitVec.ofNat 32 0),.bnot 3183,.bxor 3182 3184,.literal (BitVec.ofNat 32 2),.bxor 0 3186,.literal (BitVec.ofNat 32 0),.bnot 3188,.badd 3187 3189,.bnot 3190,.band 3185 3191,.bxor 3180 3192,.shr 3193 31,.literal (BitVec.ofNat 32 1),.bxor 3194 3195,.bnot 3196,.literal (BitVec.ofNat 32 1),.badd 3197 3198,.band 3199 1055,.literal (BitVec.ofNat 32 2),.bxor 0 3201,.literal (BitVec.ofNat 32 0),.bnot 3203,.band 3202 3204,.literal (BitVec.ofNat 32 2),.bxor 0 3206,.literal (BitVec.ofNat 32 0),.bnot 3208,.bxor 3207 3209,.literal (BitVec.ofNat 32 2),.bxor 0 3211,.literal (BitVec.ofNat 32 0),.bnot 3213,.badd 3212 3214,.bnot 3215,.band 3210 3216,.bxor 3205 3217,.shr 3218 31,.literal (BitVec.ofNat 32 1),.bxor 3219 3220,.bnot 3221,.literal (BitVec.ofNat 32 1),.badd 3222 3223,.bnot 3224,.band 3225 863,.bxor 3200 3226,.literal (BitVec.ofNat 32 2),.bxor 0 3228,.literal (BitVec.ofNat 32 0),.bnot 3230,.band 3229 3231,.literal (BitVec.ofNat 32 2),.bxor 0 3233,.literal (BitVec.ofNat 32 0),.bnot 3235,.bxor 3234 3236,.literal (BitVec.ofNat 32 2),.bxor 0 3238,.literal (BitVec.ofNat 32 0),.bnot 3240,.badd 3239 3241]
theorem partExact49 : partRows49=WordField.rows actualModulus 3179 partOps49 := by
  simp only [partRows49,partOps49,WordField.rows,rows3179,rows3180,rows3181,rows3182,rows3183,rows3184,rows3185,rows3186,rows3187,rows3188,rows3189,rows3190,rows3191,rows3192,rows3193,rows3194,rows3195,rows3196,rows3197,rows3198,rows3199,rows3200,rows3201,rows3202,rows3203,rows3204,rows3205,rows3206,rows3207,rows3208,rows3209,rows3210,rows3211,rows3212,rows3213,rows3214,rows3215,rows3216,rows3217,rows3218,rows3219,rows3220,rows3221,rows3222,rows3223,rows3224,rows3225,rows3226,rows3227,rows3228,rows3229,rows3230,rows3231,rows3232,rows3233,rows3234,rows3235,rows3236,rows3237,rows3238,rows3239,rows3240,rows3241,rows3242,List.append_assoc,List.append_nil]
theorem partLength49 : partOps49.length=64 := by decide
theorem partStats49 : partRows49.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows49=332568 := by
  simp only [partRows49,List.length_append,MatrixRowBlocks.rows_weight_append,stats3179.1,stats3179.2,stats3180.1,stats3180.2,stats3181.1,stats3181.2,stats3182.1,stats3182.2,stats3183.1,stats3183.2,stats3184.1,stats3184.2,stats3185.1,stats3185.2,stats3186.1,stats3186.2,stats3187.1,stats3187.2,stats3188.1,stats3188.2,stats3189.1,stats3189.2,stats3190.1,stats3190.2,stats3191.1,stats3191.2,stats3192.1,stats3192.2,stats3193.1,stats3193.2,stats3194.1,stats3194.2,stats3195.1,stats3195.2,stats3196.1,stats3196.2,stats3197.1,stats3197.2,stats3198.1,stats3198.2,stats3199.1,stats3199.2,stats3200.1,stats3200.2,stats3201.1,stats3201.2,stats3202.1,stats3202.2,stats3203.1,stats3203.2,stats3204.1,stats3204.2,stats3205.1,stats3205.2,stats3206.1,stats3206.2,stats3207.1,stats3207.2,stats3208.1,stats3208.2,stats3209.1,stats3209.2,stats3210.1,stats3210.2,stats3211.1,stats3211.2,stats3212.1,stats3212.2,stats3213.1,stats3213.2,stats3214.1,stats3214.2,stats3215.1,stats3215.2,stats3216.1,stats3216.2,stats3217.1,stats3217.2,stats3218.1,stats3218.2,stats3219.1,stats3219.2,stats3220.1,stats3220.2,stats3221.1,stats3221.2,stats3222.1,stats3222.2,stats3223.1,stats3223.2,stats3224.1,stats3224.2,stats3225.1,stats3225.2,stats3226.1,stats3226.2,stats3227.1,stats3227.2,stats3228.1,stats3228.2,stats3229.1,stats3229.2,stats3230.1,stats3230.2,stats3231.1,stats3231.2,stats3232.1,stats3232.2,stats3233.1,stats3233.2,stats3234.1,stats3234.2,stats3235.1,stats3235.2,stats3236.1,stats3236.2,stats3237.1,stats3237.2,stats3238.1,stats3238.2,stats3239.1,stats3239.2,stats3240.1,stats3240.2,stats3241.1,stats3241.2,stats3242.1,stats3242.2]
  decide
end FrameHashControllerCheckedRows
