import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData160
import PathRoundDispatchInstructionMatrixData161
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10283 : actualRows10283=WordField.canonicalRows actualModulus 10283 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10283 : actualRows10283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10283=2964 := by core033_kernel_decide
theorem rows10284 : actualRows10284=WordField.canonicalRows actualModulus 10284 (.bxor 0 10283) := by core033_kernel_decide
theorem stats10284 : actualRows10284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10284=7428 := by core033_kernel_decide
theorem rows10285 : actualRows10285=WordField.canonicalRows actualModulus 10285 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10285 : actualRows10285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10285=2820 := by core033_kernel_decide
theorem rows10286 : actualRows10286=WordField.canonicalRows actualModulus 10286 (.bnot 10285) := by core033_kernel_decide
theorem stats10286 : actualRows10286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10286=6276 := by core033_kernel_decide
theorem rows10287 : actualRows10287=WordField.canonicalRows actualModulus 10287 (.bxor 10284 10286) := by core033_kernel_decide
theorem stats10287 : actualRows10287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10287=7428 := by core033_kernel_decide
theorem rows10288 : actualRows10288=WordField.canonicalRows actualModulus 10288 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10288 : actualRows10288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10288=2964 := by core033_kernel_decide
theorem rows10289 : actualRows10289=WordField.canonicalRows actualModulus 10289 (.bxor 0 10288) := by core033_kernel_decide
theorem stats10289 : actualRows10289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10289=7428 := by core033_kernel_decide
theorem rows10290 : actualRows10290=WordField.canonicalRows actualModulus 10290 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10290 : actualRows10290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10290=2820 := by core033_kernel_decide
theorem rows10291 : actualRows10291=WordField.canonicalRows actualModulus 10291 (.bnot 10290) := by core033_kernel_decide
theorem stats10291 : actualRows10291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10291=6276 := by core033_kernel_decide
theorem rows10292 : actualRows10292=WordField.canonicalRows actualModulus 10292 (.badd 10289 10291) := by core033_kernel_decide
theorem stats10292 : actualRows10292.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10292=5388 := by core033_kernel_decide
theorem rows10293 : actualRows10293=WordField.canonicalRows actualModulus 10293 (.bnot 10292) := by core033_kernel_decide
theorem stats10293 : actualRows10293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10293=6276 := by core033_kernel_decide
theorem rows10294 : actualRows10294=WordField.canonicalRows actualModulus 10294 (.band 10287 10293) := by core033_kernel_decide
theorem stats10294 : actualRows10294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10294=5124 := by core033_kernel_decide
theorem rows10295 : actualRows10295=WordField.canonicalRows actualModulus 10295 (.bxor 10282 10294) := by core033_kernel_decide
theorem stats10295 : actualRows10295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10295=7428 := by core033_kernel_decide
theorem rows10296 : actualRows10296=WordField.canonicalRows actualModulus 10296 (.shr 10295 31) := by core033_kernel_decide
theorem stats10296 : actualRows10296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10296=2892 := by core033_kernel_decide
theorem rows10297 : actualRows10297=WordField.canonicalRows actualModulus 10297 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10297 : actualRows10297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10297=2892 := by core033_kernel_decide
theorem rows10298 : actualRows10298=WordField.canonicalRows actualModulus 10298 (.bxor 10296 10297) := by core033_kernel_decide
theorem stats10298 : actualRows10298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10298=7428 := by core033_kernel_decide
theorem rows10299 : actualRows10299=WordField.canonicalRows actualModulus 10299 (.bnot 10298) := by core033_kernel_decide
theorem stats10299 : actualRows10299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10299=6276 := by core033_kernel_decide
theorem rows10300 : actualRows10300=WordField.canonicalRows actualModulus 10300 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10300 : actualRows10300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10300=2892 := by core033_kernel_decide
theorem rows10301 : actualRows10301=WordField.canonicalRows actualModulus 10301 (.badd 10299 10300) := by core033_kernel_decide
theorem stats10301 : actualRows10301.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10301=5388 := by core033_kernel_decide
theorem rows10302 : actualRows10302=WordField.canonicalRows actualModulus 10302 (.band 10301 9428) := by core033_kernel_decide
theorem stats10302 : actualRows10302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10302=5124 := by core033_kernel_decide
theorem rows10303 : actualRows10303=WordField.canonicalRows actualModulus 10303 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10303 : actualRows10303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10303=2964 := by core033_kernel_decide
theorem rows10304 : actualRows10304=WordField.canonicalRows actualModulus 10304 (.bxor 0 10303) := by core033_kernel_decide
theorem stats10304 : actualRows10304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10304=7428 := by core033_kernel_decide
theorem rows10305 : actualRows10305=WordField.canonicalRows actualModulus 10305 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10305 : actualRows10305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10305=2820 := by core033_kernel_decide
theorem rows10306 : actualRows10306=WordField.canonicalRows actualModulus 10306 (.bnot 10305) := by core033_kernel_decide
theorem stats10306 : actualRows10306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10306=6276 := by core033_kernel_decide
theorem rows10307 : actualRows10307=WordField.canonicalRows actualModulus 10307 (.band 10304 10306) := by core033_kernel_decide
theorem stats10307 : actualRows10307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10307=5124 := by core033_kernel_decide
theorem rows10308 : actualRows10308=WordField.canonicalRows actualModulus 10308 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10308 : actualRows10308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10308=2964 := by core033_kernel_decide
theorem rows10309 : actualRows10309=WordField.canonicalRows actualModulus 10309 (.bxor 0 10308) := by core033_kernel_decide
theorem stats10309 : actualRows10309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10309=7428 := by core033_kernel_decide
theorem rows10310 : actualRows10310=WordField.canonicalRows actualModulus 10310 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10310 : actualRows10310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10310=2820 := by core033_kernel_decide
theorem rows10311 : actualRows10311=WordField.canonicalRows actualModulus 10311 (.bnot 10310) := by core033_kernel_decide
theorem stats10311 : actualRows10311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10311=6276 := by core033_kernel_decide
theorem rows10312 : actualRows10312=WordField.canonicalRows actualModulus 10312 (.bxor 10309 10311) := by core033_kernel_decide
theorem stats10312 : actualRows10312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10312=7428 := by core033_kernel_decide
theorem rows10313 : actualRows10313=WordField.canonicalRows actualModulus 10313 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10313 : actualRows10313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10313=2964 := by core033_kernel_decide
theorem rows10314 : actualRows10314=WordField.canonicalRows actualModulus 10314 (.bxor 0 10313) := by core033_kernel_decide
theorem stats10314 : actualRows10314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10314=7428 := by core033_kernel_decide
theorem rows10315 : actualRows10315=WordField.canonicalRows actualModulus 10315 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10315 : actualRows10315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10315=2820 := by core033_kernel_decide
theorem rows10316 : actualRows10316=WordField.canonicalRows actualModulus 10316 (.bnot 10315) := by core033_kernel_decide
theorem stats10316 : actualRows10316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10316=6276 := by core033_kernel_decide
theorem rows10317 : actualRows10317=WordField.canonicalRows actualModulus 10317 (.badd 10314 10316) := by core033_kernel_decide
theorem stats10317 : actualRows10317.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10317=5388 := by core033_kernel_decide
theorem rows10318 : actualRows10318=WordField.canonicalRows actualModulus 10318 (.bnot 10317) := by core033_kernel_decide
theorem stats10318 : actualRows10318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10318=6276 := by core033_kernel_decide
theorem rows10319 : actualRows10319=WordField.canonicalRows actualModulus 10319 (.band 10312 10318) := by core033_kernel_decide
theorem stats10319 : actualRows10319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10319=5124 := by core033_kernel_decide
theorem rows10320 : actualRows10320=WordField.canonicalRows actualModulus 10320 (.bxor 10307 10319) := by core033_kernel_decide
theorem stats10320 : actualRows10320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10320=7428 := by core033_kernel_decide
theorem rows10321 : actualRows10321=WordField.canonicalRows actualModulus 10321 (.shr 10320 31) := by core033_kernel_decide
theorem stats10321 : actualRows10321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10321=2892 := by core033_kernel_decide
theorem rows10322 : actualRows10322=WordField.canonicalRows actualModulus 10322 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10322 : actualRows10322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10322=2892 := by core033_kernel_decide
theorem rows10323 : actualRows10323=WordField.canonicalRows actualModulus 10323 (.bxor 10321 10322) := by core033_kernel_decide
theorem stats10323 : actualRows10323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10323=7428 := by core033_kernel_decide
theorem rows10324 : actualRows10324=WordField.canonicalRows actualModulus 10324 (.bnot 10323) := by core033_kernel_decide
theorem stats10324 : actualRows10324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10324=6276 := by core033_kernel_decide
theorem rows10325 : actualRows10325=WordField.canonicalRows actualModulus 10325 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10325 : actualRows10325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10325=2892 := by core033_kernel_decide
theorem rows10326 : actualRows10326=WordField.canonicalRows actualModulus 10326 (.badd 10324 10325) := by core033_kernel_decide
theorem stats10326 : actualRows10326.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10326=5388 := by core033_kernel_decide
theorem rows10327 : actualRows10327=WordField.canonicalRows actualModulus 10327 (.bnot 10326) := by core033_kernel_decide
theorem stats10327 : actualRows10327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10327=6276 := by core033_kernel_decide
theorem rows10328 : actualRows10328=WordField.canonicalRows actualModulus 10328 (.band 10327 107) := by core033_kernel_decide
theorem stats10328 : actualRows10328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10328=5124 := by core033_kernel_decide
theorem rows10329 : actualRows10329=WordField.canonicalRows actualModulus 10329 (.bxor 10302 10328) := by core033_kernel_decide
theorem stats10329 : actualRows10329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10329=7428 := by core033_kernel_decide
theorem rows10330 : actualRows10330=WordField.canonicalRows actualModulus 10330 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10330 : actualRows10330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10330=2964 := by core033_kernel_decide
theorem rows10331 : actualRows10331=WordField.canonicalRows actualModulus 10331 (.bxor 0 10330) := by core033_kernel_decide
theorem stats10331 : actualRows10331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10331=7428 := by core033_kernel_decide
theorem rows10332 : actualRows10332=WordField.canonicalRows actualModulus 10332 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10332 : actualRows10332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10332=2820 := by core033_kernel_decide
theorem rows10333 : actualRows10333=WordField.canonicalRows actualModulus 10333 (.bnot 10332) := by core033_kernel_decide
theorem stats10333 : actualRows10333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10333=6276 := by core033_kernel_decide
theorem rows10334 : actualRows10334=WordField.canonicalRows actualModulus 10334 (.band 10331 10333) := by core033_kernel_decide
theorem stats10334 : actualRows10334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10334=5124 := by core033_kernel_decide
theorem rows10335 : actualRows10335=WordField.canonicalRows actualModulus 10335 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10335 : actualRows10335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10335=2964 := by core033_kernel_decide
theorem rows10336 : actualRows10336=WordField.canonicalRows actualModulus 10336 (.bxor 0 10335) := by core033_kernel_decide
theorem stats10336 : actualRows10336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10336=7428 := by core033_kernel_decide
theorem rows10337 : actualRows10337=WordField.canonicalRows actualModulus 10337 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10337 : actualRows10337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10337=2820 := by core033_kernel_decide
theorem rows10338 : actualRows10338=WordField.canonicalRows actualModulus 10338 (.bnot 10337) := by core033_kernel_decide
theorem stats10338 : actualRows10338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10338=6276 := by core033_kernel_decide
theorem rows10339 : actualRows10339=WordField.canonicalRows actualModulus 10339 (.bxor 10336 10338) := by core033_kernel_decide
theorem stats10339 : actualRows10339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10339=7428 := by core033_kernel_decide
theorem rows10340 : actualRows10340=WordField.canonicalRows actualModulus 10340 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10340 : actualRows10340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10340=2964 := by core033_kernel_decide
theorem rows10341 : actualRows10341=WordField.canonicalRows actualModulus 10341 (.bxor 0 10340) := by core033_kernel_decide
theorem stats10341 : actualRows10341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10341=7428 := by core033_kernel_decide
theorem rows10342 : actualRows10342=WordField.canonicalRows actualModulus 10342 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10342 : actualRows10342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10342=2820 := by core033_kernel_decide
theorem rows10343 : actualRows10343=WordField.canonicalRows actualModulus 10343 (.bnot 10342) := by core033_kernel_decide
theorem stats10343 : actualRows10343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10343=6276 := by core033_kernel_decide
theorem rows10344 : actualRows10344=WordField.canonicalRows actualModulus 10344 (.badd 10341 10343) := by core033_kernel_decide
theorem stats10344 : actualRows10344.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10344=5388 := by core033_kernel_decide
theorem rows10345 : actualRows10345=WordField.canonicalRows actualModulus 10345 (.bnot 10344) := by core033_kernel_decide
theorem stats10345 : actualRows10345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10345=6276 := by core033_kernel_decide
theorem rows10346 : actualRows10346=WordField.canonicalRows actualModulus 10346 (.band 10339 10345) := by core033_kernel_decide
theorem stats10346 : actualRows10346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10346=5124 := by core033_kernel_decide
def partRows160 : List R1CS.Row := actualRows10283++actualRows10284++actualRows10285++actualRows10286++actualRows10287++actualRows10288++actualRows10289++actualRows10290++actualRows10291++actualRows10292++actualRows10293++actualRows10294++actualRows10295++actualRows10296++actualRows10297++actualRows10298++actualRows10299++actualRows10300++actualRows10301++actualRows10302++actualRows10303++actualRows10304++actualRows10305++actualRows10306++actualRows10307++actualRows10308++actualRows10309++actualRows10310++actualRows10311++actualRows10312++actualRows10313++actualRows10314++actualRows10315++actualRows10316++actualRows10317++actualRows10318++actualRows10319++actualRows10320++actualRows10321++actualRows10322++actualRows10323++actualRows10324++actualRows10325++actualRows10326++actualRows10327++actualRows10328++actualRows10329++actualRows10330++actualRows10331++actualRows10332++actualRows10333++actualRows10334++actualRows10335++actualRows10336++actualRows10337++actualRows10338++actualRows10339++actualRows10340++actualRows10341++actualRows10342++actualRows10343++actualRows10344++actualRows10345++actualRows10346
def partOps160 : List WordIR.Op := [.literal (BitVec.ofNat 32 3),.bxor 0 10283,.literal (BitVec.ofNat 32 0),.bnot 10285,.bxor 10284 10286,.literal (BitVec.ofNat 32 3),.bxor 0 10288,.literal (BitVec.ofNat 32 0),.bnot 10290,.badd 10289 10291,.bnot 10292,.band 10287 10293,.bxor 10282 10294,.shr 10295 31,.literal (BitVec.ofNat 32 1),.bxor 10296 10297,.bnot 10298,.literal (BitVec.ofNat 32 1),.badd 10299 10300,.band 10301 9428,.literal (BitVec.ofNat 32 3),.bxor 0 10303,.literal (BitVec.ofNat 32 0),.bnot 10305,.band 10304 10306,.literal (BitVec.ofNat 32 3),.bxor 0 10308,.literal (BitVec.ofNat 32 0),.bnot 10310,.bxor 10309 10311,.literal (BitVec.ofNat 32 3),.bxor 0 10313,.literal (BitVec.ofNat 32 0),.bnot 10315,.badd 10314 10316,.bnot 10317,.band 10312 10318,.bxor 10307 10319,.shr 10320 31,.literal (BitVec.ofNat 32 1),.bxor 10321 10322,.bnot 10323,.literal (BitVec.ofNat 32 1),.badd 10324 10325,.bnot 10326,.band 10327 107,.bxor 10302 10328,.literal (BitVec.ofNat 32 3),.bxor 0 10330,.literal (BitVec.ofNat 32 0),.bnot 10332,.band 10331 10333,.literal (BitVec.ofNat 32 3),.bxor 0 10335,.literal (BitVec.ofNat 32 0),.bnot 10337,.bxor 10336 10338,.literal (BitVec.ofNat 32 3),.bxor 0 10340,.literal (BitVec.ofNat 32 0),.bnot 10342,.badd 10341 10343,.bnot 10344,.band 10339 10345]
theorem partExact160 : partRows160=WordField.rows actualModulus 10283 partOps160 := by
  simp only [partRows160,partOps160,WordField.rows,rows10283,rows10284,rows10285,rows10286,rows10287,rows10288,rows10289,rows10290,rows10291,rows10292,rows10293,rows10294,rows10295,rows10296,rows10297,rows10298,rows10299,rows10300,rows10301,rows10302,rows10303,rows10304,rows10305,rows10306,rows10307,rows10308,rows10309,rows10310,rows10311,rows10312,rows10313,rows10314,rows10315,rows10316,rows10317,rows10318,rows10319,rows10320,rows10321,rows10322,rows10323,rows10324,rows10325,rows10326,rows10327,rows10328,rows10329,rows10330,rows10331,rows10332,rows10333,rows10334,rows10335,rows10336,rows10337,rows10338,rows10339,rows10340,rows10341,rows10342,rows10343,rows10344,rows10345,rows10346,List.append_assoc,List.append_nil]
