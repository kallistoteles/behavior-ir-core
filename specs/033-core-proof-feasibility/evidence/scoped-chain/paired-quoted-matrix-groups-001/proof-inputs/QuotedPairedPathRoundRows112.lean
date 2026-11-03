import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData113
import PairedPathRoundInstructionMatrixData114
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7264 : actualRows7264=WordField.canonicalRows actualModulus 7264 (.band 7258 7263) := by core033_kernel_decide
theorem stats7264 : actualRows7264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7264=5124 := by core033_kernel_decide
theorem rows7265 : actualRows7265=WordField.canonicalRows actualModulus 7265 (.bxor 7254 7264) := by core033_kernel_decide
theorem stats7265 : actualRows7265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7265=7428 := by core033_kernel_decide
theorem rows7266 : actualRows7266=WordField.canonicalRows actualModulus 7266 (.shr 7265 31) := by core033_kernel_decide
theorem stats7266 : actualRows7266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7266=2892 := by core033_kernel_decide
theorem rows7267 : actualRows7267=WordField.canonicalRows actualModulus 7267 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7267 : actualRows7267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7267=2892 := by core033_kernel_decide
theorem rows7268 : actualRows7268=WordField.canonicalRows actualModulus 7268 (.bxor 7266 7267) := by core033_kernel_decide
theorem stats7268 : actualRows7268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7268=7428 := by core033_kernel_decide
theorem rows7269 : actualRows7269=WordField.canonicalRows actualModulus 7269 (.shr 5723 8) := by core033_kernel_decide
theorem stats7269 : actualRows7269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7269=4548 := by core033_kernel_decide
theorem rows7270 : actualRows7270=WordField.canonicalRows actualModulus 7270 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7270 : actualRows7270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7270=2820 := by core033_kernel_decide
theorem rows7271 : actualRows7271=WordField.canonicalRows actualModulus 7271 (.bnot 7270) := by core033_kernel_decide
theorem stats7271 : actualRows7271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7271=6276 := by core033_kernel_decide
theorem rows7272 : actualRows7272=WordField.canonicalRows actualModulus 7272 (.band 7269 7271) := by core033_kernel_decide
theorem stats7272 : actualRows7272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7272=5124 := by core033_kernel_decide
theorem rows7273 : actualRows7273=WordField.canonicalRows actualModulus 7273 (.shr 5723 8) := by core033_kernel_decide
theorem stats7273 : actualRows7273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7273=4548 := by core033_kernel_decide
theorem rows7274 : actualRows7274=WordField.canonicalRows actualModulus 7274 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7274 : actualRows7274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7274=2820 := by core033_kernel_decide
theorem rows7275 : actualRows7275=WordField.canonicalRows actualModulus 7275 (.bnot 7274) := by core033_kernel_decide
theorem stats7275 : actualRows7275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7275=6276 := by core033_kernel_decide
theorem rows7276 : actualRows7276=WordField.canonicalRows actualModulus 7276 (.bxor 7273 7275) := by core033_kernel_decide
theorem stats7276 : actualRows7276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7276=7428 := by core033_kernel_decide
theorem rows7277 : actualRows7277=WordField.canonicalRows actualModulus 7277 (.shr 5723 8) := by core033_kernel_decide
theorem stats7277 : actualRows7277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7277=4548 := by core033_kernel_decide
theorem rows7278 : actualRows7278=WordField.canonicalRows actualModulus 7278 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7278 : actualRows7278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7278=2820 := by core033_kernel_decide
theorem rows7279 : actualRows7279=WordField.canonicalRows actualModulus 7279 (.bnot 7278) := by core033_kernel_decide
theorem stats7279 : actualRows7279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7279=6276 := by core033_kernel_decide
theorem rows7280 : actualRows7280=WordField.canonicalRows actualModulus 7280 (.badd 7277 7279) := by core033_kernel_decide
theorem stats7280 : actualRows7280.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7280=5388 := by core033_kernel_decide
theorem rows7281 : actualRows7281=WordField.canonicalRows actualModulus 7281 (.bnot 7280) := by core033_kernel_decide
theorem stats7281 : actualRows7281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7281=6276 := by core033_kernel_decide
theorem rows7282 : actualRows7282=WordField.canonicalRows actualModulus 7282 (.band 7276 7281) := by core033_kernel_decide
theorem stats7282 : actualRows7282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7282=5124 := by core033_kernel_decide
theorem rows7283 : actualRows7283=WordField.canonicalRows actualModulus 7283 (.bxor 7272 7282) := by core033_kernel_decide
theorem stats7283 : actualRows7283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7283=7428 := by core033_kernel_decide
theorem rows7284 : actualRows7284=WordField.canonicalRows actualModulus 7284 (.shr 7283 31) := by core033_kernel_decide
theorem stats7284 : actualRows7284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7284=2892 := by core033_kernel_decide
theorem rows7285 : actualRows7285=WordField.canonicalRows actualModulus 7285 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7285 : actualRows7285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7285=2892 := by core033_kernel_decide
theorem rows7286 : actualRows7286=WordField.canonicalRows actualModulus 7286 (.bxor 7284 7285) := by core033_kernel_decide
theorem stats7286 : actualRows7286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7286=7428 := by core033_kernel_decide
theorem rows7287 : actualRows7287=WordField.canonicalRows actualModulus 7287 (.shr 5776 8) := by core033_kernel_decide
theorem stats7287 : actualRows7287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7287=4548 := by core033_kernel_decide
theorem rows7288 : actualRows7288=WordField.canonicalRows actualModulus 7288 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7288 : actualRows7288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7288=2820 := by core033_kernel_decide
theorem rows7289 : actualRows7289=WordField.canonicalRows actualModulus 7289 (.bnot 7288) := by core033_kernel_decide
theorem stats7289 : actualRows7289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7289=6276 := by core033_kernel_decide
theorem rows7290 : actualRows7290=WordField.canonicalRows actualModulus 7290 (.band 7287 7289) := by core033_kernel_decide
theorem stats7290 : actualRows7290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7290=5124 := by core033_kernel_decide
theorem rows7291 : actualRows7291=WordField.canonicalRows actualModulus 7291 (.shr 5776 8) := by core033_kernel_decide
theorem stats7291 : actualRows7291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7291=4548 := by core033_kernel_decide
theorem rows7292 : actualRows7292=WordField.canonicalRows actualModulus 7292 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7292 : actualRows7292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7292=2820 := by core033_kernel_decide
theorem rows7293 : actualRows7293=WordField.canonicalRows actualModulus 7293 (.bnot 7292) := by core033_kernel_decide
theorem stats7293 : actualRows7293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7293=6276 := by core033_kernel_decide
theorem rows7294 : actualRows7294=WordField.canonicalRows actualModulus 7294 (.bxor 7291 7293) := by core033_kernel_decide
theorem stats7294 : actualRows7294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7294=7428 := by core033_kernel_decide
theorem rows7295 : actualRows7295=WordField.canonicalRows actualModulus 7295 (.shr 5776 8) := by core033_kernel_decide
theorem stats7295 : actualRows7295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7295=4548 := by core033_kernel_decide
theorem rows7296 : actualRows7296=WordField.canonicalRows actualModulus 7296 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7296 : actualRows7296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7296=2820 := by core033_kernel_decide
theorem rows7297 : actualRows7297=WordField.canonicalRows actualModulus 7297 (.bnot 7296) := by core033_kernel_decide
theorem stats7297 : actualRows7297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7297=6276 := by core033_kernel_decide
theorem rows7298 : actualRows7298=WordField.canonicalRows actualModulus 7298 (.badd 7295 7297) := by core033_kernel_decide
theorem stats7298 : actualRows7298.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7298=5388 := by core033_kernel_decide
theorem rows7299 : actualRows7299=WordField.canonicalRows actualModulus 7299 (.bnot 7298) := by core033_kernel_decide
theorem stats7299 : actualRows7299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7299=6276 := by core033_kernel_decide
theorem rows7300 : actualRows7300=WordField.canonicalRows actualModulus 7300 (.band 7294 7299) := by core033_kernel_decide
theorem stats7300 : actualRows7300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7300=5124 := by core033_kernel_decide
theorem rows7301 : actualRows7301=WordField.canonicalRows actualModulus 7301 (.bxor 7290 7300) := by core033_kernel_decide
theorem stats7301 : actualRows7301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7301=7428 := by core033_kernel_decide
theorem rows7302 : actualRows7302=WordField.canonicalRows actualModulus 7302 (.shr 7301 31) := by core033_kernel_decide
theorem stats7302 : actualRows7302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7302=2892 := by core033_kernel_decide
theorem rows7303 : actualRows7303=WordField.canonicalRows actualModulus 7303 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7303 : actualRows7303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7303=2892 := by core033_kernel_decide
theorem rows7304 : actualRows7304=WordField.canonicalRows actualModulus 7304 (.bxor 7302 7303) := by core033_kernel_decide
theorem stats7304 : actualRows7304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7304=7428 := by core033_kernel_decide
theorem rows7305 : actualRows7305=WordField.canonicalRows actualModulus 7305 (.shr 5829 8) := by core033_kernel_decide
theorem stats7305 : actualRows7305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7305=4548 := by core033_kernel_decide
theorem rows7306 : actualRows7306=WordField.canonicalRows actualModulus 7306 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7306 : actualRows7306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7306=2820 := by core033_kernel_decide
theorem rows7307 : actualRows7307=WordField.canonicalRows actualModulus 7307 (.bnot 7306) := by core033_kernel_decide
theorem stats7307 : actualRows7307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7307=6276 := by core033_kernel_decide
theorem rows7308 : actualRows7308=WordField.canonicalRows actualModulus 7308 (.band 7305 7307) := by core033_kernel_decide
theorem stats7308 : actualRows7308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7308=5124 := by core033_kernel_decide
theorem rows7309 : actualRows7309=WordField.canonicalRows actualModulus 7309 (.shr 5829 8) := by core033_kernel_decide
theorem stats7309 : actualRows7309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7309=4548 := by core033_kernel_decide
theorem rows7310 : actualRows7310=WordField.canonicalRows actualModulus 7310 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7310 : actualRows7310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7310=2820 := by core033_kernel_decide
theorem rows7311 : actualRows7311=WordField.canonicalRows actualModulus 7311 (.bnot 7310) := by core033_kernel_decide
theorem stats7311 : actualRows7311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7311=6276 := by core033_kernel_decide
theorem rows7312 : actualRows7312=WordField.canonicalRows actualModulus 7312 (.bxor 7309 7311) := by core033_kernel_decide
theorem stats7312 : actualRows7312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7312=7428 := by core033_kernel_decide
theorem rows7313 : actualRows7313=WordField.canonicalRows actualModulus 7313 (.shr 5829 8) := by core033_kernel_decide
theorem stats7313 : actualRows7313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7313=4548 := by core033_kernel_decide
theorem rows7314 : actualRows7314=WordField.canonicalRows actualModulus 7314 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7314 : actualRows7314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7314=2820 := by core033_kernel_decide
theorem rows7315 : actualRows7315=WordField.canonicalRows actualModulus 7315 (.bnot 7314) := by core033_kernel_decide
theorem stats7315 : actualRows7315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7315=6276 := by core033_kernel_decide
theorem rows7316 : actualRows7316=WordField.canonicalRows actualModulus 7316 (.badd 7313 7315) := by core033_kernel_decide
theorem stats7316 : actualRows7316.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7316=5388 := by core033_kernel_decide
theorem rows7317 : actualRows7317=WordField.canonicalRows actualModulus 7317 (.bnot 7316) := by core033_kernel_decide
theorem stats7317 : actualRows7317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7317=6276 := by core033_kernel_decide
theorem rows7318 : actualRows7318=WordField.canonicalRows actualModulus 7318 (.band 7312 7317) := by core033_kernel_decide
theorem stats7318 : actualRows7318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7318=5124 := by core033_kernel_decide
theorem rows7319 : actualRows7319=WordField.canonicalRows actualModulus 7319 (.bxor 7308 7318) := by core033_kernel_decide
theorem stats7319 : actualRows7319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7319=7428 := by core033_kernel_decide
theorem rows7320 : actualRows7320=WordField.canonicalRows actualModulus 7320 (.shr 7319 31) := by core033_kernel_decide
theorem stats7320 : actualRows7320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7320=2892 := by core033_kernel_decide
theorem rows7321 : actualRows7321=WordField.canonicalRows actualModulus 7321 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7321 : actualRows7321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7321=2892 := by core033_kernel_decide
theorem rows7322 : actualRows7322=WordField.canonicalRows actualModulus 7322 (.bxor 7320 7321) := by core033_kernel_decide
theorem stats7322 : actualRows7322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7322=7428 := by core033_kernel_decide
theorem rows7323 : actualRows7323=WordField.canonicalRows actualModulus 7323 (.shr 5882 8) := by core033_kernel_decide
theorem stats7323 : actualRows7323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7323=4548 := by core033_kernel_decide
theorem rows7324 : actualRows7324=WordField.canonicalRows actualModulus 7324 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7324 : actualRows7324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7324=2820 := by core033_kernel_decide
theorem rows7325 : actualRows7325=WordField.canonicalRows actualModulus 7325 (.bnot 7324) := by core033_kernel_decide
theorem stats7325 : actualRows7325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7325=6276 := by core033_kernel_decide
theorem rows7326 : actualRows7326=WordField.canonicalRows actualModulus 7326 (.band 7323 7325) := by core033_kernel_decide
theorem stats7326 : actualRows7326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7326=5124 := by core033_kernel_decide
theorem rows7327 : actualRows7327=WordField.canonicalRows actualModulus 7327 (.shr 5882 8) := by core033_kernel_decide
theorem stats7327 : actualRows7327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7327=4548 := by core033_kernel_decide
def partRows112 : List R1CS.Row := actualRows7264++actualRows7265++actualRows7266++actualRows7267++actualRows7268++actualRows7269++actualRows7270++actualRows7271++actualRows7272++actualRows7273++actualRows7274++actualRows7275++actualRows7276++actualRows7277++actualRows7278++actualRows7279++actualRows7280++actualRows7281++actualRows7282++actualRows7283++actualRows7284++actualRows7285++actualRows7286++actualRows7287++actualRows7288++actualRows7289++actualRows7290++actualRows7291++actualRows7292++actualRows7293++actualRows7294++actualRows7295++actualRows7296++actualRows7297++actualRows7298++actualRows7299++actualRows7300++actualRows7301++actualRows7302++actualRows7303++actualRows7304++actualRows7305++actualRows7306++actualRows7307++actualRows7308++actualRows7309++actualRows7310++actualRows7311++actualRows7312++actualRows7313++actualRows7314++actualRows7315++actualRows7316++actualRows7317++actualRows7318++actualRows7319++actualRows7320++actualRows7321++actualRows7322++actualRows7323++actualRows7324++actualRows7325++actualRows7326++actualRows7327
def partOps112 : List WordIR.Op := [.band 7258 7263,.bxor 7254 7264,.shr 7265 31,.literal (BitVec.ofNat 32 1),.bxor 7266 7267,.shr 5723 8,.literal (BitVec.ofNat 32 0),.bnot 7270,.band 7269 7271,.shr 5723 8,.literal (BitVec.ofNat 32 0),.bnot 7274,.bxor 7273 7275,.shr 5723 8,.literal (BitVec.ofNat 32 0),.bnot 7278,.badd 7277 7279,.bnot 7280,.band 7276 7281,.bxor 7272 7282,.shr 7283 31,.literal (BitVec.ofNat 32 1),.bxor 7284 7285,.shr 5776 8,.literal (BitVec.ofNat 32 0),.bnot 7288,.band 7287 7289,.shr 5776 8,.literal (BitVec.ofNat 32 0),.bnot 7292,.bxor 7291 7293,.shr 5776 8,.literal (BitVec.ofNat 32 0),.bnot 7296,.badd 7295 7297,.bnot 7298,.band 7294 7299,.bxor 7290 7300,.shr 7301 31,.literal (BitVec.ofNat 32 1),.bxor 7302 7303,.shr 5829 8,.literal (BitVec.ofNat 32 0),.bnot 7306,.band 7305 7307,.shr 5829 8,.literal (BitVec.ofNat 32 0),.bnot 7310,.bxor 7309 7311,.shr 5829 8,.literal (BitVec.ofNat 32 0),.bnot 7314,.badd 7313 7315,.bnot 7316,.band 7312 7317,.bxor 7308 7318,.shr 7319 31,.literal (BitVec.ofNat 32 1),.bxor 7320 7321,.shr 5882 8,.literal (BitVec.ofNat 32 0),.bnot 7324,.band 7323 7325,.shr 5882 8]
theorem partExact112 : partRows112=WordField.rows actualModulus 7264 partOps112 := by
  simp only [partRows112,partOps112,WordField.rows,rows7264,rows7265,rows7266,rows7267,rows7268,rows7269,rows7270,rows7271,rows7272,rows7273,rows7274,rows7275,rows7276,rows7277,rows7278,rows7279,rows7280,rows7281,rows7282,rows7283,rows7284,rows7285,rows7286,rows7287,rows7288,rows7289,rows7290,rows7291,rows7292,rows7293,rows7294,rows7295,rows7296,rows7297,rows7298,rows7299,rows7300,rows7301,rows7302,rows7303,rows7304,rows7305,rows7306,rows7307,rows7308,rows7309,rows7310,rows7311,rows7312,rows7313,rows7314,rows7315,rows7316,rows7317,rows7318,rows7319,rows7320,rows7321,rows7322,rows7323,rows7324,rows7325,rows7326,rows7327,List.append_assoc,List.append_nil]
