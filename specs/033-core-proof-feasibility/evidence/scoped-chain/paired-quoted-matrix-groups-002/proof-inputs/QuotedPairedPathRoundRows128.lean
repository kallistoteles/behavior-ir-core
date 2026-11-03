import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData129
import PairedPathRoundInstructionMatrixData130
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8288 : actualRows8288=WordField.canonicalRows actualModulus 8288 (.badd 8179 8275) := by core033_kernel_decide
theorem stats8288 : actualRows8288.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8288=5388 := by core033_kernel_decide
theorem rows8289 : actualRows8289=WordField.canonicalRows actualModulus 8289 (.rotr 8288 6) := by core033_kernel_decide
theorem stats8289 : actualRows8289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8289=5124 := by core033_kernel_decide
theorem rows8290 : actualRows8290=WordField.canonicalRows actualModulus 8290 (.rotr 8288 11) := by core033_kernel_decide
theorem stats8290 : actualRows8290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8290=5124 := by core033_kernel_decide
theorem rows8291 : actualRows8291=WordField.canonicalRows actualModulus 8291 (.bxor 8289 8290) := by core033_kernel_decide
theorem stats8291 : actualRows8291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8291=7428 := by core033_kernel_decide
theorem rows8292 : actualRows8292=WordField.canonicalRows actualModulus 8292 (.rotr 8288 25) := by core033_kernel_decide
theorem stats8292 : actualRows8292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8292=5124 := by core033_kernel_decide
theorem rows8293 : actualRows8293=WordField.canonicalRows actualModulus 8293 (.bxor 8291 8292) := by core033_kernel_decide
theorem stats8293 : actualRows8293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8293=7428 := by core033_kernel_decide
theorem rows8294 : actualRows8294=WordField.canonicalRows actualModulus 8294 (.badd 8207 8293) := by core033_kernel_decide
theorem stats8294 : actualRows8294.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8294=5388 := by core033_kernel_decide
theorem rows8295 : actualRows8295=WordField.canonicalRows actualModulus 8295 (.band 8288 8261) := by core033_kernel_decide
theorem stats8295 : actualRows8295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8295=5124 := by core033_kernel_decide
theorem rows8296 : actualRows8296=WordField.canonicalRows actualModulus 8296 (.bnot 8288) := by core033_kernel_decide
theorem stats8296 : actualRows8296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8296=6276 := by core033_kernel_decide
theorem rows8297 : actualRows8297=WordField.canonicalRows actualModulus 8297 (.band 8296 8234) := by core033_kernel_decide
theorem stats8297 : actualRows8297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8297=5124 := by core033_kernel_decide
theorem rows8298 : actualRows8298=WordField.canonicalRows actualModulus 8298 (.bxor 8295 8297) := by core033_kernel_decide
theorem stats8298 : actualRows8298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8298=7428 := by core033_kernel_decide
theorem rows8299 : actualRows8299=WordField.canonicalRows actualModulus 8299 (.badd 8294 8298) := by core033_kernel_decide
theorem stats8299 : actualRows8299.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8299=5388 := by core033_kernel_decide
theorem rows8300 : actualRows8300=WordField.canonicalRows actualModulus 8300 (.literal (BitVec.ofNat 32 3624381080)) := by core033_kernel_decide
theorem stats8300 : actualRows8300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8300=3828 := by core033_kernel_decide
theorem rows8301 : actualRows8301=WordField.canonicalRows actualModulus 8301 (.badd 8299 8300) := by core033_kernel_decide
theorem stats8301 : actualRows8301.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8301=5388 := by core033_kernel_decide
theorem rows8302 : actualRows8302=WordField.canonicalRows actualModulus 8302 (.badd 8301 6254) := by core033_kernel_decide
theorem stats8302 : actualRows8302.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8302=5388 := by core033_kernel_decide
theorem rows8303 : actualRows8303=WordField.canonicalRows actualModulus 8303 (.rotr 8287 2) := by core033_kernel_decide
theorem stats8303 : actualRows8303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8303=5124 := by core033_kernel_decide
theorem rows8304 : actualRows8304=WordField.canonicalRows actualModulus 8304 (.rotr 8287 13) := by core033_kernel_decide
theorem stats8304 : actualRows8304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8304=5124 := by core033_kernel_decide
theorem rows8305 : actualRows8305=WordField.canonicalRows actualModulus 8305 (.bxor 8303 8304) := by core033_kernel_decide
theorem stats8305 : actualRows8305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8305=7428 := by core033_kernel_decide
theorem rows8306 : actualRows8306=WordField.canonicalRows actualModulus 8306 (.rotr 8287 22) := by core033_kernel_decide
theorem stats8306 : actualRows8306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8306=5124 := by core033_kernel_decide
theorem rows8307 : actualRows8307=WordField.canonicalRows actualModulus 8307 (.bxor 8305 8306) := by core033_kernel_decide
theorem stats8307 : actualRows8307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8307=7428 := by core033_kernel_decide
theorem rows8308 : actualRows8308=WordField.canonicalRows actualModulus 8308 (.band 8287 8260) := by core033_kernel_decide
theorem stats8308 : actualRows8308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8308=5124 := by core033_kernel_decide
theorem rows8309 : actualRows8309=WordField.canonicalRows actualModulus 8309 (.band 8287 8233) := by core033_kernel_decide
theorem stats8309 : actualRows8309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8309=5124 := by core033_kernel_decide
theorem rows8310 : actualRows8310=WordField.canonicalRows actualModulus 8310 (.bxor 8308 8309) := by core033_kernel_decide
theorem stats8310 : actualRows8310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8310=7428 := by core033_kernel_decide
theorem rows8311 : actualRows8311=WordField.canonicalRows actualModulus 8311 (.band 8260 8233) := by core033_kernel_decide
theorem stats8311 : actualRows8311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8311=5124 := by core033_kernel_decide
theorem rows8312 : actualRows8312=WordField.canonicalRows actualModulus 8312 (.bxor 8310 8311) := by core033_kernel_decide
theorem stats8312 : actualRows8312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8312=7428 := by core033_kernel_decide
theorem rows8313 : actualRows8313=WordField.canonicalRows actualModulus 8313 (.badd 8307 8312) := by core033_kernel_decide
theorem stats8313 : actualRows8313.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8313=5388 := by core033_kernel_decide
theorem rows8314 : actualRows8314=WordField.canonicalRows actualModulus 8314 (.badd 8302 8313) := by core033_kernel_decide
theorem stats8314 : actualRows8314.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8314=5388 := by core033_kernel_decide
theorem rows8315 : actualRows8315=WordField.canonicalRows actualModulus 8315 (.badd 8206 8302) := by core033_kernel_decide
theorem stats8315 : actualRows8315.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8315=5388 := by core033_kernel_decide
theorem rows8316 : actualRows8316=WordField.canonicalRows actualModulus 8316 (.rotr 8315 6) := by core033_kernel_decide
theorem stats8316 : actualRows8316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8316=5124 := by core033_kernel_decide
theorem rows8317 : actualRows8317=WordField.canonicalRows actualModulus 8317 (.rotr 8315 11) := by core033_kernel_decide
theorem stats8317 : actualRows8317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8317=5124 := by core033_kernel_decide
theorem rows8318 : actualRows8318=WordField.canonicalRows actualModulus 8318 (.bxor 8316 8317) := by core033_kernel_decide
theorem stats8318 : actualRows8318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8318=7428 := by core033_kernel_decide
theorem rows8319 : actualRows8319=WordField.canonicalRows actualModulus 8319 (.rotr 8315 25) := by core033_kernel_decide
theorem stats8319 : actualRows8319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8319=5124 := by core033_kernel_decide
theorem rows8320 : actualRows8320=WordField.canonicalRows actualModulus 8320 (.bxor 8318 8319) := by core033_kernel_decide
theorem stats8320 : actualRows8320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8320=7428 := by core033_kernel_decide
theorem rows8321 : actualRows8321=WordField.canonicalRows actualModulus 8321 (.badd 8234 8320) := by core033_kernel_decide
theorem stats8321 : actualRows8321.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8321=5388 := by core033_kernel_decide
theorem rows8322 : actualRows8322=WordField.canonicalRows actualModulus 8322 (.band 8315 8288) := by core033_kernel_decide
theorem stats8322 : actualRows8322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8322=5124 := by core033_kernel_decide
theorem rows8323 : actualRows8323=WordField.canonicalRows actualModulus 8323 (.bnot 8315) := by core033_kernel_decide
theorem stats8323 : actualRows8323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8323=6276 := by core033_kernel_decide
theorem rows8324 : actualRows8324=WordField.canonicalRows actualModulus 8324 (.band 8323 8261) := by core033_kernel_decide
theorem stats8324 : actualRows8324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8324=5124 := by core033_kernel_decide
theorem rows8325 : actualRows8325=WordField.canonicalRows actualModulus 8325 (.bxor 8322 8324) := by core033_kernel_decide
theorem stats8325 : actualRows8325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8325=7428 := by core033_kernel_decide
theorem rows8326 : actualRows8326=WordField.canonicalRows actualModulus 8326 (.badd 8321 8325) := by core033_kernel_decide
theorem stats8326 : actualRows8326.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8326=5388 := by core033_kernel_decide
theorem rows8327 : actualRows8327=WordField.canonicalRows actualModulus 8327 (.literal (BitVec.ofNat 32 310598401)) := by core033_kernel_decide
theorem stats8327 : actualRows8327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8327=3612 := by core033_kernel_decide
theorem rows8328 : actualRows8328=WordField.canonicalRows actualModulus 8328 (.badd 8326 8327) := by core033_kernel_decide
theorem stats8328 : actualRows8328.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8328=5388 := by core033_kernel_decide
theorem rows8329 : actualRows8329=WordField.canonicalRows actualModulus 8329 (.badd 8328 6260) := by core033_kernel_decide
theorem stats8329 : actualRows8329.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8329=5388 := by core033_kernel_decide
theorem rows8330 : actualRows8330=WordField.canonicalRows actualModulus 8330 (.rotr 8314 2) := by core033_kernel_decide
theorem stats8330 : actualRows8330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8330=5124 := by core033_kernel_decide
theorem rows8331 : actualRows8331=WordField.canonicalRows actualModulus 8331 (.rotr 8314 13) := by core033_kernel_decide
theorem stats8331 : actualRows8331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8331=5124 := by core033_kernel_decide
theorem rows8332 : actualRows8332=WordField.canonicalRows actualModulus 8332 (.bxor 8330 8331) := by core033_kernel_decide
theorem stats8332 : actualRows8332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8332=7428 := by core033_kernel_decide
theorem rows8333 : actualRows8333=WordField.canonicalRows actualModulus 8333 (.rotr 8314 22) := by core033_kernel_decide
theorem stats8333 : actualRows8333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8333=5124 := by core033_kernel_decide
theorem rows8334 : actualRows8334=WordField.canonicalRows actualModulus 8334 (.bxor 8332 8333) := by core033_kernel_decide
theorem stats8334 : actualRows8334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8334=7428 := by core033_kernel_decide
theorem rows8335 : actualRows8335=WordField.canonicalRows actualModulus 8335 (.band 8314 8287) := by core033_kernel_decide
theorem stats8335 : actualRows8335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8335=5124 := by core033_kernel_decide
theorem rows8336 : actualRows8336=WordField.canonicalRows actualModulus 8336 (.band 8314 8260) := by core033_kernel_decide
theorem stats8336 : actualRows8336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8336=5124 := by core033_kernel_decide
theorem rows8337 : actualRows8337=WordField.canonicalRows actualModulus 8337 (.bxor 8335 8336) := by core033_kernel_decide
theorem stats8337 : actualRows8337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8337=7428 := by core033_kernel_decide
theorem rows8338 : actualRows8338=WordField.canonicalRows actualModulus 8338 (.band 8287 8260) := by core033_kernel_decide
theorem stats8338 : actualRows8338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8338=5124 := by core033_kernel_decide
theorem rows8339 : actualRows8339=WordField.canonicalRows actualModulus 8339 (.bxor 8337 8338) := by core033_kernel_decide
theorem stats8339 : actualRows8339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8339=7428 := by core033_kernel_decide
theorem rows8340 : actualRows8340=WordField.canonicalRows actualModulus 8340 (.badd 8334 8339) := by core033_kernel_decide
theorem stats8340 : actualRows8340.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8340=5388 := by core033_kernel_decide
theorem rows8341 : actualRows8341=WordField.canonicalRows actualModulus 8341 (.badd 8329 8340) := by core033_kernel_decide
theorem stats8341 : actualRows8341.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8341=5388 := by core033_kernel_decide
theorem rows8342 : actualRows8342=WordField.canonicalRows actualModulus 8342 (.badd 8233 8329) := by core033_kernel_decide
theorem stats8342 : actualRows8342.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8342=5388 := by core033_kernel_decide
theorem rows8343 : actualRows8343=WordField.canonicalRows actualModulus 8343 (.rotr 8342 6) := by core033_kernel_decide
theorem stats8343 : actualRows8343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8343=5124 := by core033_kernel_decide
theorem rows8344 : actualRows8344=WordField.canonicalRows actualModulus 8344 (.rotr 8342 11) := by core033_kernel_decide
theorem stats8344 : actualRows8344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8344=5124 := by core033_kernel_decide
theorem rows8345 : actualRows8345=WordField.canonicalRows actualModulus 8345 (.bxor 8343 8344) := by core033_kernel_decide
theorem stats8345 : actualRows8345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8345=7428 := by core033_kernel_decide
theorem rows8346 : actualRows8346=WordField.canonicalRows actualModulus 8346 (.rotr 8342 25) := by core033_kernel_decide
theorem stats8346 : actualRows8346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8346=5124 := by core033_kernel_decide
theorem rows8347 : actualRows8347=WordField.canonicalRows actualModulus 8347 (.bxor 8345 8346) := by core033_kernel_decide
theorem stats8347 : actualRows8347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8347=7428 := by core033_kernel_decide
theorem rows8348 : actualRows8348=WordField.canonicalRows actualModulus 8348 (.badd 8261 8347) := by core033_kernel_decide
theorem stats8348 : actualRows8348.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8348=5388 := by core033_kernel_decide
theorem rows8349 : actualRows8349=WordField.canonicalRows actualModulus 8349 (.band 8342 8315) := by core033_kernel_decide
theorem stats8349 : actualRows8349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8349=5124 := by core033_kernel_decide
theorem rows8350 : actualRows8350=WordField.canonicalRows actualModulus 8350 (.bnot 8342) := by core033_kernel_decide
theorem stats8350 : actualRows8350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8350=6276 := by core033_kernel_decide
theorem rows8351 : actualRows8351=WordField.canonicalRows actualModulus 8351 (.band 8350 8288) := by core033_kernel_decide
theorem stats8351 : actualRows8351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8351=5124 := by core033_kernel_decide
def partRows128 : List R1CS.Row := actualRows8288++actualRows8289++actualRows8290++actualRows8291++actualRows8292++actualRows8293++actualRows8294++actualRows8295++actualRows8296++actualRows8297++actualRows8298++actualRows8299++actualRows8300++actualRows8301++actualRows8302++actualRows8303++actualRows8304++actualRows8305++actualRows8306++actualRows8307++actualRows8308++actualRows8309++actualRows8310++actualRows8311++actualRows8312++actualRows8313++actualRows8314++actualRows8315++actualRows8316++actualRows8317++actualRows8318++actualRows8319++actualRows8320++actualRows8321++actualRows8322++actualRows8323++actualRows8324++actualRows8325++actualRows8326++actualRows8327++actualRows8328++actualRows8329++actualRows8330++actualRows8331++actualRows8332++actualRows8333++actualRows8334++actualRows8335++actualRows8336++actualRows8337++actualRows8338++actualRows8339++actualRows8340++actualRows8341++actualRows8342++actualRows8343++actualRows8344++actualRows8345++actualRows8346++actualRows8347++actualRows8348++actualRows8349++actualRows8350++actualRows8351
def partOps128 : List WordIR.Op := [.badd 8179 8275,.rotr 8288 6,.rotr 8288 11,.bxor 8289 8290,.rotr 8288 25,.bxor 8291 8292,.badd 8207 8293,.band 8288 8261,.bnot 8288,.band 8296 8234,.bxor 8295 8297,.badd 8294 8298,.literal (BitVec.ofNat 32 3624381080),.badd 8299 8300,.badd 8301 6254,.rotr 8287 2,.rotr 8287 13,.bxor 8303 8304,.rotr 8287 22,.bxor 8305 8306,.band 8287 8260,.band 8287 8233,.bxor 8308 8309,.band 8260 8233,.bxor 8310 8311,.badd 8307 8312,.badd 8302 8313,.badd 8206 8302,.rotr 8315 6,.rotr 8315 11,.bxor 8316 8317,.rotr 8315 25,.bxor 8318 8319,.badd 8234 8320,.band 8315 8288,.bnot 8315,.band 8323 8261,.bxor 8322 8324,.badd 8321 8325,.literal (BitVec.ofNat 32 310598401),.badd 8326 8327,.badd 8328 6260,.rotr 8314 2,.rotr 8314 13,.bxor 8330 8331,.rotr 8314 22,.bxor 8332 8333,.band 8314 8287,.band 8314 8260,.bxor 8335 8336,.band 8287 8260,.bxor 8337 8338,.badd 8334 8339,.badd 8329 8340,.badd 8233 8329,.rotr 8342 6,.rotr 8342 11,.bxor 8343 8344,.rotr 8342 25,.bxor 8345 8346,.badd 8261 8347,.band 8342 8315,.bnot 8342,.band 8350 8288]
theorem partExact128 : partRows128=WordField.rows actualModulus 8288 partOps128 := by
  simp only [partRows128,partOps128,WordField.rows,rows8288,rows8289,rows8290,rows8291,rows8292,rows8293,rows8294,rows8295,rows8296,rows8297,rows8298,rows8299,rows8300,rows8301,rows8302,rows8303,rows8304,rows8305,rows8306,rows8307,rows8308,rows8309,rows8310,rows8311,rows8312,rows8313,rows8314,rows8315,rows8316,rows8317,rows8318,rows8319,rows8320,rows8321,rows8322,rows8323,rows8324,rows8325,rows8326,rows8327,rows8328,rows8329,rows8330,rows8331,rows8332,rows8333,rows8334,rows8335,rows8336,rows8337,rows8338,rows8339,rows8340,rows8341,rows8342,rows8343,rows8344,rows8345,rows8346,rows8347,rows8348,rows8349,rows8350,rows8351,List.append_assoc,List.append_nil]
