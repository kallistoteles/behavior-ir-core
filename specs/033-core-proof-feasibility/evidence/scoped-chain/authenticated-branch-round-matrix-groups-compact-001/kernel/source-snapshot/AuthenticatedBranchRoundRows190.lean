import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData191
import AuthenticatedBranchRoundInstructionMatrixData192
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12278 : actualRows12278=WordField.canonicalRows actualModulus 12278 (.bxor 12265 12277) := by core033_kernel_decide
theorem stats12278 : actualRows12278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12278=7428 := by core033_kernel_decide
theorem rows12279 : actualRows12279=WordField.canonicalRows actualModulus 12279 (.shr 12278 31) := by core033_kernel_decide
theorem stats12279 : actualRows12279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12279=2892 := by core033_kernel_decide
theorem rows12280 : actualRows12280=WordField.canonicalRows actualModulus 12280 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12280 : actualRows12280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12280=2892 := by core033_kernel_decide
theorem rows12281 : actualRows12281=WordField.canonicalRows actualModulus 12281 (.bxor 12279 12280) := by core033_kernel_decide
theorem stats12281 : actualRows12281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12281=7428 := by core033_kernel_decide
theorem rows12282 : actualRows12282=WordField.canonicalRows actualModulus 12282 (.bnot 12281) := by core033_kernel_decide
theorem stats12282 : actualRows12282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12282=6276 := by core033_kernel_decide
theorem rows12283 : actualRows12283=WordField.canonicalRows actualModulus 12283 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12283 : actualRows12283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12283=2892 := by core033_kernel_decide
theorem rows12284 : actualRows12284=WordField.canonicalRows actualModulus 12284 (.badd 12282 12283) := by core033_kernel_decide
theorem stats12284 : actualRows12284.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12284=5388 := by core033_kernel_decide
theorem rows12285 : actualRows12285=WordField.canonicalRows actualModulus 12285 (.band 12284 11124) := by core033_kernel_decide
theorem stats12285 : actualRows12285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12285=5124 := by core033_kernel_decide
theorem rows12286 : actualRows12286=WordField.canonicalRows actualModulus 12286 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12286 : actualRows12286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12286=2964 := by core033_kernel_decide
theorem rows12287 : actualRows12287=WordField.canonicalRows actualModulus 12287 (.bxor 693 12286) := by core033_kernel_decide
theorem stats12287 : actualRows12287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12287=7428 := by core033_kernel_decide
theorem rows12288 : actualRows12288=WordField.canonicalRows actualModulus 12288 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12288 : actualRows12288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12288=2820 := by core033_kernel_decide
theorem rows12289 : actualRows12289=WordField.canonicalRows actualModulus 12289 (.bnot 12288) := by core033_kernel_decide
theorem stats12289 : actualRows12289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12289=6276 := by core033_kernel_decide
theorem rows12290 : actualRows12290=WordField.canonicalRows actualModulus 12290 (.band 12287 12289) := by core033_kernel_decide
theorem stats12290 : actualRows12290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12290=5124 := by core033_kernel_decide
theorem rows12291 : actualRows12291=WordField.canonicalRows actualModulus 12291 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12291 : actualRows12291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12291=2964 := by core033_kernel_decide
theorem rows12292 : actualRows12292=WordField.canonicalRows actualModulus 12292 (.bxor 693 12291) := by core033_kernel_decide
theorem stats12292 : actualRows12292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12292=7428 := by core033_kernel_decide
theorem rows12293 : actualRows12293=WordField.canonicalRows actualModulus 12293 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12293 : actualRows12293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12293=2820 := by core033_kernel_decide
theorem rows12294 : actualRows12294=WordField.canonicalRows actualModulus 12294 (.bnot 12293) := by core033_kernel_decide
theorem stats12294 : actualRows12294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12294=6276 := by core033_kernel_decide
theorem rows12295 : actualRows12295=WordField.canonicalRows actualModulus 12295 (.bxor 12292 12294) := by core033_kernel_decide
theorem stats12295 : actualRows12295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12295=7428 := by core033_kernel_decide
theorem rows12296 : actualRows12296=WordField.canonicalRows actualModulus 12296 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12296 : actualRows12296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12296=2964 := by core033_kernel_decide
theorem rows12297 : actualRows12297=WordField.canonicalRows actualModulus 12297 (.bxor 693 12296) := by core033_kernel_decide
theorem stats12297 : actualRows12297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12297=7428 := by core033_kernel_decide
theorem rows12298 : actualRows12298=WordField.canonicalRows actualModulus 12298 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12298 : actualRows12298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12298=2820 := by core033_kernel_decide
theorem rows12299 : actualRows12299=WordField.canonicalRows actualModulus 12299 (.bnot 12298) := by core033_kernel_decide
theorem stats12299 : actualRows12299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12299=6276 := by core033_kernel_decide
theorem rows12300 : actualRows12300=WordField.canonicalRows actualModulus 12300 (.badd 12297 12299) := by core033_kernel_decide
theorem stats12300 : actualRows12300.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12300=5388 := by core033_kernel_decide
theorem rows12301 : actualRows12301=WordField.canonicalRows actualModulus 12301 (.bnot 12300) := by core033_kernel_decide
theorem stats12301 : actualRows12301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12301=6276 := by core033_kernel_decide
theorem rows12302 : actualRows12302=WordField.canonicalRows actualModulus 12302 (.band 12295 12301) := by core033_kernel_decide
theorem stats12302 : actualRows12302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12302=5124 := by core033_kernel_decide
theorem rows12303 : actualRows12303=WordField.canonicalRows actualModulus 12303 (.bxor 12290 12302) := by core033_kernel_decide
theorem stats12303 : actualRows12303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12303=7428 := by core033_kernel_decide
theorem rows12304 : actualRows12304=WordField.canonicalRows actualModulus 12304 (.shr 12303 31) := by core033_kernel_decide
theorem stats12304 : actualRows12304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12304=2892 := by core033_kernel_decide
theorem rows12305 : actualRows12305=WordField.canonicalRows actualModulus 12305 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12305 : actualRows12305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12305=2892 := by core033_kernel_decide
theorem rows12306 : actualRows12306=WordField.canonicalRows actualModulus 12306 (.bxor 12304 12305) := by core033_kernel_decide
theorem stats12306 : actualRows12306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12306=7428 := by core033_kernel_decide
theorem rows12307 : actualRows12307=WordField.canonicalRows actualModulus 12307 (.bnot 12306) := by core033_kernel_decide
theorem stats12307 : actualRows12307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12307=6276 := by core033_kernel_decide
theorem rows12308 : actualRows12308=WordField.canonicalRows actualModulus 12308 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12308 : actualRows12308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12308=2892 := by core033_kernel_decide
theorem rows12309 : actualRows12309=WordField.canonicalRows actualModulus 12309 (.badd 12307 12308) := by core033_kernel_decide
theorem stats12309 : actualRows12309.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12309=5388 := by core033_kernel_decide
theorem rows12310 : actualRows12310=WordField.canonicalRows actualModulus 12310 (.bnot 12309) := by core033_kernel_decide
theorem stats12310 : actualRows12310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12310=6276 := by core033_kernel_decide
theorem rows12311 : actualRows12311=WordField.canonicalRows actualModulus 12311 (.band 12310 1475) := by core033_kernel_decide
theorem stats12311 : actualRows12311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12311=5124 := by core033_kernel_decide
theorem rows12312 : actualRows12312=WordField.canonicalRows actualModulus 12312 (.bxor 12285 12311) := by core033_kernel_decide
theorem stats12312 : actualRows12312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12312=7428 := by core033_kernel_decide
theorem rows12313 : actualRows12313=WordField.canonicalRows actualModulus 12313 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12313 : actualRows12313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12313=2964 := by core033_kernel_decide
theorem rows12314 : actualRows12314=WordField.canonicalRows actualModulus 12314 (.bxor 693 12313) := by core033_kernel_decide
theorem stats12314 : actualRows12314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12314=7428 := by core033_kernel_decide
theorem rows12315 : actualRows12315=WordField.canonicalRows actualModulus 12315 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12315 : actualRows12315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12315=2820 := by core033_kernel_decide
theorem rows12316 : actualRows12316=WordField.canonicalRows actualModulus 12316 (.bnot 12315) := by core033_kernel_decide
theorem stats12316 : actualRows12316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12316=6276 := by core033_kernel_decide
theorem rows12317 : actualRows12317=WordField.canonicalRows actualModulus 12317 (.band 12314 12316) := by core033_kernel_decide
theorem stats12317 : actualRows12317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12317=5124 := by core033_kernel_decide
theorem rows12318 : actualRows12318=WordField.canonicalRows actualModulus 12318 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12318 : actualRows12318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12318=2964 := by core033_kernel_decide
theorem rows12319 : actualRows12319=WordField.canonicalRows actualModulus 12319 (.bxor 693 12318) := by core033_kernel_decide
theorem stats12319 : actualRows12319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12319=7428 := by core033_kernel_decide
theorem rows12320 : actualRows12320=WordField.canonicalRows actualModulus 12320 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12320 : actualRows12320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12320=2820 := by core033_kernel_decide
theorem rows12321 : actualRows12321=WordField.canonicalRows actualModulus 12321 (.bnot 12320) := by core033_kernel_decide
theorem stats12321 : actualRows12321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12321=6276 := by core033_kernel_decide
theorem rows12322 : actualRows12322=WordField.canonicalRows actualModulus 12322 (.bxor 12319 12321) := by core033_kernel_decide
theorem stats12322 : actualRows12322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12322=7428 := by core033_kernel_decide
theorem rows12323 : actualRows12323=WordField.canonicalRows actualModulus 12323 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12323 : actualRows12323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12323=2964 := by core033_kernel_decide
theorem rows12324 : actualRows12324=WordField.canonicalRows actualModulus 12324 (.bxor 693 12323) := by core033_kernel_decide
theorem stats12324 : actualRows12324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12324=7428 := by core033_kernel_decide
theorem rows12325 : actualRows12325=WordField.canonicalRows actualModulus 12325 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12325 : actualRows12325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12325=2820 := by core033_kernel_decide
theorem rows12326 : actualRows12326=WordField.canonicalRows actualModulus 12326 (.bnot 12325) := by core033_kernel_decide
theorem stats12326 : actualRows12326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12326=6276 := by core033_kernel_decide
theorem rows12327 : actualRows12327=WordField.canonicalRows actualModulus 12327 (.badd 12324 12326) := by core033_kernel_decide
theorem stats12327 : actualRows12327.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12327=5388 := by core033_kernel_decide
theorem rows12328 : actualRows12328=WordField.canonicalRows actualModulus 12328 (.bnot 12327) := by core033_kernel_decide
theorem stats12328 : actualRows12328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12328=6276 := by core033_kernel_decide
theorem rows12329 : actualRows12329=WordField.canonicalRows actualModulus 12329 (.band 12322 12328) := by core033_kernel_decide
theorem stats12329 : actualRows12329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12329=5124 := by core033_kernel_decide
theorem rows12330 : actualRows12330=WordField.canonicalRows actualModulus 12330 (.bxor 12317 12329) := by core033_kernel_decide
theorem stats12330 : actualRows12330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12330=7428 := by core033_kernel_decide
theorem rows12331 : actualRows12331=WordField.canonicalRows actualModulus 12331 (.shr 12330 31) := by core033_kernel_decide
theorem stats12331 : actualRows12331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12331=2892 := by core033_kernel_decide
theorem rows12332 : actualRows12332=WordField.canonicalRows actualModulus 12332 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12332 : actualRows12332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12332=2892 := by core033_kernel_decide
theorem rows12333 : actualRows12333=WordField.canonicalRows actualModulus 12333 (.bxor 12331 12332) := by core033_kernel_decide
theorem stats12333 : actualRows12333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12333=7428 := by core033_kernel_decide
theorem rows12334 : actualRows12334=WordField.canonicalRows actualModulus 12334 (.bnot 12333) := by core033_kernel_decide
theorem stats12334 : actualRows12334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12334=6276 := by core033_kernel_decide
theorem rows12335 : actualRows12335=WordField.canonicalRows actualModulus 12335 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12335 : actualRows12335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12335=2892 := by core033_kernel_decide
theorem rows12336 : actualRows12336=WordField.canonicalRows actualModulus 12336 (.badd 12334 12335) := by core033_kernel_decide
theorem stats12336 : actualRows12336.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12336=5388 := by core033_kernel_decide
theorem rows12337 : actualRows12337=WordField.canonicalRows actualModulus 12337 (.band 12336 11131) := by core033_kernel_decide
theorem stats12337 : actualRows12337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12337=5124 := by core033_kernel_decide
theorem rows12338 : actualRows12338=WordField.canonicalRows actualModulus 12338 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12338 : actualRows12338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12338=2964 := by core033_kernel_decide
theorem rows12339 : actualRows12339=WordField.canonicalRows actualModulus 12339 (.bxor 693 12338) := by core033_kernel_decide
theorem stats12339 : actualRows12339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12339=7428 := by core033_kernel_decide
theorem rows12340 : actualRows12340=WordField.canonicalRows actualModulus 12340 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12340 : actualRows12340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12340=2820 := by core033_kernel_decide
theorem rows12341 : actualRows12341=WordField.canonicalRows actualModulus 12341 (.bnot 12340) := by core033_kernel_decide
theorem stats12341 : actualRows12341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12341=6276 := by core033_kernel_decide
def partRows190 : List R1CS.Row := actualRows12278++actualRows12279++actualRows12280++actualRows12281++actualRows12282++actualRows12283++actualRows12284++actualRows12285++actualRows12286++actualRows12287++actualRows12288++actualRows12289++actualRows12290++actualRows12291++actualRows12292++actualRows12293++actualRows12294++actualRows12295++actualRows12296++actualRows12297++actualRows12298++actualRows12299++actualRows12300++actualRows12301++actualRows12302++actualRows12303++actualRows12304++actualRows12305++actualRows12306++actualRows12307++actualRows12308++actualRows12309++actualRows12310++actualRows12311++actualRows12312++actualRows12313++actualRows12314++actualRows12315++actualRows12316++actualRows12317++actualRows12318++actualRows12319++actualRows12320++actualRows12321++actualRows12322++actualRows12323++actualRows12324++actualRows12325++actualRows12326++actualRows12327++actualRows12328++actualRows12329++actualRows12330++actualRows12331++actualRows12332++actualRows12333++actualRows12334++actualRows12335++actualRows12336++actualRows12337++actualRows12338++actualRows12339++actualRows12340++actualRows12341
def partOps190 : List WordIR.Op := [.bxor 12265 12277,.shr 12278 31,.literal (BitVec.ofNat 32 1),.bxor 12279 12280,.bnot 12281,.literal (BitVec.ofNat 32 1),.badd 12282 12283,.band 12284 11124,.literal (BitVec.ofNat 32 3),.bxor 693 12286,.literal (BitVec.ofNat 32 0),.bnot 12288,.band 12287 12289,.literal (BitVec.ofNat 32 3),.bxor 693 12291,.literal (BitVec.ofNat 32 0),.bnot 12293,.bxor 12292 12294,.literal (BitVec.ofNat 32 3),.bxor 693 12296,.literal (BitVec.ofNat 32 0),.bnot 12298,.badd 12297 12299,.bnot 12300,.band 12295 12301,.bxor 12290 12302,.shr 12303 31,.literal (BitVec.ofNat 32 1),.bxor 12304 12305,.bnot 12306,.literal (BitVec.ofNat 32 1),.badd 12307 12308,.bnot 12309,.band 12310 1475,.bxor 12285 12311,.literal (BitVec.ofNat 32 3),.bxor 693 12313,.literal (BitVec.ofNat 32 0),.bnot 12315,.band 12314 12316,.literal (BitVec.ofNat 32 3),.bxor 693 12318,.literal (BitVec.ofNat 32 0),.bnot 12320,.bxor 12319 12321,.literal (BitVec.ofNat 32 3),.bxor 693 12323,.literal (BitVec.ofNat 32 0),.bnot 12325,.badd 12324 12326,.bnot 12327,.band 12322 12328,.bxor 12317 12329,.shr 12330 31,.literal (BitVec.ofNat 32 1),.bxor 12331 12332,.bnot 12333,.literal (BitVec.ofNat 32 1),.badd 12334 12335,.band 12336 11131,.literal (BitVec.ofNat 32 3),.bxor 693 12338,.literal (BitVec.ofNat 32 0),.bnot 12340]
theorem partExact190 : partRows190=WordField.rows actualModulus 12278 partOps190 := by
  simp only [partRows190,partOps190,WordField.rows,rows12278,rows12279,rows12280,rows12281,rows12282,rows12283,rows12284,rows12285,rows12286,rows12287,rows12288,rows12289,rows12290,rows12291,rows12292,rows12293,rows12294,rows12295,rows12296,rows12297,rows12298,rows12299,rows12300,rows12301,rows12302,rows12303,rows12304,rows12305,rows12306,rows12307,rows12308,rows12309,rows12310,rows12311,rows12312,rows12313,rows12314,rows12315,rows12316,rows12317,rows12318,rows12319,rows12320,rows12321,rows12322,rows12323,rows12324,rows12325,rows12326,rows12327,rows12328,rows12329,rows12330,rows12331,rows12332,rows12333,rows12334,rows12335,rows12336,rows12337,rows12338,rows12339,rows12340,rows12341,List.append_assoc,List.append_nil]
