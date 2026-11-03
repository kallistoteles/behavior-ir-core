import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData175
import PairedPathRoundInstructionMatrixData176
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11232 : actualRows11232=WordField.canonicalRows actualModulus 11232 (.shr 11231 31) := by core033_kernel_decide
theorem stats11232 : actualRows11232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11232=2892 := by core033_kernel_decide
theorem rows11233 : actualRows11233=WordField.canonicalRows actualModulus 11233 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11233 : actualRows11233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11233=2892 := by core033_kernel_decide
theorem rows11234 : actualRows11234=WordField.canonicalRows actualModulus 11234 (.bxor 11232 11233) := by core033_kernel_decide
theorem stats11234 : actualRows11234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11234=7428 := by core033_kernel_decide
theorem rows11235 : actualRows11235=WordField.canonicalRows actualModulus 11235 (.bnot 11234) := by core033_kernel_decide
theorem stats11235 : actualRows11235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11235=6276 := by core033_kernel_decide
theorem rows11236 : actualRows11236=WordField.canonicalRows actualModulus 11236 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11236 : actualRows11236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11236=2892 := by core033_kernel_decide
theorem rows11237 : actualRows11237=WordField.canonicalRows actualModulus 11237 (.badd 11235 11236) := by core033_kernel_decide
theorem stats11237 : actualRows11237.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11237=5388 := by core033_kernel_decide
theorem rows11238 : actualRows11238=WordField.canonicalRows actualModulus 11238 (.band 11237 10036) := by core033_kernel_decide
theorem stats11238 : actualRows11238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11238=5124 := by core033_kernel_decide
theorem rows11239 : actualRows11239=WordField.canonicalRows actualModulus 11239 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11239 : actualRows11239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11239=2964 := by core033_kernel_decide
theorem rows11240 : actualRows11240=WordField.canonicalRows actualModulus 11240 (.bxor 442 11239) := by core033_kernel_decide
theorem stats11240 : actualRows11240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11240=7428 := by core033_kernel_decide
theorem rows11241 : actualRows11241=WordField.canonicalRows actualModulus 11241 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11241 : actualRows11241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11241=2820 := by core033_kernel_decide
theorem rows11242 : actualRows11242=WordField.canonicalRows actualModulus 11242 (.bnot 11241) := by core033_kernel_decide
theorem stats11242 : actualRows11242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11242=6276 := by core033_kernel_decide
theorem rows11243 : actualRows11243=WordField.canonicalRows actualModulus 11243 (.band 11240 11242) := by core033_kernel_decide
theorem stats11243 : actualRows11243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11243=5124 := by core033_kernel_decide
theorem rows11244 : actualRows11244=WordField.canonicalRows actualModulus 11244 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11244 : actualRows11244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11244=2964 := by core033_kernel_decide
theorem rows11245 : actualRows11245=WordField.canonicalRows actualModulus 11245 (.bxor 442 11244) := by core033_kernel_decide
theorem stats11245 : actualRows11245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11245=7428 := by core033_kernel_decide
theorem rows11246 : actualRows11246=WordField.canonicalRows actualModulus 11246 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11246 : actualRows11246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11246=2820 := by core033_kernel_decide
theorem rows11247 : actualRows11247=WordField.canonicalRows actualModulus 11247 (.bnot 11246) := by core033_kernel_decide
theorem stats11247 : actualRows11247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11247=6276 := by core033_kernel_decide
theorem rows11248 : actualRows11248=WordField.canonicalRows actualModulus 11248 (.bxor 11245 11247) := by core033_kernel_decide
theorem stats11248 : actualRows11248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11248=7428 := by core033_kernel_decide
theorem rows11249 : actualRows11249=WordField.canonicalRows actualModulus 11249 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11249 : actualRows11249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11249=2964 := by core033_kernel_decide
theorem rows11250 : actualRows11250=WordField.canonicalRows actualModulus 11250 (.bxor 442 11249) := by core033_kernel_decide
theorem stats11250 : actualRows11250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11250=7428 := by core033_kernel_decide
theorem rows11251 : actualRows11251=WordField.canonicalRows actualModulus 11251 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11251 : actualRows11251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11251=2820 := by core033_kernel_decide
theorem rows11252 : actualRows11252=WordField.canonicalRows actualModulus 11252 (.bnot 11251) := by core033_kernel_decide
theorem stats11252 : actualRows11252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11252=6276 := by core033_kernel_decide
theorem rows11253 : actualRows11253=WordField.canonicalRows actualModulus 11253 (.badd 11250 11252) := by core033_kernel_decide
theorem stats11253 : actualRows11253.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11253=5388 := by core033_kernel_decide
theorem rows11254 : actualRows11254=WordField.canonicalRows actualModulus 11254 (.bnot 11253) := by core033_kernel_decide
theorem stats11254 : actualRows11254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11254=6276 := by core033_kernel_decide
theorem rows11255 : actualRows11255=WordField.canonicalRows actualModulus 11255 (.band 11248 11254) := by core033_kernel_decide
theorem stats11255 : actualRows11255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11255=5124 := by core033_kernel_decide
theorem rows11256 : actualRows11256=WordField.canonicalRows actualModulus 11256 (.bxor 11243 11255) := by core033_kernel_decide
theorem stats11256 : actualRows11256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11256=7428 := by core033_kernel_decide
theorem rows11257 : actualRows11257=WordField.canonicalRows actualModulus 11257 (.shr 11256 31) := by core033_kernel_decide
theorem stats11257 : actualRows11257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11257=2892 := by core033_kernel_decide
theorem rows11258 : actualRows11258=WordField.canonicalRows actualModulus 11258 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11258 : actualRows11258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11258=2892 := by core033_kernel_decide
theorem rows11259 : actualRows11259=WordField.canonicalRows actualModulus 11259 (.bxor 11257 11258) := by core033_kernel_decide
theorem stats11259 : actualRows11259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11259=7428 := by core033_kernel_decide
theorem rows11260 : actualRows11260=WordField.canonicalRows actualModulus 11260 (.bnot 11259) := by core033_kernel_decide
theorem stats11260 : actualRows11260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11260=6276 := by core033_kernel_decide
theorem rows11261 : actualRows11261=WordField.canonicalRows actualModulus 11261 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11261 : actualRows11261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11261=2892 := by core033_kernel_decide
theorem rows11262 : actualRows11262=WordField.canonicalRows actualModulus 11262 (.badd 11260 11261) := by core033_kernel_decide
theorem stats11262 : actualRows11262.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11262=5388 := by core033_kernel_decide
theorem rows11263 : actualRows11263=WordField.canonicalRows actualModulus 11263 (.bnot 11262) := by core033_kernel_decide
theorem stats11263 : actualRows11263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11263=6276 := by core033_kernel_decide
theorem rows11264 : actualRows11264=WordField.canonicalRows actualModulus 11264 (.band 11263 715) := by core033_kernel_decide
theorem stats11264 : actualRows11264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11264=5124 := by core033_kernel_decide
theorem rows11265 : actualRows11265=WordField.canonicalRows actualModulus 11265 (.bxor 11238 11264) := by core033_kernel_decide
theorem stats11265 : actualRows11265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11265=7428 := by core033_kernel_decide
theorem rows11266 : actualRows11266=WordField.canonicalRows actualModulus 11266 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11266 : actualRows11266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11266=2964 := by core033_kernel_decide
theorem rows11267 : actualRows11267=WordField.canonicalRows actualModulus 11267 (.bxor 442 11266) := by core033_kernel_decide
theorem stats11267 : actualRows11267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11267=7428 := by core033_kernel_decide
theorem rows11268 : actualRows11268=WordField.canonicalRows actualModulus 11268 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11268 : actualRows11268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11268=2820 := by core033_kernel_decide
theorem rows11269 : actualRows11269=WordField.canonicalRows actualModulus 11269 (.bnot 11268) := by core033_kernel_decide
theorem stats11269 : actualRows11269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11269=6276 := by core033_kernel_decide
theorem rows11270 : actualRows11270=WordField.canonicalRows actualModulus 11270 (.band 11267 11269) := by core033_kernel_decide
theorem stats11270 : actualRows11270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11270=5124 := by core033_kernel_decide
theorem rows11271 : actualRows11271=WordField.canonicalRows actualModulus 11271 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11271 : actualRows11271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11271=2964 := by core033_kernel_decide
theorem rows11272 : actualRows11272=WordField.canonicalRows actualModulus 11272 (.bxor 442 11271) := by core033_kernel_decide
theorem stats11272 : actualRows11272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11272=7428 := by core033_kernel_decide
theorem rows11273 : actualRows11273=WordField.canonicalRows actualModulus 11273 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11273 : actualRows11273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11273=2820 := by core033_kernel_decide
theorem rows11274 : actualRows11274=WordField.canonicalRows actualModulus 11274 (.bnot 11273) := by core033_kernel_decide
theorem stats11274 : actualRows11274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11274=6276 := by core033_kernel_decide
theorem rows11275 : actualRows11275=WordField.canonicalRows actualModulus 11275 (.bxor 11272 11274) := by core033_kernel_decide
theorem stats11275 : actualRows11275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11275=7428 := by core033_kernel_decide
theorem rows11276 : actualRows11276=WordField.canonicalRows actualModulus 11276 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11276 : actualRows11276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11276=2964 := by core033_kernel_decide
theorem rows11277 : actualRows11277=WordField.canonicalRows actualModulus 11277 (.bxor 442 11276) := by core033_kernel_decide
theorem stats11277 : actualRows11277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11277=7428 := by core033_kernel_decide
theorem rows11278 : actualRows11278=WordField.canonicalRows actualModulus 11278 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11278 : actualRows11278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11278=2820 := by core033_kernel_decide
theorem rows11279 : actualRows11279=WordField.canonicalRows actualModulus 11279 (.bnot 11278) := by core033_kernel_decide
theorem stats11279 : actualRows11279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11279=6276 := by core033_kernel_decide
theorem rows11280 : actualRows11280=WordField.canonicalRows actualModulus 11280 (.badd 11277 11279) := by core033_kernel_decide
theorem stats11280 : actualRows11280.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11280=5388 := by core033_kernel_decide
theorem rows11281 : actualRows11281=WordField.canonicalRows actualModulus 11281 (.bnot 11280) := by core033_kernel_decide
theorem stats11281 : actualRows11281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11281=6276 := by core033_kernel_decide
theorem rows11282 : actualRows11282=WordField.canonicalRows actualModulus 11282 (.band 11275 11281) := by core033_kernel_decide
theorem stats11282 : actualRows11282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11282=5124 := by core033_kernel_decide
theorem rows11283 : actualRows11283=WordField.canonicalRows actualModulus 11283 (.bxor 11270 11282) := by core033_kernel_decide
theorem stats11283 : actualRows11283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11283=7428 := by core033_kernel_decide
theorem rows11284 : actualRows11284=WordField.canonicalRows actualModulus 11284 (.shr 11283 31) := by core033_kernel_decide
theorem stats11284 : actualRows11284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11284=2892 := by core033_kernel_decide
theorem rows11285 : actualRows11285=WordField.canonicalRows actualModulus 11285 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11285 : actualRows11285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11285=2892 := by core033_kernel_decide
theorem rows11286 : actualRows11286=WordField.canonicalRows actualModulus 11286 (.bxor 11284 11285) := by core033_kernel_decide
theorem stats11286 : actualRows11286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11286=7428 := by core033_kernel_decide
theorem rows11287 : actualRows11287=WordField.canonicalRows actualModulus 11287 (.bnot 11286) := by core033_kernel_decide
theorem stats11287 : actualRows11287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11287=6276 := by core033_kernel_decide
theorem rows11288 : actualRows11288=WordField.canonicalRows actualModulus 11288 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11288 : actualRows11288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11288=2892 := by core033_kernel_decide
theorem rows11289 : actualRows11289=WordField.canonicalRows actualModulus 11289 (.badd 11287 11288) := by core033_kernel_decide
theorem stats11289 : actualRows11289.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11289=5388 := by core033_kernel_decide
theorem rows11290 : actualRows11290=WordField.canonicalRows actualModulus 11290 (.band 11289 10047) := by core033_kernel_decide
theorem stats11290 : actualRows11290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11290=5124 := by core033_kernel_decide
theorem rows11291 : actualRows11291=WordField.canonicalRows actualModulus 11291 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11291 : actualRows11291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11291=2964 := by core033_kernel_decide
theorem rows11292 : actualRows11292=WordField.canonicalRows actualModulus 11292 (.bxor 442 11291) := by core033_kernel_decide
theorem stats11292 : actualRows11292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11292=7428 := by core033_kernel_decide
theorem rows11293 : actualRows11293=WordField.canonicalRows actualModulus 11293 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11293 : actualRows11293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11293=2820 := by core033_kernel_decide
theorem rows11294 : actualRows11294=WordField.canonicalRows actualModulus 11294 (.bnot 11293) := by core033_kernel_decide
theorem stats11294 : actualRows11294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11294=6276 := by core033_kernel_decide
theorem rows11295 : actualRows11295=WordField.canonicalRows actualModulus 11295 (.band 11292 11294) := by core033_kernel_decide
theorem stats11295 : actualRows11295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11295=5124 := by core033_kernel_decide
def partRows174 : List R1CS.Row := actualRows11232++actualRows11233++actualRows11234++actualRows11235++actualRows11236++actualRows11237++actualRows11238++actualRows11239++actualRows11240++actualRows11241++actualRows11242++actualRows11243++actualRows11244++actualRows11245++actualRows11246++actualRows11247++actualRows11248++actualRows11249++actualRows11250++actualRows11251++actualRows11252++actualRows11253++actualRows11254++actualRows11255++actualRows11256++actualRows11257++actualRows11258++actualRows11259++actualRows11260++actualRows11261++actualRows11262++actualRows11263++actualRows11264++actualRows11265++actualRows11266++actualRows11267++actualRows11268++actualRows11269++actualRows11270++actualRows11271++actualRows11272++actualRows11273++actualRows11274++actualRows11275++actualRows11276++actualRows11277++actualRows11278++actualRows11279++actualRows11280++actualRows11281++actualRows11282++actualRows11283++actualRows11284++actualRows11285++actualRows11286++actualRows11287++actualRows11288++actualRows11289++actualRows11290++actualRows11291++actualRows11292++actualRows11293++actualRows11294++actualRows11295
def partOps174 : List WordIR.Op := [.shr 11231 31,.literal (BitVec.ofNat 32 1),.bxor 11232 11233,.bnot 11234,.literal (BitVec.ofNat 32 1),.badd 11235 11236,.band 11237 10036,.literal (BitVec.ofNat 32 3),.bxor 442 11239,.literal (BitVec.ofNat 32 0),.bnot 11241,.band 11240 11242,.literal (BitVec.ofNat 32 3),.bxor 442 11244,.literal (BitVec.ofNat 32 0),.bnot 11246,.bxor 11245 11247,.literal (BitVec.ofNat 32 3),.bxor 442 11249,.literal (BitVec.ofNat 32 0),.bnot 11251,.badd 11250 11252,.bnot 11253,.band 11248 11254,.bxor 11243 11255,.shr 11256 31,.literal (BitVec.ofNat 32 1),.bxor 11257 11258,.bnot 11259,.literal (BitVec.ofNat 32 1),.badd 11260 11261,.bnot 11262,.band 11263 715,.bxor 11238 11264,.literal (BitVec.ofNat 32 3),.bxor 442 11266,.literal (BitVec.ofNat 32 0),.bnot 11268,.band 11267 11269,.literal (BitVec.ofNat 32 3),.bxor 442 11271,.literal (BitVec.ofNat 32 0),.bnot 11273,.bxor 11272 11274,.literal (BitVec.ofNat 32 3),.bxor 442 11276,.literal (BitVec.ofNat 32 0),.bnot 11278,.badd 11277 11279,.bnot 11280,.band 11275 11281,.bxor 11270 11282,.shr 11283 31,.literal (BitVec.ofNat 32 1),.bxor 11284 11285,.bnot 11286,.literal (BitVec.ofNat 32 1),.badd 11287 11288,.band 11289 10047,.literal (BitVec.ofNat 32 3),.bxor 442 11291,.literal (BitVec.ofNat 32 0),.bnot 11293,.band 11292 11294]
theorem partExact174 : partRows174=WordField.rows actualModulus 11232 partOps174 := by
  simp only [partRows174,partOps174,WordField.rows,rows11232,rows11233,rows11234,rows11235,rows11236,rows11237,rows11238,rows11239,rows11240,rows11241,rows11242,rows11243,rows11244,rows11245,rows11246,rows11247,rows11248,rows11249,rows11250,rows11251,rows11252,rows11253,rows11254,rows11255,rows11256,rows11257,rows11258,rows11259,rows11260,rows11261,rows11262,rows11263,rows11264,rows11265,rows11266,rows11267,rows11268,rows11269,rows11270,rows11271,rows11272,rows11273,rows11274,rows11275,rows11276,rows11277,rows11278,rows11279,rows11280,rows11281,rows11282,rows11283,rows11284,rows11285,rows11286,rows11287,rows11288,rows11289,rows11290,rows11291,rows11292,rows11293,rows11294,rows11295,List.append_assoc,List.append_nil]
