import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData144
import PairedPathRoundInstructionMatrixData145
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9248 : actualRows9248=WordField.canonicalRows actualModulus 9248 (.rotr 9232 2) := by core033_kernel_decide
theorem stats9248 : actualRows9248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9248=5124 := by core033_kernel_decide
theorem rows9249 : actualRows9249=WordField.canonicalRows actualModulus 9249 (.rotr 9232 13) := by core033_kernel_decide
theorem stats9249 : actualRows9249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9249=5124 := by core033_kernel_decide
theorem rows9250 : actualRows9250=WordField.canonicalRows actualModulus 9250 (.bxor 9248 9249) := by core033_kernel_decide
theorem stats9250 : actualRows9250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9250=7428 := by core033_kernel_decide
theorem rows9251 : actualRows9251=WordField.canonicalRows actualModulus 9251 (.rotr 9232 22) := by core033_kernel_decide
theorem stats9251 : actualRows9251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9251=5124 := by core033_kernel_decide
theorem rows9252 : actualRows9252=WordField.canonicalRows actualModulus 9252 (.bxor 9250 9251) := by core033_kernel_decide
theorem stats9252 : actualRows9252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9252=7428 := by core033_kernel_decide
theorem rows9253 : actualRows9253=WordField.canonicalRows actualModulus 9253 (.band 9232 9205) := by core033_kernel_decide
theorem stats9253 : actualRows9253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9253=5124 := by core033_kernel_decide
theorem rows9254 : actualRows9254=WordField.canonicalRows actualModulus 9254 (.band 9232 9178) := by core033_kernel_decide
theorem stats9254 : actualRows9254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9254=5124 := by core033_kernel_decide
theorem rows9255 : actualRows9255=WordField.canonicalRows actualModulus 9255 (.bxor 9253 9254) := by core033_kernel_decide
theorem stats9255 : actualRows9255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9255=7428 := by core033_kernel_decide
theorem rows9256 : actualRows9256=WordField.canonicalRows actualModulus 9256 (.band 9205 9178) := by core033_kernel_decide
theorem stats9256 : actualRows9256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9256=5124 := by core033_kernel_decide
theorem rows9257 : actualRows9257=WordField.canonicalRows actualModulus 9257 (.bxor 9255 9256) := by core033_kernel_decide
theorem stats9257 : actualRows9257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9257=7428 := by core033_kernel_decide
theorem rows9258 : actualRows9258=WordField.canonicalRows actualModulus 9258 (.badd 9252 9257) := by core033_kernel_decide
theorem stats9258 : actualRows9258.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9258=5388 := by core033_kernel_decide
theorem rows9259 : actualRows9259=WordField.canonicalRows actualModulus 9259 (.badd 9247 9258) := by core033_kernel_decide
theorem stats9259 : actualRows9259.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9259=5388 := by core033_kernel_decide
theorem rows9260 : actualRows9260=WordField.canonicalRows actualModulus 9260 (.badd 9151 9247) := by core033_kernel_decide
theorem stats9260 : actualRows9260.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9260=5388 := by core033_kernel_decide
theorem rows9261 : actualRows9261=WordField.canonicalRows actualModulus 9261 (.rotr 9260 6) := by core033_kernel_decide
theorem stats9261 : actualRows9261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9261=5124 := by core033_kernel_decide
theorem rows9262 : actualRows9262=WordField.canonicalRows actualModulus 9262 (.rotr 9260 11) := by core033_kernel_decide
theorem stats9262 : actualRows9262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9262=5124 := by core033_kernel_decide
theorem rows9263 : actualRows9263=WordField.canonicalRows actualModulus 9263 (.bxor 9261 9262) := by core033_kernel_decide
theorem stats9263 : actualRows9263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9263=7428 := by core033_kernel_decide
theorem rows9264 : actualRows9264=WordField.canonicalRows actualModulus 9264 (.rotr 9260 25) := by core033_kernel_decide
theorem stats9264 : actualRows9264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9264=5124 := by core033_kernel_decide
theorem rows9265 : actualRows9265=WordField.canonicalRows actualModulus 9265 (.bxor 9263 9264) := by core033_kernel_decide
theorem stats9265 : actualRows9265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9265=7428 := by core033_kernel_decide
theorem rows9266 : actualRows9266=WordField.canonicalRows actualModulus 9266 (.badd 9179 9265) := by core033_kernel_decide
theorem stats9266 : actualRows9266.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9266=5388 := by core033_kernel_decide
theorem rows9267 : actualRows9267=WordField.canonicalRows actualModulus 9267 (.band 9260 9233) := by core033_kernel_decide
theorem stats9267 : actualRows9267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9267=5124 := by core033_kernel_decide
theorem rows9268 : actualRows9268=WordField.canonicalRows actualModulus 9268 (.bnot 9260) := by core033_kernel_decide
theorem stats9268 : actualRows9268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9268=6276 := by core033_kernel_decide
theorem rows9269 : actualRows9269=WordField.canonicalRows actualModulus 9269 (.band 9268 9206) := by core033_kernel_decide
theorem stats9269 : actualRows9269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9269=5124 := by core033_kernel_decide
theorem rows9270 : actualRows9270=WordField.canonicalRows actualModulus 9270 (.bxor 9267 9269) := by core033_kernel_decide
theorem stats9270 : actualRows9270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9270=7428 := by core033_kernel_decide
theorem rows9271 : actualRows9271=WordField.canonicalRows actualModulus 9271 (.badd 9266 9270) := by core033_kernel_decide
theorem stats9271 : actualRows9271.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9271=5388 := by core033_kernel_decide
theorem rows9272 : actualRows9272=WordField.canonicalRows actualModulus 9272 (.literal (BitVec.ofNat 32 3516065817)) := by core033_kernel_decide
theorem stats9272 : actualRows9272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9272=3828 := by core033_kernel_decide
theorem rows9273 : actualRows9273=WordField.canonicalRows actualModulus 9273 (.badd 9271 9272) := by core033_kernel_decide
theorem stats9273 : actualRows9273.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9273=5388 := by core033_kernel_decide
theorem rows9274 : actualRows9274=WordField.canonicalRows actualModulus 9274 (.badd 9273 7825) := by core033_kernel_decide
theorem stats9274 : actualRows9274.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9274=5388 := by core033_kernel_decide
theorem rows9275 : actualRows9275=WordField.canonicalRows actualModulus 9275 (.rotr 9259 2) := by core033_kernel_decide
theorem stats9275 : actualRows9275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9275=5124 := by core033_kernel_decide
theorem rows9276 : actualRows9276=WordField.canonicalRows actualModulus 9276 (.rotr 9259 13) := by core033_kernel_decide
theorem stats9276 : actualRows9276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9276=5124 := by core033_kernel_decide
theorem rows9277 : actualRows9277=WordField.canonicalRows actualModulus 9277 (.bxor 9275 9276) := by core033_kernel_decide
theorem stats9277 : actualRows9277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9277=7428 := by core033_kernel_decide
theorem rows9278 : actualRows9278=WordField.canonicalRows actualModulus 9278 (.rotr 9259 22) := by core033_kernel_decide
theorem stats9278 : actualRows9278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9278=5124 := by core033_kernel_decide
theorem rows9279 : actualRows9279=WordField.canonicalRows actualModulus 9279 (.bxor 9277 9278) := by core033_kernel_decide
theorem stats9279 : actualRows9279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9279=7428 := by core033_kernel_decide
theorem rows9280 : actualRows9280=WordField.canonicalRows actualModulus 9280 (.band 9259 9232) := by core033_kernel_decide
theorem stats9280 : actualRows9280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9280=5124 := by core033_kernel_decide
theorem rows9281 : actualRows9281=WordField.canonicalRows actualModulus 9281 (.band 9259 9205) := by core033_kernel_decide
theorem stats9281 : actualRows9281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9281=5124 := by core033_kernel_decide
theorem rows9282 : actualRows9282=WordField.canonicalRows actualModulus 9282 (.bxor 9280 9281) := by core033_kernel_decide
theorem stats9282 : actualRows9282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9282=7428 := by core033_kernel_decide
theorem rows9283 : actualRows9283=WordField.canonicalRows actualModulus 9283 (.band 9232 9205) := by core033_kernel_decide
theorem stats9283 : actualRows9283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9283=5124 := by core033_kernel_decide
theorem rows9284 : actualRows9284=WordField.canonicalRows actualModulus 9284 (.bxor 9282 9283) := by core033_kernel_decide
theorem stats9284 : actualRows9284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9284=7428 := by core033_kernel_decide
theorem rows9285 : actualRows9285=WordField.canonicalRows actualModulus 9285 (.badd 9279 9284) := by core033_kernel_decide
theorem stats9285 : actualRows9285.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9285=5388 := by core033_kernel_decide
theorem rows9286 : actualRows9286=WordField.canonicalRows actualModulus 9286 (.badd 9274 9285) := by core033_kernel_decide
theorem stats9286 : actualRows9286.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9286=5388 := by core033_kernel_decide
theorem rows9287 : actualRows9287=WordField.canonicalRows actualModulus 9287 (.badd 9178 9274) := by core033_kernel_decide
theorem stats9287 : actualRows9287.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9287=5388 := by core033_kernel_decide
theorem rows9288 : actualRows9288=WordField.canonicalRows actualModulus 9288 (.rotr 9287 6) := by core033_kernel_decide
theorem stats9288 : actualRows9288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9288=5124 := by core033_kernel_decide
theorem rows9289 : actualRows9289=WordField.canonicalRows actualModulus 9289 (.rotr 9287 11) := by core033_kernel_decide
theorem stats9289 : actualRows9289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9289=5124 := by core033_kernel_decide
theorem rows9290 : actualRows9290=WordField.canonicalRows actualModulus 9290 (.bxor 9288 9289) := by core033_kernel_decide
theorem stats9290 : actualRows9290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9290=7428 := by core033_kernel_decide
theorem rows9291 : actualRows9291=WordField.canonicalRows actualModulus 9291 (.rotr 9287 25) := by core033_kernel_decide
theorem stats9291 : actualRows9291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9291=5124 := by core033_kernel_decide
theorem rows9292 : actualRows9292=WordField.canonicalRows actualModulus 9292 (.bxor 9290 9291) := by core033_kernel_decide
theorem stats9292 : actualRows9292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9292=7428 := by core033_kernel_decide
theorem rows9293 : actualRows9293=WordField.canonicalRows actualModulus 9293 (.badd 9206 9292) := by core033_kernel_decide
theorem stats9293 : actualRows9293.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9293=5388 := by core033_kernel_decide
theorem rows9294 : actualRows9294=WordField.canonicalRows actualModulus 9294 (.band 9287 9260) := by core033_kernel_decide
theorem stats9294 : actualRows9294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9294=5124 := by core033_kernel_decide
theorem rows9295 : actualRows9295=WordField.canonicalRows actualModulus 9295 (.bnot 9287) := by core033_kernel_decide
theorem stats9295 : actualRows9295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9295=6276 := by core033_kernel_decide
theorem rows9296 : actualRows9296=WordField.canonicalRows actualModulus 9296 (.band 9295 9233) := by core033_kernel_decide
theorem stats9296 : actualRows9296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9296=5124 := by core033_kernel_decide
theorem rows9297 : actualRows9297=WordField.canonicalRows actualModulus 9297 (.bxor 9294 9296) := by core033_kernel_decide
theorem stats9297 : actualRows9297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9297=7428 := by core033_kernel_decide
theorem rows9298 : actualRows9298=WordField.canonicalRows actualModulus 9298 (.badd 9293 9297) := by core033_kernel_decide
theorem stats9298 : actualRows9298.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9298=5388 := by core033_kernel_decide
theorem rows9299 : actualRows9299=WordField.canonicalRows actualModulus 9299 (.literal (BitVec.ofNat 32 3600352804)) := by core033_kernel_decide
theorem stats9299 : actualRows9299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9299=3756 := by core033_kernel_decide
theorem rows9300 : actualRows9300=WordField.canonicalRows actualModulus 9300 (.badd 9298 9299) := by core033_kernel_decide
theorem stats9300 : actualRows9300.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9300=5388 := by core033_kernel_decide
theorem rows9301 : actualRows9301=WordField.canonicalRows actualModulus 9301 (.badd 9300 7838) := by core033_kernel_decide
theorem stats9301 : actualRows9301.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9301=5388 := by core033_kernel_decide
theorem rows9302 : actualRows9302=WordField.canonicalRows actualModulus 9302 (.rotr 9286 2) := by core033_kernel_decide
theorem stats9302 : actualRows9302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9302=5124 := by core033_kernel_decide
theorem rows9303 : actualRows9303=WordField.canonicalRows actualModulus 9303 (.rotr 9286 13) := by core033_kernel_decide
theorem stats9303 : actualRows9303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9303=5124 := by core033_kernel_decide
theorem rows9304 : actualRows9304=WordField.canonicalRows actualModulus 9304 (.bxor 9302 9303) := by core033_kernel_decide
theorem stats9304 : actualRows9304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9304=7428 := by core033_kernel_decide
theorem rows9305 : actualRows9305=WordField.canonicalRows actualModulus 9305 (.rotr 9286 22) := by core033_kernel_decide
theorem stats9305 : actualRows9305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9305=5124 := by core033_kernel_decide
theorem rows9306 : actualRows9306=WordField.canonicalRows actualModulus 9306 (.bxor 9304 9305) := by core033_kernel_decide
theorem stats9306 : actualRows9306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9306=7428 := by core033_kernel_decide
theorem rows9307 : actualRows9307=WordField.canonicalRows actualModulus 9307 (.band 9286 9259) := by core033_kernel_decide
theorem stats9307 : actualRows9307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9307=5124 := by core033_kernel_decide
theorem rows9308 : actualRows9308=WordField.canonicalRows actualModulus 9308 (.band 9286 9232) := by core033_kernel_decide
theorem stats9308 : actualRows9308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9308=5124 := by core033_kernel_decide
theorem rows9309 : actualRows9309=WordField.canonicalRows actualModulus 9309 (.bxor 9307 9308) := by core033_kernel_decide
theorem stats9309 : actualRows9309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9309=7428 := by core033_kernel_decide
theorem rows9310 : actualRows9310=WordField.canonicalRows actualModulus 9310 (.band 9259 9232) := by core033_kernel_decide
theorem stats9310 : actualRows9310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9310=5124 := by core033_kernel_decide
theorem rows9311 : actualRows9311=WordField.canonicalRows actualModulus 9311 (.bxor 9309 9310) := by core033_kernel_decide
theorem stats9311 : actualRows9311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9311=7428 := by core033_kernel_decide
def partRows143 : List R1CS.Row := actualRows9248++actualRows9249++actualRows9250++actualRows9251++actualRows9252++actualRows9253++actualRows9254++actualRows9255++actualRows9256++actualRows9257++actualRows9258++actualRows9259++actualRows9260++actualRows9261++actualRows9262++actualRows9263++actualRows9264++actualRows9265++actualRows9266++actualRows9267++actualRows9268++actualRows9269++actualRows9270++actualRows9271++actualRows9272++actualRows9273++actualRows9274++actualRows9275++actualRows9276++actualRows9277++actualRows9278++actualRows9279++actualRows9280++actualRows9281++actualRows9282++actualRows9283++actualRows9284++actualRows9285++actualRows9286++actualRows9287++actualRows9288++actualRows9289++actualRows9290++actualRows9291++actualRows9292++actualRows9293++actualRows9294++actualRows9295++actualRows9296++actualRows9297++actualRows9298++actualRows9299++actualRows9300++actualRows9301++actualRows9302++actualRows9303++actualRows9304++actualRows9305++actualRows9306++actualRows9307++actualRows9308++actualRows9309++actualRows9310++actualRows9311
def partOps143 : List WordIR.Op := [.rotr 9232 2,.rotr 9232 13,.bxor 9248 9249,.rotr 9232 22,.bxor 9250 9251,.band 9232 9205,.band 9232 9178,.bxor 9253 9254,.band 9205 9178,.bxor 9255 9256,.badd 9252 9257,.badd 9247 9258,.badd 9151 9247,.rotr 9260 6,.rotr 9260 11,.bxor 9261 9262,.rotr 9260 25,.bxor 9263 9264,.badd 9179 9265,.band 9260 9233,.bnot 9260,.band 9268 9206,.bxor 9267 9269,.badd 9266 9270,.literal (BitVec.ofNat 32 3516065817),.badd 9271 9272,.badd 9273 7825,.rotr 9259 2,.rotr 9259 13,.bxor 9275 9276,.rotr 9259 22,.bxor 9277 9278,.band 9259 9232,.band 9259 9205,.bxor 9280 9281,.band 9232 9205,.bxor 9282 9283,.badd 9279 9284,.badd 9274 9285,.badd 9178 9274,.rotr 9287 6,.rotr 9287 11,.bxor 9288 9289,.rotr 9287 25,.bxor 9290 9291,.badd 9206 9292,.band 9287 9260,.bnot 9287,.band 9295 9233,.bxor 9294 9296,.badd 9293 9297,.literal (BitVec.ofNat 32 3600352804),.badd 9298 9299,.badd 9300 7838,.rotr 9286 2,.rotr 9286 13,.bxor 9302 9303,.rotr 9286 22,.bxor 9304 9305,.band 9286 9259,.band 9286 9232,.bxor 9307 9308,.band 9259 9232,.bxor 9309 9310]
theorem partExact143 : partRows143=WordField.rows actualModulus 9248 partOps143 := by
  simp only [partRows143,partOps143,WordField.rows,rows9248,rows9249,rows9250,rows9251,rows9252,rows9253,rows9254,rows9255,rows9256,rows9257,rows9258,rows9259,rows9260,rows9261,rows9262,rows9263,rows9264,rows9265,rows9266,rows9267,rows9268,rows9269,rows9270,rows9271,rows9272,rows9273,rows9274,rows9275,rows9276,rows9277,rows9278,rows9279,rows9280,rows9281,rows9282,rows9283,rows9284,rows9285,rows9286,rows9287,rows9288,rows9289,rows9290,rows9291,rows9292,rows9293,rows9294,rows9295,rows9296,rows9297,rows9298,rows9299,rows9300,rows9301,rows9302,rows9303,rows9304,rows9305,rows9306,rows9307,rows9308,rows9309,rows9310,rows9311,List.append_assoc,List.append_nil]
