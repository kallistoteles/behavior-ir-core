import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData49
import AuthenticatedBranchRoundInstructionMatrixData50
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3190 : actualRows3190=WordField.canonicalRows actualModulus 3190 (.shr 3189 31) := by core033_kernel_decide
theorem stats3190 : actualRows3190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3190=2892 := by core033_kernel_decide
theorem rows3191 : actualRows3191=WordField.canonicalRows actualModulus 3191 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3191 : actualRows3191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3191=2892 := by core033_kernel_decide
theorem rows3192 : actualRows3192=WordField.canonicalRows actualModulus 3192 (.bxor 3190 3191) := by core033_kernel_decide
theorem stats3192 : actualRows3192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3192=7428 := by core033_kernel_decide
theorem rows3193 : actualRows3193=WordField.canonicalRows actualModulus 3193 (.bnot 3192) := by core033_kernel_decide
theorem stats3193 : actualRows3193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3193=6276 := by core033_kernel_decide
theorem rows3194 : actualRows3194=WordField.canonicalRows actualModulus 3194 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3194 : actualRows3194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3194=2892 := by core033_kernel_decide
theorem rows3195 : actualRows3195=WordField.canonicalRows actualModulus 3195 (.badd 3193 3194) := by core033_kernel_decide
theorem stats3195 : actualRows3195.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3195=5388 := by core033_kernel_decide
theorem rows3196 : actualRows3196=WordField.canonicalRows actualModulus 3196 (.band 3195 1695) := by core033_kernel_decide
theorem stats3196 : actualRows3196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3196=5124 := by core033_kernel_decide
theorem rows3197 : actualRows3197=WordField.canonicalRows actualModulus 3197 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3197 : actualRows3197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3197=2892 := by core033_kernel_decide
theorem rows3198 : actualRows3198=WordField.canonicalRows actualModulus 3198 (.bxor 1299 3197) := by core033_kernel_decide
theorem stats3198 : actualRows3198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3198=7428 := by core033_kernel_decide
theorem rows3199 : actualRows3199=WordField.canonicalRows actualModulus 3199 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3199 : actualRows3199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3199=2820 := by core033_kernel_decide
theorem rows3200 : actualRows3200=WordField.canonicalRows actualModulus 3200 (.bnot 3199) := by core033_kernel_decide
theorem stats3200 : actualRows3200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3200=6276 := by core033_kernel_decide
theorem rows3201 : actualRows3201=WordField.canonicalRows actualModulus 3201 (.band 3198 3200) := by core033_kernel_decide
theorem stats3201 : actualRows3201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3201=5124 := by core033_kernel_decide
theorem rows3202 : actualRows3202=WordField.canonicalRows actualModulus 3202 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3202 : actualRows3202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3202=2892 := by core033_kernel_decide
theorem rows3203 : actualRows3203=WordField.canonicalRows actualModulus 3203 (.bxor 1299 3202) := by core033_kernel_decide
theorem stats3203 : actualRows3203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3203=7428 := by core033_kernel_decide
theorem rows3204 : actualRows3204=WordField.canonicalRows actualModulus 3204 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3204 : actualRows3204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3204=2820 := by core033_kernel_decide
theorem rows3205 : actualRows3205=WordField.canonicalRows actualModulus 3205 (.bnot 3204) := by core033_kernel_decide
theorem stats3205 : actualRows3205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3205=6276 := by core033_kernel_decide
theorem rows3206 : actualRows3206=WordField.canonicalRows actualModulus 3206 (.bxor 3203 3205) := by core033_kernel_decide
theorem stats3206 : actualRows3206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3206=7428 := by core033_kernel_decide
theorem rows3207 : actualRows3207=WordField.canonicalRows actualModulus 3207 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3207 : actualRows3207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3207=2892 := by core033_kernel_decide
theorem rows3208 : actualRows3208=WordField.canonicalRows actualModulus 3208 (.bxor 1299 3207) := by core033_kernel_decide
theorem stats3208 : actualRows3208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3208=7428 := by core033_kernel_decide
theorem rows3209 : actualRows3209=WordField.canonicalRows actualModulus 3209 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3209 : actualRows3209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3209=2820 := by core033_kernel_decide
theorem rows3210 : actualRows3210=WordField.canonicalRows actualModulus 3210 (.bnot 3209) := by core033_kernel_decide
theorem stats3210 : actualRows3210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3210=6276 := by core033_kernel_decide
theorem rows3211 : actualRows3211=WordField.canonicalRows actualModulus 3211 (.badd 3208 3210) := by core033_kernel_decide
theorem stats3211 : actualRows3211.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3211=5388 := by core033_kernel_decide
theorem rows3212 : actualRows3212=WordField.canonicalRows actualModulus 3212 (.bnot 3211) := by core033_kernel_decide
theorem stats3212 : actualRows3212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3212=6276 := by core033_kernel_decide
theorem rows3213 : actualRows3213=WordField.canonicalRows actualModulus 3213 (.band 3206 3212) := by core033_kernel_decide
theorem stats3213 : actualRows3213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3213=5124 := by core033_kernel_decide
theorem rows3214 : actualRows3214=WordField.canonicalRows actualModulus 3214 (.bxor 3201 3213) := by core033_kernel_decide
theorem stats3214 : actualRows3214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3214=7428 := by core033_kernel_decide
theorem rows3215 : actualRows3215=WordField.canonicalRows actualModulus 3215 (.shr 3214 31) := by core033_kernel_decide
theorem stats3215 : actualRows3215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3215=2892 := by core033_kernel_decide
theorem rows3216 : actualRows3216=WordField.canonicalRows actualModulus 3216 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3216 : actualRows3216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3216=2892 := by core033_kernel_decide
theorem rows3217 : actualRows3217=WordField.canonicalRows actualModulus 3217 (.bxor 3215 3216) := by core033_kernel_decide
theorem stats3217 : actualRows3217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3217=7428 := by core033_kernel_decide
theorem rows3218 : actualRows3218=WordField.canonicalRows actualModulus 3218 (.bnot 3217) := by core033_kernel_decide
theorem stats3218 : actualRows3218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3218=6276 := by core033_kernel_decide
theorem rows3219 : actualRows3219=WordField.canonicalRows actualModulus 3219 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3219 : actualRows3219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3219=2892 := by core033_kernel_decide
theorem rows3220 : actualRows3220=WordField.canonicalRows actualModulus 3220 (.badd 3218 3219) := by core033_kernel_decide
theorem stats3220 : actualRows3220.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3220=5388 := by core033_kernel_decide
theorem rows3221 : actualRows3221=WordField.canonicalRows actualModulus 3221 (.bnot 3220) := by core033_kernel_decide
theorem stats3221 : actualRows3221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3221=6276 := by core033_kernel_decide
theorem rows3222 : actualRows3222=WordField.canonicalRows actualModulus 3222 (.literal (BitVec.ofNat 32 3144134277)) := by core033_kernel_decide
theorem stats3222 : actualRows3222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3222=4188 := by core033_kernel_decide
theorem rows3223 : actualRows3223=WordField.canonicalRows actualModulus 3223 (.band 3221 3222) := by core033_kernel_decide
theorem stats3223 : actualRows3223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3223=5124 := by core033_kernel_decide
theorem rows3224 : actualRows3224=WordField.canonicalRows actualModulus 3224 (.bxor 3196 3223) := by core033_kernel_decide
theorem stats3224 : actualRows3224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3224=7428 := by core033_kernel_decide
theorem rows3225 : actualRows3225=WordField.canonicalRows actualModulus 3225 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3225 : actualRows3225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3225=2892 := by core033_kernel_decide
theorem rows3226 : actualRows3226=WordField.canonicalRows actualModulus 3226 (.bxor 1299 3225) := by core033_kernel_decide
theorem stats3226 : actualRows3226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3226=7428 := by core033_kernel_decide
theorem rows3227 : actualRows3227=WordField.canonicalRows actualModulus 3227 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3227 : actualRows3227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3227=2820 := by core033_kernel_decide
theorem rows3228 : actualRows3228=WordField.canonicalRows actualModulus 3228 (.bnot 3227) := by core033_kernel_decide
theorem stats3228 : actualRows3228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3228=6276 := by core033_kernel_decide
theorem rows3229 : actualRows3229=WordField.canonicalRows actualModulus 3229 (.band 3226 3228) := by core033_kernel_decide
theorem stats3229 : actualRows3229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3229=5124 := by core033_kernel_decide
theorem rows3230 : actualRows3230=WordField.canonicalRows actualModulus 3230 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3230 : actualRows3230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3230=2892 := by core033_kernel_decide
theorem rows3231 : actualRows3231=WordField.canonicalRows actualModulus 3231 (.bxor 1299 3230) := by core033_kernel_decide
theorem stats3231 : actualRows3231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3231=7428 := by core033_kernel_decide
theorem rows3232 : actualRows3232=WordField.canonicalRows actualModulus 3232 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3232 : actualRows3232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3232=2820 := by core033_kernel_decide
theorem rows3233 : actualRows3233=WordField.canonicalRows actualModulus 3233 (.bnot 3232) := by core033_kernel_decide
theorem stats3233 : actualRows3233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3233=6276 := by core033_kernel_decide
theorem rows3234 : actualRows3234=WordField.canonicalRows actualModulus 3234 (.bxor 3231 3233) := by core033_kernel_decide
theorem stats3234 : actualRows3234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3234=7428 := by core033_kernel_decide
theorem rows3235 : actualRows3235=WordField.canonicalRows actualModulus 3235 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3235 : actualRows3235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3235=2892 := by core033_kernel_decide
theorem rows3236 : actualRows3236=WordField.canonicalRows actualModulus 3236 (.bxor 1299 3235) := by core033_kernel_decide
theorem stats3236 : actualRows3236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3236=7428 := by core033_kernel_decide
theorem rows3237 : actualRows3237=WordField.canonicalRows actualModulus 3237 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3237 : actualRows3237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3237=2820 := by core033_kernel_decide
theorem rows3238 : actualRows3238=WordField.canonicalRows actualModulus 3238 (.bnot 3237) := by core033_kernel_decide
theorem stats3238 : actualRows3238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3238=6276 := by core033_kernel_decide
theorem rows3239 : actualRows3239=WordField.canonicalRows actualModulus 3239 (.badd 3236 3238) := by core033_kernel_decide
theorem stats3239 : actualRows3239.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3239=5388 := by core033_kernel_decide
theorem rows3240 : actualRows3240=WordField.canonicalRows actualModulus 3240 (.bnot 3239) := by core033_kernel_decide
theorem stats3240 : actualRows3240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3240=6276 := by core033_kernel_decide
theorem rows3241 : actualRows3241=WordField.canonicalRows actualModulus 3241 (.band 3234 3240) := by core033_kernel_decide
theorem stats3241 : actualRows3241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3241=5124 := by core033_kernel_decide
theorem rows3242 : actualRows3242=WordField.canonicalRows actualModulus 3242 (.bxor 3229 3241) := by core033_kernel_decide
theorem stats3242 : actualRows3242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3242=7428 := by core033_kernel_decide
theorem rows3243 : actualRows3243=WordField.canonicalRows actualModulus 3243 (.shr 3242 31) := by core033_kernel_decide
theorem stats3243 : actualRows3243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3243=2892 := by core033_kernel_decide
theorem rows3244 : actualRows3244=WordField.canonicalRows actualModulus 3244 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3244 : actualRows3244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3244=2892 := by core033_kernel_decide
theorem rows3245 : actualRows3245=WordField.canonicalRows actualModulus 3245 (.bxor 3243 3244) := by core033_kernel_decide
theorem stats3245 : actualRows3245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3245=7428 := by core033_kernel_decide
theorem rows3246 : actualRows3246=WordField.canonicalRows actualModulus 3246 (.bnot 3245) := by core033_kernel_decide
theorem stats3246 : actualRows3246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3246=6276 := by core033_kernel_decide
theorem rows3247 : actualRows3247=WordField.canonicalRows actualModulus 3247 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3247 : actualRows3247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3247=2892 := by core033_kernel_decide
theorem rows3248 : actualRows3248=WordField.canonicalRows actualModulus 3248 (.badd 3246 3247) := by core033_kernel_decide
theorem stats3248 : actualRows3248.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3248=5388 := by core033_kernel_decide
theorem rows3249 : actualRows3249=WordField.canonicalRows actualModulus 3249 (.band 3248 1706) := by core033_kernel_decide
theorem stats3249 : actualRows3249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3249=5124 := by core033_kernel_decide
theorem rows3250 : actualRows3250=WordField.canonicalRows actualModulus 3250 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3250 : actualRows3250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3250=2892 := by core033_kernel_decide
theorem rows3251 : actualRows3251=WordField.canonicalRows actualModulus 3251 (.bxor 1299 3250) := by core033_kernel_decide
theorem stats3251 : actualRows3251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3251=7428 := by core033_kernel_decide
theorem rows3252 : actualRows3252=WordField.canonicalRows actualModulus 3252 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3252 : actualRows3252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3252=2820 := by core033_kernel_decide
theorem rows3253 : actualRows3253=WordField.canonicalRows actualModulus 3253 (.bnot 3252) := by core033_kernel_decide
theorem stats3253 : actualRows3253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3253=6276 := by core033_kernel_decide
def partRows48 : List R1CS.Row := actualRows3190++actualRows3191++actualRows3192++actualRows3193++actualRows3194++actualRows3195++actualRows3196++actualRows3197++actualRows3198++actualRows3199++actualRows3200++actualRows3201++actualRows3202++actualRows3203++actualRows3204++actualRows3205++actualRows3206++actualRows3207++actualRows3208++actualRows3209++actualRows3210++actualRows3211++actualRows3212++actualRows3213++actualRows3214++actualRows3215++actualRows3216++actualRows3217++actualRows3218++actualRows3219++actualRows3220++actualRows3221++actualRows3222++actualRows3223++actualRows3224++actualRows3225++actualRows3226++actualRows3227++actualRows3228++actualRows3229++actualRows3230++actualRows3231++actualRows3232++actualRows3233++actualRows3234++actualRows3235++actualRows3236++actualRows3237++actualRows3238++actualRows3239++actualRows3240++actualRows3241++actualRows3242++actualRows3243++actualRows3244++actualRows3245++actualRows3246++actualRows3247++actualRows3248++actualRows3249++actualRows3250++actualRows3251++actualRows3252++actualRows3253
def partOps48 : List WordIR.Op := [.shr 3189 31,.literal (BitVec.ofNat 32 1),.bxor 3190 3191,.bnot 3192,.literal (BitVec.ofNat 32 1),.badd 3193 3194,.band 3195 1695,.literal (BitVec.ofNat 32 2),.bxor 1299 3197,.literal (BitVec.ofNat 32 0),.bnot 3199,.band 3198 3200,.literal (BitVec.ofNat 32 2),.bxor 1299 3202,.literal (BitVec.ofNat 32 0),.bnot 3204,.bxor 3203 3205,.literal (BitVec.ofNat 32 2),.bxor 1299 3207,.literal (BitVec.ofNat 32 0),.bnot 3209,.badd 3208 3210,.bnot 3211,.band 3206 3212,.bxor 3201 3213,.shr 3214 31,.literal (BitVec.ofNat 32 1),.bxor 3215 3216,.bnot 3217,.literal (BitVec.ofNat 32 1),.badd 3218 3219,.bnot 3220,.literal (BitVec.ofNat 32 3144134277),.band 3221 3222,.bxor 3196 3223,.literal (BitVec.ofNat 32 2),.bxor 1299 3225,.literal (BitVec.ofNat 32 0),.bnot 3227,.band 3226 3228,.literal (BitVec.ofNat 32 2),.bxor 1299 3230,.literal (BitVec.ofNat 32 0),.bnot 3232,.bxor 3231 3233,.literal (BitVec.ofNat 32 2),.bxor 1299 3235,.literal (BitVec.ofNat 32 0),.bnot 3237,.badd 3236 3238,.bnot 3239,.band 3234 3240,.bxor 3229 3241,.shr 3242 31,.literal (BitVec.ofNat 32 1),.bxor 3243 3244,.bnot 3245,.literal (BitVec.ofNat 32 1),.badd 3246 3247,.band 3248 1706,.literal (BitVec.ofNat 32 2),.bxor 1299 3250,.literal (BitVec.ofNat 32 0),.bnot 3252]
theorem partExact48 : partRows48=WordField.rows actualModulus 3190 partOps48 := by
  simp only [partRows48,partOps48,WordField.rows,rows3190,rows3191,rows3192,rows3193,rows3194,rows3195,rows3196,rows3197,rows3198,rows3199,rows3200,rows3201,rows3202,rows3203,rows3204,rows3205,rows3206,rows3207,rows3208,rows3209,rows3210,rows3211,rows3212,rows3213,rows3214,rows3215,rows3216,rows3217,rows3218,rows3219,rows3220,rows3221,rows3222,rows3223,rows3224,rows3225,rows3226,rows3227,rows3228,rows3229,rows3230,rows3231,rows3232,rows3233,rows3234,rows3235,rows3236,rows3237,rows3238,rows3239,rows3240,rows3241,rows3242,rows3243,rows3244,rows3245,rows3246,rows3247,rows3248,rows3249,rows3250,rows3251,rows3252,rows3253,List.append_assoc,List.append_nil]
