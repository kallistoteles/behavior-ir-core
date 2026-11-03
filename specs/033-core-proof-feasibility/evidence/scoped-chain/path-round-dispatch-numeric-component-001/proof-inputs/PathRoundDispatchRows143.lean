import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData143
import PathRoundDispatchInstructionMatrixData144
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9195 : actualRows9195=WordField.canonicalRows actualModulus 9195 (.band 9144 9117) := by core033_kernel_decide
theorem stats9195 : actualRows9195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9195=5124 := by core033_kernel_decide
theorem rows9196 : actualRows9196=WordField.canonicalRows actualModulus 9196 (.bxor 9194 9195) := by core033_kernel_decide
theorem stats9196 : actualRows9196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9196=7428 := by core033_kernel_decide
theorem rows9197 : actualRows9197=WordField.canonicalRows actualModulus 9197 (.badd 9191 9196) := by core033_kernel_decide
theorem stats9197 : actualRows9197.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9197=5388 := by core033_kernel_decide
theorem rows9198 : actualRows9198=WordField.canonicalRows actualModulus 9198 (.badd 9186 9197) := by core033_kernel_decide
theorem stats9198 : actualRows9198.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9198=5388 := by core033_kernel_decide
theorem rows9199 : actualRows9199=WordField.canonicalRows actualModulus 9199 (.badd 9090 9186) := by core033_kernel_decide
theorem stats9199 : actualRows9199.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9199=5388 := by core033_kernel_decide
theorem rows9200 : actualRows9200=WordField.canonicalRows actualModulus 9200 (.rotr 9199 6) := by core033_kernel_decide
theorem stats9200 : actualRows9200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9200=5124 := by core033_kernel_decide
theorem rows9201 : actualRows9201=WordField.canonicalRows actualModulus 9201 (.rotr 9199 11) := by core033_kernel_decide
theorem stats9201 : actualRows9201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9201=5124 := by core033_kernel_decide
theorem rows9202 : actualRows9202=WordField.canonicalRows actualModulus 9202 (.bxor 9200 9201) := by core033_kernel_decide
theorem stats9202 : actualRows9202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9202=7428 := by core033_kernel_decide
theorem rows9203 : actualRows9203=WordField.canonicalRows actualModulus 9203 (.rotr 9199 25) := by core033_kernel_decide
theorem stats9203 : actualRows9203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9203=5124 := by core033_kernel_decide
theorem rows9204 : actualRows9204=WordField.canonicalRows actualModulus 9204 (.bxor 9202 9203) := by core033_kernel_decide
theorem stats9204 : actualRows9204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9204=7428 := by core033_kernel_decide
theorem rows9205 : actualRows9205=WordField.canonicalRows actualModulus 9205 (.badd 9118 9204) := by core033_kernel_decide
theorem stats9205 : actualRows9205.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9205=5388 := by core033_kernel_decide
theorem rows9206 : actualRows9206=WordField.canonicalRows actualModulus 9206 (.band 9199 9172) := by core033_kernel_decide
theorem stats9206 : actualRows9206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9206=5124 := by core033_kernel_decide
theorem rows9207 : actualRows9207=WordField.canonicalRows actualModulus 9207 (.bnot 9199) := by core033_kernel_decide
theorem stats9207 : actualRows9207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9207=6276 := by core033_kernel_decide
theorem rows9208 : actualRows9208=WordField.canonicalRows actualModulus 9208 (.band 9207 9145) := by core033_kernel_decide
theorem stats9208 : actualRows9208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9208=5124 := by core033_kernel_decide
theorem rows9209 : actualRows9209=WordField.canonicalRows actualModulus 9209 (.bxor 9206 9208) := by core033_kernel_decide
theorem stats9209 : actualRows9209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9209=7428 := by core033_kernel_decide
theorem rows9210 : actualRows9210=WordField.canonicalRows actualModulus 9210 (.badd 9205 9209) := by core033_kernel_decide
theorem stats9210 : actualRows9210.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9210=5388 := by core033_kernel_decide
theorem rows9211 : actualRows9211=WordField.canonicalRows actualModulus 9211 (.literal (BitVec.ofNat 32 2756734187)) := by core033_kernel_decide
theorem stats9211 : actualRows9211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9211=3900 := by core033_kernel_decide
theorem rows9212 : actualRows9212=WordField.canonicalRows actualModulus 9212 (.badd 9210 9211) := by core033_kernel_decide
theorem stats9212 : actualRows9212.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9212=5388 := by core033_kernel_decide
theorem rows9213 : actualRows9213=WordField.canonicalRows actualModulus 9213 (.badd 9212 7526) := by core033_kernel_decide
theorem stats9213 : actualRows9213.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9213=5388 := by core033_kernel_decide
theorem rows9214 : actualRows9214=WordField.canonicalRows actualModulus 9214 (.rotr 9198 2) := by core033_kernel_decide
theorem stats9214 : actualRows9214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9214=5124 := by core033_kernel_decide
theorem rows9215 : actualRows9215=WordField.canonicalRows actualModulus 9215 (.rotr 9198 13) := by core033_kernel_decide
theorem stats9215 : actualRows9215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9215=5124 := by core033_kernel_decide
theorem rows9216 : actualRows9216=WordField.canonicalRows actualModulus 9216 (.bxor 9214 9215) := by core033_kernel_decide
theorem stats9216 : actualRows9216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9216=7428 := by core033_kernel_decide
theorem rows9217 : actualRows9217=WordField.canonicalRows actualModulus 9217 (.rotr 9198 22) := by core033_kernel_decide
theorem stats9217 : actualRows9217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9217=5124 := by core033_kernel_decide
theorem rows9218 : actualRows9218=WordField.canonicalRows actualModulus 9218 (.bxor 9216 9217) := by core033_kernel_decide
theorem stats9218 : actualRows9218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9218=7428 := by core033_kernel_decide
theorem rows9219 : actualRows9219=WordField.canonicalRows actualModulus 9219 (.band 9198 9171) := by core033_kernel_decide
theorem stats9219 : actualRows9219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9219=5124 := by core033_kernel_decide
theorem rows9220 : actualRows9220=WordField.canonicalRows actualModulus 9220 (.band 9198 9144) := by core033_kernel_decide
theorem stats9220 : actualRows9220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9220=5124 := by core033_kernel_decide
theorem rows9221 : actualRows9221=WordField.canonicalRows actualModulus 9221 (.bxor 9219 9220) := by core033_kernel_decide
theorem stats9221 : actualRows9221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9221=7428 := by core033_kernel_decide
theorem rows9222 : actualRows9222=WordField.canonicalRows actualModulus 9222 (.band 9171 9144) := by core033_kernel_decide
theorem stats9222 : actualRows9222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9222=5124 := by core033_kernel_decide
theorem rows9223 : actualRows9223=WordField.canonicalRows actualModulus 9223 (.bxor 9221 9222) := by core033_kernel_decide
theorem stats9223 : actualRows9223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9223=7428 := by core033_kernel_decide
theorem rows9224 : actualRows9224=WordField.canonicalRows actualModulus 9224 (.badd 9218 9223) := by core033_kernel_decide
theorem stats9224 : actualRows9224.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9224=5388 := by core033_kernel_decide
theorem rows9225 : actualRows9225=WordField.canonicalRows actualModulus 9225 (.badd 9213 9224) := by core033_kernel_decide
theorem stats9225 : actualRows9225.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9225=5388 := by core033_kernel_decide
theorem rows9226 : actualRows9226=WordField.canonicalRows actualModulus 9226 (.badd 9117 9213) := by core033_kernel_decide
theorem stats9226 : actualRows9226.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9226=5388 := by core033_kernel_decide
theorem rows9227 : actualRows9227=WordField.canonicalRows actualModulus 9227 (.rotr 9226 6) := by core033_kernel_decide
theorem stats9227 : actualRows9227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9227=5124 := by core033_kernel_decide
theorem rows9228 : actualRows9228=WordField.canonicalRows actualModulus 9228 (.rotr 9226 11) := by core033_kernel_decide
theorem stats9228 : actualRows9228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9228=5124 := by core033_kernel_decide
theorem rows9229 : actualRows9229=WordField.canonicalRows actualModulus 9229 (.bxor 9227 9228) := by core033_kernel_decide
theorem stats9229 : actualRows9229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9229=7428 := by core033_kernel_decide
theorem rows9230 : actualRows9230=WordField.canonicalRows actualModulus 9230 (.rotr 9226 25) := by core033_kernel_decide
theorem stats9230 : actualRows9230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9230=5124 := by core033_kernel_decide
theorem rows9231 : actualRows9231=WordField.canonicalRows actualModulus 9231 (.bxor 9229 9230) := by core033_kernel_decide
theorem stats9231 : actualRows9231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9231=7428 := by core033_kernel_decide
theorem rows9232 : actualRows9232=WordField.canonicalRows actualModulus 9232 (.badd 9145 9231) := by core033_kernel_decide
theorem stats9232 : actualRows9232.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9232=5388 := by core033_kernel_decide
theorem rows9233 : actualRows9233=WordField.canonicalRows actualModulus 9233 (.band 9226 9199) := by core033_kernel_decide
theorem stats9233 : actualRows9233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9233=5124 := by core033_kernel_decide
theorem rows9234 : actualRows9234=WordField.canonicalRows actualModulus 9234 (.bnot 9226) := by core033_kernel_decide
theorem stats9234 : actualRows9234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9234=6276 := by core033_kernel_decide
theorem rows9235 : actualRows9235=WordField.canonicalRows actualModulus 9235 (.band 9234 9172) := by core033_kernel_decide
theorem stats9235 : actualRows9235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9235=5124 := by core033_kernel_decide
theorem rows9236 : actualRows9236=WordField.canonicalRows actualModulus 9236 (.bxor 9233 9235) := by core033_kernel_decide
theorem stats9236 : actualRows9236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9236=7428 := by core033_kernel_decide
theorem rows9237 : actualRows9237=WordField.canonicalRows actualModulus 9237 (.badd 9232 9236) := by core033_kernel_decide
theorem stats9237 : actualRows9237.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9237=5388 := by core033_kernel_decide
theorem rows9238 : actualRows9238=WordField.canonicalRows actualModulus 9238 (.literal (BitVec.ofNat 32 3204031479)) := by core033_kernel_decide
theorem stats9238 : actualRows9238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9238=4476 := by core033_kernel_decide
theorem rows9239 : actualRows9239=WordField.canonicalRows actualModulus 9239 (.badd 9237 9238) := by core033_kernel_decide
theorem stats9239 : actualRows9239.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9239=5388 := by core033_kernel_decide
theorem rows9240 : actualRows9240=WordField.canonicalRows actualModulus 9240 (.badd 9239 7539) := by core033_kernel_decide
theorem stats9240 : actualRows9240.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9240=5388 := by core033_kernel_decide
theorem rows9241 : actualRows9241=WordField.canonicalRows actualModulus 9241 (.rotr 9225 2) := by core033_kernel_decide
theorem stats9241 : actualRows9241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9241=5124 := by core033_kernel_decide
theorem rows9242 : actualRows9242=WordField.canonicalRows actualModulus 9242 (.rotr 9225 13) := by core033_kernel_decide
theorem stats9242 : actualRows9242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9242=5124 := by core033_kernel_decide
theorem rows9243 : actualRows9243=WordField.canonicalRows actualModulus 9243 (.bxor 9241 9242) := by core033_kernel_decide
theorem stats9243 : actualRows9243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9243=7428 := by core033_kernel_decide
theorem rows9244 : actualRows9244=WordField.canonicalRows actualModulus 9244 (.rotr 9225 22) := by core033_kernel_decide
theorem stats9244 : actualRows9244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9244=5124 := by core033_kernel_decide
theorem rows9245 : actualRows9245=WordField.canonicalRows actualModulus 9245 (.bxor 9243 9244) := by core033_kernel_decide
theorem stats9245 : actualRows9245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9245=7428 := by core033_kernel_decide
theorem rows9246 : actualRows9246=WordField.canonicalRows actualModulus 9246 (.band 9225 9198) := by core033_kernel_decide
theorem stats9246 : actualRows9246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9246=5124 := by core033_kernel_decide
theorem rows9247 : actualRows9247=WordField.canonicalRows actualModulus 9247 (.band 9225 9171) := by core033_kernel_decide
theorem stats9247 : actualRows9247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9247=5124 := by core033_kernel_decide
theorem rows9248 : actualRows9248=WordField.canonicalRows actualModulus 9248 (.bxor 9246 9247) := by core033_kernel_decide
theorem stats9248 : actualRows9248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9248=7428 := by core033_kernel_decide
theorem rows9249 : actualRows9249=WordField.canonicalRows actualModulus 9249 (.band 9198 9171) := by core033_kernel_decide
theorem stats9249 : actualRows9249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9249=5124 := by core033_kernel_decide
theorem rows9250 : actualRows9250=WordField.canonicalRows actualModulus 9250 (.bxor 9248 9249) := by core033_kernel_decide
theorem stats9250 : actualRows9250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9250=7428 := by core033_kernel_decide
theorem rows9251 : actualRows9251=WordField.canonicalRows actualModulus 9251 (.badd 9245 9250) := by core033_kernel_decide
theorem stats9251 : actualRows9251.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9251=5388 := by core033_kernel_decide
theorem rows9252 : actualRows9252=WordField.canonicalRows actualModulus 9252 (.badd 9240 9251) := by core033_kernel_decide
theorem stats9252 : actualRows9252.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9252=5388 := by core033_kernel_decide
theorem rows9253 : actualRows9253=WordField.canonicalRows actualModulus 9253 (.badd 9144 9240) := by core033_kernel_decide
theorem stats9253 : actualRows9253.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9253=5388 := by core033_kernel_decide
theorem rows9254 : actualRows9254=WordField.canonicalRows actualModulus 9254 (.rotr 9253 6) := by core033_kernel_decide
theorem stats9254 : actualRows9254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9254=5124 := by core033_kernel_decide
theorem rows9255 : actualRows9255=WordField.canonicalRows actualModulus 9255 (.rotr 9253 11) := by core033_kernel_decide
theorem stats9255 : actualRows9255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9255=5124 := by core033_kernel_decide
theorem rows9256 : actualRows9256=WordField.canonicalRows actualModulus 9256 (.bxor 9254 9255) := by core033_kernel_decide
theorem stats9256 : actualRows9256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9256=7428 := by core033_kernel_decide
theorem rows9257 : actualRows9257=WordField.canonicalRows actualModulus 9257 (.rotr 9253 25) := by core033_kernel_decide
theorem stats9257 : actualRows9257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9257=5124 := by core033_kernel_decide
theorem rows9258 : actualRows9258=WordField.canonicalRows actualModulus 9258 (.bxor 9256 9257) := by core033_kernel_decide
theorem stats9258 : actualRows9258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9258=7428 := by core033_kernel_decide
def partRows143 : List R1CS.Row := actualRows9195++actualRows9196++actualRows9197++actualRows9198++actualRows9199++actualRows9200++actualRows9201++actualRows9202++actualRows9203++actualRows9204++actualRows9205++actualRows9206++actualRows9207++actualRows9208++actualRows9209++actualRows9210++actualRows9211++actualRows9212++actualRows9213++actualRows9214++actualRows9215++actualRows9216++actualRows9217++actualRows9218++actualRows9219++actualRows9220++actualRows9221++actualRows9222++actualRows9223++actualRows9224++actualRows9225++actualRows9226++actualRows9227++actualRows9228++actualRows9229++actualRows9230++actualRows9231++actualRows9232++actualRows9233++actualRows9234++actualRows9235++actualRows9236++actualRows9237++actualRows9238++actualRows9239++actualRows9240++actualRows9241++actualRows9242++actualRows9243++actualRows9244++actualRows9245++actualRows9246++actualRows9247++actualRows9248++actualRows9249++actualRows9250++actualRows9251++actualRows9252++actualRows9253++actualRows9254++actualRows9255++actualRows9256++actualRows9257++actualRows9258
def partOps143 : List WordIR.Op := [.band 9144 9117,.bxor 9194 9195,.badd 9191 9196,.badd 9186 9197,.badd 9090 9186,.rotr 9199 6,.rotr 9199 11,.bxor 9200 9201,.rotr 9199 25,.bxor 9202 9203,.badd 9118 9204,.band 9199 9172,.bnot 9199,.band 9207 9145,.bxor 9206 9208,.badd 9205 9209,.literal (BitVec.ofNat 32 2756734187),.badd 9210 9211,.badd 9212 7526,.rotr 9198 2,.rotr 9198 13,.bxor 9214 9215,.rotr 9198 22,.bxor 9216 9217,.band 9198 9171,.band 9198 9144,.bxor 9219 9220,.band 9171 9144,.bxor 9221 9222,.badd 9218 9223,.badd 9213 9224,.badd 9117 9213,.rotr 9226 6,.rotr 9226 11,.bxor 9227 9228,.rotr 9226 25,.bxor 9229 9230,.badd 9145 9231,.band 9226 9199,.bnot 9226,.band 9234 9172,.bxor 9233 9235,.badd 9232 9236,.literal (BitVec.ofNat 32 3204031479),.badd 9237 9238,.badd 9239 7539,.rotr 9225 2,.rotr 9225 13,.bxor 9241 9242,.rotr 9225 22,.bxor 9243 9244,.band 9225 9198,.band 9225 9171,.bxor 9246 9247,.band 9198 9171,.bxor 9248 9249,.badd 9245 9250,.badd 9240 9251,.badd 9144 9240,.rotr 9253 6,.rotr 9253 11,.bxor 9254 9255,.rotr 9253 25,.bxor 9256 9257]
theorem partExact143 : partRows143=WordField.rows actualModulus 9195 partOps143 := by
  simp only [partRows143,partOps143,WordField.rows,rows9195,rows9196,rows9197,rows9198,rows9199,rows9200,rows9201,rows9202,rows9203,rows9204,rows9205,rows9206,rows9207,rows9208,rows9209,rows9210,rows9211,rows9212,rows9213,rows9214,rows9215,rows9216,rows9217,rows9218,rows9219,rows9220,rows9221,rows9222,rows9223,rows9224,rows9225,rows9226,rows9227,rows9228,rows9229,rows9230,rows9231,rows9232,rows9233,rows9234,rows9235,rows9236,rows9237,rows9238,rows9239,rows9240,rows9241,rows9242,rows9243,rows9244,rows9245,rows9246,rows9247,rows9248,rows9249,rows9250,rows9251,rows9252,rows9253,rows9254,rows9255,rows9256,rows9257,rows9258,List.append_assoc,List.append_nil]