theorem partLength143 : partOps143.length=64 := by decide
theorem partStats143 : partRows143.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows143=372744 := by
  simp only [partRows143,List.length_append,MatrixRowBlocks.rows_weight_append,stats9248.1,stats9248.2,stats9249.1,stats9249.2,stats9250.1,stats9250.2,stats9251.1,stats9251.2,stats9252.1,stats9252.2,stats9253.1,stats9253.2,stats9254.1,stats9254.2,stats9255.1,stats9255.2,stats9256.1,stats9256.2,stats9257.1,stats9257.2,stats9258.1,stats9258.2,stats9259.1,stats9259.2,stats9260.1,stats9260.2,stats9261.1,stats9261.2,stats9262.1,stats9262.2,stats9263.1,stats9263.2,stats9264.1,stats9264.2,stats9265.1,stats9265.2,stats9266.1,stats9266.2,stats9267.1,stats9267.2,stats9268.1,stats9268.2,stats9269.1,stats9269.2,stats9270.1,stats9270.2,stats9271.1,stats9271.2,stats9272.1,stats9272.2,stats9273.1,stats9273.2,stats9274.1,stats9274.2,stats9275.1,stats9275.2,stats9276.1,stats9276.2,stats9277.1,stats9277.2,stats9278.1,stats9278.2,stats9279.1,stats9279.2,stats9280.1,stats9280.2,stats9281.1,stats9281.2,stats9282.1,stats9282.2,stats9283.1,stats9283.2,stats9284.1,stats9284.2,stats9285.1,stats9285.2,stats9286.1,stats9286.2,stats9287.1,stats9287.2,stats9288.1,stats9288.2,stats9289.1,stats9289.2,stats9290.1,stats9290.2,stats9291.1,stats9291.2,stats9292.1,stats9292.2,stats9293.1,stats9293.2,stats9294.1,stats9294.2,stats9295.1,stats9295.2,stats9296.1,stats9296.2,stats9297.1,stats9297.2,stats9298.1,stats9298.2,stats9299.1,stats9299.2,stats9300.1,stats9300.2,stats9301.1,stats9301.2,stats9302.1,stats9302.2,stats9303.1,stats9303.2,stats9304.1,stats9304.2,stats9305.1,stats9305.2,stats9306.1,stats9306.2,stats9307.1,stats9307.2,stats9308.1,stats9308.2,stats9309.1,stats9309.2,stats9310.1,stats9310.2,stats9311.1,stats9311.2]
  decide
end PairedPathRoundCheckedRows
