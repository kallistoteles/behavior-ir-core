import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData191
import PairedPathRoundInstructionMatrixData192
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12256 : actualRows12256=WordField.canonicalRows actualModulus 12256 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12256 : actualRows12256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12256=2820 := by core033_kernel_decide
theorem rows12257 : actualRows12257=WordField.canonicalRows actualModulus 12257 (.bnot 12256) := by core033_kernel_decide
theorem stats12257 : actualRows12257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12257=6276 := by core033_kernel_decide
theorem rows12258 : actualRows12258=WordField.canonicalRows actualModulus 12258 (.band 12255 12257) := by core033_kernel_decide
theorem stats12258 : actualRows12258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12258=5124 := by core033_kernel_decide
theorem rows12259 : actualRows12259=WordField.canonicalRows actualModulus 12259 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12259 : actualRows12259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12259=2964 := by core033_kernel_decide
theorem rows12260 : actualRows12260=WordField.canonicalRows actualModulus 12260 (.bxor 442 12259) := by core033_kernel_decide
theorem stats12260 : actualRows12260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12260=7428 := by core033_kernel_decide
theorem rows12261 : actualRows12261=WordField.canonicalRows actualModulus 12261 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12261 : actualRows12261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12261=2820 := by core033_kernel_decide
theorem rows12262 : actualRows12262=WordField.canonicalRows actualModulus 12262 (.bnot 12261) := by core033_kernel_decide
theorem stats12262 : actualRows12262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12262=6276 := by core033_kernel_decide
theorem rows12263 : actualRows12263=WordField.canonicalRows actualModulus 12263 (.bxor 12260 12262) := by core033_kernel_decide
theorem stats12263 : actualRows12263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12263=7428 := by core033_kernel_decide
theorem rows12264 : actualRows12264=WordField.canonicalRows actualModulus 12264 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12264 : actualRows12264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12264=2964 := by core033_kernel_decide
theorem rows12265 : actualRows12265=WordField.canonicalRows actualModulus 12265 (.bxor 442 12264) := by core033_kernel_decide
theorem stats12265 : actualRows12265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12265=7428 := by core033_kernel_decide
theorem rows12266 : actualRows12266=WordField.canonicalRows actualModulus 12266 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12266 : actualRows12266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12266=2820 := by core033_kernel_decide
theorem rows12267 : actualRows12267=WordField.canonicalRows actualModulus 12267 (.bnot 12266) := by core033_kernel_decide
theorem stats12267 : actualRows12267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12267=6276 := by core033_kernel_decide
theorem rows12268 : actualRows12268=WordField.canonicalRows actualModulus 12268 (.badd 12265 12267) := by core033_kernel_decide
theorem stats12268 : actualRows12268.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12268=5388 := by core033_kernel_decide
theorem rows12269 : actualRows12269=WordField.canonicalRows actualModulus 12269 (.bnot 12268) := by core033_kernel_decide
theorem stats12269 : actualRows12269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12269=6276 := by core033_kernel_decide
theorem rows12270 : actualRows12270=WordField.canonicalRows actualModulus 12270 (.band 12263 12269) := by core033_kernel_decide
theorem stats12270 : actualRows12270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12270=5124 := by core033_kernel_decide
theorem rows12271 : actualRows12271=WordField.canonicalRows actualModulus 12271 (.bxor 12258 12270) := by core033_kernel_decide
theorem stats12271 : actualRows12271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12271=7428 := by core033_kernel_decide
theorem rows12272 : actualRows12272=WordField.canonicalRows actualModulus 12272 (.shr 12271 31) := by core033_kernel_decide
theorem stats12272 : actualRows12272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12272=2892 := by core033_kernel_decide
theorem rows12273 : actualRows12273=WordField.canonicalRows actualModulus 12273 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12273 : actualRows12273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12273=2892 := by core033_kernel_decide
theorem rows12274 : actualRows12274=WordField.canonicalRows actualModulus 12274 (.bxor 12272 12273) := by core033_kernel_decide
theorem stats12274 : actualRows12274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12274=7428 := by core033_kernel_decide
theorem rows12275 : actualRows12275=WordField.canonicalRows actualModulus 12275 (.bnot 12274) := by core033_kernel_decide
theorem stats12275 : actualRows12275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12275=6276 := by core033_kernel_decide
theorem rows12276 : actualRows12276=WordField.canonicalRows actualModulus 12276 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12276 : actualRows12276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12276=2892 := by core033_kernel_decide
theorem rows12277 : actualRows12277=WordField.canonicalRows actualModulus 12277 (.badd 12275 12276) := by core033_kernel_decide
theorem stats12277 : actualRows12277.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12277=5388 := by core033_kernel_decide
theorem rows12278 : actualRows12278=WordField.canonicalRows actualModulus 12278 (.band 12277 10256) := by core033_kernel_decide
theorem stats12278 : actualRows12278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12278=5124 := by core033_kernel_decide
theorem rows12279 : actualRows12279=WordField.canonicalRows actualModulus 12279 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12279 : actualRows12279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12279=2964 := by core033_kernel_decide
theorem rows12280 : actualRows12280=WordField.canonicalRows actualModulus 12280 (.bxor 442 12279) := by core033_kernel_decide
theorem stats12280 : actualRows12280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12280=7428 := by core033_kernel_decide
theorem rows12281 : actualRows12281=WordField.canonicalRows actualModulus 12281 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12281 : actualRows12281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12281=2820 := by core033_kernel_decide
theorem rows12282 : actualRows12282=WordField.canonicalRows actualModulus 12282 (.bnot 12281) := by core033_kernel_decide
theorem stats12282 : actualRows12282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12282=6276 := by core033_kernel_decide
theorem rows12283 : actualRows12283=WordField.canonicalRows actualModulus 12283 (.band 12280 12282) := by core033_kernel_decide
theorem stats12283 : actualRows12283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12283=5124 := by core033_kernel_decide
theorem rows12284 : actualRows12284=WordField.canonicalRows actualModulus 12284 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12284 : actualRows12284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12284=2964 := by core033_kernel_decide
theorem rows12285 : actualRows12285=WordField.canonicalRows actualModulus 12285 (.bxor 442 12284) := by core033_kernel_decide
theorem stats12285 : actualRows12285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12285=7428 := by core033_kernel_decide
theorem rows12286 : actualRows12286=WordField.canonicalRows actualModulus 12286 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12286 : actualRows12286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12286=2820 := by core033_kernel_decide
theorem rows12287 : actualRows12287=WordField.canonicalRows actualModulus 12287 (.bnot 12286) := by core033_kernel_decide
theorem stats12287 : actualRows12287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12287=6276 := by core033_kernel_decide
theorem rows12288 : actualRows12288=WordField.canonicalRows actualModulus 12288 (.bxor 12285 12287) := by core033_kernel_decide
theorem stats12288 : actualRows12288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12288=7428 := by core033_kernel_decide
theorem rows12289 : actualRows12289=WordField.canonicalRows actualModulus 12289 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12289 : actualRows12289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12289=2964 := by core033_kernel_decide
theorem rows12290 : actualRows12290=WordField.canonicalRows actualModulus 12290 (.bxor 442 12289) := by core033_kernel_decide
theorem stats12290 : actualRows12290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12290=7428 := by core033_kernel_decide
theorem rows12291 : actualRows12291=WordField.canonicalRows actualModulus 12291 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12291 : actualRows12291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12291=2820 := by core033_kernel_decide
theorem rows12292 : actualRows12292=WordField.canonicalRows actualModulus 12292 (.bnot 12291) := by core033_kernel_decide
theorem stats12292 : actualRows12292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12292=6276 := by core033_kernel_decide
theorem rows12293 : actualRows12293=WordField.canonicalRows actualModulus 12293 (.badd 12290 12292) := by core033_kernel_decide
theorem stats12293 : actualRows12293.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12293=5388 := by core033_kernel_decide
theorem rows12294 : actualRows12294=WordField.canonicalRows actualModulus 12294 (.bnot 12293) := by core033_kernel_decide
theorem stats12294 : actualRows12294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12294=6276 := by core033_kernel_decide
theorem rows12295 : actualRows12295=WordField.canonicalRows actualModulus 12295 (.band 12288 12294) := by core033_kernel_decide
theorem stats12295 : actualRows12295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12295=5124 := by core033_kernel_decide
theorem rows12296 : actualRows12296=WordField.canonicalRows actualModulus 12296 (.bxor 12283 12295) := by core033_kernel_decide
theorem stats12296 : actualRows12296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12296=7428 := by core033_kernel_decide
theorem rows12297 : actualRows12297=WordField.canonicalRows actualModulus 12297 (.shr 12296 31) := by core033_kernel_decide
theorem stats12297 : actualRows12297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12297=2892 := by core033_kernel_decide
theorem rows12298 : actualRows12298=WordField.canonicalRows actualModulus 12298 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12298 : actualRows12298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12298=2892 := by core033_kernel_decide
theorem rows12299 : actualRows12299=WordField.canonicalRows actualModulus 12299 (.bxor 12297 12298) := by core033_kernel_decide
theorem stats12299 : actualRows12299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12299=7428 := by core033_kernel_decide
theorem rows12300 : actualRows12300=WordField.canonicalRows actualModulus 12300 (.bnot 12299) := by core033_kernel_decide
theorem stats12300 : actualRows12300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12300=6276 := by core033_kernel_decide
theorem rows12301 : actualRows12301=WordField.canonicalRows actualModulus 12301 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12301 : actualRows12301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12301=2892 := by core033_kernel_decide
theorem rows12302 : actualRows12302=WordField.canonicalRows actualModulus 12302 (.badd 12300 12301) := by core033_kernel_decide
theorem stats12302 : actualRows12302.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12302=5388 := by core033_kernel_decide
theorem rows12303 : actualRows12303=WordField.canonicalRows actualModulus 12303 (.bnot 12302) := by core033_kernel_decide
theorem stats12303 : actualRows12303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12303=6276 := by core033_kernel_decide
theorem rows12304 : actualRows12304=WordField.canonicalRows actualModulus 12304 (.band 12303 935) := by core033_kernel_decide
theorem stats12304 : actualRows12304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12304=5124 := by core033_kernel_decide
theorem rows12305 : actualRows12305=WordField.canonicalRows actualModulus 12305 (.bxor 12278 12304) := by core033_kernel_decide
theorem stats12305 : actualRows12305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12305=7428 := by core033_kernel_decide
theorem rows12306 : actualRows12306=WordField.canonicalRows actualModulus 12306 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12306 : actualRows12306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12306=2964 := by core033_kernel_decide
theorem rows12307 : actualRows12307=WordField.canonicalRows actualModulus 12307 (.bxor 442 12306) := by core033_kernel_decide
theorem stats12307 : actualRows12307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12307=7428 := by core033_kernel_decide
theorem rows12308 : actualRows12308=WordField.canonicalRows actualModulus 12308 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12308 : actualRows12308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12308=2820 := by core033_kernel_decide
theorem rows12309 : actualRows12309=WordField.canonicalRows actualModulus 12309 (.bnot 12308) := by core033_kernel_decide
theorem stats12309 : actualRows12309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12309=6276 := by core033_kernel_decide
theorem rows12310 : actualRows12310=WordField.canonicalRows actualModulus 12310 (.band 12307 12309) := by core033_kernel_decide
theorem stats12310 : actualRows12310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12310=5124 := by core033_kernel_decide
theorem rows12311 : actualRows12311=WordField.canonicalRows actualModulus 12311 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12311 : actualRows12311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12311=2964 := by core033_kernel_decide
theorem rows12312 : actualRows12312=WordField.canonicalRows actualModulus 12312 (.bxor 442 12311) := by core033_kernel_decide
theorem stats12312 : actualRows12312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12312=7428 := by core033_kernel_decide
theorem rows12313 : actualRows12313=WordField.canonicalRows actualModulus 12313 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12313 : actualRows12313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12313=2820 := by core033_kernel_decide
theorem rows12314 : actualRows12314=WordField.canonicalRows actualModulus 12314 (.bnot 12313) := by core033_kernel_decide
theorem stats12314 : actualRows12314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12314=6276 := by core033_kernel_decide
theorem rows12315 : actualRows12315=WordField.canonicalRows actualModulus 12315 (.bxor 12312 12314) := by core033_kernel_decide
theorem stats12315 : actualRows12315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12315=7428 := by core033_kernel_decide
theorem rows12316 : actualRows12316=WordField.canonicalRows actualModulus 12316 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12316 : actualRows12316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12316=2964 := by core033_kernel_decide
theorem rows12317 : actualRows12317=WordField.canonicalRows actualModulus 12317 (.bxor 442 12316) := by core033_kernel_decide
theorem stats12317 : actualRows12317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12317=7428 := by core033_kernel_decide
theorem rows12318 : actualRows12318=WordField.canonicalRows actualModulus 12318 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12318 : actualRows12318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12318=2820 := by core033_kernel_decide
theorem rows12319 : actualRows12319=WordField.canonicalRows actualModulus 12319 (.bnot 12318) := by core033_kernel_decide
theorem stats12319 : actualRows12319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12319=6276 := by core033_kernel_decide
def partRows190 : List R1CS.Row := actualRows12256++actualRows12257++actualRows12258++actualRows12259++actualRows12260++actualRows12261++actualRows12262++actualRows12263++actualRows12264++actualRows12265++actualRows12266++actualRows12267++actualRows12268++actualRows12269++actualRows12270++actualRows12271++actualRows12272++actualRows12273++actualRows12274++actualRows12275++actualRows12276++actualRows12277++actualRows12278++actualRows12279++actualRows12280++actualRows12281++actualRows12282++actualRows12283++actualRows12284++actualRows12285++actualRows12286++actualRows12287++actualRows12288++actualRows12289++actualRows12290++actualRows12291++actualRows12292++actualRows12293++actualRows12294++actualRows12295++actualRows12296++actualRows12297++actualRows12298++actualRows12299++actualRows12300++actualRows12301++actualRows12302++actualRows12303++actualRows12304++actualRows12305++actualRows12306++actualRows12307++actualRows12308++actualRows12309++actualRows12310++actualRows12311++actualRows12312++actualRows12313++actualRows12314++actualRows12315++actualRows12316++actualRows12317++actualRows12318++actualRows12319
def partOps190 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 12256,.band 12255 12257,.literal (BitVec.ofNat 32 3),.bxor 442 12259,.literal (BitVec.ofNat 32 0),.bnot 12261,.bxor 12260 12262,.literal (BitVec.ofNat 32 3),.bxor 442 12264,.literal (BitVec.ofNat 32 0),.bnot 12266,.badd 12265 12267,.bnot 12268,.band 12263 12269,.bxor 12258 12270,.shr 12271 31,.literal (BitVec.ofNat 32 1),.bxor 12272 12273,.bnot 12274,.literal (BitVec.ofNat 32 1),.badd 12275 12276,.band 12277 10256,.literal (BitVec.ofNat 32 3),.bxor 442 12279,.literal (BitVec.ofNat 32 0),.bnot 12281,.band 12280 12282,.literal (BitVec.ofNat 32 3),.bxor 442 12284,.literal (BitVec.ofNat 32 0),.bnot 12286,.bxor 12285 12287,.literal (BitVec.ofNat 32 3),.bxor 442 12289,.literal (BitVec.ofNat 32 0),.bnot 12291,.badd 12290 12292,.bnot 12293,.band 12288 12294,.bxor 12283 12295,.shr 12296 31,.literal (BitVec.ofNat 32 1),.bxor 12297 12298,.bnot 12299,.literal (BitVec.ofNat 32 1),.badd 12300 12301,.bnot 12302,.band 12303 935,.bxor 12278 12304,.literal (BitVec.ofNat 32 3),.bxor 442 12306,.literal (BitVec.ofNat 32 0),.bnot 12308,.band 12307 12309,.literal (BitVec.ofNat 32 3),.bxor 442 12311,.literal (BitVec.ofNat 32 0),.bnot 12313,.bxor 12312 12314,.literal (BitVec.ofNat 32 3),.bxor 442 12316,.literal (BitVec.ofNat 32 0),.bnot 12318]
theorem partExact190 : partRows190=WordField.rows actualModulus 12256 partOps190 := by
  simp only [partRows190,partOps190,WordField.rows,rows12256,rows12257,rows12258,rows12259,rows12260,rows12261,rows12262,rows12263,rows12264,rows12265,rows12266,rows12267,rows12268,rows12269,rows12270,rows12271,rows12272,rows12273,rows12274,rows12275,rows12276,rows12277,rows12278,rows12279,rows12280,rows12281,rows12282,rows12283,rows12284,rows12285,rows12286,rows12287,rows12288,rows12289,rows12290,rows12291,rows12292,rows12293,rows12294,rows12295,rows12296,rows12297,rows12298,rows12299,rows12300,rows12301,rows12302,rows12303,rows12304,rows12305,rows12306,rows12307,rows12308,rows12309,rows12310,rows12311,rows12312,rows12313,rows12314,rows12315,rows12316,rows12317,rows12318,rows12319,List.append_assoc,List.append_nil]
