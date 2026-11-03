import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData143
import PairedPathRoundInstructionMatrixData144
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9184 : actualRows9184=WordField.canonicalRows actualModulus 9184 (.bxor 9182 9183) := by core033_kernel_decide
theorem stats9184 : actualRows9184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9184=7428 := by core033_kernel_decide
theorem rows9185 : actualRows9185=WordField.canonicalRows actualModulus 9185 (.badd 9098 9184) := by core033_kernel_decide
theorem stats9185 : actualRows9185.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9185=5388 := by core033_kernel_decide
theorem rows9186 : actualRows9186=WordField.canonicalRows actualModulus 9186 (.band 9179 9152) := by core033_kernel_decide
theorem stats9186 : actualRows9186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9186=5124 := by core033_kernel_decide
theorem rows9187 : actualRows9187=WordField.canonicalRows actualModulus 9187 (.bnot 9179) := by core033_kernel_decide
theorem stats9187 : actualRows9187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9187=6276 := by core033_kernel_decide
theorem rows9188 : actualRows9188=WordField.canonicalRows actualModulus 9188 (.band 9187 9125) := by core033_kernel_decide
theorem stats9188 : actualRows9188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9188=5124 := by core033_kernel_decide
theorem rows9189 : actualRows9189=WordField.canonicalRows actualModulus 9189 (.bxor 9186 9188) := by core033_kernel_decide
theorem stats9189 : actualRows9189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9189=7428 := by core033_kernel_decide
theorem rows9190 : actualRows9190=WordField.canonicalRows actualModulus 9190 (.badd 9185 9189) := by core033_kernel_decide
theorem stats9190 : actualRows9190.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9190=5388 := by core033_kernel_decide
theorem rows9191 : actualRows9191=WordField.canonicalRows actualModulus 9191 (.literal (BitVec.ofNat 32 2820302411)) := by core033_kernel_decide
theorem stats9191 : actualRows9191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9191=3828 := by core033_kernel_decide
theorem rows9192 : actualRows9192=WordField.canonicalRows actualModulus 9192 (.badd 9190 9191) := by core033_kernel_decide
theorem stats9192 : actualRows9192.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9192=5388 := by core033_kernel_decide
theorem rows9193 : actualRows9193=WordField.canonicalRows actualModulus 9193 (.badd 9192 7786) := by core033_kernel_decide
theorem stats9193 : actualRows9193.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9193=5388 := by core033_kernel_decide
theorem rows9194 : actualRows9194=WordField.canonicalRows actualModulus 9194 (.rotr 9178 2) := by core033_kernel_decide
theorem stats9194 : actualRows9194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9194=5124 := by core033_kernel_decide
theorem rows9195 : actualRows9195=WordField.canonicalRows actualModulus 9195 (.rotr 9178 13) := by core033_kernel_decide
theorem stats9195 : actualRows9195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9195=5124 := by core033_kernel_decide
theorem rows9196 : actualRows9196=WordField.canonicalRows actualModulus 9196 (.bxor 9194 9195) := by core033_kernel_decide
theorem stats9196 : actualRows9196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9196=7428 := by core033_kernel_decide
theorem rows9197 : actualRows9197=WordField.canonicalRows actualModulus 9197 (.rotr 9178 22) := by core033_kernel_decide
theorem stats9197 : actualRows9197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9197=5124 := by core033_kernel_decide
theorem rows9198 : actualRows9198=WordField.canonicalRows actualModulus 9198 (.bxor 9196 9197) := by core033_kernel_decide
theorem stats9198 : actualRows9198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9198=7428 := by core033_kernel_decide
theorem rows9199 : actualRows9199=WordField.canonicalRows actualModulus 9199 (.band 9178 9151) := by core033_kernel_decide
theorem stats9199 : actualRows9199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9199=5124 := by core033_kernel_decide
theorem rows9200 : actualRows9200=WordField.canonicalRows actualModulus 9200 (.band 9178 9124) := by core033_kernel_decide
theorem stats9200 : actualRows9200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9200=5124 := by core033_kernel_decide
theorem rows9201 : actualRows9201=WordField.canonicalRows actualModulus 9201 (.bxor 9199 9200) := by core033_kernel_decide
theorem stats9201 : actualRows9201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9201=7428 := by core033_kernel_decide
theorem rows9202 : actualRows9202=WordField.canonicalRows actualModulus 9202 (.band 9151 9124) := by core033_kernel_decide
theorem stats9202 : actualRows9202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9202=5124 := by core033_kernel_decide
theorem rows9203 : actualRows9203=WordField.canonicalRows actualModulus 9203 (.bxor 9201 9202) := by core033_kernel_decide
theorem stats9203 : actualRows9203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9203=7428 := by core033_kernel_decide
theorem rows9204 : actualRows9204=WordField.canonicalRows actualModulus 9204 (.badd 9198 9203) := by core033_kernel_decide
theorem stats9204 : actualRows9204.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9204=5388 := by core033_kernel_decide
theorem rows9205 : actualRows9205=WordField.canonicalRows actualModulus 9205 (.badd 9193 9204) := by core033_kernel_decide
theorem stats9205 : actualRows9205.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9205=5388 := by core033_kernel_decide
theorem rows9206 : actualRows9206=WordField.canonicalRows actualModulus 9206 (.badd 9097 9193) := by core033_kernel_decide
theorem stats9206 : actualRows9206.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9206=5388 := by core033_kernel_decide
theorem rows9207 : actualRows9207=WordField.canonicalRows actualModulus 9207 (.rotr 9206 6) := by core033_kernel_decide
theorem stats9207 : actualRows9207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9207=5124 := by core033_kernel_decide
theorem rows9208 : actualRows9208=WordField.canonicalRows actualModulus 9208 (.rotr 9206 11) := by core033_kernel_decide
theorem stats9208 : actualRows9208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9208=5124 := by core033_kernel_decide
theorem rows9209 : actualRows9209=WordField.canonicalRows actualModulus 9209 (.bxor 9207 9208) := by core033_kernel_decide
theorem stats9209 : actualRows9209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9209=7428 := by core033_kernel_decide
theorem rows9210 : actualRows9210=WordField.canonicalRows actualModulus 9210 (.rotr 9206 25) := by core033_kernel_decide
theorem stats9210 : actualRows9210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9210=5124 := by core033_kernel_decide
theorem rows9211 : actualRows9211=WordField.canonicalRows actualModulus 9211 (.bxor 9209 9210) := by core033_kernel_decide
theorem stats9211 : actualRows9211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9211=7428 := by core033_kernel_decide
theorem rows9212 : actualRows9212=WordField.canonicalRows actualModulus 9212 (.badd 9125 9211) := by core033_kernel_decide
theorem stats9212 : actualRows9212.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9212=5388 := by core033_kernel_decide
theorem rows9213 : actualRows9213=WordField.canonicalRows actualModulus 9213 (.band 9206 9179) := by core033_kernel_decide
theorem stats9213 : actualRows9213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9213=5124 := by core033_kernel_decide
theorem rows9214 : actualRows9214=WordField.canonicalRows actualModulus 9214 (.bnot 9206) := by core033_kernel_decide
theorem stats9214 : actualRows9214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9214=6276 := by core033_kernel_decide
theorem rows9215 : actualRows9215=WordField.canonicalRows actualModulus 9215 (.band 9214 9152) := by core033_kernel_decide
theorem stats9215 : actualRows9215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9215=5124 := by core033_kernel_decide
theorem rows9216 : actualRows9216=WordField.canonicalRows actualModulus 9216 (.bxor 9213 9215) := by core033_kernel_decide
theorem stats9216 : actualRows9216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9216=7428 := by core033_kernel_decide
theorem rows9217 : actualRows9217=WordField.canonicalRows actualModulus 9217 (.badd 9212 9216) := by core033_kernel_decide
theorem stats9217 : actualRows9217.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9217=5388 := by core033_kernel_decide
theorem rows9218 : actualRows9218=WordField.canonicalRows actualModulus 9218 (.literal (BitVec.ofNat 32 3259730800)) := by core033_kernel_decide
theorem stats9218 : actualRows9218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9218=3828 := by core033_kernel_decide
theorem rows9219 : actualRows9219=WordField.canonicalRows actualModulus 9219 (.badd 9217 9218) := by core033_kernel_decide
theorem stats9219 : actualRows9219.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9219=5388 := by core033_kernel_decide
theorem rows9220 : actualRows9220=WordField.canonicalRows actualModulus 9220 (.badd 9219 7799) := by core033_kernel_decide
theorem stats9220 : actualRows9220.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9220=5388 := by core033_kernel_decide
theorem rows9221 : actualRows9221=WordField.canonicalRows actualModulus 9221 (.rotr 9205 2) := by core033_kernel_decide
theorem stats9221 : actualRows9221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9221=5124 := by core033_kernel_decide
theorem rows9222 : actualRows9222=WordField.canonicalRows actualModulus 9222 (.rotr 9205 13) := by core033_kernel_decide
theorem stats9222 : actualRows9222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9222=5124 := by core033_kernel_decide
theorem rows9223 : actualRows9223=WordField.canonicalRows actualModulus 9223 (.bxor 9221 9222) := by core033_kernel_decide
theorem stats9223 : actualRows9223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9223=7428 := by core033_kernel_decide
theorem rows9224 : actualRows9224=WordField.canonicalRows actualModulus 9224 (.rotr 9205 22) := by core033_kernel_decide
theorem stats9224 : actualRows9224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9224=5124 := by core033_kernel_decide
theorem rows9225 : actualRows9225=WordField.canonicalRows actualModulus 9225 (.bxor 9223 9224) := by core033_kernel_decide
theorem stats9225 : actualRows9225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9225=7428 := by core033_kernel_decide
theorem rows9226 : actualRows9226=WordField.canonicalRows actualModulus 9226 (.band 9205 9178) := by core033_kernel_decide
theorem stats9226 : actualRows9226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9226=5124 := by core033_kernel_decide
theorem rows9227 : actualRows9227=WordField.canonicalRows actualModulus 9227 (.band 9205 9151) := by core033_kernel_decide
theorem stats9227 : actualRows9227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9227=5124 := by core033_kernel_decide
theorem rows9228 : actualRows9228=WordField.canonicalRows actualModulus 9228 (.bxor 9226 9227) := by core033_kernel_decide
theorem stats9228 : actualRows9228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9228=7428 := by core033_kernel_decide
theorem rows9229 : actualRows9229=WordField.canonicalRows actualModulus 9229 (.band 9178 9151) := by core033_kernel_decide
theorem stats9229 : actualRows9229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9229=5124 := by core033_kernel_decide
theorem rows9230 : actualRows9230=WordField.canonicalRows actualModulus 9230 (.bxor 9228 9229) := by core033_kernel_decide
theorem stats9230 : actualRows9230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9230=7428 := by core033_kernel_decide
theorem rows9231 : actualRows9231=WordField.canonicalRows actualModulus 9231 (.badd 9225 9230) := by core033_kernel_decide
theorem stats9231 : actualRows9231.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9231=5388 := by core033_kernel_decide
theorem rows9232 : actualRows9232=WordField.canonicalRows actualModulus 9232 (.badd 9220 9231) := by core033_kernel_decide
theorem stats9232 : actualRows9232.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9232=5388 := by core033_kernel_decide
theorem rows9233 : actualRows9233=WordField.canonicalRows actualModulus 9233 (.badd 9124 9220) := by core033_kernel_decide
theorem stats9233 : actualRows9233.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9233=5388 := by core033_kernel_decide
theorem rows9234 : actualRows9234=WordField.canonicalRows actualModulus 9234 (.rotr 9233 6) := by core033_kernel_decide
theorem stats9234 : actualRows9234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9234=5124 := by core033_kernel_decide
theorem rows9235 : actualRows9235=WordField.canonicalRows actualModulus 9235 (.rotr 9233 11) := by core033_kernel_decide
theorem stats9235 : actualRows9235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9235=5124 := by core033_kernel_decide
theorem rows9236 : actualRows9236=WordField.canonicalRows actualModulus 9236 (.bxor 9234 9235) := by core033_kernel_decide
theorem stats9236 : actualRows9236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9236=7428 := by core033_kernel_decide
theorem rows9237 : actualRows9237=WordField.canonicalRows actualModulus 9237 (.rotr 9233 25) := by core033_kernel_decide
theorem stats9237 : actualRows9237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9237=5124 := by core033_kernel_decide
theorem rows9238 : actualRows9238=WordField.canonicalRows actualModulus 9238 (.bxor 9236 9237) := by core033_kernel_decide
theorem stats9238 : actualRows9238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9238=7428 := by core033_kernel_decide
theorem rows9239 : actualRows9239=WordField.canonicalRows actualModulus 9239 (.badd 9152 9238) := by core033_kernel_decide
theorem stats9239 : actualRows9239.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9239=5388 := by core033_kernel_decide
theorem rows9240 : actualRows9240=WordField.canonicalRows actualModulus 9240 (.band 9233 9206) := by core033_kernel_decide
theorem stats9240 : actualRows9240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9240=5124 := by core033_kernel_decide
theorem rows9241 : actualRows9241=WordField.canonicalRows actualModulus 9241 (.bnot 9233) := by core033_kernel_decide
theorem stats9241 : actualRows9241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9241=6276 := by core033_kernel_decide
theorem rows9242 : actualRows9242=WordField.canonicalRows actualModulus 9242 (.band 9241 9179) := by core033_kernel_decide
theorem stats9242 : actualRows9242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9242=5124 := by core033_kernel_decide
theorem rows9243 : actualRows9243=WordField.canonicalRows actualModulus 9243 (.bxor 9240 9242) := by core033_kernel_decide
theorem stats9243 : actualRows9243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9243=7428 := by core033_kernel_decide
theorem rows9244 : actualRows9244=WordField.canonicalRows actualModulus 9244 (.badd 9239 9243) := by core033_kernel_decide
theorem stats9244 : actualRows9244.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9244=5388 := by core033_kernel_decide
theorem rows9245 : actualRows9245=WordField.canonicalRows actualModulus 9245 (.literal (BitVec.ofNat 32 3345764771)) := by core033_kernel_decide
theorem stats9245 : actualRows9245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9245=3972 := by core033_kernel_decide
theorem rows9246 : actualRows9246=WordField.canonicalRows actualModulus 9246 (.badd 9244 9245) := by core033_kernel_decide
theorem stats9246 : actualRows9246.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9246=5388 := by core033_kernel_decide
theorem rows9247 : actualRows9247=WordField.canonicalRows actualModulus 9247 (.badd 9246 7812) := by core033_kernel_decide
theorem stats9247 : actualRows9247.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9247=5388 := by core033_kernel_decide
def partRows142 : List R1CS.Row := actualRows9184++actualRows9185++actualRows9186++actualRows9187++actualRows9188++actualRows9189++actualRows9190++actualRows9191++actualRows9192++actualRows9193++actualRows9194++actualRows9195++actualRows9196++actualRows9197++actualRows9198++actualRows9199++actualRows9200++actualRows9201++actualRows9202++actualRows9203++actualRows9204++actualRows9205++actualRows9206++actualRows9207++actualRows9208++actualRows9209++actualRows9210++actualRows9211++actualRows9212++actualRows9213++actualRows9214++actualRows9215++actualRows9216++actualRows9217++actualRows9218++actualRows9219++actualRows9220++actualRows9221++actualRows9222++actualRows9223++actualRows9224++actualRows9225++actualRows9226++actualRows9227++actualRows9228++actualRows9229++actualRows9230++actualRows9231++actualRows9232++actualRows9233++actualRows9234++actualRows9235++actualRows9236++actualRows9237++actualRows9238++actualRows9239++actualRows9240++actualRows9241++actualRows9242++actualRows9243++actualRows9244++actualRows9245++actualRows9246++actualRows9247
def partOps142 : List WordIR.Op := [.bxor 9182 9183,.badd 9098 9184,.band 9179 9152,.bnot 9179,.band 9187 9125,.bxor 9186 9188,.badd 9185 9189,.literal (BitVec.ofNat 32 2820302411),.badd 9190 9191,.badd 9192 7786,.rotr 9178 2,.rotr 9178 13,.bxor 9194 9195,.rotr 9178 22,.bxor 9196 9197,.band 9178 9151,.band 9178 9124,.bxor 9199 9200,.band 9151 9124,.bxor 9201 9202,.badd 9198 9203,.badd 9193 9204,.badd 9097 9193,.rotr 9206 6,.rotr 9206 11,.bxor 9207 9208,.rotr 9206 25,.bxor 9209 9210,.badd 9125 9211,.band 9206 9179,.bnot 9206,.band 9214 9152,.bxor 9213 9215,.badd 9212 9216,.literal (BitVec.ofNat 32 3259730800),.badd 9217 9218,.badd 9219 7799,.rotr 9205 2,.rotr 9205 13,.bxor 9221 9222,.rotr 9205 22,.bxor 9223 9224,.band 9205 9178,.band 9205 9151,.bxor 9226 9227,.band 9178 9151,.bxor 9228 9229,.badd 9225 9230,.badd 9220 9231,.badd 9124 9220,.rotr 9233 6,.rotr 9233 11,.bxor 9234 9235,.rotr 9233 25,.bxor 9236 9237,.badd 9152 9238,.band 9233 9206,.bnot 9233,.band 9241 9179,.bxor 9240 9242,.badd 9239 9243,.literal (BitVec.ofNat 32 3345764771),.badd 9244 9245,.badd 9246 7812]
theorem partExact142 : partRows142=WordField.rows actualModulus 9184 partOps142 := by
  simp only [partRows142,partOps142,WordField.rows,rows9184,rows9185,rows9186,rows9187,rows9188,rows9189,rows9190,rows9191,rows9192,rows9193,rows9194,rows9195,rows9196,rows9197,rows9198,rows9199,rows9200,rows9201,rows9202,rows9203,rows9204,rows9205,rows9206,rows9207,rows9208,rows9209,rows9210,rows9211,rows9212,rows9213,rows9214,rows9215,rows9216,rows9217,rows9218,rows9219,rows9220,rows9221,rows9222,rows9223,rows9224,rows9225,rows9226,rows9227,rows9228,rows9229,rows9230,rows9231,rows9232,rows9233,rows9234,rows9235,rows9236,rows9237,rows9238,rows9239,rows9240,rows9241,rows9242,rows9243,rows9244,rows9245,rows9246,rows9247,List.append_assoc,List.append_nil]
