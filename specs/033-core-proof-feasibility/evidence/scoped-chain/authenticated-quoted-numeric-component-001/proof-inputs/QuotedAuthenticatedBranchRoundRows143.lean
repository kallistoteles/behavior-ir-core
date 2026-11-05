import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData144
import AuthenticatedBranchRoundInstructionMatrixData145
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9270 : actualRows9270=WordField.canonicalRows actualModulus 9270 (.rotr 9268 11) := by core033_kernel_decide
theorem stats9270 : actualRows9270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9270=5124 := by core033_kernel_decide
theorem rows9271 : actualRows9271=WordField.canonicalRows actualModulus 9271 (.bxor 9269 9270) := by core033_kernel_decide
theorem stats9271 : actualRows9271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9271=7428 := by core033_kernel_decide
theorem rows9272 : actualRows9272=WordField.canonicalRows actualModulus 9272 (.rotr 9268 25) := by core033_kernel_decide
theorem stats9272 : actualRows9272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9272=5124 := by core033_kernel_decide
theorem rows9273 : actualRows9273=WordField.canonicalRows actualModulus 9273 (.bxor 9271 9272) := by core033_kernel_decide
theorem stats9273 : actualRows9273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9273=7428 := by core033_kernel_decide
theorem rows9274 : actualRows9274=WordField.canonicalRows actualModulus 9274 (.badd 9187 9273) := by core033_kernel_decide
theorem stats9274 : actualRows9274.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9274=5388 := by core033_kernel_decide
theorem rows9275 : actualRows9275=WordField.canonicalRows actualModulus 9275 (.band 9268 9241) := by core033_kernel_decide
theorem stats9275 : actualRows9275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9275=5124 := by core033_kernel_decide
theorem rows9276 : actualRows9276=WordField.canonicalRows actualModulus 9276 (.bnot 9268) := by core033_kernel_decide
theorem stats9276 : actualRows9276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9276=6276 := by core033_kernel_decide
theorem rows9277 : actualRows9277=WordField.canonicalRows actualModulus 9277 (.band 9276 9214) := by core033_kernel_decide
theorem stats9277 : actualRows9277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9277=5124 := by core033_kernel_decide
theorem rows9278 : actualRows9278=WordField.canonicalRows actualModulus 9278 (.bxor 9275 9277) := by core033_kernel_decide
theorem stats9278 : actualRows9278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9278=7428 := by core033_kernel_decide
theorem rows9279 : actualRows9279=WordField.canonicalRows actualModulus 9279 (.badd 9274 9278) := by core033_kernel_decide
theorem stats9279 : actualRows9279.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9279=5388 := by core033_kernel_decide
theorem rows9280 : actualRows9280=WordField.canonicalRows actualModulus 9280 (.literal (BitVec.ofNat 32 604807628)) := by core033_kernel_decide
theorem stats9280 : actualRows9280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9280=3612 := by core033_kernel_decide
theorem rows9281 : actualRows9281=WordField.canonicalRows actualModulus 9281 (.badd 9279 9280) := by core033_kernel_decide
theorem stats9281 : actualRows9281.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9281=5388 := by core033_kernel_decide
theorem rows9282 : actualRows9282=WordField.canonicalRows actualModulus 9282 (.badd 9281 8183) := by core033_kernel_decide
theorem stats9282 : actualRows9282.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9282=5388 := by core033_kernel_decide
theorem rows9283 : actualRows9283=WordField.canonicalRows actualModulus 9283 (.rotr 9267 2) := by core033_kernel_decide
theorem stats9283 : actualRows9283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9283=5124 := by core033_kernel_decide
theorem rows9284 : actualRows9284=WordField.canonicalRows actualModulus 9284 (.rotr 9267 13) := by core033_kernel_decide
theorem stats9284 : actualRows9284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9284=5124 := by core033_kernel_decide
theorem rows9285 : actualRows9285=WordField.canonicalRows actualModulus 9285 (.bxor 9283 9284) := by core033_kernel_decide
theorem stats9285 : actualRows9285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9285=7428 := by core033_kernel_decide
theorem rows9286 : actualRows9286=WordField.canonicalRows actualModulus 9286 (.rotr 9267 22) := by core033_kernel_decide
theorem stats9286 : actualRows9286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9286=5124 := by core033_kernel_decide
theorem rows9287 : actualRows9287=WordField.canonicalRows actualModulus 9287 (.bxor 9285 9286) := by core033_kernel_decide
theorem stats9287 : actualRows9287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9287=7428 := by core033_kernel_decide
theorem rows9288 : actualRows9288=WordField.canonicalRows actualModulus 9288 (.band 9267 9240) := by core033_kernel_decide
theorem stats9288 : actualRows9288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9288=5124 := by core033_kernel_decide
theorem rows9289 : actualRows9289=WordField.canonicalRows actualModulus 9289 (.band 9267 9213) := by core033_kernel_decide
theorem stats9289 : actualRows9289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9289=5124 := by core033_kernel_decide
theorem rows9290 : actualRows9290=WordField.canonicalRows actualModulus 9290 (.bxor 9288 9289) := by core033_kernel_decide
theorem stats9290 : actualRows9290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9290=7428 := by core033_kernel_decide
theorem rows9291 : actualRows9291=WordField.canonicalRows actualModulus 9291 (.band 9240 9213) := by core033_kernel_decide
theorem stats9291 : actualRows9291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9291=5124 := by core033_kernel_decide
theorem rows9292 : actualRows9292=WordField.canonicalRows actualModulus 9292 (.bxor 9290 9291) := by core033_kernel_decide
theorem stats9292 : actualRows9292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9292=7428 := by core033_kernel_decide
theorem rows9293 : actualRows9293=WordField.canonicalRows actualModulus 9293 (.badd 9287 9292) := by core033_kernel_decide
theorem stats9293 : actualRows9293.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9293=5388 := by core033_kernel_decide
theorem rows9294 : actualRows9294=WordField.canonicalRows actualModulus 9294 (.badd 9282 9293) := by core033_kernel_decide
theorem stats9294 : actualRows9294.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9294=5388 := by core033_kernel_decide
theorem rows9295 : actualRows9295=WordField.canonicalRows actualModulus 9295 (.badd 9186 9282) := by core033_kernel_decide
theorem stats9295 : actualRows9295.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9295=5388 := by core033_kernel_decide
theorem rows9296 : actualRows9296=WordField.canonicalRows actualModulus 9296 (.rotr 9295 6) := by core033_kernel_decide
theorem stats9296 : actualRows9296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9296=5124 := by core033_kernel_decide
theorem rows9297 : actualRows9297=WordField.canonicalRows actualModulus 9297 (.rotr 9295 11) := by core033_kernel_decide
theorem stats9297 : actualRows9297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9297=5124 := by core033_kernel_decide
theorem rows9298 : actualRows9298=WordField.canonicalRows actualModulus 9298 (.bxor 9296 9297) := by core033_kernel_decide
theorem stats9298 : actualRows9298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9298=7428 := by core033_kernel_decide
theorem rows9299 : actualRows9299=WordField.canonicalRows actualModulus 9299 (.rotr 9295 25) := by core033_kernel_decide
theorem stats9299 : actualRows9299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9299=5124 := by core033_kernel_decide
theorem rows9300 : actualRows9300=WordField.canonicalRows actualModulus 9300 (.bxor 9298 9299) := by core033_kernel_decide
theorem stats9300 : actualRows9300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9300=7428 := by core033_kernel_decide
theorem rows9301 : actualRows9301=WordField.canonicalRows actualModulus 9301 (.badd 9214 9300) := by core033_kernel_decide
theorem stats9301 : actualRows9301.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9301=5388 := by core033_kernel_decide
theorem rows9302 : actualRows9302=WordField.canonicalRows actualModulus 9302 (.band 9295 9268) := by core033_kernel_decide
theorem stats9302 : actualRows9302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9302=5124 := by core033_kernel_decide
theorem rows9303 : actualRows9303=WordField.canonicalRows actualModulus 9303 (.bnot 9295) := by core033_kernel_decide
theorem stats9303 : actualRows9303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9303=6276 := by core033_kernel_decide
theorem rows9304 : actualRows9304=WordField.canonicalRows actualModulus 9304 (.band 9303 9241) := by core033_kernel_decide
theorem stats9304 : actualRows9304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9304=5124 := by core033_kernel_decide
theorem rows9305 : actualRows9305=WordField.canonicalRows actualModulus 9305 (.bxor 9302 9304) := by core033_kernel_decide
theorem stats9305 : actualRows9305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9305=7428 := by core033_kernel_decide
theorem rows9306 : actualRows9306=WordField.canonicalRows actualModulus 9306 (.badd 9301 9305) := by core033_kernel_decide
theorem stats9306 : actualRows9306.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9306=5388 := by core033_kernel_decide
theorem rows9307 : actualRows9307=WordField.canonicalRows actualModulus 9307 (.literal (BitVec.ofNat 32 770255983)) := by core033_kernel_decide
theorem stats9307 : actualRows9307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9307=4116 := by core033_kernel_decide
theorem rows9308 : actualRows9308=WordField.canonicalRows actualModulus 9308 (.badd 9306 9307) := by core033_kernel_decide
theorem stats9308 : actualRows9308.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9308=5388 := by core033_kernel_decide
theorem rows9309 : actualRows9309=WordField.canonicalRows actualModulus 9309 (.badd 9308 8196) := by core033_kernel_decide
theorem stats9309 : actualRows9309.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9309=5388 := by core033_kernel_decide
theorem rows9310 : actualRows9310=WordField.canonicalRows actualModulus 9310 (.rotr 9294 2) := by core033_kernel_decide
theorem stats9310 : actualRows9310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9310=5124 := by core033_kernel_decide
theorem rows9311 : actualRows9311=WordField.canonicalRows actualModulus 9311 (.rotr 9294 13) := by core033_kernel_decide
theorem stats9311 : actualRows9311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9311=5124 := by core033_kernel_decide
theorem rows9312 : actualRows9312=WordField.canonicalRows actualModulus 9312 (.bxor 9310 9311) := by core033_kernel_decide
theorem stats9312 : actualRows9312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9312=7428 := by core033_kernel_decide
theorem rows9313 : actualRows9313=WordField.canonicalRows actualModulus 9313 (.rotr 9294 22) := by core033_kernel_decide
theorem stats9313 : actualRows9313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9313=5124 := by core033_kernel_decide
theorem rows9314 : actualRows9314=WordField.canonicalRows actualModulus 9314 (.bxor 9312 9313) := by core033_kernel_decide
theorem stats9314 : actualRows9314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9314=7428 := by core033_kernel_decide
theorem rows9315 : actualRows9315=WordField.canonicalRows actualModulus 9315 (.band 9294 9267) := by core033_kernel_decide
theorem stats9315 : actualRows9315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9315=5124 := by core033_kernel_decide
theorem rows9316 : actualRows9316=WordField.canonicalRows actualModulus 9316 (.band 9294 9240) := by core033_kernel_decide
theorem stats9316 : actualRows9316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9316=5124 := by core033_kernel_decide
theorem rows9317 : actualRows9317=WordField.canonicalRows actualModulus 9317 (.bxor 9315 9316) := by core033_kernel_decide
theorem stats9317 : actualRows9317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9317=7428 := by core033_kernel_decide
theorem rows9318 : actualRows9318=WordField.canonicalRows actualModulus 9318 (.band 9267 9240) := by core033_kernel_decide
theorem stats9318 : actualRows9318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9318=5124 := by core033_kernel_decide
theorem rows9319 : actualRows9319=WordField.canonicalRows actualModulus 9319 (.bxor 9317 9318) := by core033_kernel_decide
theorem stats9319 : actualRows9319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9319=7428 := by core033_kernel_decide
theorem rows9320 : actualRows9320=WordField.canonicalRows actualModulus 9320 (.badd 9314 9319) := by core033_kernel_decide
theorem stats9320 : actualRows9320.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9320=5388 := by core033_kernel_decide
theorem rows9321 : actualRows9321=WordField.canonicalRows actualModulus 9321 (.badd 9309 9320) := by core033_kernel_decide
theorem stats9321 : actualRows9321.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9321=5388 := by core033_kernel_decide
theorem rows9322 : actualRows9322=WordField.canonicalRows actualModulus 9322 (.badd 9213 9309) := by core033_kernel_decide
theorem stats9322 : actualRows9322.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9322=5388 := by core033_kernel_decide
theorem rows9323 : actualRows9323=WordField.canonicalRows actualModulus 9323 (.rotr 9322 6) := by core033_kernel_decide
theorem stats9323 : actualRows9323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9323=5124 := by core033_kernel_decide
theorem rows9324 : actualRows9324=WordField.canonicalRows actualModulus 9324 (.rotr 9322 11) := by core033_kernel_decide
theorem stats9324 : actualRows9324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9324=5124 := by core033_kernel_decide
theorem rows9325 : actualRows9325=WordField.canonicalRows actualModulus 9325 (.bxor 9323 9324) := by core033_kernel_decide
theorem stats9325 : actualRows9325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9325=7428 := by core033_kernel_decide
theorem rows9326 : actualRows9326=WordField.canonicalRows actualModulus 9326 (.rotr 9322 25) := by core033_kernel_decide
theorem stats9326 : actualRows9326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9326=5124 := by core033_kernel_decide
theorem rows9327 : actualRows9327=WordField.canonicalRows actualModulus 9327 (.bxor 9325 9326) := by core033_kernel_decide
theorem stats9327 : actualRows9327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9327=7428 := by core033_kernel_decide
theorem rows9328 : actualRows9328=WordField.canonicalRows actualModulus 9328 (.badd 9241 9327) := by core033_kernel_decide
theorem stats9328 : actualRows9328.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9328=5388 := by core033_kernel_decide
theorem rows9329 : actualRows9329=WordField.canonicalRows actualModulus 9329 (.band 9322 9295) := by core033_kernel_decide
theorem stats9329 : actualRows9329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9329=5124 := by core033_kernel_decide
theorem rows9330 : actualRows9330=WordField.canonicalRows actualModulus 9330 (.bnot 9322) := by core033_kernel_decide
theorem stats9330 : actualRows9330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9330=6276 := by core033_kernel_decide
theorem rows9331 : actualRows9331=WordField.canonicalRows actualModulus 9331 (.band 9330 9268) := by core033_kernel_decide
theorem stats9331 : actualRows9331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9331=5124 := by core033_kernel_decide
theorem rows9332 : actualRows9332=WordField.canonicalRows actualModulus 9332 (.bxor 9329 9331) := by core033_kernel_decide
theorem stats9332 : actualRows9332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9332=7428 := by core033_kernel_decide
theorem rows9333 : actualRows9333=WordField.canonicalRows actualModulus 9333 (.badd 9328 9332) := by core033_kernel_decide
theorem stats9333 : actualRows9333.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9333=5388 := by core033_kernel_decide
def partRows143 : List R1CS.Row := actualRows9270++actualRows9271++actualRows9272++actualRows9273++actualRows9274++actualRows9275++actualRows9276++actualRows9277++actualRows9278++actualRows9279++actualRows9280++actualRows9281++actualRows9282++actualRows9283++actualRows9284++actualRows9285++actualRows9286++actualRows9287++actualRows9288++actualRows9289++actualRows9290++actualRows9291++actualRows9292++actualRows9293++actualRows9294++actualRows9295++actualRows9296++actualRows9297++actualRows9298++actualRows9299++actualRows9300++actualRows9301++actualRows9302++actualRows9303++actualRows9304++actualRows9305++actualRows9306++actualRows9307++actualRows9308++actualRows9309++actualRows9310++actualRows9311++actualRows9312++actualRows9313++actualRows9314++actualRows9315++actualRows9316++actualRows9317++actualRows9318++actualRows9319++actualRows9320++actualRows9321++actualRows9322++actualRows9323++actualRows9324++actualRows9325++actualRows9326++actualRows9327++actualRows9328++actualRows9329++actualRows9330++actualRows9331++actualRows9332++actualRows9333
def partOps143 : List WordIR.Op := [.rotr 9268 11,.bxor 9269 9270,.rotr 9268 25,.bxor 9271 9272,.badd 9187 9273,.band 9268 9241,.bnot 9268,.band 9276 9214,.bxor 9275 9277,.badd 9274 9278,.literal (BitVec.ofNat 32 604807628),.badd 9279 9280,.badd 9281 8183,.rotr 9267 2,.rotr 9267 13,.bxor 9283 9284,.rotr 9267 22,.bxor 9285 9286,.band 9267 9240,.band 9267 9213,.bxor 9288 9289,.band 9240 9213,.bxor 9290 9291,.badd 9287 9292,.badd 9282 9293,.badd 9186 9282,.rotr 9295 6,.rotr 9295 11,.bxor 9296 9297,.rotr 9295 25,.bxor 9298 9299,.badd 9214 9300,.band 9295 9268,.bnot 9295,.band 9303 9241,.bxor 9302 9304,.badd 9301 9305,.literal (BitVec.ofNat 32 770255983),.badd 9306 9307,.badd 9308 8196,.rotr 9294 2,.rotr 9294 13,.bxor 9310 9311,.rotr 9294 22,.bxor 9312 9313,.band 9294 9267,.band 9294 9240,.bxor 9315 9316,.band 9267 9240,.bxor 9317 9318,.badd 9314 9319,.badd 9309 9320,.badd 9213 9309,.rotr 9322 6,.rotr 9322 11,.bxor 9323 9324,.rotr 9322 25,.bxor 9325 9326,.badd 9241 9327,.band 9322 9295,.bnot 9322,.band 9330 9268,.bxor 9329 9331,.badd 9328 9332]
theorem partExact143 : partRows143=WordField.rows actualModulus 9270 partOps143 := by
  simp only [partRows143,partOps143,WordField.rows,rows9270,rows9271,rows9272,rows9273,rows9274,rows9275,rows9276,rows9277,rows9278,rows9279,rows9280,rows9281,rows9282,rows9283,rows9284,rows9285,rows9286,rows9287,rows9288,rows9289,rows9290,rows9291,rows9292,rows9293,rows9294,rows9295,rows9296,rows9297,rows9298,rows9299,rows9300,rows9301,rows9302,rows9303,rows9304,rows9305,rows9306,rows9307,rows9308,rows9309,rows9310,rows9311,rows9312,rows9313,rows9314,rows9315,rows9316,rows9317,rows9318,rows9319,rows9320,rows9321,rows9322,rows9323,rows9324,rows9325,rows9326,rows9327,rows9328,rows9329,rows9330,rows9331,rows9332,rows9333,List.append_assoc,List.append_nil]
