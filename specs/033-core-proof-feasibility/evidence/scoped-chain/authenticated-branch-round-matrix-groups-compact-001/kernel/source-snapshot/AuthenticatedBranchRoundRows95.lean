import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData96
import AuthenticatedBranchRoundInstructionMatrixData97
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6198 : actualRows6198=WordField.canonicalRows actualModulus 6198 (.bnot 6197) := by core033_kernel_decide
theorem stats6198 : actualRows6198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6198=6276 := by core033_kernel_decide
theorem rows6199 : actualRows6199=WordField.canonicalRows actualModulus 6199 (.band 6196 6198) := by core033_kernel_decide
theorem stats6199 : actualRows6199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6199=5124 := by core033_kernel_decide
theorem rows6200 : actualRows6200=WordField.canonicalRows actualModulus 6200 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6200 : actualRows6200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6200=2892 := by core033_kernel_decide
theorem rows6201 : actualRows6201=WordField.canonicalRows actualModulus 6201 (.bxor 1299 6200) := by core033_kernel_decide
theorem stats6201 : actualRows6201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6201=7428 := by core033_kernel_decide
theorem rows6202 : actualRows6202=WordField.canonicalRows actualModulus 6202 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6202 : actualRows6202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6202=2820 := by core033_kernel_decide
theorem rows6203 : actualRows6203=WordField.canonicalRows actualModulus 6203 (.bnot 6202) := by core033_kernel_decide
theorem stats6203 : actualRows6203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6203=6276 := by core033_kernel_decide
theorem rows6204 : actualRows6204=WordField.canonicalRows actualModulus 6204 (.bxor 6201 6203) := by core033_kernel_decide
theorem stats6204 : actualRows6204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6204=7428 := by core033_kernel_decide
theorem rows6205 : actualRows6205=WordField.canonicalRows actualModulus 6205 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6205 : actualRows6205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6205=2892 := by core033_kernel_decide
theorem rows6206 : actualRows6206=WordField.canonicalRows actualModulus 6206 (.bxor 1299 6205) := by core033_kernel_decide
theorem stats6206 : actualRows6206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6206=7428 := by core033_kernel_decide
theorem rows6207 : actualRows6207=WordField.canonicalRows actualModulus 6207 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6207 : actualRows6207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6207=2820 := by core033_kernel_decide
theorem rows6208 : actualRows6208=WordField.canonicalRows actualModulus 6208 (.bnot 6207) := by core033_kernel_decide
theorem stats6208 : actualRows6208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6208=6276 := by core033_kernel_decide
theorem rows6209 : actualRows6209=WordField.canonicalRows actualModulus 6209 (.badd 6206 6208) := by core033_kernel_decide
theorem stats6209 : actualRows6209.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6209=5388 := by core033_kernel_decide
theorem rows6210 : actualRows6210=WordField.canonicalRows actualModulus 6210 (.bnot 6209) := by core033_kernel_decide
theorem stats6210 : actualRows6210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6210=6276 := by core033_kernel_decide
theorem rows6211 : actualRows6211=WordField.canonicalRows actualModulus 6211 (.band 6204 6210) := by core033_kernel_decide
theorem stats6211 : actualRows6211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6211=5124 := by core033_kernel_decide
theorem rows6212 : actualRows6212=WordField.canonicalRows actualModulus 6212 (.bxor 6199 6211) := by core033_kernel_decide
theorem stats6212 : actualRows6212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6212=7428 := by core033_kernel_decide
theorem rows6213 : actualRows6213=WordField.canonicalRows actualModulus 6213 (.shr 6212 31) := by core033_kernel_decide
theorem stats6213 : actualRows6213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6213=2892 := by core033_kernel_decide
theorem rows6214 : actualRows6214=WordField.canonicalRows actualModulus 6214 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6214 : actualRows6214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6214=2892 := by core033_kernel_decide
theorem rows6215 : actualRows6215=WordField.canonicalRows actualModulus 6215 (.bxor 6213 6214) := by core033_kernel_decide
theorem stats6215 : actualRows6215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6215=7428 := by core033_kernel_decide
theorem rows6216 : actualRows6216=WordField.canonicalRows actualModulus 6216 (.bnot 6215) := by core033_kernel_decide
theorem stats6216 : actualRows6216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6216=6276 := by core033_kernel_decide
theorem rows6217 : actualRows6217=WordField.canonicalRows actualModulus 6217 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6217 : actualRows6217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6217=2892 := by core033_kernel_decide
theorem rows6218 : actualRows6218=WordField.canonicalRows actualModulus 6218 (.badd 6216 6217) := by core033_kernel_decide
theorem stats6218 : actualRows6218.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6218=5388 := by core033_kernel_decide
theorem rows6219 : actualRows6219=WordField.canonicalRows actualModulus 6219 (.literal (BitVec.ofNat 32 128)) := by core033_kernel_decide
theorem stats6219 : actualRows6219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6219=2892 := by core033_kernel_decide
theorem rows6220 : actualRows6220=WordField.canonicalRows actualModulus 6220 (.band 6218 6219) := by core033_kernel_decide
theorem stats6220 : actualRows6220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6220=5124 := by core033_kernel_decide
theorem rows6221 : actualRows6221=WordField.canonicalRows actualModulus 6221 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6221 : actualRows6221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6221=2892 := by core033_kernel_decide
theorem rows6222 : actualRows6222=WordField.canonicalRows actualModulus 6222 (.bxor 1299 6221) := by core033_kernel_decide
theorem stats6222 : actualRows6222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6222=7428 := by core033_kernel_decide
theorem rows6223 : actualRows6223=WordField.canonicalRows actualModulus 6223 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6223 : actualRows6223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6223=2820 := by core033_kernel_decide
theorem rows6224 : actualRows6224=WordField.canonicalRows actualModulus 6224 (.bnot 6223) := by core033_kernel_decide
theorem stats6224 : actualRows6224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6224=6276 := by core033_kernel_decide
theorem rows6225 : actualRows6225=WordField.canonicalRows actualModulus 6225 (.band 6222 6224) := by core033_kernel_decide
theorem stats6225 : actualRows6225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6225=5124 := by core033_kernel_decide
theorem rows6226 : actualRows6226=WordField.canonicalRows actualModulus 6226 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6226 : actualRows6226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6226=2892 := by core033_kernel_decide
theorem rows6227 : actualRows6227=WordField.canonicalRows actualModulus 6227 (.bxor 1299 6226) := by core033_kernel_decide
theorem stats6227 : actualRows6227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6227=7428 := by core033_kernel_decide
theorem rows6228 : actualRows6228=WordField.canonicalRows actualModulus 6228 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6228 : actualRows6228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6228=2820 := by core033_kernel_decide
theorem rows6229 : actualRows6229=WordField.canonicalRows actualModulus 6229 (.bnot 6228) := by core033_kernel_decide
theorem stats6229 : actualRows6229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6229=6276 := by core033_kernel_decide
theorem rows6230 : actualRows6230=WordField.canonicalRows actualModulus 6230 (.bxor 6227 6229) := by core033_kernel_decide
theorem stats6230 : actualRows6230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6230=7428 := by core033_kernel_decide
theorem rows6231 : actualRows6231=WordField.canonicalRows actualModulus 6231 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6231 : actualRows6231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6231=2892 := by core033_kernel_decide
theorem rows6232 : actualRows6232=WordField.canonicalRows actualModulus 6232 (.bxor 1299 6231) := by core033_kernel_decide
theorem stats6232 : actualRows6232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6232=7428 := by core033_kernel_decide
theorem rows6233 : actualRows6233=WordField.canonicalRows actualModulus 6233 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6233 : actualRows6233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6233=2820 := by core033_kernel_decide
theorem rows6234 : actualRows6234=WordField.canonicalRows actualModulus 6234 (.bnot 6233) := by core033_kernel_decide
theorem stats6234 : actualRows6234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6234=6276 := by core033_kernel_decide
theorem rows6235 : actualRows6235=WordField.canonicalRows actualModulus 6235 (.badd 6232 6234) := by core033_kernel_decide
theorem stats6235 : actualRows6235.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6235=5388 := by core033_kernel_decide
theorem rows6236 : actualRows6236=WordField.canonicalRows actualModulus 6236 (.bnot 6235) := by core033_kernel_decide
theorem stats6236 : actualRows6236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6236=6276 := by core033_kernel_decide
theorem rows6237 : actualRows6237=WordField.canonicalRows actualModulus 6237 (.band 6230 6236) := by core033_kernel_decide
theorem stats6237 : actualRows6237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6237=5124 := by core033_kernel_decide
theorem rows6238 : actualRows6238=WordField.canonicalRows actualModulus 6238 (.bxor 6225 6237) := by core033_kernel_decide
theorem stats6238 : actualRows6238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6238=7428 := by core033_kernel_decide
theorem rows6239 : actualRows6239=WordField.canonicalRows actualModulus 6239 (.shr 6238 31) := by core033_kernel_decide
theorem stats6239 : actualRows6239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6239=2892 := by core033_kernel_decide
theorem rows6240 : actualRows6240=WordField.canonicalRows actualModulus 6240 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6240 : actualRows6240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6240=2892 := by core033_kernel_decide
theorem rows6241 : actualRows6241=WordField.canonicalRows actualModulus 6241 (.bxor 6239 6240) := by core033_kernel_decide
theorem stats6241 : actualRows6241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6241=7428 := by core033_kernel_decide
theorem rows6242 : actualRows6242=WordField.canonicalRows actualModulus 6242 (.bnot 6241) := by core033_kernel_decide
theorem stats6242 : actualRows6242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6242=6276 := by core033_kernel_decide
theorem rows6243 : actualRows6243=WordField.canonicalRows actualModulus 6243 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6243 : actualRows6243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6243=2892 := by core033_kernel_decide
theorem rows6244 : actualRows6244=WordField.canonicalRows actualModulus 6244 (.badd 6242 6243) := by core033_kernel_decide
theorem stats6244 : actualRows6244.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6244=5388 := by core033_kernel_decide
theorem rows6245 : actualRows6245=WordField.canonicalRows actualModulus 6245 (.bnot 6244) := by core033_kernel_decide
theorem stats6245 : actualRows6245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6245=6276 := by core033_kernel_decide
theorem rows6246 : actualRows6246=WordField.canonicalRows actualModulus 6246 (.band 6245 2657) := by core033_kernel_decide
theorem stats6246 : actualRows6246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6246=5124 := by core033_kernel_decide
theorem rows6247 : actualRows6247=WordField.canonicalRows actualModulus 6247 (.bxor 6220 6246) := by core033_kernel_decide
theorem stats6247 : actualRows6247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6247=7428 := by core033_kernel_decide
theorem rows6248 : actualRows6248=WordField.canonicalRows actualModulus 6248 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6248 : actualRows6248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6248=2892 := by core033_kernel_decide
theorem rows6249 : actualRows6249=WordField.canonicalRows actualModulus 6249 (.bxor 1299 6248) := by core033_kernel_decide
theorem stats6249 : actualRows6249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6249=7428 := by core033_kernel_decide
theorem rows6250 : actualRows6250=WordField.canonicalRows actualModulus 6250 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6250 : actualRows6250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6250=2820 := by core033_kernel_decide
theorem rows6251 : actualRows6251=WordField.canonicalRows actualModulus 6251 (.bnot 6250) := by core033_kernel_decide
theorem stats6251 : actualRows6251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6251=6276 := by core033_kernel_decide
theorem rows6252 : actualRows6252=WordField.canonicalRows actualModulus 6252 (.band 6249 6251) := by core033_kernel_decide
theorem stats6252 : actualRows6252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6252=5124 := by core033_kernel_decide
theorem rows6253 : actualRows6253=WordField.canonicalRows actualModulus 6253 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6253 : actualRows6253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6253=2892 := by core033_kernel_decide
theorem rows6254 : actualRows6254=WordField.canonicalRows actualModulus 6254 (.bxor 1299 6253) := by core033_kernel_decide
theorem stats6254 : actualRows6254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6254=7428 := by core033_kernel_decide
theorem rows6255 : actualRows6255=WordField.canonicalRows actualModulus 6255 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6255 : actualRows6255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6255=2820 := by core033_kernel_decide
theorem rows6256 : actualRows6256=WordField.canonicalRows actualModulus 6256 (.bnot 6255) := by core033_kernel_decide
theorem stats6256 : actualRows6256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6256=6276 := by core033_kernel_decide
theorem rows6257 : actualRows6257=WordField.canonicalRows actualModulus 6257 (.bxor 6254 6256) := by core033_kernel_decide
theorem stats6257 : actualRows6257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6257=7428 := by core033_kernel_decide
theorem rows6258 : actualRows6258=WordField.canonicalRows actualModulus 6258 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6258 : actualRows6258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6258=2892 := by core033_kernel_decide
theorem rows6259 : actualRows6259=WordField.canonicalRows actualModulus 6259 (.bxor 1299 6258) := by core033_kernel_decide
theorem stats6259 : actualRows6259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6259=7428 := by core033_kernel_decide
theorem rows6260 : actualRows6260=WordField.canonicalRows actualModulus 6260 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6260 : actualRows6260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6260=2820 := by core033_kernel_decide
theorem rows6261 : actualRows6261=WordField.canonicalRows actualModulus 6261 (.bnot 6260) := by core033_kernel_decide
theorem stats6261 : actualRows6261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6261=6276 := by core033_kernel_decide
def partRows95 : List R1CS.Row := actualRows6198++actualRows6199++actualRows6200++actualRows6201++actualRows6202++actualRows6203++actualRows6204++actualRows6205++actualRows6206++actualRows6207++actualRows6208++actualRows6209++actualRows6210++actualRows6211++actualRows6212++actualRows6213++actualRows6214++actualRows6215++actualRows6216++actualRows6217++actualRows6218++actualRows6219++actualRows6220++actualRows6221++actualRows6222++actualRows6223++actualRows6224++actualRows6225++actualRows6226++actualRows6227++actualRows6228++actualRows6229++actualRows6230++actualRows6231++actualRows6232++actualRows6233++actualRows6234++actualRows6235++actualRows6236++actualRows6237++actualRows6238++actualRows6239++actualRows6240++actualRows6241++actualRows6242++actualRows6243++actualRows6244++actualRows6245++actualRows6246++actualRows6247++actualRows6248++actualRows6249++actualRows6250++actualRows6251++actualRows6252++actualRows6253++actualRows6254++actualRows6255++actualRows6256++actualRows6257++actualRows6258++actualRows6259++actualRows6260++actualRows6261
def partOps95 : List WordIR.Op := [.bnot 6197,.band 6196 6198,.literal (BitVec.ofNat 32 2),.bxor 1299 6200,.literal (BitVec.ofNat 32 0),.bnot 6202,.bxor 6201 6203,.literal (BitVec.ofNat 32 2),.bxor 1299 6205,.literal (BitVec.ofNat 32 0),.bnot 6207,.badd 6206 6208,.bnot 6209,.band 6204 6210,.bxor 6199 6211,.shr 6212 31,.literal (BitVec.ofNat 32 1),.bxor 6213 6214,.bnot 6215,.literal (BitVec.ofNat 32 1),.badd 6216 6217,.literal (BitVec.ofNat 32 128),.band 6218 6219,.literal (BitVec.ofNat 32 2),.bxor 1299 6221,.literal (BitVec.ofNat 32 0),.bnot 6223,.band 6222 6224,.literal (BitVec.ofNat 32 2),.bxor 1299 6226,.literal (BitVec.ofNat 32 0),.bnot 6228,.bxor 6227 6229,.literal (BitVec.ofNat 32 2),.bxor 1299 6231,.literal (BitVec.ofNat 32 0),.bnot 6233,.badd 6232 6234,.bnot 6235,.band 6230 6236,.bxor 6225 6237,.shr 6238 31,.literal (BitVec.ofNat 32 1),.bxor 6239 6240,.bnot 6241,.literal (BitVec.ofNat 32 1),.badd 6242 6243,.bnot 6244,.band 6245 2657,.bxor 6220 6246,.literal (BitVec.ofNat 32 2),.bxor 1299 6248,.literal (BitVec.ofNat 32 0),.bnot 6250,.band 6249 6251,.literal (BitVec.ofNat 32 2),.bxor 1299 6253,.literal (BitVec.ofNat 32 0),.bnot 6255,.bxor 6254 6256,.literal (BitVec.ofNat 32 2),.bxor 1299 6258,.literal (BitVec.ofNat 32 0),.bnot 6260]
theorem partExact95 : partRows95=WordField.rows actualModulus 6198 partOps95 := by
  simp only [partRows95,partOps95,WordField.rows,rows6198,rows6199,rows6200,rows6201,rows6202,rows6203,rows6204,rows6205,rows6206,rows6207,rows6208,rows6209,rows6210,rows6211,rows6212,rows6213,rows6214,rows6215,rows6216,rows6217,rows6218,rows6219,rows6220,rows6221,rows6222,rows6223,rows6224,rows6225,rows6226,rows6227,rows6228,rows6229,rows6230,rows6231,rows6232,rows6233,rows6234,rows6235,rows6236,rows6237,rows6238,rows6239,rows6240,rows6241,rows6242,rows6243,rows6244,rows6245,rows6246,rows6247,rows6248,rows6249,rows6250,rows6251,rows6252,rows6253,rows6254,rows6255,rows6256,rows6257,rows6258,rows6259,rows6260,rows6261,List.append_assoc,List.append_nil]
