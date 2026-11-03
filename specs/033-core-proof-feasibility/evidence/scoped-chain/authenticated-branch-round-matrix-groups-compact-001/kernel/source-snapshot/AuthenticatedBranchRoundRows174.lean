import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData175
import AuthenticatedBranchRoundInstructionMatrixData176
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11254 : actualRows11254=WordField.canonicalRows actualModulus 11254 (.badd 10917 10939) := by core033_kernel_decide
theorem stats11254 : actualRows11254.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11254=5388 := by core033_kernel_decide
theorem rows11255 : actualRows11255=WordField.canonicalRows actualModulus 11255 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats11255 : actualRows11255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11255=2892 := by core033_kernel_decide
theorem rows11256 : actualRows11256=WordField.canonicalRows actualModulus 11256 (.bnot 11255) := by core033_kernel_decide
theorem stats11256 : actualRows11256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11256=6276 := by core033_kernel_decide
theorem rows11257 : actualRows11257=WordField.canonicalRows actualModulus 11257 (.band 11254 11256) := by core033_kernel_decide
theorem stats11257 : actualRows11257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11257=5124 := by core033_kernel_decide
theorem rows11258 : actualRows11258=WordField.canonicalRows actualModulus 11258 (.badd 10917 10939) := by core033_kernel_decide
theorem stats11258 : actualRows11258.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11258=5388 := by core033_kernel_decide
theorem rows11259 : actualRows11259=WordField.canonicalRows actualModulus 11259 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats11259 : actualRows11259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11259=2892 := by core033_kernel_decide
theorem rows11260 : actualRows11260=WordField.canonicalRows actualModulus 11260 (.bnot 11259) := by core033_kernel_decide
theorem stats11260 : actualRows11260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11260=6276 := by core033_kernel_decide
theorem rows11261 : actualRows11261=WordField.canonicalRows actualModulus 11261 (.bxor 11258 11260) := by core033_kernel_decide
theorem stats11261 : actualRows11261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11261=7428 := by core033_kernel_decide
theorem rows11262 : actualRows11262=WordField.canonicalRows actualModulus 11262 (.badd 10917 10939) := by core033_kernel_decide
theorem stats11262 : actualRows11262.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11262=5388 := by core033_kernel_decide
theorem rows11263 : actualRows11263=WordField.canonicalRows actualModulus 11263 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats11263 : actualRows11263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11263=2892 := by core033_kernel_decide
theorem rows11264 : actualRows11264=WordField.canonicalRows actualModulus 11264 (.bnot 11263) := by core033_kernel_decide
theorem stats11264 : actualRows11264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11264=6276 := by core033_kernel_decide
theorem rows11265 : actualRows11265=WordField.canonicalRows actualModulus 11265 (.badd 11262 11264) := by core033_kernel_decide
theorem stats11265 : actualRows11265.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11265=5388 := by core033_kernel_decide
theorem rows11266 : actualRows11266=WordField.canonicalRows actualModulus 11266 (.bnot 11265) := by core033_kernel_decide
theorem stats11266 : actualRows11266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11266=6276 := by core033_kernel_decide
theorem rows11267 : actualRows11267=WordField.canonicalRows actualModulus 11267 (.band 11261 11266) := by core033_kernel_decide
theorem stats11267 : actualRows11267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11267=5124 := by core033_kernel_decide
theorem rows11268 : actualRows11268=WordField.canonicalRows actualModulus 11268 (.bxor 11257 11267) := by core033_kernel_decide
theorem stats11268 : actualRows11268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11268=7428 := by core033_kernel_decide
theorem rows11269 : actualRows11269=WordField.canonicalRows actualModulus 11269 (.shr 11268 31) := by core033_kernel_decide
theorem stats11269 : actualRows11269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11269=2892 := by core033_kernel_decide
theorem rows11270 : actualRows11270=WordField.canonicalRows actualModulus 11270 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11270 : actualRows11270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11270=2892 := by core033_kernel_decide
theorem rows11271 : actualRows11271=WordField.canonicalRows actualModulus 11271 (.bxor 11269 11270) := by core033_kernel_decide
theorem stats11271 : actualRows11271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11271=7428 := by core033_kernel_decide
theorem rows11272 : actualRows11272=WordField.canonicalRows actualModulus 11272 (.band 11253 11271) := by core033_kernel_decide
theorem stats11272 : actualRows11272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11272=5124 := by core033_kernel_decide
theorem rows11273 : actualRows11273=WordField.canonicalRows actualModulus 11273 (.band 11211 11272) := by core033_kernel_decide
theorem stats11273 : actualRows11273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11273=5124 := by core033_kernel_decide
theorem rows11274 : actualRows11274=WordField.canonicalRows actualModulus 11274 (.band 10961 10972) := by core033_kernel_decide
theorem stats11274 : actualRows11274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11274=5124 := by core033_kernel_decide
theorem rows11275 : actualRows11275=WordField.canonicalRows actualModulus 11275 (.band 10983 10994) := by core033_kernel_decide
theorem stats11275 : actualRows11275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11275=5124 := by core033_kernel_decide
theorem rows11276 : actualRows11276=WordField.canonicalRows actualModulus 11276 (.shr 10961 1) := by core033_kernel_decide
theorem stats11276 : actualRows11276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11276=5052 := by core033_kernel_decide
theorem rows11277 : actualRows11277=WordField.canonicalRows actualModulus 11277 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11277 : actualRows11277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11277=2820 := by core033_kernel_decide
theorem rows11278 : actualRows11278=WordField.canonicalRows actualModulus 11278 (.bnot 11277) := by core033_kernel_decide
theorem stats11278 : actualRows11278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11278=6276 := by core033_kernel_decide
theorem rows11279 : actualRows11279=WordField.canonicalRows actualModulus 11279 (.band 11276 11278) := by core033_kernel_decide
theorem stats11279 : actualRows11279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11279=5124 := by core033_kernel_decide
theorem rows11280 : actualRows11280=WordField.canonicalRows actualModulus 11280 (.shr 10961 1) := by core033_kernel_decide
theorem stats11280 : actualRows11280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11280=5052 := by core033_kernel_decide
theorem rows11281 : actualRows11281=WordField.canonicalRows actualModulus 11281 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11281 : actualRows11281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11281=2820 := by core033_kernel_decide
theorem rows11282 : actualRows11282=WordField.canonicalRows actualModulus 11282 (.bnot 11281) := by core033_kernel_decide
theorem stats11282 : actualRows11282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11282=6276 := by core033_kernel_decide
theorem rows11283 : actualRows11283=WordField.canonicalRows actualModulus 11283 (.bxor 11280 11282) := by core033_kernel_decide
theorem stats11283 : actualRows11283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11283=7428 := by core033_kernel_decide
theorem rows11284 : actualRows11284=WordField.canonicalRows actualModulus 11284 (.shr 10961 1) := by core033_kernel_decide
theorem stats11284 : actualRows11284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11284=5052 := by core033_kernel_decide
theorem rows11285 : actualRows11285=WordField.canonicalRows actualModulus 11285 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11285 : actualRows11285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11285=2820 := by core033_kernel_decide
theorem rows11286 : actualRows11286=WordField.canonicalRows actualModulus 11286 (.bnot 11285) := by core033_kernel_decide
theorem stats11286 : actualRows11286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11286=6276 := by core033_kernel_decide
theorem rows11287 : actualRows11287=WordField.canonicalRows actualModulus 11287 (.badd 11284 11286) := by core033_kernel_decide
theorem stats11287 : actualRows11287.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11287=5388 := by core033_kernel_decide
theorem rows11288 : actualRows11288=WordField.canonicalRows actualModulus 11288 (.bnot 11287) := by core033_kernel_decide
theorem stats11288 : actualRows11288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11288=6276 := by core033_kernel_decide
theorem rows11289 : actualRows11289=WordField.canonicalRows actualModulus 11289 (.band 11283 11288) := by core033_kernel_decide
theorem stats11289 : actualRows11289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11289=5124 := by core033_kernel_decide
theorem rows11290 : actualRows11290=WordField.canonicalRows actualModulus 11290 (.bxor 11279 11289) := by core033_kernel_decide
theorem stats11290 : actualRows11290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11290=7428 := by core033_kernel_decide
theorem rows11291 : actualRows11291=WordField.canonicalRows actualModulus 11291 (.shr 11290 31) := by core033_kernel_decide
theorem stats11291 : actualRows11291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11291=2892 := by core033_kernel_decide
theorem rows11292 : actualRows11292=WordField.canonicalRows actualModulus 11292 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11292 : actualRows11292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11292=2892 := by core033_kernel_decide
theorem rows11293 : actualRows11293=WordField.canonicalRows actualModulus 11293 (.bxor 11291 11292) := by core033_kernel_decide
theorem stats11293 : actualRows11293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11293=7428 := by core033_kernel_decide
theorem rows11294 : actualRows11294=WordField.canonicalRows actualModulus 11294 (.shr 10972 1) := by core033_kernel_decide
theorem stats11294 : actualRows11294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11294=5052 := by core033_kernel_decide
theorem rows11295 : actualRows11295=WordField.canonicalRows actualModulus 11295 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11295 : actualRows11295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11295=2820 := by core033_kernel_decide
theorem rows11296 : actualRows11296=WordField.canonicalRows actualModulus 11296 (.bnot 11295) := by core033_kernel_decide
theorem stats11296 : actualRows11296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11296=6276 := by core033_kernel_decide
theorem rows11297 : actualRows11297=WordField.canonicalRows actualModulus 11297 (.band 11294 11296) := by core033_kernel_decide
theorem stats11297 : actualRows11297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11297=5124 := by core033_kernel_decide
theorem rows11298 : actualRows11298=WordField.canonicalRows actualModulus 11298 (.shr 10972 1) := by core033_kernel_decide
theorem stats11298 : actualRows11298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11298=5052 := by core033_kernel_decide
theorem rows11299 : actualRows11299=WordField.canonicalRows actualModulus 11299 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11299 : actualRows11299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11299=2820 := by core033_kernel_decide
theorem rows11300 : actualRows11300=WordField.canonicalRows actualModulus 11300 (.bnot 11299) := by core033_kernel_decide
theorem stats11300 : actualRows11300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11300=6276 := by core033_kernel_decide
theorem rows11301 : actualRows11301=WordField.canonicalRows actualModulus 11301 (.bxor 11298 11300) := by core033_kernel_decide
theorem stats11301 : actualRows11301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11301=7428 := by core033_kernel_decide
theorem rows11302 : actualRows11302=WordField.canonicalRows actualModulus 11302 (.shr 10972 1) := by core033_kernel_decide
theorem stats11302 : actualRows11302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11302=5052 := by core033_kernel_decide
theorem rows11303 : actualRows11303=WordField.canonicalRows actualModulus 11303 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11303 : actualRows11303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11303=2820 := by core033_kernel_decide
theorem rows11304 : actualRows11304=WordField.canonicalRows actualModulus 11304 (.bnot 11303) := by core033_kernel_decide
theorem stats11304 : actualRows11304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11304=6276 := by core033_kernel_decide
theorem rows11305 : actualRows11305=WordField.canonicalRows actualModulus 11305 (.badd 11302 11304) := by core033_kernel_decide
theorem stats11305 : actualRows11305.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11305=5388 := by core033_kernel_decide
theorem rows11306 : actualRows11306=WordField.canonicalRows actualModulus 11306 (.bnot 11305) := by core033_kernel_decide
theorem stats11306 : actualRows11306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11306=6276 := by core033_kernel_decide
theorem rows11307 : actualRows11307=WordField.canonicalRows actualModulus 11307 (.band 11301 11306) := by core033_kernel_decide
theorem stats11307 : actualRows11307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11307=5124 := by core033_kernel_decide
theorem rows11308 : actualRows11308=WordField.canonicalRows actualModulus 11308 (.bxor 11297 11307) := by core033_kernel_decide
theorem stats11308 : actualRows11308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11308=7428 := by core033_kernel_decide
theorem rows11309 : actualRows11309=WordField.canonicalRows actualModulus 11309 (.shr 11308 31) := by core033_kernel_decide
theorem stats11309 : actualRows11309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11309=2892 := by core033_kernel_decide
theorem rows11310 : actualRows11310=WordField.canonicalRows actualModulus 11310 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11310 : actualRows11310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11310=2892 := by core033_kernel_decide
theorem rows11311 : actualRows11311=WordField.canonicalRows actualModulus 11311 (.bxor 11309 11310) := by core033_kernel_decide
theorem stats11311 : actualRows11311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11311=7428 := by core033_kernel_decide
theorem rows11312 : actualRows11312=WordField.canonicalRows actualModulus 11312 (.shr 10983 1) := by core033_kernel_decide
theorem stats11312 : actualRows11312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11312=5052 := by core033_kernel_decide
theorem rows11313 : actualRows11313=WordField.canonicalRows actualModulus 11313 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11313 : actualRows11313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11313=2820 := by core033_kernel_decide
theorem rows11314 : actualRows11314=WordField.canonicalRows actualModulus 11314 (.bnot 11313) := by core033_kernel_decide
theorem stats11314 : actualRows11314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11314=6276 := by core033_kernel_decide
theorem rows11315 : actualRows11315=WordField.canonicalRows actualModulus 11315 (.band 11312 11314) := by core033_kernel_decide
theorem stats11315 : actualRows11315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11315=5124 := by core033_kernel_decide
theorem rows11316 : actualRows11316=WordField.canonicalRows actualModulus 11316 (.shr 10983 1) := by core033_kernel_decide
theorem stats11316 : actualRows11316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11316=5052 := by core033_kernel_decide
theorem rows11317 : actualRows11317=WordField.canonicalRows actualModulus 11317 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11317 : actualRows11317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11317=2820 := by core033_kernel_decide
def partRows174 : List R1CS.Row := actualRows11254++actualRows11255++actualRows11256++actualRows11257++actualRows11258++actualRows11259++actualRows11260++actualRows11261++actualRows11262++actualRows11263++actualRows11264++actualRows11265++actualRows11266++actualRows11267++actualRows11268++actualRows11269++actualRows11270++actualRows11271++actualRows11272++actualRows11273++actualRows11274++actualRows11275++actualRows11276++actualRows11277++actualRows11278++actualRows11279++actualRows11280++actualRows11281++actualRows11282++actualRows11283++actualRows11284++actualRows11285++actualRows11286++actualRows11287++actualRows11288++actualRows11289++actualRows11290++actualRows11291++actualRows11292++actualRows11293++actualRows11294++actualRows11295++actualRows11296++actualRows11297++actualRows11298++actualRows11299++actualRows11300++actualRows11301++actualRows11302++actualRows11303++actualRows11304++actualRows11305++actualRows11306++actualRows11307++actualRows11308++actualRows11309++actualRows11310++actualRows11311++actualRows11312++actualRows11313++actualRows11314++actualRows11315++actualRows11316++actualRows11317
def partOps174 : List WordIR.Op := [.badd 10917 10939,.literal (BitVec.ofNat 32 1048576),.bnot 11255,.band 11254 11256,.badd 10917 10939,.literal (BitVec.ofNat 32 1048576),.bnot 11259,.bxor 11258 11260,.badd 10917 10939,.literal (BitVec.ofNat 32 1048576),.bnot 11263,.badd 11262 11264,.bnot 11265,.band 11261 11266,.bxor 11257 11267,.shr 11268 31,.literal (BitVec.ofNat 32 1),.bxor 11269 11270,.band 11253 11271,.band 11211 11272,.band 10961 10972,.band 10983 10994,.shr 10961 1,.literal (BitVec.ofNat 32 0),.bnot 11277,.band 11276 11278,.shr 10961 1,.literal (BitVec.ofNat 32 0),.bnot 11281,.bxor 11280 11282,.shr 10961 1,.literal (BitVec.ofNat 32 0),.bnot 11285,.badd 11284 11286,.bnot 11287,.band 11283 11288,.bxor 11279 11289,.shr 11290 31,.literal (BitVec.ofNat 32 1),.bxor 11291 11292,.shr 10972 1,.literal (BitVec.ofNat 32 0),.bnot 11295,.band 11294 11296,.shr 10972 1,.literal (BitVec.ofNat 32 0),.bnot 11299,.bxor 11298 11300,.shr 10972 1,.literal (BitVec.ofNat 32 0),.bnot 11303,.badd 11302 11304,.bnot 11305,.band 11301 11306,.bxor 11297 11307,.shr 11308 31,.literal (BitVec.ofNat 32 1),.bxor 11309 11310,.shr 10983 1,.literal (BitVec.ofNat 32 0),.bnot 11313,.band 11312 11314,.shr 10983 1,.literal (BitVec.ofNat 32 0)]
theorem partExact174 : partRows174=WordField.rows actualModulus 11254 partOps174 := by
  simp only [partRows174,partOps174,WordField.rows,rows11254,rows11255,rows11256,rows11257,rows11258,rows11259,rows11260,rows11261,rows11262,rows11263,rows11264,rows11265,rows11266,rows11267,rows11268,rows11269,rows11270,rows11271,rows11272,rows11273,rows11274,rows11275,rows11276,rows11277,rows11278,rows11279,rows11280,rows11281,rows11282,rows11283,rows11284,rows11285,rows11286,rows11287,rows11288,rows11289,rows11290,rows11291,rows11292,rows11293,rows11294,rows11295,rows11296,rows11297,rows11298,rows11299,rows11300,rows11301,rows11302,rows11303,rows11304,rows11305,rows11306,rows11307,rows11308,rows11309,rows11310,rows11311,rows11312,rows11313,rows11314,rows11315,rows11316,rows11317,List.append_assoc,List.append_nil]