theorem partLength142 : partOps142.length=64 := by decide
theorem partStats142 : partRows142.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows142=369264 := by
  simp only [partRows142,List.length_append,MatrixRowBlocks.rows_weight_append,stats9184.1,stats9184.2,stats9185.1,stats9185.2,stats9186.1,stats9186.2,stats9187.1,stats9187.2,stats9188.1,stats9188.2,stats9189.1,stats9189.2,stats9190.1,stats9190.2,stats9191.1,stats9191.2,stats9192.1,stats9192.2,stats9193.1,stats9193.2,stats9194.1,stats9194.2,stats9195.1,stats9195.2,stats9196.1,stats9196.2,stats9197.1,stats9197.2,stats9198.1,stats9198.2,stats9199.1,stats9199.2,stats9200.1,stats9200.2,stats9201.1,stats9201.2,stats9202.1,stats9202.2,stats9203.1,stats9203.2,stats9204.1,stats9204.2,stats9205.1,stats9205.2,stats9206.1,stats9206.2,stats9207.1,stats9207.2,stats9208.1,stats9208.2,stats9209.1,stats9209.2,stats9210.1,stats9210.2,stats9211.1,stats9211.2,stats9212.1,stats9212.2,stats9213.1,stats9213.2,stats9214.1,stats9214.2,stats9215.1,stats9215.2,stats9216.1,stats9216.2,stats9217.1,stats9217.2,stats9218.1,stats9218.2,stats9219.1,stats9219.2,stats9220.1,stats9220.2,stats9221.1,stats9221.2,stats9222.1,stats9222.2,stats9223.1,stats9223.2,stats9224.1,stats9224.2,stats9225.1,stats9225.2,stats9226.1,stats9226.2,stats9227.1,stats9227.2,stats9228.1,stats9228.2,stats9229.1,stats9229.2,stats9230.1,stats9230.2,stats9231.1,stats9231.2,stats9232.1,stats9232.2,stats9233.1,stats9233.2,stats9234.1,stats9234.2,stats9235.1,stats9235.2,stats9236.1,stats9236.2,stats9237.1,stats9237.2,stats9238.1,stats9238.2,stats9239.1,stats9239.2,stats9240.1,stats9240.2,stats9241.1,stats9241.2,stats9242.1,stats9242.2,stats9243.1,stats9243.2,stats9244.1,stats9244.2,stats9245.1,stats9245.2,stats9246.1,stats9246.2,stats9247.1,stats9247.2]
  decide
end QuotedPairedPathRoundCheckedRows
