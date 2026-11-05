import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData129
import AuthenticatedBranchRoundInstructionMatrixData130
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8310 : actualRows8310=WordField.canonicalRows actualModulus 8310 (.shr 6973 3) := by core033_kernel_decide
theorem stats8310 : actualRows8310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8310=4908 := by core033_kernel_decide
theorem rows8311 : actualRows8311=WordField.canonicalRows actualModulus 8311 (.bxor 8309 8310) := by core033_kernel_decide
theorem stats8311 : actualRows8311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8311=7428 := by core033_kernel_decide
theorem rows8312 : actualRows8312=WordField.canonicalRows actualModulus 8312 (.badd 8306 8311) := by core033_kernel_decide
theorem stats8312 : actualRows8312.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8312=5388 := by core033_kernel_decide
theorem rows8313 : actualRows8313=WordField.canonicalRows actualModulus 8313 (.badd 8312 6967) := by core033_kernel_decide
theorem stats8313 : actualRows8313.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8313=5388 := by core033_kernel_decide
theorem rows8314 : actualRows8314=WordField.canonicalRows actualModulus 8314 (.rotr 8300 17) := by core033_kernel_decide
theorem stats8314 : actualRows8314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8314=5124 := by core033_kernel_decide
theorem rows8315 : actualRows8315=WordField.canonicalRows actualModulus 8315 (.rotr 8300 19) := by core033_kernel_decide
theorem stats8315 : actualRows8315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8315=5124 := by core033_kernel_decide
theorem rows8316 : actualRows8316=WordField.canonicalRows actualModulus 8316 (.bxor 8314 8315) := by core033_kernel_decide
theorem stats8316 : actualRows8316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8316=7428 := by core033_kernel_decide
theorem rows8317 : actualRows8317=WordField.canonicalRows actualModulus 8317 (.shr 8300 10) := by core033_kernel_decide
theorem stats8317 : actualRows8317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8317=4404 := by core033_kernel_decide
theorem rows8318 : actualRows8318=WordField.canonicalRows actualModulus 8318 (.bxor 8316 8317) := by core033_kernel_decide
theorem stats8318 : actualRows8318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8318=7428 := by core033_kernel_decide
theorem rows8319 : actualRows8319=WordField.canonicalRows actualModulus 8319 (.badd 8318 8235) := by core033_kernel_decide
theorem stats8319 : actualRows8319.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8319=5388 := by core033_kernel_decide
theorem rows8320 : actualRows8320=WordField.canonicalRows actualModulus 8320 (.rotr 6979 7) := by core033_kernel_decide
theorem stats8320 : actualRows8320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8320=5124 := by core033_kernel_decide
theorem rows8321 : actualRows8321=WordField.canonicalRows actualModulus 8321 (.rotr 6979 18) := by core033_kernel_decide
theorem stats8321 : actualRows8321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8321=5124 := by core033_kernel_decide
theorem rows8322 : actualRows8322=WordField.canonicalRows actualModulus 8322 (.bxor 8320 8321) := by core033_kernel_decide
theorem stats8322 : actualRows8322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8322=7428 := by core033_kernel_decide
theorem rows8323 : actualRows8323=WordField.canonicalRows actualModulus 8323 (.shr 6979 3) := by core033_kernel_decide
theorem stats8323 : actualRows8323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8323=4908 := by core033_kernel_decide
theorem rows8324 : actualRows8324=WordField.canonicalRows actualModulus 8324 (.bxor 8322 8323) := by core033_kernel_decide
theorem stats8324 : actualRows8324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8324=7428 := by core033_kernel_decide
theorem rows8325 : actualRows8325=WordField.canonicalRows actualModulus 8325 (.badd 8319 8324) := by core033_kernel_decide
theorem stats8325 : actualRows8325.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8325=5388 := by core033_kernel_decide
theorem rows8326 : actualRows8326=WordField.canonicalRows actualModulus 8326 (.badd 8325 6973) := by core033_kernel_decide
theorem stats8326 : actualRows8326.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8326=5388 := by core033_kernel_decide
theorem rows8327 : actualRows8327=WordField.canonicalRows actualModulus 8327 (.rotr 8313 17) := by core033_kernel_decide
theorem stats8327 : actualRows8327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8327=5124 := by core033_kernel_decide
theorem rows8328 : actualRows8328=WordField.canonicalRows actualModulus 8328 (.rotr 8313 19) := by core033_kernel_decide
theorem stats8328 : actualRows8328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8328=5124 := by core033_kernel_decide
theorem rows8329 : actualRows8329=WordField.canonicalRows actualModulus 8329 (.bxor 8327 8328) := by core033_kernel_decide
theorem stats8329 : actualRows8329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8329=7428 := by core033_kernel_decide
theorem rows8330 : actualRows8330=WordField.canonicalRows actualModulus 8330 (.shr 8313 10) := by core033_kernel_decide
theorem stats8330 : actualRows8330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8330=4404 := by core033_kernel_decide
theorem rows8331 : actualRows8331=WordField.canonicalRows actualModulus 8331 (.bxor 8329 8330) := by core033_kernel_decide
theorem stats8331 : actualRows8331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8331=7428 := by core033_kernel_decide
theorem rows8332 : actualRows8332=WordField.canonicalRows actualModulus 8332 (.badd 8331 8248) := by core033_kernel_decide
theorem stats8332 : actualRows8332.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8332=5388 := by core033_kernel_decide
theorem rows8333 : actualRows8333=WordField.canonicalRows actualModulus 8333 (.rotr 8144 7) := by core033_kernel_decide
theorem stats8333 : actualRows8333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8333=5124 := by core033_kernel_decide
theorem rows8334 : actualRows8334=WordField.canonicalRows actualModulus 8334 (.rotr 8144 18) := by core033_kernel_decide
theorem stats8334 : actualRows8334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8334=5124 := by core033_kernel_decide
theorem rows8335 : actualRows8335=WordField.canonicalRows actualModulus 8335 (.bxor 8333 8334) := by core033_kernel_decide
theorem stats8335 : actualRows8335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8335=7428 := by core033_kernel_decide
theorem rows8336 : actualRows8336=WordField.canonicalRows actualModulus 8336 (.shr 8144 3) := by core033_kernel_decide
theorem stats8336 : actualRows8336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8336=4908 := by core033_kernel_decide
theorem rows8337 : actualRows8337=WordField.canonicalRows actualModulus 8337 (.bxor 8335 8336) := by core033_kernel_decide
theorem stats8337 : actualRows8337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8337=7428 := by core033_kernel_decide
theorem rows8338 : actualRows8338=WordField.canonicalRows actualModulus 8338 (.badd 8332 8337) := by core033_kernel_decide
theorem stats8338 : actualRows8338.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8338=5388 := by core033_kernel_decide
theorem rows8339 : actualRows8339=WordField.canonicalRows actualModulus 8339 (.badd 8338 6979) := by core033_kernel_decide
theorem stats8339 : actualRows8339.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8339=5388 := by core033_kernel_decide
theorem rows8340 : actualRows8340=WordField.canonicalRows actualModulus 8340 (.rotr 8326 17) := by core033_kernel_decide
theorem stats8340 : actualRows8340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8340=5124 := by core033_kernel_decide
theorem rows8341 : actualRows8341=WordField.canonicalRows actualModulus 8341 (.rotr 8326 19) := by core033_kernel_decide
theorem stats8341 : actualRows8341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8341=5124 := by core033_kernel_decide
theorem rows8342 : actualRows8342=WordField.canonicalRows actualModulus 8342 (.bxor 8340 8341) := by core033_kernel_decide
theorem stats8342 : actualRows8342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8342=7428 := by core033_kernel_decide
theorem rows8343 : actualRows8343=WordField.canonicalRows actualModulus 8343 (.shr 8326 10) := by core033_kernel_decide
theorem stats8343 : actualRows8343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8343=4404 := by core033_kernel_decide
theorem rows8344 : actualRows8344=WordField.canonicalRows actualModulus 8344 (.bxor 8342 8343) := by core033_kernel_decide
theorem stats8344 : actualRows8344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8344=7428 := by core033_kernel_decide
theorem rows8345 : actualRows8345=WordField.canonicalRows actualModulus 8345 (.badd 8344 8261) := by core033_kernel_decide
theorem stats8345 : actualRows8345.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8345=5388 := by core033_kernel_decide
theorem rows8346 : actualRows8346=WordField.canonicalRows actualModulus 8346 (.rotr 8157 7) := by core033_kernel_decide
theorem stats8346 : actualRows8346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8346=5124 := by core033_kernel_decide
theorem rows8347 : actualRows8347=WordField.canonicalRows actualModulus 8347 (.rotr 8157 18) := by core033_kernel_decide
theorem stats8347 : actualRows8347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8347=5124 := by core033_kernel_decide
theorem rows8348 : actualRows8348=WordField.canonicalRows actualModulus 8348 (.bxor 8346 8347) := by core033_kernel_decide
theorem stats8348 : actualRows8348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8348=7428 := by core033_kernel_decide
theorem rows8349 : actualRows8349=WordField.canonicalRows actualModulus 8349 (.shr 8157 3) := by core033_kernel_decide
theorem stats8349 : actualRows8349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8349=4908 := by core033_kernel_decide
theorem rows8350 : actualRows8350=WordField.canonicalRows actualModulus 8350 (.bxor 8348 8349) := by core033_kernel_decide
theorem stats8350 : actualRows8350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8350=7428 := by core033_kernel_decide
theorem rows8351 : actualRows8351=WordField.canonicalRows actualModulus 8351 (.badd 8345 8350) := by core033_kernel_decide
theorem stats8351 : actualRows8351.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8351=5388 := by core033_kernel_decide
theorem rows8352 : actualRows8352=WordField.canonicalRows actualModulus 8352 (.badd 8351 8144) := by core033_kernel_decide
theorem stats8352 : actualRows8352.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8352=5388 := by core033_kernel_decide
theorem rows8353 : actualRows8353=WordField.canonicalRows actualModulus 8353 (.rotr 8339 17) := by core033_kernel_decide
theorem stats8353 : actualRows8353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8353=5124 := by core033_kernel_decide
theorem rows8354 : actualRows8354=WordField.canonicalRows actualModulus 8354 (.rotr 8339 19) := by core033_kernel_decide
theorem stats8354 : actualRows8354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8354=5124 := by core033_kernel_decide
theorem rows8355 : actualRows8355=WordField.canonicalRows actualModulus 8355 (.bxor 8353 8354) := by core033_kernel_decide
theorem stats8355 : actualRows8355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8355=7428 := by core033_kernel_decide
theorem rows8356 : actualRows8356=WordField.canonicalRows actualModulus 8356 (.shr 8339 10) := by core033_kernel_decide
theorem stats8356 : actualRows8356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8356=4404 := by core033_kernel_decide
theorem rows8357 : actualRows8357=WordField.canonicalRows actualModulus 8357 (.bxor 8355 8356) := by core033_kernel_decide
theorem stats8357 : actualRows8357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8357=7428 := by core033_kernel_decide
theorem rows8358 : actualRows8358=WordField.canonicalRows actualModulus 8358 (.badd 8357 8274) := by core033_kernel_decide
theorem stats8358 : actualRows8358.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8358=5388 := by core033_kernel_decide
theorem rows8359 : actualRows8359=WordField.canonicalRows actualModulus 8359 (.rotr 8170 7) := by core033_kernel_decide
theorem stats8359 : actualRows8359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8359=5124 := by core033_kernel_decide
theorem rows8360 : actualRows8360=WordField.canonicalRows actualModulus 8360 (.rotr 8170 18) := by core033_kernel_decide
theorem stats8360 : actualRows8360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8360=5124 := by core033_kernel_decide
theorem rows8361 : actualRows8361=WordField.canonicalRows actualModulus 8361 (.bxor 8359 8360) := by core033_kernel_decide
theorem stats8361 : actualRows8361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8361=7428 := by core033_kernel_decide
theorem rows8362 : actualRows8362=WordField.canonicalRows actualModulus 8362 (.shr 8170 3) := by core033_kernel_decide
theorem stats8362 : actualRows8362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8362=4908 := by core033_kernel_decide
theorem rows8363 : actualRows8363=WordField.canonicalRows actualModulus 8363 (.bxor 8361 8362) := by core033_kernel_decide
theorem stats8363 : actualRows8363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8363=7428 := by core033_kernel_decide
theorem rows8364 : actualRows8364=WordField.canonicalRows actualModulus 8364 (.badd 8358 8363) := by core033_kernel_decide
theorem stats8364 : actualRows8364.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8364=5388 := by core033_kernel_decide
theorem rows8365 : actualRows8365=WordField.canonicalRows actualModulus 8365 (.badd 8364 8157) := by core033_kernel_decide
theorem stats8365 : actualRows8365.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8365=5388 := by core033_kernel_decide
theorem rows8366 : actualRows8366=WordField.canonicalRows actualModulus 8366 (.rotr 8352 17) := by core033_kernel_decide
theorem stats8366 : actualRows8366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8366=5124 := by core033_kernel_decide
theorem rows8367 : actualRows8367=WordField.canonicalRows actualModulus 8367 (.rotr 8352 19) := by core033_kernel_decide
theorem stats8367 : actualRows8367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8367=5124 := by core033_kernel_decide
theorem rows8368 : actualRows8368=WordField.canonicalRows actualModulus 8368 (.bxor 8366 8367) := by core033_kernel_decide
theorem stats8368 : actualRows8368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8368=7428 := by core033_kernel_decide
theorem rows8369 : actualRows8369=WordField.canonicalRows actualModulus 8369 (.shr 8352 10) := by core033_kernel_decide
theorem stats8369 : actualRows8369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8369=4404 := by core033_kernel_decide
theorem rows8370 : actualRows8370=WordField.canonicalRows actualModulus 8370 (.bxor 8368 8369) := by core033_kernel_decide
theorem stats8370 : actualRows8370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8370=7428 := by core033_kernel_decide
theorem rows8371 : actualRows8371=WordField.canonicalRows actualModulus 8371 (.badd 8370 8287) := by core033_kernel_decide
theorem stats8371 : actualRows8371.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8371=5388 := by core033_kernel_decide
theorem rows8372 : actualRows8372=WordField.canonicalRows actualModulus 8372 (.rotr 8183 7) := by core033_kernel_decide
theorem stats8372 : actualRows8372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8372=5124 := by core033_kernel_decide
theorem rows8373 : actualRows8373=WordField.canonicalRows actualModulus 8373 (.rotr 8183 18) := by core033_kernel_decide
theorem stats8373 : actualRows8373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8373=5124 := by core033_kernel_decide
def partRows128 : List R1CS.Row := actualRows8310++actualRows8311++actualRows8312++actualRows8313++actualRows8314++actualRows8315++actualRows8316++actualRows8317++actualRows8318++actualRows8319++actualRows8320++actualRows8321++actualRows8322++actualRows8323++actualRows8324++actualRows8325++actualRows8326++actualRows8327++actualRows8328++actualRows8329++actualRows8330++actualRows8331++actualRows8332++actualRows8333++actualRows8334++actualRows8335++actualRows8336++actualRows8337++actualRows8338++actualRows8339++actualRows8340++actualRows8341++actualRows8342++actualRows8343++actualRows8344++actualRows8345++actualRows8346++actualRows8347++actualRows8348++actualRows8349++actualRows8350++actualRows8351++actualRows8352++actualRows8353++actualRows8354++actualRows8355++actualRows8356++actualRows8357++actualRows8358++actualRows8359++actualRows8360++actualRows8361++actualRows8362++actualRows8363++actualRows8364++actualRows8365++actualRows8366++actualRows8367++actualRows8368++actualRows8369++actualRows8370++actualRows8371++actualRows8372++actualRows8373
def partOps128 : List WordIR.Op := [.shr 6973 3,.bxor 8309 8310,.badd 8306 8311,.badd 8312 6967,.rotr 8300 17,.rotr 8300 19,.bxor 8314 8315,.shr 8300 10,.bxor 8316 8317,.badd 8318 8235,.rotr 6979 7,.rotr 6979 18,.bxor 8320 8321,.shr 6979 3,.bxor 8322 8323,.badd 8319 8324,.badd 8325 6973,.rotr 8313 17,.rotr 8313 19,.bxor 8327 8328,.shr 8313 10,.bxor 8329 8330,.badd 8331 8248,.rotr 8144 7,.rotr 8144 18,.bxor 8333 8334,.shr 8144 3,.bxor 8335 8336,.badd 8332 8337,.badd 8338 6979,.rotr 8326 17,.rotr 8326 19,.bxor 8340 8341,.shr 8326 10,.bxor 8342 8343,.badd 8344 8261,.rotr 8157 7,.rotr 8157 18,.bxor 8346 8347,.shr 8157 3,.bxor 8348 8349,.badd 8345 8350,.badd 8351 8144,.rotr 8339 17,.rotr 8339 19,.bxor 8353 8354,.shr 8339 10,.bxor 8355 8356,.badd 8357 8274,.rotr 8170 7,.rotr 8170 18,.bxor 8359 8360,.shr 8170 3,.bxor 8361 8362,.badd 8358 8363,.badd 8364 8157,.rotr 8352 17,.rotr 8352 19,.bxor 8366 8367,.shr 8352 10,.bxor 8368 8369,.badd 8370 8287,.rotr 8183 7,.rotr 8183 18]
theorem partExact128 : partRows128=WordField.rows actualModulus 8310 partOps128 := by
  simp only [partRows128,partOps128,WordField.rows,rows8310,rows8311,rows8312,rows8313,rows8314,rows8315,rows8316,rows8317,rows8318,rows8319,rows8320,rows8321,rows8322,rows8323,rows8324,rows8325,rows8326,rows8327,rows8328,rows8329,rows8330,rows8331,rows8332,rows8333,rows8334,rows8335,rows8336,rows8337,rows8338,rows8339,rows8340,rows8341,rows8342,rows8343,rows8344,rows8345,rows8346,rows8347,rows8348,rows8349,rows8350,rows8351,rows8352,rows8353,rows8354,rows8355,rows8356,rows8357,rows8358,rows8359,rows8360,rows8361,rows8362,rows8363,rows8364,rows8365,rows8366,rows8367,rows8368,rows8369,rows8370,rows8371,rows8372,rows8373,List.append_assoc,List.append_nil]
