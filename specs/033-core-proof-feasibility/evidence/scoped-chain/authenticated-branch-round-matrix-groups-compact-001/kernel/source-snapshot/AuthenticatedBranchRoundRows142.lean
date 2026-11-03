import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData143
import AuthenticatedBranchRoundInstructionMatrixData144
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9206 : actualRows9206=WordField.canonicalRows actualModulus 9206 (.bxor 9204 9205) := by core033_kernel_decide
theorem stats9206 : actualRows9206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9206=7428 := by core033_kernel_decide
theorem rows9207 : actualRows9207=WordField.canonicalRows actualModulus 9207 (.band 9186 9159) := by core033_kernel_decide
theorem stats9207 : actualRows9207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9207=5124 := by core033_kernel_decide
theorem rows9208 : actualRows9208=WordField.canonicalRows actualModulus 9208 (.band 9186 9132) := by core033_kernel_decide
theorem stats9208 : actualRows9208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9208=5124 := by core033_kernel_decide
theorem rows9209 : actualRows9209=WordField.canonicalRows actualModulus 9209 (.bxor 9207 9208) := by core033_kernel_decide
theorem stats9209 : actualRows9209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9209=7428 := by core033_kernel_decide
theorem rows9210 : actualRows9210=WordField.canonicalRows actualModulus 9210 (.band 9159 9132) := by core033_kernel_decide
theorem stats9210 : actualRows9210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9210=5124 := by core033_kernel_decide
theorem rows9211 : actualRows9211=WordField.canonicalRows actualModulus 9211 (.bxor 9209 9210) := by core033_kernel_decide
theorem stats9211 : actualRows9211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9211=7428 := by core033_kernel_decide
theorem rows9212 : actualRows9212=WordField.canonicalRows actualModulus 9212 (.badd 9206 9211) := by core033_kernel_decide
theorem stats9212 : actualRows9212.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9212=5388 := by core033_kernel_decide
theorem rows9213 : actualRows9213=WordField.canonicalRows actualModulus 9213 (.badd 9201 9212) := by core033_kernel_decide
theorem stats9213 : actualRows9213.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9213=5388 := by core033_kernel_decide
theorem rows9214 : actualRows9214=WordField.canonicalRows actualModulus 9214 (.badd 9105 9201) := by core033_kernel_decide
theorem stats9214 : actualRows9214.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9214=5388 := by core033_kernel_decide
theorem rows9215 : actualRows9215=WordField.canonicalRows actualModulus 9215 (.rotr 9214 6) := by core033_kernel_decide
theorem stats9215 : actualRows9215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9215=5124 := by core033_kernel_decide
theorem rows9216 : actualRows9216=WordField.canonicalRows actualModulus 9216 (.rotr 9214 11) := by core033_kernel_decide
theorem stats9216 : actualRows9216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9216=5124 := by core033_kernel_decide
theorem rows9217 : actualRows9217=WordField.canonicalRows actualModulus 9217 (.bxor 9215 9216) := by core033_kernel_decide
theorem stats9217 : actualRows9217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9217=7428 := by core033_kernel_decide
theorem rows9218 : actualRows9218=WordField.canonicalRows actualModulus 9218 (.rotr 9214 25) := by core033_kernel_decide
theorem stats9218 : actualRows9218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9218=5124 := by core033_kernel_decide
theorem rows9219 : actualRows9219=WordField.canonicalRows actualModulus 9219 (.bxor 9217 9218) := by core033_kernel_decide
theorem stats9219 : actualRows9219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9219=7428 := by core033_kernel_decide
theorem rows9220 : actualRows9220=WordField.canonicalRows actualModulus 9220 (.badd 9133 9219) := by core033_kernel_decide
theorem stats9220 : actualRows9220.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9220=5388 := by core033_kernel_decide
theorem rows9221 : actualRows9221=WordField.canonicalRows actualModulus 9221 (.band 9214 9187) := by core033_kernel_decide
theorem stats9221 : actualRows9221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9221=5124 := by core033_kernel_decide
theorem rows9222 : actualRows9222=WordField.canonicalRows actualModulus 9222 (.bnot 9214) := by core033_kernel_decide
theorem stats9222 : actualRows9222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9222=6276 := by core033_kernel_decide
theorem rows9223 : actualRows9223=WordField.canonicalRows actualModulus 9223 (.band 9222 9160) := by core033_kernel_decide
theorem stats9223 : actualRows9223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9223=5124 := by core033_kernel_decide
theorem rows9224 : actualRows9224=WordField.canonicalRows actualModulus 9224 (.bxor 9221 9223) := by core033_kernel_decide
theorem stats9224 : actualRows9224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9224=7428 := by core033_kernel_decide
theorem rows9225 : actualRows9225=WordField.canonicalRows actualModulus 9225 (.badd 9220 9224) := by core033_kernel_decide
theorem stats9225 : actualRows9225.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9225=5388 := by core033_kernel_decide
theorem rows9226 : actualRows9226=WordField.canonicalRows actualModulus 9226 (.literal (BitVec.ofNat 32 4022224774)) := by core033_kernel_decide
theorem stats9226 : actualRows9226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9226=4260 := by core033_kernel_decide
theorem rows9227 : actualRows9227=WordField.canonicalRows actualModulus 9227 (.badd 9225 9226) := by core033_kernel_decide
theorem stats9227 : actualRows9227.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9227=5388 := by core033_kernel_decide
theorem rows9228 : actualRows9228=WordField.canonicalRows actualModulus 9228 (.badd 9227 8157) := by core033_kernel_decide
theorem stats9228 : actualRows9228.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9228=5388 := by core033_kernel_decide
theorem rows9229 : actualRows9229=WordField.canonicalRows actualModulus 9229 (.rotr 9213 2) := by core033_kernel_decide
theorem stats9229 : actualRows9229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9229=5124 := by core033_kernel_decide
theorem rows9230 : actualRows9230=WordField.canonicalRows actualModulus 9230 (.rotr 9213 13) := by core033_kernel_decide
theorem stats9230 : actualRows9230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9230=5124 := by core033_kernel_decide
theorem rows9231 : actualRows9231=WordField.canonicalRows actualModulus 9231 (.bxor 9229 9230) := by core033_kernel_decide
theorem stats9231 : actualRows9231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9231=7428 := by core033_kernel_decide
theorem rows9232 : actualRows9232=WordField.canonicalRows actualModulus 9232 (.rotr 9213 22) := by core033_kernel_decide
theorem stats9232 : actualRows9232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9232=5124 := by core033_kernel_decide
theorem rows9233 : actualRows9233=WordField.canonicalRows actualModulus 9233 (.bxor 9231 9232) := by core033_kernel_decide
theorem stats9233 : actualRows9233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9233=7428 := by core033_kernel_decide
theorem rows9234 : actualRows9234=WordField.canonicalRows actualModulus 9234 (.band 9213 9186) := by core033_kernel_decide
theorem stats9234 : actualRows9234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9234=5124 := by core033_kernel_decide
theorem rows9235 : actualRows9235=WordField.canonicalRows actualModulus 9235 (.band 9213 9159) := by core033_kernel_decide
theorem stats9235 : actualRows9235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9235=5124 := by core033_kernel_decide
theorem rows9236 : actualRows9236=WordField.canonicalRows actualModulus 9236 (.bxor 9234 9235) := by core033_kernel_decide
theorem stats9236 : actualRows9236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9236=7428 := by core033_kernel_decide
theorem rows9237 : actualRows9237=WordField.canonicalRows actualModulus 9237 (.band 9186 9159) := by core033_kernel_decide
theorem stats9237 : actualRows9237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9237=5124 := by core033_kernel_decide
theorem rows9238 : actualRows9238=WordField.canonicalRows actualModulus 9238 (.bxor 9236 9237) := by core033_kernel_decide
theorem stats9238 : actualRows9238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9238=7428 := by core033_kernel_decide
theorem rows9239 : actualRows9239=WordField.canonicalRows actualModulus 9239 (.badd 9233 9238) := by core033_kernel_decide
theorem stats9239 : actualRows9239.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9239=5388 := by core033_kernel_decide
theorem rows9240 : actualRows9240=WordField.canonicalRows actualModulus 9240 (.badd 9228 9239) := by core033_kernel_decide
theorem stats9240 : actualRows9240.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9240=5388 := by core033_kernel_decide
theorem rows9241 : actualRows9241=WordField.canonicalRows actualModulus 9241 (.badd 9132 9228) := by core033_kernel_decide
theorem stats9241 : actualRows9241.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9241=5388 := by core033_kernel_decide
theorem rows9242 : actualRows9242=WordField.canonicalRows actualModulus 9242 (.rotr 9241 6) := by core033_kernel_decide
theorem stats9242 : actualRows9242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9242=5124 := by core033_kernel_decide
theorem rows9243 : actualRows9243=WordField.canonicalRows actualModulus 9243 (.rotr 9241 11) := by core033_kernel_decide
theorem stats9243 : actualRows9243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9243=5124 := by core033_kernel_decide
theorem rows9244 : actualRows9244=WordField.canonicalRows actualModulus 9244 (.bxor 9242 9243) := by core033_kernel_decide
theorem stats9244 : actualRows9244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9244=7428 := by core033_kernel_decide
theorem rows9245 : actualRows9245=WordField.canonicalRows actualModulus 9245 (.rotr 9241 25) := by core033_kernel_decide
theorem stats9245 : actualRows9245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9245=5124 := by core033_kernel_decide
theorem rows9246 : actualRows9246=WordField.canonicalRows actualModulus 9246 (.bxor 9244 9245) := by core033_kernel_decide
theorem stats9246 : actualRows9246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9246=7428 := by core033_kernel_decide
theorem rows9247 : actualRows9247=WordField.canonicalRows actualModulus 9247 (.badd 9160 9246) := by core033_kernel_decide
theorem stats9247 : actualRows9247.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9247=5388 := by core033_kernel_decide
theorem rows9248 : actualRows9248=WordField.canonicalRows actualModulus 9248 (.band 9241 9214) := by core033_kernel_decide
theorem stats9248 : actualRows9248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9248=5124 := by core033_kernel_decide
theorem rows9249 : actualRows9249=WordField.canonicalRows actualModulus 9249 (.bnot 9241) := by core033_kernel_decide
theorem stats9249 : actualRows9249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9249=6276 := by core033_kernel_decide
theorem rows9250 : actualRows9250=WordField.canonicalRows actualModulus 9250 (.band 9249 9187) := by core033_kernel_decide
theorem stats9250 : actualRows9250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9250=5124 := by core033_kernel_decide
theorem rows9251 : actualRows9251=WordField.canonicalRows actualModulus 9251 (.bxor 9248 9250) := by core033_kernel_decide
theorem stats9251 : actualRows9251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9251=7428 := by core033_kernel_decide
theorem rows9252 : actualRows9252=WordField.canonicalRows actualModulus 9252 (.badd 9247 9251) := by core033_kernel_decide
theorem stats9252 : actualRows9252.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9252=5388 := by core033_kernel_decide
theorem rows9253 : actualRows9253=WordField.canonicalRows actualModulus 9253 (.literal (BitVec.ofNat 32 264347078)) := by core033_kernel_decide
theorem stats9253 : actualRows9253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9253=3972 := by core033_kernel_decide
theorem rows9254 : actualRows9254=WordField.canonicalRows actualModulus 9254 (.badd 9252 9253) := by core033_kernel_decide
theorem stats9254 : actualRows9254.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9254=5388 := by core033_kernel_decide
theorem rows9255 : actualRows9255=WordField.canonicalRows actualModulus 9255 (.badd 9254 8170) := by core033_kernel_decide
theorem stats9255 : actualRows9255.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9255=5388 := by core033_kernel_decide
theorem rows9256 : actualRows9256=WordField.canonicalRows actualModulus 9256 (.rotr 9240 2) := by core033_kernel_decide
theorem stats9256 : actualRows9256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9256=5124 := by core033_kernel_decide
theorem rows9257 : actualRows9257=WordField.canonicalRows actualModulus 9257 (.rotr 9240 13) := by core033_kernel_decide
theorem stats9257 : actualRows9257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9257=5124 := by core033_kernel_decide
theorem rows9258 : actualRows9258=WordField.canonicalRows actualModulus 9258 (.bxor 9256 9257) := by core033_kernel_decide
theorem stats9258 : actualRows9258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9258=7428 := by core033_kernel_decide
theorem rows9259 : actualRows9259=WordField.canonicalRows actualModulus 9259 (.rotr 9240 22) := by core033_kernel_decide
theorem stats9259 : actualRows9259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9259=5124 := by core033_kernel_decide
theorem rows9260 : actualRows9260=WordField.canonicalRows actualModulus 9260 (.bxor 9258 9259) := by core033_kernel_decide
theorem stats9260 : actualRows9260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9260=7428 := by core033_kernel_decide
theorem rows9261 : actualRows9261=WordField.canonicalRows actualModulus 9261 (.band 9240 9213) := by core033_kernel_decide
theorem stats9261 : actualRows9261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9261=5124 := by core033_kernel_decide
theorem rows9262 : actualRows9262=WordField.canonicalRows actualModulus 9262 (.band 9240 9186) := by core033_kernel_decide
theorem stats9262 : actualRows9262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9262=5124 := by core033_kernel_decide
theorem rows9263 : actualRows9263=WordField.canonicalRows actualModulus 9263 (.bxor 9261 9262) := by core033_kernel_decide
theorem stats9263 : actualRows9263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9263=7428 := by core033_kernel_decide
theorem rows9264 : actualRows9264=WordField.canonicalRows actualModulus 9264 (.band 9213 9186) := by core033_kernel_decide
theorem stats9264 : actualRows9264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9264=5124 := by core033_kernel_decide
theorem rows9265 : actualRows9265=WordField.canonicalRows actualModulus 9265 (.bxor 9263 9264) := by core033_kernel_decide
theorem stats9265 : actualRows9265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9265=7428 := by core033_kernel_decide
theorem rows9266 : actualRows9266=WordField.canonicalRows actualModulus 9266 (.badd 9260 9265) := by core033_kernel_decide
theorem stats9266 : actualRows9266.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9266=5388 := by core033_kernel_decide
theorem rows9267 : actualRows9267=WordField.canonicalRows actualModulus 9267 (.badd 9255 9266) := by core033_kernel_decide
theorem stats9267 : actualRows9267.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9267=5388 := by core033_kernel_decide
theorem rows9268 : actualRows9268=WordField.canonicalRows actualModulus 9268 (.badd 9159 9255) := by core033_kernel_decide
theorem stats9268 : actualRows9268.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9268=5388 := by core033_kernel_decide
theorem rows9269 : actualRows9269=WordField.canonicalRows actualModulus 9269 (.rotr 9268 6) := by core033_kernel_decide
theorem stats9269 : actualRows9269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9269=5124 := by core033_kernel_decide
def partRows142 : List R1CS.Row := actualRows9206++actualRows9207++actualRows9208++actualRows9209++actualRows9210++actualRows9211++actualRows9212++actualRows9213++actualRows9214++actualRows9215++actualRows9216++actualRows9217++actualRows9218++actualRows9219++actualRows9220++actualRows9221++actualRows9222++actualRows9223++actualRows9224++actualRows9225++actualRows9226++actualRows9227++actualRows9228++actualRows9229++actualRows9230++actualRows9231++actualRows9232++actualRows9233++actualRows9234++actualRows9235++actualRows9236++actualRows9237++actualRows9238++actualRows9239++actualRows9240++actualRows9241++actualRows9242++actualRows9243++actualRows9244++actualRows9245++actualRows9246++actualRows9247++actualRows9248++actualRows9249++actualRows9250++actualRows9251++actualRows9252++actualRows9253++actualRows9254++actualRows9255++actualRows9256++actualRows9257++actualRows9258++actualRows9259++actualRows9260++actualRows9261++actualRows9262++actualRows9263++actualRows9264++actualRows9265++actualRows9266++actualRows9267++actualRows9268++actualRows9269
def partOps142 : List WordIR.Op := [.bxor 9204 9205,.band 9186 9159,.band 9186 9132,.bxor 9207 9208,.band 9159 9132,.bxor 9209 9210,.badd 9206 9211,.badd 9201 9212,.badd 9105 9201,.rotr 9214 6,.rotr 9214 11,.bxor 9215 9216,.rotr 9214 25,.bxor 9217 9218,.badd 9133 9219,.band 9214 9187,.bnot 9214,.band 9222 9160,.bxor 9221 9223,.badd 9220 9224,.literal (BitVec.ofNat 32 4022224774),.badd 9225 9226,.badd 9227 8157,.rotr 9213 2,.rotr 9213 13,.bxor 9229 9230,.rotr 9213 22,.bxor 9231 9232,.band 9213 9186,.band 9213 9159,.bxor 9234 9235,.band 9186 9159,.bxor 9236 9237,.badd 9233 9238,.badd 9228 9239,.badd 9132 9228,.rotr 9241 6,.rotr 9241 11,.bxor 9242 9243,.rotr 9241 25,.bxor 9244 9245,.badd 9160 9246,.band 9241 9214,.bnot 9241,.band 9249 9187,.bxor 9248 9250,.badd 9247 9251,.literal (BitVec.ofNat 32 264347078),.badd 9252 9253,.badd 9254 8170,.rotr 9240 2,.rotr 9240 13,.bxor 9256 9257,.rotr 9240 22,.bxor 9258 9259,.band 9240 9213,.band 9240 9186,.bxor 9261 9262,.band 9213 9186,.bxor 9263 9264,.badd 9260 9265,.badd 9255 9266,.badd 9159 9255,.rotr 9268 6]
theorem partExact142 : partRows142=WordField.rows actualModulus 9206 partOps142 := by
  simp only [partRows142,partOps142,WordField.rows,rows9206,rows9207,rows9208,rows9209,rows9210,rows9211,rows9212,rows9213,rows9214,rows9215,rows9216,rows9217,rows9218,rows9219,rows9220,rows9221,rows9222,rows9223,rows9224,rows9225,rows9226,rows9227,rows9228,rows9229,rows9230,rows9231,rows9232,rows9233,rows9234,rows9235,rows9236,rows9237,rows9238,rows9239,rows9240,rows9241,rows9242,rows9243,rows9244,rows9245,rows9246,rows9247,rows9248,rows9249,rows9250,rows9251,rows9252,rows9253,rows9254,rows9255,rows9256,rows9257,rows9258,rows9259,rows9260,rows9261,rows9262,rows9263,rows9264,rows9265,rows9266,rows9267,rows9268,rows9269,List.append_assoc,List.append_nil]
