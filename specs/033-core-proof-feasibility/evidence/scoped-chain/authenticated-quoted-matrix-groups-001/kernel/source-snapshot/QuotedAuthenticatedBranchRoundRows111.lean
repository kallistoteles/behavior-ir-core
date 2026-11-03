import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData112
import AuthenticatedBranchRoundInstructionMatrixData113
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7222 : actualRows7222=WordField.canonicalRows actualModulus 7222 (.shr 4270 8) := by core033_kernel_decide
theorem stats7222 : actualRows7222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7222=4548 := by core033_kernel_decide
theorem rows7223 : actualRows7223=WordField.canonicalRows actualModulus 7223 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7223 : actualRows7223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7223=2820 := by core033_kernel_decide
theorem rows7224 : actualRows7224=WordField.canonicalRows actualModulus 7224 (.bnot 7223) := by core033_kernel_decide
theorem stats7224 : actualRows7224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7224=6276 := by core033_kernel_decide
theorem rows7225 : actualRows7225=WordField.canonicalRows actualModulus 7225 (.badd 7222 7224) := by core033_kernel_decide
theorem stats7225 : actualRows7225.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7225=5388 := by core033_kernel_decide
theorem rows7226 : actualRows7226=WordField.canonicalRows actualModulus 7226 (.bnot 7225) := by core033_kernel_decide
theorem stats7226 : actualRows7226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7226=6276 := by core033_kernel_decide
theorem rows7227 : actualRows7227=WordField.canonicalRows actualModulus 7227 (.band 7221 7226) := by core033_kernel_decide
theorem stats7227 : actualRows7227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7227=5124 := by core033_kernel_decide
theorem rows7228 : actualRows7228=WordField.canonicalRows actualModulus 7228 (.bxor 7217 7227) := by core033_kernel_decide
theorem stats7228 : actualRows7228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7228=7428 := by core033_kernel_decide
theorem rows7229 : actualRows7229=WordField.canonicalRows actualModulus 7229 (.shr 7228 31) := by core033_kernel_decide
theorem stats7229 : actualRows7229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7229=2892 := by core033_kernel_decide
theorem rows7230 : actualRows7230=WordField.canonicalRows actualModulus 7230 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7230 : actualRows7230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7230=2892 := by core033_kernel_decide
theorem rows7231 : actualRows7231=WordField.canonicalRows actualModulus 7231 (.bxor 7229 7230) := by core033_kernel_decide
theorem stats7231 : actualRows7231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7231=7428 := by core033_kernel_decide
theorem rows7232 : actualRows7232=WordField.canonicalRows actualModulus 7232 (.shr 4322 8) := by core033_kernel_decide
theorem stats7232 : actualRows7232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7232=4548 := by core033_kernel_decide
theorem rows7233 : actualRows7233=WordField.canonicalRows actualModulus 7233 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7233 : actualRows7233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7233=2820 := by core033_kernel_decide
theorem rows7234 : actualRows7234=WordField.canonicalRows actualModulus 7234 (.bnot 7233) := by core033_kernel_decide
theorem stats7234 : actualRows7234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7234=6276 := by core033_kernel_decide
theorem rows7235 : actualRows7235=WordField.canonicalRows actualModulus 7235 (.band 7232 7234) := by core033_kernel_decide
theorem stats7235 : actualRows7235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7235=5124 := by core033_kernel_decide
theorem rows7236 : actualRows7236=WordField.canonicalRows actualModulus 7236 (.shr 4322 8) := by core033_kernel_decide
theorem stats7236 : actualRows7236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7236=4548 := by core033_kernel_decide
theorem rows7237 : actualRows7237=WordField.canonicalRows actualModulus 7237 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7237 : actualRows7237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7237=2820 := by core033_kernel_decide
theorem rows7238 : actualRows7238=WordField.canonicalRows actualModulus 7238 (.bnot 7237) := by core033_kernel_decide
theorem stats7238 : actualRows7238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7238=6276 := by core033_kernel_decide
theorem rows7239 : actualRows7239=WordField.canonicalRows actualModulus 7239 (.bxor 7236 7238) := by core033_kernel_decide
theorem stats7239 : actualRows7239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7239=7428 := by core033_kernel_decide
theorem rows7240 : actualRows7240=WordField.canonicalRows actualModulus 7240 (.shr 4322 8) := by core033_kernel_decide
theorem stats7240 : actualRows7240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7240=4548 := by core033_kernel_decide
theorem rows7241 : actualRows7241=WordField.canonicalRows actualModulus 7241 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7241 : actualRows7241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7241=2820 := by core033_kernel_decide
theorem rows7242 : actualRows7242=WordField.canonicalRows actualModulus 7242 (.bnot 7241) := by core033_kernel_decide
theorem stats7242 : actualRows7242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7242=6276 := by core033_kernel_decide
theorem rows7243 : actualRows7243=WordField.canonicalRows actualModulus 7243 (.badd 7240 7242) := by core033_kernel_decide
theorem stats7243 : actualRows7243.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7243=5388 := by core033_kernel_decide
theorem rows7244 : actualRows7244=WordField.canonicalRows actualModulus 7244 (.bnot 7243) := by core033_kernel_decide
theorem stats7244 : actualRows7244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7244=6276 := by core033_kernel_decide
theorem rows7245 : actualRows7245=WordField.canonicalRows actualModulus 7245 (.band 7239 7244) := by core033_kernel_decide
theorem stats7245 : actualRows7245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7245=5124 := by core033_kernel_decide
theorem rows7246 : actualRows7246=WordField.canonicalRows actualModulus 7246 (.bxor 7235 7245) := by core033_kernel_decide
theorem stats7246 : actualRows7246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7246=7428 := by core033_kernel_decide
theorem rows7247 : actualRows7247=WordField.canonicalRows actualModulus 7247 (.shr 7246 31) := by core033_kernel_decide
theorem stats7247 : actualRows7247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7247=2892 := by core033_kernel_decide
theorem rows7248 : actualRows7248=WordField.canonicalRows actualModulus 7248 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7248 : actualRows7248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7248=2892 := by core033_kernel_decide
theorem rows7249 : actualRows7249=WordField.canonicalRows actualModulus 7249 (.bxor 7247 7248) := by core033_kernel_decide
theorem stats7249 : actualRows7249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7249=7428 := by core033_kernel_decide
theorem rows7250 : actualRows7250=WordField.canonicalRows actualModulus 7250 (.shr 4374 8) := by core033_kernel_decide
theorem stats7250 : actualRows7250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7250=4548 := by core033_kernel_decide
theorem rows7251 : actualRows7251=WordField.canonicalRows actualModulus 7251 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7251 : actualRows7251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7251=2820 := by core033_kernel_decide
theorem rows7252 : actualRows7252=WordField.canonicalRows actualModulus 7252 (.bnot 7251) := by core033_kernel_decide
theorem stats7252 : actualRows7252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7252=6276 := by core033_kernel_decide
theorem rows7253 : actualRows7253=WordField.canonicalRows actualModulus 7253 (.band 7250 7252) := by core033_kernel_decide
theorem stats7253 : actualRows7253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7253=5124 := by core033_kernel_decide
theorem rows7254 : actualRows7254=WordField.canonicalRows actualModulus 7254 (.shr 4374 8) := by core033_kernel_decide
theorem stats7254 : actualRows7254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7254=4548 := by core033_kernel_decide
theorem rows7255 : actualRows7255=WordField.canonicalRows actualModulus 7255 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7255 : actualRows7255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7255=2820 := by core033_kernel_decide
theorem rows7256 : actualRows7256=WordField.canonicalRows actualModulus 7256 (.bnot 7255) := by core033_kernel_decide
theorem stats7256 : actualRows7256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7256=6276 := by core033_kernel_decide
theorem rows7257 : actualRows7257=WordField.canonicalRows actualModulus 7257 (.bxor 7254 7256) := by core033_kernel_decide
theorem stats7257 : actualRows7257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7257=7428 := by core033_kernel_decide
theorem rows7258 : actualRows7258=WordField.canonicalRows actualModulus 7258 (.shr 4374 8) := by core033_kernel_decide
theorem stats7258 : actualRows7258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7258=4548 := by core033_kernel_decide
theorem rows7259 : actualRows7259=WordField.canonicalRows actualModulus 7259 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7259 : actualRows7259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7259=2820 := by core033_kernel_decide
theorem rows7260 : actualRows7260=WordField.canonicalRows actualModulus 7260 (.bnot 7259) := by core033_kernel_decide
theorem stats7260 : actualRows7260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7260=6276 := by core033_kernel_decide
theorem rows7261 : actualRows7261=WordField.canonicalRows actualModulus 7261 (.badd 7258 7260) := by core033_kernel_decide
theorem stats7261 : actualRows7261.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7261=5388 := by core033_kernel_decide
theorem rows7262 : actualRows7262=WordField.canonicalRows actualModulus 7262 (.bnot 7261) := by core033_kernel_decide
theorem stats7262 : actualRows7262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7262=6276 := by core033_kernel_decide
theorem rows7263 : actualRows7263=WordField.canonicalRows actualModulus 7263 (.band 7257 7262) := by core033_kernel_decide
theorem stats7263 : actualRows7263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7263=5124 := by core033_kernel_decide
theorem rows7264 : actualRows7264=WordField.canonicalRows actualModulus 7264 (.bxor 7253 7263) := by core033_kernel_decide
theorem stats7264 : actualRows7264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7264=7428 := by core033_kernel_decide
theorem rows7265 : actualRows7265=WordField.canonicalRows actualModulus 7265 (.shr 7264 31) := by core033_kernel_decide
theorem stats7265 : actualRows7265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7265=2892 := by core033_kernel_decide
theorem rows7266 : actualRows7266=WordField.canonicalRows actualModulus 7266 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7266 : actualRows7266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7266=2892 := by core033_kernel_decide
theorem rows7267 : actualRows7267=WordField.canonicalRows actualModulus 7267 (.bxor 7265 7266) := by core033_kernel_decide
theorem stats7267 : actualRows7267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7267=7428 := by core033_kernel_decide
theorem rows7268 : actualRows7268=WordField.canonicalRows actualModulus 7268 (.shr 4426 8) := by core033_kernel_decide
theorem stats7268 : actualRows7268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7268=4548 := by core033_kernel_decide
theorem rows7269 : actualRows7269=WordField.canonicalRows actualModulus 7269 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7269 : actualRows7269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7269=2820 := by core033_kernel_decide
theorem rows7270 : actualRows7270=WordField.canonicalRows actualModulus 7270 (.bnot 7269) := by core033_kernel_decide
theorem stats7270 : actualRows7270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7270=6276 := by core033_kernel_decide
theorem rows7271 : actualRows7271=WordField.canonicalRows actualModulus 7271 (.band 7268 7270) := by core033_kernel_decide
theorem stats7271 : actualRows7271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7271=5124 := by core033_kernel_decide
theorem rows7272 : actualRows7272=WordField.canonicalRows actualModulus 7272 (.shr 4426 8) := by core033_kernel_decide
theorem stats7272 : actualRows7272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7272=4548 := by core033_kernel_decide
theorem rows7273 : actualRows7273=WordField.canonicalRows actualModulus 7273 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7273 : actualRows7273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7273=2820 := by core033_kernel_decide
theorem rows7274 : actualRows7274=WordField.canonicalRows actualModulus 7274 (.bnot 7273) := by core033_kernel_decide
theorem stats7274 : actualRows7274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7274=6276 := by core033_kernel_decide
theorem rows7275 : actualRows7275=WordField.canonicalRows actualModulus 7275 (.bxor 7272 7274) := by core033_kernel_decide
theorem stats7275 : actualRows7275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7275=7428 := by core033_kernel_decide
theorem rows7276 : actualRows7276=WordField.canonicalRows actualModulus 7276 (.shr 4426 8) := by core033_kernel_decide
theorem stats7276 : actualRows7276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7276=4548 := by core033_kernel_decide
theorem rows7277 : actualRows7277=WordField.canonicalRows actualModulus 7277 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7277 : actualRows7277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7277=2820 := by core033_kernel_decide
theorem rows7278 : actualRows7278=WordField.canonicalRows actualModulus 7278 (.bnot 7277) := by core033_kernel_decide
theorem stats7278 : actualRows7278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7278=6276 := by core033_kernel_decide
theorem rows7279 : actualRows7279=WordField.canonicalRows actualModulus 7279 (.badd 7276 7278) := by core033_kernel_decide
theorem stats7279 : actualRows7279.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7279=5388 := by core033_kernel_decide
theorem rows7280 : actualRows7280=WordField.canonicalRows actualModulus 7280 (.bnot 7279) := by core033_kernel_decide
theorem stats7280 : actualRows7280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7280=6276 := by core033_kernel_decide
theorem rows7281 : actualRows7281=WordField.canonicalRows actualModulus 7281 (.band 7275 7280) := by core033_kernel_decide
theorem stats7281 : actualRows7281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7281=5124 := by core033_kernel_decide
theorem rows7282 : actualRows7282=WordField.canonicalRows actualModulus 7282 (.bxor 7271 7281) := by core033_kernel_decide
theorem stats7282 : actualRows7282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7282=7428 := by core033_kernel_decide
theorem rows7283 : actualRows7283=WordField.canonicalRows actualModulus 7283 (.shr 7282 31) := by core033_kernel_decide
theorem stats7283 : actualRows7283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7283=2892 := by core033_kernel_decide
theorem rows7284 : actualRows7284=WordField.canonicalRows actualModulus 7284 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7284 : actualRows7284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7284=2892 := by core033_kernel_decide
theorem rows7285 : actualRows7285=WordField.canonicalRows actualModulus 7285 (.bxor 7283 7284) := by core033_kernel_decide
theorem stats7285 : actualRows7285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7285=7428 := by core033_kernel_decide
def partRows111 : List R1CS.Row := actualRows7222++actualRows7223++actualRows7224++actualRows7225++actualRows7226++actualRows7227++actualRows7228++actualRows7229++actualRows7230++actualRows7231++actualRows7232++actualRows7233++actualRows7234++actualRows7235++actualRows7236++actualRows7237++actualRows7238++actualRows7239++actualRows7240++actualRows7241++actualRows7242++actualRows7243++actualRows7244++actualRows7245++actualRows7246++actualRows7247++actualRows7248++actualRows7249++actualRows7250++actualRows7251++actualRows7252++actualRows7253++actualRows7254++actualRows7255++actualRows7256++actualRows7257++actualRows7258++actualRows7259++actualRows7260++actualRows7261++actualRows7262++actualRows7263++actualRows7264++actualRows7265++actualRows7266++actualRows7267++actualRows7268++actualRows7269++actualRows7270++actualRows7271++actualRows7272++actualRows7273++actualRows7274++actualRows7275++actualRows7276++actualRows7277++actualRows7278++actualRows7279++actualRows7280++actualRows7281++actualRows7282++actualRows7283++actualRows7284++actualRows7285
def partOps111 : List WordIR.Op := [.shr 4270 8,.literal (BitVec.ofNat 32 0),.bnot 7223,.badd 7222 7224,.bnot 7225,.band 7221 7226,.bxor 7217 7227,.shr 7228 31,.literal (BitVec.ofNat 32 1),.bxor 7229 7230,.shr 4322 8,.literal (BitVec.ofNat 32 0),.bnot 7233,.band 7232 7234,.shr 4322 8,.literal (BitVec.ofNat 32 0),.bnot 7237,.bxor 7236 7238,.shr 4322 8,.literal (BitVec.ofNat 32 0),.bnot 7241,.badd 7240 7242,.bnot 7243,.band 7239 7244,.bxor 7235 7245,.shr 7246 31,.literal (BitVec.ofNat 32 1),.bxor 7247 7248,.shr 4374 8,.literal (BitVec.ofNat 32 0),.bnot 7251,.band 7250 7252,.shr 4374 8,.literal (BitVec.ofNat 32 0),.bnot 7255,.bxor 7254 7256,.shr 4374 8,.literal (BitVec.ofNat 32 0),.bnot 7259,.badd 7258 7260,.bnot 7261,.band 7257 7262,.bxor 7253 7263,.shr 7264 31,.literal (BitVec.ofNat 32 1),.bxor 7265 7266,.shr 4426 8,.literal (BitVec.ofNat 32 0),.bnot 7269,.band 7268 7270,.shr 4426 8,.literal (BitVec.ofNat 32 0),.bnot 7273,.bxor 7272 7274,.shr 4426 8,.literal (BitVec.ofNat 32 0),.bnot 7277,.badd 7276 7278,.bnot 7279,.band 7275 7280,.bxor 7271 7281,.shr 7282 31,.literal (BitVec.ofNat 32 1),.bxor 7283 7284]
theorem partExact111 : partRows111=WordField.rows actualModulus 7222 partOps111 := by
  simp only [partRows111,partOps111,WordField.rows,rows7222,rows7223,rows7224,rows7225,rows7226,rows7227,rows7228,rows7229,rows7230,rows7231,rows7232,rows7233,rows7234,rows7235,rows7236,rows7237,rows7238,rows7239,rows7240,rows7241,rows7242,rows7243,rows7244,rows7245,rows7246,rows7247,rows7248,rows7249,rows7250,rows7251,rows7252,rows7253,rows7254,rows7255,rows7256,rows7257,rows7258,rows7259,rows7260,rows7261,rows7262,rows7263,rows7264,rows7265,rows7266,rows7267,rows7268,rows7269,rows7270,rows7271,rows7272,rows7273,rows7274,rows7275,rows7276,rows7277,rows7278,rows7279,rows7280,rows7281,rows7282,rows7283,rows7284,rows7285,List.append_assoc,List.append_nil]