theorem partLength112 : partOps112.length=64 := by decide
theorem partStats112 : partRows112.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows112=321816 := by
  simp only [partRows112,List.length_append,MatrixRowBlocks.rows_weight_append,stats7264.1,stats7264.2,stats7265.1,stats7265.2,stats7266.1,stats7266.2,stats7267.1,stats7267.2,stats7268.1,stats7268.2,stats7269.1,stats7269.2,stats7270.1,stats7270.2,stats7271.1,stats7271.2,stats7272.1,stats7272.2,stats7273.1,stats7273.2,stats7274.1,stats7274.2,stats7275.1,stats7275.2,stats7276.1,stats7276.2,stats7277.1,stats7277.2,stats7278.1,stats7278.2,stats7279.1,stats7279.2,stats7280.1,stats7280.2,stats7281.1,stats7281.2,stats7282.1,stats7282.2,stats7283.1,stats7283.2,stats7284.1,stats7284.2,stats7285.1,stats7285.2,stats7286.1,stats7286.2,stats7287.1,stats7287.2,stats7288.1,stats7288.2,stats7289.1,stats7289.2,stats7290.1,stats7290.2,stats7291.1,stats7291.2,stats7292.1,stats7292.2,stats7293.1,stats7293.2,stats7294.1,stats7294.2,stats7295.1,stats7295.2,stats7296.1,stats7296.2,stats7297.1,stats7297.2,stats7298.1,stats7298.2,stats7299.1,stats7299.2,stats7300.1,stats7300.2,stats7301.1,stats7301.2,stats7302.1,stats7302.2,stats7303.1,stats7303.2,stats7304.1,stats7304.2,stats7305.1,stats7305.2,stats7306.1,stats7306.2,stats7307.1,stats7307.2,stats7308.1,stats7308.2,stats7309.1,stats7309.2,stats7310.1,stats7310.2,stats7311.1,stats7311.2,stats7312.1,stats7312.2,stats7313.1,stats7313.2,stats7314.1,stats7314.2,stats7315.1,stats7315.2,stats7316.1,stats7316.2,stats7317.1,stats7317.2,stats7318.1,stats7318.2,stats7319.1,stats7319.2,stats7320.1,stats7320.2,stats7321.1,stats7321.2,stats7322.1,stats7322.2,stats7323.1,stats7323.2,stats7324.1,stats7324.2,stats7325.1,stats7325.2,stats7326.1,stats7326.2,stats7327.1,stats7327.2]
  decide
end QuotedPairedPathRoundCheckedRows