theorem partLength143 : partOps143.length=64 := by decide
theorem partStats143 : partRows143.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows143=372264 := by
  simp only [partRows143,List.length_append,MatrixRowBlocks.rows_weight_append,stats9270.1,stats9270.2,stats9271.1,stats9271.2,stats9272.1,stats9272.2,stats9273.1,stats9273.2,stats9274.1,stats9274.2,stats9275.1,stats9275.2,stats9276.1,stats9276.2,stats9277.1,stats9277.2,stats9278.1,stats9278.2,stats9279.1,stats9279.2,stats9280.1,stats9280.2,stats9281.1,stats9281.2,stats9282.1,stats9282.2,stats9283.1,stats9283.2,stats9284.1,stats9284.2,stats9285.1,stats9285.2,stats9286.1,stats9286.2,stats9287.1,stats9287.2,stats9288.1,stats9288.2,stats9289.1,stats9289.2,stats9290.1,stats9290.2,stats9291.1,stats9291.2,stats9292.1,stats9292.2,stats9293.1,stats9293.2,stats9294.1,stats9294.2,stats9295.1,stats9295.2,stats9296.1,stats9296.2,stats9297.1,stats9297.2,stats9298.1,stats9298.2,stats9299.1,stats9299.2,stats9300.1,stats9300.2,stats9301.1,stats9301.2,stats9302.1,stats9302.2,stats9303.1,stats9303.2,stats9304.1,stats9304.2,stats9305.1,stats9305.2,stats9306.1,stats9306.2,stats9307.1,stats9307.2,stats9308.1,stats9308.2,stats9309.1,stats9309.2,stats9310.1,stats9310.2,stats9311.1,stats9311.2,stats9312.1,stats9312.2,stats9313.1,stats9313.2,stats9314.1,stats9314.2,stats9315.1,stats9315.2,stats9316.1,stats9316.2,stats9317.1,stats9317.2,stats9318.1,stats9318.2,stats9319.1,stats9319.2,stats9320.1,stats9320.2,stats9321.1,stats9321.2,stats9322.1,stats9322.2,stats9323.1,stats9323.2,stats9324.1,stats9324.2,stats9325.1,stats9325.2,stats9326.1,stats9326.2,stats9327.1,stats9327.2,stats9328.1,stats9328.2,stats9329.1,stats9329.2,stats9330.1,stats9330.2,stats9331.1,stats9331.2,stats9332.1,stats9332.2,stats9333.1,stats9333.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
