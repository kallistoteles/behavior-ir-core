import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData113
import AuthenticatedBranchRoundInstructionMatrixData114
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7286 : actualRows7286=WordField.canonicalRows actualModulus 7286 (.shr 4478 8) := by core033_kernel_decide
theorem stats7286 : actualRows7286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7286=4548 := by core033_kernel_decide
theorem rows7287 : actualRows7287=WordField.canonicalRows actualModulus 7287 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7287 : actualRows7287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7287=2820 := by core033_kernel_decide
theorem rows7288 : actualRows7288=WordField.canonicalRows actualModulus 7288 (.bnot 7287) := by core033_kernel_decide
theorem stats7288 : actualRows7288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7288=6276 := by core033_kernel_decide
theorem rows7289 : actualRows7289=WordField.canonicalRows actualModulus 7289 (.band 7286 7288) := by core033_kernel_decide
theorem stats7289 : actualRows7289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7289=5124 := by core033_kernel_decide
theorem rows7290 : actualRows7290=WordField.canonicalRows actualModulus 7290 (.shr 4478 8) := by core033_kernel_decide
theorem stats7290 : actualRows7290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7290=4548 := by core033_kernel_decide
theorem rows7291 : actualRows7291=WordField.canonicalRows actualModulus 7291 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7291 : actualRows7291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7291=2820 := by core033_kernel_decide
theorem rows7292 : actualRows7292=WordField.canonicalRows actualModulus 7292 (.bnot 7291) := by core033_kernel_decide
theorem stats7292 : actualRows7292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7292=6276 := by core033_kernel_decide
theorem rows7293 : actualRows7293=WordField.canonicalRows actualModulus 7293 (.bxor 7290 7292) := by core033_kernel_decide
theorem stats7293 : actualRows7293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7293=7428 := by core033_kernel_decide
theorem rows7294 : actualRows7294=WordField.canonicalRows actualModulus 7294 (.shr 4478 8) := by core033_kernel_decide
theorem stats7294 : actualRows7294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7294=4548 := by core033_kernel_decide
theorem rows7295 : actualRows7295=WordField.canonicalRows actualModulus 7295 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7295 : actualRows7295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7295=2820 := by core033_kernel_decide
theorem rows7296 : actualRows7296=WordField.canonicalRows actualModulus 7296 (.bnot 7295) := by core033_kernel_decide
theorem stats7296 : actualRows7296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7296=6276 := by core033_kernel_decide
theorem rows7297 : actualRows7297=WordField.canonicalRows actualModulus 7297 (.badd 7294 7296) := by core033_kernel_decide
theorem stats7297 : actualRows7297.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7297=5388 := by core033_kernel_decide
theorem rows7298 : actualRows7298=WordField.canonicalRows actualModulus 7298 (.bnot 7297) := by core033_kernel_decide
theorem stats7298 : actualRows7298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7298=6276 := by core033_kernel_decide
theorem rows7299 : actualRows7299=WordField.canonicalRows actualModulus 7299 (.band 7293 7298) := by core033_kernel_decide
theorem stats7299 : actualRows7299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7299=5124 := by core033_kernel_decide
theorem rows7300 : actualRows7300=WordField.canonicalRows actualModulus 7300 (.bxor 7289 7299) := by core033_kernel_decide
theorem stats7300 : actualRows7300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7300=7428 := by core033_kernel_decide
theorem rows7301 : actualRows7301=WordField.canonicalRows actualModulus 7301 (.shr 7300 31) := by core033_kernel_decide
theorem stats7301 : actualRows7301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7301=2892 := by core033_kernel_decide
theorem rows7302 : actualRows7302=WordField.canonicalRows actualModulus 7302 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7302 : actualRows7302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7302=2892 := by core033_kernel_decide
theorem rows7303 : actualRows7303=WordField.canonicalRows actualModulus 7303 (.bxor 7301 7302) := by core033_kernel_decide
theorem stats7303 : actualRows7303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7303=7428 := by core033_kernel_decide
theorem rows7304 : actualRows7304=WordField.canonicalRows actualModulus 7304 (.shr 4530 8) := by core033_kernel_decide
theorem stats7304 : actualRows7304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7304=4548 := by core033_kernel_decide
theorem rows7305 : actualRows7305=WordField.canonicalRows actualModulus 7305 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7305 : actualRows7305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7305=2820 := by core033_kernel_decide
theorem rows7306 : actualRows7306=WordField.canonicalRows actualModulus 7306 (.bnot 7305) := by core033_kernel_decide
theorem stats7306 : actualRows7306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7306=6276 := by core033_kernel_decide
theorem rows7307 : actualRows7307=WordField.canonicalRows actualModulus 7307 (.band 7304 7306) := by core033_kernel_decide
theorem stats7307 : actualRows7307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7307=5124 := by core033_kernel_decide
theorem rows7308 : actualRows7308=WordField.canonicalRows actualModulus 7308 (.shr 4530 8) := by core033_kernel_decide
theorem stats7308 : actualRows7308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7308=4548 := by core033_kernel_decide
theorem rows7309 : actualRows7309=WordField.canonicalRows actualModulus 7309 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7309 : actualRows7309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7309=2820 := by core033_kernel_decide
theorem rows7310 : actualRows7310=WordField.canonicalRows actualModulus 7310 (.bnot 7309) := by core033_kernel_decide
theorem stats7310 : actualRows7310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7310=6276 := by core033_kernel_decide
theorem rows7311 : actualRows7311=WordField.canonicalRows actualModulus 7311 (.bxor 7308 7310) := by core033_kernel_decide
theorem stats7311 : actualRows7311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7311=7428 := by core033_kernel_decide
theorem rows7312 : actualRows7312=WordField.canonicalRows actualModulus 7312 (.shr 4530 8) := by core033_kernel_decide
theorem stats7312 : actualRows7312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7312=4548 := by core033_kernel_decide
theorem rows7313 : actualRows7313=WordField.canonicalRows actualModulus 7313 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7313 : actualRows7313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7313=2820 := by core033_kernel_decide
theorem rows7314 : actualRows7314=WordField.canonicalRows actualModulus 7314 (.bnot 7313) := by core033_kernel_decide
theorem stats7314 : actualRows7314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7314=6276 := by core033_kernel_decide
theorem rows7315 : actualRows7315=WordField.canonicalRows actualModulus 7315 (.badd 7312 7314) := by core033_kernel_decide
theorem stats7315 : actualRows7315.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7315=5388 := by core033_kernel_decide
theorem rows7316 : actualRows7316=WordField.canonicalRows actualModulus 7316 (.bnot 7315) := by core033_kernel_decide
theorem stats7316 : actualRows7316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7316=6276 := by core033_kernel_decide
theorem rows7317 : actualRows7317=WordField.canonicalRows actualModulus 7317 (.band 7311 7316) := by core033_kernel_decide
theorem stats7317 : actualRows7317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7317=5124 := by core033_kernel_decide
theorem rows7318 : actualRows7318=WordField.canonicalRows actualModulus 7318 (.bxor 7307 7317) := by core033_kernel_decide
theorem stats7318 : actualRows7318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7318=7428 := by core033_kernel_decide
theorem rows7319 : actualRows7319=WordField.canonicalRows actualModulus 7319 (.shr 7318 31) := by core033_kernel_decide
theorem stats7319 : actualRows7319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7319=2892 := by core033_kernel_decide
theorem rows7320 : actualRows7320=WordField.canonicalRows actualModulus 7320 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7320 : actualRows7320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7320=2892 := by core033_kernel_decide
theorem rows7321 : actualRows7321=WordField.canonicalRows actualModulus 7321 (.bxor 7319 7320) := by core033_kernel_decide
theorem stats7321 : actualRows7321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7321=7428 := by core033_kernel_decide
theorem rows7322 : actualRows7322=WordField.canonicalRows actualModulus 7322 (.shr 4582 8) := by core033_kernel_decide
theorem stats7322 : actualRows7322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7322=4548 := by core033_kernel_decide
theorem rows7323 : actualRows7323=WordField.canonicalRows actualModulus 7323 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7323 : actualRows7323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7323=2820 := by core033_kernel_decide
theorem rows7324 : actualRows7324=WordField.canonicalRows actualModulus 7324 (.bnot 7323) := by core033_kernel_decide
theorem stats7324 : actualRows7324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7324=6276 := by core033_kernel_decide
theorem rows7325 : actualRows7325=WordField.canonicalRows actualModulus 7325 (.band 7322 7324) := by core033_kernel_decide
theorem stats7325 : actualRows7325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7325=5124 := by core033_kernel_decide
theorem rows7326 : actualRows7326=WordField.canonicalRows actualModulus 7326 (.shr 4582 8) := by core033_kernel_decide
theorem stats7326 : actualRows7326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7326=4548 := by core033_kernel_decide
theorem rows7327 : actualRows7327=WordField.canonicalRows actualModulus 7327 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7327 : actualRows7327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7327=2820 := by core033_kernel_decide
theorem rows7328 : actualRows7328=WordField.canonicalRows actualModulus 7328 (.bnot 7327) := by core033_kernel_decide
theorem stats7328 : actualRows7328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7328=6276 := by core033_kernel_decide
theorem rows7329 : actualRows7329=WordField.canonicalRows actualModulus 7329 (.bxor 7326 7328) := by core033_kernel_decide
theorem stats7329 : actualRows7329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7329=7428 := by core033_kernel_decide
theorem rows7330 : actualRows7330=WordField.canonicalRows actualModulus 7330 (.shr 4582 8) := by core033_kernel_decide
theorem stats7330 : actualRows7330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7330=4548 := by core033_kernel_decide
theorem rows7331 : actualRows7331=WordField.canonicalRows actualModulus 7331 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7331 : actualRows7331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7331=2820 := by core033_kernel_decide
theorem rows7332 : actualRows7332=WordField.canonicalRows actualModulus 7332 (.bnot 7331) := by core033_kernel_decide
theorem stats7332 : actualRows7332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7332=6276 := by core033_kernel_decide
theorem rows7333 : actualRows7333=WordField.canonicalRows actualModulus 7333 (.badd 7330 7332) := by core033_kernel_decide
theorem stats7333 : actualRows7333.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7333=5388 := by core033_kernel_decide
theorem rows7334 : actualRows7334=WordField.canonicalRows actualModulus 7334 (.bnot 7333) := by core033_kernel_decide
theorem stats7334 : actualRows7334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7334=6276 := by core033_kernel_decide
theorem rows7335 : actualRows7335=WordField.canonicalRows actualModulus 7335 (.band 7329 7334) := by core033_kernel_decide
theorem stats7335 : actualRows7335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7335=5124 := by core033_kernel_decide
theorem rows7336 : actualRows7336=WordField.canonicalRows actualModulus 7336 (.bxor 7325 7335) := by core033_kernel_decide
theorem stats7336 : actualRows7336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7336=7428 := by core033_kernel_decide
theorem rows7337 : actualRows7337=WordField.canonicalRows actualModulus 7337 (.shr 7336 31) := by core033_kernel_decide
theorem stats7337 : actualRows7337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7337=2892 := by core033_kernel_decide
theorem rows7338 : actualRows7338=WordField.canonicalRows actualModulus 7338 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7338 : actualRows7338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7338=2892 := by core033_kernel_decide
theorem rows7339 : actualRows7339=WordField.canonicalRows actualModulus 7339 (.bxor 7337 7338) := by core033_kernel_decide
theorem stats7339 : actualRows7339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7339=7428 := by core033_kernel_decide
theorem rows7340 : actualRows7340=WordField.canonicalRows actualModulus 7340 (.shr 4634 8) := by core033_kernel_decide
theorem stats7340 : actualRows7340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7340=4548 := by core033_kernel_decide
theorem rows7341 : actualRows7341=WordField.canonicalRows actualModulus 7341 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7341 : actualRows7341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7341=2820 := by core033_kernel_decide
theorem rows7342 : actualRows7342=WordField.canonicalRows actualModulus 7342 (.bnot 7341) := by core033_kernel_decide
theorem stats7342 : actualRows7342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7342=6276 := by core033_kernel_decide
theorem rows7343 : actualRows7343=WordField.canonicalRows actualModulus 7343 (.band 7340 7342) := by core033_kernel_decide
theorem stats7343 : actualRows7343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7343=5124 := by core033_kernel_decide
theorem rows7344 : actualRows7344=WordField.canonicalRows actualModulus 7344 (.shr 4634 8) := by core033_kernel_decide
theorem stats7344 : actualRows7344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7344=4548 := by core033_kernel_decide
theorem rows7345 : actualRows7345=WordField.canonicalRows actualModulus 7345 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7345 : actualRows7345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7345=2820 := by core033_kernel_decide
theorem rows7346 : actualRows7346=WordField.canonicalRows actualModulus 7346 (.bnot 7345) := by core033_kernel_decide
theorem stats7346 : actualRows7346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7346=6276 := by core033_kernel_decide
theorem rows7347 : actualRows7347=WordField.canonicalRows actualModulus 7347 (.bxor 7344 7346) := by core033_kernel_decide
theorem stats7347 : actualRows7347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7347=7428 := by core033_kernel_decide
theorem rows7348 : actualRows7348=WordField.canonicalRows actualModulus 7348 (.shr 4634 8) := by core033_kernel_decide
theorem stats7348 : actualRows7348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7348=4548 := by core033_kernel_decide
theorem rows7349 : actualRows7349=WordField.canonicalRows actualModulus 7349 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7349 : actualRows7349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7349=2820 := by core033_kernel_decide
def partRows112 : List R1CS.Row := actualRows7286++actualRows7287++actualRows7288++actualRows7289++actualRows7290++actualRows7291++actualRows7292++actualRows7293++actualRows7294++actualRows7295++actualRows7296++actualRows7297++actualRows7298++actualRows7299++actualRows7300++actualRows7301++actualRows7302++actualRows7303++actualRows7304++actualRows7305++actualRows7306++actualRows7307++actualRows7308++actualRows7309++actualRows7310++actualRows7311++actualRows7312++actualRows7313++actualRows7314++actualRows7315++actualRows7316++actualRows7317++actualRows7318++actualRows7319++actualRows7320++actualRows7321++actualRows7322++actualRows7323++actualRows7324++actualRows7325++actualRows7326++actualRows7327++actualRows7328++actualRows7329++actualRows7330++actualRows7331++actualRows7332++actualRows7333++actualRows7334++actualRows7335++actualRows7336++actualRows7337++actualRows7338++actualRows7339++actualRows7340++actualRows7341++actualRows7342++actualRows7343++actualRows7344++actualRows7345++actualRows7346++actualRows7347++actualRows7348++actualRows7349
def partOps112 : List WordIR.Op := [.shr 4478 8,.literal (BitVec.ofNat 32 0),.bnot 7287,.band 7286 7288,.shr 4478 8,.literal (BitVec.ofNat 32 0),.bnot 7291,.bxor 7290 7292,.shr 4478 8,.literal (BitVec.ofNat 32 0),.bnot 7295,.badd 7294 7296,.bnot 7297,.band 7293 7298,.bxor 7289 7299,.shr 7300 31,.literal (BitVec.ofNat 32 1),.bxor 7301 7302,.shr 4530 8,.literal (BitVec.ofNat 32 0),.bnot 7305,.band 7304 7306,.shr 4530 8,.literal (BitVec.ofNat 32 0),.bnot 7309,.bxor 7308 7310,.shr 4530 8,.literal (BitVec.ofNat 32 0),.bnot 7313,.badd 7312 7314,.bnot 7315,.band 7311 7316,.bxor 7307 7317,.shr 7318 31,.literal (BitVec.ofNat 32 1),.bxor 7319 7320,.shr 4582 8,.literal (BitVec.ofNat 32 0),.bnot 7323,.band 7322 7324,.shr 4582 8,.literal (BitVec.ofNat 32 0),.bnot 7327,.bxor 7326 7328,.shr 4582 8,.literal (BitVec.ofNat 32 0),.bnot 7331,.badd 7330 7332,.bnot 7333,.band 7329 7334,.bxor 7325 7335,.shr 7336 31,.literal (BitVec.ofNat 32 1),.bxor 7337 7338,.shr 4634 8,.literal (BitVec.ofNat 32 0),.bnot 7341,.band 7340 7342,.shr 4634 8,.literal (BitVec.ofNat 32 0),.bnot 7345,.bxor 7344 7346,.shr 4634 8,.literal (BitVec.ofNat 32 0)]
theorem partExact112 : partRows112=WordField.rows actualModulus 7286 partOps112 := by
  simp only [partRows112,partOps112,WordField.rows,rows7286,rows7287,rows7288,rows7289,rows7290,rows7291,rows7292,rows7293,rows7294,rows7295,rows7296,rows7297,rows7298,rows7299,rows7300,rows7301,rows7302,rows7303,rows7304,rows7305,rows7306,rows7307,rows7308,rows7309,rows7310,rows7311,rows7312,rows7313,rows7314,rows7315,rows7316,rows7317,rows7318,rows7319,rows7320,rows7321,rows7322,rows7323,rows7324,rows7325,rows7326,rows7327,rows7328,rows7329,rows7330,rows7331,rows7332,rows7333,rows7334,rows7335,rows7336,rows7337,rows7338,rows7339,rows7340,rows7341,rows7342,rows7343,rows7344,rows7345,rows7346,rows7347,rows7348,rows7349,List.append_assoc,List.append_nil]