theorem partLength95 : partOps95.length=64 := by decide
theorem partStats95 : partRows95.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows95=330072 := by
  simp only [partRows95,List.length_append,MatrixRowBlocks.rows_weight_append,stats6198.1,stats6198.2,stats6199.1,stats6199.2,stats6200.1,stats6200.2,stats6201.1,stats6201.2,stats6202.1,stats6202.2,stats6203.1,stats6203.2,stats6204.1,stats6204.2,stats6205.1,stats6205.2,stats6206.1,stats6206.2,stats6207.1,stats6207.2,stats6208.1,stats6208.2,stats6209.1,stats6209.2,stats6210.1,stats6210.2,stats6211.1,stats6211.2,stats6212.1,stats6212.2,stats6213.1,stats6213.2,stats6214.1,stats6214.2,stats6215.1,stats6215.2,stats6216.1,stats6216.2,stats6217.1,stats6217.2,stats6218.1,stats6218.2,stats6219.1,stats6219.2,stats6220.1,stats6220.2,stats6221.1,stats6221.2,stats6222.1,stats6222.2,stats6223.1,stats6223.2,stats6224.1,stats6224.2,stats6225.1,stats6225.2,stats6226.1,stats6226.2,stats6227.1,stats6227.2,stats6228.1,stats6228.2,stats6229.1,stats6229.2,stats6230.1,stats6230.2,stats6231.1,stats6231.2,stats6232.1,stats6232.2,stats6233.1,stats6233.2,stats6234.1,stats6234.2,stats6235.1,stats6235.2,stats6236.1,stats6236.2,stats6237.1,stats6237.2,stats6238.1,stats6238.2,stats6239.1,stats6239.2,stats6240.1,stats6240.2,stats6241.1,stats6241.2,stats6242.1,stats6242.2,stats6243.1,stats6243.2,stats6244.1,stats6244.2,stats6245.1,stats6245.2,stats6246.1,stats6246.2,stats6247.1,stats6247.2,stats6248.1,stats6248.2,stats6249.1,stats6249.2,stats6250.1,stats6250.2,stats6251.1,stats6251.2,stats6252.1,stats6252.2,stats6253.1,stats6253.2,stats6254.1,stats6254.2,stats6255.1,stats6255.2,stats6256.1,stats6256.2,stats6257.1,stats6257.2,stats6258.1,stats6258.2,stats6259.1,stats6259.2,stats6260.1,stats6260.2,stats6261.1,stats6261.2]
  decide
end AuthenticatedBranchRoundCheckedRows