theorem partLength143 : partOps143.length=64 := by decide
theorem partStats143 : partRows143.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows143=372024 := by
  simp only [partRows143,List.length_append,MatrixRowBlocks.rows_weight_append,stats9195.1,stats9195.2,stats9196.1,stats9196.2,stats9197.1,stats9197.2,stats9198.1,stats9198.2,stats9199.1,stats9199.2,stats9200.1,stats9200.2,stats9201.1,stats9201.2,stats9202.1,stats9202.2,stats9203.1,stats9203.2,stats9204.1,stats9204.2,stats9205.1,stats9205.2,stats9206.1,stats9206.2,stats9207.1,stats9207.2,stats9208.1,stats9208.2,stats9209.1,stats9209.2,stats9210.1,stats9210.2,stats9211.1,stats9211.2,stats9212.1,stats9212.2,stats9213.1,stats9213.2,stats9214.1,stats9214.2,stats9215.1,stats9215.2,stats9216.1,stats9216.2,stats9217.1,stats9217.2,stats9218.1,stats9218.2,stats9219.1,stats9219.2,stats9220.1,stats9220.2,stats9221.1,stats9221.2,stats9222.1,stats9222.2,stats9223.1,stats9223.2,stats9224.1,stats9224.2,stats9225.1,stats9225.2,stats9226.1,stats9226.2,stats9227.1,stats9227.2,stats9228.1,stats9228.2,stats9229.1,stats9229.2,stats9230.1,stats9230.2,stats9231.1,stats9231.2,stats9232.1,stats9232.2,stats9233.1,stats9233.2,stats9234.1,stats9234.2,stats9235.1,stats9235.2,stats9236.1,stats9236.2,stats9237.1,stats9237.2,stats9238.1,stats9238.2,stats9239.1,stats9239.2,stats9240.1,stats9240.2,stats9241.1,stats9241.2,stats9242.1,stats9242.2,stats9243.1,stats9243.2,stats9244.1,stats9244.2,stats9245.1,stats9245.2,stats9246.1,stats9246.2,stats9247.1,stats9247.2,stats9248.1,stats9248.2,stats9249.1,stats9249.2,stats9250.1,stats9250.2,stats9251.1,stats9251.2,stats9252.1,stats9252.2,stats9253.1,stats9253.2,stats9254.1,stats9254.2,stats9255.1,stats9255.2,stats9256.1,stats9256.2,stats9257.1,stats9257.2,stats9258.1,stats9258.2]
  decide
end PathRoundDispatchCheckedRows
