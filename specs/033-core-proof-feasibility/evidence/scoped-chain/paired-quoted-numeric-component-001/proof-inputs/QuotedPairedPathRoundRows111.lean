import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData112
import PairedPathRoundInstructionMatrixData113
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7200 : actualRows7200=WordField.canonicalRows actualModulus 7200 (.band 7197 7199) := by core033_kernel_decide
theorem stats7200 : actualRows7200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7200=5124 := by core033_kernel_decide
theorem rows7201 : actualRows7201=WordField.canonicalRows actualModulus 7201 (.shr 5511 8) := by core033_kernel_decide
theorem stats7201 : actualRows7201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7201=4548 := by core033_kernel_decide
theorem rows7202 : actualRows7202=WordField.canonicalRows actualModulus 7202 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7202 : actualRows7202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7202=2820 := by core033_kernel_decide
theorem rows7203 : actualRows7203=WordField.canonicalRows actualModulus 7203 (.bnot 7202) := by core033_kernel_decide
theorem stats7203 : actualRows7203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7203=6276 := by core033_kernel_decide
theorem rows7204 : actualRows7204=WordField.canonicalRows actualModulus 7204 (.bxor 7201 7203) := by core033_kernel_decide
theorem stats7204 : actualRows7204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7204=7428 := by core033_kernel_decide
theorem rows7205 : actualRows7205=WordField.canonicalRows actualModulus 7205 (.shr 5511 8) := by core033_kernel_decide
theorem stats7205 : actualRows7205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7205=4548 := by core033_kernel_decide
theorem rows7206 : actualRows7206=WordField.canonicalRows actualModulus 7206 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7206 : actualRows7206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7206=2820 := by core033_kernel_decide
theorem rows7207 : actualRows7207=WordField.canonicalRows actualModulus 7207 (.bnot 7206) := by core033_kernel_decide
theorem stats7207 : actualRows7207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7207=6276 := by core033_kernel_decide
theorem rows7208 : actualRows7208=WordField.canonicalRows actualModulus 7208 (.badd 7205 7207) := by core033_kernel_decide
theorem stats7208 : actualRows7208.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7208=5388 := by core033_kernel_decide
theorem rows7209 : actualRows7209=WordField.canonicalRows actualModulus 7209 (.bnot 7208) := by core033_kernel_decide
theorem stats7209 : actualRows7209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7209=6276 := by core033_kernel_decide
theorem rows7210 : actualRows7210=WordField.canonicalRows actualModulus 7210 (.band 7204 7209) := by core033_kernel_decide
theorem stats7210 : actualRows7210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7210=5124 := by core033_kernel_decide
theorem rows7211 : actualRows7211=WordField.canonicalRows actualModulus 7211 (.bxor 7200 7210) := by core033_kernel_decide
theorem stats7211 : actualRows7211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7211=7428 := by core033_kernel_decide
theorem rows7212 : actualRows7212=WordField.canonicalRows actualModulus 7212 (.shr 7211 31) := by core033_kernel_decide
theorem stats7212 : actualRows7212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7212=2892 := by core033_kernel_decide
theorem rows7213 : actualRows7213=WordField.canonicalRows actualModulus 7213 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7213 : actualRows7213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7213=2892 := by core033_kernel_decide
theorem rows7214 : actualRows7214=WordField.canonicalRows actualModulus 7214 (.bxor 7212 7213) := by core033_kernel_decide
theorem stats7214 : actualRows7214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7214=7428 := by core033_kernel_decide
theorem rows7215 : actualRows7215=WordField.canonicalRows actualModulus 7215 (.shr 5564 8) := by core033_kernel_decide
theorem stats7215 : actualRows7215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7215=4548 := by core033_kernel_decide
theorem rows7216 : actualRows7216=WordField.canonicalRows actualModulus 7216 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7216 : actualRows7216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7216=2820 := by core033_kernel_decide
theorem rows7217 : actualRows7217=WordField.canonicalRows actualModulus 7217 (.bnot 7216) := by core033_kernel_decide
theorem stats7217 : actualRows7217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7217=6276 := by core033_kernel_decide
theorem rows7218 : actualRows7218=WordField.canonicalRows actualModulus 7218 (.band 7215 7217) := by core033_kernel_decide
theorem stats7218 : actualRows7218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7218=5124 := by core033_kernel_decide
theorem rows7219 : actualRows7219=WordField.canonicalRows actualModulus 7219 (.shr 5564 8) := by core033_kernel_decide
theorem stats7219 : actualRows7219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7219=4548 := by core033_kernel_decide
theorem rows7220 : actualRows7220=WordField.canonicalRows actualModulus 7220 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7220 : actualRows7220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7220=2820 := by core033_kernel_decide
theorem rows7221 : actualRows7221=WordField.canonicalRows actualModulus 7221 (.bnot 7220) := by core033_kernel_decide
theorem stats7221 : actualRows7221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7221=6276 := by core033_kernel_decide
theorem rows7222 : actualRows7222=WordField.canonicalRows actualModulus 7222 (.bxor 7219 7221) := by core033_kernel_decide
theorem stats7222 : actualRows7222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7222=7428 := by core033_kernel_decide
theorem rows7223 : actualRows7223=WordField.canonicalRows actualModulus 7223 (.shr 5564 8) := by core033_kernel_decide
theorem stats7223 : actualRows7223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7223=4548 := by core033_kernel_decide
theorem rows7224 : actualRows7224=WordField.canonicalRows actualModulus 7224 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7224 : actualRows7224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7224=2820 := by core033_kernel_decide
theorem rows7225 : actualRows7225=WordField.canonicalRows actualModulus 7225 (.bnot 7224) := by core033_kernel_decide
theorem stats7225 : actualRows7225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7225=6276 := by core033_kernel_decide
theorem rows7226 : actualRows7226=WordField.canonicalRows actualModulus 7226 (.badd 7223 7225) := by core033_kernel_decide
theorem stats7226 : actualRows7226.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7226=5388 := by core033_kernel_decide
theorem rows7227 : actualRows7227=WordField.canonicalRows actualModulus 7227 (.bnot 7226) := by core033_kernel_decide
theorem stats7227 : actualRows7227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7227=6276 := by core033_kernel_decide
theorem rows7228 : actualRows7228=WordField.canonicalRows actualModulus 7228 (.band 7222 7227) := by core033_kernel_decide
theorem stats7228 : actualRows7228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7228=5124 := by core033_kernel_decide
theorem rows7229 : actualRows7229=WordField.canonicalRows actualModulus 7229 (.bxor 7218 7228) := by core033_kernel_decide
theorem stats7229 : actualRows7229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7229=7428 := by core033_kernel_decide
theorem rows7230 : actualRows7230=WordField.canonicalRows actualModulus 7230 (.shr 7229 31) := by core033_kernel_decide
theorem stats7230 : actualRows7230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7230=2892 := by core033_kernel_decide
theorem rows7231 : actualRows7231=WordField.canonicalRows actualModulus 7231 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7231 : actualRows7231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7231=2892 := by core033_kernel_decide
theorem rows7232 : actualRows7232=WordField.canonicalRows actualModulus 7232 (.bxor 7230 7231) := by core033_kernel_decide
theorem stats7232 : actualRows7232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7232=7428 := by core033_kernel_decide
theorem rows7233 : actualRows7233=WordField.canonicalRows actualModulus 7233 (.shr 5617 8) := by core033_kernel_decide
theorem stats7233 : actualRows7233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7233=4548 := by core033_kernel_decide
theorem rows7234 : actualRows7234=WordField.canonicalRows actualModulus 7234 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7234 : actualRows7234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7234=2820 := by core033_kernel_decide
theorem rows7235 : actualRows7235=WordField.canonicalRows actualModulus 7235 (.bnot 7234) := by core033_kernel_decide
theorem stats7235 : actualRows7235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7235=6276 := by core033_kernel_decide
theorem rows7236 : actualRows7236=WordField.canonicalRows actualModulus 7236 (.band 7233 7235) := by core033_kernel_decide
theorem stats7236 : actualRows7236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7236=5124 := by core033_kernel_decide
theorem rows7237 : actualRows7237=WordField.canonicalRows actualModulus 7237 (.shr 5617 8) := by core033_kernel_decide
theorem stats7237 : actualRows7237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7237=4548 := by core033_kernel_decide
theorem rows7238 : actualRows7238=WordField.canonicalRows actualModulus 7238 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7238 : actualRows7238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7238=2820 := by core033_kernel_decide
theorem rows7239 : actualRows7239=WordField.canonicalRows actualModulus 7239 (.bnot 7238) := by core033_kernel_decide
theorem stats7239 : actualRows7239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7239=6276 := by core033_kernel_decide
theorem rows7240 : actualRows7240=WordField.canonicalRows actualModulus 7240 (.bxor 7237 7239) := by core033_kernel_decide
theorem stats7240 : actualRows7240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7240=7428 := by core033_kernel_decide
theorem rows7241 : actualRows7241=WordField.canonicalRows actualModulus 7241 (.shr 5617 8) := by core033_kernel_decide
theorem stats7241 : actualRows7241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7241=4548 := by core033_kernel_decide
theorem rows7242 : actualRows7242=WordField.canonicalRows actualModulus 7242 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7242 : actualRows7242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7242=2820 := by core033_kernel_decide
theorem rows7243 : actualRows7243=WordField.canonicalRows actualModulus 7243 (.bnot 7242) := by core033_kernel_decide
theorem stats7243 : actualRows7243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7243=6276 := by core033_kernel_decide
theorem rows7244 : actualRows7244=WordField.canonicalRows actualModulus 7244 (.badd 7241 7243) := by core033_kernel_decide
theorem stats7244 : actualRows7244.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7244=5388 := by core033_kernel_decide
theorem rows7245 : actualRows7245=WordField.canonicalRows actualModulus 7245 (.bnot 7244) := by core033_kernel_decide
theorem stats7245 : actualRows7245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7245=6276 := by core033_kernel_decide
theorem rows7246 : actualRows7246=WordField.canonicalRows actualModulus 7246 (.band 7240 7245) := by core033_kernel_decide
theorem stats7246 : actualRows7246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7246=5124 := by core033_kernel_decide
theorem rows7247 : actualRows7247=WordField.canonicalRows actualModulus 7247 (.bxor 7236 7246) := by core033_kernel_decide
theorem stats7247 : actualRows7247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7247=7428 := by core033_kernel_decide
theorem rows7248 : actualRows7248=WordField.canonicalRows actualModulus 7248 (.shr 7247 31) := by core033_kernel_decide
theorem stats7248 : actualRows7248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7248=2892 := by core033_kernel_decide
theorem rows7249 : actualRows7249=WordField.canonicalRows actualModulus 7249 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7249 : actualRows7249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7249=2892 := by core033_kernel_decide
theorem rows7250 : actualRows7250=WordField.canonicalRows actualModulus 7250 (.bxor 7248 7249) := by core033_kernel_decide
theorem stats7250 : actualRows7250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7250=7428 := by core033_kernel_decide
theorem rows7251 : actualRows7251=WordField.canonicalRows actualModulus 7251 (.shr 5670 8) := by core033_kernel_decide
theorem stats7251 : actualRows7251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7251=4548 := by core033_kernel_decide
theorem rows7252 : actualRows7252=WordField.canonicalRows actualModulus 7252 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7252 : actualRows7252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7252=2820 := by core033_kernel_decide
theorem rows7253 : actualRows7253=WordField.canonicalRows actualModulus 7253 (.bnot 7252) := by core033_kernel_decide
theorem stats7253 : actualRows7253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7253=6276 := by core033_kernel_decide
theorem rows7254 : actualRows7254=WordField.canonicalRows actualModulus 7254 (.band 7251 7253) := by core033_kernel_decide
theorem stats7254 : actualRows7254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7254=5124 := by core033_kernel_decide
theorem rows7255 : actualRows7255=WordField.canonicalRows actualModulus 7255 (.shr 5670 8) := by core033_kernel_decide
theorem stats7255 : actualRows7255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7255=4548 := by core033_kernel_decide
theorem rows7256 : actualRows7256=WordField.canonicalRows actualModulus 7256 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7256 : actualRows7256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7256=2820 := by core033_kernel_decide
theorem rows7257 : actualRows7257=WordField.canonicalRows actualModulus 7257 (.bnot 7256) := by core033_kernel_decide
theorem stats7257 : actualRows7257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7257=6276 := by core033_kernel_decide
theorem rows7258 : actualRows7258=WordField.canonicalRows actualModulus 7258 (.bxor 7255 7257) := by core033_kernel_decide
theorem stats7258 : actualRows7258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7258=7428 := by core033_kernel_decide
theorem rows7259 : actualRows7259=WordField.canonicalRows actualModulus 7259 (.shr 5670 8) := by core033_kernel_decide
theorem stats7259 : actualRows7259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7259=4548 := by core033_kernel_decide
theorem rows7260 : actualRows7260=WordField.canonicalRows actualModulus 7260 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7260 : actualRows7260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7260=2820 := by core033_kernel_decide
theorem rows7261 : actualRows7261=WordField.canonicalRows actualModulus 7261 (.bnot 7260) := by core033_kernel_decide
theorem stats7261 : actualRows7261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7261=6276 := by core033_kernel_decide
theorem rows7262 : actualRows7262=WordField.canonicalRows actualModulus 7262 (.badd 7259 7261) := by core033_kernel_decide
theorem stats7262 : actualRows7262.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7262=5388 := by core033_kernel_decide
theorem rows7263 : actualRows7263=WordField.canonicalRows actualModulus 7263 (.bnot 7262) := by core033_kernel_decide
theorem stats7263 : actualRows7263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7263=6276 := by core033_kernel_decide
def partRows111 : List R1CS.Row := actualRows7200++actualRows7201++actualRows7202++actualRows7203++actualRows7204++actualRows7205++actualRows7206++actualRows7207++actualRows7208++actualRows7209++actualRows7210++actualRows7211++actualRows7212++actualRows7213++actualRows7214++actualRows7215++actualRows7216++actualRows7217++actualRows7218++actualRows7219++actualRows7220++actualRows7221++actualRows7222++actualRows7223++actualRows7224++actualRows7225++actualRows7226++actualRows7227++actualRows7228++actualRows7229++actualRows7230++actualRows7231++actualRows7232++actualRows7233++actualRows7234++actualRows7235++actualRows7236++actualRows7237++actualRows7238++actualRows7239++actualRows7240++actualRows7241++actualRows7242++actualRows7243++actualRows7244++actualRows7245++actualRows7246++actualRows7247++actualRows7248++actualRows7249++actualRows7250++actualRows7251++actualRows7252++actualRows7253++actualRows7254++actualRows7255++actualRows7256++actualRows7257++actualRows7258++actualRows7259++actualRows7260++actualRows7261++actualRows7262++actualRows7263
def partOps111 : List WordIR.Op := [.band 7197 7199,.shr 5511 8,.literal (BitVec.ofNat 32 0),.bnot 7202,.bxor 7201 7203,.shr 5511 8,.literal (BitVec.ofNat 32 0),.bnot 7206,.badd 7205 7207,.bnot 7208,.band 7204 7209,.bxor 7200 7210,.shr 7211 31,.literal (BitVec.ofNat 32 1),.bxor 7212 7213,.shr 5564 8,.literal (BitVec.ofNat 32 0),.bnot 7216,.band 7215 7217,.shr 5564 8,.literal (BitVec.ofNat 32 0),.bnot 7220,.bxor 7219 7221,.shr 5564 8,.literal (BitVec.ofNat 32 0),.bnot 7224,.badd 7223 7225,.bnot 7226,.band 7222 7227,.bxor 7218 7228,.shr 7229 31,.literal (BitVec.ofNat 32 1),.bxor 7230 7231,.shr 5617 8,.literal (BitVec.ofNat 32 0),.bnot 7234,.band 7233 7235,.shr 5617 8,.literal (BitVec.ofNat 32 0),.bnot 7238,.bxor 7237 7239,.shr 5617 8,.literal (BitVec.ofNat 32 0),.bnot 7242,.badd 7241 7243,.bnot 7244,.band 7240 7245,.bxor 7236 7246,.shr 7247 31,.literal (BitVec.ofNat 32 1),.bxor 7248 7249,.shr 5670 8,.literal (BitVec.ofNat 32 0),.bnot 7252,.band 7251 7253,.shr 5670 8,.literal (BitVec.ofNat 32 0),.bnot 7256,.bxor 7255 7257,.shr 5670 8,.literal (BitVec.ofNat 32 0),.bnot 7260,.badd 7259 7261,.bnot 7262]
theorem partExact111 : partRows111=WordField.rows actualModulus 7200 partOps111 := by
  simp only [partRows111,partOps111,WordField.rows,rows7200,rows7201,rows7202,rows7203,rows7204,rows7205,rows7206,rows7207,rows7208,rows7209,rows7210,rows7211,rows7212,rows7213,rows7214,rows7215,rows7216,rows7217,rows7218,rows7219,rows7220,rows7221,rows7222,rows7223,rows7224,rows7225,rows7226,rows7227,rows7228,rows7229,rows7230,rows7231,rows7232,rows7233,rows7234,rows7235,rows7236,rows7237,rows7238,rows7239,rows7240,rows7241,rows7242,rows7243,rows7244,rows7245,rows7246,rows7247,rows7248,rows7249,rows7250,rows7251,rows7252,rows7253,rows7254,rows7255,rows7256,rows7257,rows7258,rows7259,rows7260,rows7261,rows7262,rows7263,List.append_assoc,List.append_nil]
