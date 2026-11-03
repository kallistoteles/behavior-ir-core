import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData82
import PairedPathRoundInstructionMatrixData83
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5280 : actualRows5280=WordField.canonicalRows actualModulus 5280 (.bnot 5279) := by core033_kernel_decide
theorem stats5280 : actualRows5280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5280=6276 := by core033_kernel_decide
theorem rows5281 : actualRows5281=WordField.canonicalRows actualModulus 5281 (.band 5278 5280) := by core033_kernel_decide
theorem stats5281 : actualRows5281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5281=5124 := by core033_kernel_decide
theorem rows5282 : actualRows5282=WordField.canonicalRows actualModulus 5282 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5282 : actualRows5282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5282=2892 := by core033_kernel_decide
theorem rows5283 : actualRows5283=WordField.canonicalRows actualModulus 5283 (.bxor 616 5282) := by core033_kernel_decide
theorem stats5283 : actualRows5283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5283=7428 := by core033_kernel_decide
theorem rows5284 : actualRows5284=WordField.canonicalRows actualModulus 5284 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5284 : actualRows5284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5284=2820 := by core033_kernel_decide
theorem rows5285 : actualRows5285=WordField.canonicalRows actualModulus 5285 (.bnot 5284) := by core033_kernel_decide
theorem stats5285 : actualRows5285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5285=6276 := by core033_kernel_decide
theorem rows5286 : actualRows5286=WordField.canonicalRows actualModulus 5286 (.bxor 5283 5285) := by core033_kernel_decide
theorem stats5286 : actualRows5286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5286=7428 := by core033_kernel_decide
theorem rows5287 : actualRows5287=WordField.canonicalRows actualModulus 5287 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5287 : actualRows5287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5287=2892 := by core033_kernel_decide
theorem rows5288 : actualRows5288=WordField.canonicalRows actualModulus 5288 (.bxor 616 5287) := by core033_kernel_decide
theorem stats5288 : actualRows5288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5288=7428 := by core033_kernel_decide
theorem rows5289 : actualRows5289=WordField.canonicalRows actualModulus 5289 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5289 : actualRows5289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5289=2820 := by core033_kernel_decide
theorem rows5290 : actualRows5290=WordField.canonicalRows actualModulus 5290 (.bnot 5289) := by core033_kernel_decide
theorem stats5290 : actualRows5290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5290=6276 := by core033_kernel_decide
theorem rows5291 : actualRows5291=WordField.canonicalRows actualModulus 5291 (.badd 5288 5290) := by core033_kernel_decide
theorem stats5291 : actualRows5291.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5291=5388 := by core033_kernel_decide
theorem rows5292 : actualRows5292=WordField.canonicalRows actualModulus 5292 (.bnot 5291) := by core033_kernel_decide
theorem stats5292 : actualRows5292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5292=6276 := by core033_kernel_decide
theorem rows5293 : actualRows5293=WordField.canonicalRows actualModulus 5293 (.band 5286 5292) := by core033_kernel_decide
theorem stats5293 : actualRows5293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5293=5124 := by core033_kernel_decide
theorem rows5294 : actualRows5294=WordField.canonicalRows actualModulus 5294 (.bxor 5281 5293) := by core033_kernel_decide
theorem stats5294 : actualRows5294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5294=7428 := by core033_kernel_decide
theorem rows5295 : actualRows5295=WordField.canonicalRows actualModulus 5295 (.shr 5294 31) := by core033_kernel_decide
theorem stats5295 : actualRows5295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5295=2892 := by core033_kernel_decide
theorem rows5296 : actualRows5296=WordField.canonicalRows actualModulus 5296 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5296 : actualRows5296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5296=2892 := by core033_kernel_decide
theorem rows5297 : actualRows5297=WordField.canonicalRows actualModulus 5297 (.bxor 5295 5296) := by core033_kernel_decide
theorem stats5297 : actualRows5297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5297=7428 := by core033_kernel_decide
theorem rows5298 : actualRows5298=WordField.canonicalRows actualModulus 5298 (.bnot 5297) := by core033_kernel_decide
theorem stats5298 : actualRows5298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5298=6276 := by core033_kernel_decide
theorem rows5299 : actualRows5299=WordField.canonicalRows actualModulus 5299 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5299 : actualRows5299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5299=2892 := by core033_kernel_decide
theorem rows5300 : actualRows5300=WordField.canonicalRows actualModulus 5300 (.badd 5298 5299) := by core033_kernel_decide
theorem stats5300 : actualRows5300.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5300=5388 := by core033_kernel_decide
theorem rows5301 : actualRows5301=WordField.canonicalRows actualModulus 5301 (.bnot 5300) := by core033_kernel_decide
theorem stats5301 : actualRows5301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5301=6276 := by core033_kernel_decide
theorem rows5302 : actualRows5302=WordField.canonicalRows actualModulus 5302 (.band 5301 1959) := by core033_kernel_decide
theorem stats5302 : actualRows5302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5302=5124 := by core033_kernel_decide
theorem rows5303 : actualRows5303=WordField.canonicalRows actualModulus 5303 (.bxor 5276 5302) := by core033_kernel_decide
theorem stats5303 : actualRows5303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5303=7428 := by core033_kernel_decide
theorem rows5304 : actualRows5304=WordField.canonicalRows actualModulus 5304 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5304 : actualRows5304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5304=2892 := by core033_kernel_decide
theorem rows5305 : actualRows5305=WordField.canonicalRows actualModulus 5305 (.bxor 616 5304) := by core033_kernel_decide
theorem stats5305 : actualRows5305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5305=7428 := by core033_kernel_decide
theorem rows5306 : actualRows5306=WordField.canonicalRows actualModulus 5306 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5306 : actualRows5306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5306=2820 := by core033_kernel_decide
theorem rows5307 : actualRows5307=WordField.canonicalRows actualModulus 5307 (.bnot 5306) := by core033_kernel_decide
theorem stats5307 : actualRows5307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5307=6276 := by core033_kernel_decide
theorem rows5308 : actualRows5308=WordField.canonicalRows actualModulus 5308 (.band 5305 5307) := by core033_kernel_decide
theorem stats5308 : actualRows5308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5308=5124 := by core033_kernel_decide
theorem rows5309 : actualRows5309=WordField.canonicalRows actualModulus 5309 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5309 : actualRows5309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5309=2892 := by core033_kernel_decide
theorem rows5310 : actualRows5310=WordField.canonicalRows actualModulus 5310 (.bxor 616 5309) := by core033_kernel_decide
theorem stats5310 : actualRows5310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5310=7428 := by core033_kernel_decide
theorem rows5311 : actualRows5311=WordField.canonicalRows actualModulus 5311 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5311 : actualRows5311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5311=2820 := by core033_kernel_decide
theorem rows5312 : actualRows5312=WordField.canonicalRows actualModulus 5312 (.bnot 5311) := by core033_kernel_decide
theorem stats5312 : actualRows5312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5312=6276 := by core033_kernel_decide
theorem rows5313 : actualRows5313=WordField.canonicalRows actualModulus 5313 (.bxor 5310 5312) := by core033_kernel_decide
theorem stats5313 : actualRows5313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5313=7428 := by core033_kernel_decide
theorem rows5314 : actualRows5314=WordField.canonicalRows actualModulus 5314 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5314 : actualRows5314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5314=2892 := by core033_kernel_decide
theorem rows5315 : actualRows5315=WordField.canonicalRows actualModulus 5315 (.bxor 616 5314) := by core033_kernel_decide
theorem stats5315 : actualRows5315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5315=7428 := by core033_kernel_decide
theorem rows5316 : actualRows5316=WordField.canonicalRows actualModulus 5316 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5316 : actualRows5316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5316=2820 := by core033_kernel_decide
theorem rows5317 : actualRows5317=WordField.canonicalRows actualModulus 5317 (.bnot 5316) := by core033_kernel_decide
theorem stats5317 : actualRows5317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5317=6276 := by core033_kernel_decide
theorem rows5318 : actualRows5318=WordField.canonicalRows actualModulus 5318 (.badd 5315 5317) := by core033_kernel_decide
theorem stats5318 : actualRows5318.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5318=5388 := by core033_kernel_decide
theorem rows5319 : actualRows5319=WordField.canonicalRows actualModulus 5319 (.bnot 5318) := by core033_kernel_decide
theorem stats5319 : actualRows5319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5319=6276 := by core033_kernel_decide
theorem rows5320 : actualRows5320=WordField.canonicalRows actualModulus 5320 (.band 5313 5319) := by core033_kernel_decide
theorem stats5320 : actualRows5320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5320=5124 := by core033_kernel_decide
theorem rows5321 : actualRows5321=WordField.canonicalRows actualModulus 5321 (.bxor 5308 5320) := by core033_kernel_decide
theorem stats5321 : actualRows5321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5321=7428 := by core033_kernel_decide
theorem rows5322 : actualRows5322=WordField.canonicalRows actualModulus 5322 (.shr 5321 31) := by core033_kernel_decide
theorem stats5322 : actualRows5322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5322=2892 := by core033_kernel_decide
theorem rows5323 : actualRows5323=WordField.canonicalRows actualModulus 5323 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5323 : actualRows5323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5323=2892 := by core033_kernel_decide
theorem rows5324 : actualRows5324=WordField.canonicalRows actualModulus 5324 (.bxor 5322 5323) := by core033_kernel_decide
theorem stats5324 : actualRows5324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5324=7428 := by core033_kernel_decide
theorem rows5325 : actualRows5325=WordField.canonicalRows actualModulus 5325 (.bnot 5324) := by core033_kernel_decide
theorem stats5325 : actualRows5325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5325=6276 := by core033_kernel_decide
theorem rows5326 : actualRows5326=WordField.canonicalRows actualModulus 5326 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5326 : actualRows5326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5326=2892 := by core033_kernel_decide
theorem rows5327 : actualRows5327=WordField.canonicalRows actualModulus 5327 (.badd 5325 5326) := by core033_kernel_decide
theorem stats5327 : actualRows5327.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5327=5388 := by core033_kernel_decide
theorem rows5328 : actualRows5328=WordField.canonicalRows actualModulus 5328 (.band 5327 2154) := by core033_kernel_decide
theorem stats5328 : actualRows5328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5328=5124 := by core033_kernel_decide
theorem rows5329 : actualRows5329=WordField.canonicalRows actualModulus 5329 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5329 : actualRows5329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5329=2892 := by core033_kernel_decide
theorem rows5330 : actualRows5330=WordField.canonicalRows actualModulus 5330 (.bxor 616 5329) := by core033_kernel_decide
theorem stats5330 : actualRows5330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5330=7428 := by core033_kernel_decide
theorem rows5331 : actualRows5331=WordField.canonicalRows actualModulus 5331 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5331 : actualRows5331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5331=2820 := by core033_kernel_decide
theorem rows5332 : actualRows5332=WordField.canonicalRows actualModulus 5332 (.bnot 5331) := by core033_kernel_decide
theorem stats5332 : actualRows5332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5332=6276 := by core033_kernel_decide
theorem rows5333 : actualRows5333=WordField.canonicalRows actualModulus 5333 (.band 5330 5332) := by core033_kernel_decide
theorem stats5333 : actualRows5333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5333=5124 := by core033_kernel_decide
theorem rows5334 : actualRows5334=WordField.canonicalRows actualModulus 5334 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5334 : actualRows5334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5334=2892 := by core033_kernel_decide
theorem rows5335 : actualRows5335=WordField.canonicalRows actualModulus 5335 (.bxor 616 5334) := by core033_kernel_decide
theorem stats5335 : actualRows5335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5335=7428 := by core033_kernel_decide
theorem rows5336 : actualRows5336=WordField.canonicalRows actualModulus 5336 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5336 : actualRows5336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5336=2820 := by core033_kernel_decide
theorem rows5337 : actualRows5337=WordField.canonicalRows actualModulus 5337 (.bnot 5336) := by core033_kernel_decide
theorem stats5337 : actualRows5337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5337=6276 := by core033_kernel_decide
theorem rows5338 : actualRows5338=WordField.canonicalRows actualModulus 5338 (.bxor 5335 5337) := by core033_kernel_decide
theorem stats5338 : actualRows5338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5338=7428 := by core033_kernel_decide
theorem rows5339 : actualRows5339=WordField.canonicalRows actualModulus 5339 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5339 : actualRows5339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5339=2892 := by core033_kernel_decide
theorem rows5340 : actualRows5340=WordField.canonicalRows actualModulus 5340 (.bxor 616 5339) := by core033_kernel_decide
theorem stats5340 : actualRows5340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5340=7428 := by core033_kernel_decide
theorem rows5341 : actualRows5341=WordField.canonicalRows actualModulus 5341 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5341 : actualRows5341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5341=2820 := by core033_kernel_decide
theorem rows5342 : actualRows5342=WordField.canonicalRows actualModulus 5342 (.bnot 5341) := by core033_kernel_decide
theorem stats5342 : actualRows5342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5342=6276 := by core033_kernel_decide
theorem rows5343 : actualRows5343=WordField.canonicalRows actualModulus 5343 (.badd 5340 5342) := by core033_kernel_decide
theorem stats5343 : actualRows5343.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5343=5388 := by core033_kernel_decide
def partRows81 : List R1CS.Row := actualRows5280++actualRows5281++actualRows5282++actualRows5283++actualRows5284++actualRows5285++actualRows5286++actualRows5287++actualRows5288++actualRows5289++actualRows5290++actualRows5291++actualRows5292++actualRows5293++actualRows5294++actualRows5295++actualRows5296++actualRows5297++actualRows5298++actualRows5299++actualRows5300++actualRows5301++actualRows5302++actualRows5303++actualRows5304++actualRows5305++actualRows5306++actualRows5307++actualRows5308++actualRows5309++actualRows5310++actualRows5311++actualRows5312++actualRows5313++actualRows5314++actualRows5315++actualRows5316++actualRows5317++actualRows5318++actualRows5319++actualRows5320++actualRows5321++actualRows5322++actualRows5323++actualRows5324++actualRows5325++actualRows5326++actualRows5327++actualRows5328++actualRows5329++actualRows5330++actualRows5331++actualRows5332++actualRows5333++actualRows5334++actualRows5335++actualRows5336++actualRows5337++actualRows5338++actualRows5339++actualRows5340++actualRows5341++actualRows5342++actualRows5343
def partOps81 : List WordIR.Op := [.bnot 5279,.band 5278 5280,.literal (BitVec.ofNat 32 2),.bxor 616 5282,.literal (BitVec.ofNat 32 0),.bnot 5284,.bxor 5283 5285,.literal (BitVec.ofNat 32 2),.bxor 616 5287,.literal (BitVec.ofNat 32 0),.bnot 5289,.badd 5288 5290,.bnot 5291,.band 5286 5292,.bxor 5281 5293,.shr 5294 31,.literal (BitVec.ofNat 32 1),.bxor 5295 5296,.bnot 5297,.literal (BitVec.ofNat 32 1),.badd 5298 5299,.bnot 5300,.band 5301 1959,.bxor 5276 5302,.literal (BitVec.ofNat 32 2),.bxor 616 5304,.literal (BitVec.ofNat 32 0),.bnot 5306,.band 5305 5307,.literal (BitVec.ofNat 32 2),.bxor 616 5309,.literal (BitVec.ofNat 32 0),.bnot 5311,.bxor 5310 5312,.literal (BitVec.ofNat 32 2),.bxor 616 5314,.literal (BitVec.ofNat 32 0),.bnot 5316,.badd 5315 5317,.bnot 5318,.band 5313 5319,.bxor 5308 5320,.shr 5321 31,.literal (BitVec.ofNat 32 1),.bxor 5322 5323,.bnot 5324,.literal (BitVec.ofNat 32 1),.badd 5325 5326,.band 5327 2154,.literal (BitVec.ofNat 32 2),.bxor 616 5329,.literal (BitVec.ofNat 32 0),.bnot 5331,.band 5330 5332,.literal (BitVec.ofNat 32 2),.bxor 616 5334,.literal (BitVec.ofNat 32 0),.bnot 5336,.bxor 5335 5337,.literal (BitVec.ofNat 32 2),.bxor 616 5339,.literal (BitVec.ofNat 32 0),.bnot 5341,.badd 5340 5342]
theorem partExact81 : partRows81=WordField.rows actualModulus 5280 partOps81 := by
  simp only [partRows81,partOps81,WordField.rows,rows5280,rows5281,rows5282,rows5283,rows5284,rows5285,rows5286,rows5287,rows5288,rows5289,rows5290,rows5291,rows5292,rows5293,rows5294,rows5295,rows5296,rows5297,rows5298,rows5299,rows5300,rows5301,rows5302,rows5303,rows5304,rows5305,rows5306,rows5307,rows5308,rows5309,rows5310,rows5311,rows5312,rows5313,rows5314,rows5315,rows5316,rows5317,rows5318,rows5319,rows5320,rows5321,rows5322,rows5323,rows5324,rows5325,rows5326,rows5327,rows5328,rows5329,rows5330,rows5331,rows5332,rows5333,rows5334,rows5335,rows5336,rows5337,rows5338,rows5339,rows5340,rows5341,rows5342,rows5343,List.append_assoc,List.append_nil]
