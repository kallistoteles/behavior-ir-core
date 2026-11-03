import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData160
import AuthenticatedBranchRoundInstructionMatrixData161
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10294 : actualRows10294=WordField.canonicalRows actualModulus 10294 (.badd 10185 10281) := by core033_kernel_decide
theorem stats10294 : actualRows10294.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10294=5388 := by core033_kernel_decide
theorem rows10295 : actualRows10295=WordField.canonicalRows actualModulus 10295 (.rotr 10294 6) := by core033_kernel_decide
theorem stats10295 : actualRows10295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10295=5124 := by core033_kernel_decide
theorem rows10296 : actualRows10296=WordField.canonicalRows actualModulus 10296 (.rotr 10294 11) := by core033_kernel_decide
theorem stats10296 : actualRows10296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10296=5124 := by core033_kernel_decide
theorem rows10297 : actualRows10297=WordField.canonicalRows actualModulus 10297 (.bxor 10295 10296) := by core033_kernel_decide
theorem stats10297 : actualRows10297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10297=7428 := by core033_kernel_decide
theorem rows10298 : actualRows10298=WordField.canonicalRows actualModulus 10298 (.rotr 10294 25) := by core033_kernel_decide
theorem stats10298 : actualRows10298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10298=5124 := by core033_kernel_decide
theorem rows10299 : actualRows10299=WordField.canonicalRows actualModulus 10299 (.bxor 10297 10298) := by core033_kernel_decide
theorem stats10299 : actualRows10299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10299=7428 := by core033_kernel_decide
theorem rows10300 : actualRows10300=WordField.canonicalRows actualModulus 10300 (.badd 10213 10299) := by core033_kernel_decide
theorem stats10300 : actualRows10300.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10300=5388 := by core033_kernel_decide
theorem rows10301 : actualRows10301=WordField.canonicalRows actualModulus 10301 (.band 10294 10267) := by core033_kernel_decide
theorem stats10301 : actualRows10301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10301=5124 := by core033_kernel_decide
theorem rows10302 : actualRows10302=WordField.canonicalRows actualModulus 10302 (.bnot 10294) := by core033_kernel_decide
theorem stats10302 : actualRows10302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10302=6276 := by core033_kernel_decide
theorem rows10303 : actualRows10303=WordField.canonicalRows actualModulus 10303 (.band 10302 10240) := by core033_kernel_decide
theorem stats10303 : actualRows10303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10303=5124 := by core033_kernel_decide
theorem rows10304 : actualRows10304=WordField.canonicalRows actualModulus 10304 (.bxor 10301 10303) := by core033_kernel_decide
theorem stats10304 : actualRows10304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10304=7428 := by core033_kernel_decide
theorem rows10305 : actualRows10305=WordField.canonicalRows actualModulus 10305 (.badd 10300 10304) := by core033_kernel_decide
theorem stats10305 : actualRows10305.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10305=5388 := by core033_kernel_decide
theorem rows10306 : actualRows10306=WordField.canonicalRows actualModulus 10306 (.literal (BitVec.ofNat 32 2024104815)) := by core033_kernel_decide
theorem stats10306 : actualRows10306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10306=4116 := by core033_kernel_decide
theorem rows10307 : actualRows10307=WordField.canonicalRows actualModulus 10307 (.badd 10305 10306) := by core033_kernel_decide
theorem stats10307 : actualRows10307.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10307=5388 := by core033_kernel_decide
theorem rows10308 : actualRows10308=WordField.canonicalRows actualModulus 10308 (.badd 10307 8677) := by core033_kernel_decide
theorem stats10308 : actualRows10308.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10308=5388 := by core033_kernel_decide
theorem rows10309 : actualRows10309=WordField.canonicalRows actualModulus 10309 (.rotr 10293 2) := by core033_kernel_decide
theorem stats10309 : actualRows10309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10309=5124 := by core033_kernel_decide
theorem rows10310 : actualRows10310=WordField.canonicalRows actualModulus 10310 (.rotr 10293 13) := by core033_kernel_decide
theorem stats10310 : actualRows10310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10310=5124 := by core033_kernel_decide
theorem rows10311 : actualRows10311=WordField.canonicalRows actualModulus 10311 (.bxor 10309 10310) := by core033_kernel_decide
theorem stats10311 : actualRows10311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10311=7428 := by core033_kernel_decide
theorem rows10312 : actualRows10312=WordField.canonicalRows actualModulus 10312 (.rotr 10293 22) := by core033_kernel_decide
theorem stats10312 : actualRows10312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10312=5124 := by core033_kernel_decide
theorem rows10313 : actualRows10313=WordField.canonicalRows actualModulus 10313 (.bxor 10311 10312) := by core033_kernel_decide
theorem stats10313 : actualRows10313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10313=7428 := by core033_kernel_decide
theorem rows10314 : actualRows10314=WordField.canonicalRows actualModulus 10314 (.band 10293 10266) := by core033_kernel_decide
theorem stats10314 : actualRows10314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10314=5124 := by core033_kernel_decide
theorem rows10315 : actualRows10315=WordField.canonicalRows actualModulus 10315 (.band 10293 10239) := by core033_kernel_decide
theorem stats10315 : actualRows10315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10315=5124 := by core033_kernel_decide
theorem rows10316 : actualRows10316=WordField.canonicalRows actualModulus 10316 (.bxor 10314 10315) := by core033_kernel_decide
theorem stats10316 : actualRows10316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10316=7428 := by core033_kernel_decide
theorem rows10317 : actualRows10317=WordField.canonicalRows actualModulus 10317 (.band 10266 10239) := by core033_kernel_decide
theorem stats10317 : actualRows10317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10317=5124 := by core033_kernel_decide
theorem rows10318 : actualRows10318=WordField.canonicalRows actualModulus 10318 (.bxor 10316 10317) := by core033_kernel_decide
theorem stats10318 : actualRows10318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10318=7428 := by core033_kernel_decide
theorem rows10319 : actualRows10319=WordField.canonicalRows actualModulus 10319 (.badd 10313 10318) := by core033_kernel_decide
theorem stats10319 : actualRows10319.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10319=5388 := by core033_kernel_decide
theorem rows10320 : actualRows10320=WordField.canonicalRows actualModulus 10320 (.badd 10308 10319) := by core033_kernel_decide
theorem stats10320 : actualRows10320.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10320=5388 := by core033_kernel_decide
theorem rows10321 : actualRows10321=WordField.canonicalRows actualModulus 10321 (.badd 10212 10308) := by core033_kernel_decide
theorem stats10321 : actualRows10321.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10321=5388 := by core033_kernel_decide
theorem rows10322 : actualRows10322=WordField.canonicalRows actualModulus 10322 (.rotr 10321 6) := by core033_kernel_decide
theorem stats10322 : actualRows10322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10322=5124 := by core033_kernel_decide
theorem rows10323 : actualRows10323=WordField.canonicalRows actualModulus 10323 (.rotr 10321 11) := by core033_kernel_decide
theorem stats10323 : actualRows10323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10323=5124 := by core033_kernel_decide
theorem rows10324 : actualRows10324=WordField.canonicalRows actualModulus 10324 (.bxor 10322 10323) := by core033_kernel_decide
theorem stats10324 : actualRows10324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10324=7428 := by core033_kernel_decide
theorem rows10325 : actualRows10325=WordField.canonicalRows actualModulus 10325 (.rotr 10321 25) := by core033_kernel_decide
theorem stats10325 : actualRows10325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10325=5124 := by core033_kernel_decide
theorem rows10326 : actualRows10326=WordField.canonicalRows actualModulus 10326 (.bxor 10324 10325) := by core033_kernel_decide
theorem stats10326 : actualRows10326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10326=7428 := by core033_kernel_decide
theorem rows10327 : actualRows10327=WordField.canonicalRows actualModulus 10327 (.badd 10240 10326) := by core033_kernel_decide
theorem stats10327 : actualRows10327.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10327=5388 := by core033_kernel_decide
theorem rows10328 : actualRows10328=WordField.canonicalRows actualModulus 10328 (.band 10321 10294) := by core033_kernel_decide
theorem stats10328 : actualRows10328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10328=5124 := by core033_kernel_decide
theorem rows10329 : actualRows10329=WordField.canonicalRows actualModulus 10329 (.bnot 10321) := by core033_kernel_decide
theorem stats10329 : actualRows10329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10329=6276 := by core033_kernel_decide
theorem rows10330 : actualRows10330=WordField.canonicalRows actualModulus 10330 (.band 10329 10267) := by core033_kernel_decide
theorem stats10330 : actualRows10330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10330=5124 := by core033_kernel_decide
theorem rows10331 : actualRows10331=WordField.canonicalRows actualModulus 10331 (.bxor 10328 10330) := by core033_kernel_decide
theorem stats10331 : actualRows10331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10331=7428 := by core033_kernel_decide
theorem rows10332 : actualRows10332=WordField.canonicalRows actualModulus 10332 (.badd 10327 10331) := by core033_kernel_decide
theorem stats10332 : actualRows10332.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10332=5388 := by core033_kernel_decide
theorem rows10333 : actualRows10333=WordField.canonicalRows actualModulus 10333 (.literal (BitVec.ofNat 32 2227730452)) := by core033_kernel_decide
theorem stats10333 : actualRows10333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10333=3612 := by core033_kernel_decide
theorem rows10334 : actualRows10334=WordField.canonicalRows actualModulus 10334 (.badd 10332 10333) := by core033_kernel_decide
theorem stats10334 : actualRows10334.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10334=5388 := by core033_kernel_decide
theorem rows10335 : actualRows10335=WordField.canonicalRows actualModulus 10335 (.badd 10334 8690) := by core033_kernel_decide
theorem stats10335 : actualRows10335.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10335=5388 := by core033_kernel_decide
theorem rows10336 : actualRows10336=WordField.canonicalRows actualModulus 10336 (.rotr 10320 2) := by core033_kernel_decide
theorem stats10336 : actualRows10336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10336=5124 := by core033_kernel_decide
theorem rows10337 : actualRows10337=WordField.canonicalRows actualModulus 10337 (.rotr 10320 13) := by core033_kernel_decide
theorem stats10337 : actualRows10337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10337=5124 := by core033_kernel_decide
theorem rows10338 : actualRows10338=WordField.canonicalRows actualModulus 10338 (.bxor 10336 10337) := by core033_kernel_decide
theorem stats10338 : actualRows10338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10338=7428 := by core033_kernel_decide
theorem rows10339 : actualRows10339=WordField.canonicalRows actualModulus 10339 (.rotr 10320 22) := by core033_kernel_decide
theorem stats10339 : actualRows10339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10339=5124 := by core033_kernel_decide
theorem rows10340 : actualRows10340=WordField.canonicalRows actualModulus 10340 (.bxor 10338 10339) := by core033_kernel_decide
theorem stats10340 : actualRows10340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10340=7428 := by core033_kernel_decide
theorem rows10341 : actualRows10341=WordField.canonicalRows actualModulus 10341 (.band 10320 10293) := by core033_kernel_decide
theorem stats10341 : actualRows10341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10341=5124 := by core033_kernel_decide
theorem rows10342 : actualRows10342=WordField.canonicalRows actualModulus 10342 (.band 10320 10266) := by core033_kernel_decide
theorem stats10342 : actualRows10342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10342=5124 := by core033_kernel_decide
theorem rows10343 : actualRows10343=WordField.canonicalRows actualModulus 10343 (.bxor 10341 10342) := by core033_kernel_decide
theorem stats10343 : actualRows10343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10343=7428 := by core033_kernel_decide
theorem rows10344 : actualRows10344=WordField.canonicalRows actualModulus 10344 (.band 10293 10266) := by core033_kernel_decide
theorem stats10344 : actualRows10344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10344=5124 := by core033_kernel_decide
theorem rows10345 : actualRows10345=WordField.canonicalRows actualModulus 10345 (.bxor 10343 10344) := by core033_kernel_decide
theorem stats10345 : actualRows10345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10345=7428 := by core033_kernel_decide
theorem rows10346 : actualRows10346=WordField.canonicalRows actualModulus 10346 (.badd 10340 10345) := by core033_kernel_decide
theorem stats10346 : actualRows10346.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10346=5388 := by core033_kernel_decide
theorem rows10347 : actualRows10347=WordField.canonicalRows actualModulus 10347 (.badd 10335 10346) := by core033_kernel_decide
theorem stats10347 : actualRows10347.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10347=5388 := by core033_kernel_decide
theorem rows10348 : actualRows10348=WordField.canonicalRows actualModulus 10348 (.badd 10239 10335) := by core033_kernel_decide
theorem stats10348 : actualRows10348.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10348=5388 := by core033_kernel_decide
theorem rows10349 : actualRows10349=WordField.canonicalRows actualModulus 10349 (.rotr 10348 6) := by core033_kernel_decide
theorem stats10349 : actualRows10349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10349=5124 := by core033_kernel_decide
theorem rows10350 : actualRows10350=WordField.canonicalRows actualModulus 10350 (.rotr 10348 11) := by core033_kernel_decide
theorem stats10350 : actualRows10350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10350=5124 := by core033_kernel_decide
theorem rows10351 : actualRows10351=WordField.canonicalRows actualModulus 10351 (.bxor 10349 10350) := by core033_kernel_decide
theorem stats10351 : actualRows10351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10351=7428 := by core033_kernel_decide
theorem rows10352 : actualRows10352=WordField.canonicalRows actualModulus 10352 (.rotr 10348 25) := by core033_kernel_decide
theorem stats10352 : actualRows10352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10352=5124 := by core033_kernel_decide
theorem rows10353 : actualRows10353=WordField.canonicalRows actualModulus 10353 (.bxor 10351 10352) := by core033_kernel_decide
theorem stats10353 : actualRows10353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10353=7428 := by core033_kernel_decide
theorem rows10354 : actualRows10354=WordField.canonicalRows actualModulus 10354 (.badd 10267 10353) := by core033_kernel_decide
theorem stats10354 : actualRows10354.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10354=5388 := by core033_kernel_decide
theorem rows10355 : actualRows10355=WordField.canonicalRows actualModulus 10355 (.band 10348 10321) := by core033_kernel_decide
theorem stats10355 : actualRows10355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10355=5124 := by core033_kernel_decide
theorem rows10356 : actualRows10356=WordField.canonicalRows actualModulus 10356 (.bnot 10348) := by core033_kernel_decide
theorem stats10356 : actualRows10356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10356=6276 := by core033_kernel_decide
theorem rows10357 : actualRows10357=WordField.canonicalRows actualModulus 10357 (.band 10356 10294) := by core033_kernel_decide
theorem stats10357 : actualRows10357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10357=5124 := by core033_kernel_decide
def partRows159 : List R1CS.Row := actualRows10294++actualRows10295++actualRows10296++actualRows10297++actualRows10298++actualRows10299++actualRows10300++actualRows10301++actualRows10302++actualRows10303++actualRows10304++actualRows10305++actualRows10306++actualRows10307++actualRows10308++actualRows10309++actualRows10310++actualRows10311++actualRows10312++actualRows10313++actualRows10314++actualRows10315++actualRows10316++actualRows10317++actualRows10318++actualRows10319++actualRows10320++actualRows10321++actualRows10322++actualRows10323++actualRows10324++actualRows10325++actualRows10326++actualRows10327++actualRows10328++actualRows10329++actualRows10330++actualRows10331++actualRows10332++actualRows10333++actualRows10334++actualRows10335++actualRows10336++actualRows10337++actualRows10338++actualRows10339++actualRows10340++actualRows10341++actualRows10342++actualRows10343++actualRows10344++actualRows10345++actualRows10346++actualRows10347++actualRows10348++actualRows10349++actualRows10350++actualRows10351++actualRows10352++actualRows10353++actualRows10354++actualRows10355++actualRows10356++actualRows10357
def partOps159 : List WordIR.Op := [.badd 10185 10281,.rotr 10294 6,.rotr 10294 11,.bxor 10295 10296,.rotr 10294 25,.bxor 10297 10298,.badd 10213 10299,.band 10294 10267,.bnot 10294,.band 10302 10240,.bxor 10301 10303,.badd 10300 10304,.literal (BitVec.ofNat 32 2024104815),.badd 10305 10306,.badd 10307 8677,.rotr 10293 2,.rotr 10293 13,.bxor 10309 10310,.rotr 10293 22,.bxor 10311 10312,.band 10293 10266,.band 10293 10239,.bxor 10314 10315,.band 10266 10239,.bxor 10316 10317,.badd 10313 10318,.badd 10308 10319,.badd 10212 10308,.rotr 10321 6,.rotr 10321 11,.bxor 10322 10323,.rotr 10321 25,.bxor 10324 10325,.badd 10240 10326,.band 10321 10294,.bnot 10321,.band 10329 10267,.bxor 10328 10330,.badd 10327 10331,.literal (BitVec.ofNat 32 2227730452),.badd 10332 10333,.badd 10334 8690,.rotr 10320 2,.rotr 10320 13,.bxor 10336 10337,.rotr 10320 22,.bxor 10338 10339,.band 10320 10293,.band 10320 10266,.bxor 10341 10342,.band 10293 10266,.bxor 10343 10344,.badd 10340 10345,.badd 10335 10346,.badd 10239 10335,.rotr 10348 6,.rotr 10348 11,.bxor 10349 10350,.rotr 10348 25,.bxor 10351 10352,.badd 10267 10353,.band 10348 10321,.bnot 10348,.band 10356 10294]
theorem partExact159 : partRows159=WordField.rows actualModulus 10294 partOps159 := by
  simp only [partRows159,partOps159,WordField.rows,rows10294,rows10295,rows10296,rows10297,rows10298,rows10299,rows10300,rows10301,rows10302,rows10303,rows10304,rows10305,rows10306,rows10307,rows10308,rows10309,rows10310,rows10311,rows10312,rows10313,rows10314,rows10315,rows10316,rows10317,rows10318,rows10319,rows10320,rows10321,rows10322,rows10323,rows10324,rows10325,rows10326,rows10327,rows10328,rows10329,rows10330,rows10331,rows10332,rows10333,rows10334,rows10335,rows10336,rows10337,rows10338,rows10339,rows10340,rows10341,rows10342,rows10343,rows10344,rows10345,rows10346,rows10347,rows10348,rows10349,rows10350,rows10351,rows10352,rows10353,rows10354,rows10355,rows10356,rows10357,List.append_assoc,List.append_nil]