theorem partLength174 : partOps174.length=64 := by decide
theorem partStats174 : partRows174.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows174=327456 := by
  simp only [partRows174,List.length_append,MatrixRowBlocks.rows_weight_append,stats11232.1,stats11232.2,stats11233.1,stats11233.2,stats11234.1,stats11234.2,stats11235.1,stats11235.2,stats11236.1,stats11236.2,stats11237.1,stats11237.2,stats11238.1,stats11238.2,stats11239.1,stats11239.2,stats11240.1,stats11240.2,stats11241.1,stats11241.2,stats11242.1,stats11242.2,stats11243.1,stats11243.2,stats11244.1,stats11244.2,stats11245.1,stats11245.2,stats11246.1,stats11246.2,stats11247.1,stats11247.2,stats11248.1,stats11248.2,stats11249.1,stats11249.2,stats11250.1,stats11250.2,stats11251.1,stats11251.2,stats11252.1,stats11252.2,stats11253.1,stats11253.2,stats11254.1,stats11254.2,stats11255.1,stats11255.2,stats11256.1,stats11256.2,stats11257.1,stats11257.2,stats11258.1,stats11258.2,stats11259.1,stats11259.2,stats11260.1,stats11260.2,stats11261.1,stats11261.2,stats11262.1,stats11262.2,stats11263.1,stats11263.2,stats11264.1,stats11264.2,stats11265.1,stats11265.2,stats11266.1,stats11266.2,stats11267.1,stats11267.2,stats11268.1,stats11268.2,stats11269.1,stats11269.2,stats11270.1,stats11270.2,stats11271.1,stats11271.2,stats11272.1,stats11272.2,stats11273.1,stats11273.2,stats11274.1,stats11274.2,stats11275.1,stats11275.2,stats11276.1,stats11276.2,stats11277.1,stats11277.2,stats11278.1,stats11278.2,stats11279.1,stats11279.2,stats11280.1,stats11280.2,stats11281.1,stats11281.2,stats11282.1,stats11282.2,stats11283.1,stats11283.2,stats11284.1,stats11284.2,stats11285.1,stats11285.2,stats11286.1,stats11286.2,stats11287.1,stats11287.2,stats11288.1,stats11288.2,stats11289.1,stats11289.2,stats11290.1,stats11290.2,stats11291.1,stats11291.2,stats11292.1,stats11292.2,stats11293.1,stats11293.2,stats11294.1,stats11294.2,stats11295.1,stats11295.2]
  decide
end QuotedPairedPathRoundCheckedRows
