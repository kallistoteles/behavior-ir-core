import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData190
import AuthenticatedBranchRoundInstructionMatrixData191
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12214 : actualRows12214=WordField.canonicalRows actualModulus 12214 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12214 : actualRows12214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12214=2964 := by core033_kernel_decide
theorem rows12215 : actualRows12215=WordField.canonicalRows actualModulus 12215 (.bxor 693 12214) := by core033_kernel_decide
theorem stats12215 : actualRows12215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12215=7428 := by core033_kernel_decide
theorem rows12216 : actualRows12216=WordField.canonicalRows actualModulus 12216 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12216 : actualRows12216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12216=2820 := by core033_kernel_decide
theorem rows12217 : actualRows12217=WordField.canonicalRows actualModulus 12217 (.bnot 12216) := by core033_kernel_decide
theorem stats12217 : actualRows12217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12217=6276 := by core033_kernel_decide
theorem rows12218 : actualRows12218=WordField.canonicalRows actualModulus 12218 (.bxor 12215 12217) := by core033_kernel_decide
theorem stats12218 : actualRows12218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12218=7428 := by core033_kernel_decide
theorem rows12219 : actualRows12219=WordField.canonicalRows actualModulus 12219 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12219 : actualRows12219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12219=2964 := by core033_kernel_decide
theorem rows12220 : actualRows12220=WordField.canonicalRows actualModulus 12220 (.bxor 693 12219) := by core033_kernel_decide
theorem stats12220 : actualRows12220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12220=7428 := by core033_kernel_decide
theorem rows12221 : actualRows12221=WordField.canonicalRows actualModulus 12221 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12221 : actualRows12221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12221=2820 := by core033_kernel_decide
theorem rows12222 : actualRows12222=WordField.canonicalRows actualModulus 12222 (.bnot 12221) := by core033_kernel_decide
theorem stats12222 : actualRows12222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12222=6276 := by core033_kernel_decide
theorem rows12223 : actualRows12223=WordField.canonicalRows actualModulus 12223 (.badd 12220 12222) := by core033_kernel_decide
theorem stats12223 : actualRows12223.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12223=5388 := by core033_kernel_decide
theorem rows12224 : actualRows12224=WordField.canonicalRows actualModulus 12224 (.bnot 12223) := by core033_kernel_decide
theorem stats12224 : actualRows12224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12224=6276 := by core033_kernel_decide
theorem rows12225 : actualRows12225=WordField.canonicalRows actualModulus 12225 (.band 12218 12224) := by core033_kernel_decide
theorem stats12225 : actualRows12225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12225=5124 := by core033_kernel_decide
theorem rows12226 : actualRows12226=WordField.canonicalRows actualModulus 12226 (.bxor 12213 12225) := by core033_kernel_decide
theorem stats12226 : actualRows12226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12226=7428 := by core033_kernel_decide
theorem rows12227 : actualRows12227=WordField.canonicalRows actualModulus 12227 (.shr 12226 31) := by core033_kernel_decide
theorem stats12227 : actualRows12227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12227=2892 := by core033_kernel_decide
theorem rows12228 : actualRows12228=WordField.canonicalRows actualModulus 12228 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12228 : actualRows12228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12228=2892 := by core033_kernel_decide
theorem rows12229 : actualRows12229=WordField.canonicalRows actualModulus 12229 (.bxor 12227 12228) := by core033_kernel_decide
theorem stats12229 : actualRows12229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12229=7428 := by core033_kernel_decide
theorem rows12230 : actualRows12230=WordField.canonicalRows actualModulus 12230 (.bnot 12229) := by core033_kernel_decide
theorem stats12230 : actualRows12230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12230=6276 := by core033_kernel_decide
theorem rows12231 : actualRows12231=WordField.canonicalRows actualModulus 12231 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12231 : actualRows12231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12231=2892 := by core033_kernel_decide
theorem rows12232 : actualRows12232=WordField.canonicalRows actualModulus 12232 (.badd 12230 12231) := by core033_kernel_decide
theorem stats12232 : actualRows12232.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12232=5388 := by core033_kernel_decide
theorem rows12233 : actualRows12233=WordField.canonicalRows actualModulus 12233 (.band 12232 11117) := by core033_kernel_decide
theorem stats12233 : actualRows12233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12233=5124 := by core033_kernel_decide
theorem rows12234 : actualRows12234=WordField.canonicalRows actualModulus 12234 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12234 : actualRows12234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12234=2964 := by core033_kernel_decide
theorem rows12235 : actualRows12235=WordField.canonicalRows actualModulus 12235 (.bxor 693 12234) := by core033_kernel_decide
theorem stats12235 : actualRows12235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12235=7428 := by core033_kernel_decide
theorem rows12236 : actualRows12236=WordField.canonicalRows actualModulus 12236 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12236 : actualRows12236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12236=2820 := by core033_kernel_decide
theorem rows12237 : actualRows12237=WordField.canonicalRows actualModulus 12237 (.bnot 12236) := by core033_kernel_decide
theorem stats12237 : actualRows12237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12237=6276 := by core033_kernel_decide
theorem rows12238 : actualRows12238=WordField.canonicalRows actualModulus 12238 (.band 12235 12237) := by core033_kernel_decide
theorem stats12238 : actualRows12238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12238=5124 := by core033_kernel_decide
theorem rows12239 : actualRows12239=WordField.canonicalRows actualModulus 12239 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12239 : actualRows12239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12239=2964 := by core033_kernel_decide
theorem rows12240 : actualRows12240=WordField.canonicalRows actualModulus 12240 (.bxor 693 12239) := by core033_kernel_decide
theorem stats12240 : actualRows12240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12240=7428 := by core033_kernel_decide
theorem rows12241 : actualRows12241=WordField.canonicalRows actualModulus 12241 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12241 : actualRows12241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12241=2820 := by core033_kernel_decide
theorem rows12242 : actualRows12242=WordField.canonicalRows actualModulus 12242 (.bnot 12241) := by core033_kernel_decide
theorem stats12242 : actualRows12242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12242=6276 := by core033_kernel_decide
theorem rows12243 : actualRows12243=WordField.canonicalRows actualModulus 12243 (.bxor 12240 12242) := by core033_kernel_decide
theorem stats12243 : actualRows12243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12243=7428 := by core033_kernel_decide
theorem rows12244 : actualRows12244=WordField.canonicalRows actualModulus 12244 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12244 : actualRows12244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12244=2964 := by core033_kernel_decide
theorem rows12245 : actualRows12245=WordField.canonicalRows actualModulus 12245 (.bxor 693 12244) := by core033_kernel_decide
theorem stats12245 : actualRows12245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12245=7428 := by core033_kernel_decide
theorem rows12246 : actualRows12246=WordField.canonicalRows actualModulus 12246 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12246 : actualRows12246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12246=2820 := by core033_kernel_decide
theorem rows12247 : actualRows12247=WordField.canonicalRows actualModulus 12247 (.bnot 12246) := by core033_kernel_decide
theorem stats12247 : actualRows12247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12247=6276 := by core033_kernel_decide
theorem rows12248 : actualRows12248=WordField.canonicalRows actualModulus 12248 (.badd 12245 12247) := by core033_kernel_decide
theorem stats12248 : actualRows12248.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12248=5388 := by core033_kernel_decide
theorem rows12249 : actualRows12249=WordField.canonicalRows actualModulus 12249 (.bnot 12248) := by core033_kernel_decide
theorem stats12249 : actualRows12249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12249=6276 := by core033_kernel_decide
theorem rows12250 : actualRows12250=WordField.canonicalRows actualModulus 12250 (.band 12243 12249) := by core033_kernel_decide
theorem stats12250 : actualRows12250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12250=5124 := by core033_kernel_decide
theorem rows12251 : actualRows12251=WordField.canonicalRows actualModulus 12251 (.bxor 12238 12250) := by core033_kernel_decide
theorem stats12251 : actualRows12251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12251=7428 := by core033_kernel_decide
theorem rows12252 : actualRows12252=WordField.canonicalRows actualModulus 12252 (.shr 12251 31) := by core033_kernel_decide
theorem stats12252 : actualRows12252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12252=2892 := by core033_kernel_decide
theorem rows12253 : actualRows12253=WordField.canonicalRows actualModulus 12253 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12253 : actualRows12253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12253=2892 := by core033_kernel_decide
theorem rows12254 : actualRows12254=WordField.canonicalRows actualModulus 12254 (.bxor 12252 12253) := by core033_kernel_decide
theorem stats12254 : actualRows12254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12254=7428 := by core033_kernel_decide
theorem rows12255 : actualRows12255=WordField.canonicalRows actualModulus 12255 (.bnot 12254) := by core033_kernel_decide
theorem stats12255 : actualRows12255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12255=6276 := by core033_kernel_decide
theorem rows12256 : actualRows12256=WordField.canonicalRows actualModulus 12256 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12256 : actualRows12256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12256=2892 := by core033_kernel_decide
theorem rows12257 : actualRows12257=WordField.canonicalRows actualModulus 12257 (.badd 12255 12256) := by core033_kernel_decide
theorem stats12257 : actualRows12257.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12257=5388 := by core033_kernel_decide
theorem rows12258 : actualRows12258=WordField.canonicalRows actualModulus 12258 (.bnot 12257) := by core033_kernel_decide
theorem stats12258 : actualRows12258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12258=6276 := by core033_kernel_decide
theorem rows12259 : actualRows12259=WordField.canonicalRows actualModulus 12259 (.band 12258 1464) := by core033_kernel_decide
theorem stats12259 : actualRows12259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12259=5124 := by core033_kernel_decide
theorem rows12260 : actualRows12260=WordField.canonicalRows actualModulus 12260 (.bxor 12233 12259) := by core033_kernel_decide
theorem stats12260 : actualRows12260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12260=7428 := by core033_kernel_decide
theorem rows12261 : actualRows12261=WordField.canonicalRows actualModulus 12261 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12261 : actualRows12261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12261=2964 := by core033_kernel_decide
theorem rows12262 : actualRows12262=WordField.canonicalRows actualModulus 12262 (.bxor 693 12261) := by core033_kernel_decide
theorem stats12262 : actualRows12262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12262=7428 := by core033_kernel_decide
theorem rows12263 : actualRows12263=WordField.canonicalRows actualModulus 12263 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12263 : actualRows12263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12263=2820 := by core033_kernel_decide
theorem rows12264 : actualRows12264=WordField.canonicalRows actualModulus 12264 (.bnot 12263) := by core033_kernel_decide
theorem stats12264 : actualRows12264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12264=6276 := by core033_kernel_decide
theorem rows12265 : actualRows12265=WordField.canonicalRows actualModulus 12265 (.band 12262 12264) := by core033_kernel_decide
theorem stats12265 : actualRows12265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12265=5124 := by core033_kernel_decide
theorem rows12266 : actualRows12266=WordField.canonicalRows actualModulus 12266 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12266 : actualRows12266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12266=2964 := by core033_kernel_decide
theorem rows12267 : actualRows12267=WordField.canonicalRows actualModulus 12267 (.bxor 693 12266) := by core033_kernel_decide
theorem stats12267 : actualRows12267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12267=7428 := by core033_kernel_decide
theorem rows12268 : actualRows12268=WordField.canonicalRows actualModulus 12268 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12268 : actualRows12268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12268=2820 := by core033_kernel_decide
theorem rows12269 : actualRows12269=WordField.canonicalRows actualModulus 12269 (.bnot 12268) := by core033_kernel_decide
theorem stats12269 : actualRows12269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12269=6276 := by core033_kernel_decide
theorem rows12270 : actualRows12270=WordField.canonicalRows actualModulus 12270 (.bxor 12267 12269) := by core033_kernel_decide
theorem stats12270 : actualRows12270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12270=7428 := by core033_kernel_decide
theorem rows12271 : actualRows12271=WordField.canonicalRows actualModulus 12271 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12271 : actualRows12271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12271=2964 := by core033_kernel_decide
theorem rows12272 : actualRows12272=WordField.canonicalRows actualModulus 12272 (.bxor 693 12271) := by core033_kernel_decide
theorem stats12272 : actualRows12272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12272=7428 := by core033_kernel_decide
theorem rows12273 : actualRows12273=WordField.canonicalRows actualModulus 12273 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12273 : actualRows12273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12273=2820 := by core033_kernel_decide
theorem rows12274 : actualRows12274=WordField.canonicalRows actualModulus 12274 (.bnot 12273) := by core033_kernel_decide
theorem stats12274 : actualRows12274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12274=6276 := by core033_kernel_decide
theorem rows12275 : actualRows12275=WordField.canonicalRows actualModulus 12275 (.badd 12272 12274) := by core033_kernel_decide
theorem stats12275 : actualRows12275.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12275=5388 := by core033_kernel_decide
theorem rows12276 : actualRows12276=WordField.canonicalRows actualModulus 12276 (.bnot 12275) := by core033_kernel_decide
theorem stats12276 : actualRows12276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12276=6276 := by core033_kernel_decide
theorem rows12277 : actualRows12277=WordField.canonicalRows actualModulus 12277 (.band 12270 12276) := by core033_kernel_decide
theorem stats12277 : actualRows12277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12277=5124 := by core033_kernel_decide
def partRows189 : List R1CS.Row := actualRows12214++actualRows12215++actualRows12216++actualRows12217++actualRows12218++actualRows12219++actualRows12220++actualRows12221++actualRows12222++actualRows12223++actualRows12224++actualRows12225++actualRows12226++actualRows12227++actualRows12228++actualRows12229++actualRows12230++actualRows12231++actualRows12232++actualRows12233++actualRows12234++actualRows12235++actualRows12236++actualRows12237++actualRows12238++actualRows12239++actualRows12240++actualRows12241++actualRows12242++actualRows12243++actualRows12244++actualRows12245++actualRows12246++actualRows12247++actualRows12248++actualRows12249++actualRows12250++actualRows12251++actualRows12252++actualRows12253++actualRows12254++actualRows12255++actualRows12256++actualRows12257++actualRows12258++actualRows12259++actualRows12260++actualRows12261++actualRows12262++actualRows12263++actualRows12264++actualRows12265++actualRows12266++actualRows12267++actualRows12268++actualRows12269++actualRows12270++actualRows12271++actualRows12272++actualRows12273++actualRows12274++actualRows12275++actualRows12276++actualRows12277
def partOps189 : List WordIR.Op := [.literal (BitVec.ofNat 32 3),.bxor 693 12214,.literal (BitVec.ofNat 32 0),.bnot 12216,.bxor 12215 12217,.literal (BitVec.ofNat 32 3),.bxor 693 12219,.literal (BitVec.ofNat 32 0),.bnot 12221,.badd 12220 12222,.bnot 12223,.band 12218 12224,.bxor 12213 12225,.shr 12226 31,.literal (BitVec.ofNat 32 1),.bxor 12227 12228,.bnot 12229,.literal (BitVec.ofNat 32 1),.badd 12230 12231,.band 12232 11117,.literal (BitVec.ofNat 32 3),.bxor 693 12234,.literal (BitVec.ofNat 32 0),.bnot 12236,.band 12235 12237,.literal (BitVec.ofNat 32 3),.bxor 693 12239,.literal (BitVec.ofNat 32 0),.bnot 12241,.bxor 12240 12242,.literal (BitVec.ofNat 32 3),.bxor 693 12244,.literal (BitVec.ofNat 32 0),.bnot 12246,.badd 12245 12247,.bnot 12248,.band 12243 12249,.bxor 12238 12250,.shr 12251 31,.literal (BitVec.ofNat 32 1),.bxor 12252 12253,.bnot 12254,.literal (BitVec.ofNat 32 1),.badd 12255 12256,.bnot 12257,.band 12258 1464,.bxor 12233 12259,.literal (BitVec.ofNat 32 3),.bxor 693 12261,.literal (BitVec.ofNat 32 0),.bnot 12263,.band 12262 12264,.literal (BitVec.ofNat 32 3),.bxor 693 12266,.literal (BitVec.ofNat 32 0),.bnot 12268,.bxor 12267 12269,.literal (BitVec.ofNat 32 3),.bxor 693 12271,.literal (BitVec.ofNat 32 0),.bnot 12273,.badd 12272 12274,.bnot 12275,.band 12270 12276]
theorem partExact189 : partRows189=WordField.rows actualModulus 12214 partOps189 := by
  simp only [partRows189,partOps189,WordField.rows,rows12214,rows12215,rows12216,rows12217,rows12218,rows12219,rows12220,rows12221,rows12222,rows12223,rows12224,rows12225,rows12226,rows12227,rows12228,rows12229,rows12230,rows12231,rows12232,rows12233,rows12234,rows12235,rows12236,rows12237,rows12238,rows12239,rows12240,rows12241,rows12242,rows12243,rows12244,rows12245,rows12246,rows12247,rows12248,rows12249,rows12250,rows12251,rows12252,rows12253,rows12254,rows12255,rows12256,rows12257,rows12258,rows12259,rows12260,rows12261,rows12262,rows12263,rows12264,rows12265,rows12266,rows12267,rows12268,rows12269,rows12270,rows12271,rows12272,rows12273,rows12274,rows12275,rows12276,rows12277,List.append_assoc,List.append_nil]
