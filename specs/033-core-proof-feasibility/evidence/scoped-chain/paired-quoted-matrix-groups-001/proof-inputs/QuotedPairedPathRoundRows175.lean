import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData176
import PairedPathRoundInstructionMatrixData177
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11296 : actualRows11296=WordField.canonicalRows actualModulus 11296 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11296 : actualRows11296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11296=2964 := by core033_kernel_decide
theorem rows11297 : actualRows11297=WordField.canonicalRows actualModulus 11297 (.bxor 442 11296) := by core033_kernel_decide
theorem stats11297 : actualRows11297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11297=7428 := by core033_kernel_decide
theorem rows11298 : actualRows11298=WordField.canonicalRows actualModulus 11298 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11298 : actualRows11298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11298=2820 := by core033_kernel_decide
theorem rows11299 : actualRows11299=WordField.canonicalRows actualModulus 11299 (.bnot 11298) := by core033_kernel_decide
theorem stats11299 : actualRows11299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11299=6276 := by core033_kernel_decide
theorem rows11300 : actualRows11300=WordField.canonicalRows actualModulus 11300 (.bxor 11297 11299) := by core033_kernel_decide
theorem stats11300 : actualRows11300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11300=7428 := by core033_kernel_decide
theorem rows11301 : actualRows11301=WordField.canonicalRows actualModulus 11301 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11301 : actualRows11301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11301=2964 := by core033_kernel_decide
theorem rows11302 : actualRows11302=WordField.canonicalRows actualModulus 11302 (.bxor 442 11301) := by core033_kernel_decide
theorem stats11302 : actualRows11302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11302=7428 := by core033_kernel_decide
theorem rows11303 : actualRows11303=WordField.canonicalRows actualModulus 11303 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11303 : actualRows11303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11303=2820 := by core033_kernel_decide
theorem rows11304 : actualRows11304=WordField.canonicalRows actualModulus 11304 (.bnot 11303) := by core033_kernel_decide
theorem stats11304 : actualRows11304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11304=6276 := by core033_kernel_decide
theorem rows11305 : actualRows11305=WordField.canonicalRows actualModulus 11305 (.badd 11302 11304) := by core033_kernel_decide
theorem stats11305 : actualRows11305.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11305=5388 := by core033_kernel_decide
theorem rows11306 : actualRows11306=WordField.canonicalRows actualModulus 11306 (.bnot 11305) := by core033_kernel_decide
theorem stats11306 : actualRows11306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11306=6276 := by core033_kernel_decide
theorem rows11307 : actualRows11307=WordField.canonicalRows actualModulus 11307 (.band 11300 11306) := by core033_kernel_decide
theorem stats11307 : actualRows11307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11307=5124 := by core033_kernel_decide
theorem rows11308 : actualRows11308=WordField.canonicalRows actualModulus 11308 (.bxor 11295 11307) := by core033_kernel_decide
theorem stats11308 : actualRows11308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11308=7428 := by core033_kernel_decide
theorem rows11309 : actualRows11309=WordField.canonicalRows actualModulus 11309 (.shr 11308 31) := by core033_kernel_decide
theorem stats11309 : actualRows11309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11309=2892 := by core033_kernel_decide
theorem rows11310 : actualRows11310=WordField.canonicalRows actualModulus 11310 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11310 : actualRows11310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11310=2892 := by core033_kernel_decide
theorem rows11311 : actualRows11311=WordField.canonicalRows actualModulus 11311 (.bxor 11309 11310) := by core033_kernel_decide
theorem stats11311 : actualRows11311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11311=7428 := by core033_kernel_decide
theorem rows11312 : actualRows11312=WordField.canonicalRows actualModulus 11312 (.bnot 11311) := by core033_kernel_decide
theorem stats11312 : actualRows11312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11312=6276 := by core033_kernel_decide
theorem rows11313 : actualRows11313=WordField.canonicalRows actualModulus 11313 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11313 : actualRows11313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11313=2892 := by core033_kernel_decide
theorem rows11314 : actualRows11314=WordField.canonicalRows actualModulus 11314 (.badd 11312 11313) := by core033_kernel_decide
theorem stats11314 : actualRows11314.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11314=5388 := by core033_kernel_decide
theorem rows11315 : actualRows11315=WordField.canonicalRows actualModulus 11315 (.bnot 11314) := by core033_kernel_decide
theorem stats11315 : actualRows11315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11315=6276 := by core033_kernel_decide
theorem rows11316 : actualRows11316=WordField.canonicalRows actualModulus 11316 (.band 11315 726) := by core033_kernel_decide
theorem stats11316 : actualRows11316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11316=5124 := by core033_kernel_decide
theorem rows11317 : actualRows11317=WordField.canonicalRows actualModulus 11317 (.bxor 11290 11316) := by core033_kernel_decide
theorem stats11317 : actualRows11317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11317=7428 := by core033_kernel_decide
theorem rows11318 : actualRows11318=WordField.canonicalRows actualModulus 11318 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11318 : actualRows11318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11318=2964 := by core033_kernel_decide
theorem rows11319 : actualRows11319=WordField.canonicalRows actualModulus 11319 (.bxor 442 11318) := by core033_kernel_decide
theorem stats11319 : actualRows11319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11319=7428 := by core033_kernel_decide
theorem rows11320 : actualRows11320=WordField.canonicalRows actualModulus 11320 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11320 : actualRows11320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11320=2820 := by core033_kernel_decide
theorem rows11321 : actualRows11321=WordField.canonicalRows actualModulus 11321 (.bnot 11320) := by core033_kernel_decide
theorem stats11321 : actualRows11321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11321=6276 := by core033_kernel_decide
theorem rows11322 : actualRows11322=WordField.canonicalRows actualModulus 11322 (.band 11319 11321) := by core033_kernel_decide
theorem stats11322 : actualRows11322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11322=5124 := by core033_kernel_decide
theorem rows11323 : actualRows11323=WordField.canonicalRows actualModulus 11323 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11323 : actualRows11323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11323=2964 := by core033_kernel_decide
theorem rows11324 : actualRows11324=WordField.canonicalRows actualModulus 11324 (.bxor 442 11323) := by core033_kernel_decide
theorem stats11324 : actualRows11324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11324=7428 := by core033_kernel_decide
theorem rows11325 : actualRows11325=WordField.canonicalRows actualModulus 11325 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11325 : actualRows11325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11325=2820 := by core033_kernel_decide
theorem rows11326 : actualRows11326=WordField.canonicalRows actualModulus 11326 (.bnot 11325) := by core033_kernel_decide
theorem stats11326 : actualRows11326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11326=6276 := by core033_kernel_decide
theorem rows11327 : actualRows11327=WordField.canonicalRows actualModulus 11327 (.bxor 11324 11326) := by core033_kernel_decide
theorem stats11327 : actualRows11327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11327=7428 := by core033_kernel_decide
theorem rows11328 : actualRows11328=WordField.canonicalRows actualModulus 11328 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11328 : actualRows11328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11328=2964 := by core033_kernel_decide
theorem rows11329 : actualRows11329=WordField.canonicalRows actualModulus 11329 (.bxor 442 11328) := by core033_kernel_decide
theorem stats11329 : actualRows11329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11329=7428 := by core033_kernel_decide
theorem rows11330 : actualRows11330=WordField.canonicalRows actualModulus 11330 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11330 : actualRows11330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11330=2820 := by core033_kernel_decide
theorem rows11331 : actualRows11331=WordField.canonicalRows actualModulus 11331 (.bnot 11330) := by core033_kernel_decide
theorem stats11331 : actualRows11331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11331=6276 := by core033_kernel_decide
theorem rows11332 : actualRows11332=WordField.canonicalRows actualModulus 11332 (.badd 11329 11331) := by core033_kernel_decide
theorem stats11332 : actualRows11332.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11332=5388 := by core033_kernel_decide
theorem rows11333 : actualRows11333=WordField.canonicalRows actualModulus 11333 (.bnot 11332) := by core033_kernel_decide
theorem stats11333 : actualRows11333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11333=6276 := by core033_kernel_decide
theorem rows11334 : actualRows11334=WordField.canonicalRows actualModulus 11334 (.band 11327 11333) := by core033_kernel_decide
theorem stats11334 : actualRows11334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11334=5124 := by core033_kernel_decide
theorem rows11335 : actualRows11335=WordField.canonicalRows actualModulus 11335 (.bxor 11322 11334) := by core033_kernel_decide
theorem stats11335 : actualRows11335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11335=7428 := by core033_kernel_decide
theorem rows11336 : actualRows11336=WordField.canonicalRows actualModulus 11336 (.shr 11335 31) := by core033_kernel_decide
theorem stats11336 : actualRows11336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11336=2892 := by core033_kernel_decide
theorem rows11337 : actualRows11337=WordField.canonicalRows actualModulus 11337 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11337 : actualRows11337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11337=2892 := by core033_kernel_decide
theorem rows11338 : actualRows11338=WordField.canonicalRows actualModulus 11338 (.bxor 11336 11337) := by core033_kernel_decide
theorem stats11338 : actualRows11338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11338=7428 := by core033_kernel_decide
theorem rows11339 : actualRows11339=WordField.canonicalRows actualModulus 11339 (.bnot 11338) := by core033_kernel_decide
theorem stats11339 : actualRows11339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11339=6276 := by core033_kernel_decide
theorem rows11340 : actualRows11340=WordField.canonicalRows actualModulus 11340 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11340 : actualRows11340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11340=2892 := by core033_kernel_decide
theorem rows11341 : actualRows11341=WordField.canonicalRows actualModulus 11341 (.badd 11339 11340) := by core033_kernel_decide
theorem stats11341 : actualRows11341.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11341=5388 := by core033_kernel_decide
theorem rows11342 : actualRows11342=WordField.canonicalRows actualModulus 11342 (.band 11341 10406) := by core033_kernel_decide
theorem stats11342 : actualRows11342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11342=5124 := by core033_kernel_decide
theorem rows11343 : actualRows11343=WordField.canonicalRows actualModulus 11343 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11343 : actualRows11343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11343=2964 := by core033_kernel_decide
theorem rows11344 : actualRows11344=WordField.canonicalRows actualModulus 11344 (.bxor 442 11343) := by core033_kernel_decide
theorem stats11344 : actualRows11344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11344=7428 := by core033_kernel_decide
theorem rows11345 : actualRows11345=WordField.canonicalRows actualModulus 11345 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11345 : actualRows11345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11345=2820 := by core033_kernel_decide
theorem rows11346 : actualRows11346=WordField.canonicalRows actualModulus 11346 (.bnot 11345) := by core033_kernel_decide
theorem stats11346 : actualRows11346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11346=6276 := by core033_kernel_decide
theorem rows11347 : actualRows11347=WordField.canonicalRows actualModulus 11347 (.band 11344 11346) := by core033_kernel_decide
theorem stats11347 : actualRows11347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11347=5124 := by core033_kernel_decide
theorem rows11348 : actualRows11348=WordField.canonicalRows actualModulus 11348 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11348 : actualRows11348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11348=2964 := by core033_kernel_decide
theorem rows11349 : actualRows11349=WordField.canonicalRows actualModulus 11349 (.bxor 442 11348) := by core033_kernel_decide
theorem stats11349 : actualRows11349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11349=7428 := by core033_kernel_decide
theorem rows11350 : actualRows11350=WordField.canonicalRows actualModulus 11350 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11350 : actualRows11350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11350=2820 := by core033_kernel_decide
theorem rows11351 : actualRows11351=WordField.canonicalRows actualModulus 11351 (.bnot 11350) := by core033_kernel_decide
theorem stats11351 : actualRows11351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11351=6276 := by core033_kernel_decide
theorem rows11352 : actualRows11352=WordField.canonicalRows actualModulus 11352 (.bxor 11349 11351) := by core033_kernel_decide
theorem stats11352 : actualRows11352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11352=7428 := by core033_kernel_decide
theorem rows11353 : actualRows11353=WordField.canonicalRows actualModulus 11353 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11353 : actualRows11353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11353=2964 := by core033_kernel_decide
theorem rows11354 : actualRows11354=WordField.canonicalRows actualModulus 11354 (.bxor 442 11353) := by core033_kernel_decide
theorem stats11354 : actualRows11354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11354=7428 := by core033_kernel_decide
theorem rows11355 : actualRows11355=WordField.canonicalRows actualModulus 11355 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11355 : actualRows11355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11355=2820 := by core033_kernel_decide
theorem rows11356 : actualRows11356=WordField.canonicalRows actualModulus 11356 (.bnot 11355) := by core033_kernel_decide
theorem stats11356 : actualRows11356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11356=6276 := by core033_kernel_decide
theorem rows11357 : actualRows11357=WordField.canonicalRows actualModulus 11357 (.badd 11354 11356) := by core033_kernel_decide
theorem stats11357 : actualRows11357.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11357=5388 := by core033_kernel_decide
theorem rows11358 : actualRows11358=WordField.canonicalRows actualModulus 11358 (.bnot 11357) := by core033_kernel_decide
theorem stats11358 : actualRows11358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11358=6276 := by core033_kernel_decide
theorem rows11359 : actualRows11359=WordField.canonicalRows actualModulus 11359 (.band 11352 11358) := by core033_kernel_decide
theorem stats11359 : actualRows11359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11359=5124 := by core033_kernel_decide
def partRows175 : List R1CS.Row := actualRows11296++actualRows11297++actualRows11298++actualRows11299++actualRows11300++actualRows11301++actualRows11302++actualRows11303++actualRows11304++actualRows11305++actualRows11306++actualRows11307++actualRows11308++actualRows11309++actualRows11310++actualRows11311++actualRows11312++actualRows11313++actualRows11314++actualRows11315++actualRows11316++actualRows11317++actualRows11318++actualRows11319++actualRows11320++actualRows11321++actualRows11322++actualRows11323++actualRows11324++actualRows11325++actualRows11326++actualRows11327++actualRows11328++actualRows11329++actualRows11330++actualRows11331++actualRows11332++actualRows11333++actualRows11334++actualRows11335++actualRows11336++actualRows11337++actualRows11338++actualRows11339++actualRows11340++actualRows11341++actualRows11342++actualRows11343++actualRows11344++actualRows11345++actualRows11346++actualRows11347++actualRows11348++actualRows11349++actualRows11350++actualRows11351++actualRows11352++actualRows11353++actualRows11354++actualRows11355++actualRows11356++actualRows11357++actualRows11358++actualRows11359
def partOps175 : List WordIR.Op := [.literal (BitVec.ofNat 32 3),.bxor 442 11296,.literal (BitVec.ofNat 32 0),.bnot 11298,.bxor 11297 11299,.literal (BitVec.ofNat 32 3),.bxor 442 11301,.literal (BitVec.ofNat 32 0),.bnot 11303,.badd 11302 11304,.bnot 11305,.band 11300 11306,.bxor 11295 11307,.shr 11308 31,.literal (BitVec.ofNat 32 1),.bxor 11309 11310,.bnot 11311,.literal (BitVec.ofNat 32 1),.badd 11312 11313,.bnot 11314,.band 11315 726,.bxor 11290 11316,.literal (BitVec.ofNat 32 3),.bxor 442 11318,.literal (BitVec.ofNat 32 0),.bnot 11320,.band 11319 11321,.literal (BitVec.ofNat 32 3),.bxor 442 11323,.literal (BitVec.ofNat 32 0),.bnot 11325,.bxor 11324 11326,.literal (BitVec.ofNat 32 3),.bxor 442 11328,.literal (BitVec.ofNat 32 0),.bnot 11330,.badd 11329 11331,.bnot 11332,.band 11327 11333,.bxor 11322 11334,.shr 11335 31,.literal (BitVec.ofNat 32 1),.bxor 11336 11337,.bnot 11338,.literal (BitVec.ofNat 32 1),.badd 11339 11340,.band 11341 10406,.literal (BitVec.ofNat 32 3),.bxor 442 11343,.literal (BitVec.ofNat 32 0),.bnot 11345,.band 11344 11346,.literal (BitVec.ofNat 32 3),.bxor 442 11348,.literal (BitVec.ofNat 32 0),.bnot 11350,.bxor 11349 11351,.literal (BitVec.ofNat 32 3),.bxor 442 11353,.literal (BitVec.ofNat 32 0),.bnot 11355,.badd 11354 11356,.bnot 11357,.band 11352 11358]
theorem partExact175 : partRows175=WordField.rows actualModulus 11296 partOps175 := by
  simp only [partRows175,partOps175,WordField.rows,rows11296,rows11297,rows11298,rows11299,rows11300,rows11301,rows11302,rows11303,rows11304,rows11305,rows11306,rows11307,rows11308,rows11309,rows11310,rows11311,rows11312,rows11313,rows11314,rows11315,rows11316,rows11317,rows11318,rows11319,rows11320,rows11321,rows11322,rows11323,rows11324,rows11325,rows11326,rows11327,rows11328,rows11329,rows11330,rows11331,rows11332,rows11333,rows11334,rows11335,rows11336,rows11337,rows11338,rows11339,rows11340,rows11341,rows11342,rows11343,rows11344,rows11345,rows11346,rows11347,rows11348,rows11349,rows11350,rows11351,rows11352,rows11353,rows11354,rows11355,rows11356,rows11357,rows11358,rows11359,List.append_assoc,List.append_nil]
