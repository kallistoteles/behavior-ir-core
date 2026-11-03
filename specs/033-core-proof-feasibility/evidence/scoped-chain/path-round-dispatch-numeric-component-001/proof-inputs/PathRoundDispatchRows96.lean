import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData96
import PathRoundDispatchInstructionMatrixData97
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6187 : actualRows6187=WordField.canonicalRows actualModulus 6187 (.bxor 6176 6186) := by core033_kernel_decide
theorem stats6187 : actualRows6187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6187=7428 := by core033_kernel_decide
theorem rows6188 : actualRows6188=WordField.canonicalRows actualModulus 6188 (.shr 6187 31) := by core033_kernel_decide
theorem stats6188 : actualRows6188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6188=2892 := by core033_kernel_decide
theorem rows6189 : actualRows6189=WordField.canonicalRows actualModulus 6189 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6189 : actualRows6189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6189=2892 := by core033_kernel_decide
theorem rows6190 : actualRows6190=WordField.canonicalRows actualModulus 6190 (.bxor 6188 6189) := by core033_kernel_decide
theorem stats6190 : actualRows6190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6190=7428 := by core033_kernel_decide
theorem rows6191 : actualRows6191=WordField.canonicalRows actualModulus 6191 (.shr 3587 8) := by core033_kernel_decide
theorem stats6191 : actualRows6191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6191=4548 := by core033_kernel_decide
theorem rows6192 : actualRows6192=WordField.canonicalRows actualModulus 6192 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6192 : actualRows6192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6192=2820 := by core033_kernel_decide
theorem rows6193 : actualRows6193=WordField.canonicalRows actualModulus 6193 (.bnot 6192) := by core033_kernel_decide
theorem stats6193 : actualRows6193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6193=6276 := by core033_kernel_decide
theorem rows6194 : actualRows6194=WordField.canonicalRows actualModulus 6194 (.band 6191 6193) := by core033_kernel_decide
theorem stats6194 : actualRows6194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6194=5124 := by core033_kernel_decide
theorem rows6195 : actualRows6195=WordField.canonicalRows actualModulus 6195 (.shr 3587 8) := by core033_kernel_decide
theorem stats6195 : actualRows6195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6195=4548 := by core033_kernel_decide
theorem rows6196 : actualRows6196=WordField.canonicalRows actualModulus 6196 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6196 : actualRows6196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6196=2820 := by core033_kernel_decide
theorem rows6197 : actualRows6197=WordField.canonicalRows actualModulus 6197 (.bnot 6196) := by core033_kernel_decide
theorem stats6197 : actualRows6197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6197=6276 := by core033_kernel_decide
theorem rows6198 : actualRows6198=WordField.canonicalRows actualModulus 6198 (.bxor 6195 6197) := by core033_kernel_decide
theorem stats6198 : actualRows6198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6198=7428 := by core033_kernel_decide
theorem rows6199 : actualRows6199=WordField.canonicalRows actualModulus 6199 (.shr 3587 8) := by core033_kernel_decide
theorem stats6199 : actualRows6199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6199=4548 := by core033_kernel_decide
theorem rows6200 : actualRows6200=WordField.canonicalRows actualModulus 6200 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6200 : actualRows6200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6200=2820 := by core033_kernel_decide
theorem rows6201 : actualRows6201=WordField.canonicalRows actualModulus 6201 (.bnot 6200) := by core033_kernel_decide
theorem stats6201 : actualRows6201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6201=6276 := by core033_kernel_decide
theorem rows6202 : actualRows6202=WordField.canonicalRows actualModulus 6202 (.badd 6199 6201) := by core033_kernel_decide
theorem stats6202 : actualRows6202.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6202=5388 := by core033_kernel_decide
theorem rows6203 : actualRows6203=WordField.canonicalRows actualModulus 6203 (.bnot 6202) := by core033_kernel_decide
theorem stats6203 : actualRows6203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6203=6276 := by core033_kernel_decide
theorem rows6204 : actualRows6204=WordField.canonicalRows actualModulus 6204 (.band 6198 6203) := by core033_kernel_decide
theorem stats6204 : actualRows6204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6204=5124 := by core033_kernel_decide
theorem rows6205 : actualRows6205=WordField.canonicalRows actualModulus 6205 (.bxor 6194 6204) := by core033_kernel_decide
theorem stats6205 : actualRows6205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6205=7428 := by core033_kernel_decide
theorem rows6206 : actualRows6206=WordField.canonicalRows actualModulus 6206 (.shr 6205 31) := by core033_kernel_decide
theorem stats6206 : actualRows6206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6206=2892 := by core033_kernel_decide
theorem rows6207 : actualRows6207=WordField.canonicalRows actualModulus 6207 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6207 : actualRows6207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6207=2892 := by core033_kernel_decide
theorem rows6208 : actualRows6208=WordField.canonicalRows actualModulus 6208 (.bxor 6206 6207) := by core033_kernel_decide
theorem stats6208 : actualRows6208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6208=7428 := by core033_kernel_decide
theorem rows6209 : actualRows6209=WordField.canonicalRows actualModulus 6209 (.shr 3639 8) := by core033_kernel_decide
theorem stats6209 : actualRows6209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6209=4548 := by core033_kernel_decide
theorem rows6210 : actualRows6210=WordField.canonicalRows actualModulus 6210 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6210 : actualRows6210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6210=2820 := by core033_kernel_decide
theorem rows6211 : actualRows6211=WordField.canonicalRows actualModulus 6211 (.bnot 6210) := by core033_kernel_decide
theorem stats6211 : actualRows6211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6211=6276 := by core033_kernel_decide
theorem rows6212 : actualRows6212=WordField.canonicalRows actualModulus 6212 (.band 6209 6211) := by core033_kernel_decide
theorem stats6212 : actualRows6212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6212=5124 := by core033_kernel_decide
theorem rows6213 : actualRows6213=WordField.canonicalRows actualModulus 6213 (.shr 3639 8) := by core033_kernel_decide
theorem stats6213 : actualRows6213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6213=4548 := by core033_kernel_decide
theorem rows6214 : actualRows6214=WordField.canonicalRows actualModulus 6214 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6214 : actualRows6214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6214=2820 := by core033_kernel_decide
theorem rows6215 : actualRows6215=WordField.canonicalRows actualModulus 6215 (.bnot 6214) := by core033_kernel_decide
theorem stats6215 : actualRows6215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6215=6276 := by core033_kernel_decide
theorem rows6216 : actualRows6216=WordField.canonicalRows actualModulus 6216 (.bxor 6213 6215) := by core033_kernel_decide
theorem stats6216 : actualRows6216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6216=7428 := by core033_kernel_decide
theorem rows6217 : actualRows6217=WordField.canonicalRows actualModulus 6217 (.shr 3639 8) := by core033_kernel_decide
theorem stats6217 : actualRows6217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6217=4548 := by core033_kernel_decide
theorem rows6218 : actualRows6218=WordField.canonicalRows actualModulus 6218 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6218 : actualRows6218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6218=2820 := by core033_kernel_decide
theorem rows6219 : actualRows6219=WordField.canonicalRows actualModulus 6219 (.bnot 6218) := by core033_kernel_decide
theorem stats6219 : actualRows6219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6219=6276 := by core033_kernel_decide
theorem rows6220 : actualRows6220=WordField.canonicalRows actualModulus 6220 (.badd 6217 6219) := by core033_kernel_decide
theorem stats6220 : actualRows6220.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6220=5388 := by core033_kernel_decide
theorem rows6221 : actualRows6221=WordField.canonicalRows actualModulus 6221 (.bnot 6220) := by core033_kernel_decide
theorem stats6221 : actualRows6221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6221=6276 := by core033_kernel_decide
theorem rows6222 : actualRows6222=WordField.canonicalRows actualModulus 6222 (.band 6216 6221) := by core033_kernel_decide
theorem stats6222 : actualRows6222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6222=5124 := by core033_kernel_decide
theorem rows6223 : actualRows6223=WordField.canonicalRows actualModulus 6223 (.bxor 6212 6222) := by core033_kernel_decide
theorem stats6223 : actualRows6223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6223=7428 := by core033_kernel_decide
theorem rows6224 : actualRows6224=WordField.canonicalRows actualModulus 6224 (.shr 6223 31) := by core033_kernel_decide
theorem stats6224 : actualRows6224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6224=2892 := by core033_kernel_decide
theorem rows6225 : actualRows6225=WordField.canonicalRows actualModulus 6225 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6225 : actualRows6225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6225=2892 := by core033_kernel_decide
theorem rows6226 : actualRows6226=WordField.canonicalRows actualModulus 6226 (.bxor 6224 6225) := by core033_kernel_decide
theorem stats6226 : actualRows6226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6226=7428 := by core033_kernel_decide
theorem rows6227 : actualRows6227=WordField.canonicalRows actualModulus 6227 (.shr 3691 8) := by core033_kernel_decide
theorem stats6227 : actualRows6227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6227=4548 := by core033_kernel_decide
theorem rows6228 : actualRows6228=WordField.canonicalRows actualModulus 6228 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6228 : actualRows6228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6228=2820 := by core033_kernel_decide
theorem rows6229 : actualRows6229=WordField.canonicalRows actualModulus 6229 (.bnot 6228) := by core033_kernel_decide
theorem stats6229 : actualRows6229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6229=6276 := by core033_kernel_decide
theorem rows6230 : actualRows6230=WordField.canonicalRows actualModulus 6230 (.band 6227 6229) := by core033_kernel_decide
theorem stats6230 : actualRows6230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6230=5124 := by core033_kernel_decide
theorem rows6231 : actualRows6231=WordField.canonicalRows actualModulus 6231 (.shr 3691 8) := by core033_kernel_decide
theorem stats6231 : actualRows6231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6231=4548 := by core033_kernel_decide
theorem rows6232 : actualRows6232=WordField.canonicalRows actualModulus 6232 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6232 : actualRows6232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6232=2820 := by core033_kernel_decide
theorem rows6233 : actualRows6233=WordField.canonicalRows actualModulus 6233 (.bnot 6232) := by core033_kernel_decide
theorem stats6233 : actualRows6233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6233=6276 := by core033_kernel_decide
theorem rows6234 : actualRows6234=WordField.canonicalRows actualModulus 6234 (.bxor 6231 6233) := by core033_kernel_decide
theorem stats6234 : actualRows6234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6234=7428 := by core033_kernel_decide
theorem rows6235 : actualRows6235=WordField.canonicalRows actualModulus 6235 (.shr 3691 8) := by core033_kernel_decide
theorem stats6235 : actualRows6235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6235=4548 := by core033_kernel_decide
theorem rows6236 : actualRows6236=WordField.canonicalRows actualModulus 6236 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6236 : actualRows6236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6236=2820 := by core033_kernel_decide
theorem rows6237 : actualRows6237=WordField.canonicalRows actualModulus 6237 (.bnot 6236) := by core033_kernel_decide
theorem stats6237 : actualRows6237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6237=6276 := by core033_kernel_decide
theorem rows6238 : actualRows6238=WordField.canonicalRows actualModulus 6238 (.badd 6235 6237) := by core033_kernel_decide
theorem stats6238 : actualRows6238.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6238=5388 := by core033_kernel_decide
theorem rows6239 : actualRows6239=WordField.canonicalRows actualModulus 6239 (.bnot 6238) := by core033_kernel_decide
theorem stats6239 : actualRows6239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6239=6276 := by core033_kernel_decide
theorem rows6240 : actualRows6240=WordField.canonicalRows actualModulus 6240 (.band 6234 6239) := by core033_kernel_decide
theorem stats6240 : actualRows6240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6240=5124 := by core033_kernel_decide
theorem rows6241 : actualRows6241=WordField.canonicalRows actualModulus 6241 (.bxor 6230 6240) := by core033_kernel_decide
theorem stats6241 : actualRows6241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6241=7428 := by core033_kernel_decide
theorem rows6242 : actualRows6242=WordField.canonicalRows actualModulus 6242 (.shr 6241 31) := by core033_kernel_decide
theorem stats6242 : actualRows6242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6242=2892 := by core033_kernel_decide
theorem rows6243 : actualRows6243=WordField.canonicalRows actualModulus 6243 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6243 : actualRows6243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6243=2892 := by core033_kernel_decide
theorem rows6244 : actualRows6244=WordField.canonicalRows actualModulus 6244 (.bxor 6242 6243) := by core033_kernel_decide
theorem stats6244 : actualRows6244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6244=7428 := by core033_kernel_decide
theorem rows6245 : actualRows6245=WordField.canonicalRows actualModulus 6245 (.shr 3743 8) := by core033_kernel_decide
theorem stats6245 : actualRows6245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6245=4548 := by core033_kernel_decide
theorem rows6246 : actualRows6246=WordField.canonicalRows actualModulus 6246 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6246 : actualRows6246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6246=2820 := by core033_kernel_decide
theorem rows6247 : actualRows6247=WordField.canonicalRows actualModulus 6247 (.bnot 6246) := by core033_kernel_decide
theorem stats6247 : actualRows6247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6247=6276 := by core033_kernel_decide
theorem rows6248 : actualRows6248=WordField.canonicalRows actualModulus 6248 (.band 6245 6247) := by core033_kernel_decide
theorem stats6248 : actualRows6248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6248=5124 := by core033_kernel_decide
theorem rows6249 : actualRows6249=WordField.canonicalRows actualModulus 6249 (.shr 3743 8) := by core033_kernel_decide
theorem stats6249 : actualRows6249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6249=4548 := by core033_kernel_decide
theorem rows6250 : actualRows6250=WordField.canonicalRows actualModulus 6250 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6250 : actualRows6250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6250=2820 := by core033_kernel_decide
def partRows96 : List R1CS.Row := actualRows6187++actualRows6188++actualRows6189++actualRows6190++actualRows6191++actualRows6192++actualRows6193++actualRows6194++actualRows6195++actualRows6196++actualRows6197++actualRows6198++actualRows6199++actualRows6200++actualRows6201++actualRows6202++actualRows6203++actualRows6204++actualRows6205++actualRows6206++actualRows6207++actualRows6208++actualRows6209++actualRows6210++actualRows6211++actualRows6212++actualRows6213++actualRows6214++actualRows6215++actualRows6216++actualRows6217++actualRows6218++actualRows6219++actualRows6220++actualRows6221++actualRows6222++actualRows6223++actualRows6224++actualRows6225++actualRows6226++actualRows6227++actualRows6228++actualRows6229++actualRows6230++actualRows6231++actualRows6232++actualRows6233++actualRows6234++actualRows6235++actualRows6236++actualRows6237++actualRows6238++actualRows6239++actualRows6240++actualRows6241++actualRows6242++actualRows6243++actualRows6244++actualRows6245++actualRows6246++actualRows6247++actualRows6248++actualRows6249++actualRows6250
def partOps96 : List WordIR.Op := [.bxor 6176 6186,.shr 6187 31,.literal (BitVec.ofNat 32 1),.bxor 6188 6189,.shr 3587 8,.literal (BitVec.ofNat 32 0),.bnot 6192,.band 6191 6193,.shr 3587 8,.literal (BitVec.ofNat 32 0),.bnot 6196,.bxor 6195 6197,.shr 3587 8,.literal (BitVec.ofNat 32 0),.bnot 6200,.badd 6199 6201,.bnot 6202,.band 6198 6203,.bxor 6194 6204,.shr 6205 31,.literal (BitVec.ofNat 32 1),.bxor 6206 6207,.shr 3639 8,.literal (BitVec.ofNat 32 0),.bnot 6210,.band 6209 6211,.shr 3639 8,.literal (BitVec.ofNat 32 0),.bnot 6214,.bxor 6213 6215,.shr 3639 8,.literal (BitVec.ofNat 32 0),.bnot 6218,.badd 6217 6219,.bnot 6220,.band 6216 6221,.bxor 6212 6222,.shr 6223 31,.literal (BitVec.ofNat 32 1),.bxor 6224 6225,.shr 3691 8,.literal (BitVec.ofNat 32 0),.bnot 6228,.band 6227 6229,.shr 3691 8,.literal (BitVec.ofNat 32 0),.bnot 6232,.bxor 6231 6233,.shr 3691 8,.literal (BitVec.ofNat 32 0),.bnot 6236,.badd 6235 6237,.bnot 6238,.band 6234 6239,.bxor 6230 6240,.shr 6241 31,.literal (BitVec.ofNat 32 1),.bxor 6242 6243,.shr 3743 8,.literal (BitVec.ofNat 32 0),.bnot 6246,.band 6245 6247,.shr 3743 8,.literal (BitVec.ofNat 32 0)]
theorem partExact96 : partRows96=WordField.rows actualModulus 6187 partOps96 := by
  simp only [partRows96,partOps96,WordField.rows,rows6187,rows6188,rows6189,rows6190,rows6191,rows6192,rows6193,rows6194,rows6195,rows6196,rows6197,rows6198,rows6199,rows6200,rows6201,rows6202,rows6203,rows6204,rows6205,rows6206,rows6207,rows6208,rows6209,rows6210,rows6211,rows6212,rows6213,rows6214,rows6215,rows6216,rows6217,rows6218,rows6219,rows6220,rows6221,rows6222,rows6223,rows6224,rows6225,rows6226,rows6227,rows6228,rows6229,rows6230,rows6231,rows6232,rows6233,rows6234,rows6235,rows6236,rows6237,rows6238,rows6239,rows6240,rows6241,rows6242,rows6243,rows6244,rows6245,rows6246,rows6247,rows6248,rows6249,rows6250,List.append_assoc,List.append_nil]
