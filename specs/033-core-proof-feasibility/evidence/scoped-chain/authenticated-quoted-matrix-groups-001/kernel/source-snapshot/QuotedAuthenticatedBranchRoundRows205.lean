import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData206
import AuthenticatedBranchRoundInstructionMatrixData207
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13238 : actualRows13238=WordField.canonicalRows actualModulus 13238 (.band 13231 13237) := by core033_kernel_decide
theorem stats13238 : actualRows13238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13238=5124 := by core033_kernel_decide
theorem rows13239 : actualRows13239=WordField.canonicalRows actualModulus 13239 (.bxor 13226 13238) := by core033_kernel_decide
theorem stats13239 : actualRows13239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13239=7428 := by core033_kernel_decide
theorem rows13240 : actualRows13240=WordField.canonicalRows actualModulus 13240 (.shr 13239 31) := by core033_kernel_decide
theorem stats13240 : actualRows13240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13240=2892 := by core033_kernel_decide
theorem rows13241 : actualRows13241=WordField.canonicalRows actualModulus 13241 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13241 : actualRows13241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13241=2892 := by core033_kernel_decide
theorem rows13242 : actualRows13242=WordField.canonicalRows actualModulus 13242 (.bxor 13240 13241) := by core033_kernel_decide
theorem stats13242 : actualRows13242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13242=7428 := by core033_kernel_decide
theorem rows13243 : actualRows13243=WordField.canonicalRows actualModulus 13243 (.bnot 13242) := by core033_kernel_decide
theorem stats13243 : actualRows13243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13243=6276 := by core033_kernel_decide
theorem rows13244 : actualRows13244=WordField.canonicalRows actualModulus 13244 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13244 : actualRows13244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13244=2892 := by core033_kernel_decide
theorem rows13245 : actualRows13245=WordField.canonicalRows actualModulus 13245 (.badd 13243 13244) := by core033_kernel_decide
theorem stats13245 : actualRows13245.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13245=5388 := by core033_kernel_decide
theorem rows13246 : actualRows13246=WordField.canonicalRows actualModulus 13246 (.bnot 13245) := by core033_kernel_decide
theorem stats13246 : actualRows13246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13246=6276 := by core033_kernel_decide
theorem rows13247 : actualRows13247=WordField.canonicalRows actualModulus 13247 (.band 13246 1673) := by core033_kernel_decide
theorem stats13247 : actualRows13247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13247=5124 := by core033_kernel_decide
theorem rows13248 : actualRows13248=WordField.canonicalRows actualModulus 13248 (.bxor 13221 13247) := by core033_kernel_decide
theorem stats13248 : actualRows13248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13248=7428 := by core033_kernel_decide
theorem rows13249 : actualRows13249=WordField.canonicalRows actualModulus 13249 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13249 : actualRows13249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13249=2964 := by core033_kernel_decide
theorem rows13250 : actualRows13250=WordField.canonicalRows actualModulus 13250 (.bxor 693 13249) := by core033_kernel_decide
theorem stats13250 : actualRows13250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13250=7428 := by core033_kernel_decide
theorem rows13251 : actualRows13251=WordField.canonicalRows actualModulus 13251 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13251 : actualRows13251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13251=2820 := by core033_kernel_decide
theorem rows13252 : actualRows13252=WordField.canonicalRows actualModulus 13252 (.bnot 13251) := by core033_kernel_decide
theorem stats13252 : actualRows13252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13252=6276 := by core033_kernel_decide
theorem rows13253 : actualRows13253=WordField.canonicalRows actualModulus 13253 (.band 13250 13252) := by core033_kernel_decide
theorem stats13253 : actualRows13253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13253=5124 := by core033_kernel_decide
theorem rows13254 : actualRows13254=WordField.canonicalRows actualModulus 13254 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13254 : actualRows13254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13254=2964 := by core033_kernel_decide
theorem rows13255 : actualRows13255=WordField.canonicalRows actualModulus 13255 (.bxor 693 13254) := by core033_kernel_decide
theorem stats13255 : actualRows13255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13255=7428 := by core033_kernel_decide
theorem rows13256 : actualRows13256=WordField.canonicalRows actualModulus 13256 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13256 : actualRows13256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13256=2820 := by core033_kernel_decide
theorem rows13257 : actualRows13257=WordField.canonicalRows actualModulus 13257 (.bnot 13256) := by core033_kernel_decide
theorem stats13257 : actualRows13257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13257=6276 := by core033_kernel_decide
theorem rows13258 : actualRows13258=WordField.canonicalRows actualModulus 13258 (.bxor 13255 13257) := by core033_kernel_decide
theorem stats13258 : actualRows13258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13258=7428 := by core033_kernel_decide
theorem rows13259 : actualRows13259=WordField.canonicalRows actualModulus 13259 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13259 : actualRows13259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13259=2964 := by core033_kernel_decide
theorem rows13260 : actualRows13260=WordField.canonicalRows actualModulus 13260 (.bxor 693 13259) := by core033_kernel_decide
theorem stats13260 : actualRows13260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13260=7428 := by core033_kernel_decide
theorem rows13261 : actualRows13261=WordField.canonicalRows actualModulus 13261 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13261 : actualRows13261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13261=2820 := by core033_kernel_decide
theorem rows13262 : actualRows13262=WordField.canonicalRows actualModulus 13262 (.bnot 13261) := by core033_kernel_decide
theorem stats13262 : actualRows13262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13262=6276 := by core033_kernel_decide
theorem rows13263 : actualRows13263=WordField.canonicalRows actualModulus 13263 (.badd 13260 13262) := by core033_kernel_decide
theorem stats13263 : actualRows13263.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13263=5388 := by core033_kernel_decide
theorem rows13264 : actualRows13264=WordField.canonicalRows actualModulus 13264 (.bnot 13263) := by core033_kernel_decide
theorem stats13264 : actualRows13264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13264=6276 := by core033_kernel_decide
theorem rows13265 : actualRows13265=WordField.canonicalRows actualModulus 13265 (.band 13258 13264) := by core033_kernel_decide
theorem stats13265 : actualRows13265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13265=5124 := by core033_kernel_decide
theorem rows13266 : actualRows13266=WordField.canonicalRows actualModulus 13266 (.bxor 13253 13265) := by core033_kernel_decide
theorem stats13266 : actualRows13266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13266=7428 := by core033_kernel_decide
theorem rows13267 : actualRows13267=WordField.canonicalRows actualModulus 13267 (.shr 13266 31) := by core033_kernel_decide
theorem stats13267 : actualRows13267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13267=2892 := by core033_kernel_decide
theorem rows13268 : actualRows13268=WordField.canonicalRows actualModulus 13268 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13268 : actualRows13268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13268=2892 := by core033_kernel_decide
theorem rows13269 : actualRows13269=WordField.canonicalRows actualModulus 13269 (.bxor 13267 13268) := by core033_kernel_decide
theorem stats13269 : actualRows13269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13269=7428 := by core033_kernel_decide
theorem rows13270 : actualRows13270=WordField.canonicalRows actualModulus 13270 (.bnot 13269) := by core033_kernel_decide
theorem stats13270 : actualRows13270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13270=6276 := by core033_kernel_decide
theorem rows13271 : actualRows13271=WordField.canonicalRows actualModulus 13271 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13271 : actualRows13271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13271=2892 := by core033_kernel_decide
theorem rows13272 : actualRows13272=WordField.canonicalRows actualModulus 13272 (.badd 13270 13271) := by core033_kernel_decide
theorem stats13272 : actualRows13272.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13272=5388 := by core033_kernel_decide
theorem rows13273 : actualRows13273=WordField.canonicalRows actualModulus 13273 (.band 13272 11005) := by core033_kernel_decide
theorem stats13273 : actualRows13273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13273=5124 := by core033_kernel_decide
theorem rows13274 : actualRows13274=WordField.canonicalRows actualModulus 13274 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13274 : actualRows13274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13274=2964 := by core033_kernel_decide
theorem rows13275 : actualRows13275=WordField.canonicalRows actualModulus 13275 (.bxor 693 13274) := by core033_kernel_decide
theorem stats13275 : actualRows13275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13275=7428 := by core033_kernel_decide
theorem rows13276 : actualRows13276=WordField.canonicalRows actualModulus 13276 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13276 : actualRows13276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13276=2820 := by core033_kernel_decide
theorem rows13277 : actualRows13277=WordField.canonicalRows actualModulus 13277 (.bnot 13276) := by core033_kernel_decide
theorem stats13277 : actualRows13277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13277=6276 := by core033_kernel_decide
theorem rows13278 : actualRows13278=WordField.canonicalRows actualModulus 13278 (.band 13275 13277) := by core033_kernel_decide
theorem stats13278 : actualRows13278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13278=5124 := by core033_kernel_decide
theorem rows13279 : actualRows13279=WordField.canonicalRows actualModulus 13279 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13279 : actualRows13279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13279=2964 := by core033_kernel_decide
theorem rows13280 : actualRows13280=WordField.canonicalRows actualModulus 13280 (.bxor 693 13279) := by core033_kernel_decide
theorem stats13280 : actualRows13280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13280=7428 := by core033_kernel_decide
theorem rows13281 : actualRows13281=WordField.canonicalRows actualModulus 13281 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13281 : actualRows13281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13281=2820 := by core033_kernel_decide
theorem rows13282 : actualRows13282=WordField.canonicalRows actualModulus 13282 (.bnot 13281) := by core033_kernel_decide
theorem stats13282 : actualRows13282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13282=6276 := by core033_kernel_decide
theorem rows13283 : actualRows13283=WordField.canonicalRows actualModulus 13283 (.bxor 13280 13282) := by core033_kernel_decide
theorem stats13283 : actualRows13283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13283=7428 := by core033_kernel_decide
theorem rows13284 : actualRows13284=WordField.canonicalRows actualModulus 13284 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13284 : actualRows13284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13284=2964 := by core033_kernel_decide
theorem rows13285 : actualRows13285=WordField.canonicalRows actualModulus 13285 (.bxor 693 13284) := by core033_kernel_decide
theorem stats13285 : actualRows13285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13285=7428 := by core033_kernel_decide
theorem rows13286 : actualRows13286=WordField.canonicalRows actualModulus 13286 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13286 : actualRows13286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13286=2820 := by core033_kernel_decide
theorem rows13287 : actualRows13287=WordField.canonicalRows actualModulus 13287 (.bnot 13286) := by core033_kernel_decide
theorem stats13287 : actualRows13287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13287=6276 := by core033_kernel_decide
theorem rows13288 : actualRows13288=WordField.canonicalRows actualModulus 13288 (.badd 13285 13287) := by core033_kernel_decide
theorem stats13288 : actualRows13288.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13288=5388 := by core033_kernel_decide
theorem rows13289 : actualRows13289=WordField.canonicalRows actualModulus 13289 (.bnot 13288) := by core033_kernel_decide
theorem stats13289 : actualRows13289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13289=6276 := by core033_kernel_decide
theorem rows13290 : actualRows13290=WordField.canonicalRows actualModulus 13290 (.band 13283 13289) := by core033_kernel_decide
theorem stats13290 : actualRows13290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13290=5124 := by core033_kernel_decide
theorem rows13291 : actualRows13291=WordField.canonicalRows actualModulus 13291 (.bxor 13278 13290) := by core033_kernel_decide
theorem stats13291 : actualRows13291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13291=7428 := by core033_kernel_decide
theorem rows13292 : actualRows13292=WordField.canonicalRows actualModulus 13292 (.shr 13291 31) := by core033_kernel_decide
theorem stats13292 : actualRows13292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13292=2892 := by core033_kernel_decide
theorem rows13293 : actualRows13293=WordField.canonicalRows actualModulus 13293 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13293 : actualRows13293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13293=2892 := by core033_kernel_decide
theorem rows13294 : actualRows13294=WordField.canonicalRows actualModulus 13294 (.bxor 13292 13293) := by core033_kernel_decide
theorem stats13294 : actualRows13294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13294=7428 := by core033_kernel_decide
theorem rows13295 : actualRows13295=WordField.canonicalRows actualModulus 13295 (.bnot 13294) := by core033_kernel_decide
theorem stats13295 : actualRows13295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13295=6276 := by core033_kernel_decide
theorem rows13296 : actualRows13296=WordField.canonicalRows actualModulus 13296 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13296 : actualRows13296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13296=2892 := by core033_kernel_decide
theorem rows13297 : actualRows13297=WordField.canonicalRows actualModulus 13297 (.badd 13295 13296) := by core033_kernel_decide
theorem stats13297 : actualRows13297.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13297=5388 := by core033_kernel_decide
theorem rows13298 : actualRows13298=WordField.canonicalRows actualModulus 13298 (.bnot 13297) := by core033_kernel_decide
theorem stats13298 : actualRows13298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13298=6276 := by core033_kernel_decide
theorem rows13299 : actualRows13299=WordField.canonicalRows actualModulus 13299 (.band 13298 10484) := by core033_kernel_decide
theorem stats13299 : actualRows13299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13299=5124 := by core033_kernel_decide
theorem rows13300 : actualRows13300=WordField.canonicalRows actualModulus 13300 (.bxor 13273 13299) := by core033_kernel_decide
theorem stats13300 : actualRows13300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13300=7428 := by core033_kernel_decide
theorem rows13301 : actualRows13301=WordField.canonicalRows actualModulus 13301 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13301 : actualRows13301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13301=2964 := by core033_kernel_decide
def partRows205 : List R1CS.Row := actualRows13238++actualRows13239++actualRows13240++actualRows13241++actualRows13242++actualRows13243++actualRows13244++actualRows13245++actualRows13246++actualRows13247++actualRows13248++actualRows13249++actualRows13250++actualRows13251++actualRows13252++actualRows13253++actualRows13254++actualRows13255++actualRows13256++actualRows13257++actualRows13258++actualRows13259++actualRows13260++actualRows13261++actualRows13262++actualRows13263++actualRows13264++actualRows13265++actualRows13266++actualRows13267++actualRows13268++actualRows13269++actualRows13270++actualRows13271++actualRows13272++actualRows13273++actualRows13274++actualRows13275++actualRows13276++actualRows13277++actualRows13278++actualRows13279++actualRows13280++actualRows13281++actualRows13282++actualRows13283++actualRows13284++actualRows13285++actualRows13286++actualRows13287++actualRows13288++actualRows13289++actualRows13290++actualRows13291++actualRows13292++actualRows13293++actualRows13294++actualRows13295++actualRows13296++actualRows13297++actualRows13298++actualRows13299++actualRows13300++actualRows13301
def partOps205 : List WordIR.Op := [.band 13231 13237,.bxor 13226 13238,.shr 13239 31,.literal (BitVec.ofNat 32 1),.bxor 13240 13241,.bnot 13242,.literal (BitVec.ofNat 32 1),.badd 13243 13244,.bnot 13245,.band 13246 1673,.bxor 13221 13247,.literal (BitVec.ofNat 32 3),.bxor 693 13249,.literal (BitVec.ofNat 32 0),.bnot 13251,.band 13250 13252,.literal (BitVec.ofNat 32 3),.bxor 693 13254,.literal (BitVec.ofNat 32 0),.bnot 13256,.bxor 13255 13257,.literal (BitVec.ofNat 32 3),.bxor 693 13259,.literal (BitVec.ofNat 32 0),.bnot 13261,.badd 13260 13262,.bnot 13263,.band 13258 13264,.bxor 13253 13265,.shr 13266 31,.literal (BitVec.ofNat 32 1),.bxor 13267 13268,.bnot 13269,.literal (BitVec.ofNat 32 1),.badd 13270 13271,.band 13272 11005,.literal (BitVec.ofNat 32 3),.bxor 693 13274,.literal (BitVec.ofNat 32 0),.bnot 13276,.band 13275 13277,.literal (BitVec.ofNat 32 3),.bxor 693 13279,.literal (BitVec.ofNat 32 0),.bnot 13281,.bxor 13280 13282,.literal (BitVec.ofNat 32 3),.bxor 693 13284,.literal (BitVec.ofNat 32 0),.bnot 13286,.badd 13285 13287,.bnot 13288,.band 13283 13289,.bxor 13278 13290,.shr 13291 31,.literal (BitVec.ofNat 32 1),.bxor 13292 13293,.bnot 13294,.literal (BitVec.ofNat 32 1),.badd 13295 13296,.bnot 13297,.band 13298 10484,.bxor 13273 13299,.literal (BitVec.ofNat 32 3)]
theorem partExact205 : partRows205=WordField.rows actualModulus 13238 partOps205 := by
  simp only [partRows205,partOps205,WordField.rows,rows13238,rows13239,rows13240,rows13241,rows13242,rows13243,rows13244,rows13245,rows13246,rows13247,rows13248,rows13249,rows13250,rows13251,rows13252,rows13253,rows13254,rows13255,rows13256,rows13257,rows13258,rows13259,rows13260,rows13261,rows13262,rows13263,rows13264,rows13265,rows13266,rows13267,rows13268,rows13269,rows13270,rows13271,rows13272,rows13273,rows13274,rows13275,rows13276,rows13277,rows13278,rows13279,rows13280,rows13281,rows13282,rows13283,rows13284,rows13285,rows13286,rows13287,rows13288,rows13289,rows13290,rows13291,rows13292,rows13293,rows13294,rows13295,rows13296,rows13297,rows13298,rows13299,rows13300,rows13301,List.append_assoc,List.append_nil]