theorem partLength175 : partOps175.length=64 := by decide
theorem partStats175 : partRows175.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows175=333144 := by
  simp only [partRows175,List.length_append,MatrixRowBlocks.rows_weight_append,stats11296.1,stats11296.2,stats11297.1,stats11297.2,stats11298.1,stats11298.2,stats11299.1,stats11299.2,stats11300.1,stats11300.2,stats11301.1,stats11301.2,stats11302.1,stats11302.2,stats11303.1,stats11303.2,stats11304.1,stats11304.2,stats11305.1,stats11305.2,stats11306.1,stats11306.2,stats11307.1,stats11307.2,stats11308.1,stats11308.2,stats11309.1,stats11309.2,stats11310.1,stats11310.2,stats11311.1,stats11311.2,stats11312.1,stats11312.2,stats11313.1,stats11313.2,stats11314.1,stats11314.2,stats11315.1,stats11315.2,stats11316.1,stats11316.2,stats11317.1,stats11317.2,stats11318.1,stats11318.2,stats11319.1,stats11319.2,stats11320.1,stats11320.2,stats11321.1,stats11321.2,stats11322.1,stats11322.2,stats11323.1,stats11323.2,stats11324.1,stats11324.2,stats11325.1,stats11325.2,stats11326.1,stats11326.2,stats11327.1,stats11327.2,stats11328.1,stats11328.2,stats11329.1,stats11329.2,stats11330.1,stats11330.2,stats11331.1,stats11331.2,stats11332.1,stats11332.2,stats11333.1,stats11333.2,stats11334.1,stats11334.2,stats11335.1,stats11335.2,stats11336.1,stats11336.2,stats11337.1,stats11337.2,stats11338.1,stats11338.2,stats11339.1,stats11339.2,stats11340.1,stats11340.2,stats11341.1,stats11341.2,stats11342.1,stats11342.2,stats11343.1,stats11343.2,stats11344.1,stats11344.2,stats11345.1,stats11345.2,stats11346.1,stats11346.2,stats11347.1,stats11347.2,stats11348.1,stats11348.2,stats11349.1,stats11349.2,stats11350.1,stats11350.2,stats11351.1,stats11351.2,stats11352.1,stats11352.2,stats11353.1,stats11353.2,stats11354.1,stats11354.2,stats11355.1,stats11355.2,stats11356.1,stats11356.2,stats11357.1,stats11357.2,stats11358.1,stats11358.2,stats11359.1,stats11359.2]
  decide
end QuotedPairedPathRoundCheckedRows