theorem partLength190 : partOps190.length=64 := by decide
theorem partStats190 : partRows190.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows190=329760 := by
  simp only [partRows190,List.length_append,MatrixRowBlocks.rows_weight_append,stats12278.1,stats12278.2,stats12279.1,stats12279.2,stats12280.1,stats12280.2,stats12281.1,stats12281.2,stats12282.1,stats12282.2,stats12283.1,stats12283.2,stats12284.1,stats12284.2,stats12285.1,stats12285.2,stats12286.1,stats12286.2,stats12287.1,stats12287.2,stats12288.1,stats12288.2,stats12289.1,stats12289.2,stats12290.1,stats12290.2,stats12291.1,stats12291.2,stats12292.1,stats12292.2,stats12293.1,stats12293.2,stats12294.1,stats12294.2,stats12295.1,stats12295.2,stats12296.1,stats12296.2,stats12297.1,stats12297.2,stats12298.1,stats12298.2,stats12299.1,stats12299.2,stats12300.1,stats12300.2,stats12301.1,stats12301.2,stats12302.1,stats12302.2,stats12303.1,stats12303.2,stats12304.1,stats12304.2,stats12305.1,stats12305.2,stats12306.1,stats12306.2,stats12307.1,stats12307.2,stats12308.1,stats12308.2,stats12309.1,stats12309.2,stats12310.1,stats12310.2,stats12311.1,stats12311.2,stats12312.1,stats12312.2,stats12313.1,stats12313.2,stats12314.1,stats12314.2,stats12315.1,stats12315.2,stats12316.1,stats12316.2,stats12317.1,stats12317.2,stats12318.1,stats12318.2,stats12319.1,stats12319.2,stats12320.1,stats12320.2,stats12321.1,stats12321.2,stats12322.1,stats12322.2,stats12323.1,stats12323.2,stats12324.1,stats12324.2,stats12325.1,stats12325.2,stats12326.1,stats12326.2,stats12327.1,stats12327.2,stats12328.1,stats12328.2,stats12329.1,stats12329.2,stats12330.1,stats12330.2,stats12331.1,stats12331.2,stats12332.1,stats12332.2,stats12333.1,stats12333.2,stats12334.1,stats12334.2,stats12335.1,stats12335.2,stats12336.1,stats12336.2,stats12337.1,stats12337.2,stats12338.1,stats12338.2,stats12339.1,stats12339.2,stats12340.1,stats12340.2,stats12341.1,stats12341.2]
  decide
end AuthenticatedBranchRoundCheckedRows
