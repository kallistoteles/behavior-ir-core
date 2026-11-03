import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData206
import PairedPathRoundInstructionMatrixData207
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13216 : actualRows13216=WordField.canonicalRows actualModulus 13216 (.bnot 13215) := by core033_kernel_decide
theorem stats13216 : actualRows13216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13216=6276 := by core033_kernel_decide
theorem rows13217 : actualRows13217=WordField.canonicalRows actualModulus 13217 (.band 13216 70) := by core033_kernel_decide
theorem stats13217 : actualRows13217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13217=5124 := by core033_kernel_decide
theorem rows13218 : actualRows13218=WordField.canonicalRows actualModulus 13218 (.bxor 13212 13217) := by core033_kernel_decide
theorem stats13218 : actualRows13218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13218=7428 := by core033_kernel_decide
theorem rows13219 : actualRows13219=WordField.canonicalRows actualModulus 13219 (.bnot 288) := by core033_kernel_decide
theorem stats13219 : actualRows13219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13219=6276 := by core033_kernel_decide
theorem rows13220 : actualRows13220=WordField.canonicalRows actualModulus 13220 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13220 : actualRows13220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13220=2892 := by core033_kernel_decide
theorem rows13221 : actualRows13221=WordField.canonicalRows actualModulus 13221 (.badd 13219 13220) := by core033_kernel_decide
theorem stats13221 : actualRows13221.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13221=5388 := by core033_kernel_decide
theorem rows13222 : actualRows13222=WordField.canonicalRows actualModulus 13222 (.band 13221 11577) := by core033_kernel_decide
theorem stats13222 : actualRows13222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13222=5124 := by core033_kernel_decide
theorem rows13223 : actualRows13223=WordField.canonicalRows actualModulus 13223 (.bnot 288) := by core033_kernel_decide
theorem stats13223 : actualRows13223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13223=6276 := by core033_kernel_decide
theorem rows13224 : actualRows13224=WordField.canonicalRows actualModulus 13224 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13224 : actualRows13224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13224=2892 := by core033_kernel_decide
theorem rows13225 : actualRows13225=WordField.canonicalRows actualModulus 13225 (.badd 13223 13224) := by core033_kernel_decide
theorem stats13225 : actualRows13225.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13225=5388 := by core033_kernel_decide
theorem rows13226 : actualRows13226=WordField.canonicalRows actualModulus 13226 (.bnot 13225) := by core033_kernel_decide
theorem stats13226 : actualRows13226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13226=6276 := by core033_kernel_decide
theorem rows13227 : actualRows13227=WordField.canonicalRows actualModulus 13227 (.band 13226 71) := by core033_kernel_decide
theorem stats13227 : actualRows13227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13227=5124 := by core033_kernel_decide
theorem rows13228 : actualRows13228=WordField.canonicalRows actualModulus 13228 (.bxor 13222 13227) := by core033_kernel_decide
theorem stats13228 : actualRows13228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13228=7428 := by core033_kernel_decide
theorem rows13229 : actualRows13229=WordField.canonicalRows actualModulus 13229 (.bnot 288) := by core033_kernel_decide
theorem stats13229 : actualRows13229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13229=6276 := by core033_kernel_decide
theorem rows13230 : actualRows13230=WordField.canonicalRows actualModulus 13230 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13230 : actualRows13230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13230=2892 := by core033_kernel_decide
theorem rows13231 : actualRows13231=WordField.canonicalRows actualModulus 13231 (.badd 13229 13230) := by core033_kernel_decide
theorem stats13231 : actualRows13231.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13231=5388 := by core033_kernel_decide
theorem rows13232 : actualRows13232=WordField.canonicalRows actualModulus 13232 (.band 13231 11629) := by core033_kernel_decide
theorem stats13232 : actualRows13232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13232=5124 := by core033_kernel_decide
theorem rows13233 : actualRows13233=WordField.canonicalRows actualModulus 13233 (.bnot 288) := by core033_kernel_decide
theorem stats13233 : actualRows13233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13233=6276 := by core033_kernel_decide
theorem rows13234 : actualRows13234=WordField.canonicalRows actualModulus 13234 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13234 : actualRows13234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13234=2892 := by core033_kernel_decide
theorem rows13235 : actualRows13235=WordField.canonicalRows actualModulus 13235 (.badd 13233 13234) := by core033_kernel_decide
theorem stats13235 : actualRows13235.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13235=5388 := by core033_kernel_decide
theorem rows13236 : actualRows13236=WordField.canonicalRows actualModulus 13236 (.bnot 13235) := by core033_kernel_decide
theorem stats13236 : actualRows13236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13236=6276 := by core033_kernel_decide
theorem rows13237 : actualRows13237=WordField.canonicalRows actualModulus 13237 (.band 13236 72) := by core033_kernel_decide
theorem stats13237 : actualRows13237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13237=5124 := by core033_kernel_decide
theorem rows13238 : actualRows13238=WordField.canonicalRows actualModulus 13238 (.bxor 13232 13237) := by core033_kernel_decide
theorem stats13238 : actualRows13238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13238=7428 := by core033_kernel_decide
theorem rows13239 : actualRows13239=WordField.canonicalRows actualModulus 13239 (.bnot 288) := by core033_kernel_decide
theorem stats13239 : actualRows13239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13239=6276 := by core033_kernel_decide
theorem rows13240 : actualRows13240=WordField.canonicalRows actualModulus 13240 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13240 : actualRows13240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13240=2892 := by core033_kernel_decide
theorem rows13241 : actualRows13241=WordField.canonicalRows actualModulus 13241 (.badd 13239 13240) := by core033_kernel_decide
theorem stats13241 : actualRows13241.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13241=5388 := by core033_kernel_decide
theorem rows13242 : actualRows13242=WordField.canonicalRows actualModulus 13242 (.band 13241 11681) := by core033_kernel_decide
theorem stats13242 : actualRows13242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13242=5124 := by core033_kernel_decide
theorem rows13243 : actualRows13243=WordField.canonicalRows actualModulus 13243 (.bnot 288) := by core033_kernel_decide
theorem stats13243 : actualRows13243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13243=6276 := by core033_kernel_decide
theorem rows13244 : actualRows13244=WordField.canonicalRows actualModulus 13244 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13244 : actualRows13244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13244=2892 := by core033_kernel_decide
theorem rows13245 : actualRows13245=WordField.canonicalRows actualModulus 13245 (.badd 13243 13244) := by core033_kernel_decide
theorem stats13245 : actualRows13245.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13245=5388 := by core033_kernel_decide
theorem rows13246 : actualRows13246=WordField.canonicalRows actualModulus 13246 (.bnot 13245) := by core033_kernel_decide
theorem stats13246 : actualRows13246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13246=6276 := by core033_kernel_decide
theorem rows13247 : actualRows13247=WordField.canonicalRows actualModulus 13247 (.band 13246 73) := by core033_kernel_decide
theorem stats13247 : actualRows13247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13247=5124 := by core033_kernel_decide
theorem rows13248 : actualRows13248=WordField.canonicalRows actualModulus 13248 (.bxor 13242 13247) := by core033_kernel_decide
theorem stats13248 : actualRows13248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13248=7428 := by core033_kernel_decide
theorem rows13249 : actualRows13249=WordField.canonicalRows actualModulus 13249 (.bnot 288) := by core033_kernel_decide
theorem stats13249 : actualRows13249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13249=6276 := by core033_kernel_decide
theorem rows13250 : actualRows13250=WordField.canonicalRows actualModulus 13250 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13250 : actualRows13250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13250=2892 := by core033_kernel_decide
theorem rows13251 : actualRows13251=WordField.canonicalRows actualModulus 13251 (.badd 13249 13250) := by core033_kernel_decide
theorem stats13251 : actualRows13251.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13251=5388 := by core033_kernel_decide
theorem rows13252 : actualRows13252=WordField.canonicalRows actualModulus 13252 (.band 13251 11733) := by core033_kernel_decide
theorem stats13252 : actualRows13252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13252=5124 := by core033_kernel_decide
theorem rows13253 : actualRows13253=WordField.canonicalRows actualModulus 13253 (.bnot 288) := by core033_kernel_decide
theorem stats13253 : actualRows13253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13253=6276 := by core033_kernel_decide
theorem rows13254 : actualRows13254=WordField.canonicalRows actualModulus 13254 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13254 : actualRows13254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13254=2892 := by core033_kernel_decide
theorem rows13255 : actualRows13255=WordField.canonicalRows actualModulus 13255 (.badd 13253 13254) := by core033_kernel_decide
theorem stats13255 : actualRows13255.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13255=5388 := by core033_kernel_decide
theorem rows13256 : actualRows13256=WordField.canonicalRows actualModulus 13256 (.bnot 13255) := by core033_kernel_decide
theorem stats13256 : actualRows13256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13256=6276 := by core033_kernel_decide
theorem rows13257 : actualRows13257=WordField.canonicalRows actualModulus 13257 (.band 13256 74) := by core033_kernel_decide
theorem stats13257 : actualRows13257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13257=5124 := by core033_kernel_decide
theorem rows13258 : actualRows13258=WordField.canonicalRows actualModulus 13258 (.bxor 13252 13257) := by core033_kernel_decide
theorem stats13258 : actualRows13258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13258=7428 := by core033_kernel_decide
theorem rows13259 : actualRows13259=WordField.canonicalRows actualModulus 13259 (.bnot 288) := by core033_kernel_decide
theorem stats13259 : actualRows13259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13259=6276 := by core033_kernel_decide
theorem rows13260 : actualRows13260=WordField.canonicalRows actualModulus 13260 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13260 : actualRows13260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13260=2892 := by core033_kernel_decide
theorem rows13261 : actualRows13261=WordField.canonicalRows actualModulus 13261 (.badd 13259 13260) := by core033_kernel_decide
theorem stats13261 : actualRows13261.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13261=5388 := by core033_kernel_decide
theorem rows13262 : actualRows13262=WordField.canonicalRows actualModulus 13262 (.band 13261 12201) := by core033_kernel_decide
theorem stats13262 : actualRows13262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13262=5124 := by core033_kernel_decide
theorem rows13263 : actualRows13263=WordField.canonicalRows actualModulus 13263 (.bnot 288) := by core033_kernel_decide
theorem stats13263 : actualRows13263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13263=6276 := by core033_kernel_decide
theorem rows13264 : actualRows13264=WordField.canonicalRows actualModulus 13264 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13264 : actualRows13264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13264=2892 := by core033_kernel_decide
theorem rows13265 : actualRows13265=WordField.canonicalRows actualModulus 13265 (.badd 13263 13264) := by core033_kernel_decide
theorem stats13265 : actualRows13265.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13265=5388 := by core033_kernel_decide
theorem rows13266 : actualRows13266=WordField.canonicalRows actualModulus 13266 (.bnot 13265) := by core033_kernel_decide
theorem stats13266 : actualRows13266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13266=6276 := by core033_kernel_decide
theorem rows13267 : actualRows13267=WordField.canonicalRows actualModulus 13267 (.band 13266 75) := by core033_kernel_decide
theorem stats13267 : actualRows13267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13267=5124 := by core033_kernel_decide
theorem rows13268 : actualRows13268=WordField.canonicalRows actualModulus 13268 (.bxor 13262 13267) := by core033_kernel_decide
theorem stats13268 : actualRows13268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13268=7428 := by core033_kernel_decide
theorem rows13269 : actualRows13269=WordField.canonicalRows actualModulus 13269 (.bnot 288) := by core033_kernel_decide
theorem stats13269 : actualRows13269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13269=6276 := by core033_kernel_decide
theorem rows13270 : actualRows13270=WordField.canonicalRows actualModulus 13270 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13270 : actualRows13270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13270=2892 := by core033_kernel_decide
theorem rows13271 : actualRows13271=WordField.canonicalRows actualModulus 13271 (.badd 13269 13270) := by core033_kernel_decide
theorem stats13271 : actualRows13271.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13271=5388 := by core033_kernel_decide
theorem rows13272 : actualRows13272=WordField.canonicalRows actualModulus 13272 (.band 13271 12253) := by core033_kernel_decide
theorem stats13272 : actualRows13272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13272=5124 := by core033_kernel_decide
theorem rows13273 : actualRows13273=WordField.canonicalRows actualModulus 13273 (.bnot 288) := by core033_kernel_decide
theorem stats13273 : actualRows13273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13273=6276 := by core033_kernel_decide
theorem rows13274 : actualRows13274=WordField.canonicalRows actualModulus 13274 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13274 : actualRows13274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13274=2892 := by core033_kernel_decide
theorem rows13275 : actualRows13275=WordField.canonicalRows actualModulus 13275 (.badd 13273 13274) := by core033_kernel_decide
theorem stats13275 : actualRows13275.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13275=5388 := by core033_kernel_decide
theorem rows13276 : actualRows13276=WordField.canonicalRows actualModulus 13276 (.bnot 13275) := by core033_kernel_decide
theorem stats13276 : actualRows13276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13276=6276 := by core033_kernel_decide
theorem rows13277 : actualRows13277=WordField.canonicalRows actualModulus 13277 (.band 13276 76) := by core033_kernel_decide
theorem stats13277 : actualRows13277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13277=5124 := by core033_kernel_decide
theorem rows13278 : actualRows13278=WordField.canonicalRows actualModulus 13278 (.bxor 13272 13277) := by core033_kernel_decide
theorem stats13278 : actualRows13278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13278=7428 := by core033_kernel_decide
theorem rows13279 : actualRows13279=WordField.canonicalRows actualModulus 13279 (.bnot 288) := by core033_kernel_decide
theorem stats13279 : actualRows13279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13279=6276 := by core033_kernel_decide
def partRows205 : List R1CS.Row := actualRows13216++actualRows13217++actualRows13218++actualRows13219++actualRows13220++actualRows13221++actualRows13222++actualRows13223++actualRows13224++actualRows13225++actualRows13226++actualRows13227++actualRows13228++actualRows13229++actualRows13230++actualRows13231++actualRows13232++actualRows13233++actualRows13234++actualRows13235++actualRows13236++actualRows13237++actualRows13238++actualRows13239++actualRows13240++actualRows13241++actualRows13242++actualRows13243++actualRows13244++actualRows13245++actualRows13246++actualRows13247++actualRows13248++actualRows13249++actualRows13250++actualRows13251++actualRows13252++actualRows13253++actualRows13254++actualRows13255++actualRows13256++actualRows13257++actualRows13258++actualRows13259++actualRows13260++actualRows13261++actualRows13262++actualRows13263++actualRows13264++actualRows13265++actualRows13266++actualRows13267++actualRows13268++actualRows13269++actualRows13270++actualRows13271++actualRows13272++actualRows13273++actualRows13274++actualRows13275++actualRows13276++actualRows13277++actualRows13278++actualRows13279
def partOps205 : List WordIR.Op := [.bnot 13215,.band 13216 70,.bxor 13212 13217,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13219 13220,.band 13221 11577,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13223 13224,.bnot 13225,.band 13226 71,.bxor 13222 13227,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13229 13230,.band 13231 11629,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13233 13234,.bnot 13235,.band 13236 72,.bxor 13232 13237,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13239 13240,.band 13241 11681,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13243 13244,.bnot 13245,.band 13246 73,.bxor 13242 13247,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13249 13250,.band 13251 11733,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13253 13254,.bnot 13255,.band 13256 74,.bxor 13252 13257,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13259 13260,.band 13261 12201,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13263 13264,.bnot 13265,.band 13266 75,.bxor 13262 13267,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13269 13270,.band 13271 12253,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13273 13274,.bnot 13275,.band 13276 76,.bxor 13272 13277,.bnot 288]
theorem partExact205 : partRows205=WordField.rows actualModulus 13216 partOps205 := by
  simp only [partRows205,partOps205,WordField.rows,rows13216,rows13217,rows13218,rows13219,rows13220,rows13221,rows13222,rows13223,rows13224,rows13225,rows13226,rows13227,rows13228,rows13229,rows13230,rows13231,rows13232,rows13233,rows13234,rows13235,rows13236,rows13237,rows13238,rows13239,rows13240,rows13241,rows13242,rows13243,rows13244,rows13245,rows13246,rows13247,rows13248,rows13249,rows13250,rows13251,rows13252,rows13253,rows13254,rows13255,rows13256,rows13257,rows13258,rows13259,rows13260,rows13261,rows13262,rows13263,rows13264,rows13265,rows13266,rows13267,rows13268,rows13269,rows13270,rows13271,rows13272,rows13273,rows13274,rows13275,rows13276,rows13277,rows13278,rows13279,List.append_assoc,List.append_nil]