theorem partLength48 : partOps48.length=64 := by decide
theorem partStats48 : partRows48.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows48=326016 := by
  simp only [partRows48,List.length_append,MatrixRowBlocks.rows_weight_append,stats3190.1,stats3190.2,stats3191.1,stats3191.2,stats3192.1,stats3192.2,stats3193.1,stats3193.2,stats3194.1,stats3194.2,stats3195.1,stats3195.2,stats3196.1,stats3196.2,stats3197.1,stats3197.2,stats3198.1,stats3198.2,stats3199.1,stats3199.2,stats3200.1,stats3200.2,stats3201.1,stats3201.2,stats3202.1,stats3202.2,stats3203.1,stats3203.2,stats3204.1,stats3204.2,stats3205.1,stats3205.2,stats3206.1,stats3206.2,stats3207.1,stats3207.2,stats3208.1,stats3208.2,stats3209.1,stats3209.2,stats3210.1,stats3210.2,stats3211.1,stats3211.2,stats3212.1,stats3212.2,stats3213.1,stats3213.2,stats3214.1,stats3214.2,stats3215.1,stats3215.2,stats3216.1,stats3216.2,stats3217.1,stats3217.2,stats3218.1,stats3218.2,stats3219.1,stats3219.2,stats3220.1,stats3220.2,stats3221.1,stats3221.2,stats3222.1,stats3222.2,stats3223.1,stats3223.2,stats3224.1,stats3224.2,stats3225.1,stats3225.2,stats3226.1,stats3226.2,stats3227.1,stats3227.2,stats3228.1,stats3228.2,stats3229.1,stats3229.2,stats3230.1,stats3230.2,stats3231.1,stats3231.2,stats3232.1,stats3232.2,stats3233.1,stats3233.2,stats3234.1,stats3234.2,stats3235.1,stats3235.2,stats3236.1,stats3236.2,stats3237.1,stats3237.2,stats3238.1,stats3238.2,stats3239.1,stats3239.2,stats3240.1,stats3240.2,stats3241.1,stats3241.2,stats3242.1,stats3242.2,stats3243.1,stats3243.2,stats3244.1,stats3244.2,stats3245.1,stats3245.2,stats3246.1,stats3246.2,stats3247.1,stats3247.2,stats3248.1,stats3248.2,stats3249.1,stats3249.2,stats3250.1,stats3250.2,stats3251.1,stats3251.2,stats3252.1,stats3252.2,stats3253.1,stats3253.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