theorem partLength159 : partOps159.length=64 := by decide
theorem partStats159 : partRows159.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows159=369960 := by
  simp only [partRows159,List.length_append,MatrixRowBlocks.rows_weight_append,stats10294.1,stats10294.2,stats10295.1,stats10295.2,stats10296.1,stats10296.2,stats10297.1,stats10297.2,stats10298.1,stats10298.2,stats10299.1,stats10299.2,stats10300.1,stats10300.2,stats10301.1,stats10301.2,stats10302.1,stats10302.2,stats10303.1,stats10303.2,stats10304.1,stats10304.2,stats10305.1,stats10305.2,stats10306.1,stats10306.2,stats10307.1,stats10307.2,stats10308.1,stats10308.2,stats10309.1,stats10309.2,stats10310.1,stats10310.2,stats10311.1,stats10311.2,stats10312.1,stats10312.2,stats10313.1,stats10313.2,stats10314.1,stats10314.2,stats10315.1,stats10315.2,stats10316.1,stats10316.2,stats10317.1,stats10317.2,stats10318.1,stats10318.2,stats10319.1,stats10319.2,stats10320.1,stats10320.2,stats10321.1,stats10321.2,stats10322.1,stats10322.2,stats10323.1,stats10323.2,stats10324.1,stats10324.2,stats10325.1,stats10325.2,stats10326.1,stats10326.2,stats10327.1,stats10327.2,stats10328.1,stats10328.2,stats10329.1,stats10329.2,stats10330.1,stats10330.2,stats10331.1,stats10331.2,stats10332.1,stats10332.2,stats10333.1,stats10333.2,stats10334.1,stats10334.2,stats10335.1,stats10335.2,stats10336.1,stats10336.2,stats10337.1,stats10337.2,stats10338.1,stats10338.2,stats10339.1,stats10339.2,stats10340.1,stats10340.2,stats10341.1,stats10341.2,stats10342.1,stats10342.2,stats10343.1,stats10343.2,stats10344.1,stats10344.2,stats10345.1,stats10345.2,stats10346.1,stats10346.2,stats10347.1,stats10347.2,stats10348.1,stats10348.2,stats10349.1,stats10349.2,stats10350.1,stats10350.2,stats10351.1,stats10351.2,stats10352.1,stats10352.2,stats10353.1,stats10353.2,stats10354.1,stats10354.2,stats10355.1,stats10355.2,stats10356.1,stats10356.2,stats10357.1,stats10357.2]
  decide
end AuthenticatedBranchRoundCheckedRows