theorem partLength111 : partOps111.length=64 := by decide
theorem partStats111 : partRows111.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows111=323808 := by
  simp only [partRows111,List.length_append,MatrixRowBlocks.rows_weight_append,stats7222.1,stats7222.2,stats7223.1,stats7223.2,stats7224.1,stats7224.2,stats7225.1,stats7225.2,stats7226.1,stats7226.2,stats7227.1,stats7227.2,stats7228.1,stats7228.2,stats7229.1,stats7229.2,stats7230.1,stats7230.2,stats7231.1,stats7231.2,stats7232.1,stats7232.2,stats7233.1,stats7233.2,stats7234.1,stats7234.2,stats7235.1,stats7235.2,stats7236.1,stats7236.2,stats7237.1,stats7237.2,stats7238.1,stats7238.2,stats7239.1,stats7239.2,stats7240.1,stats7240.2,stats7241.1,stats7241.2,stats7242.1,stats7242.2,stats7243.1,stats7243.2,stats7244.1,stats7244.2,stats7245.1,stats7245.2,stats7246.1,stats7246.2,stats7247.1,stats7247.2,stats7248.1,stats7248.2,stats7249.1,stats7249.2,stats7250.1,stats7250.2,stats7251.1,stats7251.2,stats7252.1,stats7252.2,stats7253.1,stats7253.2,stats7254.1,stats7254.2,stats7255.1,stats7255.2,stats7256.1,stats7256.2,stats7257.1,stats7257.2,stats7258.1,stats7258.2,stats7259.1,stats7259.2,stats7260.1,stats7260.2,stats7261.1,stats7261.2,stats7262.1,stats7262.2,stats7263.1,stats7263.2,stats7264.1,stats7264.2,stats7265.1,stats7265.2,stats7266.1,stats7266.2,stats7267.1,stats7267.2,stats7268.1,stats7268.2,stats7269.1,stats7269.2,stats7270.1,stats7270.2,stats7271.1,stats7271.2,stats7272.1,stats7272.2,stats7273.1,stats7273.2,stats7274.1,stats7274.2,stats7275.1,stats7275.2,stats7276.1,stats7276.2,stats7277.1,stats7277.2,stats7278.1,stats7278.2,stats7279.1,stats7279.2,stats7280.1,stats7280.2,stats7281.1,stats7281.2,stats7282.1,stats7282.2,stats7283.1,stats7283.2,stats7284.1,stats7284.2,stats7285.1,stats7285.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
