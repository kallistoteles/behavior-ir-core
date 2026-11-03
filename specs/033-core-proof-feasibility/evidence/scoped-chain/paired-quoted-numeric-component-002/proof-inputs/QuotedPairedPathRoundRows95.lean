import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData96
import PairedPathRoundInstructionMatrixData97
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6176 : actualRows6176=WordField.canonicalRows actualModulus 6176 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6176 : actualRows6176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6176=2820 := by core033_kernel_decide
theorem rows6177 : actualRows6177=WordField.canonicalRows actualModulus 6177 (.bnot 6176) := by core033_kernel_decide
theorem stats6177 : actualRows6177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6177=6276 := by core033_kernel_decide
theorem rows6178 : actualRows6178=WordField.canonicalRows actualModulus 6178 (.band 6175 6177) := by core033_kernel_decide
theorem stats6178 : actualRows6178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6178=5124 := by core033_kernel_decide
theorem rows6179 : actualRows6179=WordField.canonicalRows actualModulus 6179 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6179 : actualRows6179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6179=2892 := by core033_kernel_decide
theorem rows6180 : actualRows6180=WordField.canonicalRows actualModulus 6180 (.bxor 616 6179) := by core033_kernel_decide
theorem stats6180 : actualRows6180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6180=7428 := by core033_kernel_decide
theorem rows6181 : actualRows6181=WordField.canonicalRows actualModulus 6181 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6181 : actualRows6181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6181=2820 := by core033_kernel_decide
theorem rows6182 : actualRows6182=WordField.canonicalRows actualModulus 6182 (.bnot 6181) := by core033_kernel_decide
theorem stats6182 : actualRows6182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6182=6276 := by core033_kernel_decide
theorem rows6183 : actualRows6183=WordField.canonicalRows actualModulus 6183 (.bxor 6180 6182) := by core033_kernel_decide
theorem stats6183 : actualRows6183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6183=7428 := by core033_kernel_decide
theorem rows6184 : actualRows6184=WordField.canonicalRows actualModulus 6184 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6184 : actualRows6184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6184=2892 := by core033_kernel_decide
theorem rows6185 : actualRows6185=WordField.canonicalRows actualModulus 6185 (.bxor 616 6184) := by core033_kernel_decide
theorem stats6185 : actualRows6185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6185=7428 := by core033_kernel_decide
theorem rows6186 : actualRows6186=WordField.canonicalRows actualModulus 6186 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6186 : actualRows6186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6186=2820 := by core033_kernel_decide
theorem rows6187 : actualRows6187=WordField.canonicalRows actualModulus 6187 (.bnot 6186) := by core033_kernel_decide
theorem stats6187 : actualRows6187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6187=6276 := by core033_kernel_decide
theorem rows6188 : actualRows6188=WordField.canonicalRows actualModulus 6188 (.badd 6185 6187) := by core033_kernel_decide
theorem stats6188 : actualRows6188.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6188=5388 := by core033_kernel_decide
theorem rows6189 : actualRows6189=WordField.canonicalRows actualModulus 6189 (.bnot 6188) := by core033_kernel_decide
theorem stats6189 : actualRows6189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6189=6276 := by core033_kernel_decide
theorem rows6190 : actualRows6190=WordField.canonicalRows actualModulus 6190 (.band 6183 6189) := by core033_kernel_decide
theorem stats6190 : actualRows6190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6190=5124 := by core033_kernel_decide
theorem rows6191 : actualRows6191=WordField.canonicalRows actualModulus 6191 (.bxor 6178 6190) := by core033_kernel_decide
theorem stats6191 : actualRows6191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6191=7428 := by core033_kernel_decide
theorem rows6192 : actualRows6192=WordField.canonicalRows actualModulus 6192 (.shr 6191 31) := by core033_kernel_decide
theorem stats6192 : actualRows6192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6192=2892 := by core033_kernel_decide
theorem rows6193 : actualRows6193=WordField.canonicalRows actualModulus 6193 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6193 : actualRows6193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6193=2892 := by core033_kernel_decide
theorem rows6194 : actualRows6194=WordField.canonicalRows actualModulus 6194 (.bxor 6192 6193) := by core033_kernel_decide
theorem stats6194 : actualRows6194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6194=7428 := by core033_kernel_decide
theorem rows6195 : actualRows6195=WordField.canonicalRows actualModulus 6195 (.bnot 6194) := by core033_kernel_decide
theorem stats6195 : actualRows6195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6195=6276 := by core033_kernel_decide
theorem rows6196 : actualRows6196=WordField.canonicalRows actualModulus 6196 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6196 : actualRows6196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6196=2892 := by core033_kernel_decide
theorem rows6197 : actualRows6197=WordField.canonicalRows actualModulus 6197 (.badd 6195 6196) := by core033_kernel_decide
theorem stats6197 : actualRows6197.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6197=5388 := by core033_kernel_decide
theorem rows6198 : actualRows6198=WordField.canonicalRows actualModulus 6198 (.bnot 6197) := by core033_kernel_decide
theorem stats6198 : actualRows6198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6198=6276 := by core033_kernel_decide
theorem rows6199 : actualRows6199=WordField.canonicalRows actualModulus 6199 (.band 6198 2010) := by core033_kernel_decide
theorem stats6199 : actualRows6199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6199=5124 := by core033_kernel_decide
theorem rows6200 : actualRows6200=WordField.canonicalRows actualModulus 6200 (.bxor 6173 6199) := by core033_kernel_decide
theorem stats6200 : actualRows6200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6200=7428 := by core033_kernel_decide
theorem rows6201 : actualRows6201=WordField.canonicalRows actualModulus 6201 (.rotr 2911 8) := by core033_kernel_decide
theorem stats6201 : actualRows6201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6201=5124 := by core033_kernel_decide
theorem rows6202 : actualRows6202=WordField.canonicalRows actualModulus 6202 (.rotr 2963 16) := by core033_kernel_decide
theorem stats6202 : actualRows6202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6202=5124 := by core033_kernel_decide
theorem rows6203 : actualRows6203=WordField.canonicalRows actualModulus 6203 (.badd 6201 6202) := by core033_kernel_decide
theorem stats6203 : actualRows6203.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6203=5388 := by core033_kernel_decide
theorem rows6204 : actualRows6204=WordField.canonicalRows actualModulus 6204 (.rotr 3015 24) := by core033_kernel_decide
theorem stats6204 : actualRows6204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6204=5124 := by core033_kernel_decide
theorem rows6205 : actualRows6205=WordField.canonicalRows actualModulus 6205 (.badd 6203 6204) := by core033_kernel_decide
theorem stats6205 : actualRows6205.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6205=5388 := by core033_kernel_decide
theorem rows6206 : actualRows6206=WordField.canonicalRows actualModulus 6206 (.badd 6205 3067) := by core033_kernel_decide
theorem stats6206 : actualRows6206.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6206=5388 := by core033_kernel_decide
theorem rows6207 : actualRows6207=WordField.canonicalRows actualModulus 6207 (.rotr 3119 8) := by core033_kernel_decide
theorem stats6207 : actualRows6207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6207=5124 := by core033_kernel_decide
theorem rows6208 : actualRows6208=WordField.canonicalRows actualModulus 6208 (.rotr 3171 16) := by core033_kernel_decide
theorem stats6208 : actualRows6208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6208=5124 := by core033_kernel_decide
theorem rows6209 : actualRows6209=WordField.canonicalRows actualModulus 6209 (.badd 6207 6208) := by core033_kernel_decide
theorem stats6209 : actualRows6209.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6209=5388 := by core033_kernel_decide
theorem rows6210 : actualRows6210=WordField.canonicalRows actualModulus 6210 (.rotr 3223 24) := by core033_kernel_decide
theorem stats6210 : actualRows6210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6210=5124 := by core033_kernel_decide
theorem rows6211 : actualRows6211=WordField.canonicalRows actualModulus 6211 (.badd 6209 6210) := by core033_kernel_decide
theorem stats6211 : actualRows6211.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6211=5388 := by core033_kernel_decide
theorem rows6212 : actualRows6212=WordField.canonicalRows actualModulus 6212 (.badd 6211 3275) := by core033_kernel_decide
theorem stats6212 : actualRows6212.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6212=5388 := by core033_kernel_decide
theorem rows6213 : actualRows6213=WordField.canonicalRows actualModulus 6213 (.rotr 3327 8) := by core033_kernel_decide
theorem stats6213 : actualRows6213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6213=5124 := by core033_kernel_decide
theorem rows6214 : actualRows6214=WordField.canonicalRows actualModulus 6214 (.rotr 3379 16) := by core033_kernel_decide
theorem stats6214 : actualRows6214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6214=5124 := by core033_kernel_decide
theorem rows6215 : actualRows6215=WordField.canonicalRows actualModulus 6215 (.badd 6213 6214) := by core033_kernel_decide
theorem stats6215 : actualRows6215.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6215=5388 := by core033_kernel_decide
theorem rows6216 : actualRows6216=WordField.canonicalRows actualModulus 6216 (.rotr 3431 24) := by core033_kernel_decide
theorem stats6216 : actualRows6216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6216=5124 := by core033_kernel_decide
theorem rows6217 : actualRows6217=WordField.canonicalRows actualModulus 6217 (.badd 6215 6216) := by core033_kernel_decide
theorem stats6217 : actualRows6217.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6217=5388 := by core033_kernel_decide
theorem rows6218 : actualRows6218=WordField.canonicalRows actualModulus 6218 (.badd 6217 3483) := by core033_kernel_decide
theorem stats6218 : actualRows6218.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6218=5388 := by core033_kernel_decide
theorem rows6219 : actualRows6219=WordField.canonicalRows actualModulus 6219 (.rotr 3535 8) := by core033_kernel_decide
theorem stats6219 : actualRows6219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6219=5124 := by core033_kernel_decide
theorem rows6220 : actualRows6220=WordField.canonicalRows actualModulus 6220 (.rotr 3587 16) := by core033_kernel_decide
theorem stats6220 : actualRows6220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6220=5124 := by core033_kernel_decide
theorem rows6221 : actualRows6221=WordField.canonicalRows actualModulus 6221 (.badd 6219 6220) := by core033_kernel_decide
theorem stats6221 : actualRows6221.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6221=5388 := by core033_kernel_decide
theorem rows6222 : actualRows6222=WordField.canonicalRows actualModulus 6222 (.rotr 3639 24) := by core033_kernel_decide
theorem stats6222 : actualRows6222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6222=5124 := by core033_kernel_decide
theorem rows6223 : actualRows6223=WordField.canonicalRows actualModulus 6223 (.badd 6221 6222) := by core033_kernel_decide
theorem stats6223 : actualRows6223.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6223=5388 := by core033_kernel_decide
theorem rows6224 : actualRows6224=WordField.canonicalRows actualModulus 6224 (.badd 6223 3691) := by core033_kernel_decide
theorem stats6224 : actualRows6224.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6224=5388 := by core033_kernel_decide
theorem rows6225 : actualRows6225=WordField.canonicalRows actualModulus 6225 (.rotr 3743 8) := by core033_kernel_decide
theorem stats6225 : actualRows6225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6225=5124 := by core033_kernel_decide
theorem rows6226 : actualRows6226=WordField.canonicalRows actualModulus 6226 (.rotr 3795 16) := by core033_kernel_decide
theorem stats6226 : actualRows6226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6226=5124 := by core033_kernel_decide
theorem rows6227 : actualRows6227=WordField.canonicalRows actualModulus 6227 (.badd 6225 6226) := by core033_kernel_decide
theorem stats6227 : actualRows6227.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6227=5388 := by core033_kernel_decide
theorem rows6228 : actualRows6228=WordField.canonicalRows actualModulus 6228 (.rotr 3847 24) := by core033_kernel_decide
theorem stats6228 : actualRows6228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6228=5124 := by core033_kernel_decide
theorem rows6229 : actualRows6229=WordField.canonicalRows actualModulus 6229 (.badd 6227 6228) := by core033_kernel_decide
theorem stats6229 : actualRows6229.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6229=5388 := by core033_kernel_decide
theorem rows6230 : actualRows6230=WordField.canonicalRows actualModulus 6230 (.badd 6229 3899) := by core033_kernel_decide
theorem stats6230 : actualRows6230.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6230=5388 := by core033_kernel_decide
theorem rows6231 : actualRows6231=WordField.canonicalRows actualModulus 6231 (.rotr 3951 8) := by core033_kernel_decide
theorem stats6231 : actualRows6231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6231=5124 := by core033_kernel_decide
theorem rows6232 : actualRows6232=WordField.canonicalRows actualModulus 6232 (.rotr 4003 16) := by core033_kernel_decide
theorem stats6232 : actualRows6232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6232=5124 := by core033_kernel_decide
theorem rows6233 : actualRows6233=WordField.canonicalRows actualModulus 6233 (.badd 6231 6232) := by core033_kernel_decide
theorem stats6233 : actualRows6233.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6233=5388 := by core033_kernel_decide
theorem rows6234 : actualRows6234=WordField.canonicalRows actualModulus 6234 (.rotr 4055 24) := by core033_kernel_decide
theorem stats6234 : actualRows6234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6234=5124 := by core033_kernel_decide
theorem rows6235 : actualRows6235=WordField.canonicalRows actualModulus 6235 (.badd 6233 6234) := by core033_kernel_decide
theorem stats6235 : actualRows6235.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6235=5388 := by core033_kernel_decide
theorem rows6236 : actualRows6236=WordField.canonicalRows actualModulus 6236 (.badd 6235 4107) := by core033_kernel_decide
theorem stats6236 : actualRows6236.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6236=5388 := by core033_kernel_decide
theorem rows6237 : actualRows6237=WordField.canonicalRows actualModulus 6237 (.rotr 4159 8) := by core033_kernel_decide
theorem stats6237 : actualRows6237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6237=5124 := by core033_kernel_decide
theorem rows6238 : actualRows6238=WordField.canonicalRows actualModulus 6238 (.rotr 4211 16) := by core033_kernel_decide
theorem stats6238 : actualRows6238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6238=5124 := by core033_kernel_decide
theorem rows6239 : actualRows6239=WordField.canonicalRows actualModulus 6239 (.badd 6237 6238) := by core033_kernel_decide
theorem stats6239 : actualRows6239.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6239=5388 := by core033_kernel_decide
def partRows95 : List R1CS.Row := actualRows6176++actualRows6177++actualRows6178++actualRows6179++actualRows6180++actualRows6181++actualRows6182++actualRows6183++actualRows6184++actualRows6185++actualRows6186++actualRows6187++actualRows6188++actualRows6189++actualRows6190++actualRows6191++actualRows6192++actualRows6193++actualRows6194++actualRows6195++actualRows6196++actualRows6197++actualRows6198++actualRows6199++actualRows6200++actualRows6201++actualRows6202++actualRows6203++actualRows6204++actualRows6205++actualRows6206++actualRows6207++actualRows6208++actualRows6209++actualRows6210++actualRows6211++actualRows6212++actualRows6213++actualRows6214++actualRows6215++actualRows6216++actualRows6217++actualRows6218++actualRows6219++actualRows6220++actualRows6221++actualRows6222++actualRows6223++actualRows6224++actualRows6225++actualRows6226++actualRows6227++actualRows6228++actualRows6229++actualRows6230++actualRows6231++actualRows6232++actualRows6233++actualRows6234++actualRows6235++actualRows6236++actualRows6237++actualRows6238++actualRows6239
def partOps95 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 6176,.band 6175 6177,.literal (BitVec.ofNat 32 2),.bxor 616 6179,.literal (BitVec.ofNat 32 0),.bnot 6181,.bxor 6180 6182,.literal (BitVec.ofNat 32 2),.bxor 616 6184,.literal (BitVec.ofNat 32 0),.bnot 6186,.badd 6185 6187,.bnot 6188,.band 6183 6189,.bxor 6178 6190,.shr 6191 31,.literal (BitVec.ofNat 32 1),.bxor 6192 6193,.bnot 6194,.literal (BitVec.ofNat 32 1),.badd 6195 6196,.bnot 6197,.band 6198 2010,.bxor 6173 6199,.rotr 2911 8,.rotr 2963 16,.badd 6201 6202,.rotr 3015 24,.badd 6203 6204,.badd 6205 3067,.rotr 3119 8,.rotr 3171 16,.badd 6207 6208,.rotr 3223 24,.badd 6209 6210,.badd 6211 3275,.rotr 3327 8,.rotr 3379 16,.badd 6213 6214,.rotr 3431 24,.badd 6215 6216,.badd 6217 3483,.rotr 3535 8,.rotr 3587 16,.badd 6219 6220,.rotr 3639 24,.badd 6221 6222,.badd 6223 3691,.rotr 3743 8,.rotr 3795 16,.badd 6225 6226,.rotr 3847 24,.badd 6227 6228,.badd 6229 3899,.rotr 3951 8,.rotr 4003 16,.badd 6231 6232,.rotr 4055 24,.badd 6233 6234,.badd 6235 4107,.rotr 4159 8,.rotr 4211 16,.badd 6237 6238]
theorem partExact95 : partRows95=WordField.rows actualModulus 6176 partOps95 := by
  simp only [partRows95,partOps95,WordField.rows,rows6176,rows6177,rows6178,rows6179,rows6180,rows6181,rows6182,rows6183,rows6184,rows6185,rows6186,rows6187,rows6188,rows6189,rows6190,rows6191,rows6192,rows6193,rows6194,rows6195,rows6196,rows6197,rows6198,rows6199,rows6200,rows6201,rows6202,rows6203,rows6204,rows6205,rows6206,rows6207,rows6208,rows6209,rows6210,rows6211,rows6212,rows6213,rows6214,rows6215,rows6216,rows6217,rows6218,rows6219,rows6220,rows6221,rows6222,rows6223,rows6224,rows6225,rows6226,rows6227,rows6228,rows6229,rows6230,rows6231,rows6232,rows6233,rows6234,rows6235,rows6236,rows6237,rows6238,rows6239,List.append_assoc,List.append_nil]
