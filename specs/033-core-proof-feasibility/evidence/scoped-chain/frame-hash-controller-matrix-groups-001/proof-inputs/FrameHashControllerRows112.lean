import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData112
import FrameHashControllerInstructionMatrixData113
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7211 : actualRows7211=WordField.canonicalRows actualModulus 7211 (.badd 7209 7210) := by core033_kernel_decide
theorem stats7211 : actualRows7211.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7211=5388 := by core033_kernel_decide
theorem rows7212 : actualRows7212=WordField.canonicalRows actualModulus 7212 (.badd 7211 5206) := by core033_kernel_decide
theorem stats7212 : actualRows7212.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7212=5388 := by core033_kernel_decide
theorem rows7213 : actualRows7213=WordField.canonicalRows actualModulus 7213 (.rotr 7197 2) := by core033_kernel_decide
theorem stats7213 : actualRows7213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7213=5124 := by core033_kernel_decide
theorem rows7214 : actualRows7214=WordField.canonicalRows actualModulus 7214 (.rotr 7197 13) := by core033_kernel_decide
theorem stats7214 : actualRows7214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7214=5124 := by core033_kernel_decide
theorem rows7215 : actualRows7215=WordField.canonicalRows actualModulus 7215 (.bxor 7213 7214) := by core033_kernel_decide
theorem stats7215 : actualRows7215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7215=7428 := by core033_kernel_decide
theorem rows7216 : actualRows7216=WordField.canonicalRows actualModulus 7216 (.rotr 7197 22) := by core033_kernel_decide
theorem stats7216 : actualRows7216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7216=5124 := by core033_kernel_decide
theorem rows7217 : actualRows7217=WordField.canonicalRows actualModulus 7217 (.bxor 7215 7216) := by core033_kernel_decide
theorem stats7217 : actualRows7217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7217=7428 := by core033_kernel_decide
theorem rows7218 : actualRows7218=WordField.canonicalRows actualModulus 7218 (.band 7197 7170) := by core033_kernel_decide
theorem stats7218 : actualRows7218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7218=5124 := by core033_kernel_decide
theorem rows7219 : actualRows7219=WordField.canonicalRows actualModulus 7219 (.band 7197 7143) := by core033_kernel_decide
theorem stats7219 : actualRows7219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7219=5124 := by core033_kernel_decide
theorem rows7220 : actualRows7220=WordField.canonicalRows actualModulus 7220 (.bxor 7218 7219) := by core033_kernel_decide
theorem stats7220 : actualRows7220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7220=7428 := by core033_kernel_decide
theorem rows7221 : actualRows7221=WordField.canonicalRows actualModulus 7221 (.band 7170 7143) := by core033_kernel_decide
theorem stats7221 : actualRows7221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7221=5124 := by core033_kernel_decide
theorem rows7222 : actualRows7222=WordField.canonicalRows actualModulus 7222 (.bxor 7220 7221) := by core033_kernel_decide
theorem stats7222 : actualRows7222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7222=7428 := by core033_kernel_decide
theorem rows7223 : actualRows7223=WordField.canonicalRows actualModulus 7223 (.badd 7217 7222) := by core033_kernel_decide
theorem stats7223 : actualRows7223.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7223=5388 := by core033_kernel_decide
theorem rows7224 : actualRows7224=WordField.canonicalRows actualModulus 7224 (.badd 7212 7223) := by core033_kernel_decide
theorem stats7224 : actualRows7224.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7224=5388 := by core033_kernel_decide
theorem rows7225 : actualRows7225=WordField.canonicalRows actualModulus 7225 (.badd 7116 7212) := by core033_kernel_decide
theorem stats7225 : actualRows7225.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7225=5388 := by core033_kernel_decide
theorem rows7226 : actualRows7226=WordField.canonicalRows actualModulus 7226 (.rotr 7225 6) := by core033_kernel_decide
theorem stats7226 : actualRows7226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7226=5124 := by core033_kernel_decide
theorem rows7227 : actualRows7227=WordField.canonicalRows actualModulus 7227 (.rotr 7225 11) := by core033_kernel_decide
theorem stats7227 : actualRows7227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7227=5124 := by core033_kernel_decide
theorem rows7228 : actualRows7228=WordField.canonicalRows actualModulus 7228 (.bxor 7226 7227) := by core033_kernel_decide
theorem stats7228 : actualRows7228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7228=7428 := by core033_kernel_decide
theorem rows7229 : actualRows7229=WordField.canonicalRows actualModulus 7229 (.rotr 7225 25) := by core033_kernel_decide
theorem stats7229 : actualRows7229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7229=5124 := by core033_kernel_decide
theorem rows7230 : actualRows7230=WordField.canonicalRows actualModulus 7230 (.bxor 7228 7229) := by core033_kernel_decide
theorem stats7230 : actualRows7230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7230=7428 := by core033_kernel_decide
theorem rows7231 : actualRows7231=WordField.canonicalRows actualModulus 7231 (.badd 7144 7230) := by core033_kernel_decide
theorem stats7231 : actualRows7231.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7231=5388 := by core033_kernel_decide
theorem rows7232 : actualRows7232=WordField.canonicalRows actualModulus 7232 (.band 7225 7198) := by core033_kernel_decide
theorem stats7232 : actualRows7232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7232=5124 := by core033_kernel_decide
theorem rows7233 : actualRows7233=WordField.canonicalRows actualModulus 7233 (.bnot 7225) := by core033_kernel_decide
theorem stats7233 : actualRows7233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7233=6276 := by core033_kernel_decide
theorem rows7234 : actualRows7234=WordField.canonicalRows actualModulus 7234 (.band 7233 7171) := by core033_kernel_decide
theorem stats7234 : actualRows7234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7234=5124 := by core033_kernel_decide
theorem rows7235 : actualRows7235=WordField.canonicalRows actualModulus 7235 (.bxor 7232 7234) := by core033_kernel_decide
theorem stats7235 : actualRows7235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7235=7428 := by core033_kernel_decide
theorem rows7236 : actualRows7236=WordField.canonicalRows actualModulus 7236 (.badd 7231 7235) := by core033_kernel_decide
theorem stats7236 : actualRows7236.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7236=5388 := by core033_kernel_decide
theorem rows7237 : actualRows7237=WordField.canonicalRows actualModulus 7237 (.literal (BitVec.ofNat 32 2870763221)) := by core033_kernel_decide
theorem stats7237 : actualRows7237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7237=4116 := by core033_kernel_decide
theorem rows7238 : actualRows7238=WordField.canonicalRows actualModulus 7238 (.badd 7236 7237) := by core033_kernel_decide
theorem stats7238 : actualRows7238.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7238=5388 := by core033_kernel_decide
theorem rows7239 : actualRows7239=WordField.canonicalRows actualModulus 7239 (.badd 7238 5212) := by core033_kernel_decide
theorem stats7239 : actualRows7239.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7239=5388 := by core033_kernel_decide
theorem rows7240 : actualRows7240=WordField.canonicalRows actualModulus 7240 (.rotr 7224 2) := by core033_kernel_decide
theorem stats7240 : actualRows7240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7240=5124 := by core033_kernel_decide
theorem rows7241 : actualRows7241=WordField.canonicalRows actualModulus 7241 (.rotr 7224 13) := by core033_kernel_decide
theorem stats7241 : actualRows7241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7241=5124 := by core033_kernel_decide
theorem rows7242 : actualRows7242=WordField.canonicalRows actualModulus 7242 (.bxor 7240 7241) := by core033_kernel_decide
theorem stats7242 : actualRows7242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7242=7428 := by core033_kernel_decide
theorem rows7243 : actualRows7243=WordField.canonicalRows actualModulus 7243 (.rotr 7224 22) := by core033_kernel_decide
theorem stats7243 : actualRows7243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7243=5124 := by core033_kernel_decide
theorem rows7244 : actualRows7244=WordField.canonicalRows actualModulus 7244 (.bxor 7242 7243) := by core033_kernel_decide
theorem stats7244 : actualRows7244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7244=7428 := by core033_kernel_decide
theorem rows7245 : actualRows7245=WordField.canonicalRows actualModulus 7245 (.band 7224 7197) := by core033_kernel_decide
theorem stats7245 : actualRows7245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7245=5124 := by core033_kernel_decide
theorem rows7246 : actualRows7246=WordField.canonicalRows actualModulus 7246 (.band 7224 7170) := by core033_kernel_decide
theorem stats7246 : actualRows7246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7246=5124 := by core033_kernel_decide
theorem rows7247 : actualRows7247=WordField.canonicalRows actualModulus 7247 (.bxor 7245 7246) := by core033_kernel_decide
theorem stats7247 : actualRows7247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7247=7428 := by core033_kernel_decide
theorem rows7248 : actualRows7248=WordField.canonicalRows actualModulus 7248 (.band 7197 7170) := by core033_kernel_decide
theorem stats7248 : actualRows7248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7248=5124 := by core033_kernel_decide
theorem rows7249 : actualRows7249=WordField.canonicalRows actualModulus 7249 (.bxor 7247 7248) := by core033_kernel_decide
theorem stats7249 : actualRows7249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7249=7428 := by core033_kernel_decide
theorem rows7250 : actualRows7250=WordField.canonicalRows actualModulus 7250 (.badd 7244 7249) := by core033_kernel_decide
theorem stats7250 : actualRows7250.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7250=5388 := by core033_kernel_decide
theorem rows7251 : actualRows7251=WordField.canonicalRows actualModulus 7251 (.badd 7239 7250) := by core033_kernel_decide
theorem stats7251 : actualRows7251.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7251=5388 := by core033_kernel_decide
theorem rows7252 : actualRows7252=WordField.canonicalRows actualModulus 7252 (.badd 7143 7239) := by core033_kernel_decide
theorem stats7252 : actualRows7252.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7252=5388 := by core033_kernel_decide
theorem rows7253 : actualRows7253=WordField.canonicalRows actualModulus 7253 (.rotr 7252 6) := by core033_kernel_decide
theorem stats7253 : actualRows7253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7253=5124 := by core033_kernel_decide
theorem rows7254 : actualRows7254=WordField.canonicalRows actualModulus 7254 (.rotr 7252 11) := by core033_kernel_decide
theorem stats7254 : actualRows7254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7254=5124 := by core033_kernel_decide
theorem rows7255 : actualRows7255=WordField.canonicalRows actualModulus 7255 (.bxor 7253 7254) := by core033_kernel_decide
theorem stats7255 : actualRows7255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7255=7428 := by core033_kernel_decide
theorem rows7256 : actualRows7256=WordField.canonicalRows actualModulus 7256 (.rotr 7252 25) := by core033_kernel_decide
theorem stats7256 : actualRows7256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7256=5124 := by core033_kernel_decide
theorem rows7257 : actualRows7257=WordField.canonicalRows actualModulus 7257 (.bxor 7255 7256) := by core033_kernel_decide
theorem stats7257 : actualRows7257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7257=7428 := by core033_kernel_decide
theorem rows7258 : actualRows7258=WordField.canonicalRows actualModulus 7258 (.badd 7171 7257) := by core033_kernel_decide
theorem stats7258 : actualRows7258.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7258=5388 := by core033_kernel_decide
theorem rows7259 : actualRows7259=WordField.canonicalRows actualModulus 7259 (.band 7252 7225) := by core033_kernel_decide
theorem stats7259 : actualRows7259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7259=5124 := by core033_kernel_decide
theorem rows7260 : actualRows7260=WordField.canonicalRows actualModulus 7260 (.bnot 7252) := by core033_kernel_decide
theorem stats7260 : actualRows7260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7260=6276 := by core033_kernel_decide
theorem rows7261 : actualRows7261=WordField.canonicalRows actualModulus 7261 (.band 7260 7198) := by core033_kernel_decide
theorem stats7261 : actualRows7261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7261=5124 := by core033_kernel_decide
theorem rows7262 : actualRows7262=WordField.canonicalRows actualModulus 7262 (.bxor 7259 7261) := by core033_kernel_decide
theorem stats7262 : actualRows7262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7262=7428 := by core033_kernel_decide
theorem rows7263 : actualRows7263=WordField.canonicalRows actualModulus 7263 (.badd 7258 7262) := by core033_kernel_decide
theorem stats7263 : actualRows7263.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7263=5388 := by core033_kernel_decide
theorem rows7264 : actualRows7264=WordField.canonicalRows actualModulus 7264 (.literal (BitVec.ofNat 32 3624381080)) := by core033_kernel_decide
theorem stats7264 : actualRows7264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7264=3828 := by core033_kernel_decide
theorem rows7265 : actualRows7265=WordField.canonicalRows actualModulus 7265 (.badd 7263 7264) := by core033_kernel_decide
theorem stats7265 : actualRows7265.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7265=5388 := by core033_kernel_decide
theorem rows7266 : actualRows7266=WordField.canonicalRows actualModulus 7266 (.badd 7265 5218) := by core033_kernel_decide
theorem stats7266 : actualRows7266.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7266=5388 := by core033_kernel_decide
theorem rows7267 : actualRows7267=WordField.canonicalRows actualModulus 7267 (.rotr 7251 2) := by core033_kernel_decide
theorem stats7267 : actualRows7267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7267=5124 := by core033_kernel_decide
theorem rows7268 : actualRows7268=WordField.canonicalRows actualModulus 7268 (.rotr 7251 13) := by core033_kernel_decide
theorem stats7268 : actualRows7268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7268=5124 := by core033_kernel_decide
theorem rows7269 : actualRows7269=WordField.canonicalRows actualModulus 7269 (.bxor 7267 7268) := by core033_kernel_decide
theorem stats7269 : actualRows7269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7269=7428 := by core033_kernel_decide
theorem rows7270 : actualRows7270=WordField.canonicalRows actualModulus 7270 (.rotr 7251 22) := by core033_kernel_decide
theorem stats7270 : actualRows7270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7270=5124 := by core033_kernel_decide
theorem rows7271 : actualRows7271=WordField.canonicalRows actualModulus 7271 (.bxor 7269 7270) := by core033_kernel_decide
theorem stats7271 : actualRows7271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7271=7428 := by core033_kernel_decide
theorem rows7272 : actualRows7272=WordField.canonicalRows actualModulus 7272 (.band 7251 7224) := by core033_kernel_decide
theorem stats7272 : actualRows7272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7272=5124 := by core033_kernel_decide
theorem rows7273 : actualRows7273=WordField.canonicalRows actualModulus 7273 (.band 7251 7197) := by core033_kernel_decide
theorem stats7273 : actualRows7273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7273=5124 := by core033_kernel_decide
theorem rows7274 : actualRows7274=WordField.canonicalRows actualModulus 7274 (.bxor 7272 7273) := by core033_kernel_decide
theorem stats7274 : actualRows7274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7274=7428 := by core033_kernel_decide
def partRows112 : List R1CS.Row := actualRows7211++actualRows7212++actualRows7213++actualRows7214++actualRows7215++actualRows7216++actualRows7217++actualRows7218++actualRows7219++actualRows7220++actualRows7221++actualRows7222++actualRows7223++actualRows7224++actualRows7225++actualRows7226++actualRows7227++actualRows7228++actualRows7229++actualRows7230++actualRows7231++actualRows7232++actualRows7233++actualRows7234++actualRows7235++actualRows7236++actualRows7237++actualRows7238++actualRows7239++actualRows7240++actualRows7241++actualRows7242++actualRows7243++actualRows7244++actualRows7245++actualRows7246++actualRows7247++actualRows7248++actualRows7249++actualRows7250++actualRows7251++actualRows7252++actualRows7253++actualRows7254++actualRows7255++actualRows7256++actualRows7257++actualRows7258++actualRows7259++actualRows7260++actualRows7261++actualRows7262++actualRows7263++actualRows7264++actualRows7265++actualRows7266++actualRows7267++actualRows7268++actualRows7269++actualRows7270++actualRows7271++actualRows7272++actualRows7273++actualRows7274
def partOps112 : List WordIR.Op := [.badd 7209 7210,.badd 7211 5206,.rotr 7197 2,.rotr 7197 13,.bxor 7213 7214,.rotr 7197 22,.bxor 7215 7216,.band 7197 7170,.band 7197 7143,.bxor 7218 7219,.band 7170 7143,.bxor 7220 7221,.badd 7217 7222,.badd 7212 7223,.badd 7116 7212,.rotr 7225 6,.rotr 7225 11,.bxor 7226 7227,.rotr 7225 25,.bxor 7228 7229,.badd 7144 7230,.band 7225 7198,.bnot 7225,.band 7233 7171,.bxor 7232 7234,.badd 7231 7235,.literal (BitVec.ofNat 32 2870763221),.badd 7236 7237,.badd 7238 5212,.rotr 7224 2,.rotr 7224 13,.bxor 7240 7241,.rotr 7224 22,.bxor 7242 7243,.band 7224 7197,.band 7224 7170,.bxor 7245 7246,.band 7197 7170,.bxor 7247 7248,.badd 7244 7249,.badd 7239 7250,.badd 7143 7239,.rotr 7252 6,.rotr 7252 11,.bxor 7253 7254,.rotr 7252 25,.bxor 7255 7256,.badd 7171 7257,.band 7252 7225,.bnot 7252,.band 7260 7198,.bxor 7259 7261,.badd 7258 7262,.literal (BitVec.ofNat 32 3624381080),.badd 7263 7264,.badd 7265 5218,.rotr 7251 2,.rotr 7251 13,.bxor 7267 7268,.rotr 7251 22,.bxor 7269 7270,.band 7251 7224,.band 7251 7197,.bxor 7272 7273]
theorem partExact112 : partRows112=WordField.rows actualModulus 7211 partOps112 := by
  simp only [partRows112,partOps112,WordField.rows,rows7211,rows7212,rows7213,rows7214,rows7215,rows7216,rows7217,rows7218,rows7219,rows7220,rows7221,rows7222,rows7223,rows7224,rows7225,rows7226,rows7227,rows7228,rows7229,rows7230,rows7231,rows7232,rows7233,rows7234,rows7235,rows7236,rows7237,rows7238,rows7239,rows7240,rows7241,rows7242,rows7243,rows7244,rows7245,rows7246,rows7247,rows7248,rows7249,rows7250,rows7251,rows7252,rows7253,rows7254,rows7255,rows7256,rows7257,rows7258,rows7259,rows7260,rows7261,rows7262,rows7263,rows7264,rows7265,rows7266,rows7267,rows7268,rows7269,rows7270,rows7271,rows7272,rows7273,rows7274,List.append_assoc,List.append_nil]