theorem partLength128 : partOps128.length=64 := by decide
theorem partStats128 : partRows128.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows128=370992 := by
  simp only [partRows128,List.length_append,MatrixRowBlocks.rows_weight_append,stats8310.1,stats8310.2,stats8311.1,stats8311.2,stats8312.1,stats8312.2,stats8313.1,stats8313.2,stats8314.1,stats8314.2,stats8315.1,stats8315.2,stats8316.1,stats8316.2,stats8317.1,stats8317.2,stats8318.1,stats8318.2,stats8319.1,stats8319.2,stats8320.1,stats8320.2,stats8321.1,stats8321.2,stats8322.1,stats8322.2,stats8323.1,stats8323.2,stats8324.1,stats8324.2,stats8325.1,stats8325.2,stats8326.1,stats8326.2,stats8327.1,stats8327.2,stats8328.1,stats8328.2,stats8329.1,stats8329.2,stats8330.1,stats8330.2,stats8331.1,stats8331.2,stats8332.1,stats8332.2,stats8333.1,stats8333.2,stats8334.1,stats8334.2,stats8335.1,stats8335.2,stats8336.1,stats8336.2,stats8337.1,stats8337.2,stats8338.1,stats8338.2,stats8339.1,stats8339.2,stats8340.1,stats8340.2,stats8341.1,stats8341.2,stats8342.1,stats8342.2,stats8343.1,stats8343.2,stats8344.1,stats8344.2,stats8345.1,stats8345.2,stats8346.1,stats8346.2,stats8347.1,stats8347.2,stats8348.1,stats8348.2,stats8349.1,stats8349.2,stats8350.1,stats8350.2,stats8351.1,stats8351.2,stats8352.1,stats8352.2,stats8353.1,stats8353.2,stats8354.1,stats8354.2,stats8355.1,stats8355.2,stats8356.1,stats8356.2,stats8357.1,stats8357.2,stats8358.1,stats8358.2,stats8359.1,stats8359.2,stats8360.1,stats8360.2,stats8361.1,stats8361.2,stats8362.1,stats8362.2,stats8363.1,stats8363.2,stats8364.1,stats8364.2,stats8365.1,stats8365.2,stats8366.1,stats8366.2,stats8367.1,stats8367.2,stats8368.1,stats8368.2,stats8369.1,stats8369.2,stats8370.1,stats8370.2,stats8371.1,stats8371.2,stats8372.1,stats8372.2,stats8373.1,stats8373.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
