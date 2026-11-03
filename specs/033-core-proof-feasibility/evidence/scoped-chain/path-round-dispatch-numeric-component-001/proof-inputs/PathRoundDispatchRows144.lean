import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData144
import PathRoundDispatchInstructionMatrixData145
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9259 : actualRows9259=WordField.canonicalRows actualModulus 9259 (.badd 9172 9258) := by core033_kernel_decide
theorem stats9259 : actualRows9259.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9259=5388 := by core033_kernel_decide
theorem rows9260 : actualRows9260=WordField.canonicalRows actualModulus 9260 (.band 9253 9226) := by core033_kernel_decide
theorem stats9260 : actualRows9260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9260=5124 := by core033_kernel_decide
theorem rows9261 : actualRows9261=WordField.canonicalRows actualModulus 9261 (.bnot 9253) := by core033_kernel_decide
theorem stats9261 : actualRows9261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9261=6276 := by core033_kernel_decide
theorem rows9262 : actualRows9262=WordField.canonicalRows actualModulus 9262 (.band 9261 9199) := by core033_kernel_decide
theorem stats9262 : actualRows9262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9262=5124 := by core033_kernel_decide
theorem rows9263 : actualRows9263=WordField.canonicalRows actualModulus 9263 (.bxor 9260 9262) := by core033_kernel_decide
theorem stats9263 : actualRows9263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9263=7428 := by core033_kernel_decide
theorem rows9264 : actualRows9264=WordField.canonicalRows actualModulus 9264 (.badd 9259 9263) := by core033_kernel_decide
theorem stats9264 : actualRows9264.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9264=5388 := by core033_kernel_decide
theorem rows9265 : actualRows9265=WordField.canonicalRows actualModulus 9265 (.literal (BitVec.ofNat 32 3329325298)) := by core033_kernel_decide
theorem stats9265 : actualRows9265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9265=4044 := by core033_kernel_decide
theorem rows9266 : actualRows9266=WordField.canonicalRows actualModulus 9266 (.badd 9264 9265) := by core033_kernel_decide
theorem stats9266 : actualRows9266.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9266=5388 := by core033_kernel_decide
theorem rows9267 : actualRows9267=WordField.canonicalRows actualModulus 9267 (.badd 9266 7552) := by core033_kernel_decide
theorem stats9267 : actualRows9267.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9267=5388 := by core033_kernel_decide
theorem rows9268 : actualRows9268=WordField.canonicalRows actualModulus 9268 (.rotr 9252 2) := by core033_kernel_decide
theorem stats9268 : actualRows9268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9268=5124 := by core033_kernel_decide
theorem rows9269 : actualRows9269=WordField.canonicalRows actualModulus 9269 (.rotr 9252 13) := by core033_kernel_decide
theorem stats9269 : actualRows9269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9269=5124 := by core033_kernel_decide
theorem rows9270 : actualRows9270=WordField.canonicalRows actualModulus 9270 (.bxor 9268 9269) := by core033_kernel_decide
theorem stats9270 : actualRows9270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9270=7428 := by core033_kernel_decide
theorem rows9271 : actualRows9271=WordField.canonicalRows actualModulus 9271 (.rotr 9252 22) := by core033_kernel_decide
theorem stats9271 : actualRows9271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9271=5124 := by core033_kernel_decide
theorem rows9272 : actualRows9272=WordField.canonicalRows actualModulus 9272 (.bxor 9270 9271) := by core033_kernel_decide
theorem stats9272 : actualRows9272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9272=7428 := by core033_kernel_decide
theorem rows9273 : actualRows9273=WordField.canonicalRows actualModulus 9273 (.band 9252 9225) := by core033_kernel_decide
theorem stats9273 : actualRows9273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9273=5124 := by core033_kernel_decide
theorem rows9274 : actualRows9274=WordField.canonicalRows actualModulus 9274 (.band 9252 9198) := by core033_kernel_decide
theorem stats9274 : actualRows9274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9274=5124 := by core033_kernel_decide
theorem rows9275 : actualRows9275=WordField.canonicalRows actualModulus 9275 (.bxor 9273 9274) := by core033_kernel_decide
theorem stats9275 : actualRows9275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9275=7428 := by core033_kernel_decide
theorem rows9276 : actualRows9276=WordField.canonicalRows actualModulus 9276 (.band 9225 9198) := by core033_kernel_decide
theorem stats9276 : actualRows9276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9276=5124 := by core033_kernel_decide
theorem rows9277 : actualRows9277=WordField.canonicalRows actualModulus 9277 (.bxor 9275 9276) := by core033_kernel_decide
theorem stats9277 : actualRows9277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9277=7428 := by core033_kernel_decide
theorem rows9278 : actualRows9278=WordField.canonicalRows actualModulus 9278 (.badd 9272 9277) := by core033_kernel_decide
theorem stats9278 : actualRows9278.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9278=5388 := by core033_kernel_decide
theorem rows9279 : actualRows9279=WordField.canonicalRows actualModulus 9279 (.badd 9267 9278) := by core033_kernel_decide
theorem stats9279 : actualRows9279.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9279=5388 := by core033_kernel_decide
theorem rows9280 : actualRows9280=WordField.canonicalRows actualModulus 9280 (.badd 9171 9267) := by core033_kernel_decide
theorem stats9280 : actualRows9280.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9280=5388 := by core033_kernel_decide
theorem rows9281 : actualRows9281=WordField.canonicalRows actualModulus 9281 (.badd 1968 9279) := by core033_kernel_decide
theorem stats9281 : actualRows9281.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9281=5388 := by core033_kernel_decide
theorem rows9282 : actualRows9282=WordField.canonicalRows actualModulus 9282 (.badd 2021 9252) := by core033_kernel_decide
theorem stats9282 : actualRows9282.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9282=5388 := by core033_kernel_decide
theorem rows9283 : actualRows9283=WordField.canonicalRows actualModulus 9283 (.badd 2074 9225) := by core033_kernel_decide
theorem stats9283 : actualRows9283.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9283=5388 := by core033_kernel_decide
theorem rows9284 : actualRows9284=WordField.canonicalRows actualModulus 9284 (.badd 2127 9198) := by core033_kernel_decide
theorem stats9284 : actualRows9284.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9284=5388 := by core033_kernel_decide
theorem rows9285 : actualRows9285=WordField.canonicalRows actualModulus 9285 (.badd 2180 9280) := by core033_kernel_decide
theorem stats9285 : actualRows9285.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9285=5388 := by core033_kernel_decide
theorem rows9286 : actualRows9286=WordField.canonicalRows actualModulus 9286 (.badd 2233 9253) := by core033_kernel_decide
theorem stats9286 : actualRows9286.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9286=5388 := by core033_kernel_decide
theorem rows9287 : actualRows9287=WordField.canonicalRows actualModulus 9287 (.badd 2286 9226) := by core033_kernel_decide
theorem stats9287 : actualRows9287.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9287=5388 := by core033_kernel_decide
theorem rows9288 : actualRows9288=WordField.canonicalRows actualModulus 9288 (.badd 2339 9199) := by core033_kernel_decide
theorem stats9288 : actualRows9288.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9288=5388 := by core033_kernel_decide
theorem rows9289 : actualRows9289=WordField.canonicalRows actualModulus 9289 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9289 : actualRows9289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9289=2892 := by core033_kernel_decide
theorem rows9290 : actualRows9290=WordField.canonicalRows actualModulus 9290 (.bxor 96 9289) := by core033_kernel_decide
theorem stats9290 : actualRows9290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9290=7428 := by core033_kernel_decide
theorem rows9291 : actualRows9291=WordField.canonicalRows actualModulus 9291 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9291 : actualRows9291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9291=2820 := by core033_kernel_decide
theorem rows9292 : actualRows9292=WordField.canonicalRows actualModulus 9292 (.bnot 9291) := by core033_kernel_decide
theorem stats9292 : actualRows9292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9292=6276 := by core033_kernel_decide
theorem rows9293 : actualRows9293=WordField.canonicalRows actualModulus 9293 (.band 9290 9292) := by core033_kernel_decide
theorem stats9293 : actualRows9293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9293=5124 := by core033_kernel_decide
theorem rows9294 : actualRows9294=WordField.canonicalRows actualModulus 9294 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9294 : actualRows9294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9294=2892 := by core033_kernel_decide
theorem rows9295 : actualRows9295=WordField.canonicalRows actualModulus 9295 (.bxor 96 9294) := by core033_kernel_decide
theorem stats9295 : actualRows9295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9295=7428 := by core033_kernel_decide
theorem rows9296 : actualRows9296=WordField.canonicalRows actualModulus 9296 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9296 : actualRows9296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9296=2820 := by core033_kernel_decide
theorem rows9297 : actualRows9297=WordField.canonicalRows actualModulus 9297 (.bnot 9296) := by core033_kernel_decide
theorem stats9297 : actualRows9297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9297=6276 := by core033_kernel_decide
theorem rows9298 : actualRows9298=WordField.canonicalRows actualModulus 9298 (.bxor 9295 9297) := by core033_kernel_decide
theorem stats9298 : actualRows9298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9298=7428 := by core033_kernel_decide
theorem rows9299 : actualRows9299=WordField.canonicalRows actualModulus 9299 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9299 : actualRows9299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9299=2892 := by core033_kernel_decide
theorem rows9300 : actualRows9300=WordField.canonicalRows actualModulus 9300 (.bxor 96 9299) := by core033_kernel_decide
theorem stats9300 : actualRows9300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9300=7428 := by core033_kernel_decide
theorem rows9301 : actualRows9301=WordField.canonicalRows actualModulus 9301 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9301 : actualRows9301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9301=2820 := by core033_kernel_decide
theorem rows9302 : actualRows9302=WordField.canonicalRows actualModulus 9302 (.bnot 9301) := by core033_kernel_decide
theorem stats9302 : actualRows9302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9302=6276 := by core033_kernel_decide
theorem rows9303 : actualRows9303=WordField.canonicalRows actualModulus 9303 (.badd 9300 9302) := by core033_kernel_decide
theorem stats9303 : actualRows9303.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9303=5388 := by core033_kernel_decide
theorem rows9304 : actualRows9304=WordField.canonicalRows actualModulus 9304 (.bnot 9303) := by core033_kernel_decide
theorem stats9304 : actualRows9304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9304=6276 := by core033_kernel_decide
theorem rows9305 : actualRows9305=WordField.canonicalRows actualModulus 9305 (.band 9298 9304) := by core033_kernel_decide
theorem stats9305 : actualRows9305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9305=5124 := by core033_kernel_decide
theorem rows9306 : actualRows9306=WordField.canonicalRows actualModulus 9306 (.bxor 9293 9305) := by core033_kernel_decide
theorem stats9306 : actualRows9306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9306=7428 := by core033_kernel_decide
theorem rows9307 : actualRows9307=WordField.canonicalRows actualModulus 9307 (.shr 9306 31) := by core033_kernel_decide
theorem stats9307 : actualRows9307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9307=2892 := by core033_kernel_decide
theorem rows9308 : actualRows9308=WordField.canonicalRows actualModulus 9308 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9308 : actualRows9308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9308=2892 := by core033_kernel_decide
theorem rows9309 : actualRows9309=WordField.canonicalRows actualModulus 9309 (.bxor 9307 9308) := by core033_kernel_decide
theorem stats9309 : actualRows9309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9309=7428 := by core033_kernel_decide
theorem rows9310 : actualRows9310=WordField.canonicalRows actualModulus 9310 (.bnot 9309) := by core033_kernel_decide
theorem stats9310 : actualRows9310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9310=6276 := by core033_kernel_decide
theorem rows9311 : actualRows9311=WordField.canonicalRows actualModulus 9311 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9311 : actualRows9311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9311=2892 := by core033_kernel_decide
theorem rows9312 : actualRows9312=WordField.canonicalRows actualModulus 9312 (.badd 9310 9311) := by core033_kernel_decide
theorem stats9312 : actualRows9312.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9312=5388 := by core033_kernel_decide
theorem rows9313 : actualRows9313=WordField.canonicalRows actualModulus 9313 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats9313 : actualRows9313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9313=2964 := by core033_kernel_decide
theorem rows9314 : actualRows9314=WordField.canonicalRows actualModulus 9314 (.band 9312 9313) := by core033_kernel_decide
theorem stats9314 : actualRows9314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9314=5124 := by core033_kernel_decide
theorem rows9315 : actualRows9315=WordField.canonicalRows actualModulus 9315 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9315 : actualRows9315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9315=2892 := by core033_kernel_decide
theorem rows9316 : actualRows9316=WordField.canonicalRows actualModulus 9316 (.bxor 96 9315) := by core033_kernel_decide
theorem stats9316 : actualRows9316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9316=7428 := by core033_kernel_decide
theorem rows9317 : actualRows9317=WordField.canonicalRows actualModulus 9317 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9317 : actualRows9317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9317=2820 := by core033_kernel_decide
theorem rows9318 : actualRows9318=WordField.canonicalRows actualModulus 9318 (.bnot 9317) := by core033_kernel_decide
theorem stats9318 : actualRows9318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9318=6276 := by core033_kernel_decide
theorem rows9319 : actualRows9319=WordField.canonicalRows actualModulus 9319 (.band 9316 9318) := by core033_kernel_decide
theorem stats9319 : actualRows9319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9319=5124 := by core033_kernel_decide
theorem rows9320 : actualRows9320=WordField.canonicalRows actualModulus 9320 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9320 : actualRows9320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9320=2892 := by core033_kernel_decide
theorem rows9321 : actualRows9321=WordField.canonicalRows actualModulus 9321 (.bxor 96 9320) := by core033_kernel_decide
theorem stats9321 : actualRows9321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9321=7428 := by core033_kernel_decide
theorem rows9322 : actualRows9322=WordField.canonicalRows actualModulus 9322 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9322 : actualRows9322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9322=2820 := by core033_kernel_decide
def partRows144 : List R1CS.Row := actualRows9259++actualRows9260++actualRows9261++actualRows9262++actualRows9263++actualRows9264++actualRows9265++actualRows9266++actualRows9267++actualRows9268++actualRows9269++actualRows9270++actualRows9271++actualRows9272++actualRows9273++actualRows9274++actualRows9275++actualRows9276++actualRows9277++actualRows9278++actualRows9279++actualRows9280++actualRows9281++actualRows9282++actualRows9283++actualRows9284++actualRows9285++actualRows9286++actualRows9287++actualRows9288++actualRows9289++actualRows9290++actualRows9291++actualRows9292++actualRows9293++actualRows9294++actualRows9295++actualRows9296++actualRows9297++actualRows9298++actualRows9299++actualRows9300++actualRows9301++actualRows9302++actualRows9303++actualRows9304++actualRows9305++actualRows9306++actualRows9307++actualRows9308++actualRows9309++actualRows9310++actualRows9311++actualRows9312++actualRows9313++actualRows9314++actualRows9315++actualRows9316++actualRows9317++actualRows9318++actualRows9319++actualRows9320++actualRows9321++actualRows9322
def partOps144 : List WordIR.Op := [.badd 9172 9258,.band 9253 9226,.bnot 9253,.band 9261 9199,.bxor 9260 9262,.badd 9259 9263,.literal (BitVec.ofNat 32 3329325298),.badd 9264 9265,.badd 9266 7552,.rotr 9252 2,.rotr 9252 13,.bxor 9268 9269,.rotr 9252 22,.bxor 9270 9271,.band 9252 9225,.band 9252 9198,.bxor 9273 9274,.band 9225 9198,.bxor 9275 9276,.badd 9272 9277,.badd 9267 9278,.badd 9171 9267,.badd 1968 9279,.badd 2021 9252,.badd 2074 9225,.badd 2127 9198,.badd 2180 9280,.badd 2233 9253,.badd 2286 9226,.badd 2339 9199,.literal (BitVec.ofNat 32 2),.bxor 96 9289,.literal (BitVec.ofNat 32 0),.bnot 9291,.band 9290 9292,.literal (BitVec.ofNat 32 2),.bxor 96 9294,.literal (BitVec.ofNat 32 0),.bnot 9296,.bxor 9295 9297,.literal (BitVec.ofNat 32 2),.bxor 96 9299,.literal (BitVec.ofNat 32 0),.bnot 9301,.badd 9300 9302,.bnot 9303,.band 9298 9304,.bxor 9293 9305,.shr 9306 31,.literal (BitVec.ofNat 32 1),.bxor 9307 9308,.bnot 9309,.literal (BitVec.ofNat 32 1),.badd 9310 9311,.literal (BitVec.ofNat 32 3),.band 9312 9313,.literal (BitVec.ofNat 32 2),.bxor 96 9315,.literal (BitVec.ofNat 32 0),.bnot 9317,.band 9316 9318,.literal (BitVec.ofNat 32 2),.bxor 96 9320,.literal (BitVec.ofNat 32 0)]
theorem partExact144 : partRows144=WordField.rows actualModulus 9259 partOps144 := by
  simp only [partRows144,partOps144,WordField.rows,rows9259,rows9260,rows9261,rows9262,rows9263,rows9264,rows9265,rows9266,rows9267,rows9268,rows9269,rows9270,rows9271,rows9272,rows9273,rows9274,rows9275,rows9276,rows9277,rows9278,rows9279,rows9280,rows9281,rows9282,rows9283,rows9284,rows9285,rows9286,rows9287,rows9288,rows9289,rows9290,rows9291,rows9292,rows9293,rows9294,rows9295,rows9296,rows9297,rows9298,rows9299,rows9300,rows9301,rows9302,rows9303,rows9304,rows9305,rows9306,rows9307,rows9308,rows9309,rows9310,rows9311,rows9312,rows9313,rows9314,rows9315,rows9316,rows9317,rows9318,rows9319,rows9320,rows9321,rows9322,List.append_assoc,List.append_nil]
