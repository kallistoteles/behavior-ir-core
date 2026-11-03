import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData49
import PairedPathRoundInstructionMatrixData50
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3168 : actualRows3168=WordField.canonicalRows actualModulus 3168 (.badd 3166 3167) := by core033_kernel_decide
theorem stats3168 : actualRows3168.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3168=5388 := by core033_kernel_decide
theorem rows3169 : actualRows3169=WordField.canonicalRows actualModulus 3169 (.bnot 3168) := by core033_kernel_decide
theorem stats3169 : actualRows3169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3169=6276 := by core033_kernel_decide
theorem rows3170 : actualRows3170=WordField.canonicalRows actualModulus 3170 (.band 3169 1868) := by core033_kernel_decide
theorem stats3170 : actualRows3170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3170=5124 := by core033_kernel_decide
theorem rows3171 : actualRows3171=WordField.canonicalRows actualModulus 3171 (.bxor 3144 3170) := by core033_kernel_decide
theorem stats3171 : actualRows3171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3171=7428 := by core033_kernel_decide
theorem rows3172 : actualRows3172=WordField.canonicalRows actualModulus 3172 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3172 : actualRows3172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3172=2892 := by core033_kernel_decide
theorem rows3173 : actualRows3173=WordField.canonicalRows actualModulus 3173 (.bxor 616 3172) := by core033_kernel_decide
theorem stats3173 : actualRows3173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3173=7428 := by core033_kernel_decide
theorem rows3174 : actualRows3174=WordField.canonicalRows actualModulus 3174 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3174 : actualRows3174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3174=2820 := by core033_kernel_decide
theorem rows3175 : actualRows3175=WordField.canonicalRows actualModulus 3175 (.bnot 3174) := by core033_kernel_decide
theorem stats3175 : actualRows3175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3175=6276 := by core033_kernel_decide
theorem rows3176 : actualRows3176=WordField.canonicalRows actualModulus 3176 (.band 3173 3175) := by core033_kernel_decide
theorem stats3176 : actualRows3176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3176=5124 := by core033_kernel_decide
theorem rows3177 : actualRows3177=WordField.canonicalRows actualModulus 3177 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3177 : actualRows3177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3177=2892 := by core033_kernel_decide
theorem rows3178 : actualRows3178=WordField.canonicalRows actualModulus 3178 (.bxor 616 3177) := by core033_kernel_decide
theorem stats3178 : actualRows3178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3178=7428 := by core033_kernel_decide
theorem rows3179 : actualRows3179=WordField.canonicalRows actualModulus 3179 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3179 : actualRows3179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3179=2820 := by core033_kernel_decide
theorem rows3180 : actualRows3180=WordField.canonicalRows actualModulus 3180 (.bnot 3179) := by core033_kernel_decide
theorem stats3180 : actualRows3180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3180=6276 := by core033_kernel_decide
theorem rows3181 : actualRows3181=WordField.canonicalRows actualModulus 3181 (.bxor 3178 3180) := by core033_kernel_decide
theorem stats3181 : actualRows3181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3181=7428 := by core033_kernel_decide
theorem rows3182 : actualRows3182=WordField.canonicalRows actualModulus 3182 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3182 : actualRows3182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3182=2892 := by core033_kernel_decide
theorem rows3183 : actualRows3183=WordField.canonicalRows actualModulus 3183 (.bxor 616 3182) := by core033_kernel_decide
theorem stats3183 : actualRows3183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3183=7428 := by core033_kernel_decide
theorem rows3184 : actualRows3184=WordField.canonicalRows actualModulus 3184 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3184 : actualRows3184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3184=2820 := by core033_kernel_decide
theorem rows3185 : actualRows3185=WordField.canonicalRows actualModulus 3185 (.bnot 3184) := by core033_kernel_decide
theorem stats3185 : actualRows3185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3185=6276 := by core033_kernel_decide
theorem rows3186 : actualRows3186=WordField.canonicalRows actualModulus 3186 (.badd 3183 3185) := by core033_kernel_decide
theorem stats3186 : actualRows3186.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3186=5388 := by core033_kernel_decide
theorem rows3187 : actualRows3187=WordField.canonicalRows actualModulus 3187 (.bnot 3186) := by core033_kernel_decide
theorem stats3187 : actualRows3187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3187=6276 := by core033_kernel_decide
theorem rows3188 : actualRows3188=WordField.canonicalRows actualModulus 3188 (.band 3181 3187) := by core033_kernel_decide
theorem stats3188 : actualRows3188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3188=5124 := by core033_kernel_decide
theorem rows3189 : actualRows3189=WordField.canonicalRows actualModulus 3189 (.bxor 3176 3188) := by core033_kernel_decide
theorem stats3189 : actualRows3189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3189=7428 := by core033_kernel_decide
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
theorem rows3196 : actualRows3196=WordField.canonicalRows actualModulus 3196 (.band 3195 2031) := by core033_kernel_decide
theorem stats3196 : actualRows3196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3196=5124 := by core033_kernel_decide
theorem rows3197 : actualRows3197=WordField.canonicalRows actualModulus 3197 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3197 : actualRows3197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3197=2892 := by core033_kernel_decide
theorem rows3198 : actualRows3198=WordField.canonicalRows actualModulus 3198 (.bxor 616 3197) := by core033_kernel_decide
theorem stats3198 : actualRows3198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3198=7428 := by core033_kernel_decide
theorem rows3199 : actualRows3199=WordField.canonicalRows actualModulus 3199 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3199 : actualRows3199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3199=2820 := by core033_kernel_decide
theorem rows3200 : actualRows3200=WordField.canonicalRows actualModulus 3200 (.bnot 3199) := by core033_kernel_decide
theorem stats3200 : actualRows3200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3200=6276 := by core033_kernel_decide
theorem rows3201 : actualRows3201=WordField.canonicalRows actualModulus 3201 (.band 3198 3200) := by core033_kernel_decide
theorem stats3201 : actualRows3201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3201=5124 := by core033_kernel_decide
theorem rows3202 : actualRows3202=WordField.canonicalRows actualModulus 3202 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3202 : actualRows3202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3202=2892 := by core033_kernel_decide
theorem rows3203 : actualRows3203=WordField.canonicalRows actualModulus 3203 (.bxor 616 3202) := by core033_kernel_decide
theorem stats3203 : actualRows3203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3203=7428 := by core033_kernel_decide
theorem rows3204 : actualRows3204=WordField.canonicalRows actualModulus 3204 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3204 : actualRows3204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3204=2820 := by core033_kernel_decide
theorem rows3205 : actualRows3205=WordField.canonicalRows actualModulus 3205 (.bnot 3204) := by core033_kernel_decide
theorem stats3205 : actualRows3205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3205=6276 := by core033_kernel_decide
theorem rows3206 : actualRows3206=WordField.canonicalRows actualModulus 3206 (.bxor 3203 3205) := by core033_kernel_decide
theorem stats3206 : actualRows3206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3206=7428 := by core033_kernel_decide
theorem rows3207 : actualRows3207=WordField.canonicalRows actualModulus 3207 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3207 : actualRows3207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3207=2892 := by core033_kernel_decide
theorem rows3208 : actualRows3208=WordField.canonicalRows actualModulus 3208 (.bxor 616 3207) := by core033_kernel_decide
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
theorem rows3222 : actualRows3222=WordField.canonicalRows actualModulus 3222 (.band 3221 1869) := by core033_kernel_decide
theorem stats3222 : actualRows3222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3222=5124 := by core033_kernel_decide
theorem rows3223 : actualRows3223=WordField.canonicalRows actualModulus 3223 (.bxor 3196 3222) := by core033_kernel_decide
theorem stats3223 : actualRows3223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3223=7428 := by core033_kernel_decide
theorem rows3224 : actualRows3224=WordField.canonicalRows actualModulus 3224 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3224 : actualRows3224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3224=2892 := by core033_kernel_decide
theorem rows3225 : actualRows3225=WordField.canonicalRows actualModulus 3225 (.bxor 616 3224) := by core033_kernel_decide
theorem stats3225 : actualRows3225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3225=7428 := by core033_kernel_decide
theorem rows3226 : actualRows3226=WordField.canonicalRows actualModulus 3226 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3226 : actualRows3226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3226=2820 := by core033_kernel_decide
theorem rows3227 : actualRows3227=WordField.canonicalRows actualModulus 3227 (.bnot 3226) := by core033_kernel_decide
theorem stats3227 : actualRows3227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3227=6276 := by core033_kernel_decide
theorem rows3228 : actualRows3228=WordField.canonicalRows actualModulus 3228 (.band 3225 3227) := by core033_kernel_decide
theorem stats3228 : actualRows3228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3228=5124 := by core033_kernel_decide
theorem rows3229 : actualRows3229=WordField.canonicalRows actualModulus 3229 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3229 : actualRows3229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3229=2892 := by core033_kernel_decide
theorem rows3230 : actualRows3230=WordField.canonicalRows actualModulus 3230 (.bxor 616 3229) := by core033_kernel_decide
theorem stats3230 : actualRows3230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3230=7428 := by core033_kernel_decide
theorem rows3231 : actualRows3231=WordField.canonicalRows actualModulus 3231 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3231 : actualRows3231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3231=2820 := by core033_kernel_decide
def partRows48 : List R1CS.Row := actualRows3168++actualRows3169++actualRows3170++actualRows3171++actualRows3172++actualRows3173++actualRows3174++actualRows3175++actualRows3176++actualRows3177++actualRows3178++actualRows3179++actualRows3180++actualRows3181++actualRows3182++actualRows3183++actualRows3184++actualRows3185++actualRows3186++actualRows3187++actualRows3188++actualRows3189++actualRows3190++actualRows3191++actualRows3192++actualRows3193++actualRows3194++actualRows3195++actualRows3196++actualRows3197++actualRows3198++actualRows3199++actualRows3200++actualRows3201++actualRows3202++actualRows3203++actualRows3204++actualRows3205++actualRows3206++actualRows3207++actualRows3208++actualRows3209++actualRows3210++actualRows3211++actualRows3212++actualRows3213++actualRows3214++actualRows3215++actualRows3216++actualRows3217++actualRows3218++actualRows3219++actualRows3220++actualRows3221++actualRows3222++actualRows3223++actualRows3224++actualRows3225++actualRows3226++actualRows3227++actualRows3228++actualRows3229++actualRows3230++actualRows3231
def partOps48 : List WordIR.Op := [.badd 3166 3167,.bnot 3168,.band 3169 1868,.bxor 3144 3170,.literal (BitVec.ofNat 32 2),.bxor 616 3172,.literal (BitVec.ofNat 32 0),.bnot 3174,.band 3173 3175,.literal (BitVec.ofNat 32 2),.bxor 616 3177,.literal (BitVec.ofNat 32 0),.bnot 3179,.bxor 3178 3180,.literal (BitVec.ofNat 32 2),.bxor 616 3182,.literal (BitVec.ofNat 32 0),.bnot 3184,.badd 3183 3185,.bnot 3186,.band 3181 3187,.bxor 3176 3188,.shr 3189 31,.literal (BitVec.ofNat 32 1),.bxor 3190 3191,.bnot 3192,.literal (BitVec.ofNat 32 1),.badd 3193 3194,.band 3195 2031,.literal (BitVec.ofNat 32 2),.bxor 616 3197,.literal (BitVec.ofNat 32 0),.bnot 3199,.band 3198 3200,.literal (BitVec.ofNat 32 2),.bxor 616 3202,.literal (BitVec.ofNat 32 0),.bnot 3204,.bxor 3203 3205,.literal (BitVec.ofNat 32 2),.bxor 616 3207,.literal (BitVec.ofNat 32 0),.bnot 3209,.badd 3208 3210,.bnot 3211,.band 3206 3212,.bxor 3201 3213,.shr 3214 31,.literal (BitVec.ofNat 32 1),.bxor 3215 3216,.bnot 3217,.literal (BitVec.ofNat 32 1),.badd 3218 3219,.bnot 3220,.band 3221 1869,.bxor 3196 3222,.literal (BitVec.ofNat 32 2),.bxor 616 3224,.literal (BitVec.ofNat 32 0),.bnot 3226,.band 3225 3227,.literal (BitVec.ofNat 32 2),.bxor 616 3229,.literal (BitVec.ofNat 32 0)]
theorem partExact48 : partRows48=WordField.rows actualModulus 3168 partOps48 := by
  simp only [partRows48,partOps48,WordField.rows,rows3168,rows3169,rows3170,rows3171,rows3172,rows3173,rows3174,rows3175,rows3176,rows3177,rows3178,rows3179,rows3180,rows3181,rows3182,rows3183,rows3184,rows3185,rows3186,rows3187,rows3188,rows3189,rows3190,rows3191,rows3192,rows3193,rows3194,rows3195,rows3196,rows3197,rows3198,rows3199,rows3200,rows3201,rows3202,rows3203,rows3204,rows3205,rows3206,rows3207,rows3208,rows3209,rows3210,rows3211,rows3212,rows3213,rows3214,rows3215,rows3216,rows3217,rows3218,rows3219,rows3220,rows3221,rows3222,rows3223,rows3224,rows3225,rows3226,rows3227,rows3228,rows3229,rows3230,rows3231,List.append_assoc,List.append_nil]