theorem partLength174 : partOps174.length=64 := by decide
theorem partStats174 : partRows174.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows174=326136 := by
  simp only [partRows174,List.length_append,MatrixRowBlocks.rows_weight_append,stats11254.1,stats11254.2,stats11255.1,stats11255.2,stats11256.1,stats11256.2,stats11257.1,stats11257.2,stats11258.1,stats11258.2,stats11259.1,stats11259.2,stats11260.1,stats11260.2,stats11261.1,stats11261.2,stats11262.1,stats11262.2,stats11263.1,stats11263.2,stats11264.1,stats11264.2,stats11265.1,stats11265.2,stats11266.1,stats11266.2,stats11267.1,stats11267.2,stats11268.1,stats11268.2,stats11269.1,stats11269.2,stats11270.1,stats11270.2,stats11271.1,stats11271.2,stats11272.1,stats11272.2,stats11273.1,stats11273.2,stats11274.1,stats11274.2,stats11275.1,stats11275.2,stats11276.1,stats11276.2,stats11277.1,stats11277.2,stats11278.1,stats11278.2,stats11279.1,stats11279.2,stats11280.1,stats11280.2,stats11281.1,stats11281.2,stats11282.1,stats11282.2,stats11283.1,stats11283.2,stats11284.1,stats11284.2,stats11285.1,stats11285.2,stats11286.1,stats11286.2,stats11287.1,stats11287.2,stats11288.1,stats11288.2,stats11289.1,stats11289.2,stats11290.1,stats11290.2,stats11291.1,stats11291.2,stats11292.1,stats11292.2,stats11293.1,stats11293.2,stats11294.1,stats11294.2,stats11295.1,stats11295.2,stats11296.1,stats11296.2,stats11297.1,stats11297.2,stats11298.1,stats11298.2,stats11299.1,stats11299.2,stats11300.1,stats11300.2,stats11301.1,stats11301.2,stats11302.1,stats11302.2,stats11303.1,stats11303.2,stats11304.1,stats11304.2,stats11305.1,stats11305.2,stats11306.1,stats11306.2,stats11307.1,stats11307.2,stats11308.1,stats11308.2,stats11309.1,stats11309.2,stats11310.1,stats11310.2,stats11311.1,stats11311.2,stats11312.1,stats11312.2,stats11313.1,stats11313.2,stats11314.1,stats11314.2,stats11315.1,stats11315.2,stats11316.1,stats11316.2,stats11317.1,stats11317.2]
  decide
end AuthenticatedBranchRoundCheckedRows