theorem partLength95 : partOps95.length=64 := by decide
theorem partStats95 : partRows95.length=2197 ∧ MatrixRowBlocks.rowsWeight partRows95=336144 := by
  simp only [partRows95,List.length_append,MatrixRowBlocks.rows_weight_append,stats6176.1,stats6176.2,stats6177.1,stats6177.2,stats6178.1,stats6178.2,stats6179.1,stats6179.2,stats6180.1,stats6180.2,stats6181.1,stats6181.2,stats6182.1,stats6182.2,stats6183.1,stats6183.2,stats6184.1,stats6184.2,stats6185.1,stats6185.2,stats6186.1,stats6186.2,stats6187.1,stats6187.2,stats6188.1,stats6188.2,stats6189.1,stats6189.2,stats6190.1,stats6190.2,stats6191.1,stats6191.2,stats6192.1,stats6192.2,stats6193.1,stats6193.2,stats6194.1,stats6194.2,stats6195.1,stats6195.2,stats6196.1,stats6196.2,stats6197.1,stats6197.2,stats6198.1,stats6198.2,stats6199.1,stats6199.2,stats6200.1,stats6200.2,stats6201.1,stats6201.2,stats6202.1,stats6202.2,stats6203.1,stats6203.2,stats6204.1,stats6204.2,stats6205.1,stats6205.2,stats6206.1,stats6206.2,stats6207.1,stats6207.2,stats6208.1,stats6208.2,stats6209.1,stats6209.2,stats6210.1,stats6210.2,stats6211.1,stats6211.2,stats6212.1,stats6212.2,stats6213.1,stats6213.2,stats6214.1,stats6214.2,stats6215.1,stats6215.2,stats6216.1,stats6216.2,stats6217.1,stats6217.2,stats6218.1,stats6218.2,stats6219.1,stats6219.2,stats6220.1,stats6220.2,stats6221.1,stats6221.2,stats6222.1,stats6222.2,stats6223.1,stats6223.2,stats6224.1,stats6224.2,stats6225.1,stats6225.2,stats6226.1,stats6226.2,stats6227.1,stats6227.2,stats6228.1,stats6228.2,stats6229.1,stats6229.2,stats6230.1,stats6230.2,stats6231.1,stats6231.2,stats6232.1,stats6232.2,stats6233.1,stats6233.2,stats6234.1,stats6234.2,stats6235.1,stats6235.2,stats6236.1,stats6236.2,stats6237.1,stats6237.2,stats6238.1,stats6238.2,stats6239.1,stats6239.2]
  decide
end QuotedPairedPathRoundCheckedRows