theorem partLength128 : partOps128.length=64 := by decide
theorem partStats128 : partRows128.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows128=369672 := by
  simp only [partRows128,List.length_append,MatrixRowBlocks.rows_weight_append,stats8288.1,stats8288.2,stats8289.1,stats8289.2,stats8290.1,stats8290.2,stats8291.1,stats8291.2,stats8292.1,stats8292.2,stats8293.1,stats8293.2,stats8294.1,stats8294.2,stats8295.1,stats8295.2,stats8296.1,stats8296.2,stats8297.1,stats8297.2,stats8298.1,stats8298.2,stats8299.1,stats8299.2,stats8300.1,stats8300.2,stats8301.1,stats8301.2,stats8302.1,stats8302.2,stats8303.1,stats8303.2,stats8304.1,stats8304.2,stats8305.1,stats8305.2,stats8306.1,stats8306.2,stats8307.1,stats8307.2,stats8308.1,stats8308.2,stats8309.1,stats8309.2,stats8310.1,stats8310.2,stats8311.1,stats8311.2,stats8312.1,stats8312.2,stats8313.1,stats8313.2,stats8314.1,stats8314.2,stats8315.1,stats8315.2,stats8316.1,stats8316.2,stats8317.1,stats8317.2,stats8318.1,stats8318.2,stats8319.1,stats8319.2,stats8320.1,stats8320.2,stats8321.1,stats8321.2,stats8322.1,stats8322.2,stats8323.1,stats8323.2,stats8324.1,stats8324.2,stats8325.1,stats8325.2,stats8326.1,stats8326.2,stats8327.1,stats8327.2,stats8328.1,stats8328.2,stats8329.1,stats8329.2,stats8330.1,stats8330.2,stats8331.1,stats8331.2,stats8332.1,stats8332.2,stats8333.1,stats8333.2,stats8334.1,stats8334.2,stats8335.1,stats8335.2,stats8336.1,stats8336.2,stats8337.1,stats8337.2,stats8338.1,stats8338.2,stats8339.1,stats8339.2,stats8340.1,stats8340.2,stats8341.1,stats8341.2,stats8342.1,stats8342.2,stats8343.1,stats8343.2,stats8344.1,stats8344.2,stats8345.1,stats8345.2,stats8346.1,stats8346.2,stats8347.1,stats8347.2,stats8348.1,stats8348.2,stats8349.1,stats8349.2,stats8350.1,stats8350.2,stats8351.1,stats8351.2]
  decide
end QuotedPairedPathRoundCheckedRows