theorem partLength160 : partOps160.length=64 := by decide
theorem partStats160 : partRows160.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows160=333144 := by
  simp only [partRows160,List.length_append,MatrixRowBlocks.rows_weight_append,stats10283.1,stats10283.2,stats10284.1,stats10284.2,stats10285.1,stats10285.2,stats10286.1,stats10286.2,stats10287.1,stats10287.2,stats10288.1,stats10288.2,stats10289.1,stats10289.2,stats10290.1,stats10290.2,stats10291.1,stats10291.2,stats10292.1,stats10292.2,stats10293.1,stats10293.2,stats10294.1,stats10294.2,stats10295.1,stats10295.2,stats10296.1,stats10296.2,stats10297.1,stats10297.2,stats10298.1,stats10298.2,stats10299.1,stats10299.2,stats10300.1,stats10300.2,stats10301.1,stats10301.2,stats10302.1,stats10302.2,stats10303.1,stats10303.2,stats10304.1,stats10304.2,stats10305.1,stats10305.2,stats10306.1,stats10306.2,stats10307.1,stats10307.2,stats10308.1,stats10308.2,stats10309.1,stats10309.2,stats10310.1,stats10310.2,stats10311.1,stats10311.2,stats10312.1,stats10312.2,stats10313.1,stats10313.2,stats10314.1,stats10314.2,stats10315.1,stats10315.2,stats10316.1,stats10316.2,stats10317.1,stats10317.2,stats10318.1,stats10318.2,stats10319.1,stats10319.2,stats10320.1,stats10320.2,stats10321.1,stats10321.2,stats10322.1,stats10322.2,stats10323.1,stats10323.2,stats10324.1,stats10324.2,stats10325.1,stats10325.2,stats10326.1,stats10326.2,stats10327.1,stats10327.2,stats10328.1,stats10328.2,stats10329.1,stats10329.2,stats10330.1,stats10330.2,stats10331.1,stats10331.2,stats10332.1,stats10332.2,stats10333.1,stats10333.2,stats10334.1,stats10334.2,stats10335.1,stats10335.2,stats10336.1,stats10336.2,stats10337.1,stats10337.2,stats10338.1,stats10338.2,stats10339.1,stats10339.2,stats10340.1,stats10340.2,stats10341.1,stats10341.2,stats10342.1,stats10342.2,stats10343.1,stats10343.2,stats10344.1,stats10344.2,stats10345.1,stats10345.2,stats10346.1,stats10346.2]
  decide
end PathRoundDispatchCheckedRows
