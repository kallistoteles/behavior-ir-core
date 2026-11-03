import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData97
import FrameHashControllerInstructionMatrixData98
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6251 : actualRows6251=WordField.canonicalRows actualModulus 6251 (.shr 4740 8) := by core033_kernel_decide
theorem stats6251 : actualRows6251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6251=4548 := by core033_kernel_decide
theorem rows6252 : actualRows6252=WordField.canonicalRows actualModulus 6252 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6252 : actualRows6252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6252=2820 := by core033_kernel_decide
theorem rows6253 : actualRows6253=WordField.canonicalRows actualModulus 6253 (.bnot 6252) := by core033_kernel_decide
theorem stats6253 : actualRows6253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6253=6276 := by core033_kernel_decide
theorem rows6254 : actualRows6254=WordField.canonicalRows actualModulus 6254 (.band 6251 6253) := by core033_kernel_decide
theorem stats6254 : actualRows6254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6254=5124 := by core033_kernel_decide
theorem rows6255 : actualRows6255=WordField.canonicalRows actualModulus 6255 (.shr 4740 8) := by core033_kernel_decide
theorem stats6255 : actualRows6255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6255=4548 := by core033_kernel_decide
theorem rows6256 : actualRows6256=WordField.canonicalRows actualModulus 6256 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6256 : actualRows6256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6256=2820 := by core033_kernel_decide
theorem rows6257 : actualRows6257=WordField.canonicalRows actualModulus 6257 (.bnot 6256) := by core033_kernel_decide
theorem stats6257 : actualRows6257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6257=6276 := by core033_kernel_decide
theorem rows6258 : actualRows6258=WordField.canonicalRows actualModulus 6258 (.bxor 6255 6257) := by core033_kernel_decide
theorem stats6258 : actualRows6258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6258=7428 := by core033_kernel_decide
theorem rows6259 : actualRows6259=WordField.canonicalRows actualModulus 6259 (.shr 4740 8) := by core033_kernel_decide
theorem stats6259 : actualRows6259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6259=4548 := by core033_kernel_decide
theorem rows6260 : actualRows6260=WordField.canonicalRows actualModulus 6260 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6260 : actualRows6260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6260=2820 := by core033_kernel_decide
theorem rows6261 : actualRows6261=WordField.canonicalRows actualModulus 6261 (.bnot 6260) := by core033_kernel_decide
theorem stats6261 : actualRows6261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6261=6276 := by core033_kernel_decide
theorem rows6262 : actualRows6262=WordField.canonicalRows actualModulus 6262 (.badd 6259 6261) := by core033_kernel_decide
theorem stats6262 : actualRows6262.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6262=5388 := by core033_kernel_decide
theorem rows6263 : actualRows6263=WordField.canonicalRows actualModulus 6263 (.bnot 6262) := by core033_kernel_decide
theorem stats6263 : actualRows6263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6263=6276 := by core033_kernel_decide
theorem rows6264 : actualRows6264=WordField.canonicalRows actualModulus 6264 (.band 6258 6263) := by core033_kernel_decide
theorem stats6264 : actualRows6264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6264=5124 := by core033_kernel_decide
theorem rows6265 : actualRows6265=WordField.canonicalRows actualModulus 6265 (.bxor 6254 6264) := by core033_kernel_decide
theorem stats6265 : actualRows6265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6265=7428 := by core033_kernel_decide
theorem rows6266 : actualRows6266=WordField.canonicalRows actualModulus 6266 (.shr 6265 31) := by core033_kernel_decide
theorem stats6266 : actualRows6266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6266=2892 := by core033_kernel_decide
theorem rows6267 : actualRows6267=WordField.canonicalRows actualModulus 6267 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6267 : actualRows6267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6267=2892 := by core033_kernel_decide
theorem rows6268 : actualRows6268=WordField.canonicalRows actualModulus 6268 (.bxor 6266 6267) := by core033_kernel_decide
theorem stats6268 : actualRows6268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6268=7428 := by core033_kernel_decide
theorem rows6269 : actualRows6269=WordField.canonicalRows actualModulus 6269 (.shr 4793 8) := by core033_kernel_decide
theorem stats6269 : actualRows6269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6269=4548 := by core033_kernel_decide
theorem rows6270 : actualRows6270=WordField.canonicalRows actualModulus 6270 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6270 : actualRows6270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6270=2820 := by core033_kernel_decide
theorem rows6271 : actualRows6271=WordField.canonicalRows actualModulus 6271 (.bnot 6270) := by core033_kernel_decide
theorem stats6271 : actualRows6271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6271=6276 := by core033_kernel_decide
theorem rows6272 : actualRows6272=WordField.canonicalRows actualModulus 6272 (.band 6269 6271) := by core033_kernel_decide
theorem stats6272 : actualRows6272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6272=5124 := by core033_kernel_decide
theorem rows6273 : actualRows6273=WordField.canonicalRows actualModulus 6273 (.shr 4793 8) := by core033_kernel_decide
theorem stats6273 : actualRows6273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6273=4548 := by core033_kernel_decide
theorem rows6274 : actualRows6274=WordField.canonicalRows actualModulus 6274 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6274 : actualRows6274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6274=2820 := by core033_kernel_decide
theorem rows6275 : actualRows6275=WordField.canonicalRows actualModulus 6275 (.bnot 6274) := by core033_kernel_decide
theorem stats6275 : actualRows6275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6275=6276 := by core033_kernel_decide
theorem rows6276 : actualRows6276=WordField.canonicalRows actualModulus 6276 (.bxor 6273 6275) := by core033_kernel_decide
theorem stats6276 : actualRows6276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6276=7428 := by core033_kernel_decide
theorem rows6277 : actualRows6277=WordField.canonicalRows actualModulus 6277 (.shr 4793 8) := by core033_kernel_decide
theorem stats6277 : actualRows6277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6277=4548 := by core033_kernel_decide
theorem rows6278 : actualRows6278=WordField.canonicalRows actualModulus 6278 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6278 : actualRows6278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6278=2820 := by core033_kernel_decide
theorem rows6279 : actualRows6279=WordField.canonicalRows actualModulus 6279 (.bnot 6278) := by core033_kernel_decide
theorem stats6279 : actualRows6279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6279=6276 := by core033_kernel_decide
theorem rows6280 : actualRows6280=WordField.canonicalRows actualModulus 6280 (.badd 6277 6279) := by core033_kernel_decide
theorem stats6280 : actualRows6280.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6280=5388 := by core033_kernel_decide
theorem rows6281 : actualRows6281=WordField.canonicalRows actualModulus 6281 (.bnot 6280) := by core033_kernel_decide
theorem stats6281 : actualRows6281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6281=6276 := by core033_kernel_decide
theorem rows6282 : actualRows6282=WordField.canonicalRows actualModulus 6282 (.band 6276 6281) := by core033_kernel_decide
theorem stats6282 : actualRows6282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6282=5124 := by core033_kernel_decide
theorem rows6283 : actualRows6283=WordField.canonicalRows actualModulus 6283 (.bxor 6272 6282) := by core033_kernel_decide
theorem stats6283 : actualRows6283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6283=7428 := by core033_kernel_decide
theorem rows6284 : actualRows6284=WordField.canonicalRows actualModulus 6284 (.shr 6283 31) := by core033_kernel_decide
theorem stats6284 : actualRows6284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6284=2892 := by core033_kernel_decide
theorem rows6285 : actualRows6285=WordField.canonicalRows actualModulus 6285 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6285 : actualRows6285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6285=2892 := by core033_kernel_decide
theorem rows6286 : actualRows6286=WordField.canonicalRows actualModulus 6286 (.bxor 6284 6285) := by core033_kernel_decide
theorem stats6286 : actualRows6286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6286=7428 := by core033_kernel_decide
theorem rows6287 : actualRows6287=WordField.canonicalRows actualModulus 6287 (.shr 4846 8) := by core033_kernel_decide
theorem stats6287 : actualRows6287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6287=4548 := by core033_kernel_decide
theorem rows6288 : actualRows6288=WordField.canonicalRows actualModulus 6288 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6288 : actualRows6288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6288=2820 := by core033_kernel_decide
theorem rows6289 : actualRows6289=WordField.canonicalRows actualModulus 6289 (.bnot 6288) := by core033_kernel_decide
theorem stats6289 : actualRows6289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6289=6276 := by core033_kernel_decide
theorem rows6290 : actualRows6290=WordField.canonicalRows actualModulus 6290 (.band 6287 6289) := by core033_kernel_decide
theorem stats6290 : actualRows6290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6290=5124 := by core033_kernel_decide
theorem rows6291 : actualRows6291=WordField.canonicalRows actualModulus 6291 (.shr 4846 8) := by core033_kernel_decide
theorem stats6291 : actualRows6291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6291=4548 := by core033_kernel_decide
theorem rows6292 : actualRows6292=WordField.canonicalRows actualModulus 6292 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6292 : actualRows6292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6292=2820 := by core033_kernel_decide
theorem rows6293 : actualRows6293=WordField.canonicalRows actualModulus 6293 (.bnot 6292) := by core033_kernel_decide
theorem stats6293 : actualRows6293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6293=6276 := by core033_kernel_decide
theorem rows6294 : actualRows6294=WordField.canonicalRows actualModulus 6294 (.bxor 6291 6293) := by core033_kernel_decide
theorem stats6294 : actualRows6294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6294=7428 := by core033_kernel_decide
theorem rows6295 : actualRows6295=WordField.canonicalRows actualModulus 6295 (.shr 4846 8) := by core033_kernel_decide
theorem stats6295 : actualRows6295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6295=4548 := by core033_kernel_decide
theorem rows6296 : actualRows6296=WordField.canonicalRows actualModulus 6296 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6296 : actualRows6296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6296=2820 := by core033_kernel_decide
theorem rows6297 : actualRows6297=WordField.canonicalRows actualModulus 6297 (.bnot 6296) := by core033_kernel_decide
theorem stats6297 : actualRows6297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6297=6276 := by core033_kernel_decide
theorem rows6298 : actualRows6298=WordField.canonicalRows actualModulus 6298 (.badd 6295 6297) := by core033_kernel_decide
theorem stats6298 : actualRows6298.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6298=5388 := by core033_kernel_decide
theorem rows6299 : actualRows6299=WordField.canonicalRows actualModulus 6299 (.bnot 6298) := by core033_kernel_decide
theorem stats6299 : actualRows6299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6299=6276 := by core033_kernel_decide
theorem rows6300 : actualRows6300=WordField.canonicalRows actualModulus 6300 (.band 6294 6299) := by core033_kernel_decide
theorem stats6300 : actualRows6300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6300=5124 := by core033_kernel_decide
theorem rows6301 : actualRows6301=WordField.canonicalRows actualModulus 6301 (.bxor 6290 6300) := by core033_kernel_decide
theorem stats6301 : actualRows6301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6301=7428 := by core033_kernel_decide
theorem rows6302 : actualRows6302=WordField.canonicalRows actualModulus 6302 (.shr 6301 31) := by core033_kernel_decide
theorem stats6302 : actualRows6302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6302=2892 := by core033_kernel_decide
theorem rows6303 : actualRows6303=WordField.canonicalRows actualModulus 6303 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6303 : actualRows6303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6303=2892 := by core033_kernel_decide
theorem rows6304 : actualRows6304=WordField.canonicalRows actualModulus 6304 (.bxor 6302 6303) := by core033_kernel_decide
theorem stats6304 : actualRows6304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6304=7428 := by core033_kernel_decide
theorem rows6305 : actualRows6305=WordField.canonicalRows actualModulus 6305 (.shr 4899 8) := by core033_kernel_decide
theorem stats6305 : actualRows6305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6305=4548 := by core033_kernel_decide
theorem rows6306 : actualRows6306=WordField.canonicalRows actualModulus 6306 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6306 : actualRows6306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6306=2820 := by core033_kernel_decide
theorem rows6307 : actualRows6307=WordField.canonicalRows actualModulus 6307 (.bnot 6306) := by core033_kernel_decide
theorem stats6307 : actualRows6307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6307=6276 := by core033_kernel_decide
theorem rows6308 : actualRows6308=WordField.canonicalRows actualModulus 6308 (.band 6305 6307) := by core033_kernel_decide
theorem stats6308 : actualRows6308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6308=5124 := by core033_kernel_decide
theorem rows6309 : actualRows6309=WordField.canonicalRows actualModulus 6309 (.shr 4899 8) := by core033_kernel_decide
theorem stats6309 : actualRows6309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6309=4548 := by core033_kernel_decide
theorem rows6310 : actualRows6310=WordField.canonicalRows actualModulus 6310 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6310 : actualRows6310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6310=2820 := by core033_kernel_decide
theorem rows6311 : actualRows6311=WordField.canonicalRows actualModulus 6311 (.bnot 6310) := by core033_kernel_decide
theorem stats6311 : actualRows6311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6311=6276 := by core033_kernel_decide
theorem rows6312 : actualRows6312=WordField.canonicalRows actualModulus 6312 (.bxor 6309 6311) := by core033_kernel_decide
theorem stats6312 : actualRows6312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6312=7428 := by core033_kernel_decide
theorem rows6313 : actualRows6313=WordField.canonicalRows actualModulus 6313 (.shr 4899 8) := by core033_kernel_decide
theorem stats6313 : actualRows6313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6313=4548 := by core033_kernel_decide
theorem rows6314 : actualRows6314=WordField.canonicalRows actualModulus 6314 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6314 : actualRows6314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6314=2820 := by core033_kernel_decide
def partRows97 : List R1CS.Row := actualRows6251++actualRows6252++actualRows6253++actualRows6254++actualRows6255++actualRows6256++actualRows6257++actualRows6258++actualRows6259++actualRows6260++actualRows6261++actualRows6262++actualRows6263++actualRows6264++actualRows6265++actualRows6266++actualRows6267++actualRows6268++actualRows6269++actualRows6270++actualRows6271++actualRows6272++actualRows6273++actualRows6274++actualRows6275++actualRows6276++actualRows6277++actualRows6278++actualRows6279++actualRows6280++actualRows6281++actualRows6282++actualRows6283++actualRows6284++actualRows6285++actualRows6286++actualRows6287++actualRows6288++actualRows6289++actualRows6290++actualRows6291++actualRows6292++actualRows6293++actualRows6294++actualRows6295++actualRows6296++actualRows6297++actualRows6298++actualRows6299++actualRows6300++actualRows6301++actualRows6302++actualRows6303++actualRows6304++actualRows6305++actualRows6306++actualRows6307++actualRows6308++actualRows6309++actualRows6310++actualRows6311++actualRows6312++actualRows6313++actualRows6314
def partOps97 : List WordIR.Op := [.shr 4740 8,.literal (BitVec.ofNat 32 0),.bnot 6252,.band 6251 6253,.shr 4740 8,.literal (BitVec.ofNat 32 0),.bnot 6256,.bxor 6255 6257,.shr 4740 8,.literal (BitVec.ofNat 32 0),.bnot 6260,.badd 6259 6261,.bnot 6262,.band 6258 6263,.bxor 6254 6264,.shr 6265 31,.literal (BitVec.ofNat 32 1),.bxor 6266 6267,.shr 4793 8,.literal (BitVec.ofNat 32 0),.bnot 6270,.band 6269 6271,.shr 4793 8,.literal (BitVec.ofNat 32 0),.bnot 6274,.bxor 6273 6275,.shr 4793 8,.literal (BitVec.ofNat 32 0),.bnot 6278,.badd 6277 6279,.bnot 6280,.band 6276 6281,.bxor 6272 6282,.shr 6283 31,.literal (BitVec.ofNat 32 1),.bxor 6284 6285,.shr 4846 8,.literal (BitVec.ofNat 32 0),.bnot 6288,.band 6287 6289,.shr 4846 8,.literal (BitVec.ofNat 32 0),.bnot 6292,.bxor 6291 6293,.shr 4846 8,.literal (BitVec.ofNat 32 0),.bnot 6296,.badd 6295 6297,.bnot 6298,.band 6294 6299,.bxor 6290 6300,.shr 6301 31,.literal (BitVec.ofNat 32 1),.bxor 6302 6303,.shr 4899 8,.literal (BitVec.ofNat 32 0),.bnot 6306,.band 6305 6307,.shr 4899 8,.literal (BitVec.ofNat 32 0),.bnot 6310,.bxor 6309 6311,.shr 4899 8,.literal (BitVec.ofNat 32 0)]
theorem partExact97 : partRows97=WordField.rows actualModulus 6251 partOps97 := by
  simp only [partRows97,partOps97,WordField.rows,rows6251,rows6252,rows6253,rows6254,rows6255,rows6256,rows6257,rows6258,rows6259,rows6260,rows6261,rows6262,rows6263,rows6264,rows6265,rows6266,rows6267,rows6268,rows6269,rows6270,rows6271,rows6272,rows6273,rows6274,rows6275,rows6276,rows6277,rows6278,rows6279,rows6280,rows6281,rows6282,rows6283,rows6284,rows6285,rows6286,rows6287,rows6288,rows6289,rows6290,rows6291,rows6292,rows6293,rows6294,rows6295,rows6296,rows6297,rows6298,rows6299,rows6300,rows6301,rows6302,rows6303,rows6304,rows6305,rows6306,rows6307,rows6308,rows6309,rows6310,rows6311,rows6312,rows6313,rows6314,List.append_assoc,List.append_nil]