theorem partLength142 : partOps142.length=64 := by decide
theorem partStats142 : partRows142.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows142=371880 := by
  simp only [partRows142,List.length_append,MatrixRowBlocks.rows_weight_append,stats9206.1,stats9206.2,stats9207.1,stats9207.2,stats9208.1,stats9208.2,stats9209.1,stats9209.2,stats9210.1,stats9210.2,stats9211.1,stats9211.2,stats9212.1,stats9212.2,stats9213.1,stats9213.2,stats9214.1,stats9214.2,stats9215.1,stats9215.2,stats9216.1,stats9216.2,stats9217.1,stats9217.2,stats9218.1,stats9218.2,stats9219.1,stats9219.2,stats9220.1,stats9220.2,stats9221.1,stats9221.2,stats9222.1,stats9222.2,stats9223.1,stats9223.2,stats9224.1,stats9224.2,stats9225.1,stats9225.2,stats9226.1,stats9226.2,stats9227.1,stats9227.2,stats9228.1,stats9228.2,stats9229.1,stats9229.2,stats9230.1,stats9230.2,stats9231.1,stats9231.2,stats9232.1,stats9232.2,stats9233.1,stats9233.2,stats9234.1,stats9234.2,stats9235.1,stats9235.2,stats9236.1,stats9236.2,stats9237.1,stats9237.2,stats9238.1,stats9238.2,stats9239.1,stats9239.2,stats9240.1,stats9240.2,stats9241.1,stats9241.2,stats9242.1,stats9242.2,stats9243.1,stats9243.2,stats9244.1,stats9244.2,stats9245.1,stats9245.2,stats9246.1,stats9246.2,stats9247.1,stats9247.2,stats9248.1,stats9248.2,stats9249.1,stats9249.2,stats9250.1,stats9250.2,stats9251.1,stats9251.2,stats9252.1,stats9252.2,stats9253.1,stats9253.2,stats9254.1,stats9254.2,stats9255.1,stats9255.2,stats9256.1,stats9256.2,stats9257.1,stats9257.2,stats9258.1,stats9258.2,stats9259.1,stats9259.2,stats9260.1,stats9260.2,stats9261.1,stats9261.2,stats9262.1,stats9262.2,stats9263.1,stats9263.2,stats9264.1,stats9264.2,stats9265.1,stats9265.2,stats9266.1,stats9266.2,stats9267.1,stats9267.2,stats9268.1,stats9268.2,stats9269.1,stats9269.2]
  decide
end AuthenticatedBranchRoundCheckedRows