theorem partLength205 : partOps205.length=64 := by decide
theorem partStats205 : partRows205.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows205=332064 := by
  simp only [partRows205,List.length_append,MatrixRowBlocks.rows_weight_append,stats13238.1,stats13238.2,stats13239.1,stats13239.2,stats13240.1,stats13240.2,stats13241.1,stats13241.2,stats13242.1,stats13242.2,stats13243.1,stats13243.2,stats13244.1,stats13244.2,stats13245.1,stats13245.2,stats13246.1,stats13246.2,stats13247.1,stats13247.2,stats13248.1,stats13248.2,stats13249.1,stats13249.2,stats13250.1,stats13250.2,stats13251.1,stats13251.2,stats13252.1,stats13252.2,stats13253.1,stats13253.2,stats13254.1,stats13254.2,stats13255.1,stats13255.2,stats13256.1,stats13256.2,stats13257.1,stats13257.2,stats13258.1,stats13258.2,stats13259.1,stats13259.2,stats13260.1,stats13260.2,stats13261.1,stats13261.2,stats13262.1,stats13262.2,stats13263.1,stats13263.2,stats13264.1,stats13264.2,stats13265.1,stats13265.2,stats13266.1,stats13266.2,stats13267.1,stats13267.2,stats13268.1,stats13268.2,stats13269.1,stats13269.2,stats13270.1,stats13270.2,stats13271.1,stats13271.2,stats13272.1,stats13272.2,stats13273.1,stats13273.2,stats13274.1,stats13274.2,stats13275.1,stats13275.2,stats13276.1,stats13276.2,stats13277.1,stats13277.2,stats13278.1,stats13278.2,stats13279.1,stats13279.2,stats13280.1,stats13280.2,stats13281.1,stats13281.2,stats13282.1,stats13282.2,stats13283.1,stats13283.2,stats13284.1,stats13284.2,stats13285.1,stats13285.2,stats13286.1,stats13286.2,stats13287.1,stats13287.2,stats13288.1,stats13288.2,stats13289.1,stats13289.2,stats13290.1,stats13290.2,stats13291.1,stats13291.2,stats13292.1,stats13292.2,stats13293.1,stats13293.2,stats13294.1,stats13294.2,stats13295.1,stats13295.2,stats13296.1,stats13296.2,stats13297.1,stats13297.2,stats13298.1,stats13298.2,stats13299.1,stats13299.2,stats13300.1,stats13300.2,stats13301.1,stats13301.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