theorem partLength112 : partOps112.length=64 := by decide
theorem partStats112 : partRows112.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows112=319944 := by
  simp only [partRows112,List.length_append,MatrixRowBlocks.rows_weight_append,stats7286.1,stats7286.2,stats7287.1,stats7287.2,stats7288.1,stats7288.2,stats7289.1,stats7289.2,stats7290.1,stats7290.2,stats7291.1,stats7291.2,stats7292.1,stats7292.2,stats7293.1,stats7293.2,stats7294.1,stats7294.2,stats7295.1,stats7295.2,stats7296.1,stats7296.2,stats7297.1,stats7297.2,stats7298.1,stats7298.2,stats7299.1,stats7299.2,stats7300.1,stats7300.2,stats7301.1,stats7301.2,stats7302.1,stats7302.2,stats7303.1,stats7303.2,stats7304.1,stats7304.2,stats7305.1,stats7305.2,stats7306.1,stats7306.2,stats7307.1,stats7307.2,stats7308.1,stats7308.2,stats7309.1,stats7309.2,stats7310.1,stats7310.2,stats7311.1,stats7311.2,stats7312.1,stats7312.2,stats7313.1,stats7313.2,stats7314.1,stats7314.2,stats7315.1,stats7315.2,stats7316.1,stats7316.2,stats7317.1,stats7317.2,stats7318.1,stats7318.2,stats7319.1,stats7319.2,stats7320.1,stats7320.2,stats7321.1,stats7321.2,stats7322.1,stats7322.2,stats7323.1,stats7323.2,stats7324.1,stats7324.2,stats7325.1,stats7325.2,stats7326.1,stats7326.2,stats7327.1,stats7327.2,stats7328.1,stats7328.2,stats7329.1,stats7329.2,stats7330.1,stats7330.2,stats7331.1,stats7331.2,stats7332.1,stats7332.2,stats7333.1,stats7333.2,stats7334.1,stats7334.2,stats7335.1,stats7335.2,stats7336.1,stats7336.2,stats7337.1,stats7337.2,stats7338.1,stats7338.2,stats7339.1,stats7339.2,stats7340.1,stats7340.2,stats7341.1,stats7341.2,stats7342.1,stats7342.2,stats7343.1,stats7343.2,stats7344.1,stats7344.2,stats7345.1,stats7345.2,stats7346.1,stats7346.2,stats7347.1,stats7347.2,stats7348.1,stats7348.2,stats7349.1,stats7349.2]
  decide
end AuthenticatedBranchRoundCheckedRows