theorem partLength96 : partOps96.length=64 := by decide
theorem partStats96 : partRows96.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows96=319512 := by
  simp only [partRows96,List.length_append,MatrixRowBlocks.rows_weight_append,stats6187.1,stats6187.2,stats6188.1,stats6188.2,stats6189.1,stats6189.2,stats6190.1,stats6190.2,stats6191.1,stats6191.2,stats6192.1,stats6192.2,stats6193.1,stats6193.2,stats6194.1,stats6194.2,stats6195.1,stats6195.2,stats6196.1,stats6196.2,stats6197.1,stats6197.2,stats6198.1,stats6198.2,stats6199.1,stats6199.2,stats6200.1,stats6200.2,stats6201.1,stats6201.2,stats6202.1,stats6202.2,stats6203.1,stats6203.2,stats6204.1,stats6204.2,stats6205.1,stats6205.2,stats6206.1,stats6206.2,stats6207.1,stats6207.2,stats6208.1,stats6208.2,stats6209.1,stats6209.2,stats6210.1,stats6210.2,stats6211.1,stats6211.2,stats6212.1,stats6212.2,stats6213.1,stats6213.2,stats6214.1,stats6214.2,stats6215.1,stats6215.2,stats6216.1,stats6216.2,stats6217.1,stats6217.2,stats6218.1,stats6218.2,stats6219.1,stats6219.2,stats6220.1,stats6220.2,stats6221.1,stats6221.2,stats6222.1,stats6222.2,stats6223.1,stats6223.2,stats6224.1,stats6224.2,stats6225.1,stats6225.2,stats6226.1,stats6226.2,stats6227.1,stats6227.2,stats6228.1,stats6228.2,stats6229.1,stats6229.2,stats6230.1,stats6230.2,stats6231.1,stats6231.2,stats6232.1,stats6232.2,stats6233.1,stats6233.2,stats6234.1,stats6234.2,stats6235.1,stats6235.2,stats6236.1,stats6236.2,stats6237.1,stats6237.2,stats6238.1,stats6238.2,stats6239.1,stats6239.2,stats6240.1,stats6240.2,stats6241.1,stats6241.2,stats6242.1,stats6242.2,stats6243.1,stats6243.2,stats6244.1,stats6244.2,stats6245.1,stats6245.2,stats6246.1,stats6246.2,stats6247.1,stats6247.2,stats6248.1,stats6248.2,stats6249.1,stats6249.2,stats6250.1,stats6250.2]
  decide
end PathRoundDispatchCheckedRows