theorem partLength112 : partOps112.length=64 := by decide
theorem partStats112 : partRows112.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows112=371328 := by
  simp only [partRows112,List.length_append,MatrixRowBlocks.rows_weight_append,stats7211.1,stats7211.2,stats7212.1,stats7212.2,stats7213.1,stats7213.2,stats7214.1,stats7214.2,stats7215.1,stats7215.2,stats7216.1,stats7216.2,stats7217.1,stats7217.2,stats7218.1,stats7218.2,stats7219.1,stats7219.2,stats7220.1,stats7220.2,stats7221.1,stats7221.2,stats7222.1,stats7222.2,stats7223.1,stats7223.2,stats7224.1,stats7224.2,stats7225.1,stats7225.2,stats7226.1,stats7226.2,stats7227.1,stats7227.2,stats7228.1,stats7228.2,stats7229.1,stats7229.2,stats7230.1,stats7230.2,stats7231.1,stats7231.2,stats7232.1,stats7232.2,stats7233.1,stats7233.2,stats7234.1,stats7234.2,stats7235.1,stats7235.2,stats7236.1,stats7236.2,stats7237.1,stats7237.2,stats7238.1,stats7238.2,stats7239.1,stats7239.2,stats7240.1,stats7240.2,stats7241.1,stats7241.2,stats7242.1,stats7242.2,stats7243.1,stats7243.2,stats7244.1,stats7244.2,stats7245.1,stats7245.2,stats7246.1,stats7246.2,stats7247.1,stats7247.2,stats7248.1,stats7248.2,stats7249.1,stats7249.2,stats7250.1,stats7250.2,stats7251.1,stats7251.2,stats7252.1,stats7252.2,stats7253.1,stats7253.2,stats7254.1,stats7254.2,stats7255.1,stats7255.2,stats7256.1,stats7256.2,stats7257.1,stats7257.2,stats7258.1,stats7258.2,stats7259.1,stats7259.2,stats7260.1,stats7260.2,stats7261.1,stats7261.2,stats7262.1,stats7262.2,stats7263.1,stats7263.2,stats7264.1,stats7264.2,stats7265.1,stats7265.2,stats7266.1,stats7266.2,stats7267.1,stats7267.2,stats7268.1,stats7268.2,stats7269.1,stats7269.2,stats7270.1,stats7270.2,stats7271.1,stats7271.2,stats7272.1,stats7272.2,stats7273.1,stats7273.2,stats7274.1,stats7274.2]
  decide
end FrameHashControllerCheckedRows
