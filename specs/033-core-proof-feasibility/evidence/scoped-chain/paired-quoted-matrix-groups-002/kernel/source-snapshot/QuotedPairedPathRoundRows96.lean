import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData97
import PairedPathRoundInstructionMatrixData98
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6240 : actualRows6240=WordField.canonicalRows actualModulus 6240 (.rotr 4263 24) := by core033_kernel_decide
theorem stats6240 : actualRows6240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6240=5124 := by core033_kernel_decide
theorem rows6241 : actualRows6241=WordField.canonicalRows actualModulus 6241 (.badd 6239 6240) := by core033_kernel_decide
theorem stats6241 : actualRows6241.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6241=5388 := by core033_kernel_decide
theorem rows6242 : actualRows6242=WordField.canonicalRows actualModulus 6242 (.badd 6241 4315) := by core033_kernel_decide
theorem stats6242 : actualRows6242.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6242=5388 := by core033_kernel_decide
theorem rows6243 : actualRows6243=WordField.canonicalRows actualModulus 6243 (.rotr 4367 8) := by core033_kernel_decide
theorem stats6243 : actualRows6243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6243=5124 := by core033_kernel_decide
theorem rows6244 : actualRows6244=WordField.canonicalRows actualModulus 6244 (.rotr 4419 16) := by core033_kernel_decide
theorem stats6244 : actualRows6244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6244=5124 := by core033_kernel_decide
theorem rows6245 : actualRows6245=WordField.canonicalRows actualModulus 6245 (.badd 6243 6244) := by core033_kernel_decide
theorem stats6245 : actualRows6245.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6245=5388 := by core033_kernel_decide
theorem rows6246 : actualRows6246=WordField.canonicalRows actualModulus 6246 (.rotr 4471 24) := by core033_kernel_decide
theorem stats6246 : actualRows6246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6246=5124 := by core033_kernel_decide
theorem rows6247 : actualRows6247=WordField.canonicalRows actualModulus 6247 (.badd 6245 6246) := by core033_kernel_decide
theorem stats6247 : actualRows6247.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6247=5388 := by core033_kernel_decide
theorem rows6248 : actualRows6248=WordField.canonicalRows actualModulus 6248 (.badd 6247 4523) := by core033_kernel_decide
theorem stats6248 : actualRows6248.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6248=5388 := by core033_kernel_decide
theorem rows6249 : actualRows6249=WordField.canonicalRows actualModulus 6249 (.rotr 4575 8) := by core033_kernel_decide
theorem stats6249 : actualRows6249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6249=5124 := by core033_kernel_decide
theorem rows6250 : actualRows6250=WordField.canonicalRows actualModulus 6250 (.rotr 4627 16) := by core033_kernel_decide
theorem stats6250 : actualRows6250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6250=5124 := by core033_kernel_decide
theorem rows6251 : actualRows6251=WordField.canonicalRows actualModulus 6251 (.badd 6249 6250) := by core033_kernel_decide
theorem stats6251 : actualRows6251.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6251=5388 := by core033_kernel_decide
theorem rows6252 : actualRows6252=WordField.canonicalRows actualModulus 6252 (.rotr 4679 24) := by core033_kernel_decide
theorem stats6252 : actualRows6252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6252=5124 := by core033_kernel_decide
theorem rows6253 : actualRows6253=WordField.canonicalRows actualModulus 6253 (.badd 6251 6252) := by core033_kernel_decide
theorem stats6253 : actualRows6253.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6253=5388 := by core033_kernel_decide
theorem rows6254 : actualRows6254=WordField.canonicalRows actualModulus 6254 (.badd 6253 4731) := by core033_kernel_decide
theorem stats6254 : actualRows6254.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6254=5388 := by core033_kernel_decide
theorem rows6255 : actualRows6255=WordField.canonicalRows actualModulus 6255 (.rotr 4783 8) := by core033_kernel_decide
theorem stats6255 : actualRows6255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6255=5124 := by core033_kernel_decide
theorem rows6256 : actualRows6256=WordField.canonicalRows actualModulus 6256 (.rotr 4835 16) := by core033_kernel_decide
theorem stats6256 : actualRows6256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6256=5124 := by core033_kernel_decide
theorem rows6257 : actualRows6257=WordField.canonicalRows actualModulus 6257 (.badd 6255 6256) := by core033_kernel_decide
theorem stats6257 : actualRows6257.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6257=5388 := by core033_kernel_decide
theorem rows6258 : actualRows6258=WordField.canonicalRows actualModulus 6258 (.rotr 4887 24) := by core033_kernel_decide
theorem stats6258 : actualRows6258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6258=5124 := by core033_kernel_decide
theorem rows6259 : actualRows6259=WordField.canonicalRows actualModulus 6259 (.badd 6257 6258) := by core033_kernel_decide
theorem stats6259 : actualRows6259.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6259=5388 := by core033_kernel_decide
theorem rows6260 : actualRows6260=WordField.canonicalRows actualModulus 6260 (.badd 6259 4939) := by core033_kernel_decide
theorem stats6260 : actualRows6260.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6260=5388 := by core033_kernel_decide
theorem rows6261 : actualRows6261=WordField.canonicalRows actualModulus 6261 (.rotr 4991 8) := by core033_kernel_decide
theorem stats6261 : actualRows6261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6261=5124 := by core033_kernel_decide
theorem rows6262 : actualRows6262=WordField.canonicalRows actualModulus 6262 (.rotr 5043 16) := by core033_kernel_decide
theorem stats6262 : actualRows6262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6262=5124 := by core033_kernel_decide
theorem rows6263 : actualRows6263=WordField.canonicalRows actualModulus 6263 (.badd 6261 6262) := by core033_kernel_decide
theorem stats6263 : actualRows6263.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6263=5388 := by core033_kernel_decide
theorem rows6264 : actualRows6264=WordField.canonicalRows actualModulus 6264 (.rotr 5095 24) := by core033_kernel_decide
theorem stats6264 : actualRows6264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6264=5124 := by core033_kernel_decide
theorem rows6265 : actualRows6265=WordField.canonicalRows actualModulus 6265 (.badd 6263 6264) := by core033_kernel_decide
theorem stats6265 : actualRows6265.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6265=5388 := by core033_kernel_decide
theorem rows6266 : actualRows6266=WordField.canonicalRows actualModulus 6266 (.badd 6265 5147) := by core033_kernel_decide
theorem stats6266 : actualRows6266.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6266=5388 := by core033_kernel_decide
theorem rows6267 : actualRows6267=WordField.canonicalRows actualModulus 6267 (.rotr 5199 8) := by core033_kernel_decide
theorem stats6267 : actualRows6267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6267=5124 := by core033_kernel_decide
theorem rows6268 : actualRows6268=WordField.canonicalRows actualModulus 6268 (.rotr 5251 16) := by core033_kernel_decide
theorem stats6268 : actualRows6268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6268=5124 := by core033_kernel_decide
theorem rows6269 : actualRows6269=WordField.canonicalRows actualModulus 6269 (.badd 6267 6268) := by core033_kernel_decide
theorem stats6269 : actualRows6269.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6269=5388 := by core033_kernel_decide
theorem rows6270 : actualRows6270=WordField.canonicalRows actualModulus 6270 (.rotr 5303 24) := by core033_kernel_decide
theorem stats6270 : actualRows6270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6270=5124 := by core033_kernel_decide
theorem rows6271 : actualRows6271=WordField.canonicalRows actualModulus 6271 (.badd 6269 6270) := by core033_kernel_decide
theorem stats6271 : actualRows6271.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6271=5388 := by core033_kernel_decide
theorem rows6272 : actualRows6272=WordField.canonicalRows actualModulus 6272 (.badd 6271 5355) := by core033_kernel_decide
theorem stats6272 : actualRows6272.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6272=5388 := by core033_kernel_decide
theorem rows6273 : actualRows6273=WordField.canonicalRows actualModulus 6273 (.rotr 5407 8) := by core033_kernel_decide
theorem stats6273 : actualRows6273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6273=5124 := by core033_kernel_decide
theorem rows6274 : actualRows6274=WordField.canonicalRows actualModulus 6274 (.rotr 5459 16) := by core033_kernel_decide
theorem stats6274 : actualRows6274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6274=5124 := by core033_kernel_decide
theorem rows6275 : actualRows6275=WordField.canonicalRows actualModulus 6275 (.badd 6273 6274) := by core033_kernel_decide
theorem stats6275 : actualRows6275.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6275=5388 := by core033_kernel_decide
theorem rows6276 : actualRows6276=WordField.canonicalRows actualModulus 6276 (.rotr 5511 24) := by core033_kernel_decide
theorem stats6276 : actualRows6276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6276=5124 := by core033_kernel_decide
theorem rows6277 : actualRows6277=WordField.canonicalRows actualModulus 6277 (.badd 6275 6276) := by core033_kernel_decide
theorem stats6277 : actualRows6277.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6277=5388 := by core033_kernel_decide
theorem rows6278 : actualRows6278=WordField.canonicalRows actualModulus 6278 (.badd 6277 5564) := by core033_kernel_decide
theorem stats6278 : actualRows6278.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6278=5388 := by core033_kernel_decide
theorem rows6279 : actualRows6279=WordField.canonicalRows actualModulus 6279 (.rotr 5617 8) := by core033_kernel_decide
theorem stats6279 : actualRows6279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6279=5124 := by core033_kernel_decide
theorem rows6280 : actualRows6280=WordField.canonicalRows actualModulus 6280 (.rotr 5670 16) := by core033_kernel_decide
theorem stats6280 : actualRows6280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6280=5124 := by core033_kernel_decide
theorem rows6281 : actualRows6281=WordField.canonicalRows actualModulus 6281 (.badd 6279 6280) := by core033_kernel_decide
theorem stats6281 : actualRows6281.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6281=5388 := by core033_kernel_decide
theorem rows6282 : actualRows6282=WordField.canonicalRows actualModulus 6282 (.rotr 5723 24) := by core033_kernel_decide
theorem stats6282 : actualRows6282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6282=5124 := by core033_kernel_decide
theorem rows6283 : actualRows6283=WordField.canonicalRows actualModulus 6283 (.badd 6281 6282) := by core033_kernel_decide
theorem stats6283 : actualRows6283.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6283=5388 := by core033_kernel_decide
theorem rows6284 : actualRows6284=WordField.canonicalRows actualModulus 6284 (.badd 6283 5776) := by core033_kernel_decide
theorem stats6284 : actualRows6284.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6284=5388 := by core033_kernel_decide
theorem rows6285 : actualRows6285=WordField.canonicalRows actualModulus 6285 (.rotr 5829 8) := by core033_kernel_decide
theorem stats6285 : actualRows6285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6285=5124 := by core033_kernel_decide
theorem rows6286 : actualRows6286=WordField.canonicalRows actualModulus 6286 (.rotr 5882 16) := by core033_kernel_decide
theorem stats6286 : actualRows6286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6286=5124 := by core033_kernel_decide
theorem rows6287 : actualRows6287=WordField.canonicalRows actualModulus 6287 (.badd 6285 6286) := by core033_kernel_decide
theorem stats6287 : actualRows6287.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6287=5388 := by core033_kernel_decide
theorem rows6288 : actualRows6288=WordField.canonicalRows actualModulus 6288 (.rotr 5935 24) := by core033_kernel_decide
theorem stats6288 : actualRows6288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6288=5124 := by core033_kernel_decide
theorem rows6289 : actualRows6289=WordField.canonicalRows actualModulus 6289 (.badd 6287 6288) := by core033_kernel_decide
theorem stats6289 : actualRows6289.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6289=5388 := by core033_kernel_decide
theorem rows6290 : actualRows6290=WordField.canonicalRows actualModulus 6290 (.badd 6289 5988) := by core033_kernel_decide
theorem stats6290 : actualRows6290.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6290=5388 := by core033_kernel_decide
theorem rows6291 : actualRows6291=WordField.canonicalRows actualModulus 6291 (.rotr 6041 8) := by core033_kernel_decide
theorem stats6291 : actualRows6291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6291=5124 := by core033_kernel_decide
theorem rows6292 : actualRows6292=WordField.canonicalRows actualModulus 6292 (.rotr 6094 16) := by core033_kernel_decide
theorem stats6292 : actualRows6292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6292=5124 := by core033_kernel_decide
theorem rows6293 : actualRows6293=WordField.canonicalRows actualModulus 6293 (.badd 6291 6292) := by core033_kernel_decide
theorem stats6293 : actualRows6293.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6293=5388 := by core033_kernel_decide
theorem rows6294 : actualRows6294=WordField.canonicalRows actualModulus 6294 (.rotr 6147 24) := by core033_kernel_decide
theorem stats6294 : actualRows6294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6294=5124 := by core033_kernel_decide
theorem rows6295 : actualRows6295=WordField.canonicalRows actualModulus 6295 (.badd 6293 6294) := by core033_kernel_decide
theorem stats6295 : actualRows6295.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6295=5388 := by core033_kernel_decide
theorem rows6296 : actualRows6296=WordField.canonicalRows actualModulus 6296 (.badd 6295 6200) := by core033_kernel_decide
theorem stats6296 : actualRows6296.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6296=5388 := by core033_kernel_decide
theorem rows6297 : actualRows6297=WordField.canonicalRows actualModulus 6297 (.shr 2911 8) := by core033_kernel_decide
theorem stats6297 : actualRows6297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6297=4548 := by core033_kernel_decide
theorem rows6298 : actualRows6298=WordField.canonicalRows actualModulus 6298 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6298 : actualRows6298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6298=2820 := by core033_kernel_decide
theorem rows6299 : actualRows6299=WordField.canonicalRows actualModulus 6299 (.bnot 6298) := by core033_kernel_decide
theorem stats6299 : actualRows6299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6299=6276 := by core033_kernel_decide
theorem rows6300 : actualRows6300=WordField.canonicalRows actualModulus 6300 (.band 6297 6299) := by core033_kernel_decide
theorem stats6300 : actualRows6300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6300=5124 := by core033_kernel_decide
theorem rows6301 : actualRows6301=WordField.canonicalRows actualModulus 6301 (.shr 2911 8) := by core033_kernel_decide
theorem stats6301 : actualRows6301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6301=4548 := by core033_kernel_decide
theorem rows6302 : actualRows6302=WordField.canonicalRows actualModulus 6302 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6302 : actualRows6302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6302=2820 := by core033_kernel_decide
theorem rows6303 : actualRows6303=WordField.canonicalRows actualModulus 6303 (.bnot 6302) := by core033_kernel_decide
theorem stats6303 : actualRows6303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6303=6276 := by core033_kernel_decide
def partRows96 : List R1CS.Row := actualRows6240++actualRows6241++actualRows6242++actualRows6243++actualRows6244++actualRows6245++actualRows6246++actualRows6247++actualRows6248++actualRows6249++actualRows6250++actualRows6251++actualRows6252++actualRows6253++actualRows6254++actualRows6255++actualRows6256++actualRows6257++actualRows6258++actualRows6259++actualRows6260++actualRows6261++actualRows6262++actualRows6263++actualRows6264++actualRows6265++actualRows6266++actualRows6267++actualRows6268++actualRows6269++actualRows6270++actualRows6271++actualRows6272++actualRows6273++actualRows6274++actualRows6275++actualRows6276++actualRows6277++actualRows6278++actualRows6279++actualRows6280++actualRows6281++actualRows6282++actualRows6283++actualRows6284++actualRows6285++actualRows6286++actualRows6287++actualRows6288++actualRows6289++actualRows6290++actualRows6291++actualRows6292++actualRows6293++actualRows6294++actualRows6295++actualRows6296++actualRows6297++actualRows6298++actualRows6299++actualRows6300++actualRows6301++actualRows6302++actualRows6303
def partOps96 : List WordIR.Op := [.rotr 4263 24,.badd 6239 6240,.badd 6241 4315,.rotr 4367 8,.rotr 4419 16,.badd 6243 6244,.rotr 4471 24,.badd 6245 6246,.badd 6247 4523,.rotr 4575 8,.rotr 4627 16,.badd 6249 6250,.rotr 4679 24,.badd 6251 6252,.badd 6253 4731,.rotr 4783 8,.rotr 4835 16,.badd 6255 6256,.rotr 4887 24,.badd 6257 6258,.badd 6259 4939,.rotr 4991 8,.rotr 5043 16,.badd 6261 6262,.rotr 5095 24,.badd 6263 6264,.badd 6265 5147,.rotr 5199 8,.rotr 5251 16,.badd 6267 6268,.rotr 5303 24,.badd 6269 6270,.badd 6271 5355,.rotr 5407 8,.rotr 5459 16,.badd 6273 6274,.rotr 5511 24,.badd 6275 6276,.badd 6277 5564,.rotr 5617 8,.rotr 5670 16,.badd 6279 6280,.rotr 5723 24,.badd 6281 6282,.badd 6283 5776,.rotr 5829 8,.rotr 5882 16,.badd 6285 6286,.rotr 5935 24,.badd 6287 6288,.badd 6289 5988,.rotr 6041 8,.rotr 6094 16,.badd 6291 6292,.rotr 6147 24,.badd 6293 6294,.badd 6295 6200,.shr 2911 8,.literal (BitVec.ofNat 32 0),.bnot 6298,.band 6297 6299,.shr 2911 8,.literal (BitVec.ofNat 32 0),.bnot 6302]
theorem partExact96 : partRows96=WordField.rows actualModulus 6240 partOps96 := by
  simp only [partRows96,partOps96,WordField.rows,rows6240,rows6241,rows6242,rows6243,rows6244,rows6245,rows6246,rows6247,rows6248,rows6249,rows6250,rows6251,rows6252,rows6253,rows6254,rows6255,rows6256,rows6257,rows6258,rows6259,rows6260,rows6261,rows6262,rows6263,rows6264,rows6265,rows6266,rows6267,rows6268,rows6269,rows6270,rows6271,rows6272,rows6273,rows6274,rows6275,rows6276,rows6277,rows6278,rows6279,rows6280,rows6281,rows6282,rows6283,rows6284,rows6285,rows6286,rows6287,rows6288,rows6289,rows6290,rows6291,rows6292,rows6293,rows6294,rows6295,rows6296,rows6297,rows6298,rows6299,rows6300,rows6301,rows6302,rows6303,List.append_assoc,List.append_nil]