theorem partLength111 : partOps111.length=64 := by decide
theorem partStats111 : partRows111.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows111=324240 := by
  simp only [partRows111,List.length_append,MatrixRowBlocks.rows_weight_append,stats7200.1,stats7200.2,stats7201.1,stats7201.2,stats7202.1,stats7202.2,stats7203.1,stats7203.2,stats7204.1,stats7204.2,stats7205.1,stats7205.2,stats7206.1,stats7206.2,stats7207.1,stats7207.2,stats7208.1,stats7208.2,stats7209.1,stats7209.2,stats7210.1,stats7210.2,stats7211.1,stats7211.2,stats7212.1,stats7212.2,stats7213.1,stats7213.2,stats7214.1,stats7214.2,stats7215.1,stats7215.2,stats7216.1,stats7216.2,stats7217.1,stats7217.2,stats7218.1,stats7218.2,stats7219.1,stats7219.2,stats7220.1,stats7220.2,stats7221.1,stats7221.2,stats7222.1,stats7222.2,stats7223.1,stats7223.2,stats7224.1,stats7224.2,stats7225.1,stats7225.2,stats7226.1,stats7226.2,stats7227.1,stats7227.2,stats7228.1,stats7228.2,stats7229.1,stats7229.2,stats7230.1,stats7230.2,stats7231.1,stats7231.2,stats7232.1,stats7232.2,stats7233.1,stats7233.2,stats7234.1,stats7234.2,stats7235.1,stats7235.2,stats7236.1,stats7236.2,stats7237.1,stats7237.2,stats7238.1,stats7238.2,stats7239.1,stats7239.2,stats7240.1,stats7240.2,stats7241.1,stats7241.2,stats7242.1,stats7242.2,stats7243.1,stats7243.2,stats7244.1,stats7244.2,stats7245.1,stats7245.2,stats7246.1,stats7246.2,stats7247.1,stats7247.2,stats7248.1,stats7248.2,stats7249.1,stats7249.2,stats7250.1,stats7250.2,stats7251.1,stats7251.2,stats7252.1,stats7252.2,stats7253.1,stats7253.2,stats7254.1,stats7254.2,stats7255.1,stats7255.2,stats7256.1,stats7256.2,stats7257.1,stats7257.2,stats7258.1,stats7258.2,stats7259.1,stats7259.2,stats7260.1,stats7260.2,stats7261.1,stats7261.2,stats7262.1,stats7262.2,stats7263.1,stats7263.2]
  decide
end QuotedPairedPathRoundCheckedRows
