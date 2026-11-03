import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData207
import AuthenticatedBranchRoundInstructionMatrixData208
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13302 : actualRows13302=WordField.canonicalRows actualModulus 13302 (.bxor 693 13301) := by core033_kernel_decide
theorem stats13302 : actualRows13302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13302=7428 := by core033_kernel_decide
theorem rows13303 : actualRows13303=WordField.canonicalRows actualModulus 13303 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13303 : actualRows13303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13303=2820 := by core033_kernel_decide
theorem rows13304 : actualRows13304=WordField.canonicalRows actualModulus 13304 (.bnot 13303) := by core033_kernel_decide
theorem stats13304 : actualRows13304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13304=6276 := by core033_kernel_decide
theorem rows13305 : actualRows13305=WordField.canonicalRows actualModulus 13305 (.band 13302 13304) := by core033_kernel_decide
theorem stats13305 : actualRows13305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13305=5124 := by core033_kernel_decide
theorem rows13306 : actualRows13306=WordField.canonicalRows actualModulus 13306 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13306 : actualRows13306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13306=2964 := by core033_kernel_decide
theorem rows13307 : actualRows13307=WordField.canonicalRows actualModulus 13307 (.bxor 693 13306) := by core033_kernel_decide
theorem stats13307 : actualRows13307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13307=7428 := by core033_kernel_decide
theorem rows13308 : actualRows13308=WordField.canonicalRows actualModulus 13308 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13308 : actualRows13308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13308=2820 := by core033_kernel_decide
theorem rows13309 : actualRows13309=WordField.canonicalRows actualModulus 13309 (.bnot 13308) := by core033_kernel_decide
theorem stats13309 : actualRows13309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13309=6276 := by core033_kernel_decide
theorem rows13310 : actualRows13310=WordField.canonicalRows actualModulus 13310 (.bxor 13307 13309) := by core033_kernel_decide
theorem stats13310 : actualRows13310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13310=7428 := by core033_kernel_decide
theorem rows13311 : actualRows13311=WordField.canonicalRows actualModulus 13311 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13311 : actualRows13311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13311=2964 := by core033_kernel_decide
theorem rows13312 : actualRows13312=WordField.canonicalRows actualModulus 13312 (.bxor 693 13311) := by core033_kernel_decide
theorem stats13312 : actualRows13312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13312=7428 := by core033_kernel_decide
theorem rows13313 : actualRows13313=WordField.canonicalRows actualModulus 13313 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13313 : actualRows13313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13313=2820 := by core033_kernel_decide
theorem rows13314 : actualRows13314=WordField.canonicalRows actualModulus 13314 (.bnot 13313) := by core033_kernel_decide
theorem stats13314 : actualRows13314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13314=6276 := by core033_kernel_decide
theorem rows13315 : actualRows13315=WordField.canonicalRows actualModulus 13315 (.badd 13312 13314) := by core033_kernel_decide
theorem stats13315 : actualRows13315.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13315=5388 := by core033_kernel_decide
theorem rows13316 : actualRows13316=WordField.canonicalRows actualModulus 13316 (.bnot 13315) := by core033_kernel_decide
theorem stats13316 : actualRows13316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13316=6276 := by core033_kernel_decide
theorem rows13317 : actualRows13317=WordField.canonicalRows actualModulus 13317 (.band 13310 13316) := by core033_kernel_decide
theorem stats13317 : actualRows13317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13317=5124 := by core033_kernel_decide
theorem rows13318 : actualRows13318=WordField.canonicalRows actualModulus 13318 (.bxor 13305 13317) := by core033_kernel_decide
theorem stats13318 : actualRows13318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13318=7428 := by core033_kernel_decide
theorem rows13319 : actualRows13319=WordField.canonicalRows actualModulus 13319 (.shr 13318 31) := by core033_kernel_decide
theorem stats13319 : actualRows13319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13319=2892 := by core033_kernel_decide
theorem rows13320 : actualRows13320=WordField.canonicalRows actualModulus 13320 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13320 : actualRows13320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13320=2892 := by core033_kernel_decide
theorem rows13321 : actualRows13321=WordField.canonicalRows actualModulus 13321 (.bxor 13319 13320) := by core033_kernel_decide
theorem stats13321 : actualRows13321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13321=7428 := by core033_kernel_decide
theorem rows13322 : actualRows13322=WordField.canonicalRows actualModulus 13322 (.bnot 13321) := by core033_kernel_decide
theorem stats13322 : actualRows13322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13322=6276 := by core033_kernel_decide
theorem rows13323 : actualRows13323=WordField.canonicalRows actualModulus 13323 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13323 : actualRows13323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13323=2892 := by core033_kernel_decide
theorem rows13324 : actualRows13324=WordField.canonicalRows actualModulus 13324 (.badd 13322 13323) := by core033_kernel_decide
theorem stats13324 : actualRows13324.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13324=5388 := by core033_kernel_decide
theorem rows13325 : actualRows13325=WordField.canonicalRows actualModulus 13325 (.band 13324 11016) := by core033_kernel_decide
theorem stats13325 : actualRows13325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13325=5124 := by core033_kernel_decide
theorem rows13326 : actualRows13326=WordField.canonicalRows actualModulus 13326 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13326 : actualRows13326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13326=2964 := by core033_kernel_decide
theorem rows13327 : actualRows13327=WordField.canonicalRows actualModulus 13327 (.bxor 693 13326) := by core033_kernel_decide
theorem stats13327 : actualRows13327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13327=7428 := by core033_kernel_decide
theorem rows13328 : actualRows13328=WordField.canonicalRows actualModulus 13328 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13328 : actualRows13328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13328=2820 := by core033_kernel_decide
theorem rows13329 : actualRows13329=WordField.canonicalRows actualModulus 13329 (.bnot 13328) := by core033_kernel_decide
theorem stats13329 : actualRows13329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13329=6276 := by core033_kernel_decide
theorem rows13330 : actualRows13330=WordField.canonicalRows actualModulus 13330 (.band 13327 13329) := by core033_kernel_decide
theorem stats13330 : actualRows13330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13330=5124 := by core033_kernel_decide
theorem rows13331 : actualRows13331=WordField.canonicalRows actualModulus 13331 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13331 : actualRows13331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13331=2964 := by core033_kernel_decide
theorem rows13332 : actualRows13332=WordField.canonicalRows actualModulus 13332 (.bxor 693 13331) := by core033_kernel_decide
theorem stats13332 : actualRows13332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13332=7428 := by core033_kernel_decide
theorem rows13333 : actualRows13333=WordField.canonicalRows actualModulus 13333 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13333 : actualRows13333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13333=2820 := by core033_kernel_decide
theorem rows13334 : actualRows13334=WordField.canonicalRows actualModulus 13334 (.bnot 13333) := by core033_kernel_decide
theorem stats13334 : actualRows13334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13334=6276 := by core033_kernel_decide
theorem rows13335 : actualRows13335=WordField.canonicalRows actualModulus 13335 (.bxor 13332 13334) := by core033_kernel_decide
theorem stats13335 : actualRows13335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13335=7428 := by core033_kernel_decide
theorem rows13336 : actualRows13336=WordField.canonicalRows actualModulus 13336 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13336 : actualRows13336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13336=2964 := by core033_kernel_decide
theorem rows13337 : actualRows13337=WordField.canonicalRows actualModulus 13337 (.bxor 693 13336) := by core033_kernel_decide
theorem stats13337 : actualRows13337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13337=7428 := by core033_kernel_decide
theorem rows13338 : actualRows13338=WordField.canonicalRows actualModulus 13338 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13338 : actualRows13338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13338=2820 := by core033_kernel_decide
theorem rows13339 : actualRows13339=WordField.canonicalRows actualModulus 13339 (.bnot 13338) := by core033_kernel_decide
theorem stats13339 : actualRows13339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13339=6276 := by core033_kernel_decide
theorem rows13340 : actualRows13340=WordField.canonicalRows actualModulus 13340 (.badd 13337 13339) := by core033_kernel_decide
theorem stats13340 : actualRows13340.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13340=5388 := by core033_kernel_decide
theorem rows13341 : actualRows13341=WordField.canonicalRows actualModulus 13341 (.bnot 13340) := by core033_kernel_decide
theorem stats13341 : actualRows13341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13341=6276 := by core033_kernel_decide
theorem rows13342 : actualRows13342=WordField.canonicalRows actualModulus 13342 (.band 13335 13341) := by core033_kernel_decide
theorem stats13342 : actualRows13342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13342=5124 := by core033_kernel_decide
theorem rows13343 : actualRows13343=WordField.canonicalRows actualModulus 13343 (.bxor 13330 13342) := by core033_kernel_decide
theorem stats13343 : actualRows13343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13343=7428 := by core033_kernel_decide
theorem rows13344 : actualRows13344=WordField.canonicalRows actualModulus 13344 (.shr 13343 31) := by core033_kernel_decide
theorem stats13344 : actualRows13344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13344=2892 := by core033_kernel_decide
theorem rows13345 : actualRows13345=WordField.canonicalRows actualModulus 13345 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13345 : actualRows13345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13345=2892 := by core033_kernel_decide
theorem rows13346 : actualRows13346=WordField.canonicalRows actualModulus 13346 (.bxor 13344 13345) := by core033_kernel_decide
theorem stats13346 : actualRows13346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13346=7428 := by core033_kernel_decide
theorem rows13347 : actualRows13347=WordField.canonicalRows actualModulus 13347 (.bnot 13346) := by core033_kernel_decide
theorem stats13347 : actualRows13347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13347=6276 := by core033_kernel_decide
theorem rows13348 : actualRows13348=WordField.canonicalRows actualModulus 13348 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13348 : actualRows13348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13348=2892 := by core033_kernel_decide
theorem rows13349 : actualRows13349=WordField.canonicalRows actualModulus 13349 (.badd 13347 13348) := by core033_kernel_decide
theorem stats13349 : actualRows13349.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13349=5388 := by core033_kernel_decide
theorem rows13350 : actualRows13350=WordField.canonicalRows actualModulus 13350 (.bnot 13349) := by core033_kernel_decide
theorem stats13350 : actualRows13350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13350=6276 := by core033_kernel_decide
theorem rows13351 : actualRows13351=WordField.canonicalRows actualModulus 13351 (.band 13350 10485) := by core033_kernel_decide
theorem stats13351 : actualRows13351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13351=5124 := by core033_kernel_decide
theorem rows13352 : actualRows13352=WordField.canonicalRows actualModulus 13352 (.bxor 13325 13351) := by core033_kernel_decide
theorem stats13352 : actualRows13352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13352=7428 := by core033_kernel_decide
theorem rows13353 : actualRows13353=WordField.canonicalRows actualModulus 13353 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13353 : actualRows13353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13353=2964 := by core033_kernel_decide
theorem rows13354 : actualRows13354=WordField.canonicalRows actualModulus 13354 (.bxor 693 13353) := by core033_kernel_decide
theorem stats13354 : actualRows13354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13354=7428 := by core033_kernel_decide
theorem rows13355 : actualRows13355=WordField.canonicalRows actualModulus 13355 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13355 : actualRows13355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13355=2820 := by core033_kernel_decide
theorem rows13356 : actualRows13356=WordField.canonicalRows actualModulus 13356 (.bnot 13355) := by core033_kernel_decide
theorem stats13356 : actualRows13356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13356=6276 := by core033_kernel_decide
theorem rows13357 : actualRows13357=WordField.canonicalRows actualModulus 13357 (.band 13354 13356) := by core033_kernel_decide
theorem stats13357 : actualRows13357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13357=5124 := by core033_kernel_decide
theorem rows13358 : actualRows13358=WordField.canonicalRows actualModulus 13358 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13358 : actualRows13358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13358=2964 := by core033_kernel_decide
theorem rows13359 : actualRows13359=WordField.canonicalRows actualModulus 13359 (.bxor 693 13358) := by core033_kernel_decide
theorem stats13359 : actualRows13359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13359=7428 := by core033_kernel_decide
theorem rows13360 : actualRows13360=WordField.canonicalRows actualModulus 13360 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13360 : actualRows13360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13360=2820 := by core033_kernel_decide
theorem rows13361 : actualRows13361=WordField.canonicalRows actualModulus 13361 (.bnot 13360) := by core033_kernel_decide
theorem stats13361 : actualRows13361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13361=6276 := by core033_kernel_decide
theorem rows13362 : actualRows13362=WordField.canonicalRows actualModulus 13362 (.bxor 13359 13361) := by core033_kernel_decide
theorem stats13362 : actualRows13362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13362=7428 := by core033_kernel_decide
theorem rows13363 : actualRows13363=WordField.canonicalRows actualModulus 13363 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13363 : actualRows13363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13363=2964 := by core033_kernel_decide
theorem rows13364 : actualRows13364=WordField.canonicalRows actualModulus 13364 (.bxor 693 13363) := by core033_kernel_decide
theorem stats13364 : actualRows13364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13364=7428 := by core033_kernel_decide
theorem rows13365 : actualRows13365=WordField.canonicalRows actualModulus 13365 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13365 : actualRows13365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13365=2820 := by core033_kernel_decide
def partRows206 : List R1CS.Row := actualRows13302++actualRows13303++actualRows13304++actualRows13305++actualRows13306++actualRows13307++actualRows13308++actualRows13309++actualRows13310++actualRows13311++actualRows13312++actualRows13313++actualRows13314++actualRows13315++actualRows13316++actualRows13317++actualRows13318++actualRows13319++actualRows13320++actualRows13321++actualRows13322++actualRows13323++actualRows13324++actualRows13325++actualRows13326++actualRows13327++actualRows13328++actualRows13329++actualRows13330++actualRows13331++actualRows13332++actualRows13333++actualRows13334++actualRows13335++actualRows13336++actualRows13337++actualRows13338++actualRows13339++actualRows13340++actualRows13341++actualRows13342++actualRows13343++actualRows13344++actualRows13345++actualRows13346++actualRows13347++actualRows13348++actualRows13349++actualRows13350++actualRows13351++actualRows13352++actualRows13353++actualRows13354++actualRows13355++actualRows13356++actualRows13357++actualRows13358++actualRows13359++actualRows13360++actualRows13361++actualRows13362++actualRows13363++actualRows13364++actualRows13365
def partOps206 : List WordIR.Op := [.bxor 693 13301,.literal (BitVec.ofNat 32 0),.bnot 13303,.band 13302 13304,.literal (BitVec.ofNat 32 3),.bxor 693 13306,.literal (BitVec.ofNat 32 0),.bnot 13308,.bxor 13307 13309,.literal (BitVec.ofNat 32 3),.bxor 693 13311,.literal (BitVec.ofNat 32 0),.bnot 13313,.badd 13312 13314,.bnot 13315,.band 13310 13316,.bxor 13305 13317,.shr 13318 31,.literal (BitVec.ofNat 32 1),.bxor 13319 13320,.bnot 13321,.literal (BitVec.ofNat 32 1),.badd 13322 13323,.band 13324 11016,.literal (BitVec.ofNat 32 3),.bxor 693 13326,.literal (BitVec.ofNat 32 0),.bnot 13328,.band 13327 13329,.literal (BitVec.ofNat 32 3),.bxor 693 13331,.literal (BitVec.ofNat 32 0),.bnot 13333,.bxor 13332 13334,.literal (BitVec.ofNat 32 3),.bxor 693 13336,.literal (BitVec.ofNat 32 0),.bnot 13338,.badd 13337 13339,.bnot 13340,.band 13335 13341,.bxor 13330 13342,.shr 13343 31,.literal (BitVec.ofNat 32 1),.bxor 13344 13345,.bnot 13346,.literal (BitVec.ofNat 32 1),.badd 13347 13348,.bnot 13349,.band 13350 10485,.bxor 13325 13351,.literal (BitVec.ofNat 32 3),.bxor 693 13353,.literal (BitVec.ofNat 32 0),.bnot 13355,.band 13354 13356,.literal (BitVec.ofNat 32 3),.bxor 693 13358,.literal (BitVec.ofNat 32 0),.bnot 13360,.bxor 13359 13361,.literal (BitVec.ofNat 32 3),.bxor 693 13363,.literal (BitVec.ofNat 32 0)]
theorem partExact206 : partRows206=WordField.rows actualModulus 13302 partOps206 := by
  simp only [partRows206,partOps206,WordField.rows,rows13302,rows13303,rows13304,rows13305,rows13306,rows13307,rows13308,rows13309,rows13310,rows13311,rows13312,rows13313,rows13314,rows13315,rows13316,rows13317,rows13318,rows13319,rows13320,rows13321,rows13322,rows13323,rows13324,rows13325,rows13326,rows13327,rows13328,rows13329,rows13330,rows13331,rows13332,rows13333,rows13334,rows13335,rows13336,rows13337,rows13338,rows13339,rows13340,rows13341,rows13342,rows13343,rows13344,rows13345,rows13346,rows13347,rows13348,rows13349,rows13350,rows13351,rows13352,rows13353,rows13354,rows13355,rows13356,rows13357,rows13358,rows13359,rows13360,rows13361,rows13362,rows13363,rows13364,rows13365,List.append_assoc,List.append_nil]