theorem partLength48 : partOps48.length=64 := by decide
theorem partStats48 : partRows48.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows48=331416 := by
  simp only [partRows48,List.length_append,MatrixRowBlocks.rows_weight_append,stats3168.1,stats3168.2,stats3169.1,stats3169.2,stats3170.1,stats3170.2,stats3171.1,stats3171.2,stats3172.1,stats3172.2,stats3173.1,stats3173.2,stats3174.1,stats3174.2,stats3175.1,stats3175.2,stats3176.1,stats3176.2,stats3177.1,stats3177.2,stats3178.1,stats3178.2,stats3179.1,stats3179.2,stats3180.1,stats3180.2,stats3181.1,stats3181.2,stats3182.1,stats3182.2,stats3183.1,stats3183.2,stats3184.1,stats3184.2,stats3185.1,stats3185.2,stats3186.1,stats3186.2,stats3187.1,stats3187.2,stats3188.1,stats3188.2,stats3189.1,stats3189.2,stats3190.1,stats3190.2,stats3191.1,stats3191.2,stats3192.1,stats3192.2,stats3193.1,stats3193.2,stats3194.1,stats3194.2,stats3195.1,stats3195.2,stats3196.1,stats3196.2,stats3197.1,stats3197.2,stats3198.1,stats3198.2,stats3199.1,stats3199.2,stats3200.1,stats3200.2,stats3201.1,stats3201.2,stats3202.1,stats3202.2,stats3203.1,stats3203.2,stats3204.1,stats3204.2,stats3205.1,stats3205.2,stats3206.1,stats3206.2,stats3207.1,stats3207.2,stats3208.1,stats3208.2,stats3209.1,stats3209.2,stats3210.1,stats3210.2,stats3211.1,stats3211.2,stats3212.1,stats3212.2,stats3213.1,stats3213.2,stats3214.1,stats3214.2,stats3215.1,stats3215.2,stats3216.1,stats3216.2,stats3217.1,stats3217.2,stats3218.1,stats3218.2,stats3219.1,stats3219.2,stats3220.1,stats3220.2,stats3221.1,stats3221.2,stats3222.1,stats3222.2,stats3223.1,stats3223.2,stats3224.1,stats3224.2,stats3225.1,stats3225.2,stats3226.1,stats3226.2,stats3227.1,stats3227.2,stats3228.1,stats3228.2,stats3229.1,stats3229.2,stats3230.1,stats3230.2,stats3231.1,stats3231.2]
  decide
end QuotedPairedPathRoundCheckedRows
