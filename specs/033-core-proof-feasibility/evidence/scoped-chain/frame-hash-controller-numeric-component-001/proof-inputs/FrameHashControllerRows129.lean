import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData129
import FrameHashControllerInstructionMatrixData130
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8299 : actualRows8299=WordField.canonicalRows actualModulus 8299 (.band 8277 8223) := by core033_kernel_decide
theorem stats8299 : actualRows8299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8299=5124 := by core033_kernel_decide
theorem rows8300 : actualRows8300=WordField.canonicalRows actualModulus 8300 (.bxor 8298 8299) := by core033_kernel_decide
theorem stats8300 : actualRows8300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8300=7428 := by core033_kernel_decide
theorem rows8301 : actualRows8301=WordField.canonicalRows actualModulus 8301 (.band 8250 8223) := by core033_kernel_decide
theorem stats8301 : actualRows8301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8301=5124 := by core033_kernel_decide
theorem rows8302 : actualRows8302=WordField.canonicalRows actualModulus 8302 (.bxor 8300 8301) := by core033_kernel_decide
theorem stats8302 : actualRows8302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8302=7428 := by core033_kernel_decide
theorem rows8303 : actualRows8303=WordField.canonicalRows actualModulus 8303 (.badd 8297 8302) := by core033_kernel_decide
theorem stats8303 : actualRows8303.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8303=5388 := by core033_kernel_decide
theorem rows8304 : actualRows8304=WordField.canonicalRows actualModulus 8304 (.badd 8292 8303) := by core033_kernel_decide
theorem stats8304 : actualRows8304.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8304=5388 := by core033_kernel_decide
theorem rows8305 : actualRows8305=WordField.canonicalRows actualModulus 8305 (.badd 8196 8292) := by core033_kernel_decide
theorem stats8305 : actualRows8305.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8305=5388 := by core033_kernel_decide
theorem rows8306 : actualRows8306=WordField.canonicalRows actualModulus 8306 (.rotr 8305 6) := by core033_kernel_decide
theorem stats8306 : actualRows8306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8306=5124 := by core033_kernel_decide
theorem rows8307 : actualRows8307=WordField.canonicalRows actualModulus 8307 (.rotr 8305 11) := by core033_kernel_decide
theorem stats8307 : actualRows8307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8307=5124 := by core033_kernel_decide
theorem rows8308 : actualRows8308=WordField.canonicalRows actualModulus 8308 (.bxor 8306 8307) := by core033_kernel_decide
theorem stats8308 : actualRows8308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8308=7428 := by core033_kernel_decide
theorem rows8309 : actualRows8309=WordField.canonicalRows actualModulus 8309 (.rotr 8305 25) := by core033_kernel_decide
theorem stats8309 : actualRows8309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8309=5124 := by core033_kernel_decide
theorem rows8310 : actualRows8310=WordField.canonicalRows actualModulus 8310 (.bxor 8308 8309) := by core033_kernel_decide
theorem stats8310 : actualRows8310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8310=7428 := by core033_kernel_decide
theorem rows8311 : actualRows8311=WordField.canonicalRows actualModulus 8311 (.badd 8224 8310) := by core033_kernel_decide
theorem stats8311 : actualRows8311.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8311=5388 := by core033_kernel_decide
theorem rows8312 : actualRows8312=WordField.canonicalRows actualModulus 8312 (.band 8305 8278) := by core033_kernel_decide
theorem stats8312 : actualRows8312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8312=5124 := by core033_kernel_decide
theorem rows8313 : actualRows8313=WordField.canonicalRows actualModulus 8313 (.bnot 8305) := by core033_kernel_decide
theorem stats8313 : actualRows8313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8313=6276 := by core033_kernel_decide
theorem rows8314 : actualRows8314=WordField.canonicalRows actualModulus 8314 (.band 8313 8251) := by core033_kernel_decide
theorem stats8314 : actualRows8314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8314=5124 := by core033_kernel_decide
theorem rows8315 : actualRows8315=WordField.canonicalRows actualModulus 8315 (.bxor 8312 8314) := by core033_kernel_decide
theorem stats8315 : actualRows8315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8315=7428 := by core033_kernel_decide
theorem rows8316 : actualRows8316=WordField.canonicalRows actualModulus 8316 (.badd 8311 8315) := by core033_kernel_decide
theorem stats8316 : actualRows8316.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8316=5388 := by core033_kernel_decide
theorem rows8317 : actualRows8317=WordField.canonicalRows actualModulus 8317 (.literal (BitVec.ofNat 32 275423344)) := by core033_kernel_decide
theorem stats8317 : actualRows8317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8317=3540 := by core033_kernel_decide
theorem rows8318 : actualRows8318=WordField.canonicalRows actualModulus 8318 (.badd 8316 8317) := by core033_kernel_decide
theorem stats8318 : actualRows8318.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8318=5388 := by core033_kernel_decide
theorem rows8319 : actualRows8319=WordField.canonicalRows actualModulus 8319 (.badd 8318 6828) := by core033_kernel_decide
theorem stats8319 : actualRows8319.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8319=5388 := by core033_kernel_decide
theorem rows8320 : actualRows8320=WordField.canonicalRows actualModulus 8320 (.rotr 8304 2) := by core033_kernel_decide
theorem stats8320 : actualRows8320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8320=5124 := by core033_kernel_decide
theorem rows8321 : actualRows8321=WordField.canonicalRows actualModulus 8321 (.rotr 8304 13) := by core033_kernel_decide
theorem stats8321 : actualRows8321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8321=5124 := by core033_kernel_decide
theorem rows8322 : actualRows8322=WordField.canonicalRows actualModulus 8322 (.bxor 8320 8321) := by core033_kernel_decide
theorem stats8322 : actualRows8322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8322=7428 := by core033_kernel_decide
theorem rows8323 : actualRows8323=WordField.canonicalRows actualModulus 8323 (.rotr 8304 22) := by core033_kernel_decide
theorem stats8323 : actualRows8323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8323=5124 := by core033_kernel_decide
theorem rows8324 : actualRows8324=WordField.canonicalRows actualModulus 8324 (.bxor 8322 8323) := by core033_kernel_decide
theorem stats8324 : actualRows8324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8324=7428 := by core033_kernel_decide
theorem rows8325 : actualRows8325=WordField.canonicalRows actualModulus 8325 (.band 8304 8277) := by core033_kernel_decide
theorem stats8325 : actualRows8325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8325=5124 := by core033_kernel_decide
theorem rows8326 : actualRows8326=WordField.canonicalRows actualModulus 8326 (.band 8304 8250) := by core033_kernel_decide
theorem stats8326 : actualRows8326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8326=5124 := by core033_kernel_decide
theorem rows8327 : actualRows8327=WordField.canonicalRows actualModulus 8327 (.bxor 8325 8326) := by core033_kernel_decide
theorem stats8327 : actualRows8327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8327=7428 := by core033_kernel_decide
theorem rows8328 : actualRows8328=WordField.canonicalRows actualModulus 8328 (.band 8277 8250) := by core033_kernel_decide
theorem stats8328 : actualRows8328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8328=5124 := by core033_kernel_decide
theorem rows8329 : actualRows8329=WordField.canonicalRows actualModulus 8329 (.bxor 8327 8328) := by core033_kernel_decide
theorem stats8329 : actualRows8329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8329=7428 := by core033_kernel_decide
theorem rows8330 : actualRows8330=WordField.canonicalRows actualModulus 8330 (.badd 8324 8329) := by core033_kernel_decide
theorem stats8330 : actualRows8330.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8330=5388 := by core033_kernel_decide
theorem rows8331 : actualRows8331=WordField.canonicalRows actualModulus 8331 (.badd 8319 8330) := by core033_kernel_decide
theorem stats8331 : actualRows8331.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8331=5388 := by core033_kernel_decide
theorem rows8332 : actualRows8332=WordField.canonicalRows actualModulus 8332 (.badd 8223 8319) := by core033_kernel_decide
theorem stats8332 : actualRows8332.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8332=5388 := by core033_kernel_decide
theorem rows8333 : actualRows8333=WordField.canonicalRows actualModulus 8333 (.rotr 8332 6) := by core033_kernel_decide
theorem stats8333 : actualRows8333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8333=5124 := by core033_kernel_decide
theorem rows8334 : actualRows8334=WordField.canonicalRows actualModulus 8334 (.rotr 8332 11) := by core033_kernel_decide
theorem stats8334 : actualRows8334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8334=5124 := by core033_kernel_decide
theorem rows8335 : actualRows8335=WordField.canonicalRows actualModulus 8335 (.bxor 8333 8334) := by core033_kernel_decide
theorem stats8335 : actualRows8335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8335=7428 := by core033_kernel_decide
theorem rows8336 : actualRows8336=WordField.canonicalRows actualModulus 8336 (.rotr 8332 25) := by core033_kernel_decide
theorem stats8336 : actualRows8336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8336=5124 := by core033_kernel_decide
theorem rows8337 : actualRows8337=WordField.canonicalRows actualModulus 8337 (.bxor 8335 8336) := by core033_kernel_decide
theorem stats8337 : actualRows8337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8337=7428 := by core033_kernel_decide
theorem rows8338 : actualRows8338=WordField.canonicalRows actualModulus 8338 (.badd 8251 8337) := by core033_kernel_decide
theorem stats8338 : actualRows8338.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8338=5388 := by core033_kernel_decide
theorem rows8339 : actualRows8339=WordField.canonicalRows actualModulus 8339 (.band 8332 8305) := by core033_kernel_decide
theorem stats8339 : actualRows8339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8339=5124 := by core033_kernel_decide
theorem rows8340 : actualRows8340=WordField.canonicalRows actualModulus 8340 (.bnot 8332) := by core033_kernel_decide
theorem stats8340 : actualRows8340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8340=6276 := by core033_kernel_decide
theorem rows8341 : actualRows8341=WordField.canonicalRows actualModulus 8341 (.band 8340 8278) := by core033_kernel_decide
theorem stats8341 : actualRows8341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8341=5124 := by core033_kernel_decide
theorem rows8342 : actualRows8342=WordField.canonicalRows actualModulus 8342 (.bxor 8339 8341) := by core033_kernel_decide
theorem stats8342 : actualRows8342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8342=7428 := by core033_kernel_decide
theorem rows8343 : actualRows8343=WordField.canonicalRows actualModulus 8343 (.badd 8338 8342) := by core033_kernel_decide
theorem stats8343 : actualRows8343.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8343=5388 := by core033_kernel_decide
theorem rows8344 : actualRows8344=WordField.canonicalRows actualModulus 8344 (.literal (BitVec.ofNat 32 430227734)) := by core033_kernel_decide
theorem stats8344 : actualRows8344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8344=3684 := by core033_kernel_decide
theorem rows8345 : actualRows8345=WordField.canonicalRows actualModulus 8345 (.badd 8343 8344) := by core033_kernel_decide
theorem stats8345 : actualRows8345.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8345=5388 := by core033_kernel_decide
theorem rows8346 : actualRows8346=WordField.canonicalRows actualModulus 8346 (.badd 8345 6841) := by core033_kernel_decide
theorem stats8346 : actualRows8346.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8346=5388 := by core033_kernel_decide
theorem rows8347 : actualRows8347=WordField.canonicalRows actualModulus 8347 (.rotr 8331 2) := by core033_kernel_decide
theorem stats8347 : actualRows8347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8347=5124 := by core033_kernel_decide
theorem rows8348 : actualRows8348=WordField.canonicalRows actualModulus 8348 (.rotr 8331 13) := by core033_kernel_decide
theorem stats8348 : actualRows8348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8348=5124 := by core033_kernel_decide
theorem rows8349 : actualRows8349=WordField.canonicalRows actualModulus 8349 (.bxor 8347 8348) := by core033_kernel_decide
theorem stats8349 : actualRows8349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8349=7428 := by core033_kernel_decide
theorem rows8350 : actualRows8350=WordField.canonicalRows actualModulus 8350 (.rotr 8331 22) := by core033_kernel_decide
theorem stats8350 : actualRows8350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8350=5124 := by core033_kernel_decide
theorem rows8351 : actualRows8351=WordField.canonicalRows actualModulus 8351 (.bxor 8349 8350) := by core033_kernel_decide
theorem stats8351 : actualRows8351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8351=7428 := by core033_kernel_decide
theorem rows8352 : actualRows8352=WordField.canonicalRows actualModulus 8352 (.band 8331 8304) := by core033_kernel_decide
theorem stats8352 : actualRows8352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8352=5124 := by core033_kernel_decide
theorem rows8353 : actualRows8353=WordField.canonicalRows actualModulus 8353 (.band 8331 8277) := by core033_kernel_decide
theorem stats8353 : actualRows8353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8353=5124 := by core033_kernel_decide
theorem rows8354 : actualRows8354=WordField.canonicalRows actualModulus 8354 (.bxor 8352 8353) := by core033_kernel_decide
theorem stats8354 : actualRows8354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8354=7428 := by core033_kernel_decide
theorem rows8355 : actualRows8355=WordField.canonicalRows actualModulus 8355 (.band 8304 8277) := by core033_kernel_decide
theorem stats8355 : actualRows8355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8355=5124 := by core033_kernel_decide
theorem rows8356 : actualRows8356=WordField.canonicalRows actualModulus 8356 (.bxor 8354 8355) := by core033_kernel_decide
theorem stats8356 : actualRows8356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8356=7428 := by core033_kernel_decide
theorem rows8357 : actualRows8357=WordField.canonicalRows actualModulus 8357 (.badd 8351 8356) := by core033_kernel_decide
theorem stats8357 : actualRows8357.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8357=5388 := by core033_kernel_decide
theorem rows8358 : actualRows8358=WordField.canonicalRows actualModulus 8358 (.badd 8346 8357) := by core033_kernel_decide
theorem stats8358 : actualRows8358.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8358=5388 := by core033_kernel_decide
theorem rows8359 : actualRows8359=WordField.canonicalRows actualModulus 8359 (.badd 8250 8346) := by core033_kernel_decide
theorem stats8359 : actualRows8359.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8359=5388 := by core033_kernel_decide
theorem rows8360 : actualRows8360=WordField.canonicalRows actualModulus 8360 (.rotr 8359 6) := by core033_kernel_decide
theorem stats8360 : actualRows8360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8360=5124 := by core033_kernel_decide
theorem rows8361 : actualRows8361=WordField.canonicalRows actualModulus 8361 (.rotr 8359 11) := by core033_kernel_decide
theorem stats8361 : actualRows8361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8361=5124 := by core033_kernel_decide
theorem rows8362 : actualRows8362=WordField.canonicalRows actualModulus 8362 (.bxor 8360 8361) := by core033_kernel_decide
theorem stats8362 : actualRows8362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8362=7428 := by core033_kernel_decide
def partRows129 : List R1CS.Row := actualRows8299++actualRows8300++actualRows8301++actualRows8302++actualRows8303++actualRows8304++actualRows8305++actualRows8306++actualRows8307++actualRows8308++actualRows8309++actualRows8310++actualRows8311++actualRows8312++actualRows8313++actualRows8314++actualRows8315++actualRows8316++actualRows8317++actualRows8318++actualRows8319++actualRows8320++actualRows8321++actualRows8322++actualRows8323++actualRows8324++actualRows8325++actualRows8326++actualRows8327++actualRows8328++actualRows8329++actualRows8330++actualRows8331++actualRows8332++actualRows8333++actualRows8334++actualRows8335++actualRows8336++actualRows8337++actualRows8338++actualRows8339++actualRows8340++actualRows8341++actualRows8342++actualRows8343++actualRows8344++actualRows8345++actualRows8346++actualRows8347++actualRows8348++actualRows8349++actualRows8350++actualRows8351++actualRows8352++actualRows8353++actualRows8354++actualRows8355++actualRows8356++actualRows8357++actualRows8358++actualRows8359++actualRows8360++actualRows8361++actualRows8362
def partOps129 : List WordIR.Op := [.band 8277 8223,.bxor 8298 8299,.band 8250 8223,.bxor 8300 8301,.badd 8297 8302,.badd 8292 8303,.badd 8196 8292,.rotr 8305 6,.rotr 8305 11,.bxor 8306 8307,.rotr 8305 25,.bxor 8308 8309,.badd 8224 8310,.band 8305 8278,.bnot 8305,.band 8313 8251,.bxor 8312 8314,.badd 8311 8315,.literal (BitVec.ofNat 32 275423344),.badd 8316 8317,.badd 8318 6828,.rotr 8304 2,.rotr 8304 13,.bxor 8320 8321,.rotr 8304 22,.bxor 8322 8323,.band 8304 8277,.band 8304 8250,.bxor 8325 8326,.band 8277 8250,.bxor 8327 8328,.badd 8324 8329,.badd 8319 8330,.badd 8223 8319,.rotr 8332 6,.rotr 8332 11,.bxor 8333 8334,.rotr 8332 25,.bxor 8335 8336,.badd 8251 8337,.band 8332 8305,.bnot 8332,.band 8340 8278,.bxor 8339 8341,.badd 8338 8342,.literal (BitVec.ofNat 32 430227734),.badd 8343 8344,.badd 8345 6841,.rotr 8331 2,.rotr 8331 13,.bxor 8347 8348,.rotr 8331 22,.bxor 8349 8350,.band 8331 8304,.band 8331 8277,.bxor 8352 8353,.band 8304 8277,.bxor 8354 8355,.badd 8351 8356,.badd 8346 8357,.badd 8250 8346,.rotr 8359 6,.rotr 8359 11,.bxor 8360 8361]
theorem partExact129 : partRows129=WordField.rows actualModulus 8299 partOps129 := by
  simp only [partRows129,partOps129,WordField.rows,rows8299,rows8300,rows8301,rows8302,rows8303,rows8304,rows8305,rows8306,rows8307,rows8308,rows8309,rows8310,rows8311,rows8312,rows8313,rows8314,rows8315,rows8316,rows8317,rows8318,rows8319,rows8320,rows8321,rows8322,rows8323,rows8324,rows8325,rows8326,rows8327,rows8328,rows8329,rows8330,rows8331,rows8332,rows8333,rows8334,rows8335,rows8336,rows8337,rows8338,rows8339,rows8340,rows8341,rows8342,rows8343,rows8344,rows8345,rows8346,rows8347,rows8348,rows8349,rows8350,rows8351,rows8352,rows8353,rows8354,rows8355,rows8356,rows8357,rows8358,rows8359,rows8360,rows8361,rows8362,List.append_assoc,List.append_nil]