theorem partLength96 : partOps96.length=64 := by decide
theorem partStats96 : partRows96.length=2205 ∧ MatrixRowBlocks.rowsWeight partRows96=332136 := by
  simp only [partRows96,List.length_append,MatrixRowBlocks.rows_weight_append,stats6240.1,stats6240.2,stats6241.1,stats6241.2,stats6242.1,stats6242.2,stats6243.1,stats6243.2,stats6244.1,stats6244.2,stats6245.1,stats6245.2,stats6246.1,stats6246.2,stats6247.1,stats6247.2,stats6248.1,stats6248.2,stats6249.1,stats6249.2,stats6250.1,stats6250.2,stats6251.1,stats6251.2,stats6252.1,stats6252.2,stats6253.1,stats6253.2,stats6254.1,stats6254.2,stats6255.1,stats6255.2,stats6256.1,stats6256.2,stats6257.1,stats6257.2,stats6258.1,stats6258.2,stats6259.1,stats6259.2,stats6260.1,stats6260.2,stats6261.1,stats6261.2,stats6262.1,stats6262.2,stats6263.1,stats6263.2,stats6264.1,stats6264.2,stats6265.1,stats6265.2,stats6266.1,stats6266.2,stats6267.1,stats6267.2,stats6268.1,stats6268.2,stats6269.1,stats6269.2,stats6270.1,stats6270.2,stats6271.1,stats6271.2,stats6272.1,stats6272.2,stats6273.1,stats6273.2,stats6274.1,stats6274.2,stats6275.1,stats6275.2,stats6276.1,stats6276.2,stats6277.1,stats6277.2,stats6278.1,stats6278.2,stats6279.1,stats6279.2,stats6280.1,stats6280.2,stats6281.1,stats6281.2,stats6282.1,stats6282.2,stats6283.1,stats6283.2,stats6284.1,stats6284.2,stats6285.1,stats6285.2,stats6286.1,stats6286.2,stats6287.1,stats6287.2,stats6288.1,stats6288.2,stats6289.1,stats6289.2,stats6290.1,stats6290.2,stats6291.1,stats6291.2,stats6292.1,stats6292.2,stats6293.1,stats6293.2,stats6294.1,stats6294.2,stats6295.1,stats6295.2,stats6296.1,stats6296.2,stats6297.1,stats6297.2,stats6298.1,stats6298.2,stats6299.1,stats6299.2,stats6300.1,stats6300.2,stats6301.1,stats6301.2,stats6302.1,stats6302.2,stats6303.1,stats6303.2]
  decide
end QuotedPairedPathRoundCheckedRows