theorem partLength206 : partOps206.length=64 := by decide
theorem partStats206 : partRows206.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows206=331728 := by
  simp only [partRows206,List.length_append,MatrixRowBlocks.rows_weight_append,stats13302.1,stats13302.2,stats13303.1,stats13303.2,stats13304.1,stats13304.2,stats13305.1,stats13305.2,stats13306.1,stats13306.2,stats13307.1,stats13307.2,stats13308.1,stats13308.2,stats13309.1,stats13309.2,stats13310.1,stats13310.2,stats13311.1,stats13311.2,stats13312.1,stats13312.2,stats13313.1,stats13313.2,stats13314.1,stats13314.2,stats13315.1,stats13315.2,stats13316.1,stats13316.2,stats13317.1,stats13317.2,stats13318.1,stats13318.2,stats13319.1,stats13319.2,stats13320.1,stats13320.2,stats13321.1,stats13321.2,stats13322.1,stats13322.2,stats13323.1,stats13323.2,stats13324.1,stats13324.2,stats13325.1,stats13325.2,stats13326.1,stats13326.2,stats13327.1,stats13327.2,stats13328.1,stats13328.2,stats13329.1,stats13329.2,stats13330.1,stats13330.2,stats13331.1,stats13331.2,stats13332.1,stats13332.2,stats13333.1,stats13333.2,stats13334.1,stats13334.2,stats13335.1,stats13335.2,stats13336.1,stats13336.2,stats13337.1,stats13337.2,stats13338.1,stats13338.2,stats13339.1,stats13339.2,stats13340.1,stats13340.2,stats13341.1,stats13341.2,stats13342.1,stats13342.2,stats13343.1,stats13343.2,stats13344.1,stats13344.2,stats13345.1,stats13345.2,stats13346.1,stats13346.2,stats13347.1,stats13347.2,stats13348.1,stats13348.2,stats13349.1,stats13349.2,stats13350.1,stats13350.2,stats13351.1,stats13351.2,stats13352.1,stats13352.2,stats13353.1,stats13353.2,stats13354.1,stats13354.2,stats13355.1,stats13355.2,stats13356.1,stats13356.2,stats13357.1,stats13357.2,stats13358.1,stats13358.2,stats13359.1,stats13359.2,stats13360.1,stats13360.2,stats13361.1,stats13361.2,stats13362.1,stats13362.2,stats13363.1,stats13363.2,stats13364.1,stats13364.2,stats13365.1,stats13365.2]
  decide
end AuthenticatedBranchRoundCheckedRows