theorem partLength189 : partOps189.length=64 := by decide
theorem partStats189 : partRows189.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows189=333144 := by
  simp only [partRows189,List.length_append,MatrixRowBlocks.rows_weight_append,stats12214.1,stats12214.2,stats12215.1,stats12215.2,stats12216.1,stats12216.2,stats12217.1,stats12217.2,stats12218.1,stats12218.2,stats12219.1,stats12219.2,stats12220.1,stats12220.2,stats12221.1,stats12221.2,stats12222.1,stats12222.2,stats12223.1,stats12223.2,stats12224.1,stats12224.2,stats12225.1,stats12225.2,stats12226.1,stats12226.2,stats12227.1,stats12227.2,stats12228.1,stats12228.2,stats12229.1,stats12229.2,stats12230.1,stats12230.2,stats12231.1,stats12231.2,stats12232.1,stats12232.2,stats12233.1,stats12233.2,stats12234.1,stats12234.2,stats12235.1,stats12235.2,stats12236.1,stats12236.2,stats12237.1,stats12237.2,stats12238.1,stats12238.2,stats12239.1,stats12239.2,stats12240.1,stats12240.2,stats12241.1,stats12241.2,stats12242.1,stats12242.2,stats12243.1,stats12243.2,stats12244.1,stats12244.2,stats12245.1,stats12245.2,stats12246.1,stats12246.2,stats12247.1,stats12247.2,stats12248.1,stats12248.2,stats12249.1,stats12249.2,stats12250.1,stats12250.2,stats12251.1,stats12251.2,stats12252.1,stats12252.2,stats12253.1,stats12253.2,stats12254.1,stats12254.2,stats12255.1,stats12255.2,stats12256.1,stats12256.2,stats12257.1,stats12257.2,stats12258.1,stats12258.2,stats12259.1,stats12259.2,stats12260.1,stats12260.2,stats12261.1,stats12261.2,stats12262.1,stats12262.2,stats12263.1,stats12263.2,stats12264.1,stats12264.2,stats12265.1,stats12265.2,stats12266.1,stats12266.2,stats12267.1,stats12267.2,stats12268.1,stats12268.2,stats12269.1,stats12269.2,stats12270.1,stats12270.2,stats12271.1,stats12271.2,stats12272.1,stats12272.2,stats12273.1,stats12273.2,stats12274.1,stats12274.2,stats12275.1,stats12275.2,stats12276.1,stats12276.2,stats12277.1,stats12277.2]
  decide
end AuthenticatedBranchRoundCheckedRows