theorem partLength97 : partOps97.length=64 := by decide
theorem partStats97 : partRows97.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows97=319944 := by
  simp only [partRows97,List.length_append,MatrixRowBlocks.rows_weight_append,stats6251.1,stats6251.2,stats6252.1,stats6252.2,stats6253.1,stats6253.2,stats6254.1,stats6254.2,stats6255.1,stats6255.2,stats6256.1,stats6256.2,stats6257.1,stats6257.2,stats6258.1,stats6258.2,stats6259.1,stats6259.2,stats6260.1,stats6260.2,stats6261.1,stats6261.2,stats6262.1,stats6262.2,stats6263.1,stats6263.2,stats6264.1,stats6264.2,stats6265.1,stats6265.2,stats6266.1,stats6266.2,stats6267.1,stats6267.2,stats6268.1,stats6268.2,stats6269.1,stats6269.2,stats6270.1,stats6270.2,stats6271.1,stats6271.2,stats6272.1,stats6272.2,stats6273.1,stats6273.2,stats6274.1,stats6274.2,stats6275.1,stats6275.2,stats6276.1,stats6276.2,stats6277.1,stats6277.2,stats6278.1,stats6278.2,stats6279.1,stats6279.2,stats6280.1,stats6280.2,stats6281.1,stats6281.2,stats6282.1,stats6282.2,stats6283.1,stats6283.2,stats6284.1,stats6284.2,stats6285.1,stats6285.2,stats6286.1,stats6286.2,stats6287.1,stats6287.2,stats6288.1,stats6288.2,stats6289.1,stats6289.2,stats6290.1,stats6290.2,stats6291.1,stats6291.2,stats6292.1,stats6292.2,stats6293.1,stats6293.2,stats6294.1,stats6294.2,stats6295.1,stats6295.2,stats6296.1,stats6296.2,stats6297.1,stats6297.2,stats6298.1,stats6298.2,stats6299.1,stats6299.2,stats6300.1,stats6300.2,stats6301.1,stats6301.2,stats6302.1,stats6302.2,stats6303.1,stats6303.2,stats6304.1,stats6304.2,stats6305.1,stats6305.2,stats6306.1,stats6306.2,stats6307.1,stats6307.2,stats6308.1,stats6308.2,stats6309.1,stats6309.2,stats6310.1,stats6310.2,stats6311.1,stats6311.2,stats6312.1,stats6312.2,stats6313.1,stats6313.2,stats6314.1,stats6314.2]
  decide
end FrameHashControllerCheckedRows