theorem partLength190 : partOps190.length=64 := by decide
theorem partStats190 : partRows190.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows190=330576 := by
  simp only [partRows190,List.length_append,MatrixRowBlocks.rows_weight_append,stats12256.1,stats12256.2,stats12257.1,stats12257.2,stats12258.1,stats12258.2,stats12259.1,stats12259.2,stats12260.1,stats12260.2,stats12261.1,stats12261.2,stats12262.1,stats12262.2,stats12263.1,stats12263.2,stats12264.1,stats12264.2,stats12265.1,stats12265.2,stats12266.1,stats12266.2,stats12267.1,stats12267.2,stats12268.1,stats12268.2,stats12269.1,stats12269.2,stats12270.1,stats12270.2,stats12271.1,stats12271.2,stats12272.1,stats12272.2,stats12273.1,stats12273.2,stats12274.1,stats12274.2,stats12275.1,stats12275.2,stats12276.1,stats12276.2,stats12277.1,stats12277.2,stats12278.1,stats12278.2,stats12279.1,stats12279.2,stats12280.1,stats12280.2,stats12281.1,stats12281.2,stats12282.1,stats12282.2,stats12283.1,stats12283.2,stats12284.1,stats12284.2,stats12285.1,stats12285.2,stats12286.1,stats12286.2,stats12287.1,stats12287.2,stats12288.1,stats12288.2,stats12289.1,stats12289.2,stats12290.1,stats12290.2,stats12291.1,stats12291.2,stats12292.1,stats12292.2,stats12293.1,stats12293.2,stats12294.1,stats12294.2,stats12295.1,stats12295.2,stats12296.1,stats12296.2,stats12297.1,stats12297.2,stats12298.1,stats12298.2,stats12299.1,stats12299.2,stats12300.1,stats12300.2,stats12301.1,stats12301.2,stats12302.1,stats12302.2,stats12303.1,stats12303.2,stats12304.1,stats12304.2,stats12305.1,stats12305.2,stats12306.1,stats12306.2,stats12307.1,stats12307.2,stats12308.1,stats12308.2,stats12309.1,stats12309.2,stats12310.1,stats12310.2,stats12311.1,stats12311.2,stats12312.1,stats12312.2,stats12313.1,stats12313.2,stats12314.1,stats12314.2,stats12315.1,stats12315.2,stats12316.1,stats12316.2,stats12317.1,stats12317.2,stats12318.1,stats12318.2,stats12319.1,stats12319.2]
  decide
end PairedPathRoundCheckedRows