theorem partLength205 : partOps205.length=64 := by decide
theorem partStats205 : partRows205.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows205=343488 := by
  simp only [partRows205,List.length_append,MatrixRowBlocks.rows_weight_append,stats13216.1,stats13216.2,stats13217.1,stats13217.2,stats13218.1,stats13218.2,stats13219.1,stats13219.2,stats13220.1,stats13220.2,stats13221.1,stats13221.2,stats13222.1,stats13222.2,stats13223.1,stats13223.2,stats13224.1,stats13224.2,stats13225.1,stats13225.2,stats13226.1,stats13226.2,stats13227.1,stats13227.2,stats13228.1,stats13228.2,stats13229.1,stats13229.2,stats13230.1,stats13230.2,stats13231.1,stats13231.2,stats13232.1,stats13232.2,stats13233.1,stats13233.2,stats13234.1,stats13234.2,stats13235.1,stats13235.2,stats13236.1,stats13236.2,stats13237.1,stats13237.2,stats13238.1,stats13238.2,stats13239.1,stats13239.2,stats13240.1,stats13240.2,stats13241.1,stats13241.2,stats13242.1,stats13242.2,stats13243.1,stats13243.2,stats13244.1,stats13244.2,stats13245.1,stats13245.2,stats13246.1,stats13246.2,stats13247.1,stats13247.2,stats13248.1,stats13248.2,stats13249.1,stats13249.2,stats13250.1,stats13250.2,stats13251.1,stats13251.2,stats13252.1,stats13252.2,stats13253.1,stats13253.2,stats13254.1,stats13254.2,stats13255.1,stats13255.2,stats13256.1,stats13256.2,stats13257.1,stats13257.2,stats13258.1,stats13258.2,stats13259.1,stats13259.2,stats13260.1,stats13260.2,stats13261.1,stats13261.2,stats13262.1,stats13262.2,stats13263.1,stats13263.2,stats13264.1,stats13264.2,stats13265.1,stats13265.2,stats13266.1,stats13266.2,stats13267.1,stats13267.2,stats13268.1,stats13268.2,stats13269.1,stats13269.2,stats13270.1,stats13270.2,stats13271.1,stats13271.2,stats13272.1,stats13272.2,stats13273.1,stats13273.2,stats13274.1,stats13274.2,stats13275.1,stats13275.2,stats13276.1,stats13276.2,stats13277.1,stats13277.2,stats13278.1,stats13278.2,stats13279.1,stats13279.2]
  decide
end PairedPathRoundCheckedRows