theorem partLength129 : partOps129.length=64 := by decide
theorem partStats129 : partRows129.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows129=370872 := by
  simp only [partRows129,List.length_append,MatrixRowBlocks.rows_weight_append,stats8299.1,stats8299.2,stats8300.1,stats8300.2,stats8301.1,stats8301.2,stats8302.1,stats8302.2,stats8303.1,stats8303.2,stats8304.1,stats8304.2,stats8305.1,stats8305.2,stats8306.1,stats8306.2,stats8307.1,stats8307.2,stats8308.1,stats8308.2,stats8309.1,stats8309.2,stats8310.1,stats8310.2,stats8311.1,stats8311.2,stats8312.1,stats8312.2,stats8313.1,stats8313.2,stats8314.1,stats8314.2,stats8315.1,stats8315.2,stats8316.1,stats8316.2,stats8317.1,stats8317.2,stats8318.1,stats8318.2,stats8319.1,stats8319.2,stats8320.1,stats8320.2,stats8321.1,stats8321.2,stats8322.1,stats8322.2,stats8323.1,stats8323.2,stats8324.1,stats8324.2,stats8325.1,stats8325.2,stats8326.1,stats8326.2,stats8327.1,stats8327.2,stats8328.1,stats8328.2,stats8329.1,stats8329.2,stats8330.1,stats8330.2,stats8331.1,stats8331.2,stats8332.1,stats8332.2,stats8333.1,stats8333.2,stats8334.1,stats8334.2,stats8335.1,stats8335.2,stats8336.1,stats8336.2,stats8337.1,stats8337.2,stats8338.1,stats8338.2,stats8339.1,stats8339.2,stats8340.1,stats8340.2,stats8341.1,stats8341.2,stats8342.1,stats8342.2,stats8343.1,stats8343.2,stats8344.1,stats8344.2,stats8345.1,stats8345.2,stats8346.1,stats8346.2,stats8347.1,stats8347.2,stats8348.1,stats8348.2,stats8349.1,stats8349.2,stats8350.1,stats8350.2,stats8351.1,stats8351.2,stats8352.1,stats8352.2,stats8353.1,stats8353.2,stats8354.1,stats8354.2,stats8355.1,stats8355.2,stats8356.1,stats8356.2,stats8357.1,stats8357.2,stats8358.1,stats8358.2,stats8359.1,stats8359.2,stats8360.1,stats8360.2,stats8361.1,stats8361.2,stats8362.1,stats8362.2]
  decide
end FrameHashControllerCheckedRows