theorem partLength144 : partOps144.length=64 := by decide
theorem partStats144 : partRows144.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows144=337824 := by
  simp only [partRows144,List.length_append,MatrixRowBlocks.rows_weight_append,stats9259.1,stats9259.2,stats9260.1,stats9260.2,stats9261.1,stats9261.2,stats9262.1,stats9262.2,stats9263.1,stats9263.2,stats9264.1,stats9264.2,stats9265.1,stats9265.2,stats9266.1,stats9266.2,stats9267.1,stats9267.2,stats9268.1,stats9268.2,stats9269.1,stats9269.2,stats9270.1,stats9270.2,stats9271.1,stats9271.2,stats9272.1,stats9272.2,stats9273.1,stats9273.2,stats9274.1,stats9274.2,stats9275.1,stats9275.2,stats9276.1,stats9276.2,stats9277.1,stats9277.2,stats9278.1,stats9278.2,stats9279.1,stats9279.2,stats9280.1,stats9280.2,stats9281.1,stats9281.2,stats9282.1,stats9282.2,stats9283.1,stats9283.2,stats9284.1,stats9284.2,stats9285.1,stats9285.2,stats9286.1,stats9286.2,stats9287.1,stats9287.2,stats9288.1,stats9288.2,stats9289.1,stats9289.2,stats9290.1,stats9290.2,stats9291.1,stats9291.2,stats9292.1,stats9292.2,stats9293.1,stats9293.2,stats9294.1,stats9294.2,stats9295.1,stats9295.2,stats9296.1,stats9296.2,stats9297.1,stats9297.2,stats9298.1,stats9298.2,stats9299.1,stats9299.2,stats9300.1,stats9300.2,stats9301.1,stats9301.2,stats9302.1,stats9302.2,stats9303.1,stats9303.2,stats9304.1,stats9304.2,stats9305.1,stats9305.2,stats9306.1,stats9306.2,stats9307.1,stats9307.2,stats9308.1,stats9308.2,stats9309.1,stats9309.2,stats9310.1,stats9310.2,stats9311.1,stats9311.2,stats9312.1,stats9312.2,stats9313.1,stats9313.2,stats9314.1,stats9314.2,stats9315.1,stats9315.2,stats9316.1,stats9316.2,stats9317.1,stats9317.2,stats9318.1,stats9318.2,stats9319.1,stats9319.2,stats9320.1,stats9320.2,stats9321.1,stats9321.2,stats9322.1,stats9322.2]
  decide
end PathRoundDispatchCheckedRows