theorem partLength81 : partOps81.length=64 := by decide
theorem partStats81 : partRows81.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows81=332568 := by
  simp only [partRows81,List.length_append,MatrixRowBlocks.rows_weight_append,stats5280.1,stats5280.2,stats5281.1,stats5281.2,stats5282.1,stats5282.2,stats5283.1,stats5283.2,stats5284.1,stats5284.2,stats5285.1,stats5285.2,stats5286.1,stats5286.2,stats5287.1,stats5287.2,stats5288.1,stats5288.2,stats5289.1,stats5289.2,stats5290.1,stats5290.2,stats5291.1,stats5291.2,stats5292.1,stats5292.2,stats5293.1,stats5293.2,stats5294.1,stats5294.2,stats5295.1,stats5295.2,stats5296.1,stats5296.2,stats5297.1,stats5297.2,stats5298.1,stats5298.2,stats5299.1,stats5299.2,stats5300.1,stats5300.2,stats5301.1,stats5301.2,stats5302.1,stats5302.2,stats5303.1,stats5303.2,stats5304.1,stats5304.2,stats5305.1,stats5305.2,stats5306.1,stats5306.2,stats5307.1,stats5307.2,stats5308.1,stats5308.2,stats5309.1,stats5309.2,stats5310.1,stats5310.2,stats5311.1,stats5311.2,stats5312.1,stats5312.2,stats5313.1,stats5313.2,stats5314.1,stats5314.2,stats5315.1,stats5315.2,stats5316.1,stats5316.2,stats5317.1,stats5317.2,stats5318.1,stats5318.2,stats5319.1,stats5319.2,stats5320.1,stats5320.2,stats5321.1,stats5321.2,stats5322.1,stats5322.2,stats5323.1,stats5323.2,stats5324.1,stats5324.2,stats5325.1,stats5325.2,stats5326.1,stats5326.2,stats5327.1,stats5327.2,stats5328.1,stats5328.2,stats5329.1,stats5329.2,stats5330.1,stats5330.2,stats5331.1,stats5331.2,stats5332.1,stats5332.2,stats5333.1,stats5333.2,stats5334.1,stats5334.2,stats5335.1,stats5335.2,stats5336.1,stats5336.2,stats5337.1,stats5337.2,stats5338.1,stats5338.2,stats5339.1,stats5339.2,stats5340.1,stats5340.2,stats5341.1,stats5341.2,stats5342.1,stats5342.2,stats5343.1,stats5343.2]
  decide
end QuotedPairedPathRoundCheckedRows
